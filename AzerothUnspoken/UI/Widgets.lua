-- Azeroth Unspoken: the widgets of the NEBULA look (UI-ECO step UI-3, ADR 0058, docs/specs/ui-style.md; adapted from the
-- sister addon's UI/Widgets.lua). Every widget is made of ordinary frames and the white textures of Media/, tinted with a
-- token of UI/Theme.lua, so a change of theme recolours it without /reload; motion comes from UI/Motion.lua.
-- This file holds the shell of every window (W.Window: the 52-unit title bar with the round logo, the window's name in
-- Orbitron, a mono subtitle, a status chip, the close box, Esc, the scale, the position kept per character), the
-- buttons (W.FlatButton: primary, secondary, ghost, neon, and AU's danger and text kinds), the selectable Card, the
-- addon's own tooltip and the helpers the windows already use. Tabs, Segmented, Badge, Chip, TitleBar, Dialog, Toast,
-- EditBox, ChoiceList, Select, Switch and Slider are in UI/Widgets/Controls.lua, the DataTable and the ThinBar in their
-- own files. Text comes in already translated (NS:L): a widget never holds a sentence. Unprotected frames only.
-- Nothing here has run in the game client: the look, the fonts, the 9-slice shapes, the glows and the motion are
-- predictions until the owner tries them.
local ADDON, NS = ...
local W = {}
NS.Widgets = W

local Theme, Motion, Assets = NS.Theme, NS.Motion, NS.Assets

---------------------------------------------------------------------------
-- Helpers kept for the frames that are rebuilt in a later step (narrator, dialogue, speak button: UI-4)
---------------------------------------------------------------------------

-- a solid colour behind a frame (the narrator box and the NPC dialogue keep their own colours until UI-4)
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

-- the client's own button, for the NPC dialogue window until UI-4 rebuilds it
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

---Contrast ratio of two opaque colours (WCAG relative luminance): the formula of UI/Theme.lua.
---@param a number[] { r, g, b } 0-1
---@param b number[]
---@return number ratio
function W.Contrast(a, b) return Theme.Contrast(a, b) end

---The colour code of a token in the current theme ("|cffRRGGBB"), for a word coloured inside a longer text. A window
---that uses it builds its text again when the theme changes (W.Window calls its refresh).
---@param token string
---@return string
function W.Hex(token)
	local r, g, b = Theme.Color(token)
	return ("|cff%02x%02x%02x"):format(math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5))
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

---@param pos any
---@return boolean ok a position W.SavePosition could have written
function W.IsPosition(pos)
	return type(pos) == "table" and type(pos[1]) == "string" and type(pos[2]) == "string"
		and type(tonumber(pos[3])) == "number" and type(tonumber(pos[4])) == "number"
		and tonumber(pos[3]) == tonumber(pos[3]) and tonumber(pos[4]) == tonumber(pos[4])
		and math.abs(tonumber(pos[3])) < 100000 and math.abs(tonumber(pos[4])) < 100000
end

function W.RestorePosition(frame, pos, default)
	frame:ClearAllPoints()
	if W.IsPosition(pos) then
		frame:SetPoint(pos[1], UIParent, pos[2], tonumber(pos[3]), tonumber(pos[4]))
	else
		frame:SetPoint(default[1], UIParent, default[2], default[3], default[4])
	end
end

-- The narrator's flat button, as it was before UI-3 (#187): only coloured textures, its own warm colours. The narrator
-- box is not a window and keeps its look until UI-4 rebuilds it on the theme; nothing else uses this.
local LEGACY = {
	gold = { 1, 0.82, 0 }, goldDim = { 0.79, 0.64, 0.15 }, cardOn = { 0.17, 0.14, 0.04 },
	danger = { 0.8, 0.3, 0.24 }, dangerOn = { 0.45, 0.1, 0.07 },
}

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

---The narrator's button until UI-4 (see LEGACY). kind: "primary", "ghost" (default), "danger", "text".
---@return table button with .edges, .label, :SetText, :GetText, :SetEnabled, :Paint
function W.LegacyFlatButton(parent, text, width, height, onClick, kind)
	local P = LEGACY
	kind = kind or "ghost"
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height or 24)
	b.style = kind
	b.bg = W.Background(b, 0, 0, 0, 0)
	b.edges = kind == "text" and {} or Edges(b)
	b.label = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	if kind == "text" then b.label:SetPoint("LEFT", 2, 0) else b.label:SetPoint("CENTER", 0, 0) end
	function b:Paint()
		local off = self.disabled == true
		local hover = self.hover and not off
		local dim = off and 0.45 or 1
		if self.style == "primary" then
			Tint(self.bg, hover and { 0.58, 0.44, 0.08 } or { 0.45, 0.34, 0.06 }, off and 0.5 or 1)
			for _, t in ipairs(self.edges) do Tint(t, P.goldDim, dim) end
			self.label:SetTextColor(1, 0.95, 0.77, dim)
		elseif self.style == "danger" then
			Tint(self.bg, { 0.3, 0.08, 0.05 }, hover and 0.8 or 0)
			for _, t in ipairs(self.edges) do Tint(t, P.danger, off and 0.4 or 0.8) end
			self.label:SetTextColor(1, 0.62, 0.55, dim)
		elseif self.style == "ghost" then
			Tint(self.bg, hover and { 0.2, 0.16, 0.06 } or { 0, 0, 0 }, hover and 1 or 0)
			for _, t in ipairs(self.edges) do Tint(t, hover and P.gold or P.goldDim, off and 0.3 or (hover and 1 or 0.55)) end
			self.label:SetTextColor(0.9, 0.85, 0.72, dim)
		else
			self.label:SetTextColor(hover and 1 or 0.72, hover and 0.82 or 0.66, hover and 0 or 0.6, dim)
		end
	end
	function b:SetText(t) self.label:SetText(t or "") end
	function b:GetText() return self.label:GetText() end
	local enable = b.SetEnabled
	function b:SetEnabled(on)
		if enable then enable(self, on) end
		self.disabled = not on
		self:Paint()
	end
	b:SetText(text)
	if onClick then b:SetScript("OnClick", onClick) end
	b:HookScript("OnEnter", function(self) self.hover = true; self:Paint() end)
	b:HookScript("OnLeave", function(self) self.hover = false; self:Paint() end)
	b:Paint()
	return b
