-- Azeroth Unspoken: pacing del Narrative Director (GDD §4.2, §10).
-- Tiene i tempi degli ultimi interventi spontanei e il budget per categoria. Lo stato vive solo in memoria,
-- per la sessione: dopo un /reload il narratore riparte con il budget pieno.
--
-- Controlli, dal più stretto al più largo:
--   momento   MOMENT secondi tra due interventi qualsiasi, anche importanti: niente cascate
--   globale   pacing.globalCooldownSeconds tra due interventi spontanei ordinari
--   categoria CATEGORY_COOLDOWN[categoria] tra due interventi della stessa categoria
--   evento    NS.EVENT_COOLDOWN[evento] tra due interventi dello stesso evento
--   budget    BUDGET[categoria] interventi in WINDOW secondi, scalati con l'intensità
--   id        il cooldown della frase (campo `cooldown` della regola) e la finestra anti-ripetizione restano
--             nel motore (Engine:Eligible, WeightedPick): valgono per ogni scelta, anche le esplicite
-- I momenti importanti (priorità "exceptional" o più alta) saltano globale, categoria e budget, non il momento.
local ADDON, NS = ...
local Engine = NS.Engine

---@class AUPacing
---@field lastAny? number GetTime() dell'ultimo intervento, anche esplicito
---@field last? number GetTime() dell'ultimo intervento spontaneo
---@field byCategory table<string, number>
---@field byEvent table<string, number>
---@field spent table<string, number[]> [categoria] = istanti degli interventi nella finestra
local Pacing = { byCategory = {}, byEvent = {}, spent = {} }
NS.Pacing = Pacing
Engine.Pacing = Pacing

Pacing.MOMENT = 4
Pacing.WINDOW = 600

-- interventi per categoria in WINDOW secondi a intensità 50 (a 100 il doppio, a 25 la metà)
Pacing.BUDGET = {
	combat = 6, spellcraft = 4, life = 4, exploration = 4, reflection = 3, social = 3, general = 3,
}
Pacing.DEFAULT_BUDGET = 3

-- secondi tra due interventi della stessa categoria a intensità 50 (scalati come la pausa globale)
Pacing.CATEGORY_COOLDOWN = {
	combat = 15, spellcraft = 20, life = 0, exploration = 30, reflection = 60, social = 30, general = 20,
}

function Pacing:Reset()
	self.lastAny, self.last = nil, nil
	self.byCategory, self.byEvent, self.spent = {}, {}, {}
end

---Interventi ammessi per categoria nella finestra.
---@param category string
---@param intensity number 0-100
---@return integer
function Pacing:Budget(category, intensity)
	intensity = math.max(0, math.min(100, tonumber(intensity) or 50))
	local base = self.BUDGET[category] or self.DEFAULT_BUDGET
	return math.ceil(base * intensity / 50)
end

---Interventi della categoria ancora dentro la finestra (toglie i vecchi).
---@param category string
---@param now number
---@return integer
function Pacing:Spent(category, now)
	local list = self.spent[category]
	if not list then return 0 end
	while list[1] and now - list[1] >= self.WINDOW do table.remove(list, 1) end
	return #list
end

---@class AUPacingQuery
---@field event string
---@field category string
---@field cooldownMul number dall'intensità
---@field important boolean momento importante: salta pausa globale, di categoria e budget
---@field intensity number
---@field now number

---Il pacing permette un intervento? Restituisce true oppure false e il motivo.
---@param q AUPacingQuery
---@return boolean ok
---@return string? reason moment | cooldown:global | cooldown:category | cooldown:event | budget:<categoria>
function Pacing:Check(q)
	local now, mul = q.now, q.cooldownMul or 1
	if self.lastAny and now - self.lastAny < self.MOMENT then return false, "moment" end
	if not q.important then
		local global = (NS.db and NS.db.pacing.globalCooldownSeconds or 45) * mul
		if self.last and now - self.last < global then return false, "cooldown:global" end
		local cc = (self.CATEGORY_COOLDOWN[q.category] or 0) * mul
		local lc = self.byCategory[q.category]
		if lc and now - lc < cc then return false, "cooldown:category" end
	end
	local ec = NS.EVENT_COOLDOWN and NS.EVENT_COOLDOWN[q.event]
	local le = self.byEvent[q.event]
	if ec and le and now - le < ec * mul then return false, "cooldown:event" end
	if not q.important and self:Spent(q.category, now) >= self:Budget(q.category, q.intensity) then
		return false, "budget:" .. q.category
	end
	return true
end

---Registra un intervento spontaneo riuscito.
---@param event string
---@param category string
---@param now number
function Pacing:Record(event, category, now)
	self.lastAny, self.last = now, now
	self.byCategory[category] = now
	self.byEvent[event] = now
	self.spent[category] = self.spent[category] or {}
	table.insert(self.spent[category], now)
end

---Registra un intervento esplicito (comando, tasto, macro): non consuma budget, ma apre il "momento",
---così una frase spontanea non arriva subito dopo.
---@param now number
function Pacing:Note(now)
	self.lastAny = now
end

---Stato per /au debug: { [categoria] = "usati/ammessi" }.
---@param now number
---@param intensity number
---@return table<string, string>
function Pacing:Status(now, intensity)
	local out = {}
	for cat in pairs(Engine.CATEGORIES) do
		out[cat] = ("%d/%d"):format(self:Spent(cat, now), self:Budget(cat, intensity))
	end
	return out
end
