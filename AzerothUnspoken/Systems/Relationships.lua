-- Azeroth Unspoken: relazioni e affinità (S6b, GDD §7.4, ADR 0018).
-- Il narratore scrive in modo diverso secondo il rapporto con la persona con cui interagisce: tono formale con uno
-- sconosciuto, caldo con un amico, teso con un rivale rispettato.
--   - Assi indipendenti (familiarità, fiducia, rispetto, affetto, timore, lealtà, attrazione facoltativa): non c'è
--     un'unica barra amico/nemico. Etichette derivate e disposizione complessiva sono DATI (Data/Relationships.lua).
--   - NPC: calcolati in automatico dall'`npcID` del GUID (gossip, quest, mercante, maestro di volo, addestratore,
--     locandiere), con rendimenti decrescenti, tetto giornaliero e decadimento lento della familiarità.
--   - Giocatori: gestiti SOLO dall'utente. Il sistema propone candidati (gruppo, scambi, bersagli con profilo Total
--     RP 3, persone a cui si è risposto in privato) ma nessuno entra in lista senza un'azione dell'utente, salvo
--     l'opzione esplicita "registra automaticamente" (spenta di base). Nessun testo di chat o di whisper è letto o
--     salvato; nulla va in rete.
--   - Narratore: ctx.relation, ctx.disposition e gli assi (ctx.rel), le condizioni delle regole, il segnaposto
--     {relation}, il fattore R del peso (Engine:SetWeightHook "R"), il registro per familiarità (StyleResolver).
-- I dati vivono in AzerothUnspokenCharacterDB.relationships (versione propria, migrazioni di schema 5).
local ADDON, NS = ...
local Engine, Traits, Compat = NS.Engine, NS.Traits, NS.Compat

---@alias AURelationKind "npc"|"player"

---@class AURelationRecord una relazione salvata (NPC: chiave npcID; giocatore: chiave "Nome-Reame")
---@field first number prima interazione (epoch)
---@field last number ultima interazione
---@field count integer numero di interazioni
---@field name? string nome dell'NPC (solo per mostrarlo)
---@field familiarity? number assi: il valore assente vale 0
---@field trust? number
---@field respect? number
---@field affection? number
---@field fear? number
---@field loyalty? number
---@field attraction? number
---@field label? string etichetta scelta a mano: un id di etichetta (precedenza sulla derivata) oppure un testo libero
---@field note? string nota libera dell'utente
---@field tags? string[] tag dell'utente (mai usati nelle regole)
---@field source? "user"|"auto" giocatori: chi l'ha aggiunto
---@field today? table contatori del giorno (NPC): { day, n = { fonte = n }, gain = { fonte = { asse = x } } }
---@field decayDay? integer giorno dell'ultimo decadimento (NPC)
---@field noted? table<string, boolean> etichette già ricordate nel diario
---@field traits? AUTraits personalità dell'interlocutore scelta dall'utente (S6c: temperament, morality, goals, speech)
---@field role? string ruolo dell'interlocutore (S6c)
---@field roleSource? "user"|"auto" chi ha deciso il ruolo: l'utente, o un'interazione affidabile

---@class AURelationsData dati salvati: AzerothUnspokenCharacterDB.relationships
---@field version integer
---@field npcs table<integer, AURelationRecord>
---@field players table<string, AURelationRecord>

---@class AURelationInfo la relazione risolta, per contesto e interfaccia
---@field kind AURelationKind
---@field axes table<string, number> gli assi attivi
---@field derived string etichetta derivata (id)
---@field label string etichetta in uso: la scelta a mano se è un id, altrimenti la derivata
---@field text string nome mostrato dell'etichetta (testo libero dell'utente, se c'è)
---@field manual boolean l'utente ha scelto l'etichetta
---@field disposition string id della disposizione complessiva
---@field dispositionText string
---@field dispositionValue number -100…100
---@field isKnown boolean
---@field traits AUTraits profilo per i tag delle frasi (assi, relation, disposition)

---@class AURelationships
local R = NS:RegisterModule("relations")
NS.Relationships = R

R.VERSION = 1                  -- forma dei dati in AzerothUnspokenCharacterDB.relationships
R.MAX_NPCS = 1000
R.COMPACT_NPCS = 900           -- dopo una compattazione se ne tengono 900
R.MAX_PLAYERS = 300
R.MAX_CANDIDATES = 40          -- proposte in memoria (mai salvate)
R.NOTE_LEN, R.LABEL_LEN, R.TAG_LEN, R.MAX_TAGS, R.NAME_LEN = 240, 24, 24, 6, 64
R.INTERACTION_SECONDS = 300    -- quanto resta "aperto" un dialogo con un NPC senza un evento di chiusura
R.QUEST_SECONDS = 900          -- tra l'apertura di una quest e l'accettazione o la consegna
R.KNOWN_GAP = 600              -- secondi tra due richiami "NPC conosciuto" per lo stesso NPC
R.DAY = 86400
R.SLIDER_STEP = 10             -- passo dei pulsanti -/+ dell'interfaccia

R.readOnly = false             -- dati scritti da una versione più nuova: si leggono, non si cambiano
R.axes, R.axisById = {}, {}    -- assi in ordine
R.labels, R.labelById = {}, {} -- etichette per priorità decrescente
R.dispositions, R.dispositionById = {}, {}
R.config = { knownMin = 15, lifetimeSoftness = 0.5, register = {}, dispositionStyles = {}, increments = {},
	decay = { graceDays = 14, perDay = 0.5, floor = 3 }, memorable = {},
	disposition = { weights = {}, familiarityWarmth = 0, bands = {} } }
R.candidates = {}              -- [chiave] = { key, source, t }: persone proposte, solo in questa sessione
R.dismissed = {}               -- [chiave] = true: proposte che l'utente ha scartato (solo sessione)
R.recalls = {}                 -- [evento] = true: eventi che citano un rapporto (il validatore chiede una condizione)
R.interaction = nil            -- { npcID, name, kind, t }: l'NPC con cui si sta parlando
R.session = { seen = {}, offered = {} }

local EMPTY = {}
Traits.RegisterScope("rel")   -- i tag delle frasi sulle relazioni: rel.relation:friend, rel.trust:high...

---------------------------------------------------------------------------
-- Utilità
---------------------------------------------------------------------------
local function Now() return (time and time()) or 0 end

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

local function Clamp(v, lo, hi) return math.max(lo, math.min(hi, v)) end

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

-- testo libero dell'utente: senza caratteri di controllo, con gli spazi ripuliti, al massimo n byte
local function CleanText(s, n)
	if type(s) ~= "string" then return nil end
	s = s:gsub("[%z\1-\31\127]", " "):gsub("  +", " "):gsub("^ ", ""):gsub(" $", "")
	s = Clip(s, n)
	return s ~= "" and s or nil
end

local function Day(t) return math.floor((t or Now()) / R.DAY) end

local function Lang() return NS:Lang() end

