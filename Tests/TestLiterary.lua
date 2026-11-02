-- Tests of the literary forms in the engine and the narrator: multi-line texts (#117), the category budget and pause
-- with the `lore` category and the setting "literary forms" (#118), long private reading (#126). Owner decisions in
-- #130: D15 (rare, on by default, never in combat), D16 (never in public chat), D20 (read in the narrator).
local NS = ...
local Engine, Director, Pacing, Gateway, Narrator = NS.Engine, NS.Director, NS.Pacing, NS.Gateway, NS.Narrator
local frame = Narrator:GetFrame()

local VERSE_EN = "An old song, the kind sung at the door:\nLeave the dust upon the shelf,\nleave the ashes in the grate;\n"
	.. "let the house keep house itself;\nthose who love you know to wait."
local VERSE_IT = "Una vecchia canzone, di quelle cantate sulla porta:\nLa polvere sul piano,\nla cenere al camino:\n"
	.. "la casa si governa,\ne chi ti vuole, aspetta."

-- a pack for these tests: ordinary lines and literary pieces on one spontaneous event, a literary piece alone on a
-- manual event, a literary rule with no category (it gets `lore`), a public line with a line break
NS:RegisterEvent("lit_muse", { category = "reflection", chance = 100, cooldown = 0 })
NS:RegisterEvent("lit_only", { category = "reflection", chance = 0, cooldown = 0 })
NS:RegisterEvent("lit_pub", { category = "social", chance = 0, cooldown = 0 })
local registry, en, it = {}, {}, {}
for i = 1, 6 do
	registry["lit.plain." .. i] = { event = "lit_muse", speaker = "inner" }
	en["lit.plain." .. i] = "An ordinary thought, number " .. i .. "."
	it["lit.plain." .. i] = "Un pensiero qualunque, numero " .. i .. "."
end
for i = 1, 4 do
	registry["lit.verse." .. i] = { event = "lit_muse", speaker = "inner", category = "lore", weight = 50,
		tags = { "lore", "genre_road_song", "origin_sung" } }
	en["lit.verse." .. i] = VERSE_EN .. " (" .. i .. ")"
	it["lit.verse." .. i] = VERSE_IT .. " (" .. i .. ")"
end
registry["lit.only"] = { event = "lit_only", speaker = "inner", category = "lore", tags = { "lore", "genre_verse" } }
en["lit.only"], it["lit.only"] = VERSE_EN, VERSE_IT
registry["lit.auto"] = { event = "lit_only", speaker = "npc", tags = { "genre_saying", "origin_spoken" }, weight = 0.001 }
en["lit.auto"], it["lit.auto"] = "A saying:\nfirst line,\nsecond line.", "Un detto:\nprima riga,\nseconda riga."
registry["lit.pub"] = { event = "lit_pub", speaker = "character" }
en["lit.pub"], it["lit.pub"] = "First half,\nsecond half.", "Prima metà,\nseconda metà."
NS:RegisterPack({
	id = "littest", languages = { "enUS", "itIT" }, registry = registry, texts = { enUS = en, itIT = it },
	categories = { lit_other = { budget = 5, window = 300, cooldown = 30 } },
})

local CTX = { player = "Garrosh" }

local function Reset()
	SENT = {}
	HW = false
	P.combat, P.cinematic, P.instance = false, false, false
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.literary.frequency = "rare"
	NS.db.chat.mode, NS.db.chat.channel = "PRIVATE", "auto"
	NS.db.modules.publicChat = true
	NS.db.output.privateNarrator = true
	NS.db.output.autoPublicSay = false
	NS.db.pacing.globalCooldownSeconds = 45
	NS.db.pacing.inCombat = "show"
	NS.db.chance = {}
	NS.db.ui.narrator.duration, NS.db.ui.narrator.readingSpeed = 8, 14
	NS.db.ui.narrator.reduceMotion, NS.db.ui.narrator.fontSize = false, 14
	NS.db.ui.narrator.historySize = 1000
	Gateway.sendLog = {}
	Gateway.combatHeld = { lines = {} }
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	frame._s.mouseOver = false
	ADVANCE(1000)
	Pacing:Reset()
end

local function Rec(speaker, text, extra)
	local r = { text = text, form = "say", event = "muse", speaker = speaker }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r
end

---------------------------------------------------------------------------
-- #118: categories with their own pacing
---------------------------------------------------------------------------
T.run("#118: RegisterCategory(id, { budget, window, cooldown }) is data-driven", function()
	Reset()
	local lore = Engine.CATEGORY_DEFS.lore
	T.ok(lore ~= nil and Engine.CATEGORIES.lore, "the base data declare the category lore with its pacing")
	T.eq(lore.budget, 1, "lore: one piece")
	T.eq(Pacing:Window("lore"), 1500, "in 25 minutes")
	T.eq(Pacing:CategoryCooldown("lore", 1), 1200, "a pause of 20 minutes at intensity 50")
	T.eq(Pacing:CategoryCooldown("lore", 0.5), 600, "half at intensity 100: ten minutes")
	T.eq(Pacing:Budget("lore", 50), 1, "budget at 50")
	T.eq(Pacing:Budget("lore", 100), 2, "budget at 100")
	T.eq(Pacing:Budget("lore", 25), 1, "budget at 25")
	-- the user's frequency
	NS.db.literary.frequency = "normal"
	T.eq(Pacing:Budget("lore", 50), 2, "normal: twice the budget")
	T.eq(Pacing:CategoryCooldown("lore", 1), 600, "and half the pause")
	T.eq(Pacing:CategoryCooldown("lore", 0.5), 600, "never under ten minutes (minCooldown)")
	NS.db.literary.frequency = "rare"
	-- the other categories keep their tables
	T.eq(Pacing:Window("combat"), Pacing.WINDOW, "combat: the usual window")
	T.eq(Pacing:CategoryCooldown("combat", 1), Pacing.CATEGORY_COOLDOWN.combat, "combat: the usual pause")
	T.eq(Pacing:Budget("combat", 50), Pacing.BUDGET.combat, "combat: the usual budget")
	-- a pack declares one with `categories = { id = def }`, a function call does the same
	T.ok(Engine.CATEGORIES.lit_other and Engine.CATEGORY_DEFS.lit_other.budget == 5, "a pack's category with its pacing")
	T.eq(Pacing:Window("lit_other"), 300, "its window")
	NS:RegisterCategory("lit_call", { budget = 2, cooldown = 30 })
	T.eq(Pacing:Budget("lit_call", 50), 2, "RegisterCategory(id, def): the budget")
	T.eq(Pacing:Window("lit_call"), Pacing.WINDOW, "the window when it does not say")
	NS:RegisterCategory("lit_plain")
	T.ok(Engine.CATEGORIES.lit_plain and Engine.CATEGORY_DEFS.lit_plain == nil, "RegisterCategory(id) as before")
	Engine.CATEGORY_DEFS.lit_call = nil
end)

T.run("#118: a literary rule is in the category lore, and the validator checks it", function()
	Reset()
	T.eq(Engine.byId["lit.auto"].category, "lore", "tags genre_* and no category: lore")
	T.eq(Engine.byId["lit.verse.1"].category, "lore", "category written")
	T.eq(Engine.byId["lit.plain.1"].category, "reflection", "an ordinary rule keeps its event's category")
	local val = NS.Validator:Run({ packs = { "littest" } })
	local codes = {}
	for _, p in ipairs(val.errors) do codes[p.code .. ":" .. tostring(p.id)] = true end
	for _, p in ipairs(val.warnings) do codes[p.code .. ":" .. tostring(p.id)] = true end
	T.ok(codes["multilinePublic:lit.pub"], "a line break in a public voice: a warning")
	T.ok(not codes["tooLong:lit.verse.1"], "a verse in an inner voice is not too long")
	-- a literary tag in another category, a literary category in a public voice, a long tale, a bad pacing
	local long = ("A tale told at the fire, line after line of it.\n"):rep(11)
	NS:RegisterPack({ id = "littest_bad", languages = { "enUS" },
		registry = {
			["litbad.cat"] = { event = "lit_only", speaker = "inner", category = "reflection", tags = { "lore" } },
			["litbad.pub"] = { event = "lit_only", speaker = "narrator", form = "emote", category = "lore" },
			["litbad.tale"] = { event = "lit_only", speaker = "inner", category = "lore", tags = { "lore" } },
			["litbad.prose"] = { event = "lit_only", speaker = "inner" },
		},
		texts = { enUS = { ["litbad.cat"] = "a verse:\none\ntwo", ["litbad.pub"] = "sings:\none\ntwo",
			["litbad.tale"] = long, ["litbad.prose"] = long } },
		categories = { litbad = { budget = 0, cooldown = -1 } } })
	T.ok(#long > 400 and #long <= 600, "a tale of " .. #long .. " bytes")
	val = NS.Validator:Run({ packs = { "littest_bad" } })
	codes = {}
	for _, p in ipairs(val.errors) do codes["E:" .. p.code .. ":" .. tostring(p.id)] = true end
	for _, p in ipairs(val.warnings) do codes["W:" .. p.code .. ":" .. tostring(p.id)] = true end
	T.ok(codes["E:literaryCategory:litbad.cat"], "a literary tag in another category: an error")
	T.ok(codes["E:literaryPublic:litbad.pub"], "the category lore in a public voice: an error (D16)")
	T.ok(not codes["W:tooLong:litbad.tale"], "a tale up to 600 bytes in a private voice is fine (D20)")
	T.ok(codes["W:tooLong:litbad.prose"], "the same length outside the literary category: too long")
	val = NS.Validator:Run()
	local bad = false
	for _, p in ipairs(val.errors) do if p.code == "badCategory" and p.id == "category:litbad" then bad = true end end
	T.ok(bad, "a category's pacing out of range: an error")
	Engine.CATEGORY_DEFS.litbad = nil
	NS.db.disabledPacks.littest_bad = true
end)

---------------------------------------------------------------------------
-- #117: line breaks kept, never in chat
---------------------------------------------------------------------------
T.run("#117: the selection keeps the line breaks and normalises the other spaces", function()
	Reset()
	T.eq(Engine.NormalizeSpace("  a  b\t c  "), "a b c", "one line: as before")
	T.eq(Engine.NormalizeSpace(" one \n  two \n\n\n\n three \n"), "one\ntwo\n\nthree", "verses, one empty line at most")
	T.eq(Engine.NormalizeSpace("one\r\ntwo\rthree"), "one\ntwo\nthree", "CR LF and CR become line breaks")
	NS.db.locale = "en"
	local rec = Engine:PickEntry("lit_only", NS:BuildContext(), "say")
	T.ok(rec and rec.id == "lit.only", "the piece is picked")
	T.eq(rec and rec.text, VERSE_EN, "with its line breaks")
	T.eq(rec and rec.category, "lore", "and its category in the record")
	NS.db.locale = "it"
end)

T.run("#117, D16: nothing literary is offered to chat, and no line break reaches it", function()
	Reset()
	local lit = Rec("character", VERSE_EN, { category = "lore" })
	T.eq(Gateway:PrivateReason(lit), "literary", "the category lore is private whatever the voice")
	T.eq(Gateway:PrivateReason(Rec("character", "x", { id = "lit.auto" })), "literary", "read from the rule too")
	T.eq(Gateway:PrivateReason(Rec("character", "x\ny")), nil, "an ordinary public line with a break may go to chat")
	for _, mode in ipairs({ "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED" }) do
		Reset()
		NS.db.chat.mode = mode
		NS.db.output.autoPublicSay = true
		local r = Rec("character", VERSE_EN, { category = "lore", form = "emote" })
		Gateway:Propose(r, CTX, { auto = true })
		T.ok(Gateway:GetPending() == nil and r.proposal == nil, mode .. ": no proposal for a literary line")
		T.eq(#SENT, 0, mode .. ": nothing sent")
		T.ok(Narrator.current == r and r.display:find("\n", 1, true), mode .. ": in the narrator, with its line breaks")
	end
	-- the chat is always one line
	Reset()
	T.eq(Gateway:TextFor("say", "one\ntwo \n three", "SAY"), "one / two / three", "TextFor: \" / \" for a break")
	T.eq(Gateway:TextFor("emote", "sings:\none\ntwo", "SAY", "Garrosh"), "Garrosh sings: / one / two", "and for an emote")
	NS.db.chat.mode = "CONFIRM_TO_SEND"
	Gateway:Propose(Rec("character", "First half,\nsecond half."), CTX, {})
	local p = Gateway:GetPending()
	T.ok(p ~= nil and not p.display:find("\n", 1, true), "the proposal shows what chat will get, on one line")
	HW = true
	Gateway:PlayerAction(function() Gateway:SendPending() end)
	HW = false
	T.ok(T.sentContains("SAY: First half, / second half."), "sent as one line: " .. tostring(SENT[1]))
	for _, s in ipairs(SENT) do T.ok(not s:find("[\r\n]"), "no line break in a message") end
	-- whoever calls Send, and whatever the editor gets
	SENT = {}
	ADVANCE(10)   -- past the flood pause
	HW = true
	Gateway:PlayerAction(function() Gateway:Send("left\nright", "SAY") end)
	HW = false
	T.ok(T.sentContains("SAY: left / right"), "Send makes one line")
	Gateway:Propose(Rec("character", "One."), CTX, {})
	Gateway:SetPendingText("typed\nin two")
	T.eq(Gateway:GetPending().edited, "typed / in two", "the editor's text is one line")
	Gateway:Discard()
	-- a spontaneous public line with a break, through the whole path
	Reset()
	NS.db.chat.mode = "CONFIRM_TO_SEND"
	NS.db.locale = "en"
	T.ok(Gateway:Narrate("lit_pub", NS:BuildContext(), { form = "say" }), "the public line is shown")
	T.eq(Gateway:GetPending() and Gateway:GetPending().text, "First half,\nsecond half.", "the proposal keeps the text")
	T.eq(Gateway:GetPending() and Gateway:GetPending().display, "«First half, / second half.»", "and shows one line")
	NS.db.locale = "it"
end)

---------------------------------------------------------------------------
-- #118: never in combat, the setting, the explicit pieces
---------------------------------------------------------------------------
T.run("#118, D15: never in combat; never means never; an explicit piece starts the pause", function()
	Reset()
	local ctx = NS:BuildContext()
	T.ok(Engine:PickEntry("lit_only", ctx, "say") ~= nil, "rare: a piece asked for comes")
	P.combat = true
	ctx = NS:BuildContext()
	T.ok(ctx.combat, "in combat")
	T.eq(Engine:PickEntry("lit_only", ctx, "say"), nil, "in combat: no literary piece, even asked for")
	P.combat = false
	NS.db.literary.frequency = "never"
	T.eq(Engine:PickEntry("lit_only", NS:BuildContext(), "say"), nil, "never: no literary piece at all")
	local closed = Pacing:Closed(GetTime(), 1, 50, NS:BuildContext())
	T.ok(closed and closed.lore, "never: the category is closed")
	NS.db.literary.frequency = "rare"
	T.eq(Pacing:Closed(GetTime(), 1, 50, NS:BuildContext()), nil, "rare: open at the start of a session")
	-- asked for: the category's pause starts, its budget does not move
	T.ok(NS:Trigger("lit_only"), "/au event lit_only")
	local now = GetTime()
	T.eq(Pacing.byCategory.lore, now, "the pause of lore starts")
	T.eq(Pacing:Spent("lore", now), 0, "the budget is not spent by a request")
	closed = Pacing:Closed(now, 1, 50, NS:BuildContext())
	T.ok(closed and closed.lore, "a spontaneous piece waits")
	ADVANCE(1200)
	T.eq(Pacing:Closed(GetTime(), 1, 50, NS:BuildContext()), nil, "and comes back after 20 minutes")
end)

-- A session: `lit_muse` offered every minute with chance 100. Returns the times of the literary pieces and the number
-- of ordinary lines.
local function Session(minutes, intensity, frequency, combat)
	Reset()
	math.randomseed(7)
	NS.db.intensity = intensity
	NS.db.literary.frequency = frequency
	NS.db.chance.lit_muse = 100
	P.combat = combat or false
	local propose, lore, plain = Gateway.Propose, {}, 0
	Gateway.Propose = function(self, rec, ctx, opts)
		local shown = propose(self, rec, ctx, opts)
		if shown and rec.event == "lit_muse" then
			if rec.category == "lore" then table.insert(lore, GetTime()) else plain = plain + 1 end
		end
		return shown
	end
	for _ = 1, minutes do
		Director:Offer("lit_muse")
		ADVANCE(60)
	end
	Gateway.Propose = propose
	P.combat = false
	return lore, plain
end

local function MinGap(times)
	local gap = math.huge
	for i = 2, #times do gap = math.min(gap, times[i] - times[i - 1]) end
	return gap
end

T.run("#118: pacing simulation of four hours (one piece every 20-30 minutes, never two within ten)", function()
	local lore, plain = Session(240, 50, "rare")
	T.ok(#lore >= 8 and #lore <= 10, "intensity 50, rare: 8-10 pieces in 4 hours (" .. #lore .. ")")
	T.ok(MinGap(lore) >= 1200, "at least 20 minutes between two (" .. MinGap(lore) .. " s)")
	local window = 0
	for i = 1, #lore do
		local n = 0
		for j = i, #lore do if lore[j] - lore[i] < 1500 then n = n + 1 end end
		window = math.max(window, n)
	end
	T.eq(window, 1, "never two in 25 minutes")
	T.ok(plain > #lore * 3, "the ordinary lines still speak (" .. plain .. ")")
	lore = Session(240, 100, "rare")
	T.ok(MinGap(lore) >= 600, "intensity 100: never two within ten minutes (" .. MinGap(lore) .. " s, " .. #lore .. ")")
	local normal = Session(240, 50, "normal")
	T.ok(#normal >= 14 and MinGap(normal) >= 600,
		"normal: about twice as many, never two within ten minutes (" .. #normal .. ", " .. MinGap(normal) .. " s)")
	lore = Session(240, 100, "normal")
	T.ok(MinGap(lore) >= 600, "intensity 100, normal: still ten minutes (" .. MinGap(lore) .. " s)")
	lore, plain = Session(120, 50, "never")
	T.eq(#lore, 0, "never: none")
	T.ok(plain > 0, "never: the ordinary lines speak")
	lore, plain = Session(120, 50, "rare", true)
	T.eq(#lore, 0, "in combat: none (" .. plain .. " ordinary lines)")
	-- the Director's log tells why a candidate fell silent; the pieces are left out, not refused
	Reset()
	T.eq(Director:Evaluate("lit_muse").allow, true, "the event itself is not refused by the literary pause")
end)

---------------------------------------------------------------------------
-- #126: long private reading
---------------------------------------------------------------------------
T.run("#126, D20: verses appear one at a time, the box is as tall as the whole text", function()
	Reset()
	local r = Rec("inner", VERSE_EN)
	Gateway:Propose(r, CTX, {})
	local lines = Narrator.Lines(VERSE_EN)
	T.eq(#lines, 5, "five lines")
	T.eq(frame.text:GetText(), lines[1], "the first line at once")
	local _, at, total = Narrator:RevealTimes(VERSE_EN)
	T.ok(at[1] == 0 and at[2] > 0 and at[5] > at[4], "each next line after the one before")
	T.ok(math.abs(Narrator:ReadingTime(VERSE_EN) - (8 + total)) < 1e-9, "reading time: duration and every line")
	local fullH = 14 * 5
	T.ok(frame:GetHeight() >= frame.header:GetHeight() + fullH, "the box has room for the whole text from the start")
	local h0 = frame:GetHeight()
	UPDATE(at[2] + 0.01)
	T.eq(frame.text:GetText(), lines[1] .. "\n" .. lines[2], "then the second")
	T.eq(frame:GetHeight(), h0, "the box does not jump")
	UPDATE(at[5])
	T.eq(frame.text:GetText(), VERSE_EN, "then all of them")
	T.ok(frame:IsShown(), "still on screen to be read")
	UPDATE(Narrator:ReadingTime(VERSE_EN))
	T.ok(not frame:IsShown(), "gone after its reading time")
	-- reduce motion: all at once, the same time
	Reset()
	NS.db.ui.narrator.reduceMotion = true
	Gateway:Propose(Rec("inner", VERSE_EN), CTX, {})
	T.eq(frame.text:GetText(), VERSE_EN, "reduce motion: the whole text at once")
	-- one line: as before
	Reset()
	Gateway:Propose(Rec("inner", "One line only."), CTX, {})
	T.eq(frame.text:GetText(), "One line only.", "one line: as before")
	T.eq(Narrator:ReadingTime("One line only."), 8 + 14 / 14, "and its reading time")
	T.ok(not frame.scroll:IsMouseWheelEnabled(), "a short text does not take the mouse wheel")
end)

T.run("#126: a long tale scrolls inside a box of at most twelve lines", function()
	Reset()
	local verses = {}
	for i = 1, 20 do verses[i] = "Line " .. i .. " of a tale told by the fire, slow and plain." end
	local tale = table.concat(verses, "\n")
	T.ok(#tale <= 1300, "a long text")
	Gateway:Propose(Rec("inner", tale), CTX, {})
	local max = Narrator:MaxTextHeight()
	T.eq(max, 12 * math.ceil(14 * 1.25), "twelve lines of the text size")
	T.ok(frame:GetHeight() <= frame.header:GetHeight() + 2 + max + 12, "the box stops at its maximum height")
	T.ok(frame.scroll:IsMouseWheelEnabled(), "the mouse wheel scrolls it")
	T.ok(not frame.scroll:IsMouseEnabled(), "but no click is taken")
	T.eq(frame.scroll:GetVerticalScroll(), 0, "it starts at the top")
	-- the box follows the verses as they come
	local _, at = Narrator:RevealTimes(tale)
	UPDATE(at[20] + 0.01)
	T.eq(frame.text:GetText(), tale, "every line by now")
	T.eq(frame.scroll:GetVerticalScroll(), Narrator.scrollMax, "the box followed down to the last line")
	T.ok(Narrator.scrollMax > 0, "there is more than fits")
	-- the player scrolls up: the box stays there
	T.ok(Narrator:Scroll(1), "wheel up")
	local up = frame.scroll:GetVerticalScroll()
	T.ok(up < Narrator.scrollMax, "it moved up")
	frame.scroll:GetScript("OnMouseWheel")(frame.scroll, 1)
	T.ok(frame.scroll:GetVerticalScroll() < up, "through the frame's own script too")
	T.ok(Narrator:Scroll(10) and frame.scroll:GetVerticalScroll() == 0, "never above the top")
	T.ok(Narrator:Scroll(-100) and frame.scroll:GetVerticalScroll() == Narrator.scrollMax, "never past the end")
	-- the next line starts at the top again
	Reset()
	Gateway:Propose(Rec("inner", "Short."), CTX, {})
	T.eq(frame.scroll:GetVerticalScroll(), 0, "a new line starts at the top")
	T.ok(not Narrator:Scroll(-1), "nothing to scroll")
end)

T.run("#117: the history keeps the line breaks", function()
	Reset()
	Gateway:Propose(Rec("inner", VERSE_EN), CTX, {})
	T.eq(Narrator.history[#Narrator.history].text, VERSE_EN, "the entry keeps the text as it is")
	Narrator:ToggleHistory()
	local msgs = Narrator.historyFrame.messages._s.messages or {}
	T.eq(#msgs, 5, "one message per line")
	T.ok(msgs[1]:find("An old song, the kind sung at the door:", 1, true), "the first with the time and the voice")
	T.ok(msgs[2]:find("    Leave the dust upon the shelf,", 1, true), "the next ones indented")
	Narrator:ToggleHistory()
	-- a stanza break is kept as an empty line
	Reset()
	Gateway:Propose(Rec("inner", "One:\nfirst\n\nsecond"), CTX, {})
	Narrator:ToggleHistory()
	msgs = Narrator.historyFrame.messages._s.messages or {}
	T.eq(#msgs, 4, "the empty line between two stanzas is kept")
	Narrator:ToggleHistory()
end)

---------------------------------------------------------------------------
-- #118: the setting
---------------------------------------------------------------------------
T.run("#118: the setting \"Literary forms\" in the panel, the command and the saved data", function()
	Reset()
	T.eq(NS.Config.defaults.literary.frequency, "rare", "rare by default (D15)")
	local row = NS.SettingsFrame:Row("opt_literary")
	T.ok(row ~= nil, "a row in the panel")
	NS.SettingsFrame.panel:Refresh()
	T.eq(row.label:GetText(), "Forme letterarie", "Italian label")
	T.eq(row.button:GetText(), "rare", "the value")
	row.button:Click()
	T.eq(NS.db.literary.frequency, "normal", "a click: normal")
	T.eq(row.button:GetText(), "normali", "in Italian")
	row.button:Click()
	T.eq(NS.db.literary.frequency, "never", "never")
	T.eq(row.button:GetText(), "mai", "in Italian")
	row.button:Click()
	T.eq(NS.db.literary.frequency, "rare", "and rare again")
	NS.db.locale = "en"
	NS.SettingsFrame.panel:Refresh()
	T.eq(row.label:GetText(), "Literary forms", "English label")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("literary never")
	T.eq(NS.db.literary.frequency, "never", "/au literary never")
	T.ok(T.sentContains("literary forms: never"), "said in the chat frame")
	SlashCmdList.AZEROTHUNSPOKEN("literary sometimes")
	T.eq(NS.db.literary.frequency, "never", "an unknown value changes nothing")
	T.ok(T.sentContains("never, rare, normal"), "and the values are listed")
	SlashCmdList.AZEROTHUNSPOKEN("literary normal")
	T.eq(NS.db.literary.frequency, "normal", "/au literary normal")
	NS.db.locale = "it"
	-- a saved value that is not one of the three goes back to the default
	local s = { literary = { frequency = "often" } }
	NS.Config:Validate(s, { literary = { frequency = "rare" } })
	T.eq(s.literary.frequency, "rare", "a wrong saved value: rare")
	NS.db.literary.frequency = "rare"
end)
