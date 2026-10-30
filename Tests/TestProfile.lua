-- Tests of Core/Profiler.lua (/au prof, #81) and Core/Probe.lua (/au probe, #82): the format of the reports, the
-- counters beyond the 12 entries of the Director log, that no name or coordinate ever appears, and the behaviour when
-- an API is missing, fails or returns a secret value. The numbers are those of the mock, not of the real client.
local NS = ...
local Director, Narrator, Gateway, Profiler, Probe = NS.Director, NS.Narrator, NS.Gateway, NS.Profiler, NS.Probe
NS.db.locale = "en"     -- the reports are always English; the messages around them follow the language

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then
			s = s:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
			table.insert(out, (s:gsub("^PRINT: Azeroth Unspoken: ", "")))
		end
	end
	return table.concat(out, "\n")
end

local function Reset()
	NS.db.enabled, NS.paused = true, false
	NS.db.intensity = 50
	NS.db.pacing.globalCooldownSeconds = 0
	NS.db.chance = {}
	NS.db.chat.mode = "PRIVATE"
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.combat, P.instance, P.target = false, false, nil
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.Pacing:Reset()
	ADVANCE(1000)
	Profiler:Reset()
end

-- every name or value that must never reach a report
local SECRETS = { "Garrosh", "Grukk", "Mirabel", "Stormwind", "1234", "987", "Zone header" }
local function NoPersonalData(text, what)
	for _, word in ipairs(SECRETS) do
		T.ok(not text:find(word, 1, true), what .. ": no '" .. word .. "'")
	end
	T.ok(not text:find("\r", 1, true), what .. ": LF line endings")
end

-- a clock that returns the given values in order (then the last one): two readings per measured call
local function FakeClock(values)
	local i = 0
	local real = debugprofilestop
	debugprofilestop = function()
		i = math.min(i + 1, #values)
		return values[i]
	end
	return function() debugprofilestop = real end
end

local function RunDirector(event, n)
	for _ = 1, n do
		ADVANCE(200)
		Director:Offer(event)
		ADVANCE(1)
	end
end

---------------------------------------------------------------------------
-- /au prof
---------------------------------------------------------------------------
T.run("prof: timings, memory and the format of the report", function()
	Reset()
	local text = Cmd("prof")
	T.ok(text:find("profile, session", 1, true), "header")
	T.ok(text:find("Client 1.60.1 build 70658, Interface 16001", 1, true), "client line")
	T.ok(text:find("PickEntry: no samples yet", 1, true), "no samples yet before any pick")
	T.ok(text:find("Memory (this addon): 6400 KB now", 1, true), "memory of the addon")
	T.ok(text:find("Director: no candidates resolved yet", 1, true), "Director empty")
	T.ok(text:find("Loading time is not measured", 1, true), "loading time is left to the checklist")

	for _ = 1, 10 do NS.Engine:Pick("battle", NS:BuildContext(), "say") end
	text = Cmd("prof")
	T.ok(text:find("PickEntry: n=10, p50 [%d.]+ ms, p95 [%d.]+ ms, max [%d.]+ ms, mean [%d.]+ ms"), "PickEntry line: " .. text)
	T.ok(text:find("BuildContext: n=10, p50", 1, true), "BuildContext line")
	T.ok(text:find("line found 10, none 0", 1, true), "picks that found a line")
	NoPersonalData(text, "prof report")
end)

T.run("prof: p50, p95 and max come from the measured durations", function()
	Reset()
	local values, t = {}, 0
	for d = 1, 20 do                    -- 20 calls of 1..20 ms
		table.insert(values, t); table.insert(values, t + d); t = t + d + 5
	end
	local restore = FakeClock(values)
	for _ = 1, 20 do NS:BuildContext() end
	restore()
	local text = Cmd("prof")
	T.ok(text:find("BuildContext: n=20, p50 10.000 ms, p95 19.000 ms, max 20.000 ms, mean 10.500 ms", 1, true), text)
	T.ok(Profiler:Summary():find("BuildContext p50 10.00 / p95 19.00 ms", 1, true), "the summary of /au debug")
end)

T.run("prof: a Director silence is counted for the whole session, not only the last 12", function()
	Reset()
	NS.paused = true
	RunDirector("battle", 30)
	T.eq(#Director.log, Director.LOG_SIZE, "the log keeps only the last entries")
	NS.paused = false
	RunDirector("zone", 5)
	local d = Profiler.director
	T.eq(d.results.items.paused.n, 30, "30 pauses counted, the log holds 12")
	T.eq(d.offered, 35, "every candidate counted")
	T.eq(d.spoken + d.silent, d.offered, "spoken + silent = candidates")
	T.eq(d.events.items.battle.silent, 30, "per event")
	T.ok(d.categories.items.combat ~= nil and d.categories.items.combat.silent == 30, "per category (battle -> combat)")

	local text = Cmd("prof")
	T.ok(text:find("by result:", 1, true) and text:find("paused 30", 1, true), "the report lists the reason: " .. text)
	T.ok(text:find("by event (spoken/candidates):", 1, true) and text:find("battle 0/30", 1, true), "per event in the report")
	T.ok(text:find("by category (spoken/candidates):", 1, true) and text:find("combat 0/30", 1, true), "per category in the report")
end)

T.run("prof: interventions per hour and per session hour", function()
	Reset()
	NS.db.chance.battle = 100
	NS.EVENT_COOLDOWN.battle = 0
	for _ = 1, 3 do
		ADVANCE(300)
		P.combat = true; FIRE("PLAYER_REGEN_DISABLED"); ADVANCE(1)
		P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	end
	local spoken = Profiler.director.spoken
	T.ok(spoken >= 1, "the Director spoke at least once (" .. spoken .. ")")
	T.eq(Profiler.director.hours[1], spoken, "all in the first session hour")
	ADVANCE(3700)
	Profiler:Outcome("battle", "spoken", "combat")
	T.eq(Profiler.director.hours[2], 1, "an intervention after one hour goes to the second bucket")
	local text = Cmd("prof")
	T.ok(text:find("spoken per session hour: h1 " .. spoken .. ", h2 1", 1, true), text)
	T.ok(text:find("%(%d+%.%d per hour%)"), "rate per hour")
end)

T.run("prof: the counters are bounded and keep no free text", function()
	Reset()
	for i = 1, 200 do Profiler:Outcome("event_" .. i, "chance", "general") end
	T.ok(Profiler.director.events.n <= 64 + 1, "distinct events are capped")
	T.ok(Profiler.director.events.items.other ~= nil, "the rest goes to 'other'")
	Profiler:Outcome("Grukk the Mighty", "spoken", "Garrosh Hellscream")
	Profiler:Outcome("x", "module:Grukk Name", nil)
	local text = table.concat(Profiler:Report(false), "\n")
	NoPersonalData(text, "bounded counters")
	T.ok(Profiler.director.results.items.other ~= nil, "an unsafe reason becomes 'other'")
end)

T.run("prof reset starts a new measurement", function()
	Reset()
	NS:BuildContext()
	Profiler:Outcome("battle", "spoken", "combat")
	local text = Cmd("prof reset")
	T.ok(text:find("reset", 1, true), "answer")
	T.eq(Profiler.timings.BuildContext.n, 0, "timings cleared")
	T.eq(Profiler.director.offered, 0, "counters cleared")
	T.ok(Cmd("prof"):find("Director: no candidates resolved yet", 1, true), "report after reset")
end)

T.run("prof: when an API is missing, restricted or failing", function()
	Reset()
	-- no profiling clock: no timings, nothing breaks
	local clock = debugprofilestop
	debugprofilestop = nil
	local ctx = NS:BuildContext()
	T.ok(type(ctx) == "table", "BuildContext works without the clock")
	local text = Cmd("prof")
	T.ok(text:find("Timing: debugprofilestop MISSING", 1, true), "the missing clock is reported")
	T.ok(text:find("BuildContext: no samples yet", 1, true), "no timings")
	debugprofilestop = clock

	-- no memory API
	local update, get = UpdateAddOnMemoryUsage, GetAddOnMemoryUsage
	UpdateAddOnMemoryUsage = nil
	T.ok(Cmd("prof"):find("Memory (this addon): not read (MISSING)", 1, true), "UpdateAddOnMemoryUsage missing")
	UpdateAddOnMemoryUsage = update
	GetAddOnMemoryUsage = function() return MakeSecret() end
	T.ok(Cmd("prof"):find("not read (RESTRICTED)", 1, true), "a secret memory value is RESTRICTED")
	GetAddOnMemoryUsage = function() error("restricted") end
	T.ok(Cmd("prof"):find("not read (RESTRICTED)", 1, true), "a failing call is RESTRICTED")
	GetAddOnMemoryUsage = function() return "many" end
	T.ok(Cmd("prof"):find("not read", 1, true), "a non-number is not trusted")
	GetAddOnMemoryUsage = get
	T.ok(Cmd("prof"):find("Memory (this addon): 6400 KB now", 1, true), "back to normal")
end)

T.run("prof: memory samples over the session and /au debug", function()
	Reset()
	MEMORY_KB = 6400
	Profiler:SampleMemory()
	ADVANCE(3600)
	MEMORY_KB = 7100
	local text = Cmd("prof")
	T.ok(text:find("Memory samples (session time): 0m 00s 6400 KB, 1h 00m 7100 KB", 1, true), text)
	MEMORY_KB = 6400
	for _ = 1, 40 do Profiler:SampleMemory() end
	T.ok(#Profiler.memory <= 24, "memory samples are bounded")
	T.eq(Profiler.memory[1].kb, 6400, "the first sample (login) is kept")
	T.ok(Cmd("debug"):find("Profile: PickEntry", 1, true), "/au debug shows the profile line")
end)

T.run("prof copy opens the box with the same text", function()
	Reset()
	NS:BuildContext()
	Cmd("prof copy")
	local ex = _G.AzerothUnspokenJournalExport
	T.ok(ex ~= nil and ex:IsShown(), "the copy box opens")
	local text = ex.box:GetText()
	T.ok(text:find("profile, session", 1, true) and text:find("BuildContext: n=", 1, true), "the report is in the box")
	T.ok(not text:find("|c", 1, true), "no colour codes in the text to copy")
	NoPersonalData(text, "copy box")
	ex:Hide()
end)

T.run("prof is saved nowhere", function()
	Reset()
	Profiler:Outcome("battle", "spoken", "combat")
	local saved = SERIALIZE(AzerothUnspokenDB) .. SERIALIZE(AzerothUnspokenCharacterDB)
	T.ok(not saved:find("p95", 1, true) and not saved:find("PickEntry", 1, true) and not saved:find("hours", 1, true),
		"no profile data in the saved variables")
end)

---------------------------------------------------------------------------
-- /au probe
---------------------------------------------------------------------------
-- everything the probe lists in #82 (PlaySoundFile is not in the list: audio was dropped, D10)
local LISTED = { "C_Weather.GetCurrentWeather", "Enum.WeatherType", "event WEATHER_CHANGED", "C_DateAndTime.IsDayTime",
	"event DIEL_CYCLE_CHANGED", "C_AddOns.LoadAddOn", "UnitPosition", "event ZONE_CHANGED", "event ZONE_CHANGED_INDOORS",
	"event ZONE_CHANGED_NEW_AREA", "event MAP_EXPLORATION_UPDATED", "event AREA_POIS_UPDATED",
	"C_AreaPoiInfo.GetAreaPOIForMap", "C_QuestLog.GetNumQuestLogEntries", "C_QuestLog.GetInfo",
	"C_QuestLog.GetQuestObjectives", "event QUEST_LOG_UPDATE", "event QUEST_TURNED_IN", "C_Reputation.GetNumFactions",
	"C_Reputation.GetFactionDataByIndex", "UnitReaction", "event UPDATE_FACTION", "UnitOnTaxi",
	"event PLAYER_UPDATE_RESTING", "C_Secrets.ShouldUnitIdentityBeSecret(player)", "C_Secrets.HasSecretRestrictions",
	"debugprofilestop", "UpdateAddOnMemoryUsage", "GetAddOnMemoryUsage" }

local function Fresh()
	Reset()
	Probe:Stop()
	Probe:Reset()
	P.weather, P.isDay, P.onTaxi, P.resting = { type = 0, intensity = 0 }, true, false, false
	P.name, P.zone, P.instance, P.target, P.mapID = "Garrosh", "Durotar", false, nil, 1411
	return Probe
end

local function Lines(text)
	local out = {}
	for line in (text .. "\n"):gmatch("([^\n]*)\n") do out[#out + 1] = line end
	return out
end

local function Find(text, id)
	for _, line in ipairs(Lines(text)) do
		if line:find("] " .. id .. ":", 1, true) or line:find("] " .. id .. " ", 1, true) then return line end
	end
	return ""
end

T.run("probe: every API of the list is probed and shown with a state", function()
	Fresh()
	P.target = { name = "Grukk", hostile = true, level = 30, player = true, reaction = 2 }
	local text = Cmd("probe")
	T.ok(text:find("probe, session", 1, true), "header")
	T.ok(text:find("Client 1.60.1 build 70658, Interface 16001", 1, true), "client line")
	T.ok(text:find("Now: zone Durotar, mapID", 1, true), "where the probe ran")
	for _, id in ipairs(LISTED) do
		local line = Find(text, id)
		T.ok(line ~= "", "probed: " .. id)
		T.ok(line:find("^%[AVAILABLE%]") or line:find("^%[MISSING%]") or line:find("^%[RESTRICTED%]"), "a state: " .. line)
	end
	T.ok(not text:find("PlaySoundFile", 1, true), "PlaySoundFile is not probed (audio dropped, D10)")
	T.ok(text:find("Summary: %d+ AVAILABLE, %d+ RESTRICTED, %d+ MISSING"), "summary")
	T.ok(Find(text, "C_Weather.GetCurrentWeather"):find("{intensity=0, type=0}", 1, true), "weather sample")
	T.ok(Find(text, "Enum.WeatherType"):find("Rain=1", 1, true), "Enum.WeatherType values")
	T.ok(Find(text, "C_DateAndTime.IsDayTime"):find("-> true; game time 14:00", 1, true), "day time and game time")
	T.ok(Find(text, "C_AddOns.LoadAddOn"):find("out of combat", 1, true), "LoadAddOn out of combat")
	T.ok(Find(text, "C_AreaPoiInfo.GetAreaPOIForMap"):find("3 area POIs", 1, true), "area POIs counted")
	T.ok(Find(text, "UnitReaction"):find("-> 2 (an index from 1 to 8: yes)", 1, true), "reaction index")
	NoPersonalData(text, "probe report")
end)

T.run("probe: quests, reputation and flags show fields, never text", function()
	Fresh()
	local text = Cmd("probe")
	local info = Find(text, "C_QuestLog.GetInfo")
	T.ok(info:find("first quest:", 1, true) and info:find("questID=4711", 1, true), "quest fields: " .. info)
	T.ok(info:find("title=<text:", 1, true), "the title is only a length")
	T.ok(Find(text, "C_QuestLog.GetQuestObjectives"):find("1 objectives", 1, true), "objectives counted")
	local rep = Find(text, "C_Reputation.GetFactionDataByIndex")
	T.ok(rep:find("reaction=5", 1, true) and rep:find("name=<text:", 1, true), "reputation fields: " .. rep)
	T.ok(Find(text, "UnitReaction"):find("no target selected", 1, true), "UnitReaction without a target says so")
	T.ok(Find(text, "C_RestrictedActions.GetAddOnRestrictionState"):find("Combat=0", 1, true), "restriction states")
	NoPersonalData(text, "quests and reputation")
end)

T.run("probe: UnitPosition inside and outside an instance", function()
	Fresh()
	local out = Find(Cmd("probe"), "UnitPosition")
	T.ok(out:find("^%[AVAILABLE%]") and out:find("number,number,number,number", 1, true), "outside: " .. out)
	T.ok(out:find("[instance: none]", 1, true), "outside an instance")
	P.instance, P.instanceType = true, "party"
	out = Find(Cmd("probe"), "UnitPosition")
	T.ok(out:find("^%[RESTRICTED%]") and out:find("returned nil", 1, true), "in an instance the coordinates are hidden: " .. out)
	T.ok(out:find("[instance: party]", 1, true), "the instance type is shown")
	P.instance = false
end)

T.run("probe: events are listened to for the session and counted", function()
	Fresh()
	local text = Cmd("probe")
	T.ok(Probe.listening, "listening")
	T.ok(Find(text, "event WEATHER_CHANGED"):find("not fired in", 1, true), "not fired yet")
	-- rain, then clear sky, then rain again
	P.weather = { type = 1, intensity = 0.6 }; FIRE("WEATHER_CHANGED")
	P.weather = { type = 0, intensity = 0 }; FIRE("WEATHER_CHANGED")
	P.weather = { type = 1, intensity = 0.6 }; FIRE("WEATHER_CHANGED")
	P.isDay = false; FIRE("DIEL_CYCLE_CHANGED", false)
	P.resting = true; FIRE("PLAYER_UPDATE_RESTING")
	FIRE("QUEST_TURNED_IN", 4711, 500, 120)
	FIRE("QUEST_ACCEPTED", "The Secret Of Mirabel")
	FIRE("ZONE_CHANGED")
	text = Cmd("probe")
	local weather = Find(text, "event WEATHER_CHANGED")
	T.ok(weather:find("fired 3 times", 1, true) and weather:find("payload no payload", 1, true), "weather fired: " .. weather)
	T.ok(weather:find("{intensity=0.6, type=1} x2", 1, true) and weather:find("{intensity=0, type=0} x1", 1, true),
		"what the API said each time: " .. weather)
	T.ok(Find(text, "event DIEL_CYCLE_CHANGED"):find("payload false", 1, true), "the day/night payload")
	T.ok(Find(text, "event DIEL_CYCLE_CHANGED"):find("IsDayTime false", 1, true), "IsDayTime at the moment of the event")
	T.ok(Find(text, "event PLAYER_UPDATE_RESTING"):find("fired 1 times", 1, true), "resting fired")
	T.ok(Find(text, "event QUEST_TURNED_IN"):find("payload 4711, 500, 120", 1, true), "payload with numbers")
	T.ok(Find(text, "event QUEST_ACCEPTED"):find("payload <text:21>", 1, true), "text payload is only a length")
	T.ok(Find(text, "event ZONE_CHANGED"):find("subzone set false", 1, true), "subzone entered, without its name")
	NoPersonalData(text, "event probe")

	Cmd("probe reset")
	text = Cmd("probe")
	T.ok(Find(text, "event WEATHER_CHANGED"):find("not fired in", 1, true), "reset clears the counts")
	T.ok(Cmd("probe reset"):find("reset", 1, true), "reset answers")

	Cmd("probe stop")
	T.ok(not Probe.listening, "stopped")
	FIRE("WEATHER_CHANGED")
	T.eq(Probe.events.WEATHER_CHANGED.count, 0, "a stopped probe counts nothing")
	Cmd("probe")
	T.ok(Probe.listening, "/au probe listens again")
end)

T.run("probe: missing, failing and secret APIs", function()
	Fresh()
	local weather, day, quest, rep = C_Weather, C_DateAndTime, C_QuestLog, C_Reputation
	C_Weather = nil
	local text = Cmd("probe")
	T.ok(Find(text, "C_Weather.GetCurrentWeather"):find("^%[MISSING%]"), "a missing namespace is MISSING")
	C_Weather = { GetCurrentWeather = function() error("restricted in this zone") end }
	local line = Find(Cmd("probe"), "C_Weather.GetCurrentWeather")
	T.ok(line:find("^%[RESTRICTED%]") and line:find("error:", 1, true), "an error is RESTRICTED: " .. line)
	C_Weather = { GetCurrentWeather = function() return MakeSecret() end }
	line = Find(Cmd("probe"), "C_Weather.GetCurrentWeather")
	T.ok(line:find("^%[RESTRICTED%]") and line:find("a result was secret", 1, true), "a secret value is RESTRICTED: " .. line)
	C_Weather = { GetCurrentWeather = function() return nil end }
	line = Find(Cmd("probe"), "C_Weather.GetCurrentWeather")
	T.ok(line:find("^%[AVAILABLE%]") and line:find("-> nil", 1, true), "nil is not a failure: " .. line)
	C_Weather = weather

	C_DateAndTime, C_QuestLog, C_Reputation = nil, nil, nil
	text = Cmd("probe")
	T.ok(Find(text, "C_DateAndTime.IsDayTime"):find("^%[MISSING%]"), "IsDayTime missing")
	T.ok(Find(text, "C_QuestLog.GetInfo"):find("^%[MISSING%]"), "quest log missing")
	T.ok(Find(text, "C_Reputation.GetNumFactions"):find("^%[MISSING%]"), "reputation missing")
	T.ok(text:find("Summary: %d+ AVAILABLE, %d+ RESTRICTED, [1-9]%d* MISSING"), "missing ones are counted")
	C_DateAndTime, C_QuestLog, C_Reputation = day, quest, rep

	-- an error inside a probe does not stop the report
	local secrets = C_Secrets
	C_Secrets = setmetatable({}, { __index = function() error("boom") end })
	text = Cmd("probe")
	T.ok(text:find("Summary:", 1, true), "the report ends even if a probe fails")
	C_Secrets = secrets
end)

T.run("probe: an event the client does not know is MISSING", function()
	Fresh()
	VALID_EVENTS.DIEL_CYCLE_CHANGED = nil
	Probe:Stop()
	local text = Cmd("probe")
	local line = Find(text, "event DIEL_CYCLE_CHANGED")
	T.ok(line:find("^%[MISSING%]") and line:find("could not be registered", 1, true), "unknown event: " .. line)
	T.ok(Find(text, "event WEATHER_CHANGED"):find("^%[AVAILABLE%]"), "the others still work")
	VALID_EVENTS.DIEL_CYCLE_CHANGED = true
end)

T.run("probe: the identity of the target is only a flag, never a name", function()
	Fresh()
	P.target = { name = "Grukk", player = true, reaction = 3 }
	SECRET_UNITS.target = true
	local text = Cmd("probe")
	SECRET_UNITS.target = nil
	T.ok(Find(text, "C_Secrets.ShouldUnitIdentityBeSecret(target)"):find("-> true", 1, true), "the identity of the target is secret")
	NoPersonalData(text, "secret target")
	P.target = nil
end)

T.run("probe copy opens the box with the same text; both commands are in /au help", function()
	Fresh()
	Cmd("probe copy")
	local ex = _G.AzerothUnspokenJournalExport
	T.ok(ex ~= nil and ex:IsShown(), "the copy box opens")
	local text = ex.box:GetText()
	T.ok(text:find("probe, session", 1, true) and text:find("Summary:", 1, true), "the report is in the box")
	NoPersonalData(text, "probe copy box")
	ex:Hide()
	local help = Cmd("help")
	T.ok(help:find("/au prof [reset|copy]", 1, true) and help:find("/au probe [reset|stop|copy]", 1, true), "help lists both commands")
	local words = NS.Keywords.registry
	T.ok(words.prof.reset and words.probe.stop, "subcommand words are registered")
end)
