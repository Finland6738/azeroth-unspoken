-- Azeroth Unspoken: the romance popup (ADR 0061, docs/specs/romance.md point 11.2; step R2).
-- The big moments of active romance (a declaration, a date, the vow) are told in a box of their own, built like the
-- narrator box: a translucent Panel (never under the narrator's floor), the 3-unit accent bar in the romance voice, a
-- header with the heart before "Romance" and the NPC's name, a tone chip and a close box; under it the badge "addon
-- ambient dialogue"; the scene in the narrator's face; a date's options stacked as romance buttons with their tier chip;
-- the choices at the bottom, from the right (the first primary, "Not yet" a text button). After the choice the same box
-- shows the outcome's scene and a single Close; a welcomed scene of tier 2 or more fades to black (the text, then
-- "Later."), at once with Animations off.
-- It never opens by itself: only a moment answer of the dialogue (NPCAlive) or /au romance with the NPC targeted. Esc,
-- the close box, a fight, death and a loading screen close it as "Not now", at no cost. Narration only: nothing goes to
-- chat, nothing changes in the game. Not tried in the game client.
local ADDON, NS = ...
local W, Theme, Motion, Compat = NS.Widgets, NS.Theme, NS.Motion, NS.Compat

---@class AURomanceFrame
local RF = NS:RegisterModule("romanceframe")
NS.RomanceFrame = RF

RF.NAME = "AzerothUnspokenRomance"
RF.WIDTH = 440
RF.PAD = 16
RF.HEADER_H = 36
RF.BUTTON_H = 24
RF.FADE = 1.5          -- seconds of the fade to black
RF.FADE_AFTER = 4      -- seconds the welcomed scene stays before it fades
RF.DEFAULT_POINT = { "CENTER", "CENTER", 0, 120 }
RF.MAX_OPTIONS = 4

local TOKEN = Theme.VOICE_TOKENS.romance
local TONE_WORDS = { "courteous", "intimate", "explicit" }
-- the choices of each moment: the primary one (none for a date: its options are the choices) and the one that waits
local CHOICES = {
	declaration = { go = "rom_btn_declare", wait = "rom_btn_not_yet" },
	vow = { go = "rom_btn_vow", wait = "rom_btn_not_yet" },
	date = { wait = "rom_btn_not_tonight" },
}

local frame
RF.state = nil         -- { id, npcID, name, moment, phase, text, options, tier, faded }
RF.seq = 0

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

local function Positions()
	local c = NS.cdb
	if type(c) ~= "table" then return nil end
	if type(c.windows) ~= "table" then c.windows = {} end
	return c.windows
end

local function Alpha()
	local cfg = NS.db and NS.db.ui and NS.db.ui.narrator or {}
	local floor = NS.Narrator and NS.Narrator:Floor() or 0.6
	return math.max(floor, tonumber(cfg.alpha) or 0.85)
end

local function Ink(token)
	return NS.Narrator and NS.Narrator:Ink(token, Alpha()) or "text-1"
end

-- the NPC's words inside a scene, in quotes ("..." in English, «...» in Italian), take the NPC's voice (spec 11.2); the
-- rest stays text-1. The colour is written inline, so a change of theme draws the popup again (OnInit).
RF.QUOTES = { { '"', '"' }, { "\194\171", "\194\187" }, { "\226\128\156", "\226\128\157" } }

---The text of a scene with the NPC's quoted words coloured in the voice of the NPC (its contrast-safe ink).
---@param text string
---@return string
function RF.Voiced(text)
	if type(text) ~= "string" or text == "" then return text or "" end
	local r, g, b = Theme.Color(Ink(Theme.VOICE_TOKENS.npc))
	local open = ("|cff%02x%02x%02x"):format(math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5))
	for _, q in ipairs(RF.QUOTES) do
		text = text:gsub(q[1] .. "(.-)" .. q[2], function(words) return open .. q[1] .. words .. q[2] .. "|r" end)
	end
	return text
end

local function Context(npcID)
	return NS:BuildContext({ relationSubject = { kind = "npc", id = npcID } })
end

-- the scene of a moment's phase: a line of the content (Romance:Scene), or the plain fallback of the interface
local function SceneText(npcID, name, moment, phase, ctx, date)
	local scene = NS.Romance:Scene(npcID, moment, phase, ctx, date)
	if scene then return scene.text, scene.tier end
	return NS:L("rom_scene_" .. moment .. "_" .. phase, name), date and date.tier or 1
end

---------------------------------------------------------------------------
-- Drawing
---------------------------------------------------------------------------
local function HideAll()
	for _, b in ipairs(frame.options) do b:Hide() end
	frame.goBtn:Hide()
	frame.waitBtn:Hide()
	frame.doneBtn:Hide()
	frame.later:Hide()
