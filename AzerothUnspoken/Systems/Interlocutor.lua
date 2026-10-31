-- Azeroth Unspoken: l'interlocutore (S6c, GDD §5.2, §5.3, §5.4, §7.1, §10; ADR 0019).
-- ctx.other descrive chi incontriamo: il bersaglio, l'NPC con cui si parla, un compagno di gruppo, chi ci ha appena
-- rivolto un'emote o sfidato a duello. Contiene i dati di gioco (tipo, razza, classe, fazione, sesso, livello,
-- classificazione, tipo e famiglia di creatura, reazione), il ruolo, la personalità (temperamento, morale, obiettivi,
-- modo di parlare: lo stesso modello di tratti di S5, Engine/Traits.lua), le azioni recenti e la relazione di S6b.
--
-- Fonti della personalità e del ruolo, in ordine di priorità (per ogni tratto vince la prima che lo dice):
--   1. user   i dati dell'utente nella lista delle relazioni (cdb.relationships: `traits`, `role`)
--   2. trp3   il profilo PUBBLICO Total RP 3 di un altro giocatore, con un consenso a parte (Integration/TotalRP3.lua)
--   3. npcs   il registro curato degli NPC per npcID (Data/NPCs.lua, condiviso con S8)
--   4. role   il ruolo ricavato da un'interazione affidabile (gossip non basta: mercante, addestratore, volo, locandiere,
--             quest, banca), mai indovinato
--   5. tendenza di classe, razza e fazione: DEBOLE. Non entra in ctx.other né nelle condizioni (un `req:` non la vede):
--      sposta appena il peso delle frasi (fattore C). Nessuna decisione morale da razza, fazione o classe (GDD §5.4).
--   6. neutro: un tratto assente è "non so".
-- Le azioni vengono solo da eventi affidabili del client (dialoghi, quest, mercante, scambio, gruppo, duello, invito,
-- emote standard rivolte a noi, bersaglio), mai dal log di combattimento, e restano solo in memoria nella sessione.
-- Con l'identità segreta (C_Secrets.ShouldUnitIdentityBeSecret) il profilo resta vuoto: ctx.other = { secret = true }.
local ADDON, NS = ...
local Engine, Traits, Compat = NS.Engine, NS.Traits, NS.Compat

