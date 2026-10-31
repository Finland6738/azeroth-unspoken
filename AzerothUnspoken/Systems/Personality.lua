-- Azeroth Unspoken: Character Soul, la personalità del personaggio del giocatore (GDD §7.1, ADR 0016, ADR 0030).
-- Tratti opt-in. Dalla R4 (#96) la personalità è fatta di intensità da 0 a 100 su dieci assi che possono convivere
-- (stoico e vendicativo insieme): idealismo (cinico <-> idealista), concretezza (sognatore <-> pragmatico), ottimismo
-- (pessimista <-> ottimista), altruismo, stoicismo, ambizione, spiritualità, patriottismo, curiosità, sete di vendetta;
-- più l'ironia, gli argomenti da evitare e la voce interiore. Gli archetipi sono preimpostazioni modificabili. I vecchi
-- tratti a scelta (temperamento, morale, fede, motivazione) restano come tag delle frasi e si leggono dagli assi
-- (`derive` in Engine/Traits.lua); un profilo salvato della versione 1 si converte da solo (Personality:Migrate).
-- Nessun tratto è obbligatorio: il profilo neutro (nessun tratto) lascia il narratore com'è. I tratti cambiano
-- l'eleggibilità e i pesi delle frasi senza imporre esiti:
--   - fattore P del peso (Engine:SetWeightHook "P"): affinità morbida dai tag delle frasi (Engine/Traits.lua),
--     esclusione rigida per `req:`, `not:` e `topic:`, e voce interiore;
--   - StyleResolver:SetModifier "soul": il temperamento, la fede e l'ironia spostano i registri preferiti;
--   - ctx.soul e la condizione `soul` per le regole.
-- Priorità dei dati (GDD §8): scelta esplicita > Total RP 3 (con consenso) > dati di gioco > valori neutri.
-- Il modello dei tratti (Engine/Traits.lua) è lo stesso che S6c userà per gli interlocutori e S6b per le relazioni.
local ADDON, NS = ...
local Traits, Engine = NS.Traits, NS.Engine

---@class AUPersonalityProfile dati salvati per personaggio (AzerothUnspokenCharacterDB.personality)
---@field version integer 2: intensità (R4); 1: scelte esclusive di S5, convertite da Personality:Migrate
---@field archetype string neutral | id di un archetipo | custom
---@field base? string l'archetipo da cui è partito un profilo personalizzato (solo per mostrarlo)
---@field traits AUTraits scelte esplicite
---@field trp3 boolean consenso a leggere i tratti dal profilo pubblico del proprio personaggio in Total RP 3
---@field legacy? table<string, string> le scelte della versione 1 prima della conversione (identificatori, mai testo)

---@class AUPersonality
local Personality = NS:RegisterModule("personality")
NS.Personality = Personality

Personality.VERSION = 2
Personality.CACHE_SECONDS = 15   -- ogni quanto si rilegge il profilo di Total RP 3

---------------------------------------------------------------------------
-- Tratti del personaggio
---------------------------------------------------------------------------
-- Fasce delle scale 0-100
local BANDS = { { "low", 33 }, { "mid", 66 }, { "high", 100 } }

-- Gli assi della personalità (R4, #96): intensità da 0 a 100. I primi tre sono bipolari (0 e 100 sono due modi
-- d'essere opposti, 50 è l'equilibrio); gli altri vanno da "per nulla" a "del tutto". Un asse non impostato è "non so".
Personality.AXES = { "idealism", "concreteness", "optimism", "altruism", "stoicism", "ambition", "spirituality",
	"patriotism", "curiosity", "vengefulness" }
-- i poli degli assi bipolari, per l'interfaccia (chiavi soul_pole_<asse>_low e _high)
Personality.BIPOLAR = { idealism = true, concreteness = true, optimism = true }
for _, id in ipairs(Personality.AXES) do
	Traits.Define({ id = id, kind = "scale", min = 0, max = 100, bands = BANDS })
end
Traits.Define({ id = "irony", kind = "scale", min = 0, max = 100, bands = BANDS })

-- I tratti a scelta di S5. Il profilo del personaggio non li salva più, ma le frasi li usano come tag
-- (temperament:stoic) e l'interlocutore (S6c, ambito other) sceglie ancora temperamento e morale: per un profilo
-- fatto di intensità ogni valore si legge da un asse. Le soglie stanno ai bordi delle fasce (33/67), salvo dove il
-- valore chiede un carattere più marcato.
Traits.Define({ id = "temperament", kind = "choice",
	values = { "resolute", "merciful", "stoic", "cheerful", "melancholic", "gruff", "fierce" },
	derive = {
		resolute = { "ambition", ">=", 60 }, merciful = { "altruism", ">=", 67 }, stoic = { "stoicism", ">=", 67 },
		cheerful = { "optimism", ">=", 67 }, melancholic = { "optimism", "<=", 33 }, gruff = { "altruism", "<=", 33 },
		fierce = { "vengefulness", ">=", 60 },
	} })
Traits.Define({ id = "morality", kind = "choice",
	values = { "righteous", "pragmatic", "conflicted", "disillusioned", "hopeful" },
	derive = {
		righteous = { "idealism", ">=", 67 }, pragmatic = { "concreteness", ">=", 67 },
		conflicted = { "idealism", "in", 34, 66 }, disillusioned = { "idealism", "<=", 33 },
		hopeful = { "optimism", ">=", 67 },
	} })
Traits.Define({ id = "faith", kind = "choice", values = { "devout", "spiritual", "doubting", "skeptic" },
	derive = {
		devout = { "spirituality", ">=", 80 }, spiritual = { "spirituality", ">=", 60 },
		doubting = { "spirituality", "<=", 40 }, skeptic = { "spirituality", "<=", 20 },
	} })
Traits.Define({ id = "motivation", kind = "choice",
	values = { "duty", "vengeance", "glory", "knowledge", "redemption", "freedom", "protection" },
	derive = {
		duty = { "patriotism", ">=", 60 }, vengeance = { "vengefulness", ">=", 67 }, glory = { "ambition", ">=", 67 },
		knowledge = { "curiosity", ">=", 67 }, redemption = { "optimism", "<=", 40 }, freedom = { "patriotism", "<=", 33 },
		protection = { "altruism", ">=", 60 },
	} })
-- gli argomenti da evitare non si contraddicono mai: un tag topic:morte esclude la frase
Traits.Define({ id = "avoid", kind = "set", tag = "topic", exclusive = true, hard = true,
	values = { "death", "blood", "betrayal", "family", "religion", "undead", "demons", "romance" } })
-- la voce interiore: off esclude ogni pensiero (speaker inner); le altre ne cambiano la frequenza
Traits.Define({ id = "innerVoice", kind = "choice", hard = true,
	values = { "off", "quiet", "present", "vivid" } })

-- ordine di presentazione nell'interfaccia e nei comandi
Personality.TRAIT_ORDER = { "idealism", "concreteness", "optimism", "altruism", "stoicism", "ambition", "spirituality",
	"patriotism", "curiosity", "vengefulness", "irony", "innerVoice", "avoid" }
-- i tratti a scelta della versione 1, che il profilo non salva più
Personality.LEGACY = { "temperament", "morality", "faith", "motivation" }

-- Conversione della versione 1 (Personality:Migrate) e comandi con le vecchie parole (/au soul temperament stoic):
-- ogni scelta diventa intensità che soddisfano la sua regola `derive`, così i tag delle frasi che valevano prima
-- valgono ancora. Se due scelte toccano lo stesso asse vale la prima, nell'ordine di LEGACY.
Personality.MIGRATION = {
	temperament = {
		resolute = { ambition = 70, stoicism = 55 }, merciful = { altruism = 80 }, stoic = { stoicism = 80 },
		cheerful = { optimism = 80 }, melancholic = { optimism = 20 }, gruff = { altruism = 25 },
		fierce = { vengefulness = 75 },
	},
	morality = {
		righteous = { idealism = 80 }, pragmatic = { concreteness = 80 }, conflicted = { idealism = 50 },
		disillusioned = { idealism = 20 }, hopeful = { optimism = 80 },
	},
	faith = { devout = { spirituality = 90 }, spiritual = { spirituality = 70 }, doubting = { spirituality = 35 },
		skeptic = { spirituality = 10 } },
	motivation = {
		duty = { patriotism = 75 }, vengeance = { vengefulness = 80 }, glory = { ambition = 80 },
		knowledge = { curiosity = 80 }, redemption = { optimism = 35 }, freedom = { patriotism = 20 },
		protection = { altruism = 75 },
	},
}

-- parole dei comandi (/au soul <trait> ...): sempre in inglese. Le vecchie parole (temperament, morality, faith,
-- motivation) impostano gli assi corrispondenti.
local TRAIT_ALIAS = NS.Keywords.Register("soul.traits", {
	idealism = "idealism", concreteness = "concreteness", optimism = "optimism", altruism = "altruism",
	stoicism = "stoicism", ambition = "ambition", spirituality = "spirituality", patriotism = "patriotism",
	curiosity = "curiosity", vengefulness = "vengefulness", irony = "irony", avoid = "avoid",
	voice = "innerVoice", innervoice = "innerVoice",
	temperament = "temperament", morality = "morality", faith = "faith", motivation = "motivation",
})
local SOUL_WORDS = NS.Keywords.Register("soul", { list = "list", neutral = "neutral", reset = "neutral", archetype = "archetype", trp3 = "trp3" })

-- fattori della voce interiore sulle frasi con speaker "inner" (off = 0 = esclusione)
Personality.INNER_FACTOR = { off = 0, quiet = 0.5, present = 1, vivid = 1.6 }
-- fattori dell'ironia sulle frasi di registro ironico che non portano un tag irony:
Personality.IRONY_FACTOR = { low = 0.5, mid = 1, high = 1.5 }

---Le intensità che corrispondono alle scelte della versione 1 (tratti a scelta di S5). Gli altri tratti (curiosità,
---ironia, voce interiore, argomenti) passano come sono. Un valore sconosciuto si ignora.
---@param old table profilo della versione 1
---@return AUTraits traits
function Personality.FromLegacy(old)
	local out = {}
	if type(old) ~= "table" then return out end
	for k, v in pairs(old) do
		if not Personality.MIGRATION[k] then out[k] = v end
	end
	for _, trait in ipairs(Personality.LEGACY) do
		local map = Personality.MIGRATION[trait][old[trait]]
		for axis, value in pairs(map or {}) do
			if out[axis] == nil then out[axis] = value end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Archetipi: preimpostazioni di intensità (R4). Sceglierne uno riempie gli assi; poi si modifica liberamente.
---------------------------------------------------------------------------
---@class AUArchetype
---@field id string
---@field traits AUTraits
---@field name? string nome di ripiego se l'interfaccia non ha la chiave soul_arch_<id>
---@field help? string

---@type AUArchetype[]
Personality.archetypes = {
	{ id = "neutral", traits = {} },
	{ id = "veteran", traits = { stoicism = 80, idealism = 20, spirituality = 35, patriotism = 75, optimism = 40,
		irony = 60, curiosity = 30 } },
	{ id = "traveler", traits = { optimism = 80, curiosity = 90, spirituality = 70, patriotism = 20, altruism = 55,
		irony = 40 } },
	{ id = "guardian", traits = { altruism = 80, idealism = 80, spirituality = 90, patriotism = 70, stoicism = 55,
		irony = 15, curiosity = 40 } },
	{ id = "rogue", traits = { altruism = 25, concreteness = 80, spirituality = 10, patriotism = 20, ambition = 60,
		idealism = 30, irony = 90, curiosity = 60 } },
	{ id = "scholar", traits = { stoicism = 80, curiosity = 95, spirituality = 10, idealism = 50, concreteness = 60,
		irony = 45 } },
	{ id = "avenger", traits = { vengefulness = 85, idealism = 50, spirituality = 35, optimism = 35, stoicism = 30,
		irony = 25, curiosity = 25 } },
	{ id = "penitent", traits = { optimism = 20, idealism = 50, spirituality = 70, altruism = 60, irony = 20,
		curiosity = 50 } },
	{ id = "patriot", traits = { patriotism = 90, ambition = 65, idealism = 70, stoicism = 60, optimism = 60,
		irony = 20, curiosity = 35 } },
	{ id = "dreamer", traits = { concreteness = 15, optimism = 70, curiosity = 75, idealism = 75, spirituality = 60,
		irony = 30 } },
}

---@param id string
---@return AUArchetype?, integer?
function Personality:GetArchetype(id)
	for i, a in ipairs(self.archetypes) do
		if a.id == id then return a, i end
	end
	return nil
end

---Aggiunge un archetipo (un pacchetto può offrirne altri). I tratti si puliscono come ogni profilo.
---@param id string
---@param traits AUTraits
---@param info? { name?: string, help?: string }
function Personality:RegisterArchetype(id, traits, info)
	if type(id) ~= "string" or id == "" or id == "custom" then return false end
	local clean = Traits.Sanitize(traits)
	local existing = self:GetArchetype(id)
	if existing then
		existing.traits = clean
	else
		table.insert(self.archetypes, { id = id, traits = clean, name = info and info.name, help = info and info.help })
	end
	return true
end

function Personality:ArchetypeName(id)
	if id == "custom" then return NS:L("soul_arch_custom") end
	local a = self:GetArchetype(id)
	local key = "soul_arch_" .. id
	local s = NS:L(key)
	return s ~= key and s or (a and a.name) or id
end

function Personality:ArchetypeHelp(id)
	if id == "custom" then return NS:L("soul_arch_custom_help") end
	local a = self:GetArchetype(id)
	local key = "soul_arch_" .. id .. "_help"
	local s = NS:L(key)
	return s ~= key and s or (a and a.help) or ""
end

---------------------------------------------------------------------------
-- Dati salvati
---------------------------------------------------------------------------
Personality.rev = 0
Personality.cache = nil
Personality.gameLayers = {}
Personality.gameOrder = {}

---Il profilo salvato del personaggio (creato e ripulito se manca o è rovinato).
---@return AUPersonalityProfile
function Personality:Profile()
	local c = NS.cdb
	if not c then return { version = self.VERSION, archetype = "neutral", traits = {}, trp3 = false } end
	local p = c.personality
	if type(p) ~= "table" then
		p = {}
		c.personality = p
	end
	if type(p.traits) ~= "table" then p.traits = {} end
	if type(p.archetype) ~= "string" then p.archetype = "neutral" end
	if type(p.trp3) ~= "boolean" then p.trp3 = false end
	if type(p.version) ~= "number" or p.version < self.VERSION then self:Migrate(p) end
	p.version = self.VERSION
	return p
end

---Converte un profilo della versione 1 (scelte esclusive di S5) in intensità (R4, #96, ADR 0030). Un archetipo scelto
---diventa la sua preimpostazione; scelte personalizzate passano da FromLegacy. Le scelte di prima restano in
---`legacy` (solo identificatori), la voce interiore, gli argomenti da evitare, la curiosità e l'ironia non cambiano.
---@param p AUPersonalityProfile
function Personality:Migrate(p)
	local old = type(p.traits) == "table" and p.traits or {}
	local legacy
	for _, trait in ipairs(self.LEGACY) do
		local v = old[trait]
		if type(v) == "string" and Traits.defs[trait].valid[v] then
			legacy = legacy or {}
			legacy[trait] = v
		end
	end
	local preset = p.archetype ~= "neutral" and p.archetype ~= "custom" and self:GetArchetype(p.archetype)
	local traits
	if preset then
		traits = Traits.Copy(preset.traits)
		-- voce interiore e argomenti non fanno parte di un archetipo
		traits.innerVoice, traits.avoid = old.innerVoice, old.avoid
	else
		traits = self.FromLegacy(old)
	end
	p.traits = traits
	p.legacy = legacy
	p.version = self.VERSION
end

---Pulisce i dati salvati (un tratto sconosciuto o un valore sbagliato si scarta: il profilo non rompe mai l'addon).
---@return integer dropped
function Personality:Sanitize()
	local p = self:Profile()
	local clean, dropped = Traits.Sanitize(p.traits)
	-- un vecchio tratto a scelta in un profilo della versione 2 (file modificato a mano): diventa intensità
	clean = self.FromLegacy(clean)
	p.traits = clean
	if p.base ~= nil and not (type(p.base) == "string" and self:GetArchetype(p.base)) then p.base = nil end
	if p.legacy ~= nil then
		local keep
		for trait, v in pairs(type(p.legacy) == "table" and p.legacy or {}) do
			local def = self.MIGRATION[trait] and Traits.defs[trait]
			if def and type(v) == "string" and def.valid[v] then
				keep = keep or {}
				keep[trait] = v
			end
		end
		p.legacy = keep
	end
	if p.archetype ~= "neutral" and p.archetype ~= "custom" and not self:GetArchetype(p.archetype) then
		p.archetype = Traits.IsEmpty(clean) and "neutral" or "custom"
		dropped = dropped + 1
	end
	self:Refresh()
	return dropped
end

---Invalida la cache del profilo effettivo (dopo ogni cambiamento di scelte, consenso o Total RP 3).
function Personality:Refresh()
	self.rev = self.rev + 1
	self.cache = nil
end

---------------------------------------------------------------------------
-- Profilo effettivo: scelta esplicita > Total RP 3 > dati di gioco > valori neutri
---------------------------------------------------------------------------
---Registra una fonte di tendenze dai dati di gioco (classe, razza, fazione...), la meno importante delle tre.
---`fn` restituisce un profilo parziale. S5 non ne imposta nessuna: razza, fazione e classe non decidono il
---carattere (GDD §5.4); una tendenza debole può aggiungerla S6c, dove sensato.
---@param name string
---@param fn? fun(): AUTraits nil per toglierla
function Personality:RegisterGameLayer(name, fn)
	if type(name) ~= "string" then return end
	if fn == nil then
		self.gameLayers[name] = nil
		for i, n in ipairs(self.gameOrder) do
			if n == name then table.remove(self.gameOrder, i); break end
		end
	else
		if not self.gameLayers[name] then table.insert(self.gameOrder, name) end
		self.gameLayers[name] = fn
	end
	self:Refresh()
end

local function SafeLayer(name, fn)
	local ok, traits = pcall(fn)
	if ok and type(traits) == "table" then return (Traits.Sanitize(Personality.FromLegacy(traits))) end
	if not ok and NS.Diagnostics then NS.Diagnostics:Error("soul:game:" .. name, traits) end
	return nil
end

---@return AUTraits traits profilo effettivo (solo i tratti impostati: il resto è neutro)
---@return table<string, string> sources [tratto] = "explicit" | "trp3" | "game"
function Personality:Effective()
	local now = GetTime and GetTime() or 0
	local cache = self.cache
	if cache and cache.rev == self.rev and now - cache.at < self.CACHE_SECONDS then
		return cache.traits, cache.sources
	end
	local profile = self:Profile()
	local layers = { { name = "explicit", traits = Traits.Sanitize(profile.traits) } }
	if profile.trp3 and NS.TotalRP3 then
		local ok, read = pcall(NS.TotalRP3.GetSoulTraits, NS.TotalRP3)
		if ok and type(read) == "table" then
			-- Total RP 3 dà valori dei vecchi tratti a scelta: diventano intensità come un profilo della versione 1
			table.insert(layers, { name = "trp3", traits = Traits.Sanitize(Personality.FromLegacy(read)) })
		elseif not ok and NS.Diagnostics then
			NS.Diagnostics:Error("soul:trp3", read)
		end
	end
	for _, name in ipairs(self.gameOrder) do
		local layer = SafeLayer(name, self.gameLayers[name])
		if layer then table.insert(layers, { name = "game", traits = layer }) end
	end
	local traits, sources = Traits.Merge(layers)
	self.cache = { rev = self.rev, at = now, traits = traits, sources = sources }
	return traits, sources
end

---@return boolean true se il profilo effettivo non ha alcun tratto: il narratore resta com'è
function Personality:IsNeutral()
	return Traits.IsEmpty((self:Effective()))
end

---------------------------------------------------------------------------
-- Modifica delle scelte (interfaccia e comandi)
---------------------------------------------------------------------------
---Sceglie un archetipo: le sue scelte sostituiscono quelle esplicite. "neutral" azzera i tratti.
---@param id string
---@return boolean ok
function Personality:SetArchetype(id)
	local a = self:GetArchetype(id)
	if not a then return false end
	local p = self:Profile()
	-- la voce interiore e gli argomenti da evitare non fanno parte di un archetipo: restano come sono (tranne neutral)
	local keep = a.id ~= "neutral" and { innerVoice = p.traits.innerVoice, avoid = p.traits.avoid } or {}
	p.traits = Traits.Copy(a.traits)
	p.traits.innerVoice, p.traits.avoid = keep.innerVoice, keep.avoid
	p.archetype = a.id
	p.base = nil
	self:Refresh()
	return true
end

---Imposta o toglie (value = nil) una scelta esplicita. Per `avoid` il valore è una tabella { argomento = true }.
---Cambiare un tratto fa diventare "personalizzato" il profilo.
---@param id string
---@param value any
---@return boolean ok
function Personality:SetTrait(id, value)
	local def = Traits.defs[id]
	if not def then return false end
	-- un vecchio tratto a scelta (API di S5): imposta gli assi corrispondenti
	if self.MIGRATION[id] then return value ~= nil and self:SetLegacy(id, value) end
	local p = self:Profile()
	if value == nil then
		p.traits[id] = nil
	else
		local clean = Traits.Sanitize({ [id] = value })
		if clean[id] == nil then return false end
		p.traits[id] = clean[id]
	end
	if p.archetype ~= "custom" and p.archetype ~= "neutral" then p.base = p.archetype end
	p.archetype = Traits.IsEmpty(p.traits) and "neutral" or "custom"
	if p.archetype == "neutral" then p.base = nil end
	self:Refresh()
	return true
end

---Imposta gli assi che corrispondono a un valore di un vecchio tratto a scelta (/au soul temperament stoic):
---la stessa conversione dei profili della versione 1.
---@param trait string temperament | morality | faith | motivation
---@param value string
---@return boolean ok
function Personality:SetLegacy(trait, value)
	local map = self.MIGRATION[trait] and self.MIGRATION[trait][value]
	if not map then return false end
	for axis, v in pairs(map) do self:SetTrait(axis, v) end
	return true
end

---Toglie le scelte esplicite degli assi da cui un vecchio tratto a scelta si legge (/au soul faith -).
---@param trait string
function Personality:ClearLegacy(trait)
	for _, rule in pairs(Traits.defs[trait] and Traits.defs[trait].derive or {}) do self:SetTrait(rule[1], nil) end
end

---I valori di un vecchio tratto a scelta che un profilo ha adesso, letti dagli assi ("Stoico, Risoluto").
---@param trait string
---@param traits AUTraits
---@return string?
function Personality:DescribeLegacy(trait, traits)
	local def, names = Traits.defs[trait], {}
	for _, value in ipairs(def.values) do
		if Traits.Has(def, traits, value) then table.insert(names, Traits.ValueName(trait, value)) end
	end
	return #names > 0 and table.concat(names, ", ") or nil
end

---Aggiunge o toglie un argomento da evitare.
---@param topic string
---@return boolean? on nuovo stato, nil se l'argomento non esiste
function Personality:ToggleTopic(topic)
	local def = Traits.defs.avoid
	if not def.valid[topic] then return nil end
	local p = self:Profile()
	local set = Traits.Copy({ avoid = p.traits.avoid }).avoid or {}
	local on = not set[topic]
	set[topic] = on or nil
	self:SetTrait("avoid", next(set) ~= nil and set or nil)
	return on
end

---Profilo neutro: nessuna scelta esplicita (il consenso a Total RP 3 non cambia).
function Personality:Reset()
	return self:SetArchetype("neutral")
end

---Consenso a leggere i tratti dal profilo pubblico del proprio personaggio in Total RP 3.
---@param on boolean
function Personality:SetTRP3Consent(on)
	self:Profile().trp3 = on == true
	self:Refresh()
end

---------------------------------------------------------------------------
-- Pesi: il fattore P
---------------------------------------------------------------------------
local function HasIronyTag(tags)
	if not tags then return false end
	for tag in pairs(tags) do
		if tag:sub(1, 6) == "irony:" then return true end
	end
	return false
end

---Fattore P del peso di una frase (0 la esclude). Neutro (1) senza tratti.
---@param entry AUPhrase
---@param ctx table
---@return number
function Personality.Factor(entry, ctx)
	local soul = ctx and ctx.soul
	if soul == nil then soul = Personality:Effective() end
	-- senza tratti e senza tag la frase è neutra; un tag req: invece si valuta anche col profilo neutro
	if next(entry.tags) == nil and Traits.IsEmpty(soul) then return 1 end
	local f = Traits.Evaluate(entry.tags, soul)
	if f == 0 then return 0 end
	if entry.speaker == "inner" and soul.innerVoice then
		f = f * (Personality.INNER_FACTOR[soul.innerVoice] or 1)
		if f == 0 then return 0 end
	end
	-- l'ironia pesa le frasi di registro ironico anche senza un tag esplicito
	if soul.irony and NS.Engine.Tone(entry) == "ironic" and not HasIronyTag(entry.tags) then
		f = f * (Personality.IRONY_FACTOR[Traits.Band(Traits.defs.irony, soul.irony)] or 1)
	end
	return math.max(Traits.MIN_FACTOR, math.min(Traits.MAX_FACTOR, f))
end

---Perché una frase è esclusa dal profilo attuale (per /au debug e i test), nil se non lo è.
---@param entry AUPhrase
---@param soul? AUTraits
---@return string?
function Personality:ExcludedBy(entry, soul)
	soul = soul or (self:Effective())
	local f, reason = Traits.Evaluate(entry.tags, soul)
	if f == 0 then return reason end
	if entry.speaker == "inner" and soul.innerVoice == "off" then return "innerVoice:off" end
	return nil
end

Engine:SetWeightHook("P", "soul", Personality.Factor)

---------------------------------------------------------------------------
-- Registri: il temperamento sposta ciò che il narratore preferisce (GDD §5.2)
---------------------------------------------------------------------------
Personality.STYLE_PREFERENCES = {
	temperament = {
		resolute = { "epic" }, merciful = { "ceremonial", "intimate" }, stoic = { "ancient" }, cheerful = { "everyday" },
		melancholic = { "tragic", "intimate" }, gruff = { "everyday", "ironic" }, fierce = { "epic", "tragic" },
	},
	morality = {
		righteous = { "epic" }, pragmatic = { "everyday" }, conflicted = { "intimate" },
		disillusioned = { "tragic", "ironic" }, hopeful = { "ceremonial", "epic" },
	},
	faith = {
		devout = { "ceremonial" }, spiritual = { "ancient", "ceremonial" }, doubting = { "intimate" }, skeptic = { "ironic" },
	},
}

NS.StyleResolver:SetModifier("soul", function(profile, ctx)
	local soul = ctx and ctx.soul
	if soul == nil then soul = Personality:Effective() end
	if next(soul) == nil then return end
	-- i valori si leggono anche dagli assi (R4): con le intensità più tendenze possono convivere
	for _, trait in ipairs(Personality.LEGACY) do
		local map, def = Personality.STYLE_PREFERENCES[trait], Traits.defs[trait]
		if map then
			for _, value in ipairs(def.values) do
				if map[value] and Traits.Has(def, soul, value) then
					for _, style in ipairs(map[value]) do NS.StyleResolver.Prefer(profile, style) end
				end
			end
		end
	end
	if soul.irony and Traits.Band(Traits.defs.irony, soul.irony) == "high" then NS.StyleResolver.Prefer(profile, "ironic") end
	-- l'esempio del GDD §5.2: contro un non morto una personalità misericordiosa preferisce il tono solenne
	if ctx and ctx.ctype == "undead" and Traits.Has(Traits.defs.temperament, soul, "merciful") then
		NS.StyleResolver.Prefer(profile, "ceremonial")
	end
end)

---------------------------------------------------------------------------
-- Condizione delle regole: soul = { temperament = "stoic", faith = { "devout", "spiritual" } }
---------------------------------------------------------------------------
NS:RegisterCondition("soul", function(value, ctx)
	if type(value) ~= "table" then return false end
	local soul = ctx.soul
	if type(soul) ~= "table" then return false end
	for trait, wanted in pairs(value) do
		local def = Traits.defs[trait]
		if not def then return false end
		local ok = false
		for _, w in ipairs(Engine.AsList(wanted)) do
			if Traits.Has(def, soul, w) then ok = true; break end
		end
		if not ok then return false end
	end
	return true
end, "any")

---------------------------------------------------------------------------
-- Testo: riepilogo e comandi
---------------------------------------------------------------------------
local SOURCE_KEY = { explicit = "soul_src_explicit", trp3 = "soul_src_trp3", game = "soul_src_game" }

---Righe di riepilogo del profilo effettivo, con la fonte di ogni tratto.
---@return string[]
function Personality:Summary()
	local traits, sources = self:Effective()
	local profile = self:Profile()
	local lines = { NS:L("soul_summary", self:ArchetypeLabel(profile)) }
	for _, id in ipairs(self.TRAIT_ORDER) do
		local def = Traits.defs[id]
		local text = self:DescribeTrait(id, traits)
		local src = sources[id] and NS:L(SOURCE_KEY[sources[id]]) or NS:L("soul_src_neutral")
		table.insert(lines, ("  %s: %s (%s)"):format(Traits.Name(id), text or NS:L("soul_none"), src))
	end
	if NS.TotalRP3 and NS.TotalRP3:IsPresent() then
		table.insert(lines, NS:L("soul_trp3_state", profile.trp3 and NS:L("on") or NS:L("off")))
	end
	return lines
end

---Testo del valore di un tratto: per un asse bipolare con il polo ("70 (idealista)").
---@param id string
---@param traits AUTraits
---@return string?
function Personality:DescribeTrait(id, traits)
	local def = Traits.defs[id]
	local v = traits[id]
	if self.BIPOLAR[id] and type(v) == "number" then
		local band = Traits.Band(def, v)
		local word = band == "mid" and NS:L("soul_pole_balanced") or NS:L("soul_pole_" .. id .. "_" .. band)
		return ("%d (%s)"):format(math.floor(v + 0.5), word)
	end
	return Traits.Describe(def, traits)
end

---Il nome dell'archetipo del profilo; un profilo personalizzato dice da quale preimpostazione è partito.
---@param profile AUPersonalityProfile
---@return string
function Personality:ArchetypeLabel(profile)
	if profile.archetype == "custom" and profile.base and self:GetArchetype(profile.base) then
		return NS:L("soul_arch_from", self:ArchetypeName(profile.base))
	end
	return self:ArchetypeName(profile.archetype)
end

local function Say(key, ...) NS:Print(NS:L(key, ...)) end

local CLEAR_WORDS = NS.Keywords.Register("soul.clear", { ["-"] = true, none = true, reset = true, neutral = true })

---Comando `/au soul ...`. Senza argomenti apre la finestra del profilo.
---@param rest string
function Personality:Command(rest)
	rest = rest or ""
	local word, arg = rest:match("^([^ ]*) *(.-) *$")
	word = NS.Lower(word or "")
	if word == "" then
		if NS.ProfileFrame and NS.ProfileFrame:Toggle() then return end
		word = "list"
	end
	local action = SOUL_WORDS[word]
	if action == "list" then
		for _, line in ipairs(self:Summary()) do NS:Print(line) end
	elseif action == "neutral" then
		self:Reset()
		Say("soul_reset_done")
	elseif action == "archetype" then
		local id = NS.Lower(arg)
		if id == "" then
			local names = {}
			for _, a in ipairs(self.archetypes) do table.insert(names, a.id .. " = " .. self:ArchetypeName(a.id)) end
			Say("soul_arch_list", table.concat(names, ", "))
			return
		end
		local found
		for _, a in ipairs(self.archetypes) do
			if a.id == id then found = a.id; break end
		end
		if found and self:SetArchetype(found) then
			Say("soul_arch_set", self:ArchetypeName(found))
		else
			local ids = {}
			for _, a in ipairs(self.archetypes) do table.insert(ids, a.id) end
			Say("invalid_value", arg, table.concat(ids, ", "))
		end
	elseif action == "trp3" then
		if not (NS.TotalRP3 and NS.TotalRP3:IsPresent()) then
			Say("soul_trp3_absent")
			return
		end
		local a = NS.Lower(arg)
		local on = NS.Keywords.OnOff(a)
		if on ~= nil then self:SetTRP3Consent(on) end
		Say("soul_trp3_state", self:Profile().trp3 and NS:L("on") or NS:L("off"))
	else
		local id = TRAIT_ALIAS[word]
		if not id then
			Say("soul_help")
			return
		end
		local def = Traits.defs[id]
		if self.MIGRATION[id] then
			-- una vecchia parola: imposta (o toglie) gli assi che le corrispondono, o dice quali valori valgono adesso
			if arg == "" then
				Say("soul_value", Traits.Name(id), self:DescribeLegacy(id, (self:Effective())) or NS:L("soul_none"))
			elseif CLEAR_WORDS[NS.Lower(arg)] then
				self:ClearLegacy(id)
				Say("soul_cleared", Traits.Name(id))
			else
				local value = Traits.ParseValue(def, arg)
				if value and self:SetLegacy(id, value) then
					Say("soul_legacy_set", Traits.ValueName(id, value))
				else
					Say("invalid_value", arg, table.concat(def.values, ", "))
				end
			end
		elseif def.kind == "set" then
			local topic = Traits.ParseValue(def, arg)
			if topic then
				local on = self:ToggleTopic(topic)
				Say(on and "soul_avoid_on" or "soul_avoid_off", Traits.ValueName(id, topic))
			elseif arg ~= "" and CLEAR_WORDS[NS.Lower(arg)] then
				self:SetTrait(id, nil)
				Say("soul_cleared", Traits.Name(id))
			elseif arg ~= "" then
				local names = {}
				for _, v in ipairs(def.values) do table.insert(names, v) end
				Say("invalid_value", arg, table.concat(names, ", "))
			end
		elseif arg == "" then
			local traits = self:Effective()
			Say("soul_value", Traits.Name(id), self:DescribeTrait(id, traits) or NS:L("soul_none"))
		elseif CLEAR_WORDS[NS.Lower(arg)] then
			self:SetTrait(id, nil)
			Say("soul_cleared", Traits.Name(id))
		else
			local value = Traits.ParseValue(def, arg)
			if value ~= nil and self:SetTrait(id, value) then
				Say("soul_set", Traits.Name(id), self:DescribeTrait(id, self:Profile().traits) or "")
			else
				local names = {}
				for _, v in ipairs(def.values or {}) do table.insert(names, v) end
				if def.kind == "scale" then names = { "0-100", "low", "mid", "high" } end
				Say("invalid_value", arg, table.concat(names, ", "))
			end
		end
	end
	if NS.ProfileFrame then NS.ProfileFrame:Refresh() end
end

function Personality:OnInit()
	self:Sanitize()
end
