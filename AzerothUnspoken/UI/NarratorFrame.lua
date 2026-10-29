-- Azeroth Unspoken: narratore privato (GDD §12.2, "Narrator Overlay").
-- Riquadro discreto e non bloccante: solo l'intestazione e i pulsanti ricevono il mouse, il testo
-- lascia passare i clic. Si sposta trascinando l'intestazione. Durata, opacità e dimensione del testo
-- sono regolabili. Tiene una cronologia recente (solo in memoria, mai salvata).
-- Le proposte per la chat compaiono qui, con i pulsanti Invia / Modifica / Canale / Scarta.
local ADDON, NS = ...
local W = NS.Widgets
---@class AUNarratorEntry
---@field time string
---@field speaker string
---@field text string
---@field sentTo? string
local Narrator = NS:RegisterModule("narrator")
NS.Narrator = Narrator

local WIDTH = 440
local DEFAULT_POS = { "BOTTOM", "BOTTOM", 0, 240 }
local FADE_TIME = 1.5

-- colore di ogni voce (GDD §5.3)
local VOICE_COLOR = {
	narrator = "b9a1ff", inner = "7fd4ff", character = "ffd36b", npc = "9be37a",
}
local CHANNEL_NAME = {
	SAY = "/s", EMOTE = "/e", YELL = "/y", PARTY = "/p", RAID = "/raid", GUILD = "/g", INSTANCE_CHAT = "/i",
}

---@class AUNarrator
---@field history AUNarratorEntry[]
---@field current? AUPhraseRecord
---@field proposal? AUProposal
---@field historyFrame? table
Narrator.history = {}     -- { time, speaker, text, sentTo }, la più recente per ultima
Narrator.current = nil    -- { speaker, display, proposal, sentTo, notice }
local frame

local function Cfg() return NS.db.ui.narrator end

---@param speaker string narrator | inner | character | npc
---@return string
function Narrator:VoiceLabel(speaker)
	return NS:L("voice_" .. tostring(speaker))
end

local function Colored(speaker, text)
	return "|cff" .. (VOICE_COLOR[speaker] or "ffffff") .. text .. "|r"
end

---------------------------------------------------------------------------
-- Cronologia
---------------------------------------------------------------------------
local function AddHistory(rec)
	local list = Narrator.history
	table.insert(list, {
		time = date and date("%H:%M") or "", speaker = rec.speaker, text = rec.display, sentTo = rec.sentTo,
	})
	local max = Cfg().historySize
	while #list > max do table.remove(list, 1) end
end

function Narrator:RefreshHistory()
	local h = self.historyFrame
	if not h or not h:IsShown() then return end
	h.messages:Clear()
	for _, e in ipairs(self.history) do
		local tag = e.sentTo and (" |cff808080(" .. NS:L("sent_to", CHANNEL_NAME[e.sentTo] or e.sentTo) .. ")|r") or ""
		h.messages:AddMessage(("|cff808080%s|r %s %s%s"):format(e.time, Colored(e.speaker, self:VoiceLabel(e.speaker)),
			e.text, tag))
	end
	h.messages:ScrollToBottom()
end

function Narrator:ToggleHistory()
	if not self.historyFrame then return end
	local h = self.historyFrame
	if h:IsShown() then h:Hide() else h:Show(); self:RefreshHistory() end
end

function Narrator:ClearHistory()
	self.history = {}
	self:RefreshHistory()
end

---------------------------------------------------------------------------
-- Aspetto e stato
---------------------------------------------------------------------------
function Narrator:ApplySettings()
	if not frame then return end
	local cfg = Cfg()
	W.SetFontSize(frame.text, cfg.fontSize)
	W.SetFontSize(frame.label, math.max(10, cfg.fontSize - 3))
	W.SetBackgroundAlpha(frame.bg, 0, 0, 0, 0.65 * cfg.alpha)
	if frame.historyBg then W.SetBackgroundAlpha(frame.historyBg, 0, 0, 0, 0.8 * cfg.alpha) end
	self:Layout()
end

