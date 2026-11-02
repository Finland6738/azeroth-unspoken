-- Tests of N7 (#219): the nemesis (Systems/Nemesis.lua, the arc `nemesis` of Data/Arcs.lua told for each NPC by
-- Systems/StoryArcs.lua, `nemesis` in Data/Relationships.lua, the lines of Data/RegistryArcs.lua and the songs of a fall).
-- The mock fires the events in the order ADR 0035 proposes; the real order on Forever is not confirmed in game (the owner
-- chose to build on it before the N0 run, 2026-11-02).
--   - an elite or rare NPC that kills the character becomes a nemesis: a story "nemesis#<npcID>", at most three at a time,
--     with slots of its own; ordinary NPCs, dungeons, hidden identities, unknown killers and old blows make none;
--   - each further death by its hand deepens the story; meeting it again brings a line, at most once in a while;
--   - its fall by the character's hand (or their pet's, or alone on it) closes the story from any state, with a memory,
--     the journal page and a song in the songbook; someone else's kill does not;
--   - narration only and private: never chat; the user can turn nemeses off; the saved data has its version.
local NS = ...
local Engine, Config, SA, LM, Director, Narrator = NS.Engine, NS.Config, NS.StoryArcs, NS.LivingMemory, NS.Director, NS.Narrator
local N, Songbook, JournalFrame, Validator, Pacing = NS.Nemesis, NS.Songbook, NS.JournalFrame, NS.Validator, NS.Pacing

local PLAYER_GUID = "Player-1-00000001"
local OTHER_GUID = "Player-1-00000002"
local function Guid(id, spawn) return ("Creature-0-3134-0-6-%d-%s"):format(id, spawn or "0000B3E9A1") end
local function Key(id) return SA.InstanceKey("nemesis", id) end

-- the songs of a fall, as the verses pack would give them (the verses pack is not loaded in these tests)
local function Lines(...) return table.concat({ ... }, "\n") end
NS:RegisterEvent("nemesis_song", { category = "lore", chance = 0, cooldown = 0 })
local function Song(from)
	return { event = "nemesis_song", category = "lore", speaker = "inner", styles = { "epic" }, tags = { "lore", "topic:death" },
		genre = "song", purpose = "celebrate", origin = "common", cooldown = 604800,
		conditions = { combat = false, arc = { id = "nemesis", from = from } } }
end
NS:RegisterPack({ id = "nemtest", languages = { "enUS", "itIT" },
	registry = { ["nt.song.once"] = Song("MARKED"), ["nt.song.long"] = Song({ "HAUNTED", "SWORN" }) },
	texts = {
		enUS = { ["nt.song.once"] = Lines("A test song, sung once:", "it fell the first time round,", "and lies upon the ground."),
			["nt.song.long"] = Lines("A test song of a long feud:", "it fell at last, and late,", "and settled every debt.") },
		itIT = { ["nt.song.once"] = Lines("Un canto di prova:", "cadde la prima volta,", "e giace sulla terra."),
			["nt.song.long"] = Lines("Un canto di prova, di lunga contesa:", "cadde alla fine, tardi,", "e saldò ogni debito.") },
	} })

local function Fresh()
	NS.cdb.arcs = nil
	NS.cdb.memories = nil
	NS.cdb.songbook = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	SA.readOnly = false
	SA:OnInit()
	SA.BEAT_GAP = 0
	N:OnInit()
	Songbook.readOnly = false
	Songbook:Data()
	Songbook:Sync()
	NS.Diagnostics.errors = {}
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.literary.frequency = "rare"
	NS.db.output.privateNarrator = true
	NS.db.output.npcDialogues = false
	P.target, P.npc, P.party, P.group, P.raid, P.pet, P.nameplates = nil, nil, nil, false, false, nil, nil
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Elwynn Forest", "", false, false, 100, 100, 1429
	P.instance, P.instanceType = false, nil
	P.level, P.race, P.faction = 30, "Human", "Alliance"
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "en", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	Pacing:Reset()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	-- the base arc of a fall opens on a death too: off here, so that the lines and slots counted are the nemesis's
	SA:Disable("fallen")
	SENT = {}
	ADVANCE(300)