end

---------------------------------------------------------------------------
-- Tooltip: the addon's own (docs/specs/ui-style.md: FDCP §3), inverted (text-1 surface, bg text). GameTooltip is
-- kept for the game's items only, and the addon shows none today.
---------------------------------------------------------------------------
W.TIP_WIDTH = 280   -- the widest line of the tooltip before it wraps

local tip
local function TipFrame()
	if tip then return tip end
	tip = CreateFrame("Frame", nil, UIParent)
	tip:Hide()
	tip:SetFrameStrata("TOOLTIP")
	tip:SetClampedToScreen(true)
	tip.parts = Theme.Panel(tip, { radius = 8, fill = "text-1", border = "border-strong", shadow = true, shadowAlpha = 0.4 })
	tip.text = Theme.NewText(tip, "Body", "bg")
	tip.text:SetPoint("TOPLEFT", tip, "TOPLEFT", 10, -8)
	tip.text:SetJustifyH("LEFT")
	if tip.text.SetWordWrap then tip.text:SetWordWrap(true) end
	return tip
end

---Shows the addon's tooltip over `owner` with `text` (nothing for an empty text).
---@param owner table
---@param text? string
function W.ShowTip(owner, text)
	if type(text) ~= "string" or text == "" then W.HideTip(); return end
	local t = TipFrame()
	t.owner = owner
	t.text:SetWidth(W.TIP_WIDTH)
	t.text:SetText(text)
	local w = math.min(W.TIP_WIDTH, math.ceil(t.text:GetStringWidth() or W.TIP_WIDTH))
	t.text:SetWidth(math.max(w, 24))
	t:SetSize(math.max(w, 24) + 20, math.ceil(t.text:GetStringHeight() or 14) + 16)
	t:ClearAllPoints()
	t:SetPoint("BOTTOM", owner, "TOP", 0, 6)
	t:Show()
	Motion.FadeIn(t, Motion.FAST)
