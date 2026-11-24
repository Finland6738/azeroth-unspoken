-- The emote wheel (ADR 0059): held on the key AZEROTHUNSPOKEN_WHEEL (Bindings.xml, unbound until the player binds it),
-- a round, semi-transparent wheel appears at the cursor; the slice in the direction of the mouse lights up, and the release
-- plays its emote. A release inside the dead zone near the centre cancels. Lua 5.1.
-- * The geometry is pure Lua (Wheel.Math), so the tests prove it: the cursor in UI units, the angle (0 at the top,
--   clockwise), the slice (centred on its angle, the 0/360 boundary), the dead zone and the place on the screen.
-- * The look is the NEBULA look (ADR 0058): every colour a token of UI/Theme.lua, the shapes of Media/ (disc_256, ring_256,
--   the icon sheet), the motion of UI/Motion.lua (0.15 s scale-in and fade-in, 0.1 s fade-out; nothing with Animations off).
--   The lit slice is a filled shape with its name written under the wheel, never a colour alone.
-- * It never stays on screen: the release, Esc, any hide (Alt+Z, a loading screen), combat, leaving the world, a
--   cinematic, 15 seconds, and a watchdog that cancels when the client says the bound key is no longer held.
-- * The frame never takes the mouse, so the release of the key reaches the binding; it is not protected.
-- Not tried in the game client: the key state of the binding, the emotes, the sounds, the cursor scale, the look, the timings.
local ADDON, NS = ...
local W, Theme, Motion, Assets, Emotes, Compat = NS.Widgets, NS.Theme, NS.Motion, NS.Assets, NS.Emotes, NS.Compat

local Wheel = NS:RegisterModule("emoteWheel")
NS.EmoteWheel = Wheel

Wheel.NAME = "AzerothUnspokenEmoteWheel"
Wheel.OPEN_TIME, Wheel.CLOSE_TIME, Wheel.FROM_SCALE = 0.15, 0.10, 0.85   -- the owner's timings
Wheel.TIMEOUT = 15        -- seconds open at most: a release that never came
Wheel.WATCH_GRACE = 0.1   -- seconds the bound key may read "not held" before the watchdog cancels
Wheel.ICON = 24           -- the icon of a slice
Wheel.LIT_H = 56          -- the lit shape behind a slice's icon and label
Wheel.BG_ALPHA = 0.86     -- the disc is semi-transparent: the world shows through
Wheel.CLOSE_EVENTS = { "PLAYER_REGEN_DISABLED", "PLAYER_LEAVING_WORLD", "CINEMATIC_START", "LOADING_SCREEN_ENABLED",
	"PLAY_MOVIE" }

-- --- the geometry (pure) ------------------------------------------------------------------------------------------------

local M = {}
Wheel.Math = M
local TAU = 2 * math.pi
M.TAU = TAU

---The outer radius of a wheel of `n` slices, in UI units: wide enough for a short label in each slice.
---@param n number
---@return number
function M.Radius(n)
	return math.max(140, 16 * (n or 8))
end

---The cursor of GetCursorPosition (screen pixels) in the units of a frame of effective scale `scale`.
---@param x number
---@param y number
---@param scale? number
---@return number x
---@return number y
function M.ToUI(x, y, scale)
	if type(scale) ~= "number" or scale ~= scale or scale <= 0 then scale = 1 end
	return x / scale, y / scale
end

---The direction of an offset from the centre as an angle in [0, 2π): 0 at the top, growing clockwise (y grows upward).
---@param dx number
---@param dy number
---@return number
function M.Angle(dx, dy)
	local a = math.atan2(dx, dy)
	if a < 0 then a = a + TAU end
	if a >= TAU then a = a - TAU end
	return a
end

---The slice (1..n) of an angle: slice 1 is centred at the top, the others follow clockwise, each centred on its angle.
---@param angle number
---@param n number
---@return number
function M.SliceOf(angle, n)
	local w = TAU / n
	return math.floor((angle + w / 2) / w) % n + 1
end

---The slice under an offset, or nil inside the dead zone (a distance below `dead`).
---@param dx number
---@param dy number
---@param n number
---@param dead number
---@return number?
function M.Pick(dx, dy, n, dead)
	if dx * dx + dy * dy < (dead or 0) * (dead or 0) then return nil end
	return M.SliceOf(M.Angle(dx, dy), n)
