-- Azeroth Unspoken: la finestra "Relazioni" (S6b, GDD §7.4, §12.2).
-- Tre viste: l'elenco (tabella ordinabile e filtrabile per NPC/giocatori, etichetta e nome), le persone incontrate
-- (candidati proposti dal sistema: entrano in lista solo con un clic dell'utente) e il dettaglio di una relazione, con
-- cursori per gli assi, etichetta, nota, tag e i selettori di tratti e ruolo dell'interlocutore (#37). In basso le opzioni (NPC automatici, attrazione, registra
-- automaticamente, proposte) e l'esportazione testuale. Si apre con /au relationships o dal diario.
-- Nessun contenuto di chat o di whisper è mostrato o salvato: solo nomi, assi, note e tag scelti dall'utente.
-- Il dettaglio di un giocatore ha due sezioni (#107): "Cosa hai scelto tu" (assi, etichetta, sentimenti, nota, tag,
-- tratti: li cambia solo l'utente) e "Cosa ha osservato l'addon" (incontri per tipo, ultimi fatti, senza testi), con
-- due azioni distinte: "Dimentica le osservazioni" e "Rimuovi la persona".
-- Solo pulsanti standard e cursori disegnati con texture (UI/Widgets.lua), come il resto dell'interfaccia.
local ADDON, NS = ...
local W = NS.Widgets
local R = NS.Relationships

---@class AURelationsFrame
local RelationsFrame = NS:RegisterModule("relationsframe")
NS.RelationsFrame = RelationsFrame

local PAGE = 12            -- righe per pagina
local ROW_H = 26
local TOP = -162           -- ordinate della prima riga
local DELETE_ARM_SECONDS = 6
-- tratti e ruolo dell'interlocutore nel dettaglio (fonte 1 del profilo, Systems/Interlocutor.lua), in due righe
local TRAIT_ROWS = { { "role", "temperament", "morality" }, { "goals", "speech" } }
local COLS = {             -- colonne dell'elenco: id, ascissa, larghezza
	{ "name", 16, 140 }, { "kind", 160, 54 }, { "label", 218, 112 }, { "disposition", 334, 112 }, { "last", 450, 84 },
	{ "count", 538, 86 },
}
local HEIGHT_LIST, HEIGHT_PLAYER = 730, 850   -- the window grows for the detail of a player (two sections, #107)
local AXIS_STEP = 26

local frame
local rows, headers, axisRows, candRows = {}, {}, {}, {}
local view = { name = "list", page = 1, subject = nil, armed = false }
local filter = { sort = "last", text = "" }

local function Muted(text) return "|cff9d9d9d" .. text .. "|r" end
local function Selected(text, on) return on and ("|cff7fff7f» " .. text .. " «|r") or text end

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

local function BuildList()
	frame.kindBtn = W.Button(frame, "", 130, 22, function()
		local idx = 1
		for i, k in ipairs(KIND_FILTERS) do if (k or nil) == filter.kind then idx = i end end
		filter.kind = KIND_FILTERS[idx % #KIND_FILTERS + 1] or nil
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.kindBtn:SetPoint("TOPLEFT", 16, -110)
	frame.labelBtn = W.Button(frame, "", 190, 22, function()
		local ids = R:LabelIds()
		local nextId
		if filter.label == nil then nextId = ids[1] else
			for i, id in ipairs(ids) do if id == filter.label then nextId = ids[i + 1] end end
		end
		filter.label = nextId
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.labelBtn:SetPoint("TOPLEFT", 152, -110)
	frame.searchLabel = Text(frame, "GameFontNormal", 356, -114, 60)
	frame.search = W.EditBox(frame, 190, 22)
	frame.search:SetPoint("TOPLEFT", 420, -110)
	frame.search:SetMaxLetters(32)
	frame.search:SetScript("OnTextChanged", function(self, byUser)
		if byUser == false then return end
		filter.text = self:GetText() or ""
		view.page = 1
		RelationsFrame:Refresh()
	end)
	frame.search:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	for _, col in ipairs(COLS) do
		local id = col[1]
		local b = W.Button(frame, "", col[3], 20, function()
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
		b:SetPoint("TOPLEFT", col[2], -138)
		headers[id] = b
	end
	for i = 1, PAGE do
		local y = TOP - (i - 1) * ROW_H
		local row = {}
		row.btn = W.Button(frame, "", 608, ROW_H - 2, function()
			if row.row then RelationsFrame:SelectSubject(row.row.kind, row.row.key) end
		end)
		row.btn:SetPoint("TOPLEFT", 16, y)
		row.cells = {}
		for _, col in ipairs(COLS) do
			row.cells[col[1]] = Text(frame, "GameFontHighlight", col[2] + 4, y - 6, col[3] - 8)
			if row.cells[col[1]].SetWordWrap then row.cells[col[1]]:SetWordWrap(false) end
		end
		rows[i] = row
	end
end

local function BuildPeople()
	frame.addLabel = Text(frame, "GameFontNormal", 16, -114, 120)
	frame.addBox = W.EditBox(frame, 250, 22)
	frame.addBox:SetPoint("TOPLEFT", 140, -110)
	frame.addBox:SetMaxLetters(48)
	local function AddTyped()
		local name = frame.addBox:GetText()
		if name and name ~= "" then RelationsFrame:AddPlayer(name) end
	end
	frame.addBox:SetScript("OnEnterPressed", function(self) AddTyped(); self:ClearFocus() end)
	frame.addBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	frame.addBtn = W.Button(frame, "", 130, 22, AddTyped)
	frame.addBtn:SetPoint("TOPLEFT", 398, -110)
	frame.peopleNote = Text(frame, "GameFontHighlightSmall", 16, -138, 608)
	for i = 1, PAGE do
		local y = TOP - (i - 1) * ROW_H
		local row = {}
		row.text = Text(frame, "GameFontHighlight", 20, y - 6, 480)
		row.add = W.Button(frame, "+", 28, 22, function()
			if row.cand then RelationsFrame:AddPlayer(row.cand.key) end
		end)
		row.add:SetPoint("TOPLEFT", 548, y)
		W.Tooltip(row.add, function() return NS:L("rel_cand_add_tip") end)
		row.dismiss = W.Button(frame, "x", 28, 22, function()
			if row.cand then R:Dismiss(row.cand.key) end
			RelationsFrame:Refresh()
		end)
		row.dismiss:SetPoint("TOPLEFT", 580, y)
		W.Tooltip(row.dismiss, function() return NS:L("rel_cand_dismiss_tip") end)
		candRows[i] = row
	end
end

local function BuildDetail()
	frame.dTitle = Text(frame, "GameFontNormalLarge", 16, -108, 608)
	frame.dSummary = Text(frame, "GameFontHighlight", 16, -132, 608)
	frame.dUserTitle = Text(frame, "GameFontNormal", 16, -156, 608)
	for i = 1, #R.axes do
		local axis = R.axes[i]
		local y = -176 - (i - 1) * AXIS_STEP
		local row = { axis = axis.id }
		row.label = Text(frame, "GameFontNormal", 16, y - 5, 112)
		row.slider = W.Slider(frame, 300, axis.min, axis.max, function(v, final)
			if row.value then row.value:SetText(tostring(v)) end
			if final and view.subject then
				R:SetAxis(view.subject.kind, view.subject.key, axis.id, v)
			end
		end)
		row.slider:SetPoint("TOPLEFT", 134, y - 2)
		row.value = Text(frame, "GameFontHighlight", 444, y - 5, 44, "RIGHT")
		row.minus = W.Button(frame, "-", 24, 22, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, -R.SLIDER_STEP) end
		end)
		row.minus:SetPoint("TOPLEFT", 496, y)
		row.plus = W.Button(frame, "+", 24, 22, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, R.SLIDER_STEP) end
		end)
		row.plus:SetPoint("TOPLEFT", 524, y)
		W.Tooltip(row.slider, function() return R:AxisName(axis.id) .. ": " .. (axis.help and (axis.help[NS:Lang()] or axis.help.en) or "") end)
		axisRows[i] = row
	end
	local y = -176 - #R.axes * AXIS_STEP - 4
	frame.dLabelTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dLabelBtn = W.Button(frame, "", 200, 24, function()
		if view.subject then R:CycleLabel(view.subject.kind, view.subject.key) end
	end)
	frame.dLabelBtn:SetPoint("TOPLEFT", 134, y)
	W.Tooltip(frame.dLabelBtn, function() return NS:L("rel_label_tip") end)
	frame.dCustom = W.EditBox(frame, 200, 22)
	frame.dCustom:SetPoint("TOPLEFT", 346, y - 1)
	frame.dCustom:SetMaxLetters(R.LABEL_LEN)
	frame.dCustom:SetScript("OnEnterPressed", function(self)
		if view.subject then R:SetLabel(view.subject.kind, view.subject.key, self:GetText()) end
		self:ClearFocus()
	end)
	frame.dCustom:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	y = y - 30
	-- feelings in words (#109): two slots and the typical-axes preset, all chosen by the user
	frame.dFeelingTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dFeeling1 = W.Button(frame, "", 150, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 1) end
	end)
	frame.dFeeling1:SetPoint("TOPLEFT", 134, y)
	W.Tooltip(frame.dFeeling1, function() return NS:L("rel_feeling_tip") end)
	frame.dFeeling2 = W.Button(frame, "", 150, 24, function()
		if view.subject then R:CycleFeeling(view.subject.kind, view.subject.key, 2) end
	end)
	frame.dFeeling2:SetPoint("TOPLEFT", 288, y)
	W.Tooltip(frame.dFeeling2, function() return NS:L("rel_feeling_tip") end)
	frame.dPreset = W.Button(frame, "", 150, 24, function()
		if view.subject then R:ApplyFeelingPreset(view.subject.kind, view.subject.key) end
	end)
	frame.dPreset:SetPoint("TOPLEFT", 442, y)
	W.Tooltip(frame.dPreset, function() return NS:L("rel_feeling_preset_tip") end)
	y = y - 30
	frame.dNoteTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dNote = W.EditBox(frame, 480, 22)
	frame.dNote:SetPoint("TOPLEFT", 134, y - 1)
	frame.dNote:SetMaxLetters(R.NOTE_LEN)
	frame.dNote:SetScript("OnEnterPressed", function(self)
		if view.subject then R:SetNote(view.subject.kind, view.subject.key, self:GetText()) end
		self:ClearFocus()
	end)
	frame.dNote:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	y = y - 30
	frame.dTagsTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dTags = W.EditBox(frame, 480, 22)
	frame.dTags:SetPoint("TOPLEFT", 134, y - 1)
	frame.dTags:SetMaxLetters(160)
	frame.dTags:SetScript("OnEnterPressed", function(self)
		if view.subject then R:SetTags(view.subject.kind, view.subject.key, self:GetText()) end
		self:ClearFocus()
	end)
	frame.dTags:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	y = y - 32
	frame.dTraitsTitle = Text(frame, "GameFontNormal", 16, y - 5, 608)
	y = y - 22
	frame.dTraitBtns = {}
	for r, ids in ipairs(TRAIT_ROWS) do
		for c, trait in ipairs(ids) do
			local b = W.Button(frame, "", 196, 24, function()
				local s = view.subject
				if s and NS.Interlocutor:CycleTrait(s.kind, s.key, trait) ~= false then RelationsFrame:Refresh() end
			end)
			b:SetPoint("TOPLEFT", 16 + (c - 1) * 204, y - (r - 1) * 28)
			W.Tooltip(b, function() return NS:L("rel_trait_tip") end)
			frame.dTraitBtns[trait] = b
		end
	end
	y = y - #TRAIT_ROWS * 28 - 6
	frame.dYNpc = y                      -- an NPC has no observed block: the buttons come right after the traits
	-- what the addon observed (players only): a block of its own, never editable
	frame.dSeenTitle = Text(frame, "GameFontNormal", 16, y - 2, 608)
	frame.dSeenLine = Text(frame, "GameFontHighlightSmall", 16, y - 22, 608)
	frame.dSeenFacts = Text(frame, "GameFontHighlightSmall", 16, y - 52, 608)
	y = y - 124
	frame.dForget = W.Button(frame, "", 200, 24, function()
		local s = view.subject
		if not s or s.kind ~= "player" then return end
		if view.armedForget then
			view.armedForget = false
			R:ForgetObservations(s.key)
		else
			view.armedForget = true
			C_Timer.After(DELETE_ARM_SECONDS, function()
				view.armedForget = false
				RelationsFrame:Refresh()
			end)
		end
		RelationsFrame:Refresh()
	end)
	frame.dForget:SetPoint("TOPLEFT", 16, y)
	W.Tooltip(frame.dForget, function() return NS:L("rel_forget_tip") end)
	frame.dDelete = W.Button(frame, "", 200, 24, function()
		if not view.subject then return end
		if view.armed then
			view.armed = false
			RelationsFrame:RemoveSubject()
		else
			view.armed = true
			C_Timer.After(DELETE_ARM_SECONDS, function()
				view.armed = false
				RelationsFrame:Refresh()
			end)
			RelationsFrame:Refresh()
		end
	end)
	frame.dDelete:SetPoint("TOPLEFT", 226, y)
	frame.dBack = W.Button(frame, "", 140, 24, function() RelationsFrame:ShowView("list") end)
	frame.dBack:SetPoint("TOPLEFT", 436, y)
	frame.dYPlayer = y
end

local OPTIONS = {
	{ "npcAuto", "rel_opt_npc" }, { "proposePlayers", "rel_opt_propose" }, { "autoRegisterPlayers", "rel_opt_auto" },
	{ "attraction", "rel_opt_attraction" }, { "recognizeTarget", "rel_opt_target" },
}

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenRelations", UIParent)
	frame:SetSize(640, HEIGHT_LIST)
	frame:SetPoint("CENTER", 0, 10)
	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	W.Background(frame, 0.05, 0.04, 0.09, 0.95)

	frame.title = Text(frame, "GameFontNormalLarge", 16, -12)
	frame.intro = Text(frame, "GameFontHighlightSmall", 16, -36, 608)
	frame.tabList = W.Button(frame, "", 150, 24, function() RelationsFrame:ShowView("list") end)
	frame.tabList:SetPoint("TOPLEFT", 16, -76)
	frame.tabPeople = W.Button(frame, "", 190, 24, function() RelationsFrame:ShowView("people") end)
	frame.tabPeople:SetPoint("TOPLEFT", 170, -76)

	BuildList()
	BuildPeople()
	BuildDetail()

	frame.prev = W.Button(frame, "<", 28, 24, function() view.page = view.page - 1; RelationsFrame:Refresh() end)
	frame.prev:SetPoint("TOPLEFT", 16, TOP - PAGE * ROW_H - 6)
	frame.pageText = Text(frame, "GameFontNormal", 52, TOP - PAGE * ROW_H - 2, 140)
	frame.next = W.Button(frame, ">", 28, 24, function() view.page = view.page + 1; RelationsFrame:Refresh() end)
	frame.next:SetPoint("TOPLEFT", 196, TOP - PAGE * ROW_H - 6)
	frame.stats = Text(frame, "GameFontHighlightSmall", 300, TOP - PAGE * ROW_H - 2, 324, "RIGHT")

	frame.options = {}
	for i, opt in ipairs(OPTIONS) do
		local b = W.Button(frame, "", 200, 22, function()
			R:SetSetting(opt[1], not R:Setting(opt[1]))
			RelationsFrame:Refresh()
		end)
		-- two rows of options above the export and reset buttons
		b:SetPoint("BOTTOMLEFT", 16 + ((i - 1) % 3) * 204, i <= 3 and 76 or 48)
		W.Tooltip(b, function() return NS:L(opt[2] .. "_tip") end)
		frame.options[i] = { button = b, key = opt[1], text = opt[2] }
	end
	frame.privacy = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.privacy:SetPoint("BOTTOMLEFT", 16, 104)
	frame.privacy:SetWidth(608)
	frame.privacy:SetJustifyH("LEFT")
	frame.export = W.Button(frame, "", 110, 24, function() RelationsFrame:ShowExport() end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	frame.reset = W.Button(frame, "", 190, 24, function()
		if view.armedReset then
			view.armedReset = false
			R:Reset("all")
		else
			view.armedReset = true
			C_Timer.After(DELETE_ARM_SECONDS, function()
				view.armedReset = false
				RelationsFrame:Refresh()
			end)
		end
		RelationsFrame:Refresh()
	end)
	frame.reset:SetPoint("BOTTOMLEFT", 136, 16)
	frame.close = W.Button(frame, "", 110, 24, function() RelationsFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	frame:Hide()
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
		frame.dForget, frame.dDelete, frame.dBack }
	for _, b in pairs(frame.dTraitBtns) do table.insert(out, b) end
	for _, row in ipairs(axisRows) do
		for _, w in ipairs({ row.label, row.slider, row.value, row.minus, row.plus }) do table.insert(out, w) end
	end
	return out
end

local function RefreshList()
	frame.kindBtn:SetText(KindFilterText())
	frame.labelBtn:SetText(filter.label and (NS:L("rel_filter_label", R:LabelName(filter.label))) or NS:L("rel_filter_label_any"))
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
	frame.prev:Show(); frame.next:Show(); frame.pageText:Show()
	if #list == 0 then rows[1].cells.name:Show(); rows[1].cells.name:SetText(Muted(NS:L("rel_empty"))) end
end

local function RefreshPeople()
	frame.addLabel:SetText(NS:L("rel_add_player"))
	frame.addBtn:SetText(NS:L("rel_add_btn"))
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
	frame.prev:Show(); frame.next:Show(); frame.pageText:Show()
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
	-- what the addon observed: a block of its own for players, with its own action
	for _, w in ipairs({ frame.dSeenTitle, frame.dSeenLine, frame.dSeenFacts, frame.dForget }) do w:SetShown(isPlayer) end
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
		frame.dForget:SetText(NS:L(view.armedForget and "rel_forget_confirm" or "rel_forget"))
	end
	local y = isPlayer and frame.dYPlayer or frame.dYNpc
	frame.dForget:ClearAllPoints(); frame.dForget:SetPoint("TOPLEFT", 16, y)
	frame.dDelete:ClearAllPoints(); frame.dDelete:SetPoint("TOPLEFT", isPlayer and 226 or 16, y)
	frame.dBack:ClearAllPoints(); frame.dBack:SetPoint("TOPLEFT", isPlayer and 436 or 226, y)
	frame.dDelete:SetText(NS:L(view.armed and "rel_delete_confirm" or "rel_delete"))
	frame.dBack:SetText(NS:L("rel_back"))
	frame.prev:Hide(); frame.next:Hide(); frame.pageText:Hide()
end

---Ridisegna la finestra (se è aperta).
function RelationsFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	local s = view.subject
	frame:SetHeight(view.name == "detail" and s and s.kind == "player" and HEIGHT_PLAYER or HEIGHT_LIST)
	frame.title:SetText(NS:L("rel_title"))
	frame.intro:SetText(NS:L("rel_intro"))
	frame.tabList:SetText(Selected(NS:L("rel_tab"), view.name ~= "people"))
	frame.tabPeople:SetText(Selected(NS:L("rel_tab_people") .. " (" .. R:Stats().candidates .. ")", view.name == "people"))
	SetShown(ListWidgets(), view.name == "list")
	SetShown(PeopleWidgets(), view.name == "people")
	SetShown(DetailWidgets(), view.name == "detail")
	frame.pageText:SetShown(view.name ~= "detail")
	if view.name == "list" then RefreshList()
	elseif view.name == "people" then RefreshPeople()
	else RefreshDetail() end
	for _, o in ipairs(frame.options) do
		o.button:SetText(NS:L(o.text) .. ": " .. NS:L(R:Setting(o.key) and "on" or "off"))
	end
	local st = R:Stats()
	frame.stats:SetText(NS:L("rel_summary", st.npcs, st.players, st.candidates))
	frame.privacy:SetText(NS:L("rel_privacy"))
	frame.export:SetText(NS:L("rel_export"))
	frame.reset:SetText(NS:L(view.armedReset and "rel_reset_confirm_btn" or "rel_reset"))
	frame.close:SetText(NS:L("rel_close"))
end

---------------------------------------------------------------------------
-- Azioni (le stesse dei pulsanti: i test e i comandi le chiamano direttamente)
---------------------------------------------------------------------------
---@param name "list"|"people"|"detail"
function RelationsFrame:ShowView(name)
	view.name, view.page, view.armed, view.armedForget = name, 1, false, false
	if name ~= "detail" then view.subject = nil end
	self:Refresh()
end

---Apre il dettaglio di una relazione.
---@param kind AURelationKind
---@param key integer|string
function RelationsFrame:SelectSubject(kind, key)
	if not R:Get(kind, key) then return false end
	view.subject = { kind = kind, key = key }
	view.name, view.armed, view.armedForget = "detail", false, false
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

---@return string? view list | people | detail
function RelationsFrame:CurrentView()
	return frame and view.name or nil
end

---@param where? "list"|"people"|{kind: string, key: any}
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
	view.armed, view.armedReset, view.armedForget = false, false, false
	frame:Show()
	if type(where) == "table" then
		if not self:SelectSubject(where.kind, where.key) then self:ShowView("list") end
	elseif where == "people" or where == "list" then
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
				actions = { { label = "...", tip = NS:L("rel_open_tip"), fn = function()
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
					{ label = "+", tip = NS:L("rel_cand_add_tip"), fn = function() RelationsFrame:AddPlayer(key) end },
					{ label = "x", tip = NS:L("rel_cand_dismiss_tip"), fn = function() R:Dismiss(key) end },
				},
			})
		end
		return out
	end })
end
