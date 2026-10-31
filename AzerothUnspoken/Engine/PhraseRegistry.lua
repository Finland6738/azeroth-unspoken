-- Azeroth Unspoken: registro delle regole, dei testi, delle cornici e del vocabolario (schema v2).
-- Il motore non contiene testi: legge solo ciò che i pacchetti registrano con RegisterPack.
-- Le regole (evento, voce, registro, profondità, peso, condizioni) sono separate dai testi per lingua;
-- ogni id può avere più varianti in ogni lingua. Il formato vecchio (phrases = { { it=, en= } }) si converte qui.
local ADDON, NS = ...
local Engine = {}
NS.Engine = Engine

-- In-memory format (#84, ADR 0024): a variant is a plain string in the common case (valid text, no depth of its own,
-- written by the pack that owns the rule, frame or vocabulary entry). Only the rare variants that need more (an empty
-- or non-string text kept for the validator, a depth of their own, a text added by another pack) are AUVariant tables.
-- Read variants only through Engine.VariantText, VariantOk, VariantDepth and VariantPack.

---@class AUVariant una variante che non si può tenere come semplice stringa
---@field t string testo, con i segnaposto
---@field ok boolean false se vuota o non è una stringa (resta nel registro per il validatore)
---@field depth? table<string, boolean> profondità per cui la variante è scritta; assente = tutte
---@field pack string pacchetto che l'ha registrata
---@field raw? string tipo del valore quando non è una stringa (per il validatore)

---@alias AUVariantValue string|AUVariant

