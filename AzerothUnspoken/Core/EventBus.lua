-- Azeroth Unspoken: bus degli eventi normalizzati (GDD §11.3)
-- Envelope: { type, timestamp, source, context = { ... }, fields = { [campo] = AVAILABLE|MISSING|RESTRICTED } }
local ADDON, NS = ...
local Compat, Diagnostics = NS.Compat, NS.Diagnostics
local EventBus = {}
NS.EventBus = EventBus

local MAX_RECENT = 25     -- eventi tenuti per la diagnostica
local MAX_QUEUE = 32      -- eventi pubblicati durante la consegna di un altro
local STALE = 5           -- secondi oltre i quali un evento in coda non serve più

EventBus.SOURCE = { WOW = "WOW_API", USER = "USER", ADDON = "ADDON", SIMULATED = "SIMULATED" }
EventBus.subscribers = {}   -- [tipo o "*"] = { { owner, fn }, ... }
EventBus.recent = {}
EventBus.rawSeen = {}       -- [evento WoW] = quante volte è arrivato
EventBus.seen = {}          -- [tipo] = quante volte è stato pubblicato
EventBus.lastKey = {}       -- [tipo:chiave] = momento dell'ultima pubblicazione
EventBus.stats = { published = 0, delivered = 0, deduplicated = 0, dropped = 0 }
-- secondi entro cui lo stesso tipo con la stessa chiave è un doppione
EventBus.dedupWindow = { default = 1 }

local queue, dispatching = {}, false

function EventBus:Subscribe(eventType, owner, fn)
	self.subscribers[eventType] = self.subscribers[eventType] or {}
	table.insert(self.subscribers[eventType], { owner = owner, fn = fn })
end

function EventBus:Unsubscribe(eventType, owner)
	local list = self.subscribers[eventType]
	if not list then return end
	for i = #list, 1, -1 do
		if list[i].owner == owner then table.remove(list, i) end
	end
end

-- opts: source, key (deduplicazione), expect (campi attesi), fields (stati già noti)
function EventBus:NewEnvelope(eventType, context, opts)
	opts = opts or {}
	local env = {
		type = eventType,
		timestamp = GetTime(),
		source = opts.source or self.SOURCE.ADDON,
		context = {},
		fields = {},
	}
	for k, state in pairs(opts.fields or {}) do env.fields[k] = state end
	for k, v in pairs(context or {}) do
		if Compat.IsSecret(v) then
			env.fields[k] = Compat.RESTRICTED     -- il valore non entra nel contesto
		else
			env.context[k] = v
			env.fields[k] = env.fields[k] or Compat.AVAILABLE
		end
	end
	for _, k in ipairs(opts.expect or {}) do
		if env.context[k] == nil and not env.fields[k] then env.fields[k] = Compat.MISSING end
	end
	return env
end

function EventBus:IsDuplicate(env, key)
	local window = self.dedupWindow[env.type]
	if window == nil then window = key ~= nil and self.dedupWindow.default or 0 end
	if window <= 0 then return false end
	local id = env.type .. ":" .. tostring(key or "")
	local last = self.lastKey[id]
	self.lastKey[id] = env.timestamp
	return last ~= nil and env.timestamp - last < window
end

local function Deliver(self, env)
	local delivered = false
	for _, eventType in ipairs({ env.type, "*" }) do
		local list = self.subscribers[eventType]
		if list then
			local copy = {}
			for i, s in ipairs(list) do copy[i] = s end
			for _, s in ipairs(copy) do
				Diagnostics:Guard("event:" .. env.type .. ":" .. tostring(s.owner), s.fn, env)
				delivered = true
			end
		end
	end
	if delivered then self.stats.delivered = self.stats.delivered + 1 end
end

-- Pubblica un evento. Restituisce l'envelope, oppure nil se era un doppione.
function EventBus:Publish(eventType, context, opts)
	local env = self:NewEnvelope(eventType, context, opts)
	if self:IsDuplicate(env, opts and opts.key) then
		self.stats.deduplicated = self.stats.deduplicated + 1
		return nil
	end
	self.stats.published = self.stats.published + 1
	self.seen[eventType] = (self.seen[eventType] or 0) + 1
	table.insert(self.recent, env)
	while #self.recent > MAX_RECENT do table.remove(self.recent, 1) end

	-- un gestore che pubblica a sua volta mette in coda: niente ricorsioni a cascata
	if dispatching then
		if #queue >= MAX_QUEUE then
			table.remove(queue, 1)
			self.stats.dropped = self.stats.dropped + 1
		end
		table.insert(queue, env)
		return env
	end
	dispatching = true
	Deliver(self, env)
	while #queue > 0 do
		local nextEnv = table.remove(queue, 1)
		if GetTime() - nextEnv.timestamp <= STALE then
			Deliver(self, nextEnv)
		else
			self.stats.dropped = self.stats.dropped + 1
		end
	end
	dispatching = false
	return env
end

-- gli ultimi n eventi, dal più recente
function EventBus:Recent(n)
	local out = {}
	for i = #self.recent, math.max(1, #self.recent - n + 1), -1 do table.insert(out, self.recent[i]) end
	return out
end

---------------------------------------------------------------------------
-- Sorgenti WoW: evento del client -> evento normalizzato
-- normalize(...) restituisce tipo, contesto, opzioni; oppure nil per ignorarlo
---------------------------------------------------------------------------
EventBus.sources = {}
EventBus.sourceOrder = {}