end

-- lays the box out from its top: header, badge, scene, options, rule, bar
local function Layout()
	local p = RF.PAD
	local y = RF.HEADER_H + 4
	frame.badge:ClearAllPoints()
	frame.badge:SetPoint("TOPLEFT", frame, "TOPLEFT", p, -y)
	y = y + 22 + 8
	frame.text:ClearAllPoints()
	frame.text:SetPoint("TOPLEFT", frame, "TOPLEFT", p, -y)
	frame.text:SetWidth(RF.WIDTH - 2 * p)
	local textH = math.ceil(frame.text:GetStringHeight() or 16)
	if textH <= 0 then textH = 16 * math.ceil(#(frame.text:GetText() or "") * 7 / (RF.WIDTH - 2 * p)) end
	frame.later:ClearAllPoints()
	frame.later:SetPoint("TOPLEFT", frame, "TOPLEFT", p, -y)
	y = y + textH + 12
	for _, b in ipairs(frame.options) do
		if b:IsShown() then
			b:ClearAllPoints()
			b:SetPoint("TOPLEFT", frame, "TOPLEFT", p, -y)
			b:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -p, -y)
			y = y + RF.BUTTON_H + 6
		end
	end
	frame.rule:ClearAllPoints()
	frame.rule:SetPoint("TOPLEFT", frame, "TOPLEFT", p, -y)
	frame.rule:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -p, -y)
	y = y + 8
	-- the bar, from the right: the first choice is the rightmost
	local x = -p
	for _, b in ipairs({ frame.doneBtn, frame.goBtn, frame.waitBtn }) do
		if b:IsShown() then
			b:ClearAllPoints()
			b:SetPoint("TOPRIGHT", frame, "TOPRIGHT", x, -y)
			x = x - b:GetWidth() - 8
		end
	end
	frame:SetHeight(y + RF.BUTTON_H + p)
end

---Draws the state of the popup.
function RF:Render()
	if not frame then return end
	local s = self.state
	if not s then frame:Hide(); return end
	HideAll()
	local alpha = Alpha()
	Theme.Tint(frame.bg, "bg", alpha)
	Theme.Text(frame.label, Ink(TOKEN))
	frame.label:SetText(NS:L("rom_label"))
	frame.name:SetText(" · " .. (s.name or ""))
	frame.badge:SetBadge(NS:L("npc_badge"), "accent")
	local tier = s.tier or NS.Romance:AllowedTier()
	frame.chip:SetBadge(NS:L("rom_tone_" .. TONE_WORDS[math.max(1, math.min(3, tier))]), "neutral")
	frame.text:SetText(RF.Voiced(s.text or ""))
	frame.text:SetAlpha(1)
	frame.text:SetShown(not s.faded)
	frame.later:SetText(NS:L("rom_later"))
	frame.later:SetShown(s.faded == true)
	local c = CHOICES[s.moment] or {}
	if s.phase == "open" then
		for i, d in ipairs(s.options or {}) do
			local b = frame.options[i]
			if b then
				b.dateId = d.id
				b:SetText(NS:L("rom_date_" .. d.id))
				b.chip:SetBadge(NS:L("rom_tone_" .. TONE_WORDS[d.tier]), "neutral")
				b:Show()
			end
		end
		if c.go then
			frame.goBtn:SetText(NS:L(c.go))
			W.FitButton(frame.goBtn, 120, 240)
			frame.goBtn:Show()
		end
		frame.waitBtn:SetText(NS:L(c.wait or "rom_btn_not_yet"))
		W.FitButton(frame.waitBtn, 80, 200)
		frame.waitBtn:Show()
	else
		frame.doneBtn:SetText(NS:L("rom_btn_close"))
		W.FitButton(frame.doneBtn, 90, 200)
		frame.doneBtn:Show()
	end
	W.ApplyScale(frame)
	Layout()
end

---What the popup shows, for the tests and /au debug.
---@return table view { shown, npcID, moment, phase, text, faded, options = { ids }, buttons = { texts, right to left } }
function RF:View()
	local s = self.state
	if not (frame and s and frame:IsShown()) then return { shown = false } end
	local options, buttons = {}, {}
	for _, b in ipairs(frame.options) do if b:IsShown() then table.insert(options, b.dateId) end end
	for _, b in ipairs({ frame.doneBtn, frame.goBtn, frame.waitBtn }) do
		if b:IsShown() then table.insert(buttons, b:GetText()) end
	end
	return { shown = true, npcID = s.npcID, moment = s.moment, phase = s.phase, text = s.text, faded = s.faded == true,
		options = options, buttons = buttons, tone = frame.chip.label and frame.chip.label:GetText() or nil }
