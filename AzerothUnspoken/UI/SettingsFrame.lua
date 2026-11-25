-- Azeroth Unspoken: pannello delle impostazioni (GDD §12.2)
-- Six sections (#187; Appearance since UI-ECO UI-3) in the client's Settings canvas. UI-6 (UI-ECO): the page is on the
-- NEBULA look and needs no W.Adopt: a `bg` surface of its own inside the client's frame, every section a W.Section (a quiet
-- card with its title and rule), every text a Theme font with a token. The rows use the controls of the theme: a W.Switch
-- for an on/off setting (its state is also written in words), a W.Segmented for a choice of two to four short words, a
-- W.Slider with its "-" and "+" for a number (its value in the mono font, `accent-text`), and a button that shows the value
-- and goes to the next one for the choices too long or too many for a segment (language, chat mode, channel, cooldown, reading
-- speed, combat, the character's name) and for the consents, which are asked in two steps and say their state in words.
-- No UIDropDownMenu (it taints): a list that opens would be clipped by the scrolling canvas, so none is used here.
-- The sections scroll inside the client's settings canvas (its scroll bar is the client's own). Every change sends the one
-- "settings changed" notice (Config:Changed, #192), which the panel, the open windows, the narrator and the NPC dialogue
-- window follow. UI-7 (UI-ECO): the Info section after Privacy: the credits (Finland, the NEBULA community with its logo),
-- the mixed licence, the fan-made notice and a read-only copy box for Ko-fi, the only link (the game cannot open a web page: click, Ctrl+C).
-- Its texts are laid out in Refresh because their height depends on the language; `/au about` scrolls to it.
local ADDON, NS = ...
local W = NS.Widgets
local Theme = NS.Theme
local SettingsFrame = NS:RegisterModule("settings")
NS.SettingsFrame = SettingsFrame
local Assets = NS.Assets

-- The links of the Info section, in order; the label of each is the locale key opt_link_<id>. They are data, not text.
-- Owner rule (2026-11-24): the addon carries one link only, Ko-fi; no link to the NEBULA community's site or to the
-- GitHub pages (they stay in the docs). Ko-fi is only here and in the docs: the addon never asks for it anywhere else.
SettingsFrame.LINKS = {
	{ id = "kofi", url = "https://ko-fi.com/finland6738" },
}
SettingsFrame.COMMUNITY = "NEBULA"   -- the name that stands in for the logo when the client cannot load it

---The NEBULA community logo of a theme: the dark-theme art (own colours, white word) on Nebula, the light-theme art (black
---word) on Aurora. Returns the key of Assets.textures. The logo belongs to the community (docs/third-party.md).
---@param themeId? string
---@return string key
function SettingsFrame.LogoKey(themeId)
	local theme = Theme.themes[themeId or Theme.Current()]
	if theme and theme.dark == false then return "nebula_light_256" end
	return "nebula_dark_256"
end

---Puts the logo of a theme on `tex` (a theme entry: it runs now and at every theme change). A client that cannot load the file
---hides the texture and shows `tex.fallback`, the word NEBULA.
---@param tex table
---@param themeId? string
function SettingsFrame.ApplyLogo(tex, themeId)
	local ok, loaded = pcall(tex.SetTexture, tex, Assets.textures[SettingsFrame.LogoKey(themeId)].path)
	local shown = ok and loaded ~= false and not (tex.GetTexture and tex:GetTexture() == nil)
	tex:SetShown(shown)
	if tex.fallback then tex.fallback:SetShown(not shown) end
end

local panel
local MODULE_ORDER = { "personal", "world", "npc", "memory", "emotion", "relations", "storyArcs", "social", "publicChat", "audio" }
local MODULE_LIVE = NS.Config.MODULE_LIVE   -- moduli con effetto già oggi (una lista sola con il wizard, #77)
local DEPTHS = { "natural", "literary", "elevated" }
local COOLDOWNS = { 15, 30, 45, 60, 90, 120, 180 }
local WAITS = { 25, 60, 120 }          -- seconds a proposal waits; after the longest, until it is closed (0, #177)
local SPEEDS = { 8, 11, 14, 18, 24 }   -- reading speed, characters a second (#177)
local COMBAT = NS.Config.COMBAT_SETTINGS   -- #185: show, chat frame only, hold until the fight ends, silent
local LITERARY = NS.Config.LITERARY_FREQUENCIES   -- #118: literary forms never, rare, normal
local NAME_STYLES = NS.Config.NAME_STYLES   -- #281: the character's name: first, last, both
local THEMES, FONT_SOURCES = NS.Config.THEMES, NS.Config.FONT_SOURCES   -- UI-ECO UI-3: the Appearance rows
local CONTENT_W = 640                  -- width of the scrolling content
local SECTION_W = CONTENT_W - 32       -- a section: 16 units from each edge
local LABEL_X, CONTROL_X, CONTROL_W = 16, 240, 220   -- inside a section
local ROW, ROW_SEG = 28, 36            -- a row: 24 units of control and 4 of space; a Segmented is 32 high
local ACTION_W, ACTION_GAP = 280, 8    -- the buttons that open something or act once, two on a line
local SLIDER_W = 220                   -- a slider with its "-" and "+"; its value in words is to the right of it
local GAP = 10                         -- between two sections

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

local function OnOff(v) return v and NS:L("on") or NS:L("off") end

local function Percent(v) return v .. "%" end   -- a slider of a fraction counts in whole percent
local function Seconds(v) return v .. " s" end
local function Plain(v) return tostring(v) end
local function Round(x) return math.floor(x * 100 + 0.5) end   -- 0.55 -> 55

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
	-- UI-3: the page has the theme's surface, so its texts keep their contrast in Nebula and in Aurora
	panel.bg = panel:CreateTexture(nil, "BACKGROUND")
	panel.bg:SetAllPoints(panel)
	Theme.Fill(panel.bg, "bg")

	local title = Theme.NewText(panel, "H1", "text-1")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(NS.name .. " " .. NS.version)
	panel.title = title

	-- the sections scroll; without the scroll template they are drawn on the panel itself
	local scroll
	pcall(function()
		scroll = CreateFrame("ScrollFrame", "AzerothUnspokenSettingsScroll", panel, "UIPanelScrollFrameTemplate")
	end)
	local content = panel
	panel.scroll = scroll   -- nil without the scroll template
	if scroll then
		scroll:SetPoint("TOPLEFT", 0, -44)
		scroll:SetPoint("BOTTOMRIGHT", -30, 8)
		content = CreateFrame("Frame", nil, scroll)
		content:SetSize(CONTENT_W, 400)
		scroll:SetScrollChild(content)
	end
	panel.content = content

	local cy = scroll and 4 or 44   -- the next free line of the content, from its top: the top of the next section
	local sec, sy                   -- the section being built, and the next free line inside it
	local headers, rows, sections = {}, {}, {}
	local modules = {}
	local refreshing = false        -- the panel is setting its controls from the settings: they must not answer
	local infoSec, infoTop, helpTop -- the Info section, its top in the content, and where the help text starts
	panel.rows = rows           -- [key] = { label, button | switch | seg | slider + minus + plus + text } (the tests use them)
	panel.headers = headers     -- { fs = the section's title, key, section }
	panel.sections = sections   -- the W.Sections, top to bottom

	local function EndSection()
		if not sec then return end
		sec:Fit(sy)
		cy = cy + sec:GetHeight() + GAP
		sec = nil
	end

	-- a section: a card with its title; the rows are laid out inside it, from W.SECTION_TOP down
	local function Header(key)
		EndSection()
		sec = W.Section(content, SECTION_W, 100)
		sec:SetPoint("TOPLEFT", content, "TOPLEFT", 16, -cy)
		sy = W.SECTION_TOP
		table.insert(sections, sec)
		table.insert(headers, { fs = sec.title, key = key, section = sec })
	end

	local function Label(key, x, width)
		local fs = Theme.NewText(sec, "BodyMedium", "text-1")
		fs:SetPoint("TOPLEFT", x or LABEL_X, -(sy + 5))
		fs:SetWidth(width or (CONTROL_X - LABEL_X - 8))
		fs:SetJustifyH("LEFT")
		if fs.SetWordWrap then fs:SetWordWrap(false) end
		return fs
	end

	-- the value of a row in words, next to its control
	local function ValueText(x, w, font, token)
		local fs = Theme.NewText(sec, font or "Body", token or "text-2")
		fs:SetPoint("TOPLEFT", x, -(sy + 5))
		fs:SetWidth(w)
		fs:SetJustifyH("LEFT")
		if fs.SetWordWrap then fs:SetWordWrap(false) end
		return fs
	end

	local function Tip(frame, tip)
		if tip then W.Tooltip(frame, function() return NS:L(tip) end) end
	end

	local function Next(h) sy = sy + (h or ROW) end

	-- a label and a button that shows the value; a click goes to the next one. The button is as wide as its value (#180),
	-- from `controlW` up to the right margin of the section, unless `fixed` (the language row has a button beside it).
	local function Toggle(key, value, onClick, tip, x, labelW, controlX, controlW, fixed)
		local row = { key = key, value = value }
		row.label = Label(key, x, labelW)
		row.button = W.FlatButton(sec, "", controlW or CONTROL_W, 24, function()
			onClick()
			NS.Config:Changed(key)
		end)
		row.button:SetPoint("TOPLEFT", controlX or CONTROL_X, -sy)
		row.minW = controlW or CONTROL_W
		row.maxW = fixed and row.minW or math.max(row.minW, SECTION_W - (controlX or CONTROL_X) - LABEL_X)
		row.button.auMax = row.maxW
		Tip(row.button, tip)
		rows[key] = row
		return row
	end

	-- an on/off setting: a switch (its position is the state) and the state in words next to it. `stay`: the caller moves
	-- to the next line itself (the modules sit two on a line).
	local function Switch(key, get, onClick, tip, x, labelW, controlX, stay)
		local row = { key = key, get = get }
		row.label = Label(key, x, labelW)
		local cx = controlX or CONTROL_X
		row.switch = W.Switch(sec, { on = false, onChange = function()
			if refreshing then return end
			onClick()
			NS.Config:Changed(key)
		end })
		row.switch:SetPoint("TOPLEFT", cx, -(sy - 1))
		row.text = ValueText(cx + 52, 90)
		Tip(row.switch, tip)
		rows[key] = row
		if not stay then Next() end
		return row
	end

	-- a choice of a few short words: a segmented control; `items` = { { id, textKey | textFn } }, `set(id)` stores it
	local function Segment(key, items, get, set, tip)
		local row = { key = key, get = get, items = items }
		row.label = Label(key)
		local list = {}
		for i, it in ipairs(items) do list[i] = { id = it.id, text = it.text() } end
		row.seg = W.Segmented(sec, list, function(id)
			if refreshing then return end
			set(id)
			NS.Config:Changed(key)
		end)
		row.seg:SetPoint("TOPLEFT", CONTROL_X, -(sy - 3))
		if tip then for _, b in pairs(row.seg.buttons) do Tip(b, tip) end end
		rows[key] = row
		Next(ROW_SEG)
		return row
	end

	-- a number: a slider with "-" and "+" (24-unit targets, #183) and its value in the mono font, `accent-text`.
	-- `get()` and `set(v)` count in whole units (percent for a fraction); the slider saves at the release or a step.
	local function Slide(key, min, max, step, get, set, fmt)
		local row = { key = key, get = get, fmt = fmt }
		row.label = Label(key)
		row.slider = W.Slider(sec, SLIDER_W, min, max, function(v, final)
			row.text:SetText(fmt(v))
			if final then
				set(v)
				NS.Config:Changed(key)
			end
		end, { step = step, buttons = true })
		row.slider:SetPoint("TOPLEFT", CONTROL_X, -sy)
		-- the wheel scrolls the page: over a slider it must not change a setting by accident
		if row.slider.EnableMouseWheel then row.slider:EnableMouseWheel(false) end
		row.minus, row.plus = row.slider.minus, row.slider.plus
		row.text = ValueText(CONTROL_X + SLIDER_W + 12, 90, "Mono", "accent-text")
		rows[key] = row
		Next()
		return row
	end

	-- the buttons that open something or act once, two on a line; `label()` may change their text
	local function Actions(list)
		for i, a in ipairs(list) do
			local col = (i - 1) % 2
			if i > 1 and col == 0 then Next() end
			local row = { key = a[1], value = a[3], action = true }
			row.button = W.FlatButton(sec, "", ACTION_W, 24, function()
				a[2]()
				NS.Config:Changed(a[1])
			end)
			row.button:SetPoint("TOPLEFT", LABEL_X + col * (ACTION_W + ACTION_GAP), -sy)
			if a[4] then W.Tooltip(row.button, function() return NS:L(a[4]) end) end
			rows[a[1]] = row
		end
		Next()
	end

	-- General
	Header("opt_section_general")
	Switch("opt_enabled", function() return NS.db.enabled end, function() NS.db.enabled = not NS.db.enabled end)
	Toggle("opt_language", function() return NS.languages[NS:Lang()].name end, CycleLanguage, nil,
		nil, nil, nil, 130, true)
	-- reload after a change of language (#85): shown only while the phrases are still in the previous language
	panel.reload = W.FlatButton(sec, "", CONTROL_W - 138, 24, function() NS.Packs:Reload() end, "primary")
	panel.reload:SetPoint("TOPLEFT", CONTROL_X + 138, -sy)
	rows.opt_language.reload = panel.reload
	Next()
	Slide("opt_intensity", 0, 100, 10, function() return NS.db.intensity end,
		function(v) NS.Config:Set("intensity", v) end, Plain)
	Segment("opt_depth", { { id = "natural", text = function() return NS:L("depth_natural") end },
		{ id = "literary", text = function() return NS:L("depth_literary") end },
		{ id = "elevated", text = function() return NS:L("depth_elevated") end } },
		function() return NS.db.proseDepth end, function(id) NS.db.proseDepth = id end)
	-- #118: how often the literary forms come (private narrator only): never, rare (default), normal
	local literaryItems = {}
	for i, id in ipairs(LITERARY) do literaryItems[i] = { id = id, text = function() return NS:L("literary_" .. id) end } end
	Segment("opt_literary", literaryItems, function() return NS.db.literary.frequency end,
		function(id) NS.Config:Set("literary.frequency", id) end, "opt_literary_tip")
	-- ADR 0060: the Bard's box, its Share button and the channel of a share
	Switch("opt_bard", function() return NS.db.bard.enabled end,
		function() NS.Config:Set("bard.enabled", not NS.db.bard.enabled) end, "opt_bard_tip")
	Switch("opt_bard_share", function() return NS.db.bard.share end,
		function() NS.Config:Set("bard.share", not NS.db.bard.share) end, "opt_bard_share_tip")
	local bardChannels = {}
	for i, id in ipairs(NS.Config.BARD_CHANNELS) do
		bardChannels[i] = { id = id, text = function() return NS:L("channel_" .. id) end }
	end
	Segment("opt_bard_channel", bardChannels, function() return NS.db.bard.channel end,
		function(id) NS.Config:Set("bard.channel", id) end, "opt_bard_channel_tip")
	Toggle("opt_cooldown", function() return NS.db.pacing.globalCooldownSeconds .. " s" end, function()
		local nxt = COOLDOWNS[1]
		for _, s in ipairs(COOLDOWNS) do
			if s > NS.db.pacing.globalCooldownSeconds then nxt = s; break end
		end
		NS.db.pacing.globalCooldownSeconds = nxt
	end)
	Next()
	-- #182: the scale of the addon's windows and of the NPC dialogue window, in whole percent
	Slide("opt_scale", 80, 150, 10, function() return Round(NS.db.ui.windowScale) end,
		function(v) NS.Config:Set("ui.windowScale", v / 100) end, Percent)
	Actions({
		{ "opt_journal", function() if NS.JournalFrame then NS.JournalFrame:Toggle() end end },
		{ "opt_relations", function() if NS.RelationsFrame then NS.RelationsFrame:Toggle() end end },
		{ "opt_soul", function() if NS.ProfileFrame then NS.ProfileFrame:Toggle() end end },
		{ "opt_wizard", function() NS.Wizard:Open() end },
	})

	-- Appearance (UI-ECO UI-3, ADR 0058): theme, neon effects, animations, fonts; each one changes the open windows at once,
	-- without /reload (Config:Set tells UI/Theme.lua). "Animations" is the one switch for every motion of the addon, the
	-- narrator's fades included (UI-4): the narrator's older "reduce motion" (ui.narrator.reduceMotion, #177) is no longer
	-- written nor read; Config:Load moved a player who had it on to ui.animations = false once.
	Header("opt_section_look")
	local themeItems = {}
	for i, id in ipairs(THEMES) do themeItems[i] = { id = id, text = function() return NS:L("theme_" .. id) end } end
	Segment("opt_theme", themeItems, function() return Theme.Current() end,
		function(id) NS.Config:Set("ui.theme", id) end, "opt_theme_tip")
	Switch("opt_neon", function() return NS.db.ui.neon end,
		function() NS.Config:Set("ui.neon", not NS.db.ui.neon) end, "opt_neon_tip")
	Switch("opt_motion", function() return Theme.AnimationsOn() end,
		function() NS.Config:Set("ui.animations", not Theme.AnimationsOn()) end, "opt_motion_tip")
	local fontItems = {}
	for i, id in ipairs(FONT_SOURCES) do fontItems[i] = { id = id, text = function() return NS:L("font_" .. id) end } end
	Segment("opt_font", fontItems, function() return Theme.FontSource() end,
		function(id) NS.Config:Set("ui.fontSource", id) end, "opt_font_tip")
	Actions({
		{ "opt_resetwindows", function() W.ResetPositions() end, nil, "opt_resetwindows_tip" },
	})

	-- Emote wheel (ADR 0059): its key, its shape and the emote of each slice. The key ships unbound; the first row binds the
	-- middle mouse button only on a second click, out of combat (the first click says what the button does now).
	Header("opt_section_wheel")
	local Emotes, wheel = NS.Emotes, function() return NS.db.ui.wheel end
	local wheelSlot, armedAt = 1, nil
	local function Armed() return armedAt ~= nil and (GetTime() - armedAt) < 10 end
	local function ActionName(action)
		local name = _G["BINDING_NAME_" .. action]
		return type(name) == "string" and name or action
	end
	Toggle("opt_wheel_key", function()
		if Emotes:MiddleBound() then return NS:L("wheel_key_middle") end
		if Armed() then
			local action = Emotes:ActionOf(Emotes.MIDDLE)
			return action and NS:L("wheel_key_arm", ActionName(action)) or NS:L("wheel_key_arm_free")
		end
		local keys = Emotes:BoundKeys()
		if #keys > 0 then return NS:L("wheel_key_other", table.concat(keys, ", ")) end
		return NS:L("wheel_key_none")
	end, function()
		if Emotes:MiddleBound() then return end
		if not Armed() then
			armedAt = GetTime()
			return
		end
		armedAt = nil
		local r = Emotes:BindMiddleButton()
		NS:Print(NS:L(r == "ok" and "wheel_bind_done" or (r == "combat" and "wheel_bind_combat" or "wheel_bind_failed")))
	end, "opt_wheel_key_tip")
	Next()
	Slide("opt_wheel_slices", 4, 12, 1, function() return Emotes:Slices() end,
		function(v) NS.Config:Set("ui.wheel.slices", v) end, Plain)
	Switch("opt_wheel_labels", function() return wheel().labels ~= false end,
		function() NS.Config:Set("ui.wheel.labels", wheel().labels == false) end)
	Slide("opt_wheel_deadzone", 16, 80, 2, function() return wheel().deadZone end,
		function(v) NS.Config:Set("ui.wheel.deadZone", v) end, Plain)
	Slide("opt_wheel_delay", 0, 500, 50, function() return math.floor((tonumber(wheel().holdDelay) or 0) * 1000 + 0.5) end,
		function(v) NS.Config:Set("ui.wheel.holdDelay", v / 1000) end, function(v) return v .. " ms" end)   -- nolocale: a unit
	Switch("opt_wheel_sounds", function() return wheel().sounds ~= false end,
		function() NS.Config:Set("ui.wheel.sounds", wheel().sounds == false) end)
	-- a box that acts on Enter and empties itself (`url`: Refresh empties it like a copy box)
	local function Box(key, tip, onEnter)
		local row = { key = key, url = "" }
		row.label = Label(key)
		row.box = W.EditBox(sec, CONTROL_W, 24)
		row.box:SetPoint("TOPLEFT", CONTROL_X, -sy)
		row.box:SetScript("OnEnterPressed", function(self)
			local word = self:GetText()
			self:SetText("")
			if self.ClearFocus then self:ClearFocus() end
			if word ~= "" then onEnter(word) end
		end)
		Tip(row.box, tip)
		rows[key] = row
		Next()
		return row
	end
	-- the presets: the one shown (a click shows the next), a new one by name (a copy of the one shown)
	Toggle("opt_wheel_preset", function() return Emotes:PresetLabel(Emotes:Active()) end,
		function() Emotes:NextPreset(1) end, "opt_wheel_preset_tip")
	Next()
	Box("opt_wheel_preset_new", "opt_wheel_preset_new_tip", function(word)
		local r = Emotes:SavePreset(word)
		if r == "full" then NS:Print(NS:L("wheel_preset_full", Emotes.MAX_SETS))
		elseif r == "name" then NS:Print(NS:L("wheel_preset_badname", Emotes.MAX_NAME)) end
	end)
	-- the emote of one slice of the preset shown: which slice (1-12; past the number of slices it is kept but not shown),
	-- then its emote
	Slide("opt_wheel_slot", 1, Emotes.MAX_SLICES, 1, function() return wheelSlot end, function(v) wheelSlot = v end,
		function(v) return v > Emotes:Slices() and NS:L("wheel_slot_hidden", v) or tostring(v) end)
	Toggle("opt_wheel_emote", function()
		local token = Emotes:SliceToken(wheelSlot)
		local cmd = Emotes:Command(token)
		return cmd and (Emotes:Label(token) .. "  " .. cmd) or Emotes:Label(token)
	end, function()
		Emotes:SetSlice(wheelSlot, Emotes:Step(Emotes:SliceToken(wheelSlot), 1))
	end, "opt_wheel_emote_tip")
	Next()
	-- or typed: an emote's name or command ("dance", "/lol"), Enter puts it in the chosen slice; an unknown one is said in chat
	Box("opt_wheel_type", "opt_wheel_type_tip", function(word)
		local token = Emotes:Resolve(word)
		if token then Emotes:SetSlice(wheelSlot, token) else NS:Print(NS:L("wheel_unknown", word)) end
	end)
	local deleteArmed = nil   -- the preset waiting for its second click, and when
	Actions({
		{ "opt_wheel_prev", function() Emotes:SetSlice(wheelSlot, Emotes:Step(Emotes:SliceToken(wheelSlot), -1)) end },
		{ "opt_wheel_reset", function() Emotes:ResetSlices() end },
		{ "opt_wheel_preset_delete", function()
			local name = Emotes:Active()
			if name == Emotes.DEFAULT_SET then deleteArmed = nil; return NS:Print(NS:L("wheel_preset_keep")) end
			if deleteArmed and deleteArmed.name == name and GetTime() - deleteArmed.at < 10 then
				deleteArmed = nil
				if Emotes:DeletePreset(name) then NS:Print(NS:L("wheel_preset_deleted", name)) end
			else
				deleteArmed = { name = name, at = GetTime() }
			end
		end, function()
			local name = Emotes:Active()
			if deleteArmed and deleteArmed.name == name and GetTime() - deleteArmed.at < 10 then
				return NS:L("opt_wheel_preset_delete_arm", name)
			end
			return NS:L("opt_wheel_preset_delete")
		end, "opt_wheel_preset_delete_tip" },
		{ "opt_wheel_unbind", function()
			local r = Emotes:UnbindMiddleButton()
			NS:Print(NS:L(r == "ok" and "wheel_unbind_done" or (r == "combat" and "wheel_bind_combat"
				or (r == "none" and "wheel_unbind_none" or "wheel_bind_failed"))))
		end, nil, "opt_wheel_unbind_tip" },
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
	local waitItems = {}
	for i, v in ipairs({ WAITS[1], WAITS[2], WAITS[3], 0 }) do
		waitItems[i] = { id = v, text = function() return WaitLabel(v) end }
	end
	Segment("opt_waits", waitItems, function() return NS.db.chat.pendingSeconds end,
		function(v) NS.Config:Set("chat.pendingSeconds", v) end)
	Switch("opt_button", function() return NS.db.ui.showButton end, function()
		NS.db.ui.showButton = not NS.db.ui.showButton
		NS.UpdateButton()
	end)

	-- Narrator
	Header("opt_section_narrator")
	Switch("opt_narrator", function() return NS.db.output.privateNarrator end,
		function() NS.db.output.privateNarrator = not NS.db.output.privateNarrator end)
	Slide("opt_duration", 2, 30, 1, function() return NS.db.ui.narrator.duration end,
		function(v) NS.Config:Set("ui.narrator.duration", v) end, Seconds)
	-- #177: characters a second; 14 is about 0.07 s per character
	Toggle("opt_reading", function() return NS:L("reading_cps", NS.db.ui.narrator.readingSpeed) end, function()
		NS.Config:Set("ui.narrator.readingSpeed", NextAbove(SPEEDS, NS.db.ui.narrator.readingSpeed) or SPEEDS[1])
	end)
	Next()
	-- #173: the opacity of the background only; the text stays at full opacity
	Slide("opt_alpha", 55, 100, 5, function() return Round(NS.db.ui.narrator.alpha) end,
		function(v) NS.Config:Set("ui.narrator.alpha", v / 100) end, Percent)
	Slide("opt_fontsize", 10, 28, 1, function() return NS.db.ui.narrator.fontSize end,
		function(v) NS.Config:Set("ui.narrator.fontSize", v) end, Plain)
	Switch("opt_locked", function() return NS.db.ui.narrator.locked end,
		function() NS.db.ui.narrator.locked = not NS.db.ui.narrator.locked end)
	-- #185: what a spontaneous line does during a fight; proposals for chat always wait for its end
	Toggle("opt_combat", function() return NS:L("combat_" .. NS.Gateway:CombatSetting()) end,
		function() NS.Config:Set("pacing.inCombat", Cycle(COMBAT, NS.Gateway:CombatSetting())) end, "opt_combat_tip")
	Next()
	-- #182: the NPC dialogue window's own text size and opacity
	Slide("opt_dialogue_size", 10, 24, 1, function() return NS.db.ui.dialogue.fontSize end,
		function(v) NS.Config:Set("ui.dialogue.fontSize", v) end, Plain)
	Slide("opt_dialogue_alpha", 30, 100, 5, function() return Round(NS.db.ui.dialogue.alpha) end,
		function(v) NS.Config:Set("ui.dialogue.alpha", v / 100) end, Percent)
	Actions({
		{ "opt_pause", function() NS.Director:TogglePause() end, function() return NS:L(NS.paused and "opt_resume" or "opt_pause") end },
		{ "opt_test", function() NS.Narrator:ShowTest() end },
		{ "opt_history", function() NS.Narrator:ToggleHistory() end },
		{ "opt_resetpos", function() NS.Narrator:ResetPosition() end },
	})

	-- Modules: two columns of a label and its switch
	Header("opt_section_modules")
	local modNote = Theme.NewText(sec, "Small", "text-2")
	modNote:SetPoint("TOPLEFT", LABEL_X, -sy)
	modNote:SetWidth(SECTION_W - 2 * LABEL_X)
	modNote:SetJustifyH("LEFT")
	Next(20)
	for i, module in ipairs(MODULE_ORDER) do
		local col = (i - 1) % 2
		local x = LABEL_X + col * 292
		local row = Switch("module_" .. module, function() return NS.db.modules[module] == true end, function()
			NS.db.modules[module] = not NS.db.modules[module]
			NS.db.preset = "custom"
			if module == "publicChat" and not NS.db.modules.publicChat then NS.Gateway:Discard() end
			if module == "emotion" and not NS.db.modules.emotion and NS.Emotion then NS.Emotion:Reset() end
			-- the proximity events are registered only while the relations module and the option are on (#164)
			if module == "relations" and NS.Relationships then NS.Relationships:ApplyProximity() end
		end, nil, x, 170, x + 176, true)
		row.module = module
		table.insert(modules, row)
		if col == 1 or i == #MODULE_ORDER then Next() end
	end

	-- Privacy: the consents, each in words (#178), and what reaches chat
	Header("opt_section_privacy")
	-- l'invio automatico è una scelta a parte, con avviso e conferma: non si raggiunge scorrendo le modalità
	-- #185: after a blocked automatic send the row says that the session works as "confirm to send"
	Toggle("opt_auto", function()
		if NS.Gateway:IsAutoActive() and NS.Gateway.autoFallback then return NS:L("consent_auto_fallback") end
		return ConsentState("auto", NS.Gateway:IsAutoActive())
	end, function()
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
	Switch("opt_rpname", function() return NS.db.modules.totalRP3 == true end,
		function() NS.db.modules.totalRP3 = not NS.db.modules.totalRP3 end)
	-- #281: how the character is named before an emote: first name, last name or both (the default)
	Toggle("opt_namestyle", function() return NS:L("namestyle_" .. NS.db.names.player) end,
		function() NS.Config:Set("names.player", Cycle(NAME_STYLES, NS.db.names.player)) end, "opt_namestyle_tip")
	Next()

	-- Romance (ADR 0061, step R2): Active romance (it needs the attraction axis), the allowed tone, the 18+ consent (two
	-- steps on, one off; in the account) and the state of the optional 18+ pack. Not a module: README's list does not change.
	Header("opt_section_romance")
	local Ro = NS.Romance
	local romanceActive = Switch("opt_romance_active", function() return NS.db.relations.romanceActive == true end, function()
		NS.db.relations.romanceActive = not NS.db.relations.romanceActive
	end, "opt_romance_active_tip")
	-- with the attraction axis off the switch is disabled and says what it needs
	romanceActive.text:SetWidth(SECTION_W - CONTROL_X - 52 - LABEL_X)
	romanceActive.needs = function()
		if not (NS.Relationships and NS.Relationships:AttractionOn()) then return NS:L("rom_needs_attraction") end
	end
	local toneItems = {}
	for i, id in ipairs({ "courteous", "intimate", "explicit" }) do
		toneItems[i] = { id = i, text = function() return NS:L("rom_tone_" .. id) end }
	end
	local tone = Segment("opt_romance_tone", toneItems, function() return Ro:SettingTone() end, function(id)
		local ok, why = Ro:SetTone(id)
		if not ok and why == "adult" then NS:Print(NS:L("rom_tone_needs_adult")) end
		panel:Refresh()
	end, "opt_romance_tone_tip")
	-- Explicit can be chosen only with the consent on (it reads as Intimate until the pack is loaded)
	tone.after = function(r) r.seg.buttons[3]:SetEnabled(Ro:AdultOn()); r.seg.buttons[3]:SetAlpha(Ro:AdultOn() and 1 or 0.55) end
	Toggle("opt_romance_adult", function() return ConsentState("romance_adult", Ro:AdultOn()) end, function()
		local r = Ro:SetAdult(not Ro:AdultOn())
		if r == "wait" then NS:Print(NS:L("consent_wait"))
		elseif r == "on" or r == "off" then NS:Print(NS:L(r == "on" and "rom_adult_on" or "rom_adult_off")) end
	end, "opt_romance_adult_tip")
	Next()
	-- the 18+ pack: not installed, installed, loaded (a status, not a control)
	rows.opt_romance_pack = { key = "opt_romance_pack", status = true, label = Label("opt_romance_pack"),
		text = ValueText(CONTROL_X, SECTION_W - CONTROL_X - LABEL_X), value = function() return NS:L("rom_pack_" .. Ro:PackWord()) end }
	Next()
	-- where the pack comes from (owner, 2026-11-25): plain words, no link (the only link in the addon is Ko-fi)
	local packNote = ValueText(LABEL_X, SECTION_W - 2 * LABEL_X, "Small", "text-3")
	if packNote.SetWordWrap then packNote:SetWordWrap(true) end
	rows.opt_romance_pack_note = { status = true, text = packNote, value = function() return NS:L("opt_romance_pack_note") end }
	Next(36)

	-- Info (UI-7): credits, licence, fan-made notice, the NEBULA logo and the links as copy boxes. Everything inside is
	-- placed by LayoutInfo (called by Refresh), because the height of a text depends on the language.
	Header("opt_section_info")
	infoSec, infoTop = sec, cy
	panel.infoTop = cy   -- where the section starts in the scrolling content (`/au about` scrolls there)
	local info = { texts = {}, links = {} }
	panel.info = info
	local LOGO = 96
	local function InfoText(id, font, token)
		local fs = Theme.NewText(sec, font, token)
		fs:SetJustifyH("LEFT")
		fs:SetJustifyV("TOP")
		if fs.SetWordWrap then fs:SetWordWrap(true) end
		info.texts[id] = fs
		return fs
	end
	InfoText("info_made_by", "BodyMedium", "text-1")
	InfoText("info_nebula", "Body", "text-2")
	InfoText("info_licence", "Small", "text-3")
	InfoText("info_fanmade", "Small", "text-3")
	InfoText("info_copy_hint", "Small", "text-3")
	-- the NEBULA logo: the art of the active theme, swapped by the theme registry (full colour, never tinted)
	info.logo = sec:CreateTexture(nil, "ARTWORK")
	info.logo:SetSize(LOGO, LOGO)
	info.logo:SetPoint("TOPRIGHT", sec, "TOPRIGHT", -LABEL_X, -(W.SECTION_TOP + 2))
	info.logo.fallback = Theme.NewText(sec, "H2", "text-2")
	info.logo.fallback:SetPoint("CENTER", info.logo, "CENTER", 0, 0)
	info.logo.fallback:SetText(SettingsFrame.COMMUNITY)
	Theme.Call(info.logo, function(tex, themeId) SettingsFrame.ApplyLogo(tex, themeId) end)
	-- the copy boxes: read-only (a change is put back at once), the text selected when the box takes the keyboard
	for _, link in ipairs(SettingsFrame.LINKS) do
		local key = "opt_link_" .. link.id
		local row = { key = key, url = link.url }
		row.label = Label(key)
		row.box = W.EditBox(sec, SECTION_W - CONTROL_X - LABEL_X, 24)
		row.box:SetPoint("TOPLEFT", CONTROL_X, -sy)
		row.box:SetText(link.url)
		row.box:SetCursorPosition(0)
		row.box:HookScript("OnEditFocusGained", function(self) self:HighlightText() end)
		row.box:HookScript("OnTextChanged", function(self, user)
			if user and self:GetText() ~= row.url then
				self:SetText(row.url)
				self:HighlightText()
			end
		end)
		rows[key] = row
		info.links[#info.links + 1] = row
		Next()
	end
	sy = sy + 240   -- a first guess; LayoutInfo measures the texts
	EndSection()

	-- what each choice means, the consents that wait for something, the content: the text of a consent, 12 units (#182),
	-- under the last section whatever the number of rows
	local help = Theme.NewText(content, "Body", "text-2")
	help:SetPoint("TOPLEFT", content, "TOPLEFT", LABEL_X, -(cy + 2))
	help:SetWidth(CONTENT_W - 2 * LABEL_X)
	help:SetJustifyH("LEFT")
	help:SetJustifyV("TOP")
	panel.help = help
	helpTop = cy + 2

	-- The Info section, laid out from its texts: the credits beside the logo, the licence, the notice and the hint under it,
	-- then the copy box (Ko-fi). Fits the section and moves the help text under it. Called by Refresh (the language changes
	-- the height of a text).
	local function Height(fs, width)
		fs:SetWidth(width)
		local h = fs:GetStringHeight()
		if type(h) ~= "number" or h <= 0 then h = 16 * math.ceil(#(fs:GetText() or "") * 7 / width) end   -- a client that does not measure
		return math.ceil(h)
	end
	local function LayoutInfo()
		local inner, narrow = SECTION_W - 2 * LABEL_X, SECTION_W - 2 * LABEL_X - LOGO - 16
		local y = W.SECTION_TOP
		local function Place(id, width)
			local fs = info.texts[id]
			fs:SetText(NS:L(id))
			fs:ClearAllPoints()
			fs:SetPoint("TOPLEFT", infoSec, "TOPLEFT", LABEL_X, -y)
			y = y + Height(fs, width) + 6
		end
		Place("info_made_by", narrow)
		Place("info_nebula", narrow)
		y = math.max(y, W.SECTION_TOP + 2 + LOGO + 8)   -- under the logo
		Place("info_licence", inner)
		Place("info_fanmade", inner)
		Place("info_copy_hint", inner)
		y = y + 4
		for _, row in ipairs(info.links) do
			row.label:ClearAllPoints()
			row.label:SetPoint("TOPLEFT", LABEL_X, -(y + 5))
			row.box:ClearAllPoints()
			row.box:SetPoint("TOPLEFT", CONTROL_X, -y)
			y = y + ROW
		end
		infoSec:Fit(y)
		helpTop = infoTop + infoSec:GetHeight() + GAP + 2
		help:ClearAllPoints()
		help:SetPoint("TOPLEFT", content, "TOPLEFT", LABEL_X, -helpTop)
	end

	-- the controls, labels and texts again, from the settings
	function panel:Refresh()
		refreshing = true
		for _, h in ipairs(headers) do h.section:SetTitle(NS:L(h.key)) end
		for key, r in pairs(rows) do
			if r.label then r.label:SetText(NS:L(key)) end
			if r.box then
				r.box:SetText(r.url)   -- a copy box: always its link
				r.box:SetCursorPosition(0)
			elseif r.action then
				r.button:SetText(r.value and r.value() or NS:L(key))
			elseif r.switch then
				local on = r.get() and true or false
				r.switch:SetOn(on, true)
				local needs = r.needs and r.needs()
				r.switch:SetEnabled(needs == nil)
				r.text:SetText(needs or OnOff(on))
			elseif r.status then
				r.text:SetText(r.value())
			elseif r.seg then
				for _, it in ipairs(r.items) do r.seg:SetItemText(it.id, it.text()) end
				if not r.seg:Select(r.get()) then r.seg:Clear() end
				if r.after then r.after(r) end
			elseif r.slider then
				local v = r.get()
				r.slider:SetQuiet(v)
				r.text:SetText(r.fmt(v))
			elseif r.button then
				r.button:SetText(r.value())
				if r.maxW and r.maxW > r.minW then W.FitButton(r.button, r.minW, r.maxW) end
			end
		end
		refreshing = false
		LayoutInfo()
		for _, r in ipairs(modules) do
			if not MODULE_LIVE[r.module] then r.label:SetText(NS:L("module_" .. r.module) .. " *") end
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

---`/au about`: opens the settings on the Info section (credits, licence, links). The canvas scrolls to it; the range of the
---scroll is known only once the panel is laid out, so the move is tried now and again a moment later.
function SettingsFrame:OpenInfo()
	OpenPanel()
	if not panel then return end
	if panel:IsShown() then panel:Refresh() end   -- the panel was open already: its OnShow does not run again
	local function ScrollToInfo()
		local scroll = panel.scroll
		if not scroll or not panel.info or not panel.infoTop then return end
		-- how far the content can scroll: its height less the room of the scroll frame (never past the end)
		local range = math.max(0, (tonumber(panel.content:GetHeight()) or 0) - (tonumber(scroll:GetHeight()) or 0))
		scroll:SetVerticalScroll(math.min(panel.infoTop - 4, range))
	end
	ScrollToInfo()
	if C_Timer and C_Timer.After then C_Timer.After(0.1, ScrollToInfo) end
end

---`/au about chat`: the credits and the links in the chat, where they can be selected and copied.
function SettingsFrame:PrintCredits()
	NS:Print(NS:L("info_chat_title"))
	for _, id in ipairs({ "info_made_by", "info_nebula", "info_licence", "info_fanmade" }) do NS:Print(NS:L(id)) end
	for _, link in ipairs(SettingsFrame.LINKS) do NS:Print(NS:L("opt_link_" .. link.id) .. ": " .. link.url) end
end

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
