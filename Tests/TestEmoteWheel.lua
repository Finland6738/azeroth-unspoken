-- Tests of the emote wheel (ADR 0059): the geometry (angle, slice, dead zone, cursor scale, the place on the screen), the
-- settings and their defaults, the client's emote list and its fallback, the locale keys, the key binding (never taken by
-- itself, never in combat), the wheel held and released, the watchdog, the closings, the motion, the sounds, the themes, the
-- Settings section and /au wheel. Only the mock client: the binding's key state, the emotes, the sounds, the cursor scale,
-- the look and the timings have not been tried in the game.
local NS = ...
local Wheel, M, Emotes, Config, Theme = NS.EmoteWheel, NS.EmoteWheel.Math, NS.Emotes, NS.Config, NS.Theme
local PI, TAU = math.pi, 2 * math.pi

local function Near(a, b, eps) return math.abs(a - b) < (eps or 1e-6) end
local function Clear(t) for k in pairs(t) do t[k] = nil end end

local function Reset()
	Wheel:Cancel(true)
	NS.db.enabled = true
	NS.db.ui.animations = true
	NS.db.ui.wheel = Config.DeepCopy(Config.defaults.ui.wheel)
	Clear(EMOTES_DONE); Clear(SOUNDS_PLAYED); Clear(BINDINGS); Clear(HELD)
	CURSOR[1], CURSOR[2] = 512, 384
	P.combat = false
	FINISH_ANIMATIONS()
	Theme.Apply("nebula")
end

-- moves the cursor to an offset from the wheel's centre and lets one frame pass
local function MoveTo(dx, dy)
	local st = Wheel.state
	CURSOR[1], CURSOR[2] = st.cx + dx, st.cy + dy
	Wheel.frame.scripts.OnUpdate(Wheel.frame, 0.016)
end

---------------------------------------------------------------------------
-- the geometry
---------------------------------------------------------------------------
T.run("the angle is 0 at the top and grows clockwise, always in [0, 2π)", function()
	T.ok(Near(M.Angle(0, 1), 0), "up: 0")
	T.ok(Near(M.Angle(1, 0), PI / 2), "right: π/2")
	T.ok(Near(M.Angle(0, -1), PI), "down: π")
	T.ok(Near(M.Angle(-1, 0), 3 * PI / 2), "left: 3π/2")
	T.ok(Near(M.Angle(-0.001, 1), TAU - 0.001, 1e-5), "just left of the top: just under 2π, never negative")
	for _, d in ipairs({ { 3, 4 }, { -3, 4 }, { -3, -4 }, { 3, -4 }, { 0, 0 } }) do
		local a = M.Angle(d[1], d[2])
		T.ok(a >= 0 and a < TAU, "in range for " .. d[1] .. "," .. d[2])
	end
end)

T.run("the slices are centred on their angle, slice 1 at the top, and the 0/360 boundary is slice 1", function()
	for n = 4, 12 do
		local w = TAU / n
		for i = 1, n do
			T.eq(M.SliceOf(M.SliceAngle(i, n), n), i, n .. " slices: the middle of slice " .. i)
			T.eq(M.SliceOf((M.SliceAngle(i, n) + w / 2 - 1e-6) % TAU, n), i, n .. " slices: the end of slice " .. i)
			T.eq(M.SliceOf((M.SliceAngle(i, n) - w / 2 + 1e-6) % TAU, n), i, n .. " slices: the start of slice " .. i)
		end
		T.eq(M.SliceOf(TAU - 1e-9, n), 1, n .. " slices: just under 360 degrees is slice 1")
		T.eq(M.SliceOf(0, n), 1, n .. " slices: 0 degrees is slice 1")
	end
	-- eight slices: 45 degrees each; 22.5 degrees is the boundary of slices 1 and 2
	T.eq(M.SliceOf(math.rad(22), 8), 1, "22 degrees: slice 1")
	T.eq(M.SliceOf(math.rad(23), 8), 2, "23 degrees: slice 2")
	T.eq(M.SliceOf(math.rad(338), 8), 1, "338 degrees: slice 1")
	T.eq(M.SliceOf(math.rad(337), 8), 8, "337 degrees: slice 8")
	T.eq(M.SliceOf(math.rad(180), 8), 5, "straight down: slice 5")
end)