---@class AUOther ctx.other: chi incontriamo. Campi assenti = non lo so.
---@field kind? "npc"|"player"|"creature"
---@field secret? boolean l'identità è segreta: nessun altro campo
---@field name? string
---@field key? string "npc:<npcID>" | "player:<Nome-Reame>": chiave delle azioni
---@field npcID? integer
---@field race? string token di gioco (Orc, Dwarf...)
---@field raceLocal? string nome mostrato (lingua dell'utente, o razza personalizzata di Total RP 3)
---@field class? string token di gioco (WARRIOR...)
---@field classLocal? string
---@field faction? string Alliance | Horde
---@field sex? string male | female
---@field level? integer
---@field classification? string normal | elite | rare | rareelite | worldboss | trivial | minus
---@field ctype? string tipo di creatura in forma neutra (undead, beast...)
---@field family? string famiglia della creatura (nome del client)
---@field reaction? string hostile | unfriendly | neutral | friendly | honored
---@field hostile? boolean si può attaccare
---@field role? string innkeeper | merchant | guard | questgiver | trainer | flightmaster | banker | leader | civilian
---@field temperament? string
---@field morality? string
---@field goals? string
---@field speech? string
---@field actions table<string, number> azione -> momento (GetTime) in cui è stata osservata
---@field relation? string etichetta di S6b, se la persona è nella lista
---@field inGroup? boolean
---@field sources table<string, string> tratto -> fonte (user | trp3 | npcs | role)
---@field tendency? table<string, string> tendenza debole (solo peso, mai condizioni)

---@class AUInterlocutor
local I = NS:RegisterModule("interlocutor")
NS.Interlocutor = I

I.ACTION_WINDOW = 120       -- secondi: `other = { actions = "duel" }` senza `within`
I.ACTION_KEEP = 900         -- dopo quanto un'azione si dimentica
I.MAX_SUBJECTS = 60         -- persone di cui si ricordano le azioni (solo nella sessione)
I.EMOTE_SECONDS = 30        -- per quanto chi ci ha rivolto un'emote resta l'interlocutore, senza un bersaglio
I.INTERACTION_SECONDS = 300 -- quanto resta aperto un dialogo senza un evento di chiusura
I.TENDENCY_MATCH = 1.15     -- peso di una frase che combacia con una tendenza debole (mai sotto 1)

I.ROLES = { "innkeeper", "merchant", "guard", "questgiver", "trainer", "flightmaster", "banker", "leader", "civilian" }
I.ACTIONS = { "quest_offer", "quest_given", "quest_done", "merchant", "trainer", "flight", "innkeeper", "banker",
	"gossip", "trade", "group", "duel", "invite", "emote", "attacks", "ally" }
-- interazione affidabile -> ruolo (il gossip da solo non dice il ruolo)
I.ROLE_OF = { merchant = "merchant", trainer = "trainer", taxi = "flightmaster", binder = "innkeeper",
	quest_detail = "questgiver", quest_turnin = "questgiver", banker = "banker" }
-- interazione -> azione
local ACTION_OF = { merchant = "merchant", trainer = "trainer", taxi = "flight", binder = "innkeeper", banker = "banker",
	gossip = "gossip", quest_detail = "quest_offer", quest_turnin = "quest_offer" }
local REACTION = { "hostile", "hostile", "unfriendly", "neutral", "friendly", "friendly", "honored", "honored" }

I.actions = {}              -- [chiave] = { [azione] = t }, solo sessione
I.npcs = {}                 -- [npcID] = voce di Data/NPCs.lua
I.tendencies = { class = {}, race = {}, faction = {} }
I.roles = {}                -- [npcID] = ruolo ricavato in questa sessione
I.interaction = nil         -- { npcID, name, kind, t }
I.lastEmote = nil           -- { key, name, t }
I.groupKeys = {}            -- [chiave] = true: compagni di gruppo visti all'ultima lettura

local EMPTY = {}

---------------------------------------------------------------------------
-- Tratti (stesso modello di S5): temperamento e morale sono quelli del Character Soul; obiettivi, modo di parlare e
-- ruolo valgono solo per l'interlocutore (ambito `other`). Tag delle frasi: other.temperament:gruff,
-- other.role:innkeeper, other.speech:jovial, other.goals:profit, other.req:role:guard, other.not:temperament:fierce
---------------------------------------------------------------------------
Traits.RegisterScope("other")
Traits.Define({ id = "goals", kind = "choice", scope = "other",
	values = { "profit", "duty", "knowledge", "faith", "glory", "survival", "family", "power", "peace", "freedom" } })
Traits.Define({ id = "speech", kind = "choice", scope = "other",
	values = { "plain", "formal", "gruff", "warm", "terse", "florid", "cryptic", "jovial" } })
Traits.Define({ id = "role", kind = "choice", scope = "other", values = I.ROLES })
-- i tratti del profilo dell'interlocutore, in ordine
I.TRAITS = { "temperament", "morality", "goals", "speech", "role" }

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

local function Str(v)
	if type(v) ~= "string" or Compat.IsSecret(v) or v == "" then return nil end
	return v
end

---Ripulisce un profilo dell'interlocutore: solo i tratti di I.TRAITS con valori validi.
---@param traits any
---@return AUTraits
function I.Clean(traits)
	local out = {}
	if type(traits) ~= "table" then return out end
	for _, id in ipairs(I.TRAITS) do
		local def, v = Traits.defs[id], traits[id]
		if def and type(v) == "string" and def.valid[v] then out[id] = v end
	end
	return out
end

---------------------------------------------------------------------------
-- Dati: registro degli NPC e tendenze (Data/NPCs.lua)
---------------------------------------------------------------------------
---Registra NPC per npcID: { [npcID] = { name, role, temperament, morality, goals, speech, race } }. Le chiavi di testo
---`pack` e `override` della tabella dicono chi registra e se sostituisce un NPC di un altro pacchetto (#69, anche
---`override = true` sulla singola voce); senza, un npcID già registrato da un altro pacchetto si rifiuta.
---@param map table
function NS:RegisterNPCs(map)
	local ids = {}
	for id, e in pairs(type(map) == "table" and map or EMPTY) do
		if IsNumber(id) and id > 0 and type(e) == "table" then table.insert(ids, id) end
	end
	table.sort(ids)
	for _, id in ipairs(ids) do
		local e = map[id]
		if NS.Packs:Claim("npc", math.floor(id), map.pack, map.override == true or e.override == true) then
			local clean = I.Clean(e)
			clean.name = type(e.name) == "string" and e.name or nil
			clean.race = type(e.race) == "string" and e.race or nil
			I.npcs[math.floor(id)] = clean
		end
	end
end

---Tendenze deboli: { class = { PRIEST = { goals = "faith" } }, race = {...}, faction = {...} }. Solo temperamento,
---obiettivi e modo di parlare: la morale non dipende mai da razza, fazione o classe (GDD §5.4).
---@param def table
function NS:RegisterTendencies(def)
	for _, group in ipairs({ "class", "race", "faction" }) do
		for token, t in pairs(type(def) == "table" and def[group] or EMPTY) do
			if type(token) == "string" and type(t) == "table" then
				local clean = I.Clean(t)
				clean.morality, clean.role = nil, nil
				I.tendencies[group][token] = clean
			end
		end
	end
end

---------------------------------------------------------------------------
-- Azioni recenti (solo sessione, solo eventi affidabili)
---------------------------------------------------------------------------
---@param kind "npc"|"player"
---@param id integer|string npcID o "Nome-Reame"
---@return string?
function I.Key(kind, id)
	if kind == "npc" and IsNumber(id) then return "npc:" .. math.floor(id) end
	if kind == "player" and type(id) == "string" and id ~= "" and not Compat.IsSecret(id) then return "player:" .. id end
	return nil
end

local function Prune(self, now)
	local list = {}
	for key, acts in pairs(self.actions) do
		local newest = 0
		for a, t in pairs(acts) do
			if now - t > self.ACTION_KEEP then acts[a] = nil elseif t > newest then newest = t end
		end
		if newest == 0 then self.actions[key] = nil else table.insert(list, { key = key, t = newest }) end
	end
	if #list > self.MAX_SUBJECTS then
		table.sort(list, function(a, b) return a.t > b.t end)
		for i = self.MAX_SUBJECTS + 1, #list do self.actions[list[i].key] = nil end
	end
end

---Registra un'azione osservata di una persona (chiave di I.Key).
---@param key? string
---@param action string
---@param t? number GetTime()
function I:Note(key, action, t)
	if not key or type(action) ~= "string" then return end
	t = t or GetTime()
	self.actions[key] = self.actions[key] or {}
	self.actions[key][action] = t
	Prune(self, t)
end

---Le azioni recenti di una persona: copia { [azione] = t }.
---@param key? string
---@return table<string, number>
function I:Actions(key)
	local out = {}
	local now = GetTime()
	for a, t in pairs(key and self.actions[key] or EMPTY) do
		if now - t <= self.ACTION_KEEP then out[a] = t end
	end
	return out
end

---L'interlocutore ha compiuto una di queste azioni entro `within` secondi? (condizione other.actions)
---@param other table ctx.other
---@param spec string|table un'azione, un elenco, oppure { "duel", "emote", within = 30 }
---@return boolean
function I.HasAction(other, spec)
	local acts = type(other) == "table" and other.actions
	if type(acts) ~= "table" then return false end
	local within = type(spec) == "table" and IsNumber(spec.within) and spec.within or I.ACTION_WINDOW
	local list = type(spec) == "table" and spec or { spec }
	local now = GetTime()
	for _, a in ipairs(list) do
		local t = acts[a]
		if t and now - t <= within then return true end
	end
	return false
end

---------------------------------------------------------------------------
-- Chi è l'interlocutore
---------------------------------------------------------------------------
local function NpcIDOf(unit)
	return NS.Relationships and NS.Relationships.NpcID(Compat.SafeCall("UnitGUID", unit)) or nil
end

local function PlayerKeyOf(unit)
	if not (NS.Relationships and NS.Relationships.PlayerKey) then return nil end
	local name, realm = Compat.SafeCall("UnitFullName", unit)
	return NS.Relationships.PlayerKey(name, realm)
end

local function InteractionFresh(self)
	local i = self.interaction
	if i and GetTime() - i.t <= self.INTERACTION_SECONDS then return i end
	self.interaction = nil
	return nil
end

-- creatura in forma neutra, come ctx.ctype del bersaglio (ContextResolver)
local CREATURE = { { "undead" }, { "demon" }, { "dragonkin", "dragon" }, { "elemental" }, { "beast" }, { "giant" },
	{ "mechanical" }, { "critter" }, { "aberration" }, { "humanoid" } }
local CREATURE_KEY = { "undead", "demon", "dragon", "elemental", "beast", "giant", "mechanical", "critter", "aberration", "humanoid" }
local function CreatureKey(localized)
	if not localized then return nil end
	localized = NS.Lower(localized)
	for i, words in ipairs(CREATURE) do
		for _, w in ipairs(words) do
			if localized:find(w, 1, true) then return CREATURE_KEY[i] end
		end
	end
	return "other"
end

local function LocalName(group, token, sex, fallback)
	local lang = NS.languages[NS:Lang()]
	local t = lang and lang.ui[group]
	local v = t and token and t[token]
	if type(v) == "table" then v = (sex == "female") and v[2] or v[1] end
	return v or fallback
end

---I dati di gioco di un'unità (non segreta). Ogni valore passa da Compat: illeggibile = nil.
---@param unit string
---@return table
function I:ReadUnit(unit)
	local o = {}
	o.name = Str(Compat.SafeCall("UnitName", unit))
	local isPlayer = Compat.SafeCall("UnitIsPlayer", unit) == true
	local classLoc, class = Compat.SafeCall("UnitClass", unit)
	local raceLoc, race = Compat.SafeCall("UnitRace", unit)
	local sex = Compat.SafeCall("UnitSex", unit)
	o.sex = sex == 3 and "female" or (sex == 2 and "male" or nil)
	local level = Compat.SafeCall("UnitLevel", unit)
	o.level = IsNumber(level) and level or nil
	if isPlayer then
		o.class, o.race = Str(class), Str(race)
		o.classLocal = LocalName("classNames", o.class, o.sex, Str(classLoc))
		o.raceLocal = LocalName("raceNames", o.race, o.sex, Str(raceLoc))
		o.faction = Str(Compat.SafeCall("UnitFactionGroup", unit))
	else
		o.npcID = NpcIDOf(unit)
		o.classification = Str(Compat.SafeCall("UnitClassification", unit))
		local ctype = Str(Compat.SafeCall("UnitCreatureType", unit))
		o.ctype = CreatureKey(ctype)
		o.family = Str(Compat.SafeCall("UnitCreatureFamily", unit))
		-- la razza di un NPC si conosce di rado; se il client la dà, vale
		if Str(race) then o.race, o.raceLocal = race, LocalName("raceNames", race, o.sex, Str(raceLoc)) end
	end
	local reaction = Compat.SafeCall("UnitReaction", unit, "player")
	if IsNumber(reaction) then o.reaction = REACTION[reaction] end
	o.hostile = Compat.SafeCall("UnitCanAttack", "player", unit) == true
	if isPlayer then
		o.kind = "player"
		o.key = I.Key("player", PlayerKeyOf(unit))
	else
		o.key = I.Key("npc", o.npcID)
		local beastly = o.ctype ~= nil and o.ctype ~= "humanoid" and o.ctype ~= "other"
		o.kind = ((o.hostile and (o.reaction == "hostile" or o.reaction == "unfriendly")) or (beastly and o.reaction ~= "friendly"))
			and "creature" or "npc"
	end
	return o
end

---Il soggetto dell'interlocutore: un'unità da leggere, oppure una persona nota solo per chiave e nome.
---Ordine: extra.otherSubject, NPC con cui si parla, bersaglio, autore recente di un'emote rivolta a noi.
---@param ctx table
---@param extra? table
---@return { unit?: string, kind?: string, key?: string, name?: string, npcID?: integer }?
function I:Subject(ctx, extra)
	local given = extra and extra.otherSubject
	if type(given) == "table" then return given end
	local i = InteractionFresh(self)
	if i and Compat.SafeCall("UnitExists", "npc") == true then return { unit = "npc", interaction = i } end
	if Compat.SafeCall("UnitExists", "target") == true then return { unit = "target" } end
	local e = self.lastEmote
	if e and GetTime() - e.t <= self.EMOTE_SECONDS then return { kind = "player", key = e.key, name = e.name } end
	return nil
end

---------------------------------------------------------------------------
-- Profilo
---------------------------------------------------------------------------
local function RelationRecord(kind, id)
	local R = NS.Relationships
	if not (R and R.Enabled and R:Enabled()) or id == nil then return nil end
	return R:Get(kind, id)
end

---Costruisce il profilo dell'interlocutore (ctx.other) e il profilo dei tratti per i tag (ctx.otherTraits).
---@param ctx table
---@param extra? table
---@return AUOther?
function I:Build(ctx, extra)
	local s = self:Subject(ctx, extra)
	if not s then return nil end
	if s.unit and Compat:IsUnitIdentitySecret(s.unit) then return { secret = true, actions = {}, sources = {} } end
	local o
	if s.unit then
		o = self:ReadUnit(s.unit)
	else
		o = { kind = s.kind, key = s.key, name = s.name, npcID = s.npcID, sex = s.sex }
		if not o.key and s.kind and (s.npcID or s.id) then o.key = I.Key(s.kind, s.npcID or s.id) end
	end
	o.sources = {}
	local npcID = o.npcID
	local playerName = o.key and o.key:match("^player:(.+)$")
	local layers = {}

	-- 1. dati dell'utente (lista delle relazioni di S6b)
	local rec = o.kind == "player" and RelationRecord("player", playerName) or (npcID and RelationRecord("npc", npcID))
	if rec then
		local user = NS.Relationships.UserOf(rec)   -- the user's choices: rec.user for a player, the record for an NPC
		local t = I.Clean(user.traits)
		if user.role and Traits.defs.role.valid[user.role] and user.roleSource == "user" then t.role = t.role or user.role end
		table.insert(layers, { name = "user", traits = t })
		local info = NS.Relationships:Resolve(o.kind == "player" and "player" or "npc", rec, o.sex)
		o.relation, o.relationLabel, o.relationCustom = info.label, info.text, info.custom ~= nil
	end
	-- 2. profilo pubblico Total RP 3 (solo giocatori, con il consenso apposito)
	if o.kind == "player" and s.unit and NS.TotalRP3 and NS.TotalRP3.GetOtherProfile then
		local trp = NS.TotalRP3:GetOtherProfile(s.unit)
		if trp then
			table.insert(layers, { name = "trp3", traits = I.Clean(trp.traits) })
			if trp.race then o.raceLocal, o.sources.race = trp.race, "trp3" end
			if trp.class then o.classLocal, o.sources.class = trp.class, "trp3" end
		end
	end
	-- 3. registro curato degli NPC
	local entry = npcID and self.npcs[npcID]
	if entry then
		table.insert(layers, { name = "npcs", traits = entry })
		if not o.race and entry.race then o.race = entry.race; o.raceLocal = LocalName("raceNames", entry.race, o.sex, entry.race) end
	end
	-- 4. ruolo da un'interazione affidabile (in questa sessione, o salvato con la relazione dell'NPC)
	local role = npcID and (self.roles[npcID] or (rec and rec.role))
	if s.interaction and self.ROLE_OF[s.interaction.kind] then role = self.ROLE_OF[s.interaction.kind] end
	if role and Traits.defs.role.valid[role] then table.insert(layers, { name = "role", traits = { role = role } }) end

	-- una persona nota solo per chiave (azione arrivata da un evento): il nome dalla relazione o dal registro
	o.name = o.name or (rec and rec.name) or (entry and entry.name) or nil

	local traits, sources = Traits.Merge(layers)
	traits = I.Clean(traits)
	for _, id in ipairs(I.TRAITS) do
		if traits[id] then o[id], o.sources[id] = traits[id], sources[id] end
	end
	-- 5. tendenza debole: solo per il peso, e solo per i tratti che nessuna fonte ha detto
	local tendency
	for _, pair in ipairs({ { "class", o.class }, { "race", o.race }, { "faction", o.faction } }) do
		local t = pair[2] and self.tendencies[pair[1]][pair[2]]
		for id, v in pairs(t or EMPTY) do
			if traits[id] == nil then
				tendency = tendency or {}
				tendency[id] = tendency[id] or v
			end
		end
	end
	o.tendency = tendency

	o.actions = self:Actions(o.key)
	if o.key and self.groupKeys[o.key] then
		o.inGroup = true
		o.actions.group = o.actions.group or GetTime()
	end
	-- azioni lette adesso dal bersaglio, mai dal log di combattimento: ci attacca (ci ha come bersaglio ed è ostile),
	-- combatte al nostro fianco (amichevole e in combattimento mentre combattiamo anche noi)
	if s.unit == "target" then
		local now = GetTime()
		if o.hostile and Compat.SafeCall("UnitIsUnit", "targettarget", "player") == true then
			o.actions.attacks = now
			self:Note(o.key, "attacks", now)
		elseif not o.hostile and ctx.combat and Compat.SafeCall("UnitAffectingCombat", "target") == true then
			o.actions.ally = now
			self:Note(o.key, "ally", now)
		end
	end
	return o, traits
