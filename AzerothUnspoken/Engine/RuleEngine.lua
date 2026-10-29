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
		return expected:lower() == actual:lower()
	end
	return expected == actual
end

-- testo contenuto (senza pattern) in uno dei valori
local function ContainsAny(patterns, value)
	if not value then return false end
	value = value:lower()
	for _, pat in ipairs(AsList(patterns)) do
		if value:find(pat:lower(), 1, true) then return true end
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

-- numero (almeno) oppure { minimo, massimo } con massimo escluso, come `hour`
local function InRange(v, x)
	if x == nil then return false end
	if type(v) == "table" then return x >= v[1] and x < v[2] end
	return x >= v
end

-- regole speciali; tutte le altre chiavi si confrontano con ctx[chiave]
local SPECIAL = {
	hpBelow  = function(v, ctx) return ctx.hp ~= nil and ctx.hp < v end,
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
	-- operatori
	chance = "pct", func = "func", ["not"] = "group", any = "subs",
}

-- insiemi chiusi di valori, controllati dal validatore
Engine.CONDITION_VALUES = {
	sex = { male = true, female = true },
	faction = { Alliance = true, Horde = true },
	targetFaction = { Alliance = true, Horde = true },
	time = { dawn = true, day = true, dusk = true, night = true },
	group = { solo = true, party = true, raid = true },
	instanceType = { none = true, party = true, raid = true, pvp = true, arena = true, scenario = true },
	depth = Engine.DEPTHS,
}

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
	numrange = true }

---Dichiara una condizione nuova per le frasi di un pacchetto.
---Con una funzione `fn(valore, ctx) -> boolean` la condizione è calcolata; senza, confronta ctx[nome] col valore.
---@param name string
---@param fn? fun(value: any, ctx: table): boolean
---@param kind? string tipo di valore per il validatore (predefinito "str")
function NS:RegisterCondition(name, fn, kind)
	if type(name) ~= "string" or name == "" then return end
	if type(fn) ~= "function" then fn = nil end
	if not (type(kind) == "string" and VALUE_KINDS[kind]) then kind = nil end
	if fn and not SPECIAL[name] then SPECIAL[name] = fn end
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
	if kind == "boolstr" then
		if t == "boolean" then return false end
		return TypeError("str", v) and "serve true, false, una stringa o un elenco"
	end
	if kind == "numrange" then
		if t == "number" then return v < 0 and "serve un numero non negativo" end
		if t == "table" and type(v[1]) == "number" and type(v[2]) == "number" and v[1] <= v[2] then return false end
		return "serve un numero o { da, a }"
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
						if type(x) == "string" and not domain[x] and not domain[x:lower()] then
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
