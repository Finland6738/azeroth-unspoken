-- Azeroth Unspoken: piccoli componenti dell'interfaccia, solo con elementi presenti in tutti i client
-- (nessun backdrop, nessun modello di cursore, nessuna grafica di Blizzard: texture colorate). Ogni finestra nasce da
-- W.Window (#187): un solo guscio, con bordo, fascia del titolo, pulsante di chiusura, Esc e scala.
local ADDON, NS = ...
local W = {}
NS.Widgets = W

-- sfondo a tinta unita
---@param frame table
---@param r number
---@param g number
---@param b number
---@param a number
---@return table texture
function W.Background(frame, r, g, b, a)
	local bg = frame:CreateTexture(nil, "BACKGROUND")
	bg:SetAllPoints()
	if bg.SetColorTexture then bg:SetColorTexture(r, g, b, a) else bg:SetTexture(r, g, b, a) end
	return bg
end

function W.SetBackgroundAlpha(bg, r, g, b, a)
	if bg.SetColorTexture then bg:SetColorTexture(r, g, b, a) else bg:SetTexture(r, g, b, a) end
end

-- cambia la dimensione del carattere mantenendo tipo e contorno
function W.SetFontSize(fs, size, flags)
	local path, _, f = fs:GetFont()
	fs:SetFont(path or STANDARD_TEXT_FONT, size, flags or f or "")
end

---@param parent table
---@param text? string
---@param width number
---@param height? number
---@param onClick? fun(self: table, button: string)
---@return table button
function W.Button(parent, text, width, height, onClick)
	local b = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
	b:SetSize(width, height or 22)
	b:SetText(text or "")
	if onClick then b:SetScript("OnClick", onClick) end
	return b
end

function W.Tooltip(frame, text)
	frame:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(type(text) == "function" and text() or text, 1, 1, 1, 1, true)
		GameTooltip:Show()
	end)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

-- casella di testo su una riga: prova il modello standard, altrimenti una casella semplice
---@param parent table
---@param width number
---@param height? number
---@return table editBox
function W.EditBox(parent, width, height)
	local ok, box = pcall(CreateFrame, "EditBox", nil, parent, "InputBoxTemplate")
	if not ok or not box then
		box = CreateFrame("EditBox", nil, parent)
		W.Background(box, 0, 0, 0, 0.6)
	end
	box:SetSize(width, height or 22)
	box:SetAutoFocus(false)
	box:SetFontObject(ChatFontNormal or GameFontHighlight)
	box:SetTextInsets(6, 6, 0, 0)
	return box
end

