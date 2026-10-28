-- Azeroth Unspoken: configurazione, SavedVariables, migrazioni e validazione
--   AzerothUnspokenDB          (account)       = { schemaVersion, settings = { ... } }
--   AzerothUnspokenCharacterDB (personaggio)   = { schemaVersion, memory, personality, memories, arcs, history }
local ADDON, NS = ...
---@class AUConfig
---@field SCHEMA_VERSION integer
---@field CHAT_MODES string[]
---@field CHAT_CHANNELS string[]
---@field defaults AUSettings
---@field presets table<string, table<string, boolean>>
---@field issues string[] problemi corretti dall'ultimo Load
local Config = {}
NS.Config = Config

Config.SCHEMA_VERSION = 2

-- modalità del Chat Gateway (GDD §7.7) e canali selezionabili per le proposte
Config.CHAT_MODES = { "PRIVATE", "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED" }
Config.CHAT_CHANNELS = { "auto", "SAY", "EMOTE", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }

-- GDD §11.4, più le impostazioni del prototipo
---@class AUChatSettings
---@field mode string PRIVATE | PREVIEW | CONFIRM_TO_SEND | AUTO_ONLY_IF_ALLOWED
---@field channel string "auto" oppure SAY | EMOTE | PARTY | RAID | GUILD | INSTANCE_CHAT
---@field pendingSeconds number quanto resta in attesa una proposta
---@field floodSeconds number pausa minima tra due invii
---@field maxPerMinute integer invii al minuto, qualunque canale
---@field autoMaxPerMinute integer invii automatici al minuto

---@class AUNarratorSettings
---@field duration number secondi di lettura di base
---@field alpha number opacità, 0.2-1
---@field fontSize integer
---@field historySize integer
---@field locked boolean il riquadro non si sposta
---@field pos? table posizione salvata { punto, punto relativo, x, y }

---@class AUUISettings
---@field showButton boolean
---@field wizardDone boolean
---@field narrator AUNarratorSettings
---@field buttonPos? table

---@class AUOutputSettings
---@field privateNarrator boolean riquadro del narratore (false: ripiego sulla chat locale)
---@field npcDialogues boolean
---@field publicChatPreview boolean non usato: l'interruttore è modules.publicChat
---@field autoPublicSay boolean secondo consenso per l'invio automatico

---@class AUSettings
---@field locale string codice di due lettere registrato con RegisterLanguage
---@field preset string complete | personal | world | social | custom
---@field intensity integer 0-100
---@field proseDepth string natural | literary | elevated
---@field modules table<string, boolean>
---@field output AUOutputSettings
---@field chat AUChatSettings
---@field privacy table<string, boolean>
---@field pacing { globalCooldownSeconds: number, recentPhraseWindow: integer, suppressInHighDemand: boolean }
---@field enabled boolean
---@field chance table<string, number> probabilità scelte dall'utente, per evento
---@field ignored table<string, boolean>
---@field disabledPacks table<string, boolean>
---@field ui AUUISettings

Config.defaults = {
	locale = "it",          -- lingua delle frasi e dell'interfaccia: codice registrato con RegisterLanguage
	preset = "complete",
	intensity = 50,
	proseDepth = "literary",
	modules = {
		personal = true, world = true, npc = true,
		memory = true, storyArcs = true, social = true,
		publicChat = true, totalRP3 = true, audio = false,
	},
	output = {
		privateNarrator = true,
		npcDialogues = true,
		publicChatPreview = true,
		autoPublicSay = false,   -- secondo consenso, necessario oltre alla modalità AUTO_ONLY_IF_ALLOWED
	},
	-- Chat Gateway (GDD §7.7)
	chat = {
		mode = "PRIVATE",        -- PRIVATE | PREVIEW | CONFIRM_TO_SEND | AUTO_ONLY_IF_ALLOWED
		channel = "auto",        -- auto: /s per il personaggio, /e per il narratore; oppure un canale fisso
		pendingSeconds = 25,     -- quanto resta in attesa una proposta
		floodSeconds = 4,        -- pausa minima tra due invii
		maxPerMinute = 6,        -- invii al minuto, qualunque canale
		autoMaxPerMinute = 2,    -- invii automatici al minuto
	},
	privacy = {
		socialOptIn = false,
		shareMemories = false,
		acceptSceneInvites = false,
	},
	pacing = {
		globalCooldownSeconds = 45,
		recentPhraseWindow = 30,
		suppressInHighDemand = true,
	},
	enabled = true,
	chance = {},           -- [evento] = probabilità % scelta dall'utente
	ignored = {},          -- [nome incantesimo minuscolo] = true
	disabledPacks = {},    -- [id pacchetto] = true
	ui = {
		showButton = true,
		wizardDone = false,
		narrator = {
			duration = 8,        -- secondi di lettura di base, più qualche istante per la lunghezza del testo
			alpha = 0.85,        -- opacità dello sfondo e del testo, 0.2-1
			fontSize = 14,
			historySize = 30,
			locked = false,      -- true: il riquadro non si sposta
		},
	},
}

