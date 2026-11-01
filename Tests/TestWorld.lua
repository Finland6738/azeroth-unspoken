-- Tests of Systems/World.lua (R3, #92 #93 #94 #95 #121; ADR 0028): weather, day and night, subzones and landmarks,
-- quests, reputation, inns and flights. Every API is replaced or removed through the mock: the client has never been
-- asked (/au probe, #82), so each reading must degrade to "unknown" and leave the rest of the addon unchanged.
local NS = ...
local Engine, World, Director, Compat, Validator = NS.Engine, NS.World, NS.Director, NS.Compat, NS.Validator

local EVENTS = { "weather_change", "dawn", "dusk", "subzone_enter", "landmark", "quest_progress", "quest_complete",
	"reputation_change", "rest_enter", "journey" }

local function Reset()
	SENT = {}
	HW = false
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.chat.mode = "PRIVATE"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.db.chance = {}
	for _, e in ipairs(EVENTS) do NS.db.chance[e] = 100 end
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.Gateway:Discard()
	NS.Narrator:Clear()
	NS.Narrator:ClearHistory()
	P.combat, P.instance, P.weather, P.isDay, P.onTaxi, P.resting = false, false, { type = 0, intensity = 0 }, nil, false, false
	P.hour, P.zone, P.subzone, P.mapID, P.pos, P.target = 14, "Durotar", "", nil, nil, nil
	QUESTS = { { title = "Zone header", isHeader = true } }
	QUEST_READY, QUEST_OBJECTIVES = {}, {}
	FACTIONS = {}
	World:Reset()
	ADVANCE(1000)
	NS.Pacing:Reset()
	for i = #Director.log, 1, -1 do Director.log[i] = nil end
	World.weather, World.isDay, World.resting = nil, nil, nil
end

-- the last decisions of the Director for an event: "spoken", "no_phrase", "chance"... or nil if never offered
local function Result(event)
	for i = #Director.log, 1, -1 do
		if Director.log[i].event == event then return Director.log[i].result end
	end
	return nil
end

local function Offered(event) return Result(event) ~= nil end

local function LastText()
	local h = NS.Narrator.history
	return h[#h] and h[#h].text or ""
end

-- the world as the client shows it
local function Baseline(opts)
	opts = opts or {}
	World.weather = opts.weather or Compat:Weather()
	if World.weather == "unknown" then World.weather = nil end
	World.isDay = Compat:IsDayTime()
	World.resting = Compat.SafeCall("IsResting") == true
end

---------------------------------------------------------------------------
-- Compat: weather, day and night, taxi, position
---------------------------------------------------------------------------
T.run("Compat:Weather reads the type by the name of the enum", function()
	Reset()
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0.5 }
	T.eq(Compat:Weather(), "rain", "rain")
	P.weather = { type = Enum.WeatherType.Snow, intensity = 1 }
	T.eq(Compat:Weather(), "snow", "snow")
	P.weather = { type = Enum.WeatherType.Storm, intensity = 1 }
	T.eq(Compat:Weather(), "storm", "storm")
	P.weather = { type = Enum.WeatherType.Clear, intensity = 0 }
	T.eq(Compat:Weather(), "clear", "clear")
	-- the names of the values are not in the API dump: other spellings are read by their words
	local saved = Enum.WeatherType
	Enum.WeatherType = { HeavyRain = 7, Sandstorm = 8, Thunderstorm = 9, FogBank = 10, Blizzard = 11, None = 0 }
	for value, expected in pairs({ [7] = "rain", [8] = "sand", [9] = "storm", [10] = "fog", [11] = "snow", [0] = "clear" }) do
		P.weather = { type = value, intensity = value == 0 and 0 or 0.4 }
		T.eq(Compat:Weather(), expected, "value " .. value)
	end
	Enum.WeatherType = saved
	P.weather = { type = "Rain", intensity = 0.3 }
	T.eq(Compat:Weather(), "rain", "the type can be the name itself")
end)

T.run("Compat:Weather: unreadable is unknown, never clear", function()
	Reset()
	P.weather = { type = 99, intensity = 0.5 }
	T.eq(Compat:Weather(), "unknown", "a value the enum does not have")
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0 }
	T.eq(Compat:Weather(), "unknown", "rain with zero intensity contradicts itself")
	P.weather = nil
	T.eq(Compat:Weather(), "unknown", "no table")
	P.weather = { type = MakeSecret(), intensity = 0.5 }
	T.eq(Compat:Weather(), "unknown", "a secret type")
	P.weather = MakeSecret()
	T.eq(Compat:Weather(), "unknown", "a secret table")
	local saved = C_Weather
	C_Weather = nil
	T.eq(Compat:Weather(), "unknown", "API missing")
	C_Weather = { GetCurrentWeather = function() error("restricted") end }
	T.eq(Compat:Weather(), "unknown", "API that raises an error")
	C_Weather = saved
	local savedEnum = Enum.WeatherType
	Enum.WeatherType = nil
	P.weather = { type = 1, intensity = 0.5 }
	T.eq(Compat:Weather(), "unknown", "a number with no enum to read it by")
	Enum.WeatherType = savedEnum
end)

T.run("Compat: day, taxi and position say nil when they do not know", function()
	Reset()
	P.isDay = true
	T.eq(Compat:IsDayTime(), true, "day")
	P.isDay = false
	T.eq(Compat:IsDayTime(), false, "night")
	P.isDay = MakeSecret()
	T.eq(Compat:IsDayTime(), nil, "secret")
	P.isDay = nil
	local saved = C_DateAndTime
	C_DateAndTime = nil
	T.eq(Compat:IsDayTime(), nil, "API missing")
	C_DateAndTime = saved
	P.onTaxi = true
	T.eq(Compat:OnTaxi(), true, "on a taxi")
	local taxi = UnitOnTaxi
	UnitOnTaxi = nil
	T.eq(Compat:OnTaxi(), nil, "UnitOnTaxi missing")
	UnitOnTaxi = taxi
	P.pos = { 0.4, 0.6 }
	local x, y = Compat:PlayerPosition(1411)
	T.ok(x == 0.4 and y == 0.6, "position")
	P.instance = true
	T.eq(Compat:PlayerPosition(1411), nil, "no position in an instance")
	P.instance = false
	T.eq(Compat:PlayerPosition(nil), nil, "no map")
end)

---------------------------------------------------------------------------
-- #93 Day and night
---------------------------------------------------------------------------
T.run("ctx.time: the client says day or night, the old thresholds are the fallback", function()
	Reset()
	-- the fallback (no answer from the client): the fixed thresholds of before R3
	local saved = C_DateAndTime
	C_DateAndTime = nil
	for hour, expected in pairs({ [2] = "night", [5] = "dawn", [7] = "dawn", [8] = "day", [14] = "day", [18] = "dusk",
		[20] = "dusk", [21] = "night", [23] = "night" }) do
		P.hour = hour
		local ctx = NS:BuildContext()
		T.eq(ctx.time, expected, "fallback at " .. hour)
		T.eq(ctx.isDay, nil, "no answer from the client")
	end
	C_DateAndTime = saved
	-- with the client: night is night, and day is day except in the transition hours
	P.isDay = false
	P.hour = 14
	T.eq(NS:BuildContext().time, "night", "the client says night at 14: night")
	P.isDay = true
	P.hour = 14
	T.eq(NS:BuildContext().time, "day", "the client says day")
	P.hour = 6
	T.eq(NS:BuildContext().time, "dawn", "day at 6 is dawn (threshold)")
	P.hour = 19
	T.eq(NS:BuildContext().time, "dusk", "day at 19 is dusk (threshold)")
	P.hour = 2
	T.eq(NS:BuildContext().time, "day", "the client wins over the clock")
	T.ok(NS:BuildContext().isDay == true, "ctx.isDay")
	P.isDay = nil
end)

T.run("dayTime condition: unknown is false for true and for false", function()
	Reset()
	local ctx = NS:BuildContext()
	T.ok(Engine.Match({ dayTime = true }, ctx), "day")
	T.ok(not Engine.Match({ dayTime = false }, ctx), "not night")
	P.isDay = false
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ dayTime = false }, ctx) and not Engine.Match({ dayTime = true }, ctx), "night")
	local saved = C_DateAndTime
	C_DateAndTime = nil
	ctx = NS:BuildContext()
	T.ok(not Engine.Match({ dayTime = true }, ctx) and not Engine.Match({ dayTime = false }, ctx), "unknown matches neither")
	C_DateAndTime = saved
	P.isDay = nil
