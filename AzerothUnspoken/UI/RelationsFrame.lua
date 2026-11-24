-- Azeroth Unspoken: the "Relationships" window (S6b, GDD §7.4, §12.2).
-- Three tabs and a detail: the list (a sortable table, filtered by NPCs / players, by label and by name), the people met
-- (suggestions of the system: they join the list only with a click of the user), the options (automatic NPCs,
-- attraction, register by itself, suggestions, recognition, shared list) and the detail of one relationship, with
-- sliders for the axes, label, note, tags and the pickers of the traits and role of the other person (#37). At the
-- bottom, the text export. It opens with /au relationships or from the journal.
-- No chat or whisper content is shown or saved: only names, axes, notes and tags chosen by the user.
-- The detail of a player has two sections (#107): "What you chose" (axes, label, feelings, note, tags, traits: only the
-- user changes them) and "What the addon observed" (encounters by kind, last facts, no texts), with two distinct
-- actions: "Forget observations" and "Remove person".
-- Layout (U1, #171, #172, #179, #180): one fixed height for every view (the screen is 768 at UI scale 1), the detail in
-- two columns, blocks laid out top-down, and buttons sized from their text. The label, note and tags boxes save when
-- they lose focus, to the person they were opened for (#184).
-- UI-5 (UI-ECO): the shell is W.Window; the three views are W.Tabs (a 2-unit bar that slides under the chosen one), the
-- kind filter is a W.Segmented, the list and the people met are sortable W.DataTables (numbers in the mono font, in
-- accent-text), the three actions that cannot be undone (Forget observations, Remove person, Forget everything) ask
-- through W.Dialog and their result is said by a W.Toast, every text is a Theme font: the window needs no W.Adopt, and
-- the coloured words inside a line (W.Hex) are redrawn on a theme change by the window's `refresh`.
local ADDON, NS = ...
local W = NS.Widgets
local R = NS.Relationships
local Theme = NS.Theme

---@class AURelationsFrame
local RelationsFrame = NS:RegisterModule("relationsframe")
NS.RelationsFrame = RelationsFrame

local WIDTH, HEIGHT = 720, 680   -- every view: at most 680 units, so it fits a 768-unit screen (#172)
local INNER = WIDTH - 32         -- usable width between the 16-unit margins
local ROW_H = 32                 -- rows of the tables: 24-unit buttons with room around them
local TABLE_BOTTOM = 104         -- the tables end this high above the bottom: the summary and the toast live under them
-- the person's traits and role in the detail (source 1 of the profile, Systems/Interlocutor.lua), in one column
local TRAITS = { "role", "temperament", "morality", "goals", "speech" }
-- the detail: two columns, then the observed block across the whole width
local LEFT_X, RIGHT_X, RIGHT_W = 16, 372, 332
local CTRL_X, CTRL_W = 112, 244   -- the controls of the left column, after a 92-unit caption
local VIEW_TOP = -136             -- where every view starts: under the tabs of an intro of two lines
local DETAIL_TOP = -184
local AXIS_STEP = 26
local SEEN_Y = -512

local frame
local axisRows = {}
local view = { name = "list", subject = nil }
local filter = { text = "" }     -- kind, label, text: what the list shows (the table keeps the order)

-- UI-3: a token of the current theme (W.Hex); a theme change redraws the window
local function Muted(text) return W.Hex("text-3") .. text .. "|r" end

local function Stamp(t)
	if date and type(t) == "number" and t > 0 then return date("%Y-%m-%d", t) end
	return "-"
end

local KIND_IDS = { "all", "npc", "player" }   -- the Segmented's ids; the filter holds "npc", "player" or nil

---------------------------------------------------------------------------
-- Building
---------------------------------------------------------------------------
-- #182: the views lie under the tabs, and the tabs under the intro, whose height is measured with GetStringHeight(). Every
-- widget placed from the top goes through Place with its offset for the usual two-line intro; when the intro takes more
-- lines the tabs and everything under them move down by `shift`, and the window grows by as much. A table has a second
-- anchor, at the bottom: `Anchor` puts it back after a move.
local TABS_Y = 84          -- the tabs under an intro of two lines (W.TOP + 28 + 10)
local shift, placed, anchored = 0, {}, {}
local function Place(w, point, x, y)
	placed[#placed + 1] = { w, point, x, y }
	w:SetPoint(point, x, y - shift)
end

---A table: its top left corner is placed like the other widgets, its bottom right corner is the window's.
local function PlaceTable(t, x, y)
	anchored[#anchored + 1] = t
	Place(t, "TOPLEFT", x, y)
	t:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, TABLE_BOTTOM)
end

local function Reflow(newShift)
	if newShift == shift then return end
	shift = newShift
	for _, p in ipairs(placed) do
		p[1]:ClearAllPoints()
		p[1]:SetPoint(p[2], p[3], p[4] - shift)
	end
	for _, t in ipairs(anchored) do t:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, TABLE_BOTTOM) end
end

-- the styles of the window's texts: a theme font and a token (no game font object, no W.Adopt)
local STYLE = {
	caption = { "BodyMedium", "accent-text" },   -- the caption of a field, a section title
	body = { "Body", "text-1" },
	small = { "Small", "text-2" },               -- notes, the privacy text, the observed facts (12 units, #182)
	title = { "H1", "text-1" },                  -- the name of the person in the detail
	number = { "Mono", "accent-text" },          -- a value of a slider
}

local function Text(parent, style, x, y, width, justify)
	local st = STYLE[style or "body"]
	local fs = Theme.NewText(parent, st[1], st[2])
	Place(fs, "TOPLEFT", x, y)
	if width then fs:SetWidth(width) end
	fs:SetJustifyH(justify or "LEFT")
	return fs
end

local function Line(fs)
	if fs.SetWordWrap then fs:SetWordWrap(false) end
	return fs
end

-- #180: a button as wide as its label (measured in the button's own font), between min and max units
local function Fit(b, text, min, max)
	b:SetText(text)
	return W.FitButton(b, min, max)
end

-- a short result in a Toast (the window's, or nothing if the window is not built)
local function Say(key, tone, ...)
	if frame and frame.toast then frame.toast:Say(NS:L(key, ...), tone or "ok") end
end

-- #184: the label, note and tags boxes. Each one remembers the person it was focused for and saves to that person when
-- it loses focus (Enter, a click on another box, a change of view, closing the window). Esc puts the saved text back.
local EDITS = {
	{ field = "dCustom", saved = function(user) return user.label and not R.labelById[user.label] and user.label or "" end,
		save = function(s, text) R:SetLabel(s.kind, s.key, text) end },
	{ field = "dNote", saved = function(user) return user.note or "" end,
		save = function(s, text) R:SetNote(s.kind, s.key, text) end },
	{ field = "dTags", saved = function(user) return user.tags and table.concat(user.tags, ", ") or "" end,
		save = function(s, text) R:SetTags(s.kind, s.key, text) end },
}

local function SavedText(edit, s)
	local rec = s and R:Get(s.kind, s.key)
	return rec and edit.saved(R.UserOf(rec)) or nil
end

-- saves the box to its person if the text changed; the box forgets the person
local function Commit(box, edit)
	local s = box.owner or view.subject
	box.owner = nil
	if not s then return end
	local saved = SavedText(edit, s)
	local text = box:GetText() or ""
	if saved ~= nil and text ~= saved then edit.save(s, text) end
end

local function WireEdit(box, edit)
	box:SetScript("OnEditFocusGained", function(self)
		local s = view.subject
		self.owner = s and { kind = s.kind, key = s.key } or nil
	end)
	box:SetScript("OnEditFocusLost", function(self) if self.owner then Commit(self, edit) end end)
	box:SetScript("OnEnterPressed", function(self)
		Commit(self, edit)
		self:ClearFocus()
	end)
	box:SetScript("OnEscapePressed", function(self)
		local saved = SavedText(edit, self.owner or view.subject)
		self.owner = nil
		if saved then self:SetText(saved) end
		self:ClearFocus()
	end)
end

---Saves the drafts of the detail and takes the keyboard from every box (before any change of view).
local function CommitEdits()
	if not frame then return end
	for _, edit in ipairs(EDITS) do
		local box = frame[edit.field]
		if box:HasFocus() or box.owner then
			Commit(box, edit)
			box:ClearFocus()
		end
	end
	frame.search:ClearFocus()
	frame.addBox:ClearFocus()
end

local function RowTip(item)
	local lines = { item.name }
	table.insert(lines, NS:L("rel_col_kind") .. ": " .. NS:L("rel_kind_" .. item.kind))
	table.insert(lines, NS:L("rel_col_label") .. ": " .. item.info.text)
	table.insert(lines, ("%s: %s (%d)"):format(NS:L("rel_col_disposition"), item.info.dispositionText,
		math.floor(item.info.dispositionValue + 0.5)))
	local seen = R.SeenOf(item.rec)
	table.insert(lines, NS:L("rel_col_last") .. ": " .. Stamp(seen.last))
	table.insert(lines, NS:L("rel_col_count") .. ": " .. tostring(seen.count or 0))
	table.insert(lines, Muted(NS:L("rel_row_tip")))
	return table.concat(lines, "\n")
end

-- the table of the list: name, type, label, disposition, last seen, number of encounters. The order of a column is
-- the one of its value (a name without case, the disposition's number, the date, the count); the sorted column is
-- in accent-text with an arrow.
local function ListColumns()
	return {
		{ id = "name", title = "", flex = 1, text = function(d) return d.name end, value = function(d) return NS.Lower(d.name) end },
		{ id = "kind", title = "", width = 76, text = function(d) return NS:L("rel_kind_" .. d.kind) end,
			value = function(d) return d.kind end },
		{ id = "label", title = "", width = 124, text = function(d) return d.info.text end,
			value = function(d) return NS.Lower(d.info.text) end },
		{ id = "disposition", title = "", width = 128,
			text = function(d) return ("%s (%d)"):format(d.info.dispositionText, math.floor(d.info.dispositionValue + 0.5)) end,
			value = function(d) return d.info.dispositionValue end },
		{ id = "last", title = "", width = 92, mono = true, text = function(d) return Stamp(R.SeenOf(d.rec).last) end,
			value = function(d) return R.SeenOf(d.rec).last or 0 end },
		{ id = "count", title = "", width = 76, mono = true, align = "RIGHT", text = function(d) return tostring(R.SeenOf(d.rec).count or 0) end,
			value = function(d) return R.SeenOf(d.rec).count or 0 end },
	}
end

local function BuildList()
	-- the filter by kind: a Segmented (the chosen segment is raised, not only coloured)
	frame.kindSeg = W.Segmented(frame, {
		{ id = "all", text = NS:L("rel_filter_all") }, { id = "npc", text = NS:L("rel_filter_npcs") },
		{ id = "player", text = NS:L("rel_filter_players") },
	}, function(id)
		if frame.syncing then return end
		filter.kind = id ~= "all" and id or nil
		RelationsFrame:Refresh()
	end)
	Place(frame.kindSeg, "TOPLEFT", 16, VIEW_TOP)
	frame.labelBtn = W.FlatButton(frame, "", 190, 24, function()
		local ids = R:LabelIds()
		local nextId
		if filter.label == nil then nextId = ids[1] else
			for i, id in ipairs(ids) do if id == filter.label then nextId = ids[i + 1] end end
		end
		filter.label = nextId
		RelationsFrame:Refresh()
	end)
	Place(frame.labelBtn, "TOPLEFT", 252, VIEW_TOP - 4)
	frame.searchLabel = Text(frame, "caption", 436, VIEW_TOP - 8, 60, "RIGHT")
	frame.search = W.EditBox(frame, 180, 24)
	Place(frame.search, "TOPLEFT", 504, VIEW_TOP - 4)
	frame.search:SetMaxLetters(32)
	frame.search:SetScript("OnTextChanged", function(self, byUser)
		if byUser == false then return end
		filter.text = self:GetText() or ""
		RelationsFrame:Refresh()
	end)
	frame.search:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
	frame.search:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	-- a click on a row opens the person; the cells are cut with "..." and the tooltip has the whole row (#180)
	frame.listTable = W.DataTable(frame, ListColumns(), { rowHeight = ROW_H, pool = 16,
		onRowClick = function(d) RelationsFrame:SelectSubject(d.kind, d.key) end,
		rowSetup = function(r) W.Tooltip(r, function() return r.data and RowTip(r.data) or "" end) end })
	PlaceTable(frame.listTable, 16, VIEW_TOP - 40)
end

-- the people met: a person to add by name, then the table of the suggestions (and the questions about a changed identity)
local function PeopleColumns()
	return {
		{ id = "name", title = "", flex = 1, text = function(d) return d.text end, value = function(d) return NS.Lower(d.text) end },
		{ id = "source", title = "", width = 200, text = function(d) return d.source end, value = function(d) return NS.Lower(d.source) end },
		{ id = "acts", title = "", width = 76, sortable = false, text = function() return "" end },
	}
end

local function BuildPeople()
	frame.addLabel = Text(frame, "caption", 16, VIEW_TOP - 8, 120)
	frame.addBox = W.EditBox(frame, 250, 24)
	Place(frame.addBox, "TOPLEFT", 140, VIEW_TOP - 4)
	frame.addBox:SetMaxLetters(48)
	local function AddTyped()
		local name = frame.addBox:GetText()
		if name and name ~= "" then RelationsFrame:AddPlayer(name) end
	end
	frame.addBox:SetScript("OnEnterPressed", function(self) AddTyped(); self:ClearFocus() end)
	frame.addBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.addBtn = W.FlatButton(frame, "", 130, 24, AddTyped)
	Place(frame.addBtn, "TOPLEFT", 398, VIEW_TOP - 4)
	frame.peopleNote = Text(frame, "small", 16, VIEW_TOP - 38, INNER)
	-- a row is a suggested person, or (#112) a question about a listed person's identity: + says yes, x says no
	frame.peopleTable = W.DataTable(frame, PeopleColumns(), { rowHeight = ROW_H, pool = 14,
		rowSetup = function(r)
			r.add = W.FlatButton(r, "+", 28, 24, function()
				local c = r.data and r.data.cand
				if not c then return end
				if c.kind then RelationsFrame:AnswerIdentity(c.key, true) else RelationsFrame:AddPlayer(c.key) end
			end)
			r.add:SetPoint("RIGHT", r, "RIGHT", -40, 0)
			W.Tooltip(r.add, function()
				local c = r.data and r.data.cand
				return NS:L(c and c.kind and ("rel_id_accept_" .. c.kind .. "_tip") or "rel_cand_add_tip")
			end)
			r.dismiss = W.FlatButton(r, "x", 28, 24, function()
				local c = r.data and r.data.cand
				if c and c.kind then R:KeepIdentity(c.key) elseif c then R:Dismiss(c.key) end
				RelationsFrame:Refresh()
			end)
			r.dismiss:SetPoint("RIGHT", r, "RIGHT", -8, 0)
			W.Tooltip(r.dismiss, function()
				local c = r.data and r.data.cand
				return NS:L(c and c.kind and "rel_id_keep_tip" or "rel_cand_dismiss_tip")
			end)
		end })
	PlaceTable(frame.peopleTable, 16, VIEW_TOP - 80)
end

local function BuildDetail()
	frame.dTitle = Line(Text(frame, "title", 16, VIEW_TOP, 400))
	frame.dSummary = Line(Text(frame, "body", 16, VIEW_TOP - 26, INNER))
	-- #114: with the shared list on, whose choices count for this person (one list for the account, or this character's own)
	frame.dScope = W.FlatButton(frame, "", 220, 24, function()
		local s = view.subject
		if not s or s.kind ~= "player" then return end
		R:SetScope(s.key, R:ScopeOf(s.key) == "shared" and "character" or "shared")
	end)
	Place(frame.dScope, "TOPRIGHT", -16, VIEW_TOP + 2)
	W.Tooltip(frame.dScope, function() return NS:L("rel_scope_tip") end)

	-- left column: the axes, the label and the feelings
	frame.dUserTitle = Text(frame, "caption", LEFT_X, DETAIL_TOP, 340)
	for i = 1, #R.axes do
		local axis = R.axes[i]
		local y = DETAIL_TOP - 20 - (i - 1) * AXIS_STEP
		local row = { axis = axis.id }
		row.label = Line(Text(frame, "caption", LEFT_X, y - 5, 92))
		row.slider = W.Slider(frame, 150, axis.min, axis.max, function(v, final)
			if row.value then row.value:SetText(tostring(v)) end
			if final and view.subject then
				R:SetAxis(view.subject.kind, view.subject.key, axis.id, v)
			end
		end, { step = R.SLIDER_STEP })   -- #183: the mouse wheel moves it like "-" and "+"
		Place(row.slider, "TOPLEFT", CTRL_X, y - 4)
		row.value = Text(frame, "number", 266, y - 5, 34, "RIGHT")
		row.minus = W.FlatButton(frame, "-", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, -R.SLIDER_STEP) end
		end)
		Place(row.minus, "TOPLEFT", 306, y)
		row.plus = W.FlatButton(frame, "+", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, R.SLIDER_STEP) end
		end)
		Place(row.plus, "TOPLEFT", 332, y)
		W.Tooltip(row.slider, function() return R:AxisName(axis.id) .. ": " .. (axis.help and (axis.help[NS:Lang()] or axis.help.en) or "") end)
		axisRows[i] = row
	end
	local y = DETAIL_TOP - 20 - #R.axes * AXIS_STEP - 4
	frame.dLabelTitle = Line(Text(frame, "caption", LEFT_X, y - 5, 92))
	frame.dLabelBtn = W.FlatButton(frame, "", CTRL_W, 24, function()
		if view.subject then R:CycleLabel(view.subject.kind, view.subject.key) end
	end)
	Place(frame.dLabelBtn, "TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dLabelBtn, function() return frame.dLabelBtn:GetText() .. "\n" .. NS:L("rel_label_tip") end)
	y = y - 28
	frame.dCustom = W.EditBox(frame, CTRL_W, 22)
	Place(frame.dCustom, "TOPLEFT", CTRL_X, y)
	frame.dCustom:SetMaxLetters(R.LABEL_LEN)
	W.Tooltip(frame.dCustom, function() return NS:L("rel_custom_tip") end)
	y = y - 30
	-- feelings in words (#109): two slots and the typical-axes preset, all chosen by the user
	frame.dFeelingTitle = Line(Text(frame, "caption", LEFT_X, y - 5, 92))
	frame.dFeeling1 = W.FlatButton(frame, "", CTRL_W, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 1) end
	end)
	Place(frame.dFeeling1, "TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dFeeling1, function() return NS:L("rel_feeling_tip") end)
	y = y - 28
	frame.dFeeling2 = W.FlatButton(frame, "", 120, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 2) end
	end)
	Place(frame.dFeeling2, "TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dFeeling2, function() return NS:L("rel_feeling_tip") end)
	frame.dPreset = W.FlatButton(frame, "", 120, 24, function()
		if view.subject then R:ApplyFeelingPreset(view.subject.kind, view.subject.key) end
	end)
	Place(frame.dPreset, "TOPLEFT", CTRL_X + 124, y)
	W.Tooltip(frame.dPreset, function() return NS:L("rel_feeling_preset_tip") end)

	-- right column: how the user sees them (traits and role), then the note and the tags
	frame.dTraitsTitle = Text(frame, "caption", RIGHT_X, DETAIL_TOP, RIGHT_W)
	frame.dTraitBtns = {}
	y = DETAIL_TOP - 34
	for _, trait in ipairs(TRAITS) do
		local b = W.FlatButton(frame, "", RIGHT_W, 24, function()
			local s = view.subject
			if s and NS.Interlocutor:CycleTrait(s.kind, s.key, trait) ~= false then RelationsFrame:Refresh() end
		end)
		Place(b, "TOPLEFT", RIGHT_X, y)
		W.Tooltip(b, function() return b:GetText() .. "\n" .. NS:L("rel_trait_tip") end)
		frame.dTraitBtns[trait] = b
		y = y - 28
	end
	y = y - 6
	frame.dNoteTitle = Text(frame, "caption", RIGHT_X, y, RIGHT_W)
	frame.dNote = W.EditBox(frame, RIGHT_W, 22)
	Place(frame.dNote, "TOPLEFT", RIGHT_X, y - 18)
	frame.dNote:SetMaxLetters(R.NOTE_LEN)
	y = y - 48
	frame.dTagsTitle = Text(frame, "caption", RIGHT_X, y, RIGHT_W)
	frame.dTags = W.EditBox(frame, RIGHT_W, 22)
	Place(frame.dTags, "TOPLEFT", RIGHT_X, y - 18)
	frame.dTags:SetMaxLetters(160)
	for _, edit in ipairs(EDITS) do WireEdit(frame[edit.field], edit) end
	W.Tooltip(frame.dNote, function() return NS:L("rel_edit_tip") end)
	W.Tooltip(frame.dTags, function() return NS:L("rel_edit_tip") end)

	-- what the addon observed (players) or knows (NPCs: level, temperament, first meeting): a block of its own across
	-- the window, never editable
	frame.dSeenTitle = Text(frame, "caption", LEFT_X, SEEN_Y, INNER)
	frame.dSeenLine = Text(frame, "small", LEFT_X, SEEN_Y - 20, 340)
	frame.dSeenFacts = Text(frame, "small", RIGHT_X, SEEN_Y - 20, RIGHT_W)

	-- the actions on the person, in the footer (the window's own Export and Forget everything are for the list)
	frame.dBack = W.FlatButton(frame, "", 150, 24, function() RelationsFrame:ShowView("list") end)
	frame.dBack:SetPoint("BOTTOMLEFT", 16, 16)
	frame.dForget = W.FlatButton(frame, "", 200, 24, function()
		local s = view.subject
		if not s or s.kind ~= "player" then return end
		local key = s.key
		frame.dialog:Ask({ title = NS:L("rel_forget_dlg"), text = NS:L("rel_forget_tip"), confirm = NS:L("rel_forget"),
			cancel = NS:L("dlg_cancel"), danger = true, onConfirm = function()
				R:ForgetObservations(key)
				Say("rel_toast_forgot")
				RelationsFrame:Refresh()
			end })
	end, "danger")
	frame.dForget:SetPoint("BOTTOMLEFT", 176, 16)
	W.Tooltip(frame.dForget, function() return NS:L("rel_forget_tip") end)
	frame.dDelete = W.FlatButton(frame, "", 200, 24, function()
		local s = view.subject
		if not s then return end
		local shared = R:Sharing() and s.kind == "player"
		frame.dialog:Ask({ title = NS:L("rel_delete_dlg"), text = NS:L(shared and "rel_delete_shared_tip" or "rel_delete_dlg_text"),
			confirm = NS:L("rel_delete"), cancel = NS:L("dlg_cancel"), danger = true, onConfirm = function()
				RelationsFrame:RemoveSubject()
				Say("rel_toast_removed")
			end })
	end, "danger")
	frame.dDelete:SetPoint("BOTTOMLEFT", 386, 16)
	W.Tooltip(frame.dDelete, function()
		return NS:L(R:Sharing() and view.subject and view.subject.kind == "player" and "rel_delete_shared_tip" or "rel_delete")
	end)
end

local OPTIONS = {
	{ "npcAuto", "rel_opt_npc" }, { "proposePlayers", "rel_opt_propose" }, { "autoRegisterPlayers", "rel_opt_auto" },
	{ "attraction", "rel_opt_attraction" }, { "recognizeTarget", "rel_opt_target" }, { "proximity", "rel_opt_proximity" },
	{ "sharePlayers", "rel_opt_share" }, { "levelNotices", "rel_opt_levels" }, { "promiseNotices", "rel_opt_promises" },
	{ "favours", "rel_opt_favours" }, { "nicknames", "rel_opt_nicknames" },
	{ "localNotices", "rel_opt_local" },
	{ "eternalGrudge", "rel_opt_grudge" }, { "hostilityNotices", "rel_opt_hostility" },
	{ "companion", "rel_opt_companion" }, { "letters", "rel_opt_letters" }, { "guidAid", "rel_opt_guid" },
}

-- the options have a view of their own (#172): two columns of buttons, then the privacy note and, while the shared list
-- waits for its confirmation, the warning under it, laid out top-down so nothing grows over a button (#179)
local function BuildOptions()
	frame.options = {}
	local colW = (INNER - 16) / 2
	for i, opt in ipairs(OPTIONS) do
		local b = W.FlatButton(frame, "", colW, 24, function()
			if opt[1] == "sharePlayers" then
				-- #178: on in two steps (the warning, then the confirmation after a moment); off in one
				if R:Setting("sharePlayers") then R:StopSharing() else R:StartSharing() end
			else
				-- proximity is a consent like the shared list (#178); the other options flip
				R:ChangeSetting(opt[1])
			end
			RelationsFrame:Refresh()
		end)
		Place(b, "TOPLEFT", 16 + ((i - 1) % 2) * (colW + 16), VIEW_TOP - math.floor((i - 1) / 2) * 30)
		W.Tooltip(b, function() return NS:L(opt[2] .. "_tip") end)
		frame.options[i] = { button = b, key = opt[1], text = opt[2] }
	end
	-- the consents and the privacy note in the 12-unit font (#182), each under the one above
	frame.optionsHint = Text(frame, "small", 16, VIEW_TOP - math.ceil(#OPTIONS / 2) * 30 - 8, INNER)
	frame.privacy = Theme.NewText(frame, "Small", "text-2")
	frame.privacy:SetPoint("TOPLEFT", frame.optionsHint, "BOTTOMLEFT", 0, -10)
	frame.privacy:SetWidth(INNER)
	frame.privacy:SetJustifyH("LEFT")
	frame.warning = Theme.NewText(frame, "Small", "text-1")
	frame.warning:SetPoint("TOPLEFT", frame.privacy, "BOTTOMLEFT", 0, -12)
	frame.warning:SetWidth(INNER)
	frame.warning:SetJustifyH("LEFT")
end

local function Build()
	-- the shell (#187): hidden at once (#192), title bar, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, WIDTH, HEIGHT, "rel_title", { name = "AzerothUnspokenRelations", point = { "CENTER", 0, 10 },
		refresh = function() RelationsFrame:Refresh() end })
	-- closing the window (button, Esc, command, journal) keeps what was typed (#184); a question that was open is
	-- cancelled (#190) and the toast goes
	frame:SetScript("OnHide", function()
		CommitEdits()
		if frame.dialog:IsShown() then frame.dialog:Hide() end
		frame.toast:Dismiss()
	end)

	-- what the window keeps and what it never does: a privacy note, 12 units (#182)
	frame.intro = Theme.NewText(frame, "Small", "text-2")
	frame.intro:SetPoint("TOPLEFT", 16, -W.TOP)
	frame.intro:SetWidth(INNER)
	frame.intro:SetJustifyH("LEFT")
	-- the three views: tabs with a 2-unit bar that slides under the chosen one; the detail of a person belongs to the list
	frame.tabBar = W.Tabs(frame, {
		{ id = "list", text = "" }, { id = "people", text = "" }, { id = "options", text = "" },
	}, function(id)
		if frame.syncing then return end
		RelationsFrame:ShowView(id)
	end)
	frame.tabBar:SetWidth(INNER)
	Place(frame.tabBar, "TOPLEFT", 16, -TABS_Y)

	BuildList()
	BuildPeople()
	BuildDetail()
	BuildOptions()

	frame.stats = Theme.NewText(frame, "Small", "text-2")
	frame.stats:SetPoint("BOTTOMLEFT", 16, 56)
	frame.stats:SetWidth(330)
	frame.stats:SetJustifyH("LEFT")
	if frame.stats.SetWordWrap then frame.stats:SetWordWrap(false) end

	frame.export = W.FlatButton(frame, "", 110, 24, function() RelationsFrame:ShowExport() end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	-- Forget everything asks through the Dialog; a destructive action, so the danger style
	frame.reset = W.FlatButton(frame, "", 190, 24, function()
		frame.dialog:Ask({ title = NS:L("rel_reset_dlg"), text = NS:L("rel_reset_dlg_text"), confirm = NS:L("rel_reset"),
			cancel = NS:L("dlg_cancel"), danger = true, onConfirm = function()
				R:Reset("all")
				Say("rel_toast_reset")
				RelationsFrame:Refresh()
			end })
	end, "danger")
	frame.close = W.FlatButton(frame, "", 110, 24, function() RelationsFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)

	frame.dialog = W.Dialog(frame, "AzerothUnspokenRelationsDialog", { width = 460 })
	frame.toast = W.Toast(frame)
	frame.toast:ClearAllPoints()
	frame.toast:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -16, 48)
	NS.Windows:Register(frame)   -- #181
	-- a question that opens (after the pause for reading) or expires changes the buttons without a click (#178)
	NS.Consent:OnChange(function() RelationsFrame:Refresh() end)
end

---------------------------------------------------------------------------
-- Drawing
---------------------------------------------------------------------------
local function SetShown(widgets, on)
	for _, w in ipairs(widgets) do w:SetShown(on) end
end

local function ListWidgets()
	return { frame.kindSeg, frame.labelBtn, frame.searchLabel, frame.search, frame.listTable }
end

local function PeopleWidgets()
	return { frame.addLabel, frame.addBox, frame.addBtn, frame.peopleNote, frame.peopleTable }
end

local function DetailWidgets()
	local out = { frame.dTitle, frame.dSummary, frame.dUserTitle, frame.dLabelTitle, frame.dLabelBtn, frame.dCustom,
		frame.dFeelingTitle, frame.dFeeling1, frame.dFeeling2, frame.dPreset, frame.dNoteTitle, frame.dNote,
		frame.dTagsTitle, frame.dTags, frame.dTraitsTitle, frame.dSeenTitle, frame.dSeenLine, frame.dSeenFacts,
		frame.dForget, frame.dDelete, frame.dBack, frame.dScope }
	for _, b in pairs(frame.dTraitBtns) do table.insert(out, b) end
	for _, row in ipairs(axisRows) do
		for _, w in ipairs({ row.label, row.slider, row.value, row.minus, row.plus }) do table.insert(out, w) end
	end
	return out
end

local function OptionWidgets()
	local out = { frame.optionsHint, frame.privacy, frame.warning }
	for _, o in ipairs(frame.options) do table.insert(out, o.button) end
	return out
end

local function RefreshList()
	frame.labelBtn:SetText(filter.label and (NS:L("rel_filter_label", R:LabelName(filter.label))) or NS:L("rel_filter_label_any"))
	W.FitButton(frame.labelBtn, 150, 180)
	frame.searchLabel:SetText(NS:L("rel_search"))
	-- the labels follow the language
	frame.kindSeg.buttons.all.label:SetText(NS:L("rel_filter_all"))
	frame.kindSeg.buttons.npc.label:SetText(NS:L("rel_filter_npcs"))
	frame.kindSeg.buttons.player.label:SetText(NS:L("rel_filter_players"))
	frame.syncing = true
	frame.kindSeg:Select(filter.kind or "all")
	frame.syncing = false
	local t = frame.listTable
	local titles = {}
	for _, col in ipairs(t.columns) do titles[col.id] = NS:L("rel_col_" .. col.id) end
	t:SetTitles(titles)
	t:SetEmptyText(NS:L("rel_empty"))
	t:SetData(R:Rows({ kind = filter.kind, label = filter.label, text = filter.text }))
	-- the first time: the newest first, as the list has always been; after that the player's own order stays
	if not t:GetSort() and not frame.sortSet then
		frame.sortSet = true
		t:SortBy("last", true)
	end
end

local function RefreshPeople()
	frame.addLabel:SetText(NS:L("rel_add_player"))
	Fit(frame.addBtn, NS:L("rel_add_btn"), 130, 220)
	frame.peopleNote:SetText(NS:L("rel_people_note"))
	-- the questions about identity (#112) come first: the user is asked, and nothing changes until they answer
	local data = {}
	for _, c in ipairs(R:IdentityList()) do
		data[#data + 1] = { cand = c, source = "",
			text = c.kind == "renamed" and NS:L("rel_id_renamed", c.key, c.newKey) or NS:L("rel_id_guid", c.key) }
	end
	for _, c in ipairs(R:Candidates()) do
		data[#data + 1] = { cand = c, text = c.key, source = NS:L("rel_src_" .. c.source) }
	end
	local t = frame.peopleTable
	t:SetTitles({ name = NS:L("rel_col_name"), source = NS:L("rel_col_source") })
	t:SetEmptyText(NS:L("rel_no_candidates"))
	t:SetData(data)
end

-- the consents of this window and the question each one keeps open (#178)
local CONSENT_OF = { sharePlayers = "share", proximity = "proximity" }

local function RefreshOptions()
	for _, o in ipairs(frame.options) do
		local id = CONSENT_OF[o.key]
		local state = NS:L(R:Setting(o.key) and "on" or "off")
		if id and not R:Setting(o.key) then
			local q = NS.Consent:State(id)
			if q == "reading" then state = NS:L("consent_off_reading") elseif q == "ready" then state = NS:L("consent_off_ready") end
		end
		o.button:SetText(NS:L(o.text) .. ": " .. state)
	end
	-- one line under the options for each consent, then the privacy note (not tooltips only, #178)
	frame.optionsHint:SetText(NS:L("rel_options_hint"))
	frame.privacy:SetText(NS:L("rel_privacy"))
	-- the warning of the consent being asked sits in the window, next to the buttons, in the normal font
	local text
	for _, key in ipairs({ "sharePlayers", "proximity" }) do
		if NS.Consent:IsOpen(CONSENT_OF[key]) then text = NS:L("consent_" .. CONSENT_OF[key] .. "_text") end
	end
	frame.warning:SetShown(text ~= nil)
	frame.warning:SetText(text or "")
end

local function RefreshDetail()
	local s = view.subject
	local rec = s and R:Get(s.kind, s.key)
	if not rec then
		RelationsFrame:ShowView("list")
		return
	end
	local isPlayer = s.kind == "player"
	local user, seen = R.UserOf(rec), R.SeenOf(rec)
	local info = R:Resolve(s.kind, rec)
	frame.dTitle:SetText(("%s  %s"):format(R:DisplayName(s.kind, s.key), Muted("(" .. NS:L("rel_kind_" .. s.kind) .. ")")))
	frame.dSummary:SetText(("%s: %s   %s: %s (%d)"):format(NS:L("rel_col_label"), info.text, NS:L("rel_col_disposition"),
		info.dispositionText, math.floor(info.dispositionValue + 0.5)))
	frame.dUserTitle:SetText(NS:L("rel_section_user"))
	local active = {}
	for _, a in ipairs(R:ActiveAxes()) do active[a.id] = true end
	for _, row in ipairs(axisRows) do
		local on = active[row.axis] == true
		for _, w in ipairs({ row.label, row.slider, row.value, row.minus, row.plus }) do w:SetShown(on) end
		if on then
			local v = info.axes[row.axis] or 0
			row.label:SetText(R:AxisName(row.axis))
			row.slider:SetQuiet(v)
			row.value:SetText(tostring(math.floor(v + 0.5)))
		end
	end
	frame.dLabelTitle:SetText(NS:L("rel_label"))
	frame.dLabelBtn:SetText(info.manual and NS:L("rel_label_set", info.text) or NS:L("rel_label_auto", info.derived and R:LabelName(info.derived) or "?"))
	-- a box being typed in keeps its draft (#184)
	if not frame.dCustom:HasFocus() then frame.dCustom:SetText(user.label and not R.labelById[user.label] and user.label or "") end
	frame.dFeelingTitle:SetText(NS:L("rel_feeling"))
	local none = NS:L("rel_feeling_none")
	frame.dFeeling1:SetText(NS:L("rel_feeling_btn", info.feelings[1] and R:FeelingName(info.feelings[1]) or none))
	frame.dFeeling2:SetText(NS:L("rel_feeling_btn2", info.feelings[2] and R:FeelingName(info.feelings[2]) or none))
	frame.dFeeling2:SetEnabled(info.feelings[1] ~= nil)
	frame.dPreset:SetText(NS:L("rel_feeling_preset"))
	frame.dPreset:SetEnabled(info.feelings[1] ~= nil)
	frame.dNoteTitle:SetText(NS:L("rel_note"))
	if not frame.dNote:HasFocus() then frame.dNote:SetText(user.note or "") end
	frame.dTagsTitle:SetText(NS:L("rel_tags"))
	if not frame.dTags:HasFocus() then frame.dTags:SetText(user.tags and table.concat(user.tags, ", ") or "") end
	frame.dTraitsTitle:SetText(NS:L("rel_traits_title"))
	for trait, b in pairs(frame.dTraitBtns) do
		local value, auto = NS.Interlocutor:GetUserTrait(s.kind, s.key, trait)
		local text = value and NS.Traits.ValueName(trait, value) or NS:L("rel_trait_unknown")
		if auto then text = text .. " (" .. NS:L("rel_trait_auto") .. ")" end
		b:SetText(NS.Traits.Name(trait) .. ": " .. text)
	end
	-- what the addon observed: a block of its own for players, with its own action; for an NPC (N2, #214) its visible
	-- level, its temperament and the first meeting
	for _, w in ipairs({ frame.dSeenTitle, frame.dSeenLine, frame.dSeenFacts }) do w:SetShown(true) end
	frame.dForget:SetShown(isPlayer)
	if not isPlayer then
		frame.dSeenTitle:SetText(NS:L("rel_section_npc"))
		frame.dSeenLine:SetText(R:LevelText(info) .. "\n" .. R:TemperText(s.key, rec))
		-- N3 (#215): the private vow, when the character made it; N4 (#216): the word given to the NPC; N5 (#217): the
		-- nickname and the favours; N6 (#218): their town, your title there and their rivals
		local vow, promises, favours = R:VowText(rec), R:PromiseText(s.key, rec), R:FavourText(rec)
		local town = R:TownText(s.key, rec)
		-- N1 (#213): the grudge, the hearth, a betrayal their town remembers
		local foe = R:FoeText(s.key, rec)
		local extra = {}
		if vow ~= "" then table.insert(extra, vow) end
		if promises ~= "" then table.insert(extra, promises) end
		if favours ~= "" then table.insert(extra, favours) end
		if town ~= "" then table.insert(extra, town) end
		if foe ~= "" then table.insert(extra, foe) end
		frame.dSeenFacts:SetText(R:MetText(rec, Stamp) .. (#extra > 0 and ("\n" .. table.concat(extra, "\n")) or ""))
	end
	if isPlayer then
		frame.dSeenTitle:SetText(NS:L("rel_section_seen"))
		local facts = {}
		for i = #(seen.facts or {}), 1, -1 do
			local f = seen.facts[i]
			local kind = NS:L("rel_enc_" .. f.k)
			table.insert(facts, NS:L("rel_seen_fact", Stamp(f.t), kind == "rel_enc_" .. f.k and f.k or kind, f.z and ("  (" .. f.z .. ")") or ""))
		end
		if (seen.count or 0) == 0 and #facts == 0 then
			frame.dSeenLine:SetText(Muted(NS:L("rel_seen_none")))
			frame.dSeenFacts:SetText("")
		else
			frame.dSeenLine:SetText(NS:L("rel_seen_line", Stamp(seen.first), Stamp(seen.last), R:EncountersText(rec)))
			frame.dSeenFacts:SetText(#facts > 0 and (NS:L("rel_seen_facts") .. "\n" .. table.concat(facts, "\n")) or "")
		end
		frame.dForget:SetText(NS:L("rel_forget"))
	end
	-- the footer: Back, then (players) Forget observations, then Remove person
	local x = 16 + Fit(frame.dBack, NS:L("rel_back"), 120, 180) + 8
	if isPlayer then
		frame.dForget:ClearAllPoints(); frame.dForget:SetPoint("BOTTOMLEFT", x, 16)
		x = x + Fit(frame.dForget, frame.dForget:GetText(), 150, 210) + 8
	end
	frame.dDelete:ClearAllPoints(); frame.dDelete:SetPoint("BOTTOMLEFT", x, 16)
	Fit(frame.dDelete, NS:L("rel_delete"), 150, 210)
	frame.dScope:SetShown(isPlayer and R:Sharing())
	Fit(frame.dScope, NS:L(R:ScopeOf(s.key) == "shared" and "rel_scope_btn_shared" or "rel_scope_btn_character"), 140, 280)
end

-- the tabs: the chosen one has a 2-unit bar under it, which slides from the old one (#187: not a colour only); the
-- detail of a person belongs to the list tab. The people tab says how many suggestions wait.
local function RefreshTabs()
	local bar = frame.tabBar
	local st = R:Stats()
	bar:SetTabText("list", NS:L("rel_tab"))
	bar:SetTabText("people", NS:L("rel_tab_people") .. " (" .. (st.candidates + st.identity) .. ")")
	bar:SetTabText("options", NS:L("rel_tab_options"))
	frame.syncing = true
	bar:Select(view.name == "detail" and "list" or view.name)
	frame.syncing = false
end

---Redraws the window (if it is open).
function RelationsFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	frame.title:SetText(NS:L("rel_title"))
	frame.intro:SetText(NS:L("rel_intro"))
	-- #182: the tabs sit under the intro, whatever its number of lines
	Reflow(math.max(0, W.TOP + math.ceil(frame.intro:GetStringHeight() or 28) + 10 - TABS_Y))
	frame:SetHeight(HEIGHT + shift)
	RefreshTabs()
	local detail, listed = view.name == "detail", view.name == "list" or view.name == "people"
	SetShown(ListWidgets(), view.name == "list")
	SetShown(PeopleWidgets(), view.name == "people")
	SetShown(OptionWidgets(), view.name == "options")
	SetShown(DetailWidgets(), detail)
	frame.stats:SetShown(listed)
	SetShown({ frame.export, frame.reset }, not detail)
	if view.name == "list" then RefreshList()
	elseif view.name == "people" then RefreshPeople()
	elseif view.name == "options" then RefreshOptions()
	else RefreshDetail() end
	local st = R:Stats()
	frame.stats:SetText(NS:L("rel_summary", st.npcs, st.players, st.candidates))
	local w = Fit(frame.export, NS:L("rel_export"), 100, 160)
	frame.reset:ClearAllPoints(); frame.reset:SetPoint("BOTTOMLEFT", 16 + w + 8, 16)
	Fit(frame.reset, NS:L("rel_reset"), 150, 220)
	Fit(frame.close, NS:L("rel_close"), 100, 160)
end

---------------------------------------------------------------------------
-- Actions (the same as the buttons: the tests and the commands call them directly)
---------------------------------------------------------------------------
---@param name "list"|"people"|"options"|"detail"
function RelationsFrame:ShowView(name)
	CommitEdits()
	view.name = name
	if frame and frame.dialog:IsShown() then frame.dialog:Hide() end
	if name ~= "detail" then view.subject = nil end
	self:Refresh()
end

---Apre il dettaglio di una relazione.
---@param kind AURelationKind
---@param key integer|string
function RelationsFrame:SelectSubject(kind, key)
	if not R:Get(kind, key) then return false end
	-- a draft typed for the person on screen stays with that person, never with the next one (#184)
	CommitEdits()
	view.subject = { kind = kind, key = key }
	view.name = "detail"
	if frame and frame.dialog:IsShown() then frame.dialog:Hide() end
	self:Refresh()
	return true
end

---L'utente sceglie di aggiungere un giocatore (un candidato o un nome scritto): l'unico modo per entrarci.
---@param name string
---@return boolean ok
function RelationsFrame:AddPlayer(name)
	local rec, why = R:AddPlayer(name, "user")
	if rec and why ~= "exists" then
		NS:Print(NS:L("rel_added", R.PlayerKey(name) or name))
		Say("rel_toast_added", "ok", R.PlayerKey(name) or name)
		if frame and frame.addBox then frame.addBox:SetText("") end
		self:Refresh()
		return true
	end
	NS:Print(NS:L(why == "exists" and "rel_exists" or "rel_add_failed", name, NS:L("rel_why_" .. tostring(why))))
	return false
end

---The user answers a question about a person's identity (#112) with a click: yes changes the record, no leaves it.
function RelationsFrame:AnswerIdentity(key, yes)
	if yes then
		local ok, why = R:AcceptIdentity(key)
		NS:Print(ok and NS:L("rel_id_accepted", key) or NS:L("rel_id_failed", key, NS:L("rel_id_why_" .. tostring(why))))
	else
		R:KeepIdentity(key)
	end
	self:Refresh()
	return true
end

function RelationsFrame:RemoveSubject()
	local s = view.subject
	if s then R:Remove(s.kind, s.key) end
	view.subject = nil
	self:ShowView("list")
end

---@return boolean
function RelationsFrame:IsOpen()
	return frame ~= nil and frame:IsShown()
end

---@return string? view list | people | options | detail
function RelationsFrame:CurrentView()
	return frame and view.name or nil
end

---@param where? "list"|"people"|"options"|{kind: string, key: any}
---@return boolean opened
function RelationsFrame:Open(where)
	if not frame then
		local ok, err = pcall(Build)
		if not ok then
			frame = nil
			NS.Diagnostics:Error("relations:ui", tostring(err))
			return false
		end
	end
	if frame.dialog:IsShown() then frame.dialog:Hide() end   -- a question left over from before is cancelled (#190)
	frame:Show()
	if type(where) == "table" then
		if not self:SelectSubject(where.kind, where.key) then self:ShowView("list") end
	elseif where == "people" or where == "list" or where == "options" then
		self:ShowView(where)
	else
		self:Refresh()
	end
	return true
end

function RelationsFrame:Close()
	if frame then frame:Hide() end
end

---Opens or closes the window. false if it cannot be built (the commands fall back to text).
---@return boolean handled
function RelationsFrame:Toggle()
	if self:IsOpen() then
		self:Close()
		return true
	end
	return self:Open()
end

---The text to copy (in the journal's export window).
---@return boolean opened
function RelationsFrame:ShowExport()
	if not NS.JournalFrame then return false end
	return NS.JournalFrame:ShowExport(R:ExportText(), "rel_export")
end

---------------------------------------------------------------------------
-- The journal hosts two tabs: the relationships and the people met
---------------------------------------------------------------------------
if NS.JournalFrame then
	NS.JournalFrame:RegisterTab("relations", { label = "rel_tab", note = "rel_journal_note", rows = function()
		local out = {}
		for i, row in ipairs(R:Rows({ sort = "last" })) do
			if i > 200 then break end
			local kind, key = row.kind, row.key
			table.insert(out, {
				text = ("%s  %s  %s"):format(row.name, row.info.text, Muted(("%s (%d)"):format(row.info.dispositionText,
					math.floor(row.info.dispositionValue + 0.5)))),
				actions = { { label = NS:L("act_open"), tip = NS:L("rel_open_tip"), fn = function()
					RelationsFrame:Open({ kind = kind, key = key })
				end } },
			})
		end
		return out
	end })
	NS.JournalFrame:RegisterTab("people", { label = "rel_tab_people", note = "rel_people_note", rows = function()
		local out = {}
		for _, it in ipairs(R:IdentityList()) do
			local key = it.key
			table.insert(out, {
				text = it.kind == "renamed" and NS:L("rel_id_renamed", key, it.newKey) or NS:L("rel_id_guid", key),
				actions = {
					{ label = NS:L("act_add"), tip = NS:L("rel_id_accept_" .. it.kind .. "_tip"), fn = function() RelationsFrame:AnswerIdentity(key, true) end },
					{ label = NS:L("act_dismiss"), tip = NS:L("rel_id_keep_tip"), fn = function() RelationsFrame:AnswerIdentity(key, false) end },
				},
			})
		end
		for _, c in ipairs(R:Candidates()) do
			local key = c.key
			table.insert(out, {
				text = ("%s  %s"):format(key, Muted(NS:L("rel_src_" .. c.source))),
				actions = {
					{ label = NS:L("act_add"), tip = NS:L("rel_cand_add_tip"), fn = function() RelationsFrame:AddPlayer(key) end },
					{ label = NS:L("act_dismiss"), tip = NS:L("rel_cand_dismiss_tip"), fn = function() R:Dismiss(key) end },
				},
			})
		end
		return out
	end })
end
