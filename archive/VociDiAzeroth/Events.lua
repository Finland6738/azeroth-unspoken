-- Voci di Azeroth: eventi di gioco -> eventi narrativi
local ADDON, NS = ...

local frame = CreateFrame("Frame")
local lastSpoken = 0
local lastByEvent = {}
local combatStart, lowHpDone, wasDead, lastZone
local sentTargets = {}   -- [castGUID] = nome del bersaglio

-- incantesimi che non meritano mai una frase
local SKIP = {
	["auto shot"] = true, ["attack"] = true, ["shoot"] = true, ["tiro automatico"] = true,
	["attacco"] = true, ["tiro"] = true,
}

local function Allowed(event)
	local db = NS.db
	if not db.enabled then return false end
	local now = GetTime()
	if not NS.BYPASS_GLOBAL[event] and now - lastSpoken < db.cooldown then return false end
	local cd = NS.EVENT_COOLDOWN[event]
	if cd and lastByEvent[event] and now - lastByEvent[event] < cd then return false end
	local chance = db.chance[event] or NS.DEFAULT_CHANCE[event] or 30
	return math.random(100) <= chance
end

local function Fire(event, extra)
	if not Allowed(event) then return end
	local ctx = NS:BuildContext(extra)
	if NS:Perform(event, ctx, false) then
		lastSpoken = GetTime()
		lastByEvent[event] = lastSpoken
	end
end
NS.Fire = Fire

local handlers = {}

function handlers.ADDON_LOADED(name)
	if name ~= ADDON then return end
	NS:InitDB()
	NS.Engine:DecayMemory()
	if NS.InitUI then NS:InitUI() end
end

function handlers.PLAYER_ENTERING_WORLD()
	lastZone = GetRealZoneText()
	wasDead = UnitIsDeadOrGhost("player")
end

function handlers.UNIT_SPELLCAST_SENT(unit, target, castGUID)
	if unit == "player" and castGUID and target and target ~= "" then
		sentTargets[castGUID] = target
	end
end

function handlers.UNIT_SPELLCAST_SUCCEEDED(unit, castGUID, spellID)
	if unit ~= "player" then return end
	local target = castGUID and sentTargets[castGUID]
	if castGUID then sentTargets[castGUID] = nil end
	local name = spellID and C_Spell and C_Spell.GetSpellName and C_Spell.GetSpellName(spellID)
	if not name and GetSpellInfo then name = GetSpellInfo(spellID) end
	if not name or (issecretvalue and issecretvalue(name)) then return end
	local lower = name:lower()
	if SKIP[lower] or NS.db.ignored[lower] then return end

	local kind = NS:ClassifySpell(name)
	local inCombat = UnitAffectingCombat("player")
	local extra = { spell = name }
	if target then extra.target = target end
	local event
	if kind == "rez" then
		event = "rezother"
	elseif kind == "travel" then
		event = "travel"
	elseif kind == "heal" then
		event = "heal"
	elseif kind == "buff" and not inCombat then
		event = "buff"
	elseif kind and NS.Engine.byEvent[kind] then
		-- tipo di incantesimo definito da un pacchetto, con frasi proprie (es. "fishing")
		event = kind
	elseif inCombat then
		event = "attack"
	end
	-- incantesimi generici fuori combattimento (mestieri, oggetti...) restano muti
	if event then Fire(event, extra) end
end

function handlers.PLAYER_REGEN_DISABLED()
	combatStart = GetTime()
	lowHpDone = false
	-- un attimo di attesa perché il bersaglio sia aggiornato
	C_Timer.After(0.3, function()
		if UnitAffectingCombat("player") then Fire("battle") end
	end)
end

function handlers.PLAYER_REGEN_ENABLED()
	local duration = combatStart and (GetTime() - combatStart) or 0
	combatStart = nil
	if duration >= 6 and not UnitIsDeadOrGhost("player") then
		Fire("victory", { duration = duration })
	end
end

function handlers.UNIT_HEALTH(unit)
	if unit ~= "player" or lowHpDone or UnitIsDeadOrGhost("player") then return end
	local hp, max = UnitHealth("player"), UnitHealthMax("player")
	if issecretvalue and (issecretvalue(hp) or issecretvalue(max)) then return end
	if max > 0 and hp / max < 0.3 then
		lowHpDone = true
		Fire("lowhp")
	end
end

function handlers.PLAYER_DEAD()
	wasDead = true
	Fire("death")
end

local function CheckRevived()
	if wasDead and not UnitIsDeadOrGhost("player") then
		wasDead = false
		C_Timer.After(1.5, function() Fire("rez") end)
	end
end
handlers.PLAYER_ALIVE = CheckRevived
handlers.PLAYER_UNGHOST = CheckRevived

function handlers.PLAYER_LEVEL_UP(level)
	C_Timer.After(1, function() Fire("levelup", { level = level }) end)
end

function handlers.ZONE_CHANGED_NEW_AREA()
	local zone = GetRealZoneText()
	if zone and zone ~= "" and zone ~= lastZone then
		lastZone = zone
		C_Timer.After(3, function()
			if not UnitAffectingCombat("player") then Fire("zone") end
		end)
	end
end

frame:SetScript("OnEvent", function(_, event, ...)
	local h = handlers[event]
	if h then h(...) end
end)
for event in pairs(handlers) do
	if event == "UNIT_HEALTH" then
		frame:RegisterUnitEvent(event, "player")
	else
		frame:RegisterEvent(event)
	end
end
