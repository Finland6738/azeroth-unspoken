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
