-- Azeroth Unspoken: avvio, spazio dei nomi, lingue dell'interfaccia, moduli
---@class AUNamespace
---@field name string
---@field version string
---@field db AUSettings impostazioni dell'account (AzerothUnspokenDB.settings)
---@field cdb table dati del personaggio (AzerothUnspokenCharacterDB)
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
else
	BINDING_NAME_AZEROTHUNSPOKEN_SPEAK = "Confirm and speak the proposed line (or improvise)"
	BINDING_NAME_AZEROTHUNSPOKEN_PAUSE = "Pause the narrator immediately (toggle)"
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
		table.insert(self.languageOrder, code)
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

-- lingua in uso: quella scelta, se è registrata; altrimenti l'italiano
function NS:Lang()
	local code = (self.db and self.db.locale) or "it"
	if self.languages[code] then return code end
	return "it"
end

-- testi dell'interfaccia nella lingua scelta, con ripiego sull'italiano
function NS:L(key, ...)
	local lang = self.languages[self:Lang()]
	local s = (lang and lang.ui[key]) or (self.languages.it and self.languages.it.ui[key]) or key
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