end

function W.HideTip()
	if tip and tip:IsShown() then tip:Hide() end
end

---The text the addon's tooltip shows now, "" when it is hidden (for the tests).
---@return string
function W.TipText()
	if not tip or not tip:IsShown() then return "" end
	return tip.text:GetText() or ""
end

---A tooltip on `frame`: a text or a function that returns one (empty: no tooltip). Calling it again changes the text;
---the frame's own OnEnter and OnLeave are kept (hooks).
---@param frame table
---@param text string|fun(): string
function W.Tooltip(frame, text)
	frame.auTip = text
	if frame.auTipHooked then return end
	frame.auTipHooked = true
	frame:HookScript("OnEnter", function(self)
		local t = self.auTip
		if type(t) == "function" then t = t() end
		W.ShowTip(self, t)
	end)
	frame:HookScript("OnLeave", function() W.HideTip() end)
	frame:HookScript("OnHide", function(self) if tip and tip.owner == self then W.HideTip() end end)
end

---------------------------------------------------------------------------
-- Buttons
---------------------------------------------------------------------------
-- The kinds (docs/specs/ui-style.md §2.2-§2.3): fill token, label token, ring token, gradient, glow. "danger" is an action
-- that loses data: the `err` token on the ring and the label, never a fill until it waits for its confirmation (armed).
-- "text" is a link-like button with no box. The default kind is "secondary" (a boxed button).
W.BUTTON_KINDS = {
	primary   = { fill = "accent",    ink = "on-accent",   gradient = true, glow = "accent", glowAlpha = 0.3 },
	secondary = { fill = "surface-3", ink = "text-1",      ring = "border" },
	ghost     = { ink = "text-2" },
	neon      = { fill = "surface-1", ink = "text-1",      ring = "neon", glow = "neon", glowAlpha = 0.5 },
	danger    = { ink = "err",        ring = "err" },
	text      = { ink = "accent-text" },
}
W.HOVER, W.PRESSED = 0.08, 0.12   -- the white layers of the states (FDCP §3)
W.DISABLED_ALPHA = 0.45

local function GradientOf(region)
	local b = region.auButton
	if b and b.style == "primary" and region.SetGradient then
		local create = NS.Compat.Resolve("CreateColor")
		local function col(token)
			local r, g, bl, a = Theme.Color(token)
			if type(create) == "function" then return create(r, g, bl, a) end
			return { r = r, g = g, b = bl, a = a }
		end
		region:SetGradient("HORIZONTAL", col("accent"), col("accent-2"))
	end
end

