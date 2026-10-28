-- Voci di Azeroth: comandi, pulsante "pronuncia", pannello delle impostazioni
local ADDON, NS = ...

local MODES = { "auto", "emote", "say", "self" }

-- eventi richiamabili a mano, con i nomi in più lingue
local MANUAL = {
	saluto = "greet", greet = "greet", hello = "greet",
	addio = "farewell", farewell = "farewell", bye = "farewell",
	brindisi = "toast", toast = "toast",
	pensiero = "muse", muse = "muse", riflessione = "muse",
	minaccia = "threat", threat = "threat",
	grido = "battle", battlecry = "battle", battaglia = "battle",
	preghiera = "pray", pray = "pray",
	vittoria = "victory", victory = "victory",
	ringrazia = "thanks", thanks = "thanks", grazie = "thanks",
	scherzo = "jest", jest = "jest", battuta = "jest",
}

---------------------------------------------------------------------------
-- Pulsante "pronuncia": il clic è un'azione del giocatore, quindi /say è permesso
---------------------------------------------------------------------------
local button

local function UpdateButton()
	if not button then return end
	if not NS.db.showButton then button:Hide() return end
	button:Show()
	if NS:GetPending() then
		button.glow:Show()
		button.icon:SetDesaturated(false)
	else
		button.glow:Hide()
		button.icon:SetDesaturated(true)
	end
end
NS.OnPendingChanged = UpdateButton

local function CreateButton()
	button = CreateFrame("Button", "VociDiAzerothButton", UIParent)
	button:SetSize(36, 36)
	button:SetFrameStrata("MEDIUM")
	button:SetMovable(true)
	button:SetClampedToScreen(true)
	button:RegisterForClicks("LeftButtonUp")
	button:RegisterForDrag("RightButton")

	button.icon = button:CreateTexture(nil, "ARTWORK")
	button.icon:SetAllPoints()
	button.icon:SetTexture("Interface\\Icons\\INV_Misc_Book_09")

	button.glow = button:CreateTexture(nil, "OVERLAY")
	button.glow:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
	button.glow:SetBlendMode("ADD")
	button.glow:SetPoint("CENTER")
	button.glow:SetSize(66, 66)

	local pos = NS.db.buttonPos
	if pos then
		button:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		button:SetPoint("CENTER", UIParent, "CENTER", 0, -180)
	end

	button:SetScript("OnClick", function() VociDiAzeroth_Speak() end)
	button:SetScript("OnDragStart", function(self) self:StartMoving() end)
	button:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, rp, x, y = self:GetPoint()
		NS.db.buttonPos = { p, rp, x, y }
	end)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:AddLine("Voci di Azeroth")
		local text = NS:GetPending()
		if text then
			GameTooltip:AddLine(text, 1, 1, 1, true)
		else
			GameTooltip:AddLine(NS:L("button_idle"), 0.8, 0.8, 0.8, true)
		end
		GameTooltip:AddLine(NS:L("button_hint"), 0.5, 0.5, 0.5, true)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", function() GameTooltip:Hide() end)

	-- la frase in attesa scade: aggiorna l'aspetto ogni tanto
	C_Timer.NewTicker(2, function()
		if NS.pending then NS:GetPending() end
	end)
	UpdateButton()
end

---------------------------------------------------------------------------
-- Pannello impostazioni
---------------------------------------------------------------------------
local panel

