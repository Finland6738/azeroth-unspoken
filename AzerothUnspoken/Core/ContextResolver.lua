-- Azeroth Unspoken: raccolta del contesto di gioco su cui si valutano le condizioni.
local ADDON, NS = ...

-- valori che il client può nascondere agli addon: vedi Core/Compat.lua
local Compat = NS.Compat
local SafeCall = Compat.SafeCall

---------------------------------------------------------------------------
-- Dati di classificazione registrabili dai pacchetti
---------------------------------------------------------------------------
NS.zoneMoods = {}           -- [nome zona minuscolo] = "forest" | "desert" | ...
NS.spellKeywords = { kind = {}, element = {} }
NS.classElement = {}        -- elemento di ripiego per classe

function NS:RegisterZoneMoods(map)
	for zone, mood in pairs(map) do self.zoneMoods[zone:lower()] = mood end
end

-- { kind = { heal = {"heal", "cura"} }, element = { fire = {...} }, classElement = { MAGE = "arcane" } }
function NS:RegisterSpellKeywords(def)
	for group, entries in pairs(def) do
		if group == "classElement" then
			for k, v in pairs(entries) do self.classElement[k] = v end
		else
			self.spellKeywords[group] = self.spellKeywords[group] or {}
			for key, words in pairs(entries) do
				local list = self.spellKeywords[group][key] or {}
				for _, w in ipairs(words) do table.insert(list, w:lower()) end
				self.spellKeywords[group][key] = list
			end
		end
	end
end

-- prima parola chiave trovata nel nome dell'incantesimo; l'ordine conta
-- ("moonfire" è natura prima che fuoco, "holy fire" è sacro)
local ORDER = {
	kind = { "rez", "travel", "summon", "heal", "buff", "stealth", "taunt", "shout" },
	element = { "nature", "holy", "frost", "shadow", "arcane", "fire", "physical" },
}
local function Classify(group, name)
	if not name then return nil end
	name = name:lower()
	local defs = NS.spellKeywords[group] or {}
	local keys, seen = {}, {}
	for _, k in ipairs(ORDER[group] or {}) do table.insert(keys, k); seen[k] = true end
	-- chiavi aggiunte dai pacchetti, dopo quelle di base
	for k in pairs(defs) do if not seen[k] then table.insert(keys, k) end end
	for _, key in ipairs(keys) do
		for _, w in ipairs(defs[key] or {}) do
			if name:find(w, 1, true) then return key end
		end
	end
	return nil
end

function NS:ClassifySpell(name)
	return Classify("kind", name), Classify("element", name)
end

-- tipo di creatura in forma neutra, dal nome nella lingua del client
local CREATURE = {
	{ "undead", "non morto", "non-morto" }, { "demon", "demone" }, { "dragonkin", "draconide", "drago" },
	{ "elemental", "elementale" }, { "beast", "bestia" }, { "giant", "gigante" },
	{ "mechanical", "meccanic" }, { "critter", "animale" }, { "aberration", "aberrazione" },
	{ "humanoid", "umanoide" },
}
local CREATURE_KEY = { "undead", "demon", "dragon", "elemental", "beast", "giant", "mechanical", "critter", "aberration", "humanoid" }

local function CreatureKey(localized)
	if not localized then return nil end
	localized = localized:lower()
	for i, words in ipairs(CREATURE) do
		for _, w in ipairs(words) do
			if localized:find(w, 1, true) then return CREATURE_KEY[i] end
		end
	end
	return "other"
end

local function TimeOfDay(h)
	if h >= 5 and h < 8 then return "dawn" end
	if h >= 8 and h < 18 then return "day" end
	if h >= 18 and h < 21 then return "dusk" end
	return "night"
end

local function PlayerName()
	return (NS.TotalRP3 and NS.TotalRP3:GetFirstName()) or SafeCall(UnitName, "player")
end

-- nomi localizzati nella lingua scelta dall'utente (non in quella del client)
local function LocalName(group, token, fallback)
	local lang = NS.languages[NS:Lang()]
	local t = lang and lang.ui[group]
	local v = t and token and t[token]
	if type(v) == "table" then v = (UnitSex("player") == 3) and v[2] or v[1] end
	return v or fallback
end

