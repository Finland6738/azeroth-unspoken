-- Azeroth Unspoken: narratore privato (GDD §12.2, "Narrator Overlay").
-- Riquadro discreto e non bloccante: solo l'intestazione e i pulsanti ricevono il mouse, il testo
-- lascia passare i clic. Si sposta trascinando l'intestazione. Durata, opacità e dimensione del testo
-- sono regolabili. Tiene una cronologia recente (solo in memoria, mai salvata).
-- Le proposte per la chat compaiono qui, con la barra: canale, Scarta, Un'altra, Modifica, Nella chat, Invia.
-- One source of truth (#176): while the Gateway holds a proposal, the box shows it. Other lines go to the history at
-- once and to the box after the proposal is sent, discarded or expired.
-- The look (#186, UI-ECO UI-4): the NEBULA look of UI/Theme.lua and the widgets of UI/Widgets: a rounded Panel surface in
-- the `bg` token whose opacity is the player's setting (the text is never faded), a voice accent bar, a voice label and
-- text in the voice's colour token, another typeface for the inner voice, ghost icon buttons, a Chip for the channel,
-- FlatButtons in the proposal bar and a ThinBar for the time. Colours are tokens (Theme.TOKENS, voice-*): a change of
-- theme recolours the box at once. Motion comes from NS.Motion and stops with the setting "Animations".
-- Long private reading (#126, D20): a text with line breaks (a verse, a song, a tale) keeps them (#117), appears one line
-- at a time (the time to read the line before, and a short pause) and scrolls with the mouse wheel inside a box of at
-- most MAX_LINES lines. The history keeps the line breaks too.
local ADDON, NS = ...
local W = NS.Widgets
local Theme, Motion = NS.Theme, NS.Motion
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
local MIN_BACKGROUND = 0.55   -- #173: the box is never thinner than this (Narrator:Floor() raises it where the theme's text needs it)
local ACCENT = 3              -- #186: the bar in the voice colour along the left edge
local PAD = 14                -- text margin from the left edge (after the accent bar) and from the right edge
local RADIUS = 12             -- the Panel's corner (FDCP: the window shape is 12)
local MIN_CONTRAST = 4.5      -- UI review and ADR 0058: body text over the box
local ICON, ICON_GAP = 24, 6  -- #183: header buttons are 24x24 targets, 6 units apart
local BAR_GAP = 6             -- between the buttons of the proposal bar
local HISTORY_LINES = 8       -- the history is as tall as eight lines of the narrator text (#182)
local MAX_LINES = 12          -- #126: the text box grows up to this many lines, then the text scrolls
local VERSE_PAUSE = 0.8       -- #126: seconds between a line read and the next one appearing
local HISTORY_INDENT = "    " -- #117: the lines after the first of an entry in the history
local INNER_FONT = "Fonts\\ARIALN.TTF"   -- #186: the inner voice in another typeface, a cue that needs no colour

-- the colour of each voice (GDD §5.3) is a theme token: Theme.VOICE_TOKENS (voice-narrator, voice-inner, voice-character,
-- voice-npc), a pair per theme that differs in lightness too and keeps 4.5:1 on the box (Tests/TestLayout.lua). The rest
-- of the header label and the times in the history are text-2.
local VOICE_TOKEN = NS.Theme.VOICE_TOKENS
local MUTED = "text-2"
-- a translucent box lets the world through: the contrast is worked out over the brightest and the darkest world there is
local SCENES = { { 1, 1, 1, 1 }, { 0, 0, 0, 1 } }
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

-- a word in the colour of a token, as an inline colour code (the label and the history are one FontString each); the
-- label and the history are written again when the theme changes (Narrator:ApplySettings)
local function Colored(token, text)
	return W.Hex(token) .. text .. "|r"
end

-- the size of a text the player chose (narrator text size, #182), the typeface kept
local function SetSize(fs, size, flags)
	local path, _, f = fs:GetFont()
	fs:SetFont(path or STANDARD_TEXT_FONT, size, flags or f or "")
end

-- caratteri UTF-8, non byte: "è" conta uno
local function CharCount(text)
	local _, n = text:gsub("[^\128-\191]", "")
	return n
end

---The lines of a text (#117): one per verse, "" for the empty line between two stanzas.
---@param text? string
---@return string[]
function Narrator.Lines(text)
	local out = {}
	for line in ((text or "") .. "\n"):gmatch("([^\n]*)\n") do table.insert(out, line) end
	return out
end

---When each line of a text with line breaks appears (#126): the first at once, each next one after the time to read the
---one before at the chosen speed and VERSE_PAUSE; an empty line comes with the verse after it. nil for one line.
---@param text? string
---@return string[]? lines
---@return number[]? at seconds from the start, per line
---@return number? total the time to read every line
function Narrator:RevealTimes(text)
	if type(text) ~= "string" or not text:find("\n", 1, true) then return nil end
	local speed = Cfg().readingSpeed
	local lines, at, t = self.Lines(text), {}, 0
	for i, line in ipairs(lines) do
		at[i] = t
		if line ~= "" then t = t + CharCount(line) / speed + VERSE_PAUSE end
	end
	return lines, at, t
end

---Seconds a line stays on screen: the base duration plus the time to read it at the chosen speed (#177). A text with
---line breaks has the time of each line and the pause after it (#126).
---@param text string
---@return number seconds
function Narrator:ReadingTime(text)
	local cfg = Cfg()
	local _, _, verses = self:RevealTimes(text)
	if verses then return cfg.duration + verses end
	return cfg.duration + CharCount(text or "") / cfg.readingSpeed
end

-- #126: the height of a line of the narrator text, like the history's (#182)
local function LineHeight()
	return math.ceil(Cfg().fontSize * 1.25)
end

---The tallest the text box grows (#126): MAX_LINES lines; a longer text scrolls.
---@return number
function Narrator:MaxTextHeight()
	return MAX_LINES * LineHeight()
end

---The contrast of a token's colour over the box when its surface has opacity `alpha`, in the worse of the two worlds a
---translucent box can sit over (the brightest and the darkest: UI review, ADR 0058).
---@param token string
---@param alpha number
---@return number ratio
function Narrator.WorstContrast(token, alpha)
	local r, g, b = Theme.Color(token)
	local br, bg, bb = Theme.Color("bg")
	local worst = math.huge
	for _, scene in ipairs(SCENES) do
		worst = math.min(worst, Theme.Contrast({ r, g, b, 1 }, Theme.Over({ br, bg, bb, alpha }, scene)))
	end
	return worst
end

local floors = {}   -- theme id -> the least opacity at which text-1 keeps MIN_CONTRAST

---The least opacity of the background (#173): MIN_BACKGROUND, or more where the theme's text needs it to keep 4.5:1 over the
---world (Nebula's light text needs 0.6 over a white scene). Worked out from the tokens, once per theme.
---@return number alpha
function Narrator:Floor()
	local id = Theme.Current()
	if not floors[id] then
		local pct = math.floor(MIN_BACKGROUND * 100 + 0.5)
		while pct < 100 and Narrator.WorstContrast("text-1", pct / 100) < MIN_CONTRAST do pct = pct + 1 end
		floors[id] = pct / 100
	end
	return floors[id]
end

---The background opacity actually drawn: the setting, never under the floor (#173). The text is not faded.
---@return number alpha
function Narrator:BackgroundAlpha()
	return math.max(self:Floor(), Cfg().alpha)
end

---The history is a little more opaque than the box (#174, #182): at least 0.8.
---@return number alpha
function Narrator:HistoryAlpha()
	return math.max(self:Floor(), 0.8, Cfg().alpha)
end

---A text colour over the box: `token` where it keeps 4.5:1 at this opacity, text-1 (which the floor guarantees) where not.
---@param token string
---@param alpha? number the surface's opacity (the box's, by default)
---@return string token
function Narrator:Ink(token, alpha)
	if Narrator.WorstContrast(token, alpha or self:BackgroundAlpha()) >= MIN_CONTRAST then return token end
	return "text-1"
end

---The colours of a voice (#186, spec section 2.3): the token of its accent (bar, time line) and the token of its text and label,
---which is the voice's own where it reads over the box and text-1 where not.
---@param speaker string
---@param alpha? number the surface's opacity (the box's, by default)
---@return string accent token
---@return string ink token
function Narrator:VoiceColors(speaker, alpha)
	local accent = VOICE_TOKEN[speaker] or "text-1"
	return accent, self:Ink(accent, alpha)
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
-- Pezzi del riquadro (#186, UI-4): the buttons and the chip on the widgets of the theme
---------------------------------------------------------------------------
-- A ghost icon button (#186): no box until hovered, an icon drawn with textures. Its text names the icon: "II" pause, ">"
-- resume, "H" history, "x" close. 24x24, the target size of #183. Built on W.FlatButton (ghost): hover and press come with it.
local ICON_REST, ICON_HOVER = "text-2", "text-1"
local function IconButton(parent, icon, tip, onClick)
	local b = W.FlatButton(parent, "", ICON, ICON, onClick, "ghost")
	b.parts = {}
	local function Bar(w, h, x, y)
		local t = b:CreateTexture(nil, "ARTWORK", nil, 3)
		t:SetSize(w, h)
		t:SetPoint("CENTER", x, y)
		Theme.Fill(t, ICON_REST)
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
	-- "x" is the sheet's cross, tinted like the bars
	b.cross = W.Icon(b, "cross", 16, ICON_REST, "ARTWORK")
	b.cross:SetPoint("CENTER", 0, 0)
	b.glyph = Theme.NewText(b, "Button", ICON_REST)
	b.glyph:SetPoint("CENTER", 0, 1)
	local function Paint(hover)
		local token = hover and ICON_HOVER or ICON_REST
		for _, t in ipairs(b.parts) do Theme.Fill(t, token) end
		Theme.Tint(b.cross, token)
		Theme.Text(b.glyph, token)
	end
	function b:SetText(name)
		self.icon = name
		for key, shape in pairs(self.shapes) do
			for _, t in ipairs(shape) do
				if key == name then t:Show() else t:Hide() end
			end
		end
		self.cross:SetShown(name == "x")
		self.glyph:SetText((self.shapes[name] or name == "x") and "" or name)
	end
	function b:GetText() return self.icon end
	b:SetText(icon)
	W.Tooltip(b, tip)
	b:HookScript("OnEnter", function() Paint(true) end)
	b:HookScript("OnLeave", function() Paint(false) end)
	Paint(false)
	return b
end

-- a button resized to its text (the proposal bar fits its buttons side by side)
local function FitButton(b, extra)
	local w = math.ceil(b.label:GetStringWidth()) + extra
	b:SetWidth(w)
	return w
end

-- the channel chip (#186): a Chip of the theme with a small arrow that says it changes the channel
local function ChannelChip(parent, onClick)
	local c = W.Chip(parent, { text = "/s", onClick = onClick, height = 24, pad = 40 })
	c.label:ClearAllPoints()
	c.label:SetPoint("LEFT", c, "LEFT", 10, 0)
	c.arrow = W.Icon(c, "chevron", 12, "text-2")
	c.arrow:SetPoint("RIGHT", c, "RIGHT", -8, 0)
	Motion.Rotate(c.arrow, -math.pi / 2, 0)   -- the chevron points right in the sheet: down, "this opens a choice"
	function c:SetText(text) self:SetLabel(text) end
	function c:GetText() return self.label:GetText() end
	return c
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
	local alpha = self:HistoryAlpha()
	local muted = W.Hex(self:Ink(MUTED, alpha))
	for _, e in ipairs(self.history) do
		local tag = e.sentTo and (" " .. muted .. "(" .. NS:L("sent_to", CHANNEL_NAME[e.sentTo] or e.sentTo) .. ")|r") or ""
		local _, ink = self:VoiceColors(e.speaker, alpha)
		local tint = W.Hex(ink)
		-- #117: a text with line breaks keeps them, one message per line, the later ones indented
		local lines = self.Lines(e.text)
		h.messages:AddMessage(("%s%s|r %s %s%s|r%s"):format(muted, e.time,
			tint .. self:VoiceLabel(e.speaker) .. "|r", tint, lines[1], tag))
		for i = 2, #lines do
			h.messages:AddMessage(("%s%s%s|r"):format(tint, HISTORY_INDENT, lines[i] ~= "" and lines[i] or " "))
		end
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
	local accent, ink = Narrator:VoiceColors(speaker)
	Theme.Fill(frame.accent, accent)
	frame.timeline:SetToken(accent)
	Theme.Text(frame.text, ink)
	-- the typeface follows the font setting (Theme.SetupFonts changes the font object, not the texts that had a size set)
	local fontObject = Theme.Font("Body")
	local bodyPath = fontObject and fontObject.GetFont and fontObject:GetFont()
	frame.bodyFont = bodyPath or frame.bodyFont or STANDARD_TEXT_FONT
	local path, size = Narrator:BodyFont(speaker)
	local _, _, flags = frame.text:GetFont()
	-- a client without the typeface keeps the standard one
	if frame.text:SetFont(path, size, flags or "") == false then frame.text:SetFont(frame.bodyFont, size, flags or "") end
end

---Paints the box again: its surface, the voice on screen, the label and the history. Called by the settings (opacity, text
---size, the font) and by a change of theme (Theme.OnChange), so the colours written inline follow the theme.
function Narrator:ApplySettings()
	if not frame then return end
	local cfg = Cfg()
	SetSize(frame.label, math.max(12, cfg.fontSize - 2))
	PaintVoice(self.current and self.current.speaker or "narrator")
	-- #173: the setting is the background's opacity only, applied once; the frame alpha is never changed
	Theme.Tint(frame.bg, "bg", self:BackgroundAlpha())
	frame.labelText = nil
	self:UpdateLabel()
	local h = self.historyFrame
	if h then
		-- #182: the history follows the narrator's text size, and its height follows the lines
		Theme.Tint(frame.historyBg, "bg", self:HistoryAlpha())
		SetSize(h.messages, cfg.fontSize)
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
---hovered. Not drawn for a waiting proposal (its label counts down) or with "Animations: off".
function Narrator:UpdateTimeLine()
	if not frame then return end
	local t = frame.timeline
	local remaining = self.remaining or 0
	local waiting = self.proposal ~= nil and NS.Gateway:GetPending() ~= nil
	local left = remaining > 0 and math.max(0, math.min(1, 1 - (self.elapsed or 0) / remaining)) or 0
	local w = math.floor((WIDTH - 2 * PAD) * left)
	if waiting or not Motion.On() or w < 1 then
		t:Hide()
	else
		t:SetFraction(left)
		t:Show()
	end
end

-- the proposal bar (#186): the channel chip on the left; on the right Discard (quiet), Another, Edit, To chat and Send,
-- the one primary action, with its key when it fits
local function LayoutBar(p)
	local chip = frame.channelBtn
	chip:SetText(CHANNEL_NAME[p.channel] or p.channel)
	-- senza una casella della chat da riempire il pulsante non c'è (GDD §3.8)
	frame.copyBtn:SetShown(NS.Compat:CanOpenChat())
	local room = WIDTH - PAD - 8 - chip:GetWidth() - BAR_GAP
	local key = SpeakKey()
	local function Arrange(withKey)
		local send = NS:L("btn_send")
		frame.sendBtn:SetText(withKey and (send .. "  " .. withKey) or send)
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

-- the height of the whole text and of the part on screen (#126: the lines revealed so far)
local function TextHeights()
	local shown = frame.text:GetStringHeight()
	local cur, v = Narrator.current, Narrator.verses
	if not (cur and v and v.rec == cur and v.shown < #v.lines) then return shown, shown end
	local part = frame.text:GetText()
	frame.text:SetText(cur.display)
	local full = frame.text:GetStringHeight()
	frame.text:SetText(part)
	return full, shown
end

---#126: the box follows the line just revealed, unless the player scrolled.
---@param shown number height of the text on screen
function Narrator:FollowText(shown)
	if not frame or self.userScrolled then return end
	local offset = math.max(0, math.min(self.scrollMax or 0, shown - (self.viewHeight or shown)))
	if offset ~= self.scrollOffset then
		self.scrollOffset = offset
		frame.scroll:SetVerticalScroll(offset)
	end
end

---The mouse wheel over a text taller than the box (#126): a step of two lines. The box keeps the place the player chose.
---@param delta number 1 up, -1 down
---@return boolean scrolled
function Narrator:Scroll(delta)
	if not frame or not self.overflow then return false end
	local offset = math.max(0, math.min(self.scrollMax or 0, (self.scrollOffset or 0) - delta * 2 * LineHeight()))
	self.userScrolled = true
	self.scrollOffset = offset
	frame.scroll:SetVerticalScroll(offset)
	return true
end

function Narrator:Layout()
	if not frame then return end
	local p = self.proposal and NS.Gateway:GetPending() or nil
	local head = HeaderHeight()
	frame.header:SetHeight(head)
	-- #126: the box is as tall as the whole text from the start, up to MAX_LINES lines; the rest scrolls
	local full, shown = TextHeights()
	local view = math.min(full, self:MaxTextHeight())
	self.viewHeight, self.scrollMax = view, math.max(0, full - view)
	self.overflow = self.scrollMax > 0
	frame.scroll:SetHeight(math.max(1, view))
	frame.body:SetHeight(math.max(1, full))
	-- only a text that does not fit takes the mouse wheel; nothing in the text takes a click
	frame.scroll:EnableMouseWheel(self.overflow)
	if not self.overflow and self.scrollOffset ~= 0 then
		self.scrollOffset = 0
		frame.scroll:SetVerticalScroll(0)
	end
	self:FollowText(shown)
	local h = head + 2 + view + 12
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
	local _, ink = Narrator:VoiceColors(cur.speaker)
	local label = Colored(ink, Narrator:VoiceLabel(cur.speaker))
	if #meta > 0 then label = label .. Colored(Narrator:Ink(MUTED), " · " .. table.concat(meta, " · ")) end
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
		-- #126: only the lines revealed so far
		local v = self.verses
		if v and v.rec == cur then
			v.shown = 0
			self:UpdateVerses()
		end
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

---#126: the lines of a text with line breaks that are due by now are on screen; the box follows the last one.
function Narrator:UpdateVerses()
	local v = self.verses
	if not frame or not v or v.rec ~= self.current then return end
	local n, elapsed = 1, self.elapsed or 0
	while v.at[n + 1] and v.at[n + 1] <= elapsed do n = n + 1 end
	if n == v.shown then return end
	v.shown = n
	frame.text:SetText(table.concat(v.lines, "\n", 1, n))
	self:FollowText(frame.text:GetStringHeight())
end

function Narrator:Clear()
	self.current = nil
	self.verses = nil
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
	-- #126: a text with line breaks appears one line at a time, unless motion is reduced (then all at once, with the
	-- same reading time); the box starts at the top
	Narrator.verses = nil
	if not rec.proposal and Motion.On() then
		local lines, at = Narrator:RevealTimes(rec.display)
		if lines then Narrator.verses = { rec = rec, lines = lines, at = at, shown = 0 } end
	end
	Narrator.userScrolled, Narrator.scrollOffset = false, 0
	frame.scroll:SetVerticalScroll(0)
	-- the box comes in with a short fade (NS.Motion; at once with "Animations: off"). It leaves without one: its time line
	-- has run out, and #173 keeps the frame at alpha 1 for as long as it is read
	local was = frame:IsShown()
	frame:Show()
	if not was then Motion.FadeIn(frame, Motion.FAST) end
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
	self:UpdateCounter()
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

---The count of bytes the editor's line will take in chat (what Gateway:TextFor makes of it) over the channel's limit, on the
---right of the editor; the colour of an excess is `err`, and the words say it as well (never colour alone).
---@return number? used
---@return number? limit
function Narrator:UpdateCounter()
	if not frame or not frame.editor:IsShown() then return nil end
	local p = NS.Gateway:GetPending()
	local limit = p and (NS.Config.CHAT_LIMITS[p.channel] or 255) or 255
	local typed = frame.editor:GetText() or ""
	local used = #(p and NS.Gateway:TextFor(p.form, typed, p.channel, p.player) or typed)
	local over = used > limit
	frame.counter:SetText(NS:L(over and "gw_bytes_over" or "gw_bytes", used, limit))
	Theme.Text(frame.counter, over and "err" or "text-3")
	return used, limit
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
	h.parts = Theme.Panel(h, { radius = RADIUS, fill = "bg", border = "border", shadow = true, shadowAlpha = 0.5 })
	frame.historyBg = h.parts.fill
	h:Hide()

	local handle = CreateFrame("Frame", nil, h)
	handle:SetPoint("TOPLEFT", 0, 0)
	handle:SetPoint("TOPRIGHT", -(ICON + 8), 0)
	handle:SetHeight(ICON + 8)
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
		dot:SetPoint("LEFT", 12 + (i % 2) * 4, 4 - math.floor(i / 2) * 4)
		Theme.Fill(dot, ICON_REST)
	end
	h.title = Theme.NewText(handle, "BodyMedium", "text-1")
	h.title:SetPoint("LEFT", 26, 0)
	h.title:SetText(NS:L("tip_history"))
	h.handle = handle
	h.close = IconButton(h, "x", function() return NS:L("tip_history_close") end, function() h:Hide() end)
	h.close:SetPoint("TOPRIGHT", -6, -6)

	local m = CreateFrame("ScrollingMessageFrame", nil, h)
	m:SetPoint("TOPLEFT", PAD, -(ICON + 10))
	m:SetPoint("BOTTOMRIGHT", -10, 10)
	-- the narrator's own font, at its size (ApplySettings)
	m:SetFontObject(Theme.Font("Body") or GameFontHighlight)
	Theme.Text(m, "text-1")
	m:SetJustifyH("LEFT")
	m:SetMaxLines(400)   -- #117: an entry with line breaks takes one line per verse
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
	-- the surface: a rounded Panel in `bg` whose opacity is the player's setting (ApplySettings); the ring and the shadow
	-- keep their own strength
	frame.parts = Theme.Panel(frame, { radius = RADIUS, fill = "bg", border = "border", shadow = true, shadowAlpha = 0.5 })
	frame.bg = frame.parts.fill
	W.RestorePosition(frame, Cfg().pos, DEFAULT_POS)
	frame:Hide()

	-- #186: the voice's accent bar along the left edge (inside the corners) and the time line along the bottom
	frame.accent = frame:CreateTexture(nil, "ARTWORK")
	frame.accent:SetPoint("TOPLEFT", 0, -RADIUS)
	frame.accent:SetPoint("BOTTOMLEFT", 0, RADIUS)
	frame.accent:SetWidth(ACCENT)
	Theme.Fill(frame.accent, VOICE_TOKEN.narrator)
	frame.timeline = W.ThinBar(frame, { height = 2, width = WIDTH - 2 * PAD, token = VOICE_TOKEN.narrator })
	frame.timeline:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", PAD, 3)

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

	frame.label = Theme.NewText(header, "BodyMedium", "text-2")
	frame.label:SetPoint("LEFT", PAD, 0)
	-- stops before the three buttons; a longer label is cut, not drawn under them
	frame.label:SetPoint("RIGHT", -(8 + 3 * ICON + 2 * ICON_GAP + 6), 0)
	frame.label:SetJustifyH("LEFT")
	frame.label:SetWordWrap(false)

	local function Icon(icon, tip, onClick, slot)
		local b = IconButton(header, icon, tip, onClick)
		b:SetPoint("RIGHT", -8 - slot * (ICON + ICON_GAP), 0)
		return b
	end
	frame.closeBtn = Icon("x", function() return NS:L("tip_close") end, function() Narrator:Dismiss() end, 0)
	frame.historyBtn = Icon("H", function() return NS:L("tip_history") end, function() Narrator:ToggleHistory() end, 1)
	frame.pauseBtn = Icon("II", function() return NS:L("tip_pause") end, function() NS.Director:TogglePause() end, 2)

	-- #182: the text starts under the header, whatever its height. #126: inside a scroll box, as tall as the text up to
	-- MAX_LINES lines (Layout); it takes the mouse wheel only when the text does not fit, never a click
	frame.scroll = CreateFrame("ScrollFrame", nil, frame)
	frame.scroll:SetPoint("TOPLEFT", header, "BOTTOMLEFT", PAD, -2)
	frame.scroll:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", -PAD, -2)
	frame.scroll:SetHeight(1)
	frame.scroll:EnableMouse(false)
	frame.scroll:EnableMouseWheel(false)
	frame.scroll:SetScript("OnMouseWheel", function(_, delta) Narrator:Scroll(delta) end)
	frame.body = CreateFrame("Frame", nil, frame.scroll)
	frame.body:SetSize(WIDTH - 2 * PAD, 1)
	frame.scroll:SetScrollChild(frame.body)
	frame.text = Theme.NewText(frame.body, "Body", "text-1")
	frame.text:SetPoint("TOPLEFT", frame.body, "TOPLEFT", 0, 0)
	frame.text:SetWidth(WIDTH - 2 * PAD)
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("TOP")
	frame.text:SetWordWrap(true)
	frame.bodyFont = frame.text:GetFont() or STANDARD_TEXT_FONT   -- read again from the font object by PaintVoice

	-- editor della proposta: the themed EditBox (UI-4), with the count of bytes the line will take in chat on its right
	frame.editor = W.EditBox(frame, WIDTH - 2 * PAD, 24)
	frame.editor:SetPoint("BOTTOMLEFT", PAD, 40)
	frame.editor:SetMaxLetters(240)
	frame.editor:SetTextInsets(8, 130, 0, 0)
	frame.counter = Theme.NewText(frame.editor, "MonoSmall", "text-3")
	frame.counter:SetPoint("RIGHT", frame.editor, "RIGHT", -8, 0)
	frame.counter:SetJustifyH("RIGHT")
	frame.editor:HookScript("OnTextChanged", function() Narrator:UpdateCounter() end)
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
	rule:SetHeight(Theme.Px(1))
	Theme.Fill(rule, "border")
	frame.channelBtn = ChannelChip(bar, function() NS.Gateway:CycleChannel() end)
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
			Narrator:UpdateVerses()
			Narrator:UpdateTimeLine()
			return
		end
		if Narrator.proposal then Narrator:Refresh() end   -- la proposta è scaduta
		if Narrator.elapsed >= remaining then
			-- #186: no fade (#173 keeps the frame alpha at 1); the time line has run out and the box goes
			if not Narrator:NextHeld() then self:Hide() end
		else
			Narrator:UpdateVerses()
			Narrator:UpdateTimeLine()
		end
	end)
	frame:SetScript("OnHide", function()
		-- a hidden box is not under the mouse: the proposal's waiting time goes on
		NS.Gateway:SetHovered(false)
		frame:SetAlpha(1)   -- a hidden box is not left half-faded by an entrance that was still running
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
	-- a change of theme paints the box and the history again (the inline colours of the label and of the history too); a
	-- change of the font setting (Theme.SetupFonts runs first, it is registered earlier) gives the texts their new typeface
	Theme.OnChange(function() Narrator:ApplySettings() end)
	NS.Config:OnChange(function(path)
		if path == nil or path == "ui.fontSource" then Narrator:ApplySettings() end
	end)
end
