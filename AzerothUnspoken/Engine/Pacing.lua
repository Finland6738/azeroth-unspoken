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
--   #118      a category declared with its own pacing (NS:RegisterCategory(id, def), Engine.CATEGORY_DEFS: the literary
--             forms, `lore`) has its budget, window and pause there, and paces its own phrases whatever their event:
--             the Director puts the categories that cannot speak now in ctx.closed (Pacing:Closed) and Engine:Eligible
--             leaves their phrases out. The literary ones also follow the setting literary.frequency (never/rare/normal)
--   quota     #91: a category may take at most Engine.QUOTAS[category].share of the last `window` interventions
--             (spontaneous and explicit) of the last `span` seconds (data: Data/Themes.lua and the packs)
--   id        il cooldown della frase (campo `cooldown` della regola) e la finestra anti-ripetizione restano
--             nel motore (Engine:Eligible, WeightedPick): valgono per ogni scelta, anche le esplicite
-- I momenti importanti (priorità "exceptional" o più alta) saltano globale, categoria, budget e quota, non il momento.
local ADDON, NS = ...
local Engine = NS.Engine

---@class AUPacing
---@field lastAny? number GetTime() dell'ultimo intervento, anche esplicito
---@field last? number GetTime() dell'ultimo intervento spontaneo
---@field byCategory table<string, number>
---@field byEvent table<string, number>
---@field spent table<string, number[]> [categoria] = istanti degli interventi nella finestra
---@field history { category: string, at: number }[] interventions of the session, newest last (#91)
---@field started? number GetTime() of the first check of the session: the hunger counts from there (#91)
local Pacing = { byCategory = {}, byEvent = {}, spent = {}, history = {} }
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
	self.byCategory, self.byEvent, self.spent, self.history, self.started = {}, {}, {}, {}, nil
end

Pacing.QUOTA_WINDOW = 10      -- interventions, when a quota does not say
Pacing.QUOTA_SPAN = 900       -- seconds, when a quota does not say
Pacing.HISTORY_MAX = 50

---Interventions of the category among the last `window` of the last `span` seconds, and how many the quota allows
---(#91). nil when the category has no quota. The span keeps a long fight from silencing a category for good when
---nothing else speaks: silence is valid, a mute companion for an hour is not.
---@param category string
---@param now number
---@return integer? used
---@return integer? allowed
function Pacing:Quota(category, now)
	local q = Engine.QUOTAS[category]
	if type(q) ~= "table" or type(q.share) ~= "number" then return nil end
	local window, span = q.window or self.QUOTA_WINDOW, q.span or self.QUOTA_SPAN
	local used, seen = 0, 0
	for i = #self.history, 1, -1 do
		local h = self.history[i]
		if seen >= window or now - h.at >= span then break end
		seen = seen + 1
		if h.category == category then used = used + 1 end
	end
	-- the share of the interventions in the window counting this one (four of ten), but never less than half of what
	-- the full window allows: at the start of a session, or after a quiet while, a fight may speak twice before the
	-- other categories have had their turn
	local floor = math.max(1, math.floor(q.share * window / 2))
	return used, math.max(floor, math.floor(q.share * (seen + 1)))
end

---Hunger of a category (#91): 1 when it spoke recently or has no hunger, up to Engine.HUNGER[category].factor after
---`after` seconds without a spontaneous intervention (counted from the start of the session when it never spoke).
---@param category string
---@param now number
---@return number
function Pacing:Hunger(category, now)
	local h = Engine.HUNGER[category]
	if Engine.R1_COMPAT or type(h) ~= "table" or type(h.factor) ~= "number" or h.factor <= 1 then return 1 end
	self.started = self.started or now
	local since = now - (self.byCategory[category] or self.started)
	local after = (type(h.after) == "number" and h.after > 0) and h.after or 600
	return 1 + (h.factor - 1) * math.max(0, math.min(1, since / after))
end

---Interventi ammessi per categoria nella finestra.
---@param category string
---@param intensity number 0-100
---@return integer
function Pacing:Budget(category, intensity)
	intensity = math.max(0, math.min(100, tonumber(intensity) or 50))
	local def = Engine.CATEGORY_DEFS[category]
	local base = def and tonumber(def.budget) or self.BUDGET[category] or self.DEFAULT_BUDGET
	local freq = self:Frequency(category)
	if freq then base = base * freq.budget end
	return math.ceil(base * intensity / 50)
end

-- #118, D15: the setting "literary forms" (literary.frequency) for the literary category: "rare" (the default) is the
-- category as declared, "normal" twice the budget and half the pause (never under minCooldown); "never" closes it
Pacing.LITERARY = {
	rare = { budget = 1, cooldown = 1 },
	normal = { budget = 2, cooldown = 0.5 },
}

---The user's frequency for a category (#118): only the literary category has one. nil = as declared.
---@param category string
---@return { budget: number, cooldown: number }?
function Pacing:Frequency(category)
	if category ~= Engine.LITERARY_CATEGORY or not NS.db or type(NS.db.literary) ~= "table" then return nil end
	return self.LITERARY[NS.db.literary.frequency]
end

---Whether the literary forms may not speak at all now (#118): the setting is "never", or the character is fighting
---(D15: never in combat). Explicit requests included: the setting is the user's, the fight is the fight.
---@param ctx? table
---@return boolean
function Pacing:LiteraryClosed(ctx)
	local db = NS.db
	if db and type(db.literary) == "table" and db.literary.frequency == "never" then return true end
	return (ctx and ctx.combat) and true or false
end

---The window of the budget of a category, in seconds: its own (#118) or WINDOW.
---@param category string
---@return number
function Pacing:Window(category)
	local def = Engine.CATEGORY_DEFS[category]
	local w = def and tonumber(def.window)
	return (w and w > 0) and w or self.WINDOW
end

---Seconds between two interventions of a category, with the multiplier of the intensity and of the rhythm (#118: its
---own pause, the user's frequency and its floor).
---@param category string
---@param mul number
---@return number
function Pacing:CategoryCooldown(category, mul)
	local def = Engine.CATEGORY_DEFS[category]
	local cc = (def and tonumber(def.cooldown) or self.CATEGORY_COOLDOWN[category] or 0) * mul
	local freq = self:Frequency(category)
	if freq then cc = cc * freq.cooldown end
	local floor = def and tonumber(def.minCooldown)
	if floor and cc < floor then cc = floor end
	return cc
end

---Interventi della categoria ancora dentro la finestra (toglie i vecchi).
---@param category string
---@param now number
---@return integer
function Pacing:Spent(category, now)
	local list = self.spent[category]
	if not list then return 0 end
	local window = self:Window(category)
	while list[1] and now - list[1] >= window do table.remove(list, 1) end
	return #list
end

---The categories with their own pacing (#118) that cannot speak now, whatever the event: their pause is running, their
---budget is spent, or (the literary forms) the setting or a fight closes them. nil when every one may speak. The
---Director puts the set in ctx.closed for a spontaneous pick; the phrases of these categories are left out.
---@param now number
---@param mul number multiplier of the pauses (intensity, rhythm)
---@param intensity number
---@param ctx? table
---@return table<string, boolean>? closed
function Pacing:Closed(now, mul, intensity, ctx)
	local out
	for cat in pairs(Engine.CATEGORY_DEFS) do
		local last = self.byCategory[cat]
		if (last and now - last < self:CategoryCooldown(cat, mul)) or self:Spent(cat, now) >= self:Budget(cat, intensity)
			or (cat == Engine.LITERARY_CATEGORY and self:LiteraryClosed(ctx)) then
			out = out or {}
			out[cat] = true
		end
	end
	return out
end

---A phrase of a category with its own pacing spoke on an event of another category (#118): its pause starts and, when
---it was spontaneous, it spends its budget. The event's category is recorded as usual (Record, Note).
---@param category? string the phrase's category
---@param now number
---@param spontaneous boolean
function Pacing:RecordPhrase(category, now, spontaneous)
	if not category or not Engine.CATEGORY_DEFS[category] then return end
	self.byCategory[category] = now
	if spontaneous then
		self.spent[category] = self.spent[category] or {}
		table.insert(self.spent[category], now)
	end
end

---@class AUPacingQuery
---@field event string
---@field category string
---@field cooldownMul number dall'intensità
---@field important boolean momento importante: salta pausa globale, di categoria e budget
---@field intensity number
---@field now number
---@field ctx? table #118: the context, for the literary category (closed by the setting or a fight)

---Il pacing permette un intervento? Restituisce true oppure false e il motivo.
---@param q AUPacingQuery
---@return boolean ok
---@return string? reason moment | literary | cooldown:global | cooldown:category | cooldown:event | budget:<categoria> | quota:<categoria>
function Pacing:Check(q)
	local now, mul = q.now, q.cooldownMul or 1
	self.started = self.started or now
	if self.lastAny and now - self.lastAny < self.MOMENT then return false, "moment" end
	-- #118: an event of the literary category itself follows the setting and never speaks in a fight
	if q.category == Engine.LITERARY_CATEGORY and self:LiteraryClosed(q.ctx) then return false, "literary" end
	if not q.important then
		local global = (NS.db and NS.db.pacing.globalCooldownSeconds or 45) * mul
		if self.last and now - self.last < global then return false, "cooldown:global" end
		local cc = self:CategoryCooldown(q.category, mul)
		local lc = self.byCategory[q.category]
		if lc and now - lc < cc then return false, "cooldown:category" end
	end
	local ec = NS.EVENT_COOLDOWN and NS.EVENT_COOLDOWN[q.event]
	local le = self.byEvent[q.event]
	if ec and le and now - le < ec * mul then return false, "cooldown:event" end
	if not q.important and self:Spent(q.category, now) >= self:Budget(q.category, q.intensity) then
		return false, "budget:" .. q.category
	end
	if not q.important and not Engine.R1_COMPAT then
		local used, allowed = self:Quota(q.category, now)
		if used and used >= allowed then return false, "quota:" .. q.category end
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
	table.insert(self.history, { category = category, at = now })
	while #self.history > self.HISTORY_MAX do table.remove(self.history, 1) end
end

---Registra un intervento esplicito (comando, tasto, macro): non consuma budget, ma apre il "momento",
---così una frase spontanea non arriva subito dopo. With its category it also enters the window of the quotas (#91):
---the share is about what the player hears, asked for or not.
---@param now number
---@param category? string
function Pacing:Note(now, category)
	self.lastAny = now
	if category then
		table.insert(self.history, { category = category, at = now })
		while #self.history > self.HISTORY_MAX do table.remove(self.history, 1) end
	end
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