---A button of the theme. kind: "primary" | "secondary" (default) | "ghost" | "neon" | "danger" | "text".
---`:SetSelected(on)` marks the chosen tab or option with the accent ring and a bar under the label, never by colour
---alone (#187). `:SetArmed(on)` fills a danger button while it waits for its confirmation. `:SetStyle(kind)` changes the
---kind. `:SetText`, `:GetText` and `:SetEnabled` work as on any button. Hover lays 8 % white over the shape, pressed 12 %,
---a press shrinks it to 0.97 (Motion.Press).
---@param parent table
---@param text? string
---@param width number
---@param height? number
---@param onClick? fun(self: table, button: string)
---@param kind? "primary"|"secondary"|"ghost"|"neon"|"danger"|"text"
---@return table button
function W.FlatButton(parent, text, width, height, onClick, kind)
	kind = W.BUTTON_KINDS[kind or "secondary"] and (kind or "secondary") or "secondary"
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height or 24)
	b.style = kind
	b.fill = Theme.Slice(b, "rr_fill_8", "surface-3", "BACKGROUND")
	b.fill:SetAllPoints(b)
	b.fill.auButton = b
	Theme.Call(b.fill, GradientOf)
	b.ring = Theme.Slice(b, "rr_ring_8", "border", "BORDER")
	b.ring:SetAllPoints(b)
	b.over = Theme.Slice(b, "rr_fill_8", nil, "ARTWORK")
	b.over:SetAllPoints(b)
	b.over:SetVertexColor(1, 1, 1, 1)   -- the white of the hover and pressed layers, the same in every theme
	b.over:SetAlpha(0)
	b.overTo = 0
	b.bar = b:CreateTexture(nil, "ARTWORK", nil, 2)   -- the bar under the label of a selected tab or option
	b.bar:SetPoint("BOTTOMLEFT", 6, 2)
	b.bar:SetPoint("BOTTOMRIGHT", -6, 2)
	b.bar:SetHeight(2)
	Theme.Fill(b.bar, "accent")
	b.bar:Hide()
	b.label = Theme.NewText(b, "Button", "text-1")

	local function Layer(self)
		if self.disabled then return 0 end
		if self.pressed then return W.PRESSED end
		return self.hover and W.HOVER or 0
	end

	function b:Paint()
		local k = W.BUTTON_KINDS[self.style] or W.BUTTON_KINDS.secondary
		local boxed = self.style ~= "text"
		self.label:ClearAllPoints()
		if boxed then self.label:SetPoint("CENTER", self, "CENTER", 0, 0) else self.label:SetPoint("LEFT", self, "LEFT", 2, 0) end
		local fill, ring, ink = k.fill, k.ring, k.ink
		if self.style == "danger" and self.armed then fill, ink = "err", "on-accent" end
		if self.selected then ring = "accent" end
		if self.style == "ghost" and (self.hover or self.selected) and not self.disabled then fill = "surface-3" end
		if fill then Theme.Tint(self.fill, fill); self.fill:Show() else self.fill:Hide() end
		GradientOf(self.fill)
		if ring then Theme.Tint(self.ring, ring); self.ring:Show() else self.ring:Hide() end
		if self.style == "text" and self.hover and not self.disabled then ink = "accent-hover" end
		if self.selected and (self.style == "ghost" or self.style == "secondary") then ink = "text-1" end
		Theme.Text(self.label, ink)
		self.over:SetShown(boxed)
		if k.glow and not self.glow then
			self.glow = Theme.Glow(self, "glow_s", k.glow, { alpha = k.glowAlpha or 0.5 })
			self.glow:SetPoint("TOPLEFT", self, "TOPLEFT", -18, 18)
			self.glow:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", 18, -18)
		end
		if self.glow then
			if k.glow then Theme.Tint(self.glow, k.glow, k.glowAlpha or 0.5) end
			Theme.GlowShow(self.glow, k.glow ~= nil and not self.disabled)
		end
		self.bar:SetShown(self.selected == true)
		self:SetAlpha(self.disabled and W.DISABLED_ALPHA or 1)
		local to = Layer(self)
		if self.overTo ~= to then
			self.overTo = to
			Motion.Fade(self.over, to, Motion.FAST)
		end
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
		if not W.BUTTON_KINDS[k] or self.style == "text" or k == "text" then return end
		self.style = k
		self:Paint()
	end
	local enable = b.SetEnabled
	function b:SetEnabled(on)
		if enable then enable(self, on) end
		self.disabled = not on
		if self.disabled then self.hover, self.pressed = false, false end
		self:Paint()
	end
	b:SetText(text)
	if onClick then b:SetScript("OnClick", onClick) end
	-- hooks, so a tooltip set later with W.Tooltip keeps the hover state
	b:HookScript("OnEnter", function(self) self.hover = true; self:Paint() end)
	b:HookScript("OnLeave", function(self) self.hover, self.pressed = false, false; self:Paint() end)
	b:HookScript("OnMouseDown", function(self) self.pressed = true; self:Paint() end)
	b:HookScript("OnMouseUp", function(self) self.pressed = false; self:Paint() end)
	Motion.Press(b)
	b:Paint()
	return b