function Narrator:Layout()
	if not frame then return end
	local p = self.proposal and NS.Gateway:GetPending() or nil
	local h = 24 + frame.text:GetStringHeight() + 10
	if frame.editor:IsShown() then h = h + 30 end
	if p then h = h + 28 end
	frame:SetHeight(h)
	frame.bar:SetShown(p ~= nil)
	if p then
		frame.channelBtn:SetText(CHANNEL_NAME[p.channel] or p.channel)
		-- senza una casella della chat da riempire il pulsante non c'è (GDD §3.8)
		frame.copyBtn:SetShown(NS.Compat:CanOpenChat())
	end
end

-- Rilegge lo stato: proposta in attesa, pausa, testo attuale.
function Narrator:Refresh()
	if not frame then return end
	local cur = self.current
	local pending = NS.Gateway:GetPending()
	-- la proposta mostrata non è più in attesa (inviata, scartata, scaduta)
	if self.proposal and self.proposal ~= pending then
		-- il testo scritto nell'editor non si perde in silenzio: se la proposta è sparita (sostituita da
		-- una richiesta del giocatore, scartata altrove) lo si restituisce in chat locale
		local gone = self.proposal
		if frame.editor:IsShown() then
			local typed = frame.editor:GetText()
			if typed ~= "" and typed ~= (gone.edited or gone.text) then NS:Print(NS:L("gw_text_kept", typed)) end
		end
		self.proposal = nil
		self:CloseEditor()
		if cur and cur.proposal then
			cur.proposal = nil
			if (self.remaining or 0) < 3 then self.remaining = 3 end
		end
	end
	if self.proposal and cur then cur.display = self.proposal.display end
	if cur then
		local label = self:VoiceLabel(cur.speaker)
		if cur.proposal then
			label = label .. " · " .. NS:L("proposal_for", CHANNEL_NAME[(self.proposal or cur.proposal).channel] or "")
		elseif cur.sentTo then
			label = label .. " · " .. NS:L("sent_to", CHANNEL_NAME[cur.sentTo] or cur.sentTo)
		end
		frame.label:SetText(Colored(cur.speaker, label))
		frame.text:SetText(cur.display)
	end
	frame.pauseBtn:SetText(NS.paused and ">" or "||")
	-- i testi dei pulsanti seguono la lingua scelta
	frame.sendBtn:SetText(NS:L("btn_send"))
	frame.editBtn:SetText(NS:L("btn_edit"))
	frame.discardBtn:SetText(NS:L("btn_discard"))
	frame.copyBtn:SetText(NS:L("btn_copy"))
	self:Layout()
end

function Narrator:Clear()
	self.current = nil
	self.proposal = nil
	self:CloseEditor()
	if frame then frame:Hide() end
end

---------------------------------------------------------------------------
-- Presentazione
---------------------------------------------------------------------------
local function Reveal(rec, seconds)
	Narrator.current = rec
	Narrator.proposal = rec.proposal
	Narrator.elapsed = 0
	Narrator.remaining = seconds
	frame:Show()
	Narrator:Refresh()
	Narrator:ApplySettings()
end

-- Una frase del narratore: rec = { speaker, display, proposal?, sentTo? }
---Mostra una frase nel narratore (o nella chat locale se il riquadro è spento).
---@param rec AUPhraseRecord
function Narrator:Present(rec)
	AddHistory(rec)
	self:RefreshHistory()
	if not frame or not NS.db.output.privateNarrator then
		-- ripiego: riquadro assente o disattivato, la frase compare nella chat locale, visibile solo a te
		NS:Print(("|cffffffff[%s]|r %s"):format(self:VoiceLabel(rec.speaker), rec.display))
		return
	end
	local seconds = Cfg().duration + #rec.display * 0.03
	Reveal(rec, rec.proposal and math.max(seconds, NS.db.chat.pendingSeconds) or seconds)
end

