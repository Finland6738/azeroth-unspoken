-- Azeroth Unspoken: active romance with NPCs (ADR 0061, docs/specs/romance.md; step R1, the engine).
-- On top of the passive romance of ADR 0037 (Systems/Relationships.lua: the attraction axis, the fixed rule of a humanoid
-- of the opposite sex, the vow), the player DOES the romance:
--   - flirt answers: one or two extra answers in the ambient dialogue (Systems/NPCAlive.lua), registered as `flirts`
--     with NS:RegisterDialogues; the one validated exception to neutral answers (a heart, a colour, a tooltip: R2);
--   - the NPC's answer: a score from the affinity table of Data/Romance.lua (race, class, soul, temperament,
--     relationship, situation, mood, momentum, a random part) gives welcome, cold or refuse; a refusal costs a little
--     attraction and some quiet, never the relationship;
--   - stages kept per NPC: interest and courtship by attraction; declared and vowed only through their moment (the
--     romance popup, R2); one beloved at a time; jealousy after the vow; a break-up only by the player;
--   - tone tiers: 1 Courteous (default), 2 Intimate (fade to black), 3 Explicit only with the 18+ consent and the
--     separate pack (R4). Every romance line is chosen at one tier: a rule above the allowed tier never matches.
-- Narration only and private: nothing goes to chat or the Chat Gateway, nothing changes in the game. The journal keeps
-- tokens, never a name. Saved data: `rec.romance` of an NPC record and `relationships.beloved` (version 10).
-- Until the interface of R2 says it can draw them (NS.DialogueFrame.ROMANCE, NS.RomanceFrame), no flirt and no moment is
-- offered, and the vow of ADR 0037 keeps happening by itself.
local ADDON, NS = ...
local Engine, Compat, R = NS.Engine, NS.Compat, NS.Relationships

---@class AURomanceState rec.romance (saved; version 10 of the relationships)
---@field st string interest | courtship | declared | vowed | ended | past
---@field t? number the last flirt answered (epoch)
---@field rf? integer refusals in a row
---@field cd? number no flirt before this time
---@field jl? number jealousy since (the beloved only)
---@field jp? boolean the jealousy waits for the next meeting with the beloved
---@field dt? number the last date
---@field mo? table<string, number> the next allowed time of a moment (declaration, date)
---@field endT? number the break-up
---@field mm? integer momentum: welcomes in a row

---@class AURomance
local Ro = NS:RegisterModule("romance")
NS.Romance = Ro

Ro.DAY = 86400
Ro.STAGE_INDEX = { none = 0, past = 0, interest = 1, courtship = 2, declared = 3, vowed = 4, ended = -1 }
Ro.STAGES_SAVED = { interest = true, courtship = true, declared = true, vowed = true, ended = true, past = true }
Ro.KINDS = { glance = true, compliment = true, gift = true, walk = true, invite = true, moment = true }
Ro.MOMENTS = { declaration = true, date = true, vow = true }
Ro.OUTCOMES = { welcome = true, cold = true, refuse = true }
Ro.PHASES = { open = true, welcome = true, cold = true, refuse = true }
Ro.TIERS = 3
Ro.COUNTER_MAX = 99
Ro.REPLY_EVENTS = { welcome = "npcd_romance_welcome", cold = "npcd_romance_cold", refuse = "npcd_romance_refuse" }
Ro.JEALOUS_OPEN = "npcd_romance_jealous_open"
Ro.SCENE = "romance_scene"
Ro.INNER = "romance_inner"
-- the events of romance content: every rule of theirs carries romanceTier, none speaks as the character (validator)
Ro.EVENTS = { npcd_romance_welcome = true, npcd_romance_cold = true, npcd_romance_refuse = true,
	npcd_romance_jealous_open = true, romance_scene = true, romance_inner = true }
Ro.MEMORIES = { declared = "relation_declared", date = "relation_date", jealous = "relation_jealous",
	breakup = "relation_breakup", refused = "relation_refused" }
Ro.VARIANTS = 3                -- the private lines of a jealousy and a break-up (rel_jealous_N, rel_breakup_N)

-- the defaults when Data/Romance.lua is missing: nothing is offered without the data
Ro.config = {
	exclude = {},
	stages = {},
	flirt = { minLevel = "acquaintance", max = 2, maxEarly = 1, perTalk = 1, hours = 6 },
	affinity = { base = 50, random = 12, welcome = 60, cold = 40, race = { same = 0, pairs = {} }, class = {}, soul = {},
		relation = { band = {}, axes = {} }, stage = { ahead = 0, tierOut = 0 }, situation = {}, mood = {},
		momentum = { step = 0, max = 0 } },
	refuse = { hours = 20, streak = 3, restDays = 5 },
	moment = { coldDays = 3, refuseDays = 7, dateHours = 20 },
	jealousy = { from = "vowed", farChance = 0, days = 7 },
	breakup = { attraction = 15, affection = 5, restDays = 30, confirmSeconds = 30 },
	tone = { default = 1, mix = { [1] = 1 }, night = { from = 21, to = 5 } },
	dates = {},
	pack18 = { addon = "AzerothUnspoken_Romance18", toc = "X-AzerothUnspoken-Romance" },
}
Ro.flirts = {}                 -- in registration order: { key, id, pack, kind, from, to, tier, roles, when, label, moment, romance18 }
Ro.flirtByKey = {}             -- [pack .. ":" .. id] = flirt
Ro.session = { recent = {}, last = nil, breakup = nil }
Ro.random = math.random        -- the random part (tests fix it)

local EMPTY = {}

local function Now() return (time and time()) or 0 end
local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end
local function Clamp(v, lo, hi) return math.max(lo, math.min(hi, v)) end
local function SafeCall(...) return Compat.SafeCall(...) end

---------------------------------------------------------------------------
-- Data (Data/Romance.lua, through NS:RegisterRelationData({ romance = ... }))
---------------------------------------------------------------------------
-- numbers, strings and booleans key by key; a table goes down one level; a value of another type is ignored
local function MergeInto(dst, src, depth)
	if depth > 6 then return end
	for k, v in pairs(src) do
		if type(k) == "string" or type(k) == "number" then
			local t = type(v)
			if t == "table" then
				if type(dst[k]) ~= "table" then dst[k] = {} end
				MergeInto(dst[k], v, depth + 1)
			elseif (t == "number" and IsNumber(v)) or t == "string" or t == "boolean" then
				dst[k] = v
			end
		end
	end
end

---Merges the romance block of the relationship data (called by R:RegisterData). The stages and the dates are lists:
---a new one replaces the old one whole, after a check of each entry.
---@param rm table
function Ro:Merge(rm)
	local c = self.config
	for _, key in ipairs({ "flirt", "affinity", "refuse", "moment", "jealousy", "breakup", "tone", "pack18" }) do
		if type(rm[key]) == "table" then MergeInto(c[key], rm[key], 0) end
	end
	local ex = rm.exclude
	if type(ex) == "table" then
		for _, id in ipairs(type(ex.npcIDs) == "table" and ex.npcIDs or EMPTY) do
			if IsNumber(id) and id > 0 then c.exclude[math.floor(id)] = true end
		end
	end
	if type(rm.stages) == "table" then
		local list = {}
		for _, s in ipairs(rm.stages) do
			if type(s) == "table" and self.STAGE_INDEX[s.id] and self.STAGE_INDEX[s.id] > 0 then
				table.insert(list, { id = s.id, attraction = IsNumber(s.attraction) and s.attraction or nil,
					band = type(s.band) == "string" and s.band or nil, moment = self.MOMENTS[s.moment] and s.moment or nil })
			end
		end
		c.stages = list
	end
	if type(rm.dates) == "table" then
		local list = {}
		for _, d in ipairs(rm.dates) do
			if type(d) == "table" and type(d.id) == "string" and d.id:match("^[a-z_]+$") and IsNumber(d.tier)
				and d.tier >= 1 and d.tier <= self.TIERS then
				table.insert(list, { id = d.id, tier = math.floor(d.tier), when = type(d.when) == "table" and d.when or nil })
				Engine.CONDITION_VALUES.romanceDate[d.id] = true
			end
		end
		c.dates = list
	end
