-- Tests of N8 (#220) and of the ally's death (#125): the companion pet, grief and letters (Systems/Companion.lua,
-- `companion` in Data/Relationships.lua, the lines of Data/RegistryRelations.lua and the laments of the verses pack).
-- The mock fires the events the API dump lists (UNIT_PET, UNIT_HAPPINESS, UNIT_DIED, GROUP_ROSTER_UPDATE) in the order
-- ADR 0035 proposes; the real order on Forever is not confirmed in game, and no two-client group test was run (the owner
-- chose to build on the dump without them, 2026-11-02).
--   - the hunter's or warlock's pet: a record (no GUID), a bond that grows with the hours together, lines on a call, a
--     dismissal and a change of mood, each at most once in a while; another class's pet is no companion;
--   - grief: the pet's death (UNIT_DIED, or dead on UNIT_PET; a demon gone a moment before its death event), an NPC the
--     character was close to found dead, a group member's death (verified, never a secret identity or a feigned death),
--     once per loss, held until the fight is over, with a journal page and a lament in the songbook;
--   - letters: at login, a close NPC not met for weeks writes; the journal keeps it, a private notice says so;
--   - narration only and private: inner voice, never chat; the saved data has its version and no GUID.
local NS = ...
local Engine, Config, R, LM, Director, Narrator = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory, NS.Director, NS.Narrator
local C, Songbook, Pacing, Gateway = NS.Companion, NS.Songbook, NS.Pacing, NS.Gateway

local DAY = 86400
local PET_GUID = "Pet-0-3134-0-6-1234-0000AAAA01"
local DEMON_GUID = "Pet-0-3134-0-6-416-0000BBBB02"
local ALLY_GUID, ALLY2_GUID = "Player-1-0000AAAA", "Player-1-0000BBBB"
local function Guid(id) return ("Creature-0-3134-0-6-%d-0000B3E9A1"):format(id) end

-- the laments, as the verses pack would give them (the verses pack is loaded too: these add one more for each grief)
local function Lines(...) return table.concat({ ... }, "\n") end
local function Lament(grief)
	return { event = "lament", category = "lore", speaker = "inner", styles = { "tragic" }, tags = { "lore", "topic:death" },
		genre = "verse", purpose = "mourn", origin = "common", cooldown = 604800,
		conditions = { combat = false, grief = grief } }
end
NS:RegisterEvent("lament", { category = "lore", chance = 0, cooldown = 0 })
NS:RegisterPack({ id = "comptest", languages = { "enUS", "itIT" },
	registry = { ["ct.lament.pet"] = Lament("pet"), ["ct.lament.ally"] = Lament("ally") },
	texts = {
		enUS = { ["ct.lament.pet"] = Lines("A test lament:", "it ran beside me,", "and now it does not."),
			["ct.lament.ally"] = Lines("A test lament:", "we walked together,", "and one of us stopped.") },
		itIT = { ["ct.lament.pet"] = Lines("Un lamento di prova:", "correva accanto a me,", "e ora non più."),
			["ct.lament.ally"] = Lines("Un lamento di prova:", "camminavamo insieme,", "e uno si è fermato.") },
	} })

local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	NS.cdb.songbook = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.group, R.groupDirty = nil, nil, true
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	Songbook.readOnly = false
	Songbook:Data()
	Songbook:Sync()
	NS.db.literary.frequency = "rare"
	NS.db.output.privateNarrator = true
	NS.db.output.npcDialogues = false
	P.target, P.npc, P.party, P.group, P.raid, P.pet, P.nameplates = nil, nil, nil, false, false, nil, nil
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Elwynn Forest", "", false, false, 100, 100, 1429
	P.instance, P.instanceType, P.onTaxi, P.petHappiness = false, nil, false, nil
	P.level, P.race, P.faction, P.class = 30, "Human", "Alliance", "HUNTER"
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "en", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	Pacing:Reset()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	C:OnInit()
	C.entered = GetTime() - 600
	SENT = {}
	ADVANCE(60)
end

local function Offered(event)
	local n = 0
	for _, e in ipairs(Director.log) do if e.event == event then n = n + 1 end end
	return n
end

local function Spoken(event)
	local n = 0
	for _, e in ipairs(Director.log) do
		if (not event or e.event == event) and e.result == "spoken" then n = n + 1 end
	end
	return n
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do if h.notice then table.insert(out, h.text) end end
	return out
end

local function Entries(kind)
	local out = {}
	for _, e in ipairs(LM.session.entries) do if e.kind == kind then table.insert(out, e) end end
	return out
end

-- the last line the narrator showed (not a notice) that has this word: a line held in a fight may come after it
local function Said(word)
	for i = #Narrator.history, 1, -1 do
		local h = Narrator.history[i]
		if not h.notice and h.text:find(word, 1, true) then return h end
	end
	return nil
