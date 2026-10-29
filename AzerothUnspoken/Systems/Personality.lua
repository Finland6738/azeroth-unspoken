-- Azeroth Unspoken: Character Soul, la personalità del personaggio del giocatore (GDD §7.1, ADR 0016).
-- Tratti opt-in: temperamento, morale, curiosità, fede, motivazione, ironia, argomenti da evitare, voce interiore.
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
---@field version integer
---@field archetype string neutral | id di un archetipo | custom
---@field traits AUTraits scelte esplicite
---@field trp3 boolean consenso a leggere i tratti dal profilo pubblico del proprio personaggio in Total RP 3

---@class AUPersonality
local Personality = NS:RegisterModule("personality")
NS.Personality = Personality

Personality.VERSION = 1
Personality.CACHE_SECONDS = 15   -- ogni quanto si rilegge il profilo di Total RP 3

---------------------------------------------------------------------------
-- Tratti del personaggio
---------------------------------------------------------------------------
-- Fasce delle scale 0-100
local BANDS = { { "low", 33 }, { "mid", 66 }, { "high", 100 } }

Traits.Define({ id = "temperament", kind = "choice",
	values = { "resolute", "merciful", "stoic", "cheerful", "melancholic", "gruff", "fierce" } })
Traits.Define({ id = "morality", kind = "choice",
	values = { "righteous", "pragmatic", "conflicted", "disillusioned", "hopeful" } })
Traits.Define({ id = "curiosity", kind = "scale", min = 0, max = 100, bands = BANDS })
Traits.Define({ id = "faith", kind = "choice", values = { "devout", "spiritual", "doubting", "skeptic" } })
Traits.Define({ id = "motivation", kind = "choice",
	values = { "duty", "vengeance", "glory", "knowledge", "redemption", "freedom", "protection" } })
Traits.Define({ id = "irony", kind = "scale", min = 0, max = 100, bands = BANDS })
-- gli argomenti da evitare non si contraddicono mai: un tag topic:morte esclude la frase
Traits.Define({ id = "avoid", kind = "set", tag = "topic", exclusive = true, hard = true,
	values = { "death", "blood", "betrayal", "family", "religion", "undead", "demons", "romance" } })
-- la voce interiore: off esclude ogni pensiero (speaker inner); le altre ne cambiano la frequenza
Traits.Define({ id = "innerVoice", kind = "choice", hard = true,
	values = { "off", "quiet", "present", "vivid" } })

-- ordine di presentazione nell'interfaccia e nei comandi
Personality.TRAIT_ORDER = { "temperament", "morality", "curiosity", "faith", "motivation", "irony", "innerVoice", "avoid" }

-- alias dei comandi (/au anima <tratto> ...), in italiano e in inglese
local TRAIT_ALIAS = {
	temperament = "temperament", temperamento = "temperament", morality = "morality", morale = "morality",
	curiosity = "curiosity", curiosita = "curiosity", ["curiosità"] = "curiosity", faith = "faith", fede = "faith",
	motivation = "motivation", motivazione = "motivation", irony = "irony", ironia = "irony",
	avoid = "avoid", evita = "avoid", topic = "avoid", innervoice = "innerVoice", voce = "innerVoice",
	inner = "innerVoice",
}

-- fattori della voce interiore sulle frasi con speaker "inner" (off = 0 = esclusione)
Personality.INNER_FACTOR = { off = 0, quiet = 0.5, present = 1, vivid = 1.6 }
-- fattori dell'ironia sulle frasi di registro ironico che non portano un tag irony:
Personality.IRONY_FACTOR = { low = 0.5, mid = 1, high = 1.5 }

---------------------------------------------------------------------------
-- Archetipi
---------------------------------------------------------------------------
---@class AUArchetype
---@field id string
---@field traits AUTraits
---@field name? string nome di ripiego se l'interfaccia non ha la chiave soul_arch_<id>
---@field help? string

