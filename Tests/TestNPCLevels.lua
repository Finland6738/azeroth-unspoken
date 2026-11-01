-- Tests of N2 (#214): visible levels, the first meeting and the NPC temperament (Systems/Relationships.lua,
-- Data/Relationships.lua, Data/NPCs.lua, Engine/RuleEngine.lua, UI/RelationsFrame.lua).
--   - the temperament: a data-driven multiplier on the gains and the daily caps (role, personality, curated overrides,
--     race), and on the slow loss of familiarity (long-lived peoples forget slowly);
--   - the first meeting: time of day, weather if known, zone, the character's level then; the recall conditions;
--   - the levels: a private narrator line when an NPC moves to another disposition band (rare, never in combat, never
--     in chat), a journal line for the memorable ones, the window and the detail command.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local DAY = 86400
local ROOT = "AzerothUnspokenRelations"

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Near(a, b, eps) return type(a) == "number" and math.abs(a - b) <= (eps or 0.01) end

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
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Durotar", false, false, 100, 100, nil
	P.level, P.hour, P.isDay = 30, 14, nil
	P.weather = { type = 0, intensity = 0 }
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
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
local function Talk(id, name, wowEvent, race)
	P.npc = { name = name or "Pip", guid = Guid(id), race = race }
	ADVANCE(16)   -- past the deduplication window of the event
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function Npc(id) return R:Get("npc", id) end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		if h.notice then table.insert(out, h.text) end
	end
	return out
end

-- an NPC set just under the top of the Neutral band (12): one more chat crosses into Acquaintance
local function NearAcquaintance(id, name)
	Talk(id, name or "Pip")
	local rec = Npc(id)
	rec.trust, rec.affection, rec.familiarity, rec.today = 10, 10, 45, nil
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "neutral", "set up just under Acquaintance")
	return rec
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

---------------------------------------------------------------------------
-- Temperament
---------------------------------------------------------------------------
T.run("temperament: the data, the role, the personality, the curated override and the race", function()
	Fresh()
	local tp = R.config.temperament
	T.ok(tp.roles.innkeeper > 1 and tp.roles.guard < 1, "an innkeeper warms fast, a guard slowly (data)")
	T.ok(tp.temperaments.gruff < 1 and tp.temperaments.cheerful > 1, "gruff slow, cheerful fast (data)")
	T.ok(tp.races.NightElf.gain < 1 and tp.races.NightElf.forget < 1 and tp.races.Draenei.forget < 1, "long-lived peoples: slow both ways")
	-- an unknown NPC with nothing known: 1
	T.eq(R:Temper(1234).gain, 1, "nothing known: 1")
	T.eq(R:Temper(1234).forget, 1, "and forgets at the base pace")
	-- the role an interaction shows
	T.ok(Near(R:Temper(1234, nil, "binder").gain, tp.roles.innkeeper), "binding at an inn: an innkeeper")
	-- curated: Innkeeper Farley is a cheerful innkeeper
	local farley = R:Temper(295)
	T.ok(Near(farley.gain, tp.roles.innkeeper * tp.temperaments.cheerful), "Farley: innkeeper x cheerful (" .. farley.gain .. ")")
	T.eq(farley.role, "innkeeper", "role from Data/NPCs.lua"); T.eq(farley.race, "Human", "race from Data/NPCs.lua")
	-- a guard, resolute
	T.ok(Near(R:Temper(240).gain, tp.roles.guard * tp.temperaments.resolute), "Marshal Dughan: guard x resolute")
	-- a curated warmth replaces role x personality
	local willem = R:Temper(823)
	T.ok(willem.curated and Near(willem.gain, 1), "Deputy Willem: the curated warmth wins over the guard default")
	-- the race applies on top
	local tyrande = R:Temper(7999)
	T.ok(Near(tyrande.gain, tp.roles.leader * tp.races.NightElf.gain), "Tyrande: leader x night elf (" .. tyrande.gain .. ")")
	T.ok(Near(tyrande.forget, tp.races.NightElf.forget), "and forgets slowly")
	-- the blacksmith of the issue: gruff
	T.ok(R:Temper(514).gain < 1, "Smith Argus, a gruff blacksmith, warms slowly")
	-- what the user chose for the NPC wins over the curated personality
	Talk(295, "Innkeeper Farley")
	Npc(295).traits = { temperament = "gruff" }
	T.ok(Near(R:Temper(295, Npc(295)).gain, tp.roles.innkeeper * tp.temperaments.gruff), "the user's choice of temperament counts")
	-- always within min and max
	local old = tp.roles.leader
	tp.roles.leader = 0.01
	T.eq(R:Temper(4949).gain, tp.min, "never under the minimum")
	tp.roles.leader = 50
	T.eq(R:Temper(4949).gain, tp.max, "never over the maximum")
	tp.roles.leader = old
	T.eq(R:PaceOf(0.5), "slow", "slow"); T.eq(R:PaceOf(1), "steady", "steady"); T.eq(R:PaceOf(1.5), "quick", "quick")
end)

