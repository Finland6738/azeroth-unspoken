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
	for zone, mood in pairs(map) do self.zoneMoods[NS.Lower(zone)] = mood end
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
				for _, w in ipairs(words) do table.insert(list, NS.Lower(w)) end
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
	name = NS.Lower(name)
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
	localized = NS.Lower(localized)
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
-- Ogni valore letto da un'API passa da SafeCall: un valore segreto diventa nil e non entra mai in un
-- confronto o in un calcolo (GDD §15.1, ADR 0005). Un valore illeggibile vale "non lo so", mai "falso".
local function Flag(fn, ...)
	return SafeCall(fn, ...) == true
end

---Dati del bersaglio. Con l'identità segreta (C_Secrets) non si legge né si confronta nulla: il contesto
---resta con hasTarget e targetSecret, e le frasi che chiedono il bersaglio non si compongono.
---@param ctx table
local function ReadTarget(ctx)
	ctx.hasTarget = true
	if Compat:IsUnitIdentitySecret("target") then
		ctx.targetSecret = true
		return
	end
	ctx.target = SafeCall(UnitName, "target")
	ctx.targetPlayer = Flag(UnitIsPlayer, "target")
	ctx.hostile = Flag(UnitCanAttack, "player", "target")
	ctx.friendly = not ctx.hostile
	ctx.targetDead = Flag(UnitIsDead, "target")
	local ctype = SafeCall(UnitCreatureType, "target")
	ctx.ctype = CreatureKey(ctype)
	ctx.ctypeLocal = LocalName("creatureNames", ctx.ctype, ctype)
	local cls = SafeCall(UnitClassification, "target")
	local tl = SafeCall(UnitLevel, "target")
	ctx.elite = cls == "elite" or cls == "rareelite" or cls == "worldboss"
	ctx.boss = cls == "worldboss" or tl == -1
	ctx.rare = cls == "rare" or cls == "rareelite"
	if ctx.targetPlayer then
		ctx.targetClass = select(2, SafeCall(UnitClass, "target"))
		ctx.targetRace = select(2, SafeCall(UnitRace, "target"))
		ctx.targetFaction = SafeCall(UnitFactionGroup, "target")
		ctx.enemyFaction = ctx.targetFaction ~= nil and ctx.faction ~= nil and ctx.targetFaction ~= ctx.faction
	end
	if tl and ctx.level then
		ctx.targetStronger = tl == -1 or tl >= ctx.level + 3
		ctx.targetWeaker = tl > 0 and tl <= ctx.level - 5
	end
end

