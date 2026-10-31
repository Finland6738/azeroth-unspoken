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
-- Player records (version 2, #107, ADR 0026) keep two blocks apart:
--   user = what the user chose (axes edited by hand, label, feeling, note, tags, traits, role): written ONLY by the
--          user-action functions of this file (SetAxis, SetLabel, SetFeelings, SetNote, SetTags...) and by
--          Interlocutor:SetTrait; the software never writes it by itself (a test proves it);
--   seen = what the addon observed (first, last, count, encounters by type, a ring of short facts, no text).
-- NPC records stay flat: their axes are computed by the addon.
-- Proximity (#113, ADR 0030): with the option on (off by default) nameplates and mouseover can recognise a player who is
-- ALREADY listed, or (with the TRP3 consent) suggest one who has a TRP3 profile. For this session only: nothing is saved,
-- no record is created, nothing is kept about strangers, and a secret identity is not read.
-- Shared list (#114, ADR 0030): with the option on (off by default) the choices about people live in
-- AzerothUnspokenDB.sharedPlayers and are shared by the account's characters; a per-character record with choices of its
-- own wins over the shared one; the observations (`seen`) and `noted` always stay per character.
local ADDON, NS = ...
local Engine, Traits, Compat = NS.Engine, NS.Traits, NS.Compat

---@alias AURelationKind "npc"|"player"

---@class AURelationRecord una relazione salvata (NPC: chiave npcID; giocatore: chiave "Nome-Reame")
---Player records (version 2) hold the user's choices in `user` and the observations in `seen` (see AUPlayerUser and
---AUPlayerSeen); the fields below that the user chooses (axes, label, note, tags, traits, role) then live in `user`
---and first/last/count in `seen`. NPC records keep every field here.
---@field user? AUPlayerUser players: what the user chose
---@field seen? AUPlayerSeen players: what the addon observed
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
---@field talks? integer dialoghi ambientali aperti con questo NPC (S8)
---@field noted? table<string, boolean> etichette già ricordate nel diario
---@field traits? AUTraits personalità dell'interlocutore scelta dall'utente (S6c: temperament, morality, goals, speech)
---@field role? string ruolo dell'interlocutore (S6c)
---@field roleSource? "user"|"auto" chi ha deciso il ruolo: l'utente, o un'interazione affidabile

---@class AUPlayerUser what the user chose about a player: only the user-action functions write it (ADR 0026)
---@field axes? table<string, number> axes edited by hand (sparse: a missing value is 0)
---@field label? string a label id, or free text
---@field feeling? string[] up to two feelings (trust, liking, wariness, fear, resentment, gratitude)
---@field note? string
---@field tags? string[]
---@field traits? AUTraits how the user sees the person (S6c)
---@field role? string
---@field roleSource? "user"

---@class AUPlayerFact one remembered encounter, without any text
---@field k string kind (group, trade, duel, invite, emote, whisper, target, group_combat)
---@field p? integer uiMapID of the place
---@field z? string zone name
---@field t number time (epoch)

---@class AUPlayerSeen what the addon observed about a player: counted by the addon, never chosen by the user
---@field first number
---@field last number
---@field count integer encounters (the same kind within ENCOUNTER_GAP is one encounter)
---@field kinds table<string, integer> encounters by kind
---@field facts AUPlayerFact[] the last FACTS facts, oldest first
---@field guid? string reserved for #112 (never written by this version)

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
---@field feelings string[] the feelings the user chose (up to two)
---@field traits AUTraits profilo per i tag delle frasi (assi, relation, disposition, feeling)

---@class AURelationships
local R = NS:RegisterModule("relations")
NS.Relationships = R

R.VERSION = 2                  -- forma dei dati in AzerothUnspokenCharacterDB.relationships (2: user/seen, #107)
R.MAX_NPCS = 1000
R.COMPACT_NPCS = 900           -- dopo una compattazione se ne tengono 900
R.MAX_PLAYERS = 300
R.MAX_CANDIDATES = 40          -- proposte in memoria (mai salvate)
R.NOTE_LEN, R.LABEL_LEN, R.TAG_LEN, R.MAX_TAGS, R.NAME_LEN = 240, 24, 24, 6, 64
R.SCAN_DELAY = 1               -- seconds between the last roster update and the group scan
R.INTERACTION_SECONDS = 300    -- quanto resta "aperto" un dialogo con un NPC senza un evento di chiusura
R.QUEST_SECONDS = 900          -- tra l'apertura di una quest e l'accettazione o la consegna
R.KNOWN_GAP = 600              -- secondi tra due richiami "NPC conosciuto" per lo stesso NPC
R.DAY = 86400
R.ENCOUNTER_GAP = 600          -- seconds: the same kind of encounter with the same person inside the gap is one encounter
R.FACTS = 5                    -- short facts kept per player (a ring: the oldest goes first)
R.FEELINGS_MAX = 2             -- feelings the user can choose for one person
R.ZONE_LEN = 40
R.SHARED_VERSION = 1           -- shape of AzerothUnspokenDB.sharedPlayers (#114)
R.PROXIMITY_GAP = 60           -- seconds between two proximity proposals in a session (#113)
R.PROXIMITY_MAX = 10           -- proximity proposals in a session (#113)
R.CONFIRM_SECONDS = 15         -- how long the confirmation of a risky action (sharing, reset) stays open
-- what can happen with a listed player. ENCOUNTERS count as encounters (`count`, `last`); SHARED are facts of an
-- experience lived together (they update `last` and the tally by kind, not `count`). relShared accepts any of them.
R.ENCOUNTERS = { group = true, trade = true, duel = true, invite = true, emote = true, whisper = true, target = true }
R.SHARED = { group_combat = true }
R.RECOGNIZE = { group = true, trade = true, duel = true, invite = true, emote = true }  -- encounters that offer relation_player
for kind in pairs(R.ENCOUNTERS) do Engine.CONDITION_VALUES.relShared[kind] = true end
for kind in pairs(R.SHARED) do Engine.CONDITION_VALUES.relShared[kind] = true end
R.SLIDER_STEP = 10             -- passo dei pulsanti -/+ dell'interfaccia

R.readOnly = false             -- dati scritti da una versione più nuova: si leggono, non si cambiano
R.axes, R.axisById = {}, {}    -- assi in ordine
R.labels, R.labelById = {}, {} -- etichette per priorità decrescente
R.dispositions, R.dispositionById = {}, {}
R.feelings, R.feelingById = {}, {}   -- feelings in words, in data order (Data/Relationships.lua)
R.config = { knownMin = 15, lifetimeSoftness = 0.5, register = {}, dispositionStyles = {}, increments = {},
	decay = { graceDays = 14, perDay = 0.5, floor = 3 }, memorable = {},
	disposition = { weights = {}, familiarityWarmth = 0, bands = {} } }
R.candidates = {}              -- [chiave] = { key, source, t }: persone proposte, solo in questa sessione
R.dismissed = {}               -- [chiave] = true: proposte che l'utente ha scartato (solo sessione)
R.recalls = {}                 -- [evento] = true: eventi che citano un rapporto (il validatore chiede una condizione)
R.interaction = nil            -- { npcID, name, kind, t }: l'NPC con cui si sta parlando
R.session = { seen = {}, offered = {}, recognized = {}, prior = {}, proximity = { n = 0, secret = 0 } }
R.sharedReadOnly = false       -- the shared list was written by a newer version: it is not read or changed

local EMPTY = {}
local DeepCopy = NS.Config.DeepCopy
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
	-- feelings are a set (up to two at once): rel.feeling:resentment, rel.req:feeling:..., rel.not:feeling:...
	local feelingIds = {}
	for _, f in ipairs(R.feelings) do table.insert(feelingIds, f.id) end
	if #feelingIds > 0 then Traits.Define({ id = "feeling", kind = "set", values = feelingIds, scope = "rel" }) end
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
				order = #self.labels + 1, manualOnly = l.manualOnly == true }
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
	-- feelings in words (#109): `preset` is the typical level of the axes, offered to the user, never applied alone
	for _, f in ipairs(def.feelings or {}) do
		if type(f.id) == "string" and f.id:match("^[a-z]+$") then
			local feeling = { id = f.id, name = f.name, help = f.help, preset = {} }
			for axis, v in pairs(type(f.preset) == "table" and f.preset or {}) do
				if self.axisById[axis] and IsNumber(v) then feeling.preset[axis] = v end
			end
			if self.feelingById[f.id] then
				for i, x in ipairs(self.feelings) do if x.id == f.id then self.feelings[i] = feeling end end
			else
				table.insert(self.feelings, feeling)
			end
			self.feelingById[f.id] = feeling
			Engine.CONDITION_VALUES.feeling[f.id] = true
		end
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
	if name == "proximity" then self:ApplyProximity() end
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

---@param id string
---@return string
function R:FeelingName(id)
	local f = self.feelingById[id]
	return f and Name(f.name) or tostring(id)
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
		if not l.manualOnly and RuleMatches(l.when, axes) then return l.id end
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

---The record that holds what the user chose: `rec.user` for a player, the record itself for an NPC.
---Readers may use it freely; only the user-action functions of this file (and Interlocutor:SetTrait) write to it.
---@param rec AURelationRecord
---@return table
function R.UserOf(rec)
	return rec.user or rec
end

---The record that holds what the addon observed (first, last, count...): `rec.seen` for a player, the record itself
---for an NPC.
---@param rec AURelationRecord
---@return table
function R.SeenOf(rec)
	return rec.seen or rec
end

local function AxisValue(rec, id)
	local t = rec.user and (rec.user.axes or EMPTY) or rec
	local v = t[id]
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
	local user = R.UserOf(rec)
	local manual = type(user.label) == "string" and user.label ~= ""
	local label, text = derived, nil
	if manual then
		if self.labelById[user.label] then label = user.label else text = user.label end
	end
	local value, disp = self:Disposition(axes)
	local known = kind == "player" or manual or (axes.familiarity or 0) >= self.config.knownMin
	local traits = { relation = label, disposition = disp }
	for axis, v in pairs(axes) do traits[axis] = v end
	-- the feelings the user chose, as an ordered list and as a set for the tags (rel.feeling:resentment)
	local feelings, set = {}, {}
	for _, id in ipairs(type(user.feeling) == "table" and user.feeling or EMPTY) do
		if self.feelingById[id] and not set[id] then
			set[id] = true
			table.insert(feelings, id)
		end
	end
	if #feelings > 0 then traits.feeling = set end
	return { kind = kind, axes = axes, derived = derived, label = label, text = text or self:LabelName(label, sex),
		manual = manual, custom = text, disposition = disp, dispositionText = self:DispositionName(disp),
		dispositionValue = value, isKnown = known, traits = traits, feelings = feelings }
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

---------------------------------------------------------------------------
-- The list shared in the account (#114, D12, ADR 0030)
---------------------------------------------------------------------------
-- Two layers keep the choices about a person:
--   * the CHARACTER layer (`cdb.relationships.players`): always there, the default; it also holds this character's
--     observations (`seen`) and `noted`, whatever the option;
--   * the SHARED layer (`gdb.sharedPlayers.players`): opt-in, `{ source, user }` per person, no observations.
-- With the option off only the character layer exists for the rest of the addon and nothing is deleted from the other.
-- With it on, a person is listed if either layer has them, and the choices that count are those of the character
-- record when it has choices of its own (or says `scope = "character"`), else those of the shared record. The two
-- blocks are never mixed field by field: one of them wins as a whole.
---@return boolean
function R:Sharing()
	return NS.gdb ~= nil and not self.sharedReadOnly and self:Setting("sharePlayers")
end

---The store of the shared list. `create` makes it (only a user action does); nil if there is none or it is unusable.
---@param create? boolean
---@return { version: integer, players: table<string, table> }?
function R:Shared(create)
	local g = NS.gdb
	if not g or self.sharedReadOnly then return nil end
	local s = g.sharedPlayers
	if type(s) ~= "table" then
		if not create then return nil end
		s = { version = self.SHARED_VERSION, players = {} }
		g.sharedPlayers = s
	end
	if type(s.players) ~= "table" then s.players = {} end
	if not IsNumber(s.version) then s.version = self.SHARED_VERSION end
	return s
end

-- the shared records that count now: none unless sharing is on
local function SharedPlayers(self)
	if not self:Sharing() then return EMPTY end
	local s = self:Shared()
	return s and s.players or EMPTY
end

-- a character record keeps choices of its own: it wins over the shared one
local function OwnChoices(rec)
	return type(rec) == "table" and (rec.scope == "character" or (type(rec.user) == "table" and next(rec.user) ~= nil))
end

---Is the person in the list: in this character's, or (sharing on) in the account's?
---@param key string "Name-Realm"
---@return boolean
function R:IsListed(key)
	local d = self:Data()
	return d ~= nil and (d.players[key] ~= nil or SharedPlayers(self)[key] ~= nil)
end

---Whose choices count for a person now: "character" (the default and the only one with sharing off), "shared", or nil.
---@param key string
---@return "character"|"shared"|nil
function R:ScopeOf(key)
	local cr, sr = self:Data().players[key], SharedPlayers(self)[key]
	if not cr and not sr then return nil end
	if sr and not OwnChoices(cr) then return "shared" end
	return "character"
end

---This character's record of a person, made on the first observation of someone who is listed only in the shared
---list (empty choices, only observations: it adds no opinion of its own).
---@param key string
---@param create? boolean
---@return AURelationRecord?
function R:CharRecord(key, create)
	local d = self:Data()
	local rec = d.players[key]
	if rec or not create then return rec end
	local sr = SharedPlayers(self)[key]
	if not sr then return nil end
	rec = { source = sr.source, user = {}, seen = { first = Now(), last = 0, count = 0, kinds = {}, facts = {} } }
	d.players[key] = rec
	return rec
end

-- every listed person: [key] = true, from both layers
local function PlayerKeys(self)
	local out = {}
	for k in pairs(self:Data().players) do out[k] = true end
	for k in pairs(SharedPlayers(self)) do out[k] = true end
	return out
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

local function CleanFeelings(list)
	if type(list) ~= "table" then return nil end
	local out, seen = {}, {}
	for _, id in ipairs(list) do
		if type(id) == "string" and R.feelingById[id] and not seen[id] and #out < R.FEELINGS_MAX then
			seen[id] = true
			table.insert(out, id)
		end
	end
	return #out > 0 and out or nil
end

-- the axes of `src` (a flat record or a user.axes table) within their limits, zero values dropped, into `out`
local function CleanAxesInto(src, out)
	for _, a in ipairs(R.axes) do
		local v = src[a.id]
		if IsNumber(v) then
			v = Clamp(v, a.min, a.max)
			if v ~= 0 then out[a.id] = v end
		end
	end
end

-- what the user chose, besides the axes: label, feelings, note, tags, traits and role (S6c). Into `out`.
local function CleanChoicesInto(src, out)
	out.label = CleanText(src.label, R.LABEL_LEN)
	out.feeling = CleanFeelings(src.feeling)
	out.note = CleanText(src.note, R.NOTE_LEN)
	local tags = CleanTags(src.tags)
	if #tags > 0 then out.tags = tags end
	-- S6c: personalità e ruolo dell'interlocutore scelti dall'utente (o ruolo ricavato da un'interazione affidabile)
	if NS.Interlocutor then
		local traits = NS.Interlocutor.Clean(src.traits)
		traits.role = nil
		if next(traits) then out.traits = traits end
		if type(src.role) == "string" and Traits.defs.role and Traits.defs.role.valid[src.role] then
			out.role = src.role
			out.roleSource = src.roleSource == "user" and "user" or "auto"
		end
	end
end

local function CleanFact(f)
	if type(f) ~= "table" or type(f.k) ~= "string" or not f.k:match("^[a-z_]+$") or #f.k > 20 or not IsNumber(f.t) then return nil end
	local out = { k = f.k, t = f.t }
	if IsNumber(f.p) and f.p > 0 then out.p = math.floor(f.p) end
	out.z = CleanText(f.z, R.ZONE_LEN)
	return out
end

-- the observations of a player: counts, the tally by kind and the ring of short facts (no text anywhere)
local function CleanSeen(seen, fallback)
	seen = type(seen) == "table" and seen or {}
	local out = {}
	out.first = IsNumber(seen.first) and seen.first or (fallback and fallback.first) or 0
	out.last = IsNumber(seen.last) and seen.last or out.first
	out.count = IsNumber(seen.count) and math.max(0, math.floor(seen.count)) or 0
	out.kinds = {}
	if type(seen.kinds) == "table" then
		for k, n in pairs(seen.kinds) do
			if type(k) == "string" and k:match("^[a-z_]+$") and #k <= 20 and IsNumber(n) and n >= 1 then
				out.kinds[k] = math.floor(n)
			end
		end
	end
	out.facts = {}
	if type(seen.facts) == "table" then
		for _, f in ipairs(seen.facts) do
			local clean = CleanFact(f)
			if clean then table.insert(out.facts, clean) end
		end
		while #out.facts > R.FACTS do table.remove(out.facts, 1) end
	end
	if type(seen.guid) == "string" and #seen.guid <= 80 and not Compat.IsSecret(seen.guid) then out.guid = seen.guid end
	return out
end

---Version 1 player records were flat: axes, label, note, tags, traits and role next to first/last/count. Version 2
---keeps the user's choices in `user` and the observations in `seen` (#107, ADR 0026). Nothing is lost and nothing is
---invented: every value moves as it is, and a record that already has the new shape is returned as it is.
---@param rec any
---@return any
function R.MigrateV1(rec)
	if type(rec) ~= "table" or rec.user ~= nil or rec.seen ~= nil then return rec end
	local user, axes = {}, {}
	for _, a in ipairs(R.axes) do
		if rec[a.id] ~= nil then axes[a.id] = rec[a.id] end
	end
	if next(axes) then user.axes = axes end
	for _, f in ipairs({ "label", "note", "tags", "traits", "role", "roleSource", "feeling" }) do user[f] = rec[f] end
	return { source = rec.source, noted = rec.noted, user = user,
		seen = { first = rec.first, last = rec.last, count = rec.count } }
end

local function CleanRecord(rec, kind)
	if type(rec) ~= "table" then return nil end
	local out = {}
	if kind == "player" then
		local user = type(rec.user) == "table" and rec.user or {}
		out.user = {}
		local axes = {}
		CleanAxesInto(type(user.axes) == "table" and user.axes or EMPTY, axes)
		if next(axes) then out.user.axes = axes end
		CleanChoicesInto(user, out.user)
		out.seen = CleanSeen(rec.seen)
		out.name = CleanText(rec.name, R.NAME_LEN)
		if rec.scope == "character" then out.scope = "character" end
	else
		CleanAxesInto(rec, out)
		out.first = IsNumber(rec.first) and rec.first or 0
		out.last = IsNumber(rec.last) and rec.last or out.first
		out.count = IsNumber(rec.count) and math.max(0, math.floor(rec.count)) or 0
		out.name = CleanText(rec.name, R.NAME_LEN)
		CleanChoicesInto(rec, out)
	end
	if rec.source == "user" or rec.source == "auto" then out.source = rec.source end
	if kind == "npc" then
		if IsNumber(rec.decayDay) then out.decayDay = math.floor(rec.decayDay) end
		if IsNumber(rec.talks) and rec.talks > 0 then out.talks = math.floor(rec.talks) end
		local t = rec.today
		-- i contatori di un giorno passato non servono più: Increment li sostituisce alla prossima interazione (#52)
		if type(t) == "table" and IsNumber(t.day) and math.floor(t.day) == Day(Now())
			and type(t.n) == "table" and type(t.gain) == "table" then
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
	-- dati scritti da una versione più nuova: si lasciano intatti, campi sconosciuti compresi, e il modulo
	-- passa in sola lettura (ADR 0006, come memories.version) (#50)
	local v = tonumber(d.version) or self.VERSION
	if v > self.VERSION then
		self.readOnly = true
		NS.Diagnostics:Error("relations", ("relationships.version %d > %d: sola lettura"):format(v, self.VERSION))
		return 0
	end
	local dropped = 0
	local npcs, players = {}, {}
	for k, rec in pairs(d.npcs) do
		local id = IsNumber(k) and k > 0 and k == math.floor(k) and k or nil
		local clean = id and CleanRecord(rec, "npc")
		if clean then npcs[id] = clean else dropped = dropped + 1 end
	end
	for k, rec in pairs(d.players) do
		local key = type(k) == "string" and CleanText(k, R.NAME_LEN) or nil
		-- version 1 player records were flat: move the choices into `user` and the counts into `seen` (#107)
		if v < 2 then rec = R.MigrateV1(rec) end
		local clean = key and CleanRecord(rec, "player")
		if clean and key == k then players[key] = clean else dropped = dropped + 1 end
	end
	d.npcs, d.players = npcs, players
	d.version = self.VERSION
	-- il tetto vale anche per i dati caricati, non solo quando se ne aggiungono (#52)
	self:CompactNPCs()
	return dropped + self:SanitizeShared()
end

---Cleans the shared list of the account (#114) like the character's: bad entries are dropped, only `{ source, user }`
---is kept (observations are never shared). Data from a newer version is left untouched and the list goes unused.
---@return integer dropped
function R:SanitizeShared()
	self.sharedReadOnly = false
	local g = NS.gdb
	local s = g and g.sharedPlayers
	if type(s) ~= "table" then return 0 end
	local v = tonumber(s.version) or self.SHARED_VERSION
	if v > self.SHARED_VERSION then
		self.sharedReadOnly = true
		NS.Diagnostics:Error("relations", ("sharedPlayers.version %d > %d: not used"):format(v, self.SHARED_VERSION))
		return 0
	end
	local dropped, players = 0, {}
	for k, rec in pairs(type(s.players) == "table" and s.players or EMPTY) do
		local key = type(k) == "string" and CleanText(k, R.NAME_LEN) or nil
		local clean = key == k and CleanRecord(rec, "player") or nil
		if clean then
			players[key] = { source = clean.source, user = clean.user }
		else
			dropped = dropped + 1
		end
	end
	s.players, s.version = players, self.SHARED_VERSION
	return dropped
end

---@param kind AURelationKind
---@param key integer|string
---@return AURelationRecord?
function R:Get(kind, key)
	local d = self:Data()
	if not d then return nil end
	if kind == "npc" then return d.npcs[tonumber(key)] end
	if kind == "player" then
		local cr, sr = d.players[key], SharedPlayers(self)[key]
		if not sr or OwnChoices(cr) then return cr end
		-- the shared choices count: a view whose `user` is the shared block itself (so a user action that writes
		-- through it writes the shared record) and whose observations are this character's
		return { key = key, view = true, source = cr and cr.source or sr.source, noted = cr and cr.noted, user = sr.user,
			seen = cr and cr.seen or { first = 0, last = 0, count = 0, kinds = {}, facts = {} } }
	end
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
		-- the journal memory is this character's: a shared-list view keeps it in the character record
		local holder = rec.view and self:CharRecord(rec.key, true) or rec
		holder.noted = holder.noted or {}
		holder.noted[info.derived] = true
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
		if not (rec.label or rec.note or rec.tags or rec.feeling) then table.insert(list, { id = id, f = AxisValue(rec, "familiarity"), t = rec.last or 0 }) end
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
-- the kind of encounter behind each source of proposals
local ENCOUNTER_OF = { group = "group", trade = "trade", whisper = "whisper", trp3 = "target" }

---@return integer
function R:CountPlayers()
	local d = self:Data()
	local n = 0
	if d then
		for _ in pairs(PlayerKeys(self)) do n = n + 1 end
	end
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
	if self:IsListed(key) then return self:Get("player", key), "exists" end
	if self:CountPlayers() >= self.MAX_PLAYERS then return nil, "limit" end
	local now = Now()
	-- nothing has been observed yet, and no meeting is invented: the addition itself is not an encounter
	local rec = { source = source, user = {}, seen = { first = now, last = 0, count = 0, kinds = {}, facts = {} } }
	d.players[key] = rec
	-- with the shared list on, a person the user adds is also in the account's list (the explicit option "register
	-- automatically" is not a user choice about the person: that record stays with this character)
	if source == "user" and self:Sharing() then self:Shared(true).players[key] = { source = source, user = {} } end
	local c = self.candidates[key]
	self.candidates[key] = nil
	-- a person proposed because of a real encounter this session: that encounter is the first observation
	if c and ENCOUNTER_OF[c.source] then self:Observe(key, ENCOUNTER_OF[c.source]) end
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
	if self:IsListed(key) then
		self:Observe(key, ENCOUNTER_OF[source] or "group")
		return key
	end
	if self:Setting("autoRegisterPlayers") then
		self:AddPlayer(key, "auto")
		if ENCOUNTER_OF[source] then self:Observe(key, ENCOUNTER_OF[source]) end
		return key
	end
	return self:Suggest(key, source)
end

---Puts a person who is not listed among this session's suggestions (memory only, never saved, never a record, whatever
---the option "register automatically" says). Used by Propose and by proximity (#113).
---@param key string "Name-Realm"
---@param source string where the suggestion comes from (rel_src_<source> names it)
---@return string? key nil if suggestions are off or the user dismissed the person
function R:Suggest(key, source)
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

---------------------------------------------------------------------------
-- Observations: what the addon saw of a listed player (#108). Never the user block.
---------------------------------------------------------------------------
-- the place where the character is now: uiMapID and zone name, both optional and never secret
local function HereNow()
	local mapID = Compat.SafeCall("C_Map.GetBestMapForUnit", "player")
	if not IsNumber(mapID) or mapID <= 0 then mapID = nil end
	local zone = Compat.SafeCall("GetRealZoneText") or Compat.SafeCall("GetZoneText")
	zone = type(zone) == "string" and not Compat.IsSecret(zone) and CleanText(zone, R.ZONE_LEN) or nil
	return mapID and math.floor(mapID) or nil, zone
end

local function LastFactOf(seen, kind)
	for i = #seen.facts, 1, -1 do
		if seen.facts[i].k == kind then return seen.facts[i] end
	end
	return nil
end

local function SessionTable(self, name)
	local s = self.session
	s[name] = s[name] or {}
	return s[name]
end

---Records an encounter or a shared experience with a person who is already in the list. A person who is not listed is
---ignored: nothing here creates a record (D11 in #130). Updates only `seen`: the last time, the encounters (`count`,
---`kinds`) and the ring of the last facts: kind, place and time, never any text. The same kind with the same person
---inside ENCOUNTER_GAP is one encounter. Shared experiences (`group_combat`) update `last` and the tally by kind, not
---`count`.
---Before the first change of a session the previous state is kept (`session.prior`), so that conditions such as
---relDaysSince and relMetHere speak about the meeting before this one (#110).
---@param name any "Name" or "Name-Realm"
---@param kind string an ENCOUNTERS or SHARED kind
---@return AURelationRecord? rec nil if the person is not listed
---@return boolean? isNew true if this was a new encounter (not one inside the gap)
function R:Observe(name, kind)
	if not self:Enabled() or not (R.ENCOUNTERS[kind] or R.SHARED[kind]) then return nil end
	local key = R.PlayerKey(name)
	if not key or key == OwnKey() then return nil end
	local rec = self:CharRecord(key, true)
	if not rec then return nil end
	local seen = rec.seen
	if type(seen) ~= "table" then
		seen = { first = Now(), last = 0, count = 0, kinds = {}, facts = {} }
		rec.seen = seen
	end
	seen.kinds, seen.facts = seen.kinds or {}, seen.facts or {}
	local now = Now()
	local prior = SessionTable(self, "prior")
	if prior[key] == nil then
		local fact = seen.facts[#seen.facts]
		prior[key] = { last = seen.last, place = fact and { mapID = fact.p, zone = fact.z } or nil }
	end
	if not IsNumber(seen.first) or seen.first <= 0 then seen.first = now end
	if now > (seen.last or 0) then seen.last = now end
	local recent = LastFactOf(seen, kind)
	local isNew = not (recent and now - recent.t < self.ENCOUNTER_GAP and now >= recent.t)
	if isNew then
		if R.ENCOUNTERS[kind] then seen.count = (seen.count or 0) + 1 end
		seen.kinds[kind] = (seen.kinds[kind] or 0) + 1
		local mapID, zone = HereNow()
		table.insert(seen.facts, { k = kind, p = mapID, z = zone, t = now })
		while #seen.facts > self.FACTS do table.remove(seen.facts, 1) end
	end
	self:Changed()
	return rec, isNew
end

---An encounter with a person: recorded if the person is listed (and, for the kinds that recognise, offered to the
---narrator once per session), otherwise proposed to the user for the sources that propose.
---@param name any
---@param kind string group | trade | whisper | duel | invite | emote | target
function R:Met(name, kind)
	local key = R.PlayerKey(name)
	if not key or not self:Enabled() then return end
	if self:IsListed(key) then
		self:Observe(key, kind)
		if R.RECOGNIZE[kind] then self:Recognize(key) end
	elseif kind == "group" or kind == "trade" or kind == "whisper" then
		self:Propose(key, kind)
	end
end

---A known player is recognised: one candidate for the Narrative Director per person and session (#106). The Director
---decides: its budget, the moment and the chance may still leave it silent, and silence is a valid outcome. The
---observation was already recorded by the caller either way. This is not a way to public chat (ADR 0018, 0003): the
---line is for the private narrator, like every other event.
---@param key string "Name-Realm" of a listed player
---@return boolean offered
function R:Recognize(key)
	if not self:Enabled() or not NS.Director then return false end
	if not self:IsListed(key) then return false end
	local done = SessionTable(self, "recognized")
	if done[key] then return false end
	done[key] = GetTime()
	local first = key:match("^([^-]+)") or key
	NS.Director:Offer("relation_player", {
		relationSubject = { kind = "player", id = key },
		otherSubject = { kind = "player", key = "player:" .. key, name = first },
	})
	return true
end

---"Forget observations": the user wants the addon to drop what it saw of this person (counts, encounters, facts),
---keeping the person and everything the user chose. A user action.
---@param key string
---@return boolean ok
function R:ForgetObservations(key)
	if not self:Writable() then return false end
	if not self:IsListed(key) then return false end
	-- a person listed only in the shared list has no observations of this character to forget
	local rec = self:CharRecord(key)
	if rec then rec.seen = { first = Now(), last = 0, count = 0, kinds = {}, facts = {} } end
	local prior, done = self.session.prior, self.session.recognized
	if prior then prior[key] = nil end
	if done then done[key] = nil end
	self:Changed()
	return true
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
-- The ONLY way to a record that the user is changing, and with it the block that holds the user's choices. Every
-- function below is a user action (a button, a slider, a command): nothing the addon does by itself comes through
-- here (#107, ADR 0026; Tests/check_user_block.py and the "software never writes user" test).
local function Edit(self, kind, key)
	if not self:Writable() then return nil end
	if kind == "player" then self:Adopt(key) end
	local rec = self:Get(kind, kind == "npc" and tonumber(key) or key)
	if not rec then return nil end
	if kind == "player" and type(rec.user) ~= "table" then rec.user = {} end
	return rec, R.UserOf(rec)
end

---@param kind AURelationKind
---@param key integer|string
---@param axis string
---@param value number
---@return boolean ok
function R:SetAxis(kind, key, axis, value)
	local rec, user = Edit(self, kind, key)
	local def = self.axisById[axis]
	if not rec or not def or not IsNumber(value) then return false end
	local old = DerivedOf(self, rec)
	value = Clamp(math.floor(value + 0.5), def.min, def.max)
	local axes = user
	if kind == "player" then
		user.axes = user.axes or {}
		axes = user.axes
	end
	axes[axis] = value ~= 0 and value or nil
	if kind == "player" and not next(axes) then user.axes = nil end
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
	local rec, user = Edit(self, kind, key)
	if not rec then return false end
	local clean = CleanText(text, self.LABEL_LEN)
	if clean then
		local lower = NS.Lower(clean)
		for _, l in ipairs(self.labels) do
			if l.id == lower or NS.Lower(Name(l.name)) == lower then clean = l.id; break end
		end
	end
	user.label = clean
	self:Changed()
	return true
end

---Passa all'etichetta successiva: automatica → una per una → automatica.
---@param kind AURelationKind
---@param key integer|string
---@return string? now l'etichetta scelta (nil = automatica)
function R:CycleLabel(kind, key)
	local rec, user = Edit(self, kind, key)
	if not rec then return nil end
	local ids = self:LabelIds()
	local cur = user.label
	local nextId
	if cur == nil or not self.labelById[cur] then
		nextId = ids[1]
	else
		for i, id in ipairs(ids) do
			if id == cur then nextId = ids[i + 1]; break end
		end
	end
	user.label = nextId
	self:Changed()
	return nextId
end

---@param kind AURelationKind
---@param key integer|string
---@param text? string
---@return boolean ok
function R:SetNote(kind, key, text)
	local rec, user = Edit(self, kind, key)
	if not rec then return false end
	user.note = CleanText(text, self.NOTE_LEN)
	self:Changed()
	return true
end

---Tag dell'utente da un testo separato da virgole o spazi.
---@param kind AURelationKind
---@param key integer|string
---@param text? string
---@return boolean ok
function R:SetTags(kind, key, text)
	local rec, user = Edit(self, kind, key)
	if not rec then return false end
	local list = {}
	for part in tostring(text or ""):gmatch("[^,;]+") do table.insert(list, part) end
	local tags = CleanTags(list)
	user.tags = #tags > 0 and tags or nil
	self:Changed()
	return true
end

---The feelings the user chooses for a person, in words (trust, liking, wariness, fear, resentment, gratitude): none,
---one or two. Only the words are saved: the axes stay as they are until the user asks for the preset
---(ApplyFeelingPreset). The feeling does not change the label by itself; it adds the tag `rel.feeling:<id>` and the
---condition `feeling` for the lines.
---@param kind AURelationKind
---@param key integer|string
---@param list? string[]|string one id, a list of ids, or nil/{} for none
---@return boolean ok
function R:SetFeelings(kind, key, list)
	local rec, user = Edit(self, kind, key)
	if not rec then return false end
	if type(list) == "string" then list = { list } end
	local clean = CleanFeelings(list or EMPTY)
	if list and #list > 0 and not clean then return false end
	user.feeling = clean
	self:Changed()
	return true
end

---Cycles the feeling in one slot (1 or 2): none, then each feeling in turn, then none again. Slot 2 needs slot 1.
---@param kind AURelationKind
---@param key integer|string
---@param slot 1|2
---@return string? now the feeling of that slot (nil = none)
function R:CycleFeeling(kind, key, slot)
	local rec, user = Edit(self, kind, key)
	if not rec then return nil end
	local cur = {}
	for _, id in ipairs(user.feeling or EMPTY) do table.insert(cur, id) end
	slot = slot == 2 and 2 or 1
	if slot == 2 and #cur == 0 then return nil end
	local ids = {}
	for _, f in ipairs(self.feelings) do
		if f.id ~= cur[slot == 1 and 2 or 1] then table.insert(ids, f.id) end
	end
	local nextId
	local at
	for i, id in ipairs(ids) do if id == cur[slot] then at = i end end
	nextId = ids[(at or 0) + 1]
	cur[slot] = nextId
	if slot == 1 and not nextId then cur = {} end
	if slot == 2 and not nextId then cur[2] = nil end
	user.feeling = CleanFeelings(cur)
	self:Changed()
	return nextId
end

---The preset of the axes for the person's first feeling: the typical level of that feeling, raised only where the
---axis is weaker than the preset in its direction (a stronger value the user set is kept). A user action that
---changes the axes the user can then adjust; it is never run by the addon on its own.
---@param kind AURelationKind
---@param key integer|string
---@return boolean ok
---@return table<string, number>? changed the axes that moved, with the new values
function R:ApplyFeelingPreset(kind, key)
	local rec, user = Edit(self, kind, key)
	if not rec then return false end
	local f = self.feelingById[(user.feeling or EMPTY)[1]]
	if not f then return false end
	local changed = {}
	for axis, target in pairs(f.preset) do
		local def = self.axisById[axis]
		local v = AxisValue(rec, axis)
		if def and (not def.optional or self:AttractionOn()) and ((target >= 0 and v < target) or (target < 0 and v > target)) then
			if self:SetAxis(kind, key, axis, target) then changed[axis] = target end
		end
	end
	self:Changed()
	return true, changed
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
		if not self:IsListed(key) then return false end
		d.players[key] = nil
		-- removing a person while the shared list is on removes them from the account's list too: they are the same list
		local shared = self:Sharing() and self:Shared()
		if shared then shared.players[key] = nil end
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
	-- the account's list is cleared only when asked for by name: "reset players" is this character's list
	if what == "shared" then
		local shared = self:Shared()
		if shared then
			for _ in pairs(shared.players) do n = n + 1 end
			shared.players = {}
		end
	end
	self:Changed()
	return n
end

---------------------------------------------------------------------------
-- The shared list: what the user can do with it (#114, D12, ADR 0030). Every function here answers a user action.
---------------------------------------------------------------------------
---With the shared list on and this character holding no choices of its own for a person, the person's choices live in
---the shared record: it is made before a user action writes (called by Edit and by Interlocutor:SetTrait).
---@param key string
function R:Adopt(key)
	if not self:Writable() or not self:Sharing() then return end
	local cr = self:Data().players[key]
	if not cr or OwnChoices(cr) then return end
	local shared = self:Shared(true)
	if shared and not shared.players[key] then shared.players[key] = { source = cr.source, user = {} } end
end

---Chooses whose choices count for one person (a user action: the button of the detail, /au relationships scope).
---  "character": this character gets a copy of the shared choices and keeps its own from now on; the shared record
---               is left as it is for the other characters;
---  "shared":    this character's own choices move to the shared record (they replace the choices already there) and
---               the character record keeps only its observations.
---@param key string
---@param scope "character"|"shared"
---@return boolean ok
---@return boolean|string|nil replaced true if choices already in the shared record were replaced; or why it failed
function R:SetScope(key, scope)
	if not self:Writable() then return false, "off" end
	if not self:Sharing() then return false, "not_sharing" end
	if scope ~= "shared" and scope ~= "character" then return false, "bad_scope" end
	local cr = self:Data().players[key]
	local shared = self:Shared(true)
	local sr = shared.players[key]
	if not cr and not sr then return false, "missing" end
	if scope == "character" then
		if OwnChoices(cr) then return true end
		cr = self:CharRecord(key, true)
		cr.user = DeepCopy(sr and sr.user or {})
		cr.scope = "character"
		self:Changed()
		return true
	end
	if not OwnChoices(cr) then return true end
	local own = next(cr.user) ~= nil
	local replaced = own and sr ~= nil and next(sr.user) ~= nil
	-- a character that had no choices of its own (only `scope`) must not blank the ones already shared
	if own or not sr then shared.players[key] = { source = sr and sr.source or cr.source, user = cr.user } end
	cr.user, cr.scope = {}, nil
	self:Changed()
	return true, replaced
end

---Migration into the shared list (a user action: `/au relationships share all`): the choices this character holds for
---people the shared list does not have yet move there. A person the shared list already has choices for keeps this
---character's own choices (they win; nothing is overwritten). Nothing else changes and nothing is deleted.
---@return integer moved
---@return integer kept
function R:ShareAll()
	if not self:Writable() or not self:Sharing() then return 0, 0 end
	local shared = self:Shared(true)
	local keys = {}
	for key, cr in pairs(self:Data().players) do
		if OwnChoices(cr) then table.insert(keys, key) end
	end
	table.sort(keys)
	local moved, kept = 0, 0
	for _, key in ipairs(keys) do
		local sr = shared.players[key]
		if sr and next(sr.user) ~= nil and next(self:Data().players[key].user) ~= nil then
			kept = kept + 1
		elseif self:SetScope(key, "shared") then
			moved = moved + 1
		end
	end
	return moved, kept
end

---The way back (a user action: `/au relationships share copy`): every person of the shared list gets a record in this
---character, with the shared choices copied as the character's own, so that turning the option off loses nothing for
---this character. The shared list itself is not touched.
---@return integer copied
---@return integer skipped people left out because the character's list is full
function R:CopySharedHere()
	if not self:Writable() or not self:Sharing() then return 0, 0 end
	local shared = self:Shared()
	if not shared then return 0, 0 end
	local keys = {}
	for key in pairs(shared.players) do table.insert(keys, key) end
	table.sort(keys)
	local d = self:Data()
	local copied, skipped, held = 0, 0, 0
	for _ in pairs(d.players) do held = held + 1 end
	for _, key in ipairs(keys) do
		local cr = d.players[key]
		if not OwnChoices(cr) then
			local sr = shared.players[key]
			if not cr and held >= self.MAX_PLAYERS then
				skipped = skipped + 1
			else
				if not cr then held = held + 1 end
				cr = self:CharRecord(key, true)
				cr.user = DeepCopy(sr.user)
				if next(cr.user) ~= nil then cr.scope = "character" end
				copied = copied + 1
			end
		end
	end
	self:Changed()
	return copied, skipped
end

---Turning the shared list on takes two steps, so that nobody does it by accident: the first call opens a confirmation
---(the caller shows the privacy and role-play warning), the second one inside CONFIRM_SECONDS turns it on.
---@return "armed"|"on"|"off"|"unavailable"
function R:StartSharing()
	if not self:Writable() then return "off" end
	if self:Setting("sharePlayers") then return "on" end
	if NS.gdb == nil or self.sharedReadOnly then return "unavailable" end
	local now = GetTime()
	local p = self.pendingShare
	if p and now <= p.untilT then
		self.pendingShare = nil
		self:SetSetting("sharePlayers", true)
		self:Shared(true)
		return "on"
	end
	self.pendingShare = { untilT = now + self.CONFIRM_SECONDS }
	return "armed"
end

---Turning it off is one step and deletes nothing: the shared list stays in the account, unused, until it is turned on
---again or cleared (`/au relationships reset shared`).
function R:StopSharing()
	self.pendingShare = nil
	self:SetSetting("sharePlayers", false)
end

---@return boolean waiting a confirmation to turn the shared list on is open
function R:ShareArmed()
	local p = self.pendingShare
	return p ~= nil and GetTime() <= p.untilT
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
---@field sort? "name"|"kind"|"label"|"disposition"|"last"|"count"|"familiarity"
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
	for key in pairs(PlayerKeys(self)) do Add("player", key, self:Get("player", key)) end
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
		elseif sort == "count" then
			local ca, cb = R.SeenOf(a.rec).count or 0, R.SeenOf(b.rec).count or 0
			if ca ~= cb then return ca < cb end
		else
			local la, lb = R.SeenOf(a.rec).last or 0, R.SeenOf(b.rec).last or 0
			if la ~= lb then return la < lb end
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
	p = self:CountPlayers()
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

---Chi è la persona dell'interazione: un soggetto dato (extra.relationSubject), la persona di un evento
---(extra.otherSubject, #48), l'NPC con cui si sta parlando, oppure il bersaglio. Un'identità segreta, un GUID che manca o una creatura che non conosciamo danno nil.
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
	-- la persona dell'evento (other_action: chi ha fatto l'emote, lo scambio, il duello, l'invito) è anche il soggetto
	-- del rapporto, come per l'interlocutore (#48); `{ unit = "target" }` è il bersaglio, letto più sotto
	local other = extra and extra.otherSubject
	local viaTarget = type(other) == "table" and other.unit == "target"
	if type(other) == "table" and not viaTarget then
		if other.kind == "player" and type(other.key) == "string" then
			local key = other.key:match("^player:(.+)$")
			local rec = key and self:Get("player", key)
			if rec then return "player", key, rec end
		elseif other.kind == "npc" and other.npcID then
			local rec = self:Get("npc", other.npcID)
			if rec then return "npc", other.npcID, rec end
		end
		return nil
	end
	local i = not viaTarget and InteractionFresh(self)
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

---Rereads the group: which labels are among the companions (for `withRelation`), and proposes who is not listed.
---With `announce` (the roster event, not the lazy read made while building a context) it also notices who joined
---since the last scan: a listed player who joins is observed (`group`) and recognised (#106), and the listed members
---are remembered for the shared-experience facts (`group_combat`).
---@param announce? boolean
function R:ScanGroup(announce)
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
	local listed, joined = {}, {}
	for _, unit in ipairs(units) do
		if Compat.SafeCall("UnitExists", unit) == true and not Compat:IsUnitIdentitySecret(unit) then
			local name, realm = Compat.SafeCall("UnitFullName", unit)
			local key = R.PlayerKey(name, realm)
			if key and key ~= OwnKey() then
				local rec = self:Get("player", key)
				if rec then
					out[self:Resolve("player", rec).label] = true
					listed[key] = true
					if announce and not (self.groupKeys or EMPTY)[key] then table.insert(joined, key) end
				else
					self:Propose(key, "group")
				end
			end
		end
	end
	self.group = out
	if announce then
		self.groupKeys = listed
		table.sort(joined)
		for _, key in ipairs(joined) do self:Met(key, "group") end
	end
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
	ctx.relationCustom = info.custom ~= nil  -- il nome è un testo scritto dall'utente: solo nelle voci private (#45)
	ctx.disposition, ctx.dispositionLabel, ctx.dispositionValue = info.disposition, info.dispositionText, info.dispositionValue
	ctx.rel, ctx.isKnown, ctx.relTraits = info.axes, info.isKnown, info.traits
	ctx.relName = self:DisplayName(kind, key)
	ctx.relFeelings = info.traits.feeling or EMPTY       -- set of ids: the condition `feeling`
	if kind == "player" then self:ObservationContext(ctx, key, rec) end
end

---The observation conditions of a listed player (#110), from `seen` and from the state before this session's first
---meeting (`session.prior`):
---  ctx.relDaysSince  whole days since the previous meeting (absent if there was none)
---  ctx.relMetHere    the previous meeting was in the place where the character is now
---  ctx.relShared     set of the kinds of experience ever recorded with this person (seen.kinds)
---@param ctx table
---@param key string
---@param rec AURelationRecord
function R:ObservationContext(ctx, key, rec)
	local seen = rec.seen
	if type(seen) ~= "table" then return end
	local prior = (self.session.prior or EMPTY)[key]
	local last = prior and prior.last or seen.last
	if IsNumber(last) and last > 0 then
		ctx.relDaysSince = math.max(0, math.floor((Now() - last) / R.DAY))
	end
	local place = prior and prior.place
	if not prior then
		local fact = seen.facts and seen.facts[#seen.facts]
		place = fact and { mapID = fact.p, zone = fact.z } or nil
	end
	if place then
		local here = ctx.place
		local mapID = type(here) == "table" and here.mapID or nil
		if IsNumber(place.mapID) and IsNumber(mapID) then
			ctx.relMetHere = place.mapID == mapID
		elseif type(place.zone) == "string" and type(ctx.zone) == "string" then
			ctx.relMetHere = NS.Lower(place.zone) == NS.Lower(ctx.zone)
		end
	end
	local shared
	for k, n in pairs(seen.kinds or EMPTY) do
		if IsNumber(n) and n > 0 then
			shared = shared or {}
			shared[k] = true
		end
	end
	ctx.relShared = shared
end

-- Fattore R del peso (GDD §10): le frasi che citano un rapporto salgono di peso se il rapporto c'è, quelle che lo
-- affermano (`req:`) senza che esista vengono escluse, quelle con un tag che contrasta pesano meno. Le condizioni
-- delle regole fanno già la selezione dura; questa è la parte morbida. Tag, con ambito `rel.`:
--   rel.relation:friend  rel.disposition:close  rel.trust:high  rel.req:relation:rival  rel.not:relation:enemy
---@param entry AUPhrase
---@param ctx table
---@return number
function R.Factor(entry, ctx)
	local traits = ctx.relTraits or EMPTY
	-- a warm line never goes to a person the user feels wariness, fear or resentment for (#105 for the label, #109 for
	-- the feeling), unless the line declares itself ironic. The feeling is the user's word: it counts even before
	-- the axes follow it.
	local feeling = traits.feeling
	local tags = entry.tags
	if feeling and tags and tags.warm and not tags.ironic and (feeling.wariness or feeling.fear or feeling.resentment) then
		return 0
	end
	local f = Traits.Evaluate(tags, traits, "rel")
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

-- A known player recognised (#106): joining the group, an interaction aimed at us, optionally the target. At most one
-- candidate per person and session (R:Recognize); the Director keeps its budget, moment and chance, and silence is a
-- valid outcome. The lines are for the private narrator like every other event: no new road to public chat.
R:RegisterRelationEvent("relation_player", function(ctx)
	return ctx.isKnown == true and ctx.relationKind == "player"
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
-- Anche il mondo (Systems/World.lua, #95) ascolta QUEST_STATE: per questo l'evento porta l'id della missione (solo il
-- numero, mai testo), se il client lo dà. QUEST_ACCEPTED manda (questLogIndex, questID) in Classic e (questID) altrove.
local function QuestID(...)
	local a, b = ...
	a, b = Compat.Readable(a), Compat.Readable(b)
	if type(b) == "number" then return b end
	if type(a) == "number" then return a end
	return nil
end
EventBus:AddSource("QUEST_ACCEPTED", { normalize = function(...)
	return "QUEST_STATE", { state = "accepted", questID = QuestID(...) }, {}
end })
EventBus:AddSource("QUEST_TURNED_IN", { normalize = function(questID)
	return "QUEST_STATE", { state = "turned_in", questID = QuestID(questID) }, {}
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

-- The roster changes often (raids send dozens of updates): the group is read once, a moment after the last one.
function handlers.GROUP_CHANGED()
	R.groupDirty = true
	if R.scanPending then return end
	if C_Timer and C_Timer.After then
		R.scanPending = true
		C_Timer.After(R.SCAN_DELAY, function()
			R.scanPending = false
			if R:Enabled() then NS.Diagnostics:Guard("relations:scan", R.ScanGroup, R, true) end
		end)
	elseif R:Enabled() then
		R:ScanGroup(true)
	end
end

function handlers.TRADE_OPENED(env)
	if env.context.name then R:Met(env.context.name, "trade") end
end

function handlers.WHISPER_SENT(env)
	if env.context.name then R:Met(env.context.name, "whisper") end
end

-- Interactions aimed at us, published by Systems/Interlocutor.lua: only a person already in the list is observed, and
-- only the name is read (the emote text is dropped there, the duel and the invite have none).
function handlers.OTHER_DUEL(env) if env.context.name then R:Met(env.context.name, "duel") end end
function handlers.OTHER_INVITE(env) if env.context.name then R:Met(env.context.name, "invite") end end
function handlers.OTHER_EMOTE(env) if env.context.name then R:Met(env.context.name, "emote") end end

-- A fight fought in a group with listed players is a shared experience (`group_combat`, #110): the members are those
-- of the last roster scan when the fight starts.
function handlers.COMBAT_START()
	if not R:Enabled() or not next(R.groupKeys or EMPTY) then R.fightWith = nil; return end
	R.fightWith = {}
	for key in pairs(R.groupKeys) do R.fightWith[key] = true end
end

function handlers.COMBAT_END()
	local with = R.fightWith
	R.fightWith = nil
	if not with or not R:Enabled() then return end
	local keys = {}
	for key in pairs(with) do table.insert(keys, key) end
	table.sort(keys)
	for _, key in ipairs(keys) do R:Observe(key, "group_combat") end
end

-- The target: a player already in the list is observed (D11 in #130) and, only if the user turned it on, recognised.
-- A player not in the list with a Total RP 3 profile is proposed (the presence in the registry, no data read).
function handlers.TARGET_CHANGED(env)
	if not env.context.hasTarget or not R:Enabled() then return end
	if Compat:IsUnitIdentitySecret("target") or Compat.SafeCall("UnitIsPlayer", "target") ~= true then return end
	local name, realm = Compat.SafeCall("UnitFullName", "target")
	local key = R.PlayerKey(name, realm)
	if not key then return end
	if R:IsListed(key) then
		R:Observe(key, "target")
		if R:Setting("recognizeTarget") then R:Recognize(key) end
	elseif R:Setting("proposePlayers") and NS.TotalRP3 and NS.TotalRP3:IsKnownPlayer("target") then
		R:Propose(key, "trp3")
	end
end

---------------------------------------------------------------------------
-- Proximity (#113, D11, ADR 0030): off by default, for this session only
---------------------------------------------------------------------------
-- Nameplates and mouseover can recognise a player who is ALREADY in the list: the same `relation_player` candidate as
-- joining a group, with the same guard (once per person and session, R:Recognize) and the Director's own budget and
-- chance. With the TRP3 consent (S6c) a person who has a TRP3 profile but is not listed is suggested to the user, in
-- memory, like a target. It never writes: no record, no observation, no `seen`, nothing kept about a stranger, and no
-- name is read from a unit whose identity is secret.
-- the session counters of proximity (made on first use: a session table made by older code or a test has none)
local function Prox(self)
	local p = self.session.proximity
	if not p then
		p = { n = 0, secret = 0 }
		self.session.proximity = p
	end
	return p
end

local function ProximityUnit(unit)
	return unit == "mouseover" or (type(unit) == "string" and unit:match("^nameplate%d+$") ~= nil)
end

---Can proximity produce another proposal now? The option is on, the session budget is not spent and the pause since
---the last proposal is over. Cheap on purpose: the sources ask it before publishing anything.
---@return boolean
function R:ProximityReady()
	if not self:Enabled() or not self:Setting("proximity") then return false end
	local p = Prox(self)
	if p.n >= self.PROXIMITY_MAX then return false end
	return p.t == nil or GetTime() - p.t >= self.PROXIMITY_GAP
end

---A player is near (a nameplate appeared, the mouse is over them).
---@param unit string "nameplateN" or "mouseover"
---@return "recognized"|"suggested"|nil what it did
function R:Nearby(unit)
	if not self:ProximityReady() or not ProximityUnit(unit) then return nil end
	local p = Prox(self)
	-- a secret identity is not read at all
	if Compat:IsUnitIdentitySecret(unit) then p.secret = p.secret + 1; return nil end
	if Compat.SafeCall("UnitIsPlayer", unit) ~= true then return nil end
	local name, realm = Compat.SafeCall("UnitFullName", unit)
	if Compat.IsSecret(name) or Compat.IsSecret(realm) then p.secret = p.secret + 1; return nil end
	local key = R.PlayerKey(name, realm)
	if not key or key == OwnKey() then return nil end
	local result
	if self:IsListed(key) then
		-- once per person and session: someone already recognised costs nothing and uses no budget
		if not self:Recognize(key) then return nil end
		result = "recognized"
	else
		local trp3 = NS.TotalRP3
		if not (trp3 and trp3:HasOtherConsent() and trp3:IsKnownPlayer(unit)) then return nil end
		if self.candidates[key] or not self:Suggest(key, "proximity") then return nil end
		result = "suggested"
	end
	p.n, p.t = p.n + 1, GetTime()
	return result
end

local function ProximitySource(via)
	return { normalize = function(unit)
		if via == "mouseover" then unit = "mouseover" end
		if not R:ProximityReady() or not ProximityUnit(unit) then return nil end
		if Compat:IsUnitIdentitySecret(unit) then
			local p = Prox(R)
			p.secret = p.secret + 1
			return nil
		end
		if Compat.SafeCall("UnitIsPlayer", unit) ~= true then return nil end
		return "PROXIMITY_UNIT", { unit = unit, via = via }, { window = 0 }
	end }
end

R.PROXIMITY_EVENTS = { NAME_PLATE_UNIT_ADDED = "nameplate", UPDATE_MOUSEOVER_UNIT = "mouseover" }

---Registers the nameplate and mouseover events while the option is on and unregisters them while it is off, so that
---with the option off the client does not call the addon for them at all (they fire very often).
function R:ApplyProximity()
	local on = self:Enabled() and self:Setting("proximity")
	for event, via in pairs(R.PROXIMITY_EVENTS) do
		if on and not EventBus.sources[event] then
			EventBus:AddSource(event, ProximitySource(via))
		elseif not on and EventBus.sources[event] then
			EventBus:RemoveSource(event)
		end
	end
end

function handlers.PROXIMITY_UNIT(env)
	R:Nearby(env.context.unit)
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

---The encounters of a record in words: "5 (group 3, trade 1, duel 1)", from the tally by kind.
---@param rec AURelationRecord
---@return string
function R:EncountersText(rec)
	local seen = R.SeenOf(rec)
	local parts = {}
	if rec.seen then
		local kinds = {}
		for k, n in pairs(seen.kinds or EMPTY) do table.insert(kinds, k) end
		table.sort(kinds, function(a, b)
			local na, nb = seen.kinds[a], seen.kinds[b]
			if na ~= nb then return na > nb end
			return a < b
		end)
		for _, k in ipairs(kinds) do
			local name = NS:L("rel_enc_" .. k)
			table.insert(parts, ("%s %d"):format(name == "rel_enc_" .. k and k or name, seen.kinds[k]))
		end
	end
	local n = seen.count or 0
	return #parts > 0 and ("%d (%s)"):format(n, table.concat(parts, ", ")) or tostring(n)
end

---The feelings of a record in words, "trust, gratitude" (empty if none).
---@param rec AURelationRecord
---@return string
function R:FeelingsText(rec)
	local out = {}
	for _, id in ipairs(R.UserOf(rec).feeling or EMPTY) do table.insert(out, self:FeelingName(id)) end
	return table.concat(out, ", ")
end

---The text the user can copy (the addon writes no files): their own notes and tags, and the counts the addon kept.
---Never a chat text: nothing like that is stored.
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
			local info, user, seen = row.info, R.UserOf(row.rec), R.SeenOf(row.rec)
			local line = ("%s | %s | %s (%d) | %s | %s %s | %s: %s"):format(row.name, info.text, info.dispositionText,
				math.floor(info.dispositionValue + 0.5), self:AxesText(info), NS:L("rel_last"), Stamp(seen.last),
				NS:L("rel_col_count"), self:EncountersText(row.rec))
			local feelings = self:FeelingsText(row.rec)
			if feelings ~= "" then line = line .. " | " .. NS:L("rel_feeling") .. ": " .. feelings end
			if user.tags then line = line .. " | " .. NS:L("rel_tags") .. ": " .. table.concat(user.tags, ",") end
			if user.note then line = line .. " | " .. NS:L("rel_note") .. ": " .. user.note end
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
	local prox = Prox(self)
	return ("%d NPCs, %d players, %d candidates; npcAuto %s, attraction %s, autoRegister %s; proximity %s (%d proposed, %d secret), shared list %s"):format(
		st.npcs, st.players, st.candidates, tostring(self:Setting("npcAuto")), tostring(self:AttractionOn()),
		tostring(self:Setting("autoRegisterPlayers")), tostring(self:Setting("proximity")), prox.n, prox.secret,
		self:Sharing() and "on" or "off")
end

---------------------------------------------------------------------------
-- Comandi: /au relationships ...
---------------------------------------------------------------------------
local function Say(key, ...) NS:Print(NS:L(key, ...)) end


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
	for k in pairs(PlayerKeys(self)) do
		if NS.Lower(k) == NS.Lower(key or text) or NS.Lower(k:match("^[^-]+")) == lower then return "player", k end
	end
	for npcID, rec in pairs(d.npcs) do
		if rec.name and NS.Lower(rec.name) == lower then return "npc", npcID end
	end
	return nil
end

local WORDS = NS.Keywords.Register("relationships", {
	list = "list", people = "candidates", add = "add", remove = "remove", note = "note", tags = "tags", label = "label",
	set = "set", export = "export", auto = "auto", attraction = "attraction", reset = "reset", dismiss = "dismiss",
	detail = "detail", feeling = "feeling", forget = "forget", proximity = "proximity", share = "share", scope = "scope",
})

local FEELING_WORDS = NS.Keywords.Register("relationships.feelings", {
	trust = "trust", liking = "liking", wariness = "wariness", fear = "fear", resentment = "resentment",
	gratitude = "gratitude", none = false,
})

local AXIS_WORDS = NS.Keywords.Register("relationships.axes", {
	familiarity = "familiarity", trust = "trust", respect = "respect", affection = "affection", fear = "fear",
	loyalty = "loyalty", attraction = "attraction",
})

local RESET_WORDS = NS.Keywords.Register("relationships.reset", { all = "all", npcs = "npcs", players = "players", shared = "shared" })
local SHARE_WORDS = NS.Keywords.Register("relationships.share", { all = "all", copy = "copy" })
local SCOPE_WORDS = NS.Keywords.Register("relationships.scope", { shared = "shared", character = "character" })

local function Summary(self, kind, key)
	local rec = self:Get(kind, key)
	if not rec then return nil end
	local info = self:Resolve(kind, rec)
	local text = ("%s: %s (%s %d). %s"):format(self:DisplayName(kind, key), info.text, info.dispositionText,
		math.floor(info.dispositionValue + 0.5), self:AxesText(info))
	local feelings = self:FeelingsText(rec)
	if feelings ~= "" then text = text .. " " .. NS:L("rel_feeling") .. ": " .. feelings .. "." end
	if kind == "player" then text = text .. " " .. NS:L("rel_col_count") .. ": " .. self:EncountersText(rec) .. "." end
	return text
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
	elseif action == "feeling" then
		-- /au relationships feeling <name> <feeling> [<feeling>] [preset]  (none clears them)
		local who, rest2 = arg:match("^([^ ]+) *(.-)$")
		local kind, key = FindSubject(self, who or "")
		if not kind then Say("rel_missing", arg); return end
		local list, preset, bad = {}, false, false
		for w in NS.Lower(rest2 or ""):gmatch("[^ ,]+") do
			local id = FEELING_WORDS[w]
			if w == "preset" then preset = true
			elseif id then table.insert(list, id)
			elseif id == nil then bad = true end
		end
		if bad or (#list == 0 and not (rest2 or ""):lower():find("none", 1, true) and not preset) then Say("rel_feeling_usage"); return end
		if #list > 0 or not preset then
			if not self:SetFeelings(kind, key, list) then Say("rel_feeling_usage"); return end
		end
		if preset and not self:ApplyFeelingPreset(kind, key) then Say("rel_feeling_usage"); return end
		NS:Print(Summary(self, kind, key))
	elseif action == "forget" then
		local kind, key = FindSubject(self, arg)
		if kind == "player" and self:ForgetObservations(key) then Say("rel_forgot", arg) else Say("rel_missing", arg) end
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
		local on = NS.Keywords.OnOff(w)
		if on ~= nil then self:SetSetting(name, on) end
		Say(action == "auto" and "rel_auto_now" or "rel_attraction_now", NS:L(self:Setting(name) and "on" or "off"))
	elseif action == "proximity" then
		local on = NS.Keywords.OnOff(NS.Lower(arg))
		if on ~= nil then self:SetSetting("proximity", on) end
		Say("rel_proximity_now", NS:L(self:Setting("proximity") and "on" or "off"))
	elseif action == "share" then
		-- /au relationships share [on | off | status | all | copy]: turning it on asks for a confirmation with the warning
		local w = NS.Lower(arg)
		local on = NS.Keywords.OnOff(w)
		local sub = SHARE_WORDS[w]
		if on == true then
			local r = self:StartSharing()
			if r == "armed" then Say("rel_share_warning"); Say("rel_share_confirm")
			elseif r == "on" then Say("rel_share_now", NS:L("on"))
			elseif r == "unavailable" then Say("rel_share_unavailable") end
		elseif on == false then
			self:StopSharing()
			Say("rel_share_now", NS:L("off"))
			Say("rel_share_off_tip")
		elseif sub == "all" then
			if not self:Sharing() then Say("rel_share_needs_on"); return end
			local moved, kept = self:ShareAll()
			Say("rel_share_all_done", moved, kept)
		elseif sub == "copy" then
			if not self:Sharing() then Say("rel_share_needs_on"); return end
			local copied, skipped = self:CopySharedHere()
			Say("rel_share_copy_done", copied, skipped)
		else
			Say("rel_share_now", NS:L(self:Sharing() and "on" or "off"))
		end
	elseif action == "scope" then
		-- /au relationships scope <name> shared|character
		local who, word = arg:match("^([^ ]+) *(.-)$")
		local what = word and SCOPE_WORDS[NS.Lower(word)]
		local kind, key = FindSubject(self, who or "")
		if kind ~= "player" then Say("rel_missing", arg); return end
		if not what then Say("rel_scope_usage"); return end
		local ok, replaced = self:SetScope(key, what)
		if ok then
			Say(what == "shared" and "rel_scope_shared" or "rel_scope_character", key)
			if replaced == true then Say("rel_scope_replaced") end
		elseif replaced == "not_sharing" then Say("rel_share_needs_on")
		else Say("rel_missing", arg) end
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
	self.session = { seen = {}, offered = {}, recognized = {}, prior = {}, proximity = { n = 0, secret = 0 } }
	self.candidates, self.dismissed, self.pendingShare = {}, {}, nil
	self.groupDirty, self.groupKeys, self.fightWith, self.scanPending = true, {}, nil, false
	local dropped = self:Sanitize()
	if dropped > 0 then NS.Diagnostics:Error("relations", ("%d voci malformate scartate"):format(dropped)) end
	if not self.readOnly then self:MaintainAll() end
	self:ApplyProximity()
	Hook("BuyMerchantItem", _G, "BuyMerchantItem", function() R:OnMerchantAction("merchant_buy") end)
	Hook("RepairAllItems", _G, "RepairAllItems", function() R:OnMerchantAction("merchant_repair") end)
	Hook("C_Container.UseContainerItem", _G.C_Container, "UseContainerItem", function() R:OnMerchantAction("merchant_sell") end)
	if NS.LivingMemory then NS.LivingMemory:RegisterKind("relation", 3) end
end
