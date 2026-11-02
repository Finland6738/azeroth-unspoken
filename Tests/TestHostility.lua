-- Tests of N1 (#213): hostility (Systems/Hostility.lua, Data/Relationships.lua `hostility` and `increments.attack...`,
-- Engine/RuleEngine.lua, UI/RelationsFrame.lua). The mock fires the events in the order ADR 0035 proposes; the real order
-- on Forever is not confirmed in game (the owner chose to build on it before the N0 run).
--   - an attack is a fight the character started on its target (an auto-attack or a spell first); the target's reaction is
--     read when it was chosen; pets, players, busy targets, hostile mobs, hidden identities and ordinary NPCs never count;
--   - a named NPC keeps a grudge and drops to Hated; the eternal grudge keeps it there, without it redemption is slow;
--   - a kill by the character or their pet; witnesses on the nameplates; the town's word and a betrayal's mark;
--   - the opposite faction's town remembers you as a whole; guest-right: the hearth's innkeeper is home;
--   - coming home after a long journey; narration only and private: never chat, an option, a quota.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame
local H = R.Watch

local DAY = 86400
local ROOT = "AzerothUnspokenRelations"
local PLAYER_GUID = "Player-1-00000001"
local HUMANOID = 7

local function Guid(id, spawn) return ("Creature-0-3134-0-6-%d-%s"):format(id, spawn or "0000A2E9A1") end

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
	H.signals, H.target, H.fight, H.pending = {}, nil, nil, nil
	NS.Interlocutor.roles = {}
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	-- the other steps' notices are off here, so the notices counted are this step's
	NS.db.relations.favours, NS.db.relations.nicknames, NS.db.relations.localNotices = false, false, false
	NS.db.relations.levelNotices = false
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid, P.instance, P.pet, P.nameplates = nil, nil, nil, false, false, nil, nil, nil
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Durotar", "Razor Hill", false, false, 100, 100, 1411
	P.level, P.hour, P.isDay, P.sex, P.faction, P.bind = 30, 14, nil, 2, "Horde", nil
	P.weather = { type = 0, intensity = 0 }
	SECRET_UNITS = {}
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

-- an NPC unit of the mock: neutral (reaction 4) and attackable unless said otherwise
local function Unit(id, opts)
	opts = opts or {}
	return { name = opts.name or ("Npc " .. id), guid = Guid(id, opts.spawn), reaction = opts.reaction or 4,
		faction = opts.faction, cls = opts.cls, questBoss = opts.boss, hostile = opts.hostile ~= false, ctype = "Humanoid",
		ctypeID = HUMANOID, combat = opts.busy, near = opts.near, player = opts.player, pet = opts.pet }
end

local function Talk(id, name, wowEvent)
	P.npc = { name = name, guid = Guid(id) }
	ADVANCE(16)
	FIRE(wowEvent or "GOSSIP_SHOW")
end

-- a fight: the target is chosen, `opts.first` opens it ("swing", "spell", "them"), its reaction turns hostile once
-- struck (the snapshot taken when it was chosen must be what counts), the fight ends and is settled
local function Fight(t, opts)
	opts = opts or {}
	P.target = t
	ADVANCE(1)
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(2)
	local first = opts.first or "swing"
	if first == "swing" then
		FIRE("PLAYER_ENTER_COMBAT")
	elseif first == "spell" then
		FIRE("UNIT_SPELLCAST_SENT", "player", "", "cast-" .. tostring(math.random(1e6)), 133)
	elseif first == "them" then
		FIRE("UNIT_COMBAT", "player", "WOUND", "", 20, 1)
	end
	ADVANCE(0.2)
	if opts.turn ~= false then t.reaction = 2 end
	if opts.threat ~= false then t.threat = 3 end
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	if opts.blow ~= false then FIRE("UNIT_COMBAT", "target", "WOUND", "", 12, 1) end
	ADVANCE(5)
	if opts.kill then
		t.dead = true
		FIRE("UNIT_DIED", t.guid)
		if opts.kill ~= "died" then FIRE("PARTY_KILL", opts.kill == "pet" and P.pet.guid or opts.kill == "other"
			and "Player-1-00000002" or PLAYER_GUID, t.guid) end
	end
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	if opts.late then
		ADVANCE(1)
		t.dead = true
		FIRE("PARTY_KILL", PLAYER_GUID, t.guid)
	end
	if opts.settle ~= false then ADVANCE(R.config.hostility.linger + 1) end
end

