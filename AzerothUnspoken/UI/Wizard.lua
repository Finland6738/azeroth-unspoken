-- Azeroth Unspoken: procedura guidata del primo avvio (GDD §12.1).
-- Facoltativa: "Salta" è sempre disponibile e lascia i valori predefiniti (che sono i valori sicuri).
-- Si riapre con /au benvenuto. Passi:
--   1 lingua · 2 preset · 3 intensità · 4 profondità · 5 moduli e consenso social
--   6 Total RP 3 (solo se presente) · 7 chat e prova del narratore
local ADDON, NS = ...
local W = NS.Widgets
local Wizard = NS:RegisterModule("wizard")
NS.Wizard = Wizard

local frame, pageFrames, step = nil, {}, 1
local MODULE_ORDER = { "personal", "world", "npc", "memory", "relations", "storyArcs", "social", "audio" }
local MODULE_LIVE = { personal = true, world = true, memory = true, relations = true }   -- moduli che oggi hanno già un effetto

local function Selected(text, on)
	return on and ("|cff7fff7f» " .. text .. " «|r") or text
end

-- i passi: { title, build(pagina) -> funzione di aggiornamento, skip? }
local pages = {}

local function Text(parent, y, text, template, width)
	local fs = parent:CreateFontString(nil, "ARTWORK", template or "GameFontHighlight")
	fs:SetPoint("TOPLEFT", 16, y)
	fs:SetWidth(width or 448)
	fs:SetJustifyH("LEFT")
	fs:SetText(text)
	return fs
end

-- 1: lingua
pages[1] = { title = "wiz_step_language", build = function(p)
	local help = Text(p, -8, NS:L("wiz_language_help"))
	local buttons = {}
	for i, code in ipairs(NS.languageOrder) do
		local b = W.Button(p, "", 220, 26, function()
			NS.db.locale = code
			Wizard:Render()
		end)
		b:SetPoint("TOPLEFT", 16, -60 - (i - 1) * 32)
		buttons[code] = b
	end
	return function()
		help:SetText(NS:L("wiz_language_help"))   -- cambiando lingua anche il testo della pagina la segue
		for code, b in pairs(buttons) do b:SetText(Selected(NS.languages[code].name, NS.db.locale == code)) end
	end
end }

-- 2: preset
pages[2] = { title = "wiz_step_preset", build = function(p)
	Text(p, -8, NS:L("wiz_preset_help"))
	local buttons = {}
	for i, name in ipairs(NS.Config.PRESET_ORDER) do
		local b = W.Button(p, "", 200, 26, function()
			NS.Config:ApplyPreset(name)
			Wizard:Render()
		end)
		b:SetPoint("TOPLEFT", 16, -64 - (i - 1) * 40)
		local d = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		d:SetPoint("LEFT", b, "RIGHT", 10, 0)
		d:SetWidth(230)
		d:SetJustifyH("LEFT")
		buttons[name] = { b = b, d = d }
	end
	return function()
		for name, e in pairs(buttons) do
			e.b:SetText(Selected(NS:L("preset_" .. name), NS.db.preset == name))
			e.d:SetText(NS:L("preset_" .. name .. "_help"))
		end
	end
end }

-- 3: intensità
pages[3] = { title = "wiz_step_intensity", build = function(p)
	Text(p, -8, NS:L("wiz_intensity_help"))
	local value = Text(p, -110, "", "GameFontNormalLarge", 120)
	value:SetPoint("TOPLEFT", 150, -110)
	local function Step(delta)
		NS.db.intensity = math.max(0, math.min(100, NS.db.intensity + delta))
		Wizard:Render()
	end
	local minus = W.Button(p, "-", 30, 26, function() Step(-10) end)
	minus:SetPoint("TOPLEFT", 100, -106)
	local plus = W.Button(p, "+", 30, 26, function() Step(10) end)
	plus:SetPoint("TOPLEFT", 230, -106)
	local example = Text(p, -150, "", "GameFontHighlight")
	return function()
		value:SetText(tostring(NS.db.intensity))
		local i = NS.db.intensity
		local band = (i == 0 and 0) or (i <= 20 and 1) or (i <= 40 and 2) or (i <= 60 and 3) or (i <= 80 and 4) or 5
		example:SetText(NS:L("intensity_band_" .. band) .. (i == 50 and ("\n\n" .. NS:L("wiz_suggested")) or ""))
	end
end }

