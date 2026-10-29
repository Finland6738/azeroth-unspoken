-- Azeroth Unspoken: registro delle regole, dei testi, delle cornici e del vocabolario (schema v2).
-- Il motore non contiene testi: legge solo ciò che i pacchetti registrano con RegisterPack.
-- Le regole (evento, voce, registro, profondità, peso, condizioni) sono separate dai testi per lingua;
-- ogni id può avere più varianti in ogni lingua. Il formato vecchio (phrases = { { it=, en= } }) si converte qui.
local ADDON, NS = ...
local Engine = {}
NS.Engine = Engine

---@class AUVariant una variante di testo di una frase in una lingua
---@field t string testo, con i segnaposto
---@field ok boolean false se vuota o non è una stringa (resta nel registro per il validatore)
---@field depth? table<string, boolean> profondità per cui la variante è scritta; assente = tutte
---@field pack string pacchetto che l'ha registrata

---@class AUPhrase una frase registrata: la regola e i suoi testi
---@field id string
---@field pack string pacchetto proprietario della regola
---@field events string[] eventi in cui può comparire
---@field category string
---@field speaker "narrator"|"inner"|"character"|"npc"
---@field form "say"|"emote" say = parlata, emote = narrativa in terza persona (senza il nome)
---@field styles string[] registri (GDD §5.1); il primo è quello principale
---@field tone? string primo registro, usato dalla differenziazione dei registri
---@field depth? table<string, boolean> profondità per cui la frase è scritta; assente = tutte
---@field tags table<string, boolean>
---@field weight number
---@field cooldown? number secondi prima che la frase possa tornare
---@field when? table condizioni (alias: conditions)
---@field spec integer numero di condizioni: le frasi più specifiche pesano di più
---@field text table<string, AUVariant[]> [codice lingua breve] = varianti
---@field legacy boolean convertita dal formato vecchio

---@class AURegistryEntry la regola di una frase nel formato v2
---@field event string|string[]
---@field category? string se manca si usa quella dell'evento
---@field speaker? string narrator | inner | character | npc
---@field form? string say | emote (predefinito: emote per il narratore, say per le altre voci)
---@field styles? string[]
---@field depth? string|string[] natural | literary | elevated
---@field tags? string[]
---@field weight? number
---@field cooldown? number
---@field conditions? table

Engine.packs = {}       -- [id] = pacchetto
Engine.packOrder = {}
Engine.byEvent = {}     -- [evento] = { frase, ... }
Engine.byId = {}        -- [id frase] = frase
Engine.frames = {}      -- [evento o "*"] = { cornice, ... }
Engine.vocab = {}       -- [nome] = { voce, ... }
Engine.events = {}      -- [evento] = { category, pack }
Engine.loadIssues = {}  -- problemi emersi in caricamento, per il validatore
Engine.pendingTexts = {} -- testi arrivati prima della loro regola: [id][lingua] = { varianti }

---------------------------------------------------------------------------
-- Vocabolari chiusi dello schema
---------------------------------------------------------------------------
-- Le quattro voci del GDD §5.3.
Engine.SPEAKERS = { narrator = true, inner = true, character = true, npc = true }

-- Profondità stilistica (GDD §4.3), dalla più semplice alla più elevata.
Engine.DEPTH_ORDER = { "natural", "literary", "elevated" }
Engine.DEPTHS = { natural = true, literary = true, elevated = true }

-- Registri del GDD §5.1. Un pacchetto ne può aggiungere con NS:RegisterStyle.
Engine.STYLES = {
	ancient = true,     -- antico e contemplativo
	epic = true,        -- epico ed eroico
	tragic = true,      -- tragico e oscuro
	intimate = true,    -- intimo e riflessivo
	everyday = true,    -- quotidiano
	ironic = true,      -- ironico
	ceremonial = true,  -- cerimoniale
}

-- Il vecchio campo "tone" dei pacchetti, in italiano, diventa un registro.
Engine.TONE_STYLE = {
	epico = "epic", eroico = "epic", feroce = "epic", solenne = "ceremonial", oscuro = "tragic",
	malinconico = "intimate", ironico = "ironic", mistico = "ancient",
}

Engine.CATEGORIES = { combat = true, spellcraft = true, life = true, exploration = true, reflection = true, social = true,
	general = true }

