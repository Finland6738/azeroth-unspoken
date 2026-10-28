-- Azeroth Unspoken: compatibilità con il client (WoW Forever, Interface 16001).
-- Ogni API passa da qui: se manca o è limitata, si spegne una funzione, non l'addon.
local ADDON, NS = ...
local Compat = {}
NS.Compat = Compat

local AVAILABLE, MISSING, RESTRICTED = "AVAILABLE", "MISSING", "RESTRICTED"
Compat.AVAILABLE, Compat.MISSING, Compat.RESTRICTED = AVAILABLE, MISSING, RESTRICTED

---------------------------------------------------------------------------
-- Matrice delle capacità: [id] = { id, group, state, detail }
---------------------------------------------------------------------------
Compat.caps = {}
Compat.capOrder = {}

function Compat:SetCap(id, group, state, detail)
	local c = self.caps[id]
	if not c then
		c = { id = id, group = group }
		self.caps[id] = c
		table.insert(self.capOrder, id)
	end
	c.state, c.detail = state, detail
	return state
end

function Compat:State(id)
	local c = self.caps[id]
	return c and c.state
end

function Compat:IsAvailable(id)
	return self:State(id) == AVAILABLE
end

-- "C_Spell.GetSpellName" -> valore globale, oppure nil
local function Resolve(path)
	local v = _G
	for part in path:gmatch("[^.]+") do
		if type(v) ~= "table" then return nil end
		v = v[part]
	end
	return v
end
Compat.Resolve = Resolve

---------------------------------------------------------------------------
-- Valori segreti: non si leggono, non si confrontano, non decidono nulla
---------------------------------------------------------------------------
function Compat.IsSecret(v)
	if v == nil then return false end
	local isSecret = issecretvalue
	if isSecret and isSecret(v) then return true end
	local canAccess = canaccessvalue
	if canAccess and not canAccess(v) then return true end
	if type(v) == "table" and issecrettable and issecrettable(v) then return true end
	return false
end
local IsSecret = Compat.IsSecret

-- il valore, oppure nil se il client lo nasconde
function Compat.Readable(v)
	if IsSecret(v) then return nil end
	return v
end

-- Chiama un'API in modo protetto. Restituisce lo stato e fino a quattro valori:
-- MISSING se la funzione non c'è, RESTRICTED se fallisce o se un risultato è segreto
-- (il risultato segreto diventa nil).
function Compat.Query(fn, ...)
	if type(fn) == "string" then fn = Resolve(fn) end
	if type(fn) ~= "function" then return MISSING end
	local ok, a, b, c, d = pcall(fn, ...)
	if not ok then return RESTRICTED, nil, nil, nil, nil, a end
	local state = AVAILABLE
	if IsSecret(a) then a = nil; state = RESTRICTED end
	if IsSecret(b) then b = nil; state = RESTRICTED end
	if IsSecret(c) then c = nil; state = RESTRICTED end
	if IsSecret(d) then d = nil; state = RESTRICTED end
	return state, a, b, c, d
end

-- come Query, senza lo stato
function Compat.SafeCall(fn, ...)
	local _, a, b, c, d = Compat.Query(fn, ...)
	return a, b, c, d
end

---------------------------------------------------------------------------
-- Versione del client
---------------------------------------------------------------------------
function Compat:GetBuildInfo()
	local version, build, date, interface = Compat.SafeCall("GetBuildInfo")
	local info = {
		version = version or "?", build = build or "?", date = date or "?",
		interface = tonumber(interface) or 0,
		projectID = WOW_PROJECT_ID,
		locale = Compat.SafeCall("GetLocale"),
	}
	info.isCamelot = WOW_PROJECT_CAMELOT ~= nil and WOW_PROJECT_ID == WOW_PROJECT_CAMELOT
	-- stesso criterio di DetailsFramework.IsForeverWow: Interface 16001-19999
	info.isForever = info.isCamelot or (info.interface >= 16001 and info.interface < 20000)
	self.build = info
	return info
end

---------------------------------------------------------------------------
-- Eventi: in alcuni client registrare un evento inesistente solleva un errore
---------------------------------------------------------------------------
-- true/false se il client sa rispondere, nil se non c'è modo di saperlo
function Compat:IsEventValid(event)
	local check = C_EventUtils and C_EventUtils.IsEventValid
	if not check then return nil end
	local ok, valid = pcall(check, event)
	if not ok then return nil end
	return valid and true or false
end

-- unit facoltativo: usa RegisterUnitEvent (es. "player")
function Compat:RegisterEvent(frame, event, unit)
	local id = "event:" .. event
	local valid = self:IsEventValid(event)
	if valid == false then
		self:SetCap(id, "event", MISSING, "IsEventValid = false")
		return false
	end
	local ok, res
	if unit and frame.RegisterUnitEvent then
		ok, res = pcall(frame.RegisterUnitEvent, frame, event, unit)
	else
		ok, res = pcall(frame.RegisterEvent, frame, event)
	end
	if not ok or res == false then
		self:SetCap(id, "event", MISSING, ok and "RegisterEvent = false" or tostring(res))
		return false
	end
	self:SetCap(id, "event", AVAILABLE, valid and "IsEventValid" or "registered")
	return true
end

---------------------------------------------------------------------------
-- Restrizioni del client (combattimento, incontri, PvP...)
---------------------------------------------------------------------------
Compat.RESTRICTION_TYPES = { "Combat", "Encounter", "ChallengeMode", "PvPMatch", "Map" }