end

---------------------------------------------------------------------------
-- The moments
---------------------------------------------------------------------------
---Opens the popup on a moment that is due with this NPC (never by itself: a click or a command calls this).
---@param npcID integer
---@param moment string declaration | date | vow
---@return boolean ok
---@return string? why combat | closed | none | no_ui
function RF:Open(npcID, moment)
	if not frame then return false, "no_ui" end
	if Compat.SafeCall("UnitAffectingCombat", "player") == true or Compat.SafeCall("InCombatLockdown") == true then
		return false, "combat"
	end
	local Ro = NS.Romance
	if not Ro:CanOpen(npcID, moment) then return false, "closed" end
	local ctx = Context(npcID)
	local name = NS.Relationships:DisplayName("npc", npcID)
	local options
	if moment == "date" then
		options = Ro:DateOptions(npcID, ctx)
		if #options == 0 then return false, "none" end
		while #options > self.MAX_OPTIONS do table.remove(options) end
	end
	local text = SceneText(npcID, name, moment, "open", ctx)
	self.seq = self.seq + 1
	self.state = { id = self.seq, npcID = npcID, name = name, moment = moment, phase = "open", text = text, options = options }
	local pos = Positions()
	W.RestorePosition(frame, pos and pos[self.NAME], self.DEFAULT_POINT)
	self:Render()
	local was = frame:IsShown()
	frame:Show()
	if not was then Motion.PopIn(frame, Motion.FAST) end
	return true
end

---The player's choice: the moment's primary answer, or a date's option (`dateId`). Answers once; then the outcome's
---scene and a single Close. A welcomed scene of tier 2 or more fades to black.
---@param dateId? string
---@return string? outcome
function RF:Choose(dateId)
	local s = self.state
	if not s or s.phase ~= "open" then return nil end
	local Ro = NS.Romance
	local ctx = Context(s.npcID)
	local date
	if s.moment == "date" then
		for _, d in ipairs(s.options or {}) do if d.id == dateId then date = d end end
		if not date then return nil end
	end
	local outcome = Ro:Decide(s.npcID, s.moment, ctx, date and date.id or nil)
	if not outcome then
		NS:Print(NS:L("rom_moment_gone", s.name or ""))
		self:Close("gone")
		return nil
	end
	local text, tier = SceneText(s.npcID, s.name, s.moment, outcome, Context(s.npcID), date)
	s.phase, s.text, s.tier = outcome, text, tier
	self:Render()
	if outcome == "welcome" and (tier or 1) >= 2 then self:FadeToBlack() end
	return outcome
end

---The fade to black of an intimate scene (spec 9.3): the text stays, then fades out over RF.FADE seconds to the single
---word "Later."; with Animations off the last view shows at once.
function RF:FadeToBlack()
	local s = self.state
	if not s then return end
	local id = s.id
	local function Done()
		local cur = RF.state
		if not cur or cur.id ~= id then return end
		cur.faded = true
		RF:Render()
	end
	if not Motion.On() then Done(); return end
	Compat.After(self.FADE_AFTER, function()
		local cur = RF.state
		if not cur or cur.id ~= id or not frame:IsShown() then return end
		Motion.Fade(frame.text, 0, RF.FADE, Done)
	end)
end

---Closes the popup. Before a choice this is "Not now": nothing is decided, nothing costs.
---@param reason? string later | close | combat | death | world | escape | gone
---@return boolean closed
function RF:Close(reason)
	if not self.state then
		if frame then frame:Hide() end
		return false
	end
	self.state, self.last = nil, reason or "later"
	if frame and frame:IsShown() then
		frame.closing = true
		Motion.FadeOut(frame, 0.1)
		frame.closing = nil
	end
	return true
end

---@return boolean ready the popup was built
function RF:IsReady() return frame ~= nil end

---@return boolean open
function RF:IsOpen() return self.state ~= nil and frame ~= nil and frame:IsShown() end

---@return table? frame
function RF:GetFrame() return frame end