-- Eventi di base e la loro categoria. Un pacchetto ne aggiunge con NS:RegisterEvent o con `events = {}`.
local BASE_EVENTS = {
	battle = "combat", threat = "combat", victory = "combat", lowhp = "combat", attack = "combat",
	heal = "spellcraft", buff = "spellcraft", rezother = "spellcraft",
	death = "life", rez = "life", levelup = "life",
	zone = "exploration", travel = "exploration",
	muse = "reflection", pray = "reflection",
	greet = "social", farewell = "social", toast = "social", thanks = "social", jest = "social",
}
for ev, cat in pairs(BASE_EVENTS) do Engine.events[ev] = { category = cat, pack = "core" } end

---------------------------------------------------------------------------
-- Utilità
---------------------------------------------------------------------------
local function AsList(v)
	if type(v) == "table" then return v end
	return { v }
end
Engine.AsList = AsList

local function ToSet(v)
	if v == nil then return nil end
	local set = {}
	for _, x in ipairs(AsList(v)) do
		if type(x) == "string" then set[x] = true end
	end
	return set
end

local function SortedKeys(t)
	local keys = {}
	for k in pairs(t) do table.insert(keys, k) end
	table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)
	return keys
end
Engine.SortedKeys = SortedKeys

-- codice breve di una lingua: "it" e "itIT" -> "it"; nil se non è un codice lingua
-- (classi esplicite: %a e %u dipendono dalle impostazioni locali)
local function LangCode(k)
	if type(k) ~= "string" then return nil end
	if k:match("^[a-z][a-z]$") then return k end
	if k:match("^[a-z][a-z][A-Z][A-Z]$") then return k:sub(1, 2) end
	return nil
end
Engine.LangCode = LangCode

local function Issue(pack, code, id, msg)
	table.insert(Engine.loadIssues, { pack = pack and pack.id or pack, code = code, id = id, msg = msg })
end

-- numero di condizioni: le frasi più specifiche pesano di più
local function Specificity(when)
	if type(when) ~= "table" then return 0 end
	local n = 0
	for k in pairs(when) do
		if k ~= "chance" then n = n + 1 end
	end
	return n
end

local function Blank(s)
	return type(s) ~= "string" or not s:find("[^ \t\r\n]")
end

---------------------------------------------------------------------------
-- Testi e varianti
---------------------------------------------------------------------------
-- Una variante è una stringa oppure { "testo", depth = "elevated" } / { text = "testo", depth = {...} }.
-- Un elenco di varianti è una stringa, un elenco di varianti, o una sola variante in forma di tabella.
local function IsSingleVariant(v)
	return type(v) == "table" and (v.text ~= nil or v.depth ~= nil)
end

---@return AUVariant
local function MakeVariant(v, packId)
	local text, depth
	if type(v) == "table" then
		text, depth = v.text or v[1], v.depth
	else
		text = v
	end
	return { t = type(text) == "string" and text or "", ok = not Blank(text), depth = ToSet(depth), pack = packId,
		raw = (type(text) ~= "string") and type(text) or nil }
end

local function VariantList(list)
	if list == nil then return {} end
	if type(list) == "string" or IsSingleVariant(list) then return { list } end
	return list
end

-- aggiunge varianti a una lista di testi, senza duplicati identici
local function AppendVariants(target, list, packId)
	for _, v in ipairs(VariantList(list)) do
		local var = MakeVariant(v, packId)
		local dup = false
		for _, old in ipairs(target) do
			if old.t == var.t and var.ok then dup = true; break end
		end
		if not dup then table.insert(target, var) end
	end
end

-- testi di una voce di cornice o di vocabolario: text = { it = ..., itIT = ... } oppure it = ..., en = ...
-- (le chiavi di lingua possono contenere una stringa o un elenco di varianti)
local function NormalizeText(entry, packId)
	local text = {}
	local given = entry.text
	if type(given) == "string" then given = { it = given } end
	local sources = { given or {}, entry }
	for _, src in ipairs(sources) do
		for k, v in pairs(src) do
			-- "id" è il campo dell'identificatore, non il codice di una lingua: per quella si scrive "idID"
			local lang = (k ~= "id") and LangCode(k) or nil
			if lang and (type(v) == "string" or type(v) == "table") then
				text[lang] = text[lang] or {}
				AppendVariants(text[lang], v, packId)
			end
		end
	end
	entry.text = text
end

local function LegacyTones(tone)
	if tone == nil then return {} end
	local style = Engine.TONE_STYLE[tone] or tone
	return { style }
