-- Azeroth Unspoken: probe of the client APIs that the vision features depend on (R0, #82): /au probe.
-- It checks, through Compat, whether each API exists, works or is hidden by the client (AVAILABLE / MISSING /
-- RESTRICTED) and shows a sample of what it returns. Event probes listen for the session and report whether the
-- events fired. Nothing is saved, nothing is sent. The report can be pasted into a public issue, so it never shows
-- text returned by the client (names, titles, chat), coordinates or GUIDs: numbers and flags only, text only as
-- its length.
local ADDON, NS = ...
local Compat = NS.Compat
local Probe = NS:RegisterModule("probe")
NS.Probe = Probe

local AVAILABLE, MISSING, RESTRICTED = Compat.AVAILABLE, Compat.MISSING, Compat.RESTRICTED

local MAX_SAMPLES = 6     -- distinct samples kept per event
local MAX_PAYLOAD = 4     -- payload values shown per event

local function Now() return (GetTime and GetTime()) or 0 end

---------------------------------------------------------------------------
-- Showing values without personal data
---------------------------------------------------------------------------
local function Num(v)
	if v ~= v or v == math.huge or v == -math.huge then return tostring(v) end
	if v == math.floor(v) and math.abs(v) < 1e15 then return ("%d"):format(v) end
	return ("%.4g"):format(v)
end

-- a field name that is a plain identifier (API field names always are)
local function SafeName(k)
	if type(k) == "string" and #k <= 32 and k:match("^[A-Za-z_][A-Za-z0-9_]*$") then return k end
	return nil
end

---Numbers and booleans as they are, text only as its length, tables as their scalar fields.
---@param v any
---@param maxFields? integer fields shown for a table (default 12)
---@param nested? boolean true inside a table: a table is then only "<table>"
---@return string
local function Show(v, maxFields, nested)
	if v == nil then return "nil" end
	if Compat.IsSecret(v) then return "<secret>" end
	local t = type(v)
	if t == "number" then return Num(v) end
	if t == "boolean" then return tostring(v) end
	if t == "string" then return ("<text:%d>"):format(#v) end
	if t ~= "table" then return "<" .. t .. ">" end
	if nested then return "<table>" end
	if #v > 0 then return ("<list:%d>"):format(#v) end
	local keys = {}
	for k in pairs(v) do
		if SafeName(k) then table.insert(keys, k) end
	end
	table.sort(keys)
	maxFields = maxFields or 12
	local parts = {}
	for i = 1, math.min(#keys, maxFields) do
		parts[i] = keys[i] .. "=" .. Show(v[keys[i]], maxFields, true)
	end
	if #keys > maxFields then table.insert(parts, "...") end
	return "{" .. table.concat(parts, ", ") .. "}"
end
Probe.Show = Show

local function Trim(s)
	s = tostring(s)
	if #s > 80 then s = s:sub(1, 80) .. "..." end
	return s
end

-- The result of Compat.Query as a state and a short text: "-> a, b"
local function Out(state, a, b, c, d, err)
	if state == MISSING then return state, "function not found" end
	if err then return state, "error: " .. Trim(err) end
	local parts = { Show(a) }
	for _, v in ipairs({ b, c, d }) do
		if v == nil then break end
		table.insert(parts, Show(v))
	end
	local detail = "-> " .. table.concat(parts, ", ")
	if state == RESTRICTED then detail = detail .. " (a result was secret)" end
	return state, detail
end

local function GameTime()
	local state, h, m = Compat.Query("GetGameTime")
	if state == AVAILABLE and type(h) == "number" then
		return ("%02d:%02d"):format(math.floor(h), math.floor(m or 0))
	end
	return nil
end

---------------------------------------------------------------------------
-- Samples taken when an event fires (what the API says at that moment)
---------------------------------------------------------------------------
local function SampleWeather()
	local state, info = Compat.Query("C_Weather.GetCurrentWeather")
	return "GetCurrentWeather " .. (state == AVAILABLE and Show(info, 8) or state)
end

local function SampleDayTime()
	local state, day = Compat.Query("C_DateAndTime.IsDayTime")
	return ("IsDayTime %s, game time %s"):format(state == AVAILABLE and Show(day) or state, GameTime() or "?")
end

local function SampleResting()
	local state, resting = Compat.Query("IsResting")
	return "IsResting " .. (state == AVAILABLE and Show(resting) or state)
end

local function SampleSubzone()
	local state, sub = Compat.Query("GetSubZoneText")
	local state2, indoors = Compat.Query("IsIndoors")
	return ("subzone set %s, indoors %s"):format(state == AVAILABLE and tostring(type(sub) == "string" and sub ~= "") or state,
		state2 == AVAILABLE and Show(indoors) or state2)
end

local function SampleQuestLog()
	local state, shown, quests = Compat.Query("C_QuestLog.GetNumQuestLogEntries")
	return "GetNumQuestLogEntries " .. (state == AVAILABLE and (Show(shown) .. ", " .. Show(quests)) or state)
end

local function SampleTaxi()
	local state, onTaxi = Compat.Query("UnitOnTaxi", "player")
	return "UnitOnTaxi " .. (state == AVAILABLE and Show(onTaxi) or state)
end

local function SampleReputation()
	local state, n = Compat.Query("C_Reputation.GetNumFactions")
	return "GetNumFactions " .. (state == AVAILABLE and Show(n) or state)
end

-- { event, sample }: every event is registered for the session when /au probe first runs
local EVENT_PROBES = {
	{ "WEATHER_CHANGED", SampleWeather },
	{ "DIEL_CYCLE_CHANGED", SampleDayTime },
	{ "PLAYER_UPDATE_RESTING", SampleResting },
	{ "ZONE_CHANGED", SampleSubzone },
	{ "ZONE_CHANGED_INDOORS", SampleSubzone },
	{ "ZONE_CHANGED_NEW_AREA", SampleSubzone },
	{ "MAP_EXPLORATION_UPDATED" },
	{ "AREA_POIS_UPDATED" },
	{ "QUEST_LOG_UPDATE", SampleQuestLog },
	{ "QUEST_ACCEPTED", SampleQuestLog },
	{ "QUEST_TURNED_IN", SampleQuestLog },
	{ "UPDATE_FACTION", SampleReputation },
	{ "FACTION_STANDING_CHANGED", SampleReputation },
	{ "TAXIMAP_OPENED", SampleTaxi },
}
Probe.EVENT_PROBES = EVENT_PROBES
local SAMPLER = {}
for _, def in ipairs(EVENT_PROBES) do SAMPLER[def[1]] = def[2] or false end

---------------------------------------------------------------------------
-- Event listeners
---------------------------------------------------------------------------
Probe.events = {}        -- [event] = { registered, detail, count, first, last, payload, samples, nSamples }
Probe.listening = false
Probe.listenStart = 0
local frame

local function NewRecord()
	return { count = 0, samples = {}, nSamples = 0 }
end

function Probe:Record(event, ...)
	local rec = self.events[event]
	if not rec then return end
	local t = Now() - self.listenStart
	rec.count = rec.count + 1
	rec.first = rec.first or t
	rec.last = t
	local shown = {}
	for i = 1, math.min(select("#", ...), MAX_PAYLOAD) do shown[i] = Show((select(i, ...))) end
	rec.payload = #shown > 0 and table.concat(shown, ", ") or "no payload"
	local sampler = SAMPLER[event]
	if sampler then
		local ok, text = pcall(sampler)
		text = ok and text or ("sample failed: " .. Trim(text))
		if rec.samples[text] == nil then
			if rec.nSamples >= MAX_SAMPLES then text = "(other)" else rec.nSamples = rec.nSamples + 1 end
		end
		rec.samples[text] = (rec.samples[text] or 0) + 1
	end
end

---Registers the probe events for the session (once).
function Probe:Listen()
	if self.listening then return end
	self.listening = true
	self.listenStart = Now()
	frame = frame or CreateFrame("Frame")
	frame:SetScript("OnEvent", function(_, event, ...)
		NS.Diagnostics:Guard("probe", Probe.Record, Probe, event, ...)
	end)
	for _, def in ipairs(EVENT_PROBES) do
		local event = def[1]
		local rec = NewRecord()
		self.events[event] = rec
		rec.registered = Compat:RegisterEvent(frame, event)
		local cap = Compat.caps["event:" .. event]
		rec.detail = cap and cap.detail
		rec.valid = Compat:IsEventValid(event)
	end
end

function Probe:Stop()
	if not self.listening then return end
	self.listening = false
	if frame then pcall(frame.UnregisterAllEvents, frame) end
end

---Forgets what was counted and starts the listening clock again (the registrations stay).
function Probe:Reset()
	for event, old in pairs(self.events) do
		local rec = NewRecord()
		rec.registered, rec.detail, rec.valid = old.registered, old.detail, old.valid
		self.events[event] = rec
	end
	self.listenStart = Now()
end

local function Duration(seconds)
	seconds = math.floor(seconds)
	if seconds >= 3600 then return ("%dh %02dm"):format(math.floor(seconds / 3600), math.floor(seconds % 3600 / 60)) end
	return ("%dm %02ds"):format(math.floor(seconds / 60), seconds % 60)
end

local function EventResult(event)
	local rec = Probe.events[event]
	if not rec then return MISSING, "not listening" end
	if not rec.registered then
		return MISSING, "could not be registered" .. (rec.detail and (" (" .. Trim(rec.detail) .. ")") or "")
	end
	local known = rec.valid == true and "known to the client" or (rec.valid == nil and "validity unknown" or "")
	if rec.count == 0 then
		return AVAILABLE, ("registered (%s), not fired in %s of listening"):format(known, Duration(Now() - Probe.listenStart))
	end
	local parts = { ("fired %d times (first at %s, last at %s)"):format(rec.count, Duration(rec.first), Duration(rec.last)),
		"payload " .. rec.payload }
	if rec.nSamples > 0 then
		local seen = {}
		for text, n in pairs(rec.samples) do table.insert(seen, ("%s x%d"):format(text, n)) end
		table.sort(seen)
		table.insert(parts, "seen: " .. table.concat(seen, "; "))
	end
	return AVAILABLE, table.concat(parts, "; ")
end

---------------------------------------------------------------------------
-- The probes, in the order of the report
---------------------------------------------------------------------------
local shared = {}   -- values passed from one probe to the next (the first quest found)

---@type { id?: string, event?: string, run?: fun(): string, string? }[]
local ITEMS = {
	-- profiling (#81)
	{ id = "debugprofilestop", run = function() return Out(Compat.Query("debugprofilestop")) end },
	{ id = "UpdateAddOnMemoryUsage", run = function() return Out(Compat.Query("UpdateAddOnMemoryUsage")) end },
	{ id = "GetAddOnMemoryUsage", run = function() return Out(Compat.Query("GetAddOnMemoryUsage", ADDON)) end },

	-- weather
	{ id = "C_Weather.GetCurrentWeather", run = function() return Out(Compat.Query("C_Weather.GetCurrentWeather")) end },
	{ id = "Enum.WeatherType", run = function()
		local enum = Enum and Enum.WeatherType
		if type(enum) ~= "table" then return MISSING, "not found" end
		return AVAILABLE, Show(enum, 24)
	end },
	{ event = "WEATHER_CHANGED" },

	-- day and night
	{ id = "C_DateAndTime.IsDayTime", run = function()
		local state, detail = Out(Compat.Query("C_DateAndTime.IsDayTime"))
		local time = GameTime()
		return state, time and (detail .. "; game time " .. time) or detail
	end },
	{ event = "DIEL_CYCLE_CHANGED" },

	-- loading an addon on demand (the real use is a pack that loads later; here the addon itself, already loaded)
	{ id = "C_AddOns.LoadAddOn", run = function()
		local combat = Compat.SafeCall("InCombatLockdown") == true
		local state, detail = Out(Compat.Query("C_AddOns.LoadAddOn", ADDON))
		return state, detail .. (combat and " [in combat]" or " [out of combat]")
	end },

	-- position
	{ id = "UnitPosition", run = function()
		local inInstance, kind = Compat.SafeCall("IsInInstance")
		local where = ("[instance: %s]"):format(inInstance and tostring(kind) or "none")
		local state, a, b, c, d, err = Compat.Query("UnitPosition", "player")
		if state == MISSING then return state, "function not found" end
		if err then return state, "error: " .. Trim(err) .. " " .. where end
		if a == nil and b == nil then
			return RESTRICTED, ("returned nil, no coordinates %s"):format(where)
		end
		local types = {}
		for _, v in ipairs({ a, b, c, d }) do table.insert(types, type(v)) end
		return state, ("returned %s (values not shown) %s"):format(table.concat(types, ","), where)
	end },

	-- discovery of places
	{ id = "C_AreaPoiInfo.GetAreaPOIForMap", run = function()
		local _, map = Compat.Query("C_Map.GetBestMapForUnit", "player")
		if type(map) ~= "number" then return RESTRICTED, "the client gives no map for the player" end
		local state, ids, _, _, _, err = Compat.Query("C_AreaPoiInfo.GetAreaPOIForMap", map)
		if state == MISSING then return state, "function not found" end
		if err then return state, "error: " .. Trim(err) end
		return state, ("map %s: %s area POIs"):format(Num(map), type(ids) == "table" and #ids or "nil")
	end },
	{ event = "ZONE_CHANGED" },
	{ event = "ZONE_CHANGED_INDOORS" },
	{ event = "ZONE_CHANGED_NEW_AREA" },
	{ event = "MAP_EXPLORATION_UPDATED" },
	{ event = "AREA_POIS_UPDATED" },

	-- quests
	{ id = "C_QuestLog.GetNumQuestLogEntries", run = function() return Out(Compat.Query("C_QuestLog.GetNumQuestLogEntries")) end },
	{ id = "C_QuestLog.GetInfo", run = function()
		shared.questID = nil
		local state, shown = Compat.Query("C_QuestLog.GetNumQuestLogEntries")
		if state ~= AVAILABLE then return state, "no quest log to read" end
		for i = 1, math.min(type(shown) == "number" and shown or 0, 40) do
			local s, info, _, _, _, err = Compat.Query("C_QuestLog.GetInfo", i)
			if s ~= AVAILABLE then return s, err and ("error: " .. Trim(err)) or "hidden by the client" end
			if type(info) == "table" and not info.isHeader then
				shared.questID = type(info.questID) == "number" and info.questID or nil
				return AVAILABLE, "first quest: " .. Show(info, 16)
			end
		end
		return AVAILABLE, "no quest in the log to inspect (accept one and run again)"
	end },
	{ id = "C_QuestLog.GetQuestObjectives", run = function()
		if not shared.questID then return AVAILABLE, "no quest to inspect" end
		local state, list, _, _, _, err = Compat.Query("C_QuestLog.GetQuestObjectives", shared.questID)
		if state == MISSING then return state, "function not found" end
		if err then return state, "error: " .. Trim(err) end
		if type(list) ~= "table" then return state, "-> " .. Show(list) end
		return state, ("%d objectives; first: %s"):format(#list, Show(list[1], 12))
	end },
	{ event = "QUEST_LOG_UPDATE" },
	{ event = "QUEST_ACCEPTED" },
	{ event = "QUEST_TURNED_IN" },

	-- reputation
	{ id = "C_Reputation.GetNumFactions", run = function() return Out(Compat.Query("C_Reputation.GetNumFactions")) end },
	{ id = "C_Reputation.GetFactionDataByIndex", run = function()
		local state, data, _, _, _, err = Compat.Query("C_Reputation.GetFactionDataByIndex", 1)
		if state == MISSING then return state, "function not found" end
		if err then return state, "error: " .. Trim(err) end
		return state, "first faction: " .. Show(data, 16)
	end },
	{ id = "UnitReaction", run = function()
		if Compat.SafeCall("UnitExists", "target") ~= true then
			local known = type(Compat.Resolve("UnitReaction")) == "function"
			return known and AVAILABLE or MISSING, known and "no target selected: target a creature and run again" or "function not found"
		end
		local state, reaction, _, _, _, err = Compat.Query("UnitReaction", "target", "player")
		if state == MISSING then return state, "function not found" end
		if err then return state, "error: " .. Trim(err) end
		if type(reaction) ~= "number" then return state, "-> " .. Show(reaction) end
		return state, ("-> %s (an index from 1 to 8: %s)"):format(Num(reaction), (reaction >= 1 and reaction <= 8) and "yes" or "NO")
	end },
	{ event = "UPDATE_FACTION" },
	{ event = "FACTION_STANDING_CHANGED" },

	-- flight and rest
	{ id = "UnitOnTaxi", run = function() return Out(Compat.Query("UnitOnTaxi", "player")) end },
	{ event = "TAXIMAP_OPENED" },
	{ id = "IsResting", run = function() return Out(Compat.Query("IsResting")) end },
	{ event = "PLAYER_UPDATE_RESTING" },

	-- secret values and restrictions
	{ id = "C_Secrets.HasSecretRestrictions", run = function() return Out(Compat.Query("C_Secrets.HasSecretRestrictions")) end },
	{ id = "C_Secrets.ShouldUnitIdentityBeSecret(player)", run = function()
		return Out(Compat.Query("C_Secrets.ShouldUnitIdentityBeSecret", "player"))
	end },
	{ id = "C_Secrets.ShouldUnitIdentityBeSecret(target)", run = function()
		if Compat.SafeCall("UnitExists", "target") ~= true then
			local known = type(Compat.Resolve("C_Secrets.ShouldUnitIdentityBeSecret")) == "function"
			return known and AVAILABLE or MISSING, known and "no target selected: target a creature or a player and run again"
				or "function not found"
		end
		return Out(Compat.Query("C_Secrets.ShouldUnitIdentityBeSecret", "target"))
	end },
	{ id = "C_Secrets.ShouldAurasBeSecret", run = function() return Out(Compat.Query("C_Secrets.ShouldAurasBeSecret")) end },
	{ id = "C_Secrets.ShouldCooldownsBeSecret", run = function() return Out(Compat.Query("C_Secrets.ShouldCooldownsBeSecret")) end },
	{ id = "C_Secrets.ShouldUnitStatsBeSecret", run = function() return Out(Compat.Query("C_Secrets.ShouldUnitStatsBeSecret")) end },
	{ id = "C_RestrictedActions.GetAddOnRestrictionState", run = function()
		local parts, any = {}, false
		for _, kind in ipairs(Compat.RESTRICTION_TYPES) do
			local value = Compat:RestrictionState(kind)
			if value ~= nil then any = true end
			table.insert(parts, kind .. "=" .. (value ~= nil and Num(value) or "?"))
		end
		if not any then return MISSING, "no restriction state readable" end
		return AVAILABLE, table.concat(parts, ", ")
	end },
}

---------------------------------------------------------------------------
-- Report
---------------------------------------------------------------------------
---@return string[] lines plain text, without colour codes or names: safe to paste into an issue
---@return table totals { AVAILABLE, RESTRICTED, MISSING }
function Probe:Run()
	self:Listen()
	shared = {}
	local lines, totals = {}, { AVAILABLE = 0, RESTRICTED = 0, MISSING = 0 }
	local function Add(s) table.insert(lines, s) end
	local b = Compat.build or Compat:GetBuildInfo()
	local profiler = NS.Profiler

	Add(("== %s %s probe, session %s =="):format(NS.name, NS.version, Duration(Now() - (profiler and profiler.startedAt or 0))))
	Add(("Client %s build %s, Interface %d, locale %s, Forever %s"):format(b.version, b.build, b.interface,
		tostring(b.locale), tostring(b.isForever)))
	local zone = Compat.SafeCall("GetRealZoneText")
	local _, map = Compat.Query("C_Map.GetBestMapForUnit", "player")
	local inInstance, kind = Compat.SafeCall("IsInInstance")
	Add(("Now: zone %s, mapID %s, instance %s, combat %s, resting %s, game time %s"):format(
		type(zone) == "string" and zone ~= "" and zone or "?", type(map) == "number" and Num(map) or "?",
		inInstance and tostring(kind) or "none", Compat.SafeCall("InCombatLockdown") == true and "yes" or "no",
		Compat.SafeCall("IsResting") == true and "yes" or "no", GameTime() or "?"))
	Add(("Event listeners: started at session %s"):format(Duration(self.listenStart - (profiler and profiler.startedAt or 0))))

	for _, item in ipairs(ITEMS) do
		local id, state, detail = item.id or item.event, nil, nil
		if item.event then
			state, detail = EventResult(item.event)
			id = "event " .. item.event
		else
			local ok, s, d = pcall(item.run)
			if ok then state, detail = s, d else state, detail = RESTRICTED, "probe error: " .. Trim(s) end
		end
		totals[state] = (totals[state] or 0) + 1
		Add(("[%s] %s%s"):format(state, id, detail and (": " .. detail) or ""))
	end
	Add(("Summary: %d AVAILABLE, %d RESTRICTED, %d MISSING. AVAILABLE means the call worked, not that the data is useful."):format(
		totals.AVAILABLE, totals.RESTRICTED, totals.MISSING))
	return lines, totals
end

---------------------------------------------------------------------------
-- /au probe [reset|stop|copy]
---------------------------------------------------------------------------
local WORDS = NS.Keywords.Register("probe", { reset = "reset", stop = "stop", copy = "copy" })

function Probe:Command(rest)
	local word = WORDS[NS.Lower(rest or "")]
	if word == "reset" then
		self:Reset()
		NS:Print(NS:L("probe_reset_done"))
		return
	elseif word == "stop" then
		self:Stop()
		NS:Print(NS:L("probe_stopped"))
		return
	end
	local lines = self:Run()
	if word == "copy" and NS.JournalFrame and NS.JournalFrame:ShowExport(table.concat(lines, "\n"), "probe_export_title") then
		return
	end
	for _, line in ipairs(lines) do NS:Print(line) end
	NS:Print(NS:L("probe_hint"))
end
