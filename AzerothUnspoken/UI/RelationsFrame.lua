-- Azeroth Unspoken: la finestra "Relazioni" (S6b, GDD §7.4, §12.2).
-- Quattro viste: l'elenco (tabella ordinabile e filtrabile per NPC/giocatori, etichetta e nome), le persone incontrate
-- (candidati proposti dal sistema: entrano in lista solo con un clic dell'utente), le opzioni (NPC automatici,
-- attrazione, registra automaticamente, proposte, riconoscimento, lista condivisa) e il dettaglio di una relazione, con
-- cursori per gli assi, etichetta, nota, tag e i selettori di tratti e ruolo dell'interlocutore (#37). In basso
-- l'esportazione testuale. Si apre con /au relationships o dal diario.
-- Nessun contenuto di chat o di whisper è mostrato o salvato: solo nomi, assi, note e tag scelti dall'utente.
-- Il dettaglio di un giocatore ha due sezioni (#107): "Cosa hai scelto tu" (assi, etichetta, sentimenti, nota, tag,
-- tratti: li cambia solo l'utente) e "Cosa ha osservato l'addon" (incontri per tipo, ultimi fatti, senza testi), con
-- due azioni distinte: "Dimentica le osservazioni" e "Rimuovi la persona".
-- Layout (U1, #171, #172, #179, #180): one fixed height of 660 units for every view (the screen is 768 at UI scale 1),
-- the detail in two columns, blocks laid out top-down, the list rows plain buttons that own their cells, and buttons
-- sized from their text. The label, note and tags boxes save when they lose focus, to the person they were opened for
-- (#184).
-- The shell is W.Window (#187): edge, title band, close box, Esc, scale. Flat buttons and sliders drawn with textures
-- (UI/Widgets.lua), like the rest of the interface. The three confirmations (Forget observations, Remove person, Forget
-- everything) are W.Confirm: each with its own token, all disarmed when the window closes (#190).
local ADDON, NS = ...
local W = NS.Widgets
local R = NS.Relationships

---@class AURelationsFrame
local RelationsFrame = NS:RegisterModule("relationsframe")
NS.RelationsFrame = RelationsFrame

local WIDTH, HEIGHT = 720, 660   -- every view: at most 680 units, so it fits a 768-unit screen (#172)
local INNER = WIDTH - 32         -- usable width between the 16-unit margins
local PAGE = 12            -- righe per pagina
local ROW_H = 26
local TOP = -168           -- ordinate della prima riga dell'elenco
local TOP_PEOPLE = -178    -- the people view has a two-line note above its rows
local PAGER_Y = -500
local DELETE_ARM_SECONDS = 6
local BUTTON_PAD = 24      -- room around the label of a UIPanelButtonTemplate
-- tratti e ruolo dell'interlocutore nel dettaglio (fonte 1 del profilo, Systems/Interlocutor.lua), in una colonna
local TRAITS = { "role", "temperament", "morality", "goals", "speech" }
local COLS = {             -- colonne dell'elenco: id, ascissa, larghezza
	{ "name", 16, 150 }, { "kind", 170, 76 }, { "label", 250, 124 }, { "disposition", 378, 128 }, { "last", 510, 92 },
	{ "count", 606, 98 },
}
-- the detail: two columns, then the observed block across the whole width
local LEFT_X, RIGHT_X, RIGHT_W = 16, 372, 332
local CTRL_X, CTRL_W = 112, 244   -- the controls of the left column, after a 92-unit caption
local DETAIL_TOP = -162
local AXIS_STEP = 26
local SEEN_Y = -490

local frame
local rows, headers, axisRows, candRows = {}, {}, {}, {}
local view = { name = "list", page = 1, subject = nil }
local filter = { sort = "last", text = "" }
-- the two-click confirmations (#190): Forget observations, Remove person, Forget everything; each disarms by its own
-- token (an old timer never ends a newer arming) and all of them when the window closes
local function Redraw() RelationsFrame:Refresh() end
local arm = { forget = W.Confirm(DELETE_ARM_SECONDS, Redraw), delete = W.Confirm(DELETE_ARM_SECONDS, Redraw),
	reset = W.Confirm(DELETE_ARM_SECONDS, Redraw) }
local function DisarmAll()
	for _, c in pairs(arm) do c:Disarm() end
end

local function Muted(text) return "|cff9d9d9d" .. text .. "|r" end

local function Stamp(t)
	if date and type(t) == "number" and t > 0 then return date("%Y-%m-%d", t) end
	return "-"
end

local KIND_FILTERS = { false, "npc", "player" }
local function KindFilterText()
	if filter.kind == "npc" then return NS:L("rel_filter_npcs") end
	if filter.kind == "player" then return NS:L("rel_filter_players") end
	return NS:L("rel_filter_all")
end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
local function Text(parent, template, x, y, width, justify)
	local fs = parent:CreateFontString(nil, "ARTWORK", template or "GameFontHighlight")
	fs:SetPoint("TOPLEFT", x, y)
	if width then fs:SetWidth(width) end
	fs:SetJustifyH(justify or "LEFT")
	return fs
end

local function Line(fs)
	if fs.SetWordWrap then fs:SetWordWrap(false) end
	return fs
end

-- #180: a button as wide as its label (measured in the font of UIPanelButtonTemplate), between min and max units
local function Fit(b, text, min, max)
	b:SetText(text)
	frame.measure:SetText(text)
	local w = frame.measure:GetStringWidth()
	frame.measure:SetText("")
	if type(w) ~= "number" then w = 0 end
	b:SetWidth(math.max(min, math.min(max, math.ceil(w) + BUTTON_PAD)))
	return b:GetWidth()
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

local function BuildList()
	frame.kindBtn = W.FlatButton(frame, "", 130, 24, function()
		local idx = 1
		for i, k in ipairs(KIND_FILTERS) do if (k or nil) == filter.kind then idx = i end end
		filter.kind = KIND_FILTERS[idx % #KIND_FILTERS + 1] or nil
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.kindBtn:SetPoint("TOPLEFT", 16, -116)
	frame.labelBtn = W.FlatButton(frame, "", 190, 24, function()
		local ids = R:LabelIds()
		local nextId
		if filter.label == nil then nextId = ids[1] else
			for i, id in ipairs(ids) do if id == filter.label then nextId = ids[i + 1] end end
		end
		filter.label = nextId
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.labelBtn:SetPoint("TOPLEFT", 152, -116)
	frame.searchLabel = Text(frame, "GameFontNormal", 436, -120, 60, "RIGHT")
	frame.search = W.EditBox(frame, 200, 24)
	frame.search:SetPoint("TOPLEFT", 504, -116)
	frame.search:SetMaxLetters(32)
	frame.search:SetScript("OnTextChanged", function(self, byUser)
		if byUser == false then return end
		filter.text = self:GetText() or ""
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.search:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
	frame.search:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	for _, col in ipairs(COLS) do
		local id = col[1]
		-- #183: the column titles are 24-unit targets too
		local b = W.FlatButton(frame, "", col[3] - 2, 24, function()
			if filter.sort == id then
				-- stesso titolo: inverte la direzione (predefinita: i testi dalla A alla Z, i numeri dal più alto)
				local textual = id == "name" or id == "kind" or id == "label"
				local ascending = textual
				if filter.desc ~= nil then ascending = not filter.desc end
				filter.desc = ascending
			else
				filter.sort, filter.desc = id, nil
			end
			view.page = 1
			RelationsFrame:Refresh()
		end)
		b:SetPoint("TOPLEFT", col[2], -142)
		headers[id] = b
	end
	-- #171: plain row buttons (no panel art) that own their cells, so the button never covers the text
	for i = 1, PAGE do
		local row = {}
		row.btn = CreateFrame("Button", nil, frame)
		row.btn:SetSize(INNER, ROW_H - 2)
		row.btn:SetPoint("TOPLEFT", 16, TOP - (i - 1) * ROW_H)
		row.btn:RegisterForClicks("LeftButtonUp")
		row.btn:SetScript("OnClick", function()
			if row.row then RelationsFrame:SelectSubject(row.row.kind, row.row.key) end
		end)
		if i % 2 == 0 then W.Background(row.btn, 1, 1, 1, 0.04) end
		local hl = row.btn:CreateTexture(nil, "HIGHLIGHT")
		hl:SetAllPoints()
		if hl.SetColorTexture then hl:SetColorTexture(W.BRAND[1], W.BRAND[2], W.BRAND[3], 0.18) end
		-- the cells are cut with "..."; the tooltip has the whole row (#180)
		W.Tooltip(row.btn, function() return row.row and RowTip(row.row) or "" end)
		row.cells = {}
		for _, col in ipairs(COLS) do
			row.cells[col[1]] = Line(Text(row.btn, "GameFontHighlight", col[2] - 16 + 4, -6, col[3] - 8))
		end
		rows[i] = row
	end
end

local function BuildPeople()
	frame.addLabel = Text(frame, "GameFontNormal", 16, -120, 120)
	frame.addBox = W.EditBox(frame, 250, 22)
	frame.addBox:SetPoint("TOPLEFT", 140, -116)
	frame.addBox:SetMaxLetters(48)
	local function AddTyped()
		local name = frame.addBox:GetText()
		if name and name ~= "" then RelationsFrame:AddPlayer(name) end
	end
	frame.addBox:SetScript("OnEnterPressed", function(self) AddTyped(); self:ClearFocus() end)
	frame.addBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.addBtn = W.FlatButton(frame, "", 130, 24, AddTyped)
	frame.addBtn:SetPoint("TOPLEFT", 398, -116)
	frame.peopleNote = Text(frame, "GameFontHighlightSmall", 16, -146, INNER)
	for i = 1, PAGE do
		local y = TOP_PEOPLE - (i - 1) * ROW_H
		local row = {}
		row.text = Line(Text(frame, "GameFontHighlight", 20, y - 6, 600))
		row.add = W.FlatButton(frame, "+", 28, 24, function()
			if row.cand then RelationsFrame:AddPlayer(row.cand.key) end
		end)
		row.add:SetPoint("TOPLEFT", 644, y)
		W.Tooltip(row.add, function() return NS:L("rel_cand_add_tip") end)
		row.dismiss = W.FlatButton(frame, "x", 28, 24, function()
			if row.cand then R:Dismiss(row.cand.key) end
			RelationsFrame:Refresh()
		end)
		row.dismiss:SetPoint("TOPLEFT", 676, y)
		W.Tooltip(row.dismiss, function() return NS:L("rel_cand_dismiss_tip") end)
		candRows[i] = row
	end
end

local function BuildDetail()
	frame.dTitle = Line(Text(frame, "GameFontNormalLarge", 16, -114, 400))
	frame.dSummary = Line(Text(frame, "GameFontHighlight", 16, -138, INNER))
	-- #114: with the shared list on, whose choices count for this person (one list for the account, or this character's own)
	frame.dScope = W.FlatButton(frame, "", 220, 24, function()
		local s = view.subject
		if not s or s.kind ~= "player" then return end
		R:SetScope(s.key, R:ScopeOf(s.key) == "shared" and "character" or "shared")
	end)
	frame.dScope:SetPoint("TOPRIGHT", -16, -110)
	W.Tooltip(frame.dScope, function() return NS:L("rel_scope_tip") end)

	-- left column: the axes, the label and the feelings
	frame.dUserTitle = Text(frame, "GameFontNormal", LEFT_X, DETAIL_TOP, 340)
	for i = 1, #R.axes do
		local axis = R.axes[i]
		local y = DETAIL_TOP - 20 - (i - 1) * AXIS_STEP
		local row = { axis = axis.id }
		row.label = Line(Text(frame, "GameFontNormal", LEFT_X, y - 5, 92))
		row.slider = W.Slider(frame, 150, axis.min, axis.max, function(v, final)
			if row.value then row.value:SetText(tostring(v)) end
			if final and view.subject then
				R:SetAxis(view.subject.kind, view.subject.key, axis.id, v)
			end
		end, { step = R.SLIDER_STEP })   -- #183: the mouse wheel moves it like "-" and "+"
		row.slider:SetPoint("TOPLEFT", CTRL_X, y - 4)
		row.value = Text(frame, "GameFontHighlight", 266, y - 5, 34, "RIGHT")
		row.minus = W.FlatButton(frame, "-", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, -R.SLIDER_STEP) end
		end)
		row.minus:SetPoint("TOPLEFT", 306, y)
		row.plus = W.FlatButton(frame, "+", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, R.SLIDER_STEP) end
		end)
		row.plus:SetPoint("TOPLEFT", 332, y)
		W.Tooltip(row.slider, function() return R:AxisName(axis.id) .. ": " .. (axis.help and (axis.help[NS:Lang()] or axis.help.en) or "") end)
		axisRows[i] = row
	end
	local y = DETAIL_TOP - 20 - #R.axes * AXIS_STEP - 4
	frame.dLabelTitle = Line(Text(frame, "GameFontNormal", LEFT_X, y - 5, 92))
	frame.dLabelBtn = W.FlatButton(frame, "", CTRL_W, 24, function()
		if view.subject then R:CycleLabel(view.subject.kind, view.subject.key) end
	end)
	frame.dLabelBtn:SetPoint("TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dLabelBtn, function() return frame.dLabelBtn:GetText() .. "\n" .. NS:L("rel_label_tip") end)
	y = y - 28
	frame.dCustom = W.EditBox(frame, CTRL_W, 22)
	frame.dCustom:SetPoint("TOPLEFT", CTRL_X, y)
	frame.dCustom:SetMaxLetters(R.LABEL_LEN)
	W.Tooltip(frame.dCustom, function() return NS:L("rel_custom_tip") end)
	y = y - 30
	-- feelings in words (#109): two slots and the typical-axes preset, all chosen by the user
	frame.dFeelingTitle = Line(Text(frame, "GameFontNormal", LEFT_X, y - 5, 92))
	frame.dFeeling1 = W.FlatButton(frame, "", CTRL_W, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 1) end
	end)
	frame.dFeeling1:SetPoint("TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dFeeling1, function() return NS:L("rel_feeling_tip") end)
	y = y - 28
	frame.dFeeling2 = W.FlatButton(frame, "", 120, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 2) end
	end)
	frame.dFeeling2:SetPoint("TOPLEFT", CTRL_X, y)
	W.Tooltip(frame.dFeeling2, function() return NS:L("rel_feeling_tip") end)
	frame.dPreset = W.FlatButton(frame, "", 120, 24, function()
		if view.subject then R:ApplyFeelingPreset(view.subject.kind, view.subject.key) end
	end)
	frame.dPreset:SetPoint("TOPLEFT", CTRL_X + 124, y)
	W.Tooltip(frame.dPreset, function() return NS:L("rel_feeling_preset_tip") end)

	-- right column: how the user sees them (traits and role), then the note and the tags
	frame.dTraitsTitle = Text(frame, "GameFontNormal", RIGHT_X, DETAIL_TOP, RIGHT_W)
	frame.dTraitBtns = {}
	y = DETAIL_TOP - 34
	for _, trait in ipairs(TRAITS) do
		local b = W.FlatButton(frame, "", RIGHT_W, 24, function()
			local s = view.subject
			if s and NS.Interlocutor:CycleTrait(s.kind, s.key, trait) ~= false then RelationsFrame:Refresh() end
		end)
		b:SetPoint("TOPLEFT", RIGHT_X, y)
		W.Tooltip(b, function() return b:GetText() .. "\n" .. NS:L("rel_trait_tip") end)
		frame.dTraitBtns[trait] = b
		y = y - 28
	end
	y = y - 6
	frame.dNoteTitle = Text(frame, "GameFontNormal", RIGHT_X, y, RIGHT_W)
	frame.dNote = W.EditBox(frame, RIGHT_W, 22)
	frame.dNote:SetPoint("TOPLEFT", RIGHT_X, y - 18)
	frame.dNote:SetMaxLetters(R.NOTE_LEN)
	y = y - 48
	frame.dTagsTitle = Text(frame, "GameFontNormal", RIGHT_X, y, RIGHT_W)
	frame.dTags = W.EditBox(frame, RIGHT_W, 22)
	frame.dTags:SetPoint("TOPLEFT", RIGHT_X, y - 18)
	frame.dTags:SetMaxLetters(160)
	for _, edit in ipairs(EDITS) do WireEdit(frame[edit.field], edit) end
	W.Tooltip(frame.dNote, function() return NS:L("rel_edit_tip") end)
	W.Tooltip(frame.dTags, function() return NS:L("rel_edit_tip") end)

	-- what the addon observed (players) or knows (NPCs: level, temperament, first meeting): a block of its own across
	-- the window, never editable
	frame.dSeenTitle = Text(frame, "GameFontNormal", LEFT_X, SEEN_Y, INNER)
	frame.dSeenLine = Text(frame, "GameFontHighlightSmall", LEFT_X, SEEN_Y - 20, 340)
	frame.dSeenFacts = Text(frame, "GameFontHighlightSmall", RIGHT_X, SEEN_Y - 20, RIGHT_W)

	-- the actions on the person, in the footer (the window's own Export and Forget everything are for the list)
	frame.dBack = W.FlatButton(frame, "", 150, 24, function() RelationsFrame:ShowView("list") end)
	frame.dBack:SetPoint("BOTTOMLEFT", 16, 16)
	frame.dForget = W.FlatButton(frame, "", 200, 24, function()
		local s = view.subject
		if not s or s.kind ~= "player" then return end
		if arm.forget:Is() then
			arm.forget:Disarm()
			R:ForgetObservations(s.key)
		else
			arm.forget:Arm()
		end
		RelationsFrame:Refresh()
	end, "danger")
	frame.dForget:SetPoint("BOTTOMLEFT", 176, 16)
	W.Tooltip(frame.dForget, function() return NS:L("rel_forget_tip") end)
	frame.dDelete = W.FlatButton(frame, "", 200, 24, function()
		if not view.subject then return end
		if arm.delete:Is() then
			arm.delete:Disarm()
			RelationsFrame:RemoveSubject()
		else
			arm.delete:Arm()
			RelationsFrame:Refresh()
		end
	end, "danger")
	frame.dDelete:SetPoint("BOTTOMLEFT", 386, 16)
	W.Tooltip(frame.dDelete, function()
		return NS:L(R:Sharing() and view.subject and view.subject.kind == "player" and "rel_delete_shared_tip" or "rel_delete")
	end)
end

local OPTIONS = {
	{ "npcAuto", "rel_opt_npc" }, { "proposePlayers", "rel_opt_propose" }, { "autoRegisterPlayers", "rel_opt_auto" },
	{ "attraction", "rel_opt_attraction" }, { "recognizeTarget", "rel_opt_target" }, { "proximity", "rel_opt_proximity" },
	{ "sharePlayers", "rel_opt_share" }, { "levelNotices", "rel_opt_levels" },
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
		b:SetPoint("TOPLEFT", 16 + ((i - 1) % 2) * (colW + 16), -116 - math.floor((i - 1) / 2) * 30)
		W.Tooltip(b, function() return NS:L(opt[2] .. "_tip") end)
		frame.options[i] = { button = b, key = opt[1], text = opt[2] }
	end
	-- the consents and the privacy note in the 12-unit font (#182), each under the one above
	frame.optionsHint = Text(frame, W.TEXT_FONT, 16, -244, INNER)
	frame.privacy = frame:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	frame.privacy:SetPoint("TOPLEFT", frame.optionsHint, "BOTTOMLEFT", 0, -10)
	frame.privacy:SetWidth(INNER)
	frame.privacy:SetJustifyH("LEFT")
	frame.warning = frame:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	frame.warning:SetPoint("TOPLEFT", frame.privacy, "BOTTOMLEFT", 0, -12)
	frame.warning:SetWidth(INNER)
	frame.warning:SetJustifyH("LEFT")
end

local function Build()
	-- the shell (#187): hidden at once (#192), title band, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, WIDTH, HEIGHT, "rel_title", { name = "AzerothUnspokenRelations", point = { "CENTER", 0, 10 },
		refresh = function() RelationsFrame:Refresh() end })
	-- closing the window (button, Esc, command, journal) keeps what was typed (#184) and disarms every confirmation (#190)
	frame:SetScript("OnHide", function()
		CommitEdits()
		DisarmAll()
	end)
	frame.measure = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.measure:Hide()

	-- what the window keeps and what it never does: a privacy note, 12 units (#182)
	frame.intro = Text(frame, W.TEXT_FONT, 16, -W.TOP, INNER)
	frame.tabList = W.FlatButton(frame, "", 150, 24, function() RelationsFrame:ShowView("list") end)
	frame.tabPeople = W.FlatButton(frame, "", 190, 24, function() RelationsFrame:ShowView("people") end)
	frame.tabOptions = W.FlatButton(frame, "", 120, 24, function() RelationsFrame:ShowView("options") end)

	BuildList()
	BuildPeople()
	BuildDetail()
	BuildOptions()

	frame.prev = W.FlatButton(frame, "<", 28, 24, function() view.page = view.page - 1; RelationsFrame:Refresh() end)
	frame.prev:SetPoint("TOPLEFT", 16, PAGER_Y)
	frame.pageText = Text(frame, "GameFontNormal", 52, PAGER_Y - 4, 140)
	frame.next = W.FlatButton(frame, ">", 28, 24, function() view.page = view.page + 1; RelationsFrame:Refresh() end)
	frame.next:SetPoint("TOPLEFT", 196, PAGER_Y)
	frame.stats = Text(frame, "GameFontHighlightSmall", 240, PAGER_Y - 4, 464, "RIGHT")

	frame.export = W.FlatButton(frame, "", 110, 24, function() RelationsFrame:ShowExport() end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	frame.reset = W.FlatButton(frame, "", 190, 24, function()
		if arm.reset:Is() then
			arm.reset:Disarm()
			R:Reset("all")
		else
			arm.reset:Arm()
		end
		RelationsFrame:Refresh()
	end, "danger")
	frame.close = W.FlatButton(frame, "", 110, 24, function() RelationsFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	NS.Windows:Register(frame)   -- #181
	-- a question that opens (after the pause for reading) or expires changes the buttons without a click (#178)
	NS.Consent:OnChange(function() RelationsFrame:Refresh() end)
end

---------------------------------------------------------------------------
-- Disegno
---------------------------------------------------------------------------
local function SetShown(widgets, on)
	for _, w in ipairs(widgets) do w:SetShown(on) end
end

local function ListWidgets()
	local out = { frame.kindBtn, frame.labelBtn, frame.searchLabel, frame.search }
	for _, h in pairs(headers) do table.insert(out, h) end
	for _, row in ipairs(rows) do
		table.insert(out, row.btn)
		for _, c in pairs(row.cells) do table.insert(out, c) end
	end
	return out
end

local function PeopleWidgets()
	local out = { frame.addLabel, frame.addBox, frame.addBtn, frame.peopleNote }
	for _, row in ipairs(candRows) do
		table.insert(out, row.text)
		table.insert(out, row.add)
		table.insert(out, row.dismiss)
	end
	return out
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
	Fit(frame.kindBtn, KindFilterText(), 100, 130)
	Fit(frame.labelBtn, filter.label and (NS:L("rel_filter_label", R:LabelName(filter.label))) or NS:L("rel_filter_label_any"), 150, 280)
	frame.searchLabel:SetText(NS:L("rel_search"))
	for _, col in ipairs(COLS) do
		local id = col[1]
		local mark = ""
		if filter.sort == id then
			local textual = id == "name" or id == "kind" or id == "label"
			local ascending = textual
			if filter.desc ~= nil then ascending = not filter.desc end
			mark = ascending and " ^" or " v"
		end
		headers[id]:SetText(NS:L("rel_col_" .. id) .. mark)
	end
	local list = R:Rows({ kind = filter.kind, label = filter.label, text = filter.text, sort = filter.sort, desc = filter.desc })
	local pages = math.max(1, math.ceil(#list / PAGE))
	view.page = math.max(1, math.min(pages, view.page))
	for i = 1, PAGE do
		local item = list[(view.page - 1) * PAGE + i]
		local row = rows[i]
		row.row = item
		row.btn:SetShown(item ~= nil)
		row.btn:EnableMouse(item ~= nil)   -- the empty state's row is a message, not a link
		for id, cell in pairs(row.cells) do cell:SetShown(item ~= nil) end
		if item then
			row.cells.name:SetText(item.name)
			row.cells.kind:SetText(NS:L("rel_kind_" .. item.kind))
			row.cells.label:SetText(item.info.text)
			row.cells.disposition:SetText(("%s (%d)"):format(item.info.dispositionText, math.floor(item.info.dispositionValue + 0.5)))
			row.cells.last:SetText(Stamp(R.SeenOf(item.rec).last))
			row.cells.count:SetText(tostring(R.SeenOf(item.rec).count or 0))
		end
	end
	frame.pageText:SetText(NS:L("rel_page", view.page, pages))
	frame.prev:SetEnabled(view.page > 1)
	frame.next:SetEnabled(view.page < pages)
	if #list == 0 then
		-- the empty state: the first row shows the message, and is not a link
		rows[1].btn:Show(); rows[1].cells.name:Show()
		rows[1].cells.name:SetWidth(INNER - 8)
		rows[1].cells.name:SetText(Muted(NS:L("rel_empty")))
	else
		rows[1].cells.name:SetWidth(COLS[1][3] - 8)
	end
end

local function RefreshPeople()
	frame.addLabel:SetText(NS:L("rel_add_player"))
	Fit(frame.addBtn, NS:L("rel_add_btn"), 130, 220)
	frame.peopleNote:SetText(NS:L("rel_people_note"))
	local list = R:Candidates()
	local pages = math.max(1, math.ceil(#list / PAGE))
	view.page = math.max(1, math.min(pages, view.page))
	for i = 1, PAGE do
		local item = list[(view.page - 1) * PAGE + i]
		local row = candRows[i]
		row.cand = item
		row.text:SetShown(item ~= nil or (i == 1 and #list == 0))
		row.add:SetShown(item ~= nil)
		row.dismiss:SetShown(item ~= nil)
		if item then
			row.text:SetText(("%s  %s"):format(item.key, Muted(NS:L("rel_src_" .. item.source))))
		elseif i == 1 then
			row.text:SetText(Muted(NS:L("rel_no_candidates")))
		end
	end
	frame.pageText:SetText(NS:L("rel_page", view.page, pages))
	frame.prev:SetEnabled(view.page > 1)
	frame.next:SetEnabled(view.page < pages)
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
		frame.dSeenFacts:SetText(R:MetText(rec, Stamp))
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
		frame.dForget:SetText(NS:L(arm.forget:Is() and "rel_forget_confirm" or "rel_forget"))
		frame.dForget:SetArmed(arm.forget:Is())
	end
	-- the footer: Back, then (players) Forget observations, then Remove person
	local x = 16 + Fit(frame.dBack, NS:L("rel_back"), 120, 180) + 8
	if isPlayer then
		frame.dForget:ClearAllPoints(); frame.dForget:SetPoint("BOTTOMLEFT", x, 16)
		x = x + Fit(frame.dForget, frame.dForget:GetText(), 150, 210) + 8
	end
	frame.dDelete:ClearAllPoints(); frame.dDelete:SetPoint("BOTTOMLEFT", x, 16)
	Fit(frame.dDelete, NS:L(arm.delete:Is() and "rel_delete_confirm" or "rel_delete"), 150, 210)
	frame.dDelete:SetArmed(arm.delete:Is())
	frame.dScope:SetShown(isPlayer and R:Sharing())
	Fit(frame.dScope, NS:L(R:ScopeOf(s.key) == "shared" and "rel_scope_btn_shared" or "rel_scope_btn_character"), 140, 280)
end

-- the tabs, each as wide as its label, one after the other; the chosen one has a full edge and a bar under its label
-- (#187), not a colour only
local function RefreshTabs()
	local onList, onPeople, onOptions = view.name == "list" or view.name == "detail", view.name == "people", view.name == "options"
	local x = 16
	for _, t in ipairs({
		{ frame.tabList, NS:L("rel_tab"), onList },
		{ frame.tabPeople, NS:L("rel_tab_people") .. " (" .. R:Stats().candidates .. ")", onPeople },
		{ frame.tabOptions, NS:L("rel_tab_options"), onOptions },
	}) do
		local w = Fit(t[1], t[2], 110, 240)
		t[1]:SetSelected(t[3])
		t[1]:ClearAllPoints(); t[1]:SetPoint("TOPLEFT", x, -84)
		x = x + w + 4
	end
end

---Ridisegna la finestra (se è aperta).
function RelationsFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	frame:SetHeight(HEIGHT)
	frame.title:SetText(NS:L("rel_title"))
	frame.intro:SetText(NS:L("rel_intro"))
	RefreshTabs()
	local detail, paged = view.name == "detail", view.name == "list" or view.name == "people"
	SetShown(ListWidgets(), view.name == "list")
	SetShown(PeopleWidgets(), view.name == "people")
	SetShown(OptionWidgets(), view.name == "options")
	SetShown(DetailWidgets(), detail)
	SetShown({ frame.prev, frame.next, frame.pageText, frame.stats }, paged)
	SetShown({ frame.export, frame.reset }, not detail)
	if view.name == "list" then RefreshList()
	elseif view.name == "people" then RefreshPeople()
	elseif view.name == "options" then RefreshOptions()
	else RefreshDetail() end
	local st = R:Stats()
	frame.stats:SetText(NS:L("rel_summary", st.npcs, st.players, st.candidates))
	local w = Fit(frame.export, NS:L("rel_export"), 100, 160)
	frame.reset:ClearAllPoints(); frame.reset:SetPoint("BOTTOMLEFT", 16 + w + 8, 16)
	Fit(frame.reset, NS:L(arm.reset:Is() and "rel_reset_confirm_btn" or "rel_reset"), 150, 220)
	frame.reset:SetArmed(arm.reset:Is())
	Fit(frame.close, NS:L("rel_close"), 100, 160)
end

---------------------------------------------------------------------------
-- Azioni (le stesse dei pulsanti: i test e i comandi le chiamano direttamente)
---------------------------------------------------------------------------
---@param name "list"|"people"|"options"|"detail"
function RelationsFrame:ShowView(name)
	CommitEdits()
	view.name, view.page = name, 1
	arm.forget:Disarm(); arm.delete:Disarm()
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
	arm.forget:Disarm(); arm.delete:Disarm()
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
		if frame and frame.addBox then frame.addBox:SetText("") end
		self:Refresh()
		return true
	end
	NS:Print(NS:L(why == "exists" and "rel_exists" or "rel_add_failed", name, NS:L("rel_why_" .. tostring(why))))
	return false
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
	DisarmAll()
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

---Apre o chiude la finestra. false se non si può costruire (i comandi ripiegano sul testo).
---@return boolean handled
function RelationsFrame:Toggle()
	if self:IsOpen() then
		self:Close()
		return true
	end
	return self:Open()
end

---Il testo da copiare (nella finestra di esportazione del diario).
---@return boolean opened
function RelationsFrame:ShowExport()
	if not NS.JournalFrame then return false end
	return NS.JournalFrame:ShowExport(R:ExportText(), "rel_export")
end

---------------------------------------------------------------------------
-- Il diario ospita due schede: le relazioni e le persone incontrate
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