end

---------------------------------------------------------------------------
-- Regole
---------------------------------------------------------------------------
function Engine.EventCategory(event)
	local e = Engine.events[event]
	return e and e.category
end

-- Voce di ripiego quando la regola non la indica.
function Engine.DefaultSpeaker(form)
	return form == "emote" and "narrator" or "character"
end

local function DefaultForm(speaker)
	return speaker == "narrator" and "emote" or "say"
end

---Aggiunge una regola al registro.
---@param pack table
---@param id string
---@param e AURegistryEntry
---@param legacy? boolean
function Engine:AddEntry(pack, id, e, legacy)
	if type(id) ~= "string" or id == "" then
		Issue(pack, "badId", tostring(id), "id mancante o non è una stringa")
		return
	end
	if self.byId[id] then
		Issue(pack, "dupId", id, ("id duplicato (già nel pacchetto '%s')"):format(self.byId[id].pack))
		NS:Print(("id duplicato '%s' nel pacchetto '%s'"):format(id, pack.id))
		return
	end

	---@type AUPhrase
	local p = { id = id, pack = pack.id, legacy = legacy or false, text = {} }
	p.events = {}
	for _, ev in ipairs(AsList(e.event)) do
		if type(ev) == "string" and ev ~= "" then table.insert(p.events, ev) end
	end
	if #p.events == 0 then Issue(pack, "noEvent", id, "nessun evento") end

	-- voce e forma: il formato vecchio parte dalla forma, il nuovo dalla voce
	local speaker, form = e.speaker, e.form
	if form ~= nil and form ~= "say" and form ~= "emote" then
		Issue(pack, "badForm", id, ("form '%s' non valido"):format(tostring(form)))
		form = nil
	end
	if speaker ~= nil and not Engine.SPEAKERS[speaker] then
		Issue(pack, "badSpeaker", id, ("speaker '%s' non ammesso"):format(tostring(speaker)))
		speaker = nil
	end
	if legacy then
		form = form or "say"
		speaker = speaker or Engine.DefaultSpeaker(form)
	else
		if not speaker then
			Issue(pack, "noSpeaker", id, "speaker assente: dedotto dalla forma")
			speaker = Engine.DefaultSpeaker(form)
		end
		form = form or DefaultForm(speaker)
	end
	p.speaker, p.form = speaker, form

	p.category = e.category or Engine.EventCategory(p.events[1]) or "general"
	p.styles = {}
	for _, s in ipairs(e.styles and AsList(e.styles) or LegacyTones(e.tone)) do table.insert(p.styles, s) end
	p.tone = p.styles[1]
	p.depth = ToSet(e.depth)
	p.depthList = e.depth and AsList(e.depth) or nil
	p.tags = ToSet(e.tags) or {}

	local weight = e.weight
	if weight ~= nil and (type(weight) ~= "number" or weight <= 0) then
		Issue(pack, "badWeight", id, ("peso '%s' non valido"):format(tostring(weight)))
		weight = nil
	end
	p.weight = weight or 1
	local cooldown = e.cooldown or e.cooldownSeconds
	if cooldown ~= nil and (type(cooldown) ~= "number" or cooldown < 0) then
		Issue(pack, "badCooldown", id, ("cooldown '%s' non valido"):format(tostring(cooldown)))
		cooldown = nil
	end
	p.cooldown = cooldown

	local when = e.conditions or e.when
	if when ~= nil and type(when) ~= "table" then
		Issue(pack, "badConditions", id, "le condizioni devono essere una tabella")
		when = nil
	end
	p.when = when
	p.spec = Specificity(when)

	self.byId[id] = p
	for _, ev in ipairs(p.events) do
		self.byEvent[ev] = self.byEvent[ev] or {}
		table.insert(self.byEvent[ev], p)
	end
	pack.ids = pack.ids or {}
	table.insert(pack.ids, id)
	return p
end

-- converte una frase del formato vecchio nella regola v2 e nei suoi testi
function Engine:AddLegacyPhrase(pack, ph)
	if not ph.id then
		pack._auto = (pack._auto or 0) + 1
		ph.id = pack.id .. "#" .. pack._auto
	end
	local p = self:AddEntry(pack, ph.id, ph, true)
	if not p then return end
	NormalizeText(ph, pack.id)
	for lang, list in pairs(ph.text) do p.text[lang] = list end