T.run("temperament: a multiplier on the gains and on the daily caps", function()
	Fresh()
	Talk(1234, "Pip")
	T.ok(Near(Npc(1234).familiarity, 3), "an NPC with nothing known: the base gain (+3)")
	Talk(295, "Innkeeper Farley")
	local k = R:Temper(295).gain
	T.ok(Near(Npc(295).familiarity, 3 * k), "Farley warms faster: +" .. Npc(295).familiarity)
	for _ = 1, 15 do Talk(295, "Innkeeper Farley") end
	local f = Npc(295).familiarity
	T.ok(f > 6 and f <= 6 * k + 0.001, "the daily cap grows with the temperament (" .. f .. ")")
	-- a race the client gives: kept with the record, applied to the gains
	Talk(4321, "Sentinel", "GOSSIP_SHOW", "NightElf")
	local rec = Npc(4321)
	T.eq(rec.race, "NightElf", "the race the client gave is kept")
	T.ok(Near(rec.familiarity, 3 * R.config.temperament.races.NightElf.gain), "a night elf warms slowly: +" .. rec.familiarity)
	-- a race that is not a token is not kept
	Talk(4322, "Odd", "GOSSIP_SHOW", "Night Elf!")
	T.eq(Npc(4322).race, nil, "no race from a strange value")
	-- data-driven: change the number, the result changes
	local tp = R.config.temperament
	local old = tp.roles.innkeeper
	tp.roles.innkeeper = 2
	Talk(8800, "Locandiere", "CONFIRM_BINDER")
	T.ok(Npc(8800).familiarity > 2 * 1.99, "a number in the data changes the gain")
	tp.roles.innkeeper = old
end)

T.run("temperament: long-lived peoples forget later and more slowly", function()
	Fresh()
	Talk(4321, "Sentinel", "GOSSIP_SHOW", "NightElf")
	Talk(1234, "Pip")
	local elf, man = Npc(4321), Npc(1234)
	for _, rec in ipairs({ elf, man }) do rec.familiarity, rec.last, rec.decayDay = 50, time(), nil end
	LEAP(20 * DAY)
	R:MaintainAll()
	T.ok(man.familiarity < 50, "20 days: the familiarity of an ordinary NPC fades (" .. man.familiarity .. ")")
	T.eq(elf.familiarity, 50, "a night elf still remembers (grace 14 / 0.5 = 28 days)")
	LEAP(20 * DAY)   -- 40 days: 12 over the grace of 28
	R:MaintainAll()
	T.ok(Near(elf.familiarity, 50 - 12 * 0.5 * 0.5, 0.6), "and then forgets at half the pace (" .. elf.familiarity .. ")")
	T.ok(man.familiarity < elf.familiarity, "the ordinary NPC forgot more")
end)