---@type AUArchetype[]
Personality.archetypes = {
	{ id = "neutral", traits = {} },
	{ id = "veteran", traits = { temperament = "stoic", morality = "disillusioned", faith = "doubting",
		motivation = "duty", irony = 60, curiosity = 30 } },
	{ id = "traveler", traits = { temperament = "cheerful", morality = "hopeful", faith = "spiritual",
		motivation = "freedom", irony = 40, curiosity = 90 } },
	{ id = "guardian", traits = { temperament = "merciful", morality = "righteous", faith = "devout",
		motivation = "protection", irony = 15, curiosity = 40 } },
	{ id = "rogue", traits = { temperament = "gruff", morality = "pragmatic", faith = "skeptic",
		motivation = "freedom", irony = 90, curiosity = 60 } },
	{ id = "scholar", traits = { temperament = "stoic", morality = "conflicted", faith = "skeptic",
		motivation = "knowledge", irony = 45, curiosity = 95 } },
	{ id = "avenger", traits = { temperament = "fierce", morality = "conflicted", faith = "doubting",
		motivation = "vengeance", irony = 25, curiosity = 25 } },
	{ id = "penitent", traits = { temperament = "melancholic", morality = "conflicted", faith = "spiritual",
		motivation = "redemption", irony = 20, curiosity = 50 } },
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
	p.version = self.VERSION
	return p
end

---Pulisce i dati salvati (un tratto sconosciuto o un valore sbagliato si scarta: il profilo non rompe mai l'addon).
---@return integer dropped
function Personality:Sanitize()
	local p = self:Profile()
	local clean, dropped = Traits.Sanitize(p.traits)
	p.traits = clean
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
	if ok and type(traits) == "table" then return (Traits.Sanitize(traits)) end
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
			table.insert(layers, { name = "trp3", traits = Traits.Sanitize(read) })
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
	p.traits = Traits.Copy(a.traits)
	p.archetype = a.id
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
	local p = self:Profile()
	if value == nil then
		p.traits[id] = nil
	else
		local clean = Traits.Sanitize({ [id] = value })
		if clean[id] == nil then return false end
		p.traits[id] = clean[id]
	end
	p.archetype = Traits.IsEmpty(p.traits) and "neutral" or "custom"
	self:Refresh()
	return true
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
	if soul.irony and entry.tone == "ironic" and not HasIronyTag(entry.tags) then
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
	for trait, map in pairs(Personality.STYLE_PREFERENCES) do
		for _, style in ipairs(map[soul[trait]] or {}) do NS.StyleResolver.Prefer(profile, style) end
	end
	if soul.irony and Traits.Band(Traits.defs.irony, soul.irony) == "high" then NS.StyleResolver.Prefer(profile, "ironic") end
	-- l'esempio del GDD §5.2: contro un non morto una personalità misericordiosa preferisce il tono solenne
	if soul.temperament == "merciful" and ctx and ctx.ctype == "undead" then
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
	local lines = { NS:L("soul_summary", self:ArchetypeName(profile.archetype)) }
	for _, id in ipairs(self.TRAIT_ORDER) do
		local def = Traits.defs[id]
		local text = Traits.Describe(def, traits)
		local src = sources[id] and NS:L(SOURCE_KEY[sources[id]]) or NS:L("soul_src_neutral")
		table.insert(lines, ("  %s: %s (%s)"):format(Traits.Name(id), text or NS:L("soul_none"), src))
	end
	if NS.TotalRP3 and NS.TotalRP3:IsPresent() then
		table.insert(lines, NS:L("soul_trp3_state", profile.trp3 and NS:L("on") or NS:L("off")))
	end
	return lines
end

local function Say(key, ...) NS:Print(NS:L(key, ...)) end

local CLEAR_WORDS = { ["-"] = true, none = true, nessuno = true, reset = true, neutro = true, neutral = true }

---Comando `/au anima ...`. Senza argomenti apre la finestra del profilo.
---@param rest string
function Personality:Command(rest)
	rest = rest or ""
	local word, arg = rest:match("^([^ ]*) *(.-) *$")
	word = NS.Lower(word or "")
	if word == "" then
		if NS.ProfileFrame and NS.ProfileFrame:Toggle() then return end
		word = "lista"
	end
	if word == "lista" or word == "list" or word == "mostra" or word == "show" then
		for _, line in ipairs(self:Summary()) do NS:Print(line) end
	elseif word == "neutro" or word == "neutral" or word == "reset" then
		self:Reset()
		Say("soul_reset_done")
	elseif word == "archetipo" or word == "archetype" or word == "arch" then
		local id = NS.Lower(arg)
		if id == "" then
			local names = {}
			for _, a in ipairs(self.archetypes) do table.insert(names, a.id .. " = " .. self:ArchetypeName(a.id)) end
			Say("soul_arch_list", table.concat(names, ", "))
			return
		end
		local found
		for _, a in ipairs(self.archetypes) do
			if a.id == id or NS.Lower(self:ArchetypeName(a.id)) == id then found = a.id; break end
		end
		if found and self:SetArchetype(found) then
			Say("soul_arch_set", self:ArchetypeName(found))
		else
			Say("invalid_value", arg, "neutral, veteran, traveler, guardian, rogue, scholar, avenger, penitent")
		end
	elseif word == "trp3" then
		if not (NS.TotalRP3 and NS.TotalRP3:IsPresent()) then
			Say("soul_trp3_absent")
			return
		end
		local a = NS.Lower(arg)
		if a == "on" or a == "si" or a == "sì" or a == "yes" then
			self:SetTRP3Consent(true)
		elseif a == "off" or a == "no" then
			self:SetTRP3Consent(false)
		end
		Say("soul_trp3_state", self:Profile().trp3 and NS:L("on") or NS:L("off"))
	else
		local id = TRAIT_ALIAS[word]
		if not id then
			Say("soul_help")
			return
		end
		local def = Traits.defs[id]
		if def.kind == "set" then
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
			Say("soul_value", Traits.Name(id), Traits.Describe(def, traits) or NS:L("soul_none"))
		elseif CLEAR_WORDS[NS.Lower(arg)] then
			self:SetTrait(id, nil)
			Say("soul_cleared", Traits.Name(id))
		else
			local value = Traits.ParseValue(def, arg)
			if value ~= nil and self:SetTrait(id, value) then
				Say("soul_set", Traits.Name(id), Traits.Describe(def, self:Profile().traits) or "")
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
