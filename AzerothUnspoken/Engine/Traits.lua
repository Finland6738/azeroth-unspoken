-- Azeroth Unspoken: modello dei tratti (GDD §7.1).
-- Un tratto è un dato: identificatore, tipo e valori ammessi. Un profilo è una tabella { [tratto] = valore } che
-- contiene solo i tratti impostati: un tratto assente è "non so", mai "falso". Il modello non conosce il
-- personaggio del giocatore: lo usano il Character Soul (Systems/Personality.lua, step S5), il profilo
-- dell'interlocutore (S6c) e i valori della tabella delle relazioni (S6b), ognuno con le sue definizioni.
--
-- Tipi di tratto:
--   choice  un valore tra quelli elencati                      { id = "temperament", values = { "stoic", ... } }
--   scale   un numero in un intervallo, con fasce con nome     { id = "irony", min = 0, max = 100, bands = { { "low", 33 }, ... } }
--   set     un insieme di valori (argomenti da evitare, ...)   { id = "avoid", values = { "death", ... }, tag = "topic", exclusive = true }
--
-- Tag di affinità sulle frasi (campo `tags` dello schema v2). I tag senza due punti restano descrittivi e il
-- modello li ignora (sono quelli di S3: "wry", "heroic"...). Grammatica, con `tratto` = il prefisso del tratto:
--   tratto:valore        affinità morbida: il peso sale se il profilo ha quel valore, scende se ne ha un altro
--   req:tratto:valore    requisito rigido: la frase esce solo se il profilo ha quel valore (più req dello stesso
--                        tratto sono alternative; tratti diversi si sommano)
--   not:tratto:valore    esclusione rigida: la frase non esce se il profilo ha quel valore
--   topic:valore         per i tratti `exclusive` (gli argomenti da evitare): esclusione rigida se il profilo li evita
-- Per una scala il valore è il nome di una fascia. Un profilo senza il tratto lascia la frase neutra (peso 1), tranne
-- che per `req`, che chiede un tratto dichiarato. Con un ambito (`scope`, per esempio "other" in S6c) il tag si
-- scrive `other.tratto:valore`.
local ADDON, NS = ...

---@alias AUTraitKind "choice"|"scale"|"set"