end

---The angle at the middle of slice `i` of `n`.
function M.SliceAngle(i, n) return (i - 1) * TAU / n end

---The offset of a point at `angle` and distance `r` from the centre.
function M.Polar(angle, r) return r * math.sin(angle), r * math.cos(angle) end

---The centre of the wheel moved inside the screen (`w` x `h` units), so a wheel opened near an edge is whole.
function M.Clamp(cx, cy, r, w, h)
	local function one(v, size)
		if size <= 2 * r then return size / 2 end
		return math.max(r, math.min(size - r, v))
	end
	return one(cx, w), one(cy, h)
end

-- --- settings -----------------------------------------------------------------------------------------------------------

local function S() return (NS.db and NS.db.ui and NS.db.ui.wheel) or {} end
local function Dead() return math.max(16, math.min(80, tonumber(S().deadZone) or 30)) end
local function Labels() return S().labels ~= false end
local function Delay() return math.max(0, math.min(0.5, tonumber(S().holdDelay) or 0)) end

-- --- the frame ----------------------------------------------------------------------------------------------------------

local frame
local items, lines = {}, {}
local st = { open = false, pending = false, serial = 0 }
Wheel.state = st

local function Now() return (GetTime and GetTime()) or 0 end

local function Texture(key, token, layer, alpha)
	local t = frame:CreateTexture(nil, layer or "ARTWORK")
	t:SetTexture(Assets.textures[key].path)
	Theme.Crisp(t)
	if token then Theme.Tint(t, token, alpha) end
	return t
end

local function Build()
	frame = CreateFrame("Frame", Wheel.NAME, UIParent)
	frame:Hide()
	frame:SetFrameStrata("FULLSCREEN_DIALOG")
	frame:EnableMouse(false)   -- the release of the key must reach the binding, never this frame
	frame:SetSize(280, 280)
	Wheel.frame = frame
	frame.disc = Texture("disc_256", "surface-1", "BACKGROUND", Wheel.BG_ALPHA)
	frame.disc:SetAllPoints(frame)
	frame.ring = Texture("ring_256", "border-strong", "BORDER")
	frame.ring:SetAllPoints(frame)
	frame.deadDisc = Texture("disc_256", "surface-3", "BORDER")
	frame.deadDisc:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frame.deadRing = Texture("ring_256", "border", "ARTWORK")
	frame.deadRing:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frame.cancel = W.Icon(frame, "cross", 16, "text-3")
	frame.cancel:SetPoint("CENTER", frame, "CENTER", 0, 0)
	-- the one neon element of the view: a soft glow behind the lit slice (off with "neon: off")
	frame.glow = Theme.Glow(frame, "glow_s", "accent", { layer = "BACKGROUND", alpha = 0.45 })
	for i = 1, Emotes.MAX_SLICES do
		local line = frame:CreateTexture(nil, "BORDER", nil, 1)
		Theme.Fill(line, "border-subtle")
		Theme.Crisp(line)
		lines[i] = line
		local it = {}
		it.lit = Theme.Slice(frame, "rr_fill_12", "accent", "ARTWORK")
		it.icon = W.Icon(frame, "chat", Wheel.ICON, "text-2")
		it.label = Theme.NewText(frame, "Small", "text-2")
		it.label:SetJustifyH("CENTER")
		if it.label.SetWordWrap then it.label:SetWordWrap(false) end
		items[i] = it
	end
	-- the name of the lit emote, or "Cancel", written under the wheel: the choice is said in words
	frame.caption = CreateFrame("Frame", nil, frame)
	frame.caption:SetSize(200, 28)
	frame.caption:SetPoint("TOP", frame, "BOTTOM", 0, -8)
	Theme.Panel(frame.caption, { radius = 8, fill = "surface-2", border = "border" })
	frame.captionText = Theme.NewText(frame.caption, "BodyMedium", "text-1")
	frame.captionText:SetPoint("CENTER", frame.caption, "CENTER", 0, 0)
	if frame.captionText.SetWordWrap then frame.captionText:SetWordWrap(false) end
	frame:SetScript("OnUpdate", function(_, elapsed) Wheel:Update(elapsed) end)
	-- hidden by anything while open (Esc, Alt+Z, a loading screen): the choice is cancelled, nothing is played
	frame:SetScript("OnHide", function()
		if st.open then
			st.open = false
			st.lit = nil
		end
	end)
	W.CloseOnEscape(Wheel.NAME)
	return frame
