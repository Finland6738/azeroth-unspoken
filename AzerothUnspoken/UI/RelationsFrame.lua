-- Azeroth Unspoken: la finestra "Relazioni" (S6b, GDD §7.4, §12.2).
-- Tre viste: l'elenco (tabella ordinabile e filtrabile per NPC/giocatori, etichetta e nome), le persone incontrate
-- (candidati proposti dal sistema: entrano in lista solo con un clic dell'utente) e il dettaglio di una relazione, con
-- cursori per gli assi, etichetta, nota, tag e i selettori di tratti e ruolo dell'interlocutore (#37). In basso le opzioni (NPC automatici, attrazione, registra
-- automaticamente, proposte) e l'esportazione testuale. Si apre con /au relationships o dal diario.
-- Nessun contenuto di chat o di whisper è mostrato o salvato: solo nomi, assi, note e tag scelti dall'utente.
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
	{ "name", 16, 168 }, { "kind", 188, 70 }, { "label", 262, 140 }, { "disposition", 406, 124 }, { "last", 534, 90 },
}

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
	frame.dSummary = Text(frame, "GameFontHighlight", 16, -134, 608)
	for i = 1, #R.axes do
		local axis = R.axes[i]
		local y = -166 - (i - 1) * 30
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
		row.minus = W.Button(frame, "-", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, -R.SLIDER_STEP) end
		end)
		row.minus:SetPoint("TOPLEFT", 496, y)
		row.plus = W.Button(frame, "+", 24, 24, function()
			if view.subject then R:AdjustAxis(view.subject.kind, view.subject.key, axis.id, R.SLIDER_STEP) end
		end)
		row.plus:SetPoint("TOPLEFT", 524, y)
		W.Tooltip(row.slider, function() return R:AxisName(axis.id) .. ": " .. (axis.help and (axis.help[NS:Lang()] or axis.help.en) or "") end)
		axisRows[i] = row
	end
	local y = -166 - #R.axes * 30 - 6
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
	y = y - 32
	frame.dNoteTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dNote = W.EditBox(frame, 480, 22)
	frame.dNote:SetPoint("TOPLEFT", 134, y - 1)
	frame.dNote:SetMaxLetters(R.NOTE_LEN)
	frame.dNote:SetScript("OnEnterPressed", function(self)
		if view.subject then R:SetNote(view.subject.kind, view.subject.key, self:GetText()) end
		self:ClearFocus()
	end)
	frame.dNote:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	y = y - 32
	frame.dTagsTitle = Text(frame, "GameFontNormal", 16, y - 5, 112)
	frame.dTags = W.EditBox(frame, 480, 22)
	frame.dTags:SetPoint("TOPLEFT", 134, y - 1)
	frame.dTags:SetMaxLetters(160)
	frame.dTags:SetScript("OnEnterPressed", function(self)
		if view.subject then R:SetTags(view.subject.kind, view.subject.key, self:GetText()) end
		self:ClearFocus()
	end)
	frame.dTags:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	y = y - 34
	frame.dTraitsTitle = Text(frame, "GameFontNormal", 16, y - 5, 608)
	y = y - 24
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
	y = y - #TRAIT_ROWS * 28 - 8
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
	frame.dDelete:SetPoint("TOPLEFT", 16, y)
	frame.dBack = W.Button(frame, "", 140, 24, function() RelationsFrame:ShowView("list") end)
	frame.dBack:SetPoint("TOPLEFT", 226, y)
end

local OPTIONS = {
	{ "npcAuto", "rel_opt_npc" }, { "proposePlayers", "rel_opt_propose" },
	{ "autoRegisterPlayers", "rel_opt_auto" }, { "attraction", "rel_opt_attraction" },
}

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenRelations", UIParent)
	frame:SetSize(640, 700)
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
		local b = W.Button(frame, "", 150, 22, function()
			R:SetSetting(opt[1], not R:Setting(opt[1]))
			RelationsFrame:Refresh()
		end)
		b:SetPoint("BOTTOMLEFT", 16 + (i - 1) * 154, 50)
		W.Tooltip(b, function() return NS:L(opt[2] .. "_tip") end)
		frame.options[i] = { button = b, key = opt[1], text = opt[2] }
	end
	frame.privacy = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.privacy:SetPoint("BOTTOMLEFT", 16, 80)
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
	local out = { frame.dTitle, frame.dSummary, frame.dLabelTitle, frame.dLabelBtn, frame.dCustom, frame.dNoteTitle,
		frame.dNote, frame.dTagsTitle, frame.dTags, frame.dTraitsTitle, frame.dDelete, frame.dBack }
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
			row.cells.last:SetText(Stamp(item.rec.last))
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
	local info = R:Resolve(s.kind, rec)
	frame.dTitle:SetText(("%s  %s"):format(R:DisplayName(s.kind, s.key), Muted("(" .. NS:L("rel_kind_" .. s.kind) .. ")")))
	frame.dSummary:SetText(("%s: %s   %s: %s (%d)"):format(NS:L("rel_col_label"), info.text, NS:L("rel_col_disposition"),
		info.dispositionText, math.floor(info.dispositionValue + 0.5)))
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
	if not frame.dCustom:HasFocus() then frame.dCustom:SetText(rec.label and not R.labelById[rec.label] and rec.label or "") end
	frame.dNoteTitle:SetText(NS:L("rel_note"))
	if not frame.dNote:HasFocus() then frame.dNote:SetText(rec.note or "") end
	frame.dTagsTitle:SetText(NS:L("rel_tags"))
	if not frame.dTags:HasFocus() then frame.dTags:SetText(rec.tags and table.concat(rec.tags, ", ") or "") end
	frame.dTraitsTitle:SetText(NS:L("rel_traits_title"))
	for trait, b in pairs(frame.dTraitBtns) do
		local value, auto = NS.Interlocutor:GetUserTrait(s.kind, s.key, trait)
		local text = value and NS.Traits.ValueName(trait, value) or NS:L("rel_trait_unknown")
		if auto then text = text .. " (" .. NS:L("rel_trait_auto") .. ")" end
		b:SetText(NS.Traits.Name(trait) .. ": " .. text)
	end
	frame.dDelete:SetText(NS:L(view.armed and "rel_delete_confirm" or "rel_delete"))
	frame.dBack:SetText(NS:L("rel_back"))
	frame.prev:Hide(); frame.next:Hide(); frame.pageText:Hide()
end

---Ridisegna la finestra (se è aperta).
function RelationsFrame:Refresh()
	if not frame or not frame:IsShown() then return end
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
	view.name, view.page, view.armed = name, 1, false
	if name ~= "detail" then view.subject = nil end
	self:Refresh()
end

---Apre il dettaglio di una relazione.
---@param kind AURelationKind
---@param key integer|string
function RelationsFrame:SelectSubject(kind, key)
	if not R:Get(kind, key) then return false end
	view.subject = { kind = kind, key = key }
	view.name, view.armed = "detail", false
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
	view.armed, view.armedReset = false, false
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