end)

T.run("dusk and dawn events from DIEL_CYCLE_CHANGED, calibrated by the change seen", function()
	Reset()
	P.hour = 17
	P.isDay = true
	Baseline()
	P.isDay = false
	FIRE("DIEL_CYCLE_CHANGED", false)
	ADVANCE(1)
	T.eq(Result("dusk"), "spoken", "dusk offered and spoken")
	T.ok(LastText() ~= "", "a line")
	-- the transition hours are learned: dusk is the two hours before the change
	T.ok(World.dusk and World.dusk[1] == 15 and World.dusk[2] == 17, "dusk window 15-17")
	P.isDay = true
	P.hour = 16
	T.eq(NS:BuildContext().time, "dusk", "16 is dusk now")
	P.hour = 14
	T.eq(NS:BuildContext().time, "day", "14 is day")
	ADVANCE(1000)
	P.hour = 6
	P.isDay = true
	FIRE("DIEL_CYCLE_CHANGED", true)
	ADVANCE(1)
	T.eq(Result("dawn"), "spoken", "dawn offered")
	T.ok(World.dawn and World.dawn[1] == 6 and World.dawn[2] == 8, "dawn window 6-8")
	P.isDay = nil
end)

T.run("dawn and dusk: first value is a baseline, repeated value is ignored, combat is silent", function()
	Reset()
	P.isDay = true
	FIRE("DIEL_CYCLE_CHANGED", true)
	ADVANCE(1)
	T.ok(not Offered("dawn"), "the first reading is not a change")
	P.isDay = false
	P.combat = true
	FIRE("DIEL_CYCLE_CHANGED", false)
	ADVANCE(1)
	T.ok(not Offered("dusk"), "no dusk in combat")
	P.combat = false
	ADVANCE(100)
	FIRE("DIEL_CYCLE_CHANGED", false)
	ADVANCE(1)
	T.ok(not Offered("dusk"), "the same value again is not a change")
	P.isDay = nil
end)

T.run("dusk without the event: the clock is polled", function()
	Reset()
	local savedDay, savedState = C_DateAndTime, Compat:State("event:DIEL_CYCLE_CHANGED")
	C_DateAndTime = nil
	Compat:SetCap("event:DIEL_CYCLE_CHANGED", "event", "MISSING", "test")
	P.hour = 17
	World:Poll()
	T.ok(not Offered("dusk"), "baseline")
	P.hour = 18
	World:Poll()
	ADVANCE(1)
	T.eq(Result("dusk"), "spoken", "the fixed threshold at 18")
	-- with the event available, the poll does nothing
	Compat:SetCap("event:DIEL_CYCLE_CHANGED", "event", "AVAILABLE", "test")
	ADVANCE(1000)
	P.hour = 5
	World:Poll()
	World.period = "night"
	P.hour = 5
	World:Poll()
	T.ok(not Offered("dawn"), "no poll when the client sends the event")
	C_DateAndTime = savedDay
	Compat:SetCap("event:DIEL_CYCLE_CHANGED", "event", savedState or "AVAILABLE", "test")
end)

---------------------------------------------------------------------------
-- #92 Weather
---------------------------------------------------------------------------
T.run("ctx.weather and the weather condition", function()
	Reset()
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0.7 }
	local ctx = NS:BuildContext()
	T.eq(ctx.weather, "rain", "ctx.weather")
	T.ok(Engine.Match({ weather = "rain" }, ctx), "weather = rain")
	T.ok(Engine.Match({ weather = { "snow", "rain" } }, ctx), "a list")
	T.ok(not Engine.Match({ weather = "clear" }, ctx), "not clear")
	P.weather = nil
	ctx = NS:BuildContext()
	T.eq(ctx.weather, "unknown", "unreadable")
	for _, w in ipairs(Compat.WEATHER_KINDS) do T.ok(not Engine.Match({ weather = w }, ctx), "unknown matches no " .. w) end
end)

