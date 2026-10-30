-- Azeroth Unspoken: errori intercettati e rapporto di diagnostica (/au debug)
local ADDON, NS = ...
local Diagnostics = {}
NS.Diagnostics = Diagnostics

local MAX_ERRORS = 30
Diagnostics.errors = {}     -- { module, message, stack, count, first, last }
Diagnostics.trace = false   -- /au debug trace: stampa ogni evento normalizzato (solo per la sessione)

local function Now() return (GetTime and GetTime()) or 0 end

function Diagnostics:Error(module, message, stack)
	message = tostring(message)
	for _, e in ipairs(self.errors) do
		if e.module == module and e.message == message then
			e.count = e.count + 1
			e.last = Now()
			return
		end
	end
	if stack and #stack > 400 then stack = stack:sub(1, 400) end
	table.insert(self.errors, { module = module, message = message, stack = stack, count = 1, first = Now(), last = Now() })
	while #self.errors > MAX_ERRORS do table.remove(self.errors, 1) end
	if self.trace then NS:Print("|cffff5050" .. module .. "|r " .. message) end
end

local function Handler(err)
	return { message = err, stack = debugstack and debugstack(2, 8, 0) or nil }
end

-- Esegue fn(...) isolando gli errori: restituisce ok e fino a tre risultati.
function Diagnostics:Guard(module, fn, ...)
	local n, args = select("#", ...), { ... }
	local ok, a, b, c = xpcall(function() return fn(unpack(args, 1, n)) end, Handler)
	if not ok then
		self:Error(module, a.message, a.stack)
		return false
	end
	return true, a, b, c
end

---------------------------------------------------------------------------
-- Rapporto
---------------------------------------------------------------------------
local STATE_COLOR = { AVAILABLE = "|cff40ff40", MISSING = "|cffff8040", RESTRICTED = "|cffffd040" }
local STATES = { "AVAILABLE", "RESTRICTED", "MISSING" }
local GROUPS = { "client", "api", "event", "value", "restriction", "chat", "integration" }

-- { [gruppo] = { [stato] = { id, ... } } }, con gli id ordinati
function Diagnostics:CapabilityMatrix()
	local matrix, totals = {}, { AVAILABLE = 0, MISSING = 0, RESTRICTED = 0 }
	for _, id in ipairs(NS.Compat.capOrder) do
		local c = NS.Compat.caps[id]
		matrix[c.group] = matrix[c.group] or {}
		matrix[c.group][c.state] = matrix[c.group][c.state] or {}
		table.insert(matrix[c.group][c.state], id:match("^[^:]+:(.*)$") or id)
		totals[c.state] = (totals[c.state] or 0) + 1
	end
	for _, states in pairs(matrix) do
		for _, list in pairs(states) do table.sort(list) end
	end
	return matrix, totals
end