end

---------------------------------------------------------------------------
-- Testi aggiunti (anche da altri pacchetti)
---------------------------------------------------------------------------
-- Aggiunge varianti alla frase `id` nella lingua. Se la frase non esiste ancora i testi aspettano.
function Engine:AddTexts(lang, id, list, packId)
	lang = LangCode(lang)
	if not lang or type(id) ~= "string" then return end
	packId = packId or "texts"
	local p = self.byId[id]
	if p then
		p.text[lang] = p.text[lang] or {}
		AppendVariants(p.text[lang], list, packId)
	else
		local byLang = self.pendingTexts[id] or {}
		self.pendingTexts[id] = byLang
		byLang[lang] = byLang[lang] or {}
		AppendVariants(byLang[lang], list, packId)
	end
end

function Engine:FlushPending()
	for id, byLang in pairs(self.pendingTexts) do
		local p = self.byId[id]
		if p then
			for lang, variants in pairs(byLang) do
				p.text[lang] = p.text[lang] or {}
				for _, var in ipairs(variants) do
					local dup = false
					for _, old in ipairs(p.text[lang]) do
						if old.t == var.t and var.ok then dup = true; break end
					end
					if not dup then table.insert(p.text[lang], var) end
				end
			end
			self.pendingTexts[id] = nil
		end
	end
end

-- Traduzioni e testi aggiuntivi: { [id frase] = "testo" | { "variante", ... } }
function Engine:AddTranslations(lang, map, packId)
	for id, list in pairs(map) do self:AddTexts(lang, id, list, packId) end
	self:FlushPending()
end

---------------------------------------------------------------------------
-- Cornici e vocabolario
---------------------------------------------------------------------------
function Engine:AddFrame(pack, f)
	NormalizeText(f, pack.id)
	f.pack = pack.id
	f.weight = f.weight or 1
	f.when = f.conditions or f.when
	f.spec = Specificity(f.when)
	-- registri della cornice (facoltativi): il StyleResolver non la unisce a una frase di registro lontano
	f.styles = f.styles and AsList(f.styles) or nil
	pack._autoFrame = (pack._autoFrame or 0) + 1
	f.id = f.id or (pack.id .. "#frame" .. pack._autoFrame)
	pack.frameList = pack.frameList or {}
	table.insert(pack.frameList, f)
	pack.langsUsed = pack.langsUsed or {}
	for lang in pairs(f.text) do pack.langsUsed[lang] = true end
	for _, ev in ipairs(AsList(f.event or "*")) do
		self.frames[ev] = self.frames[ev] or {}
		table.insert(self.frames[ev], f)
	end
end

function Engine:AddVocab(pack, name, entries)
	self.vocab[name] = self.vocab[name] or {}
	pack.vocabList = pack.vocabList or {}
	for i, v in ipairs(entries) do
		NormalizeText(v, pack.id)
		v.pack = pack.id
		v.name = name
		v.id = v.id or (pack.id .. "#" .. name .. i)
		v.weight = v.weight or 1
		v.when = v.conditions or v.when
		v.spec = Specificity(v.when)
		table.insert(self.vocab[name], v)
		table.insert(pack.vocabList, v)
		pack.langsUsed = pack.langsUsed or {}
		for lang in pairs(v.text) do pack.langsUsed[lang] = true end
	end
end

---------------------------------------------------------------------------
-- Dichiarazioni dei pacchetti: eventi, registri, categorie
---------------------------------------------------------------------------
---Dichiara un evento nuovo. def = { category =, chance = (%), cooldown = (secondi) }.
---@param name string
---@param def? { category?: string, chance?: number, cooldown?: number }
function NS:RegisterEvent(name, def)
	def = def or {}
	local Engine = self.Engine
	if not Engine.events[name] then
		Engine.events[name] = { category = def.category, pack = def.pack }
	elseif def.category and not Engine.events[name].category then
		Engine.events[name].category = def.category
	end
	if def.category then Engine.CATEGORIES[def.category] = true end
	if (def.chance or def.cooldown) and self.SetEventDefaults then
		self:SetEventDefaults(name, def.chance, def.cooldown)
	end
end

function NS:RegisterStyle(id)
	if type(id) == "string" and id ~= "" then self.Engine.STYLES[id] = true end
end

function NS:RegisterCategory(id)
	if type(id) == "string" and id ~= "" then self.Engine.CATEGORIES[id] = true end