end

-- the laments in the songbook
local function Laments()
	local n = 0
	for sid in pairs(Songbook:Data().heard) do
		if sid:find("lament", 1, true) then n = n + 1 end
	end
	return n
end

-- the hunter calls the pet (UNIT_PET for the player), then the Director resolves
local function Call(opts)
	opts = opts or {}
	P.pet = { name = opts.name or "Fang", guid = opts.guid or PET_GUID, family = opts.family or "Wolf", pet = true }
	if opts.happiness then P.petHappiness = opts.happiness end
	FIRE("UNIT_PET", "player")
	ADVANCE(2)
	return P.pet
end

local function Dismiss()
	P.pet = nil
	FIRE("UNIT_PET", "player")
	ADVANCE(C.LINGER + 2)
end

-- an NPC at a band of disposition, met `days` ago, with a name and maybe a role
local function Npc(id, name, band, days, role)
	local axes = ({ close = { 70, 70, 50, 80 }, friend = { 60, 50, 30, 60 }, bond = { 95, 95, 90, 95 },
		neutral = { 0, 0, 0, 20 } })[band]
	local t = time() - (days or 0) * DAY
	local rec = { first = t - DAY, last = t, count = 5, name = name, trust = axes[1], affection = axes[2], loyalty = axes[3],
		familiarity = axes[4], role = role }
	R:Data().npcs[id] = rec
	local _, now = R:Disposition(R:Axes(rec))
	T.eq(now, band, name .. " set up at " .. band)
	return rec
end

