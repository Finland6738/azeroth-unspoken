-- Azeroth Unspoken: il diario del personaggio (GDD §12.2): ricordi, luoghi visitati, flag e momenti della sessione, con
-- cancellazione selettiva, ricordi permanenti ed esportazione testuale manuale in una finestra copiabile (l'addon non
-- può scrivere file). Si apre con /au diario (alias /au journal) o dal pannello delle impostazioni.
-- Le schede sono dati: JournalFrame:RegisterTab(id, def) aggiunge una scheda (S6b ci mette le relazioni, S9 gli archi).
-- Solo pulsanti standard e un elenco a pagine, come il resto dell'interfaccia: nessun modello di scorrimento da cui
-- dipendere, tranne la finestra dell'esportazione (con ripiego).
local ADDON, NS = ...
local W = NS.Widgets
local LM = NS.LivingMemory

---@class AUJournalAction
---@field label string testo del pulsante (breve)
---@field tip? string suggerimento
---@field fn fun() cosa fare; l'elenco si aggiorna da solo

---@class AUJournalRow
---@field text string
---@field actions? AUJournalAction[] al massimo due

---@class AUJournalTab
---@field id string
---@field label string chiave del testo dell'interfaccia
---@field rows fun(): AUJournalRow[]
---@field note? string chiave di una nota sotto l'elenco

---@class AUJournalFrame
local JournalFrame = NS:RegisterModule("journal")
NS.JournalFrame = JournalFrame

local PAGE = 11                 -- righe per pagina
local ROW_H = 28
local RESET_ARM_SECONDS = 6     -- dopo il primo clic su "Dimentica tutto" si ha questo tempo per confermare

---@type AUJournalTab[]
JournalFrame.tabs = {}
local frame, exportFrame
local rows, tabButtons = {}, {}
local state = { tab = "memories", page = 1, armed = false }

local function Selected(text, on)
	return on and ("|cff7fff7f» " .. text .. " «|r") or text
end

---Aggiunge o sostituisce una scheda.
---@param id string
---@param def { label: string, rows: fun(): AUJournalRow[], note?: string }
function JournalFrame:RegisterTab(id, def)
	if type(id) ~= "string" or type(def) ~= "table" or type(def.rows) ~= "function" then return false end
	for i, t in ipairs(self.tabs) do
		if t.id == id then
			self.tabs[i] = { id = id, label = def.label, rows = def.rows, note = def.note }
			return true
		end
	end
	table.insert(self.tabs, { id = id, label = def.label, rows = def.rows, note = def.note })
	return true
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

JournalFrame:RegisterTab("memories", { label = "mem_tab_memories", rows = function()
	local out = {}
	for _, e in ipairs(LM:List()) do
		local id = e.id
		table.insert(out, {
			text = ("%s%s  %s"):format(e.perm and "|cffffd200[P]|r " or "", LM:Describe(e), Muted(LM.Stamp(e.t))),
			actions = {
				{ label = "P", tip = NS:L("mem_perm_tip"), fn = function()
					local ok, why = LM:SetPermanent(id)
					if not ok and why == "limit" then NS:Print(NS:L("mem_perm_limit")) end
				end },
				{ label = "x", tip = NS:L("mem_delete_tip"), fn = function() LM:Delete(id) end },
			},
		})
	end
	return out
end })

JournalFrame:RegisterTab("places", { label = "mem_tab_places", rows = function()
	local out = {}
	for _, p in ipairs(LM:Places()) do
		local name = p.name
		table.insert(out, {
			text = ("%s  %s"):format(LM:DescribePlace(p), Muted(LM.Stamp(p.last))),
			actions = { { label = "x", tip = NS:L("mem_forget_tip"), fn = function() LM:ForgetPlace(name) end } },
		})
	end
	return out
end })

JournalFrame:RegisterTab("flags", { label = "mem_tab_flags", rows = function()
	local out = {}
	local data = LM:Data()
	for _, name in ipairs(LM:FlagNames()) do
		table.insert(out, {
			text = ("%s  %s"):format(name, Muted(LM.Stamp(data.flags[name].t))),
			actions = { { label = "x", tip = NS:L("mem_flag_tip"), fn = function() LM:ClearFlag(name) end } },
		})
	end
	return out
end })

