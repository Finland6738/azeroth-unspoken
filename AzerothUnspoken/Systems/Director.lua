-- Azeroth Unspoken: il Narrative Director degli eventi spontanei (GDD §4.2, §6, §10).
-- Le decisioni (gate, priorità, sospensione, pacing) sono in Engine/NarrativeDirector.lua ed Engine/Pacing.lua;
-- qui si raccolgono i candidati di un momento, si sceglie al massimo un intervento e lo si passa al Chat Gateway.
--
--   Triggers: Fire(evento) -> Director:Offer -> (ARBITRATION s) -> Director:Resolve
--     candidati in ordine di priorità -> contesto -> Evaluate (gate) -> dado -> Gateway:Narrate
--     il primo che produce una frase vince, gli altri tacciono; nessuno = silenzio
--   #100 (ADR 0032): before the winner speaks, Compose looks for a composite situation (Data/Themes.lua) whose lead is
--     the winner and whose other events were offered in this moment or in the last seconds; its ids go in
--     ctx.situation and the lines written for it are tried first. Still one line: the merged candidates stay silent.
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

-- #100: the events offered in the last RECENT_SPAN seconds (at most RECENT_MAX), oldest first, for the composite
-- situations. Only names and times, in memory for the session: never saved.
Director.RECENT_MAX = 24
Director.RECENT_SPAN = 300
Director.recent = {}

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

local function Log(event, result, candidate, category)
	table.insert(Director.log, { time = GetTime(), event = event, result = result })
	while #Director.log > Director.LOG_SIZE do table.remove(Director.log, 1) end
	-- the log keeps only the last entries: the counters of the whole session are in Core/Profiler.lua (/au prof)
	if NS.Profiler then
		NS.Diagnostics:Guard("profiler", NS.Profiler.Outcome, NS.Profiler, event, result, category or NS.Engine.EventCategory(event))
	end
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
---@param onResult? fun(result: string) chiamata a risoluzione avvenuta: "spoken", "no_phrase", "chance", "outranked",
---  "merged" (#100: the line of a composite situation that includes it spoke) o il
---  motivo del gate (paused, silent, module:<nome>, screen:<nome>, busy, moment, cooldown:<tipo>, budget:<categoria>)
function Director:Offer(event, extra, onResult)
	seq = seq + 1
	local now = GetTime()
	table.insert(self.recent, { event = event, seq = seq, at = now })
	while #self.recent > self.RECENT_MAX or (self.recent[1] and now - self.recent[1].at > self.RECENT_SPAN) do
		table.remove(self.recent, 1)
	end
	-- the event touches the character's emotions (R4) before its line is chosen, whether or not anything is said
	if NS.Emotion then NS.Diagnostics:Guard("emotion", NS.Emotion.Appraise, NS.Emotion, event, extra) end
	-- hunger of its category (#91): among candidates of the same priority, the most neglected category goes first
	local hunger = Pacing:Hunger(NS.Engine.EventCategory(event) or "general", GetTime())
	table.insert(self.queue, { event = event, extra = extra, seq = seq, priority = ND:Priority(event), hunger = hunger,
		onResult = onResult })
	if self.pendingResolve then return end
	self.pendingResolve = true
	if not NS.Compat.After(self.ARBITRATION, function() Director:Resolve() end) then
		self:Resolve()
	end
end

---The composite situations (#100, ADR 0032) a candidate leads now: each declared situation whose `lead` is the
---candidate's event, whose `with` events (all) and `withAny` events (one) were offered in the last `within` seconds
---(this moment included, the candidate itself excluded, never an offer already merged into the same situation) and
---whose `when` conditions match the candidate's context. nil when there is none (and always with Engine.R1_COMPAT).
---@param c { event: string, seq: integer }
---@param ctx table
---@param now number
---@return table<string, boolean>? situations
---@return table<string, table[]>? matched the offers each situation used
function Director:Compose(c, ctx, now)
	local Engine = NS.Engine
	if Engine.R1_COMPAT then return nil end
	local recent = self.recent
	local found, matched
	for _, id in ipairs(Engine.SITUATION_ORDER) do
		local def = Engine.SITUATIONS[id]
		if def.lead == c.event then
			local within = tonumber(def.within) or Engine.SITUATION_WITHIN
			local function Find(ev)
				for i = #recent, 1, -1 do
					local r = recent[i]
					if now - r.at > within then return nil end
					if r.event == ev and r.seq ~= c.seq and not (r.merged and r.merged[id]) then return r end
				end
				return nil
			end
			local used, ok = {}, true
			for _, ev in ipairs(def.with or {}) do
				local r = Find(ev)
				if not r then ok = false; break end
				table.insert(used, r)
			end
			if ok and def.withAny then
				local r
				for _, ev in ipairs(def.withAny) do
					r = Find(ev)
					if r then break end
				end
				if r then table.insert(used, r) else ok = false end
			end
			if ok and def.when and not Engine.SafeMatch(def.when, ctx) then ok = false end
			if ok then
				found, matched = found or {}, matched or {}
				found[id], matched[id] = true, used
			end
		end
	end
	return found, matched
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
			Log(c.event, verdict.reason, c, verdict.category)
		elseif not ND:Roll(c.event, verdict) then
			Log(c.event, "chance", c, verdict.category)
		else
			local situations, matched = self:Compose(c, ctx, GetTime())
			ctx.situation = situations
			local shown, rec = NS.Gateway:Narrate(c.event, ctx, { auto = true })
			if shown then
				Pacing:Record(c.event, verdict.category, GetTime())
				-- #100: the offers the composite line was written for are merged into it, once
				local merged = {}
				local used = rec and rec.situation and matched and matched[rec.situation]
				for _, r in ipairs(used or {}) do
					r.merged = r.merged or {}
					r.merged[rec.situation] = true
					merged[r.seq] = true
				end
				if NS.Profiler then NS.Diagnostics:Guard("profiler", NS.Profiler.Shape, NS.Profiler, rec) end
				Log(c.event, "spoken", c, verdict.category)
				for _, other in ipairs(list) do
					if other ~= c and other.done == nil then Log(other.event, merged[other.seq] and "merged" or "outranked", other) end
				end
				return c.event
			else
				Log(c.event, "no_phrase", c, verdict.category)
			end
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
-- Pausa immediata (tasto, pulsante del narratore, /au pause)
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
