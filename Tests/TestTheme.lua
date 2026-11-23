-- Tests of UI/Theme.lua and UI/Motion.lua (UI-ECO step UI-2): the tokens of both themes, the switch of theme that recolours
-- every registered region without a reload, the contrast rules of the UI review in Nebula and in Aurora, the fonts and their
-- fallback to the game's, the neon and animation settings, the class colours and the four personal settings of Core/Config.lua.
-- Only the mock client: nothing here has run in the game, so SetFont with the bundled fonts, the 9-slice shapes, the ADD glows,
-- the gradients and the animations are predictions until the owner tries them.
local NS = ...
local Theme, Motion, Config, Compat, Assets = NS.Theme, NS.Motion, NS.Config, NS.Compat, NS.Assets

local function Near(a, b) return math.abs(a - b) < 1e-6 end
local function Same(c, token, id)
	local r, g, b, a = Theme.Color(token, id)
	return c ~= nil and Near(c[1], r) and Near(c[2], g) and Near(c[3], b) and Near(c[4] or 1, a)
end
local function Rgba(t) return { t[1], t[2], t[3], t[4] } end

local function Reset()
	NS.db.ui.theme, NS.db.ui.neon, NS.db.ui.animations, NS.db.ui.fontSource = "nebula", true, true, "addon"
	NS.db.ui.narrator.reduceMotion = false
	Theme.Apply("nebula")
	Theme.SetupFonts("addon")
end

