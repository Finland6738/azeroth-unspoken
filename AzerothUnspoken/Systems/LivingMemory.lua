-- Azeroth Unspoken: Living Memory, la memoria selettiva del personaggio (GDD §7.4, §11.5, ADR 0017).
-- Tre livelli:
--   - episodico della sessione: i momenti significativi di questa sessione di gioco (solo in memoria);
--   - personale persistente: ricordi, luoghi visitati e conteggi, salvati per personaggio in
--     AzerothUnspokenCharacterDB.memories (compattati oltre 500 ricordi ordinari, con ricordi permanenti);
--   - flag narrativi: segni con nome ("first_death") che scene, archi (S9) e frasi possono leggere.
-- Si ricordano solo momenti significativi: prima visita a una zona, ritorno dopo un po', visita finita male (morte,
-- fuga), morti, livelli e capitali. Mai ogni clic, mai testo di chat o di whisper, mai dati di altri giocatori.
-- Il richiamo è onesto: le condizioni delle frasi (firstVisit, repeatVisit, lastVisitBad, visitsMin,
-- daysSinceLastVisit, remembered) leggono ctx.memory, costruito solo da dati veri, e gli eventi di richiamo hanno una
-- guardia nel motore (Engine:SetEventGuard): senza un ricordo corrispondente non producono alcuna frase.
local ADDON, NS = ...
local Engine = NS.Engine

---@class AUMemoryEntry un ricordo persistente (GDD §7.4)
---@field id integer identificativo, unico per personaggio
---@field t number momento (epoch, secondi)
---@field zone? string zona, nel nome del client
---@field kind string first_visit | return | death | flight | level | story | ...
---@field importance integer 1-5; sotto PERSIST_MIN resta solo nella sessione
---@field tags string[] etichette brevi (minuscole ASCII)
---@field source "auto"|"user"|"addon" chi l'ha creato
---@field level? integer livello del personaggio in quel momento
---@field perm? boolean permanente: non si compatta mai