---------------------------------------------------------------------------
-- Costruzione del contesto
---------------------------------------------------------------------------
function NS:BuildContext(extra)
	local ctx = {}
	ctx.player = PlayerName()
	local classLoc, class = UnitClass("player")
	local raceLoc, race = UnitRace("player")
	ctx.class, ctx.race = class, race
	ctx.faction = UnitFactionGroup("player")
	ctx.sex = (UnitSex("player") == 3) and "female" or "male"
	ctx.classLocal = LocalName("classNames", class, classLoc)
	ctx.raceLocal = LocalName("raceNames", race, raceLoc)
	ctx.factionLocal = LocalName("factionNames", ctx.faction, ctx.faction)
	ctx.level = UnitLevel("player")
	-- scelte dell'utente: la profondità stilistica pesa le frasi, l'intensità si può usare nelle condizioni
	if self.db then ctx.depth, ctx.intensity = self.db.proseDepth, self.db.intensity end

	local hp, hpMax = SafeCall(UnitHealth, "player"), SafeCall(UnitHealthMax, "player")
	if hp and hpMax and hpMax > 0 then ctx.hp = hp / hpMax end

	ctx.combat = UnitAffectingCombat("player") or InCombatLockdown()
	ctx.dead = UnitIsDeadOrGhost("player")
	ctx.ghost = UnitIsGhost("player")
	ctx.resting = IsResting()
	ctx.indoors = IsIndoors()
	ctx.mounted = IsMounted()
	ctx.swimming = IsSwimming()
	ctx.stealth = IsStealthed()

	local inInstance, instanceType = IsInInstance()
	ctx.instance = inInstance and instanceType ~= "none"
	ctx.instanceType = instanceType or "none"
	ctx.group = IsInRaid() and "raid" or (IsInGroup() and "party" or "solo")

	ctx.zone = SafeCall(GetRealZoneText) or SafeCall(GetZoneText)
	ctx.subzone = SafeCall(GetSubZoneText)
	if ctx.subzone == "" then ctx.subzone = nil end
	ctx.mood = ctx.zone and self.zoneMoods[ctx.zone:lower()]
	if ctx.resting and not ctx.mood then ctx.mood = "town" end

	local h, m = GetGameTime()
	ctx.hour = h
	ctx.time = TimeOfDay(h or 12)

	if UnitExists("target") then
		ctx.hasTarget = true
		-- nome nascosto dal client: le frasi con {target} vengono scartate
		if not Compat:IsUnitIdentitySecret("target") then ctx.target = SafeCall(UnitName, "target") end
		ctx.targetPlayer = UnitIsPlayer("target")
		ctx.hostile = SafeCall(UnitCanAttack, "player", "target") and true or false
		ctx.friendly = not ctx.hostile
		ctx.targetDead = UnitIsDead("target")
		local ctype = SafeCall(UnitCreatureType, "target")
		ctx.ctype = CreatureKey(ctype)
		ctx.ctypeLocal = LocalName("creatureNames", ctx.ctype, ctype)
		local cls = SafeCall(UnitClassification, "target")
		ctx.elite = cls == "elite" or cls == "rareelite" or cls == "worldboss"
		ctx.boss = cls == "worldboss" or (SafeCall(UnitLevel, "target") == -1)
		ctx.rare = cls == "rare" or cls == "rareelite"
		if ctx.targetPlayer then
			ctx.targetClass = select(2, UnitClass("target"))
			ctx.targetRace = select(2, UnitRace("target"))
			ctx.targetFaction = UnitFactionGroup("target")
			ctx.enemyFaction = ctx.targetFaction ~= nil and ctx.targetFaction ~= ctx.faction
		end
		local tl = SafeCall(UnitLevel, "target")
		if tl and ctx.level then
			ctx.targetStronger = tl == -1 or tl >= ctx.level + 3
			ctx.targetWeaker = tl > 0 and tl <= ctx.level - 5
		end
	end

	for k, v in pairs(extra or {}) do ctx[k] = v end

	if ctx.spell then
		local kind, element = self:ClassifySpell(ctx.spell)
		ctx.spellKind = ctx.spellKind or kind
		ctx.element = ctx.element or element or self.classElement[class] or "physical"
	end
	return ctx
end
