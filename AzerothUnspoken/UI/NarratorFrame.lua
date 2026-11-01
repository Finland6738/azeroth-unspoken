-- Azeroth Unspoken: narratore privato (GDD §12.2, "Narrator Overlay").
-- Riquadro discreto e non bloccante: solo l'intestazione e i pulsanti ricevono il mouse, il testo
-- lascia passare i clic. Si sposta trascinando l'intestazione. Durata, opacità e dimensione del testo
-- sono regolabili. Tiene una cronologia recente (solo in memoria, mai salvata).
-- Le proposte per la chat compaiono qui, con la barra: canale, Scarta, Un'altra, Modifica, Nella chat, Invia.
-- One source of truth (#176): while the Gateway holds a proposal, the box shows it. Other lines go to the history at
-- once and to the box after the proposal is sent, discarded or expired.
-- The look (#186): a voice accent bar, voice-tinted text, another typeface for the inner voice, ghost icon buttons and
-- a thin time line. Only coloured textures and the client's fonts: no Blizzard art.
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
local GRACE = 1.5             -- once the mouse leaves, the box stays at least this long (#21)
local HELD_MAX = 3            -- #176: lines held back while a proposal waits (the most recent ones)
local HELD_MAX_AGE = 120      -- a held line older than this stays only in the history
local MIN_BACKGROUND = 0.55   -- #173: white text keeps 4.5:1 or more even over a white scene
local TINT_BACKGROUND = 0.6   -- #186: a tinted text keeps 4.5:1 over a white scene from here; under it the text is white
local ACCENT = 3              -- #186: the bar in the voice colour along the left edge
local PAD = 12                -- text margin from the left edge (after the accent bar) and from the right edge
local ICON, ICON_GAP = 24, 6  -- #183: header buttons are 24x24 targets, 6 units apart
local BAR_GAP = 6             -- between the buttons of the proposal bar
local HISTORY_LINES = 8       -- the history is as tall as eight lines of the narrator text (#182)
local EDGE = { 0.26, 0.21, 0.32 }
local INNER_FONT = "Fonts\\ARIALN.TTF"   -- #186: the inner voice in another typeface, a cue that needs no colour

-- colore di ogni voce (GDD §5.3): the accent (label, bar, time line) and a light tint for the text. The accents differ
-- in lightness too (L* 87 character, 81 inner, 72 narrator, 65 NPC): for protanopes Character and NPC were 6.5 apart
-- (ΔE), now 19 (#186).
local VOICE_COLOR = {
	narrator = "b9a1ff", inner = "7fd4ff", character = "ffd36b", npc = "4fb354",
}
local VOICE_TINT = {
	narrator = "ece6ff", inner = "ddf3ff", character = "fff1cc", npc = "e3f7d6",
}
local MUTED = "c8c2d0"        -- the rest of the header label and the times in the history
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

local function RGB(hex)
	return tonumber(hex:sub(1, 2), 16) / 255, tonumber(hex:sub(3, 4), 16) / 255, tonumber(hex:sub(5, 6), 16) / 255
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

---The colours of a voice (#186): the accent and the text. Under TINT_BACKGROUND the text is white, which keeps 4.5:1.
---@param speaker string
---@return string accent hex colour
---@return string text hex colour
function Narrator:VoiceColors(speaker)
	local text = self:BackgroundAlpha() >= TINT_BACKGROUND and VOICE_TINT[speaker] or "ffffff"
	return VOICE_COLOR[speaker] or "ffffff", text or "ffffff"
end

---The font of a voice's text (#186): the inner voice in another typeface, a unit larger (its letters are narrower).
---@param speaker string
---@return string? path nil before the box is built
---@return number size
function Narrator:BodyFont(speaker)
	local size = Cfg().fontSize
	if speaker == "inner" then return INNER_FONT, size + 1 end
	return frame and frame.bodyFont, size
end

---------------------------------------------------------------------------
-- Pezzi del riquadro (#186): only coloured textures; local until the window style of u-windows is shared
---------------------------------------------------------------------------
-- a 1-unit edge on four sides, anchored on two points so that it follows the frame's height
local function Outline(f)
	for _, e in ipairs({ { "TOPLEFT", "TOPRIGHT", "h" }, { "BOTTOMLEFT", "BOTTOMRIGHT", "h" },
		{ "TOPLEFT", "BOTTOMLEFT", "w" }, { "TOPRIGHT", "BOTTOMRIGHT", "w" } }) do
		local t = f:CreateTexture(nil, "BORDER")
		t:SetPoint(e[1])
		t:SetPoint(e[2])
		if e[3] == "h" then t:SetHeight(1) else t:SetWidth(1) end
		W.SetBackgroundAlpha(t, EDGE[1], EDGE[2], EDGE[3], 0.9)
	end
end

-- A ghost icon button (#186): no box until hovered, an icon drawn with textures or a plain glyph. Its text names the
-- icon: "II" pause, ">" resume, "H" history, "x" close. 24x24, the target size of #183.
local ICON_REST, ICON_HOVER = { 0.72, 0.68, 0.78 }, { 1, 1, 1 }
local function IconButton(parent, icon, tip, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(ICON, ICON)
	b.bg = W.Background(b, 1, 1, 1, 0)
	b.parts = {}
	local function Bar(w, h, x, y)
		local t = b:CreateTexture(nil, "ARTWORK")
		t:SetSize(w, h)
		t:SetPoint("CENTER", x, y)
		table.insert(b.parts, t)
		return t
	end
	b.shapes = {
		["II"] = { Bar(3, 11, -3, 0), Bar(3, 11, 3, 0) },
		["H"] = { Bar(12, 2, 0, 4), Bar(12, 2, 0, 0), Bar(12, 2, 0, -4) },
		-- a triangle drawn as columns that get shorter
		[">"] = { Bar(2, 12, -5, 0), Bar(2, 10, -3, 0), Bar(2, 8, -1, 0), Bar(2, 6, 1, 0), Bar(2, 4, 3, 0),
			Bar(2, 2, 5, 0) },
	}
	b.glyph = b:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	b.glyph:SetPoint("CENTER", 0, 1)
	W.SetFontSize(b.glyph, 15)
	local function Paint(hover)
		local c = hover and ICON_HOVER or ICON_REST
		W.SetBackgroundAlpha(b.bg, 1, 1, 1, hover and 0.12 or 0)
		for _, t in ipairs(b.parts) do W.SetBackgroundAlpha(t, c[1], c[2], c[3], 1) end
		b.glyph:SetTextColor(c[1], c[2], c[3])
	end
	function b:SetText(name)
		self.icon = name
		for key, shape in pairs(self.shapes) do
			for _, t in ipairs(shape) do
				if key == name then t:Show() else t:Hide() end
			end
		end
		self.glyph:SetText(self.shapes[name] and "" or name)
	end
	function b:GetText() return self.icon end
	b:SetText(icon)
	b:SetScript("OnClick", onClick)
	W.Tooltip(b, tip)
	b:HookScript("OnEnter", function() Paint(true) end)
	b:HookScript("OnLeave", function() Paint(false) end)
	Paint(false)
	return b
end

-- a flat button resized to its text (W.FlatButton draws its top and bottom edges at the width it was made with)
local function FitButton(b, extra)
	local w = math.ceil(b.label:GetStringWidth()) + extra
	b:SetWidth(w)
	if b.edges and b.edges[1] then
		b.edges[1]:SetWidth(w)
		b.edges[2]:SetWidth(w)
	end
	return w
end

-- the channel chip (#186): a ghost button edged in the voice colour, with a small arrow that says it changes
local function Chip(parent, onClick)
	local b = W.FlatButton(parent, "/s", 40, 24, onClick, "ghost")
	b.label:ClearAllPoints()
	b.label:SetPoint("LEFT", 9, 0)
	b.arrow = {}
	for i, w in ipairs({ 7, 5, 3, 1 }) do
		local t = b:CreateTexture(nil, "ARTWORK")
		t:SetSize(w, 1)
		t:SetPoint("RIGHT", -9 - (7 - w) / 2, 2 - i)
		table.insert(b.arrow, t)
	end
	function b:Tint(hex, hover)
		local r, g, bl = RGB(hex)
		self.hex = hex
		for _, t in ipairs(self.edges) do W.SetBackgroundAlpha(t, r, g, bl, hover and 1 or 0.6) end
		for _, t in ipairs(self.arrow) do W.SetBackgroundAlpha(t, r, g, bl, 1) end
		self.label:SetTextColor(r, g, bl)
	end
	-- after the hover colours of W.FlatButton
	b:HookScript("OnEnter", function(self) self:Tint(self.hex or "ffffff", true) end)
	b:HookScript("OnLeave", function(self) self:Tint(self.hex or "ffffff", false) end)
	return b
end

-- the key bound to "speak", shown on Send (#186)
local function SpeakKey()
	local key = NS.Compat.SafeCall("GetBindingKey", "AZEROTHUNSPOKEN_SPEAK")
	if type(key) ~= "string" or key == "" then return nil end
	return key
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
	h.title:SetText(NS:L("tip_history"))
	h.messages:Clear()
	for _, e in ipairs(self.history) do
		local tag = e.sentTo and (" |cff" .. MUTED .. "(" .. NS:L("sent_to", CHANNEL_NAME[e.sentTo] or e.sentTo) .. ")|r")
			or ""
		local _, tint = self:VoiceColors(e.speaker)
		h.messages:AddMessage(("|cff%s%s|r %s |cff%s%s|r%s"):format(MUTED, e.time,
			Colored(e.speaker, self:VoiceLabel(e.speaker)), tint, e.text, tag))
	end
	h.messages:ScrollToBottom()
end

-- the history keeps its own saved place once dragged; until then it sits above the box and hides with it (#174)
local function OwnPlace()
	local pos = Cfg().historyPos
	return type(pos) == "table" and pos[1] ~= nil and pos[2] ~= nil and tonumber(pos[3]) ~= nil and tonumber(pos[4]) ~= nil
end

function Narrator:PlaceHistory()
	local h = self.historyFrame
	if not h then return end
	if OwnPlace() then
		W.RestorePosition(h, Cfg().historyPos, DEFAULT_POS)
	else
		h:ClearAllPoints()
		h:SetPoint("BOTTOM", frame, "TOP", 0, 4)
	end
end

function Narrator:ToggleHistory()
	if not self.historyFrame then return end
	local h = self.historyFrame
	if h:IsShown() then
		h:Hide()
	else
		self:PlaceHistory()
		h:Show()
		self:RefreshHistory()
	end
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
-- #182: the header grows with its label, so a large label never runs under the buttons or into the text
local function HeaderHeight()
	local _, size = frame.label:GetFont()
	return math.max(ICON + 4, math.ceil(tonumber(size) or 12) + 12)
end

-- the accent bar, the time line, the text colour and the typeface of the voice on screen (#186)
local function PaintVoice(speaker)
	local accent, tint = Narrator:VoiceColors(speaker)
	local r, g, b = RGB(accent)
	W.SetBackgroundAlpha(frame.accent, r, g, b, 1)
	W.SetBackgroundAlpha(frame.timeline, r, g, b, 0.55)
	frame.text:SetTextColor(RGB(tint))
	local path, size = Narrator:BodyFont(speaker)
	local _, _, flags = frame.text:GetFont()
	-- a client without the typeface keeps the standard one
	if frame.text:SetFont(path, size, flags or "") == false then frame.text:SetFont(frame.bodyFont, size, flags or "") end
end

function Narrator:ApplySettings()
	if not frame then return end
	local cfg = Cfg()
	W.SetFontSize(frame.label, math.max(12, cfg.fontSize - 2))
	PaintVoice(self.current and self.current.speaker or "narrator")
	-- #173: the setting is the background's opacity only, applied once; the frame alpha is never changed
	W.SetBackgroundAlpha(frame.bg, 0, 0, 0, self:BackgroundAlpha())
	local h = self.historyFrame
	if h then
		-- #182: the history follows the narrator's text size, and its height follows the lines
		W.SetBackgroundAlpha(frame.historyBg, 0, 0, 0, math.max(0.8, cfg.alpha))
		W.SetFontSize(h.messages, cfg.fontSize)
		h:SetHeight(ICON + 4 + HISTORY_LINES * math.ceil(cfg.fontSize * 1.25) + 12)
		self:RefreshHistory()
	end
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

---The thin time line along the bottom edge (#186): it shrinks as the line's time runs out and stops while the box is
---hovered. Not drawn for a waiting proposal (its label counts down) or with "reduce motion".
function Narrator:UpdateTimeLine()
	if not frame then return end
	local t = frame.timeline
	local remaining = self.remaining or 0
	local waiting = self.proposal ~= nil and NS.Gateway:GetPending() ~= nil
	local left = remaining > 0 and math.max(0, math.min(1, 1 - (self.elapsed or 0) / remaining)) or 0
	local w = math.floor((WIDTH - ACCENT) * left)
	if waiting or Cfg().reduceMotion or w < 1 then
		t:Hide()
	else
		t:SetWidth(w)
		t:Show()
	end
end

-- the proposal bar (#186): the channel chip on the left; on the right Discard (quiet), Another, Edit, To chat and Send,
-- the one primary action, with its key when it fits
local function LayoutBar(p)
	local speaker = Narrator.current and Narrator.current.speaker or "character"
	local chip = frame.channelBtn
	chip:SetText(CHANNEL_NAME[p.channel] or p.channel)
	FitButton(chip, 34)
	chip:Tint(VOICE_COLOR[speaker] or "ffffff")
	-- senza una casella della chat da riempire il pulsante non c'è (GDD §3.8)
	frame.copyBtn:SetShown(NS.Compat:CanOpenChat())
	local room = WIDTH - PAD - 8 - chip:GetWidth() - BAR_GAP
	local key = SpeakKey()
	local function Arrange(withKey)
		local send = NS:L("btn_send")
		frame.sendBtn:SetText(withKey and (send .. "  |cffd8c79a" .. withKey .. "|r") or send)
		local x = 0
		for _, b in ipairs({ frame.sendBtn, frame.copyBtn, frame.editBtn, frame.anotherBtn, frame.discardBtn }) do
			if b:IsShown() then
				FitButton(b, b == frame.discardBtn and 8 or 20)
				b:ClearAllPoints()
				b:SetPoint("RIGHT", -x, 0)
				x = x + b:GetWidth() + BAR_GAP
			end
		end
		return x - BAR_GAP
	end
	if Arrange(key) > room and key then Arrange(nil) end
end

function Narrator:Layout()
	if not frame then return end
	local p = self.proposal and NS.Gateway:GetPending() or nil
	local head = HeaderHeight()
	frame.header:SetHeight(head)
	local h = head + 2 + frame.text:GetStringHeight() + 12
	if frame.editor:IsShown() then h = h + 30 end
	if p then h = h + 34 end
	frame:SetHeight(h)
	frame.bar:SetShown(p ~= nil)
	if p then LayoutBar(p) end
	self:UpdateTimeLine()
	self:UpdateLayer()
	self:Avoid()
end

-- the voice, then the proposal's countdown (#177) or the channel it was sent to, and the held lines; the channel of a
-- proposal is on its chip (#186)
local function LabelText(cur)
	local meta = {}
	local p = Narrator.proposal or cur.proposal
	if cur.proposal and p then
		table.insert(meta, NS:L("proposal_tag"))
		local left = NS.Gateway:PendingLeft(p)
		if left then table.insert(meta, NS:L("proposal_left", math.max(0, math.ceil(left)))) end
	elseif cur.sentTo then
		table.insert(meta, NS:L("sent_to", CHANNEL_NAME[cur.sentTo] or cur.sentTo))
	end
	if #Narrator.held > 0 then table.insert(meta, NS:L("narrator_held", #Narrator.held)) end
	-- #183: a line asked for while paused says so in words, not only through the dimmed speak button
	if NS.paused then table.insert(meta, NS:L("narrator_paused")) end
	local label = Colored(cur.speaker, Narrator:VoiceLabel(cur.speaker))
	if #meta > 0 then label = label .. "|cff" .. MUTED .. " · " .. table.concat(meta, " · ") .. "|r" end
	return label
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
		PaintVoice(cur.speaker)
	end
	-- "|" is the client's escape character: the pause icon is drawn, its name is "II" (#175)
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

---"x" (#186, #183): hides the box and drops the lines held behind a proposal (they are in the history). A waiting
---proposal is never discarded here: it stays in the Gateway, comes back with the next line or the speak key
---(BringBack), and its bar has Discard. Text typed in the editor is kept as the proposal's edited text.
function Narrator:Dismiss()
	self.held = {}
	self:KeepTyped()
	if frame then frame:Hide() end
end

---Closes the editor and keeps what was typed as the proposal's edited text (the "x" of the box, the start of a fight).
function Narrator:KeepTyped()
	if not frame or not frame.editor:IsShown() then return end
	local typed = frame.editor:GetText()
	self:CloseEditor()
	if typed ~= "" then NS.Gateway:SetPendingText(typed) end
end

---#185: the fight begins and the Gateway holds the proposal: the box no longer shows it (nor its bar) and hides; the
---proposal comes back with ShowProposal when the fight ends. The lines held behind it are in the history.
---@param p AUProposal
function Narrator:HideProposal(p)
	local cur = self.current
	if self.proposal ~= p and not (cur and cur.proposal == p) then return end
	self:KeepTyped()
	self.proposal = nil
	if cur then cur.proposal = nil end
	self.held = {}
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

-- the box shows the waiting proposal (again)
local function ShowPending(p)
	Reveal({ speaker = p.speaker, display = p.display, proposal = p }, Narrator:ReadingTime(p.display))
end

---The speak key with a waiting proposal the box does not show (hidden with "x"): the proposal comes back on screen
---instead of leaving unseen (#176, #186). The next press sends it.
---@param p AUProposal
---@return boolean shown the proposal was off screen and is shown now
function Narrator:BringBack(p)
	if not frame or not NS.db.output.privateNarrator or frame:IsShown() then return false end
	ShowPending(p)
	return true
end

---#185: a proposal held during a fight waits again: the box shows it (it is already in the history).
---@param p AUProposal
---@return boolean shown
function Narrator:ShowProposal(p)
	if not frame or not NS.db.output.privateNarrator then return false end
	ShowPending(p)
	return true
end

-- Una frase del narratore: rec = { speaker, display, proposal?, sentTo? }
---Mostra una frase nel narratore (o nella chat locale se il riquadro è spento).
---#185: opts.chatFrame writes it in the chat frame only (the "In combat" setting), opts.queue lets it wait behind the
---line on screen (the lines released at the end of a fight).
---@param rec AUPhraseRecord
---@param opts? { chatFrame?: boolean, queue?: boolean }
function Narrator:Present(rec, opts)
	-- the entry is kept on the line: after a send it is marked even when held lines came after it (#176)
	rec.historyEntry = AddHistory(rec)
	self:RefreshHistory()
	if not frame or not NS.db.output.privateNarrator or (opts and opts.chatFrame) then
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
	if opts and opts.queue and frame:IsShown() and self.current then
		table.insert(self.held, { rec = rec, at = GetTime() })
		while #self.held > HELD_MAX do table.remove(self.held, 1) end
		self:UpdateLabel()
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
	-- #185: the editor takes every key: never in combat
	if NS.Gateway:InCombat() then return false end
	-- never an editor in a hidden box: the proposal hidden with "x" comes back first (#186); with the box off there
	-- is nothing to type in
	if not frame:IsShown() then
		if not NS.db.output.privateNarrator then return false end
		ShowPending(p)
	end
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

---Edit, from the bar's button or its key (#183): the editor, or the reason it does not open.
---@return boolean opened
function Narrator:Edit()
	if self:OpenEditor() then return true end
	if not NS.Gateway:GetPending() then
		NS:Print(NS:L("gw_edit_empty"))
	elseif NS.Gateway:InCombat() then
		NS:Print(NS:L("gw_combat_no_editor"))
	end
	return false
end

-- tasti assegnati (#183): Edit and History
function AzerothUnspoken_Edit()
	if NS.db then Narrator:Edit() end
end

function AzerothUnspoken_History()
	if NS.db then Narrator:ToggleHistory() end
end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
-- #174, #182: the history has the box's surface and font, a handle to drag it, a close box, and Esc closes it
local function BuildHistory()
	local h = CreateFrame("Frame", "AzerothUnspokenNarratorHistory", UIParent)
	h:SetSize(WIDTH, 190)
	h:SetFrameStrata("MEDIUM")
	h:SetClampedToScreen(true)
	h:SetMovable(true)
	frame.historyBg = W.Background(h, 0, 0, 0, 0.8)
	Outline(h)
	h:Hide()

	local handle = CreateFrame("Frame", nil, h)
	handle:SetPoint("TOPLEFT", 0, 0)
	handle:SetPoint("TOPRIGHT", -(ICON + 4), 0)
	handle:SetHeight(ICON + 4)
	handle:EnableMouse(true)
	handle:RegisterForDrag("LeftButton")
	handle:SetScript("OnDragStart", function()
		if not Cfg().locked then h.moving = true; h:StartMoving() end
	end)
	handle:SetScript("OnDragStop", function()
		if not h.moving then return end
		h:StopMovingOrSizing()
		h.moving = false
		-- from now on the history keeps this place and no longer hides with the box
		Cfg().historyPos = W.SavePosition(h)
	end)
	W.Tooltip(handle, function() return NS:L("tip_history_drag") end)
	-- the grip: two columns of three dots
	for i = 0, 5 do
		local dot = handle:CreateTexture(nil, "ARTWORK")
		dot:SetSize(2, 2)
		dot:SetPoint("LEFT", 8 + (i % 2) * 4, 4 - math.floor(i / 2) * 4)
		W.SetBackgroundAlpha(dot, ICON_REST[1], ICON_REST[2], ICON_REST[3], 1)
	end
	h.title = handle:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	h.title:SetPoint("LEFT", 22, 0)
	h.title:SetText(NS:L("tip_history"))
	h.handle = handle
	h.close = IconButton(h, "x", function() return NS:L("tip_history_close") end, function() h:Hide() end)
	h.close:SetPoint("TOPRIGHT", -2, -2)

	local m = CreateFrame("ScrollingMessageFrame", nil, h)
	m:SetPoint("TOPLEFT", PAD, -(ICON + 6))
	m:SetPoint("BOTTOMRIGHT", -8, 8)
	-- the narrator's own font, at its size (ApplySettings)
	m:SetFontObject(GameFontHighlight)
	m:SetJustifyH("LEFT")
	m:SetMaxLines(100)
	m:SetFading(false)
	m:EnableMouseWheel(true)
	m:SetScript("OnMouseWheel", function(self, delta)
		if delta > 0 then self:ScrollUp() else self:ScrollDown() end
	end)
	h.messages = m
	-- Esc closes it (FrameXML hides the frames named in UISpecialFrames)
	if type(UISpecialFrames) == "table" then table.insert(UISpecialFrames, "AzerothUnspokenNarratorHistory") end
	Narrator.historyFrame = h
	Narrator:PlaceHistory()
end

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenNarrator", UIParent)
	frame:SetSize(WIDTH, 60)
	frame:SetFrameStrata("MEDIUM")
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame.bg = W.Background(frame, 0, 0, 0, 0.55)
	Outline(frame)
	W.RestorePosition(frame, Cfg().pos, DEFAULT_POS)
	frame:Hide()

	-- #186: the voice's accent bar along the left edge and the time line along the bottom
	frame.accent = frame:CreateTexture(nil, "ARTWORK")
	frame.accent:SetPoint("TOPLEFT", 0, 0)
	frame.accent:SetPoint("BOTTOMLEFT", 0, 0)
	frame.accent:SetWidth(ACCENT)
	frame.timeline = frame:CreateTexture(nil, "ARTWORK")
	frame.timeline:SetPoint("BOTTOMLEFT", ACCENT, 0)
	frame.timeline:SetHeight(2)

	-- intestazione: voce, pausa, cronologia, chiudi. È l'unica parte che riceve il mouse.
	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT", 0, 0)
	header:SetPoint("TOPRIGHT", 0, 0)
	header:SetHeight(ICON + 4)
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
	frame.label:SetPoint("LEFT", PAD, 0)
	-- stops before the three buttons; a longer label is cut, not drawn under them
	frame.label:SetPoint("RIGHT", -(4 + 3 * ICON + 2 * ICON_GAP + 6), 0)
	frame.label:SetJustifyH("LEFT")
	frame.label:SetWordWrap(false)

	local function Icon(icon, tip, onClick, slot)
		local b = IconButton(header, icon, tip, onClick)
		b:SetPoint("RIGHT", -4 - slot * (ICON + ICON_GAP), 0)
		return b
	end
	frame.closeBtn = Icon("x", function() return NS:L("tip_close") end, function() Narrator:Dismiss() end, 0)
	frame.historyBtn = Icon("H", function() return NS:L("tip_history") end, function() Narrator:ToggleHistory() end, 1)
	frame.pauseBtn = Icon("II", function() return NS:L("tip_pause") end, function() NS.Director:TogglePause() end, 2)

	-- #182: the text starts under the header, whatever its height
	frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	frame.text:SetPoint("TOPLEFT", header, "BOTTOMLEFT", PAD, -2)
	frame.text:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", -PAD, -2)
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("TOP")
	frame.text:SetWordWrap(true)
	frame.bodyFont = frame.text:GetFont() or STANDARD_TEXT_FONT

	-- editor della proposta: the template's edge reaches 5 units left of the box, so 17 and 411 leave 12 on each side
	frame.editor = W.EditBox(frame, WIDTH - 2 * PAD - 5, 22)
	frame.editor:SetPoint("BOTTOMLEFT", PAD + 5, 40)
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

	-- barra della proposta (#186): a rule above it, the channel chip, a quiet Discard and one primary Send
	local bar = CreateFrame("Frame", nil, frame)
	bar:SetPoint("BOTTOMLEFT", PAD, 6)
	bar:SetPoint("BOTTOMRIGHT", -8, 6)
	bar:SetHeight(24)
	bar:Hide()
	frame.bar = bar
	local rule = bar:CreateTexture(nil, "BORDER")
	rule:SetPoint("TOPLEFT", ACCENT - PAD, 5)
	rule:SetPoint("TOPRIGHT", 8, 5)
	rule:SetHeight(1)
	W.SetBackgroundAlpha(rule, EDGE[1], EDGE[2], EDGE[3], 0.7)
	frame.channelBtn = Chip(bar, function() NS.Gateway:CycleChannel() end)
	frame.channelBtn:SetPoint("LEFT", 0, 0)
	W.Tooltip(frame.channelBtn, function() return NS:L("tip_channel") end)
	local function Btn(text, kind, onClick)
		return W.FlatButton(bar, text, 60, 24, onClick, kind)
	end
	frame.sendBtn = Btn(NS:L("btn_send"), "primary", function()
		NS.Gateway:PlayerAction(function() NS.Gateway:SendPending() end)
	end)
	frame.copyBtn = Btn(NS:L("btn_copy"), "ghost", function() NS.Gateway:CopyToChat() end)
	W.Tooltip(frame.copyBtn, function() return NS:L("tip_copy") end)
	frame.editBtn = Btn(NS:L("btn_edit"), "ghost", function() Narrator:Edit() end)
	frame.anotherBtn = Btn(NS:L("btn_another"), "ghost", function() NS.Gateway:Reroll() end)
	W.Tooltip(frame.anotherBtn, function() return NS:L("tip_another") end)
	frame.discardBtn = Btn(NS:L("btn_discard"), "text", function() NS.Gateway:Discard() end)

	frame:SetScript("OnUpdate", function(self, dt)
		Narrator.elapsed = (Narrator.elapsed or 0) + dt
		local remaining = Narrator.remaining or 0
		local hovered = NS.Compat:IsMouseOver(self)
		-- #177: the mouse over the box stops the proposal's waiting time too, not only the time line
		NS.Gateway:SetHovered(hovered)
		-- una proposta in attesa, un editor aperto o il mouse sul riquadro fermano il tempo
		local waiting = Narrator.proposal and NS.Gateway:GetPending()
		if waiting then Narrator:UpdateLabel() end   -- the countdown
		if waiting or self.editor:IsShown() or hovered then
			-- il tempo (and the time line) stops GRACE seconds before the end: once the mouse leaves, the box stays a
			-- moment longer instead of vanishing under the hand (#21)
			Narrator.elapsed = math.min(Narrator.elapsed, math.max(0, remaining - GRACE))
			Narrator:UpdateTimeLine()
			return
		end
		if Narrator.proposal then Narrator:Refresh() end   -- la proposta è scaduta
		if Narrator.elapsed >= remaining then
			-- #186: no fade (#173 keeps the frame alpha at 1); the time line has run out and the box goes
			if not Narrator:NextHeld() then self:Hide() end
		else
			Narrator:UpdateTimeLine()
		end
	end)
	frame:SetScript("OnHide", function()
		-- a hidden box is not under the mouse: the proposal's waiting time goes on
		NS.Gateway:SetHovered(false)
		-- #174: the history that sits above the box hides with it; one dragged to its own place stays
		local h = Narrator.historyFrame
		if h and not OwnPlace() then h:Hide() end
	end)

	BuildHistory()
end

function Narrator:ResetPosition()
	Cfg().pos = nil
	Cfg().historyPos = nil
	if frame then W.RestorePosition(frame, nil, DEFAULT_POS) end
	self:PlaceHistory()
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
