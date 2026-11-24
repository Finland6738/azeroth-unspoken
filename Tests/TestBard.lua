-- Tests of the Bard (ADR 0060): which pieces are the Bard's, the Bard's look in the narrator box, the theme tokens, the
-- share (only on a click, the pacing, the limits, never automatic), the settings and their defaults, the commands, the
-- songbook's Share row and the locale keys.
local NS = ...
local Bard, Gateway, Narrator, Engine, Config, Theme = NS.Bard, NS.Gateway, NS.Narrator, NS.Engine, NS.Config, NS.Theme
local frame = Narrator:GetFrame()

local function Lines(...) return table.concat({ ... }, "\n") end
local PIECE = Lines("A verse I cannot place comes back with the path:", "Nothing waited while I traveled;",
	"grass grew over what I knew.", "", "Still the hill remembered walking,", "and my feet remembered too.")
local PIECE_IT = Lines("Un verso che non so collocare torna col sentiero:", "Nulla ha atteso mentre andavo;",
	"l'erba ha coperto ciò che so.", "", "Ma il colle ricordava il passo,", "e il mio piede lo ricordò.")

-- a pack of its own, like the songbook's tests (the pack AzerothUnspoken_Versi is not loaded by the Lua tests): the five
-- kinds of piece the Bard tells apart
local VERSE, SONG, TALE, STONE, INN, PLAIN = "bt.verse", "bt.song", "bt.tale", "bt.stone", "bt.inn", "bt.plain"
local function Lit(extra)
	local r = { event = "bt_muse", speaker = "inner", styles = { "intimate" }, tags = { "lore" }, genre = "verse",
		purpose = "remember", origin = "common", conditions = { combat = false } }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r
end
NS:RegisterEvent("bt_muse", { category = "reflection", chance = 0, cooldown = 0 })
NS:RegisterPack({ id = "bardtest", languages = { "enUS", "itIT" },
	registry = {
		[VERSE] = Lit(),
		[SONG] = Lit({ genre = "song", purpose = "amuse" }),
		[TALE] = Lit({ genre = "tale", purpose = "remember" }),
		[STONE] = Lit({ styles = { "ancient" }, genre = "epigraph" }),
		[INN] = Lit({ speaker = "npc", styles = { "everyday" }, genre = "song", purpose = "amuse" }),
		[PLAIN] = { event = "bt_muse", speaker = "inner" },
	},
	texts = {
		enUS = { [VERSE] = PIECE, [SONG] = PIECE, [TALE] = PIECE, [STONE] = PIECE, [INN] = PIECE, [PLAIN] = "A plain thought." },
		itIT = { [VERSE] = PIECE_IT, [SONG] = PIECE_IT, [TALE] = PIECE_IT, [STONE] = PIECE_IT, [INN] = PIECE_IT,
			[PLAIN] = "Un pensiero qualunque." },
	} })

local function Reset()
	SENT = {}
	HW = false
	CHAT_LOCKDOWN = false
	P.instance, P.combat = false, false
	NS.db.locale = "en"
	NS.db.modules.publicChat = true
	NS.db.chat.mode, NS.db.chat.channel = "PRIVATE", "auto"
	NS.db.chat.floodSeconds, NS.db.chat.maxPerMinute, NS.db.chat.autoMaxPerMinute = 4, 6, 2
	NS.db.bard.enabled, NS.db.bard.share, NS.db.bard.channel = true, true, "SAY"
	Gateway.sendLog = {}
	Gateway.inPlayerAction = false
	Gateway:Discard()
	Bard.share, Bard.last = nil, nil
	Narrator:Clear()
	ADVANCE(100)
end

