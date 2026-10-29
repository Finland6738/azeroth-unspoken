-- Azeroth Unspoken: il Narrative Director degli eventi spontanei (GDD §4.2, §6, §10).
-- Le decisioni (gate, priorità, sospensione, pacing) sono in Engine/NarrativeDirector.lua ed Engine/Pacing.lua;
-- qui si raccolgono i candidati di un momento, si sceglie al massimo un intervento e lo si passa al Chat Gateway.
--
--   Triggers: Fire(evento) -> Director:Offer -> (ARBITRATION s) -> Director:Resolve
--     candidati in ordine di priorità -> contesto -> Evaluate (gate) -> dado -> Gateway:Narrate
--     il primo che produce una frase vince, gli altri tacciono; nessuno = silenzio
--
-- Director:Evaluate resta il punto di aggancio di S2: le fonti future di eventi spontanei chiedono a lui.
-- Le richieste esplicite (comandi, tasto, NS:Trigger) non passano di qui: ignorano pausa e intensità (GDD §4.2).
local ADDON, NS = ...
local Director = NS:RegisterModule("director")
NS.Director = Director
local ND, Pacing = NS.NarrativeDirector, NS.Pacing

NS.paused = false     -- pausa immediata: vale solo per la sessione, non si salva

Director.EVENT_MODULE = ND.EVENT_MODULE

-- secondi in cui i candidati nati dallo stesso momento si contendono l'unico intervento
Director.ARBITRATION = 0.1
Director.LOG_SIZE = 12

Director.queue = {}
Director.log = {}       -- ultime decisioni, per /au debug: { time, event, result }
local seq = 0

---@param intensity number 0-100
---@return number chanceMul
---@return number cooldownMul
function Director:Scale(intensity)
	return ND:Scale(intensity)
end

---Il gate di un evento spontaneo (punto di aggancio di S2): addon acceso, pausa, moduli, intensità,
---schermate invasive, combattimento impegnativo, pause, budget. Non tira il dado.
---@param event string evento narrativo spontaneo
---@param ctx? table contesto, se già costruito
---@return AUVerdict
function Director:Evaluate(event, ctx)
	return ND:Gate(event, ctx, GetTime())
end

local function Log(event, result, candidate)
	table.insert(Director.log, { time = GetTime(), event = event, result = result })
	while #Director.log > Director.LOG_SIZE do table.remove(Director.log, 1) end
	-- chi ha proposto l'evento (un sistema che deve sapere com'è andata, come gli archi) riceve l'esito
	local fn = candidate and candidate.onResult
	if fn then
		local ok, err = pcall(fn, result)
		if not ok then NS.Diagnostics:Error("director:onResult:" .. event, err) end
	end
end

---Propone un evento spontaneo. I candidati arrivati nello stesso momento si risolvono insieme.
---@param event string
---@param extra? table valori in più per il contesto
---@param onResult? fun(result: string) chiamata a risoluzione avvenuta: "spoken", "no_phrase", "chance", "outranked" o il
---  motivo del gate (paused, silent, module:<nome>, screen:<nome>, busy, moment, cooldown:<tipo>, budget:<categoria>)
function Director:Offer(event, extra, onResult)
	seq = seq + 1
	table.insert(self.queue, { event = event, extra = extra, seq = seq, priority = ND:Priority(event), onResult = onResult })
	if self.pendingResolve then return end
	self.pendingResolve = true
	if C_Timer and C_Timer.After then
		C_Timer.After(self.ARBITRATION, function() Director:Resolve() end)
	else
		self:Resolve()
	end
end

---Risolve i candidati in attesa: al massimo un intervento, il più importante che passa il gate e il dado.
---@return string? event l'evento che ha parlato, oppure nil (silenzio)
function Director:Resolve()
	local list = self.queue
	self.queue, self.pendingResolve = {}, false
	ND:Order(list)
	for _, c in ipairs(list) do
		local ctx = NS:BuildContext(c.extra)
		local verdict = self:Evaluate(c.event, ctx)
		if not verdict.allow then
			Log(c.event, verdict.reason, c)
		elseif not ND:Roll(c.event, verdict) then
			Log(c.event, "chance", c)
		elseif NS.Gateway:Narrate(c.event, ctx, { auto = true }) then
			Pacing:Record(c.event, verdict.category, GetTime())
			Log(c.event, "spoken", c)
			for _, other in ipairs(list) do
				if other ~= c and other.done == nil then Log(other.event, "outranked", other) end
			end
			return c.event
		else
			Log(c.event, "no_phrase", c)
		end
		c.done = true
	end
	return nil
end

---Riepilogo per /au debug.
---@return string
function Director:Status()
	local db = NS.db
	local parts = {}
	local budget = Pacing:Status(GetTime(), db and db.intensity or 50)
	for _, cat in ipairs(NS.Engine.SortedKeys(budget)) do table.insert(parts, cat .. " " .. budget[cat]) end
	local last = {}
	for i = #self.log, math.max(1, #self.log - 4), -1 do
		local e = self.log[i]
		table.insert(last, e.event .. "=" .. e.result)
	end
	return ("budget %s; last %s"):format(table.concat(parts, ", "), #last > 0 and table.concat(last, ", ") or "-")
end

---------------------------------------------------------------------------
-- Pausa immediata (tasto, pulsante del narratore, /au pausa)
---------------------------------------------------------------------------
---@param on boolean
---@return boolean
function Director:SetPaused(on)
	on = on and true or false
	NS.paused = on
	if on then
		if NS.Gateway then NS.Gateway:Discard() end
		if NS.Narrator then NS.Narrator:Clear() end
	end
	if NS.Narrator then NS.Narrator:Refresh() end
	if NS.UpdateButton then NS.UpdateButton() end
	return on
end

---@return boolean paused
function Director:TogglePause()
	local on = self:SetPaused(not NS.paused)
	NS:Print(NS:L(on and "paused_on" or "paused_off"))
	return on
end

-- tasto assegnato in Opzioni > Comandi > AddOn
function AzerothUnspoken_TogglePause()
	if NS.db then Director:TogglePause() end
end