local function Party(...)
	P.group = true
	P.party = { ... }
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
T.run("companion: the numbers, stages and lists are data", function()
	Fresh()
	local c = C.config
	T.eq(#c.pet.stages, 4, "four stages of the bond")
	T.eq(c.pet.stages[1].id, "new", "a new companion first")
	T.eq(c.pet.stages[4].id, "bonded", "a bond beyond words last")
	T.ok(c.pet.memorable.trusted and c.pet.memorable.bonded and not c.pet.memorable.new, "the memorable stages")
	T.eq(c.pet.moods[1] .. c.pet.moods[2] .. c.pet.moods[3], "unhappycontenthappy", "GetPetHappiness 1-3 in words")
	T.eq(c.grief.band, "friend", "an NPC at Friend or above is mourned")
	T.ok(c.ally.places.none and c.ally.places.party and c.ally.places.raid and not c.ally.places.pvp
		and not c.ally.places.arena, "group deaths: the open world, dungeons and raids, never battlegrounds or arenas")
	T.eq(c.lament, "lament", "the event of the laments")
	T.eq(c.letters.band, "close", "letters from Close friend up")
	T.ok(c.letters.absenceDays >= 14, "after weeks of absence")
	T.ok(Engine.CONDITION_VALUES.petStage.bonded and Engine.CONDITION_VALUES.petMood.unhappy, "the condition values from the data")
	-- a pack can tune one value
	C:RegisterData({ pet = { callGap = 60 }, grief = { band = "bogus" } })
	T.eq(c.pet.callGap, 60, "one value tuned")
	T.eq(c.grief.band, "friend", "an unknown band ignored")
	C:RegisterData({ pet = { callGap = 1200 } })
	T.eq(R.VERSION, 9, "relationships.version 9 (N8 made it 8: pets, letterT, mourned, letter; #112 9: seen.guid)")
	T.eq(Config.characterDefaults.relationships.version, 9, "the defaults follow")
	T.ok(Config.defaults.relations.companion == true and Config.defaults.relations.letters == true, "both options on by default")
end)

T.run("companion: every line is private, in the inner voice, and speaks only from the module", function()
	Fresh()
	local events = { "pet_call", "pet_dismiss", "pet_mood", "pet_bond", "pet_grief", "npc_grief", "ally_death" }
	local n = 0
	for _, ev in ipairs(events) do
		T.ok(NS.Engine.byEvent[ev] and #NS.Engine.byEvent[ev] > 0, ev .. " has lines")
		for _, p in ipairs(NS.Engine:EventRules(ev)) do
			n = n + 1
			T.eq(p.speaker, "inner", p.id .. ": the inner voice")
			T.ok(Gateway:PrivateReason({ id = p.id, speaker = p.speaker, tags = p.tags }) ~= nil, p.id .. ": never chat")
			for _, lang in ipairs({ "en", "it" }) do
				T.ok(p.text[lang] and #p.text[lang] > 0, p.id .. ": a text in " .. lang)
			end
		end
	end
	T.eq(n, 121, "121 lines (23 of N8, 21 of N9, 7 of the hunter and the warlock in W01, 2 in W02, 10 generic in W04, 58 of the hunter and the warlock in W06)")
	for _, ev in ipairs({ "pet_grief", "npc_grief", "ally_death" }) do
		for _, p in ipairs(NS.Engine:EventRules(ev)) do
			T.ok(p.tags["topic:death"] == true, p.id .. ": topic death (a character who avoids it has none)")
		end
	end
	-- the laments: literary pieces, private (the verses pack is checked by Tests/check_versi.py; these are the test's)
	local laments = 0
	for _, p in ipairs(NS.Engine:EventRules("lament")) do
		laments = laments + 1
		T.ok(Engine.IsLiteraryRule(p), p.id .. ": a literary piece")
		T.eq(Gateway:PrivateReason({ id = p.id, speaker = p.speaker }), "literary", p.id .. ": never chat (D16)")
	end
	T.ok(laments >= 2, "laments for a grief")
	-- the guard: /au event or another system cannot make them speak
	for _, ev in ipairs(events) do
		T.eq(Engine:EventAllowed(ev, NS:BuildContext({})), false, ev .. " is guarded")
	end
	T.eq(Engine:EventAllowed("lament", NS:BuildContext({ companion = "lament" })), false, "a lament is never spoken")
	Director:Offer("pet_grief", { petName = "Fang", petKind = "beast" })
	ADVANCE(1)
	T.eq(Spoken("pet_grief"), 0, "an offer without the module says nothing")
end)

---------------------------------------------------------------------------
-- The companion pet
---------------------------------------------------------------------------
T.run("companion: a hunter's pet is kept, called and dismissed, at most once in a while", function()
	Fresh()
	Call({ happiness = 3 })
	local d = R:Data()
	local id, rec = next(d.pets)
	T.ok(rec ~= nil, "the pet has a record")
	T.eq(rec.name, "Fang", "its name")
	T.eq(rec.kind, "beast", "a beast (a hunter's)")
	T.eq(rec.family, "Wolf", "its family")
	T.eq(rec.stage, "new", "a new companion")
	T.eq(rec.guid, nil, "no GUID saved")
	T.eq(C.pet and C.pet.id, id, "the pet out now")
	T.eq(Offered("pet_call"), 1, "a call line offered")
	if Spoken("pet_call") == 1 then T.ok(Said("Fang") ~= nil, "the line names the pet") end
	Dismiss()
	T.eq(C.pet, nil, "no pet out")
	T.eq(Offered("pet_dismiss"), 1, "a dismissal line offered")
	-- called again at once: the gap holds
	Call()
	T.eq(Offered("pet_call"), 1, "no second call line within the gap")
	local n = 0
	for _ in pairs(d.pets) do n = n + 1 end
	T.eq(n, 1, "the same pet, one record")
	Dismiss()
	ADVANCE(C.config.pet.callGap + 1)
	Call()
	T.eq(Offered("pet_call"), 2, "after the gap, a call line again")
	T.eq(ChatSent(), nil, "nothing to chat")
end)

T.run("companion: only a hunter's or warlock's pet; nothing on entering the world, on a flight or with the option off", function()
	Fresh()
	P.class = "WARRIOR"
	Call()
	T.eq(next(R:Data().pets), nil, "a warrior's companion (a quest pet, a charm) is no pet of theirs")
	T.eq(Offered("pet_call"), 0, "no line")
	Fresh()
	C.entered = GetTime()
	Call()
	T.ok(next(R:Data().pets) ~= nil, "a pet found on entering the world is kept")
	T.eq(Offered("pet_call"), 0, "but it was not called: no line")
	Fresh()
	P.onTaxi = true
	Call()
	T.eq(Offered("pet_call"), 0, "on a flight: no line")
	Fresh()
	NS.db.relations.companion = false
	Call()
	T.eq(Offered("pet_call"), 0, "the option off: no line")
	T.ok(next(R:Data().pets) ~= nil, "the bond is still counted")
	Fresh()
	SECRET_UNITS.pet = true
	Call()
	T.eq(next(R:Data().pets), nil, "a hidden identity: nothing")
	Fresh()
	NS.db.relations.npcAuto = false
	Call()
	T.eq(next(R:Data().pets), nil, "the automatic NPCs off: nothing is kept")
end)

T.run("companion: a warlock's demon; it keeps its own record", function()
	Fresh()
	P.class = "WARLOCK"
	Call({ name = "Zhaldrix", guid = DEMON_GUID, family = "Imp" })
	local _, rec = next(R:Data().pets)
	T.eq(rec.kind, "demon", "a demon")
	T.eq(C:Happiness(), nil, "a demon has no happiness")
	T.eq(Offered("pet_call"), 1, "a call line")
	if Spoken("pet_call") == 1 then T.ok(Said("Zhaldrix") ~= nil, "it names the demon") end
end)

T.run("companion: the bond grows with the hours together; a new stage speaks, a memorable one is written down", function()
	Fresh()
	Call()
	local id = C.pet.id
	local rec = C:Pet(id)
	LEAP(3600 * 2 + 60)
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(2)
	T.ok(rec.hours >= 2, "two hours counted (" .. rec.hours .. ")")
	T.eq(rec.stage, "familiar", "a familiar presence")
	T.eq(Offered("pet_bond"), 1, "a bond line")
	T.eq(#Entries("pet_bond"), 0, "not memorable: no journal line")
	LEAP(3600 * 5)
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(2)
	T.eq(rec.stage, "familiar", "still familiar")
	LEAP(3600 * 5)
	Dismiss()
	T.eq(rec.stage, "trusted", "trusted after twelve hours (counted when it leaves)")
	local e = Entries("pet_bond")
	T.eq(#e, 1, "a memorable stage: a journal line")
	T.eq(e[1] and e[1].perm, true, "kept")
	T.ok(LM:Describe(e[1]):find("Fang", 1, true) ~= nil, "the journal names the pet: " .. LM:Describe(e[1]))
	T.eq(Offered("pet_bond"), 1, "no line while it leaves")
	-- the hours of a sleeping client are capped
	Call()
	LEAP(3600 * 100)
	Dismiss()
	T.ok(rec.hours <= 14 + C.MAX_ACCRUE + 0.1, "at most MAX_ACCRUE hours in one step")
end)

T.run("companion: the pet's mood (hunters), at most once in a while", function()
	Fresh()
	Call({ happiness = 2 })
	T.eq(C.pet.mood, 2, "content")
	P.petHappiness = 1
	FIRE("UNIT_HAPPINESS", "pet")
	ADVANCE(2)
	T.eq(Offered("pet_mood"), 1, "unhappy: a line offered")
	-- any line of an unhappy pet (rel.pet.mood.unhappy, .unhappy.new): which one depends on the random numbers drawn
	if Spoken("pet_mood") == 1 then
		T.ok((Said("sullen") or Said("a look I know") or Said("poor start")) ~= nil, "an unhappy line")
	end
	P.petHappiness = 3
	FIRE("UNIT_HAPPINESS", "pet")
	ADVANCE(2)
	T.eq(Offered("pet_mood"), 1, "within the gap: no second line")
	T.eq(C.pet.mood, 3, "but the mood is known")
	ADVANCE(C.config.pet.moodGap + 1)
	P.petHappiness = 2
	FIRE("UNIT_HAPPINESS", "pet")
	ADVANCE(2)
	T.eq(Offered("pet_mood"), 2, "after the gap, again")
	FIRE("UNIT_HAPPINESS", "pet")
	ADVANCE(2)
	T.eq(Offered("pet_mood"), 2, "the same mood: nothing")
end)

---------------------------------------------------------------------------
-- Grief
---------------------------------------------------------------------------
T.run("grief: the pet's death is mourned once, after the fight, with a journal line and a lament", function()
	Fresh()
	Call()
	local id = C.pet.id
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(Pacing.MOMENT + 1)
	P.pet.dead = true
	FIRE("UNIT_DIED", PET_GUID)
	ADVANCE(2)
	T.eq(Offered("pet_grief"), 0, "in the fight: held")
	T.eq(#C.pending, 1, "one grief waiting")
	FIRE("UNIT_DIED", PET_GUID)
	FIRE("UNIT_PET", "player")
	ADVANCE(2)
	T.eq(#C.pending, 1, "the same death once")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(2)
	T.eq(Offered("pet_grief"), 1, "after the fight: the grief")
	T.eq(Spoken("pet_grief"), 1, "spoken")
	T.ok(Said("Fang") ~= nil, "it names the pet")
	T.eq(C:Pet(id).deaths, 1, "a death counted")
	local e = Entries("grief_pet")
	T.eq(#e, 1, "a journal line")
	T.ok(LM:Describe(e[1]):find("Fang", 1, true) ~= nil, "the journal names the pet")
	T.eq(Laments(), 1, "a lament in the songbook")
	local n = Notices()
	T.ok(#n >= 1 and n[#n]:find("songbook", 1, true) ~= nil, "a private notice of the lament")
	-- revived: a new death is mourned again
	P.pet.dead = false
	FIRE("UNIT_PET", "player")
	ADVANCE(2)
	T.eq(C.pet.dead, false, "alive again")
	P.pet.dead = true
	FIRE("UNIT_PET", "player")
	ADVANCE(2)
	T.eq(Offered("pet_grief"), 2, "dead on UNIT_PET (no death event): mourned")
	T.eq(ChatSent(), nil, "nothing to chat")
end)

T.run("grief: a demon gone a moment before its death event is mourned, not dismissed", function()
	Fresh()
	P.class = "WARLOCK"
	Call({ name = "Zhaldrix", guid = DEMON_GUID, family = "Voidwalker" })
	P.pet = nil
	FIRE("UNIT_PET", "player")
	FIRE("UNIT_DIED", DEMON_GUID)
	ADVANCE(C.LINGER + 2)
	T.eq(Offered("pet_dismiss"), 0, "not a dismissal")
	T.eq(Offered("pet_grief"), 1, "a grief")
	-- found already dead on entering the world: no grief
	Fresh()
	C.entered = GetTime()
	P.pet = { name = "Fang", guid = PET_GUID, family = "Wolf", pet = true, dead = true }
	FIRE("UNIT_PET", "player")
	ADVANCE(2)
	T.eq(Offered("pet_grief"), 0, "a pet found dead is not mourned")
end)

T.run("grief: an NPC the character was close to, found dead, once in a while; never a foe or a stranger", function()
	Fresh()
	local rec = Npc(4001, "Bartleby", "friend", 0, "innkeeper")
	P.target = { name = "Bartleby", guid = Guid(4001), dead = true }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("npc_grief"), 1, "mourned")
	T.eq(Spoken("npc_grief"), 1, "spoken")
	T.ok(Said("Bartleby") ~= nil, "it names the NPC")
	T.ok(rec.mourned and time() - rec.mourned <= 3, "the time is kept")
	local e = Entries("grief_npc")
	T.eq(#e, 1, "a journal page")
	T.eq(e[1].perm, true, "kept")
	T.ok(LM:Describe(e[1]):find("Bartleby", 1, true) ~= nil, "the journal names them")
	for _, tag in ipairs(e[1].tags) do T.ok(tag:match("^[a-z0-9_]+$") ~= nil, "a token, not a text: " .. tag) end
	P.target = nil
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	P.target = { name = "Bartleby", guid = Guid(4001), dead = true }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("npc_grief"), 1, "once: not again within againDays")
	-- a neutral NPC, a foe, a living one, a hidden identity
	Npc(4002, "Stranger", "neutral")
	P.target = { name = "Stranger", guid = Guid(4002), dead = true }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	local foe = Npc(4003, "Traitor", "friend")
	foe.foe = { t = time(), n = 1 }
	P.target = { name = "Traitor", guid = Guid(4003), dead = true }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	Npc(4004, "Alive", "close")
	P.target = { name = "Alive", guid = Guid(4004), dead = false }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	Npc(4005, "Hidden", "close")
	SECRET_UNITS.target = true
	P.target = { name = "Hidden", guid = Guid(4005), dead = true }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	SECRET_UNITS = {}
	T.eq(Offered("npc_grief"), 1, "none of these is mourned")
	-- dying while targeted (UNIT_DIED with the target's GUID)
	Npc(4006, "Mira", "close")
	P.target = { name = "Mira", guid = Guid(4006), dead = false }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	P.target.dead = true
	FIRE("UNIT_DIED", Guid(4006))
	ADVANCE(2)
	T.eq(Offered("npc_grief"), 2, "dying while targeted: mourned")
end)

T.run("ally_death (#125): a verified loss in the group, one lament per loss, guarded", function()
	Fresh()
	local eve = { name = "Eve", realm = "Stormrage", guid = ALLY_GUID, player = true }
	local bran = { name = "Bran", guid = ALLY2_GUID, player = true }
	Party(eve, bran)
	T.eq(C.group[ALLY_GUID], "party1", "the group read: Eve")
	T.eq(C.group[ALLY2_GUID], "party2", "Bran")
	eve.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "Eve fell: a lament")
	T.eq(Spoken("ally_death"), 1, "spoken")
	-- the lament names her when its variant has a place for the name (in the session only); some variants name no
	-- one, and which one is picked depends on the order of the random draws (W08: robust to pick order)
	local unnamed = {}
	for _, p in ipairs(NS.Engine:EventRules("ally_death")) do
		for _, list in pairs(p.text or {}) do
			for _, t in ipairs(type(list) == "table" and list or {}) do
				if type(t) == "string" and not t:find("{other}", 1, true) then
					unnamed[(t:gsub("{g:([^|}]*)|([^}]*)}", "%1"))] = true
					unnamed[(t:gsub("{g:([^|}]*)|([^}]*)}", "%2"))] = true
				end
			end
		end
	end
	T.ok(next(unnamed) ~= nil, "the variants that name no one are read")
	local said
	for i = #Narrator.history, 1, -1 do
		if not Narrator.history[i].notice then said = Narrator.history[i].text break end
	end
	T.ok(said ~= nil and not said:find("{other}", 1, true) and not said:find("Bran", 1, true), "the lament names no one else: " .. tostring(said))
	local plain = false
	for t in pairs(unnamed) do if said and said:find(t, 1, true) then plain = true end end
	T.ok(Said("Eve") ~= nil or plain, "the line names her, or its variant names no one (in the session only): " .. tostring(said))
	local e = Entries("grief_ally")
	T.eq(#e, 1, "a journal page")
	T.eq(#e[1].tags, 1, "one token")
	T.ok(not LM:Describe(e[1]):find("Eve", 1, true), "the journal keeps no name of another player")
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "the same loss once")
	-- another member within the gap: no second lament
	bran.dead = true
	FIRE("UNIT_DIED", ALLY2_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "a wipe is one lament (gap)")
	ADVANCE(C.config.ally.gap + 1)
	bran.dead, eve.dead = false, false
	bran.dead = true
	FIRE("UNIT_DIED", ALLY2_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 2, "after the gap, another loss")
	-- Eve again within allyGap: nothing
	ADVANCE(C.config.ally.gap + 1)
	eve.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 2, "the same member within allyGap: nothing")
	T.eq(ChatSent(), nil, "nothing to chat")
end)

T.run("ally_death (#125): never a secret identity, a feigned death, an unverified GUID, a battleground or a stranger", function()
	Fresh()
	local eve = { name = "Eve", guid = ALLY_GUID, player = true }
	Party(eve)
	-- not dead (the event alone is no proof)
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "alive: nothing")
	-- feigned
	eve.dead, eve.feign = true, true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "a feigned death: nothing")
	eve.feign = false
	-- a secret identity
	SECRET_UNITS.party1 = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "a secret identity: nothing")
	SECRET_UNITS = {}
	-- a secret GUID in the event
	FIRE("UNIT_DIED", MakeSecret())
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "a secret GUID: nothing")
	-- someone not in the group
	FIRE("UNIT_DIED", "Player-1-0000CCCC")
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "not a member: nothing")
	-- the roster moved: the unit now has another GUID
	P.party = { { name = "Zed", guid = "Player-1-0000DDDD", player = true, dead = true } }
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "a GUID the unit no longer has: nothing")
	T.eq(C.group["Player-1-0000DDDD"], "party1", "the roster read again")
	-- a battleground
	Fresh()
	P.instance, P.instanceType = true, "pvp"
	local bg = { name = "Eve", guid = ALLY_GUID, player = true }
	Party(bg)
	bg.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "a battleground: deaths are routine there")
	-- a secret identity when the roster is read: not even kept
	Fresh()
	SECRET_UNITS.party1 = true
	Party({ name = "Eve", guid = ALLY_GUID, player = true })
	T.eq(C.group[ALLY_GUID], nil, "a secret identity is not read")
	SECRET_UNITS = {}
	-- the session's quota
	Fresh()
	C.config.ally.perSession = 1
	local a = { name = "Eve", guid = ALLY_GUID, player = true }
	local b = { name = "Bran", guid = ALLY2_GUID, player = true }
	Party(a, b)
	a.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(C.config.ally.gap + 2)
	b.dead = true
	FIRE("UNIT_DIED", ALLY2_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "perSession")
	C.config.ally.perSession = 6
end)

T.run("ally_death (#125): a raid, a listed friend, the fight holds it, the lament follows", function()
	Fresh()
	P.group, P.raid = true, true
	P.raidMembers = { { name = "Garrosh", guid = "Player-1-00000001", player = true },
		{ name = "Eve", realm = "Stormrage", guid = ALLY_GUID, player = true } }
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)
	T.eq(C.group["Player-1-00000001"], nil, "the character is not their own ally")
	T.eq(C.group[ALLY_GUID], "raid2", "raid2")
	R:AddPlayer("Eve-Stormrage", "user")
	R:SetAxis("player", "Eve-Stormrage", "affection", 60)
	R:SetAxis("player", "Eve-Stormrage", "trust", 60)
	R:SetAxis("player", "Eve-Stormrage", "familiarity", 60)
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(Pacing.MOMENT + 1)
	P.raidMembers[2].dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 0, "held in the fight")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "after the fight")
	T.eq(Laments(), 1, "a lament in the songbook")
	-- literary forms never: no lament
	Fresh()
	NS.db.literary.frequency = "never"
	local a = { name = "Eve", guid = ALLY_GUID, player = true }
	Party(a)
	a.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	ADVANCE(2)
	T.eq(Offered("ally_death"), 1, "the line")
	T.eq(next(Songbook:Data().heard), nil, "literary forms never: no lament")
