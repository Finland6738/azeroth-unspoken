-- Azeroth Unspoken: layering of the windows (#181).
-- Wizard, journal, relationships, character soul and the dialogue window never hide the narrator box:
--  * every window is registered here: HIGH strata (above the HUD, below the client's own dialogs, so a raised window
--    never covers a confirmation dialog), `SetToplevel`, and a click or an opening raises it above the others;
--  * a window that opens on top of another one is shifted (cascade), so the journal's "..." no longer opens
--    Relationships exactly over the journal;
--  * whenever a window opens, closes or is dragged, the narrator moves out from under it for as long as they overlap
--    (below the window, else above it) and returns to the player's own place afterwards; the saved place never changes.
local ADDON, NS = ...
---@class AUWindows
---@field list table[] registered windows, in the order they were registered
local Windows = NS:RegisterModule("windows")
NS.Windows = Windows

Windows.list = {}
Windows.STRATA = "HIGH"
Windows.CASCADE = 26     -- units a window is shifted when another one sits on the same spot
Windows.GAP = 8          -- units kept between the narrator and a window
local seq = 0

-- the rectangle of a frame in UIParent units, or nil when the client cannot say (not laid out, secret, a test double)
---@param f table
---@return number? left
---@return number? bottom
---@return number? right
---@return number? top
local function Rect(f)
	if type(f) ~= "table" or not f.GetLeft then return nil end
	local l, b, r, t = f:GetLeft(), f:GetBottom(), f:GetRight(), f:GetTop()
	if type(l) ~= "number" or type(b) ~= "number" or type(r) ~= "number" or type(t) ~= "number" then return nil end
	local k = 1
	local s, u = f.GetEffectiveScale and f:GetEffectiveScale(), UIParent.GetEffectiveScale and UIParent:GetEffectiveScale()
	if type(s) == "number" and type(u) == "number" and u ~= 0 then k = s / u end
	return l * k, b * k, r * k, t * k
end
Windows.Rect = Rect

local function Overlap(a, b)
	return a[1] < b[3] and b[1] < a[3] and a[2] < b[4] and b[2] < a[4]
end

---@return table[] rects the rectangles of the windows that are open
function Windows:OpenRects()
	local out = {}
	for _, w in ipairs(self.list) do
		if w:IsShown() then
			local l, b, r, t = Rect(w)
			if l then table.insert(out, { l, b, r, t, frame = w }) end
		end
	end
	return out
end

---@param frame table
function Windows:Raise(frame)
	seq = seq + 1
	frame.auRaised = seq
	if frame.Raise then frame:Raise() end
end

---@return table? frame the window raised last among the open ones
function Windows:Top()
	local top
	for _, w in ipairs(self.list) do
		if w:IsShown() and (top == nil or (w.auRaised or 0) > (top.auRaised or 0)) then top = w end
	end
	return top
end

-- the open windows other than `frame` that sit on the same spot (their corner within a cascade step)
local function Neighbours(frame)
	local l, _, _, t = Rect(frame)
	local n = 0
	if not l then return 0 end
	for _, w in ipairs(Windows.list) do
		if w ~= frame and w:IsShown() then
			local l2, _, _, t2 = Rect(w)
			if l2 and math.abs(l2 - l) < Windows.CASCADE and math.abs(t2 - t) < Windows.CASCADE then n = n + 1 end
		end
	end
	return n
end

---Shifts a window that opens exactly over another one, down and to the right, once per window below it.
---A window the player has moved keeps its place.
---@param frame table
function Windows:Cascade(frame)
	if frame.auMoved or not frame.auHome then return end
	local n = Neighbours(frame)
	if n == 0 then return end
	local h = frame.auHome
	frame:ClearAllPoints()
	frame:SetPoint(h[1], UIParent, h[2], h[3] + n * self.CASCADE, h[4] - n * self.CASCADE)
end

---Called when a registered window is shown.
---@param frame table
function Windows:Opened(frame)
	self:Cascade(frame)
	self:Raise(frame)
	self:Avoid()
end

---Makes a window one of the managed ones. Call it at the end of the window's Build, after its scripts are set.
---@param frame table
function Windows:Register(frame)
	for _, w in ipairs(self.list) do if w == frame then return end end
	table.insert(self.list, frame)
	frame:SetFrameStrata(self.STRATA)
	if frame.SetToplevel then frame:SetToplevel(true) end   -- the client raises a clicked toplevel frame by itself
	local point, _, relPoint, x, y = frame:GetPoint()
	if type(x) == "number" and type(y) == "number" then frame.auHome = { point, relPoint, x, y } end
	frame:HookScript("OnShow", function() Windows:Opened(frame) end)
	frame:HookScript("OnHide", function() Windows:Avoid() end)
	frame:HookScript("OnMouseDown", function() Windows:Raise(frame) end)
	frame:HookScript("OnDragStop", function() frame.auMoved = true; Windows:Avoid() end)
end

---The narrator steps aside for the windows (see Narrator:Avoid).
function Windows:Avoid()
	if NS.Narrator and NS.Narrator.Avoid then NS.Narrator:Avoid() end
end

---Where the narrator box must go to leave the open windows uncovered.
---@param box table the narrator frame, at its own place
---@return number? left nil when the box is clear
---@return number? bottom
---@return boolean? crowded true when no free place was found
function Windows:SpotFor(box)
	local l, b, r, t = Rect(box)
	if not l then return nil end
	local width, height = r - l, t - b
	local screen = select(4, Rect(UIParent)) or 0
	local rects = self:OpenRects()
	local moved = false
	for _ = 1, #rects + 1 do
		local hit
		for _, w in ipairs(rects) do
			if Overlap({ l, b, r, t }, w) then hit = w; break end
		end
		if not hit then break end
		-- under the window with a gap, above it with a gap, then touching it on either side
		local below, above = hit[2] - self.GAP - height, hit[4] + self.GAP
		local touchBelow, touchAbove = hit[2] - height, hit[4]
		if below >= 0 then b = below
		elseif screen > 0 and above + height <= screen then b = above
		elseif touchBelow >= 0 then b = touchBelow
		elseif screen > 0 and touchAbove + height <= screen then b = touchAbove
		else return l, b, true end
		t = b + height
		r = l + width
		moved = true
	end
	if not moved then return nil end
	return l, b, false
end
