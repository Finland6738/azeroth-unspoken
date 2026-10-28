-- Azeroth Unspoken: configurazione, SavedVariables, migrazioni e validazione
--   AzerothUnspokenDB          (account)       = { schemaVersion, settings = { ... } }
--   AzerothUnspokenCharacterDB (personaggio)   = { schemaVersion, memory, personality, memories, arcs, history }
local ADDON, NS = ...
local Config = {}
NS.Config = Config

Config.SCHEMA_VERSION = 1

-- GDD §11.4, più le impostazioni del prototipo
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
		autoPublicSay = false,   -- false: /say automatico mai, neanche nelle istanze
		mode = "self",           -- auto | emote | say | self (solo anteprima privata)
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
	ui = { showButton = true },
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
	["output.mode"] = { enum = { "auto", "emote", "say", "self" } },
	["pacing.globalCooldownSeconds"] = { min = 0, max = 3600 },
	["pacing.recentPhraseWindow"] = { min = 1, max = 200, integer = true },
}

-- tabelle libere: si controllano le singole voci
Config.maps = {
	chance = function(v) return type(v) == "number" and v >= 0 and v <= 100 end,
	ignored = function(v) return v == true end,
	disabledPacks = function(v) return v == true end,
}

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
	},
	character = {
		[1] = function(db)
			if type(db.memory) ~= "table" then db.memory = nil end
		end,
	},
}

-- false se i dati vengono da una versione più nuova dell'addon: si usano senza toccarli
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

function Config:Get(path)
	local v = NS.db
	for _, p in ipairs(Split(path)) do
		if type(v) ~= "table" then return nil end
		v = v[p]
	end
	return v
end

-- Restituisce true e il valore salvato, oppure false se il valore non è valido.
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
