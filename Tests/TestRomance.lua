-- Tests of active romance, step R1 (ADR 0061, docs/specs/romance.md): Systems/Romance.lua, Data/Romance.lua, the hooks in
-- Systems/Relationships.lua (version 10, cleaning, migration, the vow, the meetings, the context), Systems/NPCAlive.lua
-- (the flirt answers, the jealous opening, the kin read from the target), Engine/RuleEngine.lua (the conditions) and
-- Engine/Validator.lua (the flirts' exception, romanceTier on romance lines).
--   - the gates: the attraction axis, Active romance, the soul, the fixed rule of ADR 0037, the exclusions, the level, a
--     grudge, a calm moment, the rests after a refusal and after a break-up;
--   - the score: its parts, a worked example, the outcomes and their effects (a refusal never ruins the relationship);
--   - the stages, the moments (declaration, date, vow), one beloved, jealousy (same town, far), the break-up;
--   - the tone tiers and the 18+ consent; the saved data (cleaning, migration 9 -> 10); privacy.
local NS = ...
local Engine, Config, R, I, N, LM = NS.Engine, NS.Config, NS.Relationships, NS.Interlocutor, NS.NPCAlive, NS.LivingMemory
local Ro, Validator, Narrator, Director = NS.Romance, NS.Validator, NS.Narrator, NS.Director

local MALE, FEMALE = 2, 3
local DAY = 86400
local LYRA, MARA, ILSA = 70001, 70002, 70003   -- curated test NPCs (innkeepers; Lyra a cheerful Orc)

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Near(a, b, eps) return type(a) == "number" and math.abs(a - b) <= (eps or 0.01) end

NS:RegisterNPCs({ pack = "romtest",
	[LYRA] = { name = "Lyra", role = "innkeeper", temperament = "cheerful", race = "Orc" },
	[MARA] = { name = "Mara", role = "innkeeper", race = "Human" },
	[ILSA] = { name = "Ilsa", role = "innkeeper", race = "Human", romance = false },
})

-- flirts of a test pack: two ordinary kinds, a tier-2 invitation, the three moments
local FLIRTS = {
	{ id = "glance", kind = "glance", stage = { "none", "vowed" }, tier = 1,
		label = { en = "Hold their gaze a moment longer.", it = "Reggi il suo sguardo un attimo di più." } },
	{ id = "compliment", kind = "compliment", stage = { "interest", "vowed" }, tier = 1,
		label = { en = "Say the lamplight suits them.", it = "Dille che la luce della lampada le dona." } },
	{ id = "inn_stay", kind = "invite", stage = { "declared", "vowed" }, tier = 2, roles = { "innkeeper" },
		when = { romanceNight = true }, label = { en = "Ask whether a room is free tonight, for two.",
			it = "Chiedi se stanotte c'è una stanza, per due." } },
	{ id = "word_alone", kind = "moment", moment = "declaration", stage = { "courtship", "courtship" }, tier = 1,
		label = { en = "Ask for a word alone.", it = "Chiedi una parola in disparte." } },
	{ id = "evening", kind = "moment", moment = "date", stage = { "courtship", "vowed" }, tier = 1,
		label = { en = "Ask whether they are free this evening.", it = "Chiedi se stasera è libera." } },
	{ id = "the_vow", kind = "moment", moment = "vow", stage = { "declared", "declared" }, tier = 1,
		label = { en = "Ask them to walk with you a while.", it = "Chiedile di camminare un po' con te." } },
}
NS:RegisterDialogues({ pack = "romtest", flirts = FLIRTS })

-- the lines of a test pack: replies, the jealous opening, a scene, a thought; every one at a tier
local function Rule(event, speaker, when)
	-- the popup's narration is written as prose (form say), like the narrator box's own lines
	return { event = event, speaker = speaker, form = speaker == "narrator" and "say" or nil, styles = { "everyday" }, conditions = when }
end
NS:RegisterPack({ id = "romtest_lines", languages = { "enUS", "itIT" },
	events = {
		npcd_romance_welcome = { category = "social", chance = 0, cooldown = 0 },
		npcd_romance_cold = { category = "social", chance = 0, cooldown = 0 },
		npcd_romance_refuse = { category = "social", chance = 0, cooldown = 0 },
		npcd_romance_jealous_open = { category = "social", chance = 0, cooldown = 0 },
		romance_scene = { category = "social", chance = 0, cooldown = 0 },
		romance_inner = { category = "social", chance = 0, cooldown = 0 },
	},
	registry = {
		["rt.welcome.1"] = Rule("npcd_romance_welcome", "npc", { romanceTier = 1 }),
		["rt.welcome.2"] = Rule("npcd_romance_welcome", "npc", { romanceTier = 2 }),
		["rt.cold.1"] = Rule("npcd_romance_cold", "npc", { romanceTier = 1 }),
		["rt.refuse.1"] = Rule("npcd_romance_refuse", "npc", { romanceTier = 1 }),
		["rt.jealous.1"] = Rule("npcd_romance_jealous_open", "npc", { romanceTier = 1 }),
		["rt.scene.decl"] = Rule("romance_scene", "narrator", { romanceTier = 1, romanceMoment = "declaration", romancePhase = "open" }),
		["rt.inner.1"] = Rule("romance_inner", "inner", { romanceTier = 1 }),
	},
	texts = {
		enUS = { ["rt.welcome.1"] = "A warm smile.", ["rt.welcome.2"] = "A warmer smile.", ["rt.cold.1"] = "A polite nod.",
			["rt.refuse.1"] = "A gentle no.", ["rt.jealous.1"] = "So. You found time for me today.",
			["rt.scene.decl"] = "The common room empties around you.", ["rt.inner.1"] = "You think of the smile." },
		itIT = { ["rt.welcome.1"] = "Un sorriso caldo.", ["rt.welcome.2"] = "Un sorriso più caldo.", ["rt.cold.1"] = "Un cenno cortese.",
			["rt.refuse.1"] = "Un no gentile.", ["rt.jealous.1"] = "Dunque. Oggi hai trovato tempo per me.",
			["rt.scene.decl"] = "La sala comune si svuota intorno a voi.", ["rt.inner.1"] = "Ripensi al sorriso." },
	} })

-- the popup of R2, faked: it records what it was asked to open
local OPENED
local FakePopup = { Open = function(_, npcID, moment) OPENED = { npcID = npcID, moment = moment } end }

local BASE = Ro.config.affinity.base
local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	I:OnInit()
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	NS.db.relations.favours, NS.db.relations.nicknames, NS.db.relations.localNotices = false, false, false
	NS.db.relations.levelNotices = false
	NS.db.relations.attraction = true
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.npcAlive.autoOffer = true
	NS.db.output.npcDialogues = true
	NS.db.output.privateNarrator = true
	P.target, P.npc, P.party, P.group, P.raid, P.cinematic = nil, nil, nil, false, false, false
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.resting = "Durotar", "", false, false, 100, 100, false
	P.level, P.hour, P.isDay, P.sex, P.race, P.class = 30, 14, nil, MALE, "Orc", "WARRIOR"
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.Pacing:Reset()
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	NS.Consent:Reset()
	N:OnInit()
	Ro:OnInit()
	Ro.random = function() return 0.5 end   -- the random part is 0, the first of a list is the middle one
	Ro.config.affinity.base = BASE
	NS.DialogueFrame.ROMANCE = true
	NS.RomanceFrame = nil
	OPENED = nil
	SENT = {}
	ADVANCE(20)
end

-- an interaction with an NPC: a woman, humanoid, unless the test says otherwise
local function Talk(id, name, npc)
	npc = npc or {}
	P.npc = { name = name or "Lyra", guid = Guid(id), sex = npc.sex or FEMALE, reaction = 5,
		ctype = npc.ctype == nil and "Humanoid" or (npc.ctype or nil), ctypeID = npc.ctypeID == nil and 7 or (npc.ctypeID or nil) }
	ADVANCE(16)
	FIRE("GOSSIP_SHOW")
end

local function Npc(id) return R:Get("npc", id) end

-- the clock of the world moves on (hours, days) without a day of the session's timers
local function Later(seconds) FAKE_EPOCH = FAKE_EPOCH + seconds end

-- an NPC met, then set to a band: friend (default), acquaintance, close
local AXES = {
	acquaintance = { affection = 20, trust = 20, familiarity = 40 },
	friend = { affection = 60, trust = 40, familiarity = 50 },
	close = { affection = 80, trust = 70, familiarity = 80 },
}
local function Meet(id, name, band, attraction, npc)
	Talk(id, name, npc)
	N:End("closed")
	local rec = Npc(id)
	for k, v in pairs(AXES[band or "friend"]) do rec[k] = v end
	rec.attraction, rec.today = attraction, nil
	local _, got = R:Disposition(R:Axes(rec))
	T.eq(got, band or "friend", ("set up as %s"):format(band or "friend"))
	return rec
end

local function Entries(kind)
	local out = {}
	for _, e in ipairs(LM.session.entries) do if e.kind == kind then table.insert(out, e) end end
	return out
end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do if h.notice then table.insert(out, h.text) end end
	return out
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

-- opens the ambient dialogue with the NPC of the interaction
local function Open(id, name, npc)
	Talk(id, name, npc)
	local ok, why
	if N.state == "offered" then ok, why = N:Open() else ok, why = N:Start((N:Identify())) end
	T.ok(ok, "the dialogue opens: " .. tostring(why))
	return N.session
end

local function FlirtChoices()
	local out = {}
	for i, c in ipairs(N.session and N.session.choices or {}) do
		if c.romance then table.insert(out, { index = i, flirt = c.flirt, moment = c.moment }) end
	end
	return out
end

local function Stage(id) return Ro.Stage(Npc(id)) end

-- sets the base of the affinity so that a moment with this NPC scores `target` (the random part is fixed)
local function Aim(id, target)
	Ro.config.affinity.base = 0
	local rec = Npc(id)
	local s = Ro:Score(id, rec, { tier = 1, from = Ro.Stage(rec) }, NS:BuildContext())
	Ro.config.affinity.base = target - s
end

---------------------------------------------------------------------------
-- The data and the settings
---------------------------------------------------------------------------
T.run("romance R1: the data, the settings and the increments", function()
	local c = Ro.config
	T.eq(c.flirt.minLevel, "acquaintance", "flirts from Acquaintance")
	T.ok(c.flirt.max == 2 and c.flirt.maxEarly == 1 and c.flirt.perTalk == 1 and c.flirt.hours == 6, "2 per node, 1 early, 1 per talk, 6 h")
	T.ok(c.affinity.base == 50 and c.affinity.random == 12 and c.affinity.welcome == 60 and c.affinity.cold == 40, "the thresholds")
	T.ok(c.refuse.hours == 20 and c.refuse.streak == 3 and c.refuse.restDays == 5, "the refusals")
	T.ok(c.jealousy.from == "vowed" and Near(c.jealousy.farChance, 0.35) and c.jealousy.days == 7, "jealousy from the vow")
	T.ok(c.breakup.attraction == 15 and c.breakup.affection == 5 and c.breakup.restDays == 30, "the break-up")
	local ids = {}
	for _, s in ipairs(c.stages) do table.insert(ids, s.id) end
	T.eq(table.concat(ids, ","), "interest,courtship,declared,vowed", "the stages in order")
	T.eq(#c.dates, 4, "four date options")
	T.ok(Engine.CONDITION_VALUES.romanceDate.night and Engine.CONDITION_VALUES.romanceDate.walk, "the date ids are condition values")
	for _, row in ipairs({ "romance_flirt", "romance_date", "romance_declared", "romance_refused", "romance_jealous", "romance_breakup" }) do
		T.ok(R.config.increments[row] ~= nil, "the increment row " .. row)
	end
	T.ok(R.config.increments.romance_refused.gain.attraction < 0 and next(R.config.increments.romance_refused.gain, "attraction") == nil,
		"a refusal touches attraction only")
	local d = Config.defaults.relations
	T.eq(d.romanceActive, true, "Active romance on by default (the attraction axis is the opt-in)")
	T.eq(d.romanceTone, 1, "the tone Courteous by default")
	T.eq(d.romanceAdult, false, "the 18+ consent off by default")
	T.eq(d.attraction, false, "the attraction axis still off by default")
	T.eq(R.VERSION, 10, "relationships version 10")
	-- a wrong tone in the saved settings goes back within 1-3
	local s = Config.DeepCopy(Config.defaults)
	s.relations.romanceTone = 7
	Config:Validate(s)
	T.eq(s.relations.romanceTone, 3, "a tone over 3 is brought back")
end)

---------------------------------------------------------------------------
-- The gates
---------------------------------------------------------------------------
T.run("romance R1: every gate, checked each time", function()
	Fresh()
	Meet(MARA, "Mara")
	T.ok(Ro:Gate(MARA), "a Friend, humanoid, of the opposite sex: open")
	local function Why() return select(2, Ro:Gate(MARA)) end
	NS.db.relations.attraction = false
	T.eq(Why(), "attraction", "the attraction axis off")
	NS.db.relations.attraction = true
	NS.db.relations.romanceActive = false
	T.eq(Why(), "off", "Active romance off")
	NS.db.relations.romanceActive = true
	NS.Personality:ToggleTopic("romance")
	T.eq(Why(), "avoid", "the soul avoids romance")
	NS.Personality:ToggleTopic("romance")
	T.ok(Ro:Gate(MARA), "open again")
	P.sex = FEMALE
	T.eq(Why(), "sex", "two women: the fixed rule of ADR 0037")
	P.sex = MALE
	Ro.config.exclude[MARA] = true
	T.eq(Why(), "excluded", "excluded by the data")
	Ro.config.exclude[MARA] = nil
	P.combat = true
	T.eq(Why(), "combat", "in combat")
	T.ok(Ro:Gate(MARA, { calm = false }), "the moment's check can be skipped (the context, the vow)")
	P.combat = false
	Npc(MARA).foe = { t = time(), n = 1 }
	T.eq(Why(), "foe", "a grudge")
	Npc(MARA).foe = nil
	Npc(MARA).romance = { st = "interest", cd = time() + 3600 }
	T.eq(Why(), "resting", "resting after a refusal")
	-- a curated NPC the content must never court
	Meet(ILSA, "Ilsa")
	T.eq(select(2, Ro:Gate(ILSA)), "excluded", "romance = false in the register")
	-- a stranger: under Acquaintance
	Fresh()
	Talk(MARA, "Mara")
	N:End("closed")
	T.eq(select(2, Ro:Gate(MARA)), "level", "a stranger: no flirt")
	-- a creature
	Fresh()
	Meet(MARA, "Mara", "friend", nil, { ctype = "Beast", ctypeID = 1 })
	T.eq(select(2, Ro:Gate(MARA)), "creature", "a beast: never")
end)

---------------------------------------------------------------------------
-- The score
---------------------------------------------------------------------------
T.run("romance R1: the parts of the score, the worked example and the outcomes", function()
	Fresh()
	local rec = Meet(LYRA, "Lyra", "friend", 20)
	rec.affection, rec.trust = 40, 35
	local band = select(2, R:Disposition(R:Axes(rec)))
	NS.Personality:SetTrait("optimism", 90)
	local ctx = NS:BuildContext()
	local score, parts = Ro:Score(LYRA, rec, Ro.flirtByKey["romtest:glance"], ctx)
	T.eq(parts.base, 50, "base")
	T.eq(parts.race, 6, "the same race (both Orc)")
	T.eq(parts.class, 0, "a warrior and an innkeeper: nothing")
	T.eq(parts.soul, 6, "a cheerful NPC and an optimistic character")
	local rel = (Ro.config.affinity.relation.band[band] or 0) + 0.25 * 20 + 0.10 * 40 + 0.08 * 35
	T.ok(Near(parts.relation, rel), ("the relation: %s, expected %s"):format(tostring(parts.relation), rel))
	T.eq(parts.stage, 0, "a flirt of the first stage is never ahead")
	T.eq(parts.situation, -3, "the wild, by day")
	T.eq(parts.mood, 0, "no dominant emotion")
	T.eq(parts.momentum, 0, "no momentum")
	T.eq(parts.random, 0, "the random part fixed at 0")
	local sum = 0
	for _, v in pairs(parts) do sum = sum + v end
	T.ok(Near(score, sum), "the score is the sum of its parts")
	-- an inn at night: +6
	P.resting, P.hour = true, 23
	score, parts = Ro:Score(LYRA, rec, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(parts.situation, 6, "an inn at night")
	-- a flirt of the next stage costs `ahead`
	_, parts = Ro:Score(LYRA, rec, Ro.flirtByKey["romtest:compliment"], NS:BuildContext())
	T.eq(parts.stage, -15, "a flirt ahead of the NPC's stage")
	-- momentum: welcomes in a row
	rec.romance = { st = "interest", mm = 5 }
	_, parts = Ro:Score(LYRA, rec, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(parts.momentum, 6, "momentum up to its cap")
	-- the random part: uniform in [-12, +12]
	Ro.random = function() return 0 end
	_, parts = Ro:Score(LYRA, rec, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(parts.random, -12, "the lowest random part")
	-- the outcomes
	T.eq(Ro:Outcome(60), "welcome", "60: welcome")
	T.eq(Ro:Outcome(59.9), "cold", "59.9: cold")
	T.eq(Ro:Outcome(40), "cold", "40: cold")
	T.eq(Ro:Outcome(39.9), "refuse", "39.9: refuse")
	NS.Personality:SetArchetype("neutral")
end)

---------------------------------------------------------------------------
-- The answers and their effects
---------------------------------------------------------------------------
T.run("romance R1: a welcome, a cold answer, a refusal that never ruins the relationship", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 3)
	local who = { kind = "npc", npcID = MARA, role = "innkeeper", name = "Mara" }
	local glance = Ro.flirtByKey["romtest:glance"]
	-- welcome
	Ro.config.affinity.base = 90
	local outcome = Ro:Answer(who, glance, NS:BuildContext())
	T.eq(outcome, "welcome", "welcomed")
	T.ok(rec.attraction > 3, "attraction grew: " .. rec.attraction)
	T.eq(rec.romance.mm, 1, "momentum 1")
	T.eq(rec.romance.st, "interest", "attraction 5: interest")
	-- cold
	Ro.config.affinity.base = 50
	outcome = Ro:Answer(who, glance, NS:BuildContext())
	T.eq(outcome, "cold", "cold")
	T.eq(rec.romance.mm, nil, "momentum back to 0")
	-- refuse: attraction -1, nothing else, a quiet of 20 hours, the journal once
	Ro.config.affinity.base = 0
	local before = { affection = rec.affection, trust = rec.trust, familiarity = rec.familiarity, attraction = rec.attraction }
	local band = select(2, R:Disposition(R:Axes(rec)))
	local label = R:Resolve("npc", rec).derived
	outcome = Ro:Answer(who, glance, NS:BuildContext())
	T.eq(outcome, "refuse", "refused")
	local t = R:Temper(MARA, rec, "romance_refused").gain
	T.ok(Near(rec.attraction, before.attraction - t), ("attraction -1 (times the temperament %.2f)"):format(t))
	T.ok(rec.affection == before.affection and rec.trust == before.trust and rec.familiarity == before.familiarity,
		"no other axis changes")
	T.eq(select(2, R:Disposition(R:Axes(rec))), band, "the level stays")
	T.eq(R:Resolve("npc", rec).derived, label, "the label stays")
	T.ok(rec.romance.cd and Near(rec.romance.cd - time(), 20 * 3600), "20 hours of quiet")
	T.eq(select(2, Ro:Gate(MARA)), "resting", "no flirt meanwhile")
	T.eq(#Entries("relation_refused"), 1, "the first refusal is in the journal")
	-- three in a row: five days of room; the journal line does not come again
	rec.romance.cd = nil
	Ro:Answer(who, glance, NS:BuildContext())
	rec.romance.cd = nil
	Ro:Answer(who, glance, NS:BuildContext())
	T.ok(rec.romance.cd and Near(rec.romance.cd - time(), 5 * DAY), "three refusals: five days")
	T.eq(rec.romance.rf, nil, "the streak starts again")
	T.eq(#Entries("relation_refused"), 1, "one journal line per NPC")
	T.eq(ChatSent(), nil, "nothing in chat")
end)

---------------------------------------------------------------------------
-- The stages
---------------------------------------------------------------------------
T.run("romance R1: the stages move up by attraction, never down", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "acquaintance", 4)
	T.eq(Ro:Advance(MARA, rec), "none", "attraction 4: none")
	T.eq(rec.romance, nil, "nothing saved for none")
	rec.attraction = 5
	T.eq(Ro:Advance(MARA, rec), "interest", "attraction 5: interest")
	rec.attraction = 30
	T.eq(Ro:Advance(MARA, rec), "interest", "courtship needs a Friend")
	for k, v in pairs(AXES.friend) do rec[k] = v end
	T.eq(Ro:Advance(MARA, rec), "courtship", "a Friend at 25 or more: courtship")
	rec.attraction = 0
	T.eq(Ro:Advance(MARA, rec), "courtship", "never down")
	rec.attraction = 70
	T.eq(Ro:Advance(MARA, rec), "courtship", "declared only through its moment")
	-- with Active romance off the stages do not move
	NS.db.relations.romanceActive = false
	local other = Meet(LYRA, "Lyra", "friend", 30)
	T.eq(Ro:Advance(LYRA, other), "none", "Active romance off: no stage")
end)

---------------------------------------------------------------------------
-- Flirts in the dialogue
---------------------------------------------------------------------------
T.run("romance R1: flirt answers in the dialogue, after the neutral ones, one per talk", function()
	Fresh()
	Meet(MARA, "Mara", "friend", 0)
	-- without the interface of R2 nothing is offered
	NS.DialogueFrame.ROMANCE = nil
	Open(MARA, "Mara")
	T.eq(#FlirtChoices(), 0, "no flirt until the frame can draw them")
	N:End("closed")
	NS.DialogueFrame.ROMANCE = true
	local s = Open(MARA, "Mara")
	local neutral = 0
	for _, c in ipairs(s.choices) do if not c.romance then neutral = neutral + 1 end end
	local flirts = FlirtChoices()
	T.ok(neutral >= 1, "the neutral answers are there: " .. neutral)
	T.eq(#flirts, 1, "one flirt before courtship")
	T.eq(flirts[1].index, neutral + 1, "after the neutral answers")
	local key = flirts[1].flirt
	T.ok(key == "romtest:glance" or key == "romtest:compliment", "a flirt of the first stage, or one stage ahead: " .. key)
	T.ok(key ~= "romtest:inn_stay", "never a later one")
	local view = N:View()
	T.ok(view.choices[flirts[1].index].romance == true, "the view marks it (the heart of R2)")
	T.eq(view.choices[flirts[1].index].text, Ro:FlirtLabel(key, "it"), "the label in the language of now")
	NS.db.locale = "en"
	T.eq(N:View().choices[flirts[1].index].text, Ro:FlirtLabel(key, "en"), "a change of language applies at once")
	NS.db.locale = "it"
	-- choosing it: the NPC's answer is the node's line; the flirts leave; the neutral answers stay
	Ro.config.affinity.base = 90
	T.ok(N:Choose(flirts[1].index), "chosen")
	T.eq(N.session.line.text, "Un sorriso caldo.", "the NPC welcomes it")
	T.eq(#FlirtChoices(), 0, "no flirt for the rest of the talk")
	T.eq(#N.session.choices, neutral, "the neutral answers stay")
	T.eq(N.state, "choice", "the talk goes on")
	N:End("closed")
	-- the same NPC: no flirt for 6 hours
	Open(MARA, "Mara")
	T.eq(#FlirtChoices(), 0, "within 6 hours: none")
	N:End("closed")
	Later(6 * 3600)
	Open(MARA, "Mara")
	T.eq(#FlirtChoices(), 1, "after 6 hours: again")
	N:End("closed")
	-- Active romance off: none
	NS.db.relations.romanceActive = false
	Later(6 * 3600)
	Open(MARA, "Mara")
	T.eq(#FlirtChoices(), 0, "Active romance off: none")
	N:End("closed")
	T.eq(ChatSent(), nil, "nothing in chat")
end)

T.run("romance R1: two flirts from courtship, a tier-2 one only at night with the beloved", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 30)
	rec.romance = { st = "courtship", dt = time(), mo = { declaration = time() + DAY } }
	Open(MARA, "Mara")
	local list = FlirtChoices()
	T.eq(#list, 2, "two flirts at courtship")
	for _, f in ipairs(list) do T.ok(f.flirt ~= "romtest:inn_stay", "no invitation before the declaration") end
	N:End("closed")
	-- declared, at an inn at night, with the tone Intimate allowed
	rec.romance = { st = "declared", dt = time() }
	R:Data().beloved = MARA
	NS.db.relations.romanceTone = 2
	P.resting, P.hour = true, 23
	local seen = {}
	for i = 1, 6 do
		Ro.random = function() return (i - 1) / 6 end
		Ro.session.recent = {}
		rec.romance.t = nil
		Open(MARA, "Mara")
		for _, f in ipairs(FlirtChoices()) do seen[f.flirt] = true end
		N:End("closed")
	end
	T.ok(seen["romtest:inn_stay"], "the invitation at night, with Intimate allowed")
	-- the tone Courteous: never
	NS.db.relations.romanceTone = 1
	seen = {}
	for i = 1, 6 do
		Ro.random = function() return (i - 1) / 6 end
		rec.romance.t = nil
		Open(MARA, "Mara")
		for _, f in ipairs(FlirtChoices()) do seen[f.flirt] = true end
		N:End("closed")
	end
	T.ok(not seen["romtest:inn_stay"], "Courteous: no tier 2")
end)

---------------------------------------------------------------------------
-- Moments, one beloved
---------------------------------------------------------------------------
T.run("romance R1: the declaration, from a moment answer to the popup, and one beloved", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 55)
	rec.romance = { st = "courtship", dt = time() }
	T.eq(Ro:DueMoment(MARA, rec), "declaration", "due: courtship, attraction 50, a Friend, no beloved")
	-- without the popup no moment answer
	Open(MARA, "Mara")
	for _, f in ipairs(FlirtChoices()) do T.eq(f.moment, nil, "no moment answer without the popup") end
	N:End("closed")
	NS.RomanceFrame = FakePopup
	rec.romance.t = nil
	Open(MARA, "Mara")
	local list = FlirtChoices()
	T.eq(list[1] and list[1].moment, "declaration", "the moment's answer comes first")
	T.ok(N:Choose(list[1].index), "chosen")
	T.eq(N.state, "ended", "the dialogue closes")
	T.eq(N.last.reason, "romance", "for the popup")
	T.ok(OPENED and OPENED.npcID == MARA and OPENED.moment == "declaration", "the popup opens on the declaration")
	-- the popup's scene
	local scene = Ro:Scene(MARA, "declaration", "open", NS:BuildContext())
	T.eq(scene and scene.text, "La sala comune si svuota intorno a voi.", "the scene of the moment")
	-- a cold answer: asked again after 3 days
	Aim(MARA, 50)
	T.eq(Ro:Decide(MARA, "declaration", NS:BuildContext()), "cold", "cold")
	T.ok(Near(rec.romance.mo.declaration - time(), 3 * DAY), "again after 3 days")
	T.ok(Ro:DueMoment(MARA, rec) ~= "declaration", "meanwhile the declaration is not due")
	T.eq(Ro:Decide(MARA, "declaration", NS:BuildContext()), nil, "not open now")
	-- a refusal: after 7 days, a point of attraction
	rec.romance.mo = nil
	Aim(MARA, 10)
	local a = rec.attraction
	T.eq(Ro:Decide(MARA, "declaration", NS:BuildContext()), "refuse", "refused")
	T.ok(Near(rec.romance.mo.declaration - time(), 7 * DAY), "again after 7 days")
	T.ok(rec.attraction < a, "a point of attraction")
	-- welcome: the beloved, a permanent memory
	rec.romance.mo = nil
	Ro.config.affinity.base = 90
	T.eq(Ro:Decide(MARA, "declaration", NS:BuildContext()), "welcome", "welcomed")
	T.eq(rec.romance.st, "declared", "declared")
	T.eq(Ro:Beloved(), MARA, "the beloved")
	local mem = Entries("relation_declared")
	T.eq(#mem, 1, "one journal line")
	T.ok(mem[1].perm == true, "permanent")
	T.ok(not LM:Describe(mem[1]):find("Mara", 1, true), "no name in the journal")
	-- one beloved: nobody else is offered a declaration
	local other = Meet(LYRA, "Lyra", "friend", 60)
	other.romance = { st = "courtship", dt = time() }
	T.ok(Ro:DueMoment(LYRA, other) ~= "declaration", "the slot is taken")
end)

T.run("romance R1: a date by the situation and the tier; the first one in the journal", function()
	Fresh()
	NS.RomanceFrame = FakePopup
	local rec = Meet(MARA, "Mara", "friend", 40)
	rec.romance = { st = "declared" }
	R:Data().beloved = MARA
	T.eq(Ro:DueMoment(MARA, rec), "date", "a date is due")
	local function Ids(list) local o = {}; for _, d in ipairs(list) do table.insert(o, d.id) end; return table.concat(o, ",") end
	T.eq(Ids(Ro:DateOptions(MARA, NS:BuildContext())), "walk", "by day in the wild: a walk")
	P.resting, P.hour = true, 23
	IsIndoors = function() return true end
	T.eq(Ids(Ro:DateOptions(MARA, NS:BuildContext())), "walk,supper", "at an inn at night, Courteous: no night")
	NS.db.relations.romanceTone = 2
	T.eq(Ids(Ro:DateOptions(MARA, NS:BuildContext())), "walk,supper,night", "Intimate allowed: the night")
	IsIndoors = function() return false end
	T.eq(Ids(Ro:DateOptions(MARA, NS:BuildContext())), "walk,supper,stargaze,night", "outdoors at night: the stars too")
	-- a welcomed date clears a jealousy
	rec.romance.jl, rec.romance.jp = time() - 3600, true
	Ro.config.affinity.base = 90
	T.eq(Ro:Decide(MARA, "date", NS:BuildContext(), "supper"), "welcome", "welcomed")
	T.eq(rec.romance.jl, nil, "the jealousy is gone")
	T.eq(#Entries("relation_date"), 1, "the first date in the journal")
	T.eq(Ro:DueMoment(MARA, rec), nil, "at most one a day")
	T.eq(Ro:Decide(MARA, "date", NS:BuildContext(), "supper"), nil, "not again today")
	Later(Ro.config.moment.dateHours * 3600)
	T.eq(Ro:Decide(MARA, "date", NS:BuildContext(), "nope"), nil, "an option that does not fit")
	T.eq(Ro:Decide(MARA, "date", NS:BuildContext(), "walk"), "welcome", "another day, another date")
	T.eq(#Entries("relation_date"), 1, "only the first is in the journal")
end)

T.run("romance R1: the vow, offered in the popup to the beloved; ADR 0037 unchanged otherwise", function()
	-- with the popup: the vow waits for the moment
	Fresh()
	NS.RomanceFrame = FakePopup
	local rec = Meet(MARA, "Mara", "close", 79.9)
	rec.romance = { st = "declared", dt = time() }
	R:Data().beloved = MARA
	Talk(MARA, "Mara")
	N:End("closed")
	T.ok(rec.attraction >= 80, "over the top: " .. rec.attraction)
	T.eq(R:Resolve("npc", rec).derived, "lover", "beloved")
	T.eq(#Entries("relation_vow"), 0, "held for the popup")
	T.eq(Ro:DueMoment(MARA, rec), "vow", "the vow is due")
	T.eq(Ro:Decide(MARA, "vow", NS:BuildContext()), "welcome", "made in the popup")
	T.eq(rec.romance.st, "vowed", "vowed")
	T.ok(rec.noted and rec.noted.vow, "the vow of ADR 0037 is noted")
	T.eq(#Entries("relation_vow"), 1, "its journal line")
	-- Active romance off: ADR 0037 as it was (the vow by itself)
	Fresh()
	NS.RomanceFrame = FakePopup
	NS.db.relations.romanceActive = false
	rec = Meet(MARA, "Mara", "close", 79.9)
	Talk(MARA, "Mara")
	N:End("closed")
	T.eq(#Entries("relation_vow"), 1, "Active romance off: the vow by itself")
	T.eq(rec.romance, nil, "and no stage")
	-- Active romance on, no popup yet (before R2): the vow by itself, and the NPC becomes the beloved
	Fresh()
	rec = Meet(MARA, "Mara", "close", 79.9)
	Talk(MARA, "Mara")
	N:End("closed")
	T.eq(#Entries("relation_vow"), 1, "no popup: the vow by itself")
	T.eq(rec.romance and rec.romance.st, "vowed", "the stage follows")
	T.eq(Ro:Beloved(), MARA, "the beloved")
end)

---------------------------------------------------------------------------
-- Jealousy and the break-up
---------------------------------------------------------------------------
T.run("romance R1: jealousy, sure in the same town, by chance elsewhere, told once at the next meeting", function()
	Fresh()
	local beloved = Meet(MARA, "Mara", "close", 85)
	beloved.romance, beloved.noted = { st = "vowed" }, { vow = true }
	R:Data().beloved = MARA
	local other = Meet(LYRA, "Lyra", "friend", 10)
	beloved.town, other.town = "Razor Hill", "Razor Hill"   -- both live in the same town (N6)
	Ro.config.affinity.base = 90
	local out, why = Ro:Answer({ kind = "npc", npcID = LYRA, role = "innkeeper" }, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(out, "welcome", "Lyra welcomes it: " .. tostring(why and why.why))
	T.ok(beloved.romance.jl and beloved.romance.jp, "the beloved will hear of it")
	-- the next meeting: once
	local a, t = beloved.attraction, beloved.trust
	Narrator:ClearHistory()
	Talk(MARA, "Mara")
	N:End("closed")
	T.ok(beloved.attraction < a and beloved.trust < t, "attraction and trust go down")
	T.eq(#Entries("relation_jealous"), 1, "a journal line")
	T.ok(not LM:Describe(Entries("relation_jealous")[1]):find("Mara", 1, true), "no name in it")
	T.eq(#Notices(), 1, "one private line")
	T.eq(beloved.romance.jp, nil, "told once")
	Talk(MARA, "Mara")
	N:End("closed")
	T.eq(#Entries("relation_jealous"), 1, "not twice")
	-- the dialogue opens jealous while it lasts
	local s = Open(MARA, "Mara")
	T.eq(s.line.text, "Dunque. Oggi hai trovato tempo per me.", "the jealous opening")
	N:End("closed")
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = MARA } })
	T.eq(ctx.romanceJealous, true, "the condition romanceJealous")
	Later(8 * DAY)
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = MARA } })
	T.eq(ctx.romanceJealous, nil, "over after 7 days")
	-- far: by chance only
	Fresh()
	beloved = Meet(MARA, "Mara", "close", 85)
	beloved.romance = { st = "vowed" }
	R:Data().beloved = MARA
	other = Meet(LYRA, "Lyra", "friend", 10)
	beloved.town, other.town = "Razor Hill", "Elsewhere"
	Ro.config.affinity.base = 90
	Ro.random = function() return 0.5 end   -- over 0.35: not heard
	Ro:Answer({ kind = "npc", npcID = LYRA, role = "innkeeper" }, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(beloved.romance.jl, nil, "far, and the chance said no")
	other.romance.t = nil
	Ro.random = function() return 0.2 end   -- under 0.35: heard
	Ro:Answer({ kind = "npc", npcID = LYRA, role = "innkeeper" }, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.ok(beloved.romance.jl ~= nil, "far, and the chance said yes")
	-- before the vow: no jealousy (the owner's default)
	beloved.romance = { st = "declared" }
	other.town = beloved.town
	Ro:Answer({ kind = "npc", npcID = LYRA, role = "innkeeper" }, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(beloved.romance.jl, nil, "declared, not vowed: no jealousy")
	-- a refusal is never heard
	beloved.romance = { st = "vowed" }
	Ro.config.affinity.base = 0
	Ro:Answer({ kind = "npc", npcID = LYRA, role = "innkeeper" }, Ro.flirtByKey["romtest:glance"], NS:BuildContext())
	T.eq(beloved.romance.jl, nil, "a refused flirt: nothing to hear")
end)

T.run("romance R1: the break-up, only by the player; the vow's memory stays", function()
	Fresh()
	T.eq(select(2, Ro:BreakUp()), "none", "no beloved: nothing to end")
	local rec = Meet(MARA, "Mara", "close", 79.9)
	Talk(MARA, "Mara")   -- the vow by itself (no popup): vowed, the beloved
	N:End("closed")
	T.eq(Ro:Beloved(), MARA, "the beloved")
	local affection = rec.affection
	Narrator:ClearHistory()
	T.ok(Ro:BreakUp(), "ended")
	T.eq(rec.romance.st, "ended", "the stage")
	T.eq(Ro:Beloved(), nil, "the slot is free")
	T.ok(rec.attraction <= 15, "attraction at most 15: " .. rec.attraction)
	local t = R:Temper(MARA, rec, "romance_breakup").gain
	T.ok(Near(rec.affection, affection - 5 * t, 0.5), ("affection -5 (times the temperament %.2f)"):format(t))
	local mem = Entries("relation_breakup")
	T.eq(#mem, 1, "a journal line")
	T.ok(mem[1].perm == true, "permanent")
	T.eq(#Entries("relation_vow"), 1, "the vow's memory stays")
	T.eq(#Notices(), 1, "one private line")
	T.eq(ChatSent(), nil, "never chat")
	T.eq(select(2, Ro:Gate(MARA)), "ended", "no flirt for 30 days")
	Later(31 * DAY)
	Talk(MARA, "Mara")
	N:End("closed")
	T.ok(Ro.Stage(rec) ~= "ended", "after 30 days, a meeting starts again: " .. Ro.Stage(rec))
	T.ok(Ro:Gate(MARA), "flirts again")
end)

---------------------------------------------------------------------------
-- The tone and the 18+ consent
---------------------------------------------------------------------------
T.run("romance R1: the tone tiers and the 18+ consent", function()
	Fresh()
	T.eq(Ro:AllowedTier(), 1, "Courteous by default")
	T.eq(select(2, Ro:SetTone(3)), "adult", "Explicit needs the consent")
	T.ok(Ro:SetTone(2), "Intimate")
	T.eq(Ro:AllowedTier(), 2, "Intimate allowed")
	-- the consent: two steps, never a double click
	T.eq(Ro:SetAdult(true), "asked", "the warning first")
	T.eq(Ro:SetAdult(true), "wait", "a double click: too early")
	ADVANCE(NS.Consent.MIN_DELAY + 0.1)
	T.eq(Ro:SetAdult(true), "on", "the second step")
	T.ok(Ro:AdultOn(), "on, in the account")
	T.ok(Ro:SetTone(3), "Explicit can be chosen")
	T.eq(Ro:AllowedTier(), 2, "without the 18+ pack it reads as Intimate")
	T.eq(Ro:SetAdult(false), "off", "off in one step")
	T.eq(NS.db.relations.romanceTone, 2, "the tone back to 2 at most")
	-- the situation's tier
	local rec = Meet(MARA, "Mara", "friend", 40)
	rec.romance = { st = "courtship" }
	P.resting, P.hour = true, 23
	T.eq(Ro:SituationTier(rec, NS:BuildContext()), 1, "courtship: 1")
	rec.romance.st = "declared"
	T.eq(Ro:TierCap(rec, NS:BuildContext()), 2, "declared, an inn at night: 2")
	P.hour = 14
	T.eq(Ro:TierCap(rec, NS:BuildContext()), 1, "by day: 1")
	P.hour = 23
	local ctx = NS:BuildContext()
	ctx.emotion = { dominant = "melancholic" }
	T.eq(Ro:SituationTier(rec, ctx), 1, "in grief: 1")
	-- the mix of the tiers
	Ro.random = function() return 0.1 end
	T.eq(Ro:PickTier(2), 1, "low: Courteous")
	Ro.random = function() return 0.9 end
	T.eq(Ro:PickTier(2), 2, "high: Intimate")
	T.eq(Ro:PickTier(1), 1, "a cap of 1: always 1")
	-- an 18+ flirt is never offered with the consent off (the second lock)
	NS:RegisterDialogues({ pack = "rt18", romance18 = true, flirts = { { id = "x", kind = "glance", stage = { "none", "vowed" },
		tier = 3, label = { en = "An 18+ test answer.", it = "Una risposta 18+ di prova." } } } })
	NS.db.relations.romanceTone = 3
	rec.romance = { st = "declared" }
	R:Data().beloved = MARA
	Ro.random = function() return 0.99 end
	local seen
	for _ = 1, 3 do
		rec.romance.t = nil
		Open(MARA, "Mara")
		for _, f in ipairs(FlirtChoices()) do if f.flirt == "rt18:x" then seen = true end end
		N:End("closed")
	end
	T.ok(not seen, "an 18+ flirt: never with the consent off")
	Ro.flirtByKey["rt18:x"] = nil
	for i, f in ipairs(Ro.flirts) do if f.key == "rt18:x" then table.remove(Ro.flirts, i) end end
end)

---------------------------------------------------------------------------
-- Saved data
---------------------------------------------------------------------------
T.run("romance R1: the saved data, cleaned, and the migration from version 9", function()
	Fresh()
	local now = time()
	NS.cdb.relationships = { version = 9, players = {}, npcs = {
		[1] = { first = 1, last = 100, count = 3, affection = 70, attraction = 85, noted = { vow = true } },
		[2] = { first = 1, last = 200, count = 3, affection = 70, attraction = 90, noted = { vow = true } },
		[3] = { first = 1, last = 300, count = 3, affection = 40, attraction = 10 },
	} }
	R:Sanitize()
	local d = R:Data()
	T.eq(d.version, 10, "version 10")
	T.eq(d.beloved, 2, "the highest attraction is the beloved")
	T.eq(d.npcs[2].romance.st, "vowed", "vowed")
	T.eq(d.npcs[1].romance.st, "past", "the other keeps the vow as past")
	T.eq(d.npcs[3].romance, nil, "no vow, no romance")
	T.eq(#Entries("relation_vow") + #Entries("relation_declared"), 0, "no memory written by the migration")
	-- cleaning: bad stages and fields, times out of bounds, a beloved that is not declared
	NS.cdb.relationships = { version = 10, players = {}, beloved = 5, npcs = {
		[4] = { first = 1, last = 2, count = 1, romance = { st = "dancing" } },
		[5] = { first = 1, last = 2, count = 1, romance = { st = "courtship", t = now + 999999, cd = now + 400 * DAY,
			rf = 1e9, mm = -3, mo = { declaration = now + 900 * DAY, other = 3 }, extra = "x" } },
		[6] = { first = 1, last = 2, count = 1, romance = { st = "declared", jl = now - 10, jp = true } },
	} }
	R:Sanitize()
	d = R:Data()
	T.eq(d.npcs[4].romance, nil, "an unknown stage is dropped")
	local r = d.npcs[5].romance
	T.eq(r.st, "courtship", "a known stage kept")
	T.ok(r.t <= time(), "a time in the future is brought back")
	T.ok(r.cd <= time() + 5 * DAY, "the cooldown at most the longest rest")
	T.eq(r.rf, Ro.COUNTER_MAX, "a counter within bounds")
	T.eq(r.mm, nil, "a negative counter dropped")
	T.ok(r.mo.declaration <= time() + 8 * DAY, "a moment's time within bounds")
	T.eq(r.mo.other, nil, "an unknown moment dropped")
	T.eq(r.extra, nil, "an unknown field dropped")
	T.eq(d.beloved, nil, "a beloved who is not declared is let go")
	T.eq(d.npcs[6].romance.st, "past", "a declared NPC who is not the beloved becomes past")
	T.eq(d.npcs[6].romance.jl, nil, "and holds no jealousy")
	-- the beloved survives a /reload
	NS.cdb.relationships = { version = 10, players = {}, beloved = 7, npcs = {
		[7] = { first = 1, last = 2, count = 1, romance = { st = "vowed", jl = now - 10, jp = true } } } }
	R:Sanitize()
	d = R:Data()
	T.eq(d.beloved, 7, "the beloved kept")
	T.ok(d.npcs[7].romance.jl and d.npcs[7].romance.jp, "and the jealousy waiting")
end)

---------------------------------------------------------------------------
-- The validator
---------------------------------------------------------------------------
T.run("romance R1: the validator: flirts are the one exception; romance lines carry a tier", function()
	local function Errors(def)
		local before = #Ro.flirts
		NS:RegisterDialogues(def)
		local out = {}
		for _, p in ipairs(N:Check()) do
			if p.key:find("flirt:" .. def.pack .. ":", 1, true) then table.insert(out, p.msg) end
		end
		for i = #Ro.flirts, before + 1, -1 do
			Ro.flirtByKey[Ro.flirts[i].key] = nil
			table.remove(Ro.flirts, i)
		end
		return out
	end
	local function F(t)
		local f = { id = "f", kind = "glance", stage = { "none", "vowed" }, tier = 1, label = { en = "Smile back.", it = "Ricambia il sorriso." } }
		for k, v in pairs(t) do f[k] = v end
		return f
	end
	-- no neutrality test on a flirt: words a neutral answer could never say
	T.eq(#Errors({ pack = "v1", flirts = { F({ label = { en = "I love your smile.", it = "Amo il tuo sorriso." } }) } }), 0,
		"a flirt may say what a neutral answer cannot")
	T.ok(#Errors({ pack = "v2", flirts = { F({ kind = "kiss" }) } }) > 0, "an unknown kind")
	T.ok(#Errors({ pack = "v3", flirts = { F({ stage = { "vowed", "none" } }) } }) > 0, "a bad stage range")
	T.ok(#Errors({ pack = "v4", flirts = { F({ tier = 3 }) } }) > 0, "tier 3 outside an 18+ pack")
	T.ok(#Errors({ pack = "v5", romance18 = true, flirts = { F({ tier = 1 }) } }) > 0, "tiers 1-2 inside an 18+ pack")
	T.eq(#Errors({ pack = "v6", romance18 = true, flirts = { F({ tier = 3 }) } }), 0, "tier 3 inside an 18+ pack")
	T.ok(#Errors({ pack = "v7", flirts = { F({ label = { en = "Only English." } }) } }) > 0, "a missing language")
	T.ok(#Errors({ pack = "v8", flirts = { F({ label = { en = ("x"):rep(71), it = "Va bene." } }) } }) > 0, "more than 70 bytes")
	T.ok(#Errors({ pack = "v9", flirts = { F({ label = { en = "Smile at {name}.", it = "Sorridi." } }) } }) > 0, "a placeholder")
	T.ok(#Errors({ pack = "v10", flirts = { F({ kind = "moment" }) } }) > 0, "a moment flirt without its moment")
	T.ok(#Errors({ pack = "v11", flirts = { F({ roles = { "jester" } }) } }) > 0, "an unknown role")
	-- a script's answer can never claim the exception
	NS:RegisterDialogues({ pack = "rtv", scripts = { ["npc:" .. MARA] = { npcID = MARA, extends = "innkeeper",
		choices = { leak = { label = { en = "Wink.", it = "Fai l'occhiolino." }, romance = true } } } } })
	local leak
	for _, p in ipairs(N:Check()) do if p.key == "npc:" .. MARA and p.msg:find("romance", 1, true) then leak = p end end
	T.ok(leak ~= nil and leak.level == "error", "`romance = true` in a script: an error")
	N.scripts["npc:" .. MARA], N.resolved = nil, {}
	-- romance lines: a tier always, never the character's voice
	NS:RegisterPack({ id = "rtbad", languages = { "enUS", "itIT" },
		registry = { ["rtbad.a"] = Rule("romance_inner", "inner", { romanceStage = "vowed" }),
			["rtbad.b"] = Rule("romance_inner", "character", { romanceTier = 1 }) },
		texts = { enUS = { ["rtbad.a"] = "A thought.", ["rtbad.b"] = "A word." },
			itIT = { ["rtbad.a"] = "Un pensiero.", ["rtbad.b"] = "Una parola." } } })
	local r = Validator:Run({ packs = { "rtbad" } })
	local codes = {}
	for _, e in ipairs(r.errors) do codes[e.code] = (codes[e.code] or 0) + 1 end
	T.eq(codes.romanceTier, 1, "a romance line without romanceTier")
	T.eq(codes.romanceVoice, 1, "a romance line in the character's voice")
	r = Validator:Run({ packs = { "romtest_lines" } })
	T.eq(#r.errors, 0, "the test lines are valid: " .. tostring(r.errors[1] and r.errors[1].msg))
	-- the conditions
	for _, when in ipairs({ { romanceStage = "courtship" }, { romanceTier = 2 }, { romanceOutcome = { "welcome", "cold" } },
		{ romanceMoment = "date" }, { romancePhase = "open" }, { romanceDate = "night" }, { romanceKind = "glance" },
		{ romanceJealous = true }, { romanceNight = true }, { romanceBeloved = true }, { romanceOther = false } }) do
		local k = next(when)
		T.eq(#Engine.CheckConditions(when), 0, "valid: " .. k)
	end
	T.ok(#Engine.CheckConditions({ romanceStage = "married" }) > 0, "an unknown stage")
	T.ok(#Engine.CheckConditions({ romanceTier = "two" }) > 0, "a tier is a number")
	T.ok(Engine.UsesRelation({ romanceStage = "vowed" }), "romanceStage names a relation")
end)

---------------------------------------------------------------------------
-- Context, the target, the texts, privacy
---------------------------------------------------------------------------
T.run("romance R1: the context of a line names the stage and the beloved", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 60)
	rec.romance = { st = "declared" }
	R:Data().beloved = MARA
	Meet(LYRA, "Lyra", "friend", 5)
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = MARA } })
	T.eq(ctx.romanceStage, "declared", "romanceStage")
	T.eq(ctx.romanceBeloved, true, "romanceBeloved")
	T.eq(ctx.romanceOther, nil, "not another")
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = LYRA } })
	T.eq(ctx.romanceOther, true, "another has the heart")
	T.ok(Engine.Match({ romanceOther = true, romanceStage = "none" }, ctx), "the conditions match")
	P.hour = 23
	T.eq(NS:BuildContext().romanceNight, true, "the night of romance")
	P.hour = 14
	T.eq(NS:BuildContext().romanceNight, nil, "by day")
	NS.db.relations.attraction = false
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = MARA } })
	T.eq(ctx.romanceStage, nil, "the attraction axis off: nothing")
end)

T.run("romance R1: a dialogue opened from the target reads the NPC's sex and kind there", function()
	Fresh()
	Meet(MARA, "Mara")
	R.session.kin = nil
	P.npc = nil
	P.target = { name = "Mara", guid = Guid(MARA), sex = FEMALE, reaction = 5, ctype = "Humanoid", ctypeID = 7 }
	T.ok(not R:RomanceEligible(MARA), "nothing read yet")
	local who = N:Identify()
	T.ok(who and who.npcID == MARA, "the target is the dialogue's NPC")
	T.ok(R:RomanceEligible(MARA), "read from the target")
	-- the client says nothing: an older reading is not replaced
	R:NoteKin(MARA, FEMALE, true)
	P.target = { name = "Mara", guid = Guid(MARA), reaction = 5 }
	N:Identify()
	T.ok(R:RomanceEligible(MARA), "a reading is never replaced by nothing")
	P.target = nil
end)

T.run("romance R1: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "consent_romance_adult_text" }
	for name in pairs(Ro.MEMORIES) do
		table.insert(keys, "mem_kind_relation_" .. name)
		table.insert(keys, "rel_mem_" .. name)
	end
	for i = 1, Ro.VARIANTS do
		table.insert(keys, "rel_jealous_" .. i)
		table.insert(keys, "rel_breakup_" .. i)
	end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
		T.ok(not (it[k] or ""):find("http", 1, true) and not (en[k] or ""):find("http", 1, true), "no link in " .. k)
	end
	for i = 1, Ro.VARIANTS do
		for _, k in ipairs({ "rel_jealous_" .. i, "rel_breakup_" .. i }) do
			local _, ni = it[k]:gsub("%%s", ""); local _, ne = en[k]:gsub("%%s", "")
			T.ok(ni == 1 and ne == 1, k .. ": one value, the name")
		end
	end
	T.ok(en.consent_romance_adult_text:find("18", 1, true) and en.consent_romance_adult_text:find("chat", 1, true),
		"the warning says 18+ and that nothing goes to chat")
end)

T.run("romance R1: no error intercepted", function()
	Ro.config.affinity.base = BASE
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
end)
