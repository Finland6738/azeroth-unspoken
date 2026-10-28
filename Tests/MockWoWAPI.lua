-- finta API di WoW per provare l'addon fuori dal gioco (WoW Forever, Interface 16001)
SENT = {}
P = {   -- stato del giocatore, modificabile dai test
	name = "Garrosh", class = "WARRIOR", race = "Orc", faction = "Horde", sex = 2, level = 30,
	hp = 100, hpMax = 100, combat = false, zone = "Durotar", subzone = "", hour = 14,
	instance = false, target = nil, dead = false,
}
local now = 1000
function GetTime() return now end
function ADVANCE(s) now = now + s; FAKE_EPOCH = FAKE_EPOCH + s end
FAKE_EPOCH = 1700000000
time = function() return FAKE_EPOCH end

-- versione del client
WOW_PROJECT_MAINLINE, WOW_PROJECT_CLASSIC, WOW_PROJECT_CAMELOT = 1, 2, 14
WOW_PROJECT_ID = WOW_PROJECT_CAMELOT
function GetBuildInfo() return "1.60.1", "70658", "Oct 1 2026", 16001 end
function GetLocale() return "enUS" end

-- valori segreti: MakeSecret() crea un valore che l'addon non deve leggere
SECRET_SET = setmetatable({}, { __mode = "k" })
function MakeSecret()
	local v = setmetatable({}, { __tostring = function() return "<secret>" end })
	SECRET_SET[v] = true
	return v
end
function issecretvalue(v) return SECRET_SET[v] == true end
function canaccessvalue(v) return SECRET_SET[v] ~= true end
function issecrettable(v) return SECRET_SET[v] == true end
SECRET_UNITS = {}
C_Secrets = { ShouldUnitIdentityBeSecret = function(unit) return SECRET_UNITS[unit] == true end }

-- restrizioni del client: RESTRICTIONS.Combat = 1 attiva quella del combattimento
Enum = { AddOnRestrictionType = { Combat = 0, Encounter = 1, ChallengeMode = 2, PvPMatch = 3, Map = 4 } }
RESTRICTIONS = {}
C_RestrictedActions = { GetAddOnRestrictionState = function(t)
	for name, v in pairs(Enum.AddOnRestrictionType) do
		if v == t then return RESTRICTIONS[name] or 0 end
	end
	error("bad restriction type")
end }

-- eventi esistenti: registrarne uno sconosciuto solleva un errore, come in alcuni client
VALID_EVENTS = {}
for _, e in ipairs({ "ADDON_LOADED", "PLAYER_LOGIN", "PLAYER_ENTERING_WORLD", "ZONE_CHANGED_NEW_AREA",
	"PLAYER_REGEN_DISABLED", "PLAYER_REGEN_ENABLED", "UNIT_HEALTH", "PLAYER_DEAD", "PLAYER_ALIVE",
	"PLAYER_UNGHOST", "PLAYER_LEVEL_UP", "PLAYER_TARGET_CHANGED", "UNIT_SPELLCAST_SENT",
	"UNIT_SPELLCAST_SUCCEEDED", "ADDON_RESTRICTION_STATE_CHANGED" }) do
	VALID_EVENTS[e] = true
end
C_EventUtils = { IsEventValid = function(e) return VALID_EVENTS[e] == true end }

function UnitName(u) if u == "player" then return P.name end return P.target and P.target.name end
function UnitClass(u) if u == "player" then return P.class:lower(), P.class end return P.target.class, P.target.class end
function UnitRace(u) if u == "player" then return P.race, P.race end return P.target.race, P.target.race end
function UnitFactionGroup(u) if u == "player" then return P.faction end return P.target and P.target.faction end
function UnitSex() return P.sex end
function UnitLevel(u) if u == "player" then return P.level end return P.target and P.target.level end
function UnitHealth() return P.hp end
function UnitHealthMax() return P.hpMax end
function UnitAffectingCombat() return P.combat end
function InCombatLockdown() return P.combat end
function UnitIsDeadOrGhost() return P.dead end
function UnitIsGhost() return false end
function UnitIsDead() return false end
function IsResting() return P.resting or false end
function IsIndoors() return false end
function IsMounted() return false end
function IsSwimming() return false end
function IsStealthed() return false end
function IsInInstance() return P.instance, P.instance and "party" or "none" end
function IsInRaid() return false end
function IsInGroup() return P.group or false end
function GetRealZoneText() return P.zone end
function GetZoneText() return P.zone end
function GetSubZoneText() return P.subzone end
function GetGameTime() return P.hour, 0 end
function UnitExists(u) return u == "target" and P.target ~= nil end
function UnitIsPlayer() return P.target and P.target.player or false end
function UnitCanAttack() return P.target and P.target.hostile or false end
function UnitCreatureType() return P.target and P.target.ctype end
function UnitClassification() return P.target and P.target.cls or "normal" end
function UnitGUID(u) return u == "player" and "Player-1-00000001" or nil end
C_Spell = { GetSpellName = function(id) return SPELLS[id] end }
SPELLS = {}
C_Timer = { After = function(_, f) f() end, NewTicker = function() end }
CHAT_LOCKDOWN = false
C_ChatInfo = {
	SendChatMessage = function(text, kind)
		if kind == "SAY" and not P.instance and not HW then error("ADDON_ACTION_FORBIDDEN") end
		table.insert(SENT, kind .. ": " .. text)
	end,
	InChatMessagingLockdown = function() return CHAT_LOCKDOWN end,
}
DEFAULT_CHAT_FRAME = { AddMessage = function(_, m) table.insert(SENT, "PRINT: " .. m) end }
local frames = {}
-- oggetto che accetta qualunque metodo (texture, font, pulsanti...)
local Any
local anyMeta = { __index = function() return function() return Any() end end }
Any = function() return setmetatable({}, anyMeta) end
UIParent = Any(); GameTooltip = Any()
function CreateFrame()
	local f = setmetatable({ scripts = {}, events = {} }, anyMeta)
	function f:RegisterEvent(e)
		if not VALID_EVENTS[e] then error("Attempt to register unknown event \"" .. tostring(e) .. "\"") end
		self.events[e] = true
		return true
	end
	function f:RegisterUnitEvent(e) return self:RegisterEvent(e) end
	function f:UnregisterEvent(e) self.events[e] = nil end
	function f:SetScript(k, fn) self.scripts[k] = fn end
	table.insert(frames, f)
	return f
end
function FIRE(event, ...)
	for _, f in ipairs(frames) do
		if f.events and f.events[event] and f.scripts.OnEvent then f.scripts.OnEvent(f, event, ...) end
	end
end
SlashCmdList = {}

-- piccolo framework per i test in Lua (Tests/Test*.lua)
T = { passed = 0, failed = 0, failures = {} }
function T.ok(cond, msg)
	if cond then
		T.passed = T.passed + 1
	else
		T.failed = T.failed + 1
		table.insert(T.failures, (T.current or "?") .. ": " .. tostring(msg or "condizione falsa"))
	end
end
function T.eq(actual, expected, msg)
	T.ok(actual == expected, (msg or "") .. " (atteso " .. tostring(expected) .. ", ottenuto " .. tostring(actual) .. ")")
end
function T.run(name, fn)
	T.current = name
	local ok, err = pcall(fn)
	if not ok then
		T.failed = T.failed + 1
		table.insert(T.failures, name .. ": errore " .. tostring(err))
	end
	T.current = nil
end
function T.sentContains(text)
	for _, s in ipairs(SENT) do
		if s:find(text, 1, true) then return true end
	end
	return false
end