local function CycleLanguage()
	local order = NS.languageOrder
	local cur = NS:Lang()
	for i, code in ipairs(order) do
		if code == cur then
			NS.db.lang = order[(i % #order) + 1]
			return
		end
	end
	NS.db.lang = order[1]
end

local function CycleMode()
	for i, m in ipairs(MODES) do
		if m == NS.db.mode then
			NS.db.mode = MODES[(i % #MODES) + 1]
			return
		end
	end
	NS.db.mode = "auto"
end

local function CreatePanel()
	panel = CreateFrame("Frame")
	panel.name = "Voci di Azeroth"

	local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("Voci di Azeroth " .. NS.version)

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
	Row(function() return NS:L("opt_mode"), NS:L("mode_" .. NS.db.mode) end, CycleMode, -120)
	Row(function() return NS:L("opt_cooldown"), NS.db.cooldown .. " s" end, function()
		local steps = { 15, 30, 40, 60, 90, 120, 180 }
		local nxt = steps[1]
		for _, s in ipairs(steps) do
			if s > NS.db.cooldown then nxt = s; break end
		end
		NS.db.cooldown = nxt
	end, -152)
	Row(function() return NS:L("opt_button"), NS.db.showButton and NS:L("on") or NS:L("off") end, function()
		NS.db.showButton = not NS.db.showButton
		UpdateButton()
	end, -184)
	Row(function() return NS:L("opt_rpname"), NS.db.useRPName and NS:L("on") or NS:L("off") end,
		function() NS.db.useRPName = not NS.db.useRPName end, -216)
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

---------------------------------------------------------------------------
-- Comandi
---------------------------------------------------------------------------
local function Preview(event)
	local ctx = NS:BuildContext()
	local say = NS.Engine:Pick(event, ctx, "say")
	local emote = NS.Engine:Pick(event, ctx, "emote")
	if not say and not emote then
		NS:Print(NS:L("no_phrase", event))
		return
	end
	if say then NS:Print("|cffffffff/s|r " .. say) end
	if emote then NS:Print("|cffff8040/e|r " .. (ctx.player or "") .. " " .. emote) end
end

local function SetChance(event, value)
	value = tonumber(value)
	if not event or not value then
		for ev, v in pairs(NS.db.chance) do NS:Print(ev .. " = " .. v .. "%") end
		return
	end
	NS.db.chance[event] = math.max(0, math.min(100, value))
	NS:Print(event .. " = " .. NS.db.chance[event] .. "%")
end

local function ListPacks()
	for _, id in ipairs(NS.Engine.packOrder) do
		local p = NS.Engine.packs[id]
		local state = NS.db.disabledPacks[id] and NS:L("off") or NS:L("on")
		NS:Print(("%s (%s) - %s"):format(p.name or id, id, state))
	end
end

-- solo spazi ASCII nei pattern: %s può spezzare le lettere accentate
local function Command(msg)
	local cmd, rest = (msg or ""):match("^ *([^ ]*) *(.-) *$")
	cmd = cmd:lower()
	local db = NS.db

	if cmd == "" or cmd == "aiuto" or cmd == "help" then
		NS:Print(NS:L("help"))
	elseif cmd == "on" then
		db.enabled = true; NS:Print(NS:L("enabled"))
	elseif cmd == "off" then
		db.enabled = false; NS:Print(NS:L("disabled"))
	elseif cmd == "lingua" or cmd == "language" or cmd == "lang" then
		local code = rest:lower()
		if NS.languages[code] then
			db.lang = code
			NS:Print(NS:L("lang_set", NS.languages[code].name))
		else
			local names = {}
			for _, c in ipairs(NS.languageOrder) do
				table.insert(names, c .. " = " .. NS.languages[c].name)
			end
			NS:Print(NS:L("lang_list", table.concat(names, ", ")))
		end
	elseif cmd == "modo" or cmd == "mode" then
		local m = rest:lower()
		local valid = false
		for _, v in ipairs(MODES) do if v == m then valid = true end end
		if valid then db.mode = m end
		NS:Print(NS:L("mode_now", NS:L("mode_" .. db.mode)))
	elseif cmd == "dire" or cmd == "speak" or cmd == "say" then
		VociDiAzeroth_Speak()
	elseif cmd == "prova" or cmd == "test" then
		Preview(MANUAL[rest:lower()] or (rest ~= "" and rest:lower()) or "battle")
	elseif cmd == "evento" or cmd == "event" then
		local ev = MANUAL[rest:lower()] or rest:lower()
		if not NS:Trigger(ev, nil, true) then NS:Print(NS:L("no_phrase", ev)) end
	elseif MANUAL[cmd] then
		-- per macro: /cast X e poi /voci incanta X, così la frase arriva col tasto
		if not NS:Trigger(MANUAL[cmd], rest ~= "" and { target = rest } or nil, true) then
			NS:Print(NS:L("no_phrase", MANUAL[cmd]))
		end
	elseif cmd == "incanta" or cmd == "cast" then
		local ctx = NS:BuildContext({ spell = rest ~= "" and rest or nil })
		local kind = ctx.spellKind
		local ev = (kind == "heal" and "heal") or (kind == "rez" and "rezother") or (kind == "travel" and "travel")
			or (kind == "buff" and not ctx.combat and "buff") or "attack"
		if not NS:Perform(ev, ctx, true) then NS:Print(NS:L("no_phrase", ev)) end
	elseif cmd == "cooldown" then
		local n = tonumber(rest)
		if n then db.cooldown = math.max(0, n) end
		NS:Print(NS:L("cooldown_now", db.cooldown))
	elseif cmd == "prob" or cmd == "chance" then
		local ev, v = rest:match("^([^ ]+) +([^ ]+)$")
		SetChance(ev and (MANUAL[ev:lower()] or ev:lower()), v)
	elseif cmd == "ignora" or cmd == "ignore" then
		if rest == "" then
			for name in pairs(db.ignored) do NS:Print(name) end
		else
			local key = rest:lower()
			db.ignored[key] = (not db.ignored[key]) or nil
			NS:Print(NS:L(db.ignored[key] and "ignored" or "unignored", rest))
		end
	elseif cmd == "pulsante" or cmd == "button" then
		db.showButton = not db.showButton
		UpdateButton()
	elseif cmd == "pacchetti" or cmd == "packs" then
		ListPacks()
	elseif cmd == "pacchetto" or cmd == "pack" then
		local id, state = rest:match("^([^ ]+) *([^ ]*)$")
		if id and NS.Engine.packs[id] then
			db.disabledPacks[id] = (state == "off") or nil
		end
		ListPacks()
	elseif cmd == "info" or cmd == "stats" then
		local total, byEvent = NS.Engine:Stats(NS:Lang())
		NS:Print(NS:L("stats", total, NS.languages[NS:Lang()].name))
		local keys = {}
		for ev in pairs(byEvent) do table.insert(keys, ev) end
		table.sort(keys)
		local parts = {}
		for _, ev in ipairs(keys) do table.insert(parts, ev .. " " .. byEvent[ev]) end
		NS:Print(table.concat(parts, ", "))
	elseif cmd == "memoria" or cmd == "memory" then
		db.memory = { uses = {}, last = {}, recent = {}, lastTone = {} }
		NS:Print(NS:L("memory_reset"))
	elseif cmd == "opzioni" or cmd == "options" or cmd == "config" then
		OpenPanel()
	else
		NS:Print(NS:L("help"))
	end
end

function NS:InitUI()
	CreateButton()
	CreatePanel()
	SLASH_VOCIDIAZEROTH1 = "/voci"
	SLASH_VOCIDIAZEROTH2 = "/vda"
	SlashCmdList.VOCIDIAZEROTH = Command
end