end

---------------------------------------------------------------------------
-- API pubblica
---------------------------------------------------------------------------
--[[ Formato v2 del pacchetto (vedi FORMATO_PACCHETTI.md):
	AzerothUnspoken:RegisterPack({
		id = "mio_pacchetto", name = "Nome leggibile",
		languages = { "itIT", "enUS" },        -- lingue che ogni frase del pacchetto deve avere (facoltativo)
		events = { fishing = { category = "exploration", chance = 20, cooldown = 300 } },
		registry = { ["id"] = { event=, speaker=, styles=, depth=, tags=, weight=, cooldown=, conditions= } },
		texts = { itIT = { ["id"] = { "variante", ... } }, enUS = { ... } },
		frames = { ... }, vocab = { ... },
	})
   Il formato vecchio resta valido: phrases = { { id=, event=, form=, tone=, when=, it=, en= } }. ]]
---@param pack table
function NS:RegisterPack(pack)
	assert(type(pack) == "table" and pack.id, "RegisterPack: serve un id")
	if Engine.packs[pack.id] then
		NS:Print(("pacchetto '%s' già registrato"):format(pack.id))
		return
	end
	Engine.packs[pack.id] = pack
	table.insert(Engine.packOrder, pack.id)

	-- dichiarazioni: prima di tutto, così le frasi del pacchetto le possono usare
	for _, name in ipairs(SortedKeys(pack.events or {})) do
		local def = pack.events[name]
		self:RegisterEvent(name, { category = def.category, chance = def.chance, cooldown = def.cooldown, pack = pack.id })
	end
	for _, s in ipairs(pack.styles or {}) do self:RegisterStyle(s) end
	for _, c in ipairs(pack.categories or {}) do self:RegisterCategory(c) end
	for _, name in ipairs(SortedKeys(pack.conditions or {})) do
		-- una funzione (condizione calcolata), un tipo di valore ("bool", "str"...) o { fn =, kind = }
		local def = pack.conditions[name]
		if type(def) == "function" then
			self:RegisterCondition(name, def)
		elseif type(def) == "string" then
			self:RegisterCondition(name, nil, def)
		elseif type(def) == "table" then
			self:RegisterCondition(name, def.fn, def.kind)
		end
	end

	-- regole v2 (in ordine di id: la selezione con un seme fisso resta ripetibile)
	for _, id in ipairs(SortedKeys(pack.registry or {})) do
		Engine:AddEntry(pack, id, pack.registry[id], false)
	end
	-- formato vecchio, convertito
	for _, ph in ipairs(pack.phrases or {}) do Engine:AddLegacyPhrase(pack, ph) end
	for _, f in ipairs(pack.frames or {}) do Engine:AddFrame(pack, f) end
	for _, name in ipairs(SortedKeys(pack.vocab or {})) do Engine:AddVocab(pack, name, pack.vocab[name]) end

	-- testi per lingua: texts = { itIT = { [id] = ... } }; translations è il vecchio nome
	for _, key in ipairs({ "texts", "translations" }) do
		local byLang = pack[key]
		for _, lang in ipairs(SortedKeys(byLang or {})) do
			if LangCode(lang) then
				for id, list in pairs(byLang[lang]) do Engine:AddTexts(lang, id, list, pack.id) end
			end
		end
	end
	Engine:FlushPending()
end

---Aggiunge testi o traduzioni a frasi già registrate (anche di altri pacchetti): { [id] = "testo" | { varianti } }.
---@param lang string codice lingua ("it", "itIT", "de"...)
---@param map table<string, string|table>
---@param packId? string pacchetto che li fornisce: se è spento, i suoi testi non si usano
function NS:AddTexts(lang, map, packId)
	Engine:AddTranslations(lang, map, packId)
end
NS.AddTranslations = NS.AddTexts

-- statistiche per /au info: frasi con almeno una variante nella lingua
function Engine:Stats(lang)
	local byEvent, total = {}, 0
	for ev, list in pairs(self.byEvent) do
		local n = 0
		for _, p in ipairs(list) do
			if p.text[lang] and #p.text[lang] > 0 then n = n + 1 end
		end
		byEvent[ev] = n
	end
	for _, p in pairs(self.byId) do
		if p.text[lang] and #p.text[lang] > 0 then total = total + 1 end
	end
	return total, byEvent
end
