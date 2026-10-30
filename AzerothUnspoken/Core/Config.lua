-- Azeroth Unspoken: configurazione, SavedVariables, migrazioni e validazione
--   AzerothUnspokenDB          (account)       = { schemaVersion, settings = { ... } }
--   AzerothUnspokenCharacterDB (personaggio)   = { schemaVersion, memory, personality, memories, arcs, history }
--     personality = { version, archetype, traits = { [tratto] = valore }, trp3 }  (Systems/Personality.lua)
--     memories = { version, nextId, entries, places, flags, stats }                (Systems/LivingMemory.lua)
--     relationships = { version, npcs = { [npcID] = ... }, players = { ["Nome-Reame"] = ... } }  (Systems/Relationships.lua)
--     arcs = { version, items = { [id dell'arco] = { state, mode, ... } }, stats }              (Systems/StoryArcs.lua)
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

Config.SCHEMA_VERSION = 6

-- modalità del Chat Gateway (GDD §7.7) e canali selezionabili per le proposte
Config.CHAT_MODES = { "PRIVATE", "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED" }
Config.CHAT_CHANNELS = { "auto", "SAY", "EMOTE", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }

-- Byte massimi di un messaggio, per canale: la fonte unica del Chat Gateway (che taglia) e del validatore
-- (che segnala le frasi troppo lunghe). SendChatMessage accetta 255 byte. PRIVATE non è un canale: è il
-- limite di leggibilità nel narratore per le voci che non escono mai in chat (inner, npc).
---@type table<string, integer>
Config.CHAT_LIMITS = {
	SAY = 255, YELL = 255, EMOTE = 255, PARTY = 255, RAID = 255, GUILD = 255, INSTANCE_CHAT = 255,
	PRIVATE = 400,
}

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

---@class AUDialogueSettings
---@field fontSize integer
---@field alpha number
---@field locked boolean
---@field pos? table posizione salvata { punto, punto relativo, x, y }

---@class AUNPCAliveSettings
---@field autoOffer boolean un'interazione valida propone il dialogo ambientale (il pulsante compare da solo)

---@class AUArcSettings
---@field maxActive integer archi attivi insieme, 1-2 (GDD §7.5)

---@class AUUISettings
---@field showButton boolean
---@field wizardDone boolean
---@field narrator AUNarratorSettings
---@field dialogue AUDialogueSettings finestra dei dialoghi ambientali (S8)
---@field buttonPos? table

---@class AUOutputSettings
---@field privateNarrator boolean riquadro del narratore (false: ripiego sulla chat locale)
---@field npcDialogues boolean
---@field publicChatPreview boolean non usato: l'interruttore è modules.publicChat
---@field autoPublicSay boolean secondo consenso per l'invio automatico

---@class AURelationSettings
---@field npcAuto boolean gli NPC si calcolano da soli (gossip, quest, mercante)
---@field attraction boolean l'asse facoltativo dell'attrazione (spento di base)
---@field autoRegisterPlayers boolean registra da solo chi si incontra (spento di base: i giocatori li sceglie l'utente)
---@field proposePlayers boolean propone candidati (gruppo, scambi, profili TRP3, risposte in privato)

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
---@field relations AURelationSettings
---@field interlocutor { trp3Others: boolean } S6c: consenso a leggere i profili pubblici TRP3 degli altri giocatori
---@field npcAlive AUNPCAliveSettings NPC Alive (S8)
---@field arcs AUArcSettings Story Arcs (S9)
---@field ui AUUISettings

Config.defaults = {
	locale = "en",          -- lingua delle frasi e dell'interfaccia: codice registrato con RegisterLanguage
	preset = "complete",
	intensity = 50,
	proseDepth = "literary",
	modules = {
		personal = true, world = true, npc = true,
		memory = true, storyArcs = true, social = true,
		publicChat = true, totalRP3 = true, audio = false, relations = true,
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
	-- Relazioni (S6b). I giocatori non entrano in lista senza un'azione dell'utente, salvo autoRegisterPlayers.
	relations = {
		npcAuto = true,
		attraction = false,
		autoRegisterPlayers = false,
		proposePlayers = true,
	},
	-- Interlocutore (S6c): leggere il profilo pubblico Total RP 3 degli altri giocatori è un consenso a parte
	interlocutor = {
		trp3Others = false,
	},
	-- NPC Alive (S8): il dialogo ambientale parte sempre da un'azione del giocatore; `autoOffer` fa solo comparire il
	-- pulsante quando un'interazione valida si apre (ignorato con l'intensità a 0; il comando /au talk funziona sempre)
	npcAlive = {
		autoOffer = true,
	},
	-- Story Arcs (S9): al massimo 1-2 archi attivi insieme. I singoli archi si sospendono, saltano o disattivano dal
	-- diario o con /au stories (stato per personaggio in cdb.arcs); tutti insieme con il modulo `storyArcs`.
	arcs = {
		maxActive = 2,
	},
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
		dialogue = {
			fontSize = 13,
			alpha = 0.92,        -- opacità dello sfondo, 0.3-1
			locked = false,      -- true: la finestra non si sposta
		},
	},
}

Config.characterDefaults = {
	memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} },
	-- Character Soul (S5): archetipo, scelte esplicite sui tratti e consenso a leggere i tratti da Total RP 3.
	-- Vuoto = profilo neutro. I valori dei tratti si controllano in Personality:Sanitize (modello Engine/Traits.lua).
	personality = { version = 1, archetype = "neutral", traits = {}, trp3 = false },
	-- Living Memory (S6): ricordi, luoghi e flag. La forma e le migrazioni interne sono in Systems/LivingMemory.lua
	memories = { version = 2, nextId = 1, entries = {}, places = {}, flags = {}, stats = {} },
	-- Relazioni (S6b): NPC per npcID e giocatori scelti dall'utente. Forma e pulizia in Systems/Relationships.lua
	relationships = { version = 1, npcs = {}, players = {} },
	-- Story Arcs (S9): lo stato di ogni arco; forma e migrazioni interne in Systems/StoryArcs.lua
	arcs = { version = 1, items = {}, stats = {} },
	history = {},
}

-- regole oltre al tipo, per percorso
Config.rules = {
	preset = { enum = { "complete", "personal", "world", "social", "custom" } },
	intensity = { min = 0, max = 100, integer = true },
	proseDepth = { enum = { "natural", "literary", "elevated" } },
	["arcs.maxActive"] = { min = 1, max = 2, integer = true },
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
	["ui.dialogue.fontSize"] = { min = 10, max = 24, integer = true },
	["ui.dialogue.alpha"] = { min = 0.3, max = 1 },
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
	complete = { personal = true, world = true, npc = true, memory = true, storyArcs = true, social = true, relations = true },
	personal = { personal = true, world = false, npc = false, memory = true, storyArcs = true, social = false, relations = true },
	world = { personal = false, world = true, npc = true, memory = true, storyArcs = false, social = false, relations = true },
	social = { personal = true, world = false, npc = false, memory = true, storyArcs = false, social = true, relations = true },
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

-- "itIT" -> "it", "de" -> "de"; nil se non ha la forma di un codice lingua
function Config:ShortLocale(v)
	if type(v) ~= "string" then return nil end
	if v:match("^[a-z][a-z]$") then return v end
	if v:match("^[a-z][a-z][A-Z][A-Z]$") then return v:sub(1, 2) end
	return nil
end

-- "itIT", "IT", "enUS" -> "it", "en" se la lingua è registrata
function Config:NormalizeLocale(v)
	if type(v) ~= "string" then return nil end
	if NS.languages[v] then return v end
	local short = NS.Lower(v:sub(1, 2))
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
			if path == "locale" then
				fixed = self:NormalizeLocale(v)
				-- una lingua che un pacchetto esterno registrerà dopo: si ricorda e si ripristina in RegisterLanguage
				if fixed == nil and type(v) == "string" then self.pendingLocale = self:ShortLocale(v) end
			end
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
		-- 3: nessun cambiamento alle impostazioni (versione allineata a quella del personaggio, che cambia con S5)
		[3] = function() end,
		-- 4: nessun cambiamento alle impostazioni (versione allineata a quella del personaggio, che cambia con S6)
		[4] = function() end,
		-- 5: nessun cambiamento alle impostazioni esistenti (le nuove, `relations` e il modulo, le aggiunge Merge)
		[5] = function() end,
		-- 6: nessun cambiamento alle impostazioni esistenti (la nuova sezione `arcs` la aggiunge Merge)
		[6] = function() end,
	},
	character = {
		[1] = function(db)
			if type(db.memory) ~= "table" then db.memory = nil end
		end,
		-- 2: nessun cambiamento ai dati del personaggio (versione allineata a quella globale)
		[2] = function() end,
		-- 3: personality (segnaposto vuoto fino a S4) diventa il profilo del Character Soul. Una tabella vuota o
		-- rovinata parte dal profilo neutro; i campi che mancano li aggiunge Merge, i valori dei tratti li ripulisce
		-- Personality:Sanitize all'avvio.
		[3] = function(db)
			local p = db.personality
			if type(p) ~= "table" then
				db.personality = nil
				return
			end
			if type(p.traits) ~= "table" then p.traits = nil end
			if type(p.archetype) ~= "string" then p.archetype = nil end
			if type(p.trp3) ~= "boolean" then p.trp3 = nil end
			p.version = 1
		end,
		-- 4: memories (segnaposto vuoto fino a S5) diventa la Living Memory. Una tabella vuota o rovinata riparte da zero;
		-- i campi che mancano li aggiunge Merge e le voci malformate le scarta LivingMemory:Sanitize all'avvio.
		[4] = function(db)
			local m = db.memories
			if type(m) ~= "table" then
				db.memories = nil
				return
			end
			if next(m) == nil then
				db.memories = nil
				return
			end
			if m.version == nil then m.version = 1 end
		end,
		-- 5: relationships (assente prima di S6b) nasce vuoto con Merge. Una tabella rovinata riparte da zero; le voci
		-- malformate le scarta Relationships:Sanitize all'avvio e i valori degli assi li riporta nei limiti.
		[5] = function(db)
			local r = db.relationships
			if r == nil then return end
			if type(r) ~= "table" then
				db.relationships = nil
				return
			end
			if type(r.npcs) ~= "table" then r.npcs = nil end
			if type(r.players) ~= "table" then r.players = nil end
			if type(r.version) ~= "number" then r.version = 1 end
		end,
		-- 6: arcs (segnaposto vuoto fino a S8) diventa lo stato dei Story Arcs. Una tabella vuota, rovinata o senza
		-- `items` riparte da zero con Merge; la forma interna la ripulisce StoryArcs:Sanitize all'avvio.
		[6] = function(db)
			local a = db.arcs
			if a == nil then return end
			if type(a) ~= "table" or next(a) == nil or type(a.items) ~= "table" then
				db.arcs = nil
				return
			end
			if type(a.version) ~= "number" then a.version = 1 end
		end,
	},
}