---@class AUMemoryPlace un luogo visitato
---@field key string chiave stabile: "map:<uiMapID>" se il client lo dà, altrimenti il nome della zona (issue #31)
---@field name string nome della zona nel client, da mostrare (si aggiorna a ogni visita)
---@field mapID? integer uiMapID
---@field first number
---@field last number fine dell'ultima visita (aggiornata durante la visita)
---@field arrived number inizio della visita attuale o più recente
---@field visits integer
---@field deaths integer
---@field capital? boolean
---@field lastOutcome? "bad" esito della visita attuale
---@field badKind? string death | flight
---@field badId? integer id del ricordo che ha segnato la visita come finita male
---@field prev? { last?: number, bad?: boolean, badKind?: string } com'era finita la visita precedente

---@class AUMemoryFlag
---@field t number
---@field source string

---@class AUMemoryData dati salvati: AzerothUnspokenCharacterDB.memories
---@field version integer
---@field nextId integer
---@field entries AUMemoryEntry[]
---@field places table<string, AUMemoryPlace> per chiave stabile (AUMemoryPlace.key)
---@field flags table<string, AUMemoryFlag>
---@field stats { compacted?: integer }

---@class AUMemoryContext ctx.memory: solo ricordi veri
---@field zone? string nome della zona
---@field key? string chiave stabile del luogo
---@field firstVisit? boolean è la prima visita (registrata) a questa zona
---@field repeatVisit? boolean la zona era già stata visitata
---@field visits? integer visite alla zona, questa compresa
---@field lastVisitBad? boolean la visita precedente è finita male
---@field lastBadKind? string death | flight
---@field daysSinceLastVisit? number giorni dalla fine della visita precedente
---@field flags table<string, AUMemoryFlag> flag narrativi (sola lettura)
---@field session { deaths: integer, levels: integer, zones: integer } la sessione di gioco

---@class AULivingMemory
local LM = NS:RegisterModule("memory")
NS.LivingMemory = LM

LM.VERSION = 2                 -- forma dei dati in AzerothUnspokenCharacterDB.memories (2: luoghi per uiMapID, #31)
LM.MAX_ORDINARY = 500          -- ricordi ordinari per personaggio (GDD §7.4)
LM.COMPACT_TO = 450            -- dopo una compattazione se ne tengono 450, così non si ripete a ogni ricordo
LM.MAX_PERMANENT = 200         -- limite ai permanenti, che non si compattano
LM.MAX_PLACES = 300            -- luoghi tenuti; oltre si dimenticano i meno recenti
LM.MAX_SESSION = 60            -- momenti dell'episodico di sessione
LM.PERSIST_MIN = 2             -- importanza minima per salvare un ricordo
LM.VISIT_GAP = 600             -- secondi fuori da una zona oltre i quali un nuovo ingresso è una nuova visita
LM.RETURN_GAP = 86400          -- ritorno dopo almeno un giorno: ricordo salvato; prima resta nella sessione
LM.TICK = 300                  -- ogni quanti secondi si aggiorna la fine della visita in corso
LM.FLIGHT_HP = 0.35            -- uscire da una zona sotto questa salute (o in combattimento) è una fuga
LM.DEATH_GAP = 60              -- due morti nella stessa zona più vicine di così sono un solo ricordo
LM.RETURN_DELAY = 3            -- secondi dall'ingresso in zona al richiamo (come l'atmosfera di zona)
LM.MAX_TAGS, LM.TAG_LEN, LM.ZONE_LEN, LM.FLAG_LEN = 6, 24, 64, 32

---@type table<string, integer> tipo -> importanza predefinita (1-5)
LM.KINDS = { first_visit = 3, ["return"] = 2, death = 3, flight = 3, level = 2, story = 3 }
LM.SOURCES = { auto = true, user = true, addon = true }

---@type { [integer]: string }
LM.KIND_ORDER = { "first_visit", "return", "death", "flight", "level", "story" }

LM.readOnly = false            -- dati scritti da una versione più nuova: si leggono, non si cambiano
LM.session = nil
LM.current = nil               -- { zone, key, since }: la zona in cui si trova il personaggio
LM.visit = nil                 -- com'è la visita in corso (AUMemoryContext senza flag e sessione)
LM.recalls = {}                -- [evento] = fn(memory, ctx) -> boolean: il ricordo che lo giustifica

---------------------------------------------------------------------------
-- Utilità
---------------------------------------------------------------------------
local function Now()
	return (time and time()) or 0
end
LM.Now = Now

local function Clamp(v, lo, hi)
	return math.max(lo, math.min(hi, v))
end

-- taglia a n byte senza spezzare un carattere UTF-8
local function Clip(s, n)
	if type(s) ~= "string" then return nil end
	if #s <= n then return s end
	local cut = n
	while cut > 0 do
		local b = s:byte(cut + 1)
		if b and b >= 0x80 and b < 0xC0 then cut = cut - 1 else break end
	end
	return s:sub(1, cut)
end

local function CleanTags(list)
	local out, seen = {}, {}
	if type(list) ~= "table" then return out end
	for _, t in ipairs(list) do
		if type(t) == "string" and #t <= LM.TAG_LEN and t:match("^[a-z0-9_]+$") and not seen[t] and #out < LM.MAX_TAGS then
			seen[t] = true
			table.insert(out, t)
		end
	end
	return out
end

local function IsNumber(v)
	return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge
end

local function PlayerLevel()
	local lvl = NS.Compat.SafeCall("UnitLevel", "player")
	return IsNumber(lvl) and math.floor(lvl) or nil
end

local function InCombat()
	return NS.Compat.SafeCall("UnitAffectingCombat", "player") == true
end

---@return number? ratio salute 0-1, nil se il client non la dà
local function HealthRatio()
	local hp, hpMax = NS.Compat.SafeCall("UnitHealth", "player"), NS.Compat.SafeCall("UnitHealthMax", "player")
	if IsNumber(hp) and IsNumber(hpMax) and hpMax > 0 then return hp / hpMax end
	return nil
end

local function IsCapital(zone, mapID)
	local entry = NS.Place and NS.Place:Lookup(mapID, zone)
	if entry and entry.capital then return true end
	return type(zone) == "string" and NS.zoneMoods ~= nil and NS.zoneMoods[NS.Lower(zone)] == "city"
end

---------------------------------------------------------------------------
-- Dati salvati: forma, pulizia, migrazioni
---------------------------------------------------------------------------
---@return AUMemoryData?
function LM:Data()
	local c = NS.cdb
	if not c then return nil end
	local m = c.memories
	if type(m) ~= "table" then
		m = {}
		c.memories = m
	end
	if type(m.entries) ~= "table" then m.entries = {} end
	if type(m.places) ~= "table" then m.places = {} end
	if type(m.flags) ~= "table" then m.flags = {} end
	if type(m.stats) ~= "table" then m.stats = {} end
	if not IsNumber(m.nextId) or m.nextId < 1 then m.nextId = 1 end
	if not IsNumber(m.version) then m.version = self.VERSION end
	return m
end

-- Migrazioni interne della forma dei dati: migrations[n] porta da n-1 a n. La 0 (assente) è il segnaposto vuoto che
-- lo schema 3 lasciava in `memories`; la 1 indicizzava i luoghi per nome della zona; la 2 (attuale) per chiave stabile.
---@type table<integer, fun(m: table)>
LM.migrations = {
	[1] = function(m)
		for _, k in ipairs({ "entries", "places", "flags", "stats" }) do
			if type(m[k]) ~= "table" then m[k] = {} end
		end
		if not IsNumber(m.nextId) then m.nextId = 1 end
	end,
	-- 2 (issue #31): i luoghi passano dal nome della zona a una chiave stabile. Un nome che i dati dei luoghi
	-- (Data/Places.lua) conoscono con un uiMapID VERIFICATO diventa subito "map:<id>"; gli altri restano col nome come
	-- chiave e passano all'uiMapID alla prossima visita, quando il client lo dà (EnterZone, adozione per nome).
	-- Due nomi che portano allo stesso numero si uniscono (visite e morti sommate, date estreme).
	[2] = function(m)
		local places = {}
		for name, p in pairs(type(m.places) == "table" and m.places or {}) do
			if type(name) == "string" and type(p) == "table" then
				local entry, how
				if NS.Place then entry, how = NS.Place:Lookup(nil, name) end
				local mapID = how == "name" and entry and entry.verified and entry.map or nil
				local key = mapID and ("map:" .. mapID) or name
				p.name, p.key, p.mapID = name, key, mapID
				local old = places[key]
				if old then
					old.visits = (tonumber(old.visits) or 1) + (tonumber(p.visits) or 1)
					old.deaths = (tonumber(old.deaths) or 0) + (tonumber(p.deaths) or 0)
					if (tonumber(p.first) or 0) < (tonumber(old.first) or 0) then old.first = p.first end
					if (tonumber(p.last) or 0) > (tonumber(old.last) or 0) then old.last, old.name = p.last, name end
				else
					places[key] = p
				end
			end
		end
		m.places = places
	end,
}

local function CleanEntry(e)
	if type(e) ~= "table" or not IsNumber(e.id) or e.id < 1 or not IsNumber(e.t) then return nil end
	if type(e.kind) ~= "string" or e.kind == "" or #e.kind > 24 then return nil end
	-- si copiano solo i campi previsti: qualsiasi altro contenuto (testo di chat compreso) non resta
	return {
		id = math.floor(e.id), t = e.t, zone = Clip(e.zone, LM.ZONE_LEN), kind = e.kind,
		importance = IsNumber(e.importance) and Clamp(math.floor(e.importance), 1, 5) or 1,
		tags = CleanTags(e.tags), source = LM.SOURCES[e.source] and e.source or "auto",
		level = IsNumber(e.level) and math.floor(e.level) or nil, perm = e.perm == true or nil,
	}
end

local function CleanPlace(key, p)
	if type(key) ~= "string" or key == "" or type(p) ~= "table" then return nil end
	if not IsNumber(p.first) or not IsNumber(p.last) then return nil end
	local mapID = key:match("^map:(%d+)$")
	mapID = mapID and tonumber(mapID)
	-- con una chiave per nome il nome è la chiave; con un uiMapID il nome è l'ultima etichetta vista
	local name = key
	if mapID then name = type(p.name) == "string" and p.name ~= "" and p.name or nil end
	if not name then return nil end
	local out = {
		key = mapID and key or Clip(key, LM.ZONE_LEN), mapID = mapID,
		name = Clip(name, LM.ZONE_LEN), first = p.first, last = p.last,
		arrived = IsNumber(p.arrived) and p.arrived or p.first,
		visits = IsNumber(p.visits) and math.max(1, math.floor(p.visits)) or 1,
		deaths = IsNumber(p.deaths) and math.max(0, math.floor(p.deaths)) or 0,
		capital = p.capital == true or nil,
	}
	if p.lastOutcome == "bad" then
		out.lastOutcome = "bad"
		out.badKind = type(p.badKind) == "string" and Clip(p.badKind, 12) or "death"
		out.badId = IsNumber(p.badId) and math.floor(p.badId) or nil
	end
	if type(p.prev) == "table" then
		out.prev = { last = IsNumber(p.prev.last) and p.prev.last or nil, bad = p.prev.bad == true or nil,
			badKind = p.prev.bad == true and type(p.prev.badKind) == "string" and Clip(p.prev.badKind, 12) or nil }
	end
	return out
end

local function ValidFlagName(name)
	return type(name) == "string" and #name <= LM.FLAG_LEN and name:match("^[A-Za-z0-9_]+$") ~= nil
end

---Porta i dati alla versione corrente e scarta ciò che è malformato: la memoria non rompe mai l'addon.
---Dati scritti da una versione più nuova non si toccano (la memoria resta in sola lettura).
---@return integer dropped voci scartate
function LM:Sanitize()
	self.readOnly = false
	local m = self:Data()
	if not m then return 0 end
	local v = tonumber(m.version) or 0
	if v > self.VERSION then
		self.readOnly = true
		NS.Diagnostics:Error("memory", ("memories.version %d > %d: sola lettura"):format(v, self.VERSION))
		return 0
	end
	for n = v + 1, self.VERSION do
		local step = self.migrations[n]
		if step and not NS.Diagnostics:Guard("memory:migrate:" .. n, step, m) then
			self.readOnly = true
			return 0
		end
		m.version = n
	end

	local dropped, entries, seen, maxId = 0, {}, {}, 0
	for _, e in pairs(m.entries) do
		local clean = CleanEntry(e)
		if clean and not seen[clean.id] then
			seen[clean.id] = true
			maxId = math.max(maxId, clean.id)
			table.insert(entries, clean)
		else
			dropped = dropped + 1
		end
	end
	table.sort(entries, function(a, b)
		if a.t ~= b.t then return a.t < b.t end
		return a.id < b.id
	end)
	m.entries = entries
	if m.nextId <= maxId then m.nextId = maxId + 1 end

	local places = {}
	for key, p in pairs(m.places) do
		local clean = CleanPlace(key, p)
		if clean then places[clean.key] = clean else dropped = dropped + 1 end
	end
	m.places = places

	local flags = {}
	for name, f in pairs(m.flags) do
		if ValidFlagName(name) then
			if type(f) == "table" then
				flags[name] = { t = IsNumber(f.t) and f.t or 0, source = self.SOURCES[f.source] and f.source or "auto" }
			elseif f == true then
				flags[name] = { t = 0, source = "auto" }
			else
				dropped = dropped + 1
			end
		else
			dropped = dropped + 1
		end
	end
	m.flags = flags
	m.stats = { compacted = IsNumber(m.stats.compacted) and math.max(0, math.floor(m.stats.compacted)) or nil }
	self:CapPlaces()
	self:Compact()
	return dropped
end

---------------------------------------------------------------------------
-- Stato della sessione (l'episodico)
---------------------------------------------------------------------------
function LM:StartSession()
	self.session = { startedAt = Now(), entries = {}, deaths = 0, levels = 0, zones = 0, zoneSet = {}, seq = 0 }
	self.current, self.visit = nil, nil
end

---@return boolean
function LM:Enabled()
	return NS.db ~= nil and NS.cdb ~= nil and self.session ~= nil and NS.db.modules.memory ~= false and not self.readOnly
end

---------------------------------------------------------------------------
-- Registrare un ricordo
---------------------------------------------------------------------------
---Aggiunge un tipo di ricordo (un pacchetto o un sistema, ad esempio gli archi di S9).
---@param kind string
---@param importance? integer importanza predefinita 1-5 (predefinita 2)
function LM:RegisterKind(kind, importance)
	if type(kind) ~= "string" or not kind:match("^[a-z0-9_]+$") or #kind > 24 then return false end
	if not self.KINDS[kind] then table.insert(self.KIND_ORDER, kind) end
	self.KINDS[kind] = IsNumber(importance) and Clamp(math.floor(importance), 1, 5) or 2
	return true
end

---@class AUMemorySpec
---@field kind string tipo registrato
---@field zone? string
---@field importance? integer
---@field tags? string[]
---@field source? "auto"|"user"|"addon"
---@field perm? boolean
---@field level? integer
---@field t? number

---Registra un momento. Sotto PERSIST_MIN resta solo nell'episodico di sessione; altrimenti viene salvato.
---Solo i campi di AUMemorySpec entrano nel ricordo: nessun testo libero, nessuna chat.
---@param spec AUMemorySpec
---@return AUMemoryEntry? entry nil se la memoria è spenta o il tipo non esiste
---@return boolean? persisted
function LM:Record(spec)
	if not self:Enabled() or type(spec) ~= "table" then return nil end
	local kind = spec.kind
	if type(kind) ~= "string" or not self.KINDS[kind] then return nil end
	local m = self:Data()
	local e = {
		id = 0, t = IsNumber(spec.t) and spec.t or Now(), zone = Clip(spec.zone, self.ZONE_LEN), kind = kind,
		importance = Clamp(IsNumber(spec.importance) and math.floor(spec.importance) or self.KINDS[kind], 1, 5),
		tags = CleanTags(spec.tags), source = self.SOURCES[spec.source] and spec.source or "auto",
		level = IsNumber(spec.level) and math.floor(spec.level) or PlayerLevel(),
	}
	if e.zone == "" then e.zone = nil end

	local persisted = e.importance >= self.PERSIST_MIN
	if persisted then
		e.id = m.nextId
		m.nextId = m.nextId + 1
		if spec.perm == true and self:CountPermanent() < self.MAX_PERMANENT then e.perm = true end
		table.insert(m.entries, e)
		self:Compact()
	else
		local s = self.session
		s.seq = s.seq + 1
		e.id = -s.seq     -- id negativo: solo della sessione
	end
	local s = self.session
	table.insert(s.entries, e)
	while #s.entries > self.MAX_SESSION do table.remove(s.entries, 1) end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return e, persisted
end

---@return integer
function LM:CountPermanent()
	local n = 0
	local m = self:Data()
	for _, e in ipairs(m and m.entries or {}) do
		if e.perm then n = n + 1 end
	end
	return n
end

---Compattazione: oltre MAX_ORDINARY ricordi ordinari si tolgono i meno significativi (importanza più bassa e,
---a parità, i più vecchi) fino a COMPACT_TO. I permanenti non si toccano; luoghi e flag non dipendono dai ricordi.
---@return integer removed
function LM:Compact()
	local m = self:Data()
	if not m then return 0 end
	local ordinary = {}
	for _, e in ipairs(m.entries) do
		if not e.perm then table.insert(ordinary, e) end
	end
	if #ordinary <= self.MAX_ORDINARY then return 0 end
	table.sort(ordinary, function(a, b)
		if a.importance ~= b.importance then return a.importance < b.importance end
		if a.t ~= b.t then return a.t < b.t end
		return a.id < b.id
	end)
	local drop, gone = #ordinary - self.COMPACT_TO, {}
	for i = 1, drop do gone[ordinary[i].id] = true end
	local kept = {}
	for _, e in ipairs(m.entries) do
		if not gone[e.id] then table.insert(kept, e) end
	end
	m.entries = kept
	m.stats.compacted = (m.stats.compacted or 0) + drop
	return drop
end

-- i luoghi più antichi si dimenticano oltre MAX_PLACES (non quello in cui si è ora)
function LM:CapPlaces()
	local m = self:Data()
	if not m then return end
	local list = {}
	for key, p in pairs(m.places) do table.insert(list, { name = key, last = p.last }) end
	if #list <= self.MAX_PLACES then return end
	table.sort(list, function(a, b)
		if a.last ~= b.last then return a.last < b.last end
		return a.name < b.name
	end)
	local drop = #list - self.MAX_PLACES
	for i = 1, #list do
		if drop <= 0 then break end
		if not (self.current and self.current.key == list[i].name) then
			m.places[list[i].name] = nil
			drop = drop - 1
		end
	end
end

---------------------------------------------------------------------------
-- Cancellare, rendere permanente, dimenticare
---------------------------------------------------------------------------
---@param id integer
---@return AUMemoryEntry? entry
---@return integer? index
function LM:Find(id)
	local m = self:Data()
	for i, e in ipairs(m and m.entries or {}) do
		if e.id == id then return e, i end
	end
	return nil
end

---Cancella un ricordo. Se era ciò che segnava una visita come finita male, il richiamo "finì male" sparisce con lui.
---@param id integer
---@return boolean removed
function LM:Delete(id)
	if self.readOnly then return false end
	local m = self:Data()
	local e, i = self:Find(id)
	if not e then
		-- un momento della sessione che non è stato salvato
		for k, x in ipairs(self.session and self.session.entries or {}) do
			if x.id == id then table.remove(self.session.entries, k); return true end
		end
		return false
	end
	table.remove(m.entries, i)
	for k, x in ipairs(self.session and self.session.entries or {}) do
		if x.id == id then table.remove(self.session.entries, k); break end
	end
	for _, p in pairs(m.places) do
		if p.badId == id then
			p.lastOutcome, p.badKind, p.badId = nil, nil, nil
		end
	end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return true
end

---Segna o toglie la permanenza (mai compattato).
---@param id integer
---@param on? boolean predefinito: inverte
---@return boolean ok
---@return string? reason "limit" | "missing"
function LM:SetPermanent(id, on)
	if self.readOnly then return false, "readonly" end
	local e = self:Find(id)
	if not e then return false, "missing" end
	if on == nil then on = not e.perm end
	if on and not e.perm and self:CountPermanent() >= self.MAX_PERMANENT then return false, "limit" end
	e.perm = on or nil
	if not on then self:Compact() end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return true
end

---Il luogo salvato per una chiave o, in mancanza, per nome della zona.
---@param keyOrName string
---@return AUMemoryPlace? place
---@return string? key
function LM:FindPlace(keyOrName)
	local m = self:Data()
	if not m or type(keyOrName) ~= "string" then return nil end
	if m.places[keyOrName] then return m.places[keyOrName], keyOrName end
	local low = NS.Lower(keyOrName)
	for key, p in pairs(m.places) do
		if p.name == keyOrName or NS.Lower(p.name or "") == low then return p, key end
	end
	return nil
end

---Dimentica un luogo (per chiave o per nome): la prossima volta sarà di nuovo la prima visita.
---@param zone string chiave del luogo o nome della zona
---@return boolean
function LM:ForgetPlace(zone)
	if self.readOnly then return false end
	local m = self:Data()
	local p, key = self:FindPlace(zone)
	if not m or not p then return false end
	m.places[key] = nil
	if self.current and self.current.key == key then self.current, self.visit = nil, nil end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return true
end

---Azzera la memoria. what: "all" (ricordi, luoghi, flag), "memories" (tutti i ricordi, permanenti compresi),
---"ordinary" (solo i non permanenti), "places", "flags".
---@param what string
---@return boolean ok
---@return integer? removed
function LM:Reset(what)
	if self.readOnly then return false end
	local m = self:Data()
	if not m or not (what == "all" or what == "memories" or what == "ordinary" or what == "places" or what == "flags") then
		return false
	end
	local removed = 0
	if what == "all" or what == "memories" then
		removed = #m.entries
		m.entries, m.stats = {}, {}
		if what == "all" then m.nextId = 1 end
	elseif what == "ordinary" then
		local kept = {}
		for _, e in ipairs(m.entries) do
			if e.perm then table.insert(kept, e) else removed = removed + 1 end
		end
		m.entries = kept
	end
	if what == "all" or what == "places" then
		for _ in pairs(m.places) do removed = removed + 1 end
		m.places = {}
		self.current, self.visit = nil, nil
	end
	if what == "all" or what == "flags" then
		for _ in pairs(m.flags) do removed = removed + 1 end
		m.flags = {}
	end
	if what == "all" or what == "memories" or what == "ordinary" then
		if self.session then self.session.entries = {} end
		-- le visite finite male si sapevano da ricordi che non ci sono più
		for _, p in pairs(m.places) do p.lastOutcome, p.badKind, p.badId = nil, nil, nil end
	end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return true, removed
end

---------------------------------------------------------------------------
-- Flag narrativi
---------------------------------------------------------------------------
---Imposta un flag (idempotente: il primo momento resta).
---@param name string lettere ASCII, cifre e _, al massimo 32 caratteri
---@param source? "auto"|"user"|"addon"
---@return boolean ok
function LM:SetFlag(name, source)
	if self.readOnly or not ValidFlagName(name) then return false end
	local m = self:Data()
	if not m then return false end
	name = NS.Lower(name)
	if not m.flags[name] then
		m.flags[name] = { t = Now(), source = self.SOURCES[source] and source or "addon" }
		if NS.JournalFrame then NS.JournalFrame:Refresh() end
		-- un flag nuovo è un fatto per chi lo aspetta (gli archi di S9): sul bus passano solo il nome e chi l'ha messo, mai altro
		if NS.EventBus and NS.EventBus.Publish then
			NS.EventBus:Publish("MEMORY_FLAG", { name = name, source = m.flags[name].source },
				{ key = name, source = NS.EventBus.SOURCE.ADDON, window = 0 })
		end
	end
	return true
end

---@param name string
---@return boolean removed
function LM:ClearFlag(name)
	if self.readOnly or not ValidFlagName(name) then return false end
	local m = self:Data()
	name = NS.Lower(name)
	if not m or not m.flags[name] then return false end
	m.flags[name] = nil
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
	return true
end

---@param name string
---@return boolean
function LM:HasFlag(name)
	local m = self:Data()
	return m ~= nil and ValidFlagName(name) and m.flags[NS.Lower(name)] ~= nil
end

---@return string[] names in ordine alfabetico
function LM:FlagNames()
	local out = {}
	local m = self:Data()
	for name in pairs(m and m.flags or {}) do table.insert(out, name) end
	table.sort(out)
	return out
end

---------------------------------------------------------------------------
-- Luoghi e visite
---------------------------------------------------------------------------
-- Com'è la visita (AUMemoryContext senza flag e sessione), dai dati del luogo.
local function SnapshotFor(p)
	local prev = p.prev
	local days
	if prev and prev.last and IsNumber(p.arrived) then days = math.max(0, p.arrived - prev.last) / 86400 end
	return {
		zone = p.name, key = p.key, visits = p.visits, firstVisit = p.visits == 1, repeatVisit = p.visits >= 2,
		lastVisitBad = prev ~= nil and prev.bad == true, lastBadKind = prev and prev.bad and prev.badKind or nil,
		daysSinceLastVisit = days,
	}
end

---Il personaggio entra in una zona. Una nuova visita (prima volta, o ritorno dopo VISIT_GAP) aggiorna il luogo e
---registra il ricordo; un ingresso ripetuto subito dopo (ricarica, bordo di zona) continua la visita.
---Il luogo si riconosce dall'uiMapID quando il client lo dà (opts.mapID), dal nome altrimenti (issue #31). Un luogo
---salvato solo per nome (versione 1, o una visita senza uiMapID) passa all'uiMapID alla prima visita che lo porta.
---@param zone? string
---@param opts? { fled?: boolean, mapID?: integer }
---@return table? snapshot com'è la visita
---@return boolean? newVisit
function LM:EnterZone(zone, opts)
	opts = opts or {}
	if not self:Enabled() or type(zone) ~= "string" or zone == "" then return nil end
	zone = Clip(zone, self.ZONE_LEN)
	local mapID = IsNumber(opts.mapID) and opts.mapID > 0 and math.floor(opts.mapID) or nil
	local key = NS.Place and NS.Place.Key(mapID, zone) or zone
	local m, now = self:Data(), Now()
	if mapID and not m.places[key] and m.places[zone] and not m.places[zone].mapID then
		-- adozione: il luogo salvato per nome diventa il luogo con questo uiMapID
		local old = m.places[zone]
		m.places[zone] = nil
		old.key, old.mapID = key, mapID
		m.places[key] = old
		if self.current and self.current.key == zone then self.current.key = key end
	end
	if self.current and self.current.key == key and m.places[key] then
		m.places[key].name = zone
		return self.visit, false
	end
	if self.current then self:LeaveZone(opts.fled) end

	local p, newVisit = m.places[key], false
	if p then p.name = zone end
	if not p then
		p = { key = key, mapID = mapID, name = zone, first = now, last = now, arrived = now, visits = 1, deaths = 0,
			capital = IsCapital(zone, mapID) or nil }
		m.places[key] = p
		newVisit = true
		self:CapPlaces()
		local tags = { "visit" }
		if p.capital then table.insert(tags, "capital") end
		self:Record({ kind = "first_visit", zone = zone, tags = tags, t = now,
			importance = p.capital and 4 or nil })
		if p.capital then self:SetFlag("first_capital", "auto") end
	elseif now - (p.last or 0) >= self.VISIT_GAP then
		newVisit = true
		p.prev = { last = p.last, bad = p.lastOutcome == "bad" or nil,
			badKind = p.lastOutcome == "bad" and p.badKind or nil }
		p.lastOutcome, p.badKind, p.badId = nil, nil, nil
		local away = now - (p.last or now)
		p.visits = p.visits + 1
		p.arrived, p.last = now, now
		-- un ritorno dopo poco è solo un momento della sessione; dopo un giorno merita un ricordo
		self:Record({ kind = "return", zone = zone, tags = { "visit" }, t = now,
			importance = away >= self.RETURN_GAP and 2 or 1 })
	else
		p.last = math.max(p.last or now, now)
	end
	self.current = { zone = zone, key = key, since = now }
	self.visit = SnapshotFor(p)
	local s = self.session
	if not s.zoneSet[key] then
		s.zoneSet[key] = true
		s.zones = s.zones + 1
	end
	return self.visit, newVisit
end

---Il personaggio lascia la zona attuale. Uscire in combattimento o quasi morti è una fuga: la visita finisce male.
---@param fled? boolean
function LM:LeaveZone(fled)
	local cur = self.current
	if not cur then return end
	local m = self:Data()
	local p = m and m.places[cur.key]
	if p then
		p.last = Now()
		if fled and p.lastOutcome ~= "bad" then
			local e = self:Record({ kind = "flight", zone = cur.zone, tags = { "bad", "flight" } })
			self:MarkBad(cur.key, "flight", e)
		end
	end
	self.current = nil
end

---La visita attuale a una zona è finita male (morte o fuga).
---@param key string chiave del luogo
---@param kind string death | flight
---@param entry? AUMemoryEntry il ricordo che lo documenta
function LM:MarkBad(key, kind, entry)
	local m = self:Data()
	local p = m and m.places[key]
	if not p then return end
	p.lastOutcome, p.badKind = "bad", kind
	p.badId = entry and entry.id > 0 and entry.id or nil
end

---Aggiorna la fine della visita in corso (così una ricarica o una disconnessione non la perdono).
function LM:Touch()
	if not self:Enabled() or not self.current then return end
	local m = self:Data()
	local p = m.places[self.current.key]
	if p then p.last = math.max(p.last or 0, Now()) end
end

---------------------------------------------------------------------------
-- Eventi del gioco
---------------------------------------------------------------------------
---Il personaggio muore. Il primo decesso è un flag e un ricordo più importante.
---@return AUMemoryEntry?
function LM:OnDeath()
	if not self:Enabled() then return nil end
	local m, now = self:Data(), Now()
	local zone = self.current and self.current.zone
	local key = self.current and self.current.key
	local s = self.session
	s.deaths = s.deaths + 1
	-- due morti ravvicinate nella stessa zona sono un solo ricordo
	for i = #s.entries, 1, -1 do
		local e = s.entries[i]
		if e.kind == "death" and e.zone == zone and now - e.t < self.DEATH_GAP then
			if key and m.places[key] then m.places[key].deaths = m.places[key].deaths + 1 end
			return nil
		end
	end
	local first = not self:HasFlag("first_death")
	local entry = self:Record({ kind = "death", zone = zone, tags = first and { "bad", "death", "first" } or { "bad", "death" },
		importance = first and 4 or nil, t = now })
	if first then self:SetFlag("first_death", "auto") end
	if key and m.places[key] then
		m.places[key].deaths = m.places[key].deaths + 1
		self:MarkBad(key, "death", entry)
	end
	return entry
end

---Il personaggio sale di livello. Ogni dieci livelli è un traguardo.
---@param level integer
---@return AUMemoryEntry?
function LM:OnLevel(level)
	if not self:Enabled() or not IsNumber(level) then return nil end
	level = math.floor(level)
	local milestone = level % 10 == 0
	self.session.levels = self.session.levels + 1
	if milestone then self:SetFlag("level_" .. level, "auto") end
	return self:Record({ kind = "level", zone = self.current and self.current.zone, level = level,
		tags = milestone and { "level", "milestone" } or { "level" }, importance = milestone and 4 or 2 })
end

-- il ritorno in una zona nota: un candidato per il Narrative Director, a richiamo di memoria
function LM:OfferReturn(key)
	C_Timer.After(self.RETURN_DELAY, function()
		if self.current and self.current.key == key and not InCombat() and NS.Director then
			NS.Director:Offer("memory_return")
		end
	end)
end

local handlers = {}

function handlers.WORLD_ENTER(env)
	local c = env.context
	LM:EnterZone(c.zone, { mapID = c.mapID })
end

function handlers.ZONE_ENTER(env)
	if not LM:Enabled() then return end
	-- fuga: si esce da una zona in combattimento o con poca salute (non da morti: la morte è già un esito)
	local ratio = HealthRatio()
	local dead = NS.Compat.SafeCall("UnitIsDeadOrGhost", "player") == true
	local fled = not dead and (InCombat() or (ratio ~= nil and ratio < LM.FLIGHT_HP))
	local snap, newVisit = LM:EnterZone(env.context.zone, { fled = fled, mapID = env.context.mapID })
	if newVisit and snap and snap.repeatVisit then LM:OfferReturn(snap.key) end
end

function handlers.PLAYER_DEATH()
	LM:OnDeath()
end

function handlers.LEVEL_UP(env)
	LM:OnLevel(env.context.level)
end

for eventType, fn in pairs(handlers) do
	NS.EventBus:Subscribe(eventType, "memory", fn)
end

---------------------------------------------------------------------------
-- Richiamo: contesto, condizioni e guardie
---------------------------------------------------------------------------
---Il contesto di memoria per le condizioni (ctx.memory). nil se la memoria è spenta.
---@param ctx table
---@return AUMemoryContext?
function LM:Context(ctx)
	if not self:Enabled() then return nil end
	local m = self:Data()
	local s = self.session
	local out = { flags = m.flags, session = { deaths = s.deaths, levels = s.levels, zones = s.zones } }
	local zone = ctx and ctx.zone
	-- il luogo del contesto per chiave stabile (uiMapID, issue #31), con il nome come ripiego
	local key = ctx and type(ctx.place) == "table" and ctx.place.key or zone
	local v = self.visit
	if key and v and (v.key == key or (zone and v.zone == zone and not (v.key and v.key:find("^map:")))) then
		out.zone, out.key = v.zone, v.key
		out.visits, out.firstVisit, out.repeatVisit = v.visits, v.firstVisit, v.repeatVisit
		out.lastVisitBad, out.lastBadKind, out.daysSinceLastVisit = v.lastVisitBad, v.lastBadKind, v.daysSinceLastVisit
	elseif key then
		-- un luogo noto in cui non ci si trova (prova a mano): si sa quante volte, non com'è andata
		local p = m.places[key] or (zone and self:FindPlace(zone))
		if p then out.zone, out.key, out.visits = p.name, p.key, p.visits end
	end
	return out
end

---Dichiara un evento di richiamo: ha la priorità "richiamo di memoria" (GDD §10), segue il modulo memoria e il
---motore lo fa parlare solo se `verify(memory, ctx)` conferma che il ricordo esiste.
---@param event string
---@param verify fun(memory: AUMemoryContext, ctx: table): boolean
function LM:RegisterRecall(event, verify)
	self.recalls[event] = verify
	NS:SetEventPriority(event, "memory")
	NS.NarrativeDirector.EVENT_MODULE[event] = "memory"
	Engine:SetEventGuard(event, "memory", function(ctx)
		local mem = ctx and ctx.memory
		return type(mem) == "table" and verify(mem, ctx) == true
	end)
end

-- Ritorno in un luogo già visitato (vertical slice C)
LM:RegisterRecall("memory_return", function(mem)
	return mem.repeatVisit == true and (mem.visits or 0) >= 2
end)

---------------------------------------------------------------------------
-- Testo: descrizioni ed esportazione
---------------------------------------------------------------------------
local function Stamp(t)
	if date and IsNumber(t) and t > 0 then return date("%Y-%m-%d %H:%M", t) end
	return "-"
end
LM.Stamp = Stamp

---Una riga per un ricordo, nella lingua scelta.
---@param e AUMemoryEntry
---@return string
function LM:Describe(e)
	local key = "mem_kind_" .. tostring(e.kind)
	local label = NS:L(key)
	if label == key then label = tostring(e.kind) end
	if e.kind == "level" and e.level then return label .. " " .. e.level end
	-- il ricordo di una storia conclusa (S9) dice quale: il titolo dell'arco, se si riconosce dai tag
	local arc = e.kind == "story" and NS.StoryArcs and NS.StoryArcs:TitleFromTags(e.tags)
	if arc then return label .. ": " .. arc end
	if e.zone then return label .. ": " .. e.zone end
	return label
end

---@param p AUMemoryPlace
---@return string
function LM:DescribePlace(p)
	local state = ""
	if p.lastOutcome == "bad" then state = " - " .. NS:L("mem_place_bad") end
	return ("%s%s - %s"):format(p.name, p.capital and " *" or "", NS:L("mem_place_visits", p.visits)) .. state
end

---I ricordi persistenti, dal più recente.
---@return AUMemoryEntry[]
function LM:List()
	local out = {}
	local m = self:Data()
	for _, e in ipairs(m and m.entries or {}) do table.insert(out, e) end
	table.sort(out, function(a, b)
		if a.t ~= b.t then return a.t > b.t end
		return a.id > b.id
	end)
	return out
end

---I luoghi visitati, dal più recente.
---@return AUMemoryPlace[]
function LM:Places()
	local out = {}
	local m = self:Data()
	for _, p in pairs(m and m.places or {}) do table.insert(out, p) end
	table.sort(out, function(a, b)
		if a.last ~= b.last then return a.last > b.last end
		return a.name < b.name
	end)
	return out
end

---I momenti della sessione, dal più recente.
---@return AUMemoryEntry[]
function LM:SessionList()
	local out = {}
	local s = self.session
	for i = #(s and s.entries or {}), 1, -1 do table.insert(out, s.entries[i]) end
	return out
end

---Conteggi per il diario e /au debug.
---@return { memories: integer, permanent: integer, ordinary: integer, places: integer, flags: integer, session: integer, compacted: integer }
function LM:Stats()
	local m = self:Data()
	local perm, places, flags = 0, 0, 0
	if m then
		for _, e in ipairs(m.entries) do
			if e.perm then perm = perm + 1 end
		end
		for _ in pairs(m.places) do places = places + 1 end
		for _ in pairs(m.flags) do flags = flags + 1 end
	end
	local total = m and #m.entries or 0
	return { memories = total, permanent = perm, ordinary = total - perm, places = places, flags = flags,
		session = self.session and #self.session.entries or 0, compacted = m and m.stats.compacted or 0 }
end

---Il testo che il giocatore può copiare (l'addon non scrive file). Contiene solo ciò che è nel diario.
---@return string
function LM:ExportText()
	local lines = {}
	local function Add(s) table.insert(lines, s) end
	local who = (NS.cdb and NS.Compat.SafeCall("UnitName", "player")) or "?"
	Add(NS:L("mem_export_title", who, Stamp(Now())))
	local st = self:Stats()
	Add("")
	Add(("== %s (%d) =="):format(NS:L("mem_tab_memories"), st.memories))
	for _, e in ipairs(self:List()) do
		local extra = {}
		table.insert(extra, NS:L("mem_importance", e.importance))
		if e.level and e.kind ~= "level" then table.insert(extra, NS:L("mem_level_short", e.level)) end
		if #e.tags > 0 then table.insert(extra, table.concat(e.tags, ",")) end
		Add(("[%s] %s%s | %s"):format(Stamp(e.t), e.perm and "* " or "", self:Describe(e), table.concat(extra, " | ")))
	end
	Add("")
	Add(("== %s (%d) =="):format(NS:L("mem_tab_places"), st.places))
	for _, p in ipairs(self:Places()) do
		Add(("%s | %s %s | %s %s"):format(self:DescribePlace(p), NS:L("mem_first"), Stamp(p.first), NS:L("mem_last"), Stamp(p.last)))
	end
	Add("")
	Add(("== %s (%d) =="):format(NS:L("mem_tab_flags"), st.flags))
	local m = self:Data()
	for _, name in ipairs(self:FlagNames()) do
		Add(("%s | %s"):format(name, Stamp(m.flags[name].t)))
	end
	return table.concat(lines, "\n")
end

---Riga per /au debug.
---@return string
function LM:Status()
	if not self:Enabled() then
		return self.readOnly and "read-only (newer data)" or "off"
	end
	local st = self:Stats()
	local zone = self.current and self.current.zone or "-"
	return ("%d memories (%d permanent), %d places, %d flags; session %d; in %s"):format(
		st.memories, st.permanent, st.places, st.flags, st.session, zone)
end

---------------------------------------------------------------------------
-- Comandi: /au diario ...
---------------------------------------------------------------------------
local function Say(key, ...) NS:Print(NS:L(key, ...)) end

local RESET_WORDS = {
	tutto = "all", all = "all", ricordi = "memories", memories = "memories", ordinari = "ordinary", ordinary = "ordinary",
	luoghi = "places", places = "places", flag = "flags", flags = "flags",
}

---@param rest string
function LM:Command(rest)
	rest = rest or ""
	local word, arg = rest:match("^([^ ]*) *(.-) *$")
	word = NS.Lower(word or "")
	if not self:Enabled() then
		Say(self.readOnly and "mem_readonly" or "mem_off")
		return
	end
	if word == "" then
		if NS.JournalFrame and NS.JournalFrame:Toggle() then return end
		word = "lista"
	end
	if word == "lista" or word == "list" then
		local st = self:Stats()
		Say("mem_summary", st.memories, st.permanent, st.places, st.flags)
		for i, e in ipairs(self:List()) do
			if i > 8 then break end
			NS:Print(("  #%d %s%s (%s)"):format(e.id, e.perm and "* " or "", self:Describe(e), Stamp(e.t)))
		end
	elseif word == "luoghi" or word == "places" then
		for _, p in ipairs(self:Places()) do NS:Print("  " .. self:DescribePlace(p)) end
	elseif word == "flag" or word == "flags" then
		local name = arg:match("^([^ ]*)") or ""
		if name == "" then
			local names = self:FlagNames()
			Say("mem_flags", #names > 0 and table.concat(names, ", ") or NS:L("mem_none"))
		elseif not ValidFlagName(name) then
			Say("mem_flag_invalid", name)
		elseif self:HasFlag(name) then
			self:ClearFlag(name)
			Say("mem_flag_off", NS.Lower(name))
		else
			self:SetFlag(name, "user")
			Say("mem_flag_on", NS.Lower(name))
		end
	elseif word == "esporta" or word == "export" then
		if not (NS.JournalFrame and NS.JournalFrame:ShowExport()) then
			local n = 0
			for line in (self:ExportText() .. "\n"):gmatch("([^\n]*)\n") do
				n = n + 1
				if n > 40 then break end
				NS:Print(line)
			end
		end
	elseif word == "permanente" or word == "pin" or word == "perm" then
		local id = tonumber(arg:match("^#?(%d+)"))
		local ok, why = false, "missing"
		if id then ok, why = self:SetPermanent(id) end
		if ok then
			local e = self:Find(id)
			Say(e and e.perm and "mem_perm_on" or "mem_perm_off", id)
		else
			Say(why == "limit" and "mem_perm_limit" or "mem_missing", arg)
		end
	elseif word == "elimina" or word == "delete" or word == "cancella" then
		local id = tonumber(arg:match("^#?(%d+)"))
		if id and self:Delete(id) then Say("mem_deleted", id) else Say("mem_missing", arg) end
	elseif word == "dimentica" or word == "forget" then
		if arg ~= "" and self:ForgetPlace(arg) then Say("mem_place_forgotten", arg) else Say("mem_missing", arg) end
	elseif word == "reset" or word == "azzera" then
		local what = RESET_WORDS[NS.Lower(arg:match("^([^ ]*)") or "")] or "all"
		local nowT = GetTime()
		local p = self.pendingReset
		if p and p.what == what and nowT <= p.untilT then
			self.pendingReset = nil
			local _, removed = self:Reset(what)
			Say("mem_reset_done", removed or 0)
		else
			self.pendingReset = { what = what, untilT = nowT + 15 }
			Say("mem_reset_confirm", what)
		end
	else
		Say("mem_help")
	end
end

---------------------------------------------------------------------------
-- Avvio
---------------------------------------------------------------------------
function LM:OnInit()
	self:StartSession()
	local dropped = self:Sanitize()
	if dropped > 0 then NS.Diagnostics:Error("memory", ("%d voci malformate scartate"):format(dropped)) end
	-- la fine della visita in corso si aggiorna ogni TICK secondi: il file salvato non ha mai una visita "vecchia"
	if C_Timer and C_Timer.NewTicker then
		C_Timer.NewTicker(self.TICK, function() LM:Touch() end)
	end
end
