-- Motion: the transitions of docs/specs/ui-style.md (FDCP §2.2 and §5) — 120 ms for states and buttons, 200 ms for tabs and chips,
-- 320 ms for panels and the accordion, always the game's OUT curve (no spring: the engine has none). UI-ECO step UI-2. Lua 5.1.
-- * Everything is an AnimationGroup of the game (Alpha, Scale, Translation, Rotation); the groups are made once per region and
--   reused, so a window that is drawn again creates none (the spec's pool rule). No OnUpdate.
-- * "Animations: off" (ui.animations, and the older narrator setting reduceMotion) makes every call finish at once: the end
--   state is set directly and no group is played. A client without AnimationGroups behaves the same way.
-- Not tried in the game client: the groups, the curves and the timings are predictions.
local ADDON_NAME, NS = ...
NS = NS or {}

local Motion = {}
NS.Motion = Motion

local Theme = NS.Theme

Motion.FAST, Motion.BASE, Motion.SLOW = 0.12, 0.20, 0.32   -- seconds: states, tabs and chips, panels
Motion.PRESS = 0.97                                         -- a pressed button shrinks to this scale
Motion.SMOOTHING = "OUT"

function Motion.On() return Theme.AnimationsOn() end

-- Animations are played only when the setting is on and the region can make a group.
local function animates(region)
	return Motion.On() and region ~= nil and region.CreateAnimationGroup ~= nil
end

-- The state of a region's animations: one table per region, kept out of the region itself.
local state = setmetatable({}, { __mode = "k" })
local function of(region)
	local s = state[region]
	if not s then s = {}; state[region] = s end
	return s
end

local function alphaOf(region)
	return (region.GetAlpha and region:GetAlpha()) or 1
end

-- Fades `region` to alpha `to` in `duration` seconds (BASE by default). `done` runs when it ends (at once when
-- animations are off). Returns true when an animation was started.
function Motion.Fade(region, to, duration, done)
	duration = duration or Motion.BASE
	local s = of(region)
	if s.fade then s.fade.group:Stop() end
	if not animates(region) or duration <= 0 then
		region:SetAlpha(to)
		if done then done() end
		return false
	end
	if not s.fade then
		local group = region:CreateAnimationGroup()
		local anim = group:CreateAnimation("Alpha")
		anim:SetSmoothing(Motion.SMOOTHING)
		s.fade = { group = group, anim = anim }
		group:SetScript("OnFinished", function()
			region:SetAlpha(s.fade.to)
			local cb = s.fade.done
			s.fade.done = nil
			if cb then cb() end
		end)
	end
	s.fade.to, s.fade.done = to, done
	s.fade.anim:SetFromAlpha(alphaOf(region))
	s.fade.anim:SetToAlpha(to)
	s.fade.anim:SetDuration(duration)
	s.fade.group:Play()
	return true
end

-- Shows a hidden region with a fade from 0 to `to` (1 by default).
function Motion.FadeIn(region, duration, to)
	region:Show()
	if not animates(region) then region:SetAlpha(to or 1); return false end
	region:SetAlpha(0)
	return Motion.Fade(region, to or 1, duration or Motion.BASE)
end

-- Fades a region out and hides it (it keeps its alpha for the next Show).
function Motion.FadeOut(region, duration)
	local keep = alphaOf(region)
	return Motion.Fade(region, 0, duration or Motion.BASE, function()
		region:Hide()
		region:SetAlpha(keep > 0 and keep or 1)
	end)
end

-- A panel enters: it rises `rise` points while it fades in (the dialog and the popup card, 320 ms). The frame must have
-- a point; it is moved down for the animation and put back at the end. Returns true when it animates.
function Motion.Rise(frame, rise, duration)
	duration = duration or Motion.SLOW
	rise = rise or 12
	frame:Show()
	if not animates(frame) or not frame.GetPoint then return false end
	local point, rel, relPoint, x, y = frame:GetPoint(1)
	if not point then return false end
	local s = of(frame)
	if s.rise then
		s.rise.group:Stop()
		local o = s.rise.origin
		frame:ClearAllPoints()
		frame:SetPoint(o[1], o[2], o[3], o[4], o[5])
		point, rel, relPoint, x, y = o[1], o[2], o[3], o[4], o[5]
	end
	if not s.rise then
		local group = frame:CreateAnimationGroup()
		local fade = group:CreateAnimation("Alpha")
		fade:SetSmoothing(Motion.SMOOTHING)
		fade:SetFromAlpha(0); fade:SetToAlpha(1)
		local move = group:CreateAnimation("Translation")
		move:SetSmoothing(Motion.SMOOTHING)
		s.rise = { group = group, fade = fade, move = move }
		group:SetScript("OnFinished", function()
			local o = s.rise.origin
			frame:ClearAllPoints()
			frame:SetPoint(o[1], o[2], o[3], o[4], o[5])
			frame:SetAlpha(1)
		end)
	end
	s.rise.origin = { point, rel, relPoint, x or 0, y or 0 }
	s.rise.fade:SetDuration(duration); s.rise.move:SetDuration(duration)
	s.rise.move:SetOffset(0, rise)
	frame:ClearAllPoints()
	frame:SetPoint(point, rel, relPoint, x or 0, (y or 0) - rise)
	frame:SetAlpha(0)
	s.rise.group:Play()
	return true
end

-- Turns a texture to `radians` in `duration` seconds (the accordion arrow, 320 ms); the end angle is set when it ends.
function Motion.Rotate(texture, radians, duration)
	duration = duration or Motion.SLOW
	local s = of(texture)
	local from = s.angle or 0
	if s.rotate then s.rotate.group:Stop() end
	s.angle = radians
	if not animates(texture) or duration <= 0 or from == radians then
		texture:SetRotation(radians)
		return false
	end
	if not s.rotate then
		local group = texture:CreateAnimationGroup()
		local anim = group:CreateAnimation("Rotation")
		anim:SetSmoothing(Motion.SMOOTHING)
		anim:SetOrigin("CENTER", 0, 0)
		s.rotate = { group = group, anim = anim }
		group:SetScript("OnFinished", function() texture:SetRotation(s.angle) end)
	end
	texture:SetRotation(from)
	s.rotate.anim:SetRadians(radians - from)
	s.rotate.anim:SetDuration(duration)
	s.rotate.group:Play()
	return true
end

-- Slides a texture or frame by (dx, dy) in `duration` seconds and leaves it at its new anchor (the switch thumb, the
-- tab indicator). `place(dx, dy)` sets the end position (the caller knows the anchors); without animations it runs at once.
function Motion.Slide(region, dx, dy, duration, place)
	duration = duration or Motion.BASE
	local s = of(region)
	if s.slide then s.slide.group:Stop() end
	if not animates(region) or duration <= 0 then
		place(dx, dy)
		return false
	end
	if not s.slide then
		local group = region:CreateAnimationGroup()
		local anim = group:CreateAnimation("Translation")
		anim:SetSmoothing(Motion.SMOOTHING)
		s.slide = { group = group, anim = anim }
		group:SetScript("OnFinished", function()
			local f = s.slide.place
			if f then f(s.slide.dx, s.slide.dy) end
		end)
	end
	s.slide.place, s.slide.dx, s.slide.dy = place, dx, dy
	s.slide.anim:SetOffset(dx, dy)
	s.slide.anim:SetDuration(duration)
	s.slide.group:Play()
	return true
end

-- The press of a button: down shrinks it to 0.97 in 120 ms and holds, up returns it in 120 ms. Hooks the mouse scripts, so
-- a widget that sets its own keeps them. Does nothing with animations off or in a client without AnimationGroups.
function Motion.Press(button, scale)
	scale = scale or Motion.PRESS
	if not button.CreateAnimationGroup then return nil end
	local down = button:CreateAnimationGroup()
	local shrink = down:CreateAnimation("Scale")
	shrink:SetScaleFrom(1, 1); shrink:SetScaleTo(scale, scale); shrink:SetDuration(Motion.FAST)
	shrink:SetSmoothing(Motion.SMOOTHING); shrink:SetOrigin("CENTER", 0, 0); shrink:SetOrder(1)
	local hold = down:CreateAnimation("Scale")   -- stays at the pressed size until the mouse is released
	hold:SetScaleFrom(scale, scale); hold:SetScaleTo(scale, scale); hold:SetDuration(30); hold:SetOrder(2)
	hold:SetOrigin("CENTER", 0, 0)
	local up = button:CreateAnimationGroup()
	local grow = up:CreateAnimation("Scale")
	grow:SetScaleFrom(scale, scale); grow:SetScaleTo(1, 1); grow:SetDuration(Motion.FAST)
	grow:SetSmoothing(Motion.SMOOTHING); grow:SetOrigin("CENTER", 0, 0)
	local s = of(button)
	s.press = { down = down, up = up }
	local function release()
		if down:IsPlaying() then
			down:Stop()
			if Motion.On() then up:Play() end
		end
	end
	button:HookScript("OnMouseDown", function(self)
		if Motion.On() and self:IsEnabled() then up:Stop(); down:Play() end
	end)
	button:HookScript("OnMouseUp", release)
	button:HookScript("OnHide", function() down:Stop(); up:Stop() end)
	return s.press
end

-- A pulse between two alphas, repeating while the region is shown (the loading skeleton). Still, at the mid alpha, with
-- animations off.
function Motion.Pulse(region, low, high, duration)
	low, high, duration = low or 0.35, high or 1, duration or 0.9
	local s = of(region)
	if not s.pulse and region.CreateAnimationGroup then
		local group = region:CreateAnimationGroup()
		group:SetLooping("BOUNCE")
		local anim = group:CreateAnimation("Alpha")
		anim:SetSmoothing("IN_OUT")
		s.pulse = { group = group, anim = anim }
	end
	local p = s.pulse or {}
	p.low, p.high = low, high
	if p.anim then
		p.anim:SetFromAlpha(low); p.anim:SetToAlpha(high); p.anim:SetDuration(duration)
	end
	function p.Start()
		if p.group and Motion.On() then
			region:SetAlpha(low)
			p.group:Play()
		else
			if p.group then p.group:Stop() end
			region:SetAlpha((low + high) / 2)
		end
	end
	function p.Stop()
		if p.group then p.group:Stop() end
		region:SetAlpha(high)
	end
	s.pulse = p
	return p
end
