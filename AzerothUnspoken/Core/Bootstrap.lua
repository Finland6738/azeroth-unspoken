-- Azeroth Unspoken: avvio, spazio dei nomi, lingue dell'interfaccia, moduli
---@class AUNamespace
---@field name string
---@field version string
---@field db AUSettings impostazioni dell'account (AzerothUnspokenDB.settings)
---@field cdb table dati del personaggio (AzerothUnspokenCharacterDB)
---@field gdb? table account-level data (AzerothUnspokenDB: settings and sharedPlayers); nil when it comes from a newer schema
---@field paused boolean pausa immediata del narratore, solo di sessione
---@field Config AUConfig
---@field Gateway AUChatGateway
---@field Narrator AUNarrator
---@field Director table
---@field Engine table
---@field Compat table
---@field Diagnostics table
---@field EventBus table
---@field Widgets table
---@field Wizard table
local ADDON, NS = ...
NS.name = "Azeroth Unspoken"
NS.version = "0.1.0"
AzerothUnspoken = NS     -- API pubblica per i pacchetti di frasi, le macro e il debug

BINDING_HEADER_AZEROTHUNSPOKEN = "Azeroth Unspoken"
-- nomi dei tasti: la schermata dei comandi si legge prima che l'utente scelga la lingua dell'addon
if GetLocale and GetLocale() == "itIT" then
	BINDING_NAME_AZEROTHUNSPOKEN_SPEAK = "Conferma e pronuncia la frase proposta (o improvvisa)"
	BINDING_NAME_AZEROTHUNSPOKEN_PAUSE = "Pausa immediata del narratore (attiva/disattiva)"
	BINDING_NAME_AZEROTHUNSPOKEN_REROLL = "Cambia la frase proposta con un'altra"
	BINDING_NAME_AZEROTHUNSPOKEN_NPC = "Dialogo ambientale con l'NPC (apri/chiudi)"
else
	BINDING_NAME_AZEROTHUNSPOKEN_SPEAK = "Confirm and speak the proposed line (or improvise)"
	BINDING_NAME_AZEROTHUNSPOKEN_PAUSE = "Pause the narrator immediately (toggle)"
	BINDING_NAME_AZEROTHUNSPOKEN_REROLL = "Swap the proposed line for another one"
	BINDING_NAME_AZEROTHUNSPOKEN_NPC = "Ambient dialogue with the NPC (open/close)"
end

---------------------------------------------------------------------------
-- Minuscole e maiuscole sicure per il testo UTF-8
---------------------------------------------------------------------------
-- string.lower/upper usano le impostazioni locali del processo: con alcune di esse alterano i byte delle lettere
-- accentate (UTF-8). Queste versioni trattano solo le lettere ASCII e le lettere accentate del blocco Latin-1
-- (À-Þ, à-þ), che in UTF-8 sono il byte 195 seguito da un secondo byte: niente dipende dalle impostazioni locali.
local LOWER, UPPER = {}, {}
for i = 0, 25 do
	LOWER[string.char(65 + i)] = string.char(97 + i)
	UPPER[string.char(97 + i)] = string.char(65 + i)
end

local function LowerText(s)
	s = tostring(s):gsub("[A-Z]", LOWER)
	-- À-Þ (195 128-158) -> à-þ (195 160-190), tranne × (195 151)
	return (s:gsub("\195([\128-\158])", function(c)
		if c == "\151" then return nil end
		return "\195" .. string.char(c:byte() + 32)
	end))
end

