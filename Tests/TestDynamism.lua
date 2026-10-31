-- Tests of the monologues (#99) and of the situation aggregator (#100), ADR 0032.
local NS = ...
local Engine, Director, Narrator, Gateway, Pacing = NS.Engine, NS.Director, NS.Narrator, NS.Gateway, NS.Pacing
local ND = NS.NarrativeDirector

-- quotas cap combat whatever the dice: these tests measure the aggregator, not the quotas (TestSelection does)
Engine.QUOTAS = {}

local function Reset()
	SENT = {}
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.chat.mode = "PRIVATE"
	NS.db.chance = {}
	NS.db.disabledPacks = {}
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.ui.narrator.historySize = 100
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.recent = {}
	ADVANCE(1000)
end

-- the records the Gateway shows, newest last
local shown = {}
local propose = Gateway.Propose
Gateway.Propose = function(self, rec, ctx, opts)
	local ok = propose(self, rec, ctx, opts)
	if ok then table.insert(shown, rec) end
	return ok
end

local function Offer(ev, extra) Director:Offer(ev, extra); ADVANCE(0.2) end

---------------------------------------------------------------------------
-- #99 monologues
---------------------------------------------------------------------------
-- picks of an event until a monologue comes (time passes, as in a session)
local function FindMonologue(event, form, tries)
	for _ = 1, tries or 400 do
		local rec = Engine:PickEntry(event, NS:BuildContext(), form)
		if rec and rec.kind == "monologue" then return rec end
		ADVANCE(600)
	end
	return nil
end

T.run("a monologue is one record made of whole phrases", function()
	Reset()
	local rec = FindMonologue("muse", "say")
	T.ok(rec ~= nil, "muse: a monologue comes")
	if not rec then return end
	local p = Engine.byId[rec.id]
	T.eq(p.kind, "monologue", "the record is the monologue")
	T.ok(#rec.parts >= 2 and #rec.parts <= 3, "two or three parts")
	T.eq(rec.speaker, "inner", "a private voice")
	local pos = 1
	for i, id in ipairs(rec.parts) do
		local q = Engine.byId[id]
		T.ok(q.chainable ~= nil, id .. " is chainable")
		-- each part is one of its whole variants, in order
		local found
		for _, v in ipairs(q.text.it) do
			local t = Engine.VariantText(v):gsub("{g:([^|}]*)|[^}]*}", "%1")
			local at = rec.text:find(t:sub(2, 25), pos, true)
			if at then found = at end
		end
		T.ok(found ~= nil, ("part %d is a whole variant of %s"):format(i, id))
		pos = found or pos
	end
end)

T.run("a part written only for a monologue never speaks alone", function()
	Reset()
	local alone = 0
	for i = 1, 300 do
		for _, ev in ipairs({ "muse", "zone", "rez", "levelup", "rest_enter" }) do
			for _, form in ipairs({ "say", "emote" }) do
				local rec = Engine:PickEntry(ev, NS:BuildContext(), form)
				if rec and Engine.byId[rec.id] and Engine.byId[rec.id].chainable == "only" then alone = alone + 1 end
			end
		end
		ADVANCE(120)
	end
	T.eq(alone, 0, "no part alone")
end)

T.run("order: fixed as written, free keeps the first part first", function()
	local road = Engine.byId["mono.muse.road"]
	local o = Engine.MonologueOrder(road)
	T.eq(table.concat(o, ","), table.concat(road.parts, ","), "fixed: the declared order")
	local stars = Engine.byId["mono.muse.stars"]
	local seen = {}
	for _ = 1, 60 do
		local s = Engine.MonologueOrder(stars)
		T.eq(s[1], "mono.muse.stars.1", "free: the first part opens")
		seen[table.concat(s, ",")] = true
	end
	local n = 0
	for _ in pairs(seen) do n = n + 1 end
	T.eq(n, 2, "free: the other two change places")
end)

T.run("a narrator monologue: an emote, then whole sentences", function()
	Reset()
	P.zone = "Durotar"
	local rec = FindMonologue("zone", "emote")
	T.ok(rec ~= nil, "zone: a monologue comes")
	if not rec then return end
	T.eq(rec.form, "emote", "the form of the first part")
	local shownText = Gateway:Display(rec, NS:BuildContext())
	T.ok(shownText:find("^" .. P.name .. " [a-z]") ~= nil, "the emote follows the name: " .. shownText)
	T.ok(select(2, rec.text:gsub("%. [A-Z]", "")) >= 1, "the next parts start with a capital letter")
end)

T.run("R1_COMPAT: no monologue", function()
	Reset()
	Engine.R1_COMPAT = true
	local rec = FindMonologue("muse", "say", 150)
	Engine.R1_COMPAT = nil
	T.ok(rec == nil, "switched off with what R3 added")
end)

T.run("a monologue is one intervention for the Director", function()
	Reset()
	-- the most specific tier and a huge weight: the monologue wins the pick
	local mono = Engine.byId["mono.rez.breath"]
	local weight = mono.weight
	mono.weight, mono.tier = 1e6, Engine.MAX_TIER
	NS.db.chance.rez = 100
	NS.Profiler:Reset()
	shown = {}
	-- the inner voice speaks in the form say: the Gateway draws the form first, here it is fixed
	local pickRecord = Gateway.PickRecord
	Gateway.PickRecord = function(self, ev, ctx) return pickRecord(self, ev, ctx, "say") end
	local before, hist = #Narrator.history, #Pacing.history
	Offer("rez")
	ADVANCE(1)
	Gateway.PickRecord = pickRecord
	mono.weight, mono.tier = weight, nil
	T.eq(#Narrator.history - before, 1, "one entry in the narrator")
	T.eq(#Pacing.history - hist, 1, "one intervention for the pacing and the quotas")
	T.eq(shown[#shown] and shown[#shown].id, "mono.rez.breath", "the monologue spoke")
	T.eq(NS.Profiler.director.monologues, 1, "counted as a monologue (/au prof)")
	T.ok(#Narrator.history[#Narrator.history].text > 80, "the whole monologue is in the entry")
	-- the next spontaneous line waits for the moment, like after any line
	NS.db.chance.levelup = 100
	Offer("levelup")
	T.eq(#Narrator.history - before, 1, "no second line in the same moment")
end)

T.run("validator: shape, parts, voice, theme and length", function()
	local long = ("x"):rep(170)
	NS:RegisterPack({ id = "test_mono", languages = { "itIT" }, registry = {
		["tm.ok"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey",
			kind = "monologue", parts = { "tm.p1", "tm.p2" } },
		["tm.p1"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
		["tm.p2"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
		["tm.plain"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey" },
		["tm.far"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "glory", chainable = true },
		["tm.long"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
		["tm.orphan"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
		["tm.loud"] = { event = "muse", speaker = "character", styles = { "intimate" }, theme = "journey", chainable = true },
		["tm.bad"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey",
			kind = "monologue", parts = { "tm.p1", "tm.plain", "tm.far", "tm.long" } },
		["tm.public"] = { event = "battle", speaker = "character", styles = { "epic" }, theme = "journey",
			kind = "monologue", parts = { "tm.p1", "tm.loud" } },
		["tm.length"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey",
			kind = "monologue", parts = { "tm.p1", "tm.long" } },
	}, texts = { itIT = {
		["tm.p1"] = { "Uno." }, ["tm.p2"] = { "Due." }, ["tm.plain"] = { "Tre." }, ["tm.far"] = { "Quattro." },
		["tm.long"] = { long }, ["tm.orphan"] = { "Sola." }, ["tm.loud"] = { "Forte." },
	} } })
	local res = NS.Validator:Run({ packs = { "test_mono" } })
	local codes = {}
	for _, list in ipairs({ res.errors, res.warnings }) do
		for _, p in ipairs(list) do codes[p.id .. ":" .. p.code] = (codes[p.id .. ":" .. p.code] or 0) + 1 end
	end
	T.ok(codes["tm.ok:monologueParts"] == nil and codes["tm.ok:monologueTheme"] == nil and codes["tm.ok:noText"] == nil,
		"a good monologue: no problem, no texts needed")
	T.ok(codes["tm.bad:monologueParts"] ~= nil, "four parts: too many")
	T.ok(codes["tm.bad:monologuePart"] ~= nil, "a part that is not chainable")
	T.ok(codes["tm.bad:monologueTheme"] ~= nil, "a part with neither the theme nor a motif")
	T.ok(codes["tm.public:monologueVoice"] ~= nil, "a public voice")
	T.ok(codes["tm.public:monologueBusy"] ~= nil, "a monologue in combat is warned")
	T.ok(codes["tm.loud:monologueVoice"] ~= nil, "a chainable phrase in a public voice")
	T.ok(codes["tm.length:monologueLength"] ~= nil, "a part too long")
	T.ok(codes["tm.orphan:orphanPart"] ~= nil, "a part no monologue uses")
	Engine:DropPack("test_mono")
end)

T.run("the base monologues and composite lines pass the validator", function()
	local res = NS.Validator:Run({ packs = { "base_monologues", "base_situations" } })
	T.eq(#res.errors, 0, "no errors")
	T.eq(#res.warnings, 0, "no warnings")
	for _, p in ipairs(res.errors) do T.ok(false, p.id .. " " .. p.code .. " " .. p.msg) end
end)

---------------------------------------------------------------------------
-- #100 situation aggregator
---------------------------------------------------------------------------
T.run("victory after low health: close_call and exactly one line", function()
	Reset()
	NS.Profiler:Reset()
	shown = {}
	NS.db.chance.lowhp, NS.db.chance.victory = 0, 100
	P.combat = true
	local before = #Narrator.history
	Offer("lowhp")
	ADVANCE(9)
	P.combat = false
	Offer("victory")
	ADVANCE(1)
	T.eq(#Narrator.history - before, 1, "exactly one line")
	local rec = shown[#shown]
	T.ok(rec and rec.id:find("^sit%.closecall") ~= nil, "a line written for the close call: " .. tostring(rec and rec.id))
	T.eq(rec and rec.situation, "close_call", "the record names the situation")
	T.eq(NS.Profiler.director.composites, 1, "counted as a composite situation (/au prof)")
	-- the low health offer is merged once: a second victory does not find it again
	local found = Director:Compose({ event = "victory", seq = -1 }, NS:BuildContext(), GetTime())
	T.ok(found == nil, "an offer is merged into a situation once")
end)

T.run("a candidate of the same moment is merged, not outranked", function()
	Reset()
	shown = {}
	ND.EVENT_PRIORITY.victory = ND.PRIORITY.exceptional
	NS.db.chance.lowhp, NS.db.chance.victory = 100, 100
	local before = #Narrator.history
	Director:Offer("lowhp")
	Director:Offer("victory")
	ADVANCE(1)
	ND.EVENT_PRIORITY.victory = nil
	T.eq(#Narrator.history - before, 1, "one line for two candidates")
	T.eq(shown[#shown] and shown[#shown].situation, "close_call", "the composite line")
	local results = {}
	for _, e in ipairs(Director.log) do results[e.event] = e.result end
	T.eq(results.victory, "spoken", "the lead spoke")
	T.eq(results.lowhp, "merged", "the other candidate is merged into it")
end)

T.run("no fitting composite line: the single winner as before", function()
	Reset()
	shown = {}
	NS.db.chance.lowhp, NS.db.chance.victory = 0, 100
	NS.db.disabledPacks.base_situations = true
	local before = #Narrator.history
	Offer("lowhp")
	ADVANCE(9)
	Offer("victory")
	ADVANCE(1)
	NS.db.disabledPacks.base_situations = nil
	T.eq(#Narrator.history - before, 1, "one line")
	local rec = shown[#shown]
	T.ok(rec and rec.event == "victory" and not rec.id:find("^sit%.") and rec.situation == nil, "an ordinary victory line")
end)

T.run("composition: order, window, conditions and R1_COMPAT", function()
	Reset()
	local ctx = NS:BuildContext()
	-- victory first, then low health: the lead must be the later one
	Director:Offer("victory")
	ADVANCE(5)
	Director.recent[#Director.recent + 1] = { event = "lowhp", seq = 10001, at = GetTime() }
	T.ok(Director:Compose({ event = "lowhp", seq = 10002 }, ctx, GetTime()) == nil, "low health after a victory: nothing")
	-- too old
	Director.recent = { { event = "lowhp", seq = 10003, at = GetTime() - 40 } }
	T.ok(Director:Compose({ event = "victory", seq = 10004 }, ctx, GetTime()) == nil, "low health 40 s before: out of the window")
	Director.recent = { { event = "lowhp", seq = 10005, at = GetTime() - 10 } }
	local found = Director:Compose({ event = "victory", seq = 10006 }, ctx, GetTime())
	T.ok(found and found.close_call, "low health 10 s before: close call")
	Engine.R1_COMPAT = true
	T.ok(Director:Compose({ event = "victory", seq = 10006 }, ctx, GetTime()) == nil, "R1_COMPAT: no situation")
	Engine.R1_COMPAT = nil
	-- withAny: a death or low health before a level
	Director.recent = { { event = "death", seq = 10007, at = GetTime() - 100 } }
	found = Director:Compose({ event = "levelup", seq = 10008 }, ctx, GetTime())
	T.ok(found and found.hard_won_level, "a death before a level: hard-won level")
	-- `when`: rain at dusk, on the context of the lead
	local wet = NS:BuildContext({ weather = "rain", time = "dusk" })
	local dry = NS:BuildContext({ weather = "clear", time = "dusk" })
	T.ok((Director:Compose({ event = "memory_return", seq = 10009 }, wet, GetTime()) or {}).rain_dusk_return,
		"a return in the rain at dusk")
	T.ok(Director:Compose({ event = "memory_return", seq = 10010 }, dry, GetTime()) == nil, "not under a clear sky")
end)

T.run("a composite line is never said outside its situation", function()
	Reset()
	local leaked = 0
	for _ = 1, 300 do
		for _, ev in ipairs({ "victory", "levelup", "zone" }) do
			for _, form in ipairs({ "say", "emote" }) do
				local rec = Engine:PickEntry(ev, NS:BuildContext(), form)
				if rec and rec.id:find("^sit%.") then leaked = leaked + 1 end
			end
		end
		ADVANCE(120)
	end
	T.eq(leaked, 0, "no composite line without its situation")
end)

T.run("validator: a situation needs a declared lead and something to compose", function()
	NS:RegisterSituation("test_bad", { lead = "no_such_event", within = 9999 }, "test")
	local res = NS.Validator:Run()
	local n = 0
	for _, p in ipairs(res.errors) do
		if p.id == "situation:test_bad" and p.code == "badSituation" then n = n + 1 end
	end
	T.eq(n, 3, "unknown lead, window too long, nothing to compose")
	Engine.SITUATIONS.test_bad = nil
	Engine.CONDITION_VALUES.situation.test_bad = nil
	for i, id in ipairs(Engine.SITUATION_ORDER) do
		if id == "test_bad" then table.remove(Engine.SITUATION_ORDER, i) end
	end
end)

T.run("#153: a composite pick keeps the anti-repetition window of its event", function()
	Reset()
	NS.cdb.memory.recent = {}
	for i = 1, 10 do
		Engine:PickEntry("victory", NS:BuildContext(), (i % 2 == 0) and "say" or "emote")
		ADVANCE(600)
	end
	local before = #(NS.cdb.memory.recent.victory or {})
	T.ok(before >= 3, "ordinary picks fill the window of victory (" .. before .. ")")
	for i = 1, 6 do
		local ctx = NS:BuildContext()
		ctx.situation = { close_call = true }
		local rec = Engine:PickEntry("victory", ctx, "say", true)
		T.ok(rec and rec.id:find("^sit%.") ~= nil, "a composite line: " .. tostring(rec and rec.id))
		T.ok(#NS.cdb.memory.recent.victory >= before, "composite pick " .. i .. ": the window did not shrink ("
			.. #NS.cdb.memory.recent.victory .. " of " .. before .. ")")
		ADVANCE(600)
	end
	-- the composite line is in the window, with the recent ordinary lines still there
	local ids = {}
	for _, id in ipairs(NS.cdb.memory.recent.victory) do ids[id] = true end
	local composite = 0
	for id in pairs(ids) do if id:find("^sit%.") then composite = composite + 1 end end
	T.ok(composite >= 1, "the composite line joins the window")
	-- with an empty window the composite line still gets a window of its own size, as before
	NS.cdb.memory.recent = {}
	local ctx = NS:BuildContext()
	ctx.situation = { close_call = true }
	Engine:PickEntry("victory", ctx, "say", true)
	T.eq(#NS.cdb.memory.recent.victory, 1, "an empty window: one entry")
end)
