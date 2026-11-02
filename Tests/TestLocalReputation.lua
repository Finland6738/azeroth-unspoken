-- Tests of N6 (#218): local reputation (Systems/Relationships.lua, Data/Relationships.lua `towns` and `rivalries`,
-- Data/NPCs.lua rivalries, Engine/RuleEngine.lua, Engine/TemplateRenderer.lua {title}, UI/RelationsFrame.lua).
--   - an NPC belongs to the town where you meet them: the subzone, folded by the aliases, or the city in a capital;
--   - word gets around: a weakened share of every change goes to the town's word, both ways, within a limit; the other
--     NPCs hear it at their next meeting, a newcomer all of it, and nobody hears their own share back;
--   - the esteem of a town earns an honorary title the narrator uses there; a town that remembers a broken oath
--     withholds it; a title held is kept above a share of its threshold;
--   - curated rivals notice when you grow close to the other: once per rival, a little less warmth, a private notice;
--   - narration only and private: never chat, never in combat, an option, a quota, one notice per meeting.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local DAY = 86400
local ROOT = "AzerothUnspokenRelations"
local ELWYNN, STORMWIND = 1429, 1453

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end

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
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty, R.localQueue = nil, nil, nil, nil, true, nil
	NS.Interlocutor.roles = {}
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	-- N5's favours and nicknames have notices of their own: off here, so the notices counted are this step's
	NS.db.relations.favours, NS.db.relations.nicknames = false, false
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid, P.instance = nil, nil, nil, false, false, nil
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Elwynn Forest", "Goldshire", false, false, 100, 100, ELWYNN
	P.level, P.hour, P.isDay, P.sex = 30, 14, nil, 2
	P.weather = { type = 0, intensity = 0 }
	SECRET_UNITS = {}
	QUEST_READY, QUEST_GONE, QUEST_DONE, ABANDON_QUEST = {}, {}, {}, nil
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "en", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.output.privateNarrator = true
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	if RelationsFrame then RelationsFrame:Close() end
	SENT = {}
	ADVANCE(20)
end

local function Talk(id, name, wowEvent)
	P.npc = { name = name, guid = Guid(id) }
	ADVANCE(16)
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function Accept(id, name, questID)
	Talk(id, name, "QUEST_DETAIL")
	FIRE("QUEST_ACCEPTED", questID)
end

local function TurnIn(id, name, questID)
	Talk(id, name, "QUEST_COMPLETE")
	FIRE("QUEST_TURNED_IN", questID, 100, 0)
	FIRE("QUEST_REMOVED", questID, false)
end

local function Npc(id) return R:Get("npc", id) end
local function Towns() return NS.cdb.relationships.towns end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		if h.notice then table.insert(out, h.text) end
	end
	return out
end

local function Entries(kind)
	local out = {}
	for _, e in ipairs(LM.session.entries) do if e.kind == kind then table.insert(out, e) end end
	return out
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