-- I rapporti di diagnostica si condividono (checklist G1): niente dati di altri giocatori (GDD §14, #53). I campi di
-- testo si mostrano solo se sono noti e non identificano una persona; qualunque altro testo (name, target, un
-- campo aggiunto domani) esce come <nascosto>. Numeri e booleani non identificano nessuno.
local SAFE_TEXT = { zone = true, subzone = true, unit = true, spell = true, state = true, restrictionType = true,
	kind = true, encounterName = true, castGUID = true, id = true, from = true, to = true, source = true, func = true }
-- campi sicuri solo per certi eventi (il nome di un flag narrativo non è una persona)
local SAFE_TEXT_BY_TYPE = { MEMORY_FLAG = { name = true } }
Diagnostics.HIDDEN = "<nascosto>"

local function Describe(value, eventType)
	if type(value) ~= "table" then return tostring(value) end
	local keys = {}
	for k in pairs(value) do table.insert(keys, tostring(k)) end
	table.sort(keys)
	local parts = {}
	local safeHere = SAFE_TEXT_BY_TYPE[eventType]
	for _, k in ipairs(keys) do
		local v = value[k]
		if type(v) ~= "table" and type(v) ~= "function" then
			if type(v) == "string" and not SAFE_TEXT[k] and not (safeHere and safeHere[k]) then v = Diagnostics.HIDDEN end
			table.insert(parts, k .. "=" .. tostring(v))
		end
	end
	return table.concat(parts, " ")
end

function Diagnostics:FormatEnvelope(env)
	local fields = {}
	for k, state in pairs(env.fields or {}) do
		if state ~= "AVAILABLE" then table.insert(fields, k .. ":" .. state) end
	end
	table.sort(fields)
	local line = ("%.1f %s [%s] %s"):format(env.timestamp or 0, env.type, env.source or "?", Describe(env.context, env.type))
	if #fields > 0 then line = line .. " (" .. table.concat(fields, ", ") .. ")" end
	return line
end

-- verbose = true: una riga per capacità, con il dettaglio
function Diagnostics:Report(verbose)
	local lines = {}
	local function Add(s) table.insert(lines, s) end
	local b = NS.Compat.build or NS.Compat:GetBuildInfo()

	Add(("== %s %s: %s =="):format(NS.name, NS.version, NS:L("debug_title")))
	Add(("Client %s (build %s, %s), Interface %d, WOW_PROJECT_ID %s, Camelot %s, Forever %s, locale %s"):format(
		b.version, b.build, b.date, b.interface, tostring(b.projectID), tostring(b.isCamelot), tostring(b.isForever),
		tostring(b.locale)))
	local db = NS.db
	if db then
		Add(("%s: schema %s, locale %s, intensity %d, proseDepth %s, paused %s"):format(NS:L("debug_config"),
			tostring(AzerothUnspokenDB and AzerothUnspokenDB.schemaVersion), NS:Lang(), db.intensity, db.proseDepth,
			tostring(NS.paused)))
		if NS.Gateway then
			local g = NS.Gateway:Status()
			Add(("Chat Gateway: mode %s (effective %s), autoPublicSay %s, channel %s, pending %s, sent %d (last minute %d, auto %d), blocked by the client %d, last refusal %s"):format(
				g.mode, g.effective, tostring(g.autoPublicSay), g.channel, tostring(g.pending), g.total, g.lastMinute,
				g.lastMinuteAuto, g.blocked or 0, tostring(g.lastRefusal)))
		end
		if NS.Director and NS.Director.Status then Add("Narrative Director: " .. NS.Director:Status()) end
		if NS.Profiler then Add("Profile: " .. NS.Profiler:Summary()) end
		if NS.LivingMemory then Add("Living Memory: " .. NS.LivingMemory:Status()) end
		if NS.Relationships then Add("Relationships: " .. NS.Relationships:Status()) end
		if NS.NPCAlive then Add("NPC Alive: " .. NS.NPCAlive:Status()) end
		if NS.StoryArcs then Add("Story Arcs: " .. NS.StoryArcs:Status()) end
		if NS.World then Add("World: " .. NS.World:Status()) end
		for _, issue in ipairs(NS.Config.issues or {}) do Add("  config: " .. issue) end
	else
		Add(NS:L("debug_no_db"))
	end

	local matrix, totals = self:CapabilityMatrix()
	Add(("%s: %d AVAILABLE, %d RESTRICTED, %d MISSING"):format(NS:L("debug_caps"),
		totals.AVAILABLE, totals.RESTRICTED, totals.MISSING))
	for _, group in ipairs(GROUPS) do
		local states = matrix[group]
		if states then
			for _, state in ipairs(STATES) do
				local list = states[state]
				if list then
					if verbose then
						for _, id in ipairs(list) do
							local c = NS.Compat.caps[group .. ":" .. id]
							Add(("  [%s] %s%s|r %s%s"):format(group, STATE_COLOR[state], state, id,
								c and c.detail and (" - " .. c.detail) or ""))
						end
					else
						Add(("  [%s] %s%s|r: %s"):format(group, STATE_COLOR[state], state, table.concat(list, ", ")))
					end
				end
			end
		end
	end

	local bus = NS.EventBus
	local s = bus.stats
	Add(("%s: %d %s, %d %s, %d %s"):format(NS:L("debug_events"), s.published, NS:L("debug_published"),
		s.deduplicated, NS:L("debug_dedup"), s.dropped, NS:L("debug_dropped")))
	local seen = {}
	for ev, n in pairs(bus.rawSeen) do table.insert(seen, ev .. " " .. n) end
	table.sort(seen)
	if #seen > 0 then Add("  WoW: " .. table.concat(seen, ", ")) end
	local recent = bus:Recent(8)
	for i = #recent, 1, -1 do Add("  " .. self:FormatEnvelope(recent[i])) end

	if #self.errors == 0 then
		Add(NS:L("debug_no_errors"))
	else
		Add(("%s: %d"):format(NS:L("debug_errors"), #self.errors))
		for i = #self.errors, math.max(1, #self.errors - 4), -1 do
			local e = self.errors[i]
			Add(("  |cffff5050%s|r x%d: %s"):format(e.module, e.count, e.message))
		end
	end

	if NS.Engine and NS.db then
		local total = NS.Engine:Stats(NS:TextLang())
		Add(NS:L("debug_phrases", total, #NS.Engine.packOrder))
	end
	return lines
end

function Diagnostics:PrintReport(verbose)
	NS.Compat:Probe()
	for _, line in ipairs(self:Report(verbose)) do NS:Print(line) end
end

function Diagnostics:SetTrace(on)
	self.trace = on
	if on and not self.traceSubscribed then
		self.traceSubscribed = true
		NS.EventBus:Subscribe("*", "diagnostics", function(env)
			if Diagnostics.trace then NS:Print("|cff8080ff" .. Diagnostics:FormatEnvelope(env) .. "|r") end
		end)
	end
end