-- 4: profondità
pages[4] = { title = "wiz_step_depth", build = function(p)
	Text(p, -8, NS:L("wiz_depth_help"))
	local buttons = {}
	for i, depth in ipairs({ "natural", "literary", "elevated" }) do
		local b = W.Button(p, "", 130, 26, function()
			NS.db.proseDepth = depth
			Wizard:Render()
		end)
		b:SetPoint("TOPLEFT", 16, -64 - (i - 1) * 66)
		local d = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		d:SetPoint("TOPLEFT", b, "TOPRIGHT", 10, 4)
		d:SetWidth(300)
		d:SetJustifyH("LEFT")
		buttons[depth] = { b = b, d = d }
	end
	return function()
		for depth, e in pairs(buttons) do
			e.b:SetText(Selected(NS:L("depth_" .. depth), NS.db.proseDepth == depth))
			e.d:SetText(NS:L("depth_" .. depth .. "_example"))
		end
	end
end }

-- 5: moduli
pages[5] = { title = "wiz_step_modules", build = function(p)
	Text(p, -8, NS:L("wiz_modules_help"), "GameFontHighlightSmall")
	local buttons = {}
	for i, module in ipairs(MODULE_ORDER) do
		local b = W.Button(p, "", 210, 24, function()
			NS.db.modules[module] = not NS.db.modules[module]
			NS.db.preset = "custom"
			Wizard:Render()
		end)
		local col, row = (i - 1) % 2, math.floor((i - 1) / 2)
		b:SetPoint("TOPLEFT", 16 + col * 226, -56 - row * 30)
		buttons[module] = b
	end
	local consent = Text(p, -190, NS:L("wiz_social_consent"), "GameFontHighlightSmall")
	return function()
		for module, b in pairs(buttons) do
			local name = NS:L("module_" .. module)
			if not MODULE_LIVE[module] then name = name .. " *" end
			b:SetText(Selected(name, NS.db.modules[module]))
		end
	end
end }