function EventBus:AddSource(wowEvent, def)
	if not self.sources[wowEvent] then table.insert(self.sourceOrder, wowEvent) end
	self.sources[wowEvent] = def
	-- sorgente aggiunta dopo l'avvio
	if self.frame then Compat:RegisterEvent(self.frame, wowEvent, def.unit) end
end

function EventBus:OnGameEvent(wowEvent, ...)
	local def = self.sources[wowEvent]
	if not def then return end
	self.rawSeen[wowEvent] = (self.rawSeen[wowEvent] or 0) + 1
	local ok, eventType, context, opts = Diagnostics:Guard("source:" .. wowEvent, def.normalize, ...)
	if not ok or not eventType then return end
	opts = opts or {}
	opts.source = self.SOURCE.WOW
	self:Publish(eventType, context, opts)
end

function EventBus:Start()
	if self.frame then return end
	self.frame = CreateFrame("Frame")
	self.frame:SetScript("OnEvent", function(_, wowEvent, ...) EventBus:OnGameEvent(wowEvent, ...) end)
	for _, wowEvent in ipairs(self.sourceOrder) do
		Compat:RegisterEvent(self.frame, wowEvent, self.sources[wowEvent].unit)
	end
end

local function Zone()
	local state, zone = Compat.Query("GetRealZoneText")
	if zone == "" then zone = nil end
	local _, subzone = Compat.Query("GetSubZoneText")
	if subzone == "" then subzone = nil end
	return zone, subzone, state
end

local function DeadOrGhost()
	return Compat.SafeCall("UnitIsDeadOrGhost", "player") and true or false
end

EventBus.dedupWindow.ZONE_ENTER = 3
EventBus.dedupWindow.PLAYER_REVIVE = 2
EventBus.dedupWindow.TARGET_CHANGED = 0.2

EventBus:AddSource("PLAYER_ENTERING_WORLD", { normalize = function(isLogin, isReload)
	local zone, subzone, state = Zone()
	return "WORLD_ENTER", { zone = zone, subzone = subzone, isLogin = isLogin, isReload = isReload,
		deadOrGhost = DeadOrGhost() }, { expect = { "zone" }, fields = { zone = state ~= "AVAILABLE" and state or nil } }
end })

EventBus:AddSource("ZONE_CHANGED_NEW_AREA", { normalize = function()
	local zone, subzone, state = Zone()
	return "ZONE_ENTER", { zone = zone, subzone = subzone },
		{ key = zone, expect = { "zone" }, fields = { zone = state ~= "AVAILABLE" and state or nil } }
end })

EventBus:AddSource("PLAYER_REGEN_DISABLED", { normalize = function()
	return "COMBAT_START", nil, { key = "start" }
end })

EventBus:AddSource("PLAYER_REGEN_ENABLED", { normalize = function()
	return "COMBAT_END", { deadOrGhost = DeadOrGhost() }, { key = "end" }
end })

EventBus:AddSource("UNIT_HEALTH", { unit = "player", normalize = function(unit)
	if unit ~= "player" then return nil end
	local s1, hp = Compat.Query("UnitHealth", "player")
	local s2, hpMax = Compat.Query("UnitHealthMax", "player")
	if s1 ~= "AVAILABLE" or s2 ~= "AVAILABLE" or not hp or not hpMax or hpMax <= 0 then
		return "HEALTH_CHANGED", { unit = unit }, { fields = { hp = Compat.RESTRICTED } }
	end
	local ratio = hp / hpMax
	-- a scatti del 5%: le variazioni minime non generano eventi nuovi
	return "HEALTH_CHANGED", { unit = unit, hp = ratio, deadOrGhost = DeadOrGhost() }, { key = math.floor(ratio * 20) }
end })

EventBus:AddSource("PLAYER_DEAD", { normalize = function()
	return "PLAYER_DEATH", nil, { key = "dead" }
end })

local function Revive()
	local dead = DeadOrGhost()
	return "PLAYER_REVIVE", { deadOrGhost = dead }, { key = tostring(dead) }
end
EventBus:AddSource("PLAYER_ALIVE", { normalize = Revive })
EventBus:AddSource("PLAYER_UNGHOST", { normalize = Revive })

EventBus:AddSource("PLAYER_LEVEL_UP", { normalize = function(level)
	return "LEVEL_UP", { level = level }, { key = level, expect = { "level" } }
end })

EventBus:AddSource("PLAYER_TARGET_CHANGED", { normalize = function()
	local exists = Compat.SafeCall("UnitExists", "target") and true or false
	local fields = {}
	if exists and Compat:IsUnitIdentitySecret("target") then fields.identity = Compat.RESTRICTED end
	return "TARGET_CHANGED", { hasTarget = exists }, { fields = fields }
end })

EventBus:AddSource("UNIT_SPELLCAST_SENT", { unit = "player", normalize = function(unit, target, castGUID, spellID)
	if unit ~= "player" then return nil end
	if target == "" then target = nil end
	return "SPELL_SENT", { castGUID = castGUID, target = target, spellID = spellID }, { key = castGUID }
end })

EventBus:AddSource("UNIT_SPELLCAST_SUCCEEDED", { unit = "player", normalize = function(unit, castGUID, spellID)
	if unit ~= "player" then return nil end
	return "SPELL_CAST", { castGUID = castGUID, spellID = spellID, spell = Compat:GetSpellName(spellID) },
		{ key = castGUID, expect = { "spell" } }
end })

EventBus:AddSource("ADDON_RESTRICTION_STATE_CHANGED", { normalize = function(restrictionType, state)
	return "RESTRICTION_CHANGED", { restrictionType = restrictionType, state = state }
end })