local function Npc(id) return R:Get("npc", id) end
local function Band(rec) local _, band = R:Disposition(R:Axes(rec)); return band end
local function Towns() return NS.cdb.relationships.towns end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		-- a story arc may tell its own news (a choice waiting): not this step's
		if h.notice and not h.text:find("/au stories", 1, true) then table.insert(out, h.text) end
	end
	return out
end

local function Said(key, ...)
	local list = Notices()
	for i = 1, R.config.hostility.variants do
		local want = NS:L(key .. i, ...)
		for _, text in ipairs(list) do if text == want then return true end end
	end
	return false
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

local function Ctx()
	local ctx = { hasTarget = false, level = 30 }
	R:Context(ctx, nil)
	return ctx
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
T.run("hostility: the numbers and lists are data", function()
	Fresh()
	local c = R.config.hostility
	for _, src in ipairs({ "attack", "attack_host", "kill", "attack_witnessed" }) do
		T.ok(R.config.increments[src] ~= nil, "increments." .. src)
		T.ok(R.config.towns.word.skip[src], src .. " does not spread through N6's share: the town hears it by its own rules")
	end
	T.ok(R.config.increments.attack.gain.trust < 0 and R.config.increments.attack_host.gain.trust < R.config.increments.attack.gain.trust,
		"attacking the host is worse than an attack")
	T.ok(c.named.classes.elite and c.named.classes.rare and c.named.classes.rareelite and c.named.classes.worldboss and c.named.questBoss,
		"the named rule")
	T.eq(c.named.classes.normal, nil, "an ordinary NPC is not named")
	-- the drop and the ceiling are Hated
	T.eq(select(2, R:Disposition(c.grudge.drop)), "hated", "the drop is Hated")
	local ceiling = {}
	for k, v in pairs(c.grudge.ceiling) do ceiling[k] = v end
	ceiling.familiarity = 100
	T.eq(select(2, R:Disposition(ceiling)), "hated", "the ceiling still is Hated")
	T.ok(c.grudge.redeem > 0 and c.grudge.redeem < 1 and c.grudge.graceDays > 30, "slow redemption after a long grace")
	T.ok(c.host.days > c.betrayal.days and c.host.trust < c.betrayal.trust, "guest-right broken weighs more")
	T.eq(Config.defaults.relations.eternalGrudge, true, "the eternal grudge is on by default (owner decision)")
	T.eq(Config.defaults.relations.hostilityNotices, true, "the notices are on")
	-- a pack may change a number; nonsense is refused
	R:RegisterData({ hostility = { reaction = 5, grudge = { ceiling = { bogus = 3, trust = -500 }, redeem = 7 },
		word = { nonsense = { trust = -1 }, betrayal = { bogus = 1 } } } })
	T.eq(c.reaction, 5, "a number changed")
	T.eq(c.grudge.ceiling.bogus, nil, "an unknown axis refused"); T.eq(c.grudge.ceiling.trust, -100, "an axis kept in its range")
	T.eq(c.grudge.redeem, 1, "a factor kept at most 1"); T.eq(c.word.nonsense, nil, "an unknown kind refused")
	T.eq(c.word.betrayal.bogus, nil, "an unknown axis of a word refused")
	R:RegisterData({ hostility = { reaction = 4, grudge = { ceiling = { trust = -80 }, redeem = 0.25 } } })
end)