end

---------------------------------------------------------------------------
-- Card (#188): a clickable panel with a title, a description inside it and a marker; the choice is a filled marker (a
-- hollow ring otherwise), the accent ring and the raised surface, never colour alone. `:SetCard(title, sub, on, tag)`
-- redraws; `:GetText()` is the title. `font` asks for the description at body size (the text of a consent, #182).
---------------------------------------------------------------------------
---@param parent table
---@param width number
---@param height number
---@param onClick? fun(self: table, button: string)
---@param font? string
---@return table card
function W.Card(parent, width, height, onClick, font)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height)
	b.auCard = true
	b.parts = Theme.Panel(b, { radius = 12, fill = "surface-1", border = "border-subtle", highlight = true })
	b.bg = b.parts.fill
	b.markOff = Theme.Slice(b, "rr_ring_8", "text-3", "ARTWORK")
	b.markOff:SetSize(12, 12)
	b.markOff:SetPoint("TOPRIGHT", -12, -12)
	b.mark = b:CreateTexture(nil, "ARTWORK")
	b.mark:SetTexture(Assets.textures.circle.path)
	b.mark:SetSize(12, 12)
	b.mark:SetPoint("TOPRIGHT", -12, -12)
	Theme.Tint(b.mark, "accent")
	b.title = Theme.NewText(b, "BodyMedium", "text-1")
	b.title:SetPoint("TOPLEFT", 12, -8)
	b.title:SetWidth(width - 42)   -- up to the marker; a width of its own, so that GetStringHeight() is what is drawn
	b.title:SetJustifyH("LEFT")
	b.sub = Theme.NewText(b, font and "Body" or "Small", "text-2")
	b.sub:SetPoint("TOPLEFT", b.title, "BOTTOMLEFT", 0, -4)
	b.sub:SetWidth(width - 24)
	b.sub:SetJustifyH("LEFT")
	b.sub:SetJustifyV("TOP")
	if onClick then b:SetScript("OnClick", onClick) end
	b:HookScript("OnEnter", function(self) self.hover = true; self:SetCard(nil, nil, self.on) end)
	b:HookScript("OnLeave", function(self) self.hover = false; self:SetCard(nil, nil, self.on) end)
	function b:SetText(text) self.title:SetText(text or "") end
	function b:GetText() return self.title:GetText() end
	function b:SetCard(title, sub, on, tag)
		if title then self.title:SetText(tag and (title .. "  " .. W.Hex("accent-text") .. "(" .. tag .. ")|r") or title) end
		if sub then self.sub:SetText(sub) end
		self.on = on == true
		Theme.Tint(self.parts.ring, self.on and "accent" or (self.hover and "border-strong" or "border-subtle"))
		Theme.Tint(self.parts.fill, self.on and "raised" or "surface-1")
		self.mark:SetShown(self.on)
		self.markOff:SetShown(not self.on)
	end
	---#179: the height the card needs for what it says now: the title, the description measured with GetStringHeight(),
	---and the margins; never under `min`. Call it after SetCard; the page lays the next block under the new height.
	---@param min? number
	---@return number height
	function b:Fit(min)
		local h = 8 + math.ceil(self.title:GetStringHeight() or 14) + 4 + math.ceil(self.sub:GetStringHeight() or 0) + 10
		self:SetHeight(math.max(min or 0, h))
		return self:GetHeight()
	end
	b:SetCard(nil, nil, false)
	return b
end