end)

---------------------------------------------------------------------------
-- Letters
---------------------------------------------------------------------------
T.run("letters: a close NPC not met for weeks writes at login, kept in the journal; never mail, never chat", function()
	Fresh()
	local inn = Npc(5001, "Farley", "close", 30, "innkeeper")
	Npc(5002, "Recent", "close", 3)
	Npc(5003, "Friendly", "friend", 40)
	local foe = Npc(5004, "Grudge", "bond", 40)
	foe.foe = { t = time() - 40 * DAY, n = 1 }
	local closer = Npc(5005, "Elara", "bond", 25, "trainer")
	local w = C:Writers()
	T.eq(#w, 2, "two may write (close or above, absent, never a foe)")
	T.eq(w[1].npcID, 5005, "the closest first")
	ENTER_GAME(true, false)
	ADVANCE(C.LETTER_DELAY + 2)
	local e = Entries("letter")
	T.eq(#e, 1, "one letter a login")
	T.eq(e[1] and e[1].perm, true, "kept")
	T.eq(closer.letter, time() - 2, "the NPC's last letter")
	local text = LM:Describe(e[1])
	T.ok(text:find("Elara", 1, true) ~= nil, "from Elara: " .. text)
	T.ok(text:find("A letter from", 1, true) == 1, "a letter")
	T.eq(e[1].tags[2], "trainer", "a trainer's letter")
	local n = Notices()
	T.ok(#n >= 1 and n[#n]:find("Elara", 1, true) ~= nil and n[#n]:find("journal", 1, true) ~= nil, "a private notice")
	T.eq(ChatSent(), nil, "nothing to chat")
	-- the next login, a day later: the gap holds
	LEAP(DAY)
	ENTER_GAME(true, false)
	ADVANCE(C.LETTER_DELAY + 2)
	T.eq(#Entries("letter"), 1, "gapDays between two letters")
	-- a /reload is no login
	LEAP(C.config.letters.gapDays * DAY)
	ENTER_GAME(true, true)
	ADVANCE(C.LETTER_DELAY + 2)
	T.eq(#Entries("letter"), 1, "a reload writes nothing")
	ENTER_GAME(true, false)
	ADVANCE(C.LETTER_DELAY + 2)
	T.eq(#Entries("letter"), 2, "after the gap, Farley writes (Elara wrote not long ago)")
	T.ok(inn.letter ~= nil, "Farley's letter kept")
	local last = Entries("letter")[2]
	T.eq(last.tags[2], "innkeeper", "an innkeeper's letter")
	T.ok(LM:Describe(last):find("Farley", 1, true) ~= nil, "from Farley")
	-- in Italian
	NS.db.locale = "it"
	T.ok(LM:Describe(last):find("Una lettera da Farley", 1, true) == 1, "in Italian: " .. LM:Describe(last))
	NS.db.locale = "en"
	-- the NPC forgotten: the letter stays, from "an old friend"
	R:Data().npcs[5001] = nil
	T.ok(LM:Describe(last):find("an old friend", 1, true) ~= nil, "a forgotten writer")
end)

T.run("letters: the option off, the relationships off, or nobody close: no letter", function()
	Fresh()
	Npc(5001, "Farley", "close", 30, "innkeeper")
	NS.db.relations.letters = false
	T.eq(C:Letters(), 0, "the option off")
	NS.db.relations.letters = true
	NS.db.modules.relations = false
	T.eq(C:Letters(), 0, "the relationships off")
	NS.db.modules.relations = true
	T.eq(C:Letters(), 1, "on: one")
	Fresh()
	Npc(5001, "Farley", "friend", 30)
	T.eq(C:Letters(), 0, "a friend, not close: none")
end)

---------------------------------------------------------------------------
-- Saved data
---------------------------------------------------------------------------
T.run("saved data: version 8, pets cleaned and capped, no GUID; version 7 loads; a newer one is read only", function()
	Fresh()
	local d = R:Data()
	d.version = 7
	d.pets = {
		[1] = { name = "Fang", kind = "beast", family = "Wolf", first = 100, last = 200, hours = 5, stage = "familiar",
			guid = PET_GUID, deaths = 2 },
		[2] = { name = "", kind = "beast", first = 100 },
		[3] = { name = "Odd", kind = "dragon", first = 100 },
		["x"] = { name = "Bad", kind = "beast", first = 100 },
		[4] = { name = "Future", kind = "demon", first = time() + 9999, hours = -5, stage = "Bad Stage" },
	}
	d.letterT = time() + 5000
	d.npcs[77] = { first = 1, last = 2, count = 1, name = "Old", mourned = 50, letter = time() + 99, junk = "x" }
	R:Sanitize()
	T.eq(d.version, 9, "version 7 moves to 9 (nothing to migrate)")
	T.ok(d.pets[1] and d.pets[1].name == "Fang" and d.pets[1].deaths == 2, "a good pet kept")
	T.eq(d.pets[1].guid, nil, "no GUID kept")
	T.eq(d.pets[2], nil, "no name: dropped")
	T.eq(d.pets[3], nil, "an unknown kind: dropped")
	T.eq(d.pets.x, nil, "a bad id: dropped")
	T.ok(d.pets[4] and d.pets[4].first <= time() and d.pets[4].hours == 0 and d.pets[4].stage == "new", "brought within limits")
	T.ok(d.letterT <= time(), "the letter's time in the past")
	T.eq(d.npcs[77].mourned, 50, "mourned kept")
	T.ok(d.npcs[77].letter <= time(), "letter in the past")
	T.eq(d.npcs[77].junk, nil, "unknown fields dropped")
	-- the cap
	d.pets = {}
	for i = 1, 30 do d.pets[i] = { name = "P" .. i, kind = "beast", first = 100, last = 100 + i } end
	R:Sanitize()
	local n = 0
	for _ in pairs(d.pets) do n = n + 1 end
	T.eq(n, C.config.pet.max, "at most pet.max pets")
	T.eq(d.pets[1], nil, "the one seen longest ago goes first")
	T.ok(d.pets[30] ~= nil, "the latest stays")
	-- reset npcs clears the pets
	R:Reset("npcs")
	T.eq(next(R:Data().pets), nil, "reset npcs: the pets go too")
	-- a newer version: read only, and the module keeps nothing
	NS.cdb.relationships = { version = 10, npcs = {}, players = {}, pets = { [1] = { future = true } } }
	R:Sanitize()
	T.eq(R.readOnly, true, "a newer version: read only")
	Call()
	T.eq(NS.cdb.relationships.pets[1].future, true, "its data untouched")
	T.eq(C.pet, nil, "nothing kept while read only")
	R.readOnly = false
end)

T.run("saved data: nothing of a fight, of a group or of chat is saved", function()
	Fresh()
	Call()
	local eve = { name = "Eve", realm = "Stormrage", guid = ALLY_GUID, player = true }
	Party(eve)
	eve.dead = true
	FIRE("UNIT_DIED", ALLY_GUID)
	P.pet.dead = true
	ADVANCE(C.config.ally.gap + 1)
	FIRE("UNIT_DIED", PET_GUID)
	ADVANCE(2)
	local function Scan(v, path, found)
		if type(v) == "string" then
			if v:find("Pet-", 1, true) or v:find("Player-", 1, true) or v:find("Eve", 1, true) then table.insert(found, path) end
		elseif type(v) == "table" then
			for k, x in pairs(v) do Scan(x, path .. "." .. tostring(k), found) end
		end
		return found
	end
	local found = Scan(NS.cdb.relationships, "relationships", {})
	Scan(NS.cdb.memories, "memories", found)
	Scan(NS.cdb.songbook, "songbook", found)
	T.eq(table.concat(found, ", "), "", "no GUID, no ally's name in the saved data")
end)

T.run("companion: /au debug status and the options grid", function()
	Fresh()
	Call()
	local s = C:Status()
	T.ok(s:find("Fang", 1, true) ~= nil and s:find("watching true", 1, true) ~= nil, "status: " .. s)
	T.ok(NS:L("rel_opt_companion") ~= "rel_opt_companion" and NS:L("rel_opt_letters") ~= "rel_opt_letters", "the options have names")
	for _, lang in ipairs({ "en", "it" }) do
		NS.db.locale = lang
		for _, k in ipairs({ "rel_opt_companion", "rel_opt_companion_tip", "rel_opt_letters", "rel_opt_letters_tip",
			"mem_kind_pet_bond", "mem_kind_grief_pet", "mem_kind_grief_npc", "mem_kind_grief_ally", "mem_kind_letter",
			"rel_mem_pet_bond", "rel_mem_grief_pet", "rel_mem_grief_npc", "rel_mem_grief_ally", "rel_pet_someone",
			"rel_letter_someone", "rel_letter_notice", "rel_lament_notice", "rel_pet_stage_new", "rel_pet_stage_familiar",
			"rel_pet_stage_trusted", "rel_pet_stage_bonded" }) do
			T.ok(NS.languages[lang].ui[k] ~= nil, lang .. ": " .. k)
		end
		for _, role in ipairs({ "innkeeper", "merchant", "trainer", "guard", "questgiver", "any" }) do
			for v = 1, C.config.letters.variants do
				local k = ("rel_letter_%s_%d"):format(role, v)
				local text = NS.languages[lang].ui[k]
				T.ok(text ~= nil and select(2, text:gsub("%%s", "")) == 1, lang .. ": " .. k .. " names its writer once")
			end
		end
	end
	NS.db.locale = "en"
end)
