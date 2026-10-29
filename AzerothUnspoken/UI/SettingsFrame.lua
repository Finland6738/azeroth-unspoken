-- Azeroth Unspoken: pannello delle impostazioni (GDD §12.2)
-- lingua, intensità, profondità, pausa tra le frasi, chat, narratore, moduli
local ADDON, NS = ...
local W = NS.Widgets
local SettingsFrame = NS:RegisterModule("settings")

local panel
local MODULE_ORDER = { "personal", "world", "npc", "memory", "relations", "storyArcs", "social", "publicChat", "audio" }
local MODULE_LIVE = { personal = true, world = true, publicChat = true, memory = true, relations = true, npc = true }   -- moduli con effetto già oggi
local DEPTHS = { "natural", "literary", "elevated" }
local COOLDOWNS = { 15, 30, 45, 60, 90, 120, 180 }

local function Cycle(list, current)
	for i, v in ipairs(list) do
		if v == current then return list[(i % #list) + 1] end
	end
	return list[1]
end

local function CycleLanguage()
	NS.db.locale = Cycle(NS.languageOrder, NS:Lang())
	if panel then panel:Rebuild() end
end

local function StepNumber(path, delta, decimals)
	local v = NS.Config:Get(path) + delta
	if decimals then
		local m = 10 ^ decimals
		v = math.floor(v * m + 0.5) / m
	end
	NS.Config:Set(path, v)
	if NS.Narrator then NS.Narrator:ApplySettings() end
end

local function OnOff(v) return v and NS:L("on") or NS:L("off") end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
local function CreatePanel()
	panel = CreateFrame("Frame")
	panel.name = NS.name

	local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(NS.name .. " " .. NS.version)

	local rows = {}
	local COLUMN = { 16, 330 }

	-- riga con pulsante: label() restituisce il testo del pulsante
	local function Row(col, index, label, onClick)
		local b = W.Button(panel, "", 290, 24, function()
			onClick()
			panel:Refresh()
		end)
		b:SetPoint("TOPLEFT", COLUMN[col], -48 - (index - 1) * 28)
		table.insert(rows, { button = b, label = label })
		return b
	end

	-- riga con - e +
	local function Stepper(col, index, label, minus, plus)
		local b = W.Button(panel, "", 238, 24)
		b:SetPoint("TOPLEFT", COLUMN[col], -48 - (index - 1) * 28)
		local m = W.Button(panel, "-", 24, 24, function() minus(); panel:Refresh() end)
		m:SetPoint("LEFT", b, "RIGHT", 2, 0)
		local p = W.Button(panel, "+", 24, 24, function() plus(); panel:Refresh() end)
		p:SetPoint("LEFT", m, "RIGHT", 2, 0)
		table.insert(rows, { button = b, label = label })
	end

	-- colonna 1: generale e chat
	Row(1, 1, function() return NS:L("opt_enabled") .. ": " .. OnOff(NS.db.enabled) end,
		function() NS.db.enabled = not NS.db.enabled end)
	Row(1, 2, function() return NS:L("opt_language") .. ": " .. NS.languages[NS:Lang()].name end, CycleLanguage)
	Stepper(1, 3, function() return NS:L("opt_intensity") .. ": " .. NS.db.intensity end,
		function() NS.Config:Set("intensity", NS.db.intensity - 10) end,
		function() NS.Config:Set("intensity", NS.db.intensity + 10) end)
	Row(1, 4, function() return NS:L("opt_depth") .. ": " .. NS:L("depth_" .. NS.db.proseDepth) end,
		function() NS.db.proseDepth = Cycle(DEPTHS, NS.db.proseDepth) end)
	Row(1, 5, function() return NS:L("opt_cooldown") .. ": " .. NS.db.pacing.globalCooldownSeconds .. " s" end, function()
		local nxt = COOLDOWNS[1]
		for _, s in ipairs(COOLDOWNS) do
			if s > NS.db.pacing.globalCooldownSeconds then nxt = s; break end
		end
		NS.db.pacing.globalCooldownSeconds = nxt
	end)
	Row(1, 6, function() return NS:L("opt_chatmode") .. ": " .. NS:L("chatmode_" .. NS.db.chat.mode .. "_short") end,
		function() NS.Gateway:CycleMode() end)
	-- l'invio automatico è una scelta a parte, con avviso e conferma: non si raggiunge scorrendo le modalità
	Row(1, 7, function()
		local state = NS.Gateway:IsAutoActive() and OnOff(true)
			or (NS.Gateway:IsAutoArmed() and NS:L("auto_confirm_again") or OnOff(false))
		return NS:L("opt_auto") .. ": " .. state
	end, function()
		if NS.Gateway:IsAutoActive() then NS.Gateway:SetMode("CONFIRM_TO_SEND") else NS.Gateway:SelectAuto() end
	end)
	Row(1, 8, function() return NS:L("opt_channel") .. ": " .. NS:L("channel_" .. NS.db.chat.channel) end,
		function() NS.db.chat.channel = Cycle(NS.Config.CHAT_CHANNELS, NS.db.chat.channel) end)
	Row(1, 9, function() return NS:L("opt_button") .. ": " .. OnOff(NS.db.ui.showButton) end, function()
		NS.db.ui.showButton = not NS.db.ui.showButton
		NS.UpdateButton()
	end)
	Row(1, 10, function() return NS:L("opt_rpname") .. ": " .. OnOff(NS.db.modules.totalRP3) end,
		function() NS.db.modules.totalRP3 = not NS.db.modules.totalRP3 end)
	Row(1, 11, function() return NS:L(NS.paused and "opt_resume" or "opt_pause") end,
		function() NS.Director:TogglePause() end)
	Row(1, 12, function() return NS:L("opt_wizard") end, function() NS.Wizard:Open() end)

	-- colonna 2: narratore
	Row(2, 1, function() return NS:L("opt_narrator") .. ": " .. OnOff(NS.db.output.privateNarrator) end,
		function() NS.db.output.privateNarrator = not NS.db.output.privateNarrator end)
	Stepper(2, 2, function() return NS:L("opt_duration") .. ": " .. NS.db.ui.narrator.duration .. " s" end,
		function() StepNumber("ui.narrator.duration", -1) end, function() StepNumber("ui.narrator.duration", 1) end)
	Stepper(2, 3, function() return NS:L("opt_alpha") .. ": " .. math.floor(NS.db.ui.narrator.alpha * 100 + 0.5) .. "%" end,
		function() StepNumber("ui.narrator.alpha", -0.1, 1) end, function() StepNumber("ui.narrator.alpha", 0.1, 1) end)
	Stepper(2, 4, function() return NS:L("opt_fontsize") .. ": " .. NS.db.ui.narrator.fontSize end,
		function() StepNumber("ui.narrator.fontSize", -1) end, function() StepNumber("ui.narrator.fontSize", 1) end)
	Row(2, 5, function() return NS:L("opt_locked") .. ": " .. OnOff(NS.db.ui.narrator.locked) end,
		function() NS.db.ui.narrator.locked = not NS.db.ui.narrator.locked end)
	Row(2, 6, function() return NS:L("opt_resetpos") end, function() NS.Narrator:ResetPosition() end)
	Row(2, 7, function() return NS:L("opt_history") end, function() NS.Narrator:ToggleHistory() end)
	Row(2, 8, function() return NS:L("opt_test") end, function() NS.Narrator:ShowTest() end)
	Row(2, 9, function() return NS:L("opt_soul") end, function() if NS.ProfileFrame then NS.ProfileFrame:Toggle() end end)
	Row(2, 10, function() return NS:L("opt_journal") end, function() if NS.JournalFrame then NS.JournalFrame:Toggle() end end)
	Row(2, 11, function() return NS:L("opt_relations") end, function() if NS.RelationsFrame then NS.RelationsFrame:Toggle() end end)
	-- consenso a leggere il Total RP 3 pubblico degli altri giocatori: spento di base (#37)
	local others = Row(2, 12, function() return NS:L("opt_trp3_others") .. ": " .. OnOff(NS.db.interlocutor.trp3Others) end,
		function()
			local on = NS.Interlocutor:SetTRP3Consent(not NS.db.interlocutor.trp3Others)
			NS:Print(NS:L(on and "other_trp3_on" or "other_trp3_off"))
		end)
	W.Tooltip(others, function() return NS:L("opt_trp3_others_tip") end)

	-- moduli: griglia a quattro colonne
	local modTitle = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	modTitle:SetPoint("TOPLEFT", 16, -388)
	for i, module in ipairs(MODULE_ORDER) do
		local b = W.Button(panel, "", 150, 24, function()
			NS.db.modules[module] = not NS.db.modules[module]
			NS.db.preset = "custom"
			if module == "publicChat" and not NS.db.modules.publicChat then NS.Gateway:Discard() end
			panel:Refresh()
		end)
		local col, row = (i - 1) % 4, math.floor((i - 1) / 4)
		b:SetPoint("TOPLEFT", 16 + col * 156, -410 - row * 28)
		table.insert(rows, { button = b, label = function()
			local name = NS:L("module_" .. module)
			if not MODULE_LIVE[module] then name = name .. " *" end
			return name .. ": " .. OnOff(NS.db.modules[module])
		end })
	end

	local help = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	help:SetPoint("TOPLEFT", 16, -474)
	help:SetWidth(600)
	help:SetJustifyH("LEFT")

	function panel:Refresh()
		for _, r in ipairs(rows) do r.button:SetText(r.label()) end
		local total = NS.Engine:Stats(NS:Lang())
		modTitle:SetText(NS:L("opt_modules"))
		help:SetText(NS:L("chatmode_" .. NS.db.chat.mode .. "_help") .. "\n\n"
			.. NS:L("panel_help", total, #NS.Engine.packOrder))
	end
	-- il cambio di lingua ritraduce le etichette fisse
	function panel:Rebuild() self:Refresh() end
	panel:SetScript("OnShow", function() panel:Refresh() end)

	if Settings and Settings.RegisterCanvasLayoutCategory then
		local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
		Settings.RegisterAddOnCategory(category)
		NS.settingsCategory = category
	elseif InterfaceOptions_AddCategory then
		InterfaceOptions_AddCategory(panel)
	end
end

local function OpenPanel()
	if Settings and Settings.OpenToCategory and NS.settingsCategory then
		Settings.OpenToCategory(NS.settingsCategory:GetID())
	elseif InterfaceOptionsFrame_OpenToCategory and panel then
		InterfaceOptionsFrame_OpenToCategory(panel)
	end
end
NS.OpenSettings = OpenPanel

function SettingsFrame:OnInit()
	CreatePanel()
end