---@class AUPhrase una frase registrata: la regola e i suoi testi
---@field id string
---@field pack string pacchetto proprietario della regola
---@field events string[] eventi in cui può comparire
---@field category string
---@field speaker "narrator"|"inner"|"character"|"npc"
---@field form "say"|"emote" say = parlata, emote = narrativa in terza persona (senza il nome)
---@field styles string[] registri (GDD §5.1); il primo è quello principale
---@field depth? table<string, boolean> profondità per cui la frase è scritta; assente = tutte
---@field depthList? any[] profondità come le ha scritte il pacchetto, solo se l'insieme depth non le dice tutte (validatore)
---@field tags table<string, boolean> tag descrittivi e di affinità ("temperament:stoic", "req:", "not:", "topic:"): vedi Engine/Traits.lua
---@field weight number
---@field cooldown? number secondi prima che la frase possa tornare
---@field when? table condizioni (alias: conditions)
---@field spec integer numero di condizioni: le frasi più specifiche pesano di più
---@field text table<string, AUVariantValue[]> [codice lingua breve] = varianti
---@field legacy? boolean convertita dal formato vecchio
---@field ord integer ordine di registrazione: l'indice di selezione unisce i suoi gruppi in quest'ordine (#83)
---@field tier? integer explicit specificity tier (#89); read the tier with Engine.Tier(p)
---@field theme? string theme of the phrase (#90), from Engine.THEMES
---@field motifs? string[] concrete images of the phrase (#90, at most three), from Engine.MOTIFS
---@field kind? "monologue" a monologue (#99): no texts of its own, it chains the whole phrases in `parts`
---@field parts? string[] ids of the two or three whole phrases of a monologue, in the order they are said
---@field order? "fixed"|"free" free: the parts after the first may come in any order (monologue only)
---@field chainable? true|"only" the phrase may be a part of a monologue; "only" = never said on its own
---@field situational? true the conditions ask a composite situation (#100): a line written for that situation
-- events, styles, tags, motifs e depth sono condivisi tra le frasi con gli stessi valori (#84): sola lettura.

---@class AURegistryEntry la regola di una frase nel formato v2
---@field event string|string[]
---@field category? string se manca si usa quella dell'evento
---@field speaker? string narrator | inner | character | npc
---@field form? string say | emote (predefinito: emote per il narratore, say per le altre voci)
---@field styles? string[]
---@field depth? string|string[] natural | literary | elevated
---@field tags? string[] descrittivi ("wry") o di affinità con i tratti del Character Soul (vedi PACK_FORMAT.md)
---@field weight? number
---@field cooldown? number
---@field conditions? table
---@field tier? integer|string explicit specificity tier (#89); absent = deduced from the conditions
---@field theme? string one theme (#90)
---@field motifs? string[] zero to three motifs (#90)
---@field kind? "monologue" #99: a monologue made of the whole phrases in `parts`
---@field parts? string[] #99: two or three ids of chainable phrases
---@field order? "fixed"|"free" #99: the order of the parts after the first (default fixed)
---@field chainable? boolean|"only" #99: the phrase may be a part of a monologue; "only" = only as a part

Engine.packs = {}       -- [id] = pacchetto
Engine.packOrder = {}
Engine.byEvent = {}     -- [evento] = { frase, ... }, tutte le regole dell'evento in ordine di registrazione
Engine.index = {}       -- [evento][forma][chiave] = { frase, ... }: indice di selezione per luogo (#83, vedi Candidates)
Engine.nextOrd = 0      -- ordine di registrazione dell'ultima frase
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

---D16 (#130, #163): a literary form (a verse, a song, an inscription) carries the tag `lore` or a `genre_*` tag and
---stays in the private narrator. The Chat Gateway and the validator both read this one definition.
---@param tag any
---@return boolean
function Engine.IsLiteraryTag(tag)
	return tag == "lore" or (type(tag) == "string" and tag:sub(1, 6) == "genre_")
end

---Whether a rule marks itself as a literary form: `tags` is a set (a registered rule) or a list (a record).
---@param tags? table
---@return boolean
function Engine.HasLiteraryTag(tags)
	if type(tags) ~= "table" then return false end
	for k, v in pairs(tags) do
		if Engine.IsLiteraryTag(type(k) == "string" and k or v) then return true end
	end
	return false
end

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

-- Themes and motifs (#90, ADR 0029): closed vocabularies, filled by Data/Themes.lua and by the packs that declare
-- `themes = {}` or `motifs = {}`. The validator rejects a rule or a frame that names one not declared.
Engine.THEMES = {}
Engine.MOTIFS = {}
Engine.MAX_MOTIFS = 3

-- Specificity tiers (#89, ADR 0029), from the most generic to the most specific. A rule gets the tier of the most
-- specific condition it asks at the top level (or in `place`), unless it writes `tier` itself. A situation (a class, a
-- target, a memory, a relation) and a region or an atmosphere share tier 1: a line about the death of last visit must
-- not lose to a line about the forest. The condition `landmark` (R3b, #94) gives the landmark tier.
Engine.TIERS = { generic = 0, situation = 1, region = 1, zone = 2, subzone = 3, landmark = 4 }
Engine.TIER_NAMES = { [0] = "generic", "situation", "zone", "subzone", "landmark" }
Engine.MAX_TIER = 4
-- conditions that say where (`top` = top level of the conditions, `place` = inside `place`) and the tier they give
Engine.TIER_CONDITIONS = {
	top = { landmark = 4, subzone = 3, zone = 2, mood = 1, instance = 1, instanceType = 1 },
	place = { subzone = 3, zone = 2, mapID = 2, continent = 1, tags = 1, mood = 1, territory = 1, capital = 1,
		friendlyCapital = 1, hostileCapital = 1, instanceType = 1 },
}
-- conditions that do not make a rule more specific: chance, the user's settings and exclusions; and the character's
-- mood and personality (R4): a line for a worried or a stoic character competes by weight with the others of its place
Engine.TIER_NEUTRAL = { chance = true, depth = true, intensityMin = true, intensityMax = true, ["not"] = true,
	emotion = true, emotionMin = true, emotionMax = true, traitMin = true, traitMax = true }

-- Data of the direction (#91), filled by Data/Themes.lua and by the packs (`quotas = {}`, `hunger = {}`):
-- QUOTAS[category] = { share = 0..1, window = interventions, span = seconds }, HUNGER[category] = { factor, after }
Engine.QUOTAS = {}
Engine.HUNGER = {}

-- Composite situations (#100, ADR 0032), filled by Data/Themes.lua and by the packs (`situations = {}`). When the
-- candidates of a moment, together with the events offered in the last seconds, match a situation, the Director puts
-- its id in ctx.situation and the lines written for it (condition `situation`) are tried first. Each definition:
-- { lead = event that speaks, with = { events all required }, withAny = { events, one required }, within = seconds,
--   when = { conditions on the context of the lead } }. SITUATION_ORDER keeps the declaration ids sorted.
Engine.SITUATIONS = {}
Engine.SITUATION_ORDER = {}
Engine.SITUATION_WITHIN = 30   -- seconds, when a situation does not say

-- Monologues (#99, ADR 0032): two or three whole phrases said as one intervention
Engine.MONOLOGUE_MIN_PARTS = 2
Engine.MONOLOGUE_MAX_PARTS = 3

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
	for k, v in pairs(when) do
		if (k == "other" or k == "place") and type(v) == "table" then
			-- sotto-tabelle dell'interlocutore e del luogo (S6c): conta ogni campo
			for _ in pairs(v) do n = n + 1 end
		elseif k ~= "chance" and not (k == "lastVisitBad" and v == false) then
			-- #98: lastVisitBad = false only keeps a light return line away from a bad visit; it does not make it
			-- more specific (nor heavier) than it was
			n = n + 1
		end
	end
	return n
end

---The specificity tier the conditions give a rule (#89): the most specific place condition at the top level or in
---`place` (subzone 3, zone or map 2), else 1 if a region, an atmosphere or any other condition narrows the moment,
---else 0.
---Conditions under `not` say where a rule does not go, so they never make it more specific.
---@param when? table
---@return integer
function Engine.TierOf(when)
	if type(when) ~= "table" then return 0 end
	local tier = 0
	for k, v in pairs(when) do
		local t = Engine.TIER_CONDITIONS.top[k]
		if t then
			if t > tier then tier = t end
		elseif k == "place" and type(v) == "table" then
			for pk in pairs(v) do
				local pt = Engine.TIER_CONDITIONS.place[pk] or (Engine.TIER_NEUTRAL[pk] and 0 or 1)
				if pt > tier then tier = pt end
			end
		elseif not Engine.TIER_NEUTRAL[k] and tier < 1 then
			tier = 1
		end
	end
	return tier
end

---The main register of a rule (its first one), used by the differentiation of registers. It is not stored: a rule
---table with one field less keeps its size now that rules have a theme and motifs (#90, ADR 0029).
---@param p table rule, frame or vocabulary entry
---@return string?
function Engine.Tone(p)
	local s = p.styles
	return s and s[1]
end

-- deduced tiers, by conditions table (each rule has its own): computed once, freed with the rule
local tierCache = setmetatable({}, { __mode = "k" })

---The specificity tier of a rule (#89): 0 generic, 1 situation or region, 2 zone, 3 subzone, 4 landmark. The
---explicit `tier` of the rule, or the one its conditions give.
---@param p table rule
---@return integer
function Engine.Tier(p)
	if p.tier then return p.tier end
	local when = p.when
	if type(when) ~= "table" then return 0 end
	local t = tierCache[when]
	if not t then
		t = Engine.TierOf(when)
		tierCache[when] = t
	end
	return t
end

-- an explicit tier: a number 0-4 or a name of Engine.TIERS; nil if it is not one
local function ExplicitTier(v)
	if type(v) == "string" then return Engine.TIERS[v] end
	if type(v) == "number" and v == math.floor(v) and v >= 0 and v <= Engine.MAX_TIER then return v end
	return nil
end

local function Blank(s)
	return type(s) ~= "string" or not s:find("[^ \t\r\n]")
end

-- Tabelle condivise (#84): molte regole hanno gli stessi eventi, registri, tag e profondità; se ne tiene una sola copia
-- per valore. Nessuno le modifica dopo la registrazione.
local EMPTY_SET = {}
local sharedLists, sharedSets = {}, {}

local function SharedList(list)
	if list == nil then return nil end
	for _, x in ipairs(list) do
		if type(x) ~= "string" then return list end   -- valori strani (per il validatore): copia propria
	end
	local key = table.concat(list, "\31") .. "\31" .. #list
	local found = sharedLists[key]
	if found then return found end
	sharedLists[key] = list
	return list
end

local function SharedSet(set)
	if set == nil then return nil end
	if next(set) == nil then return EMPTY_SET end
	local key = table.concat(SortedKeys(set), "\31")
	local found = sharedSets[key]
	if found then return found end
	sharedSets[key] = set
	return set
end

-- a short number for each table used in a key (never reused), so a key names the shared lists and sets above by
-- identity without their long addresses
local tableIds, lastTableId = setmetatable({}, { __mode = "k" }), 0

-- A value as a key part: its type and an exact text (numbers with 17 digits, so two different weights never meet;
-- tables by identity, which is enough for the shared lists and sets above)
local function KeyPart(v)
	local t = type(v)
	if t == "number" then
		-- whole numbers (the usual weights, cooldowns and specificity) are exact in the short form
		if v == math.floor(v) and v > -1e14 and v < 1e14 then return "n" .. v end
		return "n" .. ("%.17g"):format(v)
	end
	if t == "string" then return "s" .. v end
	if v == nil then return "-" end
	if t == "table" then
		local id = tableIds[v]
		if not id then
			lastTableId = lastTableId + 1
			id = lastTableId
			tableIds[v] = id
		end
		return "t" .. id
	end
	return t:sub(1, 1) .. tostring(v)
end

-- Interned conditions (#138, ADR 0024): rules with the same conditions share one table (a large archive repeats
-- `{ combat = true }` or `{ zone = "Duskwood" }` thousands of times). Only plain data is interned: a table with a
-- function, or keys that are not strings or numbers, stays the rule's own. Nobody changes conditions after the
-- registration. The tables count their rules, so the conditions of a dropped pack go with it (DropPack): not weak
-- tables, which the collector would walk whole at every cycle while 50,000 rules register.
local sharedWhens, whenRules = {}, {}

-- numbers before strings, each in its natural order
local function KeyOrder(a, b)
	if type(a) ~= type(b) then return type(a) == "number" end
	return a < b
end

local function WhenKey(v, depth)
	local t = type(v)
	if t ~= "table" then
		if t == "string" or t == "number" or t == "boolean" then return KeyPart(v) end
		return nil
	end
	if depth > 8 then return nil end
	-- the common case, one condition with a plain value ({ zone = "Duskwood" }, { combat = true }): no lists to sort
	local k1, v1 = next(v)
	if k1 ~= nil and next(v, k1) == nil and type(v1) ~= "table" then
		local kt, sub = type(k1), WhenKey(v1, depth + 1)
		if (kt == "string" or kt == "number") and sub then return "{" .. KeyPart(k1) .. "=" .. sub .. "}" end
		return nil
	end
	local keys = {}
	for k in pairs(v) do
		local kt = type(k)
		if kt ~= "string" and kt ~= "number" then return nil end
		table.insert(keys, k)
	end
	if #keys > 1 then table.sort(keys, KeyOrder) end
	local parts = {}
	for i, k in ipairs(keys) do
		local sub = WhenKey(v[k], depth + 1)
		if not sub then return nil end
		parts[i] = KeyPart(k) .. "=" .. sub
	end
	return "{" .. table.concat(parts, ",") .. "}"
end

local function SharedWhen(when)
	if type(when) ~= "table" then return when end
	local key = WhenKey(when, 1)
	if not key then return when end
	local found = sharedWhens[key]
	if found then
		whenRules[key] = whenRules[key] + 1
		return found
	end
	sharedWhens[key], whenRules[key] = when, 1
	return when
end

-- a rule leaves its conditions (DropPack)
local function ReleaseWhen(when)
	local key = type(when) == "table" and WhenKey(when, 1)
	if not key or sharedWhens[key] ~= when then return end
	whenRules[key] = whenRules[key] - 1
	if whenRules[key] <= 0 then sharedWhens[key], whenRules[key] = nil, nil end
end

-- Shared rule shapes (#138, ADR 0024): the fields that repeat across rules (pack, events, voice, form, category, depth,
-- weight, cooldown, specificity, tier, the monologue fields) live in one shape per distinct combination, which is the
-- rule's metatable (__index = shape). The rule table keeps what is its own or nearly so: id, text, when (shared, see
-- above), ord, and its registers, tags, theme and motifs, whose combinations are almost unique in written content (the
-- base packs: 1,169 rules would make 1,104 shapes with them), so a rule fills the eight slots of its hash part instead
-- of sixteen. Reading p.speaker is unchanged for every caller; pairs(p) shows only the rule's own fields. A write to a
-- shape field gives the rule a private copy of its shape first (copy on write), so it never changes the other rules of
-- the shape. The shape is also part of the key the selection memoizes by (WeightedSelector, per pick).
Engine.SHAPE_FIELDS = { "pack", "events", "speaker", "form", "category", "depth", "depthList", "weight", "cooldown", "spec",
	"tier", "kind", "parts", "order", "chainable", "situational", "legacy" }
local SHAPE_FIELD = {}
for _, k in ipairs(Engine.SHAPE_FIELDS) do SHAPE_FIELD[k] = true end
local shapes, shapeRules = {}, {}   -- [key] = shape, [key] = rules that use it (released by DropPack)

local ShapeWrite
-- a new shape table (not interned) with the fields of `from`
local function NewShape(from)
	local s = { __newindex = ShapeWrite }
	for _, k in ipairs(Engine.SHAPE_FIELDS) do s[k] = from[k] end
	s.__index = s
	return s
end

-- __newindex of every shape: the key is not in the rule table
ShapeWrite = function(p, k, v)
	if SHAPE_FIELD[k] then
		local own = NewShape(getmetatable(p))
		own[k] = v
		setmetatable(p, own)
	else
		rawset(p, k, v)
	end
end

local keyParts = {}
local function ShapeKey(fields)
	for i, k in ipairs(Engine.SHAPE_FIELDS) do
		-- a table counts by identity: depthList, the rule's own list (validator only), gives it a shape of its own
		local v = fields[k]
		if v == nil then
			keyParts[i] = "-"
		elseif type(v) == "string" then
			keyParts[i] = "s" .. v
		else
			keyParts[i] = KeyPart(v)
		end
	end
	return table.concat(keyParts, "\31")
end

local function Shape(fields)
	local key = ShapeKey(fields)
	local s = shapes[key]
	if s then
		shapeRules[key] = shapeRules[key] + 1
	else
		s = NewShape(fields)
		shapes[key], shapeRules[key] = s, 1
	end
	return s
end

-- a rule leaves its shape (DropPack); a private copy (copy on write) is not interned
local function ReleaseShape(s)
	if not s then return end
	local key = ShapeKey(s)
	if shapes[key] ~= s then return end
	shapeRules[key] = shapeRules[key] - 1
	if shapeRules[key] <= 0 then shapes[key], shapeRules[key] = nil, nil end
end

---The shape of a rule (#138): the table of the fields it shares with other rules, or nil for a table that was not
---registered with AddEntry (frames, vocabulary, test fixtures).
---@param p table
---@return table?
function Engine.ShapeOf(p)
	local s = getmetatable(p)
	return (type(s) == "table" and s.__newindex == ShapeWrite) and s or nil
end

---How many shapes and shared conditions tables are interned now (tests, /au prof).
---@return integer shapes
---@return integer conditions
function Engine.InternCounts()
	local a, b = 0, 0
	for _ in pairs(shapes) do a = a + 1 end
	for _ in pairs(sharedWhens) do b = b + 1 end
	return a, b
end

---------------------------------------------------------------------------
-- Testi e varianti
---------------------------------------------------------------------------
-- Una variante è una stringa oppure { "testo", depth = "elevated" } / { text = "testo", depth = {...} }.
-- Un elenco di varianti è una stringa, un elenco di varianti, o una sola variante in forma di tabella.
local function IsSingleVariant(v)
	return type(v) == "table" and (v.text ~= nil or v.depth ~= nil)
end

---Testo di una variante ("" se il pacchetto non ha scritto una stringa).
---@param v AUVariantValue
---@return string
function Engine.VariantText(v)
	if type(v) == "string" then return v end
	return v.t
end

---La variante ha un testo utilizzabile (una stringa non vuota)?
---@param v AUVariantValue
---@return boolean
function Engine.VariantOk(v)
	if type(v) == "string" then return true end
	return v.ok
end

---Profondità per cui la variante è scritta (nil = tutte).
---@param v AUVariantValue
---@return table<string, boolean>?
function Engine.VariantDepth(v)
	if type(v) == "string" then return nil end
	return v.depth
end

---Pacchetto che ha scritto la variante: una stringa è del pacchetto proprietario della voce.
---@param v AUVariantValue
---@param owner? string pacchetto della frase, della cornice o della voce di vocabolario
---@return string?
function Engine.VariantPack(v, owner)
	if type(v) == "string" then return owner end
	return v.pack
end

---Una variante sempre come tabella { t, ok, depth, pack, raw } (validatore, test, strumenti; non nella selezione):
---una stringa diventa una tabella nuova, una tabella resta quella del registro.
---@param v AUVariantValue
---@param owner? string pacchetto della voce
---@return AUVariant
function Engine.VariantView(v, owner)
	if type(v) == "string" then return { t = v, ok = true, pack = owner } end
	return v
end

-- la forma compatta di una variante quando basta: la stringa, se il testo è valido, senza profondità propria e del
-- pacchetto proprietario (owner nil = ancora sconosciuto, per i testi che aspettano la loro regola)
local function Compact(var, owner)
	if type(var) == "table" and var.ok and var.depth == nil and owner ~= nil and var.pack == owner then return var.t end
	return var
end

---@return AUVariantValue
local function MakeVariant(v, packId, owner)
	local text, depth
	if type(v) == "table" then
		text, depth = v.text or v[1], v.depth
	else
		text = v
	end
	return Compact({ t = type(text) == "string" and text or "", ok = not Blank(text), depth = ToSet(depth),
		pack = packId, raw = (type(text) ~= "string") and type(text) or nil }, owner)
end

local function VariantList(list)
	if list == nil then return {} end
	if type(list) == "string" or IsSingleVariant(list) then return { list } end
	return list
end

-- aggiunge una variante, se non c'è già lo stesso testo valido
local function AppendVariant(target, var)
	local text = Engine.VariantText(var)
	if Engine.VariantOk(var) then
		for _, old in ipairs(target) do
			if Engine.VariantText(old) == text then return end
		end
	end
	table.insert(target, var)
end

-- aggiunge varianti a una lista di testi, senza duplicati identici; owner = pacchetto proprietario della voce
local function AppendVariants(target, list, packId, owner)
	for _, v in ipairs(VariantList(list)) do AppendVariant(target, MakeVariant(v, packId, owner)) end
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
				AppendVariants(text[lang], v, packId, packId)
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
-- Indice di selezione (#83, ADR 0024)
---------------------------------------------------------------------------
-- Le regole di ogni evento stanno in gruppi per forma (say, emote) e per chiave: "*" per le regole generiche, e per
-- quelle che chiedono al livello superiore delle condizioni un luogo, un personaggio o un momento, la chiave di quel
-- valore ("z:durotar" per when.zone, vedi INDEX_DIMENSIONS). Una regola va nei gruppi di una sola dimensione, la
-- prima che le sue condizioni chiedono (una chiave per valore elencato). Le regole con condizioni che possono
-- usare numeri casuali o codice (chance, func, condizioni dei pacchetti) restano generiche: saltare una regola esclusa
-- non deve cambiare la sequenza casuale. Candidates unisce in ordine di registrazione il gruppo generico e i gruppi
-- del contesto, così la scelta vede le stesse regole, nello stesso ordine, di una scansione di tutto byEvent.
-- L'indice non dipende dalla lingua né dal pacchetto: i pacchetti per lingua e per regione (#85, #101) lo estendono
-- registrando le loro regole.
local GENERIC = { "*" }
local EMPTY_LIST = {}

-- condizioni senza effetti collaterali: valutarle o saltarle non cambia nulla (RuleEngine le elenca)
local function Pure(when, scope)
	for k, v in pairs(when) do
		if k == "chance" or k == "func" then return false end
		if k == "not" then
			if type(v) ~= "table" or not Pure(v, scope) then return false end
		elseif k == "any" then
			if type(v) ~= "table" then return false end
			for _, sub in ipairs(v) do
				if type(sub) ~= "table" or not Pure(sub, scope) then return false end
			end
		elseif scope == nil then
			if k == "other" or k == "place" or k == "arc" then
				if type(v) == "table" and not Pure(v, k) then return false end
			elseif not (Engine.PURE_CONDITIONS and Engine.PURE_CONDITIONS[k]) then
				return false
			end
		end
	end
	return true
end

-- i valori che una condizione accetta, se sono solo stringhe (o solo numeri); nil se accetta anche altro
local function Only(v, kind)
	if type(v) == kind then return { v } end
	if type(v) ~= "table" or v[1] == nil then return nil end
	for _, x in ipairs(v) do
		if type(x) ~= kind then return nil end
	end
	return v
end

local function Keys(prefix, values, lower)
	local out, seen = {}, {}
	for _, x in ipairs(values) do
		local key = prefix .. (lower and NS.Lower(x) or tostring(x))
		if not seen[key] then
			seen[key] = true
			table.insert(out, key)
		end
	end
	return out
end

-- Dimensioni dell'indice, in ordine di preferenza: [1] ambito (nil = livello superiore, "place" = when.place), [2]
-- condizione, [3] prefisso della chiave, [4] tipo dei valori, [5] campi del contesto (o di ctx.place) che la
-- condizione confronta. Tutte sono confronti di uguaglianza di RuleEngine (MatchValue o la regola della zona): le
-- stringhe senza maiuscole, i numeri così come sono.
Engine.INDEX_DIMENSIONS = {
	{ nil, "zone", "z:", "string", { "zone", "subzone" } },
	{ nil, "subzone", "s:", "string", { "subzone" } },
	{ "place", "mapID", "pm:", "number", { "mapID" } },
	{ "place", "zone", "pz:", "string", { "zone", "subzone" } },
	{ nil, "class", "c:", "string", { "class" } },
	{ nil, "race", "r:", "string", { "race" } },
	{ nil, "mood", "m:", "string", { "mood" } },
	{ nil, "ctype", "t:", "string", { "ctype" } },
	{ nil, "time", "h:", "string", { "time" } },
}

---Chiavi dell'indice di una regola (nil = generica): la prima dimensione che le sue condizioni chiedono.
---@param when? table
---@return string[]?
function Engine.IndexKeys(when)
	if type(when) ~= "table" or not Pure(when) then return nil end
	for _, d in ipairs(Engine.INDEX_DIMENSIONS) do
		local scope = d[1] and when[d[1]] or when
		local v = type(scope) == "table" and Only(scope[d[2]], d[4])
		if v then return Keys(d[3], v, d[4] == "string") end
	end
	return nil
end

---Chiavi dell'indice che il contesto apre (oltre al gruppo generico).
---@param ctx table
---@return string[]
function Engine.ContextKeys(ctx)
	local keys = {}
	for _, d in ipairs(Engine.INDEX_DIMENSIONS) do
		local scope = d[1] and ctx[d[1]] or ctx
		if type(scope) == "table" then
			for _, field in ipairs(d[5]) do
				local v = scope[field]
				if type(v) == d[4] then
					table.insert(keys, d[3] .. (d[4] == "string" and NS.Lower(v) or tostring(v)))
				end
			end
		end
	end
	return keys
end

-- version of the index: any change to its lists (a rule added, a pack dropped, a rebuild) empties the cache of
-- merged candidate lists (Candidates)
Engine.indexVersion = 0
local merged, mergedVersion, mergedIndex, mergedCount = {}, -1, nil, 0
Engine.MERGED_MAX = 32   -- merged lists kept (event, form and context keys); beyond, the cache starts again

local function AddToIndex(index, ev, p, keys)
	Engine.indexVersion = Engine.indexVersion + 1
	local byForm = index[ev]
	if not byForm then byForm = {}; index[ev] = byForm end
	local byKey = byForm[p.form]
	if not byKey then byKey = {}; byForm[p.form] = byKey end
	for _, k in ipairs(keys) do
		local list = byKey[k]
		if not list then list = {}; byKey[k] = list end
		table.insert(list, p)
	end
end

---Ricostruisce l'indice da byEvent (quando cambia ciò che una condizione può fare, vedi NS:RegisterCondition).
function Engine:RebuildIndex()
	local index = {}
	for ev, list in pairs(self.byEvent) do
		for _, p in ipairs(list) do AddToIndex(index, ev, p, Engine.IndexKeys(p.when) or GENERIC) end
	end
	for _, p in pairs(self.byId) do p.impure = (p.when ~= nil and not Pure(p.when)) or nil end
	self.index = index
	self.indexVersion = self.indexVersion + 1
end

-- the union of two lists in order of registration (ord); a rule in both appears once
local function Merge2(a, b)
	local out, i, j, na, nb, k = {}, 1, 1, #a, #b, 0
	while i <= na and j <= nb do
		local x, y = a[i], b[j]
		k = k + 1
		if x == y then
			out[k], i, j = x, i + 1, j + 1
		elseif x.ord < y.ord then
			out[k], i = x, i + 1
		else
			out[k], j = y, j + 1
		end
	end
	for r = i, na do k = k + 1; out[k] = a[r] end
	for r = j, nb do k = k + 1; out[k] = b[r] end
	return out
end

---Le regole dell'evento che possono valere nel contesto, in ordine di registrazione: una parte di byEvent[event] che
---contiene ogni regola le cui condizioni possono essere vere (le altre condizioni le controlla Eligible).
---@param event string
---@param ctx table
---@param form? "say"|"emote" nil = tutte le forme
---@return AUPhrase[]
function Engine:Candidates(event, ctx, form)
	local byForm = self.index[event]
	if not byForm then return EMPTY_LIST end
	local keys = Engine.ContextKeys(ctx)
	local lists = {}
	for f, byKey in pairs(byForm) do
		if form == nil or f == form then
			if byKey["*"] then table.insert(lists, byKey["*"]) end
			for _, k in ipairs(keys) do
				if byKey[k] then table.insert(lists, byKey[k]) end
			end
		end
	end
	local n = #lists
	if n == 0 then return EMPTY_LIST end
	if n == 1 then return lists[1] end
	-- #138: the same event, form and context keys give the same union while the index does not change (a session
	-- stays in one place for many picks); the cached list is read-only, like the groups of the index
	local cache = Engine.MEMO ~= false
	if cache and (mergedVersion ~= self.indexVersion or mergedIndex ~= self.index or mergedCount >= Engine.MERGED_MAX) then
		merged, mergedVersion, mergedIndex, mergedCount = {}, self.indexVersion, self.index, 0
	end
	local cacheKey = event .. "\31" .. tostring(form) .. "\31" .. table.concat(keys, "\31")
	local hit = cache and merged[cacheKey]
	if hit then return hit end
	-- unione in ordine di registrazione; una regola in più gruppi (zona e sottozona) compare una volta. #138: two lists
	-- at a time, the shortest first, so the long generic group is walked once instead of once per group
	table.sort(lists, function(a, b) return #a < #b end)
	local out = lists[1]
	for i = 2, n do out = Merge2(out, lists[i]) end
	if cache then merged[cacheKey], mergedCount = out, mergedCount + 1 end
	return out
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

	-- the fields shared with other rules go to the shape (#138); the rule table is made at the end
	local p = { pack = pack.id, legacy = legacy or nil }
	local events = {}
	for _, ev in ipairs(AsList(e.event)) do
		if type(ev) == "string" and ev ~= "" then table.insert(events, ev) end
	end
	p.events = SharedList(events)
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
	local styles = {}
	for _, s in ipairs(e.styles and AsList(e.styles) or LegacyTones(e.tone)) do table.insert(styles, s) end
	p.styles = SharedList(styles)
	p.depth = SharedSet(ToSet(e.depth))
	-- l'elenco scritto dal pacchetto serve al validatore solo se dice più dell'insieme (valori non stringa, ripetuti)
	if e.depth then
		local depthList, n = {}, 0
		for _, d in ipairs(AsList(e.depth)) do table.insert(depthList, d) end
		for _ in pairs(p.depth) do n = n + 1 end
		if n ~= #depthList then p.depthList = depthList end
	end
	p.tags = SharedSet(ToSet(e.tags)) or EMPTY_SET

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
	p.spec = Specificity(when)
	-- only an explicit tier is stored: the deduced one is computed when a pick needs it (Engine.Tier) from the
	-- conditions, which many rules share (ADR 0024)
	if e.tier ~= nil then
		p.tier = ExplicitTier(e.tier)
		if not p.tier then Issue(pack, "badTier", id, ("tier '%s' non valido"):format(tostring(e.tier))) end
	end
	-- theme and motifs (#90): kept as written, the validator checks them against the vocabularies
	if e.theme ~= nil then p.theme = e.theme end
	if e.motifs ~= nil then p.motifs = SharedList(AsList(e.motifs)) end
	-- monologues and their parts (#99): only the fields a rule writes are stored (ADR 0024); the validator checks that
	-- the parts exist, are chainable, share the voice and go together
	if e.kind ~= nil then
		if e.kind == "monologue" then
			p.kind = "monologue"
			p.parts = SharedList(AsList(e.parts))
			if e.order ~= nil then p.order = e.order end
		else
			Issue(pack, "badKind", id, ("kind '%s' unknown (only \"monologue\")"):format(tostring(e.kind)))
		end
	elseif e.parts ~= nil or e.order ~= nil then
		Issue(pack, "badKind", id, "parts and order belong to a rule with kind = \"monologue\"")
	end
	if e.chainable == true or e.chainable == "only" then
		p.chainable = e.chainable
	elseif e.chainable ~= nil and e.chainable ~= false then
		Issue(pack, "badChainable", id, ("chainable '%s' not valid (true or \"only\")"):format(tostring(e.chainable)))
	end
	if type(when) == "table" and when.situation ~= nil then p.situational = true end

	-- the rule: its own fields and its shape (#138), eight slots of its hash part at most (a monologue's impure, rare,
	-- takes a ninth)
	self.nextOrd = self.nextOrd + 1
	---@type AUPhrase
	p = setmetatable({ id = id, text = {}, when = SharedWhen(when), ord = self.nextOrd, styles = p.styles, tags = p.tags,
		theme = p.theme, motifs = p.motifs }, Shape(p))
	self.byId[id] = p
	-- condizioni che possono usare numeri casuali o codice: Eligible le valuta per ultime, come sempre
	p.impure = (when ~= nil and not Pure(when)) or nil
	local keys = Engine.IndexKeys(when) or GENERIC
	for _, ev in ipairs(p.events) do
		self.byEvent[ev] = self.byEvent[ev] or {}
		table.insert(self.byEvent[ev], p)
		AddToIndex(self.index, ev, p, keys)
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
		AppendVariants(p.text[lang], list, packId, p.pack)
	else
		-- in attesa della regola: il proprietario non si conosce ancora, le varianti restano tabelle fino a FlushPending
		local byLang = self.pendingTexts[id] or {}
		self.pendingTexts[id] = byLang
		byLang[lang] = byLang[lang] or {}
		AppendVariants(byLang[lang], list, packId, nil)
	end
end

function Engine:FlushPending()
	for id, byLang in pairs(self.pendingTexts) do
		local p = self.byId[id]
		if p then
			for lang, variants in pairs(byLang) do
				p.text[lang] = p.text[lang] or {}
				for _, var in ipairs(variants) do AppendVariant(p.text[lang], Compact(var, p.pack)) end
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
	-- themes of the frame (#90, optional): it tells only phrases of one of them; without, every theme
	f.themes = f.themes and AsList(f.themes) or nil
	f.themeSet = ToSet(f.themes)
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
		-- tag di affinità e di argomento (#42): `topic:blood` esclude la voce a chi evita quell'argomento
		v.tags = ToSet(v.tags) or {}
		table.insert(self.vocab[name], v)
		table.insert(pack.vocabList, v)
		pack.langsUsed = pack.langsUsed or {}
		for lang in pairs(v.text) do pack.langsUsed[lang] = true end
	end
end

---------------------------------------------------------------------------
-- Dichiarazioni dei pacchetti: eventi, registri, categorie
---------------------------------------------------------------------------
---Dichiara un evento nuovo. def = { category =, chance = (%), cooldown = (secondi), fallback = (evento) }.
---`fallback` (#89) is the related event the selection tries when this one has no eligible phrase; a base event can
---get one too (Data/Themes.lua declares `rezother` -> `heal`).
---@param name string
---@param def? { category?: string, chance?: number, cooldown?: number, fallback?: string }
function NS:RegisterEvent(name, def)
	def = def or {}
	local Engine = self.Engine
	if not Engine.events[name] then
		Engine.events[name] = { category = def.category, pack = def.pack }
	elseif def.category and not Engine.events[name].category then
		Engine.events[name].category = def.category
	end
	if def.fallback ~= nil then Engine.events[name].fallback = def.fallback end
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

---Adds a theme to the closed vocabulary (#90).
---@param id string
function NS:RegisterTheme(id)
	if type(id) == "string" and id ~= "" then self.Engine.THEMES[id] = true end
end

---Adds a motif to the closed vocabulary (#90).
---@param id string
function NS:RegisterMotif(id)
	if type(id) == "string" and id ~= "" then self.Engine.MOTIFS[id] = true end
end

---Per-session quota of a category (#91): at most `share` (0-1) of the last `window` spontaneous interventions, counting
---only those of the last `span` seconds. nil removes it. The validator checks the values.
---@param category string
---@param def? { share: number, window?: integer, span?: number }
function NS:SetCategoryQuota(category, def)
	if type(category) == "string" then self.Engine.QUOTAS[category] = def end
end

---Hunger of a category (#91): after `after` seconds without a spontaneous intervention of the category its chance is
---multiplied by up to `factor` (growing with the silence), and it goes first among candidates of the same priority.
---@param category string
---@param def? { factor: number, after?: number }
function NS:SetCategoryHunger(category, def)
	if type(category) == "string" then self.Engine.HUNGER[category] = def end
end

---A composite situation (#100, ADR 0032): when the Director's candidates match it, the lines written for it speak
---first (condition `situation`). Registering an id again replaces it. The validator checks the definition.
---@param id string
---@param def { lead: string, with?: string[], withAny?: string[], within?: number, when?: table }
---@param packId? string
function NS:RegisterSituation(id, def, packId)
	local Engine = self.Engine
	if type(id) ~= "string" or id == "" or type(def) ~= "table" then return end
	if not Engine.SITUATIONS[id] then
		table.insert(Engine.SITUATION_ORDER, id)
		table.sort(Engine.SITUATION_ORDER)
	end
	def.pack = def.pack or packId
	Engine.SITUATIONS[id] = def
	Engine.CONDITION_VALUES.situation[id] = true
end

---------------------------------------------------------------------------
-- API pubblica
---------------------------------------------------------------------------
--[[ Formato v2 del pacchetto (vedi PACK_FORMAT.md):
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
		self:RegisterEvent(name, { category = def.category, chance = def.chance, cooldown = def.cooldown, pack = pack.id,
			fallback = def.fallback })
	end
	for _, s in ipairs(pack.styles or {}) do self:RegisterStyle(s) end
	for _, c in ipairs(pack.categories or {}) do self:RegisterCategory(c) end
	for _, t in ipairs(pack.themes or {}) do self:RegisterTheme(t) end
	for _, m in ipairs(pack.motifs or {}) do self:RegisterMotif(m) end
	for _, c in ipairs(SortedKeys(pack.quotas or {})) do self:SetCategoryQuota(c, pack.quotas[c]) end
	for _, c in ipairs(SortedKeys(pack.hunger or {})) do self:SetCategoryHunger(c, pack.hunger[c]) end
	for _, name in ipairs(SortedKeys(pack.situations or {})) do self:RegisterSituation(name, pack.situations[name], pack.id) end
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

	-- #84: le tabelle sorgente non servono più (regole, testi, cornici e vocabolario sono nel registro). Il pacchetto
	-- resta registrato con id, nome, lingue, dichiarazioni e gli elenchi che legge il validatore.
	pack.registry, pack.texts, pack.translations, pack.phrases, pack.frames, pack.vocab = nil, nil, nil, nil, nil, nil
end

-- removes from a list (in place) the entries whose `pack` field is packId; true if something was removed
local function Without(list, packId)
	local j, removed = 0, false
	for i = 1, #list do
		local x = list[i]
		list[i] = nil
		if x.pack == packId then
			removed = true
		else
			j = j + 1
			list[j] = x
		end
	end
	return removed
end

---Drops a pack from the registry: its rules (with their texts, in every language), frames and vocabulary entries
---leave byId, byEvent, the selection index, frames and vocab, so the garbage collector can free them. Used by the
---regional packs when the character leaves the region (#101, ADR 0025): WoW cannot unload an addon, only its data.
---Event, style, category and condition declarations stay (they are small and other packs may use them). Texts that
---other packs added to the dropped rules go with them.
---@param packId string
---@return integer dropped number of rules removed (nil if the pack is not registered)
function Engine:DropPack(packId)
	local pack = self.packs[packId]
	if not pack then return nil end
	local events, n = {}, 0
	for _, id in ipairs(pack.ids or EMPTY_LIST) do
		local p = self.byId[id]
		if p and p.pack == packId then
			ReleaseShape(Engine.ShapeOf(p))
			ReleaseWhen(p.when)
			self.byId[id] = nil
			self.pendingTexts[id] = nil
			n = n + 1
			for _, ev in ipairs(p.events) do events[ev] = true end
		end
	end
	self.indexVersion = self.indexVersion + 1
	for ev in pairs(events) do
		if self.byEvent[ev] then
			Without(self.byEvent[ev], packId)
			if #self.byEvent[ev] == 0 then self.byEvent[ev] = nil end
		end
		for _, byKey in pairs(self.index[ev] or EMPTY_LIST) do
			for k, list in pairs(byKey) do
				Without(list, packId)
				if #list == 0 then byKey[k] = nil end
			end
		end
	end
	for _, list in pairs(self.frames) do Without(list, packId) end
	for _, list in pairs(self.vocab) do Without(list, packId) end
	for i = #self.loadIssues, 1, -1 do
		if self.loadIssues[i].pack == packId then table.remove(self.loadIssues, i) end
	end
	self.packs[packId] = nil
	for i, id in ipairs(self.packOrder) do
		if id == packId then table.remove(self.packOrder, i); break end
	end
	return n
end

---Aggiunge testi o traduzioni a frasi già registrate (anche di altri pacchetti): { [id] = "testo" | { varianti } }.
---@param lang string codice lingua ("it", "itIT", "de"...)
---@param map table<string, string|table>
---@param packId? string pacchetto che li fornisce: se è spento, i suoi testi non si usano
function NS:AddTexts(lang, map, packId)
	Engine:AddTranslations(lang, map, packId)
end
NS.AddTranslations = NS.AddTexts

-- statistiche per /au stats: frasi con almeno una variante nella lingua
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
