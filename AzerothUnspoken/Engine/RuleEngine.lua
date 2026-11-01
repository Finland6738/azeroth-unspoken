-- Azeroth Unspoken: condizioni dichiarative delle frasi (conditions = { ... }, alias when)
local ADDON, NS = ...
local Engine = NS.Engine
local AsList = Engine.AsList

local Match

local function MatchValue(expected, actual)
	if type(expected) == "table" then
		for _, e in ipairs(expected) do
			if MatchValue(e, actual) then return true end
		end
		return false
	end
	if type(expected) == "boolean" then return (not not actual) == expected end
	if type(expected) == "string" and type(actual) == "string" then
		return NS.Lower(expected) == NS.Lower(actual)
	end
	return expected == actual
end

-- testo contenuto (senza pattern) in uno dei valori
local function ContainsAny(patterns, value)
	if not value then return false end
	value = NS.Lower(value)
	for _, pat in ipairs(AsList(patterns)) do
		if value:find(NS.Lower(pat), 1, true) then return true end
	end
	return false
end

-- Living Memory (S6): le condizioni leggono ctx.memory (Systems/LivingMemory.lua), che contiene solo ricordi
-- veri. Senza memoria (modulo spento, nessun dato sul luogo) ogni condizione di memoria vale "falsa": una frase che
-- cita un ricordo non esce mai se il ricordo non esiste.
local function Memory(ctx)
	local m = ctx.memory
	return type(m) == "table" and m or nil
end

-- Emozioni (R4, Systems/Emotion.lua): ctx.emotion = { dominant = "worried", worried = 0.4, ... }. Senza stato emotivo
-- (modulo spento) ogni condizione di emozione vale "falsa": una frase scritta per un'emozione non esce mai.
Engine.EMOTIONS = { "serene", "happy", "determined", "curious", "worried", "tense", "furious", "melancholic", "nostalgic",
	"admiring" }
Engine.EMOTION_SET = {}
for _, e in ipairs(Engine.EMOTIONS) do Engine.EMOTION_SET[e] = true end

local function Emotions(ctx)
	local e = ctx.emotion
	return type(e) == "table" and e or nil
end

-- ogni coppia { nome = soglia } della tabella vale per `get(nome)`; nil (non lo so) non vale mai
local function AllAtLeast(map, get, atLeast)
	if type(map) ~= "table" then return false end
	for name, n in pairs(map) do
		local x = get(name)
		if type(x) ~= "number" or type(n) ~= "number" then return false end
		if atLeast then
			if x < n then return false end
		elseif x > n then
			return false
		end
	end
	return true
end

-- numero (almeno) oppure { minimo, massimo } con massimo escluso, come `hour`
local function InRange(v, x)
	if x == nil then return false end
	if type(v) == "table" then return x >= v[1] and x < v[2] end
	return x >= v
end

---------------------------------------------------------------------------
-- Sotto-tabelle `other` e `place` (S6c): when = { other = { role = "innkeeper" }, place = { instanceType = "raid" } }
---------------------------------------------------------------------------
-- Dentro una sotto-tabella valgono gli stessi operatori del livello superiore (elenchi, `not`, `any`, `func`), con i
-- campi di ctx.other (Systems/Interlocutor.lua) o di ctx.place (Systems/Place.lua) al posto del contesto. Senza
-- interlocutore o luogo ogni campo è "non lo so": un valore richiesto non combacia, `campo = false` sì.
local MatchSub

-- regole speciali delle sotto-tabelle: [ambito][chiave] = fn(valore, oggetto, ctx)
local SUB_SPECIAL = {
	other = {
		levelMin = function(v, o) return type(o.level) == "number" and o.level >= v end,
		levelMax = function(v, o) return type(o.level) == "number" and o.level <= v end,
		name = function(v, o) return ContainsAny(v, o.name) end,
		-- un'azione recente: "duel", { "duel", "emote" } (entro Interlocutor.ACTION_WINDOW) o { "trade", within = 60 }
		actions = function(v, o) return NS.Interlocutor ~= nil and NS.Interlocutor.HasAction(o, v) end,
	},
	place = {
		-- uno dei tag elencati
		tags = function(v, p)
			local tags = type(p.tags) == "table" and p.tags or nil
			if not tags then return false end
			for _, t in ipairs(AsList(v)) do
				if tags[t] then return true end
			end
			return false
		end,
		zone = function(v, p) return MatchValue(v, p.zone) or MatchValue(v, p.subzone) end,
		-- true = uno scontro in corso (o appena finito, per lastEncounter); una stringa o un elenco = per nome
		encounter = function(v, p)
			if type(v) == "boolean" then return (p.encounter ~= nil) == v end
			return MatchValue(v, p.encounter)
		end,
		lastEncounter = function(v, p)
			if type(v) == "boolean" then return (p.lastEncounter ~= nil) == v end
			return MatchValue(v, p.lastEncounter)
		end,
	},
	-- Story Arcs (S9): ctx.arc è la vista dell'arco di cui si valuta un passo o si pronuncia una battuta
	arc = {
		-- una delle scelte fatte dal giocatore nell'arco (l'id dell'opzione, uguale in ogni lingua)
		choice = function(v, a)
			for _, option in pairs(type(a.choices) == "table" and a.choices or {}) do
				if MatchValue(v, option) then return true end
			end
			return false
		end,
	},
}