-- the chat messages sent (not the addon's own prints in the chat frame)
local function Public()
	local out = {}
	for _, s in ipairs(SENT) do
		if not s:find("^PRINT: ") then table.insert(out, s) end
	end
	return out
end
local function Printed(text)
	for _, s in ipairs(SENT) do
		if s:find("^PRINT: ") and s:find(text, 1, true) then return true end
	end
	return false
end

-- a click: a hardware event and the Gateway's player action
local function Click(fn, ...)
	HW = true
	local a, b = Gateway:PlayerAction(fn, ...)
	HW = false
	return a, b
end

local function Show(id, text)
	local p = Engine.byId[id]
	local rec = { id = id, speaker = p.speaker, text = text or PIECE, display = text or PIECE, category = p.category }
	Narrator:Present(rec)
	return rec
end

---------------------------------------------------------------------------
-- Which pieces
---------------------------------------------------------------------------
T.run("ADR 0060: the Bard's pieces are the songs, verses and tales not sung by an NPC; a genre, not an id", function()
	Reset()
	T.ok(Bard.IsBardRule(Engine.byId[VERSE]), "a verse the character remembers is the Bard's")
	T.ok(Bard.IsBardRule(Engine.byId[SONG]), "a song the character remembers is the Bard's")
	T.ok(not Bard.IsBardRule(Engine.byId[STONE]), "an inscription stays in the inner voice")
	T.ok(not Bard.IsBardRule(Engine.byId[INN]), "the innkeeper's rhyme stays in the NPC voice")
	T.ok(not Bard.IsBardRule(nil) and not Bard.IsBardRule({ speaker = "inner" }), "no rule, or a plain line: not the Bard's")
	T.ok(not Bard.IsBardRule({ speaker = "inner", genre = "verse" }) or Engine.IsLiteraryRule({ speaker = "inner", genre = "verse" }),
		"the Bard reads Engine.IsLiteraryRule")
	T.ok(Bard.IsBardRule(Engine.byId[TALE]), "a tale is the Bard's")
	T.ok(not Bard.IsBardRule(Engine.byId[PLAIN]), "a plain line is not")
	-- the rule decides by its fields: every rule of the pack follows Bard.GENRES and the voice
	local n = 0
	for _, id in ipairs(Engine:PackIds("bardtest")) do
		local p = Engine.byId[id]
		if Bard.IsBardRule(p) then
			n = n + 1
			if not (Bard.GENRES[p.genre] and p.speaker ~= "npc") then T.ok(false, id .. ": a Bard genre, not an NPC") end
		end
	end
	T.eq(n, 3, "the verse, the song and the tale of the six pieces are the Bard's")
	-- the Claims of a record follow the setting
	T.ok(Bard:Claims({ id = VERSE }), "on: a record of a Bard piece is claimed")
	NS.db.bard.enabled = false
	T.ok(not Bard:Claims({ id = VERSE }), "off: never claimed")
	NS.db.bard.enabled = true
	T.ok(not Bard:Claims({ id = STONE }) and not Bard:Claims({ speaker = "inner" }) and not Bard:Claims(nil),
		"an inscription, a record without id or nothing: not claimed")
end)

---------------------------------------------------------------------------
-- The look in the narrator box
---------------------------------------------------------------------------
T.run("ADR 0060: a Bard piece is shown in the Bard's look; the record keeps its speaker", function()
	Reset()
	local rec = Show(VERSE)
	T.eq(rec.voice, "bard", "the record is shown in the Bard's voice")
	T.eq(rec.speaker, "inner", "and keeps its speaker (the Gateway reads it)")
	T.ok(Gateway:PrivateReason(rec) == "literary", "the Gateway still keeps it private")
	T.ok(frame:IsShown(), "the box is on screen")
	T.ok(frame.bardIcon:IsShown(), "the note icon is shown")
	T.ok(frame.label:GetText():find(NS:L("voice_bard"), 1, true), "the label says Bard")
	T.eq(NS:L("voice_bard"), "Bard", "in English: Bard")
	T.ok(frame.accent._s.colorTex ~= nil, "the accent bar is painted")
	local r, g, b = Theme.Color("voice-bard")
	local c = frame.accent._s.colorTex
	T.ok(math.abs(c[1] - r) < 0.01 and math.abs(c[2] - g) < 0.01 and math.abs(c[3] - b) < 0.01, "the bar is voice-bard")
	local last = Narrator.history[#Narrator.history]
	T.eq(last.speaker, "bard", "the history entry is the Bard's")
	T.eq(Bard.last and Bard.last.id, VERSE, "the last Bard piece is remembered for /au bard sing")
	T.ok(frame.shareBar:IsShown(), "the Share bar is shown")
	T.ok(not frame.bar:IsShown(), "the proposal bar is not")
	-- the reveal one line at a time is the narrator's: a Bard piece has its verses
	T.ok(Narrator.verses == nil or Narrator.verses.rec == rec, "the verses of the piece are revealed by the narrator")

	-- an inscription stays in the inner voice; the Bard's look goes
	Narrator:Clear()
	rec = Show(STONE)
	T.eq(rec.voice, nil, "an inscription is not the Bard's")
	T.ok(not frame.bardIcon:IsShown(), "no note icon")
	T.ok(frame.label:GetText():find(NS:L("voice_inner"), 1, true), "the inner voice's label")
	T.ok(not frame.shareBar:IsShown(), "no Share bar")

	-- Bard off: the piece is in the inner voice as before
	Narrator:Clear()
	NS.db.bard.enabled = false
	rec = Show(VERSE)
	T.eq(rec.voice, nil, "Bard off: not claimed")
	T.ok(frame.label:GetText():find(NS:L("voice_inner"), 1, true), "Bard off: the inner voice")
	NS.db.bard.enabled = true

	-- Share off: the Bard's look, no Share bar
	Narrator:Clear()
	NS.db.bard.share = false
	Show(VERSE)
	T.ok(frame.bardIcon:IsShown() and not frame.shareBar:IsShown(), "Share off: the Bard's box without the Share bar")
	NS.db.bard.share = true

	-- a one-line piece: nothing to sing line by line, no Share bar
	Narrator:Clear()
	Show(VERSE, "Turn the stone, shut your eyes, and the road folds away.")
	T.ok(not frame.shareBar:IsShown(), "a one-line piece has no Share bar")

	-- the Italian label
	NS.db.locale = "it"
	T.eq(NS:L("voice_bard"), "Bardo", "in Italian: Bardo")
	NS.db.locale = "en"
	Reset()
end)

---------------------------------------------------------------------------
-- Tokens
---------------------------------------------------------------------------
T.run("ADR 0060: voice-bard in both themes, readable and apart from the other voices", function()
	T.eq(Theme.VOICE_TOKENS.bard, "voice-bard", "Theme.VOICE_TOKENS maps the Bard")
	local found = false
	for _, t in ipairs(Theme.TOKENS) do if t == "voice-bard" then found = true end end
	T.ok(found, "voice-bard is a token")
	for _, id in ipairs(Theme.ORDER) do
		local c = Theme.themes[id]["voice-bard"]
		T.ok(type(c) == "table" and #c == 4, id .. ": voice-bard is a colour")
		local bg = { Theme.Color("bg", id) }
		T.ok(Theme.Contrast(c, bg) >= 4.5, ("%s: voice-bard on bg %.2f"):format(id, Theme.Contrast(c, bg)))
		-- apart from the other voices: not the same colour, and a different hue family from the narrator and the inner voice
		for _, other in ipairs({ "voice-narrator", "voice-inner", "voice-character", "voice-npc" }) do
			local o = Theme.themes[id][other]
			local d = math.abs(o[1] - c[1]) + math.abs(o[2] - c[2]) + math.abs(o[3] - c[3])
			T.ok(d > 0.3, ("%s: voice-bard is apart from %s (%.2f)"):format(id, other, d))
		end
		-- a red-leaning hue: red is its strongest channel, blue is not (the narrator is violet, the inner voice blue)
		T.ok(c[1] > c[2] and c[1] > c[3], id .. ": voice-bard is a rose / wine red")
	end
	T.eq(Theme.themes.nebula["voice-bard"][1], 1, "Nebula's Bard is #FF8FB8")
end)

---------------------------------------------------------------------------
-- The messages of a share
---------------------------------------------------------------------------
T.run("ADR 0060: the attribution becomes an emote, the verses follow one a message, within the byte limit", function()
	Reset()
	local emote, verses = Bard.Parts(PIECE, "verse")
	T.eq(emote, NS:L("bard_share_verse"), "a verse: 'recites a few verses:'")
	T.eq(#verses, 4, "four verses: the attribution and the empty line between stanzas are left out")
	T.eq(verses[1], "Nothing waited while I traveled;", "the first verse")
	T.eq(select(1, Bard.Parts(PIECE, "song")), NS:L("bard_share_song"), "a song: 'sings an old song:'")
	T.eq(select(1, Bard.Parts(PIECE, "tale")), NS:L("bard_share_tale"), "a tale")
	T.eq(select(1, Bard.Parts(PIECE, "epigraph")), NS:L("bard_share_verse"), "another genre: the verse's emote")
	T.eq(Bard.Parts("One line only.", "verse"), nil, "a one-line piece: nothing to sing")
	T.eq(Bard.Parts(nil), nil, "no text: nothing")

	local m = Bard:Messages(PIECE, "verse", "SAY")
	T.eq(#m, 5, "the emote and four verses")
	T.eq(m[1].channel, "EMOTE", "the attribution goes on /e")
	T.eq(m[1].text, NS:L("bard_share_verse"), "as the emote itself (the game puts the name before it)")
	T.eq(m[2].channel, "SAY", "the verses on the chosen channel")
	T.eq(m[2].text, "Nothing waited while I traveled;", "a verse as spoken text")
	m = Bard:Messages(PIECE, "verse", "EMOTE")
	T.eq(m[2].channel, "EMOTE", "on /e the verses are emotes too")
	T.eq(m[2].text, NS:L("bard_emote_line", "Nothing waited while I traveled;"), "quoted after the name")
	-- the byte limit of the channel, cut at a whole character; never a line break
	local long = "Attribution:\n" .. string.rep("è", 200)
	m = Bard:Messages(long, "verse", "SAY")
	T.ok(#m[2].text <= Config.CHAT_LIMITS.SAY, "a long verse is cut to the channel's bytes (" .. #m[2].text .. ")")
	T.ok(m[2].text:sub(-3) == "...", "with the Gateway's ellipsis")
	for _, msg in ipairs(m) do T.ok(not msg.text:find("\n", 1, true), "never a line break in a message") end
end)

---------------------------------------------------------------------------
-- Sharing: never automatic, the pacing, the limits
---------------------------------------------------------------------------
T.run("ADR 0060: a share starts only from the player's click, never from a timer, an event or the automatic mode", function()
	Reset()
	local ok, why = Bard:Share(PIECE, "verse", "EMOTE")
	T.ok(not ok and why == "needs_click", "outside a player action: refused")
	T.eq(#Public(), 0, "nothing sent")
	-- the automatic mode of the Gateway changes nothing: a literary line is never proposed or sent by itself
	Gateway:SetMode("AUTO_ONLY_IF_ALLOWED", { confirmAuto = true })
	NS.db.output.autoPublicSay = true
	local rec = { id = VERSE, speaker = "inner", text = PIECE, form = "say", event = "memory_return", category = "lore" }
	Gateway:Propose(rec, { player = "Elyra" }, { auto = true })
	T.eq(#Public(), 0, "AUTO: a Bard piece is never sent by itself")
	T.eq(Gateway:GetPending(), nil, "nor proposed")
	T.ok(not Bard:IsSharing(), "and no share starts")
	UPDATE(10)
	T.eq(#Public(), 0, "the clock of the Bard sends nothing without a share")
	Gateway:SetMode("PRIVATE")
	NS.db.output.autoPublicSay = false
	Reset()
end)

T.run("ADR 0060: on /emote the share goes on by itself at the pace, within the flood limits", function()
	Reset()
	local ok = Click(function() return Bard:Share(PIECE, "verse", "EMOTE") end)
	T.ok(ok, "a click starts the share")
	T.eq(#Public(), 1, "the emote at once")
	T.eq(Public()[1], "EMOTE: " .. NS:L("bard_share_verse"), "on /e")
	T.ok(Bard:IsSharing(PIECE), "the share runs")
	T.eq(NS.db.bard.channel, "EMOTE", "the channel chosen is kept")
	ADVANCE(1); Bard:Tick()
	T.eq(#Public(), 1, "nothing before the pause (" .. Bard:Gap() .. " s)")
	ADVANCE(Bard:Gap()); Bard:Tick()
	T.eq(#Public(), 2, "the first verse after the pause")
	T.eq(Public()[2], "EMOTE: " .. NS:L("bard_emote_line", "Nothing waited while I traveled;"), "as an emote")
	-- the Gateway's pause is the floor: a larger floodSeconds slows the share
	NS.db.chat.floodSeconds = 6
	ADVANCE(4.5); Bard:Tick()
	T.eq(#Public(), 2, "floodSeconds 6: not after 4.5 s")
	ADVANCE(2); Bard:Tick()
	T.eq(#Public(), 3, "after 6 s")
	NS.db.chat.floodSeconds = 4
	-- the clock of the frame does the same (UPDATE runs the OnUpdate scripts)
	ADVANCE(5); UPDATE(0.3)
	T.eq(#Public(), 4, "the share's own clock sends the next verse")
	ADVANCE(5); UPDATE(0.3)
	T.eq(#Public(), 5, "the last verse")
	T.ok(not Bard:IsSharing(), "the share is over")
	ADVANCE(10); UPDATE(0.3)
	T.eq(#Public(), 5, "nothing more")
	-- the flood limit per minute holds a share back: it waits instead of failing
	Reset()
	NS.db.chat.maxPerMinute = 2
	Click(function() return Bard:Share(PIECE, "verse", "EMOTE") end)
	ADVANCE(5); Bard:Tick()
	T.eq(#Public(), 2, "two messages in the minute")
	ADVANCE(5); Bard:Tick()
	T.eq(#Public(), 2, "the third waits for the minute (flood)")
	T.ok(Bard:IsSharing(), "the share waits, it does not stop")
	ADVANCE(55); Bard:Tick()
	T.eq(#Public(), 3, "then it goes on")
	Reset()
end)

T.run("ADR 0060: on /say in the open world each verse needs a click; in an instance it goes by itself", function()
	Reset()
	local ok = Click(function() return Bard:Share(PIECE, "verse", "SAY") end)
	T.ok(ok, "a click starts it")
	T.eq(#Public(), 1, "the emote at once (an emote needs no click)")
	T.ok(Bard:NeedsClick(), "the next /say line waits for a click")
	ADVANCE(10); Bard:Tick()
	T.eq(#Public(), 1, "the clock never sends /say in the open world")
	local sent = Click(function() return Bard:Next() end)
	T.ok(sent, "a click sends the next verse")
	T.eq(Public()[2], "SAY: Nothing waited while I traveled;", "on /say")
	local again, why = Click(function() return Bard:Next() end)
	T.ok(not again and why == "wait", "a second click at once waits for the pause")
	T.eq(#Public(), 2, "nothing more")
	local n, total = Bard:Progress()
	T.eq(n, 3, "the next message is the third")
	T.eq(total, 5, "of five")
	-- Next without a click is refused
	ADVANCE(5)
	local x, whyx = Bard:Next()
	T.ok(not x and whyx == "needs_click", "Next outside a click is refused")
	-- a share waiting too long for a click stops
	ADVANCE(Bard.MAX_IDLE + 1); Bard:Tick()
	T.ok(not Bard:IsSharing(), "two minutes without a click: stopped")
	T.ok(Printed(NS:L("bard_share_stopped_idle")), "and it says so")

	-- in an instance /say goes from the clock
	Reset()
	P.instance = true
	Click(function() return Bard:Share(PIECE, "verse", "SAY") end)
	T.ok(not Bard:NeedsClick(), "in an instance no click is needed")
	ADVANCE(5); Bard:Tick()
	T.eq(Public()[2], "SAY: Nothing waited while I traveled;", "the verse goes by itself")
	Reset()
end)

T.run("ADR 0060: a share is refused or stopped where the rules say", function()
	Reset()
	local function Try(...) return Click(function(...) return Bard:Share(...) end, ...) end
	NS.db.bard.share = false
	T.eq(select(2, Try(PIECE, "verse", "SAY")), "off", "Share off: refused")
	NS.db.bard.share = true
	NS.db.modules.publicChat = false
	T.eq(select(2, Try(PIECE, "verse", "SAY")), "private", "public chat module off: refused")
	NS.db.modules.publicChat = true
	P.combat = true
	T.eq(select(2, Try(PIECE, "verse", "SAY")), "combat", "in combat: refused")
	P.combat = false
	local held = Gateway.HeldOOC
	Gateway.HeldOOC = function() return true end
	T.eq(select(2, Try(PIECE, "verse", "SAY")), "ooc", "out of character (Total RP 3): refused")
	Gateway.HeldOOC = held
	T.eq(select(2, Try("A single line.", "verse", "SAY")), "short", "a one-line piece: refused")
	T.eq(select(2, Try(PIECE, "verse", "GUILD")), "bad_channel", "only /say or /emote")
	T.eq(#Public(), 0, "nothing sent by the refusals")
	-- a waiting proposal comes first
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose({ text = "Well met.", form = "say", speaker = "character", event = "greet" }, { player = "Elyra" }, {})
	T.ok(Gateway:GetPending() ~= nil, "a proposal waits")
	T.eq(select(2, Try(PIECE, "verse", "SAY")), "proposal", "a waiting proposal: refused")
	Gateway:Discard()
	Gateway:SetMode("PRIVATE")
	-- one at a time
	T.ok(Try(PIECE, "verse", "EMOTE"), "a share starts")
	T.eq(select(2, Try(PIECE, "verse", "EMOTE")), "busy", "a second one is refused")
	-- the start of a fight stops it
	Gateway:OnCombatStart()
	T.ok(not Bard:IsSharing(), "a fight stops the share")
	T.ok(Printed(NS:L("bard_share_stopped_combat")), "and it says so")
	-- the chat lockdown holds it back, it does not stop it
	Reset()
	Click(function() return Bard:Share(PIECE, "verse", "EMOTE") end)
	CHAT_LOCKDOWN = true
	ADVANCE(5); Bard:Tick()
	T.eq(#Public(), 1, "lockdown: nothing sent")
	T.ok(Bard:IsSharing(), "the share waits")
	CHAT_LOCKDOWN = false
	ADVANCE(1); Bard:Tick()
	T.eq(#Public(), 2, "after the lockdown it goes on")
	-- out of character during the share: it stops
	Gateway.HeldOOC = function() return true end
	ADVANCE(5); Bard:Tick()
	Gateway.HeldOOC = held
	T.ok(not Bard:IsSharing(), "out of character: stopped")
	-- Stop
	Reset()
	Click(function() return Bard:Share(PIECE, "verse", "EMOTE") end)
	Bard:Stop("stop")
	ADVANCE(10); Bard:Tick()
	T.eq(#Public(), 1, "after Stop nothing more")
	Reset()
end)

---------------------------------------------------------------------------
-- The Share bar of the box
---------------------------------------------------------------------------
T.run("ADR 0060: the box's Share bar starts, moves on and stops a share; the piece stays while it runs", function()
	Reset()
	Show(SONG)
	local sb = frame.shareBar
	T.eq(sb.chip:GetText(), "/s", "the chip shows the channel of the setting")
	sb.chip.scripts.OnClick(sb.chip)
	T.eq(NS.db.bard.channel, "EMOTE", "the chip changes the channel")
	T.eq(sb.chip:GetText(), "/e", "and shows it")
	sb.chip.scripts.OnClick(sb.chip)
	T.eq(NS.db.bard.channel, "SAY", "and back")
	T.eq(sb.shareBtn:GetText(), NS:L("btn_share"), "the button says Share")
	T.ok(sb.shareIcon and sb.shareIcon:IsShown(), "with the share icon (Material Symbols, ADR 0060)")
	T.ok(NS.Assets.IconCoords("share") ~= nil, "the icon is a cell of the sheet")
	T.ok(not sb.stopBtn:IsShown(), "no Stop before a share")
	-- a click on Share (the mock button's OnClick runs as the player's click)
	HW = true
	sb.shareBtn.scripts.OnClick(sb.shareBtn)
	HW = false
	T.eq(#Public(), 1, "the emote")
	T.eq(Public()[1], "EMOTE: " .. NS:L("bard_share_song"), "a song: 'sings an old song:'")
	T.ok(Bard:IsSharing(), "the share runs")
	T.eq(sb.shareBtn:GetText(), NS:L("btn_share_next", 1, 4), "the button says Next verse 1/4")
	T.ok(sb.stopBtn:IsShown(), "Stop is shown")
	T.ok(frame.label:GetText():find(NS:L("bard_sharing", "/s"), 1, true), "the label says a share is under way, on /s")
	-- the box stays while the share runs, and another line waits
	UPDATE(60)
	T.ok(frame:IsShown(), "the box stays while the share runs")
	local other = { speaker = "narrator", display = "The wind turns.", text = "The wind turns." }
	Narrator:Present(other)
	T.ok(Narrator.current.display == PIECE, "another line does not push the piece off the box")
	T.eq(#Narrator.held, 1, "it waits")
	HW = true
	sb.shareBtn.scripts.OnClick(sb.shareBtn)
	HW = false
	T.eq(#Public(), 1, "a click before the pause sends nothing")
	ADVANCE(5)
	HW = true
	sb.shareBtn.scripts.OnClick(sb.shareBtn)
	HW = false
	T.eq(Public()[2], "SAY: Nothing waited while I traveled;", "Next verse sends one")
	sb.stopBtn.scripts.OnClick(sb.stopBtn)
	T.ok(not Bard:IsSharing(), "Stop ends it")
	T.ok(not sb.stopBtn:IsShown(), "Stop is hidden again")
	UPDATE(1)
	T.ok(frame:IsShown() and Narrator.current.display == PIECE, "the piece stays a moment after the share")
	UPDATE(5)
	T.eq(Narrator.current and Narrator.current.display, "The wind turns.", "then the line that waited comes")
	-- "x" over a piece being shared ends the share
	Reset()
	Show(SONG)
	HW = true
	frame.shareBar.shareBtn.scripts.OnClick(frame.shareBar.shareBtn)
	HW = false
	T.ok(Bard:IsSharing(), "sharing")
	Narrator:Dismiss()
	T.ok(not Bard:IsSharing(), "the close button ends the share")
	Reset()
end)

---------------------------------------------------------------------------
-- Settings, commands, songbook, locale
---------------------------------------------------------------------------
T.run("ADR 0060: the settings have defaults and rules; the Settings window has their rows", function()
	local d = Config.defaults.bard
	T.eq(d.enabled, true, "the Bard box is on by default")
	T.eq(d.share, true, "Share is on by default")
	T.eq(d.channel, "SAY", "the channel is /say by default")
	T.eq(table.concat(Config.BARD_CHANNELS, ","), "SAY,EMOTE", "two channels")
	T.ok(Config:Set("bard.channel", "EMOTE"), "EMOTE is accepted")
	T.ok(not Config:Set("bard.channel", "GUILD"), "GUILD is not")
	T.eq(NS.db.bard.channel, "EMOTE", "the last good value stays")
	Config:Set("bard.channel", "SAY")
	T.ok(Config:Set("bard.enabled", false) and NS.db.bard.enabled == false, "the switch")
	Config:Set("bard.enabled", true)
	-- the frequency is the literary forms' own setting
	T.eq(Config.defaults.literary.frequency, "rare", "how often: literary.frequency")
	-- a saved table without the Bard gets the defaults
	local merged = Config.Merge(Config.defaults, { literary = { frequency = "normal" } })
	T.eq(merged.bard.enabled, true, "an older save gets the Bard's defaults")
	T.eq(merged.bard.channel, "SAY", "and its channel")
	local S = NS.SettingsFrame
	T.ok(S:Row("opt_bard") and S:Row("opt_bard").switch, "Settings: the Bard switch")
	T.ok(S:Row("opt_bard_share") and S:Row("opt_bard_share").switch, "Settings: the Share switch")
	T.ok(S:Row("opt_bard_channel") and S:Row("opt_bard_channel").seg, "Settings: the channel")
end)

T.run("ADR 0060: /au bard shows and changes the settings, sings the last piece, next and stop", function()
	Reset()
	SlashCmdList.AZEROTHUNSPOKEN("bard")
	T.ok(Printed(NS:L("bard_now", NS:L("on"), NS:L("on"), NS:L("channel_SAY"))), "/au bard: the state")
	SlashCmdList.AZEROTHUNSPOKEN("bard off")
	T.eq(NS.db.bard.enabled, false, "/au bard off")
	SlashCmdList.AZEROTHUNSPOKEN("bard on")
	T.eq(NS.db.bard.enabled, true, "/au bard on")
	SlashCmdList.AZEROTHUNSPOKEN("bard share off")
	T.eq(NS.db.bard.share, false, "/au bard share off")
	SlashCmdList.AZEROTHUNSPOKEN("bard share on")
	T.eq(NS.db.bard.share, true, "/au bard share on")
	SlashCmdList.AZEROTHUNSPOKEN("bard channel emote")
	T.eq(NS.db.bard.channel, "EMOTE", "/au bard channel emote")
	SlashCmdList.AZEROTHUNSPOKEN("bard channel guild")
	T.eq(NS.db.bard.channel, "EMOTE", "/au bard channel guild: refused")
	SlashCmdList.AZEROTHUNSPOKEN("bard channel say")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("bard sing")
	T.ok(Printed(NS:L("bard_nothing")), "/au bard sing with nothing shown: said")
	T.eq(#Public(), 0, "nothing sent")
	Show(VERSE)
	SlashCmdList.AZEROTHUNSPOKEN("bard sing emote")
	T.eq(#Public(), 1, "/au bard sing: a typed command starts the share")
	T.eq(Bard.share and Bard.share.channel, "EMOTE", "on the channel asked for")
	SlashCmdList.AZEROTHUNSPOKEN("bard stop")
	T.ok(not Bard:IsSharing(), "/au bard stop")
	SlashCmdList.AZEROTHUNSPOKEN("bard next")
	T.ok(Printed(NS:L("bard_why_none")), "/au bard next with nothing shared: said")
	SlashCmdList.AZEROTHUNSPOKEN("bard xyz")
	T.ok(Printed(NS:L("values_bard")), "an unknown word lists the values")
	T.ok(NS.Commands.byName.bard and NS.Commands.byName.bard.group == "bard", "/au bard is in the help group Bard")
	T.eq(NS.Commands.byName.literary.group, "bard", "/au literary too")
	T.eq(NS.Commands.byName.songbook.group, "bard", "and /au songbook")
	Reset()
end)

T.run("ADR 0060: the songbook's Share row shows the piece in the Bard's box and shares it on a click", function()
	Reset()
	NS.db.modules.memory = true
	NS.cdb.songbook = nil
	NS.Songbook:Data()
	NS.Songbook:Sync()
	T.ok(NS.Songbook:Add(VERSE, "heard"), "a Bard piece heard")
	T.ok(NS.Songbook:Add(STONE, "heard"), "an inscription heard")
	local ok, why = Bard:ShareFromSongbook(VERSE, "EMOTE")
	T.ok(not ok and why == "needs_click", "outside a click: refused")
	ok = Click(function() return Bard:ShareFromSongbook(VERSE, "EMOTE") end)
	T.ok(ok, "a click shares it")
	T.eq(Narrator.current and Narrator.current.voice, "bard", "the piece is in the Bard's box")
	T.eq(#Public(), 1, "the emote went")
	Bard:Stop("stop")
	local no, whyNo = Click(function() return Bard:ShareFromSongbook(STONE, "SAY") end)
	T.ok(not no and whyNo == "unknown", "an inscription is not shared")
	-- the Journal's row: a Bard piece has it, an inscription not, and Share off hides it
	local J, tab = NS.JournalFrame, nil
	for _, t in ipairs(J.tabs) do if t.id == "songbook" then tab = t end end
	local function ShareRow()
		for _, r in ipairs(tab.rows()) do
			if r.text == NS:L("song_share_row") then return r end
		end
	end
	J:OpenPiece(VERSE)
	local row = ShareRow()
	T.ok(row ~= nil, "the open Bard piece has a Share row")
	T.eq(row and #row.actions, 2, "with /say and /emote")
	T.eq(row and row.actions[1].label, NS:L("channel_SAY"), "the first is /say")
	Reset()
	-- the row's action is the player's click: it shows the piece and starts the share
	HW = true
	row.actions[2].fn()
	HW = false
	T.eq(#Public(), 1, "the row's /emote shares the piece")
	T.eq(Narrator.current and Narrator.current.voice, "bard", "in the Bard's box")
	Bard:Stop("stop")
	NS.db.bard.share = false
	T.ok(ShareRow() == nil, "Share off: no row")
	NS.db.bard.share = true
	J:OpenPiece(STONE)
	T.ok(ShareRow() == nil, "an inscription has no Share row")
	J:OpenPiece(nil)
	Reset()
end)

T.run("ADR 0060: every Bard key is in English and Italian", function()
	local en, it = NS.languages.en.ui, NS.languages.it.ui
	local keys = { "voice_bard", "opt_bard", "opt_bard_tip", "opt_bard_share", "opt_bard_share_tip", "opt_bard_channel",
		"opt_bard_channel_tip", "btn_share", "btn_share_next", "btn_share_stop", "tip_share", "tip_share_next",
		"tip_share_stop", "tip_bard_channel", "bard_sharing", "bard_share_song", "bard_share_verse", "bard_share_tale",
		"bard_emote_line", "bard_now", "bard_nothing", "values_bard", "values_bard_channel", "help_bard", "help_grp_bard",
		"help_group_bard", "song_share_row", "song_tip_share_say", "song_tip_share_emote" }
	for _, why in ipairs({ "stop", "combat", "idle", "ooc", "failed" }) do table.insert(keys, "bard_share_stopped_" .. why) end
	for _, why in ipairs({ "off", "private", "combat", "ooc", "busy", "proposal", "short", "needs_click", "bad_channel",
		"none", "wait", "flood", "lockdown", "needs_action", "failed" }) do
		table.insert(keys, "bard_why_" .. why)
	end
	for _, k in ipairs(keys) do
		T.ok(type(en[k]) == "string" and en[k] ~= "", "en: " .. k)
		T.ok(type(it[k]) == "string" and it[k] ~= "", "it: " .. k)
	end
	T.eq(it.voice_bard, "Bardo", "Bardo")
	-- the share's words fit a chat line and are emotes, not names
	for _, k in ipairs({ "bard_share_song", "bard_share_verse", "bard_share_tale" }) do
		T.ok(#en[k] < 60 and #it[k] < 60, k .. ": a short emote")
		T.ok(en[k]:sub(-1) == ":" and it[k]:sub(-1) == ":", k .. ": ends with a colon, the verses follow")
	end
end)