---------------------------------------------------------------------------
-- The first meeting
---------------------------------------------------------------------------
T.run("the first meeting: time of day, weather, zone and level, kept once", function()
	Fresh()
	P.hour, P.isDay = 23, false
	P.weather = { type = 1, intensity = 0.6 }
	P.zone, P.level = "Elwynn Forest", 7
	Talk(1234, "Pip")
	local met = Npc(1234).met
	T.ok(met ~= nil, "the circumstances are kept")
	T.eq(met.time, "night", "at night"); T.eq(met.weather, "rain", "in the rain")
	T.eq(met.zone, "Elwynn Forest", "the zone"); T.eq(met.level, 7, "the character's level then")
	-- a later meeting does not change them
	P.hour, P.isDay, P.weather, P.zone, P.level = 12, true, { type = 0, intensity = 0 }, "Durotar", 20
	Talk(1234, "Pip")
	T.eq(Npc(1234).met.time, "night", "the first meeting stays the first")
	T.eq(Npc(1234).met.level, 7, "and so does the level")
	-- a weather the client does not say is not written
	P.weather = { type = 1, intensity = 0 }
	Talk(1235, "Bo")
	T.eq(Npc(1235).met.weather, nil, "unreadable weather: absent, never invented")
	T.eq(Npc(1235).met.time, "day", "the time of day")
	-- no chat text, no name of a person: only tokens, a zone and numbers
	for k, v in pairs(Npc(1234).met) do
		T.ok(({ time = true, weather = true, zone = true, mapID = true, level = true })[k] ~= nil, "a known field: " .. k)
		T.ok(type(v) == "string" or type(v) == "number", "a plain value")
	end
end)

