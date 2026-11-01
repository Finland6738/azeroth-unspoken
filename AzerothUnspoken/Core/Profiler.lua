-- Azeroth Unspoken: profiling in the client (R0, #81): timings of PickEntry and BuildContext, addon memory and the
-- Director counters of the session (/au prof). Nothing is saved between sessions.
-- Only numbers and fixed identifiers (event, category, silence reason) are kept: never the text of a line and never
-- a name (ADR 0017). The report can be pasted into a public issue.
local ADDON, NS = ...
local Compat = NS.Compat
local Profiler = NS:RegisterModule("profiler")
NS.Profiler = Profiler

local RING = 512          -- timings kept per measure, for the percentiles
local MAX_KEYS = 64       -- distinct events, categories and reasons counted: the rest goes to "other"
local MAX_HOURS = 48      -- hourly buckets of interventions: the last one is "48 h or more"
local MAX_MEMORY = 24     -- memory samples kept
local LOGIN_SAMPLE = 10   -- seconds after entering the world for the first memory sample

local function Now() return (GetTime and GetTime()) or 0 end

---------------------------------------------------------------------------
-- Counters (bounded: they never grow with play time)
---------------------------------------------------------------------------
-- only fixed identifiers: letters, digits and _ : . - (no spaces, no accents, at most 40 characters)
local function SafeKey(key)
	if type(key) ~= "string" or #key > 40 or not key:match("^[A-Za-z0-9_:%.%-]+$") then return "other" end
	return key
end

local function NewMap() return { n = 0, items = {} } end

-- the slot of a key, created on first use; past MAX_KEYS distinct keys, "other"
local function Slot(map, key, make)
	key = SafeKey(key)
	local slot = map.items[key]
	if slot then return slot end
	if map.n >= MAX_KEYS then
		key = "other"
		slot = map.items[key]
		if slot then return slot end
	else
		map.n = map.n + 1
	end
	slot = make()
	map.items[key] = slot
	return slot
end

local function NewTiming() return { n = 0, total = 0, max = 0, ring = {}, pos = 0 } end

local function AddTiming(t, ms)
	t.n = t.n + 1
	t.total = t.total + ms
	if ms > t.max then t.max = ms end
	t.pos = t.pos % RING + 1
	t.ring[t.pos] = ms
end

-- nearest-rank percentile over the kept timings; nil if there are none
local function Percentile(t, p)
	local list = {}
	for _, v in ipairs(t.ring) do table.insert(list, v) end
	if #list == 0 then return nil end
	table.sort(list)
	return list[math.max(1, math.ceil(#list * p))]
end

function Profiler:Reset()
	self.startedAt = Now()
	self.timings = { PickEntry = NewTiming(), BuildContext = NewTiming() }
	self.picks = { found = 0, none = 0 }
	self.director = { offered = 0, spoken = 0, silent = 0, results = NewMap(), events = NewMap(), categories = NewMap(),
		hours = {}, monologues = 0, composites = 0, situations = NewMap() }
	self.memory = {}
end

Profiler:Reset()

---------------------------------------------------------------------------
-- Timings: PickEntry and BuildContext are wrapped once, at start-up
---------------------------------------------------------------------------
---@return number? milliseconds from the client's profiling clock, nil if the clock is missing
function Profiler:Clock()
	local fn = Compat.Resolve("debugprofilestop")
	if type(fn) ~= "function" then return nil end
	local ok, ms = pcall(fn)
	if ok and type(ms) == "number" and not Compat.IsSecret(ms) then return ms end
	return nil
end

local function Wrap(owner, key, name, onResult)
	local original = owner[key]
	if type(original) ~= "function" then return end
	owner[key] = function(...)
		local t0 = Profiler:Clock()
		local result = original(...)
		if t0 then
			local t1 = Profiler:Clock()
			if t1 then AddTiming(Profiler.timings[name], math.max(0, t1 - t0)) end
		end
		if onResult then onResult(result) end
		return result
	end
end

function Profiler:Install()
	if self.installed then return end
	self.installed = true
	Wrap(NS.Engine, "PickEntry", "PickEntry", function(result)
		if result then Profiler.picks.found = Profiler.picks.found + 1 else Profiler.picks.none = Profiler.picks.none + 1 end
	end)
	Wrap(NS, "BuildContext", "BuildContext")
end

---------------------------------------------------------------------------
-- Memory
---------------------------------------------------------------------------
---Reads the addon memory now (KB). UpdateAddOnMemoryUsage scans every addon: it is called only on request.
---@return number? kb
---@return string state AVAILABLE | MISSING | RESTRICTED
---@return number? luaKb memory of all the Lua of the client, if it can be read
function Profiler:ReadMemory()
	local state = Compat.Query("UpdateAddOnMemoryUsage")
	if state == Compat.MISSING then return nil, state end
	local getState, kb = Compat.Query("GetAddOnMemoryUsage", ADDON)
	if getState ~= Compat.AVAILABLE or type(kb) ~= "number" then
		return nil, getState == Compat.AVAILABLE and Compat.RESTRICTED or getState
	end
	-- the language and regional folders loaded on demand (#85, #101) are addons of their own: their memory counts too
	for _, name in ipairs(NS.Packs and NS.Packs:LoadedFolders() or {}) do
		local s, packKb = Compat.Query("GetAddOnMemoryUsage", name)
		if s == Compat.AVAILABLE and type(packKb) == "number" then kb = kb + packKb end
	end
	local ok, luaKb = pcall(collectgarbage, "count")
	return kb, Compat.AVAILABLE, (ok and type(luaKb) == "number") and luaKb or nil
end

---Reads and keeps a memory sample, with the session time at which it was taken.
---@return table? sample { t, kb, luaKb }
---@return string state
function Profiler:SampleMemory()
	local kb, state, luaKb = self:ReadMemory()
	if not kb then return nil, state end
	local sample = { t = Now() - self.startedAt, kb = kb, luaKb = luaKb }
	table.insert(self.memory, sample)
	while #self.memory > MAX_MEMORY do table.remove(self.memory, 2) end   -- the first sample (login) stays
	return sample, state
end

function Profiler:OnInit()
	self:Install()
	-- the first sample, a few seconds after login: "memory after login" of the checklist
	Compat.After(LOGIN_SAMPLE, function() Profiler:SampleMemory() end)
end

---------------------------------------------------------------------------
-- Director counters (called by Director for every resolved candidate)
---------------------------------------------------------------------------
local function NewOutcome() return { spoken = 0, silent = 0 } end

---@param event string
---@param result string spoken | chance | no_phrase | outranked | or the reason of the gate
---@param category? string
function Profiler:Outcome(event, result, category)
	local d = self.director
	local spoken = result == "spoken"
	d.offered = d.offered + 1
	local field = spoken and "spoken" or "silent"
	d[field] = d[field] + 1
	local r = Slot(d.results, result, function() return { n = 0 } end)
	r.n = r.n + 1
	local e = Slot(d.events, event, NewOutcome)
	e[field] = e[field] + 1
	local c = Slot(d.categories, category or "general", NewOutcome)
	c[field] = c[field] + 1
	if spoken then
		local hour = math.min(MAX_HOURS, math.floor((Now() - self.startedAt) / 3600) + 1)
		d.hours[hour] = (d.hours[hour] or 0) + 1
	end
end

---What a spoken intervention was (Director, after "spoken"): a monologue (#99) or a line of a composite situation
---(#100).
---@param rec? AUPhraseRecord
function Profiler:Shape(rec)
	if type(rec) ~= "table" then return end
	local d = self.director
	if rec.kind == "monologue" then d.monologues = d.monologues + 1 end
	if rec.situation then
		d.composites = d.composites + 1
		local s = Slot(d.situations, rec.situation, function() return { n = 0 } end)
		s.n = s.n + 1
	end
end

---------------------------------------------------------------------------
-- Report
---------------------------------------------------------------------------
local function Duration(seconds)
	seconds = math.floor(seconds)
	if seconds >= 3600 then return ("%dh %02dm"):format(math.floor(seconds / 3600), math.floor(seconds % 3600 / 60)) end
	return ("%dm %02ds"):format(math.floor(seconds / 60), seconds % 60)
end

local function TimingLine(name, t)
	if t.n == 0 then return ("%s: no samples yet"):format(name) end
	return ("%s: n=%d, p50 %.3f ms, p95 %.3f ms, max %.3f ms, mean %.3f ms"):format(name, t.n, Percentile(t, 0.5),
		Percentile(t, 0.95), t.max, t.total / t.n)
end

-- "key count, key count" by descending count (ties by name), at most `limit` entries
local function TopList(items, value, limit)
	local keys = {}
	for k in pairs(items) do table.insert(keys, k) end
	table.sort(keys, function(a, b)
		local va, vb = value(items[a]), value(items[b])
		if va ~= vb then return va > vb end
		return a < b
	end)
	local parts = {}
	for i = 1, math.min(#keys, limit or #keys) do
		table.insert(parts, ("%s %s"):format(keys[i], value(items[keys[i]], true)))
	end
	if #keys > #parts then table.insert(parts, ("(+%d more)"):format(#keys - #parts)) end
	return table.concat(parts, ", ")
end

---@param withMemory boolean take a fresh memory sample (scans every addon)
---@return string[] lines plain text, without colour codes or names: safe to paste into an issue
function Profiler:Report(withMemory)
	local lines = {}
	local function Add(s) table.insert(lines, s) end
	local b = Compat.build or Compat:GetBuildInfo()
	local elapsed = Now() - self.startedAt

	Add(("== %s %s profile, session %s =="):format(NS.name, NS.version, Duration(elapsed)))
	Add(("Client %s build %s, Interface %d, locale %s"):format(b.version, b.build, b.interface, tostring(b.locale)))

	local clock = self:Clock()
	Add(("Timing: debugprofilestop %s"):format(clock and "AVAILABLE" or "MISSING (no timings)"))
	Add(TimingLine("PickEntry", self.timings.PickEntry) ..
		(self.picks.found + self.picks.none > 0 and (" (line found %d, none %d)"):format(self.picks.found, self.picks.none) or ""))
	Add(TimingLine("BuildContext", self.timings.BuildContext))

	local current, state, luaKb
	if withMemory then current, state = self:SampleMemory() end
	if current then luaKb = current.luaKb end
	if current then
		Add(("Memory (this addon): %.0f KB now"):format(current.kb))
	else
		Add(("Memory (this addon): not read (%s)"):format(state or "no fresh sample"))
	end
	if luaKb then Add(("Memory (all Lua of the client): %.0f KB now"):format(luaKb)) end
	if #self.memory > 0 then
		local parts = {}
		for _, s in ipairs(self.memory) do table.insert(parts, ("%s %.0f KB"):format(Duration(s.t), s.kb)) end
		Add("Memory samples (session time): " .. table.concat(parts, ", "))
	end

	local d = self.director
	if d.offered == 0 then
		Add("Director: no candidates resolved yet")
	else
		local hours = math.max(elapsed, 60) / 3600
		Add(("Director: %d candidates, %d spoken (%.1f per hour), %d silent"):format(d.offered, d.spoken, d.spoken / hours, d.silent))
		Add("  by result: " .. TopList(d.results.items, function(r) return r.n end, 16))
		local perHour = {}
		for h = 1, MAX_HOURS do
			if d.hours[h] then table.insert(perHour, ("h%d %d"):format(h, d.hours[h])) end
		end
		if #perHour > 0 then Add("  spoken per session hour: " .. table.concat(perHour, ", ")) end
		local function Pair(o, withText)
			if withText then return ("%d/%d"):format(o.spoken, o.spoken + o.silent) end
			return o.spoken + o.silent
		end
		Add("  by event (spoken/candidates): " .. TopList(d.events.items, Pair, 16))
		Add("  by category (spoken/candidates): " .. TopList(d.categories.items, Pair, 16))
		Add(("  monologues %d, composite situations %d%s"):format(d.monologues, d.composites,
			d.composites > 0 and (" (" .. TopList(d.situations.items, function(r) return r.n end, 8) .. ")") or ""))
	end
	Add("Loading time is not measured by the addon (see the in-game checklist).")
	return lines
end

---One line for /au debug: no memory scan, the last sample is used.
---@return string
function Profiler:Summary()
	local function Part(name, t)
		if t.n == 0 then return name .. " -" end
		return ("%s p50 %.2f / p95 %.2f ms"):format(name, Percentile(t, 0.5), Percentile(t, 0.95))
	end
	local mem = self.memory[#self.memory]
	local d = self.director
	return ("%s; %s; memory %s; Director %d spoken, %d silent (/au prof for details)"):format(
		Part("PickEntry", self.timings.PickEntry), Part("BuildContext", self.timings.BuildContext),
		mem and ("%.0f KB"):format(mem.kb) or "-", d.spoken, d.silent)
end

---------------------------------------------------------------------------
-- /au prof [reset|copy]
---------------------------------------------------------------------------
local WORDS = NS.Keywords.Register("prof", { reset = "reset", copy = "copy" })

function Profiler:Command(rest)
	local word = WORDS[NS.Lower(rest or "")]
	if word == "reset" then
		self:Reset()
		NS:Print(NS:L("prof_reset_done"))
		return
	end
	local lines = self:Report(true)
	if word == "copy" and NS.JournalFrame and NS.JournalFrame:ShowExport(table.concat(lines, "\n"), "prof_export_title") then
		return
	end
	for _, line in ipairs(lines) do NS:Print(line) end
	NS:Print(NS:L("prof_hint"))
end
