-- Azeroth Unspoken: the character's journal (GDD §12.2): memories, visited places, flags and the moments of the session,
-- with selective deletion, permanent memories and a manual text export in a copyable window (the addon cannot write
-- files). It opens with /au journal or from the settings panel.
-- The tabs are data: JournalFrame:RegisterTab(id, def) adds one (S6b puts the relationships here, S9 the arcs).
-- UI-5 (UI-ECO): the shell is W.Window; the sections are W.Tabs (a 2-unit bar that slides under the chosen one) and the
-- rows of a section are a sortable W.DataTable (a column of text, a column of dates in the mono font, a column of at
-- most two actions). An action that cannot be undone asks through W.Dialog, a result is said by W.Toast, every text is a
-- Theme font: the window needs no W.Adopt. The window is redrawn on a theme change (W.Window's `refresh`).
local ADDON, NS = ...
local W = NS.Widgets
local LM = NS.LivingMemory
local Theme = NS.Theme

---@class AUJournalAction
---@field label string short text of the button
---@field tip? string tooltip
---@field confirm? string key of the question: the action cannot be undone, so it asks through a Dialog first
---@field done? string key of the toast that says the action was done (after the confirmation)
---@field key? string unused since UI-5 (the old armed-button identity); kept so older tabs still register
---@field fn fun() what to do; the list redraws by itself

---@class AUJournalRow
---@field text string
---@field t? number time of the entry: shown in the date column and used to sort by date
---@field actions? AUJournalAction[] at most two

---@class AUJournalTab
---@field id string
---@field label string key of the interface text
---@field rows fun(): AUJournalRow[]
---@field note? string key of a note under the tabs
---@field memory? boolean a tab of the memory: off or read-only, it can only be read
---@field plain? boolean|fun(): boolean rows to read in their order (headings, a story, a song): no sorting, no header

---@class AUJournalFrame
local JournalFrame = NS:RegisterModule("journal")
NS.JournalFrame = JournalFrame

local WIDTH, HEIGHT = 760, 540
local INNER = WIDTH - 32            -- usable width of the window
local ROW_H = 28                    -- 24-unit buttons with room around them
local WHEN_W, ACT_W = 132, 196      -- the date column (a 16-character mono stamp, #296) and the column of actions, when a section has them
local FOOT = 100                    -- the table ends this high above the bottom: the summary and the toast live under it
local WRAP = 76                     -- characters per line of a story or a song

---@type AUJournalTab[]
JournalFrame.tabs = {}
local frame, exportFrame
local state = { tab = "memories" }
local sorts = {}                    -- per section: { column id, descending } the player chose
local shownTab                      -- the section the table shows now

---Adds or replaces a tab.
---@param id string
---@param def { label: string, rows: fun(): AUJournalRow[], note?: string, memory?: boolean, plain?: boolean|fun(): boolean }
function JournalFrame:RegisterTab(id, def)
	if type(id) ~= "string" or type(def) ~= "table" or type(def.rows) ~= "function" then return false end
	local tab = { id = id, label = def.label, rows = def.rows, note = def.note, memory = def.memory == true, plain = def.plain }
	for i, t in ipairs(self.tabs) do
		if t.id == id then
			self.tabs[i] = tab
			return true
		end
	end
	table.insert(self.tabs, tab)
	return true
end

---Can the memory be changed? nil if yes, else the key of the reason (read-only or module off).
---@return string?
function JournalFrame:MemoryLock()
	if LM.readOnly then return "mem_state_readonly" end
	if NS.db and NS.db.modules and NS.db.modules.memory == false then return "mem_state_off" end
	return nil
end

local function CurrentTab()
	for _, t in ipairs(JournalFrame.tabs) do
		if t.id == state.tab then return t end
	end
	return JournalFrame.tabs[1]
end

---------------------------------------------------------------------------
-- The base tabs
---------------------------------------------------------------------------
-- UI-3: the colours of words inside a line are tokens of the current theme (W.Hex); a theme change redraws the window
local function Muted(text) return W.Hex("text-3") .. text .. "|r" end

JournalFrame:RegisterTab("memories", { label = "mem_tab_memories", memory = true, rows = function()
	local out = {}
	for _, e in ipairs(LM:List()) do
		local id = e.id
		table.insert(out, {
			text = ("%s%s"):format(e.perm and W.Hex("accent-text") .. "[P]|r " or "", LM:Describe(e)), t = e.t,
			actions = {
				{ label = NS:L("act_keep"), tip = NS:L("mem_perm_tip"), fn = function()
					local ok, why = LM:SetPermanent(id)
					if not ok and why == "limit" then NS:Print(NS:L("mem_perm_limit")) end
				end },
				{ label = NS:L("act_delete"), tip = NS:L("mem_delete_tip"), confirm = "mem_confirm_delete", done = "mem_toast_deleted",
					fn = function() LM:Delete(id) end },
			},
		})
	end
	return out
end })

JournalFrame:RegisterTab("places", { label = "mem_tab_places", memory = true, rows = function()
	local out = {}
	for _, p in ipairs(LM:Places()) do
		local name = p.key or p.name
		table.insert(out, {
			text = LM:DescribePlace(p), t = p.last,
			actions = { { label = NS:L("act_forget"), tip = NS:L("mem_forget_tip"), confirm = "mem_confirm_forget", done = "mem_toast_place",
				fn = function() LM:ForgetPlace(name) end } },
		})
	end
	return out
end })

JournalFrame:RegisterTab("flags", { label = "mem_tab_flags", memory = true, rows = function()
	local out = {}
	local data = LM:Data()
	for _, name in ipairs(LM:FlagNames()) do
		table.insert(out, {
			text = name, t = data.flags[name].t,
			actions = { { label = NS:L("act_clear"), tip = NS:L("mem_flag_tip"), confirm = "mem_confirm_flag", done = "mem_toast_flag",
				fn = function() LM:ClearFlag(name) end } },
		})
	end
	return out
end })

JournalFrame:RegisterTab("session", { label = "mem_tab_session", note = "mem_session_note", memory = true, rows = function()
	local out = {}
	for _, e in ipairs(LM:SessionList()) do
		table.insert(out, { text = LM:Describe(e), t = e.t })
	end
	return out
end })

---------------------------------------------------------------------------
-- Storie (S9): in corso, disponibili, concluse, saltate; il dettaglio mostra il racconto e le scelte fatte
---------------------------------------------------------------------------
local SA = NS.StoryArcs
local selectedArc            -- id dell'arco aperto nel dettaglio (solo sessione)

local function Chars(s)
	return #s - #(s:gsub("[\128-\191]", ""))
end

-- spezza un testo in righe di al massimo WRAP caratteri, solo sugli spazi ASCII (l'UTF-8 resta intero)
local function Wrap(text, indent)
	local out, line = {}, ""
	for word in tostring(text or ""):gmatch("[^ ]+") do
		if line ~= "" and Chars(line) + 1 + Chars(word) > WRAP then
			table.insert(out, indent .. line)
			line = word
		else
			line = line == "" and word or (line .. " " .. word)
		end
	end
	if line ~= "" then table.insert(out, indent .. line) end
	return out
end

local function Heading(text) return { text = W.Hex("accent-text") .. text .. "|r" } end

-- #183: an action is a short word ("Open", "Pause"), not a symbol explained only by its tooltip
local function ArcAction(labelKey, tipKey, fn) return { label = NS:L(labelKey), tip = NS:L(tipKey), fn = fn } end

local function ArcRows()
	local out = {}
	if not SA then return out end
	if selectedArc then
		local rec = SA:Record(selectedArc, nil)
		if rec then
			table.insert(out, { text = NS:L("arc_back"), actions = { ArcAction("<", "arc_tip_back", function() selectedArc = nil end) } })
			table.insert(out, Heading(rec.title))
			for _, l in ipairs(Wrap(rec.summary, "")) do table.insert(out, { text = l }) end
			table.insert(out, { text = Muted(NS:L("arc_detail_state", rec.stateLabel, NS:L("arc_mode_" .. rec.mode))) })
			if rec.subject then table.insert(out, { text = Muted(NS:L("arc_detail_about", rec.subject)) }) end
			-- il racconto: gli stati attraversati, in ordine, con la scelta fatta in ciascuno
			for _, h in ipairs(rec.history) do
				table.insert(out, { text = W.Hex("text-2") .. h.label .. "|r  " .. Muted(LM.Stamp(h.t)) })
				for _, l in ipairs(Wrap(h.line, "   ")) do table.insert(out, { text = l }) end
			end
			for _, c in ipairs(rec.choices) do
				table.insert(out, { text = W.Hex("ok") .. NS:L("arc_detail_chosen", c.prompt) .. "|r" })
				for _, l in ipairs(Wrap(c.label .. (c.note and (" – " .. c.note) or ""), "   ")) do table.insert(out, { text = l }) end
			end
			local id = rec.id
			if rec.offer then
				if rec.offer.prompt and #rec.offer.options > 0 then
					for _, l in ipairs(Wrap(rec.offer.prompt, "")) do table.insert(out, { text = W.Hex("accent-text") .. l .. "|r" }) end
				end
				if #rec.offer.options == 0 then
					table.insert(out, { text = NS:L("arc_detail_go"),
						actions = { ArcAction("act_go", "arc_tip_go", function() SA:Choose(id) end) } })
				end
				for _, o in ipairs(rec.offer.options) do
					local option = o.id
					table.insert(out, { text = NS:L("arc_detail_pick", o.label),
						actions = { ArcAction("act_pick", "arc_tip_pick", function() SA:Choose(id, option) end) } })
				end
			end
			if rec.bucket == "available" and rec.mode == "active" then
				table.insert(out, { text = NS:L("arc_action_start"), actions = { ArcAction("act_start", "arc_tip_start", function()
					local ok, why = SA:Start(id)
					if not ok then NS:Print(NS:L("arc_why_" .. tostring(why))) end
				end) } })
			end
			if rec.bucket ~= "resolved" then
				if rec.mode == "active" then
					table.insert(out, { text = NS:L("arc_action_suspend"), actions = { ArcAction("act_pause", "arc_tip_suspend", function() SA:Suspend(id) end) } })
				elseif rec.mode == "suspended" or rec.mode == "skipped" then
					table.insert(out, { text = NS:L("arc_action_resume"), actions = { ArcAction("act_resume", "arc_tip_resume", function()
						local ok, why = SA:Resume(id)
						if not ok then NS:Print(NS:L("arc_why_" .. tostring(why))) end
					end) } })
				elseif rec.mode == "off" then
					table.insert(out, { text = NS:L("arc_action_enable"), actions = { ArcAction("act_enable", "arc_tip_enable", function() SA:Enable(id) end) } })
				end
				if rec.mode ~= "skipped" then
					table.insert(out, { text = NS:L("arc_action_skip"), actions = { ArcAction("act_skip", "arc_tip_skip", function() SA:Skip(id) end) } })
				end
				if rec.mode ~= "off" then
					table.insert(out, { text = NS:L("arc_action_disable"), actions = { ArcAction("act_disable", "arc_tip_disable", function() SA:Disable(id) end) } })
				end
			elseif rec.ended or rec.state == "RESOLVED" then
				table.insert(out, { text = Muted(NS:L("arc_detail_memory")) })
			end
			return out
		end
		selectedArc = nil
	end

	local list = SA:Listing()
	local function Open(id) return ArcAction("act_open", "arc_tip_open", function() selectedArc = id end) end
	if #list.active > 0 then
		table.insert(out, Heading(NS:L("arc_hdr_active", SA:ActiveCount(), SA:MaxActive())))
		for _, rec in ipairs(list.active) do
			local id = rec.id
			local mode = rec.mode ~= "active" and (" [" .. NS:L("arc_mode_" .. rec.mode) .. "]") or ""
			local text = rec.offer and NS:L("arc_row_waiting", rec.title) or NS:L("arc_row", rec.title, rec.stateLabel)
			table.insert(out, { text = text .. mode, actions = { Open(id), ArcAction("act_skip", "arc_tip_skip", function() SA:Skip(id) end) } })
		end
	end
	-- N7: the stories of an arc told for many NPCs (the nemeses), under the arc's title with their own slots
	local base
	for _, rec in ipairs(list.many) do
		if rec.base ~= base then
			base = rec.base
			table.insert(out, Heading(NS:L("arc_hdr_many", SA:Title(base), SA:InstanceCount(base), SA.defs[base].instances)))
		end
		local id = rec.id
		local mode = rec.mode ~= "active" and (" [" .. NS:L("arc_mode_" .. rec.mode) .. "]") or ""
		table.insert(out, { text = NS:L("arc_row", rec.title, rec.stateLabel) .. mode,
			actions = { Open(id), ArcAction("act_skip", "arc_tip_skip", function() SA:Skip(id) end) } })
	end
	if #list.available > 0 then
		table.insert(out, Heading(NS:L("arc_hdr_available")))
		for _, rec in ipairs(list.available) do
			local id = rec.id
			table.insert(out, { text = NS:L("arc_row_available", rec.title), actions = { Open(id), ArcAction("act_skip", "arc_tip_skip", function() SA:Skip(id) end) } })
		end
	end
	if #list.resolved > 0 then
		table.insert(out, Heading(NS:L("arc_hdr_resolved")))
		for _, rec in ipairs(list.resolved) do
			table.insert(out, { text = rec.title .. "  " .. Muted(LM.Stamp(rec.ended)), actions = { Open(rec.id) } })
		end
	end
	if #list.skipped > 0 then
		table.insert(out, Heading(NS:L("arc_hdr_skipped")))
		for _, rec in ipairs(list.skipped) do
			table.insert(out, { text = rec.title .. " [" .. NS:L("arc_mode_" .. rec.mode) .. "]", actions = { Open(rec.id) } })
		end
	end
	if #out == 0 then
		for _, l in ipairs(Wrap(NS:L("arc_empty"), "")) do table.insert(out, { text = Muted(l) }) end
	end
	if #list.active > 0 or #list.many > 0 or #list.available > 0 then
		table.insert(out, { text = Muted(NS:L("arc_all_suspend")), actions = { ArcAction("act_pause", "arc_tip_suspend", function() SA:ForAll("suspend") end) } })
		table.insert(out, { text = Muted(NS:L("arc_all_skip")), actions = { ArcAction("act_skip", "arc_tip_skip", function() SA:ForAll("skip") end) } })
	end
	return out
end

-- headings, a story told in lines: read in their order, never sorted
JournalFrame:RegisterTab("stories", { label = "arc_tab", note = "arc_note", plain = true, rows = ArcRows })

---------------------------------------------------------------------------
-- Songbook (#122, ADR 0044): the pieces heard or read, the whole text read from the loaded pack (the songbook keeps
-- only ids and times), the user's marks. A piece whose pack is gone is listed by its id and can be forgotten.
---------------------------------------------------------------------------
local SB = NS.Songbook
local selectedPiece          -- id of the piece open in the detail (session only)

-- a user mark: on or off, and a word when the songbook refuses it (full, read-only, memory off)
local function SongMark(fn, id, on)
	return function()
		local ok, why = fn(SB, id, on)
		if not ok then NS:Print(NS:L("song_why_" .. tostring(why))) end
	end
end

local function SongRows()
	local out = {}
	if not SB then return out end
	local list = SB:Entries()
	if selectedPiece then
		local e
		for _, x in ipairs(list) do
			if x.id == selectedPiece then e = x; break end
		end
		if e then
			local id = e.id
			table.insert(out, { text = NS:L("arc_back"), actions = { ArcAction("<", "song_tip_back", function() selectedPiece = nil end) } })
			table.insert(out, Heading(e.present and e.title or NS:L("song_missing", id)))
			local text = e.present and SB:FullText(id)
			if text then
				-- one row a verse (a long one wraps); an empty line between stanzas stays empty
				for line in (text .. "\n"):gmatch("([^\n]*)\n") do
					if line == "" then
						table.insert(out, { text = "" })
					else
						for _, l in ipairs(Wrap(line, "   ")) do table.insert(out, { text = l }) end
					end
				end
			else
				for _, l in ipairs(Wrap(NS:L("song_detail_missing"), "")) do table.insert(out, { text = Muted(l) }) end
			end
			if e.t > 0 then table.insert(out, { text = Muted(NS:L("song_detail_heard", LM.Stamp(e.t))) }) end
			table.insert(out, { text = NS:L(e.learned and "song_state_learned" or "song_state_heard"), actions = {
				ArcAction(e.learned and "act_unlearn" or "act_learn", e.learned and "song_tip_unlearn" or "song_tip_learn",
					SongMark(SB.SetLearned, id, not e.learned)) } })
			table.insert(out, { text = NS:L(e.favourite and "song_state_favourite" or "song_state_plain"), actions = {
				ArcAction(e.favourite and "act_unfavourite" or "act_favourite", "song_tip_favourite",
					SongMark(SB.SetFavourite, id, not e.favourite)) } })
			table.insert(out, { text = NS:L(e.muted and "song_state_muted" or "song_state_speaks"), actions = {
				ArcAction(e.muted and "act_unmute" or "act_mute", e.muted and "song_tip_unmute" or "song_tip_mute",
					SongMark(SB.SetMuted, id, not e.muted)) } })
			-- ADR 0060: a Bard piece can be shown again in the Bard's box and shared, on /say or /emote, by a click
			local rule = NS.Engine.byId[id]
			if e.present and NS.Bard and NS.Bard:Enabled() and NS.db.bard.share and NS.Bard.IsBardRule(rule)
				and NS.Bard.Parts(text or "", rule.genre) then
				local function Sing(channel)
					return function()
						local ok, why = NS.Gateway:PlayerAction(function() return NS.Bard:ShareFromSongbook(id, channel) end)
						if not ok then NS.Bard:Explain(why) end
					end
				end
				table.insert(out, { text = NS:L("song_share_row"), actions = {
					ArcAction("channel_SAY", "song_tip_share_say", Sing("SAY")),
					ArcAction("channel_EMOTE", "song_tip_share_emote", Sing("EMOTE")) } })
			end
			table.insert(out, { text = Muted(NS:L("song_forget_row")), actions = {
				{ label = NS:L("act_forget"), tip = NS:L("song_tip_forget"), confirm = "song_confirm_forget", done = "song_toast_forgot",
					fn = function()
						SB:Forget(id)
						selectedPiece = nil
					end } } })
			return out
		end
		selectedPiece = nil
	end
	for _, e in ipairs(list) do
		local id = e.id
		local marks = {}
		if e.favourite then table.insert(marks, NS:L("song_mark_favourite")) end
		if e.learned then table.insert(marks, NS:L("song_mark_learned")) end
		if e.muted then table.insert(marks, NS:L("song_mark_muted")) end
		local title = e.present and e.title or NS:L("song_missing", id)
		if e.muted or not e.present then title = Muted(title) end
		local text = ("%s%s"):format(e.favourite and (W.Hex("accent-text") .. "*|r ") or "", title)
		if #marks > 0 then text = text .. "  " .. Muted("[" .. table.concat(marks, ", ") .. "]") end
		table.insert(out, { text = text, t = e.t > 0 and e.t or nil, actions = {
			ArcAction("act_open", "song_tip_open", function() selectedPiece = id end),
			{ label = NS:L("act_forget"), tip = NS:L("song_tip_forget"), confirm = "song_confirm_forget", done = "song_toast_forgot",
				fn = function() SB:Forget(id) end },
		} })
	end
	if #out == 0 then
		for _, l in ipairs(Wrap(NS:L("song_empty"), "")) do table.insert(out, { text = Muted(l) }) end
	end
	return out
end

-- the list of pieces sorts; one piece open (its verses) is read in order
JournalFrame:RegisterTab("songbook", { label = "song_tab", note = "song_note", memory = true, rows = SongRows,
	plain = function() return selectedPiece ~= nil end })

---Opens the journal on a piece of the songbook (its whole text and marks).
---@param id string
---@return boolean opened
function JournalFrame:OpenPiece(id)
	selectedPiece = id
	return self:Open("songbook")
end

---------------------------------------------------------------------------
-- The window
---------------------------------------------------------------------------
local tbl         -- the DataTable of the sections (frame.table)

---Width of a text in the font of the rows (hidden measure, never seen).
---@param text string
---@return number
local function TextWidth(text)
	frame.measure:SetText(text)
	local w = frame.measure:GetStringWidth() or 0
	-- a client that does not measure hidden texts: an estimate of 7 units a character
	if w <= 0 and text ~= "" then w = Chars(text) * 7 end
	return w
end

local function Say(key, tone, ...)
	if frame and frame.toast then frame.toast:Say(NS:L(key, ...), tone or "ok") end
end

-- an action of a row: one that cannot be undone asks through the Dialog (its Confirm button carries the action's own
-- word), then says what happened in a Toast; the others just run
local function Do(a)
	a.fn()
	if a.done then Say(a.done) end
	JournalFrame:Refresh()
end

local function RunAction(data, k)
	local a = data and data.item.actions and data.item.actions[k]
	if not a or data.locked then return end
	if a.confirm then
		frame.dialog:Ask({ title = NS:L(a.confirm), text = NS:L("dlg_undone"), confirm = a.label, cancel = NS:L("dlg_cancel"),
			danger = true, onConfirm = function() Do(a) end })
	else
		Do(a)
	end
end

-- a row of the table: its two action buttons are made once with the row's frame
local function RowSetup(r)
	r.acts = {}
	for k = 1, 2 do
		local b = W.FlatButton(r, "", 24, 24, function() RunAction(r.data, k) end)
		W.Tooltip(b, function() return r.tips and r.tips[k] or "" end)
		r.acts[k] = b
	end
	-- the row's text is cut at the column: the tooltip has it whole
	W.Tooltip(r, function() return r.full or "" end)
end

-- #183: the buttons are short words ("Open", "Keep"), each as wide as its word (24 at least), from the right margin
local function RowUpdate(r, data)
	r.tips = {}
	local x = -8
	for k = 2, 1, -1 do
		local a = data.item.actions and data.item.actions[k]
		local b = r.acts[k]
		b:SetShown(a ~= nil)
		if a then
			-- an action that cannot be undone has the style of the destructive actions (#187)
			b:SetStyle(a.confirm and "danger" or "secondary")
			b:SetText(a.label)
			W.FitButton(b, 24, 110)
			b:SetEnabled(not data.locked)
			r.tips[k] = data.locked and NS:L(data.locked) or a.tip
			b:ClearAllPoints()
			b:SetPoint("RIGHT", r, "RIGHT", x, 0)
			x = x - b:GetWidth() - 4
		end
	end
	local room = tbl.pos and tbl.pos[1] and tbl.pos[1].w - 8 or INNER
	r.full = data.text ~= "" and TextWidth(data.text) > room and data.text or nil
end

local COLUMNS = {
	{ id = "text", title = "", flex = 1, text = function(d) return d.text end, value = function(d) return d.sortText end },
	{ id = "when", title = "", width = WHEN_W, mono = true, text = function(d) return d.when end, value = function(d) return d.t or 0 end },
	{ id = "acts", title = "", width = ACT_W, sortable = false, text = function() return "" end },
}

local function Build()
	-- the shell (#187): hidden at once (#192), title bar, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, WIDTH, HEIGHT, "mem_title", { name = "AzerothUnspokenJournal", point = { "CENTER", 0, 10 },
		refresh = function() JournalFrame:Refresh() end })
	-- the window closes (button, Esc, command): a question that was open is cancelled, the toast goes
	frame:SetScript("OnHide", function()
		if frame.dialog:IsShown() then frame.dialog:Hide() end
		frame.toast:Dismiss()
	end)

	-- the introduction says what is kept and what never is: 12 units (#182)
	frame.intro = Theme.NewText(frame, "Small", "text-2")
	frame.intro:SetPoint("TOPLEFT", 16, -W.TOP)
	frame.intro:SetWidth(INNER)
	frame.intro:SetJustifyH("LEFT")
	-- measures the texts of the rows and is never seen
	frame.measure = Theme.NewText(frame, "Body", "text-1")
	frame.measure:Hide()

	-- the sections: a 2-unit bar slides under the chosen one (UI-5); a click changes the section
	frame.tabBar = W.Tabs(frame, {}, function(id)
		if frame.syncing then return end
		state.tab = id
		JournalFrame:Refresh()
	end)
	frame.tabBar:SetWidth(INNER)

	-- the note of the section and the state of the memory: a line of its own under the tabs, above the table
	frame.note = Theme.NewText(frame, "Small", "text-2")
	frame.note:SetWidth(INNER)
	frame.note:SetJustifyH("LEFT")

	frame.table = W.DataTable(frame, COLUMNS, { rowHeight = ROW_H, pool = 24, rowSetup = RowSetup, rowUpdate = RowUpdate })
	tbl = frame.table

	frame.stats = Theme.NewText(frame, "Small", "text-2")
	frame.stats:SetPoint("BOTTOMLEFT", 16, 56)
	frame.stats:SetWidth(340)
	frame.stats:SetJustifyH("LEFT")
	if frame.stats.SetWordWrap then frame.stats:SetWordWrap(false) end

	frame.export = W.FlatButton(frame, "", 110, 24, function()
		JournalFrame:ShowExport()
	end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	-- "Forget everything" asks through the Dialog; a destructive action, so the danger style (#187)
	frame.reset = W.FlatButton(frame, "", 170, 24, function()
		frame.dialog:Ask({ title = NS:L("mem_reset_dlg_title"), text = NS:L("mem_reset_dlg_text"), confirm = NS:L("mem_reset"),
			cancel = NS:L("dlg_cancel"), danger = true, onConfirm = function()
				LM:Reset("all")
				Say("mem_toast_reset")
				JournalFrame:Refresh()
			end })
	end, "danger")
	frame.reset:SetPoint("BOTTOMLEFT", 136, 16)
	W.Tooltip(frame.reset, function() return NS:L(JournalFrame:MemoryLock() or "mem_reset_tip") end)
	frame.close = W.FlatButton(frame, "", 110, 24, function() JournalFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)

	frame.dialog = W.Dialog(frame, "AzerothUnspokenJournalDialog", { width = 440 })
	frame.toast = W.Toast(frame)
	frame.toast:ClearAllPoints()
	frame.toast:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, 48)
	NS.Windows:Register(frame)   -- #181: raised on a click, cascaded, the narrator steps aside
end

-- the tabs of the window follow JournalFrame.tabs: a tab another module registered later is added, one removed is hidden
local function SyncTabs()
	local bar = frame.tabBar
	frame.syncing = true
	local seen = {}
	for _, t in ipairs(JournalFrame.tabs) do
		seen[t.id] = true
		bar:AddTab(t.id, NS:L(t.label))
		bar:SetTabText(t.id, NS:L(t.label))
		bar:SetTabShown(t.id, true)
	end
	for id in pairs(bar.buttons) do
		if not seen[id] then bar:SetTabShown(id, false) end
	end
	-- eight or more tabs with the names of a larger font take the room around their texts, never the window's width
	bar:Fit(INNER)
	local tab = CurrentTab()
	if tab then bar:Select(tab.id) end
	frame.syncing = false
end

local function Plain(tab)
	local p = tab.plain
	if type(p) == "function" then p = p() end
	return p == true
end

---Redraws the window (if it is open).
function JournalFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	frame.title:SetText(NS:L("mem_title"))
	frame.intro:SetText(NS:L("mem_intro"))
	SyncTabs()
	local tab = CurrentTab()
	local lock = self:MemoryLock()
	local tabLock = tab and tab.memory and lock or nil

	-- from the top: the introduction, the tabs under it (#182), the note (with the state of the memory), the table
	local top = W.TOP + math.ceil(frame.intro:GetStringHeight() or 14) + 8
	frame.tabBar:ClearAllPoints()
	frame.tabBar:SetPoint("TOPLEFT", frame, "TOPLEFT", 16, -top)
	top = top + frame.tabBar:GetHeight() + 6
	local note = tab and tab.note and NS:L(tab.note) or ""
	if tabLock then note = W.Hex("warn") .. NS:L(tabLock) .. "|r" .. (note ~= "" and ("\n" .. note) or "") end
	frame.note:ClearAllPoints()
	frame.note:SetPoint("TOPLEFT", 16, -top)
	frame.note:SetText(note)
	frame.note:SetShown(note ~= "")
	if note ~= "" then top = top + math.ceil(frame.note:GetStringHeight() or 0) + 6 end
	tbl:ClearAllPoints()
	tbl:SetPoint("TOPLEFT", frame, "TOPLEFT", 16, -top)
	tbl:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, FOOT)

	-- the rows of the section as the table's data
	local list, data = tab and tab.rows() or {}, {}
	local hasWhen, hasActions = false, false
	for i, item in ipairs(list) do
		local plainText = tostring(item.text or ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
		local when = item.t and item.t > 0 and LM.Stamp(item.t) or ""
		hasWhen = hasWhen or when ~= ""
		hasActions = hasActions or (item.actions ~= nil and #item.actions > 0)
		data[i] = { item = item, text = item.text or "", sortText = plainText:lower(), t = item.t, when = when, locked = tabLock }
	end
	-- the columns the section has: the others give their room to the text
	COLUMNS[2].width, COLUMNS[3].width = hasWhen and WHEN_W or 0, hasActions and ACT_W or 0
	tbl:SetTitles({ text = NS:L("mem_col_text"), when = NS:L("mem_col_when") })
	local plain = Plain(tab)
	tbl:SetHeaderShown(not plain)
	tbl:SetSortable(not plain)
	tbl.heads[2]:SetShown(hasWhen and not plain)
	tbl.heads[3]:Hide()
	tbl:Layout()
	tbl:SetEmptyText(NS:L("mem_empty"))
	-- each section keeps the order the player chose; a view that is read in order has none
	local same = shownTab == tab.id
	if not same then
		if shownTab then sorts[shownTab] = { tbl:GetSort() } end
		tbl:ClearSort()
	end
	local keep = same and tbl:Backend() ~= "scrollbox" and tbl.offset or 0
	tbl:SetData(data)
	local saved = sorts[tab.id]
	if not same and not plain and saved and saved[1] then tbl:SortBy(saved[1], saved[2]) end
	if keep > 0 then tbl:SetOffset(keep) end
	shownTab = tab.id

	local st = LM:Stats()
	frame.stats:SetText(NS:L("mem_summary", st.memories, st.permanent, st.places, st.flags))
	frame.export:SetText(NS:L("mem_export"))
	frame.reset:SetText(NS:L("mem_reset"))
	frame.reset:SetEnabled(lock == nil)
	frame.close:SetText(NS:L("mem_close"))
end

---@return boolean
function JournalFrame:IsOpen()
	return frame ~= nil and frame:IsShown()
end

---@param tab? string id of a tab
---@return boolean opened
function JournalFrame:Open(tab)
	if not frame then
		local ok, err = pcall(Build)
		if not ok then
			frame = nil
			NS.Diagnostics:Error("journal", tostring(err))
			return false
		end
	end
	if tab then state.tab = tab end
	if frame.dialog:IsShown() then frame.dialog:Hide() end   -- a question left over from before is cancelled
	frame:Show()
	self:Refresh()
	return true
end

function JournalFrame:Close()
	if frame then frame:Hide() end
	if exportFrame then exportFrame:Hide() end
end

---Opens or closes the window. false if it cannot be built (the commands fall back to text).
---@return boolean handled
function JournalFrame:Toggle()
	if self:IsOpen() then
		self:Close()
		return true
	end
	return self:Open()
end

-- key binding (#183): open or close the journal
function AzerothUnspoken_Journal()
	if NS.db then JournalFrame:Toggle() end
end

---------------------------------------------------------------------------
-- Export: a text to select and copy
---------------------------------------------------------------------------
local EXPORT_W, EXPORT_H = 600, 440
local BOX_W = EXPORT_W - 32 - 28   -- the scroll bar of the template sits right of the box
local BOX_TOP, BOX_BOTTOM = 72, 52

-- The scrolling edit pattern (#192): the box is as tall as its text (measured, at least the visible area), so the
-- scroll frame scrolls exactly over the whole text, and the cursor stays in view while it moves.
local function FitBox()
	local f = exportFrame
	f.measure:SetText(f.box:GetText() or "")
	local h = math.ceil(f.measure:GetStringHeight() or 0) + 16
	local view = f.scroll and f.scroll:GetHeight() or (EXPORT_H - BOX_TOP - BOX_BOTTOM)
	if type(view) ~= "number" or view <= 0 then view = EXPORT_H - BOX_TOP - BOX_BOTTOM end
	f.box:SetHeight(math.max(view, h))
	if f.scroll and f.scroll.UpdateScrollChildRect then f.scroll:UpdateScrollChildRect() end
end

local function BuildExport()
	exportFrame = W.Window(UIParent, EXPORT_W, EXPORT_H, "mem_export", { name = "AzerothUnspokenJournalExport" })
	exportFrame:SetFrameStrata("FULLSCREEN_DIALOG")
	exportFrame.help = Theme.NewText(exportFrame, "Small", "text-2")
	exportFrame.help:SetPoint("TOPLEFT", 16, -W.TOP)
	exportFrame.help:SetWidth(EXPORT_W - 32)
	exportFrame.help:SetJustifyH("LEFT")

	-- the field the text sits in: a raised surface under the scroll frame
	exportFrame.field = Theme.Slice(exportFrame, "rr_fill_8", "surface-2", "BACKGROUND")
	exportFrame.field:SetPoint("TOPLEFT", exportFrame, "TOPLEFT", 12, -(BOX_TOP - 4))
	exportFrame.field:SetPoint("BOTTOMRIGHT", exportFrame, "BOTTOMRIGHT", -12, BOX_BOTTOM - 4)
	-- a multi-line box inside a scroll frame; without the standard template, the box alone
	local scroll
	pcall(function()
		scroll = CreateFrame("ScrollFrame", "AzerothUnspokenJournalExportScroll", exportFrame, "UIPanelScrollFrameTemplate")
	end)
	exportFrame.scroll = scroll
	local box = CreateFrame("EditBox", nil, scroll or exportFrame)
	box:SetMultiLine(true)
	box:SetAutoFocus(false)
	-- the chat font covers every glyph a name can have; the theme gives it its colour
	box:SetFontObject(ChatFontNormal or GameFontHighlight)
	Theme.Text(box, "text-1")
	box.auThemed = true
	box:SetWidth(BOX_W)
	-- measures the text in the font and width of the box, never shown
	exportFrame.measure = exportFrame:CreateFontString(nil, "ARTWORK", "ChatFontNormal")
	exportFrame.measure.auThemed = true   -- hidden, in the box's own font: it only measures
	exportFrame.measure:SetWidth(BOX_W)
	exportFrame.measure:Hide()
	if scroll then
		scroll:SetPoint("TOPLEFT", 16, -BOX_TOP)
		scroll:SetPoint("BOTTOMRIGHT", -36, BOX_BOTTOM)
		scroll:SetScrollChild(box)
		box:SetScript("OnCursorChanged", function(_, _, y, _, h)
			-- keeps the line of the cursor inside the visible area
			local top, view = -(tonumber(y) or 0), scroll:GetHeight()
			local cur = tonumber(scroll:GetVerticalScroll()) or 0
			h = tonumber(h) or 14
			if type(view) ~= "number" then return end
			if top < cur then scroll:SetVerticalScroll(top)
			elseif top + h > cur + view then scroll:SetVerticalScroll(top + h - view) end
		end)
	else
		box:SetPoint("TOPLEFT", 16, -BOX_TOP)
	end
	-- read only: what is typed is put back as it was, so it can only be selected and copied
	box:SetScript("OnTextChanged", function(self, byUser)
		if byUser and exportFrame.text then
			self:SetText(exportFrame.text)
			self:HighlightText()
		end
	end)
	box:SetScript("OnEscapePressed", function() exportFrame:Hide() end)
	exportFrame.box = box
	exportFrame.close = W.FlatButton(exportFrame, "", 110, 24, function() exportFrame:Hide() end)
	exportFrame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	-- the toast says the text is ready (UI-5); it sits at the left of the footer, the Close button is at the right
	exportFrame.toast = W.Toast(exportFrame)
	exportFrame.toast:ClearAllPoints()
	exportFrame.toast:SetPoint("BOTTOMLEFT", exportFrame, "BOTTOMLEFT", 16, 6)
	exportFrame:HookScript("OnHide", function() exportFrame.toast:Dismiss() end)
end

---Opens the window with a text, already selected, ready for Ctrl+C: the journal, or what other modules pass (the
---relationships of S6b).
---@param text? string the text (default: the journal's export)
---@param titleKey? string key of the title (default: mem_export)
---@return boolean opened false if the window cannot be built
function JournalFrame:ShowExport(text, titleKey)
	if not exportFrame then
		local ok, err = pcall(BuildExport)
		if not ok then
			exportFrame = nil
			NS.Diagnostics:Error("journal:export", tostring(err))
			return false
		end
	end
	text = text or LM:ExportText()
	exportFrame.text = text
	exportFrame.titleKey = titleKey or "mem_export"
	exportFrame.title:SetText(NS:L(exportFrame.titleKey))
	exportFrame.help:SetText(NS:L("mem_export_help"))
	exportFrame.close:SetText(NS:L("mem_close"))
	exportFrame.box:SetText(text)
	exportFrame:Show()
	FitBox()
	if exportFrame.scroll and exportFrame.scroll.SetVerticalScroll then exportFrame.scroll:SetVerticalScroll(0) end
	exportFrame.box:HighlightText()
	exportFrame.box:SetFocus()
	exportFrame.toast:Say(NS:L("mem_toast_export"), "ok")
	return true
end

---@return boolean
function JournalFrame:IsExportOpen()
	return exportFrame ~= nil and exportFrame:IsShown()
end