end

-- Lays out a wheel of `n` slices: the disc, the dead zone, the separators, and the icon and label of each slice.
local function Layout(n, dead, labels)
	local r = M.Radius(n)
	frame:SetSize(2 * r, 2 * r)
	frame.deadDisc:SetSize(2 * dead, 2 * dead)
	frame.deadRing:SetSize(2 * dead, 2 * dead)
	local itemR = dead + (r - dead) * 0.56
	local arc = TAU * itemR / n
	local labelW = math.max(40, math.min(96, math.floor(arc - 6)))
	for i = 1, Emotes.MAX_SLICES do
		local it, line = items[i], lines[i]
		local shown = i <= n
		it.icon:SetShown(shown)
		it.label:SetShown(shown and labels)
		it.lit:Hide()
		line:SetShown(shown)
		if shown then
			local token = Emotes:SliceToken(i)
			it.token = token
			local x, y = M.Polar(M.SliceAngle(i, n), itemR)
			it.x, it.y = x, y
			local l, rr, t, b = Assets.IconCoords(Emotes.Icon(token))
			if not l then l, rr, t, b = Assets.IconCoords("chat") end
			it.icon:SetTexCoord(l, rr, t, b)
			it.iconName = Emotes.Icon(token)
			it.icon:ClearAllPoints()
			it.icon:SetPoint("CENTER", frame, "CENTER", x, y + (labels and 8 or 0))
			it.label:SetText(Emotes:Label(token))
			it.label:SetWidth(labelW)
			it.label:ClearAllPoints()
			it.label:SetPoint("TOP", it.icon, "BOTTOM", 0, -3)
			it.lit:ClearAllPoints()
			it.lit:SetSize(labels and (labelW + 8) or 40, labels and Wheel.LIT_H or 40)
			it.lit:SetPoint("CENTER", frame, "CENTER", x, y)
			-- the separator after this slice: from the dead zone to the edge, along the boundary of the two slices
			local a = M.SliceAngle(i, n) + math.pi / n
			local len = r - dead - 12
			local mx, my = M.Polar(a, dead + 6 + len / 2)
			line:ClearAllPoints()
			line:SetSize(len, Theme.Px(1, frame))
			line:SetPoint("CENTER", frame, "CENTER", mx, my)
			if line.SetRotation then line:SetRotation(math.pi / 2 - a) end
		end
	end
	st.r, st.itemR = r, itemR
end

-- Lights slice `i` (nil: none) and says it under the wheel.
local function Light(i)
	for k = 1, Emotes.MAX_SLICES do
		local it = items[k]
		local on = (k == i)
		it.lit:SetShown(on)
		Theme.Tint(it.icon, on and "on-accent" or "text-2")
		Theme.Text(it.label, on and "on-accent" or "text-2")
	end
	if i then
		local it = items[i]
		frame.glow:ClearAllPoints()
		frame.glow:SetPoint("TOPLEFT", it.lit, "TOPLEFT", -18, 18)
		frame.glow:SetPoint("BOTTOMRIGHT", it.lit, "BOTTOMRIGHT", 18, -18)
		Theme.GlowShow(frame.glow, true)
		local cmd = Emotes:Command(it.token)
		frame.captionText:SetText(cmd and (Emotes:Label(it.token) .. "  " .. cmd) or Emotes:Label(it.token))
		Theme.Tint(frame.cancel, "text-3")
	else
		Theme.GlowShow(frame.glow, false)
		frame.captionText:SetText(NS:L("wheel_cancel"))
		Theme.Tint(frame.cancel, "text-1")
	end
	local w = (frame.captionText.GetStringWidth and tonumber(frame.captionText:GetStringWidth())) or 120
	frame.caption:SetWidth(math.max(120, math.min(320, w + 32)))
	st.lit = i
end

-- The cursor in the units of the wheel, or nil when the client does not say.
local function Cursor()
	local x, y = Compat.SafeCall("GetCursorPosition")
	if type(x) ~= "number" or type(y) ~= "number" then return nil end
	return M.ToUI(x, y, frame:GetEffectiveScale())
