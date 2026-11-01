-- Azeroth Unspoken: the N0 probes of /au probe (#212). Forever gives addons no combat log (ADR 0005), so hostility
-- (N1), the nemesis (N7) and the companion pet (N8) must learn from ordinary events and unit functions when the player
-- attacks an NPC, kills it or is killed by it, and who was around. These probes listen for the session (from the first
-- /au probe, like the other event probes) and report, for the last fights and deaths, which signals came and in which
-- order, so that the recipe of ADR 0035 can be confirmed in game.
-- Like the rest of /au probe: nothing is saved or sent, and the report shows numbers, flags and client tokens from
-- fixed lists (elite, WOUND, Horde...), never a name or a GUID. A GUID is kept in memory only to be compared with
-- another GUID, and only when the client does not hide it.
local ADDON, NS = ...
local Compat, Probe = NS.Compat, NS.Probe
local Combat = {}
Probe.Combat = Combat

local AVAILABLE, MISSING, RESTRICTED = Compat.AVAILABLE, Compat.MISSING, Compat.RESTRICTED
local SafeCall, Show, Out = Compat.SafeCall, Probe.Show, Probe.Out

Combat.OPENING = 3          -- seconds around PLAYER_REGEN_DISABLED in which the first blow is looked for
Combat.LINGER = 3           -- seconds after the end of a fight in which a death or a kill still belongs to it
Combat.HOLDER_AGE = 10      -- seconds a unit that was attacking the player stays "the last one" for a death
Combat.MAX_FIGHTS = 3       -- closed fights kept for the report
Combat.MAX_DEATHS = 2       -- deaths kept for the report
Combat.MAX_SIGNALS = 16     -- recent blows kept to find who struck first
Combat.MAX_ENGAGED = 16     -- units of the player's threat list remembered per fight
Combat.MAX_PLATES = 60      -- nameplates remembered (about forty at most in a crowd)
Combat.NEAR_INDEX = 4       -- CheckInteractDistance index: 4 is the follow distance, about 28 yards
Combat.FRIENDLY = 5         -- UnitReaction 5 (friendly) and above is friendly, 4 neutral, below hostile
Combat.HUMANOID_ID = 7      -- the id of "Humanoid" in UnitCreatureType's second value

local function Now() return (GetTime and GetTime()) or 0 end

local function Set(list)
	local t = {}
	for _, v in ipairs(list) do t[v] = true end
	return t
end

-- Client tokens that may be shown as they are: fixed words of the client, never a name.
local CLASSIFICATIONS = Set({ "normal", "elite", "rare", "rareelite", "worldboss", "trivial", "minus" })
local ACTIONS = Set({ "WOUND", "HEAL", "ENERGIZE", "MISS", "DODGE", "PARRY", "BLOCK", "RESIST", "IMMUNE", "EVADE",
	"DEFLECT", "ABSORB", "REFLECT", "INTERRUPT" })
local FACTIONS = Set({ "Alliance", "Horde", "Neutral" })
local CREATURE_TYPES = Set({ "Humanoid", "Beast", "Undead", "Demon", "Dragonkin", "Elemental", "Giant", "Mechanical",
	"Critter", "Totem", "Not specified", "Non-combat Pet", "Gas Cloud", "Wild Pet", "Aberration" })
local NOT_A_BLOW = { HEAL = true, ENERGIZE = true }
-- the classifications that make an NPC named in the candidate rule (ADR 0035)
Combat.NAMED_CLASSES = Set({ "elite", "rare", "rareelite", "worldboss" })

---A client token from a fixed list as it is, anything else as Probe.Show shows it (a length, <secret>).
local function Token(v, list)
	if type(v) == "string" and not Compat.IsSecret(v) and list[v] then return v end
	return Show(v)
end

local function YesNo(v)
	if v == true then return "yes" elseif v == false then return "no" end
	return "?"
end

local function Seconds(s) return ("%.1fs"):format(math.max(0, s or 0)) end

-- two GUIDs are the same unit: true or false, or nil when one of them could not be read
local function Same(a, b)
	if not a or not b then return nil end
	return a == b
end

---------------------------------------------------------------------------
-- Units
---------------------------------------------------------------------------
local SINGLE = Set({ "player", "target", "pet", "focus", "mouseover", "softenemy", "softfriend", "targettarget", "npc",
	"vehicle" })

---The kind of a unit token: "player", "target", "pet", "nameplate", "party"... never the token's number.
---@param unit any
---@return string
function Combat.Kind(unit)
	if type(unit) ~= "string" or Compat.IsSecret(unit) then return "?" end
	if SINGLE[unit] then return unit end
	return unit:match("^([a-z]+)%d+$") or "other"
end
local Kind = Combat.Kind

---Who a unit is, without naming it: "none", "hidden", "player", "pet", "hostile npc", "neutral npc", "friendly npc".
---@param unit string
---@return string
function Combat.Who(unit)
	if SafeCall("UnitExists", unit) ~= true then return "none" end
	if Compat:IsUnitIdentitySecret(unit) then return "hidden" end
	if SafeCall("UnitIsPlayer", unit) == true then return "player" end
	if SafeCall("UnitPlayerControlled", unit) == true then return "pet" end
	local reaction = SafeCall("UnitReaction", unit, "player")
	if type(reaction) ~= "number" then return "unknown npc" end
	if reaction >= Combat.FRIENDLY then return "friendly npc" end
	return reaction == Combat.FRIENDLY - 1 and "neutral npc" or "hostile npc"
end
local Who = Combat.Who

-- the GUID, only when the client lets it be read (kept in memory to compare, never shown)
local function Guid(unit)
	local guid = SafeCall("UnitGUID", unit)
	return type(guid) == "string" and guid or nil
end

local function NpcID(unit)
	local R = NS.Relationships
	return R and R.NpcID and R.NpcID(SafeCall("UnitGUID", unit)) or nil
end

---The player's threat situation on a unit: 0..3, or nil when the player is not on its threat list (or it is hidden).
local function Threat(unit)
	local v = SafeCall("UnitThreatSituation", "player", unit)
	return type(v) == "number" and v or nil
end

---Is this NPC named? The candidate rule of ADR 0035: an elite, rare or boss classification, a quest boss, or an NPC
---the relationships already know. Humanoid and faction are context, not the rule.
---@param unit string
---@return boolean? named nil when nothing could be read
---@return string reasons
function Combat.Named(unit)
	-- a hidden identity is read and compared in nothing (ADR 0005)
	if Compat:IsUnitIdentitySecret(unit) then return nil, "identity hidden" end
	local reasons, known = {}, false
	local class = SafeCall("UnitClassification", unit)
	if type(class) == "string" then
		known = true
		if Combat.NAMED_CLASSES[class] then table.insert(reasons, class) end
	end
	local boss = SafeCall("UnitIsQuestBoss", unit)
	if type(boss) == "boolean" then
		known = true
		if boss then table.insert(reasons, "quest boss") end
	end
	local id, R = NpcID(unit), NS.Relationships
	if id and R and R.Get then
		known = true
		local ok, rec = pcall(R.Get, R, "npc", id)
		if ok and rec then table.insert(reasons, "relation record") end
	end
	if not known then return nil, "nothing readable" end
	if #reasons == 0 then return false, "ordinary (" .. Token(class, CLASSIFICATIONS) .. ")" end
	return true, table.concat(reasons, ", ")
end

---------------------------------------------------------------------------
-- What the session saw
---------------------------------------------------------------------------
Combat.plates = {}      -- [unit token] = true: the nameplates shown now
Combat.nPlates = 0

---Clears what was seen (the nameplates shown now stay: they are the present, not the past).
function Combat:Reset()
	self.signals = {}       -- { t, who = "me" | "them" | "target", what }: the recent blows
	self.fight = nil        -- the fight in progress
	self.closed = nil       -- the last fight that ended
	self.fights = {}        -- the last closed fights, oldest first
	self.deaths = {}        -- the last deaths, oldest first
	self.nFights, self.nDeaths = 0, 0
	self.holder = nil       -- { t, npcID, guid }: the last unit that was attacking the player
end
Combat:Reset()
table.insert(Probe.resetHooks, function() Combat:Reset() end)

local function Push(list, item, max)
	table.insert(list, item)
	if #list > max then table.remove(list, 1) end
end

local function Signal(who, what)
	Push(Combat.signals, { t = Now(), who = who, what = what }, Combat.MAX_SIGNALS)
end

---The fight a late event belongs to: the one in progress, or the one that ended a moment ago.
function Combat:Current()
	if self.fight then return self.fight end
	if self.closed and Now() - self.closed.ended <= self.LINGER then return self.closed end
	return nil
end

local function Engage(fight, guid)
	if not guid or fight.engaged[guid] or fight.nEngaged >= Combat.MAX_ENGAGED then return end
	fight.engaged[guid] = true
	fight.nEngaged = fight.nEngaged + 1
end

-- the nameplates now: how many, how many friendly NPCs, how many of those near
local function Witnesses()
	local w = { plates = 0, friendly = 0, near = 0, unknown = 0 }
	for unit in pairs(Combat.plates) do
		if SafeCall("UnitExists", unit) == true then
			w.plates = w.plates + 1
			if Who(unit) == "friendly npc" then
				w.friendly = w.friendly + 1
				local state, near = Compat.Query("CheckInteractDistance", unit, Combat.NEAR_INDEX)
				if state == AVAILABLE and type(near) == "boolean" then
					if near then w.near = w.near + 1 end
				else
					w.unknown = w.unknown + 1
				end
			end
		end
	end
	return w
end

---Who struck first in the fight: the first blow in the seconds around its start.
---@return string opener "player", "enemy", "target hit" or "unknown"
---@return string what the blows in order
function Combat:Opener(fight)
	local seen, first = {}, nil
	for _, s in ipairs(self.signals) do
		if s.t >= fight.t0 - self.OPENING and s.t <= fight.t0 + self.OPENING then
			first = first or s.who
			if #seen < 4 then table.insert(seen, s.what) end
		end
	end
	local opener = first == "me" and "player" or first == "them" and "enemy" or first == "target" and "target hit" or "unknown"
	return opener, #seen > 0 and table.concat(seen, ", ") or "no blow seen"
end

---------------------------------------------------------------------------
-- The events (each sample also keeps the fight up to date)
---------------------------------------------------------------------------
local function StartFight()
	local f = { t0 = Now(), engaged = {}, nEngaged = 0, threatUpdates = 0, friendlyHit = 0, holders = {}, nHolders = 0,
		died = { engaged = 0, other = 0, hidden = 0 }, kills = { me = 0, pet = 0, other = 0, hidden = 0, engaged = 0 } }
	f.target = Who("target")
	f.npcID = NpcID("target")
	f.class = Token(SafeCall("UnitClassification", "target"), CLASSIFICATIONS)
	f.threat = Threat("target")
	f.onMe = SafeCall("UnitIsUnit", "targettarget", "player")
	f.guid = Guid("target")
	if SafeCall("UnitCanAttack", "player", "target") == true then Engage(f, f.guid) end
	f.witnesses = Witnesses()
	Combat.fight = f
	Combat.nFights = Combat.nFights + 1
	f.index = Combat.nFights
	return ("target %s, threat %s"):format(f.target, f.threat and Show(f.threat) or "none")
end

local function EndFight()
	local f = Combat.fight
	if not f then return "no fight in progress" end
	Combat.fight = nil
	f.ended = Now()
	f.opener, f.blows = Combat:Opener(f)
	f.endTarget = Who("target")
	f.dead = SafeCall("UnitIsDead", "target")
	f.tapDenied = SafeCall("UnitIsTapDenied", "target")
	local guid = Guid("target")
	f.same = Same(guid, f.guid)
	Combat.closed = f
	Push(Combat.fights, f, Combat.MAX_FIGHTS)
	return "target dead " .. YesNo(f.dead)
end

local function ThreatUpdate(unit)
	local th = Threat(unit)
	local f = Combat.fight
	if f then f.threatUpdates = f.threatUpdates + 1 end
	if th then
		local guid = Guid(unit)
		if f then Engage(f, guid) end
		if th >= 2 then
			-- the player holds its aggro: this unit is attacking the player
			Combat.holder = { t = Now(), npcID = NpcID(unit), guid = guid }
			if f and guid and not f.holders[guid] and f.nHolders < Combat.MAX_ENGAGED then
				f.holders[guid] = true
				f.nHolders = f.nHolders + 1
			end
		end
	end
	return ("%s, threat %s"):format(Kind(unit), th and Show(th) or "none")
end

local function UnitBlow(unit, action)
	local kind = Kind(unit)
	local blow = type(action) == "string" and not Compat.IsSecret(action) and not NOT_A_BLOW[action]
	if blow then
		if unit == "player" then
			Signal("them", "hit on player")
		elseif unit == "target" then
			Signal("target", "hit on target")
		end
		local f = Combat.fight
		if f and kind == "nameplate" and action == "WOUND" and Who(unit) == "friendly npc" then
			f.friendlyHit = f.friendlyHit + 1
		end
	end
	return kind .. " " .. Token(action, ACTIONS)
end

local function UnitDied(guid)
	local f = Combat:Current()
	guid = Compat.Readable(guid)
	local what
	if type(guid) ~= "string" then
		what = "guid hidden"
	elseif f and f.engaged[guid] then
		what = "engaged unit"
	else
		what = "other unit"
	end
	if f then
		local key = what == "guid hidden" and "hidden" or what == "engaged unit" and "engaged" or "other"
		f.died[key] = f.died[key] + 1
	end
	return what .. (f and "" or " (no fight)")
end

local function PartyKill(attacker, victim)
	local f = Combat:Current()
	attacker, victim = Compat.Readable(attacker), Compat.Readable(victim)
	local by
	if type(attacker) ~= "string" then
		by = "hidden"
	elseif attacker == Guid("player") then
		by = "me"
	elseif attacker == Guid("pet") then
		by = "pet"
	else
		by = "other"
	end
	local engaged = f and type(victim) == "string" and f.engaged[victim] == true
	if f then
		f.kills[by] = f.kills[by] + 1
		if engaged then f.kills.engaged = f.kills.engaged + 1 end
	end
	return ("by %s, victim %s"):format(by == "hidden" and "<hidden>" or by,
		type(victim) ~= "string" and "hidden" or engaged and "engaged" or "not engaged")
end

local function PlayerDead()
	local now, f = Now(), Combat:Current()
	local d = { t = now }
	if Combat.fight then
		d.when = "during a fight"
	elseif f then
		d.when = ("%s after the fight ended"):format(Seconds(now - f.ended))
	else
		d.when = "no fight"
	end
	d.target = Who("target")
	d.npcID = NpcID("target")
	d.dead = SafeCall("UnitIsDead", "target")
	local h = Combat.holder
	if h and now - h.t <= Combat.HOLDER_AGE then
		d.holder = h
		d.holderAge = now - h.t
		local guid = Guid("target")
		d.holderIsTarget = Same(guid, h.guid)
	end
	d.holders = f and f.nHolders or 0
	Combat.nDeaths = Combat.nDeaths + 1
	d.index = Combat.nDeaths
	Push(Combat.deaths, d, Combat.MAX_DEATHS)
	return ("%s, last attacker known %s"):format(d.when == "during a fight" and "in fight" or d.when == "no fight" and "no fight"
		or "after the fight", YesNo(d.holder ~= nil))
end

local function PlateAdded(unit)
	if type(unit) == "string" and not Compat.IsSecret(unit) and not Combat.plates[unit] and Combat.nPlates < Combat.MAX_PLATES then
		Combat.plates[unit] = true
		Combat.nPlates = Combat.nPlates + 1
	end
	return Who(unit)
end

local function PlateRemoved(unit)
	if type(unit) == "string" and not Compat.IsSecret(unit) and Combat.plates[unit] then
		Combat.plates[unit] = nil
		Combat.nPlates = Combat.nPlates - 1
	end
	return nil
end

Combat.EVENTS = {
	{ "PLAYER_REGEN_DISABLED", StartFight },
	{ "PLAYER_REGEN_ENABLED", EndFight },
	{ "PLAYER_ENTER_COMBAT", function() Signal("me", "swing") return nil end },
	{ "UNIT_SPELLCAST_SENT", function() Signal("me", "cast") return nil end, "player" },
	{ "UNIT_COMBAT", UnitBlow },
	{ "UNIT_THREAT_LIST_UPDATE", ThreatUpdate },
	{ "UNIT_THREAT_SITUATION_UPDATE", function(unit) return Kind(unit) end },
	{ "UNIT_DIED", UnitDied },
	{ "PARTY_KILL", PartyKill },
	{ "PLAYER_DEAD", PlayerDead },
	{ "NAME_PLATE_UNIT_ADDED", PlateAdded },
	{ "NAME_PLATE_UNIT_REMOVED", PlateRemoved },
}
for _, def in ipairs(Combat.EVENTS) do Probe.AddEvent(def[1], def[2], def[3]) end

---------------------------------------------------------------------------
-- The report
---------------------------------------------------------------------------
local function NoTarget(fn)
	if type(Compat.Resolve(fn)) ~= "function" then return MISSING, "function not found" end
	return AVAILABLE, "no target selected: target a creature and run again"
end

-- a probe of fn(...) on the target; show turns the values into the detail
local function OnTarget(fn, show, ...)
	local args = { ... }
	return function()
		if SafeCall("UnitExists", "target") ~= true then return NoTarget(fn) end
		local state, a, b, c, d, err = Compat.Query(fn, unpack(args))
		if state == MISSING or err or not show then return Out(state, a, b, c, d, err) end
		local detail = "-> " .. show(a, b)
		if state == RESTRICTED then detail = detail .. " (a result was secret)" end
		return state, detail
	end
end

local function FightLines(f, open)
	local opener, blows = f.opener, f.blows
	if open then opener, blows = Combat:Opener(f) end
	local w = f.witnesses
	local lines = {
		("N0 fight %d, start: target %s%s, %s, threat %s, it targets me %s; opened by %s (%s); witnesses: %d nameplates, %d friendly npc, %d near, %d range unknown")
			:format(f.index, f.target, f.npcID and (" npcID " .. f.npcID) or "", f.class, f.threat and Show(f.threat) or "none",
			YesNo(f.onMe), opener, blows, w.plates, w.friendly, w.near, w.unknown),
	}
	local during = ("%d engaged, %d attacking me, %d threat updates, friendly npc hit %d"):format(f.nEngaged, f.nHolders,
		f.threatUpdates, f.friendlyHit)
	local kills = ("UNIT_DIED engaged %d, other %d, hidden %d; PARTY_KILL by me %d, pet %d, other %d, hidden %d (engaged victims %d)")
		:format(f.died.engaged, f.died.other, f.died.hidden, f.kills.me, f.kills.pet, f.kills.other, f.kills.hidden, f.kills.engaged)
	if open then
		table.insert(lines, ("N0 fight %d, in progress for %s: %s; %s"):format(f.index, Seconds(Now() - f.t0), during, kills))
	else
		table.insert(lines, ("N0 fight %d, end after %s: %s; target %s, dead %s, tap denied %s, same unit %s; %s")
			:format(f.index, Seconds(f.ended - f.t0), during, f.endTarget, YesNo(f.dead), YesNo(f.tapDenied), YesNo(f.same), kills))
	end
	return lines
end

local function DeathLine(d)
	local holder = "no unit was attacking me in the last " .. Combat.HOLDER_AGE .. "s"
	if d.holder then
		holder = ("last unit attacking me%s, %s before, it is my target %s"):format(
			d.holder.npcID and (" npcID " .. d.holder.npcID) or "", Seconds(d.holderAge), YesNo(d.holderIsTarget))
	end
	return ("N0 death %d: %s; target %s%s, dead %s; %s; units attacking me in the fight: %d"):format(d.index, d.when, d.target,
		d.npcID and (" npcID " .. d.npcID) or "", YesNo(d.dead), holder, d.holders)
end

---The free lines of the report: the last fights and deaths.
---@return string[]
function Combat:Lines()
	local lines = { ("N0 fights seen: %d (%d kept), deaths seen: %d. A fight runs from PLAYER_REGEN_DISABLED to PLAYER_REGEN_ENABLED; counted from the first /au probe."):format(
		self.nFights, #self.fights, self.nDeaths) }
	for _, f in ipairs(self.fights) do
		for _, line in ipairs(FightLines(f)) do table.insert(lines, line) end
	end
	if self.fight then
		for _, line in ipairs(FightLines(self.fight, true)) do table.insert(lines, line) end
	end
	for _, d in ipairs(self.deaths) do table.insert(lines, DeathLine(d)) end
	return lines
end

local ITEMS = {
	{ id = "C_CombatLog.IsCombatLogRestricted", run = function() return Out(Compat.Query("C_CombatLog.IsCombatLogRestricted")) end },
	{ id = "UnitThreatSituation(player, target)", run = function()
		if SafeCall("UnitExists", "target") ~= true then return NoTarget("UnitThreatSituation") end
		local state, v, _, _, _, err = Compat.Query("UnitThreatSituation", "player", "target")
		if state == MISSING or err or type(v) ~= "number" then
			local s, detail = Out(state, v, nil, nil, nil, err)
			if s == AVAILABLE then detail = detail .. " (not on its threat list)" end
			return s, detail
		end
		return state, ("-> %s (0 to 3: %s)"):format(Show(v), (v >= 0 and v <= 3) and "yes" or "NO")
	end },
	{ id = "UnitIsDead(target)", run = OnTarget("UnitIsDead", nil, "target") },
	{ id = "UnitIsTapDenied(target)", run = OnTarget("UnitIsTapDenied", nil, "target") },
	{ id = "UnitClassification(target)", run = OnTarget("UnitClassification", function(v) return Token(v, CLASSIFICATIONS) end, "target") },
	{ id = "UnitIsQuestBoss(target)", run = OnTarget("UnitIsQuestBoss", nil, "target") },
	{ id = "UnitCreatureType(target)", run = OnTarget("UnitCreatureType", function(name, id)
		local humanoid = (id == Combat.HUMANOID_ID or name == "Humanoid") and "yes" or "no"
		return ("%s, id %s, humanoid %s"):format(Token(name, CREATURE_TYPES), Show(id), humanoid)
	end, "target") },
	{ id = "UnitFactionGroup(target)", run = OnTarget("UnitFactionGroup", function(tag) return Token(tag, FACTIONS) end, "target") },
	{ id = "UnitGUID(target) npcID", run = function()
		if SafeCall("UnitExists", "target") ~= true then return NoTarget("UnitGUID") end
		local state, guid, _, _, _, err = Compat.Query("UnitGUID", "target")
		if state == MISSING or err or guid == nil then return Out(state, guid, nil, nil, nil, err) end
		local id = NpcID("target")
		return state, id and ("npcID " .. id) or "not a creature (a player, a pet or a GUID of another shape)"
	end },
	{ id = "CheckInteractDistance(target, 4)", run = OnTarget("CheckInteractDistance", nil, "target", Combat.NEAR_INDEX) },
	{ id = "named (candidate rule, ADR 0035)", run = function()
		if SafeCall("UnitExists", "target") ~= true then return AVAILABLE, "no target selected: target a creature and run again" end
		local named, reasons = Combat.Named("target")
		if named == nil then return RESTRICTED, "nothing readable on the target (" .. reasons .. ")" end
		return AVAILABLE, ("%s, %s; target %s"):format(named and "named" or "not named", reasons, Who("target"))
	end },
}
for _, item in ipairs(ITEMS) do table.insert(Probe.ITEMS, item) end
for _, def in ipairs(Combat.EVENTS) do table.insert(Probe.ITEMS, { event = def[1] }) end
table.insert(Probe.ITEMS, { id = "N0 fights", lines = function() return Combat:Lines() end })