end

---@param id string
---@return table? stage the stage's entry of the data
function Ro:StageDef(id)
	for _, s in ipairs(self.config.stages) do
		if s.id == id then return s end
	end
	return nil
end

---------------------------------------------------------------------------
-- Flirt answers (NS:RegisterDialogues({ pack, flirts = { ... } }))
---------------------------------------------------------------------------
---Keeps the flirts of a pack. A flirt with the id of one of the same pack replaces it. Checked by Ro:Check (validator).
---@param def table
function Ro:RegisterFlirts(def)
	local pack = type(def.pack) == "string" and def.pack or "?"
	for _, f in ipairs(type(def.flirts) == "table" and def.flirts or EMPTY) do
		if type(f) == "table" and type(f.id) == "string" then
			local stage = type(f.stage) == "table" and f.stage or EMPTY
			local roles
			if type(f.roles) == "table" and #f.roles > 0 then
				roles = {}
				for _, role in ipairs(f.roles) do if type(role) == "string" then roles[role] = true end end
			end
			local key = pack .. ":" .. f.id
			local flirt = { key = key, id = f.id, pack = pack, kind = f.kind, from = stage[1], to = stage[2] or stage[1],
				tier = f.tier, roles = roles, when = type(f.when) == "table" and f.when or nil,
				label = type(f.label) == "table" and f.label or EMPTY, moment = f.moment,
				romance18 = def.romance18 == true or nil, raw = f }
			if self.flirtByKey[key] then
				for i, x in ipairs(self.flirts) do if x.key == key then self.flirts[i] = flirt end end
			else
				table.insert(self.flirts, flirt)
			end
			self.flirtByKey[key] = flirt
		end
	end
end

---The label of a flirt in a language (the language of now; English, then Italian, as a fallback).
---@param key string
---@param lang? string
---@return string?
function Ro:FlirtLabel(key, lang)
	local f = self.flirtByKey[key]
	if not f then return nil end
	lang = lang or NS:Lang()
	local label = f.label[lang] or f.label.en or f.label.it
	return type(label) == "string" and label ~= "" and label or nil
end