end

---Aggiunge ctx.other e ctx.otherTraits (vuoto senza interlocutore).
---@param ctx table
---@param extra? table
function I:Context(ctx, extra)
	local o, traits = self:Build(ctx, extra)
	ctx.other = o
	ctx.otherTraits = traits or EMPTY
	-- il nome del rapporto con il genere della persona (#41): Relationships:Context lo ha scritto al maschile
	if type(o) == "table" and not o.secret and o.relation and o.relationLabel and ctx.relation == o.relation then
		ctx.relationLabel = o.relationLabel
		ctx.relationCustom = o.relationCustom
	end
end

---Campi piatti per i segnaposto: {other}, {otherrole}, {otherrace}, {otherclass}.
---@param ctx table
function I.Flatten(ctx)
	local o = ctx.other
	if type(o) ~= "table" or o.secret then return end
	ctx.otherName = ctx.otherName or o.name
	ctx.otherSex = ctx.otherSex or o.sex     -- {og:m|f} (#41)
	ctx.otherRaceLocal = ctx.otherRaceLocal or o.raceLocal
	ctx.otherClassLocal = ctx.otherClassLocal or o.classLocal
	if o.role and not ctx.otherRoleLocal then
		local name = NS:L("role_" .. o.role)
		if name ~= "role_" .. o.role then ctx.otherRoleLocal = name end
	end
end

---------------------------------------------------------------------------
-- Narratore: fattore C e registro
---------------------------------------------------------------------------
---Fattore C dell'interlocutore: tag `other.` delle frasi (morbidi, req:, not:) e la tendenza debole.
---@param entry AUPhrase
---@param ctx table
---@return number
function I.Factor(entry, ctx)
	local o = ctx.other
	local traits = ctx.otherTraits or EMPTY
	local f = Traits.Evaluate(entry.tags, traits, "other")
	if f == 0 or type(o) ~= "table" or not o.tendency or type(entry.tags) ~= "table" then return f end
	for tag in pairs(entry.tags) do
		local t = Traits.ParseTag(tag)
		local def = t and t.scope == "other" and t.mode == "affinity" and Traits.tagIndex[t.name]
		if def and traits[def.id] == nil and o.tendency[def.id] == t.value then
			f = f * I.TENDENCY_MATCH
		end
	end
	return f
end
Engine:SetWeightHook("C", "other", I.Factor, true)   -- pure: only the tags of the line (#157)

-- Il registro segue il modo di parlare e il ruolo di chi abbiamo davanti: un venditore non declama come un antico
-- re (GDD §5.3).
I.SPEECH_STYLES = { formal = { "ceremonial" }, florid = { "ancient" }, cryptic = { "ancient" }, warm = { "intimate", "everyday" },
	jovial = { "everyday", "ironic" }, gruff = { "everyday" }, terse = { "everyday" }, plain = { "everyday" } }
I.ROLE_STYLES = { innkeeper = { "everyday" }, merchant = { "everyday" }, banker = { "everyday" }, leader = { "ceremonial" },
	guard = { "everyday" } }
NS.StyleResolver:SetModifier("other", function(profile, ctx)
	local o = ctx and ctx.other
	if type(o) ~= "table" or o.secret then return end
	for _, s in ipairs(o.speech and I.SPEECH_STYLES[o.speech] or EMPTY) do NS.StyleResolver.Prefer(profile, s) end
	for _, s in ipairs(o.role and I.ROLE_STYLES[o.role] or EMPTY) do NS.StyleResolver.Prefer(profile, s) end
end)

---------------------------------------------------------------------------
-- Eventi: le azioni e i ruoli si ricavano solo da qui (dump di Forever, check_api.py)
---------------------------------------------------------------------------
local EventBus = NS.EventBus
EventBus.dedupWindow.OTHER_DUEL = 2
EventBus.dedupWindow.OTHER_INVITE = 2
EventBus.dedupWindow.OTHER_EMOTE = 1

-- La banca: un'interazione affidabile come il mercante (stessa forma degli eventi di Relationships)
EventBus:AddSource("BANKFRAME_OPENED", { normalize = function()
	if Compat:IsUnitIdentitySecret("npc") then return "NPC_INTERACT", { kind = "banker" }, { key = "banker" } end
	local id = NpcIDOf("npc")
	return "NPC_INTERACT", { kind = "banker", npcID = id, npcName = Str(Compat.SafeCall("UnitName", "npc")) },
		{ key = "banker:" .. tostring(id), expect = { "npcID" } }
end })
EventBus:AddSource("DUEL_REQUESTED", { normalize = function(playerName)
	return "OTHER_DUEL", { name = NS.Relationships and NS.Relationships.PlayerKey(playerName) }, { key = "duel" }
end })
EventBus:AddSource("PARTY_INVITE_REQUEST", { normalize = function(name)
	return "OTHER_INVITE", { name = NS.Relationships and NS.Relationships.PlayerKey(name) }, { key = "invite" }
end })
-- Le emote standard (/wave, /bow...) sono frasi del client, non testo scritto da un giocatore: si guarda solo se
-- sono rivolte a noi e il testo si scarta subito, senza salvarlo né pubblicarlo (issue #38).
-- Due segnali, il primo indipendente dalla lingua:
--   1. il destinatario che il client indica nel payload (`playerName2`) è il nostro personaggio;
--   2. il testo contiene il "te" della lingua del client (tabella I.YOU_WORDS, per lingua).
-- Entrambi sono segnali positivi: un destinatario diverso o assente non esclude l'emote (il campo non è provato nel
-- client vero, G1), e una lingua senza tabella non riconosce nulla (nessun danno, solo meno frasi).
-- Le emote personalizzate (CHAT_MSG_EMOTE) non si leggono.
---@class AUYouWords
---@field words? string[] parole intere in minuscolo (lingue con gli spazi)
---@field substrings? string[] frammenti (lingue senza spazi tra le parole)

---Come il client dice "te" nelle emote rivolte al giocatore, per lingua (le due lettere del GetLocale). Le voci sono
---scritte a mano, non provate nei client veri: si correggono qui o con `NS.Interlocutor.YOU_WORDS.<lingua> = {...}`.
---@type table<string, AUYouWords>
I.YOU_WORDS = {
	en = { words = { "you" } },
	de = { words = { "dich", "dir", "euch" } },
	fr = { words = { "vous", "te", "toi" } },
	es = { words = { "te", "ti" } },
	it = { words = { "ti", "te" } },
	pt = { words = { "você", "voce", "te", "ti" } },
	ru = { words = { "вас", "вам", "вами", "тебя", "тебе", "тобой" } },
	ko = { substrings = { "당신" } },
	zh = { substrings = { "你", "您" } },
}

-- spazi, segni e punteggiatura ASCII: i byte da 128 in su (lettere UTF-8) restano intatti, a differenza di %s e %p
local SEPARATORS = "[\1-\47\58-\64\91-\96\123-\126]"

---Il testo di un'emote del client contiene il "te" della lingua indicata (di default quella del client)?
---@param text string
---@param locale? string codice del client ("itIT") o a due lettere; di default GetLocale()
---@return boolean
function I.TextAddressesYou(text, locale)
	if type(text) ~= "string" then return false end
	locale = locale or (GetLocale and GetLocale()) or "enUS"
	local set = I.YOU_WORDS[NS.Lower(tostring(locale)):sub(1, 2)]
	if not set then return false end
	local lower = NS.Lower(text)
	if set.words then
		local padded = " " .. lower:gsub(SEPARATORS, " ") .. " "
		for _, w in ipairs(set.words) do
			if padded:find(" " .. w .. " ", 1, true) then return true end
		end
	end
	for _, piece in ipairs(set.substrings or EMPTY) do
		if lower:find(piece, 1, true) then return true end
	end
	return false
end

---L'emote è rivolta al nostro personaggio? `target` è il destinatario indicato dal client (può mancare).
---@param text string
---@param target? string
---@return boolean
function I.EmoteIsForMe(text, target)
	if type(target) == "string" and target ~= "" and not Compat.IsSecret(target) then
		local me = Str(Compat.SafeCall("UnitName", "player"))
		if me and NS.Lower(target:match("^[^-]+") or target) == NS.Lower(me) then return true end
	end
	return I.TextAddressesYou(text)
end

EventBus:AddSource("CHAT_MSG_TEXT_EMOTE", { normalize = function(text, playerName, _, _, target)
	if type(text) ~= "string" or Compat.IsSecret(text) then return nil end
	if not I.EmoteIsForMe(text, target) then return nil end
	local key = NS.Relationships and NS.Relationships.PlayerKey(playerName)
	local own = NS.Relationships and NS.Relationships.PlayerKey(Compat.SafeCall("UnitName", "player"))
	if not key or key == own then return nil end
	return "OTHER_EMOTE", { name = key }, { key = key }
end })

local handlers = {}

function handlers.NPC_INTERACT(env)
	local c = env.context
	if type(c.npcID) ~= "number" then
		I.interaction = nil
		return
	end
	local now = GetTime()
	I.interaction = { npcID = c.npcID, name = c.npcName, kind = c.kind, t = now }
	local key = I.Key("npc", c.npcID)
	if ACTION_OF[c.kind] then I:Note(key, ACTION_OF[c.kind], now) end
	local role = I.ROLE_OF[c.kind]
	if role then
		I.roles[c.npcID] = role
		-- il ruolo ricavato si conserva con la relazione dell'NPC (se esiste), mai sopra una scelta dell'utente
		local rec = RelationRecord("npc", c.npcID)
		if rec and rec.roleSource ~= "user" and NS.Relationships:Writable() then rec.role, rec.roleSource = role, "auto" end
	end
	if c.kind == "quest_detail" then I.questGiver = { npcID = c.npcID, t = now } end
	if c.kind == "quest_turnin" then I.questTaker = { npcID = c.npcID, t = now } end
	if role and NS.Director then NS.Director:Offer("npc_meet") end
end

function handlers.NPC_INTERACT_END()
	I.interaction = nil
end

function handlers.QUEST_STATE(env)
	local now = GetTime()
	local quest = NS.Relationships and NS.Relationships.QUEST_SECONDS or 900
	if env.context.state == "accepted" and I.questGiver and now - I.questGiver.t <= quest then
		local key = I.Key("npc", I.questGiver.npcID)
		I:Note(key, "quest_given", now)
		I.questGiver = nil
		I:Offer(key, "npc")
	elseif env.context.state == "turned_in" and I.questTaker and now - I.questTaker.t <= quest then
		I:Note(I.Key("npc", I.questTaker.npcID), "quest_done", now)
		I.questTaker = nil
	end
end

function handlers.TRADE_OPENED(env)
	local key = I.Key("player", env.context.name)
	if key then I:Note(key, "trade"); I:Offer(key, "player") end
end

function handlers.OTHER_DUEL(env)
	local key = I.Key("player", env.context.name)
	if key then I:Note(key, "duel"); I:Offer(key, "player") end
end

function handlers.OTHER_INVITE(env)
	local key = I.Key("player", env.context.name)
	if key then I:Note(key, "invite"); I:Offer(key, "player") end
end

function handlers.OTHER_EMOTE(env)
	local key = I.Key("player", env.context.name)
	if not key then return end
	I:Note(key, "emote")
	I.lastEmote = { key = key, name = (env.context.name or ""):match("^([^-]+)"), t = GetTime() }
	I:Offer(key, "player")
end

function handlers.GROUP_CHANGED()
	I.groupDirty = true
end

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "interlocutor", fn)
end

-- Gli eventi dell'interlocutore parlano solo se c'è davvero qualcuno: un NPC dal ruolo riconosciuto (npc_meet) o una
-- persona con un'azione recente (other_action). Vale anche per un comando manuale (guardie del motore, come S6).
NS.NarrativeDirector.EVENT_MODULE.npc_meet = "npc"
Engine:SetEventGuard("npc_meet", "interlocutor", function(ctx)
	local o = ctx.other
	return type(o) == "table" and not o.secret and o.kind == "npc" and o.role ~= nil
end)
Engine:SetEventGuard("other_action", "interlocutor", function(ctx)
	local o = ctx.other
	return type(o) == "table" and not o.secret and next(o.actions or EMPTY) ~= nil
end)

---Un'azione di qualcuno verso di noi: un candidato per il Narrative Director (evento other_action), con quella
---persona come interlocutore.
---@param key string
---@param kind "npc"|"player"
function I:Offer(key, kind)
	if not NS.Director or not key then return end
	local name = key:match("^player:([^-]+)")
	local npcID = tonumber(key:match("^npc:(%d+)$") or "")
	local subject = { kind = kind, key = key, name = name, npcID = npcID }
	-- se la persona è il bersaglio, si legge dall'unità (razza, classe, profilo)
	if kind == "player" and Compat.SafeCall("UnitExists", "target") == true and not Compat:IsUnitIdentitySecret("target")
		and I.Key("player", PlayerKeyOf("target")) == key then
		subject = { unit = "target" }
	end
	NS.Director:Offer("other_action", { otherSubject = subject })
end

---Rilegge i compagni di gruppo (chiavi "player:Nome-Reame"): servono a `inGroup` e all'azione `group`.
function I:ScanGroup()
	self.groupDirty = false
	local keys, now = {}, GetTime()
	local units = {}
	if Compat.SafeCall("IsInRaid") == true then
		for n = 1, 40 do table.insert(units, "raid" .. n) end
	elseif Compat.SafeCall("IsInGroup") == true then
		for n = 1, 4 do table.insert(units, "party" .. n) end
	end
	for _, unit in ipairs(units) do
		if Compat.SafeCall("UnitExists", unit) == true and not Compat:IsUnitIdentitySecret(unit) then
			local key = I.Key("player", PlayerKeyOf(unit))
			if key then
				keys[key] = true
				if not self.groupKeys[key] then self:Note(key, "group", now) end
			end
		end
	end
	self.groupKeys = keys
end

---------------------------------------------------------------------------
-- Dati dell'utente: tratti e ruolo di una persona della lista (fonte 1)
---------------------------------------------------------------------------
---Imposta (o toglie, value = nil) un tratto dell'interlocutore per una persona della lista delle relazioni.
---@param kind "npc"|"player"
---@param id integer|string
---@param trait string temperament | morality | goals | speech | role
---@param value? string
---@return boolean ok
function I:SetTrait(kind, id, trait, value)
	local R = NS.Relationships
	if R and kind == "player" then R:Adopt(id) end   -- with the shared list on, the choice goes where the person's choices live
	local rec = R and R:Get(kind, id)
	if not rec or not R:Writable() then return false end
	local def = Traits.defs[trait]
	local known = false
	for _, t in ipairs(self.TRAITS) do if t == trait then known = true end end
	if not known or not def or (value ~= nil and not def.valid[value]) then return false end
	-- a user action (the detail window, /au who trait): the only place outside Relationships.lua that writes the user block
	local user = R.UserOf(rec)
	if trait == "role" then
		user.role, user.roleSource = value, value and "user" or nil
	else
		user.traits = user.traits or {}
		user.traits[trait] = value
		if not next(user.traits) then user.traits = nil end
	end
	if R.Changed then R:Changed() end
	return true
end

---Il valore di un tratto di una persona della lista (nil = non lo so) e, per il ruolo, se l'ha ricavato l'addon.
---@param kind "npc"|"player"
---@param id integer|string
---@param trait string
---@return string? value
---@return boolean? auto vero se il ruolo è ricavato da un'interazione e non scelto dall'utente
function I:GetUserTrait(kind, id, trait)
	local rec = NS.Relationships and NS.Relationships:Get(kind, id)
	if not rec then return nil end
	local user = NS.Relationships.UserOf(rec)
	if trait == "role" then return user.role, user.roleSource == "auto" or nil end
	return user.traits and user.traits[trait] or nil
end

---Passa al valore successivo di un tratto (non so, poi i valori in ordine, poi di nuovo non so): per i selettori
---della finestra Relazioni. Ritorna il nuovo valore (nil = non lo so), oppure false se non si può scrivere.
---@param kind "npc"|"player"
---@param id integer|string
---@param trait string
---@return string|false|nil value
function I:CycleTrait(kind, id, trait)
	local def = Traits.defs[trait]
	if not def or not def.values then return false end
	local current, nextValue = self:GetUserTrait(kind, id, trait), nil
	if current == nil then
		nextValue = def.values[1]
	else
		for i, v in ipairs(def.values) do
			if v == current then nextValue = def.values[i + 1] end
		end
	end
	if not self:SetTrait(kind, id, trait, nextValue) then return false end
	return nextValue
end

---Consenso a leggere i profili pubblici Total RP 3 degli altri giocatori (spento di base). Vale anche con il
---modulo `totalRP3` acceso: senza il modulo il consenso resta registrato ma non ha effetto.
---@param on boolean
---@return boolean on
function I:SetTRP3Consent(on)
	on = on and true or false
	NS.db.interlocutor.trp3Others = on
	return on
end

---------------------------------------------------------------------------
-- Comando (/au who) e diagnostica
---------------------------------------------------------------------------
local function Say(key, ...) NS:Print(NS:L(key, ...)) end

---@return string
function I:Status()
	local n = 0
	for _ in pairs(self.actions) do n = n + 1 end
	return ("%d people with recent actions, %d NPCs in the registry, TRP3 others %s"):format(n,
		(function() local c = 0; for _ in pairs(self.npcs) do c = c + 1 end; return c end)(),
		NS.TotalRP3 and NS.TotalRP3:HasOtherConsent() and "on" or "off")
end

---Descrive l'interlocutore attuale (righe per la chat locale).
---@return string[]
function I:Describe()
	local ctx = NS:BuildContext()
	local o = ctx.other
	if type(o) ~= "table" then return { NS:L("other_none") } end
	if o.secret then return { NS:L("other_secret") } end
	local traits = {}
	for _, id in ipairs(self.TRAITS) do
		if o[id] then table.insert(traits, Traits.Name(id) .. ": " .. Traits.ValueName(id, o[id]) .. " (" .. (o.sources[id] or "?") .. ")") end
	end
	local acts = {}
	for a in pairs(o.actions or EMPTY) do table.insert(acts, NS:L("other_action_" .. a)) end
	table.sort(acts)
	return {
		NS:L("other_who", o.name or "?", NS:L("other_kind_" .. (o.kind or "npc")), o.raceLocal or "-", o.classLocal or "-",
			tostring(o.level or "-")),
		NS:L("other_traits", #traits > 0 and table.concat(traits, ", ") or NS:L("other_neutral")),
		NS:L("other_actions", #acts > 0 and table.concat(acts, ", ") or "-", o.relationLabel or "-"),
	}
end

---/au who [trp3 on|off | trait <trait> <value>]
---@param rest? string
function I:Command(rest)
	local word, arg = (rest or ""):match("^([^ ]*) *(.*)$")
	word = NS.Lower(word or "")
	if word == "trp3" then
		local s = NS.db.interlocutor
		local on
		on = NS.Keywords.OnOff(arg)
		if on == nil then on = not s.trp3Others end
		on = self:SetTRP3Consent(on)
		Say(on and "other_trp3_on" or "other_trp3_off")
		return
	end
	if word == "trait" then
		-- /au who trait <trait> <value|-> sulla persona che si ha davanti, se è nella lista delle relazioni
		local trait, value = arg:match("^([^ ]+) *([^ ]*)")
		local o = NS:BuildContext().other
		local kind, id
		if type(o) == "table" and not o.secret and o.key then
			kind = o.key:match("^([a-z]+):")
			id = kind == "npc" and o.npcID or o.key:match("^player:(.+)$")
		end
		if not kind or not (NS.Relationships and NS.Relationships:Get(kind, id)) then return Say("other_not_listed") end
		trait = trait and NS.Lower(trait)
		if value == "-" or value == "" then value = nil else value = NS.Lower(value) end
		if trait and self:SetTrait(kind, id, trait, value) then
			Say("other_trait_set", Traits.Name(trait), value and Traits.ValueName(trait, value) or "-")
		else
			Say("other_trait_bad")
		end
		return
	end
	for _, line in ipairs(self:Describe()) do NS:Print(line) end
end

function I:OnInit()
	self.actions, self.roles, self.groupKeys = {}, {}, {}
	self.interaction, self.lastEmote, self.questGiver, self.questTaker = nil, nil, nil, nil
	self.groupDirty = true
end

-- il gruppo si rilegge quando serve, non a ogni evento del roster
local build = I.Build
function I:Build(ctx, extra)
	if self.groupDirty then self:ScanGroup() end
	return build(self, ctx, extra)
end
