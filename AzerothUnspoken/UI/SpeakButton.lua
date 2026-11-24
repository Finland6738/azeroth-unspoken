-- Azeroth Unspoken: pulsante "pronuncia", la conferma del Chat Gateway
-- UI-ECO UI-4: the NEBULA look: a round button (a disc in `surface-1` inside a ring, the addon's own quill icon from the
-- icon sheet, never the game's art), an accent ring and glow while a proposal waits, the addon's own tooltip
-- (W.Tooltip) and a Badge that says "Paused" in words. 36 units: a target well over the 24 minimum. Not tried in the client.
local ADDON, NS = ...
local SpeakButton = NS:RegisterModule("speakButton")
NS.SpeakButton = SpeakButton
local W, Theme, Motion, Assets = NS.Widgets, NS.Theme, NS.Motion, NS.Assets

---------------------------------------------------------------------------
-- Pulsante "pronuncia": il clic è un'azione del giocatore. Conferma (o apre l'editor di) la proposta
-- in attesa; senza proposte, improvvisa una frase adatta al momento, sempre come proposta.
-- In modalità privata non c'è mai una proposta: il clic mostra una frase nel riquadro del narratore, solo a te.
---------------------------------------------------------------------------
local button

-- accanto al riquadro del narratore (BOTTOM, 0, 240, largo 440), non più in mezzo allo schermo sopra il
-- personaggio (UI-19, #189): chi ha già spostato il pulsante tiene la sua posizione
SpeakButton.DEFAULT_POS = { "BOTTOMLEFT", "BOTTOM", 236, 240 }

-- the ring, the icon and the glow follow the state: a proposal waits (accent ring, lit icon, glow) or not (quiet), and the
-- hover; the state is also in words in the tooltip, and "Paused" is a word under the button
local function Paint()
	local waiting = button.waiting == true
	local lit = waiting or button.hover == true
	Theme.Tint(button.ring, lit and "accent" or "border-strong")
	Theme.Tint(button.icon, waiting and "accent-text" or (button.hover and "text-1" or "text-3"))
	Theme.GlowShow(button.glow, waiting)
end

local function UpdateButton()
	if not button then return end
	if not NS.db.ui.showButton then button:Hide() return end
	button:Show()
	button.waiting = NS.Gateway:GetPending() ~= nil
	Paint()
	-- in pausa il pulsante resta, ma più spento, e lo dice in parole (#183): the badge is not dimmed with it
	button:SetAlpha(NS.paused and 0.5 or 1)
	button.badge:SetBadge(NS:L("paused_badge"), "warn")
	button.badge:SetShown(NS.paused == true)
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
---@return { [1]: string }[] lines the title, then what the click does (the addon's tooltip shows them one under the other)
function SpeakButton:TooltipLines()
	local lines = { { NS.name } }
	local p = NS.Gateway:GetPending()
	local hint
	if p then
		table.insert(lines, { p.edited or p.text })
		table.insert(lines, { NS:L("button_channel", NS:L("channel_" .. p.channel)) })
		if NS.db.ui.buttonOpensEditor then
			hint = "button_hint_editor"
		elseif NS.Gateway:EffectiveMode() == "PREVIEW" and not p.reviewed then
			hint = "button_hint_review"
		else
			hint = "button_hint_send"
		end
	elseif NS.Gateway:EffectiveMode() == "PRIVATE" then
		table.insert(lines, { NS:L("button_idle_private") })
		hint = "button_hint_private"
	else
		table.insert(lines, { NS:L("button_idle") })
		hint = "button_hint_new"
	end
	table.insert(lines, { NS:L(hint) })
	return lines
end

---The tooltip's text: the lines one under the other.
---@return string
function SpeakButton:TooltipText()
	local out = {}
	for _, line in ipairs(self:TooltipLines()) do table.insert(out, line[1]) end
	return table.concat(out, "\n")
end

local function CreateButton()
	button = CreateFrame("Button", "AzerothUnspokenButton", UIParent)
	button:SetSize(36, 36)
	button:SetFrameStrata("MEDIUM")
	button:SetMovable(true)
	button:SetClampedToScreen(true)
	button:RegisterForClicks("LeftButtonUp")
	button:RegisterForDrag("RightButton")

	-- a ring and a disc (the sheet's `circle`, white, tinted by Paint), the quill of the icon sheet, a glow
	button.ring = button:CreateTexture(nil, "BACKGROUND")
	button.ring:SetTexture(Assets.textures.circle.path)
	button.ring:SetAllPoints(button)
	button.disc = button:CreateTexture(nil, "BORDER")
	button.disc:SetTexture(Assets.textures.circle.path)
	button.disc:SetPoint("TOPLEFT", button, "TOPLEFT", 2, -2)
	button.disc:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -2, 2)
	Theme.Tint(button.disc, "surface-1")
	button.icon = W.Icon(button, "quill", 20, "text-3", "ARTWORK")
	button.icon:SetPoint("CENTER", 0, 0)
	button.glow = Theme.Glow(button, "glow_s", "accent", { layer = "BACKGROUND", alpha = 0.5 })
	button.glow:SetPoint("TOPLEFT", button, "TOPLEFT", -14, 14)
	button.glow:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 14, -14)
	Theme.GlowShow(button.glow, false)

	-- #183: "Paused" in words under the button, at full opacity
	local badge = W.Badge(button, NS:L("paused_badge"), "warn")
	badge:SetPoint("TOP", button, "BOTTOM", 0, -4)
	if badge.SetIgnoreParentAlpha then badge:SetIgnoreParentAlpha(true) end
	badge:Hide()
	button.badge, button.badgeText = badge, badge.label

	Place()

	button:SetScript("OnClick", function() SpeakButton:Click() end)
	button:SetScript("OnDragStart", function(self) self:StartMoving() end)
	button:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		local p, _, rp, x, y = self:GetPoint()
		NS.db.ui.buttonPos = { p, rp, x, y }
	end)
	-- the addon's own tooltip (W.Tooltip): what the click will do in the mode the player is in
	W.Tooltip(button, function() return SpeakButton:TooltipText() end)
	button:HookScript("OnEnter", function(self) self.hover = true; Paint() end)
	button:HookScript("OnLeave", function(self) self.hover = false; Paint() end)
	Motion.Press(button)

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
