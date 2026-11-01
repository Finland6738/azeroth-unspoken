-- Tests of Core/ProbeCombat.lua (/au probe, N0, #212): attacks, kills, deaths and witnesses without the combat log.
-- The mock fires the events in the order a fight could give them; the real order on Forever is what the owner's run
-- in game must tell (docs/G1_checklist.md, section N0). The report never shows a name or a GUID.
local NS = ...
local Probe = NS.Probe
local Combat = Probe.Combat

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then
			s = s:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
			table.insert(out, (s:gsub("^PRINT: Azeroth Unspoken: ", "")))
		end
	end
	return table.concat(out, "\n")
end

local function Find(text, id)
	for line in (text .. "\n"):gmatch("([^\n]*)\n") do
		if line:find("] " .. id .. ":", 1, true) or line:find(id, 1, true) == 1 then return line end
	end
	return ""
end

local function Guid(npcID, spawn) return ("Creature-0-1-2-3-%d-%s"):format(npcID, spawn or "00000A") end
local PLAYER_GUID = "Player-1-00000001"

-- names and GUIDs that must never reach the report
local SECRETS = { "Grukk", "Thrall", "Ashenvale Guard", "Creature-0", "Player-1", "Pet-0", "00000A", "00000B" }
local function NoPersonalData(text, what)
	for _, word in ipairs(SECRETS) do
		T.ok(not text:find(word, 1, true), what .. ": no '" .. word .. "'")
	end
end

local function Fresh()
	NS.db.enabled, NS.paused = true, false
	P.combat, P.instance, P.target, P.nameplates, P.pet = false, false, nil, nil, nil
	Probe:Stop()
	Probe:Reset()
	Combat.plates, Combat.nPlates = {}, 0
	ADVANCE(30)
	Cmd("probe")         -- the first /au probe starts listening
end

local function Wolf(threat)
	return { name = "Grukk", guid = Guid(299), hostile = true, reaction = 2, ctype = "Beast", ctypeID = 1, threat = threat,
		level = 10 }
end

---------------------------------------------------------------------------
-- The target, read when /au probe runs
---------------------------------------------------------------------------
T.run("N0 probe: the target's classification, threat and faction as client tokens, never its name", function()
	Fresh()
	P.target = { name = "Thrall", guid = Guid(4949), reaction = 5, ctype = "Humanoid", ctypeID = 7, cls = "elite",
		questBoss = true, faction = "Horde", threat = nil, near = true }
	local text = Cmd("probe")
	T.ok(Find(text, "C_CombatLog.IsCombatLogRestricted"):find("^%[AVAILABLE%] .*%-> false"), "combat log restriction")
	T.ok(Find(text, "UnitThreatSituation(player, target)"):find("not on its threat list", 1, true), "no threat out of combat")
	T.ok(Find(text, "UnitIsDead(target)"):find("-> false", 1, true), "alive")
	T.ok(Find(text, "UnitIsTapDenied(target)"):find("-> false", 1, true), "not tapped by others")
	T.ok(Find(text, "UnitClassification(target)"):find("-> elite", 1, true), "the classification token")
	T.ok(Find(text, "UnitIsQuestBoss(target)"):find("-> true", 1, true), "quest boss")
	T.ok(Find(text, "UnitCreatureType(target)"):find("-> Humanoid, id 7, humanoid yes", 1, true), "creature type")
	T.ok(Find(text, "UnitFactionGroup(target)"):find("-> Horde", 1, true), "faction token")
	T.ok(Find(text, "UnitGUID(target) npcID"):find("npcID 4949", 1, true), "the npcID, not the GUID")
	T.ok(Find(text, "CheckInteractDistance(target, 4)"):find("-> true", 1, true), "near")
	local named = Find(text, "named (candidate rule, ADR 0035)")
	T.ok(named:find("named, elite, quest boss; target friendly npc", 1, true), "named: " .. named)
	NoPersonalData(text, "target")

	-- a wolf under attack: ordinary, threat 3, an unknown classification is shown as a length only
	P.target = Wolf(3)
	P.target.cls = "Something Odd"
	text = Cmd("probe")
	T.ok(Find(text, "UnitThreatSituation(player, target)"):find("-> 3 (0 to 3: yes)", 1, true), "threat 3")
	T.ok(Find(text, "UnitClassification(target)"):find("-> <text:13>", 1, true), "unknown token as its length")
	T.ok(Find(text, "named (candidate rule, ADR 0035)"):find("not named, ordinary (<text:13>); target hostile npc", 1, true),
		"ordinary wolf")
	T.ok(Find(text, "UnitCreatureType(target)"):find("humanoid no", 1, true), "a beast is not humanoid")
	NoPersonalData(text, "wolf")

	-- an innkeeper of the curated register (Data/NPCs.lua) is named even when its classification is normal
	P.target = { name = "Thrall", guid = Guid(295), reaction = 5, ctype = "Humanoid", ctypeID = 7 }
	T.ok(Find(Cmd("probe"), "named (candidate rule, ADR 0035)"):find("named, curated npc; target friendly npc", 1, true),
		"a curated NPC is named")
end)

T.run("N0 probe: no target, a hidden target and a missing API", function()
	Fresh()
	local text = Cmd("probe")
	for _, id in ipairs({ "UnitThreatSituation(player, target)", "UnitIsDead(target)", "UnitClassification(target)",
		"UnitGUID(target) npcID", "named (candidate rule, ADR 0035)" }) do
		T.ok(Find(text, id):find("no target selected", 1, true), "no target: " .. id)
	end
	P.target = { name = "Thrall", guid = Guid(4949), reaction = 5, ctype = "Humanoid", cls = "elite", faction = "Horde" }
	SECRET_UNITS.target = true
	text = Cmd("probe")
	SECRET_UNITS.target = nil
	T.ok(Find(text, "UnitClassification(target)"):find("^%[RESTRICTED%]"), "a hidden classification is restricted")
	T.ok(Find(text, "UnitGUID(target) npcID"):find("^%[RESTRICTED%]"), "a hidden GUID is restricted")
	T.ok(Find(text, "named (candidate rule, ADR 0035)"):find("^%[RESTRICTED%] .*identity hidden"), "a hidden target is not judged")
	T.ok(text:find("Summary:", 1, true), "the report ends")
	NoPersonalData(text, "hidden target")
	local saved = UnitIsTapDenied
	UnitIsTapDenied = nil
	text = Cmd("probe")
	T.ok(Find(text, "UnitIsTapDenied(target)"):find("^%[MISSING%]"), "a missing API is MISSING")
	UnitIsTapDenied = saved
	P.target = nil
end)

---------------------------------------------------------------------------
-- Fights
---------------------------------------------------------------------------
T.run("N0 probe: the player attacks first, kills the target, a friendly NPC watches and is hit", function()
	Fresh()
	P.nameplates = {
		{ name = "Ashenvale Guard", guid = Guid(3501, "00000B"), reaction = 5, ctype = "Humanoid", near = true },
		Wolf(nil),
	}
	P.nameplates[2].guid = Guid(299, "00000C")
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate2")
	P.target = Wolf(nil)
	ADVANCE(5)
	FIRE("PLAYER_ENTER_COMBAT")                 -- the player starts swinging
	ADVANCE(0.2)
	P.target.threat = 3
	FIRE("PLAYER_REGEN_DISABLED")
	FIRE("UNIT_COMBAT", "target", "WOUND", "", 12, 1)
	FIRE("UNIT_THREAT_LIST_UPDATE", "target")
	P.nameplates[2].threat = 2                  -- a second wolf joins and attacks the player
	FIRE("UNIT_THREAT_LIST_UPDATE", "nameplate2")
	FIRE("UNIT_COMBAT", "nameplate1", "WOUND", "", 4, 1)   -- an area blow hits the guard
	ADVANCE(8)
	P.target.dead = true
	FIRE("UNIT_DIED", Guid(299))
	FIRE("PARTY_KILL", PLAYER_GUID, Guid(299))
	FIRE("PLAYER_REGEN_ENABLED")
	local text = Cmd("probe")
	local start = Find(text, "N0 fight 1, start:")
	T.ok(start:find("target hostile npc npcID 299, normal, threat 3, it targets me no", 1, true), "start: " .. start)
	T.ok(start:find("opened by player (swing, hit on target)", 1, true), "the player opened: " .. start)
	T.ok(start:find("witnesses: 2 nameplates, 1 friendly npc, 1 near, 0 range unknown", 1, true), "witnesses: " .. start)
	local stop = Find(text, "N0 fight 1, end after")
	T.ok(stop:find("end after 8.0s", 1, true), "duration: " .. stop)
	T.ok(stop:find("2 engaged, 2 attacking me", 1, true), "engaged and attackers: " .. stop)
	T.ok(stop:find("friendly npc hit 1", 1, true), "the guard was hit: " .. stop)
	T.ok(stop:find("target hostile npc, dead yes, tap denied no, same unit yes", 1, true), "the target died: " .. stop)
	T.ok(stop:find("UNIT_DIED engaged 1, other 0, hidden 0", 1, true), "UNIT_DIED matched: " .. stop)
	T.ok(stop:find("PARTY_KILL by me 1, pet 0, other 0, hidden 0 (engaged victims 1)", 1, true), "PARTY_KILL by me: " .. stop)
	T.ok(text:find("N0 fights seen: 1 (1 kept), deaths seen: 0", 1, true), "the summary line")
	T.ok(Find(text, "event UNIT_COMBAT"):find("target WOUND x1", 1, true), "UNIT_COMBAT samples")
	T.ok(Find(text, "event PARTY_KILL"):find("by me, victim engaged x1", 1, true), "the kill sample says engaged")
	T.ok(Find(text, "event NAME_PLATE_UNIT_ADDED"):find("friendly npc x1", 1, true), "nameplate samples")
	NoPersonalData(text, "fight")
end)

T.run("N0 probe: the enemy strikes first, the player dies and the last attacker is known", function()
	Fresh()
	P.target = Wolf(nil)
	ADVANCE(5)
	FIRE("UNIT_COMBAT", "player", "WOUND", "", 20, 1)      -- the wolf bites first
	ADVANCE(0.1)
	P.target.threat, P.target.targetsPlayer = 3, true
	FIRE("PLAYER_REGEN_DISABLED")
	FIRE("UNIT_THREAT_LIST_UPDATE", "target")
	ADVANCE(6)
	FIRE("PLAYER_REGEN_ENABLED")                           -- on Forever the order of these two is to be found
	ADVANCE(0.5)
	FIRE("PLAYER_DEAD")
	local text = Cmd("probe")
	T.ok(Find(text, "N0 fight 1, start:"):find("it targets me yes; opened by enemy (hit on player)", 1, true),
		"the enemy opened: " .. Find(text, "N0 fight 1, start:"))
	local death = Find(text, "N0 death 1:")
	T.ok(death:find("0.5s after the fight ended", 1, true), "the order of the events: " .. death)
	T.ok(death:find("target hostile npc npcID 299, dead no", 1, true), "the target at the death: " .. death)
	T.ok(death:find("last unit attacking me npcID 299, 6.5s before, it is my target yes", 1, true), "the attacker: " .. death)
	T.ok(death:find("units attacking me in the fight: 1", 1, true), "one attacker: " .. death)
	T.ok(Find(text, "event PLAYER_DEAD"):find("after the fight, last attacker known yes", 1, true), "the death sample")

	-- a death with nobody attacking for a long time
	Fresh()
	ADVANCE(60)
	FIRE("PLAYER_DEAD")
	death = Find(Cmd("probe"), "N0 death 1:")
	T.ok(death:find("no fight; target none, dead ?; no unit was attacking me", 1, true), "a death out of a fight: " .. death)
end)

T.run("N0 probe: a pet's kill, another's kill, hidden GUIDs and a kill out of a fight", function()
	Fresh()
	P.pet = { name = "Pip", guid = "Pet-0-1-2-3-4-00000D", pet = true }
	P.target = Wolf(3)
	FIRE("PLAYER_REGEN_DISABLED")
	FIRE("PARTY_KILL", "Pet-0-1-2-3-4-00000D", Guid(299))
	FIRE("PARTY_KILL", "Player-1-00000002", Guid(77, "00000E"))
	FIRE("PARTY_KILL", MakeSecret(), MakeSecret())
	FIRE("UNIT_DIED", MakeSecret())
	FIRE("UNIT_DIED", Guid(77, "00000E"))
	local text = Cmd("probe")
	local open = Find(text, "N0 fight 1, in progress")
	T.ok(open:find("UNIT_DIED engaged 0, other 1, hidden 1", 1, true), "UNIT_DIED counts: " .. open)
	T.ok(open:find("PARTY_KILL by me 0, pet 1, other 1, hidden 1 (engaged victims 1)", 1, true), "PARTY_KILL counts: " .. open)
	T.ok(Find(text, "event PARTY_KILL"):find("by <hidden>, victim hidden x1", 1, true), "a hidden kill")
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(Combat.LINGER + 1)
	FIRE("UNIT_DIED", Guid(299))
	T.ok(Find(Cmd("probe"), "event UNIT_DIED"):find("other unit (no fight) x1", 1, true), "a death long after the fight")
	NoPersonalData(text, "kills")
end)

T.run("N0 probe: the memory is bounded and reset clears it", function()
	Fresh()
	P.target = Wolf(3)
	for _ = 1, 5 do
		FIRE("PLAYER_REGEN_DISABLED")
		for i = 1, Combat.MAX_ENGAGED + 10 do
			P.nameplates = P.nameplates or {}
			P.nameplates[1] = { guid = Guid(1000 + i), reaction = 2, threat = 1 }
			FIRE("UNIT_THREAT_LIST_UPDATE", "nameplate1")
		end
		ADVANCE(2)
		FIRE("PLAYER_REGEN_ENABLED")
		FIRE("PLAYER_DEAD")
	end
	for i = 1, Combat.MAX_PLATES + 20 do FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. i) end
	for _ = 1, Combat.MAX_SIGNALS + 10 do FIRE("PLAYER_ENTER_COMBAT") end
	T.eq(#Combat.fights, Combat.MAX_FIGHTS, "fights kept")
	T.eq(#Combat.deaths, Combat.MAX_DEATHS, "deaths kept")
	T.eq(#Combat.signals, Combat.MAX_SIGNALS, "signals kept")
	T.eq(Combat.nPlates, Combat.MAX_PLATES, "nameplates kept")
	T.eq(Combat.fights[#Combat.fights].nEngaged, Combat.MAX_ENGAGED, "engaged units kept per fight")
	local text = Cmd("probe")
	T.ok(text:find("N0 fights seen: 5 (3 kept), deaths seen: 5", 1, true), "the counts go on")
	T.ok(Find(text, "N0 fight 5, end after"):find("^N0 fight 5"), "the newest fight is shown")
	T.ok(Find(text, "N0 fight 2, start:") == "", "the oldest fights are gone")
	FIRE("NAME_PLATE_UNIT_REMOVED", "nameplate1")
	T.eq(Combat.nPlates, Combat.MAX_PLATES - 1, "a removed nameplate is forgotten")
	Cmd("probe reset")
	T.eq(#Combat.fights + #Combat.deaths + #Combat.signals + Combat.nFights, 0, "reset clears what was seen")
	T.ok(Cmd("probe"):find("N0 fights seen: 0 (0 kept), deaths seen: 0", 1, true), "an empty report after reset")
end)

T.run("N0 probe: odd answers cost one line, never the report", function()
	Fresh()
	P.target = Wolf(3)
	local saved = { UnitThreatSituation = UnitThreatSituation, UnitReaction = UnitReaction, UnitGUID = UnitGUID }
	for label, fn in pairs({ raises = function() error("restricted") end, secret = function() return MakeSecret() end,
		table = function() return {} end }) do
		UnitThreatSituation, UnitReaction, UnitGUID = fn, fn, fn
		FIRE("PLAYER_REGEN_DISABLED")
		FIRE("UNIT_THREAT_LIST_UPDATE", "target")
		FIRE("UNIT_COMBAT", MakeSecret(), MakeSecret())
		FIRE("NAME_PLATE_UNIT_ADDED", MakeSecret())
		FIRE("PLAYER_REGEN_ENABLED")
		FIRE("PLAYER_DEAD")
		local ok, text = pcall(Cmd, "probe")
		T.ok(ok and text:find("Summary:", 1, true) ~= nil, label .. ": the report reaches its summary")
		T.ok(ok and text:find("N0 fights seen:", 1, true) ~= nil, label .. ": the fights are reported")
	end
	UnitThreatSituation, UnitReaction, UnitGUID = saved.UnitThreatSituation, saved.UnitReaction, saved.UnitGUID
	-- the free lines that raise are one restricted line
	local lines = Combat.Lines
	Combat.Lines = function() error("boom") end
	local text = Cmd("probe")
	T.ok(Find(text, "N0 fights"):find("^%[RESTRICTED%] N0 fights: probe error"), "a failing section is restricted")
	T.ok(text:find("Summary:", 1, true), "the report still ends")
	Combat.Lines = lines
end)

T.run("N0 probe: the new events are registered and listed", function()
	Fresh()
	local text = Cmd("probe")
	for _, def in ipairs(Combat.EVENTS) do
		local line = Find(text, "event " .. def[1])
		T.ok(line:find("^%[AVAILABLE%]"), "registered: " .. def[1] .. " " .. line)
	end
	VALID_EVENTS.PARTY_KILL = nil
	Probe:Stop()
	T.ok(Find(Cmd("probe"), "event PARTY_KILL"):find("^%[MISSING%]"), "an unknown event is MISSING")
	VALID_EVENTS.PARTY_KILL = true
	Probe:Stop()
end)