---A button as wide as its label (#180): the label measured with GetStringWidth() in the font of the button, plus `pad`
---(24 by default), between `min` and `max` units. A label wider than `max` is cut (the width of the label is `max`
---minus the margins) and the whole text shows in the tooltip, which the caller can still replace with W.Tooltip.
---@param b table a button made by W.FlatButton
---@param min number
---@param max number
---@param pad? number
---@return number width
function W.FitButton(b, min, max, pad)
	local text = b.label:GetText() or ""
	local w = b.label:GetStringWidth()
	-- a client that does not measure a hidden text: about 7 units a character
	if type(w) ~= "number" or (w <= 0 and text ~= "") then w = #text * 7 end
	pad = pad or 24
	local want = math.ceil(w) + pad
	local width = math.max(min, math.min(max, want))
	b:SetWidth(width)
	b.auClipped = want > max
	if b.auClipped then
		b.label:SetWidth(width - 8)
		if b.label.SetWordWrap then b.label:SetWordWrap(false) end
		if not b.auTipSet then
			b.auTipSet = true
			b:HookScript("OnEnter", function(self)
				if self.auClipped and not self.auTip then W.ShowTip(self, self.label:GetText() or "") end
			end)
			b:HookScript("OnLeave", function(self) if self.auClipped and not self.auTip then W.HideTip() end end)
		end
	end
	return width
end

---------------------------------------------------------------------------
-- Text colours of the window contents that are not rebuilt yet (UI-5, UI-6)
---------------------------------------------------------------------------
-- The contents of the journal, relationships, character soul, wizard and settings still use the game's font objects
-- (gold headings, white text). On the light theme they would be white on white, so every text of a window that the theme
-- does not colour yet takes the token of its font object: the game's gold becomes accent-text, the game's white text-1,
-- the small white text-2. A frame marked `auKeepColours` (the narrator's sample in the wizard, which
-- has the narrator's own dark surface) is left as it is.
-- (the font objects the windows use today; any other one, GameFontHighlight included, becomes text-1)
W.ADOPT = {
	GameFontNormal = "accent-text", GameFontNormalSmall = "accent-text", GameFontNormalLarge = "accent-text",
	GameFontHighlightSmall = "text-2",
}

local function FontObjectName(region)
	local f = region.GetFontObject and region:GetFontObject()
	if type(f) == "string" then return f end
	if type(f) == "table" and f.GetName then
		local ok, name = pcall(f.GetName, f)
		if ok and type(name) == "string" then return name end
	end
	return nil
end

local function Adopt(frame, depth)
	if type(frame) ~= "table" or frame.auKeepColours or depth > 16 then return 0 end
	local n = 0
	if frame.GetRegions then
		for _, r in ipairs({ frame:GetRegions() }) do
			if type(r) == "table" and not r.auThemed and r.GetObjectType and r:GetObjectType() == "FontString" then
				Theme.Text(r, W.ADOPT[FontObjectName(r) or ""] or "text-1")
				n = n + 1
			end
		end
	end
	if not frame.auThemed and frame.GetObjectType and frame:GetObjectType() == "EditBox" then
		Theme.Text(frame, "text-1")
		n = n + 1
	end
	if frame.GetChildren then
		for _, c in ipairs({ frame:GetChildren() }) do n = n + Adopt(c, depth + 1) end
	end
	return n
end

---Gives the theme's colours to the texts of `frame` that do not have one yet (see W.ADOPT). Cheap to call again: a
---text adopted once is skipped. Returns the number of texts adopted now.
---@param frame table
---@return number
function W.Adopt(frame)
	local ok, n = pcall(Adopt, frame, 0)
	if not ok then
		if NS.Diagnostics then NS.Diagnostics:Error("widgets:adopt", tostring(n)) end
		return 0
	end
	return n
end

---------------------------------------------------------------------------
-- Windows (#174, #187, #182, #192; UI-3: the NEBULA shell)
---------------------------------------------------------------------------
W.windows = {}   -- every window made by W.Window, in the order it was made
W.TEXT_FONT = "GameFontHighlight"   -- 12 units: the text of a consent or of a privacy note is never smaller (#182)
W.TITLE_FONT = "GameFontNormalLarge"  -- the title of the settings page (the client draws that frame)
W.TITLEBAR = 52                     -- the height of the title bar (FDCP §3)
W.BAND = 36                         -- the part of the title bar inside the window's frame: the contents start under it
W.BAR_ABOVE = W.TITLEBAR - W.BAND   -- the title bar rises this much above the frame, so the contents keep their place
W.TOP = 46                          -- where the content of a window starts, from the top of its frame

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

-- the open windows follow a change of the settings (#192): scale, title, then their own redraw and the text colours
local function FollowSettings()
	for _, f in ipairs(W.windows) do
		if f:IsShown() then
			W.ApplyScale(f)
			if f.titleKey then f.title:SetText(NS:L(f.titleKey)) end
			if f.auRefresh then
				local ok, err = pcall(f.auRefresh)
				if not ok and NS.Diagnostics then NS.Diagnostics:Error("window:" .. tostring(f.auName), tostring(err)) end
			end
			W.Adopt(f)
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

-- Positions per character (AzerothUnspokenCharacterDB.windows[global name]); nil before the saved data is loaded.
local function Positions()
	local c = NS.cdb
	if type(c) ~= "table" then return nil end
	if type(c.windows) ~= "table" then c.windows = {} end
	return c.windows
end

---Saves where a window is, for this character.
---@param f table a window made by W.Window
function W.SaveWindow(f)
	local list = Positions()
	if list and f.auName then list[f.auName] = W.SavePosition(f) end
end

---Every window goes back to its first place, and the places saved for this character are forgotten.
function W.ResetPositions()
	local list = Positions()
	if list then for k in pairs(list) do list[k] = nil end end
	for _, f in ipairs(W.windows) do
		local h = f.auHomePoint
		if h then
			f:ClearAllPoints()
			f:SetPoint(h[1], UIParent, h[1], h[2], h[3])
		end
		f.auMoved, f.auPlaced = nil, true
	end
	if NS.Windows and NS.Windows.Avoid then NS.Windows:Avoid() end
end

---The shell of every window of the addon (#187, UI-3): hidden at once (#192), movable, the 12-unit window shape with
---ring and shadow, the 52-unit title bar (round logo, the window's name in Orbitron, a mono subtitle, a status chip
---shown with :SetStatus, the close box), Esc (#174), the window scale (#182), a redraw when the settings change (#192),
---the position kept per character. The title bar rises W.BAR_ABOVE units above the frame, so the contents start
---W.TOP units from the frame's top as before.
---opts: name (the global name, needed for Esc and for the saved position), onClose (what the close box does; default:
---hide; Esc always hides, so a window that must do more on Esc does it in OnHide), refresh (the window's redraw, called
---when the settings change while it is open), noEscape, point ({ point, x, y } on UIParent).
---@param parent? table
---@param width number
---@param height number
---@param title? string key of the title
---@param opts? { name?: string, onClose?: fun(), refresh?: fun(), noEscape?: boolean, point?: table }
---@return table frame with .title, .subtitle, .closeBox, .titleBar, .chrome, :SetStatus(text, tone)
function W.Window(parent, width, height, title, opts)
	opts = opts or {}
	local f = CreateFrame("Frame", opts.name, parent or UIParent)
	f:Hide()   -- #192: hidden before anything else can fail, so a broken build never leaves a frame that blocks clicks
	f.auName = opts.name
	f.auTopExtra = W.BAR_ABOVE   -- Windows.lua counts the title bar above the frame when the narrator steps aside
	f:SetSize(width, height)
	local pt = opts.point or { "CENTER", 0, 0 }
	f.auHomePoint = { pt[1], pt[2], pt[3] }
	f:SetPoint(pt[1], pt[2], pt[3])
	f:SetMovable(true)
	f:EnableMouse(true)
	f:SetClampedToScreen(true)
	f:RegisterForDrag("LeftButton")

	-- the window's shape: fill, ring and shadow from the top of the title bar to the frame's bottom
	f.chrome = Theme.Panel(f, { radius = 12, fill = "bg", border = "border", shadow = true })
	for _, key in ipairs({ "fill", "ring" }) do
		local t = f.chrome[key]
		t:ClearAllPoints()
		t:SetPoint("TOPLEFT", f, "TOPLEFT", 0, W.BAR_ABOVE)
		t:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 0)
	end
	if f.chrome.shadow then
		f.chrome.shadow:ClearAllPoints()
		f.chrome.shadow:SetPoint("TOPLEFT", f, "TOPLEFT", -24, W.BAR_ABOVE + 16)
		f.chrome.shadow:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 24, -32)
	end

	local close = opts.onClose or function() f:Hide() end
	local bar = W.TitleBar(f, { onClose = function() close() end })
	bar:SetPoint("TOPLEFT", f, "TOPLEFT", 0, W.BAR_ABOVE)
	bar:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, W.BAR_ABOVE)
	f.titleBar = bar
	f.chrome.band = bar
	f.title, f.subtitle, f.closeBox = bar.title, bar.subtitle, bar.close
	f.title:SetWidth(math.max(width - 140, 40))
	f.subtitle:SetText(NS.name .. "  " .. NS.version)
	W.Tooltip(f.closeBox, function() return NS:L("win_close_tip") end)
	---A short state in the title bar (a Badge left of the close box): text "" or nil hides it.
	---@param text? string
	---@param tone? string accent | ok | warn | err | neutral
	function f:SetStatus(text, tone) self.titleBar:SetStatus(text, tone) end

	-- moved by the frame or by its title bar; the place is kept for this character
	local function Dragged()
		f:StopMovingOrSizing()
		f.auMoved = true
		W.SaveWindow(f)
		if NS.Windows and NS.Windows.Avoid then NS.Windows:Avoid() end
	end
	f:SetScript("OnDragStart", function(self) self:StartMoving() end)
	f:SetScript("OnDragStop", Dragged)
	bar:EnableMouse(true)
	bar:RegisterForDrag("LeftButton")
	bar:SetScript("OnDragStart", function() f:StartMoving() end)
	bar:SetScript("OnDragStop", Dragged)
	bar:SetScript("OnMouseDown", function() if NS.Windows and NS.Windows.Raise then NS.Windows:Raise(f) end end)

	f.titleKey = title
	if opts.name and not opts.noEscape then W.CloseOnEscape(opts.name) end
	f.auRefresh = opts.refresh
	f:HookScript("OnShow", function(self)
		W.ApplyScale(self)
		if self.titleKey then self.title:SetText(NS:L(self.titleKey)) end
		-- the first time it opens in a session: the place this character left it in
		if not self.auPlaced then
			self.auPlaced = true
			local list = Positions()
			local saved = list and self.auName and list[self.auName]
			if W.IsPosition(saved) then
				W.RestorePosition(self, saved, { pt[1], pt[1], pt[2], pt[3] })
				self.auMoved = true
			end
		end
		W.Adopt(self)
	end)
	f:HookScript("OnHide", function() W.HideTip() end)
	table.insert(W.windows, f)
	if not W.following and NS.Config and NS.Config.OnChange then
		W.following = true
		NS.Config:OnChange(FollowSettings)
	end
	return f
end

-- Two-click confirmation (#190): `:Arm(key)` starts one with a token of its own, `:Disarm()` ends it; the timer ends
-- only the arming that started it, never a newer one. Windows call `:Disarm()` in OnHide, so nothing stays armed.
-- An irreversible action asks through W.Dialog from UI-5 on; this stays for the buttons that use it today.
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