---@param extra? table valori in più (target, spell...), che prevalgono su quelli letti
---@return table ctx
function NS:BuildContext(extra)
	local ctx = {}
	ctx.player = PlayerName()
	local classLoc, class = SafeCall(UnitClass, "player")
	local raceLoc, race = SafeCall(UnitRace, "player")
	ctx.class, ctx.race = class, race
	ctx.faction = SafeCall(UnitFactionGroup, "player")
	ctx.sex = (SafeCall(UnitSex, "player") == 3) and "female" or "male"
	ctx.classLocal = LocalName("classNames", class, classLoc)
	ctx.raceLocal = LocalName("raceNames", race, raceLoc)
	ctx.factionLocal = LocalName("factionNames", ctx.faction, ctx.faction)
	ctx.level = SafeCall(UnitLevel, "player")
	-- scelte dell'utente: la profondità stilistica pesa le frasi, l'intensità si può usare nelle condizioni
	if self.db then ctx.depth, ctx.intensity = self.db.proseDepth, self.db.intensity end
	-- il carattere: solo i tratti impostati (scelta > Total RP 3 > dati di gioco); vuoto = profilo neutro. Una
	-- tabella condivisa e in sola lettura: la leggono le condizioni, il fattore P e il StyleResolver (Systems/Personality.lua)
	if self.Personality then ctx.soul = self.Personality:Effective() end
	-- lo stato emotivo (R4, Systems/Emotion.lua): emozioni sopra la soglia e la dominante; nil se il modulo è spento
	if self.Emotion then ctx.emotion = self.Emotion:Context() end

	local hp, hpMax = SafeCall(UnitHealth, "player"), SafeCall(UnitHealthMax, "player")
	if hp and hpMax and hpMax > 0 then ctx.hp = hp / hpMax end

	ctx.combat = Flag(UnitAffectingCombat, "player") or Flag(InCombatLockdown)
	ctx.dead = Flag(UnitIsDeadOrGhost, "player")
	ctx.ghost = Flag(UnitIsGhost, "player")
	ctx.resting = Flag(IsResting)
	ctx.indoors = Flag(IsIndoors)
	ctx.mounted = Flag(IsMounted)
	ctx.swimming = Flag(IsSwimming)
	ctx.stealth = Flag(IsStealthed)

	local inInstance, instanceType = SafeCall(IsInInstance)
	ctx.instance = inInstance == true and instanceType ~= "none"
	ctx.instanceType = instanceType or "none"
	ctx.group = Flag(IsInRaid) and "raid" or (Flag(IsInGroup) and "party" or "solo")

	ctx.zone = SafeCall(GetRealZoneText) or SafeCall(GetZoneText)
	ctx.subzone = SafeCall(GetSubZoneText)
	if ctx.subzone == "" then ctx.subzone = nil end
	ctx.mood = ctx.zone and self.zoneMoods[NS.Lower(ctx.zone)]
	if ctx.resting and not ctx.mood then ctx.mood = "town" end
	-- il luogo (S6c, Systems/Place.lua): uiMapID, tag e temi, territorio, istanza, scontro con un boss, ruolo nel gruppo.
	-- Va letto prima della memoria, che riconosce il luogo dalla sua chiave stabile (issue #31).
	if self.Place then
		ctx.place = self.Place:Read(ctx)
		ctx.placeTraits = self.Place.Traits(ctx.place)
		ctx.mood = ctx.mood or ctx.place.mood
	end
	-- la memoria: solo ricordi veri (prima visita, ritorno, esito dell'ultima visita, flag). nil se il modulo è spento
	-- (Systems/LivingMemory.lua); le condizioni di memoria sono allora sempre false.
	if self.LivingMemory then ctx.memory = self.LivingMemory:Context(ctx) end
	-- gli archi (S9, Systems/StoryArcs.lua): quali sono chiusi (condizione arcDone); la vista `ctx.arc` di un arco
	-- la danno i suoi passi e le sue battute (extra.arc)
	if self.StoryArcs then ctx.arcs = self.StoryArcs:Context() end

	local h = SafeCall(GetGameTime)
	ctx.hour = h
	-- giorno e notte dal client (C_DateAndTime.IsDayTime, #93): nil se il client non lo dice; allora l'ora del giorno
	-- ricade sulle soglie fisse di prima. L'alba e il tramonto sono le ore di transizione (Systems/World.lua).
	ctx.isDay = Compat:IsDayTime()
	ctx.time = self.World and self.World:TimeOfDay(h, ctx.isDay) or TimeOfDay(h or 12)

	-- il mondo (R3, Systems/World.lua): meteo, punto di riferimento, missioni, reputazione, volo
	if self.World then self.World:Context(ctx) end

	if Flag(UnitExists, "target") then ReadTarget(ctx) end

	-- le relazioni: il rapporto con la persona dell'interazione (NPC aperto o bersaglio), se l'addon la conosce
	-- (Systems/Relationships.lua). Il soggetto si può dare con extra.relationSubject = { kind, id }.
	if self.Relationships then self.Relationships:Context(ctx, extra) end
	-- l'interlocutore (S6c, Systems/Interlocutor.lua): chi incontriamo, con ruolo, personalità e azioni recenti
	if self.Interlocutor then self.Interlocutor:Context(ctx, extra) end

	for k, v in pairs(extra or {}) do ctx[k] = v end
	-- segnaposto {other} {otherrole} {otherrace} {otherclass} {instance} {encounter}, anche con ctx.other/place dati
	if self.Interlocutor then self.Interlocutor.Flatten(ctx) end
	if self.Place then self.Place.Flatten(ctx) end

	if ctx.spell then
		local kind, element = self:ClassifySpell(ctx.spell)
		ctx.spellKind = ctx.spellKind or kind
		ctx.element = ctx.element or element or self.classElement[class] or "physical"
	end
	return ctx
end
