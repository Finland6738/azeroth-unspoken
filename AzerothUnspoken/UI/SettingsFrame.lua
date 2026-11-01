-- Azeroth Unspoken: pannello delle impostazioni (GDD §12.2)
-- Five sections under their headers (#187): General, Chat, Narrator, Modules, Privacy. Every row is a plain label next
-- to its control: a button that shows the value and changes it, or "-", the value and "+" (the value is text, never a
-- button that does nothing). The sections scroll inside the client's settings canvas. Every change sends the one
-- "settings changed" notice (Config:Changed, #192), which the panel, the open windows, the narrator and the NPC dialogue
-- window follow.
local ADDON, NS = ...
local W = NS.Widgets
local SettingsFrame = NS:RegisterModule("settings")
NS.SettingsFrame = SettingsFrame

local panel
local MODULE_ORDER = { "personal", "world", "npc", "memory", "emotion", "relations", "storyArcs", "social", "publicChat", "audio" }
local MODULE_LIVE = NS.Config.MODULE_LIVE   -- moduli con effetto già oggi (una lista sola con il wizard, #77)
local DEPTHS = { "natural", "literary", "elevated" }
local COOLDOWNS = { 15, 30, 45, 60, 90, 120, 180 }
local WAITS = { 25, 60, 120 }          -- seconds a proposal waits; after the longest, until it is closed (0, #177)
local SPEEDS = { 8, 11, 14, 18, 24 }   -- reading speed, characters a second (#177)
local CONTENT_W = 600                  -- width of the scrolling content
local LABEL_X, CONTROL_X, CONTROL_W = 16, 250, 220
local ROW = 28                         -- a row: 24 units of control and 4 of space
local ACTION_W, ACTION_GAP = 280, 8    -- the buttons that open something or act once, two on a line

local function Cycle(list, current)
	for i, v in ipairs(list) do
		if v == current then return list[(i % #list) + 1] end
	end
	return list[1]
end

local function CycleLanguage()
	NS.db.locale = Cycle(NS.languageOrder, NS:Lang())
	-- the phrases of the new language are in another folder: it is loaded at the next reload, offered with a button
	NS.Packs:OnLanguageChanged()
end

local function StepNumber(path, delta, decimals)
	local v = NS.Config:Get(path) + delta
	if decimals then
		local m = 10 ^ decimals
		v = math.floor(v * m + 0.5) / m
	end
	NS.Config:Set(path, v)
end

local function OnOff(v) return v and NS:L("on") or NS:L("off") end

local function Percent(v) return math.floor(v * 100 + 0.5) .. "%" end

-- the state of a consent in words (#178): "on", "off", and for a question that is open "off, read the warning" or
-- "off, click again to confirm"; `needs` adds the dependency of a consent that is on but does nothing yet
local function ConsentState(id, on, needs)
	if on then return needs and NS:L("consent_on_needs", needs) or OnOff(true) end
	local state = NS.Consent:State(id)
	if state == "reading" then return NS:L("consent_off_reading") end
	if state == "ready" then return NS:L("consent_off_ready") end
	return OnOff(false)
end

-- the next value of a list in ascending order, after the current one; nil after the last
local function NextAbove(list, current)
	for _, v in ipairs(list) do
		if v > current then return v end
	end
	return nil
end

local function WaitLabel(v)
	if v <= 0 then return NS:L("waits_forever") end
	return v .. " s"
end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
local function CreatePanel()
	panel = CreateFrame("Frame")
	panel.name = NS.name
	SettingsFrame.panel = panel

	local title = panel:CreateFontString(nil, "ARTWORK", W.TITLE_FONT)
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(NS.name .. " " .. NS.version)

	-- the sections scroll; without the scroll template they are drawn on the panel itself
	local scroll
	pcall(function()
		scroll = CreateFrame("ScrollFrame", "AzerothUnspokenSettingsScroll", panel, "UIPanelScrollFrameTemplate")
	end)
	local content = panel
	if scroll then
		scroll:SetPoint("TOPLEFT", 0, -44)
		scroll:SetPoint("BOTTOMRIGHT", -30, 8)
		content = CreateFrame("Frame", nil, scroll)
		content:SetSize(CONTENT_W, 400)
		scroll:SetScrollChild(content)
	end
	panel.content = content

	local y = 4                 -- the next free line, from the top of the content
	local headers, rows = {}, {}
	panel.rows = rows           -- [key] = { label, button | minus, text, plus } (the tests use them)
	panel.headers = headers

	local function Header(key)
		local h = content:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
		h:SetPoint("TOPLEFT", LABEL_X, -(y + 10))
		local rule = content:CreateTexture(nil, "ARTWORK")
		rule:SetPoint("TOPLEFT", LABEL_X, -(y + 32))
		rule:SetSize(CONTENT_W - 2 * LABEL_X, 1)
		W.Tint(rule, W.PALETTE.rule)
		table.insert(headers, { fs = h, key = key })
		y = y + 42
	end

	local function Label(key, x, width)
		local fs = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		fs:SetPoint("TOPLEFT", x or LABEL_X, -(y + 6))
		fs:SetWidth(width or (CONTROL_X - LABEL_X - 8))
		fs:SetJustifyH("LEFT")
		if fs.SetWordWrap then fs:SetWordWrap(false) end
		return fs
	end

	-- a label and a button that shows the value; a click changes it
	local function Toggle(key, value, onClick, tip, x, labelW, controlX, controlW)
		local row = { key = key, value = value }
		row.label = Label(key, x, labelW)
		row.button = W.FlatButton(content, "", controlW or CONTROL_W, 24, function()
			onClick()
			NS.Config:Changed(key)
		end)
		row.button:SetPoint("TOPLEFT", controlX or CONTROL_X, -y)
		if tip then W.Tooltip(row.button, function() return NS:L(tip) end) end
		rows[key] = row
		return row
	end

	-- a label, then "-", the value as text and "+"
	local function Stepper(key, value, minus, plus)
		local row = { key = key, value = value }
		row.label = Label(key)
		row.minus = W.FlatButton(content, "-", 24, 24, function() minus(); NS.Config:Changed(key) end)
		row.minus:SetPoint("TOPLEFT", CONTROL_X, -y)
		row.text = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		row.text:SetPoint("TOPLEFT", CONTROL_X + 28, -(y + 6))
		row.text:SetWidth(CONTROL_W - 56)
		row.text:SetJustifyH("CENTER")
		row.plus = W.FlatButton(content, "+", 24, 24, function() plus(); NS.Config:Changed(key) end)
		row.plus:SetPoint("TOPLEFT", CONTROL_X + CONTROL_W - 24, -y)
		rows[key] = row
		y = y + ROW
		return row
	end

	-- the buttons that open something or act once, two on a line; `label()` may change their text
	local function Actions(list)
		for i, a in ipairs(list) do
			local col = (i - 1) % 2
			if i > 1 and col == 0 then y = y + ROW end
			local row = { key = a[1], value = a[3], action = true }
			row.button = W.FlatButton(content, "", ACTION_W, 24, function()
				a[2]()
				NS.Config:Changed(a[1])
			end)
			row.button:SetPoint("TOPLEFT", LABEL_X + col * (ACTION_W + ACTION_GAP), -y)
			if a[4] then W.Tooltip(row.button, function() return NS:L(a[4]) end) end
			rows[a[1]] = row
		end
		y = y + ROW
	end

	local function Next() y = y + ROW end

	-- General
	Header("opt_section_general")
	Toggle("opt_enabled", function() return OnOff(NS.db.enabled) end, function() NS.db.enabled = not NS.db.enabled end)
	Next()
	local language = Toggle("opt_language", function() return NS.languages[NS:Lang()].name end, CycleLanguage, nil,
		nil, nil, nil, 130)
	-- reload after a change of language (#85): shown only while the phrases are still in the previous language
	panel.reload = W.FlatButton(content, "", CONTROL_W - 138, 24, function() NS.Packs:Reload() end, "primary")
	panel.reload:SetPoint("TOPLEFT", CONTROL_X + 138, -y)
	language.reload = panel.reload
	Next()
	Stepper("opt_intensity", function() return tostring(NS.db.intensity) end,
		function() NS.Config:Set("intensity", NS.db.intensity - 10) end,
		function() NS.Config:Set("intensity", NS.db.intensity + 10) end)
	Toggle("opt_depth", function() return NS:L("depth_" .. NS.db.proseDepth) end,
		function() NS.db.proseDepth = Cycle(DEPTHS, NS.db.proseDepth) end)
	Next()
	Toggle("opt_cooldown", function() return NS.db.pacing.globalCooldownSeconds .. " s" end, function()
		local nxt = COOLDOWNS[1]
		for _, s in ipairs(COOLDOWNS) do
			if s > NS.db.pacing.globalCooldownSeconds then nxt = s; break end
		end
		NS.db.pacing.globalCooldownSeconds = nxt
	end)
	Next()
	-- #182: the scale of the addon's windows and of the NPC dialogue window
	Stepper("opt_scale", function() return Percent(NS.db.ui.windowScale) end,
		function() StepNumber("ui.windowScale", -0.1, 1) end, function() StepNumber("ui.windowScale", 0.1, 1) end)
	Actions({
		{ "opt_journal", function() if NS.JournalFrame then NS.JournalFrame:Toggle() end end },
		{ "opt_relations", function() if NS.RelationsFrame then NS.RelationsFrame:Toggle() end end },
		{ "opt_soul", function() if NS.ProfileFrame then NS.ProfileFrame:Toggle() end end },
		{ "opt_wizard", function() NS.Wizard:Open() end },
	})

	-- Chat
	Header("opt_section_chat")
	Toggle("opt_chatmode", function() return NS:L("chatmode_" .. NS.db.chat.mode .. "_short") end,
		function() NS.Gateway:CycleMode() end)
	Next()
	Toggle("opt_channel", function() return NS:L("channel_" .. NS.db.chat.channel) end,
		function() NS.db.chat.channel = Cycle(NS.Config.CHAT_CHANNELS, NS.db.chat.channel) end)
	Next()
	-- #177: how long a proposal waits: 25, 60, 120 s or until it is closed
	Toggle("opt_waits", function() return WaitLabel(NS.db.chat.pendingSeconds) end, function()
		local cur = NS.db.chat.pendingSeconds
		NS.Config:Set("chat.pendingSeconds", cur <= 0 and WAITS[1] or (NextAbove(WAITS, cur) or 0))
	end)
	Next()
	Toggle("opt_button", function() return OnOff(NS.db.ui.showButton) end, function()
		NS.db.ui.showButton = not NS.db.ui.showButton
		NS.UpdateButton()
	end)
	Next()

	-- Narrator
	Header("opt_section_narrator")
	Toggle("opt_narrator", function() return OnOff(NS.db.output.privateNarrator) end,
		function() NS.db.output.privateNarrator = not NS.db.output.privateNarrator end)
	Next()
	Stepper("opt_duration", function() return NS.db.ui.narrator.duration .. " s" end,
		function() StepNumber("ui.narrator.duration", -1) end, function() StepNumber("ui.narrator.duration", 1) end)
	-- #177: characters a second; 14 is about 0.07 s per character
	Toggle("opt_reading", function() return NS:L("reading_cps", NS.db.ui.narrator.readingSpeed) end, function()
		NS.Config:Set("ui.narrator.readingSpeed", NextAbove(SPEEDS, NS.db.ui.narrator.readingSpeed) or SPEEDS[1])
	end)
	Next()
	-- #173: the opacity of the background only; the text stays at full opacity
	Stepper("opt_alpha", function() return Percent(NS.db.ui.narrator.alpha) end,
		function() StepNumber("ui.narrator.alpha", -0.05, 2) end, function() StepNumber("ui.narrator.alpha", 0.05, 2) end)
	Stepper("opt_fontsize", function() return tostring(NS.db.ui.narrator.fontSize) end,
		function() StepNumber("ui.narrator.fontSize", -1) end, function() StepNumber("ui.narrator.fontSize", 1) end)
	Toggle("opt_motion", function() return OnOff(NS.db.ui.narrator.reduceMotion) end,
		function() NS.db.ui.narrator.reduceMotion = not NS.db.ui.narrator.reduceMotion end, "opt_motion_tip")
	Next()
	Toggle("opt_locked", function() return OnOff(NS.db.ui.narrator.locked) end,
		function() NS.db.ui.narrator.locked = not NS.db.ui.narrator.locked end)
	Next()
	-- #182: the NPC dialogue window's own text size and opacity
	Stepper("opt_dialogue_size", function() return tostring(NS.db.ui.dialogue.fontSize) end,
		function() StepNumber("ui.dialogue.fontSize", -1) end, function() StepNumber("ui.dialogue.fontSize", 1) end)
	Stepper("opt_dialogue_alpha", function() return Percent(NS.db.ui.dialogue.alpha) end,
		function() StepNumber("ui.dialogue.alpha", -0.05, 2) end, function() StepNumber("ui.dialogue.alpha", 0.05, 2) end)
	Actions({
		{ "opt_pause", function() NS.Director:TogglePause() end, function() return NS:L(NS.paused and "opt_resume" or "opt_pause") end },
		{ "opt_test", function() NS.Narrator:ShowTest() end },
		{ "opt_history", function() NS.Narrator:ToggleHistory() end },
		{ "opt_resetpos", function() NS.Narrator:ResetPosition() end },
	})

	-- Modules: two columns of a label and its switch
	Header("opt_section_modules")
	local modNote = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	modNote:SetPoint("TOPLEFT", LABEL_X, -y)
	modNote:SetWidth(CONTENT_W - 2 * LABEL_X)
	modNote:SetJustifyH("LEFT")
	y = y + 18
	local modules = {}
	for i, module in ipairs(MODULE_ORDER) do
		local col = (i - 1) % 2
		local x = LABEL_X + col * 292
		local row = Toggle("module_" .. module, function() return OnOff(NS.db.modules[module]) end, function()
			NS.db.modules[module] = not NS.db.modules[module]
			NS.db.preset = "custom"
			if module == "publicChat" and not NS.db.modules.publicChat then NS.Gateway:Discard() end
			if module == "emotion" and not NS.db.modules.emotion and NS.Emotion then NS.Emotion:Reset() end
			-- the proximity events are registered only while the relations module and the option are on (#164)
			if module == "relations" and NS.Relationships then NS.Relationships:ApplyProximity() end
		end, nil, x, 170, x + 176, 90)
		row.module = module
		table.insert(modules, row)
		if col == 1 or i == #MODULE_ORDER then Next() end
	end

	-- Privacy: the consents, each in words (#178), and what reaches chat
	Header("opt_section_privacy")
	-- l'invio automatico è una scelta a parte, con avviso e conferma: non si raggiunge scorrendo le modalità
	Toggle("opt_auto", function() return ConsentState("auto", NS.Gateway:IsAutoActive()) end, function()
		if NS.Gateway:IsAutoActive() then NS.Gateway:SetMode("CONFIRM_TO_SEND") else NS.Gateway:SelectAuto() end
	end)
	Next()
	-- consenso a leggere il Total RP 3 pubblico degli altri giocatori: spento di base (#37)
	-- #178: on in two steps (the warning, then the confirmation); it does nothing without "Name from Total RP 3"
	Toggle("opt_trp3_others", function()
		local needs = not NS.db.modules.totalRP3 and NS:L("consent_needs_name_short") or nil
		return ConsentState("trp3others", NS.db.interlocutor.trp3Others, needs)
	end, function()
		local r = NS.Interlocutor:ChangeTRP3Consent()
		if r == "on" or r == "off" then NS:Print(NS:L(r == "on" and "other_trp3_on" or "other_trp3_off"))
		elseif r == "wait" then NS:Print(NS:L("consent_wait")) end
	end, "opt_trp3_others_tip")
	Next()
	Toggle("opt_rpname", function() return OnOff(NS.db.modules.totalRP3) end,
		function() NS.db.modules.totalRP3 = not NS.db.modules.totalRP3 end)
	Next()

	-- what each choice means, the consents that wait for something, the content: the text of a consent, 12 units (#182),
	-- under the last row whatever the number of rows
	local help = content:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	help:SetPoint("TOPLEFT", LABEL_X, -(y + 6))
	help:SetWidth(CONTENT_W - 2 * LABEL_X)
	help:SetJustifyH("LEFT")
	panel.help = help
	local helpTop = y + 6

	-- the controls, labels and texts again, from the settings
	function panel:Refresh()
		for _, h in ipairs(headers) do h.fs:SetText(NS:L(h.key)) end
		for key, r in pairs(rows) do
			if r.label then r.label:SetText(NS:L(key)) end
			if r.action then
				r.button:SetText(r.value and r.value() or NS:L(key))
			elseif r.button then
				r.button:SetText(r.value())
			else
				r.text:SetText(r.value())
			end
		end
		for _, r in ipairs(modules) do
			if not MODULE_LIVE[r.module] then r.label:SetText(NS:L("module_" .. r.module) .. " *") end
			r.button:SetSelected(NS.db.modules[r.module] == true)
		end
		modNote:SetText(NS:L("opt_modules_note"))
		local total = NS.Engine:Stats(NS:TextLang())
		local needsReload = NS.Packs:NeedsReload()
		panel.reload:SetText(NS:L("packs_reload_btn"))
		panel.reload:SetShown(needsReload)
		help:SetText((needsReload and (NS:L("packs_reload_needed", NS.languages[NS:Lang()].name,
			NS.languages[NS:TextLang()].name) .. "\n\n") or "")
			.. NS:L("chatmode_" .. NS.db.chat.mode .. "_help") .. "\n\n"
			.. ((NS.db.interlocutor.trp3Others and not NS.db.modules.totalRP3) and (NS:L("consent_trp3_idle") .. "\n\n") or "")
			.. NS:L("panel_help", total, #NS.Engine.packOrder))
		if content ~= panel then content:SetHeight(helpTop + math.ceil(help:GetStringHeight() or 0) + 16) end
	end
	-- il cambio di lingua ritraduce le etichette fisse
	function panel:Rebuild() self:Refresh() end
	panel:SetScript("OnShow", function() panel:Refresh() end)
	-- the state of a consent changes with the time (the confirmation opens, the question expires)
	NS.Consent:OnChange(function() if panel:IsShown() then panel:Refresh() end end)

	if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
		local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
		Settings.RegisterAddOnCategory(category)
		NS.settingsCategory = category
	elseif InterfaceOptions_AddCategory then
		InterfaceOptions_AddCategory(panel)
	end
end

---The control of a row (the value button, or "+" of a stepper), by the key of its label; for the tests.
---@param key string
---@return table? row { label, button | minus, text, plus }
function SettingsFrame:Row(key)
	return panel and panel.rows[key] or nil
end

-- #192: the classic Interface Options open on the addon's page only at the second call (the first one opens the frame
-- before the list of the addons is laid out), so it is called twice; the newer Settings panel needs one call
local function OpenPanel()
	if Settings and Settings.OpenToCategory and NS.settingsCategory then
		Settings.OpenToCategory(NS.settingsCategory:GetID())
	elseif InterfaceOptionsFrame_OpenToCategory and panel then
		InterfaceOptionsFrame_OpenToCategory(panel)
		InterfaceOptionsFrame_OpenToCategory(panel)
	end
end
NS.OpenSettings = OpenPanel

-- The one "settings changed" notice (#192): the panel redraws, the narrator applies its look and, when the addon or
-- the narrator box is turned off, the line on screen goes away; the dialogue window follows in UI/DialogueFrame.lua
-- and the other windows in W.Window.
local function FollowSettings()
	if panel and panel:IsShown() then panel:Refresh() end
	local N = NS.Narrator
	if N then
		N:ApplySettings()
		if (not NS.db.enabled or not NS.db.output.privateNarrator) and N.current then N:Clear() end
	end
end

function SettingsFrame:OnInit()
	CreatePanel()
	NS.Config:OnChange(FollowSettings)
end
