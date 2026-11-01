-- Azeroth Unspoken: piccoli componenti dell'interfaccia, solo con elementi presenti in tutti i client
-- (nessun backdrop, nessun modello di cursore: pulsanti standard e texture colorate).
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

-- Cursore a trascinamento, solo con texture colorate (nessun modello): una barra, un indicatore e, per le scale con
-- valori negativi, un segno sullo zero. `onChange(valore, finale)` parte a ogni movimento (finale = false) e al rilascio
-- del mouse (finale = true): chi salva i dati lo fa nel secondo caso. Anche i test e la tastiera usano :Set(v, final).
---@param parent table
---@param width number
---@param min number
---@param max number
---@param onChange? fun(value: number, final: boolean)
---@return table slider
function W.Slider(parent, width, min, max, onChange)
	local s = CreateFrame("Frame", nil, parent)
	s:SetSize(width, 16)
	s:EnableMouse(true)
	s.min, s.max, s.value, s.width = min, max, min, width
	local bar = s:CreateTexture(nil, "BACKGROUND")
	bar:SetPoint("LEFT", s, "LEFT", 0, 0)
	bar:SetSize(width, 4)
	if bar.SetColorTexture then bar:SetColorTexture(0.25, 0.22, 0.35, 1) end
	s.bar = bar
	if min < 0 and max > 0 then
		local zero = s:CreateTexture(nil, "ARTWORK")
		zero:SetPoint("CENTER", s, "LEFT", width * (-min) / (max - min), 0)
		zero:SetSize(2, 12)
		if zero.SetColorTexture then zero:SetColorTexture(0.8, 0.8, 0.9, 0.8) end
	end
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetSize(8, 16)
	if thumb.SetColorTexture then thumb:SetColorTexture(0.7, 0.55, 1, 1) end
	s.thumb = thumb

	local function Place()
		local f = (s.value - s.min) / (s.max - s.min)
		thumb:ClearAllPoints()
		thumb:SetPoint("CENTER", s, "LEFT", s.width * f, 0)
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
	local function FromCursor()
		local x = GetCursorPosition and GetCursorPosition()
		local scale = s:GetEffectiveScale()
		local left = s:GetLeft()
		if type(x) ~= "number" or type(scale) ~= "number" or type(left) ~= "number" or scale == 0 then return nil end
		local f = math.max(0, math.min(1, (x / scale - left) / s.width))
		return s.min + f * (s.max - s.min)
	end
	s:SetScript("OnMouseDown", function()
		s.dragging = true
		local v = FromCursor()
		if v then s:Set(v, false) end
	end)
	s:SetScript("OnMouseUp", function()
		if not s.dragging then return end
		s.dragging = false
		local v = FromCursor()
		s:Set(v or s.value, true)
	end)
	s:SetScript("OnUpdate", function()
		if s.dragging then
			local v = FromCursor()
			if v then s:Set(v, false) end
		end
	end)
	Place()
	return s
end

-- posizione salvata come { punto, punto relativo, x, y }
function W.SavePosition(frame)
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

-- The flat look of the first-run guide (#188, the "proposed" design of the UI review): warm dark surfaces, a thin gold
-- edge, flat buttons. Only coloured textures, so it works in every client. Other windows may adopt it later.
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
}

-- four 1-unit edges around a frame; returns them so that they can be recoloured
local function Edges(frame, width, height)
	local edges = {}
	for _, e in ipairs({ { "TOPLEFT", "TOPRIGHT", width, 1 }, { "BOTTOMLEFT", "BOTTOMRIGHT", width, 1 },
		{ "TOPLEFT", "BOTTOMLEFT", 1, height }, { "TOPRIGHT", "BOTTOMRIGHT", 1, height } }) do
		local t = frame:CreateTexture(nil, "BORDER")
		t:SetPoint(e[1])
		t:SetSize(e[3], e[4])
		table.insert(edges, t)
	end
	return edges
end

local function Tint(texture, c, a)
	if texture.SetColorTexture then texture:SetColorTexture(c[1], c[2], c[3], a or 1) end
