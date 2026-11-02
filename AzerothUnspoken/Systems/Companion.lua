-- Azeroth Unspoken: the companion pet, grief and letters (N8, #220; the ally's death, #125; ADR 0046).
--   - The companion pet: the hunter's or warlock's pet (UNIT_PET for the player, UnitName/UnitCreatureFamily("pet")).
--     The bond grows with the hours the pet is out with the character (`companion.pet.stages`); a new stage says a line
--     (pet_bond) and, when memorable, leaves a journal line. Calling and dismissing it (pet_call, pet_dismiss) and a
--     change of its mood (UNIT_HAPPINESS, C_PetInfo.GetPetHappiness: hunters only) bring a line, each at most once in a while.
--   - Grief: the pet's death (UNIT_DIED with its GUID, else the pet dead on UNIT_PET), an NPC the character was close to
--     found dead (targeted dead, or dying while targeted: UnitIsDead on a known npcID) and a group member's death
--     (`ally_death`, #125: UNIT_DIED with a GUID of the group, then UnitIsDeadOrGhost on the same unit; never a feigned
--     death, never a secret identity or GUID). The narrator mourns once (a line in the inner voice, held until the fight
--     is over), the journal keeps a page, and a lament of the verses pack goes into the songbook when one fits.
--   - Letters: at login, an NPC the character is close to and has not met for weeks "writes": the letter is a line of the
--     journal (Data/<lang>/RelationsUI.lua, rel_letter_*), with a private notice. Never game mail, never chat.
-- Forever gives addons no combat log (ADR 0005): the deaths are read with the recipe of ADR 0035 and the API dump, NOT
-- confirmed in game (the owner chose on 2026-11-02 to build on them without the in-game probes or a two-client group
-- test; bugs found in play become new issues). Every read goes through Compat; a secret value means "unknown", and an
-- unknown death is never mourned: the narration stays silent rather than guess.
-- UNIT_DIED has one source (Systems/Hostility.lua, N1): it tells this module of every readable GUID, never on the bus.
-- Narration only and private: every line is in the inner voice (ChatGateway never sends it), the laments are literary
-- pieces (never chat, D16) and the songbook keeps ids and times only. Nothing changes how a pet or an NPC behaves.
-- Saved (relationships.version 8): the pets (`relationships.pets`: name, family, hours together, stage, deaths; no
-- GUID), when an NPC was last mourned (`mourned`) and last wrote (`letter`), the last letter (`relationships.letterT`).
-- Of a group member nothing is saved: the journal page says "a companion of the road", without a name.
local ADDON, NS = ...
local Compat, EventBus, Engine, R = NS.Compat, NS.EventBus, NS.Engine, NS.Relationships
local SafeCall = Compat.SafeCall

---@class AUCompanion
local C = NS:RegisterModule("companion")
NS.Companion = C

-- the narrative events of this module (base_relations): they speak only from here (an event guard)
C.EVENTS = { call = "pet_call", dismiss = "pet_dismiss", mood = "pet_mood", bond = "pet_bond",
	petGrief = "pet_grief", npcGrief = "npc_grief", ally = "ally_death" }
C.GRIEF_KINDS = { pet = true, npc = true, ally = true }
C.PET_KINDS = { HUNTER = "beast", WARLOCK = "demon" }
C.MAX_GROUP = 40         -- raid1..raid40
C.MAX_PENDING = 4        -- griefs held until the fight is over
C.LINGER = 1             -- seconds a pet that went away waits for a UNIT_DIED before it counts as dismissed
C.LETTER_DELAY = 8       -- seconds after the login before the letters are looked at
C.MAX_ACCRUE = 6         -- hours added at most in one step (a sleeping client, a clock that jumped)
C.LOG = 8

local DAY = 86400
local EMPTY = {}

-- the data (Data/Relationships.lua, `companion`): the defaults hold when a value is missing or wrong
C.config = {
	pet = {
		stages = { { id = "new", hours = 0 }, { id = "familiar", hours = 2 }, { id = "trusted", hours = 12 },
			{ id = "bonded", hours = 40 } },
		memorable = { trusted = true, bonded = true },
		callGap = 1200, moodGap = 900, settle = 20, max = 20,
		moods = { "unhappy", "content", "happy" },
	},
	grief = { band = "friend", againDays = 30, perSession = 3 },
	ally = { places = { none = true, party = true, raid = true }, gap = 300, allyGap = 900, perSession = 6 },
	lament = "lament",
	letters = { band = "close", absenceDays = 21, perLogin = 1, gapDays = 7, npcDays = 60, variants = 3,
		roles = { innkeeper = true, merchant = true, trainer = true } },
}

local function Now() return (time and time()) or 0 end
local function Clock() return (GetTime and GetTime()) or 0 end
local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end
local function Past(t) return math.min(t, Now()) end

-- a readable name of the client, trimmed, at most NAME_LEN bytes; nil otherwise
local function Text(s)
	if type(s) ~= "string" or Compat.IsSecret(s) then return nil end
	s = s:gsub("^[ \t\r\n]+", ""):gsub("[ \t\r\n]+$", "")
	if s == "" or #s > R.NAME_LEN then return nil end
	return s
end

local function Id(s) return type(s) == "string" and s:match("^[a-z][a-z0-9_]*$") ~= nil and #s <= R.ID_LEN end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
---The `companion` block of Data/Relationships.lua (value by value, so a pack can tune one).
---@param def table
function C:RegisterData(def)
	if type(def) ~= "table" then return end
	local c = self.config
	local p = type(def.pet) == "table" and def.pet or EMPTY
	for _, k in ipairs({ "callGap", "moodGap", "settle", "max" }) do
		if IsNumber(p[k]) and p[k] >= 0 then c.pet[k] = p[k] end
	end
	if type(p.stages) == "table" then
		local stages = {}
		for _, s in ipairs(p.stages) do
			if type(s) == "table" and Id(s.id) and IsNumber(s.hours) and s.hours >= 0 then
				table.insert(stages, { id = s.id, hours = s.hours })
			end
		end
		table.sort(stages, function(a, b) return a.hours < b.hours end)
		if #stages > 0 then c.pet.stages = stages end
	end
	if type(p.memorable) == "table" then
		local set = {}
		for k, v in pairs(p.memorable) do if Id(k) and v == true then set[k] = true end end
		c.pet.memorable = set
	end
	if type(p.moods) == "table" then
		local moods = {}
		for i, m in ipairs(p.moods) do if Id(m) then moods[i] = m end end
		if #moods > 0 then c.pet.moods = moods end
	end
	local g = type(def.grief) == "table" and def.grief or EMPTY
	if type(g.band) == "string" and R.dispositionById[g.band] then c.grief.band = g.band end
	for _, k in ipairs({ "againDays", "perSession" }) do
		if IsNumber(g[k]) and g[k] >= 0 then c.grief[k] = g[k] end
	end
	local a = type(def.ally) == "table" and def.ally or EMPTY
	for _, k in ipairs({ "gap", "allyGap", "perSession" }) do
		if IsNumber(a[k]) and a[k] >= 0 then c.ally[k] = a[k] end
	end
	if type(a.places) == "table" then
		local set = {}
		for k, v in pairs(a.places) do if type(k) == "string" and v == true then set[k] = true end end
		c.ally.places = set
	end
	if Id(def.lament) then c.lament = def.lament end
	local l = type(def.letters) == "table" and def.letters or EMPTY
	if type(l.band) == "string" and R.dispositionById[l.band] then c.letters.band = l.band end
	for _, k in ipairs({ "absenceDays", "perLogin", "gapDays", "npcDays", "variants" }) do
		if IsNumber(l[k]) and l[k] >= 0 then c.letters[k] = l[k] end
	end
	if type(l.roles) == "table" then
		local set = {}
		for k, v in pairs(l.roles) do if Id(k) and v == true then set[k] = true end end
		c.letters.roles = set
	end
	-- the conditions petStage and petMood accept the ids of the data
	local stages, moods = Engine.CONDITION_VALUES.petStage, Engine.CONDITION_VALUES.petMood
	for _, s in ipairs(c.pet.stages) do stages[s.id] = true end
	for _, m in ipairs(c.pet.moods) do moods[m] = true end
end
C:RegisterData({})

---------------------------------------------------------------------------
-- Saved data (relationships.version 8): the pets
---------------------------------------------------------------------------
---@class AUPetRecord a companion pet (relationships.pets[id]): no GUID, nothing of the game but its name and family
---@field name string the pet's name
---@field kind string beast | demon
---@field family? string the creature family the client gave (Wolf, Imp...)
---@field first number first seen (epoch)
---@field last number last seen (epoch)
---@field hours number hours out with the character
---@field stage string the bond reached (an id of companion.pet.stages)
---@field deaths? integer deaths seen

---N8 (#220): the pets within their limits (called by Relationships:Sanitize): a positive whole id, a name, a known kind,
---times in the past; at most `pet.max` (the one seen longest ago goes first).
---@param pets any
---@return table<integer, AUPetRecord> clean
---@return integer dropped
function R.CleanPets(pets)
	local out, keep, dropped = {}, {}, 0
	for id, p in pairs(type(pets) == "table" and pets or EMPTY) do
		local name = type(p) == "table" and Text(p.name)
		local kind = type(p) == "table" and (p.kind == "beast" or p.kind == "demon") and p.kind
		if IsNumber(id) and id > 0 and id == math.floor(id) and name and kind and IsNumber(p.first) then
			local first = Past(p.first)
			local rec = { name = name, kind = kind, family = Text(p.family), first = first,
				last = IsNumber(p.last) and math.max(first, Past(p.last)) or first,
				hours = IsNumber(p.hours) and math.max(0, math.min(p.hours, 1e6)) or 0,
				stage = Id(p.stage) and p.stage or C.config.pet.stages[1].id,
				deaths = IsNumber(p.deaths) and p.deaths > 0 and math.min(math.floor(p.deaths), R.COUNTER_MAX) or nil }
			out[id] = rec
			table.insert(keep, id)
		else
			dropped = dropped + 1
		end
	end
	table.sort(keep, function(a, b)
		if out[a].last ~= out[b].last then return out[a].last < out[b].last end
		return a < b
	end)
	for i = 1, #keep - math.max(1, math.floor(C.config.pet.max)) do
		out[keep[i]] = nil
		dropped = dropped + 1
	end
	return out, dropped
end

---The record of a pet seen now (by name, kind and family), made when it is new. nil when nothing may be written.
---@param seen { name: string, kind: string, family?: string }
---@return integer? id
---@return AUPetRecord? rec
---@return boolean? new
function C:Record(seen)
	if not (R:Enabled() and R:Writable()) then return nil end
	local d = R:Data()
	if type(d.pets) ~= "table" then d.pets = {} end
	for id, p in pairs(d.pets) do
		if p.name == seen.name and p.kind == seen.kind and (p.family == nil or seen.family == nil or p.family == seen.family) then
			p.family = p.family or seen.family
			p.last = Now()
			return id, p, false
		end
	end
	local id = 1
	for k in pairs(d.pets) do if k >= id then id = k + 1 end end
	local p = { name = seen.name, kind = seen.kind, family = seen.family, first = Now(), last = Now(), hours = 0,
		stage = self.config.pet.stages[1].id }
	d.pets[id] = p
	d.pets = R.CleanPets(d.pets)
	R:Changed()
	return id, d.pets[id], true
end

---The pet's record, by id.
---@param id integer
---@return AUPetRecord?
function C:Pet(id)
	local d = R:Data()
	return d and type(d.pets) == "table" and d.pets[id] or nil
end

---The bond a number of hours reaches: the stage's id and its index.
---@param hours number
---@return string id
---@return integer index
function C:StageOf(hours)
	local id, at = self.config.pet.stages[1].id, 1
	for i, s in ipairs(self.config.pet.stages) do
		if hours >= s.hours then id, at = s.id, i end
	end
	return id, at
end

local function StageIndex(id)
	for i, s in ipairs(C.config.pet.stages) do if s.id == id then return i end end
	return 1
end

---------------------------------------------------------------------------
-- State (this session only)
---------------------------------------------------------------------------
function C:Reset()
	self.pet = nil          -- { id, guid?, name, kind, family?, since?, dead?, mood?, mourned? }: the pet out now
	self.gone = nil         -- a pet that went away a moment ago: { pet, t }, waiting for a UNIT_DIED
	self.group = {}         -- [guid] = unit token: the group members readable now (never saved)
	self.allyLast = {}      -- [guid] = GetTime() of the last lament for that member
	self.lastLament = nil   -- GetTime() of the last lament for a member
	self.lastLine = {}      -- [event .. pet id] = GetTime() of the last call, dismissal or mood line
	self.pending = {}       -- griefs waiting for the end of the fight: { event, extra, grief, journal }
	self.session = { npc = 0, ally = 0 }
	self.entered = Clock()  -- the last time the character entered the world
	self.log = {}           -- the last facts, for /au debug: { what, who }
end
C:Reset()

local function Log(what, who)
	table.insert(C.log, { what = what, who = who })
	while #C.log > C.LOG do table.remove(C.log, 1) end
end

---Does the module watch now? The relationships on and writable, the NPCs computed by the addon.
---@return boolean
function C:Watching()
	return R:Enabled() and R:Writable() and R:Setting("npcAuto")
end

---------------------------------------------------------------------------
-- Speaking: through the Director, always in the inner voice; griefs wait for the end of a fight
---------------------------------------------------------------------------
local function Busy()
	return SafeCall("UnitAffectingCombat", "player") == true or SafeCall("UnitIsDeadOrGhost", "player") == true
end

local function Offer(event, extra)
	extra = extra or {}
	extra.companion = event
	NS.Director:Offer(event, extra)
end

-- a quiet private notice (never chat): only with the private narrator on and the addon speaking
local function Notice(text)
	local db = NS.db
	if not (db and NS.Narrator and NS.Narrator.Notice) or NS.paused or (db.intensity or 0) <= 0
		or not db.output.privateNarrator then return false end
	NS.Narrator:Notice(text)
	return true
end

-- a page of the journal (no name, no text: tokens only)
local function Journal(kind, tags, perm, importance)
	if not (NS.LivingMemory and NS.LivingMemory.Record) then return nil end
	return NS.LivingMemory:Record({ kind = kind, tags = tags, source = "addon", perm = perm or nil, importance = importance,
		zone = Text(SafeCall("GetRealZoneText")) })
end

---A grief: its line now, or once the fight is over (at most MAX_PENDING wait; the oldest goes).
---@param g { event: string, extra: table, grief: string, journal?: table }
function C:Mourn(g)
	if Busy() then
		table.insert(self.pending, g)
		while #self.pending > self.MAX_PENDING do table.remove(self.pending, 1) end
		return false
	end
	if g.journal then Journal(g.journal.kind, g.journal.tags, g.journal.perm, g.journal.importance) end
	Offer(g.event, g.extra)
	self:Lament(g.grief, g.extra)
	return true
end

---The griefs held during a fight.
function C:Flush()
	if #self.pending == 0 or Busy() then return end
	local list = self.pending
	self.pending = {}
	for _, g in ipairs(list) do NS.Diagnostics:Guard("companion:mourn", self.Mourn, self, g) end
end

---------------------------------------------------------------------------
-- Laments: a literary piece of the verses pack into the songbook (ids and times only)
---------------------------------------------------------------------------
---Chooses a lament for a grief: a literary piece of the event `lament` whose conditions hold (ctx.grief: pet, npc,
---ally), in the language, preferring one the songbook does not have. nil out of the literary forms (never, a fight).
---@param kind string pet | npc | ally
---@param extra? table the grief's context (the person, the pet's name)
---@return string? id
function C:PickLament(kind, extra)
	local list = Engine.byEvent[self.config.lament]
	if not list then return nil end
	local ctxExtra = {}
	for k, v in pairs(extra or EMPTY) do ctxExtra[k] = v end
	ctxExtra.grief, ctxExtra.companion = kind, nil
	local ctx = NS:BuildContext(ctxExtra)
	local fresh, known = {}, {}
	for _, p in ipairs(Engine:Eligible(list, NS:TextLang(), ctx, nil, Now())) do
		if Engine.IsLiteraryRule(p) then
			table.insert(NS.Songbook:Heard(p.id) and known or fresh, p.id)
		end
	end
	local pick = #fresh > 0 and fresh or known
	if #pick == 0 then return nil end
	table.sort(pick)
	return pick[math.random(#pick)]
end

---A lament for a grief goes into the songbook, with a private notice of its title.
---@param kind string
---@param extra? table
---@return string? id
function C:Lament(kind, extra)
	local Songbook = NS.Songbook
	if not (Songbook and Songbook:Enabled()) or NS.db.literary.frequency == "never" then return nil end
	local id = self:PickLament(kind, extra)
	if not id or not Songbook:Add(id, "heard") then return nil end
	Log("lament", kind)
	Notice(NS:L("rel_lament_notice", (Songbook:Title(id))))
	return id
end

---------------------------------------------------------------------------
-- The companion pet
---------------------------------------------------------------------------
---What the pet is, read now: nil without a pet of a hunter or a warlock, or with a name the client hides.
---@return { guid?: string, name: string, kind: string, family?: string, dead: boolean }?
function C.ReadPet()
	if SafeCall("UnitExists", "pet") ~= true or Compat:IsUnitIdentitySecret("pet") then return nil end
	local _, class = SafeCall("UnitClass", "player")
	local kind = type(class) == "string" and not Compat.IsSecret(class) and C.PET_KINDS[class] or nil
	local name = Text(SafeCall("UnitName", "pet"))
	if not (kind and name) then return nil end
	local guid = Compat.Readable(SafeCall("UnitGUID", "pet"))
	return { guid = type(guid) == "string" and guid or nil, name = name, kind = kind,
		family = Text(SafeCall("UnitCreatureFamily", "pet")), dead = SafeCall("UnitIsDead", "pet") == true }
end

-- the pet's words for a line: its name ({pet}), its kind, its bond, its mood
local function PetExtra(p)
	local rec = p.id and C:Pet(p.id)
	return { petName = p.name, petKind = p.kind, petStage = rec and rec.stage or nil,
		petMood = p.mood and C.config.pet.moods[p.mood] or nil }
end

-- may a call, dismissal or mood line be said for this pet now? (once in `gap` seconds each)
local function LineFree(key, gap)
	local last = C.lastLine[key]
	if last and Clock() - last < gap then return false end
	if Clock() - C.entered < C.config.pet.settle or Compat:OnTaxi() == true then return false end
	C.lastLine[key] = Clock()
	return true
end

---The hours the pet was out since the last count go to its bond; a new stage says a line and, when memorable, leaves a
---journal line.
---@param p table the pet out now
---@param quiet? boolean count only (the pet is leaving)
function C:Accrue(p, quiet)
	local rec = p and p.id and self:Pet(p.id)
	if not rec then return end
	local now = Clock()
	if p.since and not p.dead then
		rec.hours = rec.hours + math.min(math.max(0, now - p.since) / 3600, self.MAX_ACCRUE)
		rec.last = Now()
	end
	p.since = now
	local stage, at = self:StageOf(rec.hours)
	if at <= StageIndex(rec.stage) then return end
	rec.stage = stage
	R:Changed()
	Log("bond", stage)
	if self.config.pet.memorable[stage] then Journal("pet_bond", { "pet" .. p.id, stage }, true, 3) end
	if not quiet and R:Setting("companion") then Offer(self.EVENTS.bond, PetExtra(p)) end
end

---A pet came: kept as the pet out now; a line when it was called (not just found there on entering the world).
---@param seen table ReadPet()
function C:Called(seen)
	local id, rec, new = self:Record(seen)
	if not id then
		self.pet = nil
		return
	end
	local p = { id = id, guid = seen.guid, name = seen.name, kind = seen.kind, family = seen.family, since = Clock(),
		dead = seen.dead }
	self.pet = p
	local h = self:Happiness()
	if h then p.mood = h end
	-- found already dead (a login, a pet called back as a corpse): its death was not seen, so it is not mourned
	if seen.dead then
		p.mourned = true
		return
	end
	Log(new and "new pet" or "call", id)
	if R:Setting("companion") and LineFree("call" .. id, self.config.pet.callGap) then
		Offer(self.EVENTS.call, PetExtra(p))
	end
end

---The pet went away alive: a dismissal line (unless the character died, flies or just entered the world).
---@param p table
function C:Dismissed(p)
	self:Accrue(p, true)
	if SafeCall("UnitIsDeadOrGhost", "player") == true then return end
	Log("dismiss", p.id)
	if R:Setting("companion") and LineFree("dismiss" .. p.id, self.config.pet.callGap) then
		Offer(self.EVENTS.dismiss, PetExtra(p))
	end
end

---The pet died: mourned once for this death (pet_grief), with a journal line and maybe a lament.
---@param p table
---@return boolean mourned
function C:PetDied(p)
	if p.mourned then return false end
	self:Accrue(p, true)
	p.dead, p.mourned = true, true
	local rec = self:Pet(p.id)
	if rec then
		rec.deaths = math.min((rec.deaths or 0) + 1, R.COUNTER_MAX)
		R:Changed()
	end
	Log("pet died", p.id)
	if not R:Setting("companion") then return false end
	local extra = PetExtra(p)
	extra.grief = "pet"
	return self:Mourn({ event = self.EVENTS.petGrief, extra = extra, grief = "pet",
		journal = { kind = "grief_pet", tags = { "pet" .. p.id }, importance = 3 } }) or true
end

-- a pet that went away a moment ago, with no death event: dismissed
local function SettleGone(gone)
	if C.gone ~= gone then return end
	C.gone = nil
	C:Dismissed(gone.pet)
end

---UNIT_PET for the player: a pet came, went, died or came back to life.
function C:PetChanged()
	if not self:Watching() then
		self.pet = nil
		return
	end
	local seen = self.ReadPet()
	local p = self.pet
	if p and seen and seen.name == p.name and seen.kind == p.kind then
		-- the same pet: dead now, or alive again (a revive)
		p.guid = seen.guid or p.guid
		if seen.dead and not p.dead then
			self:PetDied(p)
		elseif not seen.dead and p.dead then
			p.dead, p.mourned, p.since = false, nil, Clock()
		end
		return
	end
	if p then
		self.pet = nil
		if not p.dead then
			-- it may have died (a demon is gone at once): a UNIT_DIED for it may come a moment later
			local gone = { pet = p, t = Clock() }
			self.gone = gone
			if not Compat.After(self.LINGER, function() SettleGone(gone) end) then SettleGone(gone) end
		end
	end
	if seen then self:Called(seen) end
end

---The pet's happiness (C_PetInfo.GetPetHappiness: 1 unhappy, 2 content, 3 happy), or nil (a demon, the client does not say).
---@return integer?
function C:Happiness()
	local h = SafeCall("C_PetInfo.GetPetHappiness")
	if IsNumber(h) and self.config.pet.moods[h] then return h end
	return nil
end

---The pet's mood changed: a line, at most once in `moodGap` seconds for the pet.
function C:MoodChanged()
	local p = self.pet
	if not (p and self:Watching()) or p.dead then return end
	local h = self:Happiness()
	if not h or h == p.mood then return end
	local from = p.mood
	p.mood = h
	if not from then return end
	Log("mood", self.config.pet.moods[h])
	if R:Setting("companion") and LineFree("mood" .. p.id, self.config.pet.moodGap) then
		local extra = PetExtra(p)
		extra.petMoodFrom = self.config.pet.moods[from]
		Offer(self.EVENTS.mood, extra)
	end
end

---------------------------------------------------------------------------
-- Grief for an NPC the character was close to
---------------------------------------------------------------------------
local function BandIndex(id)
	for i, b in ipairs(R.dispositions) do if b.id == id then return i end end
	return nil
end

---Is this NPC's record at `band` or above?
---@param rec AURelationRecord
---@param band string
---@return boolean
function C:Close(rec, band)
	local want, have = BandIndex(band), BandIndex(R:Resolve("npc", rec).disposition)
	return want ~= nil and have ~= nil and have >= want
end

---A unit that is an NPC (not a player, not anyone's pet, a readable identity), dead now: its npcID and name.
---@param unit string
---@return integer? npcID
---@return string? name
local function DeadNPC(unit)
	if SafeCall("UnitExists", unit) ~= true or Compat:IsUnitIdentitySecret(unit) then return nil end
	if SafeCall("UnitIsPlayer", unit) ~= false or SafeCall("UnitPlayerControlled", unit) ~= false then return nil end
	if SafeCall("UnitIsDead", unit) ~= true then return nil end
	local id = R.NpcID(Compat.Readable(SafeCall("UnitGUID", unit)))
	return id, Text(SafeCall("UnitName", unit))
end

---An NPC found dead: mourned when the character was close to them (grief.band), never one they attacked, once in
---`againDays` days for the same NPC and `perSession` times a session.
---@param npcID integer
---@param name? string
---@return boolean mourned
function C:NpcDied(npcID, name)
	if not (npcID and self:Watching()) then return false end
	local rec = R:Get("npc", npcID)
	local cfg = self.config.grief
	if not rec or rec.foe or not self:Close(rec, cfg.band) then return false end
	if IsNumber(rec.mourned) and Now() - rec.mourned < cfg.againDays * DAY then return false end
	if self.session.npc >= cfg.perSession then return false end
	self.session.npc = self.session.npc + 1
	rec.mourned = Now()
	R:Changed()
	name = rec.name or name
	Log("npc died", npcID)
	local extra = { grief = "npc", relationSubject = { kind = "npc", id = npcID } }
	if NS.Interlocutor then
		extra.otherSubject = { kind = "npc", key = NS.Interlocutor.Key("npc", npcID), name = name, npcID = npcID }
	end
	return self:Mourn({ event = self.EVENTS.npcGrief, extra = extra, grief = "npc",
		journal = { kind = "grief_npc", tags = { "npc" .. npcID }, perm = true, importance = 4 } }) or true
end

---------------------------------------------------------------------------
-- The death of a group member (#125)
---------------------------------------------------------------------------
---Rereads the group: the GUID of each member the client shows (party1..4, or raid1..40 without the character), never a
---secret identity or GUID. In memory only.
function C:ReadGroup()
	local group = {}
	if SafeCall("IsInGroup") == true then
		local raid = SafeCall("IsInRaid") == true
		local n = raid and self.MAX_GROUP or 4
		local me = SafeCall("UnitGUID", "player")
		for i = 1, n do
			local unit = (raid and "raid" or "party") .. i
			if SafeCall("UnitExists", unit) == true and not Compat:IsUnitIdentitySecret(unit) then
				local guid = Compat.Readable(SafeCall("UnitGUID", unit))
				if type(guid) == "string" and guid ~= me then group[guid] = unit end
			end
		end
	end
	self.group = group
end

---A member's death, verified: the same unit still has the GUID, is not hidden, is dead (not feigning), and the place
---counts. Nothing about them is saved.
---@param guid string
---@return string? unit
function C:VerifiedLoss(guid)
	local unit = self.group[guid]
	if not unit then return nil end
	-- a hidden identity says nothing: no loss is told (the roster stays as it was read)
	if Compat:IsUnitIdentitySecret(unit) then return nil end
	if Compat.Readable(SafeCall("UnitGUID", unit)) ~= guid then
		-- the roster moved: read it again, and the next death is checked against the new one
		self:ReadGroup()
		return nil
	end
	if SafeCall("UnitIsDeadOrGhost", unit) ~= true or SafeCall("UnitIsFeignDeath", unit) == true then return nil end
	local _, kind = SafeCall("IsInInstance")
	kind = type(kind) == "string" and kind or "none"
	if not self.config.ally.places[kind] then return nil end
	return unit
end

---A group member died (#125): one lament per loss (`ally_death`, guarded), `gap` seconds between two, `allyGap` for
---the same member, `perSession` in a session.
---@param guid string
---@return boolean mourned
function C:AllyDied(guid)
	if not self:Watching() then return false end
	local unit = self:VerifiedLoss(guid)
	if not unit then return false end
	local cfg, now = self.config.ally, Clock()
	local last = self.allyLast[guid]
	if last and now - last < cfg.allyGap then return false end
	if self.lastLament and now - self.lastLament < cfg.gap then return false end
	if self.session.ally >= cfg.perSession then return false end
	local fullName, realm = SafeCall("UnitFullName", unit)
	local name = Text(fullName)
	if not name then return false end
	self.allyLast[guid], self.lastLament = now, now
	self.session.ally = self.session.ally + 1
	Log("ally died", unit)
	local extra = { grief = "ally" }
	local key = R.PlayerKey(name, Text(realm))
	if key then extra.otherSubject = { kind = "player", key = "player:" .. key, name = name } end
	return self:Mourn({ event = self.EVENTS.ally, extra = extra, grief = "ally",
		journal = { kind = "grief_ally", tags = { "ally" }, importance = 3 } }) or true
end

---------------------------------------------------------------------------
-- UNIT_DIED (the source is N1's, Systems/Hostility.lua): the pet, a group member, an NPC the character was looking at
---------------------------------------------------------------------------
---@param guid string a readable GUID
function C:Died(guid)
	if type(guid) ~= "string" or not self:Watching() then return end
	local p, gone = self.pet, self.gone
	if p and p.guid == guid then
		self:PetDied(p)
		return
	end
	if gone and gone.pet.guid == guid then
		self.gone = nil
		self:PetDied(gone.pet)
		return
	end
	if self.group[guid] then
		self:AllyDied(guid)
		return
	end
	if Compat.Readable(SafeCall("UnitGUID", "target")) == guid then
		local id, name = DeadNPC("target")
		if id then self:NpcDied(id, name) end
	end
end

---------------------------------------------------------------------------
-- Letters
---------------------------------------------------------------------------
---The NPCs that may write now (a name kept, at `letters.band` or above, never a foe, not met for `absenceDays` days,
---not written for `npcDays`), the closest first.
---@return { npcID: integer, rec: AURelationRecord, value: number }[]
function C:Writers()
	local d, cfg, now = R:Data(), self.config.letters, Now()
	local out = {}
	for id, rec in pairs(d and d.npcs or EMPTY) do
		if rec.name and not rec.foe and IsNumber(rec.last) and now - rec.last >= cfg.absenceDays * DAY
			and not (IsNumber(rec.letter) and now - rec.letter < cfg.npcDays * DAY) and self:Close(rec, cfg.band) then
			table.insert(out, { npcID = id, rec = rec, value = R:Resolve("npc", rec).dispositionValue or 0 })
		end
	end
	table.sort(out, function(a, b)
		if a.value ~= b.value then return a.value > b.value end
		return a.npcID < b.npcID
	end)
	return out
end

---The letters of this login: at most `perLogin`, `gapDays` days after the last one. Each is a journal line (the role's
---texts, else `any`) and a private notice. Never game mail, never chat.
---@return integer written
function C:Letters()
	if not (self:Watching() and R:Setting("letters")) then return 0 end
	local d, cfg, now = R:Data(), self.config.letters, Now()
	if IsNumber(d.letterT) and now - d.letterT < cfg.gapDays * DAY then return 0 end
	local n = 0
	for _, w in ipairs(self:Writers()) do
		if n >= cfg.perLogin then break end
		local role = R:Temper(w.npcID, w.rec).role
		role = role and cfg.roles[role] and role or "any"
		local v = math.random(math.max(1, math.floor(cfg.variants)))
		w.rec.letter, d.letterT = now, now
		Journal("letter", { "npc" .. w.npcID, role, "v" .. v }, true, 3)
		Notice(NS:L("rel_letter_notice", w.rec.name))
		Log("letter", w.npcID)
		n = n + 1
	end
	if n > 0 then R:Changed() end
	return n
end

---------------------------------------------------------------------------
-- Context: the pet out now, for every line ({pet} and the conditions petMood, petStage, petKind)
---------------------------------------------------------------------------
---@param ctx table
function R:CompanionContext(ctx)
	local p = C.pet
	if not p or p.dead then return end
	for k, v in pairs(PetExtra(p)) do ctx[k] = v end
end

---------------------------------------------------------------------------
-- The journal
---------------------------------------------------------------------------
local function PetName(tag)
	local id = type(tag) == "string" and tonumber(tag:match("^pet(%d+)$"))
	local rec = id and C:Pet(id)
	return rec and rec.name or NS:L("rel_pet_someone")
end

local function NpcName(tag)
	local id = type(tag) == "string" and tonumber(tag:match("^npc(%d+)$"))
	local rec = id and R:Get("npc", id)
	return rec and rec.name or NS:L("rel_letter_someone")
end

local function Describers()
	local LM = NS.LivingMemory
	if not LM then return end
	LM:RegisterKind("pet_bond", 3)
	LM:RegisterKind("grief_pet", 3)
	LM:RegisterKind("grief_npc", 4)
	LM:RegisterKind("grief_ally", 3)
	LM:RegisterKind("letter", 3)
	local function Place(text, e) return e.zone and (text .. " (" .. e.zone .. ")") or text end
	LM:RegisterDescriber("pet_bond", function(e)
		local tags = e.tags or EMPTY
		return NS:L("rel_mem_pet_bond", PetName(tags[1]), NS:L("rel_pet_stage_" .. tostring(tags[2])))
	end)
	LM:RegisterDescriber("grief_pet", function(e) return Place(NS:L("rel_mem_grief_pet", PetName((e.tags or EMPTY)[1])), e) end)
	LM:RegisterDescriber("grief_npc", function(e) return Place(NS:L("rel_mem_grief_npc", NpcName((e.tags or EMPTY)[1])), e) end)
	LM:RegisterDescriber("grief_ally", function(e) return Place(NS:L("rel_mem_grief_ally"), e) end)
	LM:RegisterDescriber("letter", function(e)
		local tags = e.tags or EMPTY
		local role, v = tags[2], tostring(tags[3] or ""):match("^v(%d+)$")
		local key = ("rel_letter_%s_%s"):format(tostring(role), tostring(v))
		local text = NS:L(key, NpcName(tags[1]))
		if text == key then text = NS:L("rel_letter_any_1", NpcName(tags[1])) end
		return text
	end)
end

---------------------------------------------------------------------------
-- Events
---------------------------------------------------------------------------
-- No GUID reaches the bus: the sources read the pet at once and publish only that something changed.
EventBus.dedupWindow.PET_CHANGED = 0
EventBus.dedupWindow.PET_MOOD = 0
EventBus:AddSource("UNIT_PET", { unit = "player", normalize = function(unit)
	if unit ~= "player" then return nil end
	return "PET_CHANGED", nil, { window = 0 }
end })
EventBus:AddSource("UNIT_HAPPINESS", { unit = "pet", normalize = function(unit)
	if unit ~= "pet" then return nil end
	return "PET_MOOD", nil, { window = 0 }
end })

local handlers = {}

function handlers.PET_CHANGED() C:PetChanged() end
function handlers.PET_MOOD() C:MoodChanged() end

function handlers.WORLD_ENTER(env)
	C.entered = Clock()
	C:ReadGroup()
	-- the pet found there on entering the world is not a call (C.entered): it is only kept
	if C:Watching() then
		local seen = C.ReadPet()
		local p = C.pet
		if seen and not (p and p.name == seen.name and p.kind == seen.kind) then C:Called(seen) end
		if not seen and p then
			C:Accrue(p, true)
			C.pet = nil
		end
	end
	local c = env.context
	if c and c.isLogin and not c.isReload then
		if not Compat.After(C.LETTER_DELAY, function() NS.Diagnostics:Guard("companion:letters", C.Letters, C) end) then
			C:Letters()
		end
	end
end

function handlers.GROUP_CHANGED() C:ReadGroup() end

function handlers.TARGET_CHANGED()
	if not C:Watching() then return end
	local id, name = DeadNPC("target")
	if id then C:NpcDied(id, name) end
end

function handlers.COMBAT_END()
	if C.pet then C:Accrue(C.pet) end
	C:Flush()
end

function handlers.PLAYER_REVIVE() C:Flush() end

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "companion", fn)
end

---@return string
function C:Status()
	local p = self.pet
	local rec = p and self:Pet(p.id)
	local n = 0
	for _ in pairs(self.group) do n = n + 1 end
	local last = self.log[#self.log]
	return ("watching %s, pet %s, group %d, griefs waiting %d; last %s"):format(tostring(self:Watching()),
		rec and ("%s (%s, %.1f h)"):format(rec.name, rec.stage, rec.hours) or "-", n, #self.pending,
		last and (last.what .. " " .. tostring(last.who)) or "-")
end

function C:OnInit()
	self:Reset()
	-- the lines of this module speak only from here (ctx.companion names the event), never from /au event
	for _, event in pairs(self.EVENTS) do
		Engine:SetEventGuard(event, "companion", function(ctx) return ctx.companion == event end)
		NS.NarrativeDirector.EVENT_MODULE[event] = "relations"
	end
	for _, event in ipairs({ self.EVENTS.petGrief, self.EVENTS.npcGrief, self.EVENTS.ally, self.EVENTS.bond }) do
		NS:SetEventPriority(event, "exceptional")
	end
	-- the laments are chosen here, never spoken by the Director or by /au event
	Engine:SetEventGuard(self.config.lament, "companion", function() return false end)
	Describers()
end