-- The slider track (#183): (0.55, 0.50, 0.70) is 5.4:1 against the window surface, above the 3:1 that a control needs
-- (it was 1.7:1). The test computes the ratio from these values.
W.SLIDER_TRACK = { 0.55, 0.5, 0.7 }
W.SLIDER_STEP_BUTTON, W.SLIDER_GAP = 24, 4   -- the "-" and "+" of a slider: 24x24 targets (#183)

-- Cursore a trascinamento, solo con texture colorate (nessun modello): una barra, un indicatore e, per le scale con
-- valori negativi, un segno sullo zero. `onChange(valore, finale)` parte a ogni movimento (finale = false) e al rilascio
-- del mouse (finale = true): chi salva i dati lo fa nel secondo caso. Anche i test e la tastiera usano :Set(v, final).
-- #183: the mouse wheel moves it by one step; with `opts.buttons` it carries its own "-" and "+" (24x24) at the ends of
-- `width`, and the track is the space between them; `:Step(n)` moves by n steps, saved at once (final). The frame
-- follows the cursor (OnUpdate) only while the mouse button is down.
---@param parent table
---@param width number the whole width, buttons included
---@param min number
---@param max number
---@param onChange? fun(value: number, final: boolean)
---@param opts? { step?: number, buttons?: boolean }
---@return table slider
function W.Slider(parent, width, min, max, onChange, opts)
	opts = opts or {}
	local s = CreateFrame("Frame", nil, parent)
	s:SetSize(width, opts.buttons and W.SLIDER_STEP_BUTTON or 16)
	s:EnableMouse(true)
	local inset = opts.buttons and (W.SLIDER_STEP_BUTTON + W.SLIDER_GAP + 4) or 0
	s.min, s.max, s.value, s.width, s.inset = min, max, min, width - 2 * inset, inset
	s.step = opts.step or math.max(1, math.floor((max - min) / 20 + 0.5))
	local bar = s:CreateTexture(nil, "BACKGROUND")
	bar:SetPoint("LEFT", s, "LEFT", inset, 0)
	bar:SetSize(s.width, 4)
	W.SetBackgroundAlpha(bar, W.SLIDER_TRACK[1], W.SLIDER_TRACK[2], W.SLIDER_TRACK[3], 1)
	s.bar = bar
	if min < 0 and max > 0 then
		local zero = s:CreateTexture(nil, "ARTWORK")
		zero:SetPoint("CENTER", s, "LEFT", inset + s.width * (-min) / (max - min), 0)
		zero:SetSize(2, 12)
		if zero.SetColorTexture then zero:SetColorTexture(0.9, 0.9, 0.95, 0.9) end
	end
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetSize(8, 16)
	if thumb.SetColorTexture then thumb:SetColorTexture(W.BRAND[1], W.BRAND[2], W.BRAND[3], 1) end
	s.thumb = thumb

	local function Place()
		local f = (s.value - s.min) / (s.max - s.min)
		thumb:ClearAllPoints()
		thumb:SetPoint("CENTER", s, "LEFT", s.inset + s.width * f, 0)
	end

	---@param v number
	---@param final? boolean
	function s:Set(v, final)
		v = math.max(self.min, math.min(self.max, math.floor((tonumber(v) or self.min) + 0.5)))
		self.value = v
		Place()
		if onChange then onChange(v, final == true) end
	end
	---Imposta il valore senza chiamare onChange (per ridisegnare la finestra).
	---@param v number
	function s:SetQuiet(v)
		self.value = math.max(self.min, math.min(self.max, tonumber(v) or self.min))
		Place()
	end
	---Moves by `n` steps (the "-" and "+", the wheel) and saves at once.
	---@param n number
	function s:Step(n)
		self:Set(self.value + n * self.step, true)
	end
	local function FromCursor()
		local x = NS.Compat.SafeCall("GetCursorPosition")
		local scale = s:GetEffectiveScale()
		local left = s:GetLeft()
		if type(x) ~= "number" or type(scale) ~= "number" or type(left) ~= "number" or scale == 0 then return nil end
		local f = math.max(0, math.min(1, (x / scale - left - s.inset) / s.width))
		return s.min + f * (s.max - s.min)
	end
	-- #183: follows the cursor only while dragging; idle, the slider costs nothing per frame
	local function Follow()
		local v = FromCursor()
		if v then s:Set(v, false) end
	end
	local function StopFollowing()
		s.dragging = false
		s:SetScript("OnUpdate", nil)
	end
	s:SetScript("OnMouseDown", function()
		s.dragging = true
		s:SetScript("OnUpdate", Follow)
		Follow()
	end)
	s:SetScript("OnMouseUp", function()
		if not s.dragging then return end
		StopFollowing()
		local v = FromCursor()
		s:Set(v or s.value, true)
	end)
	-- a window closed while the button is down ends the drag where it is
	s:SetScript("OnHide", function()
		if s.dragging then
			StopFollowing()
			s:Set(s.value, true)
		end
	end)
	if s.EnableMouseWheel then s:EnableMouseWheel(true) end
	s:SetScript("OnMouseWheel", function(_, delta) s:Step(delta > 0 and 1 or -1) end)
	if opts.buttons then
		s.minus = W.FlatButton(s, "-", W.SLIDER_STEP_BUTTON, W.SLIDER_STEP_BUTTON, function() s:Step(-1) end)
		s.minus:SetPoint("LEFT", s, "LEFT", 0, 0)
		s.plus = W.FlatButton(s, "+", W.SLIDER_STEP_BUTTON, W.SLIDER_STEP_BUTTON, function() s:Step(1) end)
		s.plus:SetPoint("RIGHT", s, "RIGHT", 0, 0)
	end
	Place()
	return s
end

---Contrast ratio of two colours (WCAG relative luminance), for the tests of the 3:1 rule of controls (#183).
---@param a number[] { r, g, b } 0-1
---@param b number[]
---@return number ratio
function W.Contrast(a, b)
	local function L(c)
		local function ch(v) return v <= 0.03928 and v / 12.92 or ((v + 0.055) / 1.055) ^ 2.4 end
		return 0.2126 * ch(c[1]) + 0.7152 * ch(c[2]) + 0.0722 * ch(c[3])
	end
	local la, lb = L(a), L(b)
	if la < lb then la, lb = lb, la end
	return (la + 0.05) / (lb + 0.05)
end

-- Saved position (#192): the frame's bottom-left corner, read with GetLeft/GetBottom, as { "BOTTOMLEFT", "BOTTOMLEFT",
-- x, y }. A box dragged by its top would otherwise keep the anchor of a raw GetPoint (TOP or CENTER), and when it grows
-- it would grow downwards over the action bars. Without a rectangle (not laid out yet) the raw anchor is kept.
---@param frame table
---@return table pos
function W.SavePosition(frame)
	local left, bottom = frame:GetLeft(), frame:GetBottom()
	if type(left) == "number" and type(bottom) == "number" and left == left and bottom == bottom then
		return { "BOTTOMLEFT", "BOTTOMLEFT", math.floor(left + 0.5), math.floor(bottom + 0.5) }
	end
	local point, _, relPoint, x, y = frame:GetPoint()
	return { point, relPoint, x, y }
end

function W.RestorePosition(frame, pos, default)
	frame:ClearAllPoints()
	if type(pos) == "table" and pos[1] and pos[2] and tonumber(pos[3]) and tonumber(pos[4]) then
		frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		frame:SetPoint(default[1], UIParent, default[2], default[3], default[4])
	end
end

-- The look of every window (#187, the "proposed" design of the UI review): warm dark surfaces, a thin bronze edge, a
-- title band, flat buttons. Only coloured textures, so it works in every client and uses no Blizzard art.
W.PALETTE = {
	surface = { 0.06, 0.05, 0.03 },   -- window
	band = { 0.09, 0.07, 0.04 },      -- title band
	edge = { 0.42, 0.33, 0.13 },      -- outer edge of a window
	rule = { 0.33, 0.27, 0.1 },
	gold = { 1, 0.82, 0 },
	goldDim = { 0.79, 0.64, 0.15 },
	card = { 0.1, 0.085, 0.06 },
	cardEdge = { 0.27, 0.23, 0.15 },
	cardOn = { 0.17, 0.14, 0.04 },
	muted = { 0.3, 0.26, 0.18 },
	danger = { 0.8, 0.3, 0.24 },      -- an action that loses data: outline and label
	dangerOn = { 0.45, 0.1, 0.07 },   -- the same action waiting for its confirmation
}
-- The one brand violet (#187): the addon's name in chat, the slider thumb, the highlight of a row.
W.BRAND = { 0.706, 0.549, 1 }
W.BRAND_HEX = "b48cff"
W.TITLE_FONT = "GameFontNormalLarge"   -- one title style, in the band of every window
W.TEXT_FONT = "GameFontHighlight"      -- 12 units: the text of a consent or of a privacy note is never smaller (#182)
W.BAND = 36                            -- height of the title band
W.TOP = 46                             -- where the content of a window starts, from the top

-- four 1-unit edges around a frame, each anchored on two corners so that it follows a later change of size
local function Edges(frame)
	local edges = {}
	for _, e in ipairs({ { "TOPLEFT", "TOPRIGHT", true }, { "BOTTOMLEFT", "BOTTOMRIGHT", true },
		{ "TOPLEFT", "BOTTOMLEFT", false }, { "TOPRIGHT", "BOTTOMRIGHT", false } }) do
		local t = frame:CreateTexture(nil, "BORDER")
		t:SetPoint(e[1])
		t:SetPoint(e[2])
		if e[3] then t:SetHeight(1) else t:SetWidth(1) end
		table.insert(edges, t)
	end
	return edges
end

local function Tint(texture, c, a)
	if texture.SetColorTexture then texture:SetColorTexture(c[1], c[2], c[3], a or 1) end
end
W.Tint = Tint

---Window chrome of the flat design: a surface, a bronze edge and, with `band` units, a darker title band and a rule
---under it.
---@param frame table
---@param width number
---@param height number
---@param band? number height of the title band
---@return table parts { bg, edges, band, rule }
function W.FlatWindow(frame, width, height, band)
	local P = W.PALETTE
	local parts = { bg = W.Background(frame, P.surface[1], P.surface[2], P.surface[3], 0.97) }
	parts.edges = Edges(frame)
	for _, t in ipairs(parts.edges) do Tint(t, P.edge) end
	if band then
		parts.band = frame:CreateTexture(nil, "BORDER")
		parts.band:SetPoint("TOPLEFT", 1, -1)
		parts.band:SetPoint("TOPRIGHT", -1, -1)
		parts.band:SetHeight(band)
		Tint(parts.band, P.band)
		parts.rule = frame:CreateTexture(nil, "BORDER")
		parts.rule:SetPoint("TOPLEFT", 1, -(band + 1))
		parts.rule:SetPoint("TOPRIGHT", -1, -(band + 1))
		parts.rule:SetHeight(1)
		Tint(parts.rule, P.rule)
	end
	return parts
end

---A flat button. kind: "primary" (gold fill), "ghost" (gold outline, the default), "danger" (red outline: an action
---that loses data; `:SetArmed(true)` fills it while it waits for its confirmation) or "text" (no box, left aligned).
---`:SetSelected(on)` marks the chosen tab or option with a full gold edge and a bar under the label, never by colour
---alone (#187). `:SetText`, `:GetText` and `:SetEnabled` work as on any button. `:SetStyle(kind)` changes the kind of a
---boxed button (a row button that is sometimes an action that loses data).
---@param parent table
---@param text? string
---@param width number
---@param height? number
---@param onClick? fun(self: table, button: string)
---@param kind? "primary"|"ghost"|"danger"|"text"
---@return table button
function W.FlatButton(parent, text, width, height, onClick, kind)
	local P = W.PALETTE
	kind = kind or "ghost"
	height = height or 24
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height)
	b.style = kind
	b.bg = W.Background(b, 0, 0, 0, 0)
	b.edges = kind == "text" and {} or Edges(b)
	b.bar = b:CreateTexture(nil, "ARTWORK")   -- the bar under the label of a selected tab or option
	b.bar:SetPoint("BOTTOMLEFT", 4, 2)
	b.bar:SetPoint("BOTTOMRIGHT", -4, 2)
	b.bar:SetHeight(2)
	Tint(b.bar, P.gold)
	b.bar:Hide()
	b.label = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	if kind == "text" then
		b.label:SetPoint("LEFT", 2, 0)
	else
		b.label:SetPoint("CENTER", 0, 0)
	end
	function b:Paint()
		local off = self.disabled == true
		local hover = self.hover and not off
		local dim = off and 0.45 or 1
		local kind = self.style
		if kind == "primary" then
			Tint(self.bg, hover and { 0.58, 0.44, 0.08 } or { 0.45, 0.34, 0.06 }, off and 0.5 or 1)
			for _, t in ipairs(self.edges) do Tint(t, P.goldDim, dim) end
			self.label:SetTextColor(1, 0.95, 0.77, dim)
		elseif kind == "danger" then
			Tint(self.bg, self.armed and P.dangerOn or { 0.3, 0.08, 0.05 }, self.armed and 1 or (hover and 0.8 or 0))
			for _, t in ipairs(self.edges) do Tint(t, P.danger, off and 0.4 or (self.armed and 1 or 0.8)) end
			self.label:SetTextColor(1, self.armed and 0.85 or 0.62, self.armed and 0.8 or 0.55, dim)
		elseif kind == "ghost" then
			local on = self.selected == true
			Tint(self.bg, on and P.cardOn or (hover and { 0.2, 0.16, 0.06 } or { 0, 0, 0 }), (on or hover) and 1 or 0)
			for _, t in ipairs(self.edges) do Tint(t, on and P.gold or P.goldDim, off and 0.3 or ((on or hover) and 1 or 0.55)) end
			if on then self.label:SetTextColor(1, 1, 1, 1) else self.label:SetTextColor(0.9, 0.85, 0.72, dim) end
		else
			self.label:SetTextColor(hover and 1 or 0.72, hover and 0.82 or 0.66, hover and 0 or 0.6, dim)
		end
		self.bar:SetShown(self.selected == true)
	end
	function b:SetText(t) self.label:SetText(t or "") end
	function b:GetText() return self.label:GetText() end
	function b:SetSelected(on)
		self.selected = on == true
		self:Paint()
	end
	function b:SetArmed(on)
		self.armed = on == true
		self:Paint()
	end
	function b:SetStyle(k)
		if self.style == "text" or k == "text" then return end
		self.style = k
		self:Paint()
	end
	local enable = b.SetEnabled
	function b:SetEnabled(on)
		if enable then enable(self, on) end
		self.disabled = not on
		self:Paint()
	end
	b:SetText(text)
	if onClick then b:SetScript("OnClick", onClick) end
	-- hooks, so a tooltip set later with W.Tooltip does not replace the hover colour
	b:HookScript("OnEnter", function(self) self.hover = true; self:Paint() end)
	b:HookScript("OnLeave", function(self) self.hover = false; self:Paint() end)
	b:Paint()
	return b
end

-- Card (#188): a clickable panel with a title, a description inside it and a marker; the choice is shown with a gold
-- border and a filled marker, never by colour alone (the description can also say it in words). Only coloured
-- textures, like everything here. `:SetCard(title, sub, on, tag)` redraws; `:GetText()` is the title.
-- `font` is the description's font: W.TEXT_FONT for the text of a consent (#182).
---@param parent table
---@param width number
---@param height number
---@param onClick? fun(self: table, button: string)
---@param font? string
---@return table card
function W.Card(parent, width, height, onClick, font)
	local P = W.PALETTE
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height)
	b.bg = W.Background(b, P.card[1], P.card[2], P.card[3], 1)
	b.edges = Edges(b)
	b.mark = b:CreateTexture(nil, "ARTWORK")
	b.mark:SetSize(10, 10)
	b.mark:SetPoint("TOPRIGHT", -12, -12)
	b.title = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	b.title:SetPoint("TOPLEFT", 12, -8)
	b.title:SetPoint("TOPRIGHT", -30, -8)
	b.title:SetJustifyH("LEFT")
	b.sub = b:CreateFontString(nil, "OVERLAY", font or "GameFontHighlightSmall")
	b.sub:SetPoint("TOPLEFT", b.title, "BOTTOMLEFT", 0, -4)
	b.sub:SetWidth(width - 24)
	b.sub:SetJustifyH("LEFT")
	b.sub:SetJustifyV("TOP")
	if onClick then b:SetScript("OnClick", onClick) end
	b:HookScript("OnEnter", function(self)
		if not self.on then Tint(self.bg, { 0.14, 0.12, 0.08 }, 1) end
	end)
	b:HookScript("OnLeave", function(self) self:SetCard(nil, nil, self.on) end)
	function b:SetText(text) self.title:SetText(text or "") end
	function b:GetText() return self.title:GetText() end
	function b:SetCard(title, sub, on, tag)
		if title then self.title:SetText(tag and (title .. "  |cffffd100(" .. tag .. ")|r") or title) end
		if sub then self.sub:SetText(sub) end
		self.on = on == true
		for _, t in ipairs(self.edges) do Tint(t, self.on and P.gold or P.cardEdge, 1) end
		Tint(self.mark, self.on and P.gold or P.muted, 1)
		Tint(self.bg, self.on and P.cardOn or P.card, 1)
	end
	b:SetCard(nil, nil, false)
	return b
end

---------------------------------------------------------------------------
-- Windows (#174, #187, #182, #192)
---------------------------------------------------------------------------
W.windows = {}   -- every window made by W.Window, in the order it was made

---The scale of the addon's windows (#182): ui.windowScale, 0.8-1.5.
---@return number
function W.WindowScale()
	local s = NS.db and NS.db.ui and tonumber(NS.db.ui.windowScale)
	if not s or s ~= s then return 1 end
	return math.max(0.8, math.min(1.5, s))
end

---@param frame table
function W.ApplyScale(frame)
	if frame and frame.SetScale then frame:SetScale(W.WindowScale()) end
end

-- the open windows follow a change of the settings (#192): scale, title, then their own redraw
local function FollowSettings()
	for _, f in ipairs(W.windows) do
		if f:IsShown() then
			W.ApplyScale(f)
			if f.titleKey then f.title:SetText(NS:L(f.titleKey)) end
			if f.auRefresh then
				local ok, err = pcall(f.auRefresh)
				if not ok and NS.Diagnostics then NS.Diagnostics:Error("window:" .. tostring(f.auName), tostring(err)) end
			end
		end
	end
end
W.FollowSettings = FollowSettings

---Lets Esc close a named window (#174): the client hides every frame named in UISpecialFrames when Esc is pressed,
---before it opens the game menu. Never for the NPC dialogue window (ADR 0020).
---@param name string
function W.CloseOnEscape(name)
	local list = type(UISpecialFrames) == "table" and UISpecialFrames or nil
	if not list or type(name) ~= "string" then return end
	for _, n in ipairs(list) do if n == name then return end end
	table.insert(list, name)
end

---One window shell for the addon (#187): hidden at once (#192), movable, a surface with a bronze edge, a title band
---with the title and a close box, Esc (#174), the window scale (#182) and a redraw when the settings change (#192).
---opts: name (the global name, needed for Esc), onClose (what the close box does; default: hide; Esc always hides, so a
---window that must do more on Esc does it in OnHide), refresh (the window's redraw, called when the settings change
---while it is open), noEscape, point ({ point, x, y } on UIParent). The content starts W.TOP units from the top.
---@param parent? table
---@param width number
---@param height number
---@param title? string key of the title
---@param opts? { name?: string, onClose?: fun(), refresh?: fun(), noEscape?: boolean, point?: table }
---@return table frame with .title, .closeBox, .chrome
function W.Window(parent, width, height, title, opts)
	opts = opts or {}
	local f = CreateFrame("Frame", opts.name, parent or UIParent)
	f:Hide()   -- #192: hidden before anything else can fail, so a broken build never leaves a frame that blocks clicks
	f.auName = opts.name
	f:SetSize(width, height)
	local pt = opts.point or { "CENTER", 0, 0 }
	f:SetPoint(pt[1], pt[2], pt[3])
	f:SetMovable(true)
	f:EnableMouse(true)
	f:SetClampedToScreen(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", f.StartMoving)
	f:SetScript("OnDragStop", f.StopMovingOrSizing)
	f.chrome = W.FlatWindow(f, width, height, W.BAND)

	f.titleKey = title
	f.title = f:CreateFontString(nil, "ARTWORK", W.TITLE_FONT)
	f.title:SetPoint("TOPLEFT", 16, -11)
	f.title:SetWidth(width - 72)
	f.title:SetJustifyH("LEFT")
	if f.title.SetWordWrap then f.title:SetWordWrap(false) end
	local close = opts.onClose or function() f:Hide() end
	f.closeBox = W.FlatButton(f, "X", 24, 24, function() close() end)
	f.closeBox:SetPoint("TOPRIGHT", -8, -6)
	W.Tooltip(f.closeBox, function() return NS:L("win_close_tip") end)

	if opts.name and not opts.noEscape then W.CloseOnEscape(opts.name) end
	f.auRefresh = opts.refresh
	f:HookScript("OnShow", function(self)
		W.ApplyScale(self)
		if self.titleKey then self.title:SetText(NS:L(self.titleKey)) end
	end)
	table.insert(W.windows, f)
	if not W.following and NS.Config and NS.Config.OnChange then
		W.following = true
		NS.Config:OnChange(FollowSettings)
	end
	return f
end

-- Two-click confirmation (#190): `:Arm(key)` starts one with a token of its own, `:Disarm()` ends it; the timer ends
-- only the arming that started it, never a newer one. Windows call `:Disarm()` in OnHide, so nothing stays armed.
---@param seconds number
---@param onExpire? fun() the redraw when an arming expires
---@return table confirm
function W.Confirm(seconds, onExpire)
	local c = { armed = nil, token = 0 }
	---@param key? any what is armed (default: true)
	function c:Arm(key)
		self.token = self.token + 1
		local token = self.token
		if key == nil then key = true end
		self.armed = key
		NS.Compat.After(seconds, function()
			if self.token ~= token then return end
			self.armed = nil
			if onExpire then onExpire() end
		end)
	end
	function c:Disarm()
		self.token = self.token + 1
		self.armed = nil
	end
	---@param key? any nil: is anything armed
	---@return boolean
	function c:Is(key)
		if key == nil then return self.armed ~= nil end
		return self.armed == key
	end
	return c
end