-- false se i dati vengono da una versione più nuova dell'addon (Load li usa su una copia, senza toccarli)
-- o se una migrazione fallisce
---Porta i dati alla versione corrente dello schema.
---@param db table
---@param kind "global"|"character"
---@return boolean ok false se i dati vengono da una versione più nuova o una migrazione fallisce
function Config:Migrate(db, kind)
	local current = self:SchemaOf(db)
	if current > self.SCHEMA_VERSION then
		NS.Diagnostics:Error("config", ("%s schemaVersion %s > %d"):format(kind, tostring(current), self.SCHEMA_VERSION))
		return false
	end
	for v = current + 1, self.SCHEMA_VERSION do
		local step = self.migrations[kind] and self.migrations[kind][v]
		if step and not NS.Diagnostics:Guard("migrate:" .. kind .. ":" .. v, step, db) then return false end
		db.schemaVersion = v
	end
	db.schemaVersion = self.SCHEMA_VERSION   -- anche quando non c'era nulla da fare (un valore non intero si normalizza)
	return true
end

---La versione dello schema di un file, come intero: un valore assente, non numerico, NaN o negativo conta 0 (file
---rovinato, riparte dalle migrazioni), uno frazionario si arrotonda per difetto (#51).
---@param db table
---@return number version
function Config:SchemaOf(db)
	local n = tonumber(db.schemaVersion)
	if not n or n ~= n or n < 0 then return 0 end
	return math.floor(n)
end

---@param db table
---@return boolean newer i dati sono stati scritti da una versione dell'addon più nuova di questa
function Config:IsNewerSchema(db)
	return self:SchemaOf(db) > self.SCHEMA_VERSION
end

-- Dati di uno schema più nuovo (ad esempio dopo un ritorno a una versione precedente dell'addon) non si
-- modificano: né migrazione, né Merge, né Validate, che riporterebbero al predefinito i valori che questa
-- versione non conosce. Si lavora su una copia, scartata a fine sessione; il file salvato resta com'era.
---Carica e prepara le impostazioni (NS.db) e i dati del personaggio (NS.cdb).
---@return AUSettings
function Config:Load()
	if type(AzerothUnspokenDB) ~= "table" then AzerothUnspokenDB = {} end
	if type(AzerothUnspokenCharacterDB) ~= "table" then AzerothUnspokenCharacterDB = {} end
	local g, c = AzerothUnspokenDB, AzerothUnspokenCharacterDB
	self.readOnly = { global = self:IsNewerSchema(g), character = self:IsNewerSchema(c) }
	self:Migrate(g, "global")   -- con dati più nuovi segnala in diagnostica e non cambia nulla
	self:Migrate(c, "character")

	local settings = g.settings
	if self.readOnly.global then
		settings = DeepCopy(type(settings) == "table" and settings or {})
	elseif type(settings) ~= "table" then
		settings = {}
		g.settings = settings
	end
	Config.Merge(self.defaults, settings)
	self.issues = self:Validate(settings)

	local char = c
	if self.readOnly.character then char = DeepCopy(c) end
	Config.Merge(self.characterDefaults, char)
	self:Validate(char, self.characterDefaults, "character", self.issues)

	NS.db, NS.cdb = settings, char
	return settings
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
