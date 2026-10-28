-- Azeroth Unspoken: punto di aggancio del Narrative Director (GDD §4.2, §10).
-- Stato dello step S2: l'intensità (0-100) scala soltanto la probabilità e la pausa tra le frasi,
-- più il silenzio (intensità 0), la pausa immediata e i moduli attivi.
-- Lo step S4 sostituisce il corpo di Director:Evaluate (gate di opportunità, budget per categoria,
-- priorità, fattori P/S/R del peso) senza toccare i chiamanti: Systems/Triggers.lua e le future
-- fonti di eventi chiedono sempre a Evaluate se, e con quali moltiplicatori, possono intervenire.
local ADDON, NS = ...
local Director = NS:RegisterModule("director")
NS.Director = Director

NS.paused = false     -- pausa immediata: vale solo per la sessione, non si salva

-- modulo del GDD §4.1 a cui appartiene ogni evento spontaneo (predefinito: personal)
Director.EVENT_MODULE = {
	zone = "world", travel = "world",
}

-- Moltiplicatori in base all'intensità: 50 = valori del prototipo, 0 = silenzio, 100 = il doppio.
function Director:Scale(intensity)
	intensity = math.max(0, math.min(100, tonumber(intensity) or 50))
	return intensity / 50, 1.5 - intensity / 100
end

-- Valuta un evento spontaneo.
-- Restituisce { allow = true, chanceMul, cooldownMul } oppure { allow = false, reason }.
function Director:Evaluate(event)
	local db = NS.db
	if not db or not db.enabled then return { allow = false, reason = "disabled" } end
	if NS.paused then return { allow = false, reason = "paused" } end
	local module = self.EVENT_MODULE[event] or "personal"
	if db.modules[module] == false then return { allow = false, reason = "module:" .. module } end
	if db.intensity <= 0 then return { allow = false, reason = "silent" } end
	local chanceMul, cooldownMul = self:Scale(db.intensity)
	-- i momenti importanti (morte, livello...) non diventano più rari sotto il valore medio
	if NS.BYPASS_GLOBAL and NS.BYPASS_GLOBAL[event] then chanceMul = math.max(chanceMul, 1) end
	return { allow = true, chanceMul = chanceMul, cooldownMul = cooldownMul }
end

---------------------------------------------------------------------------
-- Pausa immediata (tasto, pulsante del narratore, /au pausa)
---------------------------------------------------------------------------
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

function Director:TogglePause()
	local on = self:SetPaused(not NS.paused)
	NS:Print(NS:L(on and "paused_on" or "paused_off"))
	return on
end

-- tasto assegnato in Opzioni > Comandi > AddOn
function AzerothUnspoken_TogglePause()
	if NS.db then Director:TogglePause() end
end