T.run("the dead zone cancels near the centre; out of it the direction alone decides", function()
	T.eq(M.Pick(0, 29.9, 8, 30), nil, "inside the dead zone: nothing")
	T.eq(M.Pick(20, 20, 8, 30), nil, "28 units away, diagonal: still inside")
	T.eq(M.Pick(0, 30, 8, 30), 1, "on its edge: the slice above")
	T.eq(M.Pick(0, 900, 8, 30), 1, "far beyond the wheel: still the slice in that direction")
	T.eq(M.Pick(100, 0, 8, 30), 3, "to the right: slice 3 of 8")
	T.eq(M.Pick(-100, 0, 4, 30), 4, "to the left: slice 4 of 4")
	T.eq(M.Pick(0, 0, 8, 0), 1, "no dead zone: the centre counts as the top")
end)

T.run("the cursor in UI units, the place of a slice and the wheel kept on the screen", function()
	local x, y = M.ToUI(900, 600, 0.75)
	T.ok(Near(x, 1200) and Near(y, 800), "pixels divided by the effective scale")
	x, y = M.ToUI(900, 600, 1.5)
	T.ok(Near(x, 600) and Near(y, 400), "a larger scale")
	x, y = M.ToUI(900, 600, 0)
	T.ok(Near(x, 900) and Near(y, 600), "a broken scale counts as 1")
	x, y = M.ToUI(900, 600, 0 / 0)
	T.ok(Near(x, 900), "NaN counts as 1")
	x, y = M.Polar(M.SliceAngle(3, 8), 100)
	T.ok(Near(x, 100) and Near(y, 0, 1e-9), "slice 3 of 8 sits to the right")
	x, y = M.Clamp(10, 760, 140, 1024, 768)
	T.ok(Near(x, 140) and Near(y, 628), "near a corner: moved in by the radius")
	x, y = M.Clamp(500, 300, 140, 1024, 768)
	T.ok(Near(x, 500) and Near(y, 300), "in the middle: unchanged")
	x, y = M.Clamp(10, 10, 400, 600, 2000)
	T.ok(Near(x, 300) and Near(y, 400), "a screen narrower than the wheel: centred on that side")
	T.eq(M.Radius(8), 140, "eight slices: radius 140")
	T.eq(M.Radius(12), 192, "twelve slices: a wider wheel")
end)

