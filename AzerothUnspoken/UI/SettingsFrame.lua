-- Azeroth Unspoken: pannello delle impostazioni
local ADDON, NS = ...
local SettingsFrame = NS:RegisterModule("settings")

local MODES = NS.Config.rules["output.mode"].enum

---------------------------------------------------------------------------
-- Pannello impostazioni
---------------------------------------------------------------------------
local panel

local function CycleLanguage()
	local order = NS.languageOrder
	local cur = NS:Lang()
	for i, code in ipairs(order) do
		if code == cur then
			NS.db.locale = order[(i % #order) + 1]
			return
		end
	end
	NS.db.locale = order[1]
end

local function CycleMode()
	for i, m in ipairs(MODES) do
		if m == NS.db.output.mode then
			NS.db.output.mode = MODES[(i % #MODES) + 1]
			return
		end
	end
	NS.db.output.mode = "auto"
end

local function CreatePanel()
	panel = CreateFrame("Frame")
	panel.name = NS.name

	local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(NS.name .. " " .. NS.version)

	local rows = {}
	local function Row(label, onClick, y)
		local b = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
		b:SetSize(220, 24)
		b:SetPoint("TOPLEFT", 16, y)
		b:SetScript("OnClick", function() onClick(); panel:Refresh() end)
		local fs = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		fs:SetPoint("LEFT", b, "RIGHT", 12, 0)
		fs:SetWidth(380)
		fs:SetJustifyH("LEFT")
		table.insert(rows, { button = b, text = fs, label = label })
	end

	Row(function() return NS:L("opt_enabled"), NS.db.enabled and NS:L("on") or NS:L("off") end,
		function() NS.db.enabled = not NS.db.enabled end, -56)
	Row(function() return NS:L("opt_language"), NS.languages[NS:Lang()].name end, CycleLanguage, -88)
	Row(function() return NS:L("opt_mode"), NS:L("mode_" .. NS.db.output.mode) end, CycleMode, -120)
	Row(function() return NS:L("opt_cooldown"), NS.db.pacing.globalCooldownSeconds .. " s" end, function()
		local steps = { 15, 30, 45, 60, 90, 120, 180 }
		local nxt = steps[1]
		for _, s in ipairs(steps) do
			if s > NS.db.pacing.globalCooldownSeconds then nxt = s; break end
		end
		NS.db.pacing.globalCooldownSeconds = nxt
	end, -152)
	Row(function() return NS:L("opt_button"), NS.db.ui.showButton and NS:L("on") or NS:L("off") end, function()
		NS.db.ui.showButton = not NS.db.ui.showButton
		NS.UpdateButton()
	end, -184)
	Row(function() return NS:L("opt_rpname"), NS.db.modules.totalRP3 and NS:L("on") or NS:L("off") end,
		function() NS.db.modules.totalRP3 = not NS.db.modules.totalRP3 end, -216)
	Row(function() return NS:L("opt_preview"), "" end, function()
		local ctx = NS:BuildContext()
		local ev = ctx.combat and "battle" or "muse"
		NS:Print(NS.Engine:Pick(ev, ctx, "say") or "-")
		NS:Print(NS.Engine:Pick(ev, ctx, "emote") or "-")
	end, -248)

	local help = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	help:SetPoint("TOPLEFT", 16, -290)
	help:SetWidth(600)
	help:SetJustifyH("LEFT")

	function panel:Refresh()
		for _, r in ipairs(rows) do
			local label, value = r.label()
			r.button:SetText(label)
			r.text:SetText(value)
		end
		local total = NS.Engine:Stats(NS:Lang())
		help:SetText(NS:L("panel_help", total, #NS.Engine.packOrder))
	end
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
	elseif InterfaceOptionsFrame_OpenToCategory then
		InterfaceOptionsFrame_OpenToCategory(panel)
	end
end
NS.OpenSettings = OpenPanel

function SettingsFrame:OnInit()
	CreatePanel()
end
