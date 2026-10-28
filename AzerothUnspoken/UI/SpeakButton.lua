-- Azeroth Unspoken: pulsante "pronuncia"
local ADDON, NS = ...
local SpeakButton = NS:RegisterModule("speakButton")

---------------------------------------------------------------------------
-- Pulsante "pronuncia": il clic è un'azione del giocatore, quindi /say è permesso
---------------------------------------------------------------------------
local button

local function UpdateButton()
	if not button then return end
	if not NS.db.ui.showButton then button:Hide() return end
	button:Show()
	if NS:GetPending() then
		button.glow:Show()
		button.icon:SetDesaturated(false)
	else
		button.glow:Hide()
		button.icon:SetDesaturated(true)
	end
end
NS.OnPendingChanged = UpdateButton

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

	local pos = NS.db.ui.buttonPos
	if pos then
		button:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		button:SetPoint("CENTER", UIParent, "CENTER", 0, -180)
	end

	button:SetScript("OnClick", function() AzerothUnspoken_Speak() end)
	button:SetScript("OnDragStart", function(self) self:StartMoving() end)
	button:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, rp, x, y = self:GetPoint()
		NS.db.ui.buttonPos = { p, rp, x, y }
	end)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:AddLine(NS.name)
		local text = NS:GetPending()
		if text then
			GameTooltip:AddLine(text, 1, 1, 1, true)
		else
			GameTooltip:AddLine(NS:L("button_idle"), 0.8, 0.8, 0.8, true)
		end
		GameTooltip:AddLine(NS:L("button_hint"), 0.5, 0.5, 0.5, true)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", function() GameTooltip:Hide() end)

	-- la frase in attesa scade: aggiorna l'aspetto ogni tanto
	C_Timer.NewTicker(2, function()
		if NS.pending then NS:GetPending() end
	end)
	UpdateButton()
end
NS.UpdateButton = UpdateButton

function SpeakButton:OnInit()
	CreateButton()
end
