-- Azeroth Unspoken: pulsante "pronuncia", la conferma del Chat Gateway
local ADDON, NS = ...
local SpeakButton = NS:RegisterModule("speakButton")
NS.SpeakButton = SpeakButton

---------------------------------------------------------------------------
-- Pulsante "pronuncia": il clic è un'azione del giocatore. Conferma (o apre l'editor di) la proposta
-- in attesa; senza proposte, improvvisa una frase adatta al momento, sempre come proposta.
-- In modalità privata non c'è mai una proposta: il clic mostra una frase nel riquadro del narratore, solo a te.
---------------------------------------------------------------------------
local button

-- accanto al riquadro del narratore (BOTTOM, 0, 240, largo 440), non più in mezzo allo schermo sopra il
-- personaggio (UI-19, #189): chi ha già spostato il pulsante tiene la sua posizione
SpeakButton.DEFAULT_POS = { "BOTTOMLEFT", "BOTTOM", 236, 240 }

local function UpdateButton()
	if not button then return end
	if not NS.db.ui.showButton then button:Hide() return end
	button:Show()
	if NS.Gateway:GetPending() then
		button.glow:Show()
		button.icon:SetDesaturated(false)
	else
		button.glow:Hide()
		button.icon:SetDesaturated(true)
	end
	-- in pausa il pulsante resta, ma più spento
	button:SetAlpha(NS.paused and 0.5 or 1)
end

local function Place()
	local pos = NS.db.ui.buttonPos
	button:ClearAllPoints()
	if type(pos) == "table" and type(pos[1]) == "string" and type(pos[2]) == "string" and tonumber(pos[3]) and tonumber(pos[4]) then
		button:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		local d = SpeakButton.DEFAULT_POS
		button:SetPoint(d[1], UIParent, d[2], d[3], d[4])
	end
end

---Rimette il pulsante al suo posto predefinito (/au button reset).
function SpeakButton:ResetPosition()
	NS.db.ui.buttonPos = nil
	if button then Place() end
end

---Il clic: con `ui.buttonOpensEditor` una proposta in attesa si apre nell'editor invece di partire (#189).
---Il tasto e /au speak inviano come sempre.
function SpeakButton:Click()
	if NS.db.ui.buttonOpensEditor and NS.Gateway:GetPending() and NS.Narrator and NS.Narrator:OpenEditor() then return end
	NS.Gateway:Confirm()
end

---Le righe del suggerimento, fedeli a ciò che farà il clic nella modalità attuale (UI-19, #189): in modalità
---privata non si invia mai nulla, e il suggerimento non deve dire "pronuncia".
---@return { [1]: string, [2]?: number, [3]?: number, [4]?: number }[] lines testo e colore (nessun colore: il titolo)
function SpeakButton:TooltipLines()
	local lines = { { NS.name } }
	local p = NS.Gateway:GetPending()
	local hint
	if p then
		table.insert(lines, { p.edited or p.text, 1, 1, 1 })
		table.insert(lines, { NS:L("button_channel", NS:L("channel_" .. p.channel)), 0.7, 0.9, 0.7 })
		if NS.db.ui.buttonOpensEditor then
			hint = "button_hint_editor"
		elseif NS.Gateway:EffectiveMode() == "PREVIEW" and not p.reviewed then
			hint = "button_hint_review"
		else
			hint = "button_hint_send"
		end
	elseif NS.Gateway:EffectiveMode() == "PRIVATE" then
		table.insert(lines, { NS:L("button_idle_private"), 0.8, 0.8, 0.8 })
		hint = "button_hint_private"
	else
		table.insert(lines, { NS:L("button_idle"), 0.8, 0.8, 0.8 })
		hint = "button_hint_new"
	end
	table.insert(lines, { NS:L(hint), 0.5, 0.5, 0.5 })
	return lines
end

local function CreateButton()
	button = CreateFrame("Button", "AzerothUnspokenButton", UIParent)
	button:SetSize(36, 36)
	button:SetFrameStrata("MEDIUM")
	button:SetMovable(true)
	button:SetClampedToScreen(true)
	button:RegisterForClicks("LeftButtonUp")
	button:RegisterForDrag("RightButton")

	button.icon = button:CreateTexture(nil, "ARTWORK")
	button.icon:SetAllPoints()
	button.icon:SetTexture("Interface\\Icons\\INV_Misc_Book_09")

	button.glow = button:CreateTexture(nil, "OVERLAY")
	button.glow:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
	button.glow:SetBlendMode("ADD")
	button.glow:SetPoint("CENTER")
	button.glow:SetSize(66, 66)

	Place()

	button:SetScript("OnClick", function() SpeakButton:Click() end)
	button:SetScript("OnDragStart", function(self) self:StartMoving() end)
	button:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, rp, x, y = self:GetPoint()
		NS.db.ui.buttonPos = { p, rp, x, y }
	end)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		for i, line in ipairs(SpeakButton:TooltipLines()) do
			GameTooltip:AddLine(line[1], line[2], line[3], line[4], i > 1)
		end
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", function() GameTooltip:Hide() end)

	-- la proposta in attesa scade: aggiorna l'aspetto ogni tanto
	NS.Compat.Ticker(2, function()
		if NS.Gateway.pending then NS.Gateway:GetPending() end
	end)
	UpdateButton()
end
NS.UpdateButton = UpdateButton

function SpeakButton:OnInit()
	CreateButton()
end