-- Le condizioni confrontano in minuscolo a ogni scelta le stesse poche stringhe (zone, classi, nomi): i risultati si
-- ricordano (#83). Il ricordo ha un tetto e si svuota quando lo raggiunge; un valore segreto non entra mai.
local lowerCache, lowerCount, LOWER_CACHE_MAX = {}, 0, 4096

---Minuscole indipendenti dalle impostazioni locali (ASCII e Latin-1 accentato); il resto resta com'è.
---@param s any
---@return string
function NS.Lower(s)
	if type(s) ~= "string" or (issecretvalue and issecretvalue(s)) then return LowerText(s) end
	local low = lowerCache[s]
	if low then return low end
	low = LowerText(s)
	if lowerCount >= LOWER_CACHE_MAX then lowerCache, lowerCount = {}, 0 end
	lowerCache[s], lowerCount = low, lowerCount + 1
	return low
end

---Maiuscole indipendenti dalle impostazioni locali (ASCII e Latin-1 accentato); il resto resta com'è.
---@param s any
---@return string
function NS.Upper(s)
	s = tostring(s):gsub("[a-z]", UPPER)
	-- à-þ (195 160-190) -> À-Þ, tranne ÷ (195 183)
	return (s:gsub("\195([\160-\190])", function(c)
		if c == "\183" then return nil end
		return "\195" .. string.char(c:byte() - 32)
	end))
end

---------------------------------------------------------------------------
-- Lingue
---------------------------------------------------------------------------
NS.languages = {}      -- [codice] = { name = "Italiano", ui = { ... } }
NS.languageOrder = {}

-- Registra una lingua (o aggiunge testi d'interfaccia a una esistente).
-- Il codice è quello di due lettere usato nei pacchetti: "it", "en", "de"...
function NS:RegisterLanguage(code, info)
	local lang = self.languages[code]
	if not lang then
		lang = { name = code, ui = {} }
		self.languages[code] = lang
		-- l'inglese è sempre la prima scelta (procedura guidata, pannello); le altre seguono nell'ordine di registrazione
		table.insert(self.languageOrder, code == "en" and 1 or (#self.languageOrder + 1), code)
	end
	if info.name then lang.name = info.name end
	for k, v in pairs(info.ui or {}) do lang.ui[k] = v end
	-- la lingua scelta in una sessione precedente, registrata solo ora da un pacchetto esterno
	local Config = self.Config
	if Config and Config.pendingLocale == code and self.db then
		self.db.locale = code
		Config.pendingLocale = nil
	end
end

-- lingua in uso: quella scelta, se è registrata; altrimenti l'inglese
function NS:Lang()
	local code = (self.db and self.db.locale) or "en"
	if self.languages[code] then return code end
	return "en"
end

-- Language of the phrase texts (#85): the chosen one when its language pack is loaded; after a change of language,
-- until /reload, the one loaded at start-up (Core/Packs.lua). The interface follows NS:Lang() at once.
function NS:TextLang()
	if self.Packs then return self.Packs:TextLang() end
	return self:Lang()
end

-- testi dell'interfaccia nella lingua scelta, con ripiego sull'inglese (la lingua di base)
function NS:L(key, ...)
	local lang = self.languages[self:Lang()]
	local s = (lang and lang.ui[key]) or (self.languages.en and self.languages.en.ui[key]) or key
	if select("#", ...) > 0 then return s:format(...) end
	return s
end

function NS:Print(msg)
	DEFAULT_CHAT_FRAME:AddMessage("|cffb48cffAzeroth Unspoken|r: " .. tostring(msg))
end

---------------------------------------------------------------------------
-- Moduli: ognuno si inizializza in modo isolato, un errore non ferma gli altri
---------------------------------------------------------------------------
NS.modules = {}
NS.moduleOrder = {}

function NS:RegisterModule(name, module)
	module = module or {}
	module.moduleName = name
	self.modules[name] = module
	table.insert(self.moduleOrder, name)
	return module
end

function NS:Initialize()
	if self.initialized then return end
	self.initialized = true
	self.Config:Load()
	self.Compat:Probe()
	self.EventBus:Start()
	for _, name in ipairs(self.moduleOrder) do
		local m = self.modules[name]
		if m.OnInit then
			self.Diagnostics:Guard("init:" .. name, m.OnInit, m)
		end
	end
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:SetScript("OnEvent", function(self, _, name)
	if name ~= ADDON then return end
	self:UnregisterEvent("ADDON_LOADED")
	NS:Initialize()
end)