---------------------------------------------------------------------------
-- An attack on a named NPC
---------------------------------------------------------------------------
T.run("hostility: a named NPC struck first keeps a grudge and drops to Hated", function()
	Fresh()
	local t = Unit(70101, { name = "Gazlowe", cls = "elite" })
	Fight(t)
	local rec = Npc(70101)
	T.ok(rec ~= nil, "a named NPC is remembered")
	T.eq(Band(rec), "hated", "Hated")
	T.eq(rec.foe.n, 1, "one attack"); T.eq(rec.foe.k, nil, "no kill"); T.eq(rec.foe.host, nil, "not the host")
	T.eq(rec.name, "Gazlowe", "the name kept to show it"); T.eq(rec.count, 0, "an attack is not a meeting")
	T.eq(rec.town, "Razor Hill", "the town where it happened")
	T.ok(Said("rel_foe_attack_", "Gazlowe"), "the private notice")
	T.eq(ChatSent(), nil, "never chat")
	T.ok(rec.noted and rec.noted.enemy, "the journal line of a bond that turned (memorable.enemy)")
	T.ok(#Entries("relation") >= 1, "the journal holds it")
	-- the reaction was read when the target was chosen: it had turned hostile by the end
	T.eq(t.reaction, 2, "the unit turned hostile during the fight")
	local ctx = { hasTarget = true }
	P.target = { name = "Gazlowe", guid = Guid(70101), reaction = 2 }
	R:Context(ctx, nil)
	T.eq(ctx.relFoe, "attacked", "the condition relFoe")
	-- a second attack counts, the notice takes turns
	Fight(Unit(70101, { name = "Gazlowe", cls = "elite" }), { first = "spell" })
	T.eq(Npc(70101).foe.n, 2, "two attacks")
	T.eq(#Notices(), 2, "a notice per fight")
end)

T.run("hostility: what is never an attack", function()
	local cases = {
		{ "an ordinary NPC (not named) is not remembered", Unit(70201), {} },
		{ "the other struck first", Unit(70202, { cls = "elite" }), { first = "them" } },
		{ "no opening blow seen", Unit(70203, { cls = "elite" }), { first = "none" } },
		{ "a target already busy with someone else", Unit(70204, { cls = "elite", busy = true }), {} },
		{ "a hostile mob (the nemesis is N7's)", Unit(70205, { cls = "elite", reaction = 2 }), {} },
		{ "a player", Unit(70206, { cls = "elite", player = true }), {} },
		{ "a pet", Unit(70207, { cls = "elite", pet = true }), {} },
		{ "not attackable", Unit(70208, { cls = "elite", hostile = false }), {} },
		{ "not engaged: no threat, no blow on it", Unit(70209, { cls = "elite" }), { threat = false, blow = false } },
	}
	for _, case in ipairs(cases) do
		Fresh()
		Fight(case[2], case[3])
		T.eq(Npc(case[2].guid and tonumber(case[2].guid:match("%-(%d+)%-[%x]+$"))), nil, case[1])
		T.eq(#Notices(), 0, case[1] .. ": silent")
	end
	-- a hidden identity is read in nothing
	Fresh()
	SECRET_UNITS.target = true
	Fight(Unit(70210, { cls = "elite" }))
	SECRET_UNITS.target = nil
	T.eq(Npc(70210), nil, "a hidden identity")
	-- a spell at a target that is already fighting the character is not an opening
	Fresh()
	local t = Unit(70211, { cls = "elite" })
	t.targetsPlayer = true
	Fight(t, { first = "spell" })
	T.eq(Npc(70211), nil, "a spell at a target already on the character")
	-- the module or the automatic NPCs off: nothing
	Fresh()
	NS.db.relations.npcAuto = false
	Fight(Unit(70212, { cls = "elite" }))
	T.eq(Npc(70212), nil, "automatic NPCs off")
end)

T.run("hostility: who is named", function()
	Fresh()
	Fight(Unit(70301, { cls = "rare" }))
	T.ok(Npc(70301) ~= nil, "rare")
	Fight(Unit(70302, { boss = true }))
	T.ok(Npc(70302) ~= nil, "a quest boss")
	Talk(70303, "Known One")
	Fight(Unit(70303))
	T.ok(Npc(70303).foe ~= nil, "an NPC already known")
	Fight(Unit(4949))
	T.ok(Npc(4949) ~= nil and Npc(4949).foe ~= nil, "an NPC of the curated register")
end)

---------------------------------------------------------------------------
-- Kills
---------------------------------------------------------------------------
T.run("hostility: a kill by the character, by the pet, by someone else, unknown, late", function()
	Fresh()
	Fight(Unit(70401, { name = "Rel", cls = "elite" }), { kill = "me" })
	T.eq(Npc(70401).foe.k, 1, "killed by the character")
	T.ok(Said("rel_foe_kill_", "Rel"), "the kill notice")
	T.eq(#Notices(), 1, "one notice for the fight")
	P.pet = { name = "Pip", guid = "Pet-0-1-2-3-4-00000D", pet = true }
	Fight(Unit(70402, { cls = "elite" }), { kill = "pet" })
	T.eq(Npc(70402).foe.k, 1, "the pet's kill counts for the character")
	Fight(Unit(70403, { cls = "elite" }), { kill = "other" })
	T.eq(Npc(70403).foe.k, nil, "someone else's kill")
	Fight(Unit(70404, { cls = "elite" }), { kill = "died" })
	T.eq(Npc(70404).foe.k, 1, "UNIT_DIED with the character alone on it")
	P.group = true
	Fight(Unit(70405, { cls = "elite" }), { kill = "died" })
	T.eq(Npc(70405).foe.k, nil, "in a group UNIT_DIED does not say who")
	P.group = false
	Fight(Unit(70406, { cls = "elite" }), { late = true })
	T.eq(Npc(70406).foe.k, 1, "a PARTY_KILL a moment after the fight still belongs to it")
	-- after the fight is settled, a death is no longer its own
	local t = Unit(70407, { cls = "elite" })
	Fight(t)
	t.dead = true
	FIRE("PARTY_KILL", PLAYER_GUID, t.guid)
	T.eq(Npc(70407).foe.k, nil, "a kill long after the fight")
	-- the fallback at the end: dead, the same unit, not tapped by others
	t = Unit(70408, { cls = "elite" })
	Fight(t, { settle = false })
	T.eq(Npc(70408), nil, "settled only after the linger")
	ADVANCE(R.config.hostility.linger + 1)
	t = Unit(70409, { cls = "elite" })
	t.dead = true   -- dead at the end of the fight, no event said it
	P.target = t
	FIRE("PLAYER_TARGET_CHANGED")
	t.dead = false
	FIRE("PLAYER_ENTER_COMBAT")
	t.threat, P.combat = 3, true
	FIRE("PLAYER_REGEN_DISABLED")
	t.dead, P.combat = true, false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(R.config.hostility.linger + 1)
	T.eq(Npc(70409).foe.k, 1, "UnitIsDead at the end, the character alone on it")
	T.eq(ChatSent(), nil, "never chat")
end)

---------------------------------------------------------------------------
-- The grudge
---------------------------------------------------------------------------
T.run("hostility: the eternal grudge, and slow redemption without it", function()
	Fresh()
	Fight(Unit(70501, { name = "Vex", cls = "elite" }))
	local rec = Npc(70501)
	for _ = 1, 30 do
		rec.today = nil
		Talk(70501, "Vex")
		Talk(70501, "Vex", "MERCHANT_SHOW")
	end
	T.eq(Band(rec), "hated", "thirty days of meetings: still Hated")
	T.ok(rec.trust <= R.config.hostility.grudge.ceiling.trust, "trust under its ceiling")
	T.ok(rec.familiarity > 0, "familiarity still grows: they know you, they hate you")
	-- good word in their town does not lift it either
	Towns()["Razor Hill"].word = { trust = 15, affection = 15 }
	rec.heard = nil
	Talk(70501, "Vex")
	T.ok(rec.trust <= R.config.hostility.grudge.ceiling.trust, "good word does not lift a grudge")
	T.eq(Band(rec), "hated", "still Hated")
	-- the eternal grudge off: within the grace days the ceiling holds; after them gains come slowly
	NS.db.relations.eternalGrudge = false
	T.ok(R:GrudgeHolds(rec), "inside the grace days")
	rec.foe.t = rec.foe.t - (R.config.hostility.grudge.graceDays + 1) * DAY
	T.ok(not R:GrudgeHolds(rec), "after the grace days")
	local plain = { trust = rec.trust, affection = rec.affection }
	local before = rec.trust
	rec.today = nil
	local _, gained = R:RecordNPC(70501, "Vex", "quest_turnin")
	local other = { first = 1, last = 1, count = 0, trust = plain.trust, affection = plain.affection }
	local free = R:Increment(other, "quest_turnin", time(), R:Temper(70501, rec, "quest_turnin").gain)
	T.ok(rec.trust > before, "it can climb again")
	T.ok(gained.trust < free.trust * 0.5, "but slowly: " .. tostring(gained.trust) .. " < " .. tostring(free.trust))
	-- the user's own sliders are theirs
	NS.db.relations.eternalGrudge = true
	R:SetAxis("npc", 70501, "trust", 40)
	T.eq(Npc(70501).trust, 40, "a slider the user moves is not held down")
	-- a grudge is never compacted away
	T.ok(not R:CompactNPCs() or Npc(70501) ~= nil, "kept")
end)

---------------------------------------------------------------------------
-- Witnesses, betrayal, the town
---------------------------------------------------------------------------
T.run("hostility: witnesses, a betrayal of the own faction and the town's trust", function()
	Fresh()
	Talk(70601, "Watcher")              -- a known NPC of the town who will see it
	Talk(70602, "Baker")                -- another, who will only hear it
	local watcher = Npc(70601)
	local trustBefore = watcher.trust or 0
	P.nameplates = {
		Unit(70601, { name = "Watcher", reaction = 5, near = true }),
		Unit(70603, { name = "Stranger", reaction = 5, near = true }),
		Unit(70604, { name = "Far One", reaction = 5, near = false }),
		Unit(70605, { name = "Wolf", reaction = 2, near = true }),
	}
	P.nameplates[1].hostile, P.nameplates[2].hostile = false, false
	Fight(Unit(70610, { name = "Grunt", faction = "Horde", cls = "elite" }))
	T.ok(Npc(70610).foe ~= nil, "the betrayed guard remembers")
	T.ok((watcher.trust or 0) < trustBefore, "a known witness thinks less of you")
	T.eq(Npc(70603), nil, "an unknown witness is not recorded (the cap is not filled)")
	T.eq(Npc(70604), nil, "a witness far away saw nothing")
	local town = Towns()["Razor Hill"]
	T.ok(town.word and town.word.trust < 0, "the word reached the town")
	T.ok(town.betray ~= nil and town.host == nil, "the town remembers a betrayal")
	T.ok(Said("rel_foe_attack_", "Grunt"), "the notice names the guard")
	local ctx = Ctx()
	T.eq(ctx.townBetrayed, true, "ctx.townBetrayed")
	-- the trust anyone can gain there is slowed while it lasts, and it fades
	T.ok(R:BetrayalTrust() < 1, "trust slowed here")
	P.subzone = "Sen'jin Village"
	T.eq(R:BetrayalTrust(), 1, "not elsewhere")
	P.subzone = "Razor Hill"
	town.betray = town.betray - R.config.hostility.betrayal.days * DAY
	T.eq(R:BetrayalTrust(), 1, "faded")
	-- the baker hears the word at the next meeting (N6)
	local baker = Npc(70602)
	local before = baker.trust or 0
	Talk(70602, "Baker")
	T.ok((baker.trust or 0) < before + (R.config.increments.gossip.gain.trust or 0), "the baker heard it")
	T.eq(ChatSent(), nil, "never chat")
end)

T.run("hostility: nobody saw it, the town knows nothing", function()
	Fresh()
	P.nameplates = { Unit(70701, { reaction = 5, near = false }) }
	Fight(Unit(70710, { name = "Grunt", faction = "Horde", cls = "elite" }))
	T.ok(Npc(70710).foe ~= nil, "the guard remembers")
	local town = Towns()["Razor Hill"]
	T.ok(town == nil or (town.word == nil and town.betray == nil), "no word, no mark")
	T.eq(Ctx().townBetrayed, nil, "no ctx.townBetrayed")
	-- an ordinary NPC nobody saw: nothing at all, not even a notice
	Fresh()
	Fight(Unit(70711))
	T.eq(#Notices(), 0, "silence")
	-- an ordinary NPC seen: the town hears, nobody is recorded one by one
	Fresh()
	P.nameplates = { Unit(70712, { reaction = 5, near = true }) }
	Fight(Unit(70713))
	T.eq(Npc(70713), nil, "the victim is not recorded")
	T.ok(Towns()["Razor Hill"].word.trust < 0, "the town heard of it")
	T.ok(Said("rel_foe_seen_", "Razor Hill"), "the witnesses' notice")
end)

T.run("hostility: the opposite faction's city remembers you as a whole", function()
	Fresh()
	P.zone, P.subzone, P.mapID = "Stormwind City", "Trade District", 1453
	P.nameplates = { Unit(70801, { reaction = 5, near = true }) }
	Fight(Unit(68, { name = "Stormwind City Guard", faction = "Alliance", cls = "elite", reaction = 2 }))
	T.eq(Npc(68), nil, "no guard is remembered one by one")
	local city = Towns()["Stormwind City"]
	T.ok(city and city.foe and city.foe.n == 1, "the city remembers")
	T.ok(Said("rel_foe_city_", "Stormwind City"), "the notice")
	T.eq(Ctx().townFoe, true, "ctx.townFoe")
	Fight(Unit(68, { faction = "Alliance", cls = "elite", reaction = 2, spawn = "0000B" }))
	T.eq(city.foe.n, 2, "twice")
	city.foe.t = city.foe.t - R.config.hostility.foe.days * DAY
	T.eq(Ctx().townFoe, nil, "faded")
	-- in the open there is no town to remember
	Fresh()
	P.subzone = nil
	Fight(Unit(69, { faction = "Alliance", cls = "elite", reaction = 2 }))
	T.eq(#Notices(), 0, "in the open: nothing")
	-- the player's faction unknown: the story cannot be told
	Fresh()
	P.faction = nil
	Fight(Unit(70, { faction = "Alliance", cls = "elite", reaction = 2 }))
	T.eq(Towns()["Razor Hill"], nil, "unknown: silent")
end)

---------------------------------------------------------------------------
-- Guest-right
---------------------------------------------------------------------------
T.run("hostility: guest-right, the host struck and an attack under their roof", function()
	Fresh()
	P.subzone = "Razor Hill Inn"
	R.config.towns.aliases["Razor Hill Inn"] = "Razor Hill"
	Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
	local home = NS.cdb.relationships.home
	T.ok(home and home.npc == 6928 and home.town == "Razor Hill" and home.inn == "Razor Hill Inn", "the hearth is home")
	-- the host struck, nobody watching: the whole town knows
	Fight(Unit(6928, { name = "Innkeeper Grosk" }))
	local host = Npc(6928)
	T.eq(host.foe.host, true, "the host remembers guest-right broken")
	T.eq(Band(host), "hated", "Hated")
	local town = Towns()["Razor Hill"]
	T.ok(town.host and town.betray and town.word.trust <= R.config.hostility.word.host.trust + 1, "the whole town knows")
	T.ok(Said("rel_foe_host_", "Innkeeper Grosk", "Razor Hill"), "the gravest notice")
	local mem = Entries("relation_host")
	T.ok(#mem == 1 and mem[1].perm and mem[1].zone == "Razor Hill", "a permanent journal line, no name")
	T.ok(R:BetrayalTrust() < 1 - (1 - R.config.hostility.betrayal.trust), "trust slowed more than for a betrayal")
	T.eq(Ctx().townBetrayed, true, "the town remembers")
	-- an ordinary NPC struck inside the inn: the host takes it as their own
	Fresh()
	P.subzone = "Razor Hill Inn"
	Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
	Fight(Unit(70901, { name = "Patron" }))
	T.eq(Npc(70901), nil, "the patron is not named")
	T.eq(Npc(6928).foe.host, true, "the host holds the grudge")
	T.ok(Said("rel_foe_host_", "Innkeeper Grosk", "Razor Hill"), "guest-right broken")
	-- elsewhere in the village it is not under their roof
	Fresh()
	P.subzone = "Razor Hill Inn"
	Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
	P.subzone = "Razor Hill"
	Fight(Unit(70902))
	T.eq(Npc(6928).foe, nil, "not under their roof")
	-- the client says the hearth is elsewhere now: no longer home
	Fresh()
	P.subzone = "Razor Hill Inn"
	Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
	P.bind = "Orgrimmar"
	Fight(Unit(6928, { name = "Innkeeper Grosk" }))
	T.eq(Npc(6928).foe.host, nil, "an attack, not guest-right broken")
	P.bind = "Razor Hill"
	T.ok(R:Home() ~= nil, "the town's name is the hearth too")
	R.config.towns.aliases["Razor Hill Inn"] = nil
	T.eq(ChatSent(), nil, "never chat")
end)

T.run("hostility: coming home after a long journey", function()
	Fresh()
	P.subzone = "Razor Hill"
	Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
	local home = NS.cdb.relationships.home
	P.subzone = "Sen'jin Village"
	FIRE("ZONE_CHANGED")
	ADVANCE(2)
	P.subzone = "Razor Hill"
	FIRE("ZONE_CHANGED")
	T.eq(#Notices(), 0, "a short walk is not a journey")
	home.seen = home.seen - (R.config.hostility.home.awayDays + 1) * DAY
	ADVANCE(2)
	P.subzone = "Sen'jin Village"
	FIRE("ZONE_CHANGED")
	ADVANCE(2)
	P.subzone = "Razor Hill"
	FIRE("ZONE_CHANGED")
	T.ok(Said("rel_home_return_", "Innkeeper Grosk", "Razor Hill"), "the return home")
	T.eq(Ctx().homeReturn, true, "ctx.homeReturn")
	ADVANCE(R.config.hostility.home.minutes * 60 + 1)
	T.eq(Ctx().homeReturn, nil, "for a while only")
	-- after guest-right was broken, the hearth is cold
	Fight(Unit(6928, { name = "Innkeeper Grosk" }))
	home.seen = home.seen - (R.config.hostility.home.awayDays + 1) * DAY
	ADVANCE(2)
	FIRE("ZONE_CHANGED_NEW_AREA")
	T.ok(Said("rel_home_cold_", "Innkeeper Grosk", "Razor Hill"), "a cold return")
	T.eq(ChatSent(), nil, "never chat")
end)

---------------------------------------------------------------------------
-- The voice: private, an option, a quota, never in combat
---------------------------------------------------------------------------
T.run("hostility: the notices follow the narrator's rules", function()
	Fresh()
	NS.db.relations.hostilityNotices = false
	Fight(Unit(71001, { cls = "elite" }))
	T.eq(#Notices(), 0, "the option off: silent")
	T.ok(Npc(71001).foe ~= nil, "but remembered")
	Fresh()
	NS.db.output.privateNarrator = false
	Fight(Unit(71002, { cls = "elite" }))
	T.eq(#Notices(), 0, "the narrator off: silent")
	Fresh()
	NS.paused = true
	Fight(Unit(71003, { cls = "elite" }))
	NS.paused = false
	T.eq(#Notices(), 0, "paused: silent")
	Fresh()
	for i = 1, R.config.hostility.perSession + 2 do Fight(Unit(71010 + i, { cls = "elite" })) end
	T.eq(#Notices(), R.config.hostility.perSession, "a quota per session")
	-- a fight settled while another has begun: no notice in combat
	Fresh()
	Fight(Unit(71020, { cls = "elite" }), { settle = false })
	P.combat = true
	ADVANCE(R.config.hostility.linger + 1)
	P.combat = false
	T.ok(Npc(71020).foe ~= nil and #Notices() == 0, "in combat the notice is dropped, the grudge kept")
	-- the Italian text
	Fresh()
	NS.db.locale = "it"
	Fight(Unit(71030, { name = "Grok", cls = "elite" }))
	T.ok(Said("rel_foe_attack_", "Grok"), "in Italian")
	NS.db.locale = "en"
	T.eq(ChatSent(), nil, "never chat")
end)

---------------------------------------------------------------------------
-- Conditions, saved data, window
---------------------------------------------------------------------------
T.run("hostility: the conditions are known to the engine and the validator", function()
	Fresh()
	T.eq(Engine.CONDITIONS.relFoe, "str"); T.eq(Engine.CONDITIONS.townBetrayed, "bool")
	T.eq(Engine.CONDITIONS.townFoe, "bool"); T.eq(Engine.CONDITIONS.homeReturn, "bool")
	T.ok(Engine.RELATION_CONDITIONS.relFoe, "relFoe asks for a person")
	T.ok(Engine.CONDITION_VALUES.relFoe.attacked and Engine.CONDITION_VALUES.relFoe.killed and Engine.CONDITION_VALUES.relFoe.host,
		"its values")
	T.eq(Engine.Match({ relFoe = "killed" }, { relFoe = "killed" }), true, "relFoe matches")
	T.eq(Engine.Match({ relFoe = { "host", "attacked" } }, { relFoe = "killed" }), false, "and only its values")
	T.eq(Engine.Match({ townBetrayed = true }, { townBetrayed = true }), true, "townBetrayed")
	T.eq(Engine.Match({ townFoe = false }, {}), true, "townFoe false without a foe")
	T.eq(Engine.Match({ homeReturn = true }, {}), false, "homeReturn needs the return")
	T.eq(#Engine.CheckConditions({ relFoe = "host", townBetrayed = true, townFoe = true, homeReturn = true }), 0, "valid")
	T.ok(#Engine.CheckConditions({ relFoe = "friend" }) > 0, "an unknown value is refused")
end)

T.run("hostility: saved data (version 7) is cleaned, capped and reset", function()
	Fresh()
	local now = time()
	T.eq(R.VERSION, 7, "relationships.version is 7")
	NS.cdb.relationships = { version = 6, npcs = {
		[1] = { first = 1, last = 2, count = 1, trust = -90, foe = { t = now - DAY, n = 3, k = 1, host = true, first = now - 9 * DAY } },
		[2] = { first = 1, last = 2, count = 1, foe = { t = now + 99 * DAY, n = -4, k = "x", host = "yes" } },
		[3] = { first = 1, last = 2, count = 1, foe = "nonsense" },
		[4] = { first = 1, last = 2, count = 1, foe = { n = 2 } },
	}, players = {},
		towns = {
			Fresh = { t = now - DAY, betray = now - DAY, host = true, foe = { t = now - DAY, n = 2 } },
			Old = { t = now - DAY, betray = now - 400 * DAY, host = true, foe = { t = now - 400 * DAY, n = 1 } },
			Bad = { t = now - DAY, betray = "x", foe = { n = 1 } },
		},
		home = { npc = 1, town = "Fresh", inn = "Fresh Inn", t = now - DAY, seen = now + DAY } }
	R:Sanitize()
	local d = NS.cdb.relationships
	T.eq(d.version, 7, "version 6 loads with no migration step")
	local f1 = d.npcs[1].foe
	T.ok(f1.n == 3 and f1.k == 1 and f1.host == true and f1.first == now - 9 * DAY, "a grudge kept")
	local f2 = d.npcs[2].foe
	T.ok(f2.t <= now and f2.n == 1 and f2.k == nil and f2.host == nil, "a damaged grudge brought back within its limits")
	T.eq(d.npcs[3].foe, nil, "nonsense dropped"); T.eq(d.npcs[4].foe, nil, "no time, no grudge")
	T.ok(d.towns.Fresh.betray and d.towns.Fresh.host and d.towns.Fresh.foe.n == 2, "a town's memory kept")
	T.ok(d.towns.Old.betray == nil and d.towns.Old.host == nil and d.towns.Old.foe == nil, "a faded one let go")
	T.ok(d.towns.Bad.betray == nil and d.towns.Bad.foe == nil, "bad ones dropped")
	T.ok(d.home and d.home.npc == 1 and d.home.seen <= now, "the hearth kept, its time in the past")
	-- a hearth whose innkeeper is gone is let go
	d.home = { npc = 99, t = now }
	R:Sanitize()
	T.eq(d.home, nil, "no innkeeper, no hearth")
	-- the cap never drops a grudge or the host
	Fresh()
	d = NS.cdb.relationships
	for i = 1, R.MAX_NPCS + 5 do d.npcs[100000 + i] = { first = 1, last = 1, count = 1, familiarity = 50 } end
	d.npcs[5] = { first = 1, last = 1, count = 1, foe = { t = now, n = 1, first = now } }
	d.npcs[6] = { first = 1, last = 1, count = 1 }
	d.home = { npc = 6, t = now, seen = now }
	R:CompactNPCs()
	T.ok(d.npcs[5] ~= nil and d.npcs[6] ~= nil, "a grudge and the host are kept")
	-- reset npcs forgets the hearth
	R:Reset("npcs")
	T.eq(NS.cdb.relationships.home, nil, "reset npcs forgets the hearth")
end)

T.run("hostility: the window, the detail and the option", function()
	for _, lang in ipairs({ "en", "it" }) do
		Fresh()
		NS.db.locale = lang
		P.subzone = "Razor Hill"
		Talk(6928, "Innkeeper Grosk", "CONFIRM_BINDER")
		Fight(Unit(70501, { name = "Vex", cls = "elite" }), { kill = "me" })
		RelationsFrame:Open({ kind = "npc", key = 70501 })
		local facts = _G[ROOT].dSeenFacts:GetText()
		T.ok(facts:find(NS:L("rel_foe_line_killed", 0, 1), 1, true) ~= nil, lang .. ": the grudge line: " .. facts)
		T.ok(facts:find(NS:L("rel_grudge_eternal"), 1, true) ~= nil, lang .. ": eternal")
		RelationsFrame:Open({ kind = "npc", key = 6928 })
		T.ok(_G[ROOT].dSeenFacts:GetText():find(NS:L("rel_home_line"), 1, true) ~= nil, lang .. ": the keeper of the hearth")
		RelationsFrame:Open("options")
		local opt
		for _, o in ipairs(_G[ROOT].options) do if o.key == "eternalGrudge" then opt = o end end
		T.ok(opt ~= nil, lang .. ": an option for the eternal grudge")
		opt.button:Click()
		T.eq(NS.db.relations.eternalGrudge, false, lang .. ": off with a click")
		RelationsFrame:Open({ kind = "npc", key = 70501 })
		T.ok(_G[ROOT].dSeenFacts:GetText():find(NS:L("rel_grudge_grace", R.config.hostility.grudge.graceDays), 1, true) ~= nil,
			lang .. ": the grace days")
		RelationsFrame:Open("options")
		opt.button:Click()
		T.eq(NS.db.relations.eternalGrudge, true, lang .. ": on again")
		local found
		for _, o in ipairs(_G[ROOT].options) do if o.key == "hostilityNotices" then found = o end end
		T.ok(found ~= nil, lang .. ": an option for the notices")
		RelationsFrame:Close()
	end
	NS.db.locale = "en"
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:70501")
	local out = table.concat(SENT, "\n")
	T.ok(out:find("Holds a grudge", 1, true) ~= nil, "the detail command: " .. out)
end)

T.run("N1: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_host", "rel_mem_host", "rel_opt_grudge", "rel_opt_grudge_tip", "rel_opt_hostility",
		"rel_opt_hostility_tip", "rel_home_line", "rel_foe_line_attacked", "rel_foe_line_killed", "rel_foe_line_host",
		"rel_grudge_eternal", "rel_grudge_grace", "rel_grudge_slow", "rel_town_betrayed" }
	for _, prefix in ipairs({ "rel_foe_attack_", "rel_foe_kill_", "rel_foe_host_", "rel_foe_seen_", "rel_foe_city_",
		"rel_home_return_", "rel_home_cold_" }) do
		for i = 1, R.config.hostility.variants do table.insert(keys, prefix .. i) end
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

T.run("N1: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
	NS.db.locale = "it"
end)