end

---Window chrome of the flat design: a surface, a gold edge and, with `band` units, a darker title band.
---@param frame table
---@param width number
---@param height number
---@param band? number height of the title band
---@return table parts { bg, edges, band }
function W.FlatWindow(frame, width, height, band)
	local P = W.PALETTE
	local parts = { bg = W.Background(frame, P.surface[1], P.surface[2], P.surface[3], 0.97) }
	parts.edges = Edges(frame, width, height)
	for _, t in ipairs(parts.edges) do Tint(t, P.edge) end
	if band then
		parts.band = frame:CreateTexture(nil, "BORDER")
		parts.band:SetPoint("TOPLEFT", 1, -1)
		parts.band:SetPoint("TOPRIGHT", -1, -1)
		parts.band:SetHeight(band)
		Tint(parts.band, P.band)
	end
	return parts
end

---A flat button. kind: "primary" (gold fill), "ghost" (gold outline, the default) or "text" (no box, left aligned).
---`:SetText` and `:GetText` work as on any button.
---@param parent table
---@param text? string
---@param width number
---@param height? number
---@param onClick? fun(self: table, button: string)
---@param kind? "primary"|"ghost"|"text"
---@return table button
function W.FlatButton(parent, text, width, height, onClick, kind)
	local P = W.PALETTE
	kind = kind or "ghost"
	height = height or 24
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height)
	b.bg = W.Background(b, 0, 0, 0, 0)
	b.edges = kind == "text" and {} or Edges(b, width, height)
	b.label = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	if kind == "text" then
		b.label:SetPoint("LEFT", 2, 0)
	else
		b.label:SetPoint("CENTER", 0, 0)
	end
	local function Paint(hover)
		if kind == "primary" then
			Tint(b.bg, hover and { 0.58, 0.44, 0.08 } or { 0.45, 0.34, 0.06 }, 1)
			for _, t in ipairs(b.edges) do Tint(t, P.goldDim) end
			b.label:SetTextColor(1, 0.95, 0.77)
		elseif kind == "ghost" then
			Tint(b.bg, hover and { 0.2, 0.16, 0.06 } or { 0, 0, 0 }, hover and 1 or 0)
			for _, t in ipairs(b.edges) do Tint(t, P.goldDim, hover and 1 or 0.55) end
			b.label:SetTextColor(0.9, 0.85, 0.72)
		else
			b.label:SetTextColor(hover and 1 or 0.72, hover and 0.82 or 0.66, hover and 0 or 0.6)
		end
	end
	function b:SetText(t) self.label:SetText(t or "") end
	function b:GetText() return self.label:GetText() end
	b:SetText(text)
	if onClick then b:SetScript("OnClick", onClick) end
	-- hooks, so a tooltip set later with W.Tooltip does not replace the hover colour
	b:HookScript("OnEnter", function() Paint(true) end)
	b:HookScript("OnLeave", function() Paint(false) end)
	Paint(false)
	return b
end

-- Card (#188): a clickable panel with a title, a description inside it and a marker; the choice is shown with a gold
-- border and a filled marker, never by colour alone (the description can also say it in words). Only coloured
-- textures, like everything here. `:SetCard(title, sub, on, tag)` redraws; `:GetText()` is the title.
---@param parent table
---@param width number
---@param height number
---@param onClick? fun(self: table, button: string)
---@return table card
function W.Card(parent, width, height, onClick)
	local P = W.PALETTE
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(width, height)
	b.bg = W.Background(b, P.card[1], P.card[2], P.card[3], 1)
	b.edges = Edges(b, width, height)
	b.mark = b:CreateTexture(nil, "ARTWORK")
	b.mark:SetSize(10, 10)
	b.mark:SetPoint("TOPRIGHT", -12, -12)
	b.title = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	b.title:SetPoint("TOPLEFT", 12, -8)
	b.title:SetPoint("TOPRIGHT", -30, -8)
	b.title:SetJustifyH("LEFT")
	b.sub = b:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
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