---------------------------------------------------------------------------
-- settings, locale keys, the binding
---------------------------------------------------------------------------
T.run("the settings have defaults and rules, and a broken value goes back to its default", function()
	local d = Config.defaults.ui.wheel
	T.eq(d.slices, 8, "eight slices"); T.eq(d.labels, true, "labels on"); T.eq(d.deadZone, 30, "dead zone 30")
	T.eq(d.holdDelay, 0, "opens on press"); T.eq(d.sounds, true, "sounds on")
	T.eq(#d.emotes, 12, "twelve slices of emotes")
	for i, t in ipairs(Emotes.DEFAULTS) do T.eq(d.emotes[i], t, "slice " .. i .. " is " .. t) end
	Reset()
	local w = NS.db.ui.wheel
	w.slices, w.deadZone, w.holdDelay, w.labels = 20, 3, 9, "yes"
	w.emotes[3] = "dance!"
	w.emotes[4] = 42
	Config:Validate(NS.db)
	T.eq(w.slices, 12, "slices at most 12"); T.eq(w.deadZone, 16, "dead zone at least 16")
	T.eq(w.holdDelay, 0.5, "hold delay at most 0.5 s"); T.eq(w.labels, true, "a wrong type: the default")
	T.eq(w.emotes[3], nil, "a malformed token is dropped")
	T.eq(Emotes:SliceToken(3), "BOW", "and the slice shows its default")
	T.eq(Emotes:SliceToken(4), "CHEER", "a number is dropped too")
	T.ok(Config:Set("ui.wheel.slices", 4), "Config:Set works on the wheel")
	T.eq(Emotes:Slices(), 4, "four slices")
	Reset()
end)

T.run("every default emote, the binding and the wheel's texts have their English and Italian words", function()
	local en, it = NS.languages.en.ui, NS.languages.it.ui
	for _, t in ipairs(Emotes.DEFAULTS) do
		T.ok(type(en["emote_" .. t]) == "string" and type(it["emote_" .. t]) == "string", t .. ": a name in both languages")
	end
	for _, k in ipairs({ "wheel_cancel", "opt_section_wheel", "opt_wheel_key", "opt_wheel_key_tip", "help_wheel", "wheel_usage" }) do
		T.ok(en[k] and it[k] and en[k] ~= it[k], k .. ": in English and in Italian")
	end
	T.ok(type(BINDING_NAME_AZEROTHUNSPOKEN_WHEEL) == "string", "the binding has a name in the Key Bindings")
	T.ok(type(AzerothUnspoken_EmoteWheel) == "function", "the binding's handler exists")
	NS.db.locale = "en"
	T.eq(Emotes:Label("DANCE"), "Dance", "English")
	NS.db.locale = "it"
	T.eq(Emotes:Label("DANCE"), "Balla", "Italian")
	T.eq(Emotes:Label("FORTHEALLIANCE"), "forthealliance", "an emote with no key: the client's own command")
	T.eq(Emotes:Label("XYZZY"), "XYZZY", "an emote the client does not know: its token")
end)

T.run("the emote list comes from the client, with every command, and a built-in list when the client has none", function()
	Emotes:Reset()
	local list, fromClient = Emotes:List()
	T.ok(fromClient, "read from the client")
	T.eq(#list, 15, "every EMOTE<n>_TOKEN, across the gap in the numbers")
	T.ok(Emotes:Knows("FORTHEALLIANCE"), "an emote the built-in list lacks: the client adds it")
	T.eq(Emotes:Resolve("/lol"), "LAUGH", "a second command")
	T.eq(Emotes:Resolve("Thanks"), "THANK", "a command without its slash, any case")
	T.eq(Emotes:Resolve("dance"), "DANCE", "the usual command")
	T.eq(Emotes:Resolve("FARTS"), nil, "an emote the client does not list")
	T.eq(Emotes:Command("BYE"), "/bye", "the first command")
	T.eq(Emotes:Step("WAVE", 1), "FORTHEALLIANCE", "the next of the list")
	T.eq(Emotes:Step("FORTHEALLIANCE", 1), "AGREE", "and around")
	T.eq(Emotes:Step("AGREE", -1), "FORTHEALLIANCE", "the previous one")
	-- a client with no emote strings
	local saved = {}
	for k, v in pairs(_G) do
		if type(k) == "string" and k:match("^EMOTE%d+_") then saved[k] = v; _G[k] = nil end
	end
	Emotes:Reset()
	list, fromClient = Emotes:List()
	T.ok(not fromClient, "nothing from the client")
	T.eq(#list, #Emotes.FALLBACK, "the built-in list")
	for _, t in ipairs(Emotes.DEFAULTS) do T.ok(Emotes:Knows(t), t .. " is in the built-in list") end
	T.eq(Emotes:Resolve("dance"), "DANCE", "a token still resolves")
	for k, v in pairs(saved) do _G[k] = v end
	Emotes:Reset()
end)

T.run("an emote is played with PerformEmote, or DoEmote when the client has only that", function()
	Reset()
	T.ok(Emotes:Perform("DANCE"), "played")
	T.eq(EMOTES_DONE[1], "DANCE", "through C_ChatInfo.PerformEmote")
	local perform = C_ChatInfo.PerformEmote
	C_ChatInfo.PerformEmote = nil
	T.ok(Emotes:Perform("MOO"), "played")
	T.eq(EMOTES_DONE[2], "DoEmote:MOO", "through DoEmote")
	C_ChatInfo.PerformEmote = function() error("refused") end
	T.ok(Emotes:Perform("BOW"), "an error of PerformEmote: DoEmote is tried")
	T.eq(EMOTES_DONE[3], "DoEmote:BOW", "and plays it")
	C_ChatInfo.PerformEmote = perform
	T.ok(not Emotes:Perform("not a token"), "a malformed token is never played")
end)

T.run("the key ships unbound; the middle button is bound only on request, never in combat, and given back", function()
	Reset()
	T.eq(#Emotes:BoundKeys(), 0, "no key at first")
	T.ok(not Emotes:MiddleBound(), "the middle button is not the wheel's")
	P.combat = true
	T.eq(Emotes:BindMiddleButton(), "combat", "in combat: refused, before the client is asked")
	T.eq(BINDINGS.BUTTON3, nil, "nothing changed")
	P.combat = false
	local saves = BINDINGS_SAVED
	T.eq(Emotes:BindMiddleButton(), "ok", "out of combat: bound")
	T.eq(BINDINGS.BUTTON3, "AZEROTHUNSPOKEN_WHEEL", "BUTTON3 opens the wheel")
	T.eq(BINDINGS_SAVED, saves + 1, "saved"); T.eq(BINDINGS_SET, 2, "in the current binding set")
	T.eq(Emotes:BoundKeys()[1], "BUTTON3", "the wheel's key")
	T.eq(Emotes:UnbindMiddleButton(), "ok", "given back")
	T.eq(BINDINGS.BUTTON3, nil, "BUTTON3 is free")
	T.eq(Emotes:UnbindMiddleButton(), "none", "not the wheel's: nothing to give back")
	BINDINGS.BUTTON3 = "MOVEFORWARD"
	T.eq(Emotes:UnbindMiddleButton(), "none", "another action on the button is never removed")
	T.eq(BINDINGS.BUTTON3, "MOVEFORWARD", "it stays")
	T.eq(Emotes.BaseKey("SHIFT-BUTTON3"), "BUTTON3", "a modifier is not part of the key held")
	T.eq(Emotes.BaseKey("CTRL-ALT-F"), "F", "two modifiers")
	HELD.MiddleButton = true
	T.eq(Emotes.IsHeld("SHIFT-BUTTON3"), true, "a mouse button: IsMouseButtonDown")
	HELD.F = true
	T.eq(Emotes.IsHeld("CTRL-F"), true, "a key: IsKeyDown")
	T.eq(Emotes.IsHeld("MOUSEWHEELUP"), nil, "a wheel turn cannot be held: unknown")
	Reset()
end)

---------------------------------------------------------------------------
-- the wheel
---------------------------------------------------------------------------
T.run("hold to open at the cursor, move to light a slice, release to play it", function()
	Reset()
	AzerothUnspoken_EmoteWheel("down")
	local f = _G.AzerothUnspokenEmoteWheel
	T.ok(f ~= nil and f:IsShown() and Wheel:IsOpen(), "open on press")
	T.ok(not f:IsMouseEnabled(), "the wheel never takes the mouse: the release reaches the binding")
	T.eq(f:GetFrameStrata(), "FULLSCREEN_DIALOG", "above the windows")
	local p = f._s.points[1]
	T.ok(p[1] == "CENTER" and p[2] == UIParent and p[3] == "BOTTOMLEFT" and Near(p[4], 512) and Near(p[5], 384), "centred on the cursor")
	T.eq(Wheel.state.lit, nil, "the cursor at the centre: nothing lit")
	T.eq(f.captionText:GetText(), NS:L("wheel_cancel"), "and the words say Cancel")
	MoveTo(0, 80)
	T.eq(Wheel.state.lit, 1, "up: slice 1")
	T.eq(SOUNDS_PLAYED[#SOUNDS_PLAYED], 1115, "a tick")
	T.ok(f.captionText:GetText():find(Emotes:Label("WAVE"), 1, true) == 1, "its name under the wheel")
	local ticks = #SOUNDS_PLAYED
	MoveTo(1, 90)
	T.eq(#SOUNDS_PLAYED, ticks, "the same slice: no second tick")
	MoveTo(80, 0)
	T.eq(Wheel.state.lit, 3, "right: slice 3")
	T.eq(#SOUNDS_PLAYED, ticks + 1, "a tick when the lit slice changes")
	MoveTo(-0.5, 80)
	T.eq(Wheel.state.lit, 1, "just left of the top: still slice 1 (the 0/360 boundary)")
	MoveTo(80, 0)
	AzerothUnspoken_EmoteWheel("up")
	T.eq(EMOTES_DONE[1], "BOW", "released on slice 3: its emote")
	T.eq(SOUNDS_PLAYED[#SOUNDS_PLAYED], 856, "the confirm sound")
	T.ok(not Wheel:IsOpen(), "no longer choosing")
	FINISH_ANIMATIONS()
	T.ok(not f:IsShown(), "gone after its fade-out")
	T.eq(f:GetAlpha(), 1, "and ready to be shown again")
	Reset()
end)

T.run("releasing in the dead zone cancels; a release with nothing open does nothing", function()
	Reset()
	AzerothUnspoken_EmoteWheel("down")
	MoveTo(0, 80)
	MoveTo(5, 10)
	T.eq(Wheel.state.lit, nil, "back to the centre: nothing lit")
	T.eq(Wheel:Release(), "cancel", "released there: cancelled")
	T.eq(#EMOTES_DONE, 0, "nothing played")
	T.eq(SOUNDS_PLAYED[#SOUNDS_PLAYED], 1115, "no confirm sound")
	T.eq(Wheel:Release(), nil, "a second release: nothing")
	NS.db.ui.wheel.deadZone = 80
	Wheel:Press()
	MoveTo(0, 70)
	T.eq(Wheel.state.lit, nil, "a wider dead zone: 70 units still cancels")
	Reset()
end)

T.run("the motion: a 0.15 s scale-in and fade-in, a 0.1 s fade-out, nothing with animations off", function()
	Reset()
	Wheel:Press()
	local f = Wheel.frame
	local pop
	for g in pairs(PLAYING_GROUPS) do
		for _, a in ipairs(g.animations or {}) do
			if a._s.animKind == "Scale" then pop = g end
		end
	end
	local scale, alpha
	if pop then
		for _, a in ipairs(pop.animations) do
			if a._s.animKind == "Scale" then scale = a end
			if a._s.animKind == "Alpha" then alpha = a end
		end
	end
	T.ok(scale ~= nil and alpha ~= nil, "a scale and a fade play together")
	if scale then
		T.ok(Near(scale._s.duration, 0.15) and Near(scale._s.scaleFrom[1], 0.85) and Near(scale._s.scaleTo[1], 1), "0.15 s from 0.85")
		T.ok(Near(alpha._s.duration, 0.15) and alpha._s.fromAlpha == 0 and alpha._s.toAlpha == 1, "fading in")
	end
	Wheel:Release()
	local fade
	for g in pairs(PLAYING_GROUPS) do
		for _, a in ipairs(g.animations or {}) do
			if a._s.animKind == "Alpha" and a._s.toAlpha == 0 then fade = a end
		end
	end
	T.ok(fade ~= nil and Near(fade._s.duration, 0.10), "a 0.1 s fade-out")
	T.ok(f:IsShown(), "shown while it fades")
	FINISH_ANIMATIONS()
	T.ok(not f:IsShown(), "then hidden")
	-- opened again during its fade-out: the fade stops and does not hide the new wheel
	Wheel:Press(); FINISH_ANIMATIONS(); Wheel:Release()
	Wheel:Press()
	FINISH_ANIMATIONS()
	T.ok(f:IsShown() and Wheel:IsOpen(), "opened again during the fade-out: it stays")
	Wheel:Cancel(true)
	NS.db.ui.animations = false
	Wheel:Press()
	T.ok(f:IsShown() and f:GetAlpha() == 1, "animations off: shown at once")
	T.eq(next(PLAYING_GROUPS), nil, "and nothing plays")
	MoveTo(0, 80)
	Wheel:Release()
	T.ok(not f:IsShown(), "and gone at once")
	Reset()
end)

T.run("the watchdog cancels a release that never came; it stands aside when the client cannot tell", function()
	Reset()
	BINDINGS.BUTTON3 = "AZEROTHUNSPOKEN_WHEEL"
	HELD.MiddleButton = true
	AzerothUnspoken_EmoteWheel("down")
	T.ok(Wheel.state.trusted, "the client says the key is held: the watchdog trusts it")
	MoveTo(0, 80)
	HELD.MiddleButton = nil   -- the release went to another frame
	ADVANCE(0.05); MoveTo(0, 80)
	T.ok(Wheel:IsOpen(), "a short grace")
	ADVANCE(0.1); MoveTo(0, 80)
	T.ok(not Wheel:IsOpen(), "then cancelled")
	T.eq(#EMOTES_DONE, 0, "nothing played")
	AzerothUnspoken_EmoteWheel("up")
	T.eq(#EMOTES_DONE, 0, "the late release plays nothing")
	-- a key the client never reports as held: the watchdog stays out, the timeout remains
	Reset()
	BINDINGS.F = "AZEROTHUNSPOKEN_WHEEL"
	AzerothUnspoken_EmoteWheel("down")
	T.ok(not Wheel.state.trusted, "the client says the key is up while it opens: not trusted")
	ADVANCE(1); MoveTo(0, 80)
	T.ok(Wheel:IsOpen(), "still open")
	ADVANCE(Wheel.TIMEOUT); MoveTo(0, 80)
	T.ok(not Wheel:IsOpen(), "closed after the timeout")
	T.eq(#EMOTES_DONE, 0, "nothing played")
	Reset()
end)

T.run("Esc, combat, leaving the world, a cinematic and a hidden interface close it without playing anything", function()
	for _, how in ipairs({ "escape", "PLAYER_REGEN_DISABLED", "PLAYER_LEAVING_WORLD", "CINEMATIC_START", "LOADING_SCREEN_ENABLED", "hide" }) do
		Reset()
		Wheel:Press()
		MoveTo(0, 80)
		if how == "escape" then PRESS_ESCAPE()
		elseif how == "hide" then Wheel.frame:Hide()
		else FIRE(how) end
		T.ok(not Wheel:IsOpen() and not Wheel.frame:IsShown(), how .. ": closed")
		AzerothUnspoken_EmoteWheel("up")
		T.eq(#EMOTES_DONE, 0, how .. ": nothing played, even by the release after it")
	end
	Reset()
	UIParent.shown = false
	Wheel:Press()
	T.ok(not Wheel:IsOpen(), "the interface hidden (Alt+Z): it does not open")
	UIParent.shown = true
	NS.db.enabled = false
	Wheel:Press()
	T.ok(not Wheel:IsOpen(), "the addon off: it does not open")
	Reset()
	P.combat = true
	Wheel:Press()
	T.ok(Wheel:IsOpen(), "already in combat: it opens (emotes are not protected)")
	Reset()
end)

T.run("the hold delay: a short click does nothing, a hold opens it; without keystate a press then a release", function()
	Reset()
	NS.db.ui.wheel.holdDelay = 0.2
	AzerothUnspoken_EmoteWheel("down")
	T.ok(not Wheel:IsOpen(), "not yet")
	T.eq(Wheel:Release(), "early", "released before the delay: nothing")
	ADVANCE(0.3)
	T.ok(not Wheel:IsOpen(), "and the timer does not open it later")
	AzerothUnspoken_EmoteWheel("down")
	ADVANCE(0.25)
	T.ok(Wheel:IsOpen(), "held past the delay: open")
	Reset()
	AzerothUnspoken_EmoteWheel(nil)
	T.ok(Wheel:IsOpen(), "no key state: the first call opens")
	MoveTo(0, 80)
	AzerothUnspoken_EmoteWheel(nil)
	T.eq(EMOTES_DONE[1], "WAVE", "the second one releases")
	Reset()
	AzerothUnspoken_EmoteWheel("down")
	AzerothUnspoken_EmoteWheel("down")
	T.ok(Wheel:IsOpen(), "a second press (a second bound key) changes nothing")
	Reset()
end)

T.run("slices, labels, sounds off, the cursor scale and the themes", function()
	Reset()
	NS.db.ui.wheel.slices = 12
	Wheel:Press()
	local f = Wheel.frame
	T.eq(f:GetWidth(), 2 * M.Radius(12), "twelve slices: a wider wheel")
	MoveTo(-80, 0)
	T.eq(Wheel.state.lit, 10, "left: slice 10 of 12")
	Wheel:Cancel(true)
	NS.db.ui.wheel.slices = 4
	NS.db.ui.wheel.labels = false
	Wheel:Press()
	MoveTo(-80, 0)
	T.eq(Wheel.state.lit, 4, "left: slice 4 of 4")
	Wheel:Cancel(true)
	-- sounds off: neither tick nor confirm
	NS.db.ui.wheel.slices = 8
	NS.db.ui.wheel.sounds = false
	Clear(SOUNDS_PLAYED)
	Wheel:Press(); MoveTo(0, 80); Wheel:Release()
	T.eq(#SOUNDS_PLAYED, 0, "sounds off: silent")
	T.eq(EMOTES_DONE[1], "WAVE", "the emote still plays")
	FINISH_ANIMATIONS()
	-- the cursor scale: GetCursorPosition is in pixels, the wheel in its own units
	Reset()
	local eff = f.GetEffectiveScale
	f.GetEffectiveScale = function() return 0.8 end
	CURSOR[1], CURSOR[2] = 400, 300
	Wheel:Press()
	local p = f._s.points[1]
	T.ok(Near(p[4], 500) and Near(p[5], 375), "the centre at the cursor in the wheel's units")
	CURSOR[1], CURSOR[2] = 400, 300 + 0.8 * 60
	Wheel.frame.scripts.OnUpdate(f, 0.016)
	T.eq(Wheel.state.lit, 1, "60 units up after the scale: slice 1")
	f.GetEffectiveScale = eff
	Wheel:Cancel(true)
	-- the themes: the disc and the lit slice change with the theme, without reopening
	Reset()
	Wheel:Press()
	local function Same(c, token, id, alpha)
		local r, g, b, a = Theme.Color(token, id)
		return c and Near(c[1], r) and Near(c[2], g) and Near(c[3], b) and Near(c[4], (a or 1) * (alpha or 1))
	end
	T.ok(Same(f.disc._s.vertex, "surface-1", "nebula", Wheel.BG_ALPHA), "Nebula: the disc is surface-1, semi-transparent")
	Theme.Apply("aurora")
	T.ok(Same(f.disc._s.vertex, "surface-1", "aurora", Wheel.BG_ALPHA), "Aurora: recoloured at once")
	T.ok(Same(f.ring._s.vertex, "border-strong", "aurora"), "its ring")
	Reset()
end)

T.run("the Settings section: the key in two clicks, the slices, and the emote of each slice", function()
	Reset()
	local panel = NS.SettingsFrame.panel
	panel:Refresh()
	local found = false
	for _, h in ipairs(panel.headers) do if h.key == "opt_section_wheel" then found = true end end
	T.ok(found, "a section of its own")
	local key = NS.SettingsFrame:Row("opt_wheel_key")
	T.eq(key.button:GetText(), NS:L("wheel_key_none"), "not bound")
	BINDINGS.BUTTON3 = "CAMERAORSELECTORMOVE"
	key.button:Click()
	T.eq(BINDINGS.BUTTON3, "CAMERAORSELECTORMOVE", "the first click binds nothing")
	T.eq(key.button:GetText(), NS:L("wheel_key_arm", "CAMERAORSELECTORMOVE"), "it says what the button does now")
	key.button:Click()
	T.eq(BINDINGS.BUTTON3, "AZEROTHUNSPOKEN_WHEEL", "the second click binds it")
	T.eq(key.button:GetText(), NS:L("wheel_key_middle"), "and the row says so")
	NS.SettingsFrame:Row("opt_wheel_unbind").button:Click()
	T.eq(BINDINGS.BUTTON3, nil, "the unbind button gives it back")
	-- the first click expires: a click much later starts again
	key.button:Click()
	ADVANCE(11)
	key.button:Click()
	T.eq(BINDINGS.BUTTON3, nil, "a second click after 10 s is a first click again")
	P.combat = true
	key.button:Click()
	T.eq(BINDINGS.BUTTON3, nil, "in combat: refused")
	P.combat = false
	-- the number of slices
	local slices = NS.SettingsFrame:Row("opt_wheel_slices")
	slices.plus:Click()
	T.eq(NS.db.ui.wheel.slices, 9, "+1 slice")
	T.eq(slices.text:GetText(), "9", "in words")
	-- the emote of slice 2
	local slot = NS.SettingsFrame:Row("opt_wheel_slot")
	slot.plus:Click()
	T.eq(slot.text:GetText(), "2", "slice 2 chosen")
	local emote = NS.SettingsFrame:Row("opt_wheel_emote")
	T.ok(emote.button:GetText():find(Emotes:Label("DANCE"), 1, true) == 1, "its emote: Dance")
	emote.button:Click()
	T.eq(NS.db.ui.wheel.emotes[2], Emotes:Step("DANCE", 1), "the next emote of the client's list")
	NS.SettingsFrame:Row("opt_wheel_prev").button:Click()
	T.eq(NS.db.ui.wheel.emotes[2], "DANCE", "and back")
	NS.db.ui.wheel.emotes[2] = "MOO"
	NS.SettingsFrame:Row("opt_wheel_reset").button:Click()
	T.eq(NS.db.ui.wheel.emotes[2], "DANCE", "every slice back to its default")
	for _ = 1, 10 do slot.plus:Click() end
	T.eq(slot.text:GetText(), NS:L("wheel_slot_hidden", 12), "slice 12 is kept, and said not shown")
	NS.db.ui.wheel.labels = true
	local labels = NS.SettingsFrame:Row("opt_wheel_labels")
	labels.switch:Click()
	T.eq(NS.db.ui.wheel.labels, false, "labels off")
	local sounds = NS.SettingsFrame:Row("opt_wheel_sounds")
	sounds.switch:Click()
	T.eq(NS.db.ui.wheel.sounds, false, "sounds off")
	local delay = NS.SettingsFrame:Row("opt_wheel_delay")
	delay.plus:Click()
	T.ok(Near(NS.db.ui.wheel.holdDelay, 0.05), "hold delay +50 ms")
	T.eq(delay.text:GetText(), "50 ms", "in milliseconds")
	T.eq(#Config:Validate(NS.db), 0, "every value valid")
	Reset()
end)

T.run("/au wheel: the state, set, reset, list, bind and unbind", function()
	Reset()
	local function Cmd(s) Clear(SENT); SlashCmdList.AZEROTHUNSPOKEN("wheel " .. s) end
	Cmd("")
	T.ok(T.sentContains(NS:L("wheel_status_unbound", "")), "no key yet")
	Cmd("set 3 /lol")
	T.eq(NS.db.ui.wheel.emotes[3], "LAUGH", "a command sets a slice")
	T.ok(T.sentContains(NS:L("wheel_set_done", 3, Emotes:Label("LAUGH"))), "and says so")
	Cmd("set 3 farts")
	T.eq(NS.db.ui.wheel.emotes[3], "LAUGH", "an unknown emote changes nothing")
	T.ok(T.sentContains(NS:L("wheel_unknown", "farts")), "and says so")
	Cmd("set 13 dance")
	T.ok(T.sentContains(NS:L("wheel_set_usage")), "slice 13 does not exist")
	Cmd("reset")
	T.eq(NS.db.ui.wheel.emotes[3], "BOW", "reset")
	Cmd("list")
	T.ok(T.sentContains(NS:L("wheel_list_client", 15)), "the client's list")
	Clear(SENT); SlashCmdList.AZEROTHUNSPOKEN("emotes")
	T.ok(T.sentContains(NS:L("wheel_list_client", 15)) and T.sentContains("forthealliance"), "/au emotes prints it too")
	Cmd("bind")
	T.eq(BINDINGS.BUTTON3, "AZEROTHUNSPOKEN_WHEEL", "bind")
	Cmd("")
	T.ok(T.sentContains(NS:L("wheel_status_bound", "BUTTON3")), "the key is named")
	Cmd("unbind")
	T.eq(BINDINGS.BUTTON3, nil, "unbind")
	Reset()
end)