-- 6: Total RP 3 (si salta se non c'è)
pages[6] = { title = "wiz_step_trp3", skip = function()
	return not (NS.TotalRP3 and NS.TotalRP3:IsPresent())
end, build = function(p)
	Text(p, -8, NS:L("wiz_trp3_help"))
	local b = W.Button(p, "", 260, 26, function()
		NS.db.modules.totalRP3 = not NS.db.modules.totalRP3
		Wizard:Render()
	end)
	b:SetPoint("TOPLEFT", 16, -110)
	return function()
		b:SetText(Selected(NS:L("opt_rpname"), NS.db.modules.totalRP3))
	end
end }

-- 7: chat e prova
pages[7] = { title = "wiz_step_chat", build = function(p)
	Text(p, -8, NS:L("wiz_chat_help"), "GameFontHighlightSmall")
	local buttons = {}
	for i, mode in ipairs(NS.Gateway.MODES) do
		local b = W.Button(p, "", 170, 24, function()
			-- l'invio automatico non si sceglie con un clic solo: avviso e conferma
			if mode == "AUTO_ONLY_IF_ALLOWED" then NS.Gateway:SelectAuto() else NS.Gateway:SetMode(mode) end
			Wizard:Render()
		end)
		b:SetPoint("TOPLEFT", 16, -70 - (i - 1) * 30)
		local d = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		d:SetPoint("LEFT", b, "RIGHT", 8, 0)
		d:SetWidth(270)
		d:SetJustifyH("LEFT")
		buttons[mode] = { b = b, d = d }
	end
	local test = W.Button(p, NS:L("wiz_test"), 200, 26, function() NS.Narrator:ShowTest() end)
	test:SetPoint("TOPLEFT", 16, -204)
	return function()
		for mode, e in pairs(buttons) do
			local isAuto = mode == "AUTO_ONLY_IF_ALLOWED"
			if isAuto and NS.Gateway:IsAutoArmed() and not NS.Gateway:IsAutoActive() then
				e.b:SetText(NS:L("auto_confirm_again"))
			else
				-- l'invio automatico risulta scelto solo con il consenso dato
				local chosen = isAuto and NS.Gateway:IsAutoActive() or (not isAuto and NS.Gateway:GetMode() == mode)
				e.b:SetText(Selected(NS:L("chatmode_" .. mode .. "_short"), chosen))
			end
			e.d:SetText(NS:L("chatmode_" .. mode .. "_help"))
		end
	end
end }

---------------------------------------------------------------------------
-- Struttura
---------------------------------------------------------------------------
local function Visible(i)
	local page = pages[i]
	return page and not (page.skip and page.skip())
end

local function Neighbour(from, dir)
	local i = from + dir
	while pages[i] and not Visible(i) do i = i + dir end
	return pages[i] and i or nil
end

function Wizard:Render()
	if not frame then return end
	for i, f in pairs(pageFrames) do f:SetShown(i == step) end
	local page = pages[step]
	if not pageFrames[step] then
		local f = CreateFrame("Frame", nil, frame.content)
		f:SetAllPoints()
		pageFrames[step] = f
		page.update = page.build(f)
		for i, other in pairs(pageFrames) do other:SetShown(i == step) end
	end
	if page.update then page.update() end
	local total = 0
	for i = 1, #pages do if Visible(i) then total = total + 1 end end
	local number = 0
	for i = 1, step do if Visible(i) then number = number + 1 end end
	frame.title:SetText(NS:L("wiz_title") .. " - " .. NS:L("wiz_step", number, total) .. ": " .. NS:L(page.title))
	frame.skip:SetText(NS:L("wiz_skip"))
	frame.back:SetText(NS:L("wiz_back"))
	frame.back:SetShown(Neighbour(step, -1) ~= nil)
	frame.next:SetText(Neighbour(step, 1) and NS:L("wiz_next") or NS:L("wiz_finish"))
end

function Wizard:Finish()
	NS.db.ui.wizardDone = true
	if frame then frame:Hide() end
	if NS.Narrator then NS.Narrator:ApplySettings() end
	NS:Print(NS:L("wiz_done"))
end

-- le pagine si costruiscono a ogni apertura, nella lingua scelta
local function NewContent()
	if frame.content then frame.content:Hide() end
	frame.content = CreateFrame("Frame", nil, frame)
	frame.content:SetPoint("TOPLEFT", 0, -36)
	frame.content:SetPoint("BOTTOMRIGHT", 0, 48)
	pageFrames = {}
	for _, p in ipairs(pages) do p.update = nil end
end

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenWizard", UIParent)
	frame:SetSize(480, 330)
	frame:SetPoint("CENTER", 0, 40)
	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	W.Background(frame, 0.05, 0.04, 0.09, 0.94)

	frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.title:SetPoint("TOPLEFT", 16, -12)
	frame.title:SetWidth(448)
	frame.title:SetJustifyH("LEFT")

	frame.skip = W.Button(frame, NS:L("wiz_skip"), 100, 24, function() Wizard:Finish() end)
	frame.skip:SetPoint("BOTTOMLEFT", 16, 14)
	W.Tooltip(frame.skip, function() return NS:L("wiz_skip_tip") end)
	frame.next = W.Button(frame, "", 110, 24, function()
		local n = Neighbour(step, 1)
		if n then step = n; Wizard:Render() else Wizard:Finish() end
	end)
	frame.next:SetPoint("BOTTOMRIGHT", -16, 14)
	frame.back = W.Button(frame, NS:L("wiz_back"), 100, 24, function()
		local n = Neighbour(step, -1)
		if n then step = n; Wizard:Render() end
	end)
	frame.back:SetPoint("RIGHT", frame.next, "LEFT", -8, 0)
	frame:Hide()
end

---@return boolean opened
function Wizard:Open()
	if not frame then
		local ok, err = pcall(Build)
		if not ok then
			frame = nil
			NS.Diagnostics:Error("wizard", tostring(err))
			return false
		end
	end
	NewContent()
	step = 1
	frame:Show()
	self:Render()
	return true
end

function Wizard:IsOpen()
	return frame ~= nil and frame:IsShown()
end

-- al primo avvio, quando il gioco ha finito di caricare
function Wizard:OnInit()
	if NS.db.ui.wizardDone then return end
	C_Timer.After(3, function()
		if not NS.db.ui.wizardDone and not self:IsOpen() then self:Open() end
	end)
end