---Un nome localizzato. La forma di una lingua può essere un elenco { maschile, femminile }: la sceglie `sex`
---("female" dà la seconda, qualunque altro valore la prima), come LocalName di Systems/Interlocutor.lua (#41).
---@param t any
---@param sex? string male | female
---@return string
local function Name(t, sex)
	if type(t) ~= "table" then return tostring(t) end
	local v = t[Lang()] or t.en or t.it or "?"
	if type(v) == "table" then v = (sex == "female" and v[2]) or v[1] or "?" end
	return v
end

---@param guid any
---@return integer? npcID solo per le creature (Creature-0-server-istanza-zona-npcID-spawn)
function R.NpcID(guid)
	if type(guid) ~= "string" or Compat.IsSecret(guid) then return nil end
	local id = guid:match("^Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)%-")
	id = id and tonumber(id)
	if id and id > 0 then return id end
	return nil
end

local ownRealm
local function OwnRealm()
	if ownRealm == nil then
		local r = Compat.SafeCall("GetNormalizedRealmName")
		ownRealm = (type(r) == "string" and r ~= "") and r or false
	end
	return ownRealm or nil
end

---La chiave di un giocatore: "Nome-Reame" (il reame del proprio personaggio se manca).
---@param name any
---@param realm? any
---@return string?
function R.PlayerKey(name, realm)
	if type(name) ~= "string" or Compat.IsSecret(name) or name == "" then return nil end
	if name:find("-", 1, true) then
		return Clip(name, R.NAME_LEN)
	end
	if type(realm) == "string" and not Compat.IsSecret(realm) and realm ~= "" then
		return Clip(name .. "-" .. realm:gsub(" ", ""), R.NAME_LEN)
	end
	local own = OwnRealm()
	return Clip(own and (name .. "-" .. own) or name, R.NAME_LEN)
end

local function OwnKey()
	local name = Compat.SafeCall("UnitName", "player")
	return R.PlayerKey(name)
end

---------------------------------------------------------------------------
-- Dati: assi, etichette, disposizione (Data/Relationships.lua e pacchetti)
---------------------------------------------------------------------------
local DEFAULT_BANDS_SIGNED = { { "low", -34 }, { "mid", 33 }, { "high", 100 } }
local DEFAULT_BANDS_UNSIGNED = { { "low", 33 }, { "mid", 66 }, { "high", 100 } }

local function SortLabels()
	table.sort(R.labels, function(a, b)
		if a.priority ~= b.priority then return a.priority > b.priority end
		return a.order < b.order
	end)
end

local function DefineChoiceTraits()
	local labelIds, dispIds = {}, {}
	for _, l in ipairs(R.labels) do table.insert(labelIds, l.id) end
	for _, d in ipairs(R.dispositions) do table.insert(dispIds, d.id) end
	if #labelIds > 0 then Traits.Define({ id = "relation", kind = "choice", values = labelIds, scope = "rel" }) end
	if #dispIds > 0 then Traits.Define({ id = "disposition", kind = "choice", values = dispIds, scope = "rel" }) end
end

---Aggiunge o sostituisce (per id) assi, etichette e disposizioni, e unisce le tabelle di configurazione. Lo usa
---Data/Relationships.lua; un pacchetto può aggiungere etichette con NS:RegisterRelationData.
---@param def table
function R:RegisterData(def)
	if type(def) ~= "table" then return false end
	for _, a in ipairs(def.axes or {}) do
		if type(a.id) == "string" and a.id:match("^[a-z]+$") and IsNumber(a.min) and IsNumber(a.max) and a.min < a.max then
			local axis = { id = a.id, min = a.min, max = a.max, optional = a.optional == true, name = a.name, help = a.help }
			if self.axisById[a.id] then
				for i, x in ipairs(self.axes) do if x.id == a.id then self.axes[i] = axis end end
			else
				table.insert(self.axes, axis)
			end
			self.axisById[a.id] = axis
			Traits.Define({ id = a.id, kind = "scale", min = a.min, max = a.max, scope = "rel",
				bands = a.bands or (a.min < 0 and DEFAULT_BANDS_SIGNED or DEFAULT_BANDS_UNSIGNED) })
			Engine.RegisterRelationAxis(a.id)
		end
	end
	for _, l in ipairs(def.labels or {}) do
		if type(l.id) == "string" and l.id:match("^[a-z_]+$") and type(l.when) == "table" then
			local label = { id = l.id, priority = IsNumber(l.priority) and l.priority or 0, name = l.name, when = l.when,
				order = #self.labels + 1 }
			if self.labelById[l.id] then
				label.order = self.labelById[l.id].order
				for i, x in ipairs(self.labels) do if x.id == l.id then self.labels[i] = label end end
			else
				table.insert(self.labels, label)
			end
			self.labelById[l.id] = label
			Engine.CONDITION_VALUES.relation[l.id] = true
			Engine.CONDITION_VALUES.withRelation[l.id] = true
		end
	end
	SortLabels()
	local disp = def.disposition
	if type(disp) == "table" then
		if type(disp.weights) == "table" then self.config.disposition.weights = disp.weights end
		if IsNumber(disp.familiarityWarmth) then self.config.disposition.familiarityWarmth = disp.familiarityWarmth end
		for _, b in ipairs(disp.bands or {}) do
			if type(b.id) == "string" and IsNumber(b.max) then
				local band = { id = b.id, max = b.max, name = b.name }
				if self.dispositionById[b.id] then
					for i, x in ipairs(self.dispositions) do if x.id == b.id then self.dispositions[i] = band end end
				else
					table.insert(self.dispositions, band)
				end
				self.dispositionById[b.id] = band
				Engine.CONDITION_VALUES.disposition[b.id] = true
			end
		end
		table.sort(self.dispositions, function(a, b) return a.max < b.max end)
	end
	local c = self.config
	if IsNumber(def.knownMin) then c.knownMin = def.knownMin end
	if IsNumber(def.lifetimeSoftness) then c.lifetimeSoftness = def.lifetimeSoftness end
	if type(def.register) == "table" then c.register = def.register end
	for k, v in pairs(def.dispositionStyles or {}) do c.dispositionStyles[k] = v end
	for k, v in pairs(def.increments or {}) do c.increments[k] = v end
	if type(def.decay) == "table" then for k, v in pairs(def.decay) do c.decay[k] = v end end
	for k, v in pairs(def.memorable or {}) do c.memorable[k] = v end
	DefineChoiceTraits()
	return true
end

---Aggiunge etichette (o assi) da un pacchetto di frasi: `{ labels = { { id, priority, name = { it, en }, when } } }`.
---@param def table
function NS:RegisterRelationData(def)
	return R:RegisterData(def)
end

---@return table[] assi attivi (l'attrazione solo se è accesa nelle impostazioni)
function R:ActiveAxes()
	local out = {}
	for _, a in ipairs(self.axes) do
		if not a.optional or self:AttractionOn() then table.insert(out, a) end
	end
	return out
end

---@return boolean
function R:AttractionOn()
	return NS.db ~= nil and type(NS.db.relations) == "table" and NS.db.relations.attraction == true
end

---@param name string npcAuto | attraction | autoRegisterPlayers | proposePlayers
---@return boolean
function R:Setting(name)
	local s = NS.db and NS.db.relations
	return type(s) == "table" and s[name] == true
end

---@param name string
---@param on boolean
---@return boolean ok
function R:SetSetting(name, on)
	local s = NS.db and NS.db.relations
	if type(s) ~= "table" or s[name] == nil then return false end
	s[name] = on and true or false
	self:Changed()
	return true
end

---@param id string
---@param sex? string sesso della persona (male | female): sceglie la forma di genere del nome
---@return string
function R:LabelName(id, sex)
	local l = self.labelById[id]
	return l and Name(l.name, sex) or tostring(id)
end

---@param id string
---@return string
function R:DispositionName(id)
	local d = self.dispositionById[id]
	return d and Name(d.name) or tostring(id)
end

---@param axis string
---@return string
function R:AxisName(axis)
	local a = self.axisById[axis]
	return a and Name(a.name) or axis
end

---@return string[] ids de etichette, per priorità
function R:LabelIds()
	local out = {}
	for _, l in ipairs(self.labels) do table.insert(out, l.id) end
	return out
end

---------------------------------------------------------------------------
-- Derivazione: etichetta, disposizione, profilo per le frasi
---------------------------------------------------------------------------
local function RuleMatches(when, axes)
	for axis, range in pairs(when) do
		local v = axes[axis]
		if v == nil then return false end
		if type(range) == "table" then
			if range.min ~= nil and v < range.min then return false end
			if range.max ~= nil and v > range.max then return false end
		end
	end
	return true
end

---L'etichetta derivata dagli assi (la prima regola per priorità che vale).
---@param axes table<string, number>
---@return string id
function R:Derive(axes)
	for _, l in ipairs(self.labels) do
		if RuleMatches(l.when, axes) then return l.id end
	end
	return "stranger"
end

---La disposizione complessiva (-100…100) e la sua fascia.
---@param axes table<string, number>
---@return number value
---@return string id
function R:Disposition(axes)
	local d = self.config.disposition
	local sum, total = 0, 0
	for axis, w in pairs(d.weights) do
		if type(axes[axis]) == "number" then sum, total = sum + axes[axis] * w, total + w end
	end
	local value = total > 0 and sum / total or 0
	if value >= 0 then value = value + d.familiarityWarmth * (axes.familiarity or 0) / 100 end
	value = Clamp(value, -100, 100)
	for _, b in ipairs(self.dispositions) do
		if value <= b.max then return value, b.id end
	end
	local last = self.dispositions[#self.dispositions]
	return value, last and last.id or "neutral"
end

local function AxisValue(rec, id)
	local v = rec[id]
	return IsNumber(v) and v or 0
end

---Gli assi attivi di una relazione, come tabella { asse = valore }.
---@param rec AURelationRecord
---@return table<string, number>
function R:Axes(rec)
	local out = {}
	for _, a in ipairs(self:ActiveAxes()) do out[a.id] = Clamp(AxisValue(rec, a.id), a.min, a.max) end
	return out
end

---La relazione risolta: etichetta (con la scelta a mano che prevale), disposizione, profilo per i tag.
---@param kind AURelationKind
---@param rec AURelationRecord
---@param sex? string sesso della persona: l'etichetta di una lingua con il genere prende la forma giusta (#41)
---@return AURelationInfo
function R:Resolve(kind, rec, sex)
	local axes = self:Axes(rec)
	local derived = self:Derive(axes)
	local manual = type(rec.label) == "string" and rec.label ~= ""
	local label, text = derived, nil
	if manual then
		if self.labelById[rec.label] then label = rec.label else text = rec.label end
	end
	local value, disp = self:Disposition(axes)
	local known = kind == "player" or manual or (axes.familiarity or 0) >= self.config.knownMin
	local traits = { relation = label, disposition = disp }
	for axis, v in pairs(axes) do traits[axis] = v end
	return { kind = kind, axes = axes, derived = derived, label = label, text = text or self:LabelName(label, sex),
		manual = manual, custom = text, disposition = disp, dispositionText = self:DispositionName(disp),
		dispositionValue = value, isKnown = known, traits = traits }
end

---------------------------------------------------------------------------
-- Dati salvati: forma, pulizia
---------------------------------------------------------------------------
---@return AURelationsData?
function R:Data()
	local c = NS.cdb
	if not c then return nil end
	local d = c.relationships
	if type(d) ~= "table" then
		d = { version = self.VERSION, npcs = {}, players = {} }
		c.relationships = d
	end
	if type(d.npcs) ~= "table" then d.npcs = {} end
	if type(d.players) ~= "table" then d.players = {} end
	if not IsNumber(d.version) then d.version = self.VERSION end
	return d
end

---@return boolean
function R:Enabled()
	return NS.db ~= nil and NS.cdb ~= nil and NS.db.modules.relations ~= false and not self.readOnly
end

local function CleanTags(list)
	local out, seen = {}, {}
	if type(list) ~= "table" then return out end
	for _, t in ipairs(list) do
		local s = CleanText(t, R.TAG_LEN)
		if s and not seen[s] and #out < R.MAX_TAGS then
			seen[s] = true
			table.insert(out, s)
		end
	end
	return out
end

local function CleanRecord(rec, kind)
	if type(rec) ~= "table" then return nil end
	local out = {}
	for _, a in ipairs(R.axes) do
		local v = rec[a.id]
		if IsNumber(v) then
			v = Clamp(v, a.min, a.max)
			if v ~= 0 then out[a.id] = v end
		end
	end
	out.first = IsNumber(rec.first) and rec.first or 0
	out.last = IsNumber(rec.last) and rec.last or out.first
	out.count = IsNumber(rec.count) and math.max(0, math.floor(rec.count)) or 0
	out.name = CleanText(rec.name, R.NAME_LEN)
	out.label = CleanText(rec.label, R.LABEL_LEN)
	out.note = CleanText(rec.note, R.NOTE_LEN)
	local tags = CleanTags(rec.tags)
	if #tags > 0 then out.tags = tags end
	if rec.source == "user" or rec.source == "auto" then out.source = rec.source end
	-- S6c: personalità e ruolo dell'interlocutore scelti dall'utente (o ruolo ricavato da un'interazione affidabile)
	if NS.Interlocutor then
		local traits = NS.Interlocutor.Clean(rec.traits)
		traits.role = nil
		if next(traits) then out.traits = traits end
		if type(rec.role) == "string" and Traits.defs.role and Traits.defs.role.valid[rec.role] then
			out.role = rec.role
			out.roleSource = rec.roleSource == "user" and "user" or "auto"
		end
	end
	if kind == "npc" then
		if IsNumber(rec.decayDay) then out.decayDay = math.floor(rec.decayDay) end
		local t = rec.today
		if type(t) == "table" and IsNumber(t.day) and type(t.n) == "table" and type(t.gain) == "table" then
			local today = { day = math.floor(t.day), n = {}, gain = {} }
			for src, n in pairs(t.n) do
				if type(src) == "string" and IsNumber(n) then today.n[src] = math.max(0, math.floor(n)) end
			end
			for src, g in pairs(t.gain) do
				if type(src) == "string" and type(g) == "table" then
					today.gain[src] = {}
					for axis, x in pairs(g) do
						if type(axis) == "string" and IsNumber(x) then today.gain[src][axis] = x end
					end
				end
			end
			out.today = today
		end
	end
	if type(rec.noted) == "table" then
		local noted = {}
		for k, v in pairs(rec.noted) do
			if type(k) == "string" and k:match("^[a-z_]+$") and v == true then noted[k] = true end
		end
		if next(noted) then out.noted = noted end
	end
	return out
end

---Ripulisce i dati salvati: scarta le voci malformate e riporta gli assi nei limiti.
---@return integer dropped
function R:Sanitize()
	local d = self:Data()
	if not d then return 0 end
	local dropped = 0
	local npcs, players = {}, {}
	for k, rec in pairs(d.npcs) do
		local id = IsNumber(k) and k > 0 and k == math.floor(k) and k or nil
		local clean = id and CleanRecord(rec, "npc")
		if clean then npcs[id] = clean else dropped = dropped + 1 end
	end
	for k, rec in pairs(d.players) do
		local key = type(k) == "string" and CleanText(k, R.NAME_LEN) or nil
		local clean = key and CleanRecord(rec, "player")
		if clean and key == k then players[key] = clean else dropped = dropped + 1 end
	end
	d.npcs, d.players = npcs, players
	d.version = self.VERSION
	return dropped
end

---@param kind AURelationKind
---@param key integer|string
---@return AURelationRecord?
function R:Get(kind, key)
	local d = self:Data()
	if not d then return nil end
	if kind == "npc" then return d.npcs[tonumber(key)] end
	if kind == "player" then return d.players[key] end
	return nil
end

---@param kind AURelationKind
---@param key integer|string
---@return string
function R:DisplayName(kind, key)
	local rec = self:Get(kind, key)
	if kind == "npc" then
		return rec and rec.name or NS:L("rel_npc_unnamed", tonumber(key) or 0)
	end
	return tostring(key)
end

---Il sistema può cambiare i dati adesso?
---@return boolean
function R:Writable()
	return self:Enabled()
end

function R:Changed()
	if NS.RelationsFrame then NS.RelationsFrame:Refresh() end
	if NS.JournalFrame then NS.JournalFrame:Refresh() end
end

---------------------------------------------------------------------------
-- Cambiamenti: ricordo di un legame importante, tetto, decadimento
---------------------------------------------------------------------------
-- Un legame che diventa importante (amico, compagno d'armi, rivale, nemico...) lascia un ricordo nel diario, una sola
-- volta per persona ed etichetta. Il ricordo non contiene nomi né testi: solo il tipo e l'etichetta come token.
local function AfterChange(self, kind, rec, oldLabel)
	local info = self:Resolve(kind, rec)
	if info.derived ~= oldLabel and self.config.memorable[info.derived] and not (rec.noted and rec.noted[info.derived]) then
		rec.noted = rec.noted or {}
		rec.noted[info.derived] = true
		if NS.LivingMemory and NS.LivingMemory.Record then
			NS.LivingMemory:Record({ kind = "relation", tags = { kind, info.derived }, source = "addon" })
		end
	end
	return info
end

local function DerivedOf(self, rec)
	return self:Derive(self:Axes(rec))
end

---Toglie gli NPC meno importanti oltre il tetto (mai quelli con etichetta, nota o tag scelti dall'utente).
function R:CompactNPCs()
	local d = self:Data()
	local total = 0
	for _ in pairs(d.npcs) do total = total + 1 end
	if total <= self.MAX_NPCS then return 0 end
	local list = {}
	for id, rec in pairs(d.npcs) do
		if not (rec.label or rec.note or rec.tags) then table.insert(list, { id = id, f = AxisValue(rec, "familiarity"), t = rec.last or 0 }) end
	end
	table.sort(list, function(a, b)
		if a.f ~= b.f then return a.f < b.f end
		if a.t ~= b.t then return a.t < b.t end
		return a.id < b.id
	end)
	local removed = 0
	for _, e in ipairs(list) do
		if total - removed <= self.COMPACT_NPCS then break end
		d.npcs[e.id] = nil
		removed = removed + 1
	end
	return removed
end

---Il decadimento lento della familiarità di un NPC: dopo `graceDays` giorni senza incontri cala di `perDay` al
---giorno, mai sotto `floor`. Gli altri assi non decadono.
---@param rec AURelationRecord
---@param now? number
---@return boolean changed
function R:Decay(rec, now)
	now = now or Now()
	local cfg = self.config.decay
	local today = Day(now)
	local lastDay = Day(rec.last or now)
	local from = math.max(rec.decayDay or 0, lastDay + cfg.graceDays)
	local days = today - from
	local f = AxisValue(rec, "familiarity")
	local changed = false
	if days > 0 and f > cfg.floor then
		rec.familiarity = math.max(cfg.floor, f - days * cfg.perDay)
		changed = true
	end
	if days > 0 or rec.decayDay == nil then rec.decayDay = math.max(today, 0) end
	return changed
end

---Applica il decadimento a tutti gli NPC (all'avvio).
function R:MaintainAll()
	local d = self:Data()
	if not d then return end
	local now = Now()
	for _, rec in pairs(d.npcs) do self:Decay(rec, now) end
end

---------------------------------------------------------------------------
-- NPC: incrementi automatici
---------------------------------------------------------------------------
---@param rec AURelationRecord
---@param source string fonte (chiave di config.increments)
---@param now number
---@return table<string, number>? gained
function R:Increment(rec, source, now)
	local inc = self.config.increments[source]
	if not inc then return nil end
	local day = Day(now)
	local today = rec.today
	if type(today) ~= "table" or today.day ~= day then
		today = { day = day, n = {}, gain = {} }
		rec.today = today
	end
	local n = today.n[source] or 0
	today.n[source] = n + 1
	today.gain[source] = today.gain[source] or {}
	local gains = today.gain[source]
	local mult = (inc.decay or 1) ^ n
	local out = {}
	for axis, base in pairs(inc.gain) do
		local def = self.axisById[axis]
		if def and (not def.optional or self:AttractionOn()) then
			local v = AxisValue(rec, axis)
			local delta = base * mult
			if delta > 0 then
				local span = def.max
				delta = delta * (1 - self.config.lifetimeSoftness * Clamp(v / span, 0, 1))
			end
			local room = (inc.cap and inc.cap[axis]) or math.huge
			room = room - (gains[axis] or 0)
			delta = math.min(delta, math.max(room, 0))
			if delta ~= 0 then
				rec[axis] = Clamp(v + delta, def.min, def.max)
				gains[axis] = (gains[axis] or 0) + delta
				out[axis] = delta
			end
		end
	end
	return out
end

---Registra un'interazione con un NPC: crea la relazione se manca, applica gli incrementi della fonte.
---Non fa nulla senza un npcID, con il modulo spento o con la registrazione automatica degli NPC spenta.
---@param npcID any
---@param name? string
---@param source string
---@param uncounted? boolean vero: non conta come un'interazione (`count`): un seguito dello stesso dialogo (S8)
---@return AURelationRecord? rec
---@return table<string, number>? gained
function R:RecordNPC(npcID, name, source, uncounted)
	if not self:Enabled() or not self:Setting("npcAuto") then return nil end
	if not IsNumber(npcID) or npcID <= 0 then return nil end
	local d = self:Data()
	local now = Now()
	local rec = d.npcs[npcID]
	if not rec then
		rec = { first = now, last = now, count = 0 }
		d.npcs[npcID] = rec
	end
	local old = DerivedOf(self, rec)
	self:Decay(rec, now)
	rec.last = now
	if not uncounted then rec.count = (rec.count or 0) + 1 end
	local clean = CleanText(name, self.NAME_LEN)
	if clean then rec.name = clean end
	local gained = self:Increment(rec, source, now)
	self:CompactNPCs()
	AfterChange(self, "npc", rec, old)
	self:Changed()
	return rec, gained
end

---------------------------------------------------------------------------
-- Giocatori: gestiti dall'utente
---------------------------------------------------------------------------
---@return integer
function R:CountPlayers()
	local d = self:Data()
	local n = 0
	for _ in pairs(d and d.players or EMPTY) do n = n + 1 end
	return n
end

---Aggiunge un giocatore alla lista. `source` "user" (azione dell'utente: pulsante, comando) oppure "auto" (solo con
---l'opzione "registra automaticamente chi incontro" accesa). Qualunque altra chiamata è rifiutata: un giocatore non
---entra mai in lista da solo.
---@param name string "Nome" o "Nome-Reame"
---@param source "user"|"auto"
---@return AURelationRecord? rec
---@return string? why bad_name | self | limit | refused | off | exists
function R:AddPlayer(name, source)
	if not self:Enabled() then return nil, "off" end
	if source ~= "user" and not (source == "auto" and self:Setting("autoRegisterPlayers")) then return nil, "refused" end
	local key = R.PlayerKey(CleanText(name, R.NAME_LEN))
	if not key then return nil, "bad_name" end
	if key == OwnKey() then return nil, "self" end
	local d = self:Data()
	if d.players[key] then return d.players[key], "exists" end
	if self:CountPlayers() >= self.MAX_PLAYERS then return nil, "limit" end
	local now = Now()
	local rec = { first = now, last = now, count = 1, source = source }
	d.players[key] = rec
	self.candidates[key] = nil
	self:Changed()
	return rec
end

---Una persona incontrata (membro del gruppo, scambio, bersaglio con profilo TRP3, risposta in privato): entra nelle
---proposte della sessione, non nella lista. Solo con "registra automaticamente" acceso diventa subito una relazione.
---Non legge né conserva testi di chat.
---@param name any
---@param source string group | trade | trp3 | whisper
---@return string? key
function R:Propose(name, source)
	if not self:Enabled() then return nil end
	local key = R.PlayerKey(name)
	if not key or key == OwnKey() then return nil end
	local d = self:Data()
	local rec = d.players[key]
	if rec then
		if not self.session.seen[key] then
			self.session.seen[key] = true
			rec.last, rec.count = Now(), (rec.count or 0) + 1
		end
		return key
	end
	if self:Setting("autoRegisterPlayers") then
		self:AddPlayer(key, "auto")
		return key
	end
	if not self:Setting("proposePlayers") or self.dismissed[key] then return nil end
	local c = self.candidates[key]
	if c then
		c.t = Now()
		return key
	end
	local list = {}
	for k, v in pairs(self.candidates) do table.insert(list, { k = k, t = v.t }) end
	if #list >= self.MAX_CANDIDATES then
		table.sort(list, function(a, b) return a.t < b.t end)
		self.candidates[list[1].k] = nil
	end
	self.candidates[key] = { key = key, source = source, t = Now() }
	self:Changed()
	return key
end

---Le proposte, dalla più recente.
---@return { key: string, source: string, t: number }[]
function R:Candidates()
	local out = {}
	for _, c in pairs(self.candidates) do table.insert(out, c) end
	table.sort(out, function(a, b)
		if a.t ~= b.t then return a.t > b.t end
		return a.key < b.key
	end)
	return out
end

---L'utente scarta una proposta (per questa sessione).
---@param key string
---@return boolean
function R:Dismiss(key)
	if not self.candidates[key] then return false end
	self.candidates[key] = nil
	self.dismissed[key] = true
	self:Changed()
	return true
end

---------------------------------------------------------------------------
-- Modifiche dell'utente: assi, etichetta, note, tag, eliminazione
---------------------------------------------------------------------------
local function Edit(self, kind, key)
	if not self:Writable() then return nil end
	local rec = self:Get(kind, kind == "npc" and tonumber(key) or key)
	return rec
end

---@param kind AURelationKind
---@param key integer|string
---@param axis string
---@param value number
---@return boolean ok
function R:SetAxis(kind, key, axis, value)
	local rec = Edit(self, kind, key)
	local def = self.axisById[axis]
	if not rec or not def or not IsNumber(value) then return false end
	local old = DerivedOf(self, rec)
	value = Clamp(math.floor(value + 0.5), def.min, def.max)
	rec[axis] = value ~= 0 and value or nil
	AfterChange(self, kind, rec, old)
	self:Changed()
	return true
end

---@param kind AURelationKind
---@param key integer|string
---@param axis string
---@param delta number
---@return boolean ok
function R:AdjustAxis(kind, key, axis, delta)
	local rec = Edit(self, kind, key)
	if not rec or not IsNumber(delta) then return false end
	return self:SetAxis(kind, key, axis, AxisValue(rec, axis) + delta)
end

---Etichetta scelta a mano: un id di etichetta o il suo nome (precedenza sulla derivata), un testo libero (mostrato
---al posto del nome, le regole usano l'etichetta derivata), oppure nil/"" per tornare all'automatico.
---@param kind AURelationKind
---@param key integer|string
---@param text? string
---@return boolean ok
function R:SetLabel(kind, key, text)
	local rec = Edit(self, kind, key)
	if not rec then return false end
	local clean = CleanText(text, self.LABEL_LEN)
	if clean then
		local lower = NS.Lower(clean)
		for _, l in ipairs(self.labels) do
			if l.id == lower or NS.Lower(Name(l.name)) == lower then clean = l.id; break end
		end
	end
	rec.label = clean
	self:Changed()
	return true
end

---Passa all'etichetta successiva: automatica → una per una → automatica.
---@param kind AURelationKind
---@param key integer|string
---@return string? now l'etichetta scelta (nil = automatica)
function R:CycleLabel(kind, key)
	local rec = Edit(self, kind, key)
	if not rec then return nil end
	local ids = self:LabelIds()
	local cur = rec.label
	local nextId
	if cur == nil or not self.labelById[cur] then
		nextId = ids[1]
	else
		for i, id in ipairs(ids) do
			if id == cur then nextId = ids[i + 1]; break end
		end
	end
	rec.label = nextId
	self:Changed()
	return nextId
end

---@param kind AURelationKind
---@param key integer|string
---@param text? string
---@return boolean ok
function R:SetNote(kind, key, text)
	local rec = Edit(self, kind, key)
	if not rec then return false end
	rec.note = CleanText(text, self.NOTE_LEN)
	self:Changed()
	return true
end

---Tag dell'utente da un testo separato da virgole o spazi.
---@param kind AURelationKind
---@param key integer|string
---@param text? string
---@return boolean ok
function R:SetTags(kind, key, text)
	local rec = Edit(self, kind, key)
	if not rec then return false end
	local list = {}
	for part in tostring(text or ""):gmatch("[^,;]+") do table.insert(list, part) end
	local tags = CleanTags(list)
	rec.tags = #tags > 0 and tags or nil
	self:Changed()
	return true
end

---@param kind AURelationKind
---@param key integer|string
---@return boolean removed
function R:Remove(kind, key)
	if not self:Writable() then return false end
	local d = self:Data()
	if kind == "npc" then
		key = tonumber(key)
		if not key or not d.npcs[key] then return false end
		d.npcs[key] = nil
	elseif kind == "player" then
		if not d.players[key] then return false end
		d.players[key] = nil
	else
		return false
	end
	self:Changed()
	return true
end

---@param what? "all"|"npcs"|"players"
---@return integer removed
function R:Reset(what)
	if not self:Writable() then return 0 end
	local d = self:Data()
	local n = 0
	if what == "all" or what == "npcs" or what == nil then
		for _ in pairs(d.npcs) do n = n + 1 end
		d.npcs = {}
	end
	if what == "all" or what == "players" or what == nil then
		for _ in pairs(d.players) do n = n + 1 end
		d.players = {}
	end
	self:Changed()
	return n
end

---------------------------------------------------------------------------
-- Elenco: righe ordinabili e filtrabili
---------------------------------------------------------------------------
---@class AURelationRow
---@field kind AURelationKind
---@field key integer|string
---@field name string
---@field rec AURelationRecord
---@field info AURelationInfo

---@class AURelationFilter
---@field kind? AURelationKind
---@field label? string id di etichetta
---@field text? string parte del nome (senza maiuscole)
---@field sort? "name"|"kind"|"label"|"disposition"|"last"|"familiarity"
---@field desc? boolean

---Le relazioni, filtrate e ordinate.
---@param filter? AURelationFilter
---@return AURelationRow[]
function R:Rows(filter)
	filter = filter or {}
	local d = self:Data()
	local rows = {}
	if not d then return rows end
	local text = filter.text and filter.text ~= "" and NS.Lower(filter.text) or nil
	local function Add(kind, key, rec)
		if filter.kind and filter.kind ~= kind then return end
		local info = self:Resolve(kind, rec)
		if filter.label and info.label ~= filter.label then return end
		local name = self:DisplayName(kind, key)
		if text and not NS.Lower(name):find(text, 1, true) then return end
		table.insert(rows, { kind = kind, key = key, name = name, rec = rec, info = info })
	end
	for id, rec in pairs(d.npcs) do Add("npc", id, rec) end
	for key, rec in pairs(d.players) do Add("player", key, rec) end
	local sort = filter.sort or "last"
	local function Cmp(a, b)
		if sort == "name" then return NS.Lower(a.name) < NS.Lower(b.name) end
		if sort == "kind" then
			if a.kind ~= b.kind then return a.kind < b.kind end
		elseif sort == "label" then
			if a.info.text ~= b.info.text then return NS.Lower(a.info.text) < NS.Lower(b.info.text) end
		elseif sort == "disposition" then
			if a.info.dispositionValue ~= b.info.dispositionValue then return a.info.dispositionValue < b.info.dispositionValue end
		elseif sort == "familiarity" then
			local fa, fb = AxisValue(a.rec, "familiarity"), AxisValue(b.rec, "familiarity")
			if fa ~= fb then return fa < fb end
		else
			if (a.rec.last or 0) ~= (b.rec.last or 0) then return (a.rec.last or 0) < (b.rec.last or 0) end
		end
		return NS.Lower(a.name) < NS.Lower(b.name)
	end
	-- testi dalla A alla Z, numeri e date dal più alto o recente; `desc` inverte o forza la direzione
	local textual = sort == "name" or sort == "kind" or sort == "label"
	local ascending = textual
	if filter.desc ~= nil then ascending = not filter.desc end
	table.sort(rows, function(a, b)
		if ascending then return Cmp(a, b) end
		return Cmp(b, a)
	end)
	return rows
end

---@return { npcs: integer, players: integer, candidates: integer }
function R:Stats()
	local d = self:Data()
	local n, p, c = 0, 0, 0
	for _ in pairs(d and d.npcs or EMPTY) do n = n + 1 end
	for _ in pairs(d and d.players or EMPTY) do p = p + 1 end
	for _ in pairs(self.candidates) do c = c + 1 end
	return { npcs = n, players = p, candidates = c }
end

---------------------------------------------------------------------------
-- Contesto: la persona dell'interazione (NPC aperto o bersaglio)
---------------------------------------------------------------------------
local function InteractionFresh(self)
	local i = self.interaction
	if i and GetTime() - i.t <= self.INTERACTION_SECONDS then return i end
	self.interaction = nil
	return nil
end

---Chi è la persona dell'interazione: un soggetto dato (extra.relationSubject), l'NPC con cui si sta parlando,
---oppure il bersaglio. Un'identità segreta, un GUID che manca o una creatura che non conosciamo danno nil.
---@param ctx table
---@param extra? table
---@return AURelationKind? kind
---@return integer|string? key
---@return AURelationRecord? rec
function R:Subject(ctx, extra)
	local given = extra and extra.relationSubject
	if type(given) == "table" and (given.kind == "npc" or given.kind == "player") then
		local rec = self:Get(given.kind, given.id)
		if rec then return given.kind, given.id, rec end
		return nil
	end
	local i = InteractionFresh(self)
	if i and i.npcID then
		local rec = self:Get("npc", i.npcID)
		if rec then return "npc", i.npcID, rec end
	end
	if ctx.hasTarget and not ctx.targetSecret and not Compat:IsUnitIdentitySecret("target") then
		if ctx.targetPlayer then
			local name, realm = Compat.SafeCall("UnitFullName", "target")
			local key = R.PlayerKey(name, realm)
			local rec = key and self:Get("player", key)
			if rec then return "player", key, rec end
		else
			local id = R.NpcID(Compat.SafeCall("UnitGUID", "target"))
			local rec = id and self:Get("npc", id)
			if rec then return "npc", id, rec end
		end
	end
	return nil
end

---Rilegge il gruppo: quali etichette ci sono tra i compagni (per `withRelation`), e propone chi non è in lista.
function R:ScanGroup()
	self.groupDirty = false
	local out = {}
	local d = self:Data()
	if not d then self.group = out; return out end
	local units = {}
	if Compat.SafeCall("IsInRaid") == true then
		for i = 1, 40 do table.insert(units, "raid" .. i) end
	elseif Compat.SafeCall("IsInGroup") == true then
		for i = 1, 4 do table.insert(units, "party" .. i) end
	end
	for _, unit in ipairs(units) do
		if Compat.SafeCall("UnitExists", unit) == true and not Compat:IsUnitIdentitySecret(unit) then
			local name, realm = Compat.SafeCall("UnitFullName", unit)
			local key = R.PlayerKey(name, realm)
			if key and key ~= OwnKey() then
				local rec = d.players[key]
				if rec then
					out[self:Resolve("player", rec).label] = true
				else
					self:Propose(key, "group")
				end
			end
		end
	end
	self.group = out
	return out
end

---@return table<string, boolean> le etichette presenti tra i compagni di gruppo
function R:GroupRelations()
	if self.group == nil or self.groupDirty then self:ScanGroup() end
	return self.group or EMPTY
end

---Aggiunge al contesto i dati del rapporto: ctx.relation (etichetta), ctx.relationLabel (nome), ctx.disposition,
---ctx.dispositionValue, ctx.rel (assi), ctx.isKnown, ctx.relationKind, ctx.relTraits (per i tag), ctx.groupRelations.
---Senza una persona nota: ctx.isKnown = false e nessun altro campo.
---@param ctx table
---@param extra? table
function R:Context(ctx, extra)
	if not self:Enabled() then return end
	local g = self:GroupRelations()
	if next(g) then ctx.groupRelations = g end
	local kind, key, rec = self:Subject(ctx, extra)
	if not rec then
		ctx.isKnown, ctx.relTraits = false, EMPTY
		return
	end
	local info = self:Resolve(kind, rec)
	ctx.relationKind = kind
	ctx.relation, ctx.relationLabel, ctx.relationDerived = info.label, info.text, info.derived
	ctx.disposition, ctx.dispositionLabel, ctx.dispositionValue = info.disposition, info.dispositionText, info.dispositionValue
	ctx.rel, ctx.isKnown, ctx.relTraits = info.axes, info.isKnown, info.traits
	ctx.relName = self:DisplayName(kind, key)
end

-- Fattore R del peso (GDD §10): le frasi che citano un rapporto salgono di peso se il rapporto c'è, quelle che lo
-- affermano (`req:`) senza che esista vengono escluse, quelle con un tag che contrasta pesano meno. Le condizioni
-- delle regole fanno già la selezione dura; questa è la parte morbida. Tag, con ambito `rel.`:
--   rel.relation:friend  rel.disposition:close  rel.trust:high  rel.req:relation:rival  rel.not:relation:enemy
---@param entry AUPhrase
---@param ctx table
---@return number
function R.Factor(entry, ctx)
	local f = Traits.Evaluate(entry.tags, ctx.relTraits or EMPTY, "rel")
	return f
end
Engine:SetWeightHook("R", "relations", R.Factor)

-- Il registro cambia con la familiarità: dal formale all'intimo (Data/Relationships.lua: register).
NS.StyleResolver:SetModifier("relations", function(profile, ctx)
	local rel = ctx and ctx.rel
	if not ctx.relation or type(rel) ~= "table" then return end
	local f = rel.familiarity or 0
	for _, tier in ipairs(R.config.register) do
		if f <= tier.max then
			for _, s in ipairs(tier.styles) do NS.StyleResolver.Prefer(profile, s) end
			break
		end
	end
	for _, s in ipairs(R.config.dispositionStyles[ctx.disposition] or EMPTY) do NS.StyleResolver.Prefer(profile, s) end
end)

---Dichiara un evento che cita un rapporto con una persona (come i richiami di memoria): ha la priorità "richiamo di
---memoria", segue il modulo `relations` e il motore lo fa parlare solo se `verify(ctx)` conferma il rapporto.
---@param event string
---@param verify fun(ctx: table): boolean
function R:RegisterRelationEvent(event, verify)
	self.recalls[event] = true
	NS:SetEventPriority(event, "memory")
	NS.NarrativeDirector.EVENT_MODULE[event] = "relations"
	Engine:SetEventGuard(event, "relations", function(ctx) return verify(ctx) == true end)
end

-- Incontri con NPC conosciuti: l'NPC con cui si parla è già nella lista e si conosce abbastanza.
R:RegisterRelationEvent("relation_npc", function(ctx)
	return ctx.isKnown == true and ctx.relationKind == "npc"
end)

---------------------------------------------------------------------------
-- Fonti degli NPC: eventi del client (verificati sul dump di Forever) normalizzati sul bus
---------------------------------------------------------------------------
-- L'NPC con cui si interagisce ("npc" è l'unità dell'interazione). Con l'identità segreta o senza GUID: nil.
local function InteractionNPC()
	if Compat:IsUnitIdentitySecret("npc") then return nil end
	local id = R.NpcID(Compat.SafeCall("UnitGUID", "npc"))
	if not id then return nil end
	local name = Compat.SafeCall("UnitName", "npc")
	return id, type(name) == "string" and name or nil
end

local EventBus = NS.EventBus
EventBus.dedupWindow.NPC_INTERACT = 4
EventBus.dedupWindow.NPC_INTERACT_END = 1
EventBus.dedupWindow.GROUP_CHANGED = 0     -- il gestore segna soltanto il gruppo da rileggere: nessun doppione da scartare
-- Un dialogo con un NPC si apre (NpcSource) o si chiude (EndSource). Gli eventi sono nel dump di Forever (check_api.py
-- legge i nomi da queste chiamate); se uno manca nel client, Compat lo segna MISSING e solo quella fonte si spegne.
local function NpcSource(wowEvent, kind)
	EventBus:AddSource(wowEvent, { normalize = function()
		local id, name = InteractionNPC()
		return "NPC_INTERACT", { kind = kind, npcID = id, npcName = name },
			{ key = kind .. ":" .. tostring(id), expect = { "npcID" } }
	end })
end
local function EndSource(wowEvent, kind)
	EventBus:AddSource(wowEvent, { normalize = function()
		return "NPC_INTERACT_END", { kind = kind }, { key = kind }
	end })
end
NpcSource("GOSSIP_SHOW", "gossip")
NpcSource("QUEST_GREETING", "gossip")
NpcSource("QUEST_DETAIL", "quest_detail")
NpcSource("QUEST_PROGRESS", "quest_turnin")
NpcSource("QUEST_COMPLETE", "quest_turnin")
NpcSource("MERCHANT_SHOW", "merchant")
NpcSource("TAXIMAP_OPENED", "taxi")
NpcSource("TRAINER_SHOW", "trainer")
NpcSource("CONFIRM_BINDER", "binder")
EndSource("GOSSIP_CLOSED", "gossip")
EndSource("MERCHANT_CLOSED", "merchant")
EndSource("QUEST_FINISHED", "quest")
-- Quest accettate e consegnate: l'NPC è quello dell'ultimo dialogo (gli eventi non lo dicono)
EventBus:AddSource("QUEST_ACCEPTED", { normalize = function()
	return "QUEST_STATE", { state = "accepted" }, {}
end })
EventBus:AddSource("QUEST_TURNED_IN", { normalize = function()
	return "QUEST_STATE", { state = "turned_in" }, {}
end })
-- Giocatori da proporre: il gruppo cambia, uno scambio, una risposta in privato. Di una risposta in privato si
-- legge solo il nome del destinatario: il testo non si legge né si conserva.
EventBus:AddSource("GROUP_ROSTER_UPDATE", { normalize = function()
	return "GROUP_CHANGED", nil, { key = "roster" }
end })
EventBus:AddSource("TRADE_SHOW", { normalize = function()
	local name, realm
	if not Compat:IsUnitIdentitySecret("npc") and Compat.SafeCall("UnitIsPlayer", "npc") == true then
		name, realm = Compat.SafeCall("UnitFullName", "npc")
	end
	return "TRADE_OPENED", { name = R.PlayerKey(name, realm) }, { key = "trade" }
end })
EventBus:AddSource("CHAT_MSG_WHISPER_INFORM", { normalize = function(_, playerName)
	return "WHISPER_SENT", { name = R.PlayerKey(playerName) }, { key = "whisper" }
end })

local handlers = {}

function handlers.NPC_INTERACT(env)
	local c = env.context
	if not R:Enabled() then return end
	if type(c.npcID) ~= "number" then
		-- identità segreta o illeggibile: nessuna relazione, e il dialogo di prima non vale più
		R.interaction = nil
		return
	end
	local now = GetTime()
	local kind = c.kind
	R.interaction = { npcID = c.npcID, name = c.npcName, kind = (kind == "gossip" or kind == "merchant") and kind or "other", t = now }
	if kind == "quest_detail" then
		R.questGiver = { npcID = c.npcID, name = c.npcName, t = now }
	elseif kind == "quest_turnin" then
		R.questTaker = { npcID = c.npcID, name = c.npcName, t = now }
	elseif kind == "gossip" or kind == "merchant" or kind == "taxi" or kind == "trainer" or kind == "binder" then
		R:RecordNPC(c.npcID, c.npcName, kind)
	end
	R:OfferKnown(c.npcID, kind)
end

function handlers.NPC_INTERACT_END()
	R.interaction = nil
end

function handlers.QUEST_STATE(env)
	if not R:Enabled() then return end
	local now = GetTime()
	local who
	if env.context.state == "accepted" then
		who, R.questGiver = R.questGiver, nil
		if who and now - who.t <= R.QUEST_SECONDS then R:RecordNPC(who.npcID, who.name, "quest_accept") end
	elseif env.context.state == "turned_in" then
		who, R.questTaker = R.questTaker, nil
		if who and now - who.t <= R.QUEST_SECONDS then R:RecordNPC(who.npcID, who.name, "quest_turnin") end
	end
end

function handlers.GROUP_CHANGED()
	R.groupDirty = true
end

function handlers.TRADE_OPENED(env)
	if env.context.name then R:Propose(env.context.name, "trade") end
end

function handlers.WHISPER_SENT(env)
	if env.context.name then R:Propose(env.context.name, "whisper") end
end

-- Un bersaglio con profilo Total RP 3: si propone (la presenza nel registro di TRP3, nessun dato letto)
function handlers.TARGET_CHANGED(env)
	if not env.context.hasTarget or not R:Enabled() or not R:Setting("proposePlayers") then return end
	if Compat:IsUnitIdentitySecret("target") or Compat.SafeCall("UnitIsPlayer", "target") ~= true then return end
	if not (NS.TotalRP3 and NS.TotalRP3:IsKnownPlayer("target")) then return end
	local name, realm = Compat.SafeCall("UnitFullName", "target")
	R:Propose(R.PlayerKey(name, realm), "trp3")
end

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "relations", fn)
end

---Un NPC già conosciuto si apre: un richiamo (al massimo uno ogni KNOWN_GAP secondi per NPC).
---@param npcID integer
---@param kind string
function R:OfferKnown(npcID, kind)
	if kind ~= "gossip" and kind ~= "merchant" and kind ~= "quest_detail" and kind ~= "quest_turnin" then return end
	local rec = self:Get("npc", npcID)
	if not rec or not self:Resolve("npc", rec).isKnown or not NS.Director then return end
	local last = self.session.offered[npcID]
	if last and GetTime() - last < self.KNOWN_GAP then return end
	self.session.offered[npcID] = GetTime()
	NS.Director:Offer("relation_npc")
end

-- Il mercante: acquisti, vendite e riparazioni (le funzioni sono nel dump di Forever; la vendita è l'uso di un
-- oggetto delle borse mentre il mercante è aperto, e si riconosce solo in modo prudente)
function R:OnMerchantAction(source)
	local i = InteractionFresh(self)
	if not i or i.kind ~= "merchant" or not self:Enabled() then return end
	local frame = _G.MerchantFrame
	if type(frame) == "table" and type(frame.IsShown) == "function" and frame:IsShown() ~= true then return end
	self:RecordNPC(i.npcID, i.name, source)
end

local function Hook(id, target, name, fn)
	local ok = type(hooksecurefunc) == "function" and type(target) == "table" and type(target[name]) == "function"
		and pcall(hooksecurefunc, target, name, function() NS.Diagnostics:Guard("hook:" .. id, fn) end)
	Compat:SetCap("hook:" .. id, "hook", ok and Compat.AVAILABLE or Compat.MISSING, ok and "hooksecurefunc" or "missing")
	return ok
end

---------------------------------------------------------------------------
-- Testo: riepiloghi ed esportazione
---------------------------------------------------------------------------
---@param info AURelationInfo
---@return string
function R:AxesText(info)
	local parts = {}
	for _, a in ipairs(self:ActiveAxes()) do
		table.insert(parts, ("%s %d"):format(Name(a.name), math.floor((info.axes[a.id] or 0) + 0.5)))
	end
	return table.concat(parts, ", ")
end

local function Stamp(t)
	if date and IsNumber(t) and t > 0 then return date("%Y-%m-%d", t) end
	return "-"
end

---Il testo che l'utente può copiare (l'addon non scrive file): le sue note e i suoi tag, mai testi di chat.
---@return string
function R:ExportText()
	local lines = {}
	local function Add(s) table.insert(lines, s) end
	local who = Compat.SafeCall("UnitName", "player") or "?"
	Add(NS:L("rel_export_title", who, Stamp(Now())))
	for _, section in ipairs({ { "player", "rel_filter_players" }, { "npc", "rel_filter_npcs" } }) do
		local rows = self:Rows({ kind = section[1], sort = "name", desc = false })
		Add("")
		Add(("== %s (%d) =="):format(NS:L(section[2]), #rows))
		for _, row in ipairs(rows) do
			local info = row.info
			local line = ("%s | %s | %s (%d) | %s | %s %s"):format(row.name, info.text, info.dispositionText,
				math.floor(info.dispositionValue + 0.5), self:AxesText(info), NS:L("rel_last"), Stamp(row.rec.last))
			if row.rec.tags then line = line .. " | " .. NS:L("rel_tags") .. ": " .. table.concat(row.rec.tags, ",") end
			if row.rec.note then line = line .. " | " .. NS:L("rel_note") .. ": " .. row.rec.note end
			Add(line)
		end
	end
	return table.concat(lines, "\n")
end

---Riga per /au debug.
---@return string
function R:Status()
	if not self:Enabled() then return self.readOnly and "read-only (newer data)" or "off" end
	local st = self:Stats()
	return ("%d NPCs, %d players, %d candidates; npcAuto %s, attraction %s, autoRegister %s"):format(st.npcs, st.players,
		st.candidates, tostring(self:Setting("npcAuto")), tostring(self:AttractionOn()), tostring(self:Setting("autoRegisterPlayers")))
end

---------------------------------------------------------------------------
-- Comandi: /au relazioni ...
---------------------------------------------------------------------------
local function Say(key, ...) NS:Print(NS:L(key, ...)) end

local ON_WORDS = { on = true, si = true, ["sì"] = true, yes = true, ["1"] = true, acceso = true }
local OFF_WORDS = { off = true, no = true, ["0"] = true, spento = true }

-- chi è "Nome": un giocatore della lista (con o senza reame) oppure "npc:ID"
local function FindSubject(self, text)
	local id = text:match("^npc:(%d+)$") or text:match("^npc (%d+)$")
	if id then
		id = tonumber(id)
		if self:Get("npc", id) then return "npc", id end
		return nil
	end
	local key = R.PlayerKey(text)
	if key and self:Get("player", key) then return "player", key end
	local lower = NS.Lower(text)
	local d = self:Data()
	for k in pairs(d.players) do
		if NS.Lower(k) == NS.Lower(key or text) or NS.Lower(k:match("^[^-]+")) == lower then return "player", k end
	end
	for npcID, rec in pairs(d.npcs) do
		if rec.name and NS.Lower(rec.name) == lower then return "npc", npcID end
	end
	return nil
end

local WORDS = {
	lista = "list", list = "list",
	persone = "candidates", people = "candidates", candidati = "candidates", candidates = "candidates",
	aggiungi = "add", add = "add",
	rimuovi = "remove", remove = "remove", elimina = "remove", delete = "remove",
	nota = "note", note = "note", tag = "tags", tags = "tags", etichetta = "label", label = "label",
	imposta = "set", set = "set",
	esporta = "export", export = "export",
	auto = "auto", automatico = "auto", attrazione = "attraction", attraction = "attraction",
	reset = "reset", azzera = "reset", scarta = "dismiss", dismiss = "dismiss",
	dettaglio = "detail", detail = "detail", info = "detail",
}

local AXIS_WORDS = {
	familiarita = "familiarity", ["familiarità"] = "familiarity", familiarity = "familiarity",
	fiducia = "trust", trust = "trust", rispetto = "respect", respect = "respect",
	affetto = "affection", affection = "affection", timore = "fear", fear = "fear",
	lealta = "loyalty", ["lealtà"] = "loyalty", loyalty = "loyalty", attrazione = "attraction", attraction = "attraction",
}

local RESET_WORDS = { tutto = "all", all = "all", npc = "npcs", npcs = "npcs", giocatori = "players", players = "players" }

local function Summary(self, kind, key)
	local rec = self:Get(kind, key)
	if not rec then return nil end
	local info = self:Resolve(kind, rec)
	return ("%s: %s (%s %d). %s"):format(self:DisplayName(kind, key), info.text, info.dispositionText,
		math.floor(info.dispositionValue + 0.5), self:AxesText(info))
end

---@param rest string
function R:Command(rest)
	rest = rest or ""
	local word, arg = rest:match("^([^ ]*) *(.-) *$")
	word = NS.Lower(word or "")
	if not self:Enabled() then
		Say(self.readOnly and "rel_readonly" or "rel_off")
		return
	end
	if word == "" then
		if NS.RelationsFrame and NS.RelationsFrame:Toggle() then return end
		word = "list"
	end
	local action = WORDS[word]
	if action == "list" then
		local st = self:Stats()
		Say("rel_summary", st.npcs, st.players, st.candidates)
		for i, row in ipairs(self:Rows({ sort = "last" })) do
			if i > 10 then break end
			NS:Print("  " .. Summary(self, row.kind, row.key))
		end
	elseif action == "candidates" then
		local list = self:Candidates()
		if #list == 0 then Say("rel_no_candidates") end
		for _, c in ipairs(list) do NS:Print(("  %s (%s)"):format(c.key, NS:L("rel_src_" .. c.source))) end
	elseif action == "add" then
		local rec, why = self:AddPlayer(arg, "user")
		if rec and why ~= "exists" then Say("rel_added", R.PlayerKey(arg))
		elseif why == "exists" then Say("rel_exists", arg)
		else Say("rel_add_failed", arg, NS:L("rel_why_" .. tostring(why))) end
	elseif action == "dismiss" then
		local key = R.PlayerKey(arg)
		if key and self:Dismiss(key) then Say("rel_dismissed", key) else Say("rel_missing", arg) end
	elseif action == "remove" then
		local kind, key = FindSubject(self, arg)
		if kind and self:Remove(kind, key) then Say("rel_removed", arg) else Say("rel_missing", arg) end
	elseif action == "note" or action == "tags" or action == "label" then
		local who, text = arg:match("^([^ ]+) *(.-)$")
		local kind, key = FindSubject(self, who or "")
		if not kind then Say("rel_missing", arg); return end
		if action == "note" then self:SetNote(kind, key, text)
		elseif action == "tags" then self:SetTags(kind, key, text)
		else self:SetLabel(kind, key, text) end
		NS:Print(Summary(self, kind, key))
	elseif action == "set" then
		local who, axisWord, value = arg:match("^([^ ]+) +([^ ]+) +(-?[%d%.]+)$")
		local axis = axisWord and AXIS_WORDS[NS.Lower(axisWord)]
		local kind, key = FindSubject(self, who or "")
		if not kind then Say("rel_missing", arg); return end
		if not axis or not self:SetAxis(kind, key, axis, tonumber(value)) then Say("rel_set_usage"); return end
		NS:Print(Summary(self, kind, key))
	elseif action == "detail" then
		local kind, key = FindSubject(self, arg)
		if kind then NS:Print(Summary(self, kind, key)) else Say("rel_missing", arg) end
	elseif action == "export" then
		if not (NS.RelationsFrame and NS.RelationsFrame:ShowExport()) then
			local n = 0
			for line in (self:ExportText() .. "\n"):gmatch("([^\n]*)\n") do
				n = n + 1
				if n > 40 then break end
				NS:Print(line)
			end
		end
	elseif action == "auto" or action == "attraction" then
		local name = action == "auto" and "autoRegisterPlayers" or "attraction"
		local w = NS.Lower(arg)
		if ON_WORDS[w] then self:SetSetting(name, true) elseif OFF_WORDS[w] then self:SetSetting(name, false) end
		Say(action == "auto" and "rel_auto_now" or "rel_attraction_now", NS:L(self:Setting(name) and "on" or "off"))
	elseif action == "reset" then
		local what = RESET_WORDS[NS.Lower(arg)] or "all"
		local nowT = GetTime()
		local p = self.pendingReset
		if p and p.what == what and nowT <= p.untilT then
			self.pendingReset = nil
			Say("rel_reset_done", self:Reset(what))
		else
			self.pendingReset = { what = what, untilT = nowT + 15 }
			Say("rel_reset_confirm", what)
		end
	else
		Say("rel_help")
	end
end

---------------------------------------------------------------------------
-- Avvio
---------------------------------------------------------------------------
function R:OnInit()
	self.readOnly = NS.Config.readOnly ~= nil and NS.Config.readOnly.character == true
	self.session = { seen = {}, offered = {} }
	self.candidates, self.dismissed = {}, {}
	self.groupDirty = true
	local dropped = self:Sanitize()
	if dropped > 0 then NS.Diagnostics:Error("relations", ("%d voci malformate scartate"):format(dropped)) end
	if not self.readOnly then self:MaintainAll() end
	Hook("BuyMerchantItem", _G, "BuyMerchantItem", function() R:OnMerchantAction("merchant_buy") end)
	Hook("RepairAllItems", _G, "RepairAllItems", function() R:OnMerchantAction("merchant_repair") end)
	Hook("C_Container.UseContainerItem", _G.C_Container, "UseContainerItem", function() R:OnMerchantAction("merchant_sell") end)
	if NS.LivingMemory then NS.LivingMemory:RegisterKind("relation", 3) end
end