end

-- The screen in the units of the wheel.
local function Screen()
	local ps = UIParent:GetEffectiveScale()
	local fs = frame:GetEffectiveScale()
	if type(ps) ~= "number" or type(fs) ~= "number" or fs <= 0 then ps, fs = 1, 1 end
	return (tonumber(UIParent:GetWidth()) or 1024) * ps / fs, (tonumber(UIParent:GetHeight()) or 768) * ps / fs
end

-- --- open, follow, close ------------------------------------------------------------------------------------------------

---Whether the wheel is on screen and choosing.
function Wheel:IsOpen() return st.open == true end

---Opens the wheel at the cursor. Returns true when it opened.
---@return boolean
function Wheel:Open()
	if st.open then return true end
	if NS.db and NS.db.enabled == false then return false end
	if UIParent.IsShown and not UIParent:IsShown() then return false end   -- the interface is hidden (Alt+Z)
	if not frame then Build() end
	Motion.Stop(frame)
	W.ApplyScale(frame)
	st.n, st.dead = Emotes:Slices(), Dead()
	Layout(st.n, st.dead, Labels())
	local sw, sh = Screen()
	local x, y = Cursor()
	if not x then x, y = sw / 2, sh / 2 end
	st.cx, st.cy = M.Clamp(x, y, st.r, sw, sh)
	frame:ClearAllPoints()
	frame:SetPoint("CENTER", UIParent, "BOTTOMLEFT", st.cx, st.cy)
	-- the watchdog trusts the client only if it says a bound key is held now
	st.keys, st.trusted, st.notHeldSince = Emotes:BoundKeys(), false, nil
	for _, key in ipairs(st.keys) do
		if Emotes.IsHeld(key) == true then st.trusted = true end
	end
	st.open, st.openedAt, st.lit = true, Now(), nil
	Light(nil)
	if x then self:Point(x - st.cx, y - st.cy, true) end
	Motion.PopIn(frame, Wheel.OPEN_TIME, Wheel.FROM_SCALE)
	return true
end

---Lights the slice under an offset from the centre; a tick when the lit slice changes to another one.
---@param dx number
---@param dy number
---@param quiet? boolean no sound (the first reading, when the wheel opens)
---@return number? slice
function Wheel:Point(dx, dy, quiet)
	if not st.open then return nil end
	local i = M.Pick(dx, dy, st.n, st.dead)
	if i ~= st.lit then
		Light(i)
		if i and not quiet then Emotes:Sound("tick") end
	end
	return i
end

-- Every frame while open: the timeout, the watchdog, then the cursor.
function Wheel:Update()
	if not st.open then return end
	local now = Now()
	if now - (st.openedAt or now) > Wheel.TIMEOUT then return self:Cancel() end
	if st.trusted then
		local held = false
		for _, key in ipairs(st.keys) do
			if Emotes.IsHeld(key) ~= false then held = true end
		end
		if held then
			st.notHeldSince = nil
		else
			st.notHeldSince = st.notHeldSince or now
			if now - st.notHeldSince >= Wheel.WATCH_GRACE then return self:Cancel() end
		end
	end
	local x, y = Cursor()
	if x then self:Point(x - st.cx, y - st.cy) end
end

-- Closes with a fade-out (0.1 s); `now`: at once (the wheel is being hidden by the game anyway).
local function Close(now)
	st.open, st.lit = false, nil
	if not frame then return end
	if now or not frame:IsShown() then
		Motion.Stop(frame)
		frame:Hide()
		frame:SetAlpha(1)
	else
		Motion.Stop(frame)
		Motion.FadeOut(frame, Wheel.CLOSE_TIME)
	end
end

---The key was released: plays the lit emote and closes, or closes when nothing is lit. Returns the token played, "cancel",
---"early" (released before the hold delay: nothing opened) or nil (nothing was open).
---@return string?
function Wheel:Release()
	if st.pending then
		st.pending = false
		st.serial = st.serial + 1
		return "early"
	end
	if not st.open then return nil end
	local x, y = Cursor()
	if x then self:Point(x - st.cx, y - st.cy, true) end
	local token = st.lit and items[st.lit].token
	Close(false)
	if token then
		Emotes:Perform(token)
		Emotes:Sound("confirm")
		return token
	end
	return "cancel"
