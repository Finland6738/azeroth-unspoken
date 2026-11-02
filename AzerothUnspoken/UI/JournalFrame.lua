-- Azeroth Unspoken: il diario del personaggio (GDD §12.2): ricordi, luoghi visitati, flag e momenti della sessione, con
-- cancellazione selettiva, ricordi permanenti ed esportazione testuale manuale in una finestra copiabile (l'addon non
-- può scrivere file). Si apre con /au journal (alias /au journal) o dal pannello delle impostazioni.
-- Le schede sono dati: JournalFrame:RegisterTab(id, def) aggiunge una scheda (S6b ci mette le relazioni, S9 gli archi).
-- Il guscio è W.Window (#187): bordo, fascia del titolo, pulsante di chiusura, Esc e scala. Pulsanti piatti e un elenco
-- a pagine: nessun modello di scorrimento da cui dipendere, tranne la finestra dell'esportazione (con ripiego).
local ADDON, NS = ...
local W = NS.Widgets
local LM = NS.LivingMemory

---@class AUJournalAction
---@field label string testo del pulsante (breve)
---@field tip? string suggerimento
---@field confirm? string chiave della domanda: l'azione non si annulla, quindi chiede un secondo clic
---@field key? string identità stabile dell'azione armata (predefinita: il testo della riga)
---@field fn fun() cosa fare; l'elenco si aggiorna da solo

---@class AUJournalRow
---@field text string
---@field actions? AUJournalAction[] al massimo due

---@class AUJournalTab
---@field id string
---@field label string chiave del testo dell'interfaccia
---@field rows fun(): AUJournalRow[]
---@field note? string chiave di una nota sotto le schede
---@field memory? boolean scheda della memoria: spenta o in sola lettura, si legge e basta

---@class AUJournalFrame
local JournalFrame = NS:RegisterModule("journal")
NS.JournalFrame = JournalFrame

local MAX_ROWS = 11             -- righe per pagina, al massimo: la nota e le schede su due file ne tolgono
local ROW_H = 28
local ROW_W = 500               -- larghezza iniziale del testo di una riga: PlaceActions la riduce ai pulsanti (#183)
local INNER_W = 568             -- larghezza utile della finestra
local TAB_H, TAB_GAP = 24, 4    -- the tabs start under the introduction, whatever its number of lines (#182)
local TAB_PAD, TAB_MIN = 24, 48 -- margine del testo nei pulsanti delle schede; larghezza minima
local HEIGHT = 520
local LIST_TOP, LIST_BOTTOM = 112, 444  -- l'elenco sta tra questi due (le pagine iniziano a 444 dall'alto)
local ARM_SECONDS = 6           -- dopo il primo clic di una conferma si ha questo tempo per il secondo

---@type AUJournalTab[]
JournalFrame.tabs = {}
local frame, exportFrame
local rows, tabButtons = {}, {}
JournalFrame.rows = rows   -- per i test: { text, hit, b[1..2], width }
-- armed: "Dimentica tutto" armato; confirm: la chiave dell'azione di riga armata; token: l'ultimo armamento
local state = { tab = "memories", page = 1, armed = false, confirm = nil, token = 0 }
local pageSize = MAX_ROWS

---Aggiunge o sostituisce una scheda.
---@param id string
---@param def { label: string, rows: fun(): AUJournalRow[], note?: string, memory?: boolean }
function JournalFrame:RegisterTab(id, def)
	if type(id) ~= "string" or type(def) ~= "table" or type(def.rows) ~= "function" then return false end
	local tab = { id = id, label = def.label, rows = def.rows, note = def.note, memory = def.memory == true }
	for i, t in ipairs(self.tabs) do
		if t.id == id then
			self.tabs[i] = tab
			return true
		end
	end
	table.insert(self.tabs, tab)
	return true
end

---La memoria si può cambiare? nil se sì, altrimenti la chiave del perché (sola lettura o modulo spento).
---@return string?
function JournalFrame:MemoryLock()
	if LM.readOnly then return "mem_state_readonly" end
	if NS.db and NS.db.modules and NS.db.modules.memory == false then return "mem_state_off" end
	return nil
end

-- Le conferme a due clic ("Dimentica tutto" e le cancellazioni di una riga): un solo armamento alla volta, ciascuno
-- con il suo gettone; il timer disarma soltanto l'armamento che l'ha avviato, mai uno più recente.
local function Disarm()
	state.armed, state.confirm = false, nil
end

---@param what true|string true: "Dimentica tutto"; una stringa: la chiave dell'azione di riga
local function Arm(what)
	Disarm()
	state.token = state.token + 1
	local token = state.token
	if what == true then state.armed = true else state.confirm = what end
	NS.Compat.After(ARM_SECONDS, function()
		if state.token ~= token then return end
		Disarm()
		JournalFrame:Refresh()
	end)
end

local function CurrentTab()
	for _, t in ipairs(JournalFrame.tabs) do
		if t.id == state.tab then return t end
	end
	return JournalFrame.tabs[1]
end

---------------------------------------------------------------------------
-- Schede di base
---------------------------------------------------------------------------
local function Muted(text) return "|cff9d9d9d" .. text .. "|r" end

JournalFrame:RegisterTab("memories", { label = "mem_tab_memories", memory = true, rows = function()
	local out = {}
	for _, e in ipairs(LM:List()) do
		local id = e.id
		table.insert(out, {
			text = ("%s%s  %s"):format(e.perm and "|cffffd200[P]|r " or "", LM:Describe(e), Muted(LM.Stamp(e.t))),
			actions = {
				{ label = NS:L("act_keep"), tip = NS:L("mem_perm_tip"), fn = function()
					local ok, why = LM:SetPermanent(id)
					if not ok and why == "limit" then NS:Print(NS:L("mem_perm_limit")) end
				end },
				{ label = NS:L("act_delete"), tip = NS:L("mem_delete_tip"), confirm = "mem_confirm_delete", key = "memory:" .. id,
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
			text = ("%s  %s"):format(LM:DescribePlace(p), Muted(LM.Stamp(p.last))),
			actions = { { label = NS:L("act_forget"), tip = NS:L("mem_forget_tip"), confirm = "mem_confirm_forget", key = "place:" .. name,
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
			text = ("%s  %s"):format(name, Muted(LM.Stamp(data.flags[name].t))),
			actions = { { label = NS:L("act_clear"), tip = NS:L("mem_flag_tip"), confirm = "mem_confirm_flag", key = "flag:" .. name,
				fn = function() LM:ClearFlag(name) end } },
		})
	end
	return out
end })

JournalFrame:RegisterTab("session", { label = "mem_tab_session", note = "mem_session_note", memory = true, rows = function()
	local out = {}
	for _, e in ipairs(LM:SessionList()) do
		table.insert(out, { text = ("%s  %s"):format(LM:Describe(e), Muted(LM.Stamp(e.t))) })
	end
	return out
end })

---------------------------------------------------------------------------
-- Storie (S9): in corso, disponibili, concluse, saltate; il dettaglio mostra il racconto e le scelte fatte
---------------------------------------------------------------------------
local SA = NS.StoryArcs
local selectedArc            -- id dell'arco aperto nel dettaglio (solo sessione)
local WRAP = 76              -- caratteri per riga del dettaglio

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

local function Heading(text) return { text = "|cffffd200" .. text .. "|r" } end

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
				table.insert(out, { text = "|cffcfcfcf" .. h.label .. "|r  " .. Muted(LM.Stamp(h.t)) })
				for _, l in ipairs(Wrap(h.line, "   ")) do table.insert(out, { text = l }) end
			end
			for _, c in ipairs(rec.choices) do
				table.insert(out, { text = "|cff7fff7f" .. NS:L("arc_detail_chosen", c.prompt) .. "|r" })
				for _, l in ipairs(Wrap(c.label .. (c.note and (" – " .. c.note) or ""), "   ")) do table.insert(out, { text = l }) end
			end
			local id = rec.id
			if rec.offer then
				if rec.offer.prompt and #rec.offer.options > 0 then
					for _, l in ipairs(Wrap(rec.offer.prompt, "")) do table.insert(out, { text = "|cffffd200" .. l .. "|r" }) end
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
	if #list.active > 0 or #list.available > 0 then
		table.insert(out, { text = Muted(NS:L("arc_all_suspend")), actions = { ArcAction("act_pause", "arc_tip_suspend", function() SA:ForAll("suspend") end) } })
		table.insert(out, { text = Muted(NS:L("arc_all_skip")), actions = { ArcAction("act_skip", "arc_tip_skip", function() SA:ForAll("skip") end) } })
	end
	return out
end

JournalFrame:RegisterTab("stories", { label = "arc_tab", note = "arc_note", rows = ArcRows })

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

local function SongStamp(e)
	return e.t > 0 and Muted(LM.Stamp(e.t)) or ""
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
			table.insert(out, { text = Muted(NS:L("song_forget_row")), actions = {
				{ label = NS:L("act_forget"), tip = NS:L("song_tip_forget"), confirm = "song_confirm_forget", key = "piece:" .. id,
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
		local text = ("%s%s  %s"):format(e.favourite and "|cffffd200*|r " or "", title, SongStamp(e))
		if #marks > 0 then text = text .. "  " .. Muted("[" .. table.concat(marks, ", ") .. "]") end
		table.insert(out, { text = text, actions = {
			ArcAction("act_open", "song_tip_open", function() selectedPiece = id end),
			{ label = NS:L("act_forget"), tip = NS:L("song_tip_forget"), confirm = "song_confirm_forget", key = "piece:" .. id,
				fn = function() SB:Forget(id) end },
		} })
	end
	if #out == 0 then
		for _, l in ipairs(Wrap(NS:L("song_empty"), "")) do table.insert(out, { text = Muted(l) }) end
	end
	return out
end

JournalFrame:RegisterTab("songbook", { label = "song_tab", note = "song_note", memory = true, rows = SongRows })

---Opens the journal on a piece of the songbook (its whole text and marks).
---@param id string
---@return boolean opened
function JournalFrame:OpenPiece(id)
	selectedPiece = id
	return self:Open("songbook")
end

---------------------------------------------------------------------------
-- Finestra
---------------------------------------------------------------------------
-- un'azione di riga: le azioni con conferma chiedono un secondo clic sulla stessa riga; ogni altro clic disarma
local function RunAction(row, k)
	local a = row.actions and row.actions[k]
	if not a or row.locked then return end
	if a.confirm and state.confirm ~= row.keys[k] then
		Arm(row.keys[k])
		JournalFrame:Refresh()
		return
	end
	Disarm()
	a.fn()
	JournalFrame:Refresh()
end

local function BuildRow(i)
	local row = { keys = {}, tips = {} }
	row.text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	row.text:SetWidth(ROW_W)
	row.text:SetJustifyH("LEFT")
	if row.text.SetWordWrap then row.text:SetWordWrap(false) end
	-- sopra il testo, per il suggerimento con la riga intera; prende il mouse solo quando la riga è tagliata
	row.hit = CreateFrame("Frame", nil, frame)
	row.hit:SetSize(ROW_W, ROW_H - 4)
	row.hit:EnableMouse(false)
	W.Tooltip(row.hit, function() return row.full or "" end)
	row.b = {}
	for k = 1, 2 do
		local b = W.FlatButton(frame, "", 24, 24, function() RunAction(row, k) end)
		W.Tooltip(b, function() return row.tips[k] or "" end)
		row.b[k] = b
	end
	rows[i] = row
end

local function PlaceRow(row, y)
	row.y = y
	row.text:ClearAllPoints()
	row.text:SetPoint("TOPLEFT", 16, -(y + 6))
	row.hit:ClearAllPoints()
	row.hit:SetPoint("TOPLEFT", 16, -(y + 2))
end

local function EnsureTabButtons()
	for _, t in ipairs(JournalFrame.tabs) do
		if not tabButtons[t.id] then
			tabButtons[t.id] = W.FlatButton(frame, "", TAB_MIN, TAB_H, function()
				Disarm()
				state.tab, state.page = t.id, 1
				JournalFrame:Refresh()
			end)
		end
	end
end

---Larghezza di un testo nel carattere delle righe e dei pulsanti (hanno la stessa misura).
---@param text string
---@return number
local function TextWidth(text)
	frame.measure:SetText(text)
	local w = frame.measure:GetStringWidth() or 0
	-- un client che non misura i testi nascosti: una stima di 7 unità per carattere
	if w <= 0 and text ~= "" then w = Chars(text) * 7 end
	return w
end

-- #183: the row's buttons are short words ("Open", "Keep"), each as wide as its word (24 at least), from the right
-- margin; the text of the row takes the rest, and a longer text is cut (its tooltip has it whole)
local ACTION_PAD, ACTION_GAP = 16, 4
local function PlaceActions(row)
	local x = 16 + INNER_W
	for k = 2, 1, -1 do
		local b = row.b[k]
		if b:IsShown() then
			local w = math.max(24, math.ceil(TextWidth(b:GetText() or "")) + ACTION_PAD)
			b:SetWidth(w)
			x = x - w
			b:ClearAllPoints()
			b:SetPoint("TOPLEFT", x, -row.y)
			x = x - ACTION_GAP
		end
	end
	row.width = math.min(INNER_W, x - 16 - 8)
	row.text:SetWidth(row.width)
	row.hit:SetSize(row.width, ROW_H - 4)
end

-- Schede larghe quanto il loro testo, su più file quando non stanno in una; la scheda scelta ha il bordo pieno e la
-- barra sotto il testo (#187), non solo un colore. Restituisce dove finiscono, dall'alto.
---@param current? AUJournalTab
---@param tabTop number dove iniziano, dall'alto
---@return number bottom
local function LayoutTabs(current, tabTop)
	local x, line = 0, 0
	for _, b in pairs(tabButtons) do b:Hide() end   -- anche quelli di una scheda tolta
	for _, t in ipairs(JournalFrame.tabs) do
		local b = tabButtons[t.id]
		b:Show()
		local label = NS:L(t.label)
		local w = math.max(TAB_MIN, math.min(INNER_W, math.ceil(TextWidth(label)) + TAB_PAD))
		if x > 0 and x + w > INNER_W then x, line = 0, line + 1 end
		local top = tabTop + line * (TAB_H + TAB_GAP)
		b:SetWidth(w)
		b:ClearAllPoints()
		b:SetPoint("TOPLEFT", 16 + x, -top)
		b:SetText(label)
		b:SetSelected(t == current)
		x = x + w + TAB_GAP
	end
	return tabTop + (line + 1) * (TAB_H + TAB_GAP)
end

local function Build()
	-- the shell (#187): hidden at once (#192), title band, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, 600, HEIGHT, "mem_title", { name = "AzerothUnspokenJournal", point = { "CENTER", 0, 10 },
		refresh = function() JournalFrame:Refresh() end })
	-- chiusa la finestra (pulsante, Esc, comando), nessuna conferma resta armata
	frame:SetScript("OnHide", Disarm)

	-- the introduction says what is kept and what never is: the font of a privacy note, 12 units (#182)
	frame.intro = frame:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	frame.intro:SetPoint("TOPLEFT", 16, -W.TOP)
	frame.intro:SetWidth(INNER_W)
	frame.intro:SetJustifyH("LEFT")
	-- misura i testi e non si vede mai
	frame.measure = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	frame.measure:Hide()

	-- la nota della scheda e lo stato della memoria: una riga propria sotto le schede, sopra l'elenco
	frame.note = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.note:SetWidth(INNER_W)
	frame.note:SetJustifyH("LEFT")

	for i = 1, MAX_ROWS do BuildRow(i) end

	frame.prev = W.FlatButton(frame, "", 28, 24, function()
		Disarm()
		state.page = state.page - 1
		JournalFrame:Refresh()
	end)
	frame.prev:SetPoint("BOTTOMLEFT", 16, 52)
	frame.pageText = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.pageText:SetPoint("BOTTOMLEFT", 52, 57)
	frame.pageText:SetWidth(140)
	frame.pageText:SetJustifyH("LEFT")
	frame.next = W.FlatButton(frame, "", 28, 24, function()
		Disarm()
		state.page = state.page + 1
		JournalFrame:Refresh()
	end)
	frame.next:SetPoint("BOTTOMLEFT", 196, 52)
	frame.stats = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.stats:SetPoint("BOTTOMRIGHT", -16, 58)
	frame.stats:SetWidth(340)
	frame.stats:SetJustifyH("RIGHT")

	frame.export = W.FlatButton(frame, "", 110, 24, function()
		Disarm()
		JournalFrame:Refresh()
		JournalFrame:ShowExport()
	end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	-- "Dimentica tutto" chiede conferma: il primo clic arma il pulsante, il secondo (entro pochi secondi) azzera.
	-- Lo stile delle azioni che perdono dati (#187): bordo rosso, pieno mentre aspetta la conferma.
	frame.reset = W.FlatButton(frame, "", 170, 24, function()
		if state.armed then
			Disarm()
			LM:Reset("all")
		else
			Arm(true)
		end
		JournalFrame:Refresh()
	end, "danger")
	frame.reset:SetPoint("BOTTOMLEFT", 136, 16)
	W.Tooltip(frame.reset, function() return NS:L(JournalFrame:MemoryLock() or "mem_reset_tip") end)
	frame.close = W.FlatButton(frame, "", 110, 24, function() JournalFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	NS.Windows:Register(frame)   -- #181: raised on a click, cascaded, the narrator steps aside
end

---Ridisegna l'elenco (se la finestra è aperta).
function JournalFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	EnsureTabButtons()
	frame.title:SetText(NS:L("mem_title"))
	frame.intro:SetText(NS:L("mem_intro"))
	local tab = CurrentTab()
	local lock = self:MemoryLock()
	local tabLock = tab and tab.memory and lock or nil
	if lock then Disarm() end

	-- dall'alto: l'introduzione, le schede sotto di essa (#182), la nota (con lo stato della memoria), poi tante righe
	-- quante ne stanno sopra le pagine
	local top = LayoutTabs(tab, W.TOP + math.ceil(frame.intro:GetStringHeight() or 14) + 10)
	local note = tab and tab.note and NS:L(tab.note) or ""
	if tabLock then note = "|cffff9040" .. NS:L(tabLock) .. "|r" .. (note ~= "" and ("\n" .. note) or "") end
	frame.note:ClearAllPoints()
	frame.note:SetPoint("TOPLEFT", 16, -(top + 2))
	frame.note:SetText(note)
	frame.note:SetShown(note ~= "")
	if note ~= "" then top = top + 2 + math.ceil(frame.note:GetStringHeight() or 0) + 4 end
	top = math.max(LIST_TOP, top)
	pageSize = math.max(1, math.min(MAX_ROWS, math.floor((LIST_BOTTOM - top) / ROW_H)))

	local list = tab and tab.rows() or {}
	local pages = math.max(1, math.ceil(#list / pageSize))
	state.page = math.max(1, math.min(pages, state.page))
	for i = 1, MAX_ROWS do
		local row = rows[i]
		local item = i <= pageSize and list[(state.page - 1) * pageSize + i] or nil
		PlaceRow(row, top + (i - 1) * ROW_H)
		row.actions = item and item.actions or nil
		row.locked = tabLock ~= nil
		local text = item and item.text or (i == 1 and #list == 0 and Muted(NS:L("mem_empty")) or "")
		for k = 1, 2 do
			local a = row.actions and row.actions[k]
			local b = row.b[k]
			row.keys[k] = a and (tab.id .. ":" .. (a.key or item.text) .. ":" .. k) or nil
			b:SetShown(a ~= nil)
			if a then
				local armed = a.confirm ~= nil and state.confirm == row.keys[k]
				-- an action that cannot be undone has the style of the destructive actions (#187)
				b:SetStyle(a.confirm and "danger" or "ghost")
				b:SetArmed(armed)
				b:SetText(armed and NS:L("mem_confirm_btn") or a.label)
				b:SetEnabled(tabLock == nil)
				row.tips[k] = tabLock and NS:L(tabLock) or (armed and NS:L("mem_confirm_tip") or a.tip)
				if armed then text = "|cffff9040" .. NS:L(a.confirm) .. "|r " .. text end
			end
		end
		PlaceActions(row)
		row.text:SetText(text)
		-- riga tagliata: il suggerimento la mostra intera
		row.full = text ~= "" and TextWidth(text) > row.width and text or nil
		row.hit:EnableMouse(row.full ~= nil)
	end
	frame.pageText:SetText(NS:L("mem_page", state.page, pages))
	frame.prev:SetText(NS:L("mem_prev"))
	frame.next:SetText(NS:L("mem_next"))
	frame.prev:SetEnabled(state.page > 1)
	frame.next:SetEnabled(state.page < pages)
	local st = LM:Stats()
	frame.stats:SetText(NS:L("mem_summary", st.memories, st.permanent, st.places, st.flags))
	frame.export:SetText(NS:L("mem_export"))
	frame.reset:SetText(NS:L(state.armed and "mem_reset_confirm_btn" or "mem_reset"))
	frame.reset:SetArmed(state.armed)
	frame.reset:SetEnabled(lock == nil)
	frame.close:SetText(NS:L("mem_close"))
end

---@return boolean
function JournalFrame:IsOpen()
	return frame ~= nil and frame:IsShown()
end

---@param tab? string id di una scheda
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
	if tab then state.tab, state.page = tab, 1 end
	Disarm()
	frame:Show()
	self:Refresh()
	return true
end

function JournalFrame:Close()
	if frame then frame:Hide() end
	if exportFrame then exportFrame:Hide() end
end

---Apre o chiude la finestra. false se non si può costruire (i comandi ripiegano sul testo).
---@return boolean handled
function JournalFrame:Toggle()
	if self:IsOpen() then
		self:Close()
		return true
	end
	return self:Open()
end

-- tasto assegnato (#183): open or close the journal
function AzerothUnspoken_Journal()
	if NS.db then JournalFrame:Toggle() end
end

---------------------------------------------------------------------------
-- Esportazione: un testo da selezionare e copiare
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
	exportFrame.help = exportFrame:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	exportFrame.help:SetPoint("TOPLEFT", 16, -W.TOP)
	exportFrame.help:SetWidth(EXPORT_W - 32)
	exportFrame.help:SetJustifyH("LEFT")

	-- casella di testo su più righe dentro un riquadro scorrevole; senza il modello standard, la casella da sola
	local scroll
	pcall(function()
		scroll = CreateFrame("ScrollFrame", "AzerothUnspokenJournalExportScroll", exportFrame, "UIPanelScrollFrameTemplate")
	end)
	exportFrame.scroll = scroll
	local box = CreateFrame("EditBox", nil, scroll or exportFrame)
	box:SetMultiLine(true)
	box:SetAutoFocus(false)
	box:SetFontObject(ChatFontNormal or GameFontHighlight)
	box:SetWidth(BOX_W)
	-- measures the text in the font and width of the box, never shown
	exportFrame.measure = exportFrame:CreateFontString(nil, "ARTWORK", "ChatFontNormal")
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
	-- sola lettura: ciò che si scrive viene rimesso com'era, così resta solo da selezionare e copiare
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
end

---Apre la finestra con un testo, già selezionato, pronto per Ctrl+C: il diario, o quello che altri moduli passano
---(le relazioni di S6b).
---@param text? string il testo (predefinito: l'esportazione del diario)
---@param titleKey? string chiave del titolo (predefinita: mem_export)
---@return boolean opened false se la finestra non si può costruire
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
	return true
end

---@return boolean
function JournalFrame:IsExportOpen()
	return exportFrame ~= nil and exportFrame:IsShown()
end
