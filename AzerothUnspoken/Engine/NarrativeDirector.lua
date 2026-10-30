-- Azeroth Unspoken: Narrative Director, le decisioni su "se e quando parlare" (GDD §4.2, §6 passo 5, §10).
-- Qui ci sono solo decisioni, senza uscita: il gate di opportunità, le priorità, la sospensione e l'ordine dei
-- candidati. Systems/Director.lua le usa per gli eventi spontanei e passa la frase al Chat Gateway.
-- Il silenzio è un esito valido: ogni controllo che non passa restituisce un motivo e nessuna frase.
local ADDON, NS = ...
local Engine = NS.Engine
local Pacing = NS.Pacing

---@class AUVerdict
---@field allow boolean
---@field reason? string disabled | paused | module:<nome> | silent | screen:<nome> | busy | moment | cooldown:<tipo> | budget:<categoria> | quota:<categoria>
---@field chanceMul? number moltiplicatore della probabilità dell'evento
---@field cooldownMul? number moltiplicatore delle pause
---@field hunger? number hunger of the category (#91): already in chanceMul
---@field priority integer
---@field category string

---@class AUNarrativeDirector
local ND = {}
NS.NarrativeDirector = ND
Engine.NarrativeDirector = ND

-- Priorità degli interventi (GDD §10): scelta esplicita > dialogo volontario > evento eccezionale >
-- richiamo di memoria > atmosfera ordinaria.
ND.PRIORITY = { explicit = 5, dialogue = 4, exceptional = 3, memory = 2, ambient = 1 }

-- Priorità degli eventi spontanei. Gli eventi assenti sono atmosfera ordinaria.
-- I dialoghi sociali oggi partono solo da comandi (esplicito); se un sistema futuro li lancerà da solo
-- (S8, S10) varranno come dialogo volontario. S6 registra qui i richiami di memoria (NS:SetEventPriority).
ND.EVENT_PRIORITY = {
	death = ND.PRIORITY.exceptional, rez = ND.PRIORITY.exceptional, levelup = ND.PRIORITY.exceptional,
	rezother = ND.PRIORITY.exceptional,
	greet = ND.PRIORITY.dialogue, farewell = ND.PRIORITY.dialogue, toast = ND.PRIORITY.dialogue,
	thanks = ND.PRIORITY.dialogue, jest = ND.PRIORITY.dialogue,
}

-- modulo del GDD §4.1 a cui appartiene ogni evento spontaneo (predefinito: personal)
ND.EVENT_MODULE = { zone = "world", travel = "world" }

---Priorità di un evento.
---@param event string
---@return integer
function ND:Priority(event)
	local p = self.EVENT_PRIORITY[event]
	if p then return p end
	if NS.BYPASS_GLOBAL and NS.BYPASS_GLOBAL[event] then return self.PRIORITY.exceptional end
	return self.PRIORITY.ambient
end

---Priorità di un evento definito da un pacchetto o da un sistema: un numero 1-5 o un nome di ND.PRIORITY.
---@param event string
---@param level integer|string
function NS:SetEventPriority(event, level)
	if type(level) == "string" then level = ND.PRIORITY[level] end
	if type(event) == "string" and type(level) == "number" then
		ND.EVENT_PRIORITY[event] = math.max(1, math.min(5, math.floor(level)))
	end
end

---------------------------------------------------------------------------
-- Gate di opportunità guidato dall'intensità (GDD §4.2)
---------------------------------------------------------------------------
-- 50 = valori di base, 0 = silenzio, 100 = probabilità doppia e pause dimezzate.
---@param intensity number 0-100
---@return number chanceMul
---@return number cooldownMul
function ND:Scale(intensity)
	intensity = math.max(0, math.min(100, tonumber(intensity) or 50))
	return intensity / 50, 1.5 - intensity / 100
end

-- Agganci del ritmo per gli step futuri: fn(event, ctx) -> chanceMul, cooldownMul (moltiplicatori).
-- S6c li usa per il tipo di istanza (più sobrio in raid, più spazio nel mondo aperto e nelle locande).
---@type table<string, fun(event: string, ctx: table): number?, number?>
ND.rhythm = {}

---@param name string
---@param fn? fun(event: string, ctx: table): number?, number?
function ND:SetRhythm(name, fn)
	self.rhythm[name] = fn
end

---------------------------------------------------------------------------
-- Sospensione: combattimento impegnativo e schermate invasive (GDD §4.2, §15.2)
---------------------------------------------------------------------------
-- Controlli aggiuntivi dell'impegno: fn(ctx) -> true se il momento è impegnativo (S6c: scontro con un boss).
---@type table<string, fun(ctx: table): boolean?>
ND.demand = {}

---@param name string
---@param fn? fun(ctx: table): boolean?
function ND:SetDemandCheck(name, fn)
	self.demand[name] = fn
end

---Il combattimento è impegnativo? Boss, raid, élite in istanza, o un controllo aggiunto.
---Usa solo il contesto già letto (nessun valore segreto: un dato illeggibile vale "non lo so", cioè no).
---@param ctx? table
---@return boolean
function ND:HighDemand(ctx)
	if not ctx or not ctx.combat then return false end
	if ctx.boss or ctx.instanceType == "raid" or (ctx.elite and ctx.instance) then return true end
	for name, fn in pairs(self.demand) do
		local ok, busy = pcall(fn, ctx)
		if ok and busy == true then return true end
		if not ok and NS.Diagnostics then NS.Diagnostics:Error("demand:" .. name, busy) end
	end
	return false
end

---Il gate completo di un evento spontaneo. Non tira il dado: vedi ND:Roll.
---@param event string
---@param ctx? table contesto di NS:BuildContext; senza, i controlli che lo richiedono sono saltati
---@param now? number GetTime()
---@return AUVerdict
function ND:Gate(event, ctx, now)
	now = now or GetTime()
	local priority = self:Priority(event)
	local category = Engine.EventCategory(event) or "general"
	local function No(reason)
		return { allow = false, reason = reason, priority = priority, category = category }
	end

	local db = NS.db
	if not db or not db.enabled then return No("disabled") end
	if NS.paused then return No("paused") end
	local module = self.EVENT_MODULE[event] or "personal"
	if db.modules[module] == false then return No("module:" .. module) end
	if db.intensity <= 0 then return No("silent") end

	local screen = NS.Compat:InvasiveScreen()
	if screen then return No("screen:" .. screen) end
	local important = priority >= self.PRIORITY.exceptional
	if db.pacing.suppressInHighDemand ~= false and not important and self:HighDemand(ctx) then return No("busy") end

	local chanceMul, cooldownMul = self:Scale(db.intensity)
	-- i momenti importanti non diventano più rari sotto il valore medio
	if important then chanceMul = math.max(chanceMul, 1) end
	if ctx then
		for name, fn in pairs(self.rhythm) do
			local ok, c, d = pcall(fn, event, ctx)
			if ok then
				if type(c) == "number" and c >= 0 then chanceMul = chanceMul * c end
				if type(d) == "number" and d >= 0 then cooldownMul = cooldownMul * d end
			elseif NS.Diagnostics then
				NS.Diagnostics:Error("rhythm:" .. name, c)
			end
		end
	end

	local ok, why = Pacing:Check({ event = event, category = category, cooldownMul = cooldownMul,
		important = important, intensity = db.intensity, now = now })
	if not ok then return No(why) end
	-- #91: a category silent for a while is more likely to speak (never above 100%, see Roll)
	local hunger = Pacing:Hunger(category, now)
	chanceMul = chanceMul * hunger
	return { allow = true, chanceMul = chanceMul, cooldownMul = cooldownMul, priority = priority, category = category,
		hunger = hunger }
end

---Il dado dell'opportunità: probabilità dell'evento (NS:GetChance, in %) per il moltiplicatore dell'intensità.
---@param event string
---@param verdict AUVerdict
---@return boolean
function ND:Roll(event, verdict)
	if not verdict.allow then return false end
	local chance = math.min(100, (NS.GetChance and NS:GetChance(event) or 30) * (verdict.chanceMul or 1))
	if chance <= 0 then return false end
	return math.random(100) <= chance
end

---Ordina i candidati di un momento: priorità più alta prima, poi la categoria più affamata (#91), poi l'ordine di
---arrivo.
---@param list { event: string, priority: integer, seq: integer, hunger?: number }[]
---@return table list lo stesso elenco, ordinato
function ND:Order(list)
	table.sort(list, function(a, b)
		if a.priority ~= b.priority then return a.priority > b.priority end
		local ha, hb = a.hunger or 1, b.hunger or 1
		if ha ~= hb then return ha > hb end
		return a.seq < b.seq
	end)
	return list
end
