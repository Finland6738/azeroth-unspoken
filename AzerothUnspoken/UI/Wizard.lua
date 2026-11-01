-- Azeroth Unspoken: the first-run guide (GDD §12.1, #188, #178, #181).
-- Optional: "Skip" (and the close box, and Esc) is always there and leaves the defaults, which are the safe values.
-- It reopens with /au wizard. Pages:
--   1 welcome and language (a live sample of the narrator) · 2 preset · 3 intensity · 4 style · 5 modules
--   6 Total RP 3 (only when it is installed) · 7 what may reach chat and a test of the narrator
--   8 keys, the speak button and where the settings are
-- The pages are built once, the first time they are shown, and every text is set again on each render, so a change of
-- language is followed everywhere. The defaults the guide states are read from Config.defaults, never written twice.
-- It opens after PLAYER_ENTERING_WORLD, outside combat. A consent (automatic sending, reading others' Total RP 3)
-- is asked in a confirmation dialog, never by a second click (Core/Consent.lua). The shell is W.Window (#187), like
-- every other window; Esc does what Skip does (#174). The text of a consent is in the 12-unit font (#182).
local ADDON, NS = ...
local W = NS.Widgets
local Wizard = NS:RegisterModule("wizard")
NS.Wizard = Wizard

local frame, pageFrames, step = nil, {}, 1
local MODULE_ORDER = { "personal", "world", "npc", "memory", "relations", "storyArcs", "social", "audio" }
local MODULE_LIVE = NS.Config.MODULE_LIVE   -- modules that already have an effect (one list with the panel, #77)
local WIDTH, HEIGHT = 520, 480
local INNER = WIDTH - 40                    -- 20 units of margin on each side
local MAX_DOTS = 8
local OPEN_DELAY = 3                        -- seconds after PLAYER_ENTERING_WORLD
local RETRY = 5                             -- seconds before asking again while in combat

local pages = {}

local function Defaults() return NS.Config.defaults end

local function Words(on) return NS:L(on and "on" or "off") end

-- text of a page: a fixed place and width, set again on every render
local function Text(parent, y, template, width)
	local fs = parent:CreateFontString(nil, "ARTWORK", template or "GameFontHighlight")
	fs:SetPoint("TOPLEFT", 20, y)
	fs:SetWidth(width or INNER)
	fs:SetJustifyH("LEFT")
	fs:SetJustifyV("TOP")
	return fs
end

-- the heading of a page
local function Head(parent, key)
	local h = Text(parent, -2, "GameFontNormalLarge")
	return function() h:SetText(NS:L(key)) end
end

---The defaults the guide states, from Config.defaults: one line, so the guide cannot disagree with the addon.
---@return string
function Wizard:DefaultsLine()
	local d = Defaults()
	return NS:L("wiz_defaults", d.intensity, d.pacing.globalCooldownSeconds, d.chat.pendingSeconds,
		NS:L("chatmode_" .. d.chat.mode .. "_short"), Words(d.ui.showButton), Words(d.interlocutor.trp3Others),
		Words(d.relations.proximity), Words(d.relations.sharePlayers))
end

-- "default" next to the option that is the default
local function Tag(isDefault) return isDefault and NS:L("wiz_default_tag") or nil end

-- 1: welcome and language
pages[1] = { title = "wiz_step_language", build = function(p)
	local head = Head(p, "wiz_step_language")
	local intro = Text(p, -30)
	-- a live sample of the narrator: the voice, then a line, before any setting
	local box = CreateFrame("Frame", nil, p)
	box:SetSize(INNER, 46)
	box:SetPoint("TOPLEFT", 20, -72)
	W.Background(box, 0.03, 0.025, 0.015, 0.95)
	local bar = box:CreateTexture(nil, "ARTWORK")
	bar:SetSize(3, 46)
	bar:SetPoint("TOPLEFT", 0, 0)
	W.Tint(bar, W.BRAND)   -- the brand violet (#187); the voice keeps the colour of the narrator's voice
	local voice = box:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	voice:SetPoint("TOPLEFT", 12, -6)
	local sample = box:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	sample:SetPoint("TOPLEFT", 12, -22)
	sample:SetWidth(INNER - 24)
	sample:SetJustifyH("LEFT")
	local label = Text(p, -134, "GameFontNormalSmall")
	local cards = {}
	for i, code in ipairs(NS.languageOrder) do
		local c = W.Card(p, (INNER - 8) / 2, 56, function()
			NS.db.locale = code
			-- the phrases of the new language come with the next reload (#85): a chat note now, the dialog at the end
			NS.Packs:OnLanguageChanged(true)
			Wizard:Render()
		end)
		c:SetPoint("TOPLEFT", 20 + ((i - 1) % 2) * ((INNER + 8) / 2), -154 - math.floor((i - 1) / 2) * 64)
		cards[code] = c
	end
	local note = Text(p, -222, "GameFontHighlightSmall")
	return function()
		head()
		intro:SetText(NS:L("wiz_welcome_text"))
		voice:SetText("|cffb9a1ff" .. NS:L("voice_narrator") .. "|r")
		local name = NS.Compat.SafeCall(UnitName, "player")
		sample:SetText(NS:L("wiz_sample", type(name) == "string" and name ~= "" and name or NS:L("wiz_sample_name")))
		label:SetText(NS:L("wiz_language_label"))
		for code, c in pairs(cards) do c:SetCard(NS.languages[code].name, NS:L("wiz_language_card"), NS.db.locale == code) end
		note:SetText(NS:L("wiz_language_help"))
	end
end }

-- 2: preset
pages[2] = { title = "wiz_step_preset", build = function(p)
	local head = Head(p, "wiz_step_preset")
	local intro = Text(p, -30, "GameFontHighlightSmall")
	local cards = {}
	for i, name in ipairs(NS.Config.PRESET_ORDER) do
		local c = W.Card(p, INNER, 52, function()
			NS.Config:ApplyPreset(name)
			Wizard:Render()
		end)
		c:SetPoint("TOPLEFT", 20, -54 - (i - 1) * 58)
		cards[name] = c
	end
	return function()
		head()
		intro:SetText(NS:L("wiz_preset_help"))
		for name, c in pairs(cards) do
			c:SetCard(NS:L("preset_" .. name), NS:L("preset_" .. name .. "_help"), NS.db.preset == name,
				Tag(Defaults().preset == name))
		end
	end
end }

-- 3: intensity
pages[3] = { title = "wiz_step_intensity", build = function(p)
	local head = Head(p, "wiz_step_intensity")
	local intro = Text(p, -30)
	local function Step(delta)
		NS.db.intensity = math.max(0, math.min(100, NS.db.intensity + delta))
		Wizard:Render()
	end
	local minus = W.FlatButton(p, "-", 30, 26, function() Step(-10) end)
	minus:SetPoint("TOPLEFT", 20, -84)
	local value = Text(p, -88, "GameFontNormalLarge", 60)
	value:SetPoint("TOPLEFT", 62, -88)
	value:SetJustifyH("CENTER")
	local plus = W.FlatButton(p, "+", 30, 26, function() Step(10) end)
	plus:SetPoint("TOPLEFT", 126, -84)
	local example = Text(p, -130)
	return function()
		head()
		intro:SetText(NS:L("wiz_intensity_help"))
		value:SetText(tostring(NS.db.intensity))
		local i = NS.db.intensity
		local band = (i == 0 and 0) or (i <= 20 and 1) or (i <= 40 and 2) or (i <= 60 and 3) or (i <= 80 and 4) or 5
		example:SetText(NS:L("intensity_band_" .. band)
			.. (i == Defaults().intensity and ("\n\n" .. NS:L("wiz_suggested")) or ""))
	end
end }

-- 4: style
pages[4] = { title = "wiz_step_depth", build = function(p)
	local head = Head(p, "wiz_step_depth")
	local intro = Text(p, -30, "GameFontHighlightSmall")
	local cards = {}
	for i, depth in ipairs({ "natural", "literary", "elevated" }) do
		local c = W.Card(p, INNER, 70, function()
			NS.db.proseDepth = depth
			Wizard:Render()
		end)
		c:SetPoint("TOPLEFT", 20, -62 - (i - 1) * 76)
		cards[depth] = c
	end
	return function()
		head()
		intro:SetText(NS:L("wiz_depth_help"))
		for depth, c in pairs(cards) do
			c:SetCard(NS:L("depth_" .. depth), NS:L("depth_" .. depth .. "_example"), NS.db.proseDepth == depth,
				Tag(Defaults().proseDepth == depth))
		end
	end
end }

-- 5: modules (the state is also written in words)
pages[5] = { title = "wiz_step_modules", build = function(p)
	local head = Head(p, "wiz_step_modules")
	local intro = Text(p, -30, "GameFontHighlightSmall")
	local cards = {}
	for i, module in ipairs(MODULE_ORDER) do
		local c = W.Card(p, (INNER - 8) / 2, 44, function()
			NS.db.modules[module] = not NS.db.modules[module]
			NS.db.preset = "custom"
			Wizard:Render()
		end)
		c:SetPoint("TOPLEFT", 20 + ((i - 1) % 2) * ((INNER + 8) / 2), -66 - math.floor((i - 1) / 2) * 50)
		cards[module] = c
	end
	local consent = Text(p, -270, W.TEXT_FONT)
	return function()
		head()
		intro:SetText(NS:L("wiz_modules_help"))
		for module, c in pairs(cards) do
			local name = NS:L("module_" .. module)
			if not MODULE_LIVE[module] then name = name .. " *" end
			c:SetCard(name, Words(NS.db.modules[module]), NS.db.modules[module])
		end
		consent:SetText(NS:L("wiz_social_consent"))
	end
end }

-- 6: Total RP 3 (skipped when it is not installed)
pages[6] = { title = "wiz_step_trp3", skip = function()
	return not (NS.TotalRP3 and NS.TotalRP3:IsPresent())
end, build = function(p)
	local head = Head(p, "wiz_step_trp3")
	local intro = Text(p, -30)
	local name = W.Card(p, INNER, 62, function()
		NS.db.modules.totalRP3 = not NS.db.modules.totalRP3
		Wizard:Render()
	end)
	name:SetPoint("TOPLEFT", 20, -70)
	-- reading the profiles of OTHERS is a consent: off by default, on only through the confirmation dialog (#178)
	local others = W.Card(p, INNER, 112, function()
		local r = NS.Interlocutor:ChangeTRP3Consent()
		if r == "wait" then NS:Print(NS:L("consent_wait")) end
		Wizard:Render()
	end, W.TEXT_FONT)
	others:SetPoint("TOPLEFT", 20, -142)
	NS.Consent:OnChange(function() if Wizard:IsOpen() then Wizard:Render() end end)
	return function()
		head()
		intro:SetText(NS:L("wiz_trp3_help"))
		name:SetCard(NS:L("opt_rpname"), Words(NS.db.modules.totalRP3), NS.db.modules.totalRP3)
		local on = NS.db.interlocutor.trp3Others
		local state = Words(on)
		if on and not NS.db.modules.totalRP3 then
			state = NS:L("consent_on_needs", NS:L("opt_rpname"))
		elseif not on then
			local q = NS.Consent:State("trp3others")
			if q == "reading" then state = NS:L("consent_off_reading") elseif q == "ready" then state = NS:L("consent_off_ready") end
		end
		others:SetCard(NS:L("opt_trp3_others"), state .. ". " .. NS:L("wiz_trp3_others_help"), on)
	end
end }

-- 7: what may reach chat, and a test of the narrator
pages[7] = { title = "wiz_step_chat", build = function(p)
	local head = Head(p, "wiz_step_chat")
	local intro = Text(p, -26, W.TEXT_FONT)
	local cards = {}
	local y = -74                 -- under an introduction of up to three lines
	for _, mode in ipairs(NS.Gateway.MODES) do
		-- what reaches chat is read in the 12-unit font; automatic sending has the longest text (#182)
		local h = mode == "AUTO_ONLY_IF_ALLOWED" and 74 or 50
		local c = W.Card(p, INNER, h, function()
			-- automatic sending is not chosen with one click: a dialog shows the whole warning first
			if mode == "AUTO_ONLY_IF_ALLOWED" then
				if NS.Gateway:SelectAuto() == "wait" then NS:Print(NS:L("consent_wait")) end
			else
				NS.Gateway:SetMode(mode)
			end
			Wizard:Render()
		end, W.TEXT_FONT)
		c:SetPoint("TOPLEFT", 20, y)
		cards[mode] = c
		y = y - h - 4
	end
	NS.Consent:OnChange(function() if Wizard:IsOpen() then Wizard:Render() end end)
	local test = W.FlatButton(p, "", 200, 26, function() NS.Narrator:ShowTest() end)
	test:SetPoint("TOPLEFT", 20, y - 6)
	local hint = Text(p, y - 11, "GameFontHighlightSmall", 240)
	hint:SetPoint("TOPLEFT", 232, y - 11)
	return function()
		head()
		intro:SetText(NS:L("wiz_chat_help"))
		for mode, c in pairs(cards) do
			local isAuto = mode == "AUTO_ONLY_IF_ALLOWED"
			local chosen = isAuto and NS.Gateway:IsAutoActive() or (not isAuto and NS.Gateway:GetMode() == mode)
			local sub = NS:L("wiz_mode_" .. mode)
			if isAuto and not chosen then
				local q = NS.Consent:State("auto")
				if q == "reading" then sub = sub .. " " .. NS:L("consent_off_reading")
				elseif q == "ready" then sub = sub .. " " .. NS:L("consent_off_ready") end
			end
			c:SetCard(NS:L("chatmode_" .. mode .. "_short"), sub, chosen, Tag(Defaults().chat.mode == mode))
		end
		test:SetText(NS:L("wiz_test"))
		hint:SetText(NS:L("wiz_test_hint"))
	end
end }

-- 8: keys, the speak button, the settings
local KEYS = { "speak", "pause", "reroll", "npc" }
pages[8] = { title = "wiz_step_keys", build = function(p)
	local head = Head(p, "wiz_step_keys")
	local keys = Text(p, -30)
	local where = Text(p, -140)
	local defaults = Text(p, -214, "GameFontHighlightSmall")
	local bind = W.FlatButton(p, "", 200, 26, function() Wizard:OpenKeyBindings() end)
	bind:SetPoint("TOPLEFT", 20, -276)
	local options = W.FlatButton(p, "", 200, 26, function() if NS.OpenSettings then NS.OpenSettings() end end)
	options:SetPoint("TOPLEFT", 232, -276)
	return function()
		head()
		local lines = { NS:L("wiz_keys_intro") }
		for _, k in ipairs(KEYS) do table.insert(lines, NS:L("wiz_key_" .. k)) end
		keys:SetText(table.concat(lines, "\n"))
		where:SetText(NS:L("wiz_where", Words(Defaults().ui.showButton)))
		defaults:SetText(Wizard:DefaultsLine())
		bind:SetText(NS:L("wiz_open_bindings"))
		options:SetText(NS:L("wiz_open_settings"))
	end
end }

---Opens the client's key bindings, when the client lets an addon do it; otherwise says where they are.
---@return boolean opened
function Wizard:OpenKeyBindings()
	local open, id = NS.Compat.Resolve("Settings.OpenToCategory"), NS.Compat.Resolve("Settings.KEYBINDINGS_CATEGORY_ID")
	local opened = type(open) == "function" and id ~= nil and pcall(open, id) or false
	if not opened then NS:Print(NS:L("wiz_bindings_where")) end
	return opened
end

---------------------------------------------------------------------------
-- Structure
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

function Wizard:NumberOfPages()
	local total = 0
	for i = 1, #pages do if Visible(i) then total = total + 1 end end
	return total
end

function Wizard:Step() return step end

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
	local total, number = self:NumberOfPages(), 0
	for i = 1, step do if Visible(i) then number = number + 1 end end
	frame.title:SetText(NS:L("wiz_title"))
	frame.count:SetText(NS:L("wiz_step", number, total))
	for i, dot in ipairs(frame.dots) do
		dot:SetShown(i <= total)
		if dot.SetColorTexture then
			if i == number then dot:SetColorTexture(1, 0.82, 0, 1)
			elseif i < number then dot:SetColorTexture(0.79, 0.64, 0.15, 1)
			else dot:SetColorTexture(0.3, 0.26, 0.18, 1) end
		end
	end
	frame.skip:SetText(NS:L("wiz_skip"))
	frame.back:SetText(NS:L("wiz_back"))
	frame.back:SetShown(Neighbour(step, -1) ~= nil)
	frame.next:SetText(Neighbour(step, 1) and NS:L("wiz_next") or NS:L("wiz_finish"))
end

function Wizard:Next()
	local n = Neighbour(step, 1)
	if n then step = n; self:Render() else self:Finish() end
end

function Wizard:Back()
	local n = Neighbour(step, -1)
	if n then step = n; self:Render() end
end

-- the end of the guide, once per opening: the choices made so far stay, the rest stays at its default
local ending = false
local function Ended()
	NS.db.ui.wizardDone = true
	if NS.Narrator then NS.Narrator:ApplySettings() end
	NS:Print(NS:L("wiz_done"))
	if NS.Packs:NeedsReload() then NS.Packs:OfferReload() end
end

---Skip, the close box, Esc and Finish all end here.
function Wizard:Finish()
	ending = true
	if frame then frame:Hide() end
	ending = false
	Ended()
end

local function Build()
	-- the shell (#187): hidden at once (#192), title band, close box, Esc (#174), scale (#182). The close box is Skip.
	frame = W.Window(UIParent, WIDTH, HEIGHT, "wiz_title", { name = "AzerothUnspokenWizard", point = { "CENTER", 0, 40 },
		onClose = function() Wizard:Finish() end, refresh = function() Wizard:Render() end })

	-- title band: the name, "step n of N", the close box; the progress dots under it
	frame.count = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	frame.count:SetPoint("TOPRIGHT", -44, -15)
	frame.close = frame.closeBox
	W.Tooltip(frame.close, function() return NS:L("wiz_skip_tip") end)
	frame.dots = {}
	for i = 1, MAX_DOTS do
		local d = frame:CreateTexture(nil, "ARTWORK")
		d:SetSize(8, 8)
		d:SetPoint("TOP", frame, "TOP", (i - (MAX_DOTS + 1) / 2) * 16, -46)
		frame.dots[i] = d
	end
	local rule = frame:CreateTexture(nil, "ARTWORK")
	rule:SetPoint("BOTTOMLEFT", 1, 52)
	rule:SetPoint("BOTTOMRIGHT", -1, 52)
	rule:SetHeight(1)
	if rule.SetColorTexture then rule:SetColorTexture(0.33, 0.27, 0.1, 1) end

	frame.content = CreateFrame("Frame", nil, frame)
	frame.content:SetPoint("TOPLEFT", 0, -64)
	frame.content:SetPoint("BOTTOMRIGHT", 0, 56)

	frame.skip = W.FlatButton(frame, "", 200, 24, function() Wizard:Finish() end, "text")
	frame.skip:SetPoint("BOTTOMLEFT", 16, 14)
	W.Tooltip(frame.skip, function() return NS:L("wiz_skip_tip") end)
	frame.next = W.FlatButton(frame, "", 110, 24, function() Wizard:Next() end, "primary")
	frame.next:SetPoint("BOTTOMRIGHT", -16, 14)
	frame.back = W.FlatButton(frame, "", 90, 24, function() Wizard:Back() end)
	frame.back:SetPoint("RIGHT", frame.next, "LEFT", -8, 0)

	-- the keyboard: Enter is Next, Esc is Skip (the defaults stay); every other key goes on to the game
	frame:EnableKeyboard(true)
	if frame.SetPropagateKeyboardInput then frame:SetPropagateKeyboardInput(true) end
	frame:SetScript("OnKeyDown", function(self, key)
		local enter = key == "ENTER" or key == "NUMPADENTER"
		local escape = key == "ESCAPE"
		if self.SetPropagateKeyboardInput then self:SetPropagateKeyboardInput(not (enter or escape)) end
		if enter then Wizard:Next() elseif escape then Wizard:Finish() end
	end)
	-- however it is closed, a closed guide counts as skipped: it does not come back at every login. Esc hides it through
	-- UISpecialFrames (#174), and then ends it as Skip does. A guide hidden with the whole interface (Alt+Z, a
	-- cinematic) is still shown: it does not end.
	frame:SetScript("OnHide", function(self)
		if self:IsShown() then return end
		NS.db.ui.wizardDone = true
		if not ending then Ended() end
	end)
	NS.Windows:Register(frame)   -- #181: DIALOG, raised on a click, the narrator steps aside for its test line
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
	step = 1
	frame:Show()
	self:Render()
	return true
end

function Wizard:IsOpen()
	return frame ~= nil and frame:IsShown()
end

---@return table? frame
function Wizard:GetFrame() return frame end

-- First run: after the game has finished loading (PLAYER_ENTERING_WORLD), and never in combat or over a loading screen:
-- it asks again a few seconds later until the player is free.
local function TryOpen()
	if NS.db.ui.wizardDone or Wizard:IsOpen() then return end
	local busy = NS.Compat.SafeCall(InCombatLockdown)
	if busy then
		C_Timer.After(RETRY, TryOpen)
		return
	end
	Wizard:Open()
end
Wizard.TryOpen = TryOpen

function Wizard:OnInit()
	if NS.db.ui.wizardDone then return end
	local waiter = CreateFrame("Frame")
	waiter:RegisterEvent("PLAYER_ENTERING_WORLD")
	waiter:SetScript("OnEvent", function(self)
		self:UnregisterAllEvents()
		C_Timer.After(OPEN_DELAY, TryOpen)
	end)
end