JournalFrame:RegisterTab("session", { label = "mem_tab_session", note = "mem_session_note", rows = function()
	local out = {}
	for _, e in ipairs(LM:SessionList()) do
		table.insert(out, { text = ("%s  %s"):format(LM:Describe(e), Muted(LM.Stamp(e.t))) })
	end
	return out
end })

---------------------------------------------------------------------------
-- Finestra
---------------------------------------------------------------------------
local function BuildRow(i)
	local y = -112 - (i - 1) * ROW_H
	local row = {}
	row.text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	row.text:SetPoint("TOPLEFT", 16, y - 6)
	row.text:SetWidth(500)
	row.text:SetJustifyH("LEFT")
	if row.text.SetWordWrap then row.text:SetWordWrap(false) end
	row.b = {}
	for k = 1, 2 do
		local b = W.Button(frame, "", 24, 24, function()
			local a = row.actions and row.actions[k]
			if a then
				a.fn()
				JournalFrame:Refresh()
			end
		end)
		b:SetPoint("TOPLEFT", 528 + (k - 1) * 28, y)
		W.Tooltip(b, function() local a = row.actions and row.actions[k]; return a and a.tip or "" end)
		row.b[k] = b
	end
	rows[i] = row
end

local function EnsureTabButtons()
	-- le schede si stringono quando sono molte (la finestra è larga 568 utili)
	local count = math.max(1, #JournalFrame.tabs)
	local width = math.min(110, math.floor(568 / count) - 4)
	for i, t in ipairs(JournalFrame.tabs) do
		if not tabButtons[t.id] then
			local b = W.Button(frame, "", width, 24, function()
				state.tab, state.page = t.id, 1
				JournalFrame:Refresh()
			end)
			b:SetPoint("TOPLEFT", 16 + (i - 1) * (width + 4), -78)
			tabButtons[t.id] = b
		end
	end
end

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenJournal", UIParent)
	frame:SetSize(600, 500)
	frame:SetPoint("CENTER", 0, 10)
	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	W.Background(frame, 0.05, 0.04, 0.09, 0.95)

	frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	frame.title:SetPoint("TOPLEFT", 16, -12)
	frame.intro = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.intro:SetPoint("TOPLEFT", 16, -38)
	frame.intro:SetWidth(568)
	frame.intro:SetJustifyH("LEFT")

	for i = 1, PAGE do BuildRow(i) end

	frame.note = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.note:SetPoint("BOTTOMLEFT", 16, 84)
	frame.note:SetWidth(568)
	frame.note:SetJustifyH("LEFT")

	frame.prev = W.Button(frame, "", 28, 24, function()
		state.page = state.page - 1
		JournalFrame:Refresh()
	end)
	frame.prev:SetPoint("BOTTOMLEFT", 16, 52)
	frame.pageText = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.pageText:SetPoint("BOTTOMLEFT", 52, 57)
	frame.pageText:SetWidth(140)
	frame.pageText:SetJustifyH("LEFT")
	frame.next = W.Button(frame, "", 28, 24, function()
		state.page = state.page + 1
		JournalFrame:Refresh()
	end)
	frame.next:SetPoint("BOTTOMLEFT", 196, 52)
	frame.stats = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.stats:SetPoint("BOTTOMRIGHT", -16, 58)
	frame.stats:SetWidth(340)
	frame.stats:SetJustifyH("RIGHT")

	frame.export = W.Button(frame, "", 110, 24, function() JournalFrame:ShowExport() end)
	frame.export:SetPoint("BOTTOMLEFT", 16, 16)
	-- "Dimentica tutto" chiede conferma: il primo clic arma il pulsante, il secondo (entro pochi secondi) azzera
	frame.reset = W.Button(frame, "", 170, 24, function()
		if state.armed then
			state.armed = false
			LM:Reset("all")
		else
			state.armed = true
			C_Timer.After(RESET_ARM_SECONDS, function()
				state.armed = false
				JournalFrame:Refresh()
			end)
		end
		JournalFrame:Refresh()
	end)
	frame.reset:SetPoint("BOTTOMLEFT", 136, 16)
	frame.close = W.Button(frame, "", 110, 24, function() JournalFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	frame:Hide()
end

---Ridisegna l'elenco (se la finestra è aperta).
function JournalFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	EnsureTabButtons()
	frame.title:SetText(NS:L("mem_title"))
	frame.intro:SetText(NS:L("mem_intro"))
	local tab = CurrentTab()
	for _, t in ipairs(self.tabs) do
		local b = tabButtons[t.id]
		if b then b:SetText(Selected(NS:L(t.label), t == tab)) end
	end

	local list = tab and tab.rows() or {}
	local pages = math.max(1, math.ceil(#list / PAGE))
	state.page = math.max(1, math.min(pages, state.page))
	for i = 1, PAGE do
		local item = list[(state.page - 1) * PAGE + i]
		local row = rows[i]
		row.actions = item and item.actions or nil
		if item then
			row.text:SetText(item.text)
		else
			row.text:SetText(i == 1 and #list == 0 and Muted(NS:L("mem_empty")) or "")
		end
		for k = 1, 2 do
			local a = item and item.actions and item.actions[k]
			row.b[k]:SetShown(a ~= nil)
			if a then row.b[k]:SetText(a.label) end
		end
	end
	frame.note:SetText(tab and tab.note and NS:L(tab.note) or "")
	frame.pageText:SetText(NS:L("mem_page", state.page, pages))
	frame.prev:SetText(NS:L("mem_prev"))
	frame.next:SetText(NS:L("mem_next"))
	frame.prev:SetEnabled(state.page > 1)
	frame.next:SetEnabled(state.page < pages)
	local st = LM:Stats()
	frame.stats:SetText(NS:L("mem_summary", st.memories, st.permanent, st.places, st.flags))
	frame.export:SetText(NS:L("mem_export"))
	frame.reset:SetText(NS:L(state.armed and "mem_reset_confirm_btn" or "mem_reset"))
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
	state.armed = false
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

---------------------------------------------------------------------------
-- Esportazione: un testo da selezionare e copiare
---------------------------------------------------------------------------
local function BuildExport()
	exportFrame = CreateFrame("Frame", "AzerothUnspokenJournalExport", UIParent)
	exportFrame:SetSize(600, 440)
	exportFrame:SetPoint("CENTER", 0, 0)
	exportFrame:SetFrameStrata("FULLSCREEN_DIALOG")
	exportFrame:SetMovable(true)
	exportFrame:EnableMouse(true)
	exportFrame:SetClampedToScreen(true)
	exportFrame:RegisterForDrag("LeftButton")
	exportFrame:SetScript("OnDragStart", exportFrame.StartMoving)
	exportFrame:SetScript("OnDragStop", exportFrame.StopMovingOrSizing)
	W.Background(exportFrame, 0.02, 0.02, 0.05, 0.98)
	exportFrame.title = exportFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	exportFrame.title:SetPoint("TOPLEFT", 16, -12)
	exportFrame.help = exportFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	exportFrame.help:SetPoint("TOPLEFT", 16, -40)
	exportFrame.help:SetWidth(568)
	exportFrame.help:SetJustifyH("LEFT")

	-- casella di testo su più righe dentro un riquadro scorrevole; senza il modello standard, la casella da sola
	local scroll
	pcall(function()
		scroll = CreateFrame("ScrollFrame", "AzerothUnspokenJournalExportScroll", exportFrame, "UIPanelScrollFrameTemplate")
	end)
	local box = CreateFrame("EditBox", nil, scroll or exportFrame)
	box:SetMultiLine(true)
	box:SetAutoFocus(false)
	box:SetFontObject(ChatFontNormal or GameFontHighlight)
	box:SetWidth(530)
	box:SetHeight(1000)
	if scroll then
		scroll:SetPoint("TOPLEFT", 16, -64)
		scroll:SetPoint("BOTTOMRIGHT", -36, 52)
		scroll:SetScrollChild(box)
	else
		box:SetPoint("TOPLEFT", 16, -64)
		box:SetHeight(320)
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
	exportFrame.close = W.Button(exportFrame, "", 110, 24, function() exportFrame:Hide() end)
	exportFrame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	exportFrame:Hide()
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
	exportFrame.title:SetText(NS:L(titleKey or "mem_export"))
	exportFrame.help:SetText(NS:L("mem_export_help"))
	exportFrame.close:SetText(NS:L("mem_close"))
	exportFrame.box:SetText(text)
	exportFrame:Show()
	exportFrame.box:HighlightText()
	exportFrame.box:SetFocus()
	return true
end

---@return boolean
function JournalFrame:IsExportOpen()
	return exportFrame ~= nil and exportFrame:IsShown()
end
