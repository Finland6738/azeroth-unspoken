-- Azeroth Unspoken: Story Arcs, le micro-storie personali (S9, GDD §7.5, §10, §12.2; ADR 0021).
-- Un arco è una piccola storia che il personaggio vive tra una visita e l'altra: non è una quest del server, non dà
-- ricompense di gioco, non cambia gli NPC veri e non promette nulla al gioco. Vive nell'addon: uno stato salvato per
-- personaggio (AzerothUnspokenCharacterDB.arcs), un racconto nel diario e qualche frase del narratore.
--
-- Stati di base:  LOCKED -> DISCOVERED -> REFLECTED -> RESOLVED
-- Un arco può definire stati propri (tra LOCKED e RESOLVED), sempre in avanti, un passo alla volta. Ogni passo è un dato:
--   { from, to, on = { trigger... }, when = { condizioni del RuleEngine }, wait = secondi, choose = "<scelta>" }
-- Un passo scatta SOLO da un evento vero tra quelli elencati in `on` (luogo con mapID, memoria, relazioni, flag degli
-- NPC Alive, livelli, morti) con le sue condizioni verificate sul contesto del momento, oppure da una scelta diretta del
-- giocatore (`player`). Nessun'altra via: né un comando, né un timer, né un altro sistema apre o fa avanzare un arco.
--   - `choose`: il passo aspetta che il giocatore scelga tra 2-3 opzioni (il diario, o /au storie scegli). Ciò che si
--     attribuisce al personaggio lo decide sempre il giocatore; la scelta è salvata come id di opzione.
--   - `wait`: secondi di orologio che devono passare dall'ingresso nello stato prima che il passo possa scattare.
-- Regole (GDD §7.5): al massimo 1-2 archi attivi (`arcs.maxActive`); un arco che si aprirebbe a posti finiti resta
-- «disponibile» e lo avvia il giocatore; ogni arco si può sospendere, saltare o disattivare, da solo o tutti (il
-- modulo `storyArcs` spegne tutto); la chiusura (RESOLVED) lascia un ricordo permanente in Living Memory.
--
-- Le frasi: tre eventi (arc_open, arc_step, arc_resolve) con regole `arc = { id, state, choice }` in un pacchetto.
-- Passano dal Narrative Director (priorità «evento eccezionale», una sola alla volta, `BEAT_GAP` secondi tra due
-- battute di archi) e se il momento non è buono restano in attesa (`owed`) senza perdere lo stato: il diario ha sempre
-- il racconto. Il silenzio è un esito valido.
local ADDON, NS = ...
local Engine, Compat = NS.Engine, NS.Compat

---@class AUArcStep un passo da uno stato al successivo
---@field from string stato di partenza
---@field to string stato di arrivo: il successivo di `from` in `states`
---@field on string[] eventi che lo possono far scattare: zone, death, level, npc, flag, player
---@field when? table condizioni del RuleEngine, valutate sul contesto del momento (anche `arc = { ... }`)
---@field wait? number secondi nello stato di partenza prima che possa scattare
---@field choose? string chiave di una scelta di `choices`: il passo aspetta il giocatore

---@class AUArcChoice
---@field options string[] id delle opzioni (2-3), uguali in ogni lingua; i testi stanno nei testi dell'arco

---@class AUArcDef un arco, come lo registra un pacchetto
---@field id string minuscole, cifre e _, al massimo 12 caratteri
---@field states? string[] LOCKED ... RESOLVED (predefiniti: LOCKED, DISCOVERED, REFLECTED, RESOLVED)
---@field steps AUArcStep[]
---@field choices? table<string, AUArcChoice>
---@field subject? "npc" l'arco è legato a un NPC conosciuto (si fissa all'apertura, da un evento `npc`)
---@field topic? string argomento delicato (death, religion...): con quell'argomento tra quelli evitati l'arco non si apre
---@field pack? string

---@class AUArcItem lo stato salvato di un arco
---@field state string
---@field mode "active"|"suspended"|"skipped"|"off"
---@field since number epoch dell'ingresso nello stato attuale
---@field t table<string, number> epoch di ingresso in ogni stato
---@field choices table<string, string> scelta -> id dell'opzione
---@field subject? { npcID: integer, name?: string }
---@field pending? { step: integer, t: number } un passo aspetta la scelta del giocatore
---@field waiting? boolean l'evento d'apertura c'è stato ma i posti erano finiti
---@field waitStep? integer
---@field memoryId? integer ricordo lasciato alla chiusura
---@field ended? number epoch della chiusura o del salto

---@class AUArcView ctx.arc: l'arco di cui si valuta un passo o si pronuncia una battuta
---@field id string
---@field state string
---@field from? string
---@field choices table<string, string>
---@field withSubject boolean l'NPC dell'evento è quello dell'arco
---@field beat? boolean è una battuta (le regole degli eventi arc_* parlano solo con questo)

---@class AUStoryArcs
local SA = NS:RegisterModule("storyarcs")
NS.StoryArcs = SA

SA.VERSION = 1                   -- forma dei dati in AzerothUnspokenCharacterDB.arcs
SA.ID_LEN = 12
SA.STATE_LEN = 10
SA.MAX_ITEMS = 100
SA.MAX_OPTIONS = 3
SA.LABEL_BYTES = 70              -- lunghezza massima di un'opzione e del titolo
SA.BEAT_GAP = 90                 -- secondi tra due battute di archi: nessuna cascata
SA.RETRY = 20                    -- ogni quanto si riprova una battuta rimandata
SA.OWED_TTL = 900                -- dopo tanti secondi una battuta rimandata decade (lo stato resta, il diario la racconta)
SA.ZONE_DELAY = 2                -- secondi dall'ingresso in zona alla valutazione (come i ritorni di memoria)

SA.BASE_STATES = { "LOCKED", "DISCOVERED", "REFLECTED", "RESOLVED" }
SA.TRIGGERS = { zone = true, death = true, level = true, npc = true, flag = true, player = true }
SA.MODES = { active = true, suspended = true, skipped = true, off = true }
-- le interazioni con un NPC che contano come evento `npc` (le quest restano di Blizzard)
SA.NPC_KINDS = { gossip = true, merchant = true, taxi = true, trainer = true, binder = true, banker = true }
SA.EVENTS = { open = "arc_open", step = "arc_step", resolve = "arc_resolve" }
SA.EVENT_SET = { arc_open = true, arc_step = true, arc_resolve = true }
-- campi ammessi nella definizione di un arco e in un passo: ogni altro (una ricompensa, una quest...) è un errore
local DEF_FIELDS = { id = true, pack = true, states = true, steps = true, choices = true, subject = true, topic = true }
local STEP_FIELDS = { from = true, to = true, on = true, when = true, wait = true, choose = true }

SA.defs = {}                     -- [id] = AUArcDef
SA.order = {}                    -- id in ordine di registrazione
SA.texts = {}                    -- [id][lingua] = testi dell'arco
SA.readOnly = false              -- dati scritti da una versione più nuova: si leggono, non si cambiano
SA.owed = {}                     -- battute in attesa: { id, event, from, to, t, tries } (solo sessione)
SA.lastBeat = nil                -- GetTime() dell'ultima battuta pronunciata
SA.inflight = nil                -- la battuta offerta al Director e non ancora risolta
SA.log = {}                      -- ultimi passi: { id, from, to, how } per /au debug

local EMPTY = {}

local function Now() return (time and time()) or 0 end
SA.Now = Now

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

local function Clamp(v, lo, hi) return math.max(lo, math.min(hi, v)) end