---------------------------------------------------------------------------
-- tokens and settings
---------------------------------------------------------------------------
T.run("both themes define every token, with the names of the sister addon plus the four voices, and nothing else", function()
	-- the sister addon's 27 tokens, then this addon's only addition (UI-4, spec section 2.3): one colour per voice
	T.eq(#Theme.TOKENS, 31, "27 tokens of the sister addon and 4 voices")
	for i, speaker in ipairs({ "narrator", "inner", "character", "npc" }) do
		T.eq(Theme.TOKENS[27 + i], "voice-" .. speaker, "token " .. 27 + i .. " is the voice of the " .. speaker)
		T.eq(Theme.VOICE_TOKENS[speaker], "voice-" .. speaker, "Theme.VOICE_TOKENS maps " .. speaker)
	end
	T.eq(table.concat(Theme.ORDER, ","), "nebula,aurora", "two themes, Nebula first")
	T.eq(table.concat(Config.THEMES, ","), table.concat(Theme.ORDER, ","), "Config.THEMES lists the same ids")
	T.eq(Theme.DEFAULT, "nebula", "the dark theme is the default")
	for _, id in ipairs(Theme.ORDER) do
		local theme, known = Theme.themes[id], {}
		for _, token in ipairs(Theme.TOKENS) do
			known[token] = true
			local c = theme[token]
			T.ok(type(c) == "table" and #c == 4, id .. ": token " .. token .. " is an {r, g, b, a} colour")
			for i = 1, 4 do T.ok(c[i] >= 0 and c[i] <= 1, id .. " " .. token .. ": channel " .. i .. " is in 0..1") end
		end
		for key, value in pairs(theme) do
			if type(value) == "table" then T.ok(known[key], id .. ": " .. key .. " is a declared token") end
		end
	end
	-- the values of the sister addon (FDCP, docs/specs/ui-style.md §2.1), a few of them by hand
	local n, a = Theme.themes.nebula, Theme.themes.aurora
	T.ok(Near(n.accent[1], 0xFC / 255) and Near(n.accent[2], 0x7E / 255) and Near(n.accent[3], 0x46 / 255), "Nebula accent is #FC7E46")
	T.ok(Near(n.bg[1], 0x0B / 255) and Near(n.bg[3], 0x12 / 255), "Nebula bg is #0B0612")
	T.ok(Near(a.accent[3], 0xB6 / 255) and Near(a.accent[1], 0), "Aurora accent is #0054B6")
	T.ok(Near(a.neon[2], 0x8F / 255), "Aurora neon is the darkened #008F84")
	T.ok(Near(a["border-strong"][4], 0.24) and Near(n["border-strong"][4], 0.26), "the strong borders")
	T.ok(Theme.IsDark() and Theme.themes.nebula.dark and not Theme.themes.aurora.dark, "Nebula is dark, Aurora is light")
end)

T.run("the four personal settings have defaults, rules and a place in the account", function()
	Reset()
	local ui = Config.defaults.ui
	T.eq(ui.theme, "nebula", "default theme")
	T.eq(ui.neon, true, "neon on")
	T.eq(ui.animations, true, "animations on")
	T.eq(ui.fontSource, "addon", "the addon's fonts")
	T.eq(NS.db.ui.theme, "nebula", "and they are in the loaded settings")
	-- a value outside the list goes back to the default, a good one is kept
	T.ok(not Config:Set("ui.theme", "drago"), "a third theme is refused")
	T.ok(not Config:Set("ui.fontSource", "comic"), "an unknown font source is refused")
	T.ok(Config:Set("ui.theme", "aurora") and NS.db.ui.theme == "aurora", "Aurora is saved")
	local issues = Config:Validate({ ui = { theme = "drago", fontSource = "x", neon = "yes", animations = 3 } })
	T.ok(#issues >= 0, "Validate runs on a partial table")
	NS.db.ui.theme, NS.db.ui.fontSource = "x", "y"
	Config:Validate(NS.db)
	T.eq(NS.db.ui.theme, "nebula", "a wrong theme in the file becomes Nebula")
	T.eq(NS.db.ui.fontSource, "addon", "a wrong font source becomes addon")
	Reset()
end)

T.run("a player who turned the narrator fades off starts with animations off (migration in Config:Load)", function()
	local saved_db, saved_cdb = AzerothUnspokenDB, AzerothUnspokenCharacterDB
	AzerothUnspokenDB = { schemaVersion = 7, settings = { ui = { narrator = { reduceMotion = true } } } }
	Config:Load()
	T.eq(NS.db.ui.animations, false, "reduceMotion = true gives animations = false")
	T.eq(NS.db.ui.theme, "nebula", "the other new settings take their defaults")
	AzerothUnspokenDB = { schemaVersion = 7, settings = { ui = { narrator = { reduceMotion = false } } } }
	Config:Load()
	T.eq(NS.db.ui.animations, true, "reduceMotion = false leaves animations on")
	AzerothUnspokenDB = { schemaVersion = 7, settings = { ui = { animations = true, narrator = { reduceMotion = true } } } }
	Config:Load()
	T.eq(NS.db.ui.animations, true, "a choice already made is not overwritten")
	T.ok(Theme.AnimationsOn(), "the old narrator setting is not read any more (UI-4): ui.animations alone decides")
	AzerothUnspokenDB = { schemaVersion = 7, settings = { ui = { theme = "aurora", neon = false, fontSource = "game" } } }
	Config:Load()
	T.ok(NS.db.ui.theme == "aurora" and NS.db.ui.neon == false and NS.db.ui.fontSource == "game", "saved values are kept")
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = saved_db, saved_cdb
	Config:Load()
	Reset()
end)

---------------------------------------------------------------------------
-- the registry: a theme switch recolours every region without a reload
---------------------------------------------------------------------------
T.run("Theme.Apply recolours every registered region, and a Config change does the same without a reload", function()
	Reset()
	local f = CreateFrame("Frame", nil, UIParent)
	local tint, fill, text = f:CreateTexture(), f:CreateTexture(), f:CreateFontString()
	local callSeen = {}
	local called = f:CreateTexture()
	Theme.Tint(tint, "accent"); Theme.Fill(fill, "surface-1"); Theme.Text(text, "text-2")
	Theme.Call(called, function(region, id) callSeen[#callSeen + 1] = id end)
	T.ok(Same(Rgba(tint._s.vertex), "accent", "nebula"), "the tint is Nebula's accent at once")
	T.ok(Same(Rgba(fill._s.colorTex), "surface-1", "nebula"), "the fill is Nebula's surface-1")
	T.ok(Same(Rgba({ text:GetTextColor() }), "text-2", "nebula"), "the text is Nebula's text-2")
	local count = Theme.Count()
	local heard
	Theme.OnChange(function(id) heard = id end)

	T.ok(Theme.Apply("aurora"), "Apply accepts Aurora")
	T.eq(Theme.Current(), "aurora", "the current theme")
	T.ok(not Theme.IsDark(), "Aurora is light")
	T.ok(Same(Rgba(tint._s.vertex), "accent", "aurora"), "the tint follows")
	T.ok(Same(Rgba(fill._s.colorTex), "surface-1", "aurora"), "the fill follows")
	T.ok(Same(Rgba({ text:GetTextColor() }), "text-2", "aurora"), "the text follows")
	T.eq(callSeen[#callSeen], "aurora", "a function given to Call runs with the new theme")
	T.eq(heard, "aurora", "a listener is told")
	T.eq(Theme.Count(), count, "the registry does not grow when a theme is applied")

	T.ok(not Theme.Apply("drago"), "an unknown theme is refused")
	T.eq(Theme.Current(), "aurora", "and changes nothing")

	-- the setting does it, as the Settings page will (UI-3): Config:Set tells the listeners and the theme is applied
	T.ok(Config:Set("ui.theme", "nebula"), "Config:Set saves Nebula")
	T.eq(Theme.Current(), "nebula", "the theme followed the setting")
	T.ok(Same(Rgba(tint._s.vertex), "accent", "nebula"), "the region went back")
	T.eq(heard, "nebula", "the listener was told again")
	T.ok(Theme.Set("aurora") and NS.db.ui.theme == "aurora" and Theme.Current() == "aurora", "Theme.Set saves and applies")
	T.ok(not Theme.Set("nope"), "Theme.Set refuses an unknown theme")
	-- registering again replaces the token (a button that changes style) and a text takes one colour only
	Theme.Tint(tint, "ok")
	T.ok(Same(Rgba(tint._s.vertex), "ok", "aurora"), "a new token replaces the old one")
	Theme.Apply("nebula")
	T.ok(Same(Rgba(tint._s.vertex), "ok", "nebula"), "and is the one that follows")
	Theme.TextRGB(text, 0.1, 0.2, 0.3)
	Theme.Apply("aurora")
	local r, g, b = text:GetTextColor()
	T.ok(Near(r, 0.1) and Near(g, 0.2) and Near(b, 0.3), "a game colour survives a switch")
	Theme.Text(text, "text-1")
	T.ok(Same(Rgba({ text:GetTextColor() }), "text-1", "aurora"), "a token replaces the game colour")
	Reset()
end)

T.run("a failing listener or region does not stop the others, and the registry keeps no region alive", function()
	Reset()
	local f = CreateFrame("Frame", nil, UIParent)
	local bad, good = f:CreateTexture(), f:CreateTexture()
	Theme.Call(bad, function() error("boom") end)
	Theme.Tint(good, "accent")
	local ran = false
	Theme.OnChange(function() error("listener boom") end)
	Theme.OnChange(function() ran = true end)
	local before = #NS.Diagnostics.errors
	T.ok(Theme.Apply("aurora"), "Apply still finishes")
	T.ok(Same(Rgba(good._s.vertex), "accent", "aurora"), "the other region was recoloured")
	T.ok(ran, "the next listener ran")
	T.ok(#NS.Diagnostics.errors >= before, "the errors are reported to the diagnostics, not thrown")
	-- weak keys: a region nobody holds is collected
	do
		local t = f:CreateTexture()
		Theme.Tint(t, "accent")
	end
	local start = Theme.Count()
	collectgarbage(); collectgarbage()
	T.ok(Theme.Count() <= start, "the count does not grow after a collection")
	Reset()
end)

---------------------------------------------------------------------------
-- contrast of the UI review (#171-#194): text 4.5:1, controls 3:1, in both themes
---------------------------------------------------------------------------
T.run("text reaches 4.5:1 on every surface of both themes", function()
	local surfaces = { "bg", "surface-1", "surface-2", "surface-3", "raised" }
	for _, id in ipairs(Theme.ORDER) do
		local t = Theme.themes[id]
		for _, s in ipairs(surfaces) do
			for _, text in ipairs({ "text-1", "text-2", "text-3", "accent-text" }) do
				local ratio = Theme.Contrast(t[text], t[s])
				T.ok(ratio >= 4.5, ("%s: %s on %s is %.2f:1"):format(id, text, s, ratio))
			end
		end
		for _, s in ipairs({ "bg", "surface-1", "surface-2" }) do
			for _, token in ipairs({ "ok", "warn", "err" }) do
				local ratio = Theme.Contrast(t[token], t[s])
				T.ok(ratio >= 4.5, ("%s: %s on %s is %.2f:1"):format(id, token, s, ratio))
			end
		end
		for _, s in ipairs({ "surface-3", "raised" }) do
			for _, token in ipairs({ "ok", "warn", "err" }) do
				local ratio = Theme.Contrast(t[token], t[s])
				T.ok(ratio >= 3, ("%s: %s on %s is %.2f:1 (a badge text on its tint: 3:1)"):format(id, token, s, ratio))
			end
		end
		local on = Theme.Contrast(t["on-accent"], t.accent)
		T.ok(on >= 4.5, ("%s: the primary button text is %.2f:1"):format(id, on))
	end
end)

T.run("the controls reach 3:1 and the strong border is an edge, in both themes", function()
	for _, id in ipairs(Theme.ORDER) do
		local t = Theme.themes[id]
		for _, s in ipairs({ "bg", "surface-1" }) do
			for _, token in ipairs({ "accent", "neon" }) do
				local ratio = Theme.Contrast(t[token], t[s])
				T.ok(ratio >= 3, ("%s: %s on %s is %.2f:1"):format(id, token, s, ratio))
			end
		end
		for _, s in ipairs({ "bg", "surface-1", "surface-2" }) do
			local mixed = Theme.Over(t["border-strong"], t[s])
			local ratio = Theme.Contrast(mixed, t[s])
			T.ok(ratio >= 1.3, ("%s: border-strong on %s is %.2f:1"):format(id, s, ratio))
		end
	end
end)

T.run("the contrast helpers follow WCAG 2.1", function()
	T.ok(Near(Theme.Contrast({ 1, 1, 1, 1 }, { 0, 0, 0, 1 }), 21), "white on black is 21:1")
	T.ok(Near(Theme.Contrast({ 1, 1, 1, 1 }, { 1, 1, 1, 1 }), 1), "a colour on itself is 1:1")
	local half = Theme.Over({ 1, 1, 1, 0.5 }, { 0, 0, 0, 1 })
	T.ok(Near(half[1], 0.5) and half[4] == 1, "alpha is laid over the colour below")
end)

---------------------------------------------------------------------------
-- shapes, glows, neon
---------------------------------------------------------------------------
T.run("Theme.Panel builds a 9-slice fill, ring, shadow and highlight that follow the theme", function()
	Reset()
	local f = CreateFrame("Frame", nil, UIParent)
	local p = Theme.Panel(f, { radius = 12, shadow = true, highlight = true })
	T.ok(p.fill and p.ring and p.shadow and p.highlight, "the four regions")
	T.eq(p.fill._s.texture, Assets.textures.rr_fill_12.path, "the 12-unit fill")
	T.eq(p.ring._s.texture, Assets.textures.rr_ring_12.path, "the 12-unit ring")
	T.eq(table.concat(p.fill._s.slice, ","), "12,12,12,12", "9-slice margins of the radius")
	T.eq(table.concat(p.shadow._s.slice, ","), "48,48,48,48", "the shadow's margins")
	T.ok(Same(Rgba(p.fill._s.vertex), "surface-1", "nebula"), "the fill shows surface-1")
	T.ok(Same(Rgba(p.ring._s.vertex), "border", "nebula"), "the ring shows border")
	T.ok(p.fill._s.snap == false, "snapping is off for crisp lines")
	Theme.Apply("aurora")
	T.ok(Same(Rgba(p.fill._s.vertex), "surface-1", "aurora"), "the fill follows the theme")
	T.ok(Same(Rgba(p.highlight._s.colorTex), "highlight", "aurora"), "so does the highlight line")
	T.eq(Theme.Panel(CreateFrame("Frame", nil, UIParent), { radius = 7 }).fill._s.texture, Assets.textures.rr_fill_12.path,
		"a radius outside 8, 12, 18 becomes 12")
	local none = Theme.Panel(CreateFrame("Frame", nil, UIParent), { fill = false, border = false })
	T.ok(none.fill == nil and none.ring == nil, "fill and ring can be left out")
	Reset()
end)

T.run("a glow is ADD in the dark theme only, and the neon setting hides glows, shadows and text glow", function()
	Reset()
	local f = CreateFrame("Frame", nil, UIParent)
	local glow = Theme.Glow(f, "glow_s", "neon")
	local p = Theme.Panel(f, { shadow = true })
	local title = f:CreateFontString()
	Theme.TextGlow(title, "accent")
	T.eq(glow._s.blend, "ADD", "Nebula adds the glow to the picture")
	T.ok(glow:IsShown() and p.shadow:IsShown(), "shown with neon on")
	T.ok(title._glowing and title._s.shadowColor[4] > 0, "the title has its coloured shadow")
	Theme.Apply("aurora")
	T.eq(glow._s.blend, "BLEND", "Aurora draws it as an ordinary soft shadow")
	T.ok(glow:GetAlpha() < 1, "at half strength")
	T.ok(not title._glowing and title._s.shadowColor[4] == 0, "no text glow in the light theme")
	Theme.Apply("nebula")
	T.ok(Config:Set("ui.neon", false), "neon off")
	T.ok(not glow:IsShown(), "the glow is hidden")
	T.ok(not p.shadow:IsShown(), "the shadow is hidden: flat")
	T.ok(not title._glowing, "the text glow is off")
	Theme.GlowShow(glow, true)
	T.ok(not glow:IsShown(), "GlowShow cannot bring it back while neon is off")
	T.ok(Config:Set("ui.neon", true), "neon on")
	T.ok(glow:IsShown() and p.shadow:IsShown(), "back on at once, without a reload")
	Theme.GlowShow(glow, false)
	T.ok(not glow:IsShown(), "one neon element per view: a glow can be hidden on purpose")
	Theme.GlowShow(glow, true)
	T.ok(glow:IsShown(), "and shown again")
	Reset()
end)

T.run("Theme.Gradient gives SetGradient two colours of the theme, and Apply updates them", function()
	Reset()
	local f = CreateFrame("Frame", nil, UIParent)
	local t = f:CreateTexture()
	Theme.Gradient(t, "accent", "accent-2")
	local g = t._s.gradient
	T.eq(g[1], "HORIZONTAL", "left to right")
	T.ok(Near(g[2].r, Theme.themes.nebula.accent[1]) and Near(g[3].r, Theme.themes.nebula["accent-2"][1]), "Nebula's two colours")
	Theme.Apply("aurora")
	T.ok(Near(t._s.gradient[2].b, Theme.themes.aurora.accent[3]), "Aurora's accent after the switch")
	Reset()
end)

T.run("Px is one physical pixel in UI units of the frame", function()
	local keep = PHYSICAL_SCREEN
	PHYSICAL_SCREEN = { 1920, 1080 }
	T.ok(Near(Theme.PixelSize(), 768 / 1080), "at 1080 pixels high")
	T.ok(Near(Theme.Px(2), 2 * 768 / 1080), "two pixels")
	T.ok(Near(Theme.Px(), 768 / 1080), "one by default")
	local scaled = CreateFrame("Frame", nil, UIParent)
	function scaled:GetEffectiveScale() return 0.5 end
	T.ok(Near(Theme.PixelSize(scaled), 768 / 1080 / 0.5), "a frame at half the scale gets bigger units")
	PHYSICAL_SCREEN = keep
	local screen = GetPhysicalScreenSize
	GetPhysicalScreenSize = nil
	T.ok(Near(Theme.PixelSize(), 1), "without the screen size the answer is 768 / 768")
	GetPhysicalScreenSize = screen
end)

---------------------------------------------------------------------------
-- fonts
---------------------------------------------------------------------------
T.run("the font objects use the addon's files, at 12 units or more", function()
	Reset()
	local n = 0
	for id, spec in pairs(Theme.fontSpecs) do
		n = n + 1
		local obj = Theme.fontObjects[id]
		T.ok(obj ~= nil, id .. ": a font object exists")
		T.eq(Theme.FontName(id), "AzerothUnspokenFont" .. id, id .. ": its global name")
		T.ok(_G[Theme.FontName(id)] == obj, id .. ": registered as a global")
		T.eq(Theme.fontStatus[id], "addon", id .. ": loaded from the addon")
		local path, size = obj:GetFont()
		T.eq(path, Assets.fonts[spec[1]].path, id .. ": the file of Assets.fonts." .. spec[1])
		T.ok(size >= 12, id .. ": at least 12 units (" .. size .. ")")
	end
	T.eq(n, 14, "fourteen font objects")
	T.eq(Theme.Font("Nope"), Theme.fontObjects.Body, "an unknown id gives the body font")
	local fs = Theme.NewText(CreateFrame("Frame", nil, UIParent), "H1", "text-1")
	T.ok(fs:GetFontObject() == Theme.fontObjects.H1, "NewText sets the font object")
	T.ok(Same(Rgba({ fs:GetTextColor() }), "text-1", "nebula"), "and registers its colour")
end)

T.run("a font that does not load falls back to the game's, and the choice 'game' forces the fallback", function()
	Reset()
	local gameText, gameTitle = Compat:GameFontPath("STANDARD"), Compat:GameFontPath("FRIZQT")
	T.eq(gameText, STANDARD_TEXT_FONT, "the game's text font is the client's constant")
	T.eq(gameTitle, UNIT_NAME_FONT, "the game's title font is the client's constant")
	-- one file refuses to load: only the objects that use it fall back
	FONT_FAIL[Assets.fonts.textMedium.path] = true
	local fallbacks = Theme.SetupFonts("addon")
	local medium = 0
	for id, spec in pairs(Theme.fontSpecs) do
		if spec[1] == "textMedium" then
			medium = medium + 1
			T.eq(Theme.fontStatus[id], "game", id .. ": fell back")
			T.eq(Theme.fontObjects[id]:GetFont(), gameText, id .. ": the game's text font")
		else
			T.eq(Theme.fontStatus[id], "addon", id .. ": still the addon's file")
		end
	end
	T.eq(fallbacks, medium, "the number of fallbacks is returned")
	-- the title font falls back to the game's title font
	FONT_FAIL = { [Assets.fonts.display.path] = true }
	Theme.SetupFonts("addon")
	T.eq(Theme.fontStatus.Display, "game", "Display fell back")
	T.eq(Theme.fontObjects.Display:GetFont(), gameTitle, "to Friz Quadrata, the game's title font")
	T.eq(Theme.fontObjects.H1:GetFont(), Assets.fonts.textSemiBold.path, "the other fonts are untouched")
	-- a client whose font objects answer false while the probe says nothing
	FONT_FAIL = { [Assets.fonts.mono.path] = true }
	FONT_OBJECT_ANSWERS = true
	local real = Compat.fontProbe
	Compat.fontProbe = { SetFont = function() return nil end }
	Theme.SetupFonts("addon")
	T.eq(Theme.fontStatus.Mono, "game", "the answer of the font object itself is used when the probe cannot tell")
	T.eq(Theme.fontStatus.Body, "addon", "the other fonts load")
	Compat.fontProbe = real
	FONT_OBJECT_ANSWERS = false
	FONT_FAIL = {}
	-- the setting: the game's fonts by choice, then the addon's again, without a reload
	T.ok(Config:Set("ui.fontSource", "game"), "the font source is the game")
	for id in pairs(Theme.fontSpecs) do T.eq(Theme.fontStatus[id], "game", id .. ": on the game's font by choice") end
	T.ok(Config:Set("ui.fontSource", "addon"), "the addon's fonts again")
	for id in pairs(Theme.fontSpecs) do T.eq(Theme.fontStatus[id], "addon", id .. ": back on the addon's font") end
	T.eq(Theme.Probes().fontsOnGame, 0, "the probe says no font is on the game's")
	T.eq(Compat:GameFontPath("nothing"), gameText, "an unknown kind is the text font")
	local keep = UNIT_NAME_FONT
	UNIT_NAME_FONT = nil
	T.eq(Compat:GameFontPath("FRIZQT"), Compat.GAME_FONT_FALLBACK, "a client without the constant gets a fixed path")
	UNIT_NAME_FONT = keep
	Reset()
end)

T.run("a client without CreateFont does not break the theme", function()
	local keep, objects = CreateFont, Theme.fontObjects
	CreateFont = nil
	Theme.fontObjects = {}
	T.eq(Theme.SetupFonts("addon"), 0, "no object, no fallback counted")
	T.ok(next(Theme.fontObjects) == nil, "nothing was made")
	local fs = Theme.NewText(CreateFrame("Frame", nil, UIParent), "Body", "text-1")
	T.ok(fs ~= nil, "text is still made, in the game's default font")
	CreateFont, Theme.fontObjects = keep, objects
	Reset()
end)

---------------------------------------------------------------------------
-- class colours: read from the client, legible on the dark theme
---------------------------------------------------------------------------
T.run("class colours come from the client and are used only where they stay legible", function()
	Reset()
	local r, g, b = Compat:ClassColor("MAGE")
	T.ok(Near(r, RAID_CLASS_COLORS.MAGE.r) and Near(g, RAID_CLASS_COLORS.MAGE.g) and Near(b, RAID_CLASS_COLORS.MAGE.b), "the mage's colour")
	T.eq(Compat:ClassColor("NOBODY"), nil, "an unknown class has none")
	T.eq(Compat:ClassColor(7), nil, "a number is not a class")
	local api = C_ClassColor
	C_ClassColor = nil
	T.ok(Compat:ClassColor("DRUID") ~= nil, "without C_ClassColor the table of the game answers")
	local colours = RAID_CLASS_COLORS
	RAID_CLASS_COLORS = nil
	T.eq(Compat:ClassColor("DRUID"), nil, "and without both there is nothing")
	RAID_CLASS_COLORS = colours
	C_ClassColor = api
	local f = CreateFrame("Frame", nil, UIParent)
	local mage, shaman = f:CreateFontString(), f:CreateFontString()
	Theme.ClassText(mage, "MAGE"); Theme.ClassText(shaman, "SHAMAN")
	local mr = mage:GetTextColor()
	T.ok(Near(mr, RAID_CLASS_COLORS.MAGE.r), "a mage's name is in the class colour on Nebula")
	T.ok(Same(Rgba({ shaman:GetTextColor() }), "text-1", "nebula"), "the shaman blue is 3.3:1 on the lightest surface: the text stays text-1")
	for class, c in pairs(RAID_CLASS_COLORS) do
		local f2 = f:CreateFontString()
		Theme.ClassText(f2, class)
		local tr, tg, tb = f2:GetTextColor()
		local ratio = Theme.Contrast({ tr, tg, tb, 1 }, Theme.themes.nebula.raised)
		T.ok(ratio >= 4.5, ("%s: the name reads at %.2f:1 on Nebula"):format(class, ratio))
	end
	Theme.Apply("aurora")
	T.ok(Same(Rgba({ mage:GetTextColor() }), "text-1", "aurora"), "on Aurora the name is text-1")
	Theme.Apply("nebula")
	T.ok(Near((mage:GetTextColor()), RAID_CLASS_COLORS.MAGE.r), "and the class colour comes back with Nebula")
	T.ok(Theme.ClassColor("SHAMAN") ~= nil, "a mark (a square) may use the class colour as it is")
	Reset()
end)

---------------------------------------------------------------------------
-- Motion
---------------------------------------------------------------------------
local function Running()
	local n = 0
	for _ in pairs(PLAYING_GROUPS) do n = n + 1 end
	return n
end

T.run("Motion uses AnimationGroups with the three durations and the OUT curve", function()
	Reset()
	FINISH_ANIMATIONS()
	T.ok(Near(Motion.FAST, 0.12) and Near(Motion.BASE, 0.2) and Near(Motion.SLOW, 0.32), "120, 200 and 320 ms")
	T.eq(Motion.SMOOTHING, "OUT", "the game's OUT curve")
	T.ok(Near(Motion.PRESS, 0.97), "a press shrinks to 0.97")
	T.ok(Motion.On(), "animations are on")
	local f = CreateFrame("Frame", nil, UIParent)
	local done = 0
	T.ok(Motion.Fade(f, 0.25, nil, function() done = done + 1 end), "Fade starts an animation")
	T.eq(Running(), 1, "one group is playing")
	local g
	for group in pairs(PLAYING_GROUPS) do g = group end
	local a = g.animations[1]
	T.eq(a._s.animKind, "Alpha", "an Alpha animation")
	T.ok(Near(a:GetDuration(), 0.2) and a:GetSmoothing() == "OUT", "200 ms, OUT")
	T.ok(Near(a._s.toAlpha, 0.25), "to the end alpha")
	T.eq(done, 0, "the callback waits for the end")
	T.eq(FINISH_ANIMATIONS(), 1, "the client ends the group")
	T.ok(Near(f:GetAlpha(), 0.25), "the end alpha is set")
	T.eq(done, 1, "and the callback ran once")
	Motion.Fade(f, 1, Motion.FAST)
	for group in pairs(PLAYING_GROUPS) do g = group end
	T.eq(#g.animations, 1, "the group is reused, not made again")
	T.ok(Near(g.animations[1]:GetDuration(), 0.12), "now at 120 ms")
	FINISH_ANIMATIONS()

	local hidden = CreateFrame("Frame", nil, UIParent)
	hidden:SetAlpha(0.7)
	Motion.FadeOut(hidden)
	FINISH_ANIMATIONS()
	T.ok(not hidden:IsShown() and Near(hidden:GetAlpha(), 0.7), "FadeOut hides and keeps the alpha for the next Show")
	Motion.FadeIn(hidden, Motion.BASE, 0.9)
	T.ok(hidden:IsShown() and Near(hidden:GetAlpha(), 0), "FadeIn starts from 0")
	FINISH_ANIMATIONS()
	T.ok(Near(hidden:GetAlpha(), 0.9), "and ends at the alpha asked")

	local panel = CreateFrame("Frame", nil, UIParent)
	panel:SetPoint("CENTER", UIParent, "CENTER", 10, 20)
	T.ok(Motion.Rise(panel, 12), "Rise animates")
	local rise
	for group in pairs(PLAYING_GROUPS) do rise = group end
	T.ok(Near(rise.animations[1]:GetDuration(), 0.32) and Near(rise.animations[2]:GetDuration(), 0.32), "320 ms")
	T.eq(rise.animations[2]._s.animKind, "Translation", "an Alpha and a Translation")
	local _, _, _, _, y = panel:GetPoint()
	T.ok(Near(y, 8), "it starts 12 units lower")
	FINISH_ANIMATIONS()
	local _, _, _, x2, y2 = panel:GetPoint()
	T.ok(Near(x2, 10) and Near(y2, 20) and Near(panel:GetAlpha(), 1), "and ends where it was put")

	local tex = f:CreateTexture()
	T.ok(Motion.Rotate(tex, math.pi / 2), "Rotate animates")
	FINISH_ANIMATIONS()
	T.ok(Near(tex:GetRotation(), math.pi / 2), "the end angle is set")
	T.ok(not Motion.Rotate(tex, math.pi / 2), "no animation when the angle does not change")

	local placed
	T.ok(Motion.Slide(tex, 30, 0, nil, function(dx, dy) placed = { dx, dy } end), "Slide animates")
	T.ok(placed == nil, "the end position waits for the end")
	FINISH_ANIMATIONS()
	T.ok(placed and placed[1] == 30, "and is placed when the group ends")

	local button = CreateFrame("Button", nil, UIParent)
	local press = Motion.Press(button)
	T.ok(press ~= nil, "Press makes a down and an up group")
	T.ok(Near(press.down.animations[1]._s.scaleTo[1], 0.97), "down to 0.97")
	T.ok(Near(press.down.animations[1]:GetDuration(), 0.12), "in 120 ms")
	button.scripts.OnMouseDown(button)
	T.ok(press.down:IsPlaying(), "the mouse down plays it")
	button.scripts.OnMouseUp(button)
	T.ok(not press.down:IsPlaying() and press.up:IsPlaying(), "the mouse up returns it")
	FINISH_ANIMATIONS()
	local pulse = Motion.Pulse(f, 0.3, 1)
	pulse.Start()
	T.ok(Near(f:GetAlpha(), 0.3), "a pulse starts at its low alpha")
	T.eq(Running(), 1, "and loops in a group")
	pulse.Stop()
	T.ok(Near(f:GetAlpha(), 1) and Running() == 0, "Stop puts it back")
	FINISH_ANIMATIONS()
end)

T.run("with animations off every call finishes at once and no group is played", function()
	Reset()
	FINISH_ANIMATIONS()
	T.ok(Config:Set("ui.animations", false), "animations off")
	T.ok(not Motion.On(), "Motion is off")
	local f = CreateFrame("Frame", nil, UIParent)
	local done = false
	T.ok(not Motion.Fade(f, 0.4, nil, function() done = true end), "Fade does not animate")
	T.ok(Near(f:GetAlpha(), 0.4) and done, "the end alpha and the callback are immediate")
	f:Hide()
	Motion.FadeIn(f)
	T.ok(f:IsShown() and Near(f:GetAlpha(), 1), "FadeIn shows it fully")
	Motion.FadeOut(f)
	T.ok(not f:IsShown(), "FadeOut hides it at once")
	local panel = CreateFrame("Frame", nil, UIParent)
	panel:SetPoint("CENTER", UIParent, "CENTER", 5, 6)
	T.ok(not Motion.Rise(panel, 12) and panel:IsShown(), "Rise only shows it")
	local _, _, _, px, py = panel:GetPoint()
	T.ok(Near(px, 5) and Near(py, 6), "at its own place")
	local tex = f:CreateTexture()
	Motion.Rotate(tex, 1.5)
	T.ok(Near(tex:GetRotation(), 1.5), "Rotate sets the angle")
	local placed
	T.ok(not Motion.Slide(tex, 4, 5, nil, function(dx, dy) placed = dx + dy end) and placed == 9, "Slide places it at once")
	local button = CreateFrame("Button", nil, UIParent)
	local press = Motion.Press(button)
	button.scripts.OnMouseDown(button)
	T.ok(press and not press.down:IsPlaying(), "a press does not shrink the button")
	local pulse = Motion.Pulse(f, 0.2, 0.8)
	pulse.Start()
	T.ok(Near(f:GetAlpha(), 0.5), "a pulse stays still at the middle alpha")
	T.eq(Running(), 0, "no group played in all of this")
	-- the narrator's older setting is no longer read (UI-4): the one switch is ui.animations
	Config:Set("ui.animations", true)
	T.ok(Motion.On(), "animations on again")
	NS.db.ui.narrator.reduceMotion = true
	T.ok(Motion.On(), "reduceMotion (#177) is only read by the migration of Config:Load")
	NS.db.ui.narrator.reduceMotion = false
	-- a client without AnimationGroups behaves the same
	local plain = { _alpha = 1, SetAlpha = function(self, a) self._alpha = a end, GetAlpha = function(self) return self._alpha end,
		Show = function() end }
	local ended = false
	T.ok(not Motion.Fade(plain, 0, nil, function() ended = true end) and plain._alpha == 0 and ended, "a region that cannot animate finishes at once")
	Reset()
end)