Config.characterDefaults = {
	memory = { uses = {}, last = {}, recent = {}, lastTone = {} },
	personality = {},
	memories = {},
	arcs = {},
	history = {},
}

-- regole oltre al tipo, per percorso
Config.rules = {
	preset = { enum = { "complete", "personal", "world", "social", "custom" } },
	intensity = { min = 0, max = 100, integer = true },
	proseDepth = { enum = { "natural", "literary", "elevated" } },
	["chat.mode"] = { enum = Config.CHAT_MODES },
	["chat.channel"] = { enum = Config.CHAT_CHANNELS },
	["chat.pendingSeconds"] = { min = 5, max = 120 },
	["chat.floodSeconds"] = { min = 1, max = 60 },
	["chat.maxPerMinute"] = { min = 1, max = 30, integer = true },
	["chat.autoMaxPerMinute"] = { min = 1, max = 10, integer = true },
	["ui.narrator.duration"] = { min = 2, max = 30 },
	["ui.narrator.alpha"] = { min = 0.2, max = 1 },
	["ui.narrator.fontSize"] = { min = 10, max = 28, integer = true },
	["ui.narrator.historySize"] = { min = 5, max = 100, integer = true },
	["pacing.globalCooldownSeconds"] = { min = 0, max = 3600 },
	["pacing.recentPhraseWindow"] = { min = 1, max = 200, integer = true },
}

-- tabelle libere: si controllano le singole voci
Config.maps = {
	chance = function(v) return type(v) == "number" and v >= 0 and v <= 100 end,
	ignored = function(v) return v == true end,
	disabledPacks = function(v) return v == true end,
}

-- Preset del GDD §4.1: combinazioni dei moduli. publicChat, totalRP3 e audio non cambiano col preset.
Config.PRESET_ORDER = { "complete", "personal", "world", "social" }
Config.presets = {
	complete = { personal = true, world = true, npc = true, memory = true, storyArcs = true, social = true },
	personal = { personal = true, world = false, npc = false, memory = true, storyArcs = true, social = false },
	world = { personal = false, world = true, npc = true, memory = true, storyArcs = false, social = false },
	social = { personal = true, world = false, npc = false, memory = true, storyArcs = false, social = true },
}

---Applica un preset ai moduli (publicChat, totalRP3 e audio non cambiano).
---@param name string complete | personal | world | social
---@return boolean ok false se il preset non esiste
function Config:ApplyPreset(name)
	local preset = self.presets[name]
	if not preset or not NS.db then return false end
	for module, on in pairs(preset) do NS.db.modules[module] = on end
	NS.db.preset = name
	return true
end

---------------------------------------------------------------------------
-- Copia e merge
---------------------------------------------------------------------------
local function DeepCopy(v)
	if type(v) ~= "table" then return v end
	local out = {}
	for k, x in pairs(v) do out[k] = DeepCopy(x) end
	return out
end
Config.DeepCopy = DeepCopy

-- Aggiunge a saved ciò che manca rispetto a defaults, ricorsivamente.
-- Non tocca i valori esistenti né le chiavi sconosciute.
function Config.Merge(defaults, saved)
	for k, v in pairs(defaults) do
		if saved[k] == nil then
			saved[k] = DeepCopy(v)
		elseif type(v) == "table" and type(saved[k]) == "table" then
			Config.Merge(v, saved[k])
		end
	end
	return saved
end

---------------------------------------------------------------------------
-- Validazione: un valore sbagliato torna al predefinito, gli altri restano
---------------------------------------------------------------------------
local function InEnum(list, v)
	for _, x in ipairs(list) do
		if x == v then return true end
	end
	return false
end

-- "itIT", "IT", "enUS" -> "it", "en" se la lingua è registrata
function Config:NormalizeLocale(v)
	if type(v) ~= "string" then return nil end
	if NS.languages[v] then return v end
	local short = v:sub(1, 2):lower()
	if NS.languages[short] then return short end
	return nil
end

local function CheckRule(rule, v)
	if rule.enum and not InEnum(rule.enum, v) then return nil end
	if rule.min or rule.max then
		if type(v) ~= "number" or v ~= v then return nil end
		if rule.integer then v = math.floor(v + 0.5) end
		if rule.min and v < rule.min then v = rule.min end
		if rule.max and v > rule.max then v = rule.max end
	end
	return v
end

-- Restituisce l'elenco dei problemi corretti (stringhe leggibili).
function Config:Validate(settings, defaults, prefix, issues)
	defaults = defaults or self.defaults
	issues = issues or {}
	for k, def in pairs(defaults) do
		local path = prefix and (prefix .. "." .. k) or k
		local v = settings[k]
		if type(v) ~= type(def) then
			settings[k] = DeepCopy(def)
			table.insert(issues, ("%s: %s -> %s"):format(path, tostring(v), tostring(def)))
		elseif self.maps[path] then
			for key, x in pairs(v) do
				if not self.maps[path](x) then
					v[key] = nil
					table.insert(issues, ("%s.%s: %s rimosso"):format(path, tostring(key), tostring(x)))
				end
			end
		elseif type(def) == "table" then
			self:Validate(v, def, path, issues)
		else
			local rule = self.rules[path]
			local fixed = v
			if rule then fixed = CheckRule(rule, v) end
			if path == "locale" then fixed = self:NormalizeLocale(v) end
			if fixed == nil then
				settings[k] = def
				table.insert(issues, ("%s: %s -> %s"):format(path, tostring(v), tostring(def)))
			elseif fixed ~= v then
				settings[k] = fixed
				table.insert(issues, ("%s: %s -> %s"):format(path, tostring(v), tostring(fixed)))
			end
		end
	end
	return issues