---Checks the flirts (validator, `badDialogue`): the format of point 4.1 of the spec. Neutrality is NOT checked: a flirt
---is the one exception, and only a flirt (NPCAlive's check refuses a script choice that declares `romance = true`).
---@param languages string[]
---@param labelBytes integer
---@return { level: string, key: string, msg: string }[]
function Ro:Check(languages, labelBytes)
	local out = {}
	local function Add(level, key, msg) table.insert(out, { level = level, key = key, msg = msg }) end
	local seen = {}
	for _, f in ipairs(self.flirts) do
		local key = "flirt:" .. f.key
		if not f.id:match("^[a-z_0-9]+$") then Add("error", key, "id: only a-z, 0-9 and _") end
		if seen[f.key] then Add("error", key, "id repeated in the pack") end
		seen[f.key] = true
		if not self.KINDS[f.kind] then Add("error", key, ("unknown kind '%s'"):format(tostring(f.kind))) end
		local a, b = self.STAGE_INDEX[f.from], self.STAGE_INDEX[f.to]
		if not (a and b) or a < 0 or b < 0 or f.from == "past" or f.to == "past" or a > b then
			Add("error", key, ("bad stage range '%s'-'%s'"):format(tostring(f.from), tostring(f.to)))
		end
		local tier = f.tier
		if not (IsNumber(tier) and tier == math.floor(tier) and tier >= 1 and tier <= self.TIERS) then
			Add("error", key, ("tier '%s' out of 1-3"):format(tostring(tier)))
		elseif f.romance18 and tier ~= 3 then
			Add("error", key, "an 18+ pack holds tier 3 only")
		elseif not f.romance18 and tier == 3 then
			Add("error", key, "tier 3 only in an 18+ pack (romance18 = true)")
		end
		if f.kind == "moment" then
			if not self.MOMENTS[f.moment] then Add("error", key, ("a moment flirt needs moment = declaration | date | vow, not '%s'"):format(tostring(f.moment))) end
		elseif f.moment ~= nil then
			Add("error", key, "only a flirt of kind 'moment' has a moment")
		end
		for role in pairs(f.roles or EMPTY) do
			if not (NS.Traits.defs.role and NS.Traits.defs.role.valid[role]) then Add("error", key, ("unknown role '%s'"):format(role)) end
		end
		if f.when then
			for _, msg in ipairs(Engine.CheckConditions(f.when)) do Add("error", key, msg) end
		end
		for _, lang in ipairs(languages) do
			local label = f.label[lang]
			if type(label) ~= "string" or label == "" then
				Add("error", key, ("missing the text '%s'"):format(lang))
			else
				if #label > labelBytes then Add("error", key, ("(%s): more than %d bytes"):format(lang, labelBytes)) end
				if label:find("[{}]") then Add("error", key, ("(%s): no placeholders in answers"):format(lang)) end
				local ok, why = Engine.IsValidUTF8(label)
				if not ok then Add("error", key, ("(%s): %s"):format(lang, why)) end
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Settings: Active romance, the tone, the 18+ consent (account: NS.db.relations)
---------------------------------------------------------------------------
local function Settings() return NS.db and NS.db.relations or EMPTY end

---@return boolean on the setting Active romance
function Ro:ActiveOn() return Settings().romanceActive == true end

---@return boolean on the 18+ consent was given
function Ro:AdultOn() return Settings().romanceAdult == true end

---The 18+ pack: is the folder known to the client, and is it loaded?
---@return boolean installed
---@return boolean loaded
function Ro:PackState()
	local name = self.config.pack18.addon
	local P = NS.Packs
	if not P then return false, false end
	local loaded = P:IsLoaded(name)
	return loaded or P:Exists(name) == true, loaded
end

---The tone the player chose (1-3), before the consent and the pack are applied (the Settings segment shows it).
---@return integer
function Ro:SettingTone()
	local t = tonumber(Settings().romanceTone) or self.config.tone.default or 1
	return Clamp(math.floor(t), 1, self.TIERS)
end

---The 18+ pack in one word: missing, installed, loaded (Settings, /au romance).
---@return string
function Ro:PackWord()
	local installed, loaded = self:PackState()
	return loaded and "loaded" or (installed and "installed" or "missing")
end

---The tier the player allows: the setting, with Explicit (3) only when the consent is on and the pack is loaded.
---@return integer
function Ro:AllowedTier()
	local t = tonumber(Settings().romanceTone) or self.config.tone.default or 1
	t = Clamp(math.floor(t), 1, self.TIERS)
	if t == 3 and not (self:AdultOn() and select(2, self:PackState())) then t = 2 end
	return t
end

---Changes the allowed tier. Explicit needs the 18+ consent; with it, the pack is loaded (the first lock of R4).
---@param tier integer 1 | 2 | 3
---@return boolean ok
---@return string? why "adult" when Explicit is asked without the consent
function Ro:SetTone(tier)
	tier = tonumber(tier)
	if not tier or tier < 1 or tier > self.TIERS then return false, "bad" end
	tier = math.floor(tier)
	if tier == 3 and not self:AdultOn() then return false, "adult" end
	if not NS.db then return false, "bad" end
	NS.db.relations.romanceTone = tier
	if tier == 3 then self:LoadPack() end
	return true
end

---The 18+ consent: ON in two steps (Core/Consent.lua), OFF in one; OFF brings the tone back to 2 at most.
---@param on boolean
---@return "on"|"off"|"asked"|"wait" result
function Ro:SetAdult(on)
	if not on then
		NS.Consent:Cancel("romance_adult")
		if NS.db then
			NS.db.relations.romanceAdult = false
			NS.db.relations.romanceTone = math.min(tonumber(NS.db.relations.romanceTone) or 1, 2)
		end
		return "off"
	end
	if self:AdultOn() then return "on" end
	local r = NS.Consent:Step("romance_adult")
	if r == "confirmed" then return "on" end
	return r == "wait" and "wait" or "asked"
end

NS.Consent:Register("romance_adult", { text = "consent_romance_adult_text", accept = function()
	if NS.db then NS.db.relations.romanceAdult = true end
	Ro:LoadPack()
end })

---Loads the 18+ pack, only with the consent on and the tone Explicit (the first of the two locks). Never in combat.
---@return boolean loaded
function Ro:LoadPack()
	if not (self:AdultOn() and tonumber(Settings().romanceTone) == 3) or not NS.Packs then return false end
	if SafeCall("InCombatLockdown") == true then return false end
	local _, loaded = self:PackState()
	if loaded then return true end
	return (NS.Packs:Load(self.config.pack18.addon)) == true
end

---------------------------------------------------------------------------
-- Saved data: rec.romance, relationships.beloved (cleaning, migration 9 -> 10)
---------------------------------------------------------------------------
---The romance of an NPC record within its limits (R:CleanRecord): a known stage, times in the past, a cooldown and the
---moments' times not further ahead than the data allows, small counters.
---@param r any
---@return AURomanceState?
function R.CleanRomance(r)
	if type(r) ~= "table" or not Ro.STAGES_SAVED[r.st] then return nil end
	local c, now = Ro.config, Now()
	local function Past(t) if IsNumber(t) and t > 0 then return math.min(t, now) end end
	local function Ahead(t, limit) if IsNumber(t) and t > now then return math.min(t, now + limit) end end
	local out = { st = r.st }
	out.t, out.dt, out.endT = Past(r.t), Past(r.dt), Past(r.endT)
	out.jl = Past(r.jl)
	if out.jl and r.jp == true then out.jp = true end
	out.cd = Ahead(r.cd, math.max(c.refuse.restDays * Ro.DAY, c.refuse.hours * 3600))
	if type(r.mo) == "table" then
		local mo = {}
		local limit = math.max(c.moment.coldDays, c.moment.refuseDays) * Ro.DAY + c.moment.dateHours * 3600
		for _, m in ipairs({ "declaration", "date" }) do mo[m] = Ahead(r.mo[m], limit) end
		if next(mo) then out.mo = mo end
	end
	for _, k in ipairs({ "rf", "mm" }) do
		if IsNumber(r[k]) and r[k] > 0 then out[k] = Clamp(math.floor(r[k]), 0, Ro.COUNTER_MAX) end
	end
	return out
end

---Version 10 for data of an older version (ADR 0061, point 10): every NPC with the vow of ADR 0037 becomes `vowed`; the
---one with the highest attraction (then the latest meeting, then the lowest npcID) becomes the beloved, the others keep
---their vow with the stage `past`. No memory is written.
---@param d AURelationsData
local function Migrate(d)
	local vowed = {}
	for id, rec in pairs(d.npcs) do
		if type(rec.noted) == "table" and rec.noted.vow and not rec.romance then table.insert(vowed, id) end
	end
	table.sort(vowed, function(a, b)
		local ra, rb = d.npcs[a], d.npcs[b]
		local xa, xb = ra.attraction or 0, rb.attraction or 0
		if xa ~= xb then return xa > xb end
		if (ra.last or 0) ~= (rb.last or 0) then return (ra.last or 0) > (rb.last or 0) end
		return a < b
	end)
	for i, id in ipairs(vowed) do
		d.npcs[id].romance = { st = i == 1 and "vowed" or "past" }
	end
	if vowed[1] and not d.beloved then d.beloved = vowed[1] end
end

---The romance part of R:Sanitize, after the NPC records are cleaned: the migration from an older version, then the
---beloved (an NPC still listed, declared or vowed); a declared or vowed NPC who is not the beloved becomes `past`.
---@param d AURelationsData
---@param npcs table<integer, AURelationRecord>
---@param version integer the version the data were written with
---@return integer dropped
function R.SanitizeRomance(d, npcs, version)
	if version < 10 then Migrate(d) end
	local dropped = 0
	local b = d.beloved
	local rec = IsNumber(b) and npcs[b]
	local st = rec and rec.romance and rec.romance.st
	if st == "declared" or st == "vowed" then
		d.beloved = b
	else
		if b ~= nil then dropped = dropped + 1 end
		d.beloved = nil
	end
	for id, r in pairs(npcs) do
		local s = r.romance and r.romance.st
		if (s == "declared" or s == "vowed") and id ~= d.beloved then r.romance.st = "past" end
		if r.romance and r.romance.jl and id ~= d.beloved then r.romance.jl, r.romance.jp = nil, nil end
	end
	return dropped
end

---The beloved's npcID, if the record is still there.
---@return integer?
function Ro:Beloved()
	local d = R:Data()
	local b = d and d.beloved
	if b and not d.npcs[b] then
		d.beloved = nil
		return nil
	end
	return b
end

---@param rec AURelationRecord
---@return string stage none | interest | courtship | declared | vowed | ended | past
function Ro.Stage(rec)
	return rec and rec.romance and rec.romance.st or "none"
end

local function State(rec)
	rec.romance = rec.romance or { st = "none" }
	return rec.romance
end

-- a state "none" is not kept: a record with nothing to remember loses its table
local function Tidy(rec)
	local r = rec.romance
	if r and r.st == "none" then
		if r.t or r.cd or r.rf or r.mm or r.dt or r.mo or r.jl then r.st = "interest" else rec.romance = nil end
	end
end

---------------------------------------------------------------------------
-- The gates
---------------------------------------------------------------------------
local function AxisValue(rec, axis)
	local v = rec and rec[axis]
	return IsNumber(v) and v or 0
end

local function BandOf(rec)
	local _, band = R:Disposition(R:Axes(rec))
	return band
end

local function BandAtLeast(band, min)
	local a, b = R.dispositionById[band], R.dispositionById[min]
	return a ~= nil and b ~= nil and a.max >= b.max
end

---The soul avoids the topic romance (Systems/Personality.lua `avoid`)?
---@return boolean
function Ro:SoulAvoids()
	local P = NS.Personality
	if not P then return false end
	local ok, traits = pcall(P.Effective, P)
	local avoid = ok and type(traits) == "table" and traits.avoid
	return type(avoid) == "table" and avoid.romance == true
end

---The NPC is excluded by the data: `romance.exclude` or `romance = false` in the curated register.
---@param npcID integer
---@return boolean
function Ro:Excluded(npcID)
	if self.config.exclude[npcID] then return true end
	local I = NS.Interlocutor
	local entry = I and I.npcs and I.npcs[npcID]
	return entry ~= nil and entry.romance == false
end

---Is active romance possible with this NPC now? Every gate of the spec (point 2), checked each time.
---@param npcID integer
---@param opts? { calm?: boolean } calm = false skips the check of the moment (combat, death, screens)
---@return boolean ok
---@return string? why
---@return AURelationRecord? rec
function Ro:Gate(npcID, opts)
	if not (R:Enabled() and R:Writable()) then return false, "relations" end
	if not R:AttractionOn() then return false, "attraction" end
	if not self:ActiveOn() then return false, "off" end
	if self:SoulAvoids() then return false, "avoid" end
	if not IsNumber(npcID) then return false, "unknown" end
	local rec = R:Get("npc", npcID)
	if not rec then return false, "unknown" end
	local ok, why = R:RomanceEligible(npcID)
	if not ok then return false, why end
	if self:Excluded(npcID) then return false, "excluded" end
	if rec.foe then return false, "foe" end
	if not BandAtLeast(BandOf(rec), self.config.flirt.minLevel) then return false, "level" end
	if not (opts and opts.calm == false) then
		if SafeCall("UnitAffectingCombat", "player") == true then return false, "combat" end
		if SafeCall("UnitIsDeadOrGhost", "player") == true then return false, "dead" end
		if Compat:InvasiveScreen() then return false, "screen" end
	end
	local r, now = rec.romance or EMPTY, Now()
	if r.st == "ended" and r.endT and now - r.endT < self.config.breakup.restDays * self.DAY then return false, "ended", rec end
	if r.cd and r.cd > now then return false, "resting", rec end
	return true, nil, rec
end

---------------------------------------------------------------------------
-- Stages
---------------------------------------------------------------------------
---Moves the stage up by attraction (none -> interest -> courtship), never down; `ended` goes back to `none` once its
---rest is over. Called after every change of attraction and at every meeting.
---@param npcID integer
---@param rec AURelationRecord
---@return string stage
function Ro:Advance(npcID, rec)
	local r = rec.romance
	local now = Now()
	if r and r.st == "ended" then
		if r.endT and now - r.endT < self.config.breakup.restDays * self.DAY then return "ended" end
		r.st, r.endT, r.rf, r.mm, r.cd, r.mo, r.dt = "none", nil, nil, nil, nil, nil, nil
	end
	if not (R:AttractionOn() and self:ActiveOn() and R:RomanceEligible(npcID)) or self:Excluded(npcID) then
		if rec.romance then Tidy(rec) end
		return self.Stage(rec)
	end
	local st = self.Stage(rec)
	local attraction, band = AxisValue(rec, "attraction"), BandOf(rec)
	for _, def in ipairs(self.config.stages) do
		if not def.moment and self.STAGE_INDEX[def.id] == self.STAGE_INDEX[st] + 1
			and attraction >= (def.attraction or 0) and (not def.band or BandAtLeast(band, def.band)) then
			State(rec).st = def.id
			st = def.id
		end
	end
	if rec.romance then Tidy(rec) end
	return self.Stage(rec)
end

---A meeting with an NPC (R:RecordNPC, after the passive romance): the stage may move, and a jealousy waiting for the
---beloved is told now, once.
---@param npcID integer
---@param rec AURelationRecord
function R:RomanceMet(npcID, rec)
	Ro:Advance(npcID, rec)
	local r = rec.romance
	if r and r.jp and npcID == Ro:Beloved() then
		r.jp = nil
		Ro:Jealous(npcID, rec)
	end
end

---With Active romance and the popup at hand, the vow of ADR 0037 is offered as a moment to the beloved instead of
---happening by itself (R:Vow asks this first). Without the popup (before R2) the vow stays as it was.
---@param npcID integer
---@return boolean held
function R:RomanceHoldsVow(npcID)
	return Ro:PopupReady() and Ro:Gate(npcID, { calm = false }) == true
end

---After the vow of ADR 0037 (by itself, or from the popup): the NPC becomes the beloved when the slot is free, and
---the stage `vowed`.
---@param npcID integer
---@param rec AURelationRecord
function R:RomanceVowed(npcID, rec)
	if not (R:AttractionOn() and Ro:ActiveOn()) then return end
	local b = Ro:Beloved()
	if b and b ~= npcID then return end
	State(rec).st = "vowed"
	R:Data().beloved = npcID
end

---------------------------------------------------------------------------
-- The tone
---------------------------------------------------------------------------
---Is it night, by the world's hour (tone.night)?
---@param ctx table
---@return boolean
function Ro:Night(ctx)
	local n = self.config.tone.night
	local h = ctx and ctx.hour
	if not IsNumber(h) then return false end
	if n.from <= n.to then return h >= n.from and h < n.to end
	return h >= n.from or h < n.to
end

---The tier the situation allows with this NPC: intimacy (up to the allowed tier) when the NPC is declared or vowed, it
---is night at an inn or a rested place (or a festival the world knows), and the mood is not grief; otherwise 1.
---@param rec AURelationRecord
---@param ctx table
---@return integer
function Ro:SituationTier(rec, ctx)
	local st = self.Stage(rec)
	if st ~= "declared" and st ~= "vowed" then return 1 end
	local e = type(ctx.emotion) == "table" and ctx.emotion.dominant
	if e == "melancholic" then return 1 end
	if (self:Night(ctx) and ctx.resting) or ctx.festival == true then return self.TIERS end
	return 1
end

---The highest tier that can be offered now: min(allowed, situation).
---@param rec AURelationRecord
---@param ctx table
---@return integer
function Ro:TierCap(rec, ctx)
	return math.min(self:AllowedTier(), self:SituationTier(rec, ctx))
end

---Picks the tier of a line among those up to `cap`, by the weights of tone.mix.
---@param cap integer
---@return integer
function Ro:PickTier(cap)
	local mix, total = self.config.tone.mix, 0
	for t = 1, cap do total = total + (IsNumber(mix[t]) and mix[t] > 0 and mix[t] or 0) end
	if total <= 0 then return 1 end
	local x = self.random() * total
	for t = 1, cap do
		local w = IsNumber(mix[t]) and mix[t] > 0 and mix[t] or 0
		if x < w then return t end
		x = x - w
	end
	return cap
end

---------------------------------------------------------------------------
-- Flirts offered in a dialogue
---------------------------------------------------------------------------
---The interface can draw flirt answers (R2 sets NS.DialogueFrame.ROMANCE).
---@return boolean
function Ro:FlirtsReady()
	return NS.DialogueFrame ~= nil and NS.DialogueFrame.ROMANCE == true
end

---The interface can open the romance popup (R2: UI/RomanceFrame.lua).
---@return boolean
function Ro:PopupReady()
	local F = NS.RomanceFrame
	return F ~= nil and type(F.Open) == "function" and (F.IsReady == nil or F:IsReady() == true)
end

local function InRange(f, st)
	local i, a, b = Ro.STAGE_INDEX[st] or 0, Ro.STAGE_INDEX[f.from], Ro.STAGE_INDEX[f.to]
	if not (a and b) then return false end
	-- a flirt of the next stage may be offered early (and costs `ahead`), but never past courtship
	return i <= b and (a <= i or (a == i + 1 and a <= Ro.STAGE_INDEX.courtship))
end

---Which moment is due with this NPC, if any: the vow, then the declaration, then a date (spec point 6).
---@param npcID integer
---@param rec AURelationRecord
---@return string? moment
function Ro:DueMoment(npcID, rec)
	local r = rec.romance or EMPTY
	local st, now = r.st or "none", Now()
	local mo = r.mo or EMPTY
	local b = self:Beloved()
	local attraction = AxisValue(rec, "attraction")
	local vow = R.config.romance.vow
	if st == "declared" and b == npcID and not (rec.noted and rec.noted.vow) and attraction >= vow.attraction
		and R:Derive(R:Axes(rec)) == vow.label then return "vow" end
	local dec = self:StageDef("declared")
	if st == "courtship" and b == nil and dec and attraction >= (dec.attraction or 0)
		and (not dec.band or BandAtLeast(BandOf(rec), dec.band)) and (mo.declaration or 0) <= now then
		return "declaration"
	end
	local i = self.STAGE_INDEX[st] or 0
	if i >= self.STAGE_INDEX.courtship and (mo.date or 0) <= now
		and now - (r.dt or 0) >= self.config.moment.dateHours * 3600 then
		return "date"
	end
	return nil
end

---The flirt answers to add to a node: the due moment's answer first, then others whose stage, tier, roles and
---conditions fit, at random, at most `flirt.max` (`maxEarly` before courtship), none after a flirt in this dialogue
---or within `flirt.hours` of the last one with this NPC.
---@param who AUDialogueWho
---@param ctx table the context of the dialogue's lines
---@param s? table the dialogue session (s.flirted: a flirt was answered)
---@return table[] flirts
function Ro:Flirts(who, ctx, s)
	if who.kind ~= "npc" or (s and (s.flirts or 0) >= self.config.flirt.perTalk) or not self:FlirtsReady() then return {} end
	local ok, _, rec = self:Gate(who.npcID)
	if not ok then return {} end
	local r, now = rec.romance or EMPTY, Now()
	if r.t and now - r.t < self.config.flirt.hours * 3600 then return {} end
	local st = self.Stage(rec)
	local early = (self.STAGE_INDEX[st] or 0) < self.STAGE_INDEX.courtship
	local max = early and self.config.flirt.maxEarly or self.config.flirt.max
	local cap = self:TierCap(rec, ctx)
	ctx.romanceNight = self:Night(ctx)
	local adult = self:AdultOn()
	local disabled = NS.db and NS.db.disabledPacks or EMPTY
	local function Fits(f)
		-- a pack turned off in Settings > Packs offers no flirt either, like its lines (R3)
		if disabled[f.pack] or (f.romance18 and not adult) then return false end
		if not (IsNumber(f.tier) and f.tier <= cap) or not InRange(f, st) then return false end
		if f.roles and not f.roles[who.role] then return false end
		return f.when == nil or Engine.SafeMatch(f.when, ctx)
	end
	local out = {}
	local due = self:PopupReady() and self:DueMoment(who.npcID, rec)
	if due then
		for _, f in ipairs(self.flirts) do
			if f.kind == "moment" and f.moment == due and Fits(f) then
				table.insert(out, f)
				break
			end
		end
	end
	local pool = {}
	for _, f in ipairs(self.flirts) do
		if f.kind ~= "moment" and Fits(f) then table.insert(pool, f) end
	end
	-- the ones offered last are drawn after the others (the anti-repetition of the selector, for answers)
	local recent = self.session.recent
	local fresh, stale = {}, {}
	for _, f in ipairs(pool) do table.insert(recent[f.key] and stale or fresh, f) end
	for _, list in ipairs({ fresh, stale }) do
		while #list > 0 and #out < max do
			local i = math.floor(self.random() * #list) + 1
			if i > #list then i = #list end
			table.insert(out, table.remove(list, i))
		end
	end
	while #out > max do table.remove(out) end
	for _, f in ipairs(out) do recent[f.key] = now end
	local n = 0
	for _ in pairs(recent) do n = n + 1 end
	if n > 24 then self.session.recent = {} end
	return out
end

---------------------------------------------------------------------------
-- The affinity score
---------------------------------------------------------------------------
local function Band5(trait, value)
	local def = NS.Traits.defs[trait]
	return def and NS.Traits.Band(def, value) or nil
end

---The score of an answer and its parts (point 5 of the spec). `flirt` is a flirt, or a moment's stand-in
---{ tier, from } (a moment is never ahead).
---@param npcID integer
---@param rec AURelationRecord
---@param flirt table
---@param ctx table
---@param who? AUDialogueWho the dialogue's NPC (its role)
---@return number score
---@return table<string, number> parts
function Ro:Score(npcID, rec, flirt, ctx, who)
	local a = self.config.affinity
	local parts = { base = a.base or 0 }
	-- race: the NPC's known race (the curated register, or the client) against the character's
	local I = NS.Interlocutor
	local entry = I and I.npcs and I.npcs[npcID] or EMPTY
	local theirs, mine = entry.race or rec.race, ctx.race
	local race = 0
	if theirs and mine then
		if theirs == mine then
			race = a.race.same or 0
		else
			local p = a.race.pairs or EMPTY
			race = (p[mine] and p[mine][theirs]) or (p[theirs] and p[theirs][mine]) or 0
		end
	end
	parts.race = race
	-- class: against the NPC's role (a trainer of the character's own class)
	local temper = R:Temper(npcID, rec, nil)
	local role = (who and who.role) or temper.role
	local byRole = role and a.class[role] or EMPTY
	local class = ctx.class and byRole[ctx.class] or 0
	if role == "trainer" and entry.class and entry.class == ctx.class then class = class + (byRole.same or 0) end
	parts.class = IsNumber(class) and class or 0
	-- soul: the character's trait bands against the NPC's temperament
	local soul = 0
	local wants = temper.temperament and a.soul[temper.temperament]
	if wants then
		local traits = NS.Personality and select(1, NS.Personality:Effective()) or EMPTY
		for trait, bands in pairs(wants) do
			local v = traits[trait]
			local band = IsNumber(v) and Band5(trait, v)
			if band and IsNumber(bands[band]) then soul = soul + bands[band] end
		end
	end
	parts.soul = soul
	-- relation: the disposition band and the axes
	local axes = R:Axes(rec)
	local _, band = R:Disposition(axes)
	local rel = a.relation.band[band] or 0
	for axis, w in pairs(a.relation.axes) do
		if IsNumber(w) then rel = rel + w * AxisValue(rec, axis) end
	end
	parts.relation = rel
	-- stage: a flirt ahead of the NPC, a tier above the situation
	local stage = 0
	local i, from = self.STAGE_INDEX[self.Stage(rec)] or 0, self.STAGE_INDEX[flirt.from or "none"] or 0
	if from > i then stage = stage + (a.stage.ahead or 0) end
	if IsNumber(flirt.tier) and flirt.tier > self:SituationTier(rec, ctx) then stage = stage + (a.stage.tierOut or 0) end
	parts.stage = stage
	-- situation: an inn at night, a festival, a city or a rested place, the wild
	local sit = a.situation
	local where
	if ctx.resting and self:Night(ctx) then where = "inn_night"
	elseif ctx.festival == true then where = "festival"
	elseif ctx.resting or ctx.mood == "town" then where = "city"
	else where = "wild" end
	parts.situation = sit[where] or 0
	-- mood: the character's dominant emotion
	local e = type(ctx.emotion) == "table" and ctx.emotion.dominant
	parts.mood = e and a.mood[e] or 0
	-- momentum: welcomes in a row
	local mm = rec.romance and rec.romance.mm or 0
	parts.momentum = math.min(mm * (a.momentum.step or 0), a.momentum.max or 0)
	-- random: uniform in [-random, +random]
	local rnd = a.random or 0
	parts.random = rnd > 0 and (self.random() * 2 - 1) * rnd or 0
	local total = 0
	for _, v in pairs(parts) do total = total + v end
	return total, parts
end

---@param score number
---@return string outcome welcome | cold | refuse
function Ro:Outcome(score)
	local a = self.config.affinity
	if score >= a.welcome then return "welcome" end
	if score >= a.cold then return "cold" end
	return "refuse"
end

---------------------------------------------------------------------------
-- Effects
---------------------------------------------------------------------------
local function Journal(kind, perm)
	local LM = NS.LivingMemory
	if not (LM and LM.Record) then return nil end
	return LM:Record({ kind = kind, tags = { "npc" }, source = "addon", perm = perm or nil,
		zone = (R:Circumstances() or EMPTY).zone })
end

-- a private line of the narrator (never chat), only when the moment allows it
local function Notice(text)
	local db = NS.db
	if not (db and NS.Narrator and NS.Narrator.Notice) or NS.paused or (db.intensity or 0) <= 0
		or not db.output.privateNarrator or Compat:InvasiveScreen()
		or SafeCall("UnitAffectingCombat", "player") == true then return false end
	NS.Narrator:Notice(text)
	return true
end

local function Apply(npcID, rec, source)
	local temper = R:Temper(npcID, rec, source)
	local got = R:Increment(rec, source, Now(), temper.gain)
	R:Changed()
	return got
end

---Another NPC answered a flirt: the beloved may hear of it (point 7).
---@param npcID integer the other NPC
---@param rec AURelationRecord
---@return boolean heard
function Ro:MaybeJealous(npcID, rec)
	local b = self:Beloved()
	if not b or b == npcID then return false end
	local brec = R:Get("npc", b)
	local from = self.STAGE_INDEX[self.config.jealousy.from] or self.STAGE_INDEX.vowed
	if not brec or (self.STAGE_INDEX[self.Stage(brec)] or 0) < from then return false end
	local same = brec.town ~= nil and brec.town == rec.town
	if not same and self.random() >= (self.config.jealousy.farChance or 0) then return false end
	local r = State(brec)
	r.jl, r.jp = Now(), true
	return true
end

---The beloved meets the character after hearing of a flirt: attraction and trust go down (once), a journal line, a
---private line. The jealous opening of the dialogue holds for `jealousy.days`.
---@param npcID integer
---@param rec AURelationRecord
function Ro:Jealous(npcID, rec)
	Apply(npcID, rec, "romance_jealous")
	Journal(self.MEMORIES.jealous)
	Notice(NS:L("rel_jealous_" .. ((rec.count or 0) % self.VARIANTS + 1), R:DisplayName("npc", npcID)))
end

---Is the beloved still jealous (the condition romanceJealous)?
---@param rec AURelationRecord
---@return boolean
function Ro:IsJealous(rec)
	local jl = rec and rec.romance and rec.romance.jl
	return jl ~= nil and Now() - jl < (self.config.jealousy.days or 0) * self.DAY
end

---The character answered a flirt: the score, the outcome and its effects (point 5). Never for a moment.
---@param who AUDialogueWho
---@param flirt table
---@param ctx table
---@return string? outcome
---@return table? parts
function Ro:Answer(who, flirt, ctx)
	local ok, why, rec = self:Gate(who.npcID)
	if not ok then return nil, { why = why } end
	local score, parts = self:Score(who.npcID, rec, flirt, ctx, who)
	local outcome = self:Outcome(score)
	local r, now, c = State(rec), Now(), self.config
	r.t = now
	if outcome == "welcome" then
		Apply(who.npcID, rec, "romance_flirt")
		r.mm, r.rf = math.min((r.mm or 0) + 1, self.COUNTER_MAX), nil
	elseif outcome == "cold" then
		r.mm = nil
	else
		Apply(who.npcID, rec, "romance_refused")
		r.mm = nil
		r.rf = (r.rf or 0) + 1
		r.cd = now + c.refuse.hours * 3600
		if r.rf >= c.refuse.streak then r.cd, r.rf = now + c.refuse.restDays * self.DAY, nil end
		rec.noted = rec.noted or {}
		if not rec.noted.romance_refused then
			rec.noted.romance_refused = true
			Journal(self.MEMORIES.refused)
		end
	end
	if outcome ~= "refuse" then self:MaybeJealous(who.npcID, rec) end
	self:Advance(who.npcID, rec)
	self.session.last = { npcID = who.npcID, flirt = flirt.key, kind = flirt.kind, outcome = outcome, score = score, parts = parts }
	R:Changed()
	return outcome, parts
end

---The context of a romance line: the stage, the tier, the kind, the outcome (and the moment's phase and date).
---@param ctx table
---@param rec AURelationRecord
---@param fields table romanceKind, romanceOutcome, romanceMoment, romancePhase, romanceDate, romanceTier
---@return table ctx
function Ro:LineContext(ctx, rec, fields)
	ctx.romanceStage = self.Stage(rec)
	ctx.romanceNight = self:Night(ctx)
	for k, v in pairs(fields) do ctx[k] = v end
	if not ctx.romanceTier then ctx.romanceTier = self:PickTier(self:TierCap(rec, ctx)) end
	return ctx
end

---The NPC of a romance line, in its context: the name ({other}) and the sex ({og:m|f}), so the texts can name them and
---agree with them (R3). Romance is only with the opposite sex (ADR 0037): without the client's reading of the NPC, its
---sex is the other one of the character's.
---@param ctx table
---@param npcID integer
---@param rec? AURelationRecord
---@return table ctx
function Ro:Person(ctx, npcID, rec)
	if (ctx.otherName == nil or ctx.otherName == "") and rec and type(rec.name) == "string" and rec.name ~= "" then
		ctx.otherName = rec.name
	end
	if ctx.otherSex ~= "male" and ctx.otherSex ~= "female" then
		local kin = R.session.kin and R.session.kin[npcID]
		if kin and kin.sex == 2 then
			ctx.otherSex = "male"
		elseif kin and kin.sex == 3 then
			ctx.otherSex = "female"
		else
			local mine = ctx.sex or ((SafeCall("UnitSex", "player") == 3) and "female" or "male")
			ctx.otherSex = mine == "female" and "male" or "female"
		end
	end
	return ctx
end

---The NPC's reply to a flirt, a line of `npcd_romance_<outcome>` at one tier (nil when there is none).
---@param who AUDialogueWho
---@param flirt table
---@param outcome string
---@param ctx table the dialogue's context
---@return { text: string, id: string }?
function Ro:Reply(who, flirt, outcome, ctx)
	local rec = R:Get("npc", who.npcID)
	if not rec then return nil end
	self:LineContext(ctx, rec, { romanceKind = flirt.kind, romanceOutcome = outcome })
	self:Person(ctx, who.npcID, rec)
	local tier = ctx.romanceTier
	for t = tier, 1, -1 do
		ctx.romanceTier = t
		local e = Engine:PickEntry(self.REPLY_EVENTS[outcome], ctx, "say")
		if e then return { text = e.text, id = e.id } end
	end
	return nil
end

---The jealous opening of the beloved's dialogue (event npcd_romance_jealous_open), while the jealousy lasts.
---@param who AUDialogueWho
---@param ctx table
---@return { text: string, id: string }?
function Ro:JealousOpen(who, ctx)
	if who.kind ~= "npc" then return nil end
	local ok, _, rec = self:Gate(who.npcID, { calm = false })
	if not ok or who.npcID ~= self:Beloved() or not self:IsJealous(rec) then return nil end
	self:LineContext(ctx, rec, { romanceTier = 1 })
	self:Person(ctx, who.npcID, rec)
	local e = Engine:PickEntry(self.JEALOUS_OPEN, ctx, "say")
	return e and { text = e.text, id = e.id } or nil
end

---A private thought after a flirt, through the Director (the inner voice; never chat).
---@param npcID integer
---@param outcome string
---@param kind string
function Ro:Inner(npcID, outcome, kind)
	local rec = R:Get("npc", npcID)
	if not (rec and NS.Director) then return end
	local ctx = { romanceInner = true, relationSubject = { kind = "npc", id = npcID }, romanceOutcome = outcome,
		romanceKind = kind, romanceStage = self.Stage(rec) }
	ctx.romanceTier = self:PickTier(math.min(self:AllowedTier(), self:SituationTier(rec, NS:BuildContext())))
	self:Person(ctx, npcID, rec)
	NS.Director:Offer(self.INNER, ctx)
end

---------------------------------------------------------------------------
-- Moments: the declaration, a date, the vow (the popup of R2 calls these)
---------------------------------------------------------------------------
---The date options that fit now: a tier up to the cap, their conditions.
---@param npcID integer
---@param ctx table
---@return table[]
function Ro:DateOptions(npcID, ctx)
	local rec = R:Get("npc", npcID)
	if not rec then return {} end
	local cap = self:TierCap(rec, ctx)
	ctx.romanceNight = self:Night(ctx)
	local out = {}
	for _, d in ipairs(self.config.dates) do
		if d.tier <= cap and (d.when == nil or Engine.SafeMatch(d.when, ctx)) then table.insert(out, d) end
	end
	return out
end

---Can this moment be opened with this NPC now (the gates, and the moment is due)?
---@param npcID integer
---@param moment string
---@return boolean
function Ro:CanOpen(npcID, moment)
	local ok, _, rec = self:Gate(npcID)
	return ok and self:DueMoment(npcID, rec) == moment
end

---The player's choice in the popup. `option`: the date option's id. Not yet, Not tonight, Esc: never call this.
---@param npcID integer
---@param moment string declaration | date | vow
---@param ctx table
---@param option? string
---@return string? outcome welcome | cold | refuse (nil: the moment is not open)
---@return table? parts
function Ro:Decide(npcID, moment, ctx, option)
	if not self:CanOpen(npcID, moment) then return nil end
	local rec = R:Get("npc", npcID)
	local r, now, c = State(rec), Now(), self.config
	if moment == "vow" then
		r.st = "vowed"
		R:Vow(npcID, rec, true)
		R:Changed()
		return "welcome", {}
	end
	local tier = 1
	if moment == "date" then
		local found
		for _, d in ipairs(self:DateOptions(npcID, ctx)) do if d.id == option then found = d end end
		if not found then return nil end
		tier = found.tier
	end
	local score, parts = self:Score(npcID, rec, { tier = tier, from = r.st }, ctx)
	local outcome = self:Outcome(score)
	r.mo = r.mo or {}
	if moment == "declaration" then
		if outcome == "welcome" then
			r.st = "declared"
			R:Data().beloved = npcID
			Apply(npcID, rec, "romance_declared")
			Journal(self.MEMORIES.declared, true)
		elseif outcome == "cold" then
			r.mo.declaration = now + c.moment.coldDays * self.DAY
		else
			r.mo.declaration = now + c.moment.refuseDays * self.DAY
			Apply(npcID, rec, "romance_refused")
		end
	else
		if outcome == "welcome" then
			Apply(npcID, rec, "romance_date")
			r.jl, r.jp, r.dt = nil, nil, now
			rec.noted = rec.noted or {}
			if not rec.noted.romance_date then
				rec.noted.romance_date = true
				Journal(self.MEMORIES.date)
			end
		elseif outcome == "refuse" then
			Apply(npcID, rec, "romance_refused")
			r.mo.date = now + c.moment.dateHours * 3600
		end
	end
	if not next(r.mo) then r.mo = nil end
	self.session.last = { npcID = npcID, moment = moment, outcome = outcome, score = score, parts = parts, tier = tier }
	R:Changed()
	return outcome, parts
end

---The narration of a moment (event romance_scene, the narrator's voice) at one tier, for the popup.
---@param npcID integer
---@param moment string
---@param phase string open | welcome | cold | refuse
---@param ctx table
---@param date? table the date option chosen
---@return { text: string, id: string, tier: integer }?
function Ro:Scene(npcID, moment, phase, ctx, date)
	local rec = R:Get("npc", npcID)
	if not rec then return nil end
	ctx.romanceScene = true
	ctx.relationSubject = ctx.relationSubject or { kind = "npc", id = npcID }
	local tier = date and date.tier or self:PickTier(self:TierCap(rec, ctx))
	self:LineContext(ctx, rec, { romanceMoment = moment, romancePhase = phase, romanceDate = date and date.id or nil,
		romanceTier = tier })
	self:Person(ctx, npcID, rec)
	for t = tier, 1, -1 do
		ctx.romanceTier = t
		local e = Engine:PickEntry(self.SCENE, ctx, "say")
		if e then return { text = e.text, id = e.id, tier = t } end
	end
	return nil
end

---------------------------------------------------------------------------
-- The break-up (only by the player)
---------------------------------------------------------------------------
---Ends the romance with the beloved: the stage `ended`, the slot free, attraction down to at most breakup.attraction,
---affection down by breakup.affection, a permanent journal line, one private line. The vow's memory stays.
---@return boolean ok
---@return string? why "none" without a beloved
function Ro:BreakUp()
	local b = self:Beloved()
	if not b or not R:Writable() then return false, "none" end
	local rec = R:Get("npc", b)
	local r, c = State(rec), self.config.breakup
	r.st, r.endT, r.jl, r.jp, r.mm, r.rf, r.mo, r.cd = "ended", Now(), nil, nil, nil, nil, nil, nil
	R:Data().beloved = nil
	if AxisValue(rec, "attraction") > c.attraction then rec.attraction = c.attraction end
	Apply(b, rec, "romance_breakup")
	Journal(self.MEMORIES.breakup, true)
	Notice(NS:L("rel_breakup_" .. ((rec.count or 0) % self.VARIANTS + 1), R:DisplayName("npc", b)))
	R:Changed()
	return true
end

---------------------------------------------------------------------------
-- Context (R:Context): the conditions of romance lines
---------------------------------------------------------------------------
---The romance of the NPC of the line: ctx.romanceStage, romanceBeloved, romanceOther, romanceJealous. Only with the
---attraction axis on.
---@param ctx table
---@param npcID integer
---@param rec AURelationRecord
function R:RomanceContext(ctx, npcID, rec)
	if not R:AttractionOn() then return end
	local b = Ro:Beloved()
	ctx.romanceStage = ctx.romanceStage or Ro.Stage(rec)
	ctx.romanceBeloved = b ~= nil and b == npcID or nil
	ctx.romanceOther = b ~= nil and b ~= npcID or nil
	ctx.romanceJealous = (b == npcID and Ro:IsJealous(rec)) or nil
end

---The night of romance (romanceNight), for every line: the world's hour within tone.night.
---@param ctx table
function R:RomanceWorldContext(ctx)
	if ctx.romanceNight == nil and R:AttractionOn() then ctx.romanceNight = Ro:Night(ctx) or nil end
end

---------------------------------------------------------------------------
-- Status (/au debug; the command of R2 shows the parts of the last score)
---------------------------------------------------------------------------
---@return string
function Ro:Status()
	local b = self:Beloved()
	local last = self.session.last
	return ("active %s, tone %d (allowed %d), adult %s, beloved %s, flirts %d%s"):format(tostring(self:ActiveOn()),
		tonumber(Settings().romanceTone) or 1, self:AllowedTier(), tostring(self:AdultOn()), tostring(b), #self.flirts,
		last and ("; last " .. tostring(last.outcome) .. " " .. ("%.1f"):format(last.score or 0)) or "")
end

---------------------------------------------------------------------------
-- The interface's words: the stage in the Relationships window, and /au romance (step R2)
---------------------------------------------------------------------------
---The romance of an NPC for the Relationships detail: the stage, and whether they are the beloved ("" without one).
---@param npcID integer
---@param rec AURelationRecord
---@return string
function Ro:Text(npcID, rec)
	if not R:AttractionOn() then return "" end
	local st = self.Stage(rec)
	if st == "none" then return "" end
	local line = NS:L("rel_rom_stage", NS:L("rom_stage_" .. st))
	if npcID == self:Beloved() then line = line .. " " .. NS:L("rel_rom_beloved") end
	return line
end

-- the NPC the character targets, with its kin read there (the dialogue's reading, ADR 0061 point 1)
local function TargetNPC()
	if Compat:IsUnitIdentitySecret("target") then return nil end
	local id = R.NpcID(SafeCall("UnitGUID", "target"))
	if not IsNumber(id) then return nil end
	local sex, humanoid = R.Kin("target")
	if sex ~= nil or humanoid ~= nil then R:NoteKin(id, sex, humanoid) end
	return id
end

local K = NS.Keywords
local WORDS = K.Register("romance", { on = "on", off = "off", tone = "tone", adult = "adult", ["end"] = "end", why = "why" })
local TONES = K.Register("romance_tones", { courteous = 1, intimate = 2, explicit = 3 })
local function Say(key, ...) NS:Print(NS:L(key, ...)) end

---/au romance [on|off | tone courteous|intimate|explicit | adult on|off | end | why]. Without a word: the beloved, the
---stage with the targeted NPC and the moment due with them, which it opens (the popup never opens by itself).
---@param rest? string
function Ro:Command(rest)
	local word, arg = (rest or ""):match("^([^ ]*) *(.*)$")
	local cmd = WORDS[NS.Lower(word or "")]
	arg = NS.Lower(arg or "")
	if cmd == "on" or cmd == "off" then
		NS.db.relations.romanceActive = cmd == "on"
		Say(cmd == "on" and "rom_on" or "rom_off")
		if cmd == "on" and not R:AttractionOn() then Say("rom_needs_attraction_cmd") end
	elseif cmd == "tone" then
		local tier = TONES[arg]
		if not tier then
			if arg ~= "" then Say("invalid_value", arg, NS:L("values_romance_tone")) end
			Say("rom_tone_now", NS:L("rom_tone_" .. ({ "courteous", "intimate", "explicit" })[self:SettingTone()]))
			return
		end
		local ok, why = self:SetTone(tier)
		if not ok then Say(why == "adult" and "rom_tone_needs_adult" or "rom_off") return end
		Say("rom_tone_now", NS:L("rom_tone_" .. ({ "courteous", "intimate", "explicit" })[tier]))
		if tier == 3 and self:PackWord() ~= "loaded" then Say("rom_pack_" .. self:PackWord()) end
	elseif cmd == "adult" then
		local on = K.OnOff(arg)
		if on == nil then Say("rom_adult_state", NS:L(self:AdultOn() and "on" or "off")) return end
		local r = self:SetAdult(on)
		if r == "wait" then Say("consent_wait")
		elseif r == "on" then Say("rom_adult_on")
		elseif r == "off" then Say("rom_adult_off") end
	elseif cmd == "end" then
		local b = self:Beloved()
		if not b then Say("rom_end_none") return end
		local c = self.config.breakup
		local armed = self.session.breakup
		if armed and armed.npcID == b and GetTime() - armed.t <= c.confirmSeconds then
			self.session.breakup = nil
			local name = R:DisplayName("npc", b)
			if self:BreakUp() then Say("rom_end_done", name) end
		else
			self.session.breakup = { npcID = b, t = GetTime() }
			Say("rom_end_confirm", R:DisplayName("npc", b), c.confirmSeconds, c.restDays)
		end
	elseif cmd == "why" then
		local last = self.session.last
		if not last then Say("rom_why_none") return end
		local parts = {}
		for _, k in ipairs({ "base", "race", "class", "soul", "relation", "stage", "situation", "mood", "momentum", "random" }) do
			local v = last.parts and last.parts[k]
			if IsNumber(v) and v ~= 0 then table.insert(parts, ("%s %+.1f"):format(k, v)) end   -- nolocale: the parts' names are the data's
		end
		Say("rom_why", R:DisplayName("npc", last.npcID), ("%.1f"):format(last.score or 0), NS:L("rom_outcome_" .. tostring(last.outcome)),
			table.concat(parts, ", "))
	elseif word ~= "" then
		Say("invalid_value", word, NS:L("values_romance"))
	else
		local b = self:Beloved()
		Say(b and "rom_status_beloved" or "rom_status_none", b and R:DisplayName("npc", b) or nil,
			b and NS:L("rom_stage_" .. self.Stage(R:Get("npc", b))) or nil)
		local id = TargetNPC()
		local rec = id and R:Get("npc", id)
		if not rec then return end
		local ok, why = self:Gate(id)
		Say("rom_status_target", R:DisplayName("npc", id), NS:L("rom_stage_" .. self.Stage(rec)))
		if not ok then Say("rom_closed_" .. (NS:L("rom_closed_" .. tostring(why)) ~= "rom_closed_" .. tostring(why) and why or "other")) return end
		local due = self:PopupReady() and self:DueMoment(id, rec)
		if due then
			local opened, reason = NS.RomanceFrame:Open(id, due)
			if not opened then Say("rom_cannot_open_" .. (reason == "combat" and "combat" or "other")) end
		end
	end
end

---------------------------------------------------------------------------
-- Init: the guards of the romance events, the journal's kinds
---------------------------------------------------------------------------
-- the NPC's replies and the jealous opening speak only inside a dialogue (NPCAlive's guard); the scenes only in the popup;
-- the inner voice only from here
local function Guards()
	if NS.NPCAlive and NS.NPCAlive.RegisterDialogueEvent then
		for _, ev in pairs(Ro.REPLY_EVENTS) do NS.NPCAlive.RegisterDialogueEvent(ev) end
		NS.NPCAlive.RegisterDialogueEvent(Ro.JEALOUS_OPEN)
	end
	Engine:SetEventGuard(Ro.SCENE, "romance", function(ctx) return ctx.romanceScene == true end)
	Engine:SetEventGuard(Ro.INNER, "romance", function(ctx) return ctx.romanceInner == true end)
	if NS.NarrativeDirector then
		NS.NarrativeDirector.EVENT_MODULE[Ro.SCENE] = "relations"
		NS.NarrativeDirector.EVENT_MODULE[Ro.INNER] = "relations"
	end
end

local function Kinds()
	local LM = NS.LivingMemory
	if not (LM and LM.RegisterKind) then return end
	local imp = { declared = 4, date = 3, jealous = 2, breakup = 4, refused = 2 }
	for name, kind in pairs(Ro.MEMORIES) do
		LM:RegisterKind(kind, imp[name])
		LM:RegisterDescriber(kind, function(e)
			local text = NS:L("rel_mem_" .. name)
			return e.zone and (text .. " (" .. e.zone .. ")") or text
		end)
	end
end

Guards()

function Ro:OnInit()
	self.session = { recent = {}, last = nil, breakup = nil }
	Kinds()
end