end

---Closes without playing anything (and forgets a press that waits for its delay). `now`: no fade.
---@param now? boolean
function Wheel:Cancel(now)
	st.pending = false
	st.serial = st.serial + 1
	if st.open or (frame and frame:IsShown()) then Close(now) end
end

---The key was pressed: opens now, or after the hold delay if it is still held.
function Wheel:Press()
	if st.open or st.pending then return end
	local delay = Delay()
	if delay <= 0 then
		self:Open()
		return
	end
	st.pending = true
	st.serial = st.serial + 1
	local serial = st.serial
	local scheduled = Compat.After(delay, function()
		if st.pending and st.serial == serial then
			st.pending = false
			Wheel:Open()
		end
	end)
	if not scheduled then
		st.pending = false
		self:Open()
	end
end

---The binding's handler. `keystate` is "down" or "up" (runOnUp); without one, a press opens and the next call releases.
---@param keystate? string
function Wheel:Key(keystate)
	if keystate == "up" then
		self:Release()
	elseif keystate == "down" then
		self:Press()
	elseif st.open or st.pending then
		self:Release()
	else
		self:Press()
	end
end

-- Bindings.xml: AZEROTHUNSPOKEN_WHEEL, runOnUp="true". A modern client gives the body a local `keystate`; an old one a global.
function AzerothUnspoken_EmoteWheel(keystate)
	if NS.Diagnostics and NS.Diagnostics.Guard then
		NS.Diagnostics:Guard("emoteWheel", Wheel.Key, Wheel, keystate)
	else
		Wheel:Key(keystate)
	end
end

-- --- the chat command ---------------------------------------------------------------------------------------------------

local function Say(key, ...) NS:Print(NS:L(key, ...)) end

---`/au wheel [set <slice> <emote> / reset / bind / unbind]`; `list` (also `/au emotes`) prints the client's emotes.
---@param rest string
function Wheel:Command(rest)
	local word, args = (rest or ""):match("^%s*(%S*)%s*(.-)%s*$")
	word = NS.Lower(word or "")
	if word == "set" then
		local slice, emote = args:match("^(%d+)%s+(%S+)$")
		slice = tonumber(slice)
		local token = emote and Emotes:Resolve(emote)
		if not slice or slice < 1 or slice > Emotes.MAX_SLICES then return Say("wheel_set_usage") end
		if not token then return Say("wheel_unknown", emote or "") end
		Emotes:SetSlice(slice, token)
		return Say("wheel_set_done", slice, Emotes:Label(token))
	elseif word == "reset" then
		Emotes:ResetSlices()
		return Say("wheel_reset_done")
	elseif word == "bind" then
		local r = Emotes:BindMiddleButton()
		return Say(r == "ok" and "wheel_bind_done" or (r == "combat" and "wheel_bind_combat" or "wheel_bind_failed"))
	elseif word == "unbind" then
		local r = Emotes:UnbindMiddleButton()
		return Say(r == "ok" and "wheel_unbind_done" or (r == "combat" and "wheel_bind_combat"
			or (r == "none" and "wheel_unbind_none" or "wheel_bind_failed")))
	elseif word == "list" then
		local l, fromClient = Emotes:List()
		local names = {}
		for i, e in ipairs(l) do names[i] = e.command or e.token end
		Say(fromClient and "wheel_list_client" or "wheel_list_builtin", #l)
		return NS:Print(table.concat(names, ", "))
	end
	-- the state: the key, then the slices in order
	local keys = Emotes:BoundKeys()
	Say(#keys > 0 and "wheel_status_bound" or "wheel_status_unbound", table.concat(keys, ", "))
	local parts = {}
	for i = 1, Emotes:Slices() do parts[i] = i .. " " .. Emotes:Label(Emotes:SliceToken(i)) end
	Say("wheel_status_slices", table.concat(parts, " · "))   -- nolocale: a list separator, not text
	Say("wheel_usage")
end

-- --- start --------------------------------------------------------------------------------------------------------------

function Wheel:OnInit()
	local events = CreateFrame("Frame")
	self.events = events
	for _, e in ipairs(Wheel.CLOSE_EVENTS) do Compat:RegisterEvent(events, e) end
	events:SetScript("OnEvent", function() Wheel:Cancel(true) end)
end
