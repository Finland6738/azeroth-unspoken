-- Azeroth Unspoken: narratore privato (GDD §12.2, "Narrator Overlay").
-- Riquadro discreto e non bloccante: solo l'intestazione e i pulsanti ricevono il mouse, il testo
-- lascia passare i clic. Si sposta trascinando l'intestazione. Durata, opacità e dimensione del testo
-- sono regolabili. Tiene una cronologia recente (solo in memoria, mai salvata).
-- Le proposte per la chat compaiono qui, con i pulsanti Invia / Modifica / Un'altra / Canale / Scarta.
-- One source of truth (#176): while the Gateway holds a proposal, the box shows it. Other lines go to the history at
-- once and to the box after the proposal is sent, discarded or expired.
local ADDON, NS = ...
local W = NS.Widgets
---@class AUNarratorEntry
---@field time string
---@field speaker string
---@field text string
---@field sentTo? string
---@field notice? boolean a story notice (#177)
local Narrator = NS:RegisterModule("narrator")
NS.Narrator = Narrator

local WIDTH = 440
local DEFAULT_POS = { "BOTTOM", "BOTTOM", 0, 240 }
local FADE_TIME = 1.5
local HELD_MAX = 3            -- #176: lines held back while a proposal waits (the most recent ones)
local HELD_MAX_AGE = 120      -- a held line older than this stays only in the history
local MIN_BACKGROUND = 0.55   -- #173: white text keeps 4.5:1 or more even over a white scene

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
---@field proposal? AUProposal the proposal the box shows: always the Gateway's pending one, or nil
---@field held { rec: AUPhraseRecord, at: number }[] lines waiting for the proposal to be resolved (#176)
---@field historyFrame? table
Narrator.history = {}     -- { time, speaker, text, sentTo }, la più recente per ultima
Narrator.current = nil    -- { speaker, display, proposal, sentTo, notice }
Narrator.held = {}
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

-- caratteri UTF-8, non byte: "è" conta uno
local function CharCount(text)
	local _, n = text:gsub("[^\128-\191]", "")
	return n
end

---Seconds a line stays on screen: the base duration plus the time to read it at the chosen speed (#177).
---@param text string
---@return number seconds
function Narrator:ReadingTime(text)
	local cfg = Cfg()
	return cfg.duration + CharCount(text or "") / cfg.readingSpeed
end

---The background opacity actually drawn: the setting, never under MIN_BACKGROUND (#173). The text is not faded.
---@return number alpha
function Narrator:BackgroundAlpha()
	return math.max(MIN_BACKGROUND, Cfg().alpha)
end

---------------------------------------------------------------------------
-- Cronologia
---------------------------------------------------------------------------
local function AddHistory(rec)
	local list = Narrator.history
	local entry = {
		time = date and date("%H:%M") or "", speaker = rec.speaker, text = rec.display, sentTo = rec.sentTo,
		notice = rec.notice,
	}
	table.insert(list, entry)
	local max = Cfg().historySize
	while #list > max do table.remove(list, 1) end
	return entry
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

-- La proposta sostituita da "Un'altra" non è stata detta: esce dalla cronologia (tra le ultime voci: dopo di lei ci
-- possono essere le frasi trattenute mentre attendeva, #176)
---@param p AUProposal
function Narrator:ForgetProposal(p)
	for i = #self.history, math.max(1, #self.history - HELD_MAX), -1 do
		local e = self.history[i]
		if not e.sentTo and e.text == p.display then
			table.remove(self.history, i)
			self:RefreshHistory()
			return
		end
	end
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
	W.SetFontSize(frame.label, math.max(12, cfg.fontSize - 2))
	-- #173: the setting is the background's opacity only; the frame alpha is kept for the fade-out
	W.SetBackgroundAlpha(frame.bg, 0, 0, 0, self:BackgroundAlpha())
	if frame.historyBg then W.SetBackgroundAlpha(frame.historyBg, 0, 0, 0, math.max(0.8, cfg.alpha)) end
	self:Layout()
end

---The box never sits under a window (#181): it goes to the player's own place, and, while a window covers that place,
---below the window (else above it) until they no longer overlap. The saved place is not touched.
function Narrator:Avoid()
	if not frame or not NS.Windows or self.dragging then return end
	W.RestorePosition(frame, Cfg().pos, DEFAULT_POS)
	local left, bottom, crowded = NS.Windows:SpotFor(frame)
	self.crowded = crowded == true
	if left then
		frame:ClearAllPoints()
		frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, bottom)
	end
	self.avoiding = left ~= nil
end

---While the box carries a proposal or the wizard's test line it is above every window; otherwise it is an ordinary
---HUD element (#181).
function Narrator:UpdateLayer()
	if not frame then return end
	local up = (self.proposal ~= nil) or (self.current ~= nil and self.current.test == true)
	frame:SetFrameStrata(up and "FULLSCREEN_DIALOG" or "MEDIUM")
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
	self:UpdateLayer()
	self:Avoid()
end

-- the voice, then the proposal's channel and countdown (#177), or the channel it was sent to, and the held lines
local function LabelText(cur)
	local label = Narrator:VoiceLabel(cur.speaker)
	local p = Narrator.proposal or cur.proposal
	if cur.proposal and p then
		label = label .. " · " .. NS:L("proposal_for", CHANNEL_NAME[p.channel] or p.channel)
		local left = NS.Gateway:PendingLeft(p)
		if left then label = label .. " · " .. NS:L("proposal_left", math.max(0, math.ceil(left))) end
	elseif cur.sentTo then
		label = label .. " · " .. NS:L("sent_to", CHANNEL_NAME[cur.sentTo] or cur.sentTo)
	end
	if #Narrator.held > 0 then label = label .. " · " .. NS:L("narrator_held", #Narrator.held) end
	return Colored(cur.speaker, label)
end

-- rewrites the label only when it changes (the countdown calls it every frame)
function Narrator:UpdateLabel()
	local cur = self.current
	if not frame or not cur then return end
	local text = LabelText(cur)
	if text ~= frame.labelText then
		frame.labelText = text
		frame.label:SetText(text)
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
			-- a proposal no longer waiting stays three more seconds, then the held lines follow (#176)
			cur.proposal = nil
			self.remaining = (self.elapsed or 0) + 3
		end
	end
	if self.proposal and cur then cur.display = self.proposal.display end
	if cur then
		self:UpdateLabel()
		frame.text:SetText(cur.display)
	end
	-- "|" is the client's escape character: "||" would show a single bar (#175)
	frame.pauseBtn:SetText(NS.paused and ">" or "II")
	-- i testi dei pulsanti seguono la lingua scelta
	frame.sendBtn:SetText(NS:L("btn_send"))
	frame.editBtn:SetText(NS:L("btn_edit"))
	frame.anotherBtn:SetText(NS:L("btn_another"))
	frame.discardBtn:SetText(NS:L("btn_discard"))
	frame.copyBtn:SetText(NS:L("btn_copy"))
	self:Layout()
end

function Narrator:Clear()
	self.current = nil
	self.proposal = nil
	self.held = {}
	self:CloseEditor()
	self:UpdateLayer()
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
	frame:SetAlpha(1)
	frame:Show()
	Narrator:Refresh()
	Narrator:ApplySettings()
end

-- the box shows the waiting proposal (again)
local function ShowPending(p)
	Reveal({ speaker = p.speaker, display = p.display, proposal = p }, Narrator:ReadingTime(p.display))
end

-- Una frase del narratore: rec = { speaker, display, proposal?, sentTo? }
---Mostra una frase nel narratore (o nella chat locale se il riquadro è spento).
---@param rec AUPhraseRecord
function Narrator:Present(rec)
	-- the entry is kept on the line: after a send it is marked even when held lines came after it (#176)
	rec.historyEntry = AddHistory(rec)
	self:RefreshHistory()
	if not frame or not NS.db.output.privateNarrator then
		-- ripiego: riquadro assente o disattivato, la frase compare nella chat locale, visibile solo a te
		NS:Print(("|cffffffff[%s]|r %s"):format(self:VoiceLabel(rec.speaker), rec.display))
		return
	end
	-- #176: a waiting proposal is never pushed off the box, or the speak key would send a line no longer on screen.
	-- The other line is already in the history; it reaches the box once the proposal is resolved.
	local pending = NS.Gateway:GetPending()
	if pending and rec.proposal ~= pending then
		table.insert(self.held, { rec = rec, at = GetTime() })
		while #self.held > HELD_MAX do table.remove(self.held, 1) end
		if self.proposal ~= pending or not frame:IsShown() then ShowPending(pending) else self:UpdateLabel() end
		return
	end
	Reveal(rec, self:ReadingTime(rec.display))
end

---After a proposal, the lines held back while it waited, oldest first. A line held longer than HELD_MAX_AGE is not
---shown: it is in the history.
---@return boolean shown
function Narrator:NextHeld()
	if not frame then return false end
	local now = GetTime()
	while #self.held > 0 do
		local h = table.remove(self.held, 1)
		if now - h.at <= HELD_MAX_AGE then
			Reveal(h.rec, self:ReadingTime(h.rec.display))
			return true
		end
	end
	return false
end

-- A story notice (#177): the normal reading time and a place in the history, like any other line
---@param text string
function Narrator:Notice(text)
	local rec = { speaker = "narrator", display = text, notice = true }
	if not frame or not NS.db.output.privateNarrator then
		AddHistory(rec)
		self:RefreshHistory()
		return
	end
	self:Present(rec)
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
	local entry = cur and cur.historyEntry
	if not entry then
		local last = self.history[#self.history]
		entry = last and not last.sentTo and last or nil
	end
	if entry and not entry.sentTo then
		entry.sentTo = channel
		if cur and cur.historyEntry == entry then entry.text = cur.display end   -- the text sent, if it was edited
		self:RefreshHistory()
	end
end

-- il client ha bloccato un invio che sembrava riuscito (#55): la frase non è partita e torna una proposta
---@param channel string
---@param proposal AUProposal
function Narrator:NoteBlocked(channel, proposal)
	local cur = self.current
	if frame and cur and cur.sentTo == channel and frame:IsShown() then
		cur.sentTo, cur.proposal = nil, proposal
		self.proposal = proposal
		self:Refresh()
	elseif frame and NS.db.output.privateNarrator and NS.Gateway:GetPending() == proposal then
		-- #176: the box shows another line by now: the proposal that is waiting again comes back on screen
		ShowPending(proposal)
	end
	for i = #self.history, math.max(1, #self.history - 3), -1 do
		local h = self.history[i]
		if h.sentTo == channel then h.sentTo = nil; self:RefreshHistory() break end
	end
end

-- frase di prova, solo privata (wizard, impostazioni, /au narrator prova)
function Narrator:ShowTest()
	local ctx = NS:BuildContext()
	NS.Gateway:Narrate("muse", ctx, { privateOnly = true })
	-- #181: the test line is above the windows (the wizard that asked for it included) and out from under them
	if self.current then
		self.current.test = true
		self:UpdateLayer()
		self:Avoid()
	end
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
		if not Cfg().locked then Narrator.dragging = true; frame:StartMoving() end
	end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		Narrator.dragging = false
		Cfg().pos = W.SavePosition(frame)
	end)
	frame.header = header

	frame.label = header:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	frame.label:SetPoint("LEFT", 8, 0)
	frame.label:SetPoint("RIGHT", -76, 0)   -- stops before the three small buttons; a longer label is cut, not drawn under them
	frame.label:SetJustifyH("LEFT")
	frame.label:SetWordWrap(false)

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
	frame.pauseBtn = Small("II", function() return NS:L("tip_pause") end,
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
		x = x + width + 4
		return b
	end
	-- sei pulsanti nei 424 punti della barra (la larghezza del riquadro meno i margini)
	frame.sendBtn = Btn(NS:L("btn_send"), function()
		NS.Gateway:PlayerAction(function() NS.Gateway:SendPending() end)
	end, 60)
	frame.editBtn = Btn(NS:L("btn_edit"), function() Narrator:OpenEditor() end, 72)
	frame.anotherBtn = Btn(NS:L("btn_another"), function() NS.Gateway:Reroll() end, 72)
	W.Tooltip(frame.anotherBtn, function() return NS:L("tip_another") end)
	frame.channelBtn = Btn("/s", function() NS.Gateway:CycleChannel() end, 50)
	W.Tooltip(frame.channelBtn, function() return NS:L("tip_channel") end)
	frame.discardBtn = Btn(NS:L("btn_discard"), function() NS.Gateway:Discard() end, 64)
	frame.copyBtn = Btn(NS:L("btn_copy"), function() NS.Gateway:CopyToChat() end, 84)
	W.Tooltip(frame.copyBtn, function() return NS:L("tip_copy") end)

	frame:SetScript("OnUpdate", function(self, dt)
		Narrator.elapsed = (Narrator.elapsed or 0) + dt
		local remaining = Narrator.remaining or 0
		local hovered = NS.Compat:IsMouseOver(self)
		-- #177: the mouse over the box stops the proposal's waiting time too, not only the fade
		NS.Gateway:SetHovered(hovered)
		-- una proposta in attesa, un editor aperto o il mouse sul riquadro non svaniscono
		local waiting = Narrator.proposal and NS.Gateway:GetPending()
		if waiting then Narrator:UpdateLabel() end   -- the countdown
		if waiting or self.editor:IsShown() or hovered then
			-- il tempo si ferma all'inizio della dissolvenza: tolto il mouse, il riquadro sbiadisce invece di sparire (#21)
			Narrator.elapsed = math.min(Narrator.elapsed, math.max(0, remaining - FADE_TIME))
			self:SetAlpha(1)
			return
		end
		if Narrator.proposal then Narrator:Refresh() end   -- la proposta è scaduta
		if Narrator.elapsed >= remaining then
			if not Narrator:NextHeld() then self:Hide() end
		elseif Narrator.elapsed > remaining - FADE_TIME and not Cfg().reduceMotion then
			-- #173: the frame alpha is only the fade-out; "reduce motion" skips it (#177)
			self:SetAlpha((remaining - Narrator.elapsed) / FADE_TIME)
		else
			self:SetAlpha(1)
		end
	end)
	-- a hidden box is not under the mouse: the proposal's waiting time goes on
	frame:SetScript("OnHide", function() NS.Gateway:SetHovered(false) end)

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