-- numero di stato (0 = libero), oppure nil se il client non lo dice
function Compat:RestrictionState(kind)
	local get = C_RestrictedActions and C_RestrictedActions.GetAddOnRestrictionState
	local types = Enum and Enum.AddOnRestrictionType
	local value = types and types[kind]
	if not get or value == nil then return nil end
	local ok, state = pcall(get, value)
	if ok and type(state) == "number" and not IsSecret(state) then return state end
	return nil
end

function Compat:IsRestricted(kind)
	local state = self:RestrictionState(kind)
	return state ~= nil and state > 0
end

-- la prima restrizione attiva, o nil
function Compat:ActiveRestriction()
	for _, kind in ipairs(self.RESTRICTION_TYPES) do
		if self:IsRestricted(kind) then return kind end
	end
	return nil
end

-- l'identità di un'unità (nome, GUID...) è nascosta agli addon?
function Compat:IsUnitIdentitySecret(unit)
	local check = C_Secrets and C_Secrets.ShouldUnitIdentityBeSecret
	if not check then return false end
	local ok, secret = pcall(check, unit)
	return ok and secret == true
end

---------------------------------------------------------------------------
-- Chat
---------------------------------------------------------------------------
function Compat:GetChatSender()
	return (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
end

function Compat:InChatLockdown()
	local check = C_ChatInfo and C_ChatInfo.InChatMessagingLockdown
	if not check then return false end
	local ok, locked = pcall(check)
	return ok and locked == true
end

function Compat:GetSpellName(spellID)
	if spellID == nil or IsSecret(spellID) then return nil end
	local name = Compat.SafeCall(C_Spell and C_Spell.GetSpellName, spellID)
	if not name then name = Compat.SafeCall(GetSpellInfo, spellID) end
	return name
end

---------------------------------------------------------------------------
-- Controllo delle capacità (SP-01/SP-02): si ripete con /au debug
---------------------------------------------------------------------------
-- { id, percorso principale, alternativa }
local APIS = {
	{ "GetBuildInfo" }, { "C_EventUtils.IsEventValid" },
	{ "issecretvalue" }, { "canaccessvalue" }, { "issecrettable" },
	{ "C_Secrets.ShouldUnitIdentityBeSecret" }, { "C_RestrictedActions.GetAddOnRestrictionState" },
	{ "SendChatMessage", "C_ChatInfo.SendChatMessage", "SendChatMessage" },
	{ "C_ChatInfo.InChatMessagingLockdown" },
	{ "GetSpellName", "C_Spell.GetSpellName", "GetSpellInfo" },
	{ "C_Timer.After" }, { "C_Timer.NewTicker" },
	{ "SettingsPanel", "Settings.RegisterCanvasLayoutCategory", "InterfaceOptions_AddCategory" },
	{ "UnitGUID" }, { "UnitHealth" }, { "UnitCreatureType" }, { "UnitClassification" },
	{ "GetRealZoneText" }, { "GetSubZoneText" }, { "C_Map.GetBestMapForUnit" },
	{ "GetGameTime" }, { "IsInInstance" }, { "C_GossipInfo.GetText" },
}

function Compat:Probe()
	local b = self:GetBuildInfo()
	self:SetCap("client:forever", "client", b.isForever and AVAILABLE or MISSING,
		("Interface %d, WOW_PROJECT_ID %s"):format(b.interface, tostring(b.projectID)))

	for _, def in ipairs(APIS) do
		local id, main, alt = def[1], def[2] or def[1], def[3]
		if type(Resolve(main)) == "function" then
			self:SetCap("api:" .. id, "api", AVAILABLE, main)
		elseif alt and type(Resolve(alt)) == "function" then
			self:SetCap("api:" .. id, "api", AVAILABLE, alt)
		else
			self:SetCap("api:" .. id, "api", MISSING, main)
		end
	end

	-- valori letti adesso: RESTRICTED se il client li nasconde
	local function Value(id, fn, ...)
		local state, _, _, _, _, err = Compat.Query(fn, ...)
		self:SetCap("value:" .. id, "value", state, err and tostring(err) or nil)
	end
	Value("player.health", "UnitHealth", "player")
	Value("player.healthMax", "UnitHealthMax", "player")
	Value("player.level", "UnitLevel", "player")
	Value("zone", "GetRealZoneText")
	Value("subzone", "GetSubZoneText")
	Value("mapID", C_Map and C_Map.GetBestMapForUnit, "player")
	if UnitExists and UnitExists("target") then
		if self:IsUnitIdentitySecret("target") then
			self:SetCap("value:target.identity", "value", RESTRICTED, "C_Secrets")
		else
			Value("target.identity", "UnitName", "target")
		end
	else
		self:SetCap("value:target.identity", "value", MISSING, "no target now")
	end

	for _, kind in ipairs(self.RESTRICTION_TYPES) do
		local state = self:RestrictionState(kind)
		if state == nil then
			self:SetCap("restriction:" .. kind, "restriction", MISSING, nil)
		else
			self:SetCap("restriction:" .. kind, "restriction", state > 0 and RESTRICTED or AVAILABLE, "state " .. state)
		end
	end

	-- /say e /yell fuori dalle istanze richiedono un'azione del giocatore: limitati per definizione
	local sender = self:GetChatSender()
	self:SetCap("chat:send", "chat", sender and AVAILABLE or MISSING, nil)
	self:SetCap("chat:say.openWorld", "chat", RESTRICTED, "needs a key press or click")
	self:SetCap("chat:lockdown", "chat", self:InChatLockdown() and RESTRICTED or AVAILABLE, nil)

	if NS.TotalRP3 then NS.TotalRP3:Probe() end
	return self.caps
end
