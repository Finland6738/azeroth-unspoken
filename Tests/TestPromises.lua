-- Tests of N4 (#216): promises and oaths (Systems/Relationships.lua, Data/Relationships.lua `promises`,
-- Engine/RuleEngine.lua, UI/RelationsFrame.lua), with mocked quest events.
--   - a quest accepted after an NPC's quest dialogue is a promise to them: only the quest id, the giver and times;
--   - abandoning it (QUEST_REMOVED without a turn-in, or the abandon dialog) lowers the giver's trust;
--   - a promise left open long is recalled when you meet the giver; a late turn-in to the giver brings relief;
--   - with a named NPC at Friend or above it is an oath: breaking it marks the NPC and the map where it was sworn, the
--     marks fade slowly and weigh on the trust that can be gained there; never in chat, never in combat.
local NS = ...
local Engine, Config, R, LM, World = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory, NS.World
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local DAY = 86400
local ROOT = "AzerothUnspokenRelations"
local ELWYNN = 1429

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
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	NS.Interlocutor.roles = {}
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	-- N5 (#217): favours and nicknames have their own tests (TestFavours.lua); here they would add notices
	NS.db.relations.favours, NS.db.relations.nicknames = false, false
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Elwynn Forest", false, false, 100, 100, ELWYNN
	P.level, P.hour, P.isDay = 30, 14, nil
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

-- an interaction with an NPC: the client puts it in the "npc" unit and fires the event
local function Talk(id, name, wowEvent)
	P.npc = { name = name, guid = Guid(id) }
	ADVANCE(16)   -- past the deduplication window of the event
	FIRE(wowEvent or "GOSSIP_SHOW")
end

-- the quest dialogue of an NPC, then the quest accepted (QUEST_ACCEPTED carries only the quest id here)
local function Accept(id, name, questID)
	Talk(id, name, "QUEST_DETAIL")
	FIRE("QUEST_ACCEPTED", questID)
end

-- the quest handed in: the reward dialogue of the taker, the turn-in, the quest leaving the log
local function TurnIn(id, name, questID)
	Talk(id, name, "QUEST_COMPLETE")
	FIRE("QUEST_TURNED_IN", questID, 100, 0)
	FIRE("QUEST_REMOVED", questID, false)
end

local function Npc(id) return R:Get("npc", id) end
local function Promises() return NS.cdb.relationships.promises end
local function Age(questID, days) Promises()[questID].t = time() - days * DAY end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		if h.notice then table.insert(out, h.text) end
	end
	return out
end

local function LastNotice()
	local n = Notices()
	return n[#n]
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

-- an NPC already a Friend (the oath band), with a name
local function Friend(id, name)
	Talk(id, name)
	local rec = Npc(id)
	rec.trust, rec.affection, rec.loyalty, rec.familiarity, rec.today = 60, 50, 30, 60, nil
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "friend", "set up as a Friend")
	return rec
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
T.run("promises: the numbers are data", function()
	Fresh()
	local cfg = R.config.promises
	T.ok(cfg.remindDays > 0 and cfg.lateDays > 0 and cfg.settle > 0 and cfg.maxDays > cfg.remindDays, "the days and the wait")
	T.ok(cfg.perSession >= 1 and cfg.variants >= 2 and cfg.max >= 25, "the quota, the variants, room for a full quest log")
	T.eq(cfg.oath.band, "friend", "an oath from Friend up")
	T.ok(cfg.marks.npcDays > cfg.marks.cityDays and cfg.marks.npcTrust < cfg.marks.cityTrust, "the NPC remembers longer and harder")
	local inc = R.config.increments
	T.ok(inc.promise_broken.gain.trust < 0 and inc.oath_broken.gain.trust < inc.promise_broken.gain.trust, "an oath costs more")
	T.ok(inc.oath_kept.gain.loyalty > 0, "a kept oath is worth some loyalty")
	-- a pack may change them; a band that does not exist is refused
	R:RegisterData({ promises = { remindDays = 3, oath = { band = "nonsense" }, marks = { cityDays = 30, bogus = 1 } } })
	T.eq(cfg.remindDays, 3, "a number changed"); T.eq(cfg.oath.band, "friend", "an unknown band refused")
	T.eq(cfg.marks.cityDays, 30, "a mark changed"); T.eq(cfg.marks.bogus, nil, "an unknown field refused")
	R:RegisterData({ promises = { remindDays = 7, marks = { cityDays = 90 } } })
end)

---------------------------------------------------------------------------
-- A promise
---------------------------------------------------------------------------
T.run("a quest accepted from an NPC is a promise to them: ids and times only", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	local p = Promises()[54]
	T.ok(p ~= nil, "the promise is kept")
	T.eq(p.npc, 7001, "to the giver"); T.eq(p.t, time(), "with the time")
	for k in pairs(p) do T.ok(({ npc = true, t = true, r = true, oath = true, map = true })[k] ~= nil, "a known field: " .. k) end
	T.eq(p.oath, nil, "a stranger: a promise, not an oath")
	T.eq(NS.cdb.relationships.version, 5, "relationships.version 5 (N5 #217 made it 5)")
	-- no quest dialogue just before: nobody to promise to
	FIRE("QUEST_ACCEPTED", 55)
	T.eq(Promises()[55], nil, "no giver, no promise")
	-- the dialogue too long ago
	Talk(7001, "Marshal Dughan", "QUEST_DETAIL")
	ADVANCE(R.QUEST_SECONDS + 1)
	FIRE("QUEST_ACCEPTED", 56)
	T.eq(Promises()[56], nil, "a stale dialogue gives no promise")
	-- no quest id from the client: never a guess
	Accept(7001, "Marshal Dughan", nil)
	local n = 0
	for _ in pairs(Promises()) do n = n + 1 end
	T.eq(n, 1, "no id, no promise")
	-- the classic form (questLogIndex, questID)
	Accept(7001, "Marshal Dughan", 3)
	Talk(7001, "Marshal Dughan", "QUEST_DETAIL")
	FIRE("QUEST_ACCEPTED", 4, 57)
	T.ok(Promises()[57] ~= nil, "the quest id of (index, id)")
	-- with automatic NPCs off nothing is recorded, promises included
	NS.db.relations.npcAuto = false
	Accept(7002, "Remy", 58)
	T.eq(Promises()[58], nil, "npcAuto off: no promise")
end)

T.run("a promise kept: on time, late to the giver, late to someone else", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	TurnIn(7001, "Marshal Dughan", 54)
	ADVANCE(5)
	T.eq(Promises()[54], nil, "kept: the promise is gone")
	T.eq(#Notices(), 0, "on time: nothing to say")
	-- late, to the giver: relief
	Accept(7001, "Marshal Dughan", 60)
	Age(60, 9)
	local trust = Npc(7001).trust
	TurnIn(7001, "Marshal Dughan", 60)
	ADVANCE(5)
	T.eq(Promises()[60], nil, "kept late")
	T.ok((LastNotice() or ""):find("Marshal Dughan", 1, true) and LastNotice():find("9", 1, true), "relief, with the name and the days: " .. tostring(LastNotice()))
	T.ok(Npc(7001).trust >= trust, "no trust lost for a late promise")
	T.eq(ChatSent(), nil, "never in chat")
	-- late, handed to another NPC: kept, and the giver is not there to be relieved
	Accept(7001, "Marshal Dughan", 61)
	Age(61, 9)
	local before = #Notices()
	TurnIn(7003, "Deputy Willem", 61)
	ADVANCE(5)
	T.eq(Promises()[61], nil, "kept through someone else")
	T.eq(#Notices(), before, "no relief away from the giver")
	-- the removal before the turn-in (the order the client uses is not proven): still kept
	Accept(7001, "Marshal Dughan", 62)
	trust = Npc(7001).trust
	Talk(7001, "Marshal Dughan", "QUEST_COMPLETE")
	FIRE("QUEST_REMOVED", 62, false)
	FIRE("QUEST_TURNED_IN", 62, 100, 0)
	ADVANCE(5)
	T.eq(Promises()[62], nil, "removed then turned in: kept")
	T.ok(Npc(7001).trust >= trust, "and no trust lost")
end)

---------------------------------------------------------------------------
-- A promise broken
---------------------------------------------------------------------------
T.run("a promise abandoned lowers the giver's trust", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	local rec = Npc(7001)
	local trust, last, count = rec.trust, rec.last, rec.count
	ADVANCE(30)
	FIRE("QUEST_REMOVED", 54, false)
	T.ok(Promises()[54] ~= nil, "not decided at once: a turn-in may follow")
	ADVANCE(R.config.promises.settle + 1)
	T.eq(Promises()[54], nil, "settled after the wait")
	T.ok(rec.trust < trust, "trust lost: " .. tostring(trust) .. " -> " .. tostring(rec.trust))
	T.eq(rec.last, last, "breaking a word is not a meeting"); T.eq(rec.count, count, "nor an interaction")
	T.ok((LastNotice() or ""):find("Marshal Dughan", 1, true) ~= nil, "a broken-word notice: " .. tostring(LastNotice()))
	T.eq(rec.oathT, nil, "a promise is not an oath: no mark")
	T.eq(ChatSent(), nil, "never in chat")
	-- a quest the client calls completed is never broken (its turn-in was missed)
	Accept(7001, "Marshal Dughan", 63)
	trust = rec.trust
	QUEST_DONE[63] = true
	FIRE("QUEST_REMOVED", 63, false)
	ADVANCE(5)
	T.eq(Promises()[63], nil, "gone"); T.eq(rec.trust, trust, "and not broken")
	-- a quest without a promise: nothing
	FIRE("QUEST_REMOVED", 999, false)
	ADVANCE(5)
	T.eq(rec.trust, trust, "a quest from nobody costs nothing")
end)

T.run("the abandon dialog settles the removal at once", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	local trust = Npc(7001).trust
	ADVANCE(30)
	C_QuestLog.SetAbandonQuest(54)
	C_QuestLog.AbandonQuest()
	FIRE("QUEST_REMOVED", 54, false)
	T.eq(Promises()[54], nil, "broken without waiting")
	T.ok(Npc(7001).trust < trust, "trust lost")
	-- the hooks are in place (C_QuestLog is in the Forever dump)
	T.eq(NS.Compat.caps["hook:C_QuestLog.AbandonQuest"].state, NS.Compat.AVAILABLE, "the abandon hook")
	T.eq(NS.Compat.caps["hook:C_QuestLog.SetAbandonQuest"].state, NS.Compat.AVAILABLE, "the dialog hook")
	-- an abandon confirmed after the removal settles it too
	Accept(7001, "Marshal Dughan", 64)
	FIRE("QUEST_REMOVED", 64, false)
	T.ok(Promises()[64] ~= nil, "waiting")
	C_QuestLog.SetAbandonQuest(64)
	C_QuestLog.AbandonQuest()
	T.eq(Promises()[64], nil, "settled by the abandon")
end)

T.run("without a timer, the next quest or NPC event settles a removal", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	local after = C_Timer.After
	C_Timer.After = nil
	FIRE("QUEST_REMOVED", 54, false)
	C_Timer.After = after
	T.ok(Promises()[54] ~= nil, "nothing scheduled, nothing decided")
	Talk(7002, "Remy")
	T.eq(Promises()[54], nil, "settled at the next meeting")
end)

---------------------------------------------------------------------------
-- A promise left open
---------------------------------------------------------------------------
T.run("a promise left open: the giver reminds you when you meet", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), 0, "a fresh promise: nothing")
	Age(54, 10)
	Talk(7001, "Marshal Dughan")
	T.ok((LastNotice() or ""):find("Marshal Dughan", 1, true) and LastNotice():find("10", 1, true), "reminded, with the days: " .. tostring(LastNotice()))
	T.eq(Promises()[54].r, time(), "the reminder is remembered")
	local n = #Notices()
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), n, "not again so soon")
	Promises()[54].r = time() - (R.config.promises.remindHours * 3600 + 1)
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), n + 1, "again after the quiet hours")
	-- someone else is not reminded of it
	Talk(7002, "Remy")
	T.eq(#Notices(), n + 1, "only the giver")
	-- a quest ready to hand in: you are bringing it
	Promises()[54].r = nil
	QUEST_READY[54] = true
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), n + 1, "not while it is ready to hand in")
	QUEST_READY[54] = nil
	-- a quest the client no longer has: its end was missed, let go without a word
	QUEST_GONE[54] = true
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), n + 1, "no word")
	T.eq(Promises()[54], nil, "and the promise let go")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("the promise notices: rare, private, quiet in combat, an option", function()
	Fresh()
	for q = 1, 6 do Accept(7000 + q, "Giver " .. q, 100 + q); Age(100 + q, 10) end
	-- in combat: dropped, not held
	P.combat = true
	Talk(7001, "Giver 1")
	T.eq(#Notices(), 0, "nothing in combat")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	T.eq(#Notices(), 0, "and nothing after it")
	-- the option off
	NS.db.relations.promiseNotices = false
	Talk(7002, "Giver 2")
	T.eq(#Notices(), 0, "the option off: nothing")
	NS.db.relations.promiseNotices = true
	-- the narrator silent
	NS.paused = true
	Talk(7002, "Giver 2")
	T.eq(#Notices(), 0, "paused: nothing")
	NS.paused = false
	-- the session quota
	for q = 2, 6 do Talk(7000 + q, "Giver " .. q) end
	T.eq(#Notices(), R.config.promises.perSession, "at most perSession in a session")
	-- the variants take turns
	local a, b = Notices()[1], Notices()[2]
	T.ok(a:find("has waited", 1, true) ~= nil and b:find("still owed", 1, true) ~= nil, "two different variants: " .. a .. " / " .. b)
	T.eq(ChatSent(), nil, "never in chat")
end)

---------------------------------------------------------------------------
-- Oaths
---------------------------------------------------------------------------
T.run("a promise to a named Friend is an oath", function()
	Fresh()
	Friend(7001, "Marshal Dughan")
	Accept(7001, "Marshal Dughan", 54)
	local p = Promises()[54]
	T.eq(p.oath, true, "an oath"); T.eq(p.map, ELWYNN, "sworn here")
	-- below Friend: a promise
	Talk(7002, "Remy")
	Accept(7002, "Remy", 55)
	T.eq(Promises()[55].oath, nil, "a stranger: a promise")
	-- without a name kept: not a named NPC
	Friend(7003, "Willem")
	Npc(7003).name = nil
	P.npc = { guid = Guid(7003) }
	ADVANCE(16)
	FIRE("QUEST_DETAIL")
	Npc(7003).name = nil
	R.questGiver.name = nil
	FIRE("QUEST_ACCEPTED", 56)
	T.eq(Promises()[56].oath, nil, "no name: no oath")
	-- curated only (a data choice): an NPC outside the curated register swears no oath
	R.config.promises.oath.curated = true
	Accept(7001, "Marshal Dughan", 57)
	T.eq(Promises()[57].oath, nil, "curated only: not this one")
	R.config.promises.oath.curated = false
end)

T.run("an oath broken: the mark on the NPC and on the place, the journal", function()
	Fresh()
	local rec = Friend(7001, "Marshal Dughan")
	Accept(7001, "Marshal Dughan", 54)
	local trust, loyalty = rec.trust, rec.loyalty or 0
	local promiseCost = R.config.increments.promise_broken.gain.trust
	ADVANCE(30)
	FIRE("QUEST_REMOVED", 54, false)
	ADVANCE(5)
	T.ok(trust - rec.trust > -promiseCost * 2, "an oath costs far more trust: " .. tostring(trust - rec.trust))
	T.ok((rec.loyalty or 0) < loyalty, "and loyalty")
	T.ok(rec.oathT and time() - rec.oathT < 5, "the NPC is marked")
	T.ok(NS.cdb.relationships.marks[ELWYNN] and time() - NS.cdb.relationships.marks[ELWYNN] < 5, "and so is the place where it was sworn")
	T.ok((LastNotice() or ""):find("oath", 1, true) ~= nil, "an oath notice: " .. tostring(LastNotice()))
	local _, band = R:Disposition(R:Axes(rec))
	T.ok(band ~= "friend", "no longer a Friend: " .. band)
	-- the journal: a line with no name
	local found
	for _, e in ipairs(LM.session.entries) do if e.kind == "relation_oath" then found = e end end
	T.ok(found ~= nil, "a journal line")
	T.eq(LM:Describe(found):find("Dughan", 1, true), nil, "no name in it")
	T.ok(LM:Describe(found):find(NS:L("rel_mem_oath_broken"), 1, true) ~= nil, "an oath broken: " .. LM:Describe(found))
	-- the level notice does not pile on the oath notice
	local levelNotices = 0
	for _, t in ipairs(Notices()) do if t:find("now ", 1, true) and t:find("once ", 1, true) then levelNotices = levelNotices + 1 end end
	T.eq(levelNotices, 0, "one notice, not two")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("an oath broken is remembered: by the NPC, by the place, in the trust they give", function()
	Fresh()
	local rec = Friend(7001, "Marshal Dughan")
	Accept(7001, "Marshal Dughan", 54)
	FIRE("QUEST_REMOVED", 54, false)
	ADVANCE(5)
	Narrator:ClearHistory()
	-- someone else in the same place: the place remembers, once a session
	Talk(7002, "Remy")
	T.ok((LastNotice() or ""):find("Elwynn Forest", 1, true) ~= nil, "the place remembers: " .. tostring(LastNotice()))
	Talk(7004, "Corina")
	T.eq(#Notices(), 1, "once a session")
	-- meeting the NPC again: once a session
	Talk(7001, "Marshal Dughan")
	T.ok((LastNotice() or ""):find("Marshal Dughan", 1, true) ~= nil, "the NPC remembers: " .. tostring(LastNotice()))
	Talk(7001, "Marshal Dughan")
	T.eq(#Notices(), 2, "once a session")
	-- the NPC first: the place does not say it again after them
	R.session.promises.oaths, R.session.promises.cities = {}, {}
	Talk(7001, "Marshal Dughan")
	Talk(7002, "Remy")
	T.eq(#Notices(), 3, "the one betrayed spoke; the place keeps quiet")
	-- elsewhere: nothing
	P.mapID, P.zone = 1411, "Durotar"
	R.session.promises.cities = {}
	Talk(7005, "Gornek")
	T.eq(#Notices(), 3, "another map does not know")
	-- the trust they give: less from the NPC, a little less from anyone in that place
	T.ok(R:MarkTrust(7001, rec) < R.config.promises.marks.npcTrust + 0.01, "the NPC: down to npcTrust (here the city is elsewhere)")
	T.eq(R:MarkTrust(7005, Npc(7005)), 1, "elsewhere, someone else: untouched")
	P.mapID, P.zone = ELWYNN, "Elwynn Forest"
	local city = R:MarkTrust(7002, Npc(7002))
	T.ok(city < 1 and city >= R.config.promises.marks.cityTrust - 0.01, "the place: down to cityTrust: " .. city)
	-- a real gain is smaller
	local fresh = Npc(7002)
	fresh.trust, fresh.today = 0, nil
	R:RecordNPC(7002, "Remy", "quest_turnin")
	local marked = fresh.trust
	NS.cdb.relationships.marks = {}
	fresh.trust, fresh.today = 0, nil
	R:RecordNPC(7002, "Remy", "quest_turnin")
	T.ok(marked < fresh.trust, "a place that remembers trusts less: " .. marked .. " < " .. fresh.trust)
end)

T.run("the marks fade slowly, the long-lived remember longer", function()
	Fresh()
	local rec = Friend(7001, "Marshal Dughan")
	rec.oathT = time() - 120 * DAY
	local half = R:OathMark(7001, rec)
	T.ok(half > 0.45 and half < 0.55, "half way after half the days: " .. half)
	rec.oathT = time() - (R.config.promises.marks.npcDays + 1) * DAY
	T.eq(R:OathMark(7001, rec), 0, "gone after npcDays")
	-- a night elf forgets at half the pace: still there
	rec.race = "NightElf"
	T.ok(R:OathMark(7001, rec) > 0.4, "a night elf still remembers")
	rec.race = nil
	-- the place forgets sooner
	NS.cdb.relationships.marks[ELWYNN] = time() - (R.config.promises.marks.cityDays + 1) * DAY
	T.eq(R:CityMark(ELWYNN), 0, "the place forgot")
	R:Sanitize()
	T.eq(NS.cdb.relationships.marks[ELWYNN], nil, "a faded place mark is let go on load")
end)

T.run("an oath kept is worth some loyalty", function()
	Fresh()
	local rec = Friend(7001, "Marshal Dughan")
	Accept(7001, "Marshal Dughan", 54)
	local loyalty = rec.loyalty
	TurnIn(7003, "Deputy Willem", 54)
	ADVANCE(5)
	T.ok(rec.loyalty > loyalty, "loyalty up: " .. loyalty .. " -> " .. rec.loyalty)
	T.eq(rec.oathT, nil, "no mark")
end)

---------------------------------------------------------------------------
-- Context and conditions
---------------------------------------------------------------------------
T.run("the conditions: relPromiseDays, relOathbroken, oathbreakerHere", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	Age(54, 12)
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 7001 } })
	T.eq(ctx.relPromiseDays, 12, "12 days")
	T.ok(Engine.Match({ relPromiseDays = 7 }, ctx) and not Engine.Match({ relPromiseDays = 14 }, ctx), "at least")
	T.ok(Engine.Match({ relOathbroken = false }, ctx) and not Engine.Match({ relOathbroken = true }, ctx), "no oath broken")
	T.ok(not Engine.Match({ oathbreakerHere = true }, ctx), "the place knows nothing")
	Npc(7001).oathT = time()
	NS.cdb.relationships.marks[ELWYNN] = time()
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 7001 } })
	T.ok(Engine.Match({ relOathbroken = true }, ctx), "relOathbroken")
	T.ok(Engine.Match({ oathbreakerHere = true }, ctx), "oathbreakerHere")
	-- the place needs no person
	R.interaction = nil
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ oathbreakerHere = true }, ctx) and ctx.relPromiseDays == nil, "the place alone")
	-- the validator knows them; the two about a person are relationship conditions
	T.eq(#Engine.CheckConditions({ relPromiseDays = { 7, 30 }, relOathbroken = true, oathbreakerHere = false }), 0, "valid")
	T.ok(#Engine.CheckConditions({ relPromiseDays = "x" }) > 0, "a wrong type refused")
	T.ok(Engine.RELATION_CONDITIONS.relPromiseDays and Engine.RELATION_CONDITIONS.relOathbroken, "relationship conditions")
	T.eq(Engine.RELATION_CONDITIONS.oathbreakerHere, nil, "the place is not")
	-- the recall lines exist in both languages
	for _, id in ipairs({ "rel.npc.promise.waiting", "rel.npc.oath.broken", "rel.npc.oath.here" }) do
		T.ok(Engine.byId[id] ~= nil, "the rule " .. id)
	end
end)

---------------------------------------------------------------------------
-- Saved data
---------------------------------------------------------------------------
T.run("saved promises and marks are cleaned", function()
	Fresh()
	Talk(7001, "Marshal Dughan")
	local now = time()
	NS.cdb.relationships.version = 3
	NS.cdb.relationships.promises = {
		[54] = { npc = 7001, t = now - DAY, title = "never kept", oath = true, map = ELWYNN },
		[55] = { npc = 9999, t = now - DAY },                       -- a giver not in the list
		[56] = { npc = 7001, t = now - 200 * DAY },                 -- too old
		[57] = { npc = 7001, t = now + 50 * DAY, r = now + DAY },   -- times in the future
		[-1] = { npc = 7001, t = now }, x = { npc = 7001, t = now }, [58] = "bad", [59] = { npc = 7001 },
	}
	NS.cdb.relationships.marks = { [ELWYNN] = now - DAY, [0] = now, bad = now, [12] = "x" }
	Npc(7001).oathT = now + DAY
	R:Sanitize()
	local d = NS.cdb.relationships
	T.eq(d.version, 5, "version 3 moves to the current one (nothing to migrate)")
	T.ok(d.promises[54] and d.promises[54].title == nil and d.promises[54].oath and d.promises[54].map == ELWYNN, "a good one kept, without unknown fields")
	T.eq(d.promises[55], nil, "a missing giver"); T.eq(d.promises[56], nil, "too old")
	T.ok(d.promises[57] and d.promises[57].t <= now and d.promises[57].r <= now, "future times brought back")
	T.eq(d.promises[58], nil); T.eq(d.promises[59], nil); T.eq(d.promises.x, nil); T.eq(d.promises[-1], nil)
	T.ok(d.marks[ELWYNN] ~= nil and d.marks[0] == nil and d.marks.bad == nil and d.marks[12] == nil, "the marks cleaned")
	T.ok(Npc(7001).oathT <= now, "the NPC mark brought back")
	-- the cap: the oldest go first
	d.promises = {}
	for q = 1, R.config.promises.max + 5 do d.promises[q] = { npc = 7001, t = now - q * 60 } end
	R:Sanitize()
	local n = 0
	for _ in pairs(d.promises) do n = n + 1 end
	T.eq(n, R.config.promises.max, "at most max")
	T.eq(d.promises[R.config.promises.max + 5], nil, "the oldest dropped"); T.ok(d.promises[1] ~= nil, "the newest kept")
end)

T.run("removing an NPC or the NPCs takes their promises; compaction spares them", function()
	Fresh()
	Accept(7001, "Marshal Dughan", 54)
	Accept(7002, "Remy", 55)
	NS.cdb.relationships.marks[ELWYNN] = time()
	T.ok(R:Remove("npc", 7001), "removed")
	T.eq(Promises()[54], nil, "its promise gone"); T.ok(Promises()[55] ~= nil, "not the others")
	R:Reset("npcs")
	T.eq(next(Promises()), nil, "reset: no promises"); T.eq(next(NS.cdb.relationships.marks), nil, "nor marks")
	-- compaction: an NPC waiting on a promise is not dropped for being little known
	Accept(7002, "Remy", 56)
	local d = NS.cdb.relationships
	for id = 20000, 20000 + R.MAX_NPCS do d.npcs[id] = { first = 1, last = 1, count = 1, familiarity = 50 } end
	Npc(7002).familiarity = 0
	R:CompactNPCs()
	T.ok(Npc(7002) ~= nil, "the giver kept")
end)

T.run("a promise survives a /reload", function()
	Fresh()
	Friend(7001, "Marshal Dughan")
	Accept(7001, "Marshal Dughan", 54)
	local copy = loadstring("return " .. SERIALIZE(NS.cdb.relationships))()
	NS.cdb.relationships = copy
	R:Sanitize()
	T.ok(Promises()[54] and Promises()[54].oath and Promises()[54].npc == 7001, "kept as it was")
end)

---------------------------------------------------------------------------
-- The window, the command, the quest log
---------------------------------------------------------------------------
T.run("the Relationships window and the detail command show the word given", function()
	for _, lang in ipairs({ "it", "en" }) do
		Fresh()
		NS.db.locale = lang
		Friend(7001, "Marshal Dughan")
		Accept(7001, "Marshal Dughan", 54)
		Accept(7001, "Marshal Dughan", 55)
		Promises()[55].oath = nil
		Age(54, 12)
		RelationsFrame:Open({ kind = "npc", key = 7001 })
		local facts = _G[ROOT].dSeenFacts:GetText()
		T.ok(facts:find(NS:L("rel_promises_oaths", 2, 12, 1), 1, true) ~= nil, lang .. ": two open, one sworn: " .. facts)
		-- the option
		RelationsFrame:Open("options")
		local opt
		for _, o in ipairs(_G[ROOT].options) do if o.key == "promiseNotices" then opt = o end end
		T.ok(opt ~= nil, lang .. ": an option for the promise notices")
		opt.button:Click()
		T.eq(NS.db.relations.promiseNotices, false, lang .. ": off with a click")
		opt.button:Click()
		T.eq(NS.db.relations.promiseNotices, true, lang .. ": on again")
		RelationsFrame:Close()
	end
	Fresh()
	Talk(7001, "Marshal Dughan")
	Npc(7001).oathT = time() - 24 * DAY
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:7001")
	local out = table.concat(SENT, "\n")
	T.ok(out:find("Remembers the oath you broke (90% of it left)", 1, true) ~= nil, "the mark in the detail: " .. out)
	T.eq(out:find("Your word", 1, true), nil, "no open promise, no line")
end)

T.run("the quest log is still reread when a quest leaves it", function()
	Fresh()
	local orig, n = World.ScanQuests, 0
	World.ScanQuests = function(self) n = n + 1; return orig(self) end
	FIRE("QUEST_REMOVED", 4711, false)
	ADVANCE(World.SETTLE_QUESTS + 1)
	World.ScanQuests = orig
	T.ok(n > 0, "World rescans on QUEST_REMOVED")
end)

T.run("N4: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_oath", "rel_mem_oath_broken", "rel_opt_promises", "rel_opt_promises_tip",
		"rel_promises_line", "rel_promises_oaths", "rel_oath_mark" }
	local values = { rel_promise_remind_ = "%%s.-%%d", rel_promise_relief_ = "%%s.-%%d", rel_promise_broken_ = "%%s",
		rel_oath_broken_ = "%%s", rel_oath_remembered_ = "%%s", rel_oath_city_ = "%%s" }
	for prefix in pairs(values) do
		for i = 1, R.config.promises.variants do table.insert(keys, prefix .. i) end
	end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
	end
	-- the notices take the same values, in the same order, in both languages
	for prefix, pattern in pairs(values) do
		for i = 1, R.config.promises.variants do
			local k = prefix .. i
			local _, si = it[k]:gsub("%%[sd]", ""); local _, se = en[k]:gsub("%%[sd]", "")
			T.ok(si == se and it[k]:find(pattern) and en[k]:find(pattern), k .. ": the same values")
		end
	end
end)

T.run("N4: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
	NS.db.locale = "it"
end)