end

-- a hostile NPC of the mock
local function Mob(id, opts)
	opts = opts or {}
	return { name = opts.name or ("Brute " .. id), guid = Guid(id, opts.spawn), reaction = 2, hostile = true,
		cls = opts.cls or "elite", ctype = "Humanoid", ctypeID = 7, tapDenied = opts.tapDenied }
end

-- a fight: the mob is targeted, attacks the character (threat 3) and kills them (the death comes before the end of the
-- fight unless `late`)
local function KilledBy(t, opts)
	opts = opts or {}
	P.target = t
	ADVANCE(1)
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(1)
	t.threat = 3
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	FIRE("UNIT_THREAT_LIST_UPDATE", "target")
	for _, plate in ipairs(opts.plates or {}) do
		P.nameplates = P.nameplates or {}
		table.insert(P.nameplates, plate)
		plate.threat = 3
		FIRE("UNIT_THREAT_LIST_UPDATE", "nameplate" .. #P.nameplates)
	end
	ADVANCE(opts.wait or 4)
	if opts.late then
		P.combat = false
		FIRE("PLAYER_REGEN_ENABLED")
		ADVANCE(1)
	end
	P.dead = true
	FIRE("PLAYER_DEAD")
	P.combat = false
	if not opts.late then FIRE("PLAYER_REGEN_ENABLED") end
	ADVANCE(1)
	P.nameplates = nil
end

local function Revive()
	P.dead = false
	FIRE("PLAYER_ALIVE")
	ADVANCE(30)
end

-- the character fights the mob and it dies: `by` "me" (PARTY_KILL by the player), "pet", "other", "died" (UNIT_DIED only),
-- "none" (no event: dead at the end of the fight)
local function Slay(t, by)
	P.target = t
	ADVANCE(1)
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(1)
	t.threat = 3
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	FIRE("UNIT_THREAT_LIST_UPDATE", "target")
	ADVANCE(5)
	t.dead = true
	if by ~= "none" then FIRE("UNIT_DIED", t.guid) end
	if by == "me" or by == "pet" or by == "other" then
		FIRE("PARTY_KILL", by == "me" and PLAYER_GUID or by == "pet" and P.pet.guid or OTHER_GUID, t.guid)
	end
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(N.config.linger + 1)
end

local function Offered(event)
	local n = 0
	for _, e in ipairs(Director.log) do
		if e.event == event then n = n + 1 end
	end
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

---------------------------------------------------------------------------
-- Data and the arc
---------------------------------------------------------------------------
T.run("nemesis: the numbers, lists and the arc are data", function()
	Fresh()
	local c = N.config
	T.eq(c.arc, "nemesis", "the arc")
	T.ok(c.classes.elite and c.classes.rare and c.classes.rareelite and c.classes.worldboss, "elite, rare and boss")
	T.eq(c.classes.normal, nil, "an ordinary NPC never")
	T.ok(c.places.none and not c.places.party and not c.places.raid, "the open world only")
	T.ok(c.holderAge == 10 and c.linger == 3 and c.meetGap >= 600, "the gaps (ADR 0035: 10 s, 3 s)")
	T.eq(c.song, "nemesis_song", "the event of the songs")
	local def = SA.defs.nemesis
	T.ok(def and not def.bad, "the arc is registered and valid")
	T.eq(def.instances, 3, "at most three nemeses at a time")
	T.eq(def.subject, "npc", "tied to an NPC")
	T.eq(def.topic, "death", "its topic is death")
	local problems = {}
	for _, p in ipairs(SA:Check()) do
		if p.key == "nemesis" or p.key:find("^arc%.nemesis") then table.insert(problems, p.level .. " " .. p.msg) end
	end
	T.eq(#problems, 0, "no problem and no silent step: " .. table.concat(problems, " | "))
	for _, lang in ipairs({ "en", "it" }) do
		local t = SA.texts.nemesis[lang]
		T.ok(t.subjectTitle:find("{name}", 1, true), "the title of a story holds the name (" .. lang .. ")")
		T.ok(t.stateNames.MARKED and t.stateNames.HAUNTED and t.stateNames.SWORN, "the states have names (" .. lang .. ")")
	end
	for _, id in ipairs({ "arc.nemesis.open.i", "arc.nemesis.haunt.i", "arc.nemesis.sworn.i", "arc.nemesis.done.e",
		"arc.nemesis.meet.marked.i", "arc.nemesis.meet.e" }) do
		local p = Engine.byId[id]
		T.ok(p and #p.text.en > 0 and #p.text.it > 0, id .. ": English and Italian")
		T.ok(p and p.speaker ~= "character", id .. ": a private voice")
		T.ok(p and p.tags["topic:death"], id .. ": topic death")
	end
end)

T.run("arcs told for many NPCs: what the validator refuses", function()
	Fresh()
	local function Def(extra)
		local d = { id = "manytest", subject = "npc", instances = 2, states = { "LOCKED", "OPEN", "DEEP", "RESOLVED" },
			steps = { { from = "LOCKED", to = "OPEN", on = { "slain" } }, { from = "OPEN", to = "DEEP", on = { "slain" } },
				{ from = "OPEN", to = "RESOLVED", on = { "fall" } }, { from = "DEEP", to = "RESOLVED", on = { "fall" } } } }
		for k, v in pairs(extra or {}) do d[k] = v end
		return d
	end
	local function Has(d, text)
		for _, m in ipairs(SA:Validate(d)) do if m:find(text, 1, true) then return true end end
		return false
	end
	T.eq(#SA:Validate(Def()), 0, "a good arc: it may close from any opened state")
	T.ok(Has(Def({ instances = 9 }), "instances deve essere"), "too many")
	T.ok(Has(Def({ instances = 1.5 }), "instances deve essere"), "not a whole number")
	local loose = Def()
	loose.subject = nil
	T.ok(Has(loose, "subject = 'npc'"), "tied to an NPC")
	local d = Def()
	d.steps[1] = { from = "LOCKED", to = "RESOLVED", on = { "fall" } }
	T.ok(Has(d, "solo allo stato successivo"), "never from LOCKED straight to RESOLVED")
	d = Def()
	d.steps[2].on = { "zone" }
	T.ok(Has(d, "solo con gli eventi del suo NPC"), "only its NPC's events")
	d = Def()
	d.steps[1].on = { "death" }
	T.ok(Has(d, "si apre da un evento"), "opens on an event with an NPC")
	-- an ordinary arc still goes one state at a time
	local plain = Def({ instances = false })
	plain.instances = nil
	T.ok(Has(plain, "solo allo stato successivo"), "an ordinary arc: no jumps")
end)

---------------------------------------------------------------------------
-- Killed by
---------------------------------------------------------------------------
T.run("an elite that kills the character becomes a nemesis", function()
	Fresh()
	local hogs = Mob(70001, { name = "Grimtusk" })
	KilledBy(hogs)
	local item = SA:Item(Key(70001))
	T.ok(item ~= nil, "a story for this NPC")
	T.eq(item and item.state, "MARKED", "marked")
	T.eq(item and item.subject.npcID, 70001, "its NPC")
	T.eq(item and item.subject.name, "Grimtusk", "its name")
	T.eq(SA:InstanceCount("nemesis"), 1, "one nemesis")
	T.eq(SA:ActiveCount(), 0, "the slots of the other stories stay free")
	T.eq(SA:Title(Key(70001)), "The Shadow of Grimtusk", "the title of the story")
	T.ok(LM:HasFlag("arc_nemesis_marked"), "the arc's flag")
	-- the line waits for the character to be alive
	T.eq(Spoken("arc_open"), 0, "dead: silent")
	Revive()
	T.eq(Spoken("arc_open"), 1, "alive: the opening line")
	local h = Narrator.history[#Narrator.history]
	T.ok(h and h.text:find("Grimtusk", 1, true), "the line names it: " .. tostring(h and h.text))
	T.eq(ChatSent(), nil, "nothing in chat")
	-- the death after the end of the fight still belongs to it (ADR 0035: linger)
	KilledBy(Mob(70002, { cls = "rare" }), { late = true })
	T.eq(SA:State(Key(70002)), "MARKED", "a rare one too, killing just after the fight ended")
	T.eq(SA:InstanceCount("nemesis"), 2, "two nemeses")
end)

T.run("no nemesis without a worthy, known killer", function()
	Fresh()
	KilledBy(Mob(70010, { cls = "normal" }))
	T.eq(SA:Item(Key(70010)), nil, "an ordinary mob")
	P.dead = false
	P.instance, P.instanceType = true, "party"
	KilledBy(Mob(70011))
	T.eq(SA:Item(Key(70011)), nil, "an elite in a dungeon")
	P.dead, P.instance, P.instanceType = false, false, nil
	SECRET_UNITS = { target = true }
	KilledBy(Mob(70012))
	SECRET_UNITS = {}
	T.eq(SA:Item(Key(70012)), nil, "a hidden identity")
	P.dead = false
	-- the blow is too old: the last holder more than holderAge seconds before the death
	KilledBy(Mob(70013), { wait = N.config.holderAge + 5 })
	T.eq(SA:Item(Key(70013)), nil, "an old holder is not the killer")
	P.dead = false
	-- a death with no fight
	N:Reset()
	P.target = nil
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(2)
	T.eq(SA:InstanceCount("nemesis"), 0, "a fall from a height makes no nemesis")
	P.dead = false
	-- two attacking: the target if it was one of them, otherwise nobody
	local other = Mob(70015)
	P.target = nil
	KilledBy(Mob(70014), { plates = { other } })
	T.eq(SA:State(Key(70014)), "MARKED", "two attacking: the target")
	T.eq(SA:Item(Key(70015)), nil, "not the other one")
	P.dead = false
	local a, b = Mob(70016), Mob(70017)
	KilledBy(Mob(70018, { cls = "normal" }), { plates = { a, b } })
	T.eq(SA:Item(Key(70016)) or SA:Item(Key(70017)), nil, "the target was ordinary and two elites attacked: unknown")
	-- an avoided topic
	P.dead = false
	NS.Personality:Profile().traits.avoid = { death = true }
	NS.Personality:Refresh()
	KilledBy(Mob(70019))
	T.eq(SA:Item(Key(70019)), nil, "a character who avoids death has no nemesis")
	NS.Personality:SetArchetype("neutral")
end)

T.run("each further death deepens the story; at most three at a time", function()
	Fresh()
	local t = Mob(70020, { name = "Old Scar" })
	KilledBy(t)
	Revive()
	KilledBy(t)
	T.eq(SA:State(Key(70020)), "HAUNTED", "twice: haunted")
	Revive()
	KilledBy(t)
	T.eq(SA:State(Key(70020)), "SWORN", "three times: the feud")
	Revive()
	KilledBy(t)
	T.eq(SA:State(Key(70020)), "SWORN", "more: still the feud")
	T.ok(Spoken("arc_step") >= 2, "the lines of the deeper states")
	-- slots: three nemeses, the fourth waits for the user
	Revive()
	KilledBy(Mob(70021))
	Revive()
	KilledBy(Mob(70022))
	Revive()
	T.eq(SA:InstanceCount("nemesis"), 3, "three nemeses")
	KilledBy(Mob(70023, { name = "Latecomer" }))
	Revive()
	local fourth = SA:Item(Key(70023))
	T.ok(fourth and fourth.state == "LOCKED" and fourth.waiting, "the fourth waits")
	T.eq(SA:InstanceCount("nemesis"), 3, "still three")
	local ok, why = SA:Start(Key(70023))
	T.ok(not ok and why == "full", "no slot: " .. tostring(why))
	T.ok(SA:Suspend(Key(70021)), "the user suspends one")
	ok = SA:Start(Key(70023))
	T.ok(ok, "now the fourth can begin")
	T.eq(SA:State(Key(70023)), "MARKED", "begun")
	T.eq(SA:Find("the shadow of latecomer"), Key(70023), "found by its title")
	T.eq(SA:Find(Key(70023)), Key(70023), "found by its key")
	-- the journal: the nemeses under their own heading
	local list = SA:Listing()
	T.eq(#list.many, 4, "four stories in the list: three under way and the suspended one")
	T.eq(#list.active, 0, "none among the ordinary stories")
	local tab
	for _, x in ipairs(JournalFrame.tabs) do if x.id == "stories" then tab = x end end
	local text = {}
	for _, row in ipairs(tab.rows()) do table.insert(text, row.text or "") end
	text = table.concat(text, "\n")
	T.ok(text:find("Nemeses (3 of 3)", 1, true), "the heading of the nemeses: " .. text)
	T.ok(text:find("The Shadow of Old Scar", 1, true), "a row for a nemesis")
end)

---------------------------------------------------------------------------
-- Meeting it again
---------------------------------------------------------------------------
T.run("meeting a nemesis again: a line, not too often", function()
	Fresh()
	local t = Mob(70030, { name = "Gravemaw" })
	KilledBy(t)
	Revive()
	P.target = nil
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(1)
	-- right after the death the meeting waits: the death had its own line
	P.target = t
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("nemesis_meet"), 0, "no meeting line right after the death")
	ADVANCE(N.config.meetGap + 10)
	P.target = nil
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(1)
	P.target = t
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("nemesis_meet"), 1, "met again: a line offered")
	T.eq(Spoken("nemesis_meet"), 1, "and spoken")
	local h = Narrator.history[#Narrator.history]
	T.ok(h and h.text:find("Gravemaw", 1, true), "it names the nemesis: " .. tostring(h and h.text))
	P.target = nil
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(5)
	P.target = t
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("nemesis_meet"), 1, "not again within the gap")
	-- the line never comes from /au event: the guard wants a meeting
	T.eq(Engine:EventAllowed("nemesis_meet", NS:BuildContext()), false, "guarded")
	T.eq(Engine:EventAllowed("nemesis_song", NS:BuildContext({ arc = SA:View(Key(70030)) })), false, "the songs are never spoken")
	-- an ordinary NPC: nothing
	P.target = Mob(70031, { cls = "normal" })
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	T.eq(Offered("nemesis_meet"), 1, "an NPC that is no nemesis")
	T.eq(ChatSent(), nil, "nothing in chat")
end)

---------------------------------------------------------------------------
-- The fall
---------------------------------------------------------------------------
T.run("its fall by the character's hand closes the story with a song", function()
	Fresh()
	local t = Mob(70040, { name = "Ironjaw" })
	KilledBy(t)
	Revive()
	t.threat = nil
	ADVANCE(N.config.meetGap + 10)
	Slay(t, "me")
	T.eq(SA:State(Key(70040)), "RESOLVED", "fallen: the story closes")
	T.eq(SA:InstanceCount("nemesis"), 0, "a slot is free again")
	T.ok(SA:Context().done.nemesis, "arcDone nemesis")
	local mem = Entries("story")
	T.ok(#mem == 1 and mem[1].tags[1] == "arc" and mem[1].tags[3] == "nemesis" and mem[1].perm, "a permanent memory of the arc")
	-- the song: the one for a fall at the first meeting
	T.ok(Songbook:Heard("nt.song.once") ~= nil, "the song of the fall is in the songbook")
	T.eq(Songbook:Heard("nt.song.long"), nil, "not the feud song")
	local said = table.concat(Notices(), "\n")
	T.ok(said:find("The Shadow of Ironjaw", 1, true) and said:find("A test song, sung once", 1, true), "a private notice: " .. said)
	ADVANCE(30)
	T.ok(Spoken("arc_resolve") >= 1, "the closing line")
	-- the journal page
	local rec = SA:Record(Key(70040))
	T.eq(rec and rec.bucket, "resolved", "among the concluded stories")
	T.ok(rec and #rec.history == 2, "its page: marked, then fallen")
	T.eq(ChatSent(), nil, "nothing in chat")
	-- after a long feud, the other song
	local u = Mob(70041)
	for _ = 1, 2 do
		KilledBy(u)
		Revive()
	end
	u.dead = false
	Slay(u, "died")
	T.eq(SA:State(Key(70041)), "RESOLVED", "alone on it: UNIT_DIED counts")
	T.ok(Songbook:Heard("nt.song.long") ~= nil, "the feud song")
end)

T.run("someone else's kill is not its fall; a pet's is; the end of the fight tells when no event does", function()
	Fresh()
	local t = Mob(70050)
	KilledBy(t)
	Revive()
	Slay(t, "other")
	T.eq(SA:State(Key(70050)), "MARKED", "another player's kill: the story goes on")
	t.dead = false
	P.pet = { name = "Wolf", guid = "Pet-0-3134-0-6-1-0000000001", pet = true }
	Slay(t, "pet")
	T.eq(SA:State(Key(70050)), "RESOLVED", "the pet's kill")
	local u = Mob(70051)
	KilledBy(u)
	Revive()
	Slay(u, "none")
	T.eq(SA:State(Key(70051)), "RESOLVED", "dead as the target at the end of the fight, nobody else on it")
	local v = Mob(70052, { tapDenied = true })
	KilledBy(v)
	Revive()
	Slay(v, "none")
	T.eq(SA:State(Key(70052)), "MARKED", "tapped by others: not the character's")
	P.group = true
	Slay(v, "died")
	T.eq(SA:State(Key(70052)), "MARKED", "in a group, UNIT_DIED alone says nothing")
	P.group = false
end)

T.run("the song waits for the end of the fight, and respects the literary setting", function()
	Fresh()
	local t = Mob(70060)
	KilledBy(t)
	Revive()
	-- the fall comes while the character still fights someone else
	P.target = t
	FIRE("PLAYER_TARGET_CHANGED")
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	t.dead = true
	FIRE("UNIT_DIED", t.guid)
	FIRE("PARTY_KILL", PLAYER_GUID, t.guid)
	ADVANCE(N.config.linger + 1)
	T.eq(SA:State(Key(70060)), "RESOLVED", "fallen")
	T.eq(Songbook:Heard("nt.song.once"), nil, "no song in combat")
	T.eq(#N.songs, 1, "it waits")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(1)
	T.ok(Songbook:Heard("nt.song.once") ~= nil, "after the fight, the song")
	-- the literary forms set to never: no song
	NS.db.literary.frequency = "never"
	local u = Mob(70061)
	KilledBy(u)
	Revive()
	Slay(u, "me")
	T.eq(SA:State(Key(70061)), "RESOLVED", "the story closes anyway")
	T.eq(Songbook:Heard("nt.song.long"), nil, "no song")
	NS.db.literary.frequency = "rare"
end)

---------------------------------------------------------------------------
-- The user's choices and the saved data
---------------------------------------------------------------------------
T.run("the user can turn the nemeses off", function()
	Fresh()
	T.ok(SA:Disable("nemesis"), "disable the arc as a whole")
	KilledBy(Mob(70070))
	T.eq(SA:Item(Key(70070)), nil, "no nemesis while it is off")
	T.eq(N:Watching(), false, "nothing is watched")
	T.ok(SA:Enable("nemesis"), "enable it again")
	P.dead = false
	KilledBy(Mob(70071))
	T.eq(SA:State(Key(70071)), "MARKED", "back on")
	T.ok(SA:Skip(Key(70071)), "a single nemesis can be skipped")
	T.eq(N:Story(70071), nil, "a skipped story is no nemesis now")
	NS.db.modules.storyArcs = false
	P.dead = false
	KilledBy(Mob(70072))
	T.eq(SA:Item(Key(70072)), nil, "the Stories module off: nothing")
	NS.db.modules.storyArcs = true
	T.eq(ChatSent(), nil, "nothing in chat")
end)

T.run("saved data: version 2, stories by NPC, trimmed and kept apart", function()
	Fresh()
	T.eq(SA.VERSION, 2, "the arcs' data is version 2")
	-- version 1 data is valid as it is
	NS.cdb.arcs = { version = 1, items = { path = { state = "DISCOVERED", mode = "active", since = 1, t = { DISCOVERED = 1 }, choices = {} } } }
	SA:Sanitize()
	T.eq(NS.cdb.arcs.version, 2, "migrated to 2")
	T.eq(SA:State("path"), "DISCOVERED", "the old stories stay")
	-- the stories by NPC: kept, an empty one dropped, a bad key dropped
	NS.cdb.arcs = { version = 2, items = {
		["nemesis#123"] = { state = "HAUNTED", mode = "active", since = 5, t = { MARKED = 1, HAUNTED = 5 }, choices = {},
			subject = { npcID = 123, name = "Rex" } },
		["nemesis#124"] = { state = "LOCKED", mode = "active", since = 0, t = {}, choices = {} },
		["nemesis#x"] = { state = "MARKED", mode = "active" },
		["nemesis#125"] = { state = "BOGUS", mode = "active", t = {} },
	} }
	SA:Sanitize()
	local items = NS.cdb.arcs.items
	T.eq(items["nemesis#123"] and items["nemesis#123"].state, "HAUNTED", "a story kept")
	T.eq(items["nemesis#124"], nil, "an empty story dropped")
	T.eq(items["nemesis#x"], nil, "a bad key dropped")
	T.eq(items["nemesis#125"], nil, "an unknown state goes back to LOCKED, and an empty story is dropped")
	-- at most KEEP_CLOSED closed stories; the live ones always stay; the arcs never lose their place
	items = { path = { state = "DISCOVERED", mode = "active", since = 1, t = {}, choices = {} } }
	for i = 1, SA.KEEP_CLOSED + 5 do
		items["nemesis#" .. (1000 + i)] = { state = "RESOLVED", mode = "active", since = i, ended = i, t = { MARKED = 1, RESOLVED = i }, choices = {} }
	end
	items["nemesis#9"] = { state = "MARKED", mode = "active", since = 1, t = { MARKED = 1 }, choices = {}, subject = { npcID = 9 } }
	NS.cdb.arcs = { version = 2, items = items }
	SA:Sanitize()
	local closed, live = 0, 0
	for key, item in pairs(NS.cdb.arcs.items) do
		if key:find("^nemesis#") then
			if item.state == "RESOLVED" then closed = closed + 1 else live = live + 1 end
		end
	end
	T.eq(closed, SA.KEEP_CLOSED, "the oldest closed stories go")
	T.eq(live, 1, "the live one stays")
	T.eq(NS.cdb.arcs.items["nemesis#1001"], nil, "the oldest went first")
	T.ok(NS.cdb.arcs.items["nemesis#" .. (1000 + SA.KEEP_CLOSED + 5)] ~= nil, "the newest stays")
	T.eq(SA:State("path"), "DISCOVERED", "an arc keeps its place")
	-- a newer version is read only
	NS.cdb.arcs = { version = 3, items = { ["nemesis#5"] = { state = "MARKED" } } }
	SA:Sanitize()
	T.ok(SA.readOnly, "a newer version: read only")
	KilledBy(Mob(70080))
	T.eq(NS.cdb.arcs.items["nemesis#70080"], nil, "nothing written")
	SA.readOnly = false
	-- nothing of a fight is saved: no GUID anywhere in the saved stories
	Fresh()
	KilledBy(Mob(70081))
	local function HasGuid(v)
		if type(v) == "string" then return v:find("Creature%-") ~= nil end
		if type(v) == "table" then for k, x in pairs(v) do if HasGuid(k) or HasGuid(x) then return true end end end
		return false
	end
	T.eq(HasGuid(NS.cdb.arcs), false, "no GUID saved")
end)

T.run("the real songs of the verses pack are pieces with their metadata", function()
	-- the verses pack is checked by Tests/check_versi.py; here only the names the engine relies on
	T.eq(N.config.song, "nemesis_song", "the event")
	T.ok(Engine.events.nemesis_song ~= nil, "registered (by the test pack here, by the verses pack in game)")
	T.eq(Engine.EventCategory("nemesis_meet"), "reflection", "the meeting is a reflection")
	T.eq(NS.NarrativeDirector:Priority("nemesis_meet"), NS.NarrativeDirector.PRIORITY.exceptional, "and exceptional")
end)
