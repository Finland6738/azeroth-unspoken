-- Azeroth Unspoken: hostility (N1, #213, ADR 0041). Lasting hatred, betrayal, witnesses and guest-right.
-- Forever gives addons no combat log (ADR 0005): an attack is read from ordinary events and unit functions with the recipe
-- of ADR 0035, which is NOT yet confirmed in game (the owner chose to build on it before the N0 run; bugs found in play
-- become new issues). Every read goes through Compat; a hidden identity, a secret GUID or an unreadable answer means
-- "unknown", and an unknown fact gives no gain and no loss: the narration stays silent rather than guess.
--   - A fight is an attack when the character struck its target first: an auto-attack (PLAYER_ENTER_COMBAT) or a spell
--     at an attackable target that was not already fighting them, in the seconds around PLAYER_REGEN_DISABLED; a blow on
--     the character (UNIT_COMBAT) first means the other one started it. Only the target at the start of the fight counts:
--     area blows on other units, pets, players, a target already busy with someone else and mobs that were hostile before
--     the fight (they belong to the nemesis, N7) are never recorded.
--   - A kill is the death of that target by the character's or their pet's hand (PARTY_KILL), or its death with the
--     character alone on it (UNIT_DIED, else UnitIsDead at the end of the fight when not tapped by others and not in a group).
--   - Witnesses are the friendly NPCs on the nameplates shown at the start, near when the client says so.
-- What it does with an attack lives in Data/Relationships.lua (`hostility`, `increments.attack...`): a named NPC keeps a
-- grudge and drops to Hated (the option "Eternal grudge" keeps it there), the opposite faction's town remembers you as a
-- foe, your own faction's town remembers a betrayal when someone saw it, and the innkeeper of your hearth is home
-- (guest-right): attacking them, or anyone inside their inn, is the gravest betrayal and the whole town knows.
-- Narration only and private: the notices go to the private narrator, never to chat; nothing changes how an NPC behaves.
-- Nothing of a fight is saved: only the grudge (`rec.foe`), the town's memory and the hearth (`relationships.home`).
local ADDON, NS = ...
local Compat, EventBus, R = NS.Compat, NS.EventBus, NS.Relationships
local SafeCall, AVAILABLE = Compat.SafeCall, Compat.AVAILABLE

---@class AUHostility the fight being watched, in memory only
local H = { signals = {}, target = nil, fight = nil, pending = nil }
R.Watch = H

H.MAX_SIGNALS = 16      -- recent blows kept to find who struck first
H.MAX_PLATES = 60       -- nameplate tokens looked at for witnesses ("nameplate1".."nameplate60")
R.HOST_KINDS = { betrayal = true, neutral = true, host = true }   -- the rows of `hostility.word`

local EMPTY = {}
local DAY = 86400
local NOT_A_BLOW = { HEAL = true, ENERGIZE = true }

local function Now() return (time and time()) or 0 end
local function Clock() return (GetTime and GetTime()) or 0 end
local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end
local function Clamp(v, lo, hi) return math.max(lo, math.min(hi, v)) end
local function Past(t) return math.min(t, Now()) end
local function Counter(n) return math.min(math.max(0, math.floor(n)), R.COUNTER_MAX) end

-- a readable text of the client (a name, a subzone), trimmed, at most `n` bytes; nil otherwise
local function Text(s, n)
	if type(s) ~= "string" or Compat.IsSecret(s) then return nil end
	s = s:gsub("^[ \t\r\n]+", ""):gsub("[ \t\r\n]+$", "")
	if s == "" or #s > n then return nil end
	return s
end

-- the subzone as the client names it (an inn has its own: "Lion's Pride Inn"), before the town aliases fold it
local function Subzone() return Text(SafeCall("GetSubZoneText"), R.ZONE_LEN) end

local function AxisValue(rec, axis) return IsNumber(rec[axis]) and rec[axis] or 0 end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
---The `hostility` block of Data/Relationships.lua (numbers key by key, so a pack can tune one).
---@param def table
function R:RegisterHostility(def)
	local c = self.config.hostility
	for _, k in ipairs({ "reaction", "opening", "linger", "perSession", "variants" }) do
		if IsNumber(def[k]) and def[k] >= 0 then c[k] = def[k] end
	end
	local named = type(def.named) == "table" and def.named or EMPTY
	for k, v in pairs(type(named.classes) == "table" and named.classes or EMPTY) do
		if type(k) == "string" then c.named.classes[k] = v == true or nil end
	end
	if type(named.questBoss) == "boolean" then c.named.questBoss = named.questBoss end
	local g = type(def.grudge) == "table" and def.grudge or EMPTY
	for _, part in ipairs({ "drop", "ceiling" }) do
		for axis, v in pairs(type(g[part]) == "table" and g[part] or EMPTY) do
			local a = self.axisById[axis]
			if a and IsNumber(v) then c.grudge[part][axis] = Clamp(v, a.min, a.max) end
		end
	end
	if IsNumber(g.graceDays) and g.graceDays >= 0 then c.grudge.graceDays = g.graceDays end
	if IsNumber(g.redeem) and g.redeem >= 0 then c.grudge.redeem = math.min(g.redeem, 1) end
	local w = type(def.witnesses) == "table" and def.witnesses or EMPTY
	if IsNumber(w.max) and w.max >= 0 then c.witnesses.max = math.floor(w.max) end
	if IsNumber(w.near) and w.near >= 1 then c.witnesses.near = math.floor(w.near) end
	for kind, row in pairs(type(def.word) == "table" and def.word or EMPTY) do
		if R.HOST_KINDS[kind] and type(row) == "table" then
			c.word[kind] = c.word[kind] or {}
			for axis, v in pairs(row) do
				if self.axisById[axis] and IsNumber(v) then c.word[kind][axis] = v end
			end
		end
	end
	for _, part in ipairs({ "betrayal", "host" }) do
		local m = type(def[part]) == "table" and def[part] or EMPTY
		if IsNumber(m.days) and m.days >= 0 then c[part].days = m.days end
		if IsNumber(m.trust) and m.trust >= 0 then c[part].trust = math.min(m.trust, 1) end
	end
	local foe = type(def.foe) == "table" and def.foe or EMPTY
	if IsNumber(foe.days) and foe.days >= 0 then c.foe.days = foe.days end
	local home = type(def.home) == "table" and def.home or EMPTY
	if IsNumber(home.awayDays) and home.awayDays >= 0 then c.home.awayDays = home.awayDays end
	if IsNumber(home.minutes) and home.minutes >= 0 then c.home.minutes = home.minutes end
end

---------------------------------------------------------------------------
-- Saved data (version 7)
---------------------------------------------------------------------------
---@class AURelationFoe the grudge of an NPC the character attacked (N1, #213): times and counts, nothing else
---@field t number the last attack (epoch)
---@field first number the first attack (epoch)
---@field n integer attacks
---@field k? integer of which ended in the NPC's death by the character's hand
---@field host? boolean the NPC was the host of the hearth when struck (guest-right)

---A grudge within its limits, or nil.
---@param f any
---@return AURelationFoe?
function R.CleanFoe(f)
	if type(f) ~= "table" or not (IsNumber(f.t) and f.t > 0) then return nil end
	local out = { t = Past(f.t) }
	out.first = IsNumber(f.first) and f.first > 0 and math.min(Past(f.first), out.t) or out.t
	out.n = IsNumber(f.n) and f.n >= 1 and Counter(f.n) or 1
	if IsNumber(f.k) and f.k >= 1 then out.k = Counter(f.k) end
	if f.host == true then out.host = true end
	return out
end

---A town's memory of hostility within its limits, copied from `tw` into the clean `town`: `betray` (the time of the last
---betrayal, with `host` when the host was struck) and `foe` ({ t, n }: an enemy of the other faction). A memory that has
---faded is let go.
---@param tw table the saved town
---@param town table the clean town
function R.CleanTownFoe(tw, town)
	local c = R.config.hostility
	if IsNumber(tw.betray) and tw.betray > 0 then
		local t = Past(tw.betray)
		local host = tw.host == true
		if Now() - t < (host and c.host.days or c.betrayal.days) * DAY then
			town.betray, town.host = t, host or nil
		end
	end
	local foe = tw.foe
	if type(foe) == "table" and IsNumber(foe.t) and foe.t > 0 then
		local t = Past(foe.t)
		if Now() - t < c.foe.days * DAY then
			town.foe = { t = t, n = IsNumber(foe.n) and foe.n >= 1 and Counter(foe.n) or 1 }
		end
	end
end

---@class AURelationHome the hearth (N1, #213): the innkeeper who bound it is home
---@field npc integer the innkeeper's npcID
---@field town? string their town (R:TownHere where they were met)
---@field inn? string the subzone where they were met (their inn, when the client names it apart from the town)
---@field t number when the hearth was bound
---@field seen number the last time the character was in that town

---The hearth within its limits, only while its innkeeper is listed; or nil.
---@param home any
---@param npcs table<integer, AURelationRecord>
---@return AURelationHome?
function R.CleanHome(home, npcs)
	if type(home) ~= "table" or not (IsNumber(home.npc) and npcs[home.npc]) then return nil end
	if not (IsNumber(home.t) and home.t > 0) then return nil end
	local out = { npc = home.npc, t = Past(home.t), town = Text(home.town, R.ZONE_LEN), inn = Text(home.inn, R.ZONE_LEN) }
	out.seen = IsNumber(home.seen) and home.seen > 0 and Past(home.seen) or out.t
	return out
end

---------------------------------------------------------------------------
-- The grudge
---------------------------------------------------------------------------
---Does the grudge still hold this NPC down? For ever with the option "Eternal grudge" (on by default); otherwise for
---`grudge.graceDays` after the last attack.
---@param rec? AURelationRecord
---@return boolean
function R:GrudgeHolds(rec)
	local foe = rec and rec.foe
	if not foe then return false end
	if self:Setting("eternalGrudge") then return true end
	return Now() - foe.t < self.config.hostility.grudge.graceDays * DAY
end

---A positive automatic change of an axis of an NPC who keeps a grudge: while the grudge holds, no higher than
---`grudge.ceiling` (never a loss); afterwards only `grudge.redeem` of it (slow redemption). Axes without a ceiling
---(familiarity, fear) are left alone. Never the user's own sliders: they do not come here.
---@param rec AURelationRecord
---@param axis string
---@param value number the axis now
---@param delta number the positive change
---@return number
function R:GrudgeLimit(rec, axis, value, delta)
	local g = self.config.hostility.grudge
	local ceiling = g.ceiling[axis]
	if ceiling == nil then return delta end
	if self:GrudgeHolds(rec) then return math.max(0, math.min(delta, ceiling - value)) end
	return delta * g.redeem
end

-- what is left of a town's memory of a betrayal: 1 fresh, fading evenly to 0
local function BetrayalLeft(town)
	if not (town and IsNumber(town.betray)) then return 0 end
	local c = R.config.hostility
	local days = town.host and c.host.days or c.betrayal.days
	if days <= 0 then return 0 end
	return Clamp(1 - (Now() - town.betray) / (days * DAY), 0, 1)
end

-- the town's memory of a foe of the other faction: true while it lasts
local function FoeHeld(town)
	return town ~= nil and type(town.foe) == "table" and Now() - town.foe.t < R.config.hostility.foe.days * DAY
end

---The factor on the trust anyone met where the character stands can gain: 1, or down to `betrayal.trust` (`host.trust`
---after the host was struck) while the town remembers a betrayal, fading.
---@return number
function R:BetrayalTrust()
	local d = self:Data()
	if not (d and next(d.towns)) then return 1 end
	local town = d.towns[self:TownHere() or ""]
	local left = BetrayalLeft(town)
	if left <= 0 then return 1 end
	local c = self.config.hostility
	return 1 - left * (1 - (town.host and c.host.trust or c.betrayal.trust))
end

---------------------------------------------------------------------------
-- The hearth (guest-right)
---------------------------------------------------------------------------
---The innkeeper who binds the hearth (CONFIRM_BINDER with them) is home: their town and their inn, as the client names
---the place where they stand.
---@param npcID integer
function R:SetHome(npcID)
	if not self:Writable() then return end
	local d = self:Data()
	if not (d and d.npcs[npcID]) then return end
	local now = Now()
	local town = self:TownHere()
	d.home = { npc = npcID, town = town, inn = Subzone() or town, t = now, seen = now }
	self:Changed()
end

---The hearth, while it is still the one the client says (GetBindLocation, the inn's subzone or its town); when the
---client does not say, the one the addon kept.
---@return AURelationHome?
function R:Home()
	local d = self:Data()
	local home = d and d.home
	if not home then return nil end
	local state, bind = Compat.Query("GetBindLocation")
	bind = state == AVAILABLE and Text(bind, R.ZONE_LEN) or nil
	if bind and bind ~= home.inn and bind ~= home.town and self.config.towns.aliases[bind] ~= home.town then return nil end
	return home
end

-- this session's notices and the moment of coming home (made on first use: older code or a test may not have it)
local function HostSession(self)
	local s = self.session
	if type(s.hostility) ~= "table" then s.hostility = { n = 0, turn = {} } end
	return s.hostility
end

---A hostility notice in the private narrator (Narrator:Notice: never chat): option `hostilityNotices`,
---`hostility.perSession` a session, never in combat (the notice of a fight comes once it is over).
---@param prefix string the text key without its variant number
---@return boolean shown
function R:FoeNotice(prefix, ...)
	return R.SessionNotice(self, "hostilityNotices", HostSession(self), self.config.hostility, prefix, ...)
end

---Coming back to the hearth's town after `home.awayDays` days or more away: a warm private line, or a cold one while the
---town remembers that the host was struck; the condition homeReturn holds for `home.minutes`. Being there keeps the
---time of the last visit up to date.
---@return boolean said
function R:CheckHome()
	if not self:Enabled() or not self:Writable() then return false end
	local home = self:Home()
	if not (home and home.town) or self:TownHere() ~= home.town then return false end
	local now = Now()
	local away = now - (home.seen or now)
	home.seen = now
	if away < self.config.hostility.home.awayDays * DAY then return false end
	HostSession(self).home = Clock()
	local town = self:Town(home.town)
	local cold = town and town.host and BetrayalLeft(town) > 0
	return self:FoeNotice(cold and "rel_home_cold_" or "rel_home_return_", self:NpcName(home.npc), home.town)
end

---------------------------------------------------------------------------
-- What an attack does
---------------------------------------------------------------------------
-- a change of an NPC's axes that is not a meeting: the source's row (scaled by the temperament), then the drop to Hated;
-- the journal line of a bond that turned and a quiet change of level (the hostility notice speaks for it)
local function Wrong(self, npcID, source, drop)
	local rec = self:Get("npc", npcID)
	if not rec then return nil end
	local old = self:Derive(self:Axes(rec))
	local _, before = self:Disposition(self:Axes(rec))
	local temper = self:Temper(npcID, rec, source)
	self:Increment(rec, source, Now(), temper.gain)
	if drop then
		for axis, v in pairs(self.config.hostility.grudge.drop) do
			if AxisValue(rec, axis) > v then rec[axis] = v end
		end
	end
	R.AfterChange(self, "npc", rec, old)
	local _, after = self:Disposition(self:Axes(rec))
	if after ~= before then
		rec.levelT = Now()
		self:LevelChanged(npcID, rec, before, after)
	end
	return rec
end

-- the grudge of an attacked NPC: when, how often, kills, the host
local function Grudge(rec, killed, host)
	local now = Now()
	local foe = rec.foe or { first = now, n = 0 }
	foe.t, foe.n = now, Counter((foe.n or 0) + 1)
	if killed then foe.k = Counter((foe.k or 0) + 1) end
	if host then foe.host = true end
	rec.foe = foe
end

-- the word of an attack reaches the town: `row` added within the limit; the NPCs in `skip` already know (it does not
-- come back to them as word)
local function TellTown(self, town, row, skip)
	local w = self.config.towns.word
	local word = town.word or {}
	local moved = {}
	for axis, v in pairs(row or EMPTY) do
		if w.axes[axis] then
			local old = word[axis] or 0
			local new = Clamp(old + v, -w.limit, w.limit)
			if new ~= old then word[axis], moved[axis] = new, new - old end
		end
	end
	town.word = R.CleanWord(word)
	for _, rec in ipairs(skip) do
		if rec.town and town == self:Town(rec.town) then
			local heard = rec.heard or {}
			for axis, v in pairs(moved) do heard[axis] = (heard[axis] or 0) + v end
			rec.heard = R.CleanWord(heard)
		end
	end
end

---@class AUHostileFact what a fight told (Systems/Hostility.lua): the character struck first
---@field npcID integer the target at the start of the fight
---@field name? string
---@field kind "foe"|"betrayal"|"neutral" the opposite faction, the own faction (or a friendly NPC), anyone else not hostile
---@field named boolean
---@field killed? boolean it died by the character's (or their pet's) hand
---@field witnesses integer[] the npcIDs of the friendly NPCs near at the start
---@field town? string where it happened (R:TownHere)
---@field map? integer
---@field subzone? string the subzone as the client names it (an inn)

---An attack the character made (a fight they started, ADR 0035): the grudge of the named NPC, the witnesses, the town,
---guest-right, the journal and one private notice. Narration only.
---@param fact AUHostileFact
---@return string? notice the prefix of the notice chosen (shown or not)
function R:Hostility(fact)
	if not (self:Enabled() and self:Setting("npcAuto") and self:Writable()) then return nil end
	if type(fact) ~= "table" or not IsNumber(fact.npcID) then return nil end
	local d = self:Data()
	local now = Now()
	local town = fact.town and self:Town(fact.town, true)
	if town then town.t, town.map = now, fact.map or town.map end
	local notice, args
	if fact.kind == "foe" then
		-- the other faction: the town or city remembers you as a whole, not guard by guard
		if not town then return nil end
		local foe = town.foe or { n = 0 }
		town.foe = { t = now, n = Counter((foe.n or 0) + 1) }
		self:Changed()
		self:FoeNotice("rel_foe_city_", fact.town)
		return "rel_foe_city_"
	end
	-- guest-right: the hearth's innkeeper, or anyone struck inside their inn (when the inn has a name of its own)
	local home = self:Home()
	local hostStruck = home ~= nil and home.npc == fact.npcID
	local underRoof = home ~= nil and not hostStruck and fact.subzone ~= nil and home.inn ~= nil and home.inn ~= home.town
		and fact.subzone == home.inn
	local host = hostStruck or underRoof
	local told = {}
	-- the victim remembers, one by one, only when named (the host always is: the addon knows them)
	local victim = d.npcs[fact.npcID]
	if fact.named or victim then
		if not victim then
			victim = { first = now, last = now, count = 0, met = self:Circumstances(), town = fact.town }
			d.npcs[fact.npcID] = victim
			if fact.name then victim.name = Text(fact.name, R.NAME_LEN) end
		end
		Wrong(self, fact.npcID, hostStruck and "attack_host" or "attack", true)
		if fact.killed then Wrong(self, fact.npcID, "kill") end
		Grudge(victim, fact.killed, hostStruck)
		table.insert(told, victim)
		notice, args = fact.killed and "rel_foe_kill_" or "rel_foe_attack_", { self:NpcName(fact.npcID) }
	end
	if underRoof and d.npcs[home.npc] then
		-- the host was not struck, but under their roof: they take it as their own
		local rec = Wrong(self, home.npc, "attack_host", true)
		Grudge(rec, false, true)
		table.insert(told, rec)
	end
	-- the witnesses the addon already knows think less of you; the others hear it from the town
	local seen = 0
	for _, id in ipairs(fact.witnesses or EMPTY) do
		if id ~= fact.npcID then
			seen = seen + 1
			if d.npcs[id] and not (host and id == home.npc) then
				table.insert(told, Wrong(self, id, "attack_witnessed"))
			end
		end
	end
	-- the word reaches the town when someone saw it; when the host was struck, the whole town knows
	if town and (seen > 0 or host) then
		local cfg = self.config.hostility
		TellTown(self, town, cfg.word[host and "host" or fact.kind], told)
		if host or fact.kind == "betrayal" then
			town.betray = now
			if host then town.host = true end
		end
		if not notice then notice, args = "rel_foe_seen_", { fact.town } end
	end
	if host then
		notice, args = "rel_foe_host_", { self:NpcName(home.npc), fact.town or home.town or "" }
		if NS.LivingMemory and NS.LivingMemory.Record then
			NS.LivingMemory:Record({ kind = "relation_host", tags = { "host" }, source = "addon", perm = true,
				zone = fact.town or home.town })
		end
	end
	if fact.town then self:UpdateTitle(fact.town) end
	self:CompactNPCs()
	self:Changed()
	if notice then self:FoeNotice(notice, unpack(args)) end
	return notice
end

---------------------------------------------------------------------------
-- Context and words for the window
---------------------------------------------------------------------------
---The grudge of the NPC of the interaction: ctx.relFoe = attacked | killed | host (the strongest).
---@param ctx table
---@param rec AURelationRecord
function R:FoeContext(ctx, rec)
	local foe = rec.foe
	if not foe then return end
	ctx.relFoe = foe.host and "host" or (foe.k and "killed") or "attacked"
end

---No person needed: ctx.townBetrayed (the town where the character stands remembers a betrayal), ctx.townFoe (it
---remembers an enemy of the other faction), ctx.homeReturn (the character came home a few minutes ago).
---@param ctx table
function R:HostilityContext(ctx)
	local d = self:Data()
	if d and next(d.towns) then
		local town = d.towns[self:TownHere() or ""]
		if town then
			if BetrayalLeft(town) > 0 then ctx.townBetrayed = true end
			if FoeHeld(town) then ctx.townFoe = true end
		end
	end
	local back = HostSession(self).home
	if back and Clock() - back < self.config.hostility.home.minutes * 60 then ctx.homeReturn = true end
end

-- whole days since an epoch time
local function DaysSince(t) return math.max(0, math.floor((Now() - t) / DAY)) end

---The grudge of an NPC, the hearth and their town's memory, in words for the window and /au relationships detail.
---Empty when there is nothing to say.
---@param npcID integer
---@param rec AURelationRecord
---@return string
function R:FoeText(npcID, rec)
	local parts = {}
	local home = self:Data().home
	if home and home.npc == npcID then table.insert(parts, NS:L("rel_home_line")) end
	local foe = rec.foe
	if foe then
		local what = foe.host and "host" or (foe.k and "killed") or "attacked"
		table.insert(parts, NS:L("rel_foe_line_" .. what, DaysSince(foe.t), foe.n))
		if self:Setting("eternalGrudge") then
			table.insert(parts, NS:L("rel_grudge_eternal"))
		else
			local left = self.config.hostility.grudge.graceDays - DaysSince(foe.t)
			table.insert(parts, left > 0 and NS:L("rel_grudge_grace", left) or NS:L("rel_grudge_slow"))
		end
	end
	local town = rec.town and self:Town(rec.town)
	if town and BetrayalLeft(town) > 0 then table.insert(parts, NS:L("rel_town_betrayed", rec.town)) end
	return table.concat(parts, " ")
end

---------------------------------------------------------------------------
-- Watching the fights (ADR 0035)
---------------------------------------------------------------------------
-- may the watcher spend a moment on an event? The module, the automatic NPCs and a writable file
local function Watching()
	return R:Enabled() and R:Setting("npcAuto") and not R.readOnly
end

local function Signal(who)
	table.insert(H.signals, { t = Clock(), who = who })
	if #H.signals > H.MAX_SIGNALS then table.remove(H.signals, 1) end
end

-- a token of a fixed set as it is, anything else nil
local function Token(v, set)
	if type(v) == "string" and not Compat.IsSecret(v) and set[v] then return v end
	return nil
end
local FACTIONS = { Alliance = true, Horde = true, Neutral = true }

---What the target is, read when it is chosen (before a fight turns its reaction): nil for a player, a pet, a hidden
---identity or anything without an npcID. Nothing here is saved.
---@return table?
function H.Snapshot()
	if SafeCall("UnitExists", "target") ~= true or Compat:IsUnitIdentitySecret("target") then return nil end
	if SafeCall("UnitIsPlayer", "target") ~= false or SafeCall("UnitPlayerControlled", "target") ~= false then return nil end
	local guid = SafeCall("UnitGUID", "target")
	local id = type(guid) == "string" and R.NpcID(guid) or nil
	if not id then return nil end
	local reaction = SafeCall("UnitReaction", "target", "player")
	local cls = SafeCall("UnitClassification", "target")
	return { guid = guid, npcID = id, name = Text(SafeCall("UnitName", "target"), R.NAME_LEN),
		reaction = IsNumber(reaction) and reaction or nil,
		faction = Token(SafeCall("UnitFactionGroup", "target"), FACTIONS),
		cls = type(cls) == "string" and not Compat.IsSecret(cls) and cls or nil,
		boss = SafeCall("UnitIsQuestBoss", "target") == true,
		busy = SafeCall("UnitAffectingCombat", "target") == true }
end

---Is the NPC of this snapshot named? A classification of `hostility.named.classes`, a quest boss, an NPC the addon
---knows, or one of the curated register (ADR 0035, item 7).
---@param snap table
---@return boolean
function H.Named(snap)
	local c = R.config.hostility.named
	if snap.cls and c.classes[snap.cls] then return true end
	if c.questBoss and snap.boss then return true end
	if R:Get("npc", snap.npcID) then return true end
	local I = NS.Interlocutor
	return I ~= nil and type(I.npcs) == "table" and I.npcs[snap.npcID] ~= nil
end

---Which story the target is: "foe" (the opposite faction), "betrayal" (the own faction, or friendly before the fight),
---"neutral" (not hostile before the fight); nil for a mob that was hostile, or when it cannot be told.
---@param snap table
---@return string?
function H.Kind(snap)
	local own = Token(SafeCall("UnitFactionGroup", "player"), FACTIONS)
	if snap.faction == "Alliance" or snap.faction == "Horde" then
		if not own then return nil end
		return snap.faction == own and "betrayal" or "foe"
	end
	if not snap.reaction then return nil end
	if snap.reaction >= 5 then return "betrayal" end
	if snap.reaction >= R.config.hostility.reaction then return "neutral" end
	return nil
end

---The friendly NPCs on the nameplates shown now, near when the client says so (not players, not pets, not `except`):
---their npcIDs, at most `witnesses.max`.
---@param except? string the GUID of the target
---@return integer[]
function H.Witnesses(except)
	local cfg = R.config.hostility.witnesses
	local out, seen = {}, {}
	for i = 1, H.MAX_PLATES do
		if #out >= cfg.max then break end
		local unit = "nameplate" .. i
		if SafeCall("UnitExists", unit) == true and not Compat:IsUnitIdentitySecret(unit)
			and SafeCall("UnitIsPlayer", unit) == false and SafeCall("UnitPlayerControlled", unit) == false then
			local reaction = SafeCall("UnitReaction", unit, "player")
			local guid = SafeCall("UnitGUID", unit)
			local id = type(guid) == "string" and guid ~= except and R.NpcID(guid) or nil
			if IsNumber(reaction) and reaction >= 5 and id and not seen[id] then
				local state, near = Compat.Query("CheckInteractDistance", unit, cfg.near)
				-- "unknown" counts: only a client that says "far" leaves a witness out
				if not (state == AVAILABLE and near == false) then
					seen[id] = true
					table.insert(out, id)
				end
			end
		end
	end
	return out
end

---Who struck first in a fight: "me", "them" (a blow on the character) or "target" (the target was hit, by someone).
---@param f table
---@return string?
function H.Opener(f)
	local open = R.config.hostility.opening
	for _, s in ipairs(H.signals) do
		if s.t >= f.t0 - open and s.t <= f.t0 + open then return s.who end
	end
	return nil
end

---PLAYER_REGEN_DISABLED: the fight begins with the target of this moment (the snapshot taken when it was chosen, if it
---is the same unit), its threat towards the character and the witnesses.
function H.Start()
	H.fight = nil
	if not Watching() then return end
	local snap = H.target
	local guid = SafeCall("UnitGUID", "target")
	if not (snap and type(guid) == "string" and snap.guid == guid) then snap = H.Snapshot() end
	if not snap or SafeCall("UnitCanAttack", "player", "target") ~= true then return end
	local f = { t0 = Clock(), snap = snap, guid = snap.guid }
	f.kind = H.Kind(snap)
	if not f.kind then return end
	f.engaged = IsNumber(SafeCall("UnitThreatSituation", "player", "target"))
	f.named = H.Named(snap)
	f.witnesses = f.kind ~= "foe" and H.Witnesses(snap.guid) or {}
	f.town, f.map = R:TownHere()
	f.subzone = Subzone()
	H.fight = f
end

-- the fight's target died: by whom ("me", "pet", "other", "hidden" or "unknown" for UNIT_DIED)
local function Died(f, by)
	if by == "me" or by == "pet" then
		f.killed = true
	elseif by == "unknown" and SafeCall("IsInGroup") ~= true and SafeCall("UnitIsTapDenied", "target") ~= true then
		-- UNIT_DIED says nothing of the killer: the character alone on an untapped target
		f.killed = f.killed or "alone"
	elseif by == "other" then
		-- someone else's kill: no fallback at the end may give it to the character
		if f.killed ~= true then f.killed = false end
	end
	f.engaged = true
end

---The fact of a closed fight, or nil when it was not the character's attack.
---@param f table
---@return AUHostileFact?
function H.Fact(f)
	if H.Opener(f) ~= "me" or not f.engaged then return nil end
	-- a target already fighting someone else when chosen: the character joined a fight, did not start one
	if f.snap.busy and not f.onMe then return nil end
	return { npcID = f.snap.npcID, name = f.snap.name, kind = f.kind, named = f.named, killed = f.killed and true or nil,
		witnesses = f.witnesses, town = f.town, map = f.map, subzone = f.subzone }
end

local function Resolve(f)
	if H.pending == f then H.pending = nil end
	local fact = H.Fact(f)
	if fact then NS.Diagnostics:Guard("relations:hostility", R.Hostility, R, fact) end
end

---PLAYER_REGEN_ENABLED: the fight is over. The target dead at the end, the same unit, not tapped by others and the
---character not in a group counts as their kill when no event said otherwise; the fact is settled `linger` seconds
---later, so that a late UNIT_DIED or PARTY_KILL still belongs to it.
function H.Finish()
	local f = H.fight
	H.fight = nil
	if not f then return end
	if f.killed == nil and SafeCall("UnitGUID", "target") == f.guid and SafeCall("UnitIsDead", "target") == true
		and SafeCall("UnitIsTapDenied", "target") == false and SafeCall("IsInGroup") ~= true then
		f.killed, f.engaged = "alone", true
	end
	if H.pending then Resolve(H.pending) end
	H.pending = f
	if not Compat.After(R.config.hostility.linger, function() if H.pending == f then Resolve(f) end end) then Resolve(f) end
end

-- which fight (the one in progress or the one waiting to be settled) has this GUID as its target: "fight", "pending"
local function FightOf(guid)
	if H.fight and H.fight.guid == guid then return "fight" end
	if H.pending and H.pending.guid == guid then return "pending" end
	return nil
end

---------------------------------------------------------------------------
-- Events: the sources the bus lacks, then the handlers
---------------------------------------------------------------------------
-- No GUID reaches the bus: the sources compare it with the watched fight and publish only what it means.
EventBus.dedupWindow.FOE_SIGNAL = 0
EventBus.dedupWindow.FOE_DIED = 0
EventBus:AddSource("PLAYER_ENTER_COMBAT", { normalize = function()
	if not Watching() then return nil end
	return "FOE_SIGNAL", { who = "me" }
end })
EventBus:AddSource("UNIT_COMBAT", { normalize = function(unit, action)
	if (unit ~= "player" and unit ~= "target") or not Watching() then return nil end
	if type(action) ~= "string" or Compat.IsSecret(action) or NOT_A_BLOW[action] then return nil end
	return "FOE_SIGNAL", { who = unit == "player" and "them" or "target" }
end })
EventBus:AddSource("UNIT_DIED", { normalize = function(guid)
	guid = Compat.Readable(guid)
	local which = type(guid) == "string" and Watching() and FightOf(guid)
	if not which then return nil end
	return "FOE_DIED", { by = "unknown", which = which }
end })
EventBus:AddSource("PARTY_KILL", { normalize = function(attacker, victim)
	victim = Compat.Readable(victim)
	local which = type(victim) == "string" and Watching() and FightOf(victim)
	if not which then return nil end
	attacker = Compat.Readable(attacker)
	local by = "hidden"
	if type(attacker) == "string" then
		by = attacker == SafeCall("UnitGUID", "player") and "me" or attacker == SafeCall("UnitGUID", "pet") and "pet" or "other"
	end
	return "FOE_DIED", { by = by, which = which }
end })

local handlers = {}

function handlers.TARGET_CHANGED()
	H.target = Watching() and H.Snapshot() or nil
end

function handlers.FOE_SIGNAL(env)
	local who = env.context.who
	Signal(who)
	-- a blow on the target during the fight: it is engaged with someone, maybe the character
	if who == "target" and H.fight then H.fight.engaged = true end
end

-- a spell at an attackable target that is not already fighting the character (a buff counts too, so only then)
function handlers.SPELL_SENT()
	if not Watching() then return end
	if SafeCall("UnitCanAttack", "player", "target") == true and SafeCall("UnitIsUnit", "targettarget", "player") ~= true then
		Signal("me")
	end
end

function handlers.COMBAT_START()
	H.Start()
	local f = H.fight
	if f then f.onMe = SafeCall("UnitIsUnit", "targettarget", "player") == true end
end

function handlers.COMBAT_END()
	H.Finish()
	-- coming home after a fight in the town is not a return
	if Watching() then R:CheckHome() end
end

-- a watched fight's target died (FOE_DIED is published only for those)
function handlers.FOE_DIED(env)
	local f = env.context.which == "pending" and H.pending or H.fight
	if f then Died(f, env.context.by) end
end

-- the place changed: the hearth's town may be here
local function Place()
	if Watching() then R:CheckHome() end
end
handlers.WORLD_ENTER, handlers.ZONE_ENTER, handlers.SUBZONE_ENTER = Place, Place, Place

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "hostility", fn)
end

---------------------------------------------------------------------------
-- Start
---------------------------------------------------------------------------
local BaseInit = R.OnInit
function R:OnInit()
	BaseInit(self)
	H.signals, H.target, H.fight, H.pending = {}, nil, nil, nil
	if NS.LivingMemory then
		-- the host of the hearth struck: "Guest-right broken (Goldshire)", no name
		NS.LivingMemory:RegisterKind("relation_host", 5)
		NS.LivingMemory:RegisterDescriber("relation_host", function(e)
			local text = NS:L("rel_mem_host")
			return e.zone and (text .. " (" .. e.zone .. ")") or text
		end)
	end
end