-- Avviso breve non nella cronologia (pausa, test...)
---@param text string
function Narrator:Notice(text)
	if not frame or not NS.db.output.privateNarrator then return end
	Reveal({ speaker = "narrator", display = text }, 3 + #text * 0.03)
end

-- dopo un invio riuscito: la frase resta per un attimo con l'indicazione del canale
---@param channel string
function Narrator:NoteSent(channel)
	local cur = self.current
	if cur and frame and frame:IsShown() then
		cur.sentTo = channel
		cur.proposal = nil
		self.remaining = math.min(self.remaining, 3)
		self.elapsed = 0
		self:Refresh()
	end
	local last = self.history[#self.history]
	if last and not last.sentTo then last.sentTo = channel; self:RefreshHistory() end
end

-- frase di prova, solo privata (wizard, impostazioni, /au narratore prova)
function Narrator:ShowTest()
	local ctx = NS:BuildContext()
	NS.Gateway:Narrate("muse", ctx, { privateOnly = true })
end

---------------------------------------------------------------------------
-- Editor della proposta
---------------------------------------------------------------------------
---@return boolean opened
function Narrator:OpenEditor()
	if not frame then return false end
	local p = NS.Gateway:GetPending()
	if not p then return false end
	self.proposal = p
	frame.editor:SetText(p.edited or p.text)
	frame.editor:Show()
	frame.editor:SetFocus()
	frame.editor:HighlightText()
	-- con l'editor aperto la proposta non scade e non viene sostituita da frasi spontanee
	NS.Gateway:SetEditing(true)
	self:Layout()
	return true
end

function Narrator:CloseEditor()
	if not frame then return end
	if frame.editor:IsShown() then
		frame.editor:ClearFocus()
		frame.editor:Hide()
		NS.Gateway:SetEditing(false)
		self:Layout()
	end
end

---@return boolean editing l'editor della proposta è aperto
function Narrator:IsEditing()
	return frame ~= nil and frame.editor:IsShown() and true or false
end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
local function BuildHistory()
	local h = CreateFrame("Frame", "AzerothUnspokenNarratorHistory", UIParent)
	h:SetSize(WIDTH, 190)
	h:SetFrameStrata("MEDIUM")
	h:SetClampedToScreen(true)
	frame.historyBg = W.Background(h, 0, 0, 0, 0.8)
	h:SetPoint("BOTTOM", frame, "TOP", 0, 4)
	h:Hide()

	local m = CreateFrame("ScrollingMessageFrame", nil, h)
	m:SetPoint("TOPLEFT", 8, -8)
	m:SetPoint("BOTTOMRIGHT", -8, 8)
	m:SetFontObject(ChatFontNormal or GameFontHighlight)
	m:SetJustifyH("LEFT")
	m:SetMaxLines(100)
	m:SetFading(false)
	m:EnableMouseWheel(true)
	m:SetScript("OnMouseWheel", function(self, delta)
		if delta > 0 then self:ScrollUp() else self:ScrollDown() end
	end)
	h.messages = m
	Narrator.historyFrame = h
end

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenNarrator", UIParent)
	frame:SetSize(WIDTH, 60)
	frame:SetFrameStrata("MEDIUM")
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame.bg = W.Background(frame, 0, 0, 0, 0.55)
	W.RestorePosition(frame, Cfg().pos, DEFAULT_POS)
	frame:Hide()

	-- intestazione: voce, pausa, cronologia, chiudi. È l'unica parte che riceve il mouse.
	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT", 0, 0)
	header:SetPoint("TOPRIGHT", 0, 0)
	header:SetHeight(20)
	header:EnableMouse(true)
	header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function()
		if not Cfg().locked then frame:StartMoving() end
	end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		Cfg().pos = W.SavePosition(frame)
	end)
	frame.header = header

	frame.label = header:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	frame.label:SetPoint("LEFT", 8, 0)
	frame.label:SetJustifyH("LEFT")

	local function Small(text, tip, onClick, x)
		local b = W.Button(header, text, 22, 18, onClick)
		b:SetPoint("RIGHT", x, 0)
		W.Tooltip(b, tip)
		return b
	end
	Small("x", function() return NS:L("tip_close") end, function()
		NS.Gateway:Discard()
		Narrator:Clear()
	end, -2)
	Small("H", function() return NS:L("tip_history") end, function() Narrator:ToggleHistory() end, -26)
	frame.pauseBtn = Small("||", function() return NS:L("tip_pause") end,
		function() NS.Director:TogglePause() end, -50)

	frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	frame.text:SetPoint("TOPLEFT", 8, -24)
	frame.text:SetPoint("TOPRIGHT", -8, -24)
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("TOP")
	frame.text:SetWordWrap(true)

	-- editor della proposta
	frame.editor = W.EditBox(frame, WIDTH - 16, 22)
	frame.editor:SetPoint("BOTTOMLEFT", 12, 36)
	frame.editor:SetMaxLetters(240)
	frame.editor:Hide()
	frame.editor:SetScript("OnEnterPressed", function(self)
		local text = self:GetText()
		-- Invio è un tasto premuto dal giocatore: l'invio parte da qui
		NS.Gateway:PlayerAction(function()
			if NS.Gateway:SetPendingText(text) then
				NS.Gateway:SendPending()
			else
				-- la proposta non c'è più (o il testo è vuoto): lo si dice, il testo resta leggibile in chat
				NS:Print(NS:L("gw_expired", text))
			end
		end)
	end)
	frame.editor:SetScript("OnEscapePressed", function() Narrator:CloseEditor() end)

	-- barra della proposta
	local bar = CreateFrame("Frame", nil, frame)
	bar:SetPoint("BOTTOMLEFT", 8, 6)
	bar:SetPoint("BOTTOMRIGHT", -8, 6)
	bar:SetHeight(24)
	bar:Hide()
	frame.bar = bar
	local x = 0
	local function Btn(text, onClick, width)
		local b = W.Button(bar, text, width, 22, onClick)
		b:SetPoint("LEFT", x, 0)
		x = x + width + 6
		return b
	end
	frame.sendBtn = Btn(NS:L("btn_send"), function()
		NS.Gateway:PlayerAction(function() NS.Gateway:SendPending() end)
	end, 80)
	frame.editBtn = Btn(NS:L("btn_edit"), function() Narrator:OpenEditor() end, 80)
	frame.channelBtn = Btn("/s", function() NS.Gateway:CycleChannel() end, 60)
	W.Tooltip(frame.channelBtn, function() return NS:L("tip_channel") end)
	frame.discardBtn = Btn(NS:L("btn_discard"), function() NS.Gateway:Discard() end, 80)
	frame.copyBtn = Btn(NS:L("btn_copy"), function() NS.Gateway:CopyToChat() end, 90)
	W.Tooltip(frame.copyBtn, function() return NS:L("tip_copy") end)

	frame:SetScript("OnUpdate", function(self, dt)
		Narrator.elapsed = (Narrator.elapsed or 0) + dt
		local remaining = Narrator.remaining or 0
		-- una proposta in attesa, un editor aperto o il mouse sul riquadro non svaniscono
		local hold = Narrator.proposal and NS.Gateway:GetPending() or self.editor:IsShown()
		if not hold and NS.Compat:IsMouseOver(self) then hold = true end
		if hold then
			Narrator.elapsed = math.min(Narrator.elapsed, remaining)
			self:SetAlpha(Cfg().alpha)
			return
		end
		if Narrator.proposal then Narrator:Refresh() end   -- la proposta è scaduta
		if Narrator.elapsed >= remaining then
			self:Hide()
		elseif Narrator.elapsed > remaining - FADE_TIME then
			self:SetAlpha(Cfg().alpha * (remaining - Narrator.elapsed) / FADE_TIME)
		else
			self:SetAlpha(Cfg().alpha)
		end
	end)

	BuildHistory()
end

function Narrator:ResetPosition()
	Cfg().pos = nil
	if frame then W.RestorePosition(frame, nil, DEFAULT_POS) end
end

---@return table? frame
function Narrator:GetFrame() return frame end

function Narrator:OnInit()
	local ok, err = pcall(Build)
	if not ok then
		-- se il riquadro non si può costruire resta il ripiego nella chat locale
		frame = nil
		self.historyFrame = nil
		NS.Diagnostics:Error("narrator", tostring(err))
		return
	end
	self:ApplySettings()
end