-- an NPC of the current town made a Friend, then met again so the town counts it
local function Friend(id, name)
	Talk(id, name)
	local rec = Npc(id)
	rec.trust, rec.affection, rec.loyalty, rec.familiarity, rec.today = 60, 50, 30, 60, nil
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "friend", name .. ": set up as a Friend")
	return rec
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
T.run("local reputation: the numbers and lists are data", function()
	Fresh()
	local c = R.config.towns
	T.ok(c.word.share > 0 and c.word.share < 1, "a weakened share")
	T.ok(c.word.limit > 0 and c.word.notice > 0 and c.word.notice < c.word.limit, "a limit and a notice threshold")
	T.ok(c.word.axes.trust and c.word.axes.affection and not c.word.axes.familiarity, "the word is about value, not familiarity")
	T.ok(c.word.skip.rival_noticed, "a rival's spite does not get around")
	T.eq(c.aliases["Lion's Pride Inn"], "Goldshire", "an inn folded into its town")
	T.ok(c.esteem.minNpcs >= 2 and c.esteem.keep > 0 and c.esteem.keep < 1, "esteem rules")
	T.ok(#R.titles >= 2 and R.titles[1].esteem < R.titles[2].esteem, "titles by rising esteem")
	T.eq(R.titles[1].id, "friend", "the first title")
	T.ok(Engine.CONDITION_VALUES.townTitle.friend and Engine.CONDITION_VALUES.townTitle.champion, "titles known to the validator")
	T.eq(R.config.rivalries.band, "friend", "a rival notices from Friend")
	T.ok(R.config.increments.rival_noticed.gain.affection < 0, "noticing costs a little warmth")
	-- the curated pairs hold both ways
	T.eq(R.rivals[295][6740], "trade", "Farley and Allison"); T.eq(R.rivals[6740][295], "trade", "both ways")
	T.eq(R.rivals[514][54], "craft", "the two forges of Goldshire")
	T.eq(R:RegisterRivalries({ { 1, 1 }, { 2, "x" }, { 3, 4, kind = "love" }, "nonsense" }), 0, "bad pairs refused")
	-- a pack may change a number or add a title; nonsense is refused
	R:RegisterData({ towns = { word = { share = 0.5, axes = { bogus = true } }, titles = { { id = "Bad Id", esteem = 1, name = {} } } },
		rivalries = { band = "nonsense" } })
	T.eq(c.word.share, 0.5, "a number changed"); T.eq(c.word.axes.bogus, nil, "an unknown axis refused")
	T.eq(R.titleById["Bad Id"], nil, "a bad title id refused"); T.eq(R.config.rivalries.band, "friend", "an unknown band refused")
	R:RegisterData({ towns = { word = { share = 0.25 } } })
end)

---------------------------------------------------------------------------
-- Towns
---------------------------------------------------------------------------
T.run("the town is the subzone, its inn, or the whole city in a capital", function()
	Fresh()
	T.eq(R:TownHere(), "Goldshire", "the subzone")
	P.subzone = "Lion's Pride Inn"
	T.eq(R:TownHere(), "Goldshire", "the inn is Goldshire")
	P.subzone = ""
	T.eq(R:TownHere(), nil, "in the open: no town")
	P.zone, P.subzone, P.mapID = "Stormwind City", "Trade District", STORMWIND
	local name, map = R:TownHere()
	T.eq(name, "Stormwind City", "a capital is one town"); T.eq(map, STORMWIND, "with its map")
	P.instance = true
	T.eq(R:TownHere(), nil, "in an instance: no town")
	P.instance = nil
	-- a meeting makes the town and puts the NPC in it
	Talk(295, "Innkeeper Allison")
	T.eq(Npc(295).town, "Stormwind City", "the NPC belongs to the city")
	T.ok(Towns()["Stormwind City"] ~= nil and Towns()["Stormwind City"].map == STORMWIND, "the town keeps its map")
	-- met in the open: no town, nothing spreads
	P.zone, P.subzone, P.mapID = "Elwynn Forest", "", ELWYNN
	Talk(7100, "Wandering peddler")
	T.eq(Npc(7100).town, nil, "no town in the open")
end)

---------------------------------------------------------------------------
-- Word gets around
---------------------------------------------------------------------------
T.run("word gets around: a weakened share, both ways, within a limit", function()
	Fresh()
	local w = R.config.towns.word
	Talk(7001, "Marshal Dughan")
	local a = Npc(7001)
	local rec, gained = R:RecordNPC(7001, "Marshal Dughan", "quest_turnin")
	T.ok(gained.trust > 0, "a turn-in gives trust")
	local word = Towns().Goldshire.word
	T.ok(math.abs(word.trust - gained.trust * w.share) < 1e-9, "the town hears a share of it")
	T.ok(math.abs(a.heard.trust - word.trust) < 1e-9, "Dughan counts his own share as heard")
	T.eq(Towns().Goldshire.quests, 1, "a quest turned in there")
	-- meeting Dughan again: his own share does not come back to him
	local t1 = a.trust
	R:RecordNPC(7001, "Marshal Dughan", "gossip")
	T.eq(a.trust, t1, "no double counting")
	-- a newcomer hears all of it, and only the value axes
	Talk(7002, "Remy")
	local b = Npc(7002)
	T.ok(math.abs((b.trust or 0) - word.trust * R:Temper(7002, b).gain) < 1e-6, "the newcomer heard the word: " .. tostring(b.trust))
	T.ok((b.familiarity or 0) <= R.config.increments.gossip.gain.familiarity + 1e-9, "familiarity is not heard")
	-- the limit
	for _ = 1, 400 do R:Spread(a, { trust = 10, affection = 10 }, "quest_turnin") end
	T.eq(Towns().Goldshire.word.trust, w.limit, "never beyond the limit")
	-- bad news spreads too: the newcomer, met again, hears what changed since
	Talk(7002, "Remy")
	T.ok(math.abs(b.heard.trust - w.limit) < 1e-9, "met again, Remy heard the word grow to its limit")
	local before = b.trust
	R:Spread(a, { trust = -40 }, "promise_broken")
	Talk(7002, "Remy")
	T.ok(b.trust < before, "a broken word reached the others too")
	-- a source in `skip` does not spread
	local now = Towns().Goldshire.word.trust
	R:Spread(a, { trust = -10 }, "rival_noticed")
	T.eq(Towns().Goldshire.word.trust, now, "a rival's spite stays with them")
	-- another town hears nothing
	P.subzone = "Northshire Valley"
	Talk(7003, "Brother Paxton")
	T.eq(Npc(7003).trust, nil, "Northshire knows nothing of Goldshire")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("word gets around a broken promise to the giver's town, even when far away", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	P.zone, P.subzone, P.mapID = "Westfall", "Sentinel Hill", 1436
	ADVANCE(10)
	FIRE("QUEST_REMOVED", 54, false)
	ADVANCE(R.config.promises.settle + 1)
	R:SettlePromises()
	local word = Towns().Goldshire.word
	T.ok(word and word.trust < 0, "Goldshire heard of it")
	T.eq(Towns()["Sentinel Hill"], nil, "not where the character stands")
end)

T.run("an NPC met in another town takes its word as heard", function()
	Fresh()
	Talk(7001, "Marshal Dughan")
	Towns().Goldshire.word = { trust = 10 }
	P.zone, P.subzone, P.mapID = "Stormwind City", "Trade District", STORMWIND
	Talk(7002, "Visitor")    -- makes the city
	Towns()["Stormwind City"].word = { trust = 8 }
	local trust = Npc(7001).trust or 0
	Talk(7001, "Marshal Dughan")
	T.eq(Npc(7001).trust or 0, trust, "no hearsay for one who moved")
	T.eq(Npc(7001).heard.trust, 8, "the city's word counts as heard")
	T.eq(Npc(7001).town, "Stormwind City", "now of the city")
end)

T.run("a newcomer's greeting: a private notice when the word is good or bad", function()
	for _, lang in ipairs({ "en", "it" }) do
		Fresh()
		NS.db.locale = lang
		Talk(7001, "Marshal Dughan")
		Towns().Goldshire.word = { trust = 12, affection = 12 }
		Talk(7002, "Remy")
		local n = Notices()
		T.eq(#n, 1, lang .. ": one notice")
		T.ok(n[1] and n[1]:find("Remy", 1, true) and n[1]:find("Goldshire", 1, true), lang .. ": the NPC and the town: " .. tostring(n[1]))
		T.ok(Npc(7002).trust > 0, lang .. ": a warmer greeting")
		Towns().Goldshire.word = { trust = -12, affection = -12 }
		Talk(7003, "Smith Argus")
		n = Notices()
		T.eq(#n, 2, lang .. ": a second notice")
		T.ok(n[2] == NS:L("rel_word_bad_1", "Smith Argus", "Goldshire"), lang .. ": a colder one: " .. tostring(n[2]))
		T.ok((Npc(7003).trust or 0) < 0, lang .. ": a colder greeting")
		-- an old acquaintance is no newcomer: no notice
		Talk(7001, "Marshal Dughan")
		T.eq(#Notices(), 2, lang .. ": no notice for one already known")
	end
	-- the option off, combat, paused
	Fresh()
	Talk(7001, "Marshal Dughan")
	Towns().Goldshire.word = { trust = 12, affection = 12 }
	NS.db.relations.localNotices = false
	Talk(7002, "A")
	P.combat = true
	NS.db.relations.localNotices = true
	Talk(7003, "B")
	P.combat = false
	NS.paused = true
	Talk(7004, "C")
	NS.paused = false
	T.eq(#Notices(), 0, "option off, combat, paused: nothing")
	T.ok(Npc(7002).trust > 0 and Npc(7003).trust > 0, "the word was heard all the same")
	-- the quota
	for i = 5, 12 do Talk(7000 + i, "N" .. i) end
	T.eq(#Notices(), R.config.towns.perSession, "at most perSession")
	T.eq(ChatSent(), nil, "never in chat")
	NS.db.locale = "en"
end)

---------------------------------------------------------------------------
-- Honorary titles
---------------------------------------------------------------------------
T.run("enough esteem in a town earns an honorary title the narrator uses there", function()
	Fresh()
	Friend(7001, "Marshal Dughan")
	Friend(7002, "Remy")
	Talk(7001, "Marshal Dughan")
	T.eq(Towns().Goldshire.title, nil, "two friends: not enough NPCs")
	Narrator:ClearHistory()
	Friend(7003, "Smith Argus")
	Talk(7003, "Smith Argus")
	local esteem, n = R:Esteem("Goldshire")
	T.eq(n, 3, "three NPCs"); T.ok(esteem >= R.titles[1].esteem, "esteem enough: " .. esteem)
	T.eq(Towns().Goldshire.title, "friend", "Friend of Goldshire")
	local notes = Notices()
	T.eq(#notes, 1, "one notice"); T.eq(notes[1], NS:L("rel_title_1", "Goldshire", "Friend of Goldshire"), "the title notice")
	local mem = Entries("relation_title")
	T.eq(#mem, 1, "a journal line")
	T.eq(mem[1].perm, true, "kept for good")
	T.eq(LM:Describe(mem[1]), NS:L("rel_mem_title", "Friend of Goldshire"), "described: " .. tostring(LM:Describe(mem[1])))
	T.eq(LM:Describe(mem[1]):find("Argus", 1, true), nil, "no NPC name")
	-- the context and {title}
	local ctx = NS:BuildContext()
	T.eq(ctx.townTitle, "friend", "ctx.townTitle"); T.eq(ctx.townTitleName, "Friend of Goldshire", "ctx.townTitleName")
	T.eq(ctx.townName, "Goldshire", "ctx.townName")
	T.eq(Engine:Render("{title}.", "en", ctx), "Friend of Goldshire.", "{title}")
	T.ok(Engine.Match({ townTitle = "friend" }, ctx) and not Engine.Match({ townTitle = "champion" }, ctx), "townTitle")
	-- Italian, by the character's sex
	NS.db.locale = "it"
	P.sex = 3
	T.eq(R:TitleName("friend", "Goldshire"), "Amica di Goldshire", "the feminine form")
	P.sex = 2
	T.eq(R:TitleName("friend", "Goldshire"), "Amico di Goldshire", "the masculine form")
	NS.db.locale = "en"
	-- elsewhere the title is not used
	P.subzone = "Northshire Valley"
	ctx = NS:BuildContext()
	T.eq(ctx.townTitle, nil, "not in another town")
	T.ok(not Engine.Match({ townTitle = "friend" }, ctx), "the condition is false elsewhere")
	P.subzone = "Goldshire"
	-- never twice: no new notice, no new journal line
	Talk(7002, "Remy")
	T.eq(#Entries("relation_title"), 1, "the journal line once"); T.eq(#Notices(), 1, "the notice once")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("quests turned in count; a title is kept above a share of its threshold, then lost", function()
	Fresh()
	local cfg = R.config.towns.esteem
	Friend(7001, "Marshal Dughan"); Friend(7002, "Remy"); Friend(7003, "Smith Argus")
	Talk(7003, "Smith Argus")
	T.eq(Towns().Goldshire.title, "friend", "held")
	local esteem = R:Esteem("Goldshire")
	Towns().Goldshire.quests = math.ceil((R.titles[2].esteem - esteem) / cfg.perQuest) + 1
	Talk(7003, "Smith Argus")
	T.eq(Towns().Goldshire.title, "champion", "quests raise the esteem: Champion of Goldshire")
	T.eq(Towns().Goldshire.best, "champion", "the best held")
	-- the esteem falls a little: kept
	Towns().Goldshire.quests = math.ceil((R.titles[2].esteem * cfg.keep - R:Esteem("Goldshire") + Towns().Goldshire.quests * cfg.perQuest) / cfg.perQuest) + 1
	R:UpdateTitle("Goldshire")
	T.ok(R:Esteem("Goldshire") < R.titles[2].esteem, "below the threshold now")
	T.eq(Towns().Goldshire.title, "champion", "kept above keep x the threshold")
	-- it falls a lot: lost, down to what the esteem still holds
	Towns().Goldshire.quests = 0
	R:UpdateTitle("Goldshire")
	T.eq(Towns().Goldshire.title, "friend", "back to Friend")
	Npc(7001).trust, Npc(7001).affection, Npc(7001).loyalty = -60, -60, -60
	R:UpdateTitle("Goldshire")
	T.eq(Towns().Goldshire.title, nil, "lost")
	T.eq(Towns().Goldshire.best, "champion", "the best is remembered")
	T.eq(#Entries("relation_title"), 2, "one journal line per title, ever")
end)

T.run("a town that remembers a broken oath withholds the title", function()
	Fresh()
	Friend(7001, "Marshal Dughan"); Friend(7002, "Remy")
	NS.cdb.relationships.marks[ELWYNN] = time()
	Friend(7003, "Smith Argus")
	Talk(7003, "Smith Argus")
	T.eq(Towns().Goldshire.title, nil, "no new title while the oath is remembered")
	NS.cdb.relationships.marks = {}
	Talk(7003, "Smith Argus")
	T.eq(Towns().Goldshire.title, "friend", "given once the mark is gone")
	NS.cdb.relationships.marks[ELWYNN] = time() - DAY
	local id, withheld = R:TitleOf("Goldshire")
	T.eq(id, "friend", "still held"); T.eq(withheld, true, "but withheld")
	local ctx = NS:BuildContext()
	T.eq(ctx.townTitle, nil, "the narrator does not use it"); T.eq(ctx.oathbreakerHere, true, "the place remembers")
	T.ok(R:TownText(7003, Npc(7003)):find(NS:L("rel_title_withheld", "Friend of Goldshire"), 1, true) ~= nil, "the window says why")
end)

---------------------------------------------------------------------------
-- Rivalries
---------------------------------------------------------------------------
T.run("growing close to one makes the other notice", function()
	for _, lang in ipairs({ "en", "it" }) do
		Fresh()
		NS.db.locale = lang
		Friend(295, "Innkeeper Farley")   -- cheerful
		P.zone, P.subzone, P.mapID = "Stormwind City", "Trade District", STORMWIND
		Narrator:ClearHistory()
		Talk(6740, "Innkeeper Allison")   -- no temperament: jealous
		local b = Npc(6740)
		T.ok(b.rival and b.rival.npc == 295, lang .. ": Allison noticed Farley")
		T.ok((b.affection or 0) < 0, lang .. ": a little less warmth")
		local n = Notices()
		T.eq(#n, 1, lang .. ": one notice")
		T.eq(n[1], NS:L("rel_rival_jealous_1", "Innkeeper Allison", "Innkeeper Farley"), lang .. ": jealous: " .. tostring(n[1]))
		local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 6740 } })
		T.eq(ctx.relRival, "jealous", lang .. ": ctx.relRival")
		T.ok(Engine.Match({ relRival = "jealous" }, ctx) and not Engine.Match({ relRival = "ironic" }, ctx), lang .. ": relRival")
		-- once per rival
		local aff = b.affection
		Talk(6740, "Innkeeper Allison")
		T.eq(b.affection, aff, lang .. ": not twice")
		T.eq(#Notices(), 1, lang .. ": no second notice")
		-- the town does not share her spite
		T.eq((Towns()["Stormwind City"].word or {}).affection, nil, lang .. ": not spread")
		-- the window
		T.ok(R:TownText(6740, b):find(NS:L("rel_rival_noticed", "Innkeeper Farley"), 1, true) ~= nil, lang .. ": in the detail")
	end
	NS.db.locale = "en"
	-- ironic from a cheerful NPC; the curated name when the rival was never met
	Fresh()
	Friend(6740, "Innkeeper Allison")
	Narrator:ClearHistory()
	Talk(295, "Innkeeper Farley")
	T.eq(Notices()[1], NS:L("rel_rival_ironic_1", "Innkeeper Farley", "Innkeeper Allison"), "ironic: " .. tostring(Notices()[1]))
	T.ok(R:TownText(54, { }):find("Smith Argus", 1, true) ~= nil, "a rival never met: the curated name")
	-- a rival no longer close is let go; close again, noticed again
	local f = Npc(295)
	Npc(6740).trust, Npc(6740).affection = 0, 0
	Talk(295, "Innkeeper Farley")
	T.eq(f.rival, nil, "let go")
	T.eq(NS:BuildContext({ relationSubject = { kind = "npc", id = 295 } }).relRival, nil, "no relRival")
	Npc(6740).trust, Npc(6740).affection = 60, 50
	Talk(295, "Innkeeper Farley")
	T.ok(f.rival ~= nil, "noticed again")
	-- the memory of it fades from the content after `days`
	f.rival.t = time() - (R.config.rivalries.days + 1) * DAY
	T.eq(NS:BuildContext({ relationSubject = { kind = "npc", id = 295 } }).relRival, nil, "faded")
	-- an NPC without rivals notices nothing
	Friend(7001, "Marshal Dughan")
	Talk(7002, "Remy")
	T.eq(Npc(7002).rival, nil, "no rival, nothing")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("one local notice per meeting: the title first", function()
	Fresh()
	Friend(7001, "Marshal Dughan"); Friend(7002, "Remy")
	Towns().Goldshire.word = { trust = 12, affection = 12 }
	-- the third NPC, met for the first time and already a friend through the word and a little help: title and word
	Narrator:ClearHistory()
	Towns().Goldshire.quests = 30
	Talk(7003, "Smith Argus")
	local n = Notices()
	T.eq(#n, 1, "one notice")
	T.ok(n[1]:find("Friend of Goldshire", 1, true) ~= nil, "the title wins: " .. tostring(n[1]))
	T.eq(R.localQueue, nil, "nothing left waiting")
end)

---------------------------------------------------------------------------
-- Conditions, content, saved data, window
---------------------------------------------------------------------------
T.run("the conditions: townTitle, townWord, relRival", function()
	Fresh()
	Talk(7001, "Marshal Dughan")
	local ctx = NS:BuildContext()
	T.ok(not Engine.Match({ townWord = "good" }, ctx) and not Engine.Match({ townWord = "bad" }, ctx), "no word yet")
	Towns().Goldshire.word = { trust = 12, affection = 12 }
	ctx = NS:BuildContext()
	T.eq(ctx.townWord, "good", "good"); T.ok(Engine.Match({ townWord = "good" }, ctx), "townWord")
	Towns().Goldshire.word = { trust = -12 }
	T.eq(NS:BuildContext().townWord, "bad", "bad")
	T.eq(#Engine.CheckConditions({ townTitle = "friend", townWord = { "good", "bad" }, relRival = "ironic" }), 0, "valid")
	T.ok(#Engine.CheckConditions({ townWord = "great" }) > 0, "an unknown word refused")
	T.ok(#Engine.CheckConditions({ townTitle = "king" }) > 0, "an unknown title refused")
	T.ok(Engine.UsesRelation({ relRival = "jealous" }), "relRival names a relation")
	T.ok(not Engine.UsesRelation({ townTitle = "friend" }), "townTitle does not")
	T.ok(not Engine.Match({ relRival = "jealous" }, NS:BuildContext()), "nobody: false")
	-- the content
	for _, id in ipairs({ "rel.npc.town.title", "rel.npc.town.word.good", "rel.npc.town.word.bad", "rel.npc.rival.noticed" }) do
		local p = Engine.byId[id]
		T.ok(p ~= nil and p.speaker == "inner", id .. ": the inner voice")
		T.ok(p and #(p.text.en or {}) >= 2 and #(p.text.it or {}) >= 2, id .. ": two variants each")
	end
end)

T.run("saved data: version 4 and version 5 (N5) data move to the current version, nothing lost", function()
	for _, v in ipairs({ 4, 5 }) do
		Fresh()
		NS.cdb.relationships = { version = v, players = {}, promises = {}, marks = {},
			npcs = { [7001] = { first = 1, last = 2, count = 3, name = "Marshal Dughan", trust = 40, oathT = time() - DAY,
				favour = { k = "return", t = time() - 60, e = time() + DAY }, favourN = 2, quests = 4, nick = "anvil" } } }
		R.readOnly = false
		R:Sanitize()
		local d, rec = NS.cdb.relationships, NS.cdb.relationships.npcs[7001]
		T.eq(d.version, R.VERSION, "version " .. v .. " moves to the current one")
		T.eq(R.readOnly, false, "version " .. v .. ": writable")
		T.ok(rec.trust == 40 and rec.oathT ~= nil, "version " .. v .. ": the axes and N4's mark kept")
		if v == 5 then
			T.ok(rec.favour and rec.favour.k == "return" and rec.favourN == 2 and rec.quests == 4 and rec.nick == "anvil",
				"version 5: N5's favour, counters and nickname kept")
		end
		T.ok(rec.town == nil and rec.heard == nil and rec.rival == nil and next(d.towns) == nil, "version " .. v .. ": no town yet")
		-- the first meeting after the upgrade puts the NPC in a town and keeps the rest
		Talk(7001, "Marshal Dughan")
		T.eq(rec.town, "Goldshire", "version " .. v .. ": now of Goldshire")
		if v == 5 then T.eq(rec.nick, "anvil", "the nickname still there") end
	end
end)

T.run("saved data: version 6, towns and NPC fields cleaned, reset", function()
	Fresh()
	T.eq(R.VERSION, 7, "relationships.version 7 (N5 made it 5, N6 6, N1 7)")
	local d = NS.cdb.relationships
	d.npcs[7001] = { first = 1, last = 2, count = 1, town = "Goldshire\1", heard = { trust = 99, familiarity = 5, bogus = 1, loyalty = 0 },
		rival = { npc = 295, t = time() + 999 } }
	d.npcs[7002] = { first = 1, last = 2, count = 1, rival = { npc = "x" } }
	d.towns = { Goldshire = { t = time() + 50, map = ELWYNN, word = { trust = 40, familiarity = 3 }, quests = -2, title = "king", best = "friend" },
		[42] = { t = 1 }, Bad = "x", Old = { t = 0 } }
	R:Sanitize()
	local a = d.npcs[7001]
	T.eq(a.town, "Goldshire", "the town cleaned like a zone name")
	T.eq(a.heard.trust, R.config.towns.word.limit, "heard within the limit")
	T.eq(a.heard.familiarity, nil, "only the word's axes"); T.eq(a.heard.loyalty, nil, "zeros left out")
	T.ok(a.rival.npc == 295 and a.rival.t <= time(), "the rival kept, its time in the past")
	T.eq(d.npcs[7002].rival, nil, "a bad rival dropped")
	local g = d.towns.Goldshire
	T.ok(g and g.t <= time() and g.word.trust == R.config.towns.word.limit and g.word.familiarity == nil, "the town cleaned")
	T.eq(g.quests, nil, "a bad count dropped"); T.eq(g.title, nil, "an unknown title dropped"); T.eq(g.best, "friend", "a known one kept")
	T.eq(d.towns[42], nil, "a bad key"); T.eq(d.towns.Bad, nil, "a bad town"); T.eq(d.towns.Old, nil, "no time")
	-- the cap: the oldest without a title go first
	local towns = {}
	for i = 1, R.config.towns.max + 5 do towns["T" .. i] = { t = 1000 + i } end
	towns.T1.title = "friend"
	local clean = R:CleanTowns(towns)
	local n = 0
	for _ in pairs(clean) do n = n + 1 end
	T.eq(n, R.config.towns.max, "at most max"); T.ok(clean.T1 ~= nil and clean.T2 == nil, "the titled one kept, the oldest gone")
	-- reset of the NPCs forgets the towns
	Talk(7001, "Marshal Dughan")
	R:Reset("npcs")
	T.eq(next(d.towns or NS.cdb.relationships.towns), nil, "towns forgotten with the NPCs")
end)

T.run("the window, the detail, the export and the option", function()
	for _, lang in ipairs({ "en", "it" }) do
		Fresh()
		NS.db.locale = lang
		Friend(514, "Smith Argus")
		Towns().Goldshire.word = { trust = 12, affection = 12 }
		RelationsFrame:Open({ kind = "npc", key = 514 })
		local facts = _G[ROOT].dSeenFacts:GetText()
		T.ok(facts:find(NS:L("rel_town_line", "Goldshire", NS:L("rel_word_good"), 12), 1, true) ~= nil, lang .. ": the town line: " .. facts)
		T.ok(facts:find(NS:L("rel_rival_line", "Corina Steele"), 1, true) ~= nil, lang .. ": the rival line")
		RelationsFrame:Open("options")
		local opt
		for _, o in ipairs(_G[ROOT].options) do if o.key == "localNotices" then opt = o end end
		T.ok(opt ~= nil, lang .. ": an option for the town notices")
		opt.button:Click()
		T.eq(NS.db.relations.localNotices, false, lang .. ": off with a click")
		opt.button:Click()
		T.eq(NS.db.relations.localNotices, true, lang .. ": on again")
		RelationsFrame:Close()
		local export = R:ExportText()
		T.ok(export:find(NS:L("rel_export_towns"), 1, true) ~= nil and export:find("Goldshire", 1, true) ~= nil, lang .. ": the towns in the export")
	end
	NS.db.locale = "en"
	Fresh()
	Talk(514, "Smith Argus")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:514")
	local out = table.concat(SENT, "\n")
	T.ok(out:find("Their town: Goldshire", 1, true) ~= nil and out:find("Rival of: Corina Steele", 1, true) ~= nil, "the detail command: " .. out)
end)

T.run("N6: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_title", "rel_mem_title", "rel_opt_local", "rel_opt_local_tip", "rel_town_line",
		"rel_word_good", "rel_word_bad", "rel_word_mixed", "rel_title_held", "rel_title_withheld", "rel_title_withheld_short",
		"rel_rival_line", "rel_rival_noticed", "rel_export_towns", "rel_export_town" }
	local prefixes = { "rel_word_good_", "rel_word_bad_", "rel_title_", "rel_rival_jealous_", "rel_rival_ironic_" }
	for _, prefix in ipairs(prefixes) do
		for i = 1, R.config.towns.variants do table.insert(keys, prefix .. i) end
	end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
		if type(it[k]) == "string" and type(en[k]) == "string" then
			local _, si = it[k]:gsub("%%[sd]", ""); local _, se = en[k]:gsub("%%[sd]", "")
			T.eq(si, se, k .. ": the same values")
		end
	end
end)

T.run("N6: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
	NS.db.locale = "it"
end)