---------------------------------------------------------------------------
-- Building
---------------------------------------------------------------------------
local function Build()
	frame = CreateFrame("Frame", RF.NAME, UIParent)
	frame:Hide()   -- #192: hidden before anything else can fail
	frame:SetSize(RF.WIDTH, 200)
	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame:EnableMouse(true)
	frame.parts = Theme.Panel(frame, { radius = 12, fill = "bg", border = "border", shadow = true, shadowAlpha = 0.5 })
	frame.bg = frame.parts.fill
	-- the romance voice's accent bar along the left edge, inside the corners
	frame.accent = frame:CreateTexture(nil, "ARTWORK")
	frame.accent:SetPoint("TOPLEFT", 0, -12)
	frame.accent:SetPoint("BOTTOMLEFT", 0, 12)
	frame.accent:SetWidth(3)
	Theme.Fill(frame.accent, TOKEN)

	local header = CreateFrame("Frame", nil, frame)
	header:SetPoint("TOPLEFT", 0, 0)
	header:SetPoint("TOPRIGHT", 0, 0)
	header:SetHeight(RF.HEADER_H)
	header:EnableMouse(true)
	header:RegisterForDrag("LeftButton")
	header:SetScript("OnDragStart", function() frame:StartMoving() end)
	header:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		local pos = Positions()
		if pos then pos[RF.NAME] = W.SavePosition(frame) end
	end)
	frame.header = header
	frame.heart = W.Icon(header, "heart", 16, TOKEN, "ARTWORK")
	frame.heart:SetPoint("LEFT", header, "LEFT", 14, 0)
	frame.label = Theme.NewText(header, "BodyMedium", TOKEN)
	frame.label:SetPoint("LEFT", frame.heart, "RIGHT", 6, 0)
	frame.name = Theme.NewText(header, "BodyMedium", "text-2")
	frame.name:SetPoint("LEFT", frame.label, "RIGHT", 0, 0)
	-- the close box (Not now), then the tone chip to its left
	local close = CreateFrame("Button", nil, header)
	close:SetSize(24, 24)
	close:SetPoint("RIGHT", header, "RIGHT", -10, 0)
	close.cross = W.Icon(close, "cross", 14, "text-2", "ARTWORK")
	close.cross:SetPoint("CENTER")
	close:SetScript("OnClick", function() RF:Close("close") end)
	W.Tooltip(close, function() return NS:L("rom_tip_close") end)
	frame.closeBox = close
	frame.chip = W.Badge(header, "", "neutral")
	frame.chip:SetPoint("RIGHT", close, "LEFT", -8, 0)

	frame.badge = W.Badge(frame, NS:L("npc_badge"), "accent")
	W.Tooltip(frame.badge, function() return NS:L("npc_badge_tip") end)

	frame.text = Theme.NewText(frame, "Body", "text-1")
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("TOP")
	frame.text:SetWordWrap(true)
	frame.later = Theme.NewText(frame, "Body", "text-2")
	frame.later:SetJustifyH("LEFT")
	frame.later:Hide()

	frame.options = {}
	for i = 1, RF.MAX_OPTIONS do
		local b = W.FlatButton(frame, "", RF.WIDTH - 2 * RF.PAD, RF.BUTTON_H, function(self) RF:Choose(self.dateId) end, "romance")
		b.heart = W.Icon(b, "heart", 14, TOKEN, "OVERLAY")
		b.heart:SetPoint("RIGHT", b.label, "LEFT", -6, 0)
		b.chip = W.Badge(b, "", "neutral")
		b.chip:SetPoint("RIGHT", b, "RIGHT", -6, 0)
		b:Hide()
		frame.options[i] = b
	end
	frame.rule = frame:CreateTexture(nil, "BORDER")
	frame.rule:SetHeight(Theme.Px(1))
	Theme.Fill(frame.rule, "border-subtle")
	frame.goBtn = W.FlatButton(frame, "", 140, RF.BUTTON_H, function() RF:Choose() end, "primary")
	frame.waitBtn = W.FlatButton(frame, "", 100, RF.BUTTON_H, function() RF:Close("later") end, "text")
	frame.doneBtn = W.FlatButton(frame, "", 100, RF.BUTTON_H, function() RF:Close("close") end, "primary")
	for _, b in ipairs({ frame.goBtn, frame.waitBtn, frame.doneBtn }) do b:Hide() end

	-- Esc hides it (UISpecialFrames): before a choice, that is "Not now"
	W.CloseOnEscape(RF.NAME)
	frame:SetScript("OnHide", function()
		if frame.closing then return end
		if RF.state then RF.state, RF.last = nil, "escape" end
	end)
end

---------------------------------------------------------------------------
-- Events: it closes on a fight, death and a loading screen
---------------------------------------------------------------------------
local handlers = {}
function handlers.COMBAT_START() RF:Close("combat") end
function handlers.PLAYER_DEATH() RF:Close("death") end
function handlers.WORLD_ENTER() RF:Close("world") end
for eventType, fn in pairs(handlers) do NS.EventBus:Subscribe(eventType, "romanceframe", fn) end

function RF:OnInit()
	local ok, err = pcall(Build)
	if not ok then
		frame = nil
		NS.Diagnostics:Error("romanceframe", tostring(err))
		return
	end
	self.state = nil
	NS.Config:OnChange(function() if RF.state then RF:Render() end end)
	Theme.OnChange(function() if RF.state then RF:Render() end end)
end