end

---------------------------------------------------------------------------
-- Migrazioni: migrations[tipo][n] porta i dati dalla versione n-1 alla n
---------------------------------------------------------------------------
Config.migrations = {
	global = {
		-- 1: struttura iniziale. Le impostazioni stanno sotto settings.
		[1] = function(db)
			if type(db.settings) ~= "table" then db.settings = {} end
		end,
		-- 2: output.mode (auto|emote|say|self) diventa chat.mode del Chat Gateway.
		-- "self" era la sola anteprima privata; le altre modalità pubblicavano da sole e ora
		-- diventano proposte da confermare: nessuna pubblicazione automatica senza una nuova scelta.
		[2] = function(db)
			local s = db.settings
			if type(s) ~= "table" then return end
			if type(s.output) == "table" then
				local old = s.output.mode
				s.output.mode = nil
				if type(s.chat) ~= "table" then s.chat = {} end
				if s.chat.mode == nil then
					s.chat.mode = (old == nil or old == "self") and "PRIVATE" or "CONFIRM_TO_SEND"
				end
				s.output.autoPublicSay = false
			end
		end,
	},
	character = {
		[1] = function(db)
			if type(db.memory) ~= "table" then db.memory = nil end
		end,
		-- 2: nessun cambiamento ai dati del personaggio (versione allineata a quella globale)
		[2] = function() end,
	},
}

-- false se i dati vengono da una versione più nuova dell'addon: si usano senza toccarli
---Porta i dati alla versione corrente dello schema.
---@param db table
---@param kind "global"|"character"
---@return boolean ok false se i dati vengono da una versione più nuova o una migrazione fallisce
function Config:Migrate(db, kind)
	local current = tonumber(db.schemaVersion) or 0
	if current > self.SCHEMA_VERSION then
		NS.Diagnostics:Error("config", ("%s schemaVersion %d > %d"):format(kind, current, self.SCHEMA_VERSION))
		return false
	end
	for v = current + 1, self.SCHEMA_VERSION do
		local step = self.migrations[kind] and self.migrations[kind][v]
		if step and not NS.Diagnostics:Guard("migrate:" .. kind .. ":" .. v, step, db) then return false end
		db.schemaVersion = v
	end
	return true
end

function Config:Load()
	if type(AzerothUnspokenDB) ~= "table" then AzerothUnspokenDB = {} end
	if type(AzerothUnspokenCharacterDB) ~= "table" then AzerothUnspokenCharacterDB = {} end
	local g, c = AzerothUnspokenDB, AzerothUnspokenCharacterDB
	self:Migrate(g, "global")
	self:Migrate(c, "character")
	if type(g.settings) ~= "table" then g.settings = {} end
	Config.Merge(self.defaults, g.settings)
	self.issues = self:Validate(g.settings)
	Config.Merge(self.characterDefaults, c)
	self:Validate(c, self.characterDefaults, "character", self.issues)
	NS.db, NS.cdb = g.settings, c
	return g.settings
end

---------------------------------------------------------------------------
-- Lettura e scrittura per percorso ("pacing.globalCooldownSeconds")
---------------------------------------------------------------------------
local function Split(path)
	local parts = {}
	for p in path:gmatch("[^.]+") do table.insert(parts, p) end
	return parts
end

---@param path string percorso con punti, es. "ui.narrator.alpha"
---@return any
function Config:Get(path)
	local v = NS.db
	for _, p in ipairs(Split(path)) do
		if type(v) ~= "table" then return nil end
		v = v[p]
	end
	return v
end

-- Restituisce true e il valore salvato, oppure false se il valore non è valido.
---Scrive un'impostazione dopo averla validata.
---@param path string
---@param value any
---@return boolean ok
---@return any? saved il valore salvato (già limitato o normalizzato)
function Config:Set(path, value)
	local parts = Split(path)
	local parent, def = NS.db, self.defaults
	for i = 1, #parts - 1 do
		parent, def = parent and parent[parts[i]], def and def[parts[i]]
	end
	local key = parts[#parts]
	def = def and def[key]
	if type(parent) ~= "table" or def == nil or type(def) == "table" then return false end
	if type(def) == "number" then value = tonumber(value) end
	if type(def) == "boolean" and type(value) == "string" then
		if value == "true" or value == "on" then value = true elseif value == "false" or value == "off" then value = false end
	end
	if type(value) ~= type(def) then return false end
	if self.rules[path] then value = CheckRule(self.rules[path], value) end
	if path == "locale" then value = self:NormalizeLocale(value) end
	if value == nil then return false end
	parent[key] = value
	return true, value
end
