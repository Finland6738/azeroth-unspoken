-- Azeroth Unspoken: la finestra dei dialoghi ambientali (S8, GDD §7.3, §12.2; ADR 0020).
-- Una finestra separata e discreta: il ruolo e il nome dell'NPC, la battuta, da una a tre risposte e un pulsante per
-- chiudere subito. In cima porta sempre, ben visibile, l'etichetta «dialogo ambientale dell'addon»: è un dialogo
-- simulato, non le parole dell'NPC vero.
--
-- Non interferisce con Blizzard: non scrive nella chat (mai le battute degli NPC), non nasconde né sposta il gossip, le
-- quest, il commercio o altre finestre, e si mette dove non le copre (vedi `BLIZZARD_FRAMES` e `Place`). Non è in
-- UISpecialFrames: Esc non la chiude, perché con Esc si chiuderebbero anche le finestre di Blizzard dell'NPC.
-- Il disegno viene da NPCAlive:View(); qui non c'è logica di dialogo.
-- #182: the window follows the window scale, its text size and opacity are in the settings panel, and each text sits
-- under the one above (the line under the title, the answers under the line), so nothing overlaps at large sizes.
-- #183: the answers are numbered and have keys (NPC answer 1-3 in Bindings.xml); every button is 24 units high.
-- UI-ECO UI-4: the NEBULA look: a rounded Panel surface in the `bg` token (its opacity is the setting, never under the
-- narrator's floor), the label "addon ambient dialogue" as a Badge that is always there, the NPC's title in the
-- voice-npc token, the answers as FlatButtons (primary for "Listen", secondary for the answers), a fade-in from NS.Motion.
-- It still has no Esc (ADR 0020). Not tried in the client.
-- ADR 0061 (active romance, step R2): after the neutral answers up to two flirt answers (NPCAlive marks them `romance`):
-- a FlatButton of the kind `romance` (the romance voice on the ring and the label), the heart of the icon sheet 6 units
-- before the centred label, numbered 4 and 5 (keys NPC answer 4-5) and a tooltip that says what it is. The window grows
-- by one button for each (five at most). `F.ROMANCE` tells Systems/Romance.lua that the frame can draw them.
local ADDON, NS = ...
local W = NS.Widgets
local Theme, Motion = NS.Theme, NS.Motion

---@class AUDialogueFrame
local F = NS:RegisterModule("dialogue")
NS.DialogueFrame = F

local WIDTH = 380
local MARGIN = 8
local OVERLAP_PAD = 6
local CHECK_EVERY = 0.5
local NPC_TOKEN = Theme.VOICE_TOKENS.npc   -- the NPC voice of the narrator (#186)
local ROMANCE_TOKEN = Theme.VOICE_TOKENS.romance   -- ADR 0061
local HEART = 14            -- the heart before a flirt answer's label
F.ROMANCE = true            -- ADR 0061: this frame draws flirt answers (Systems/Romance.lua asks before offering them)
F.MAX_BUTTONS = 5           -- three neutral answers and two flirt answers

-- finestre di Blizzard che la nostra non deve coprire (nomi di FrameXML: si controllano solo se esistono)
F.BLIZZARD_FRAMES = { "GossipFrame", "QuestFrame", "MerchantFrame", "TaxiFrame", "ClassTrainerFrame", "BankFrame",
	"TradeFrame", "AuctionFrame", "MailFrame", "QuestLogFrame", "CharacterFrame", "SpellBookFrame", "WorldMapFrame",
	"ContainerFrame1", "ContainerFrame2", "ContainerFrame3", "ContainerFrame4", "ContainerFrame5" }

local frame
local lastView

local function Cfg() return NS.db.ui.dialogue end

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

---------------------------------------------------------------------------
-- Posizione senza sovrapporsi alle finestre di Blizzard
---------------------------------------------------------------------------
---Il rettangolo { left, bottom, width, height } di una finestra visibile, nelle unità di UIParent; nil se non si legge.
---@param f any
---@return table? rect
local function Rect(f)
	if type(f) ~= "table" or type(f.IsShown) ~= "function" or type(f.GetRect) ~= "function" then return nil end
	local ok, shown = pcall(f.IsShown, f)
	if not ok or shown ~= true then return nil end
	local ok2, l, b, w, h = pcall(f.GetRect, f)
	if not (ok2 and IsNumber(l) and IsNumber(b) and IsNumber(w) and IsNumber(h)) then return nil end
	local ratio = 1
	local ok3, scale = pcall(f.GetEffectiveScale, f)
	local ok4, base = pcall(UIParent.GetEffectiveScale, UIParent)
	if ok3 and ok4 and IsNumber(scale) and IsNumber(base) and base > 0 then ratio = scale / base end
	return { left = l * ratio, bottom = b * ratio, width = w * ratio, height = h * ratio }
end

local function Overlap(a, b)
	if not a or not b then return false end
	return a.left < b.left + b.width + OVERLAP_PAD and b.left < a.left + a.width + OVERLAP_PAD
		and a.bottom < b.bottom + b.height + OVERLAP_PAD and b.bottom < a.bottom + a.height + OVERLAP_PAD
end

---Le finestre di Blizzard che si vedono adesso (con il loro rettangolo).
---@return table[]
function F:BlizzardRects()
	local out = {}
	for _, name in ipairs(self.BLIZZARD_FRAMES) do
		local r = Rect(_G[name])
		if r then table.insert(out, r) end
	end
	-- #181: the narrator box is not covered either (it carries the proposal the speak key sends)
	local narrator = NS.Narrator and NS.Narrator:GetFrame()
	local r = narrator and Rect(narrator)
	if r then table.insert(out, r) end
	return out
end

---Le posizioni possibili, in ordine di preferenza: quella scelta dall'utente, poi a destra (il gossip, le quest e il
---commercio di Blizzard stanno a sinistra), in alto, in basso a destra. Rettangoli in unità di UIParent.
---@param w number
---@param h number
---@return table[] candidates { left, bottom }
function F:Candidates(w, h)
	local sw, sh = UIParent:GetWidth(), UIParent:GetHeight()
	local out = {}
	local saved = Cfg().pos
	if type(saved) == "table" and IsNumber(saved[3]) and IsNumber(saved[4]) then
		table.insert(out, { left = saved[3], bottom = saved[4], saved = true })
	end
	if IsNumber(sw) and IsNumber(sh) and sw >= 400 and sh >= 300 then
		table.insert(out, { left = sw - w - 60, bottom = sh / 2 - h / 2 + 40 })
		table.insert(out, { left = (sw - w) / 2, bottom = sh - h - 110 })
		table.insert(out, { left = sw - w - 40, bottom = 140 })
		table.insert(out, { left = 40, bottom = sh - h - 110 })
	end
	return out
end

---Mette la finestra dove non copre nessuna finestra di Blizzard visibile.
---@param force? boolean ricalcola anche se non c'è sovrapposizione
function F:Place(force)
	if not frame then return end
	local w, h = frame:GetWidth(), frame:GetHeight()
	if not (IsNumber(w) and IsNumber(h)) then return end
	local others = self:BlizzardRects()
	local current = self.placed
	if not force and current and current.w == w and current.h == h then
		local clear = true
		for _, r in ipairs(others) do
			if Overlap({ left = current.left, bottom = current.bottom, width = w, height = h }, r) then clear = false end
		end
		if clear then return end
	end
	local candidates = self:Candidates(w, h)
	local best, bestCount, clear
	for _, c in ipairs(candidates) do
		local rect = { left = c.left, bottom = c.bottom, width = w, height = h }
		local n = 0
		for _, r in ipairs(others) do if Overlap(rect, r) then n = n + 1 end end
		if n == 0 then best, clear = c, true; break end
		if not bestCount or n < bestCount then best, bestCount = c, n end
	end
	frame:ClearAllPoints()
	if best then
		frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", best.left, best.bottom)
		self.placed = { left = best.left, bottom = best.bottom, w = w, h = h, clear = clear == true, saved = best.saved }
	else
		-- schermo di dimensioni sconosciute: un ancoraggio a destra, dove Blizzard non mette le sue finestre di dialogo
		frame:SetPoint("RIGHT", UIParent, "RIGHT", -60, 40)
		self.placed = { w = w, h = h, clear = (#others == 0) }
	end
end

---@return table? placed { left, bottom, w, h, clear } dove è stata messa l'ultima volta (per i test)
function F:GetPlacement() return self.placed end

---------------------------------------------------------------------------
-- Disegno
---------------------------------------------------------------------------
-- the size of a text the player chose (#182), the typeface kept
local function SetSize(fs, size)
	local path, _, flags = fs:GetFont()
	fs:SetFont(path or STANDARD_TEXT_FONT, size, flags or "")
end

local function Title(view)
	local role = view.roleLabel or ""
	local name = view.name and view.name ~= "" and (" · " .. view.name) or ""
	local tag = view.test and (" · " .. NS:L("npc_test_tag")) or ""
	return role .. name .. tag
end

local HEADER_H = 36   -- #183: room for a 24-unit close button and the Badge
local BUTTON_H = 24

-- from the top: the header, the title, the line, then the answers, each under the one above (#182)
local function Layout(buttons)
	frame.shownButtons = buttons
	local y = HEADER_H + 6 + math.ceil(frame.title:GetStringHeight() or 14) + 6
	if frame.text:IsShown() then y = y + math.ceil(frame.text:GetStringHeight() or 14) + 8 end
	for _, b in ipairs(buttons) do
		b:ClearAllPoints()
		b:SetPoint("TOPLEFT", frame, "TOPLEFT", MARGIN, -y)
		b:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -MARGIN, -y)
		b:Show()
		y = y + BUTTON_H + 4
	end
	frame:SetHeight(y + MARGIN)
end

local function HideAllButtons()
	for _, b in ipairs(frame.choiceButtons) do b:Hide() end
	frame.openBtn:Hide()
	frame.endBtn:Hide()
end

---Disegna la vista di NPCAlive:View().
---@param view table
function F:Render(view)
	if not frame then return end
	lastView = view
	if view.state ~= "offered" and not NS.NPCAlive.ACTIVE[view.state] then
		frame:Hide()
		return
	end
	HideAllButtons()
	frame.badge:SetBadge(NS:L("npc_badge"), "accent")
	frame.title:SetText(Title(view))
	frame.endBtn:SetText(NS:L("npc_btn_close"))
	frame.openBtn:SetText(NS:L("npc_btn_open"))
	frame.closeBtn:SetText(NS:L("npc_btn_close"))
	local buttons = {}
	if view.state == "offered" then
		frame.text:SetText("")
		frame.text:Hide()
		table.insert(buttons, frame.openBtn)
	else
		frame.text:Show()
		frame.text:SetText("«" .. tostring(view.line or "") .. "»")
		for i, c in ipairs(view.choices or {}) do
			local b = frame.choiceButtons[i]
			if b then
				-- #183: the number is the key that answers (NPC answer 1-5)
				b:SetText(i .. ". " .. c.text)
				-- ADR 0061: a flirt answer: its kind, the heart, a tooltip that says what it is; a neutral one is plain
				b.romance, b.moment = c.romance == true, c.moment
				b:SetStyle(b.romance and "romance" or "secondary")
				b.heart:SetShown(b.romance)
				b.auTip = b.romance and b.tipFn or nil
				W.FitButton(b, WIDTH - 2 * MARGIN, WIDTH - 2 * MARGIN, b.romance and 24 + HEART + 6 or 24)   -- a long answer is cut, the tooltip says it whole
				b.choiceIndex = i
				table.insert(buttons, b)
			end
		end
		-- senza risposte (l'ultima battuta) si chiude da qui
		if #buttons == 0 then table.insert(buttons, frame.endBtn) end
	end
	self:ApplySettings(true)
	Layout(buttons)
	local was = frame:IsShown()
	frame:Show()
	if not was then Motion.FadeIn(frame, Motion.FAST) end
	self:Place(true)
end

function F:ApplySettings(skipLayout)
	if not frame then return end
	local cfg = Cfg()
	SetSize(frame.text, cfg.fontSize)
	SetSize(frame.title, cfg.fontSize)
	-- the surface is as opaque as the setting says, never under the narrator's floor (text-1 keeps 4.5:1); the text is not faded
	local alpha = math.max(NS.Narrator and NS.Narrator:Floor() or 0.6, 0.85 * cfg.alpha)
	Theme.Tint(frame.bg, "bg", alpha)
	Theme.Text(frame.title, NS.Narrator and NS.Narrator:Ink(NPC_TOKEN, alpha) or "text-1")
	frame:SetAlpha(1)
	W.ApplyScale(frame)
	if not skipLayout and frame:IsShown() and frame.shownButtons then
		Layout(frame.shownButtons)
		self:Place(false)
	end
end

---ADR 0061: the tooltip of a flirt answer (a moment answer says the popup opens; with a beloved who is someone else,
---that they may hear of it).
---@param b table the button
---@return string
function F.FlirtTip(b)
	local name = lastView and lastView.name or ""
	if b and b.moment then return NS:L("rom_tip_moment", name) end
	local Ro = NS.Romance
	local npcID = NS.NPCAlive.session and NS.NPCAlive.session.who and NS.NPCAlive.session.who.npcID
	local beloved = Ro and Ro:Beloved()
	if beloved and beloved ~= npcID then return NS:L("rom_tip_flirt_other", name) end
	return NS:L("rom_tip_flirt", name)
end

---@return boolean ready la finestra è stata costruita
function F:IsReady() return frame ~= nil end

---@return table? frame
function F:GetFrame() return frame end

---Nasconde la finestra (la logica del dialogo è in NPCAlive).
function F:Hide()
	if frame then frame:Hide() end
end

---The key "NPC answer n" (#183): presses the n-th button the window shows (an answer; on an offer, Talk; at the end,
---Close). Nothing when the window is closed or has no such button.
---@param n integer 1-5
---@return boolean pressed
function F:Press(n)
	if not frame or not frame:IsShown() then return false end
	local b = frame.shownButtons and frame.shownButtons[n]
	if not b or not b:IsShown() then return false end
	b:Click()
	return true
end

---@param n integer
function AzerothUnspoken_NPCAnswer(n)
	if NS.db then F:Press(n) end
end

function F:ResetPosition()
	Cfg().pos = nil
	self.placed = nil
	if frame and frame:IsShown() then self:Place(true) end
end

---------------------------------------------------------------------------
-- Costruzione
---------------------------------------------------------------------------
local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenDialogue", UIParent)
	frame:Hide()   -- #192: hidden before anything else can fail
	frame:SetSize(WIDTH, 120)
	frame:SetFrameStrata("MEDIUM")
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame:EnableMouse(true)
	frame.parts = Theme.Panel(frame, { radius = 12, fill = "bg", border = "border", shadow = true, shadowAlpha = 0.5 })
	frame.bg = frame.parts.fill
	-- the NPC's accent bar along the left edge, inside the corners (the voice of the narrator's NPC, #186)
	frame.accent = frame:CreateTexture(nil, "ARTWORK")
	frame.accent:SetPoint("TOPLEFT", 0, -12)
	frame.accent:SetPoint("BOTTOMLEFT", 0, 12)
	frame.accent:SetWidth(3)
	Theme.Fill(frame.accent, NPC_TOKEN)

	-- la fascia dell'etichetta: sempre visibile (the Badge "addon ambient dialogue"), under it a thin rule
	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT", 0, 0)
	header:SetPoint("TOPRIGHT", 0, 0)
	header:SetHeight(HEADER_H)
	header:EnableMouse(true)
	header:RegisterForDrag("LeftButton")
	local rule = header:CreateTexture(nil, "BORDER")
	rule:SetPoint("BOTTOMLEFT", header, "BOTTOMLEFT", MARGIN + 4, 0)
	rule:SetPoint("BOTTOMRIGHT", header, "BOTTOMRIGHT", -(MARGIN + 4), 0)
	rule:SetHeight(Theme.Px(1))
	Theme.Fill(rule, "border")
	header:SetScript("OnDragStart", function()
		if not Cfg().locked then frame:StartMoving() end
	end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		local left, bottom = frame:GetLeft(), frame:GetBottom()
		if IsNumber(left) and IsNumber(bottom) then
			Cfg().pos = { "BOTTOMLEFT", "BOTTOMLEFT", left, bottom }
			F.placed = { left = left, bottom = bottom, w = frame:GetWidth(), h = frame:GetHeight(), saved = true }
		end
	end)
	frame.header = header

	frame.badge = W.Badge(header, NS:L("npc_badge"), "accent")
	frame.badge:SetPoint("LEFT", header, "LEFT", MARGIN + 6, 0)
	-- #183: a 24-unit target with a word, not a small "x"
	local close = W.FlatButton(header, NS:L("npc_btn_close"), 64, BUTTON_H, function() NS.NPCAlive:Close("closed") end, "secondary")
	close:SetPoint("RIGHT", -MARGIN, 0)
	W.Tooltip(close, function() return NS:L("npc_tip_close") end)
	W.Tooltip(header, function() return NS:L("npc_badge_tip") end)
	frame.closeBtn = close

	frame.title = Theme.NewText(frame, "BodyMedium", NPC_TOKEN)
	frame.title:SetPoint("TOPLEFT", MARGIN + 6, -(HEADER_H + 6))
	frame.title:SetPoint("TOPRIGHT", -MARGIN, -(HEADER_H + 6))
	frame.title:SetJustifyH("LEFT")

	-- the line under the title, whatever the size of the text (#182)
	frame.text = Theme.NewText(frame, "Body", "text-1")
	frame.text:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -6)
	frame.text:SetPoint("TOPRIGHT", frame.title, "BOTTOMRIGHT", 0, -6)
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("TOP")
	frame.text:SetWordWrap(true)

	frame.choiceButtons = {}
	for i = 1, F.MAX_BUTTONS do
		local index = i
		local b = W.FlatButton(frame, "", WIDTH - 2 * MARGIN, BUTTON_H, function()
			local ok, why = NS.NPCAlive:Choose(index)
			if not ok and why then NS.NPCAlive:Explain("npc_refused_", why) end
		end, "secondary")
		-- ADR 0061: the heart of a flirt answer, 6 units before the centred label (hidden on a neutral answer)
		b.heart = W.Icon(b, "heart", HEART, ROMANCE_TOKEN, "OVERLAY")
		b.heart:SetPoint("RIGHT", b.label, "LEFT", -6, 0)
		b.heart:Hide()
		b.tipFn = function() return F.FlirtTip(b) end
		W.Tooltip(b, b.tipFn)
		b.auTip = nil   -- a neutral answer has no tooltip of its own (only the whole text when it is cut)
		b:Hide()
		frame.choiceButtons[i] = b
	end
	frame.openBtn = W.FlatButton(frame, "", WIDTH - 2 * MARGIN, BUTTON_H, function()
		local ok, why = NS.NPCAlive:Open()
		if not ok and why then NS.NPCAlive:Explain("npc_refused_", why) end
	end, "primary")
	frame.openBtn:Hide()
	frame.endBtn = W.FlatButton(frame, "", WIDTH - 2 * MARGIN, BUTTON_H, function() NS.NPCAlive:Close("finished") end, "secondary")
	frame.endBtn:Hide()

	-- controllo leggero ogni mezzo secondo: se una finestra di Blizzard si apre sotto la nostra, ci si sposta
	local elapsed = 0
	frame:SetScript("OnUpdate", function(_, dt)
		elapsed = elapsed + dt
		if elapsed < CHECK_EVERY then return end
		elapsed = 0
		F:Place(false)
	end)
end

function F:OnInit()
	local ok, err = pcall(Build)
	if not ok then
		-- senza la finestra non c'è dialogo: NPCAlive:Allowed risponde "no_ui" (GDD §3.8)
		frame = nil
		NS.Diagnostics:Error("dialogue", tostring(err))
		return
	end
	self:ApplySettings()
	-- #192: the text size, opacity and window scale follow the panel at once
	NS.Config:OnChange(function() F:ApplySettings() end)
end
