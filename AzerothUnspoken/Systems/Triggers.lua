-- Azeroth Unspoken: eventi normalizzati -> eventi narrativi (battle, victory, zone...)
-- Probabilità e pause per evento vengono dal prototipo; lo step S4 le sostituisce col Narrative Director.
local ADDON, NS = ...
local Triggers = NS:RegisterModule("triggers")
NS.Triggers = Triggers

-- probabilità in percentuale che un evento automatico produca una frase
NS.DEFAULT_CHANCE = {
	battle = 35, victory = 30, lowhp = 60, death = 85, rez = 70, levelup = 100,
	zone = 40, attack = 8, heal = 15, buff = 25, travel = 60, rezother = 80,
}

-- secondi minimi tra due frasi dello stesso evento (oltre al cooldown globale)
NS.EVENT_COOLDOWN = {
	battle = 20, victory = 30, lowhp = 60, zone = 90, attack = 30, heal = 30,
	buff = 60, travel = 60,
}

-- eventi importanti che ignorano il cooldown globale
NS.BYPASS_GLOBAL = { death = true, rez = true, levelup = true, rezother = true }

-- Probabilità e pausa predefinite per un evento nuovo, definito da un pacchetto.
-- Da chiamare al caricamento; le scelte dell'utente (/au prob) restano prioritarie.
function NS:SetEventDefaults(event, chance, cooldown)
	if chance and not self.DEFAULT_CHANCE[event] then self.DEFAULT_CHANCE[event] = chance end
	if cooldown and not self.EVENT_COOLDOWN[event] then self.EVENT_COOLDOWN[event] = cooldown end
end

function NS:GetChance(event)
	return self.db.chance[event] or self.DEFAULT_CHANCE[event] or 30
end

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
	if not NS.BYPASS_GLOBAL[event] and now - lastSpoken < db.pacing.globalCooldownSeconds then return false end
	local cd = NS.EVENT_COOLDOWN[event]
	if cd and lastByEvent[event] and now - lastByEvent[event] < cd then return false end
	return math.random(100) <= NS:GetChance(event)
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

local function InCombat()
	return NS.Compat.SafeCall("UnitAffectingCombat", "player") and true or false
end

local handlers = {}

function handlers.WORLD_ENTER(env)
	lastZone = env.context.zone
	wasDead = env.context.deadOrGhost
end

function handlers.SPELL_SENT(env)
	local c = env.context
	if c.castGUID and c.target then sentTargets[c.castGUID] = c.target end
end

function handlers.SPELL_CAST(env)
	local c = env.context
	local target = c.castGUID and sentTargets[c.castGUID]
	if c.castGUID then sentTargets[c.castGUID] = nil end
	local name = c.spell
	if type(name) ~= "string" then return end
	local lower = name:lower()
	if SKIP[lower] or NS.db.ignored[lower] then return end

	local kind = NS:ClassifySpell(name)
	local inCombat = InCombat()
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

function handlers.COMBAT_START()
	combatStart = GetTime()
	lowHpDone = false
	-- un attimo di attesa perché il bersaglio sia aggiornato
	C_Timer.After(0.3, function()
		if InCombat() then Fire("battle") end
	end)
end

function handlers.COMBAT_END(env)
	local duration = combatStart and (GetTime() - combatStart) or 0
	combatStart = nil
	if duration >= 6 and not env.context.deadOrGhost then
		Fire("victory", { duration = duration })
	end
end

function handlers.HEALTH_CHANGED(env)
	local c = env.context
	-- salute nascosta dal client: nessuna decisione
	if lowHpDone or c.deadOrGhost or c.hp == nil then return end
	if c.hp < 0.3 then
		lowHpDone = true
		Fire("lowhp")
	end
end

function handlers.PLAYER_DEATH()
	wasDead = true
	Fire("death")
end

function handlers.PLAYER_REVIVE(env)
	if wasDead and not env.context.deadOrGhost then
		wasDead = false
		C_Timer.After(1.5, function() Fire("rez") end)
	end
end

function handlers.LEVEL_UP(env)
	C_Timer.After(1, function() Fire("levelup", { level = env.context.level }) end)
end

function handlers.ZONE_ENTER(env)
	local zone = env.context.zone
	if zone and zone ~= lastZone then
		lastZone = zone
		C_Timer.After(3, function()
			if not InCombat() then Fire("zone") end
		end)
	end
end

for eventType, fn in pairs(handlers) do
	NS.EventBus:Subscribe(eventType, "triggers", fn)
end

function Triggers:OnInit()
	NS.Engine:DecayMemory()
end