local SUB_OPERATORS = {
	["not"] = function(v, obj, ctx, scope) return not MatchSub(v, obj, ctx, scope) end,
	any = function(v, obj, ctx, scope)
		for _, sub in ipairs(v) do
			if MatchSub(sub, obj, ctx, scope) then return true end
		end
		return false
	end,
	func = function(v, obj, ctx)
		local ok, res = pcall(v, obj, ctx)
		return ok and res
	end,
}

local EMPTY_SUB = {}

MatchSub = function(when, obj, ctx, scope)
	if type(when) ~= "table" then return false end
	obj = type(obj) == "table" and obj or EMPTY_SUB
	local special = SUB_SPECIAL[scope]
	for k, v in pairs(when) do
		local op, rule = SUB_OPERATORS[k], special[k]
		if op then
			if not op(v, obj, ctx, scope) then return false end
		elseif rule then
			if not rule(v, obj, ctx) then return false end
		elseif not MatchValue(v, obj[k]) then
			return false
		end
	end
	return true
end
Engine.MatchSub = MatchSub

-- regole speciali; tutte le altre chiavi si confrontano con ctx[chiave]
local SPECIAL = {
	other = function(v, ctx) return MatchSub(v, ctx.other, ctx, "other") end,
	place = function(v, ctx) return MatchSub(v, ctx.place, ctx, "place") end,
	arc = function(v, ctx) return MatchSub(v, ctx.arc, ctx, "arc") end,
	hpBelow = function(v, ctx) return ctx.hp ~= nil and ctx.hp < v end,
	hpAbove  = function(v, ctx) return ctx.hp ~= nil and ctx.hp > v end,
	levelMin = function(v, ctx) return (ctx.level or 0) >= v end,
	levelMax = function(v, ctx) return (ctx.level or 0) <= v end,
	intensityMin = function(v, ctx) return (ctx.intensity or 50) >= v end,
	intensityMax = function(v, ctx) return (ctx.intensity or 50) <= v end,
	zone     = function(v, ctx) return MatchValue(v, ctx.zone) or MatchValue(v, ctx.subzone) end,
	spell    = function(v, ctx) return ContainsAny(v, ctx.spell) end,
	targetName = function(v, ctx) return ContainsAny(v, ctx.target) end,
	hour     = function(v, ctx)
		local h = ctx.hour or 12
		if v[1] <= v[2] then return h >= v[1] and h < v[2] end
		return h >= v[1] or h < v[2]   -- intervallo a cavallo della mezzanotte
	end,
	-- memoria: prima visita, ritorno, esito dell'ultima visita, numero di visite, giorni dall'ultima, flag
	firstVisit = function(v, ctx) local m = Memory(ctx); return (m ~= nil and m.firstVisit == true) == v end,
	repeatVisit = function(v, ctx) local m = Memory(ctx); return (m ~= nil and m.repeatVisit == true) == v end,
	-- true/false oppure il tipo di esito ("death", "flight")
	lastVisitBad = function(v, ctx)
		local m = Memory(ctx)
		local bad = m ~= nil and m.lastVisitBad == true
		if type(v) == "boolean" then return bad == v end
		return bad and MatchValue(v, m.lastBadKind)
	end,
	visitsMin = function(v, ctx) local m = Memory(ctx); return m ~= nil and (m.visits or 0) >= v end,
	visitsMax = function(v, ctx) local m = Memory(ctx); return m ~= nil and m.visits ~= nil and m.visits <= v end,
	daysSinceLastVisit = function(v, ctx) local m = Memory(ctx); return m ~= nil and InRange(v, m.daysSinceLastVisit) end,
	remembered = function(v, ctx)
		local m = Memory(ctx)
		if not m or type(m.flags) ~= "table" then return false end
		for _, name in ipairs(AsList(v)) do
			if m.flags[name] ~= nil then return true end
		end
		return false
	end,
	-- relazioni (S6b, Systems/Relationships.lua): ctx.relation, ctx.disposition e ctx.rel descrivono il rapporto con
	-- la persona dell'interazione (NPC aperto o bersaglio); senza di essa ogni condizione di relazione vale "falsa",
	-- tranne `isKnown = false`. Le condizioni <asse>Min/<asse>Max si creano con Engine.RegisterRelationAxis.
	isKnown = function(v, ctx) return (ctx.isKnown == true) == v end,
	withRelation = function(v, ctx)
		local g = ctx.groupRelations
		if type(g) ~= "table" then return false end
		for _, name in ipairs(AsList(v)) do
			if g[name] then return true end
		end
		return false
	end,
	-- feelings and observations (#109, #110): ctx.relFeelings (set), ctx.relDaysSince, ctx.relMetHere, ctx.relShared (set)
	feeling = function(v, ctx)
		local f = ctx.relFeelings
		if type(f) ~= "table" then return false end
		for _, name in ipairs(AsList(v)) do
			if f[name] then return true end
		end
		return false
	end,
	relDaysSince = function(v, ctx) return InRange(v, ctx.relDaysSince) end,
	relMetHere = function(v, ctx) return (ctx.relMetHere == true) == v end,
	relShared = function(v, ctx)
		local g = ctx.relShared
		if type(g) ~= "table" then return false end
		for _, name in ipairs(AsList(v)) do
			if g[name] then return true end
		end
		return false
	end,
	-- the first meeting with an NPC (N2, #214): ctx.relMetLevels (levels gained since), ctx.relMetDays, ctx.relMetTime,
	-- ctx.relMetWeather; absent (false) for a player, or an NPC met before the addon kept these circumstances
	relMetLevels = function(v, ctx) return InRange(v, ctx.relMetLevels) end,
	relMetDays = function(v, ctx) return InRange(v, ctx.relMetDays) end,
	relMetTime = function(v, ctx)
		if ctx.relMetTime == nil then return false end
		for _, name in ipairs(AsList(v)) do
			if ctx.relMetTime == name then return true end
		end
		return false
	end,
	relMetWeather = function(v, ctx)
		if ctx.relMetWeather == nil then return false end
		for _, name in ipairs(AsList(v)) do
			if ctx.relMetWeather == name then return true end
		end
		return false
	end,
	-- the word given to an NPC (N4, #216): ctx.relPromiseDays (days the oldest open promise has waited, absent without
	-- one), ctx.relOathbroken (the NPC remembers a broken oath) and ctx.oathbreakerHere (the place remembers one; it
	-- needs no person)
	relPromiseDays = function(v, ctx) return InRange(v, ctx.relPromiseDays) end,
	relOathbroken = function(v, ctx) return (ctx.relOathbroken == true) == v end,
	oathbreakerHere = function(v, ctx) return (ctx.oathbreakerHere == true) == v end,
	-- the private vow to an NPC at the top of a romance (N3, #215): ctx.relVowed
	relVowed = function(v, ctx) return (ctx.relVowed == true) == v end,
	-- favours and nicknames (N5, #217): ctx.relFavour (the NPC asked a favour still open), ctx.relNick (the nickname
	-- the NPC gave the character, the placeholder {nickname})
	relFavour = function(v, ctx) return (ctx.relFavour == true) == v end,
	relNick = function(v, ctx) return (ctx.relNick ~= nil) == v end,
	-- local reputation (N6, #218): ctx.townTitle (the honorary title held where the character stands), ctx.townWord
	-- (good | bad: the word of them there) need no person; ctx.relRival (jealous | ironic: the NPC of the interaction
	-- noticed you grew close to their rival) is a relationship condition
	townTitle = function(v, ctx)
		if ctx.townTitle == nil then return false end
		for _, name in ipairs(AsList(v)) do
			if ctx.townTitle == name then return true end
		end
		return false
	end,
	townWord = function(v, ctx)
		if ctx.townWord == nil then return false end
		for _, name in ipairs(AsList(v)) do
			if ctx.townWord == name then return true end
		end
		return false
	end,
	relRival = function(v, ctx)
		if ctx.relRival == nil then return false end
		for _, name in ipairs(AsList(v)) do
			if ctx.relRival == name then return true end
		end
		return false
	end,
	-- il mondo (R3, Systems/World.lua): una lettura che il client non dà vale "non lo so", cioè falsa per `true` e per
	-- `false` (tranne dove è scritto): una frase che nomina il meteo o il volo non esce se l'API manca
	dayTime = function(v, ctx) return ctx.isDay ~= nil and ctx.isDay == v end,
	onFlight = function(v, ctx) return ctx.onFlight ~= nil and ctx.onFlight == v end,
	-- il punto di riferimento (Data/Landmarks.lua): il suo id oppure uno dei suoi tag (village, inn, graveyard...)
	landmark = function(v, ctx)
		if ctx.landmark == nil then return false end
		local tags = type(ctx.landmarkTags) == "table" and ctx.landmarkTags or nil
		for _, name in ipairs(AsList(v)) do
			if MatchValue(name, ctx.landmark) or (tags and tags[name]) then return true end
		end
		return false
	end,
	-- true/false: c'è almeno una missione nel registro; un numero o un elenco: una di quelle missioni è attiva
	questActive = function(v, ctx)
		local q = ctx.quest
		if type(q) ~= "table" then return false end
		if type(v) == "boolean" then return q.count ~= nil and (q.count > 0) == v end
		for _, id in ipairs(AsList(v)) do
			if type(q.active) == "table" and q.active[id] then return true end
		end
		return false
	end,
	-- dopo un avanzamento recente: la missione che è avanzata è pronta per la consegna? Altrimenti: ce n'è una pronta?
	questReady = function(v, ctx)
		local q = ctx.quest
		if type(q) ~= "table" then return false end
		if q.recentProgress then return q.progressReady == v end
		return q.readyCount ~= nil and (q.readyCount > 0) == v
	end,
	questJustCompleted = function(v, ctx)
		local q = ctx.quest
		return (type(q) == "table" and q.justCompleted == true) == v
	end,
	questAttemptsMin = function(v, ctx)
		local q = ctx.quest
		return type(q) == "table" and q.justCompleted == true and (q.attempts or 0) >= v
	end,
	journeyMin = function(v, ctx) return type(ctx.journeySeconds) == "number" and ctx.journeySeconds >= v end,
	-- emozioni (R4): l'emozione dominante, oppure soglie per emozione (un'emozione assente vale 0, ma senza stato
	-- emotivo nessuna condizione vale)
	emotion = function(v, ctx)
		local e = Emotions(ctx)
		return e ~= nil and e.dominant ~= nil and MatchValue(v, e.dominant)
	end,
	emotionMin = function(v, ctx)
		local e = Emotions(ctx)
		return e ~= nil and AllAtLeast(v, function(name) return e[name] or 0 end, true)
	end,
	emotionMax = function(v, ctx)
		local e = Emotions(ctx)
		return e ~= nil and AllAtLeast(v, function(name) return e[name] or 0 end, false)
	end,
	-- intensità della personalità (R4, ctx.soul): un asse non impostato non soddisfa né il minimo né il massimo
	traitMin = function(v, ctx)
		local soul = type(ctx.soul) == "table" and ctx.soul or nil
		return soul ~= nil and AllAtLeast(v, function(name) return soul[name] end, true)
	end,
	traitMax = function(v, ctx)
		local soul = type(ctx.soul) == "table" and ctx.soul or nil
		return soul ~= nil and AllAtLeast(v, function(name) return soul[name] end, false)
	end,
	-- composite situation (#100, Systems/Director.lua): one of the situations the Director composed for this moment
	situation = function(v, ctx)
		local s = ctx.situation
		if type(s) ~= "table" then return false end
		for _, name in ipairs(AsList(v)) do
			if s[name] then return true end
		end
		return false
	end,
	chance   = function(v) return math.random(100) <= v end,
	func     = function(v, ctx)
		local ok, res = pcall(v, ctx)
		return ok and res
	end,
	["not"]  = function(v, ctx) return not Match(v, ctx) end,
	any      = function(v, ctx)
		for _, sub in ipairs(v) do
			if Match(sub, ctx) then return true end
		end
		return false
	end,
}

Match = function(when, ctx)
	if not when then return true end
	for k, v in pairs(when) do
		local rule = SPECIAL[k]
		if rule then
			if not rule(v, ctx) then return false end
		elseif not MatchValue(v, ctx[k]) then
			return false
		end
	end
	return true
end
Engine.Match = Match

-- Come Match, ma una condizione malformata (per esempio hpBelow = "molto") vale "falsa" invece di
-- interrompere la scelta della frase: ci pensa il validatore a segnalarla.
function Engine.SafeMatch(when, ctx)
	if not when then return true end
	local ok, res = pcall(Match, when, ctx)
	return ok and res or false
end

---------------------------------------------------------------------------
-- Condizioni note, per il validatore e per i pacchetti
---------------------------------------------------------------------------
-- tipo di valore atteso: bool | str (stringa o elenco) | num | frac (0..1) | pct (0..100) | hour | func | group | subs
-- Le chiavi non elencate non sono condizioni: il validatore le segnala come sconosciute.
Engine.CONDITIONS = {
	-- giocatore
	class = "str", race = "str", faction = "str", sex = "str", levelMin = "num", levelMax = "num",
	hpBelow = "frac", hpAbove = "frac",
	combat = "bool", dead = "bool", ghost = "bool", resting = "bool", indoors = "bool", mounted = "bool",
	swimming = "bool", stealth = "bool",
	-- luogo e momento
	instance = "bool", instanceType = "str", group = "str", zone = "str", subzone = "str", mood = "str",
	time = "str", hour = "hour",
	-- il mondo (R3, Systems/World.lua): meteo, giorno e notte, punto di riferimento, missioni, reputazione, volo
	weather = "str", dayTime = "bool", landmark = "str", questActive = "boolnum", questReady = "bool",
	questJustCompleted = "bool", questAttemptsMin = "num", repStanding = "str", repDirection = "str",
	onFlight = "bool", journey = "str", journeyMin = "num",
	-- bersaglio
	hasTarget = "bool", hostile = "bool", friendly = "bool", targetPlayer = "bool", targetDead = "bool",
	elite = "bool", boss = "bool", rare = "bool", ctype = "str", enemyFaction = "bool",
	targetStronger = "bool", targetWeaker = "bool", targetName = "str",
	targetClass = "str", targetRace = "str", targetFaction = "str",
	-- incantesimi
	spell = "str", spellKind = "str", element = "str",
	-- impostazioni dell'utente
	depth = "str", intensityMin = "num", intensityMax = "num",
	-- memoria (Systems/LivingMemory.lua)
	firstVisit = "bool", repeatVisit = "bool", lastVisitBad = "boolstr", visitsMin = "num", visitsMax = "num",
	daysSinceLastVisit = "numrange", remembered = "str",
	-- emozioni e intensità della personalità (R4, Systems/Emotion.lua, Systems/Personality.lua)
	emotion = "str", emotionMin = "fracmap", emotionMax = "fracmap", traitMin = "pctmap", traitMax = "pctmap",
	-- relazioni (Systems/Relationships.lua); gli assi aggiungono <asse>Min e <asse>Max
	relation = "str", disposition = "str", relationKind = "str", isKnown = "bool", withRelation = "str",
	-- feelings the user chose and what the addon observed of a listed player (#109, #110)
	feeling = "str", relDaysSince = "numrange", relMetHere = "bool", relShared = "str",
	-- the first meeting with an NPC (N2, #214)
	relMetLevels = "numrange", relMetDays = "numrange", relMetTime = "str", relMetWeather = "str",
	-- promises and oaths (N4, #216)
	relPromiseDays = "numrange", relOathbroken = "bool", oathbreakerHere = "bool",
	-- the private vow to an NPC (N3, #215)
	relVowed = "bool",
	-- favours and nicknames (N5, #217)
	relFavour = "bool", relNick = "bool",
	-- local reputation (N6, #218)
	townTitle = "str", townWord = "str", relRival = "str",
	-- interlocutore e luogo (S6c): sotto-tabelle con i campi di Engine.SUB_FIELDS
	other = "sub", place = "sub",
	-- Story Arcs (S9): sotto-tabella `arc` (campi di Engine.SUB_FIELDS.arc); gli archi chiusi si chiedono con arcDone
	arc = "sub",
	-- composite situations of the Director (#100): ids declared with `situations = {}` (Data/Themes.lua)
	situation = "str",
	-- operatori
	chance = "pct", func = "func", ["not"] = "group", any = "subs",
}

-- Condizioni del motore senza effetti collaterali (tutte tranne chance e func): l'indice di selezione (#83) può saltare
-- una regola che le usa senza cambiare la sequenza casuale. Le condizioni dei pacchetti (NS:RegisterCondition) non ci
-- sono: una regola che le usa resta nel gruppo generico.
Engine.PURE_CONDITIONS = {}
for k in pairs(Engine.CONDITIONS) do
	if k ~= "chance" and k ~= "func" then Engine.PURE_CONDITIONS[k] = true end
end

-- insiemi chiusi di valori, controllati dal validatore
Engine.CONDITION_VALUES = {
	sex = { male = true, female = true },
	faction = { Alliance = true, Horde = true },
	targetFaction = { Alliance = true, Horde = true },
	time = { dawn = true, day = true, dusk = true, night = true },
	weather = { clear = true, rain = true, snow = true, storm = true, sand = true, fog = true },
	repStanding = { hated = true, hostile = true, unfriendly = true, neutral = true, friendly = true, honored = true,
		revered = true, exalted = true },
	repDirection = { up = true, down = true },
	journey = { start = true, arrival = true },
	emotion = Engine.EMOTION_SET,
	-- ids e tag dei punti di riferimento: si riempiono con NS:RegisterLandmarks (Systems/World.lua)
	landmark = {},
	group = { solo = true, party = true, raid = true },
	instanceType = { none = true, party = true, raid = true, pvp = true, arena = true, scenario = true },
	depth = Engine.DEPTHS,
	-- si riempiono quando i dati delle relazioni (Data/Relationships.lua) registrano etichette e disposizioni
	relation = {}, disposition = {}, withRelation = {},
	relationKind = { npc = true, player = true },
	-- feelings are registered by Data/Relationships.lua; relShared by Systems/Relationships.lua (R.ENCOUNTERS, R.SHARED)
	feeling = {}, relShared = {},
	-- the first meeting with an NPC (N2, #214): the same tokens as `time` and `weather`
	relMetTime = { dawn = true, day = true, dusk = true, night = true },
	relMetWeather = { clear = true, rain = true, snow = true, storm = true, sand = true, fog = true },
	-- local reputation (N6, #218): the titles are registered by Data/Relationships.lua (`towns.titles`)
	townTitle = {}, townWord = { good = true, bad = true }, relRival = { jealous = true, ironic = true },
	-- the composite situations (#100): filled by NS:RegisterSituation
	situation = {},
}

-- Campi delle sotto-tabelle e tipo del valore (come Engine.CONDITIONS; "actions" = azione, elenco o { ..., within = n })
Engine.SUB_FIELDS = {
	other = {
		kind = "str", name = "str", race = "str", class = "str", faction = "str", sex = "str", levelMin = "num",
		levelMax = "num", classification = "str", ctype = "str", family = "str", reaction = "str", hostile = "bool",
		role = "str", temperament = "str", morality = "str", goals = "str", speech = "str", actions = "actions",
		relation = "str", inGroup = "bool", secret = "bool", npcID = "num",
		["not"] = "group", any = "subs", func = "func",
	},
	place = {
		zone = "str", subzone = "str", mapID = "num", continent = "str", tags = "str", mood = "str", territory = "str",
		capital = "bool", faction = "str", friendlyCapital = "bool", hostileCapital = "bool", instanceType = "str",
		instanceName = "str", instanceID = "num", difficulty = "num", encounter = "boolstr", lastEncounter = "boolstr",
		encounterResult = "str", groupRole = "str", battleground = "str", rest = "bool",
		["not"] = "group", any = "subs", func = "func",
	},
	arc = {
		id = "str", state = "str", from = "str", choice = "str", withSubject = "bool",
		["not"] = "group", any = "subs", func = "func",
	},
}

-- Valori ammessi dei campi delle sotto-tabelle, per il validatore: un insieme oppure una funzione che lo restituisce
-- (i tratti e i tag dei luoghi si registrano con i dati).
local function TraitValues(id)
	return function()
		local def = NS.Traits and NS.Traits.defs[id]
		return def and def.valid or {}
	end
end
local function ListSet(list)
	local set = {}
	for _, v in ipairs(list or {}) do set[v] = true end
	return set
end
Engine.SUB_VALUES = {
	other = {
		kind = { npc = true, player = true, creature = true },
		sex = { male = true, female = true },
		faction = { Alliance = true, Horde = true },
		reaction = { hostile = true, unfriendly = true, neutral = true, friendly = true, honored = true },
		classification = { normal = true, elite = true, rare = true, rareelite = true, worldboss = true, trivial = true, minus = true },
		role = TraitValues("role"), temperament = TraitValues("temperament"), morality = TraitValues("morality"),
		goals = TraitValues("goals"), speech = TraitValues("speech"),
		actions = function() return ListSet(NS.Interlocutor and NS.Interlocutor.ACTIONS) end,
		relation = function() return Engine.CONDITION_VALUES.relation end,
	},
	place = {
		instanceType = Engine.CONDITION_VALUES.instanceType,
		territory = { friendly = true, hostile = true, contested = true, sanctuary = true, combat = true },
		faction = { Alliance = true, Horde = true },
		groupRole = { tank = true, healer = true, damage = true },
		battleground = { none = true, queued = true, active = true },
		encounterResult = { win = true, wipe = true },
		tags = function() return NS.Place and NS.Place.TAGS or {} end,
		mood = function() return NS.Place and NS.Place.TAGS or {} end,
	},
	arc = {
		-- gli archi registrati (l'id di un arco che non c'è è un valore sconosciuto)
		id = function() return NS.StoryArcs and NS.StoryArcs:IdSet() or {} end,
	},
}

-- condizioni che dipendono da una relazione (ctx.relation e simili)
Engine.RELATION_CONDITIONS = { relation = true, disposition = true, relationKind = true, isKnown = true,
	withRelation = true, feeling = true, relDaysSince = true, relMetHere = true, relShared = true,
	relMetLevels = true, relMetDays = true, relMetTime = true, relMetWeather = true, relVowed = true,
	relPromiseDays = true, relOathbroken = true, relFavour = true, relNick = true, relRival = true }

---Registra le condizioni <asse>Min e <asse>Max di un asse delle relazioni (valgono sugli assi del bersaglio o
---dell'NPC dell'interazione: ctx.rel[asse]).
---@param axis string
function Engine.RegisterRelationAxis(axis)
	if type(axis) ~= "string" or not axis:match("^[a-z]+$") then return end
	SPECIAL[axis .. "Min"] = function(v, ctx)
		local r = ctx.rel
		return type(r) == "table" and type(r[axis]) == "number" and r[axis] >= v
	end
	SPECIAL[axis .. "Max"] = function(v, ctx)
		local r = ctx.rel
		return type(r) == "table" and type(r[axis]) == "number" and r[axis] <= v
	end
	Engine.CONDITIONS[axis .. "Min"], Engine.CONDITIONS[axis .. "Max"] = "num", "num"
	Engine.PURE_CONDITIONS[axis .. "Min"], Engine.PURE_CONDITIONS[axis .. "Max"] = true, true
	Engine.RELATION_CONDITIONS[axis .. "Min"], Engine.RELATION_CONDITIONS[axis .. "Max"] = true, true
end

---Le condizioni garantiscono una persona con cui si ha un rapporto? Come UsesMemory: una chiave di relazione al
---livello superiore (non `isKnown = false`), oppure `any` dove ogni gruppo ne ha una. Serve al validatore per le
---frasi degli eventi che citano un rapporto.
---@param when? table
---@return boolean
function Engine.UsesRelation(when)
	if type(when) ~= "table" then return false end
	for k, v in pairs(when) do
		if Engine.RELATION_CONDITIONS[k] then
			if not (v == false) and k ~= "withRelation" then return true end
		elseif k == "any" and type(v) == "table" and #v > 0 then
			local all = true
			for _, sub in ipairs(v) do
				if not Engine.UsesRelation(sub) then all = false; break end
			end
			if all then return true end
		end
	end
	return false
end

-- etichette di relazione negative (Data/Relationships.lua): una frase calda non deve poter uscire per loro (#105)
Engine.NEGATIVE_RELATIONS = { "enemy", "disliked", "wary", "feared" }

local function CoversNegative(names)
	local have = {}
	for _, n in ipairs(AsList(names)) do have[n] = true end
	for _, n in ipairs(Engine.NEGATIVE_RELATIONS) do
		if not have[n] then return false end
	end
	return true
end

---Dice se le condizioni (e i tag) di una frase escludono con certezza le relazioni negative (nemico, inviso,
---diffidente, temuto): `relation` limitata a etichette non negative, `not = { relation = {...} }` che le copre
---tutte, i quattro tag `rel.not:relation:<etichetta>`, oppure le soglie degli assi (affectionMin, trustMin, fearMax)
---che le lasciano fuori. Vale anche dentro `other`, `not` e `any` (tutti i rami).
---@param when? table condizioni
---@param tags? table<string, boolean> tag della frase
---@return boolean
function Engine.ExcludesNegativeRelation(when, tags)
	if type(tags) == "table" then
		local all = true
		for _, n in ipairs(Engine.NEGATIVE_RELATIONS) do
			if not tags["rel.not:relation:" .. n] then all = false; break end
		end
		if all then return true end
	end
	if type(when) ~= "table" then return false end
	if when.relation ~= nil then
		local list, ok = AsList(when.relation), true
		for _, name in ipairs(list) do
			for _, neg in ipairs(Engine.NEGATIVE_RELATIONS) do
				if name == neg then ok = false end
			end
		end
		if ok and #list > 0 then return true end
	end
	local n = when["not"]
	if type(n) == "table" then
		if n.relation ~= nil and CoversNegative(n.relation) then return true end
		if type(n.other) == "table" and n.other.relation ~= nil and CoversNegative(n.other.relation) then return true end
	end
	if type(when.affectionMin) == "number" and when.affectionMin >= -24
		and type(when.trustMin) == "number" and when.trustMin >= -29
		and type(when.fearMax) == "number" and when.fearMax <= 59 then
		return true
	end
	if type(when.other) == "table" and Engine.ExcludesNegativeRelation(when.other) then return true end
	if type(when.any) == "table" and #when.any > 0 then
		local all = true
		for _, sub in ipairs(when.any) do
			if not Engine.ExcludesNegativeRelation(sub) then all = false; break end
		end
		if all then return true end
	end
	return false
end

---Le condizioni garantiscono un meteo noto? `weather` al livello superiore (non `false`), oppure `any` dove ogni gruppo
---lo chiede. Serve al validatore per i testi che nominano la pioggia, la neve o il temporale (#92): con il meteo
---illeggibile la condizione è falsa e la frase non esce.
---@param when? table
---@return boolean
function Engine.UsesWeather(when)
	if type(when) ~= "table" then return false end
	if when.weather ~= nil and when.weather ~= false then return true end
	if type(when.any) == "table" and #when.any > 0 then
		for _, sub in ipairs(when.any) do
			if not Engine.UsesWeather(sub) then return false end
		end
		return true
	end
	return false
end

-- condizioni che dipendono da un ricordo (ctx.memory)
Engine.MEMORY_CONDITIONS = { firstVisit = true, repeatVisit = true, lastVisitBad = true, visitsMin = true,
	visitsMax = true, daysSinceLastVisit = true, remembered = true }

---Le condizioni garantiscono un ricordo? Una chiave di memoria al livello superiore, oppure `any` dove ogni gruppo ne ha una.
---(`not` non garantisce nulla.) Serve al validatore per le frasi degli eventi di richiamo.
---@param when? table
---@return boolean
function Engine.UsesMemory(when)
	if type(when) ~= "table" then return false end
	for k, v in pairs(when) do
		if Engine.MEMORY_CONDITIONS[k] then
			if not (v == false) then return true end
		elseif k == "any" and type(v) == "table" and #v > 0 then
			local all = true
			for _, sub in ipairs(v) do
				if not Engine.UsesMemory(sub) then all = false; break end
			end
			if all then return true end
		end
	end
	return false
end

local VALUE_KINDS = { bool = true, str = true, num = true, frac = true, pct = true, hour = true, boolstr = true,
	numrange = true, boolnum = true, fracmap = true, pctmap = true }

---Dichiara una condizione nuova per le frasi di un pacchetto.
---Con una funzione `fn(valore, ctx) -> boolean` la condizione è calcolata; senza, confronta ctx[nome] col valore.
---@param name string
---@param fn? fun(value: any, ctx: table): boolean
---@param kind? string tipo di valore per il validatore (predefinito "str")
function NS:RegisterCondition(name, fn, kind)
	if type(name) ~= "string" or name == "" then return end
	if type(fn) ~= "function" then fn = nil end
	if not (type(kind) == "string" and VALUE_KINDS[kind]) then kind = nil end
	if fn and not SPECIAL[name] then
		SPECIAL[name] = fn
		-- un nome del motore che diventa calcolato da un pacchetto non è più sicuro da saltare: l'indice si rifà
		if Engine.PURE_CONDITIONS[name] then
			Engine.PURE_CONDITIONS[name] = nil
			Engine:RebuildIndex()
		end
	end
	if not Engine.CONDITIONS[name] then Engine.CONDITIONS[name] = kind or (fn and "any") or "str" end
end

local TypeError
TypeError = function(kind, v)
	local t = type(v)
	if kind == "bool" then return t ~= "boolean" and "serve true o false" end
	if kind == "num" then return t ~= "number" and "serve un numero" end
	if kind == "frac" then return (t ~= "number" or v < 0 or v > 1) and "serve un numero da 0 a 1" end
	if kind == "pct" then return (t ~= "number" or v < 0 or v > 100) and "serve un numero da 0 a 100" end
	if kind == "hour" then
		return (t ~= "table" or type(v[1]) ~= "number" or type(v[2]) ~= "number") and "serve { dalle, alle }"
	end
	if kind == "func" then return t ~= "function" and "serve una funzione" end
	-- { emozione = 0..1 } e { asse della personalità = 0..100 } (R4)
	if kind == "fracmap" or kind == "pctmap" then
		if t ~= "table" or next(v) == nil then return "serve una tabella { nome = soglia }" end
		for name, n in pairs(v) do
			if kind == "fracmap" then
				if not Engine.EMOTION_SET[name] then return ("emozione '%s' sconosciuta"):format(tostring(name)) end
				if type(n) ~= "number" or n < 0 or n > 1 then return ("'%s': serve un numero da 0 a 1"):format(name) end
			else
				local def = NS.Traits and NS.Traits.defs[name]
				if not (def and def.kind == "scale") then return ("'%s' non è un asse della personalità"):format(tostring(name)) end
				if type(n) ~= "number" or n < def.min or n > def.max then
					return ("'%s': serve un numero da %d a %d"):format(name, def.min, def.max)
				end
			end
		end
		return false
	end
	if kind == "boolstr" then
		if t == "boolean" then return false end
		return TypeError("str", v) and "serve true, false, una stringa o un elenco"
	end
	if kind == "boolnum" then
		if t == "boolean" or t == "number" then return false end
		if t == "table" and #v > 0 then
			for _, x in ipairs(v) do
				if type(x) ~= "number" then return "l'elenco deve contenere solo numeri" end
			end
			return false
		end
		return "serve true, false, un numero o un elenco di numeri"
	end
	if kind == "numrange" then
		if t == "number" then return v < 0 and "serve un numero non negativo" end
		if t == "table" and type(v[1]) == "number" and type(v[2]) == "number" and v[1] <= v[2] then return false end
		return "serve un numero o { da, a }"
	end
	if kind == "actions" then
		if t == "table" and v.within ~= nil and (type(v.within) ~= "number" or v.within <= 0) then
			return "'within' deve essere un numero di secondi"
		end
		if t == "table" then
			if #v == 0 then return "serve almeno un'azione" end
			for _, x in ipairs(v) do
				if type(x) ~= "string" then return "l'elenco deve contenere solo stringhe" end
			end
			for k in pairs(v) do
				if type(k) ~= "number" and k ~= "within" then return ("chiave '%s' sconosciuta"):format(tostring(k)) end
			end
			return false
		end
		return t ~= "string" and "serve un'azione, un elenco o { ..., within = secondi }"
	end
	if kind == "str" then
		if t == "string" then return false end
		if t == "table" then
			for _, x in ipairs(v) do
				if type(x) ~= "string" then return "l'elenco deve contenere solo stringhe" end
			end
			return #v == 0 and "elenco vuoto"
		end
		return "serve una stringa o un elenco"
	end
	return false
end

-- Controlla una sotto-tabella `other` o `place`: campi noti, tipi, valori ammessi; `not` e `any` restano nell'ambito.
local function CheckSub(when, path, scope, Add)
	if type(when) ~= "table" then
		Add(("'%s': serve una tabella di condizioni"):format(path))
		return
	end
	local fields, domains = Engine.SUB_FIELDS[scope], Engine.SUB_VALUES[scope]
	for _, k in ipairs(Engine.SortedKeys(when)) do
		local v = when[k]
		local kind = type(k) == "string" and fields[k]
		local name = path .. "." .. tostring(k)
		if not kind then
			Add(("campo sconosciuto '%s'"):format(name))
		elseif kind == "group" then
			CheckSub(v, name, scope, Add)
		elseif kind == "subs" then
			if type(v) ~= "table" or #v == 0 then
				Add(("'%s': serve un elenco di gruppi di condizioni"):format(name))
			else
				for i, sub in ipairs(v) do CheckSub(sub, name .. "[" .. i .. "]", scope, Add) end
			end
		else
			local err = TypeError(kind, v)
			if err then
				Add(("'%s': %s"):format(name, err))
			else
				local domain = domains[k]
				if type(domain) == "function" then domain = domain() end
				if domain and next(domain) ~= nil and type(v) ~= "boolean" then
					for _, x in ipairs(AsList(v)) do
						if type(x) == "string" and not domain[x] and not domain[NS.Lower(x)] then
							Add(("'%s': valore '%s' sconosciuto"):format(name, x))
						end
					end
				end
			end
		end
	end
end

---Controlla una tabella di condizioni. Restituisce un elenco di messaggi (vuoto se va tutto bene).
---@param when table
---@return string[]
function Engine.CheckConditions(when, path)
	local problems = {}
	path = path or ""
	if type(when) ~= "table" then return { "le condizioni devono essere una tabella" } end
	local function Add(msg) table.insert(problems, msg) end
	for _, k in ipairs(Engine.SortedKeys(when)) do
		local v = when[k]
		local kind = Engine.CONDITIONS[k]
		local name = path .. tostring(k)
		if type(k) ~= "string" or not kind then
			Add(("condizione sconosciuta '%s'"):format(name))
		elseif kind == "sub" then
			CheckSub(v, name, k, Add)
		elseif kind == "group" then
			for _, m in ipairs(Engine.CheckConditions(v, name .. ".")) do Add(m) end
		elseif kind == "subs" then
			if type(v) ~= "table" or #v == 0 then
				Add(("'%s': serve un elenco di gruppi di condizioni"):format(name))
			else
				for i, sub in ipairs(v) do
					for _, m in ipairs(Engine.CheckConditions(sub, name .. "[" .. i .. "].")) do Add(m) end
				end
			end
		elseif kind == "any" then
			-- condizione calcolata da un pacchetto: nessun controllo sul valore
		else
			local err = TypeError(kind, v)
			if err then
				Add(("'%s': %s"):format(name, err))
			else
				local domain = Engine.CONDITION_VALUES[k]
				if domain then
					for _, x in ipairs(AsList(v)) do
						if type(x) == "string" and not domain[x] and not domain[NS.Lower(x)] then
							Add(("'%s': valore '%s' sconosciuto"):format(name, x))
						end
					end
				end
				if k == "mood" then
					local known = {}
					for _, m in pairs(NS.zoneMoods or {}) do known[m] = true end
					known.town = true
					for _, x in ipairs(AsList(v)) do
						if type(x) == "string" and not known[x] then
							Add(("'%s': atmosfera '%s' non registrata"):format(name, x))
						end
					end
				end
			end
		end
	end
	return problems
end
