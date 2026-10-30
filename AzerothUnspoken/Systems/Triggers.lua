-- Azeroth Unspoken: eventi normalizzati -> eventi narrativi (battle, victory, zone...)
-- Ogni evento narrativo diventa un candidato del Narrative Director (Systems/Director.lua), che decide se e
-- quale parla. Qui restano le probabilità e le pause proprie di ogni evento, lette dal Director.
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

-- eventi importanti (priorità "evento eccezionale" del Narrative Director): saltano pausa globale e budget
NS.BYPASS_GLOBAL = { death = true, rez = true, levelup = true, rezother = true }

-- Probabilità e pausa predefinite per un evento nuovo, definito da un pacchetto.
-- Da chiamare al caricamento; le scelte dell'utente (/au chance) restano prioritarie.
function NS:SetEventDefaults(event, chance, cooldown)
	if chance and not self.DEFAULT_CHANCE[event] then self.DEFAULT_CHANCE[event] = chance end
	if cooldown and not self.EVENT_COOLDOWN[event] then self.EVENT_COOLDOWN[event] = cooldown end
end

function NS:GetChance(event)
	return self.db.chance[event] or self.DEFAULT_CHANCE[event] or 30
end

local combatStart, lowHpDone, wasDead, lastZone
local sentTargets = {}   -- [castGUID] = nome del bersaglio
local sentCount = 0
local MAX_SENT = 16      -- lanci in attesa di esito: i falliti o interrotti non devono accumularsi (issue #9)

-- incantesimi che non meritano mai una frase
local SKIP = {
	["auto shot"] = true, ["attack"] = true, ["shoot"] = true, ["tiro automatico"] = true,
	["attacco"] = true, ["tiro"] = true,
}

-- Ogni evento narrativo spontaneo è un candidato del Narrative Director: gate, priorità, pacing e dado sono suoi.
local function Fire(event, extra)
	NS.Director:Offer(event, extra)
end
NS.Fire = Fire

local function InCombat()
	return NS.Compat.SafeCall("UnitAffectingCombat", "player") and true or false
end

local handlers = {}

function handlers.WORLD_ENTER(env)
	local c = env.context
	local changed = c.zone ~= nil and c.zone ~= lastZone and not (c.isLogin or c.isReload)
	lastZone = c.zone
	wasDead = c.deadOrGhost
	-- dopo una schermata di caricamento la zona nuova va offerta anche se ZONE_CHANGED_NEW_AREA arriva prima o non
	-- arriva (#47): lastZone evita il doppione quando arriva dopo. All'accesso e dopo una ricarica no.
	if changed then
		C_Timer.After(3, function()
			if not InCombat() then Fire("zone") end
		end)
	end
end

-- lanci in attesa di esito (per i test e la diagnostica)
---@return integer
function Triggers:PendingCasts() return sentCount end

local function ForgetSent(castGUID)
	if castGUID and sentTargets[castGUID] ~= nil then
		sentTargets[castGUID] = nil
		sentCount = sentCount - 1
	end
end

function handlers.SPELL_SENT(env)
	local c = env.context
	if not (c.castGUID and c.target) then return end
	-- se troppi lanci non hanno mai avuto un esito (falliti, interrotti), si riparte da zero: contano solo gli ultimi
	if sentTargets[c.castGUID] == nil then
		if sentCount >= MAX_SENT then sentTargets, sentCount = {}, 0 end
		sentCount = sentCount + 1
	end
	sentTargets[c.castGUID] = c.target
end

function handlers.SPELL_CAST(env)
	local c = env.context
	local target = c.castGUID and sentTargets[c.castGUID]
	ForgetSent(c.castGUID)
	local name = c.spell
	if type(name) ~= "string" then return end
	local lower = NS.Lower(name)
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