T.run("weather_change: the change is offered once it stays", function()
	Reset()
	Baseline()
	T.eq(World.weather, "clear", "baseline")
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0.8 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(1)
	T.ok(not Offered("weather_change"), "not before the weather has settled")
	ADVANCE(3)
	T.eq(Result("weather_change"), "spoken", "rain begins")
	T.ok(LastText() ~= "", "a line of the narrator")
	T.eq(World.weather, "rain", "remembered")
end)

T.run("weather_change: flicker, same weather, first reading, arrival and combat", function()
	Reset()
	Baseline()
	-- rain that comes and goes within the settle time: nothing
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0.8 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(1)
	P.weather = { type = Enum.WeatherType.Clear, intensity = 0 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(5)
	T.ok(not Offered("weather_change"), "a flicker is not a change")
	-- same weather again
	FIRE("WEATHER_CHANGED")
	ADVANCE(5)
	T.ok(not Offered("weather_change"), "same weather")
	-- the first reading of a session is a baseline
	World.weather = nil
	P.weather = { type = Enum.WeatherType.Snow, intensity = 1 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(5)
	T.ok(not Offered("weather_change"), "first reading")
	T.eq(World.weather, "snow", "but it is remembered")
	-- in combat
	P.combat = true
	P.weather = { type = Enum.WeatherType.Storm, intensity = 1 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(5)
	T.ok(not Offered("weather_change"), "not in combat")
	P.combat = false
	-- right after a loading screen the zone speaks, not the weather
	ADVANCE(1000)
	LOADING_SCREEN("Elwynn Forest")
	P.weather = { type = Enum.WeatherType.Rain, intensity = 1 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(4)
	T.ok(not Offered("weather_change"), "quiet right after a loading screen")
	T.eq(World.weather, "rain", "the new weather is the new starting point")
end)

T.run("weather: unreadable weather changes nothing and names nothing", function()
	Reset()
	Baseline()
	P.weather = nil
	FIRE("WEATHER_CHANGED")
	ADVANCE(5)
	T.ok(not Offered("weather_change"), "no event")
	T.eq(World.weather, "clear", "the last known value stays")
	-- the rules that name the weather cannot be chosen
	local ctx = NS:BuildContext()
	local n = 0
	for id, p in pairs(Engine.byId) do
		if p.when and p.when.weather and Engine.Match(p.when, ctx) then n = n + 1 end
	end
	T.eq(n, 0, "no weather rule matches an unknown weather")
	-- an API that is missing: the zone and the muse lines still work
	local saved = C_Weather
	C_Weather = nil
	ctx = NS:BuildContext()
	T.eq(ctx.weather, "unknown", "API missing")
	T.ok(pcall(NS.BuildContext, NS), "the rest of the addon keeps working")
	C_Weather = saved
end)

T.run("weather: a rain line is chosen under rain and never under a clear sky", function()
	Reset()
	P.weather = { type = Enum.WeatherType.Rain, intensity = 0.6 }
	local ctx = NS:BuildContext({ weather = "rain" })
	local found = 0
	for _, p in ipairs(Engine.byEvent.weather_change or {}) do
		if Engine.Match(p.when, ctx) then found = found + 1 end
	end
	T.ok(found >= 3, "at least three rules for rain: " .. found)
	P.weather = { type = Enum.WeatherType.Clear, intensity = 0 }
	ctx = NS:BuildContext()
	for _, p in ipairs(Engine.byEvent.weather_change or {}) do
		if Engine.Match(p.when, ctx) then
			T.ok(p.when.weather == "clear", "under a clear sky only clear lines: " .. p.id)
		end
	end
end)

---------------------------------------------------------------------------
-- #94 Subzones and landmarks
---------------------------------------------------------------------------
local function EnterSubzone(name, indoors)
	P.subzone = name
	FIRE(indoors and "ZONE_CHANGED_INDOORS" or "ZONE_CHANGED")
	ADVANCE(4)
end

T.run("subzone_enter: a new subzone is offered, the same one is not", function()
	Reset()
	EnterSubzone("The Dust Road")
	T.eq(Result("subzone_enter"), "spoken", "offered and spoken")
	T.ok(LastText():find("Dust Road", 1, true) ~= nil or LastText() ~= "", "a line")
	local n = #Director.log
	EnterSubzone("The Dust Road")
	T.eq(#Director.log, n, "the same subzone: nothing")
	-- out to open ground (empty name) and back within the memory time: nothing
	EnterSubzone("")
	EnterSubzone("The Dust Road")
	T.eq(#Director.log, n, "back to the same subzone soon after: nothing")
	ADVANCE(World.SUBZONE_MEMORY + 10)
	EnterSubzone("")
	EnterSubzone("The Dust Road")
	T.ok(#Director.log > n, "after the memory time it can speak again")
end)

T.run("subzone_enter: flicker at a border, combat, indoors and arrival", function()
	Reset()
	-- a border that flickers: A -> B -> A within the settle time
	P.subzone = "Border Camp"
	FIRE("ZONE_CHANGED")
	ADVANCE(1)
	P.subzone = ""
	FIRE("ZONE_CHANGED")
	ADVANCE(0.5)
	P.subzone = "Border Camp"
	FIRE("ZONE_CHANGED")
	ADVANCE(4)
	T.eq(#Director.log, 1, "a single offer for a flickering border")
	-- in combat
	Reset()
	P.combat = true
	EnterSubzone("Fighting Ground")
	T.ok(not Offered("subzone_enter"), "no subzone in combat")
	P.combat = false
	-- ZONE_CHANGED_INDOORS is a subzone change too
	Reset()
	EnterSubzone("The Quiet Cellar", true)
	T.eq(Result("subzone_enter"), "spoken", "indoors")
	-- the first seconds after a loading screen belong to the zone event
	Reset()
	LOADING_SCREEN("Elwynn Forest")
	P.subzone = "Fresh Arrival"
	FIRE("ZONE_CHANGED")
	ADVANCE(4)
	T.ok(not Offered("subzone_enter"), "quiet after a loading screen")
end)

T.run("subzone events never load a pack", function()
	Reset()
	local before = #LOAD_CALLS
	for i = 1, 30 do
		P.subzone = "Place " .. i
		FIRE(i % 2 == 0 and "ZONE_CHANGED" or "ZONE_CHANGED_INDOORS")
		ADVANCE(4)
	end
	T.eq(#LOAD_CALLS, before, "LoadAddOn was not called by 30 subzone changes")
end)

T.run("landmarks: data format and validation", function()
	local before = #World.landmarkIssues
	NS:RegisterLandmarks({
		{ id = "test.ok", zone = "Test Zone", subzone = "Test Hall", tags = { "inn" } },
		{ id = "test.ok", zone = "Test Zone", subzone = "Other Hall" },
		{ subzone = "No Id" },
		{ id = "test.nosub" },
		{ id = "test.badxy", subzone = "Bad Place", x = 2, y = 0.5 },
		{ id = "test.noy", subzone = "Half Place", x = 0.5 },
		{ id = "test.radius", subzone = "Wide Place", x = 0.5, y = 0.5, radius = 3 },
		{ id = "test.radiusnox", subzone = "Wide Place", radius = 0.1 },
		{ id = "bad id!", subzone = "Space" },
		"not a table",
	})
	T.eq(#World.landmarkIssues - before, 9, "nine invalid entries are reported")
	T.ok(World.landmarks["test.ok"] ~= nil and World.landmarks["test.badxy"] == nil, "only the valid one is kept")
	T.ok(Engine.CONDITION_VALUES.landmark["test.ok"] and Engine.CONDITION_VALUES.landmark["inn"],
		"ids and tags are the allowed values of the condition")
	-- the shipped data is clean
	for _, issue in ipairs(World.landmarkIssues) do
		T.ok(issue.id:find("^test") or issue.id:find("^#") or issue.id == "bad id!" or issue.id == "nil",
			"shipped landmark with a problem: " .. issue.id .. " " .. issue.message)
	end
	World.landmarkIssues = {}
	World.landmarks["test.ok"], World.bySubzone["test hall"] = nil, nil
end)

T.run("landmark: by name, by distance, and the landmark event", function()
	Reset()
	-- by name: Lion's Pride Inn is in the shipped data
	local lm = World:LandmarkAt("Elwynn Forest", "Lion's Pride Inn")
	T.ok(lm ~= nil and lm.id == "elwynn.lions_pride_inn", "the inn")
	T.eq(World:LandmarkAt("Durotar", "Lion's Pride Inn") ~= nil and "x" or "y", "y", "another zone: not the same place")
	T.eq(World:LandmarkAt("Elwynn Forest", "Nowhere"), nil, "an unknown subzone")
	T.eq(World:LandmarkAt("Elwynn Forest", ""), nil, "no subzone")
	-- by distance, only where the position is known
	NS:RegisterLandmarks({ { id = "test.well", zone = "Durotar", subzone = "The Old Well", x = 0.5, y = 0.5, radius = 0.05,
		tags = { "ruin" } } })
	P.pos = { 0.52, 0.5 }
	T.ok(World:LandmarkAt("Durotar", "The Old Well", 1411) ~= nil, "close enough")
	P.pos = { 0.7, 0.5 }
	T.eq(World:LandmarkAt("Durotar", "The Old Well", 1411), nil, "too far")
	P.pos = nil
	T.eq(World:LandmarkAt("Durotar", "The Old Well", 1411), nil, "no position: a landmark with coordinates is not guessed")
	P.pos = { 0.5, 0.5 }
	P.instance = true
	T.eq(World:LandmarkAt("Durotar", "The Old Well", 1411), nil, "no position in an instance")
	P.instance = false
	World.landmarks["test.well"], World.bySubzone["the old well"] = nil, nil

	-- the event and the context
	Reset()
	P.zone = "Elwynn Forest"
	EnterSubzone("Lion's Pride Inn")
	T.eq(Result("landmark"), "spoken", "the landmark event, not subzone_enter")
	T.ok(not Offered("subzone_enter"), "one event for the moment")
	T.ok(LastText():find("Lion's Pride Inn", 1, true), "{landmark} is the name the client gives: " .. LastText())
	local ctx = NS:BuildContext()
	T.eq(ctx.landmark, "elwynn.lions_pride_inn", "ctx.landmark")
	T.eq(ctx.landmarkName, "Lion's Pride Inn", "ctx.landmarkName")
	T.ok(Engine.Match({ landmark = "inn" }, ctx), "by tag")
	T.ok(Engine.Match({ landmark = "elwynn.lions_pride_inn" }, ctx), "by id")
	T.ok(not Engine.Match({ landmark = "graveyard" }, ctx), "another tag")
	P.subzone = "Somewhere Else"
	ctx = NS:BuildContext()
	T.eq(ctx.landmark, nil, "no landmark elsewhere")
	T.ok(not Engine.Match({ landmark = "inn" }, ctx), "the condition is false without a landmark")
end)

T.run("{landmark} and {subzone}: a line that needs the name is not composed without it", function()
	Reset()
	local ctx = NS:BuildContext({ subzone = nil, landmarkName = nil })
	local text = Engine:Render("At {landmark}", "en", ctx)
	T.eq(text, nil, "no landmark: no text")
	ctx = NS:BuildContext({ landmarkName = "Lion's Pride Inn" })
	T.eq(Engine:Render("At {landmark}", "en", ctx), "At Lion's Pride Inn", "with it")
end)

---------------------------------------------------------------------------
-- #95 Quests and reputation
---------------------------------------------------------------------------
local function Quest(id, ready, done, prog)
	local q = { title = "Quest " .. id, questID = id, isHeader = false }
	QUESTS[#QUESTS + 1] = q
	QUEST_READY[id] = ready or false
	QUEST_OBJECTIVES[id] = { { text = "Secret text", finished = (done or 0) > 0, numFulfilled = prog or 0, numRequired = 5 } }
end

T.run("quests: baseline, progress, ready, turn-in with attempts", function()
	Reset()
	Quest(101, false, 0, 1)
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.ok(not Offered("quest_progress"), "the first reading is the baseline")
	T.eq(World.quests.count, 1, "one quest in the log")
	local ctx = NS:BuildContext()
	T.ok(Engine.Match({ questActive = true }, ctx), "questActive = true")
	T.ok(Engine.Match({ questActive = 101 }, ctx), "questActive by id")
	T.ok(Engine.Match({ questActive = { 5, 101 } }, ctx), "questActive by a list of ids")
	T.ok(not Engine.Match({ questActive = 999 }, ctx), "another id")
	T.ok(not Engine.Match({ questActive = false }, ctx), "questActive = false")

	-- kills that do not finish an objective are not events
	QUEST_OBJECTIVES[101] = { { finished = false, numFulfilled = 3, numRequired = 5 } }
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.ok(not Offered("quest_progress"), "a kill is not a milestone")

	-- an objective is finished
	ADVANCE(1000)
	Quest(102, false, 0, 0)
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	QUEST_OBJECTIVES[102] = { { finished = true, numFulfilled = 5, numRequired = 5 } }
	Quest(103, false, 0, 0)
	QUESTS[#QUESTS] = nil
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(Result("quest_progress"), "spoken", "an objective finished")
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ questReady = false }, ctx), "not ready")
	T.ok(not Engine.Match({ questReady = true }, ctx), "not ready (true)")

	-- the quest becomes ready for turn-in
	ADVANCE(1000)
	QUEST_READY[102] = true
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(Result("quest_progress"), "spoken", "ready for turn-in")
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ questReady = true }, ctx), "questReady = true")

	-- turn-in: the quest had been accepted once
	ADVANCE(1000)
	FIRE("QUEST_ACCEPTED", 3, 102)
	FIRE("QUEST_TURNED_IN", 102, 100, 50)
	ADVANCE(2)
	T.eq(Result("quest_complete"), "spoken", "quest_complete")
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ questJustCompleted = true }, ctx), "questJustCompleted")
	T.ok(not Engine.Match({ questAttemptsMin = 3 }, ctx), "one accept is not many attempts")
	T.ok(Engine.Match({ questAttemptsMin = 1 }, ctx), "one attempt")
	ADVANCE(World.QUEST_RECENT + 5)
	ctx = NS:BuildContext()
	T.ok(not Engine.Match({ questJustCompleted = true }, ctx), "no longer recent")
	T.ok(Engine.Match({ questJustCompleted = false }, ctx), "not just completed")
end)

T.run("quests: many attempts, and nothing stored but ids and numbers", function()
	Reset()
	for _ = 1, 4 do FIRE("QUEST_ACCEPTED", 1, 777) end
	ADVANCE(1)
	FIRE("QUEST_TURNED_IN", 777, 0, 0)
	ADVANCE(2)
	T.eq(Result("quest_complete"), "spoken", "completed")
	local ctx = NS:BuildContext()
	T.ok(Engine.Match({ questJustCompleted = true, questAttemptsMin = 3 }, ctx), "four attempts")
	-- one-argument payload (retail style)
	Reset()
	FIRE("QUEST_ACCEPTED", 888)
	T.eq(World.accepts[888], 1, "one argument: the quest id")
	-- an unknown quest turned in: the number of attempts is unknown, not zero
	Reset()
	FIRE("QUEST_TURNED_IN", 555)
	T.eq(World.completed.attempts, nil, "unknown attempts")
	-- the saved data has no quest data, and nothing of the quest log is in the world state but ids and numbers
	Reset()
	Quest(300, false, 0, 1)
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	local seen = {}
	local function Walk(v, depth)
		if depth > 6 then return end
		if type(v) == "string" then table.insert(seen, v) end
		if type(v) == "table" then for k, x in pairs(v) do Walk(k, depth + 1); Walk(x, depth + 1) end end
	end
	Walk(NS.db, 0)
	Walk(AzerothUnspokenCharacterDB, 0)
	for _, s in ipairs(seen) do
		T.ok(not s:find("Secret text", 1, true), "no objective text is saved")
	end
end)

T.run("quests: a missing or restricted API changes nothing", function()
	Reset()
	local saved = C_QuestLog
	C_QuestLog = nil
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(World.quests, nil, "no reading")
	local ctx = NS:BuildContext()
	T.eq(ctx.quest, nil, "no ctx.quest")
	T.ok(not Engine.Match({ questActive = true }, ctx) and not Engine.Match({ questActive = false }, ctx), "unknown: false for both")
	T.ok(not Engine.Match({ questReady = true }, ctx) and not Engine.Match({ questReady = false }, ctx), "ready unknown")
	T.ok(Engine.Match({ questJustCompleted = false }, ctx), "nothing completed")
	-- but a turn-in is still known from the event itself
	FIRE("QUEST_TURNED_IN", 12)
	ADVANCE(2)
	T.eq(Result("quest_complete"), "spoken", "quest_complete works without C_QuestLog")
	C_QuestLog = { GetNumQuestLogEntries = function() error("restricted") end }
	World.quests = nil
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(World.quests, nil, "restricted: no reading, no error")
	C_QuestLog = { GetNumQuestLogEntries = function() return MakeSecret(), 1 end }
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(World.quests, nil, "a secret count")
	C_QuestLog = saved
end)

-- #166: whatever the client does not give is "unknown" (ctx.quest nil), never "no quests"
T.run("quests: an unreadable entry makes the log unknown, not empty (#166)", function()
	local saved = C_QuestLog
	local function Case(label, setup)
		Reset()
		Quest(101, false, 0, 1)
		FIRE("QUEST_LOG_UPDATE")
		ADVANCE(2)
		T.eq(World.quests.count, 1, label .. ": the baseline is read")
		C_QuestLog = setmetatable({}, { __index = saved })
		setup(C_QuestLog)
		FIRE("QUEST_LOG_UPDATE")
		ADVANCE(2)
		local ctx = NS:BuildContext()
		T.eq(World.quests, nil, label .. ": unknown")
		T.eq(ctx.quest, nil, label .. ": no ctx.quest")
		T.ok(not Engine.Match({ questActive = false }, ctx), label .. ": questActive = false does not match")
		T.ok(not Engine.Match({ questActive = true }, ctx), label .. ": questActive = true does not match")
		T.ok(not Engine.Match({ questReady = false }, ctx), label .. ": questReady = false does not match")
		C_QuestLog = saved
		-- the next good reading is a new baseline: no invented progress
		SENT = {}
		FIRE("QUEST_LOG_UPDATE")
		ADVANCE(2)
		T.eq(World.quests and World.quests.count, 1, label .. ": read again once the client answers")
		T.ok(not Offered("quest_progress"), label .. ": and it is a baseline, not a progress")
	end
	Case("GetInfo raises", function(q) q.GetInfo = function() error("restricted") end end)
	Case("GetInfo gives a secret", function(q) q.GetInfo = function() return MakeSecret() end end)
	Case("isHeader is secret", function(q) q.GetInfo = function() return { isHeader = MakeSecret(), questID = 101 } end end)
	Case("questID is secret", function(q) q.GetInfo = function() return { isHeader = false, questID = MakeSecret() } end end)
	Case("questID is not a number", function(q) q.GetInfo = function() return { isHeader = false, questID = "x" } end end)
	Case("count is NaN", function(q) q.GetNumQuestLogEntries = function() return 0 / 0, 1 end end)
	Case("count is infinite", function(q) q.GetNumQuestLogEntries = function() return math.huge, 1 end end)
	Case("count is negative", function(q) q.GetNumQuestLogEntries = function() return -1, 1 end end)
	Case("IsComplete raises", function(q) q.IsComplete = function() error("restricted") end end)
	Case("IsComplete gives nothing", function(q) q.IsComplete = function() return nil end end)
	Case("GetQuestObjectives raises", function(q) q.GetQuestObjectives = function() error("restricted") end end)
	Case("GetQuestObjectives gives text", function(q) q.GetQuestObjectives = function() return "x" end end)
	C_QuestLog = saved
	-- an empty but readable log is a real zero
	Reset()
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(World.quests and World.quests.count, 0, "an empty log that the client reads is zero quests")
	local ctx = NS:BuildContext()
	T.ok(ctx.quest ~= nil and Engine.Match({ questActive = false }, ctx), "and questActive = false matches")
	-- no title is kept: only ids and numbers
	Reset()
	Quest(102, false, 0, 1)
	FIRE("QUEST_LOG_UPDATE")
	ADVANCE(2)
	T.eq(World.quests.list[102].title, nil, "the quest title is not kept in memory")
end)

T.run("quests: not in combat", function()
	Reset()
	P.combat = true
	FIRE("QUEST_TURNED_IN", 40)
	ADVANCE(2)
	T.ok(not Offered("quest_complete"), "no quest_complete in combat")
end)

local function Faction(id, reaction, header)
	FACTIONS[#FACTIONS + 1] = { factionID = id, name = "Faction " .. id, reaction = reaction, currentStanding = 1,
		isHeader = header == true }
end

T.run("reputation: only a change of standing is an event", function()
	Reset()
	Faction(72, 4)
	Faction(76, 5)
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.ok(not Offered("reputation_change"), "baseline")
	-- points inside the same standing
	FACTIONS[1].currentStanding = 500
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.ok(not Offered("reputation_change"), "a gain inside the standing is not an event")
	-- Neutral -> Friendly
	FACTIONS[1].reaction = 5
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.eq(Result("reputation_change"), "spoken", "up")
	local ctx = NS:BuildContext()
	T.eq(ctx.repStanding, "friendly", "ctx.repStanding")
	T.eq(ctx.repDirection, "up", "ctx.repDirection")
	T.ok(Engine.Match({ repStanding = "friendly", repDirection = "up" }, ctx), "conditions")
	T.ok(Engine.Match({ repStanding = { "honored", "friendly" } }, ctx), "a list")
	T.ok(not Engine.Match({ repStanding = "honored" }, ctx), "another standing")
	ADVANCE(1000)
	ctx = NS:BuildContext()
	T.eq(ctx.repStanding, nil, "no longer recent")
	-- down
	FACTIONS[2].reaction = 3
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.eq(Result("reputation_change"), "spoken", "down")
	ctx = NS:BuildContext()
	T.ok(Engine.Match({ repStanding = "unfriendly", repDirection = "down" }, ctx), "down to unfriendly")
end)

T.run("reputation: headers, odd values, missing or restricted API", function()
	Reset()
	Faction(1, 4, true)
	Faction(2, 99)
	Faction(3, 4)
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.eq(World.standings[1], nil, "a header without reputation is skipped")
	T.eq(World.standings[2], nil, "a value outside 1-8 is skipped")
	T.eq(World.standings[3], 4, "a faction")
	FACTIONS[2].reaction = 5
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.ok(not Offered("reputation_change"), "a faction that was unreadable is not a change")
	local saved = C_Reputation
	C_Reputation = nil
	World.standings = nil
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.eq(World.standings, nil, "API missing")
	local ctx = NS:BuildContext()
	T.eq(ctx.repStanding, nil, "no standing in the context")
	T.ok(not Engine.Match({ repStanding = "friendly" }, ctx), "the condition is false")
	C_Reputation = { GetNumFactions = function() error("restricted") end }
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.eq(World.standings, nil, "restricted: no reading, no error")
	C_Reputation = saved
	-- combat
	Reset()
	Faction(5, 4)
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	P.combat = true
	FACTIONS[1].reaction = 6
	FIRE("UPDATE_FACTION")
	ADVANCE(3)
	T.ok(not Offered("reputation_change"), "not in combat")
end)

---------------------------------------------------------------------------
-- #121 Inns and flights
---------------------------------------------------------------------------
T.run("rest_enter: resting starts and stays", function()
	Reset()
	Baseline()
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(1)
	T.ok(not Offered("rest_enter"), "not before it has settled")
	ADVANCE(3)
	T.eq(Result("rest_enter"), "spoken", "rest_enter")
	T.ok(LastText() ~= "", "a line")
	-- leaving and entering again right away: the cooldown of the event and the debounce hold it back
	local n = #Director.log
	P.resting = false
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(#Director.log == n + 1 and Director.log[#Director.log].result ~= "spoken", "the event cooldown applies: "
		.. tostring(Director.log[#Director.log] and Director.log[#Director.log].result))
end)

T.run("rest_enter: flicker, combat, login and loading screens", function()
	Reset()
	Baseline()
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(1)
	P.resting = false
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(not Offered("rest_enter"), "resting that goes away at once is not an event")
	P.combat = true
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(not Offered("rest_enter"), "not in combat")
	P.combat = false
	-- logging in or crossing a loading screen into a city: already resting, no event
	Reset()
	P.resting = true
	ENTER_GAME(true, false)
	ADVANCE(10)
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(not Offered("rest_enter"), "resting at login is the starting point")
	Reset()
	Baseline()
	LOADING_SCREEN("Orgrimmar")
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(not Offered("rest_enter"), "the flag that comes with a loading screen is not a new inn")
	-- IsResting missing: nothing
	Reset()
	local saved = IsResting
	IsResting = nil
	FIRE("PLAYER_UPDATE_RESTING")
	ADVANCE(4)
	T.ok(not Offered("rest_enter"), "IsResting missing")
	IsResting = saved
end)

T.run("journey: start and arrival of a flight", function()
	Reset()
	P.onTaxi = true
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(1.5)
	T.eq(Result("journey"), "spoken", "the start of the flight")
	local ctx = NS:BuildContext()
	T.eq(ctx.onFlight, true, "ctx.onFlight")
	T.eq(ctx.journey, "start", "ctx.journey")
	T.ok(Engine.Match({ onFlight = true, journey = "start" }, ctx), "conditions at the start")
	T.ok(not Engine.Match({ onFlight = false }, ctx), "not on the ground")
	-- two minutes later
	ADVANCE(150)
	P.onTaxi = false
	FIRE("PLAYER_CONTROL_GAINED")
	ADVANCE(1.5)
	T.eq(Result("journey"), "spoken", "the arrival")
	ctx = NS:BuildContext()
	T.eq(ctx.journey, "arrival", "arrival")
	T.ok(ctx.journeySeconds >= 120, "seconds of the flight: " .. tostring(ctx.journeySeconds))
	T.ok(Engine.Match({ journey = "arrival", onFlight = false, journeyMin = 120 }, ctx), "long journey")
	T.ok(not Engine.Match({ journeyMin = 600 }, ctx), "not that long")
	ADVANCE(World.JOURNEY_RECENT + 5)
	ctx = NS:BuildContext()
	T.eq(ctx.journey, nil, "the journey leaves the context")
	T.ok(not Engine.Match({ journeyMin = 1 }, ctx), "journeyMin without a journey")
end)

T.run("journey: a stun is not a flight, a short hop has no arrival, a loading screen ends it", function()
	Reset()
	-- control lost, not on a taxi (a fear, a stun)
	P.onTaxi = false
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(2)
	T.ok(not Offered("journey"), "losing control is not a flight")
	T.eq(World.flight, nil, "no flight")
	-- a hop of five seconds
	Reset()
	P.onTaxi = true
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(1.5)
	T.eq(Result("journey"), "spoken", "start")
	ADVANCE(5)
	P.onTaxi = false
	local n = #Director.log
	ADVANCE(1000)
	FIRE("PLAYER_CONTROL_GAINED")
	ADVANCE(2)
	T.ok(World.journey.seconds >= World.JOURNEY_MIN, "the long wait counts")
	-- control gained while still on the taxi (an interruption): still flying
	Reset()
	P.onTaxi = true
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(1.5)
	FIRE("PLAYER_CONTROL_GAINED")
	ADVANCE(2)
	T.ok(World.flight ~= nil, "UnitOnTaxi still says true: the flight goes on")
	-- a loading screen at the end of the flight
	ADVANCE(100)
	P.onTaxi = false
	LOADING_SCREEN("Orgrimmar")
	T.eq(World.flight, nil, "the loading screen ended the flight")
	T.eq(World.journey.stage, "arrival", "arrival")
	-- a zone change in the middle of a flight does not end it
	Reset()
	P.onTaxi = true
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(1.5)
	P.zone = "The Barrens"
	FIRE("ZONE_CHANGED_NEW_AREA")
	ADVANCE(5)
	T.ok(World.flight ~= nil, "a flight crosses zones")
end)

T.run("journey: no UnitOnTaxi, no flight", function()
	Reset()
	local saved = UnitOnTaxi
	UnitOnTaxi = nil
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(2)
	FIRE("PLAYER_CONTROL_GAINED")
	ADVANCE(2)
	T.ok(not Offered("journey"), "UnitOnTaxi missing")
	local ctx = NS:BuildContext()
	T.eq(ctx.onFlight, nil, "unknown")
	T.ok(not Engine.Match({ onFlight = true }, ctx) and not Engine.Match({ onFlight = false }, ctx), "false for both")
	UnitOnTaxi = function() return MakeSecret() end
	FIRE("PLAYER_CONTROL_LOST")
	ADVANCE(2)
	T.ok(not Offered("journey"), "a secret answer")
	UnitOnTaxi = saved
end)

---------------------------------------------------------------------------
-- Director: priority, budget, module, silence
---------------------------------------------------------------------------
T.run("the new events have a category, a priority, a module and a budget", function()
	local ND = NS.NarrativeDirector
	for _, e in ipairs(EVENTS) do
		T.ok(Engine.events[e] ~= nil, "event declared: " .. e)
		T.ok(Engine.EventCategory(e) ~= nil, "category: " .. e)
		T.ok(NS.DEFAULT_CHANCE[e] ~= nil and NS.EVENT_COOLDOWN[e] ~= nil, "default chance and pause: " .. e)
	end
	T.eq(ND:Priority("quest_complete"), 2, "quest_complete outranks the ordinary atmosphere")
	T.eq(ND:Priority("reputation_change"), 2, "reputation_change too")
	T.eq(ND:Priority("weather_change"), 1, "weather is ordinary atmosphere")
	for _, e in ipairs({ "weather_change", "dawn", "dusk", "subzone_enter", "landmark", "journey" }) do
		T.eq(ND.EVENT_MODULE[e], "world", e .. " belongs to the world module")
	end
	T.eq(ND.EVENT_MODULE.quest_complete, nil, "quest events are personal")
	Reset()
	NS.db.modules.world = false
	Baseline()
	P.weather = { type = Enum.WeatherType.Rain, intensity = 1 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(4)
	T.eq(Result("weather_change"), "module:world", "the world module switched off: silence")
	NS.db.modules.world = true
	Reset()
	NS.db.intensity = 0
	Baseline()
	P.weather = { type = Enum.WeatherType.Rain, intensity = 1 }
	FIRE("WEATHER_CHANGED")
	ADVANCE(4)
	T.eq(Result("weather_change"), "silent", "intensity 0: silence")
end)

T.run("the budget limits a burst of new events", function()
	Reset()
	NS.db.pacing.globalCooldownSeconds = 0
	local spoken, blocked = 0, 0
	for i = 1, 8 do
		P.subzone = "Burst " .. i
		FIRE("ZONE_CHANGED")
		ADVANCE(4)
		local r = Result("subzone_enter")
		if r == "spoken" then spoken = spoken + 1 else blocked = blocked + 1 end
		Director.log[#Director.log] = nil
	end
	T.ok(spoken >= 1 and spoken <= NS.Pacing:Budget("exploration", 50), "at most the budget of the category: " .. spoken)
	T.ok(blocked >= 1, "the rest is held back by the pacing")
end)

T.run("/au debug mentions the world", function()
	Reset()
	local status = World:Status()
	T.ok(status:find("weather", 1, true) and status:find("landmarks", 1, true), "status line: " .. status)
	T.ok(NS.Compat:State("api:C_Weather.GetCurrentWeather") ~= nil, "the capability matrix lists the weather API")
	T.ok(NS.Compat:State("api:UnitOnTaxi") ~= nil, "and the taxi API")
end)

---------------------------------------------------------------------------
-- Conditions and the validator
---------------------------------------------------------------------------
T.run("validator: the new conditions and their values", function()
	local function Problems(when) return Engine.CheckConditions(when) end
	T.eq(#Problems({ weather = "rain", dayTime = true, landmark = "inn", questActive = true, questReady = false,
		questJustCompleted = true, questAttemptsMin = 3, repStanding = "honored", repDirection = "up",
		onFlight = true, journey = "arrival", journeyMin = 90 }), 0, "all valid")
	T.eq(#Problems({ questActive = { 1, 2, 3 } }), 0, "questActive with ids")
	T.eq(#Problems({ questActive = 12 }), 0, "questActive with one id")
	T.ok(#Problems({ questActive = "yes" }) > 0, "questActive with a word")
	T.ok(#Problems({ questActive = { "a" } }) > 0, "questActive with words")
	T.ok(#Problems({ weather = "drizzle" }) > 0, "an unknown weather")
	T.ok(#Problems({ weather = "unknown" }) > 0, "'unknown' is not a condition value")
	T.ok(#Problems({ dayTime = "day" }) > 0, "dayTime needs true or false")
	T.ok(#Problems({ repStanding = "adored" }) > 0, "an unknown standing")
	T.ok(#Problems({ repDirection = "sideways" }) > 0, "an unknown direction")
	T.ok(#Problems({ journey = "flying" }) > 0, "an unknown stage")
	T.ok(#Problems({ journeyMin = "long" }) > 0, "journeyMin needs a number")
	T.ok(#Problems({ landmark = "no.such.place" }) > 0, "an unknown landmark")
	T.eq(#Problems({ landmark = { "inn", "elwynn.goldshire" } }), 0, "tags and ids")
end)

T.run("validator: a text that names the weather needs the weather condition", function()
	local function Warnings(registry, texts)
		local id = "test.wx." .. tostring(math.random(1e6))
		NS:RegisterPack({ id = "pk_" .. id, languages = { "en" }, registry = { [id] = registry },
			texts = { en = { [id] = texts } } })
		return NS.Validator:Run({ packs = { "pk_" .. id } }), id
	end
	local result, id = Warnings({ event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "natural" } },
		{ "The rain keeps falling on the road." })
	local found
	for _, w in ipairs(result.warnings) do if w.id == id and w.code == "weatherWord" then found = w end end
	T.ok(found ~= nil, "a rain line without the condition is a warning")
	local result2, id2 = Warnings({ event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "natural" },
		conditions = { weather = "rain" } }, { "The rain keeps falling on the road." })
	for _, w in ipairs(result2.warnings) do T.ok(not (w.id == id2 and w.code == "weatherWord"), "with the condition: no warning") end
	local result3, id3 = Warnings({ event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "natural" },
		conditions = { any = { { weather = "rain" }, { weather = "storm" } } } }, { "Rain, or thunder, or both." })
	for _, w in ipairs(result3.warnings) do T.ok(not (w.id == id3 and w.code == "weatherWord"), "any of weathers: no warning") end
	-- events where weather words are imagery are not checked, and a line tied to a place is not either
	local result4, id4 = Warnings({ event = "battle", speaker = "character", styles = { "epic" }, depth = { "natural" } },
		{ "Thunder in my arm!" })
	for _, w in ipairs(result4.warnings) do T.ok(not (w.id == id4 and w.code == "weatherWord"), "battle thunder is imagery") end
	local result5, id5 = Warnings({ event = "zone", speaker = "inner", styles = { "intimate" }, depth = { "natural" },
		conditions = { mood = "snow" } }, { "Snow lies deep here." })
	for _, w in ipairs(result5.warnings) do T.ok(not (w.id == id5 and w.code == "weatherWord"), "a snowy place") end
	-- whole words only
	T.eq(Validator.WeatherWord("The terrain was rainbow-coloured", "en"), nil, "no match inside a word")
	T.eq(Validator.WeatherWord("Piove, e la strada è un fiume", "it"), "piove", "Italian")
	-- the shipped content is clean
	for _, w in ipairs(result3.warnings) do
		if w.code == "weatherWord" then T.ok(w.id:find("^test%.wx") ~= nil, "shipped line with a weather word: " .. tostring(w.id)) end
	end
end)

T.run("the shipped world content: every rule has two texts in both languages", function()
	local count = 0
	for id, p in pairs(Engine.byId) do
		if p.pack == "base_world" then
			count = count + 1
			for _, lang in ipairs({ "it", "en" }) do
				T.ok(p.text[lang] and #p.text[lang] >= 2, id .. " has at least two variants in " .. lang)
			end
		end
	end
	T.ok(count >= 50, "a first set of lines: " .. count)
	for _, e in ipairs(EVENTS) do
		local n = 0
		for _, p in ipairs(Engine.byEvent[e] or {}) do if p.pack == "base_world" then n = n + 1 end end
		T.ok(n >= 2, "at least two rules for " .. e .. ": " .. n)
	end
end)