local function Has(list, value)
	for _, v in ipairs(list or EMPTY) do
		if v == value then return true end
	end
	return false
end

local function IndexOf(list, value)
	for i, v in ipairs(list) do
		if v == value then return i end
	end
	return nil
end

local function Lower(s) return NS.Lower(s) end

local function Say(key, ...) NS:Print(NS:L(key, ...)) end

---------------------------------------------------------------------------
-- Registro degli archi (dati: Data/Arcs.lua)
---------------------------------------------------------------------------
---Controlla la definizione di un arco. Restituisce l'elenco dei problemi (vuoto = va bene).
---@param def table
---@return string[]
function SA:Validate(def)
	local out = {}
	local function Add(msg) table.insert(out, msg) end
	if type(def) ~= "table" then return { "l'arco deve essere una tabella" } end
	for k in pairs(def) do
		if not DEF_FIELDS[k] then Add(("campo sconosciuto '%s' (gli archi non hanno ricompense né effetti sul gioco)"):format(tostring(k))) end
	end
	if type(def.id) ~= "string" or not def.id:match("^[a-z][a-z0-9_]*$") or #def.id > self.ID_LEN then
		Add(("id non valido '%s' (minuscole, cifre e _, al massimo %d)"):format(tostring(def.id), self.ID_LEN))
	end
	local states = def.states or self.BASE_STATES
	if type(states) ~= "table" or #states < 3 then
		Add("servono almeno tre stati: LOCKED, uno o più intermedi, RESOLVED")
		return out
	end
	local seen = {}
	for i, s in ipairs(states) do
		if type(s) ~= "string" or not s:match("^[A-Z]+$") or #s > self.STATE_LEN then
			Add(("stato non valido '%s' (maiuscole, al massimo %d lettere)"):format(tostring(s), self.STATE_LEN))
		elseif seen[s] then
			Add(("stato '%s' ripetuto"):format(s))
		end
		seen[tostring(s)] = true
	end
	if states[1] ~= "LOCKED" then Add("il primo stato deve essere LOCKED") end
	if states[#states] ~= "RESOLVED" then Add("l'ultimo stato deve essere RESOLVED") end
	if def.subject ~= nil and def.subject ~= "npc" then Add("subject può essere solo 'npc'") end
	if def.topic ~= nil and (type(def.topic) ~= "string" or not def.topic:match("^[a-z]+$")) then Add("topic non valido") end

	-- scelte
	local choices = def.choices
	if choices ~= nil and type(choices) ~= "table" then
		Add("choices deve essere una tabella")
		choices = nil
	end
	for key, c in pairs(choices or EMPTY) do
		if type(key) ~= "string" or not key:match("^[a-z][a-z0-9_]*$") or #key > 24 then
			Add(("scelta '%s': chiave non valida"):format(tostring(key)))
		elseif type(c) ~= "table" or type(c.options) ~= "table" or #c.options < 2 or #c.options > self.MAX_OPTIONS then
			Add(("scelta '%s': servono da 2 a %d opzioni"):format(key, self.MAX_OPTIONS))
		else
			local opts = {}
			for _, o in ipairs(c.options) do
				if type(o) ~= "string" or not o:match("^[a-z][a-z0-9_]*$") or #o > 24 then
					Add(("scelta '%s': opzione non valida '%s'"):format(key, tostring(o)))
				elseif opts[o] then
					Add(("scelta '%s': opzione '%s' ripetuta"):format(key, o))
				end
				opts[tostring(o)] = true
			end
		end
	end

	-- passi
	if type(def.steps) ~= "table" or #def.steps == 0 then
		Add("nessun passo")
		return out
	end
	local outgoing = {}
	for i, step in ipairs(def.steps) do
		local name = ("passo %d"):format(i)
		if type(step) ~= "table" then
			Add(name .. ": deve essere una tabella")
		else
			for k in pairs(step) do
				if not STEP_FIELDS[k] then Add(("%s: campo sconosciuto '%s'"):format(name, tostring(k))) end
			end
			local fi, ti = IndexOf(states, step.from), IndexOf(states, step.to)
			if not fi or not ti then
				Add(("%s: stato '%s' -> '%s' non dichiarato"):format(name, tostring(step.from), tostring(step.to)))
			elseif ti ~= fi + 1 then
				Add(("%s: da %s si va solo allo stato successivo (%s), non a %s"):format(name, step.from, tostring(states[fi + 1]), step.to))
			else
				outgoing[step.from] = true
			end
			if type(step.on) ~= "table" or #step.on == 0 then
				Add(name .. ": serve almeno un evento in `on`")
			else
				for _, trig in ipairs(step.on) do
					if not self.TRIGGERS[trig] then Add(("%s: evento '%s' sconosciuto"):format(name, tostring(trig))) end
				end
				if step.from == "LOCKED" then
					if Has(step.on, "player") then Add(name .. ": un arco non si apre da solo con una scelta: serve un evento vero") end
					if step.choose then Add(name .. ": il passo d'apertura non può chiedere una scelta") end
					if def.subject == "npc" and not Has(step.on, "npc") then Add(name .. ": un arco legato a un NPC si apre da un evento `npc`") end
				end
			end
			if step.when ~= nil then
				if type(step.when) ~= "table" then
					Add(name .. ": `when` deve essere una tabella di condizioni")
				else
					for _, msg in ipairs(Engine.CheckConditions(step.when)) do Add(("%s: %s"):format(name, msg)) end
				end
			end
			if step.wait ~= nil and (not IsNumber(step.wait) or step.wait < 0) then Add(name .. ": `wait` deve essere un numero di secondi") end
			if step.choose ~= nil and not (choices and choices[step.choose]) then
				Add(("%s: scelta '%s' non definita"):format(name, tostring(step.choose)))
			end
		end
	end
	for i = 1, #states - 1 do
		if not outgoing[states[i]] then Add(("nessun passo parte dallo stato %s"):format(tostring(states[i]))) end
	end
	return out
end

---Registra gli archi di un pacchetto. `{ pack = "id", arcs = { [id] = AUArcDef }, texts = { itIT = { [id] = AUArcText } } }`.
---Un arco con una definizione sbagliata resta registrato ma non parte mai: il validatore dice perché.
---@param spec { pack?: string, arcs?: table<string, AUArcDef>, texts?: table<string, table> }
function NS:RegisterArcs(spec)
	if type(spec) ~= "table" then return end
	local ids = {}
	for id in pairs(type(spec.arcs) == "table" and spec.arcs or EMPTY) do
		if type(id) == "string" then table.insert(ids, id) end
	end
	table.sort(ids)
	for _, id in ipairs(ids) do
		local raw = spec.arcs[id]
		if type(raw) == "table" then
			local def = {}
			for k, v in pairs(raw) do def[k] = v end
			def.id = def.id or id
			def.pack = def.pack or spec.pack
			if def.id ~= id then def.bad = { ("la chiave '%s' e l'id '%s' sono diversi"):format(id, tostring(def.id)) } end
			def.states = def.states or SA.BASE_STATES
			local problems = SA:Validate(def)
			if #problems > 0 or def.bad then
				def.bad = def.bad or problems
				NS.Diagnostics:Error("arcs", ("arco '%s' non valido: %s"):format(id, tostring(def.bad[1])))
			end
			if not SA.defs[id] then table.insert(SA.order, id) end
			SA.defs[id] = def
		end
	end
	for lang, map in pairs(type(spec.texts) == "table" and spec.texts or EMPTY) do NS:AddArcTexts(lang, map, spec.pack) end
end

---Aggiunge i testi di archi già registrati o da registrare: `{ [id] = { title, summary, states, choices } }`.
---@param lang string codice lingua ("it", "itIT", "en"...)
---@param map table<string, table>
---@param packId? string
function NS:AddArcTexts(lang, map, packId)
	local code = NS.Config:ShortLocale(lang)
	if not code or type(map) ~= "table" then return end
	for id, text in pairs(map) do
		if type(id) == "string" and type(text) == "table" then
			SA.texts[id] = SA.texts[id] or {}
			SA.texts[id][code] = text
			if packId then SA.textPack = SA.textPack or {}; SA.textPack[id] = packId end
		end
	end
end

---@return table<string, boolean> gli id degli archi registrati (per il validatore delle condizioni)
function SA:IdSet()
	local set = {}
	for id in pairs(self.defs) do set[id] = true end
	return set
end

---Il testo di un arco nella lingua scelta (con ripiego sull'inglese e sull'italiano).
---@param id string
---@return table text { title, summary, states = {}, choices = {} } (tabella vuota se mancano)
function SA:Text(id)
	local by = self.texts[id]
	if not by then return EMPTY end
	return by[NS:Lang()] or by.en or by.it or EMPTY
end

---@param id string
---@return string
function SA:Title(id)
	local t = self:Text(id)
	return type(t.title) == "string" and t.title or id
end

---@param tags? string[] tag di un ricordo
---@return string? title il titolo dell'arco, se un tag è l'id di uno registrato
function SA:TitleFromTags(tags)
	for _, tag in ipairs(type(tags) == "table" and tags or EMPTY) do
		if self.defs[tag] then return self:Title(tag) end
	end
	return nil
end

---@param id string
---@param state string
---@return string
function SA:StateLabel(id, state)
	local t = self:Text(id)
	local label = t.stateNames and t.stateNames[state]
	if type(label) == "string" and label ~= "" then return label end
	local key = "arc_state_" .. state
	local base = NS:L(key)
	return base ~= key and base or state
end

---------------------------------------------------------------------------
-- Dati salvati: forma, pulizia, migrazioni
---------------------------------------------------------------------------
---@class AUArcData
---@field version integer
---@field items table<string, AUArcItem>
---@field stats { resolved?: integer, skipped?: integer }

---@return AUArcData?
function SA:Data()
	local c = NS.cdb
	if not c then return nil end
	local a = c.arcs
	if type(a) ~= "table" then
		a = {}
		c.arcs = a
	end
	if type(a.items) ~= "table" then a.items = {} end
	if type(a.stats) ~= "table" then a.stats = {} end
	if not IsNumber(a.version) then a.version = self.VERSION end
	return a
end

-- Migrazioni interne della forma dei dati: migrations[n] porta da n-1 a n. La 0 (assente) è il segnaposto che lo
-- schema 6 ha già sostituito; la 1 è la forma attuale.
---@type table<integer, fun(a: table)>
SA.migrations = {
	[1] = function(a)
		if type(a.items) ~= "table" then a.items = {} end
		if type(a.stats) ~= "table" then a.stats = {} end
	end,
}

local function CleanChoices(t)
	local out = {}
	if type(t) ~= "table" then return out end
	for k, v in pairs(t) do
		if type(k) == "string" and type(v) == "string" and k:match("^[a-z][a-z0-9_]*$") and #k <= 24
			and v:match("^[a-z][a-z0-9_]*$") and #v <= 24 then
			out[k] = v
		end
	end
	return out
end

local function CleanSubject(s)
	if type(s) ~= "table" or not IsNumber(s.npcID) or s.npcID < 1 then return nil end
	local name = type(s.name) == "string" and s.name ~= "" and s.name:sub(1, 64) or nil
	return { npcID = math.floor(s.npcID), name = name }
end

-- una voce di un arco: solo i campi previsti; `def` (se l'arco è registrato) dice quali stati sono ammessi
local function CleanItem(id, item, def)
	if type(item) ~= "table" then return nil end
	local states = def and def.states
	local state = type(item.state) == "string" and item.state or "LOCKED"
	if not state:match("^[A-Z]+$") or #state > SA.STATE_LEN or (states and not Has(states, state)) then state = "LOCKED" end
	local mode = SA.MODES[item.mode] and item.mode or "active"
	local out = { state = state, mode = mode, since = IsNumber(item.since) and item.since or 0, t = {},
		choices = CleanChoices(item.choices), subject = CleanSubject(item.subject),
		memoryId = IsNumber(item.memoryId) and math.floor(item.memoryId) or nil,
		ended = IsNumber(item.ended) and item.ended or nil, waiting = item.waiting == true or nil }
	if type(item.t) == "table" then
		for s, v in pairs(item.t) do
			if type(s) == "string" and s:match("^[A-Z]+$") and #s <= SA.STATE_LEN and IsNumber(v) then out.t[s] = v end
		end
	end
	if state == "RESOLVED" then out.ended = out.ended or out.t.RESOLVED or out.since end
	-- un passo in attesa vale solo se il passo esiste e parte dallo stato attuale
	if type(item.pending) == "table" and IsNumber(item.pending.step) and def and state ~= "LOCKED" and state ~= "RESOLVED" then
		local idx = math.floor(item.pending.step)
		local step = def.steps and def.steps[idx]
		if step and step.from == state and step.choose then
			out.pending = { step = idx, t = IsNumber(item.pending.t) and item.pending.t or out.since }
		end
	end
	if out.waiting and def and state == "LOCKED" and IsNumber(item.waitStep) then
		local idx = math.floor(item.waitStep)
		local step = def.steps and def.steps[idx]
		if step and step.from == "LOCKED" then out.waitStep = idx else out.waiting = nil end
	elseif out.waiting then
		out.waiting = nil
	end
	return out
end

---Porta i dati alla versione corrente e scarta ciò che è malformato: gli archi non rompono mai l'addon. Dati scritti da
---una versione più nuova non si toccano (gli archi restano in sola lettura). Le voci di archi non registrati (un
---pacchetto spento o tolto) si conservano così come sono.
---@return integer dropped voci scartate
function SA:Sanitize()
	self.readOnly = false
	local a = self:Data()
	if not a then return 0 end
	local v = tonumber(a.version) or 0
	if v > self.VERSION then
		self.readOnly = true
		NS.Diagnostics:Error("arcs", ("arcs.version %d > %d: sola lettura"):format(v, self.VERSION))
		return 0
	end
	for n = v + 1, self.VERSION do
		local step = self.migrations[n]
		if step and not NS.Diagnostics:Guard("arcs:migrate:" .. n, step, a) then
			self.readOnly = true
			return 0
		end
		a.version = n
	end
	local dropped, items, count = 0, {}, 0
	local keys = {}
	for id in pairs(a.items) do table.insert(keys, tostring(id)) end
	table.sort(keys)
	for _, id in ipairs(keys) do
		local raw = a.items[id]
		local clean = nil
		if type(id) == "string" and id:match("^[a-z][a-z0-9_]*$") and #id <= self.ID_LEN and count < self.MAX_ITEMS then
			clean = CleanItem(id, raw, self.defs[id])
		end
		if clean then
			items[id] = clean
			count = count + 1
		else
			dropped = dropped + 1
		end
	end
	a.items = items
	a.stats = { resolved = IsNumber(a.stats.resolved) and math.max(0, math.floor(a.stats.resolved)) or nil,
		skipped = IsNumber(a.stats.skipped) and math.max(0, math.floor(a.stats.skipped)) or nil }
	return dropped
end

---@param id string
---@return AUArcItem? item solo se esiste (un arco mai toccato non ha voce)
function SA:Item(id)
	local a = self:Data()
	return a and a.items[id] or nil
end

-- la voce dell'arco, creata se manca (solo per un arco registrato e valido)
function SA:Ensure(id)
	local a, def = self:Data(), self.defs[id]
	if not a or not def or def.bad then return nil end
	local item = a.items[id]
	if not item then
		item = { state = "LOCKED", mode = "active", since = 0, t = {}, choices = {} }
		a.items[id] = item
	end
	return item
end

---@param id string
---@return string state LOCKED se l'arco non è mai stato toccato
function SA:State(id)
	local item = self:Item(id)
	return item and item.state or "LOCKED"
end

---@param id string
---@return string mode active | suspended | skipped | off
function SA:Mode(id)
	local item = self:Item(id)
	return item and item.mode or "active"
end

---@return boolean
function SA:Enabled()
	local db = NS.db
	return db ~= nil and NS.cdb ~= nil and db.enabled ~= false and db.modules.storyArcs ~= false and not self.readOnly
end

---------------------------------------------------------------------------
-- Posti: al massimo 1-2 archi attivi
---------------------------------------------------------------------------
local function IsLive(self, id, item)
	local def = self.defs[id]
	return item ~= nil and def ~= nil and not def.bad and item.mode == "active" and item.state ~= "LOCKED"
		and item.state ~= "RESOLVED"
end

---@return integer
function SA:ActiveCount()
	local a, n = self:Data(), 0
	for id, item in pairs(a and a.items or EMPTY) do
		if IsLive(self, id, item) then n = n + 1 end
	end
	return n
end

---@return integer max
function SA:MaxActive()
	local v = NS.db and NS.db.arcs and NS.db.arcs.maxActive
	return IsNumber(v) and Clamp(math.floor(v), 1, 2) or 2
end

---@return boolean
function SA:HasSlot()
	return self:ActiveCount() < self:MaxActive()
end

---@param n any
---@return boolean ok
---@return integer? saved
function SA:SetMaxActive(n)
	n = tonumber(n)
	if not n or not NS.db then return false end
	local ok, saved = NS.Config:Set("arcs.maxActive", n)
	return ok, saved
end

---------------------------------------------------------------------------
-- Contesto: ctx.arcs (archi chiusi) e la vista ctx.arc di un arco
---------------------------------------------------------------------------
---Il riepilogo per le condizioni (ctx.arcs): quali archi sono chiusi, quanti attivi.
---@return { done: table<string, boolean>, active: integer, max: integer }
function SA:Context()
	local a = self:Data()
	local done = {}
	for id, item in pairs(a and a.items or EMPTY) do
		if item.state == "RESOLVED" and self.defs[id] then done[id] = true end
	end
	return { done = done, active = self:ActiveCount(), max = self:MaxActive() }
end

---@param def AUArcDef
---@param item? AUArcItem
---@param extra? table
---@return AUArcView
local function ArcView(def, item, extra)
	local view = { id = def.id, state = item and item.state or "LOCKED", choices = item and item.choices or {}, withSubject = false }
	if extra and type(extra.arcNpc) == "table" and item and item.subject then
		view.withSubject = item.subject.npcID == extra.arcNpc.npcID
	end
	return view
end

-- numero di capitali visitate (dalla memoria dei luoghi): la condizione capitalsVisitedMin
function SA.CapitalsVisited()
	local LM = NS.LivingMemory
	local m = LM and LM:Data()
	local n = 0
	for _, p in pairs(m and m.places or EMPTY) do
		if p.capital then n = n + 1 end
	end
	return n
end

NS:RegisterCondition("arcDone", function(v, ctx)
	local arcs = ctx.arcs
	if type(arcs) ~= "table" then return false end
	for _, id in ipairs(Engine.AsList(v)) do
		if arcs.done and arcs.done[id] then return true end
	end
	return false
end, "str")
NS:RegisterCondition("capitalsVisitedMin", function(v) return SA.CapitalsVisited() >= v end, "num")

---------------------------------------------------------------------------
-- Argomenti evitati: un arco su un tema che il personaggio evita non si apre né avanza
---------------------------------------------------------------------------
local function Avoids(topic)
	if not topic then return false end
	local soul = NS.Personality and NS.Personality:Effective()
	local avoid = soul and soul.avoid
	return type(avoid) == "table" and avoid[topic] == true
end

---------------------------------------------------------------------------
-- Passi: valutazione e applicazione
---------------------------------------------------------------------------
-- il passo può scattare adesso? Evento, attesa e condizioni sul contesto (ctx.arc impostato qui)
local function StepMatches(self, def, item, step, trigger, ctx, extra, now)
	if not Has(step.on, trigger) then return false end
	local state = item and item.state or "LOCKED"
	if state == "LOCKED" and def.subject == "npc" and not (extra and type(extra.arcNpc) == "table") then return false end
	local since = state == "LOCKED" and 0 or (item and item.since or 0)
	if IsNumber(step.wait) and now < since + step.wait then return false end
	ctx.arc = ArcView(def, item, extra)
	return Engine.SafeMatch(step.when, ctx)
end

local function Log(self, id, from, to, how)
	table.insert(self.log, { id = id, from = from, to = to, how = how })
	while #self.log > 12 do table.remove(self.log, 1) end
end

-- un avviso discreto nel narratore (mai un messaggio in chat): solo se il momento è tranquillo
local function Notice(self, key, def)
	local db = NS.db
	if not (db and NS.Narrator and NS.Narrator.Notice) or NS.paused or db.intensity <= 0 or not db.output.privateNarrator then return end
	if Compat:InvasiveScreen() or Compat.SafeCall("UnitAffectingCombat", "player") == true then return end
	NS.Narrator:Notice(NS:L(key, self:Title(def.id)))
end

local function Refresh()
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
end

-- un flag narrativo per ogni stato raggiunto: le frasi e gli altri archi lo leggono con `remembered`
---@param id string
---@param state string
---@return string
function SA.FlagName(id, state)
	return "arc_" .. id .. "_" .. Lower(state)
end

---Applica il passo `idx` dell'arco. Chi chiama ha già verificato evento e condizioni (Fire) o la scelta del giocatore
---(Choose, Start). Restituisce "moved", "pending" (aspetta la scelta) o "waiting" (nessun posto libero), oppure nil e il
---motivo se il passo non è lecito adesso.
---@param def AUArcDef
---@param idx integer
---@param opts? { extra?: table, choice?: { key: string, option: string }, start?: boolean }
---@return string? result
---@return string? reason
function SA:Apply(def, idx, opts)
	opts = opts or {}
	if self.readOnly then return nil, "readonly" end
	local step = def.steps[idx]
	if not step or def.bad then return nil, "unknown" end
	local item = self:Item(def.id) or self:Ensure(def.id)
	if not item then return nil, "unknown" end
	local from = item.state
	if step.from ~= from then return nil, "illegal" end            -- solo il passo che parte dallo stato attuale
	if item.mode ~= "active" then return nil, "mode" end
	local now = Now()
	local extra = opts.extra

	if from == "LOCKED" and not opts.start then
		-- l'evento d'apertura c'è stato: se i posti sono finiti l'arco resta disponibile e lo avvia il giocatore
		if not self:HasSlot() then
			item.waiting, item.waitStep = true, idx
			if def.subject == "npc" and extra and extra.arcNpc then item.subject = CleanSubject(extra.arcNpc) end
			Log(self, def.id, from, from, "waiting")
			Notice(self, "arc_notice_available", def)
			Refresh()
			return "waiting"
		end
	end
	if from == "LOCKED" and opts.start and not self:HasSlot() then return nil, "full" end

	if step.choose and not opts.choice then
		item.pending = { step = idx, t = now }
		Log(self, def.id, from, from, "pending")
		Notice(self, "arc_notice_choice", def)
		Refresh()
		return "pending"
	end

	-- il passo avviene
	item.state, item.since = step.to, now
	item.t[step.to] = now
	if opts.choice then item.choices[opts.choice.key] = opts.choice.option end
	item.pending, item.waiting, item.waitStep = nil, nil, nil
	if from == "LOCKED" and def.subject == "npc" then
		item.subject = CleanSubject(extra and extra.arcNpc) or item.subject
	end
	if NS.LivingMemory then NS.LivingMemory:SetFlag(self.FlagName(def.id, step.to), "addon") end
	if step.to == "RESOLVED" then self:Conclude(def, item) end
	Log(self, def.id, from, step.to, opts.choice and "choice" or (opts.start and "start" or "event"))
	NS.EventBus:Publish("ARC_STATE", { id = def.id, from = from, to = step.to }, { key = def.id .. ":" .. step.to, window = 0 })
	self:QueueBeat(def, item, step, from)
	Refresh()
	return "moved"
end

---La chiusura di un arco: un ricordo permanente in Living Memory (tipo `story`, solo id e luogo, nessun testo).
---@param def AUArcDef
---@param item AUArcItem
function SA:Conclude(def, item)
	item.ended = Now()
	local a = self:Data()
	if a then a.stats.resolved = (a.stats.resolved or 0) + 1 end
	local LM = NS.LivingMemory
	if not (LM and LM:Enabled()) then return end
	local ok, zone = pcall(function() return Compat.SafeCall("GetRealZoneText") or Compat.SafeCall("GetZoneText") end)
	local e, persisted = LM:Record({ kind = "story", zone = ok and zone or nil, importance = 4, tags = { "arc", "done", def.id },
		perm = true, source = "addon" })
	if e and persisted then item.memoryId = e.id end
end

---Un evento vero è arrivato: ogni arco attivo (o ancora chiuso) controlla se il suo passo scatta. Al massimo un passo
---per arco. Gli archi sospesi, saltati, disattivati o in attesa di una scelta non si muovono.
---@param trigger string zone | death | level | npc | flag
---@param extra? table valori in più per il contesto (arcNpc, relationSubject, otherSubject...)
---@return { id: string, result: string }[] moved
function SA:Fire(trigger, extra)
	local moved = {}
	if trigger == "player" or not self.TRIGGERS[trigger] or not self:Enabled() then return moved end
	local a = self:Data()
	local ctx, now = NS:BuildContext(extra), Now()
	for _, id in ipairs(self.order) do
		local def = self.defs[id]
		local item = a.items[id]
		local state = item and item.state or "LOCKED"
		local mode = item and item.mode or "active"
		if def and not def.bad and mode == "active" and state ~= "RESOLVED" and not (item and (item.pending or item.waiting))
			and not Avoids(def.topic) then
			for idx, step in ipairs(def.steps) do
				if step.from == state and StepMatches(self, def, item, step, trigger, ctx, extra, now) then
					local result = self:Apply(def, idx, { extra = extra })
					if result then table.insert(moved, { id = id, result = result }) end
					break
				end
			end
		end
	end
	return moved
end

-- il passo che il giocatore può far scattare adesso (`player` in `on`, attesa passata, condizioni valide), se c'è
local function PlayerStep(self, def, item, ctx)
	local now = Now()
	for idx, step in ipairs(def.steps) do
		if step.from == item.state and Has(step.on, "player") then
			ctx = ctx or NS:BuildContext()
			if StepMatches(self, def, item, step, "player", ctx, nil, now) then return idx, step end
		end
	end
	return nil
end

---Che cosa aspetta il giocatore in un arco: un passo già pronto (`pending`) o un passo che può far scattare adesso.
---@param id string
---@param ctx? table contesto già costruito
---@return { step: integer, choose?: string, options: string[], pending: boolean }? offer
function SA:Offering(id, ctx)
	local def, item = self.defs[id], self:Item(id)
	if not def or def.bad or not item or item.mode ~= "active" or item.state == "LOCKED" or item.state == "RESOLVED" then return nil end
	local idx, step
	if item.pending then
		idx, step = item.pending.step, def.steps[item.pending.step]
	else
		idx, step = PlayerStep(self, def, item, ctx)
	end
	if not step then return nil end
	local options = step.choose and def.choices[step.choose] and def.choices[step.choose].options or {}
	return { step = idx, choose = step.choose, options = options, pending = item.pending ~= nil }
end

---Il giocatore sceglie (o prosegue, se il passo non chiede una scelta).
---@param id string
---@param option? string id dell'opzione
---@return boolean ok
---@return string? reason disabled | unknown | mode | nothing | bad_option | not_now
function SA:Choose(id, option)
	if not self:Enabled() then return false, "disabled" end
	local def, item = self.defs[id], self:Item(id)
	if not def or def.bad then return false, "unknown" end
	if not item or item.mode ~= "active" or item.state == "LOCKED" or item.state == "RESOLVED" then return false, "mode" end
	local offer = self:Offering(id)
	if not offer then return false, item.pending and "not_now" or "nothing" end
	local step = def.steps[offer.step]
	local choice
	if step.choose then
		if not Has(offer.options, option) then return false, "bad_option" end
		choice = { key = step.choose, option = option }
	end
	local result, why = self:Apply(def, offer.step, { choice = choice, extra = item.subject and { arcNpc = item.subject } or nil })
	return result == "moved", why
end

---Il giocatore avvia un arco disponibile (l'evento d'apertura c'è stato ma i posti erano finiti).
---@param id string
---@return boolean ok
---@return string? reason disabled | unknown | not_available | full
function SA:Start(id)
	if not self:Enabled() then return false, "disabled" end
	local def, item = self.defs[id], self:Item(id)
	if not def or def.bad then return false, "unknown" end
	if not item or item.mode ~= "active" or not item.waiting or not item.waitStep then return false, "not_available" end
	local result, why = self:Apply(def, item.waitStep, { start = true, extra = item.subject and { arcNpc = item.subject } or nil })
	return result == "moved", why
end

---------------------------------------------------------------------------
-- Sospendere, riprendere, saltare, disattivare
---------------------------------------------------------------------------
local function DropOwed(self, id)
	for i = #self.owed, 1, -1 do
		if self.owed[i].id == id then table.remove(self.owed, i) end
	end
end

local function Visible(item)
	return item ~= nil and (item.state ~= "LOCKED" or item.waiting == true) and item.state ~= "RESOLVED"
end

---Sospende un arco: resta com'è e non occupa un posto; si riprende quando si vuole.
---@param id string
---@return boolean ok
---@return string? reason
function SA:Suspend(id)
	if self.readOnly then return false, "readonly" end
	local item = self:Item(id)
	if not item or not self.defs[id] then return false, "unknown" end
	if item.mode ~= "active" or item.state == "RESOLVED" then return false, "mode" end
	item.mode = "suspended"
	DropOwed(self, id)
	Refresh()
	return true
end

---Riprende un arco sospeso o saltato (serve un posto libero se l'arco è già cominciato).
---@param id string
---@return boolean ok
---@return string? reason unknown | mode | full
function SA:Resume(id)
	if self.readOnly then return false, "readonly" end
	local item = self:Item(id)
	if not item or not self.defs[id] then return false, "unknown" end
	if (item.mode ~= "suspended" and item.mode ~= "skipped") or item.state == "RESOLVED" then return false, "mode" end
	if item.state ~= "LOCKED" and not self:HasSlot() then return false, "full" end
	item.mode, item.ended = "active", nil
	Refresh()
	return true
end

---Salta un arco: non si apre né avanza più, e il diario lo mette tra i saltati. Si può riprendere.
---@param id string
---@return boolean ok
---@return string? reason
function SA:Skip(id)
	if self.readOnly then return false, "readonly" end
	local item = self:Ensure(id)
	if not item then return false, "unknown" end
	if item.mode == "skipped" or item.state == "RESOLVED" then return false, "mode" end
	item.mode, item.pending, item.waiting, item.waitStep = "skipped", nil, nil, nil
	item.ended = Now()
	local a = self:Data()
	a.stats.skipped = (a.stats.skipped or 0) + 1
	DropOwed(self, id)
	Refresh()
	return true
end

---Disattiva un arco (anche uno mai aperto): non si apre né avanza finché non lo si riattiva.
---@param id string
---@return boolean ok
---@return string? reason
function SA:Disable(id)
	if self.readOnly then return false, "readonly" end
	local item = self:Ensure(id)
	if not item then return false, "unknown" end
	if item.mode == "off" or item.state == "RESOLVED" then return false, "mode" end
	item.mode, item.pending, item.waiting, item.waitStep = "off", nil, nil, nil
	DropOwed(self, id)
	Refresh()
	return true
end

---Riattiva un arco disattivato. Se è già cominciato e non c'è posto, torna sospeso.
---@param id string
---@return boolean ok
---@return string? reason
function SA:Enable(id)
	if self.readOnly then return false, "readonly" end
	local item = self:Item(id)
	if not item or not self.defs[id] then return false, "unknown" end
	if item.mode ~= "off" then return false, "mode" end
	if item.state ~= "LOCKED" and not self:HasSlot() then
		item.mode = "suspended"
	else
		item.mode = "active"
	end
	Refresh()
	return true
end

---Sospende o salta tutti gli archi visibili (attivi, in attesa, disponibili, sospesi).
---@param what "suspend"|"skip"
---@return integer n archi toccati
function SA:ForAll(what)
	local a, n = self:Data(), 0
	if not a or self.readOnly then return 0 end
	for _, id in ipairs(self.order) do
		local item = a.items[id]
		if Visible(item) and self.defs[id] then
			local ok
			if what == "skip" then
				ok = item.mode ~= "skipped" and self:Skip(id)
			else
				ok = item.mode == "active" and self:Suspend(id)
			end
			if ok then n = n + 1 end
		end
	end
	return n
end

---Spegne o riaccende tutti gli archi (il modulo `storyArcs` delle impostazioni).
---@param on boolean
function SA:SetEnabled(on)
	if NS.db then NS.db.modules.storyArcs = on and true or false end
	if not on then
		self.owed, self.inflight = {}, nil
	end
	Refresh()
end

---------------------------------------------------------------------------
-- Battute: arc_open, arc_step, arc_resolve dal Narrative Director
---------------------------------------------------------------------------
function SA:QueueBeat(def, item, step, from)
	local event = from == "LOCKED" and self.EVENTS.open or (step.to == "RESOLVED" and self.EVENTS.resolve or self.EVENTS.step)
	table.insert(self.owed, { id = def.id, event = event, from = from, to = step.to, t = GetTime(), tries = 0 })
	self:Flush()
end

-- un momento tranquillo per una battuta: niente combattimento, morte, incursioni, campi di battaglia o schermate invasive
local function CanSpeak()
	if Compat.SafeCall("UnitAffectingCombat", "player") == true or Compat.SafeCall("InCombatLockdown") == true then return false end
	if Compat.SafeCall("UnitIsDeadOrGhost", "player") == true then return false end
	local inInstance, kind = Compat.SafeCall("IsInInstance")
	if inInstance == true and (kind == "raid" or kind == "pvp" or kind == "arena") then return false end
	if Compat:InvasiveScreen() then return false end
	return true
end

local function Schedule(self, delay)
	local at = GetTime() + delay
	if self.nextFlush and self.nextFlush > GetTime() and self.nextFlush <= at then return end
	self.nextFlush = at
	C_Timer.After(delay, function()
		if SA.nextFlush == at then SA.nextFlush = nil end
		SA:Flush()
	end)
end

-- la battuta ha ancora senso? L'arco è ancora attivo e nello stato in cui la battuta è nata
local function StillValid(self, entry)
	local item = self:Item(entry.id)
	return item ~= nil and item.mode == "active" and item.state == entry.to and self.defs[entry.id] ~= nil
end

---Offre al Director la prima battuta in attesa, se il momento è buono. Lo stato dell'arco non dipende da questo.
function SA:Flush()
	local now = GetTime()
	for i = #self.owed, 1, -1 do
		local e = self.owed[i]
		if now - e.t > self.OWED_TTL or not StillValid(self, e) then table.remove(self.owed, i) end
	end
	if self.inflight or #self.owed == 0 or not self:Enabled() then return end
	if self.lastBeat and now - self.lastBeat < self.BEAT_GAP then
		Schedule(self, self.BEAT_GAP - (now - self.lastBeat) + 0.2)
		return
	end
	if not CanSpeak() then
		Schedule(self, self.RETRY)
		return
	end
	local entry = self.owed[1]
	local def, item = self.defs[entry.id], self:Item(entry.id)
	local view = ArcView(def, item)
	view.state, view.from, view.beat = entry.to, entry.from, true
	local extra = { arc = view }
	if item.subject then
		extra.relationSubject = { kind = "npc", id = item.subject.npcID }
		if NS.Interlocutor then
			extra.otherSubject = { kind = "npc", key = NS.Interlocutor.Key("npc", item.subject.npcID), name = item.subject.name,
				npcID = item.subject.npcID }
		end
	end
	self.inflight = entry
	NS.Director:Offer(entry.event, extra, function(result)
		SA:OnBeatResult(entry, result)
	end)
end

---Com'è andata la battuta offerta al Director.
---@param entry table
---@param result string
function SA:OnBeatResult(entry, result)
	if self.inflight == entry then self.inflight = nil end
	local function Remove()
		for i, e in ipairs(self.owed) do
			if e == entry then table.remove(self.owed, i); break end
		end
	end
	if result == "spoken" then
		self.lastBeat = GetTime()
		Remove()
	elseif result == "no_phrase" or result == "silent" or result == "disabled" or result:find("^module") then
		-- nessuna frase per questa lingua o il giocatore ha chiesto silenzio: lo stato resta, il diario racconta
		Remove()
	else
		-- il momento non era buono (battuta più importante, pausa, schermata, dado): si riprova più tardi
		entry.tries = entry.tries + 1
	end
	if #self.owed > 0 then Schedule(self, result == "spoken" and self.BEAT_GAP + 0.2 or self.RETRY) end
end

-- le battute escono solo dal passo di un arco: né da /au evento né da un altro sistema
for _, event in pairs(SA.EVENTS) do
	NS:SetEventPriority(event, "exceptional")
	NS.NarrativeDirector.EVENT_MODULE[event] = "storyArcs"
	Engine:SetEventGuard(event, "storyarcs", function(ctx)
		return type(ctx.arc) == "table" and ctx.arc.beat == true
	end)
end

---------------------------------------------------------------------------
-- Eventi veri del gioco
---------------------------------------------------------------------------
local handlers = {}

local function ZoneCheck()
	SA.zoneToken = (SA.zoneToken or 0) + 1
	local token = SA.zoneToken
	C_Timer.After(SA.ZONE_DELAY, function()
		if SA.zoneToken == token then SA:Fire("zone") end
	end)
end

function handlers.WORLD_ENTER() ZoneCheck() end
function handlers.ZONE_ENTER() ZoneCheck() end
function handlers.PLAYER_DEATH() SA:Fire("death") end
function handlers.LEVEL_UP() SA:Fire("level") end

function handlers.MEMORY_FLAG(env)
	SA:Fire("flag", { arcFlag = env.context.name })
end

function handlers.NPC_INTERACT(env)
	local c = env.context
	if not SA.NPC_KINDS[c.kind] or type(c.npcID) ~= "number" then return end
	local extra = { arcNpc = { npcID = c.npcID, name = c.npcName }, relationSubject = { kind = "npc", id = c.npcID } }
	if NS.Interlocutor then
		extra.otherSubject = { kind = "npc", key = NS.Interlocutor.Key("npc", c.npcID), name = c.npcName, npcID = c.npcID }
	end
	SA:Fire("npc", extra)
end

-- un arco può aver dato qualcosa da dire mentre il giocatore era in combattimento o morto: si riprova a fine scontro
function handlers.COMBAT_END() if #SA.owed > 0 then Schedule(SA, 3) end end
function handlers.PLAYER_REVIVE() if #SA.owed > 0 then Schedule(SA, 3) end end

for eventType, fn in pairs(handlers) do
	NS.EventBus:Subscribe(eventType, "storyarcs", fn)
end

---------------------------------------------------------------------------
-- Elenco per il diario e per i comandi
---------------------------------------------------------------------------
---@class AUArcRecord
---@field id string
---@field title string
---@field summary string
---@field state string
---@field stateLabel string
---@field line? string il racconto dello stato in cui si trova
---@field mode string
---@field bucket string active | available | resolved | skipped
---@field choices { prompt: string, label: string, note?: string }[] le scelte già fatte
---@field offer? { step: integer, choose?: string, options: { id: string, label: string }[], prompt?: string, pending: boolean }
---@field history { state: string, label: string, line?: string, t: number }[] gli stati attraversati, in ordine
---@field since number
---@field ended? number
---@field subject? string nome dell'NPC dell'arco

-- le scelte di un arco con il testo nella lingua scelta
local function OptionTexts(self, id, key, option)
	local t = self:Text(id)
	local c = t.choices and t.choices[key]
	local o = c and c.options and c.options[option]
	return c and c.prompt or key, o and o.label or option, o and o.note
end

---@param id string
---@param ctx? table contesto già costruito (per i passi che il giocatore può far scattare)
---@return AUArcRecord?
function SA:Record(id, ctx)
	local def, item = self.defs[id], self:Item(id)
	if not def or def.bad or not item then return nil end
	if item.state == "LOCKED" and not item.waiting and item.mode == "active" then return nil end
	local text = self:Text(id)
	local rec = { id = id, title = self:Title(id), summary = type(text.summary) == "string" and text.summary or "",
		state = item.state, stateLabel = self:StateLabel(id, item.state), line = text.states and text.states[item.state],
		mode = item.mode, choices = {}, history = {}, since = item.since, ended = item.ended,
		subject = item.subject and item.subject.name or nil }
	if item.state == "RESOLVED" then
		rec.bucket = "resolved"
	elseif item.mode == "skipped" or item.mode == "off" then
		rec.bucket = "skipped"
	elseif item.state == "LOCKED" then
		rec.bucket = "available"
	else
		rec.bucket = "active"
	end
	local keys = {}
	for k in pairs(item.choices) do table.insert(keys, k) end
	table.sort(keys)
	for _, k in ipairs(keys) do
		local prompt, label, note = OptionTexts(self, id, k, item.choices[k])
		table.insert(rec.choices, { prompt = prompt, label = label, note = note })
	end
	for _, s in ipairs(def.states) do
		if s ~= "LOCKED" and item.t[s] then
			table.insert(rec.history, { state = s, label = self:StateLabel(id, s), line = text.states and text.states[s], t = item.t[s] })
		end
	end
	local offer = rec.bucket == "active" and self:Offering(id, ctx)
	if offer then
		local options = {}
		for _, o in ipairs(offer.options) do
			local prompt, label = OptionTexts(self, id, offer.choose, o)
			options[#options + 1] = { id = o, label = label }
			offer.prompt = prompt
		end
		rec.offer = { step = offer.step, choose = offer.choose, options = options, prompt = offer.prompt, pending = offer.pending }
	end
	return rec
end

---Tutti gli archi che il giocatore può vedere (mai quelli ancora chiusi e mai notati), raggruppati.
---@return table<string, AUArcRecord[]> buckets active, available, resolved, skipped
function SA:Listing()
	local out = { active = {}, available = {}, resolved = {}, skipped = {} }
	if not self:Data() then return out end
	local ctx
	for _, id in ipairs(self.order) do
		local item = self:Item(id)
		if item and item.state ~= "LOCKED" and item.mode == "active" and not ctx then ctx = NS:BuildContext() end
		local rec = self:Record(id, ctx)
		if rec then table.insert(out[rec.bucket], rec) end
	end
	local function ByTime(a, b) return (a.ended or a.since or 0) > (b.ended or b.since or 0) end
	table.sort(out.resolved, ByTime)
	table.sort(out.skipped, ByTime)
	return out
end

---Cerca un arco per id o per titolo (senza distinguere le maiuscole).
---@param text string
---@return string? id
function SA:Find(text)
	text = Lower(text or "")
	if text == "" then return nil end
	if self.defs[text] then return text end
	for _, id in ipairs(self.order) do
		if Lower(self:Title(id)) == text then return id end
	end
	return nil
end

---@return string
function SA:Status()
	local a = self:Data()
	local n, resolved, waiting = 0, 0, 0
	for id, item in pairs(a and a.items or EMPTY) do
		if self.defs[id] then
			n = n + 1
			if item.state == "RESOLVED" then resolved = resolved + 1 end
			if item.waiting then waiting = waiting + 1 end
		end
	end
	local last = self.log[#self.log]
	return ("%d arcs (%d registered), active %d/%d, available %d, resolved %d, owed %d; last %s%s"):format(n, #self.order,
		self:ActiveCount(), self:MaxActive(), waiting, resolved, #self.owed,
		last and (last.id .. " " .. last.from .. ">" .. last.to .. " " .. last.how) or "-", self.readOnly and "; read-only" or "")
end

---------------------------------------------------------------------------
-- Controllo di definizioni e testi (per il validatore)
---------------------------------------------------------------------------
---@return { level: string, key: string, msg: string }[]
function SA:Check()
	local out = {}
	local function Add(level, key, msg) table.insert(out, { level = level, key = key, msg = msg }) end
	local languages = {}
	for _, code in ipairs(NS.languageOrder) do if code == "it" or code == "en" then table.insert(languages, code) end end
	for _, id in ipairs(self.order) do
		local def = self.defs[id]
		for _, msg in ipairs(self:Validate(def)) do Add("error", id, msg) end
		local states = def.states or self.BASE_STATES
		for _, lang in ipairs(languages) do
			local t = self.texts[id] and self.texts[id][lang]
			if not t then
				Add("error", id, ("mancano i testi '%s'"):format(lang))
			else
				local function Need(value, what, max)
					if type(value) ~= "string" or value == "" then
						Add("error", id, ("testo '%s' (%s) mancante"):format(what, lang))
					else
						local ok, why = Engine.IsValidUTF8(value)
						if not ok then Add("error", id, ("testo '%s' (%s): %s"):format(what, lang, why)) end
						if max and #value > max then Add("error", id, ("testo '%s' (%s): più di %d byte"):format(what, lang, max)) end
					end
				end
				Need(t.title, "title", self.LABEL_BYTES)
				Need(t.summary, "summary")
				for _, s in ipairs(states) do
					if s ~= "LOCKED" then Need(t.states and t.states[s], "states." .. s) end
				end
				for key, c in pairs(def.choices or EMPTY) do
					local tc = t.choices and t.choices[key]
					Need(tc and tc.prompt, "choices." .. key .. ".prompt")
					for _, o in ipairs(c.options or EMPTY) do
						local to = tc and tc.options and tc.options[o]
						Need(to and to.label, ("choices.%s.%s.label"):format(key, o), self.LABEL_BYTES)
						Need(to and to.note, ("choices.%s.%s.note"):format(key, o))
						if to and type(to.label) == "string" and to.label:find("[{}]") then
							Add("error", id, ("opzione '%s' (%s): niente segnaposto nelle opzioni"):format(o, lang))
						end
					end
				end
			end
		end
		-- ogni passo ha almeno una battuta nella sua lingua, altrimenti l'arco avanza in silenzio (è lecito: avviso)
		for i, step in ipairs(def.steps or EMPTY) do
			local event = step.from == "LOCKED" and self.EVENTS.open or (step.to == "RESOLVED" and self.EVENTS.resolve or self.EVENTS.step)
			local found = false
			for _, p in ipairs(Engine.byEvent[event] or EMPTY) do
				local a = p.when and p.when.arc
				if type(a) == "table" and a.id == id and (a.state == nil or Has(Engine.AsList(a.state), step.to)) then found = true; break end
			end
			if not found then Add("warning", id, ("passo %d (%s): nessuna battuta per l'evento %s, l'arco avanza in silenzio"):format(i, step.to, event)) end
		end
	end
	-- le regole degli eventi arc_*: dichiarano l'arco, e lo stato che citano esiste
	for event in pairs(self.EVENT_SET) do
		for _, p in ipairs(Engine.byEvent[event] or EMPTY) do
			local a = p.when and p.when.arc
			if type(a) ~= "table" or type(a.id) ~= "string" then
				Add("error", p.id, ("evento '%s' senza una condizione arc = { id = ... }"):format(event))
			else
				local def = self.defs[a.id]
				if def then
					for _, s in ipairs(a.state and Engine.AsList(a.state) or EMPTY) do
						if not Has(def.states or self.BASE_STATES, s) then
							Add("error", p.id, ("stato '%s' sconosciuto nell'arco '%s'"):format(tostring(s), a.id))
						end
					end
				end
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Comando /au storie
---------------------------------------------------------------------------
local ALL = { tutte = true, tutti = true, all = true }

local function Reason(prefix, why)
	local key = prefix .. tostring(why or "unknown")
	if NS:L(key) == key then key = prefix .. "unknown" end
	return NS:L(key)
end

local function PrintRecord(rec)
	local mode = rec.mode ~= "active" and (" [" .. NS:L("arc_mode_" .. rec.mode) .. "]") or ""
	NS:Print(("%s (%s): %s%s"):format(rec.title, rec.id, rec.stateLabel, mode))
	if rec.offer then
		local labels = {}
		for _, o in ipairs(rec.offer.options) do table.insert(labels, o.id .. " = " .. o.label) end
		NS:Print("  " .. (#labels > 0 and NS:L("arc_cmd_choose_hint", rec.id, table.concat(labels, "; ")) or NS:L("arc_cmd_go_hint", rec.id)))
	end
end

---/au storie [lista | diario | scegli <arco> [opzione] | inizia <arco> | sospendi|riprendi|salta|disattiva|attiva <arco|tutte> | max <1|2> | stato]
---@param rest? string
function SA:Command(rest)
	local word, arg = (rest or ""):match("^([^ ]*) *(.*)$")
	word, arg = Lower(word or ""), arg or ""
	if word == "" or word == "lista" or word == "list" or word == "elenco" then
		local list, shown = self:Listing(), 0
		for _, bucket in ipairs({ "active", "available", "resolved", "skipped" }) do
			for _, rec in ipairs(list[bucket]) do
				PrintRecord(rec)
				shown = shown + 1
			end
		end
		if shown == 0 then Say("arc_cmd_none") end
		if not self:Enabled() then Say("arc_cmd_off") end
	elseif word == "diario" or word == "journal" then
		if not (NS.JournalFrame and NS.JournalFrame:Open("stories")) then Say("arc_cmd_nojournal") end
	elseif word == "stato" or word == "status" then
		NS:Print("Story Arcs: " .. self:Status())
	elseif word == "max" then
		local ok, v = self:SetMaxActive(arg)
		if not ok then Say("arc_cmd_max_bad") else Say("arc_cmd_max", v) end
	elseif word == "off" or word == "spegni" then
		self:SetEnabled(false)
		Say("arc_cmd_module_off")
	elseif word == "on" or word == "accendi" then
		self:SetEnabled(true)
		Say("arc_cmd_module_on")
	else
		local action = ({ scegli = "choose", choose = "choose", prosegui = "choose", inizia = "start", start = "start",
			sospendi = "suspend", suspend = "suspend", riprendi = "resume", resume = "resume", salta = "skip", skip = "skip",
			disattiva = "disable", disable = "disable", attiva = "enable", enable = "enable" })[word]
		if not action then
			Say("arc_cmd_help")
			return
		end
		local name, option = arg:match("^(.-) +([a-z][a-z0-9_]*)$")
		if action ~= "choose" or not self:Find(name or "") then name, option = arg, nil end
		if ALL[Lower(arg)] then
			if action == "suspend" or action == "skip" then
				Say("arc_cmd_all", self:ForAll(action))
			elseif action == "disable" then
				self:SetEnabled(false)
				Say("arc_cmd_module_off")
			elseif action == "enable" then
				self:SetEnabled(true)
				Say("arc_cmd_module_on")
			else
				Say("arc_cmd_help")
			end
			return
		end
		local id = self:Find(name)
		if not id then
			Say("arc_cmd_unknown", arg)
			return
		end
		local ok, why
		if action == "choose" then ok, why = self:Choose(id, option)
		elseif action == "start" then ok, why = self:Start(id)
		elseif action == "suspend" then ok, why = self:Suspend(id)
		elseif action == "resume" then ok, why = self:Resume(id)
		elseif action == "skip" then ok, why = self:Skip(id)
		elseif action == "disable" then ok, why = self:Disable(id)
		else ok, why = self:Enable(id) end
		if ok then
			Say("arc_cmd_done_" .. action, self:Title(id))
		elseif action == "choose" and why == "bad_option" then
			local rec = self:Record(id)
			local labels = {}
			for _, o in ipairs(rec and rec.offer and rec.offer.options or EMPTY) do table.insert(labels, o.id .. " = " .. o.label) end
			Say("arc_cmd_choose_hint", id, table.concat(labels, "; "))
		else
			NS:Print(Reason("arc_why_", why))
		end
	end
end

function SA:OnInit()
	self.owed, self.inflight, self.lastBeat, self.nextFlush, self.log = {}, nil, nil, nil, {}
	self:Sanitize()
end
