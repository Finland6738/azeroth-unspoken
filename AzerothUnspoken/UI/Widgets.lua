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