T.run("the first meeting: the recall conditions and lines", function()
	Fresh()
	P.hour, P.isDay = 23, false
	P.weather = { type = 1, intensity = 0.6 }
	P.zone, P.level = "Elwynn Forest", 7
	Talk(1234, "Pip")
	local rec = Npc(1234)
	rec.familiarity = 40
	rec.first = time() - 90 * DAY
	P.level, P.hour, P.isDay, P.weather = 20, 12, true, { type = 0, intensity = 0 }
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 1234 } })
	T.eq(ctx.relMetLevels, 13, "13 levels since the first meeting")
	T.eq(ctx.relMetDays, 90, "90 days")
	T.eq(ctx.relMetTime, "night", "met at night"); T.eq(ctx.relMetWeather, "rain", "in the rain")
	T.ok(Engine.Match({ relMetLevels = 10 }, ctx) and not Engine.Match({ relMetLevels = 14 }, ctx), "relMetLevels: at least")
	T.ok(Engine.Match({ relMetLevels = { 10, 20 } }, ctx) and not Engine.Match({ relMetLevels = { 0, 13 } }, ctx), "a range, upper end excluded")
	T.ok(Engine.Match({ relMetDays = 60 }, ctx), "relMetDays")
	T.ok(Engine.Match({ relMetTime = "night" }, ctx) and not Engine.Match({ relMetTime = "day" }, ctx), "relMetTime")
	T.ok(Engine.Match({ relMetWeather = { "rain", "storm" } }, ctx) and not Engine.Match({ relMetWeather = "snow" }, ctx), "relMetWeather")
	-- validated, closed sets, and they name a relation
	T.eq(#Engine.CheckConditions({ relMetLevels = 10, relMetDays = { 7, 30 }, relMetTime = "dusk", relMetWeather = "fog" }), 0, "valid")
	T.ok(#Engine.CheckConditions({ relMetTime = "noon" }) > 0 and #Engine.CheckConditions({ relMetWeather = "hail" }) > 0, "unknown tokens refused")
	T.ok(#Engine.CheckConditions({ relMetLevels = "x" }) > 0, "a wrong type refused")
	T.ok(Engine.UsesRelation({ relMetLevels = 1 }) and Engine.UsesRelation({ relMetTime = "night" }), "they name a relation")
	-- the recall lines exist in both languages and can speak now
	for _, id in ipairs({ "rel.npc.met.novice", "rel.npc.met.night", "rel.npc.met.rain", "rel.npc.met.snow", "rel.npc.met.long" }) do
		T.ok(Engine.byId[id] ~= nil, "rule " .. id)
	end
	T.ok(Engine.Match(Engine.byId["rel.npc.met.novice"].when or Engine.byId["rel.npc.met.novice"].conditions, ctx), "the novice line fits this context")
	-- nobody: false (the dialogue is closed and there is no target)
	R.interaction, P.npc = nil, nil
	local none = NS:BuildContext()
	T.ok(not Engine.Match({ relMetLevels = 0 }, none) and not Engine.Match({ relMetTime = "night" }, none), "nobody: false")
	-- an NPC met before the circumstances were kept: only the days
	rec.met = nil
	local old = NS:BuildContext({ relationSubject = { kind = "npc", id = 1234 } })
	T.ok(old.relMetDays == 90 and old.relMetLevels == nil and old.relMetTime == nil, "an old record: only the days")
end)

T.run("the first meeting: saved data is cleaned, version 3", function()
	Fresh()
	T.eq(R.VERSION >= 3, true, "relationships.version 3 or later (N4 made it 4)")
	NS.cdb.relationships = { version = 2, players = {}, npcs = {
		[5] = { first = 1, last = 2, count = 1, race = "NightElf", levelT = 10,
			met = { time = "night", weather = "rain", zone = "Elwynn Forest", mapID = 1429, level = 7, text = "never" } },
		[6] = { first = 1, last = 2, count = 1, race = "Night Elf", levelT = "x",
			met = { time = "noon", weather = "hail", zone = 5, mapID = -1, level = 9999 } },
		[7] = { first = 1, last = 2, count = 1, met = "x" },
	} }
	R:Sanitize()
	local d = NS.cdb.relationships
	T.eq(d.version, R.VERSION, "version 2 moves to the current version (nothing to migrate)")
	local a = d.npcs[5]
	T.ok(a.met.time == "night" and a.met.weather == "rain" and a.met.zone == "Elwynn Forest" and a.met.mapID == 1429 and a.met.level == 7, "valid circumstances kept")
	T.eq(a.met.text, nil, "an unknown field is not kept"); T.eq(a.race, "NightElf", "race kept"); T.eq(a.levelT, 10, "levelT kept")
	local b = d.npcs[6]
	T.ok(b.met.time == nil and b.met.weather == nil and b.met.zone == nil and b.met.mapID == nil, "bad values dropped")
	T.eq(b.met.level, R.LEVEL_MAX, "a level brought within its limits")
	T.eq(b.race, nil, "a strange race dropped"); T.eq(b.levelT, nil, "a bad time dropped")
	T.eq(d.npcs[7].met, nil, "a damaged table dropped")
end)

---------------------------------------------------------------------------
-- Visible levels
---------------------------------------------------------------------------
T.run("levels: the bands of the disposition, in order, with the way to the next", function()
	Fresh()
	local total = #R.dispositions
	T.eq(total, 9, "nine levels, from Hated to Deep bond")
	local level, n, nextId, progress = R:Level(-90, "hated")
	T.ok(level == 1 and n == 9 and nextId == "enemy", "Hated is level 1")
	level, n, nextId, progress = R:Level(42.5, "friend")
	T.ok(level == 7 and nextId == "close" and Near(progress, 0.5), "Friend is level 7, halfway to Close friend")
	level, n, nextId, progress = R:Level(95, "bond")
	T.ok(level == 9 and nextId == nil and progress == nil, "Deep bond is the top")
	NS.db.locale = "en"
	local info = { dispositionValue = 42.5, disposition = "friend", dispositionText = R:DispositionName("friend") }
	T.eq(R:LevelText(info), "Level 7 of 9: Friend. Next: Close friend (50%).", "in words")
	info = { dispositionValue = 95, disposition = "bond", dispositionText = R:DispositionName("bond") }
	T.eq(R:LevelText(info), "Level 9 of 9: Deep bond, the highest.", "the top in words")
	NS.db.locale = "it"
end)

T.run("levels: a short private narrator line when an NPC moves to another band", function()
	Fresh()
	local rec = NearAcquaintance(1234, "Pip")
	Narrator:ClearHistory()
	Talk(1234, "Pip")
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "acquaintance", "one more chat: Acquaintance")
	local list = Notices()
	T.eq(#list, 1, "one notice")
	T.ok(list[1] and list[1]:find("Pip", 1, true) and list[1]:find(R:DispositionName("neutral"), 1, true)
		and list[1]:find(R:DispositionName("acquaintance"), 1, true), "it names the NPC and both levels: " .. tostring(list[1]))
	T.eq(ChatSent(), nil, "never in chat")
	T.ok(rec.levelT ~= nil, "the time of the notice is saved")
	-- Acquaintance is not memorable: no journal line
	for _, e in ipairs(LM.session.entries) do T.ok(e.kind ~= "relation_level", "no journal line for Acquaintance") end
	-- the same NPC again within npcHours: no second notice, even after a reload of the session
	R.session = { seen = {}, offered = {} }
	R:LevelChanged(1234, rec, "acquaintance", "friend")
	T.eq(#Notices(), 1, "the same NPC is quiet for a while")
	LEAP(R.config.levels.npcHours * 3600 + 10)
	R:LevelChanged(1234, rec, "acquaintance", "friend")
	T.eq(#Notices(), 2, "after npcHours it may speak again")
	T.ok(Notices()[2]:find(R:DispositionName("friend"), 1, true) ~= nil, "towards Friend")
end)

T.run("levels: never in combat, the notice waits for the end of the fight", function()
	Fresh()
	NearAcquaintance(1234, "Pip")
	Narrator:ClearHistory()
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	Talk(1234, "Pip")
	T.eq(#Notices(), 0, "nothing during the fight")
	ADVANCE(20); P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	T.eq(#Notices(), 1, "after the fight, the held notice")
	T.eq(ChatSent(), nil, "never in chat")
end)

T.run("levels: rare, and only when the narrator may speak", function()
	Fresh()
	-- a quota per session
	local quota = R.config.levels.perSession
	for i = 1, quota + 2 do R:LevelChanged(2000 + i, (function() Talk(2000 + i, "N" .. i); return Npc(2000 + i) end)(), "neutral", "acquaintance") end
	T.eq(#Notices(), quota, "at most " .. quota .. " in a session")
	-- the option off
	Fresh()
	NS.db.relations.levelNotices = false
	NearAcquaintance(1234, "Pip")
	Narrator:ClearHistory()
	Talk(1234, "Pip")
	T.eq(#Notices(), 0, "the option off: silence")
	-- intensity 0, paused, narrator off
	for _, set in ipairs({
		function() NS.db.intensity = 0 end,
		function() NS.paused = true end,
		function() NS.db.output.privateNarrator = false end,
	}) do
		Fresh()
		NearAcquaintance(1234, "Pip")
		Narrator:ClearHistory()
		set()
		Talk(1234, "Pip")
		T.eq(#Notices(), 0, "a silent narrator says nothing")
		NS.paused = false
	end
	-- a change the user makes by hand is not announced
	Fresh()
	local rec = NearAcquaintance(1234, "Pip")
	Narrator:ClearHistory()
	R:SetAxis("npc", 1234, "affection", 60)
	T.eq(#Notices(), 0, "the user's own slider: no notice")
	T.eq(rec.levelT, nil, "and nothing saved")
end)

T.run("levels: a memorable level leaves a journal line, once, with no name", function()
	Fresh()
	Talk(1234, "Pip")
	local rec = Npc(1234)
	R:LevelChanged(1234, rec, "acquaintance", "friend")
	local found
	for _, e in ipairs(LM.session.entries) do if e.kind == "relation_level" then found = e end end
	T.ok(found ~= nil, "a journal line")
	T.ok(found.tags[1] == "npc" and found.tags[2] == "friend" and found.tags[3] == "up", "tokens only")
	T.eq(found.zone, "Durotar", "where it happened")
	T.ok(LM:Describe(found):find(R:DispositionName("friend"), 1, true) ~= nil, "the journal says the level: " .. LM:Describe(found))
	T.ok(not LM:Describe(found):find("Pip", 1, true), "no name in the journal")
	T.ok(rec.noted and rec.noted.level_friend, "noted")
	local n = #LM.session.entries
	LEAP(R.config.levels.npcHours * 3600 + 10)
	R:LevelChanged(1234, rec, "acquaintance", "friend")
	T.eq(#LM.session.entries, n, "once per NPC and level")
	-- falling into a memorable band: the other word
	LEAP(R.config.levels.npcHours * 3600 + 10)
	R:LevelChanged(1234, rec, "unfriendly", "enemy")
	local last = LM.session.entries[#LM.session.entries]
	T.ok(last.kind == "relation_level" and last.tags[3] == "down", "down")
	T.ok(LM:Describe(last):find(NS:L("rel_mem_level_down", R:DispositionName("enemy")), 1, true) ~= nil, "a bond sours")
	T.ok(LM:Describe(last) ~= LM:Describe(found), "two different lines")
	-- the down notice uses its own words
	local list = Notices()
	T.ok(#list >= 1 and list[#list]:find(R:DispositionName("enemy"), 1, true) ~= nil, "a notice towards Hostile")
end)

---------------------------------------------------------------------------
-- The window and the command
---------------------------------------------------------------------------
T.run("the Relationships window shows the level, the temperament and the first meeting", function()
	for _, lang in ipairs({ "it", "en" }) do
		Fresh()
		NS.db.locale = lang
		P.hour, P.isDay = 23, false
		P.weather = { type = 1, intensity = 0.6 }
		P.zone, P.level = "Elwynn Forest", 7
		Talk(295, "Innkeeper Farley")
		RelationsFrame:Open({ kind = "npc", key = 295 })
		local frame = _G[ROOT]
		T.ok(frame.dSeenTitle:IsShown() and frame.dSeenTitle:GetText() == NS:L("rel_section_npc"), lang .. ": the NPC block")
		local line = frame.dSeenLine:GetText()
		T.ok(line:find(NS:L("rel_level_line", 5, 9, R:DispositionName("neutral"), R:DispositionName("acquaintance"), 0):sub(1, 12), 1, true) ~= nil,
			lang .. ": the level: " .. line)
		T.ok(line:find(NS:L("rel_pace_quick"), 1, true) and line:find(NS:L("role_innkeeper"), 1, true), lang .. ": warms quickly, an innkeeper")
		local facts = frame.dSeenFacts:GetText()
		T.ok(facts:find(NS:L("rel_met_time_night"), 1, true) and facts:find(NS:L("rel_met_weather_rain"), 1, true)
			and facts:find("Elwynn Forest", 1, true) and facts:find(NS:L("rel_met_level", 7), 1, true), lang .. ": the first meeting: " .. facts)
		T.ok(not frame.dForget:IsShown(), lang .. ": no 'forget observations' for an NPC")
		-- the level notices have an option
		RelationsFrame:Open("options")
		local opt
		for _, o in ipairs(frame.options) do if o.key == "levelNotices" then opt = o end end
		T.ok(opt ~= nil, lang .. ": an option for the notices")
		opt.button:Click()
		T.eq(NS.db.relations.levelNotices, false, lang .. ": off with a click")
		opt.button:Click()
		T.eq(NS.db.relations.levelNotices, true, lang .. ": on again")
		RelationsFrame:Close()
	end
	NS.db.locale = "it"
end)

T.run("/au relationships detail of an NPC: level, temperament, first meeting", function()
	Fresh()
	NS.db.locale = "en"
	P.zone, P.level = "Elwynn Forest", 7
	Talk(295, "Innkeeper Farley")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:295")
	local out = table.concat(SENT, "\n")
	T.ok(out:find("Level 5 of 9", 1, true) ~= nil, "the level: " .. out)
	T.ok(out:find("Warms up quickly", 1, true) ~= nil, "the temperament")
	T.ok(out:find("you were level 7", 1, true) ~= nil, "the first meeting")
	-- an NPC from before the circumstances were kept
	Npc(295).met = nil
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:295")
	T.ok(table.concat(SENT, "\n"):find("not kept yet", 1, true) ~= nil, "an old record says so")
	NS.db.locale = "it"
end)

T.run("N2: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_level", "rel_mem_level_up", "rel_mem_level_down", "rel_opt_levels", "rel_opt_levels_tip",
		"rel_section_npc", "rel_level_line", "rel_level_top", "rel_pace_line", "rel_pace_curated", "rel_pace_slow",
		"rel_pace_steady", "rel_pace_quick", "rel_met_line", "rel_met_details", "rel_met_old", "rel_met_zone", "rel_met_level" }
	for i = 1, R.config.levels.variants do
		table.insert(keys, "rel_level_up_" .. i)
		table.insert(keys, "rel_level_down_" .. i)
	end
	for _, t in ipairs({ "dawn", "day", "dusk", "night" }) do table.insert(keys, "rel_met_time_" .. t) end
	for w in pairs(Engine.CONDITION_VALUES.weather) do table.insert(keys, "rel_met_weather_" .. w) end
	for p in pairs({ slow = 1, steady = 1, quick = 1 }) do table.insert(keys, "rel_pace_" .. p) end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
	end
	-- the notice texts take the same three values in both languages
	for i = 1, R.config.levels.variants do
		for _, dir in ipairs({ "up", "down" }) do
			local k = "rel_level_" .. dir .. "_" .. i
			local _, ni = it[k]:gsub("%%s", ""); local _, ne = en[k]:gsub("%%s", "")
			T.ok(ni == 3 and ne == 3, k .. ": three values")
		end
	end
end)

T.run("N2: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
end)