---@class AUTraitDef
---@field id string
---@field kind AUTraitKind
---@field values? string[] choice e set: i valori ammessi
---@field valid? table<string, boolean> valori (o fasce) ammessi, come insieme
---@field min? number scale
---@field max? number scale
---@field bands? { [1]: string, [2]: number }[] scale: fasce { nome, estremo superiore incluso }, in ordine crescente
---@field tag string prefisso del tratto nei tag delle frasi (predefinito: id)
---@field exclusive? boolean set: un valore presente esclude le frasi che lo toccano
---@field hard? boolean il tratto non è mai contraddetto (dichiarato per informazione dell'interfaccia)

---@alias AUTraits table<string, string|number|table<string, boolean>>

---@class AUTraits
local Traits = { defs = {}, order = {}, tagIndex = {}, scopes = { [""] = true } }
NS.Traits = Traits

-- fattori di peso dell'affinità morbida (per tratto con una corrispondenza o un contrasto)
Traits.MATCH = 1.6
Traits.MISMATCH = 0.6
-- limiti del fattore complessivo di affinità morbida: nessun tratto può azzerare una frase (l'esclusione è rigida)
Traits.MIN_FACTOR = 0.15
Traits.MAX_FACTOR = 3

---------------------------------------------------------------------------
-- Definizioni
---------------------------------------------------------------------------
---Registra (o sostituisce) la definizione di un tratto.
---@param def AUTraitDef
---@return AUTraitDef
function Traits.Define(def)
	assert(type(def) == "table" and type(def.id) == "string" and def.id ~= "", "Traits.Define: serve un id")
	assert(def.kind == "choice" or def.kind == "scale" or def.kind == "set", "Traits.Define: tipo sconosciuto")
	def.tag = def.tag or def.id
	def.valid = {}
	if def.kind == "scale" then
		assert(type(def.min) == "number" and type(def.max) == "number" and def.min < def.max, "Traits.Define: intervallo")
		local last = def.min - 1
		for _, band in ipairs(def.bands or {}) do
			assert(type(band[1]) == "string" and type(band[2]) == "number" and band[2] > last, "Traits.Define: fasce crescenti")
			def.valid[band[1]] = true
			last = band[2]
		end
	else
		assert(type(def.values) == "table" and #def.values > 0, "Traits.Define: servono i valori")
		for _, v in ipairs(def.values) do def.valid[v] = true end
	end
	if Traits.defs[def.id] then
		for i, id in ipairs(Traits.order) do
			if id == def.id then table.remove(Traits.order, i); break end
		end
	end
	Traits.defs[def.id] = def
	Traits.tagIndex[def.tag] = def
	table.insert(Traits.order, def.id)
	return def
end

---Dichiara un ambito per i tag (per esempio "other" in S6c): `other.tratto:valore`.
---@param name string
function Traits.RegisterScope(name)
	if type(name) == "string" and name ~= "" then Traits.scopes[name] = true end
end

---@param id string
---@return AUTraitDef?
function Traits.Def(id)
	return Traits.defs[id]
end

---Fascia di una scala per un valore. Fuori intervallo il valore si porta al limite.
---@param def AUTraitDef
---@param value number
---@return string? band
function Traits.Band(def, value)
	if def.kind ~= "scale" or type(value) ~= "number" or value ~= value then return nil end
	for _, band in ipairs(def.bands or {}) do
		if value <= band[2] then return band[1] end
	end
	local last = def.bands and def.bands[#def.bands]
	return last and last[1] or nil
end

---Il profilo ha impostato questo tratto?
---@param def AUTraitDef
---@param traits AUTraits
---@return boolean
function Traits.IsSet(def, traits)
	local v = traits[def.id]
	if v == nil then return false end
	if def.kind == "set" then return type(v) == "table" and next(v) ~= nil end
	return true
end

---Il profilo ha questo valore (per una scala: questa fascia, per un insieme: questo elemento)?
---@param def AUTraitDef
---@param traits AUTraits
---@param value string
---@return boolean
function Traits.Has(def, traits, value)
	local v = traits[def.id]
	if v == nil then return false end
	if def.kind == "choice" then return v == value end
	if def.kind == "scale" then return Traits.Band(def, v) == value end
	return type(v) == "table" and v[value] == true
end

---------------------------------------------------------------------------
-- Pulizia dei dati (SavedVariables, input dell'utente, profili di altri addon)
---------------------------------------------------------------------------
---Copia pulita di un profilo: tiene solo tratti noti con valori validi, limita le scale, scarta il resto.
---Non modifica l'originale e non solleva errori: dati rovinati danno un profilo vuoto.
---@param traits any
---@return AUTraits clean
---@return integer dropped quante voci sono state scartate
function Traits.Sanitize(traits)
	local clean, dropped = {}, 0
	if type(traits) ~= "table" then return clean, traits == nil and 0 or 1 end
	for key, v in pairs(traits) do
		local def = type(key) == "string" and Traits.defs[key] or nil
		if not def then
			dropped = dropped + 1
		elseif def.kind == "choice" then
			if type(v) == "string" and def.valid[v] then clean[key] = v else dropped = dropped + 1 end
		elseif def.kind == "scale" then
			if type(v) == "number" and v == v and v > -math.huge and v < math.huge then
				clean[key] = math.max(def.min, math.min(def.max, v))
			else
				dropped = dropped + 1
			end
		else
			local set = {}
			if type(v) == "table" then
				for value, on in pairs(v) do
					if on == true and type(value) == "string" and def.valid[value] then set[value] = true else dropped = dropped + 1 end
				end
			else
				dropped = dropped + 1
			end
			clean[key] = set
		end
	end
	return clean, dropped
end

---Una copia profonda di un profilo.
---@param traits AUTraits
---@return AUTraits
function Traits.Copy(traits)
	local out = {}
	for k, v in pairs(traits or {}) do
		if type(v) == "table" then
			local set = {}
			for x, on in pairs(v) do set[x] = on end
			out[k] = set
		else
			out[k] = v
		end
	end
	return out
end

---Il profilo non ha alcun tratto impostato?
---@param traits AUTraits
---@return boolean
function Traits.IsEmpty(traits)
	for _, id in ipairs(Traits.order) do
		local def = Traits.defs[id]
		if traits[id] ~= nil and Traits.IsSet(def, traits) then return false end
	end
	return true
end

---------------------------------------------------------------------------
-- Priorità tra le fonti
---------------------------------------------------------------------------
---Unisce i livelli in ordine di priorità: per ogni tratto vale il primo livello che lo imposta. Gli insiemi
---(argomenti da evitare) si uniscono invece tra tutti i livelli: mai contraddire ciò che una fonte vieta.
---@param layers { name: string, traits: AUTraits? }[] dal più al meno importante
---@return AUTraits effective
---@return table<string, string> sources [tratto] = nome del livello (assente = valore neutro)
function Traits.Merge(layers)
	local effective, sources = {}, {}
	for _, layer in ipairs(layers) do
		local traits = layer.traits
		if type(traits) == "table" then
			for _, id in ipairs(Traits.order) do
				local def = Traits.defs[id]
				if Traits.IsSet(def, traits) then
					if def.kind == "set" then
						effective[id] = effective[id] or {}
						for value, on in pairs(traits[id]) do
							if on == true then effective[id][value] = true end
						end
						sources[id] = sources[id] or layer.name
					elseif effective[id] == nil then
						effective[id], sources[id] = traits[id], layer.name
					end
				end
			end
		end
	end
	return effective, sources
end

---------------------------------------------------------------------------
-- Tag di affinità
---------------------------------------------------------------------------
---@class AUTag
---@field scope string
---@field mode "affinity"|"req"|"not"
---@field name string prefisso del tratto
---@field value string

local parsed = {}

---Interpreta un tag di affinità. Restituisce nil per i tag descrittivi (senza due punti o di altra forma).
---@param tag string
---@return AUTag?
function Traits.ParseTag(tag)
	if type(tag) ~= "string" then return nil end
	local hit = parsed[tag]
	if hit ~= nil then return hit or nil end
	local result = false
	local colon = tag:find(":", 1, true)
	if colon then
		local scope, rest = "", tag
		local dot = tag:find(".", 1, true)
		if dot and dot < colon then scope, rest = tag:sub(1, dot - 1), tag:sub(dot + 1) end
		local mode = "affinity"
		local head, tail = rest:match("^([a-z]+):(.+)$")
		if head == "req" or head == "not" then mode, rest = head, tail end
		local name, value = rest:match("^([A-Za-z]+):([A-Za-z_]+)$")
		if name then result = { scope = scope, mode = mode, name = name, value = value } end
	end
	parsed[tag] = result
	return result or nil
end

---Controlla un tag di una frase per il validatore. nil se va bene o se è descrittivo.
---@param tag string
---@return string? problem
function Traits.CheckTag(tag)
	if type(tag) ~= "string" then return "il tag non è una stringa" end
	if not tag:find(":", 1, true) then return nil end
	local t = Traits.ParseTag(tag)
	if not t then return ("tag di affinità '%s' malformato"):format(tag) end
	if not Traits.scopes[t.scope] then return ("tag '%s': ambito '%s' sconosciuto"):format(tag, t.scope) end
	local def = Traits.tagIndex[t.name]
	if not def then return ("tag '%s': tratto '%s' sconosciuto"):format(tag, t.name) end
	if not def.valid[t.value] then return ("tag '%s': valore '%s' non ammesso per '%s'"):format(tag, t.value, def.id) end
	if t.mode ~= "affinity" and def.exclusive then
		return ("tag '%s': '%s' è già esclusivo, si scrive %s:%s"):format(tag, def.id, def.tag, t.value)
	end
	return nil
end

---Valuta i tag di una frase contro un profilo.
---@param tags table<string, boolean> insieme dei tag della frase
---@param traits AUTraits profilo
---@param scope? string ambito dei tag da considerare (predefinito: nessuno)
---@return number factor 0 = frase esclusa, altrimenti il fattore morbido (1 = neutro)
---@return string? reason chi ha escluso la frase ("not:faith:devout", "topic:death", "req:...")
function Traits.Evaluate(tags, traits, scope)
	scope = scope or ""
	if type(tags) ~= "table" then return 1 end
	local soft, required = nil, nil
	for tag in pairs(tags) do
		local t = Traits.ParseTag(tag)
		local def = t and t.scope == scope and Traits.tagIndex[t.name] or nil
		if def and def.valid[t.value] then
			local has = Traits.Has(def, traits, t.value)
			if t.mode == "not" then
				if has then return 0, tag end
			elseif t.mode == "req" then
				required = required or {}
				required[def.id] = required[def.id] or { met = false, tag = tag }
				if has then required[def.id].met = true end
			elseif def.exclusive then
				if has then return 0, tag end
			elseif Traits.IsSet(def, traits) then
				soft = soft or {}
				soft[def.id] = soft[def.id] or false
				if has then soft[def.id] = true end
			end
		end
	end
	if required then
		for _, r in pairs(required) do
			if not r.met then return 0, r.tag end
		end
	end
	local factor = 1
	if soft then
		for _, matched in pairs(soft) do
			factor = factor * (matched and Traits.MATCH or Traits.MISMATCH)
		end
		factor = math.max(Traits.MIN_FACTOR, math.min(Traits.MAX_FACTOR, factor))
	end
	return factor, nil
end

---------------------------------------------------------------------------
-- Nomi localizzati e input
---------------------------------------------------------------------------
-- chiavi dell'interfaccia: trait_<id> (nome del tratto), trait_<id>_<valore> (valore o fascia)
local function Localized(key, fallback)
	local s = NS:L(key)
	return s ~= key and s or fallback
end

---@param id string
---@return string
function Traits.Name(id)
	return Localized("trait_" .. id, id)
end

---@param id string
---@param value string valore, fascia o elemento
---@return string
function Traits.ValueName(id, value)
	return Localized("trait_" .. id .. "_" .. value, value)
end

---Testo leggibile del valore di un tratto in un profilo ("Stoico", "70 (alta)", "morte, sangue").
---@param def AUTraitDef
---@param traits AUTraits
---@return string?
function Traits.Describe(def, traits)
	local v = traits[def.id]
	if v == nil then return nil end
	if def.kind == "choice" then return Traits.ValueName(def.id, v) end
	if def.kind == "scale" then
		local band = Traits.Band(def, v)
		return ("%d (%s)"):format(math.floor(v + 0.5), band and Traits.ValueName(def.id, band) or "?")
	end
	local names = {}
	for _, value in ipairs(def.values) do
		if v[value] then table.insert(names, Traits.ValueName(def.id, value)) end
	end
	return #names > 0 and table.concat(names, ", ") or nil
end

---Minuscole solo per le lettere ASCII: lower() lascia intatti i byte delle lettere accentate (UTF-8), che con alcune
---impostazioni locali verrebbero alterati.
---@param s string
---@return string
function Traits.Lower(s)
	return (tostring(s):gsub("[A-Z]", string.lower))
end

---Interpreta un testo dell'utente come valore di un tratto: il valore stesso, il suo nome localizzato (senza
---maiuscole) oppure, per una scala, un numero o il nome di una fascia (che vale il centro della fascia).
---@param def AUTraitDef
---@param text string
---@return string|number|nil value
function Traits.ParseValue(def, text)
	if type(text) ~= "string" then return nil end
	local t = Traits.Lower(text)
	if t == "" then return nil end
	if def.kind == "scale" then
		local n = tonumber(t)
		if n then return math.max(def.min, math.min(def.max, n)) end
		local low = def.min
		for _, band in ipairs(def.bands or {}) do
			if band[1] == t or Traits.Lower(Traits.ValueName(def.id, band[1])) == t then
				return math.floor((low + band[2]) / 2 + 0.5)
			end
			low = band[2]
		end
		return nil
	end
	for _, value in ipairs(def.values) do
		if value == t or Traits.Lower(Traits.ValueName(def.id, value)) == t then return value end
	end
	return nil
end
