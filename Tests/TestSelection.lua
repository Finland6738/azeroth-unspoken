-- Tests of the selection quality of R3 (ADR 0029): specificity tiers and the fallback chain (#89), themes, motifs and
-- the thematic memory of the session (#90), per-session category quotas and hunger (#91). Every test that draws
-- random numbers fixes the seed.
local NS = ...
local Engine, Director, ND, Pacing, Validator = NS.Engine, NS.Director, NS.NarrativeDirector, NS.Pacing, NS.Validator

NS.db.locale = "it"

local function Fresh()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Engine:ResetLines()
	-- a calm character (R4): the emotions raised by the events of other test files do not leak into the measures
	if NS.Emotion then NS.Emotion:Reset() end
end

local function Has(result, code, id)
	for _, list in ipairs({ result.errors, result.warnings }) do
		for _, p in ipairs(list) do
			if p.code == code and (id == nil or p.id == id) then return true end
		end
	end
	return false
end

-- a pack of test events, so the base database does not enter the counts
local registry, texts = {}, {}
local function Add(id, def, text)
	registry[id] = def
	texts[id] = text or { id .. " uno", id .. " due" }
end
for i = 1, 4 do Add("r3.tier.gen" .. i, { event = "r3tier", speaker = "character", styles = { "epic" } }) end
for i = 1, 3 do
	Add("r3.tier.zone" .. i, { event = "r3tier", speaker = "character", styles = { "epic" },
		conditions = { zone = "Elwynn Forest" } })
end
Add("r3.tier.sub", { event = "r3tier", speaker = "character", styles = { "epic" }, conditions = { subzone = "Goldshire" } })
Add("r3.tier.class", { event = "r3tier", speaker = "character", styles = { "epic" }, conditions = { class = "MAGE" } })
Add("r3.fb.target", { event = "r3fb_b", speaker = "character", styles = { "epic" } })
for i = 1, 3 do
	Add("r3.th.loss" .. i, { event = "r3th", speaker = "character", styles = { "tragic" }, theme = "loss",
		motifs = { "grave" } }, { "lutto " .. i })
	Add("r3.th.joke" .. i, { event = "r3th", speaker = "character", styles = { "ironic" }, theme = "humour" },
		{ "battuta " .. i })
	Add("r3.th.road" .. i, { event = "r3th", speaker = "character", styles = { "epic" }, theme = "journey",
		motifs = { "road" } }, { "strada " .. i })
end
Add("r3.voice.inner", { event = "r3voice", speaker = "inner", styles = { "intimate" } })
Add("r3.voice.char", { event = "r3voice", speaker = "character", styles = { "intimate" } })
Add("r3.open", { event = "r3open", speaker = "character", styles = { "epic" } },
	{ "Il vento soffia ancora.", "Il vento cambia direzione.", "Nessuno ascolta il vento." })
Add("r3.fr.loss", { event = "r3fr", speaker = "character", styles = { "tragic" }, theme = "loss" }, { "lutto" })
Add("r3.fr.joke", { event = "r3fr", speaker = "character", styles = { "tragic" }, theme = "humour" }, { "battuta" })
NS:RegisterPack({
	id = "t_r3", name = "R3 tests", languages = { "itIT" },
	events = {
		r3tier = { category = "reflection" }, r3th = { category = "reflection" }, r3voice = { category = "reflection" },
		r3open = { category = "reflection" }, r3fr = { category = "reflection" },
		r3fb_a = { category = "reflection", fallback = "r3fb_b" }, r3fb_b = { category = "reflection" },
		r3cyc_a = { category = "reflection", fallback = "r3cyc_b" }, r3cyc_b = { category = "reflection", fallback = "r3cyc_a" },
	},
	registry = registry,
	texts = { itIT = texts },
	frames = {
		{ id = "r3.frame.loss", event = "r3fr", themes = { "loss" }, it = "china il capo. «{line}»" },
		{ id = "r3.frame.any", event = "r3fr", it = "alza lo sguardo. «{line}»" },
	},
})
-- the cycle is declared on purpose for the validator test; nothing else may follow it
NS.Engine.events.r3cyc_a.fallback, NS.Engine.events.r3cyc_b.fallback = nil, nil

---------------------------------------------------------------------------
-- #89 tiers
---------------------------------------------------------------------------
T.run("#89: the tier is deduced from the conditions", function()
	local T0 = Engine.TierOf
	T.eq(T0(nil), 0, "no conditions: generic")
	T.eq(T0({ chance = 30, depth = "literary" }), 0, "chance and the user's depth do not narrow anything")
	T.eq(T0({ ["not"] = { zone = "Durotar" } }), 0, "a place under not is not specific")
	T.eq(T0({ class = "MAGE" }), 1, "a class: situation")
	T.eq(T0({ lastVisitBad = true }), 1, "a memory: situation")
	T.eq(T0({ mood = "forest" }), 1, "an atmosphere: region")
	T.eq(T0({ place = { continent = "kalimdor" } }), 1, "a continent: region")
	T.eq(T0({ zone = "Elwynn Forest", class = "MAGE" }), 2, "a zone")
	T.eq(T0({ place = { mapID = 1429 } }), 2, "a map")
	T.eq(T0({ subzone = "Goldshire" }), 3, "a subzone")
	T.eq(T0({ landmark = "inn", zone = "Elwynn Forest" }), 4, "a landmark (R3b)")
	T.eq(T0({ place = { subzone = "Goldshire" } }), 3, "a subzone of the place")
	T.eq(Engine.Tier(Engine.byId["r3.tier.sub"]), 3, "registered with its tier")
	NS:RegisterPack({ id = "t_r3_tier", languages = { "itIT" },
		registry = { ["r3.tier.explicit"] = { event = "r3tier_x", speaker = "character", styles = { "epic" }, tier = "landmark" },
			["r3.tier.bad"] = { event = "r3tier_x", speaker = "character", styles = { "epic" }, tier = 9 } },
		texts = { itIT = { ["r3.tier.explicit"] = "x", ["r3.tier.bad"] = "y" } } })
	T.eq(Engine.Tier(Engine.byId["r3.tier.explicit"]), 4, "an explicit tier by name")
	T.eq(Engine.Tier(Engine.byId["r3.tier.bad"]), 0, "an invalid tier falls back to the deduced one")
	T.ok(Has(Validator:Run({ packs = { "t_r3_tier" } }), "badTier", "r3.tier.bad"), "and the validator reports it")
	Engine:DropPack("t_r3_tier")
end)

-- the level of specificity of a pick (#138): 0 generic, 1 situation, 2 place (zone, subzone, landmark)
local function Level(id)
	local t = Engine.Tier(Engine.byId[id])
	return t < 2 and t or 2
end

T.run("#89, #138: the specific lines are preferred, every level with usable lines keeps its share", function()
	P.zone, P.subzone, P.class = "Elwynn Forest", "Goldshire", "WARRIOR"
	local ctx = NS:BuildContext()
	math.randomseed(21)
	local seen = {}
	for _ = 1, 600 do
		Fresh()
		local l = Level(Engine:PickEntry("r3tier", ctx, "say").id)
		seen[l] = (seen[l] or 0) + 1
	end
	-- place (zone and subzone: 4 >= TIER_MIN) 50, no situation line for a warrior, generic 15: 77% and 23%
	T.ok(not seen[1], "no line of another class")
	T.ok(seen[2] > 600 * 0.70 and seen[2] < 600 * 0.84, "the place lines take the share of their level: " .. seen[2] .. "/600")
	T.ok(seen[0] > 600 * 0.16, "and the generic ones keep theirs: " .. seen[0] .. "/600")
	-- a session: the specific lines are used, the generic ones speak meanwhile and more once the specific are recent
	Fresh()
	local order = {}
	for i = 1, 8 do order[i] = Level(Engine:PickEntry("r3tier", ctx, "say").id) end
	local generic = 0
	for i = 1, 8 do if order[i] == 0 then generic = generic + 1 end end
	T.ok(generic > 0 and generic < 8, "a session mixes the levels: " .. table.concat(order, ","))
	-- elsewhere only the generic lines and those of the situation
	P.zone, P.subzone, P.class = "Durotar", "", "MAGE"
	ctx = NS:BuildContext()
	seen = {}
	for _ = 1, 40 do
		Fresh()
		local l = Level(Engine:PickEntry("r3tier", ctx, "say").id)
		seen[l] = (seen[l] or 0) + 1
	end
	T.ok(not seen[2], "no place-specific line outside its place")
	T.eq((seen[0] or 0) + (seen[1] or 0), 40, "one situation line is under TIER_MIN: it competes with the generic ones")
	T.ok((seen[0] or 0) > 20, "and the generic ones speak: " .. tostring(seen[0]))
	-- R1 compatibility: every candidate competes, as before
	P.zone, P.subzone, P.class = "Elwynn Forest", "Goldshire", "WARRIOR"
	ctx = NS:BuildContext()
	Engine.R1_COMPAT = true
	local specific = 0
	for _ = 1, 200 do
		Fresh()
		local rec = Engine:PickEntry("r3tier", ctx, "say")
		if Engine.Tier(Engine.byId[rec.id]) >= 2 then specific = specific + 1 end
	end
	Engine.R1_COMPAT = nil
	T.ok(specific < 170, "without tiers the generic lines compete equally: " .. specific .. "/200 specific")
end)

T.run("#89: TierPool keeps the anti-repetition window of the whole pool", function()
	local function It(id) return { e = Engine.byId[id], w = 1 } end
	local items = { It("r3.tier.gen1"), It("r3.tier.gen2"), It("r3.tier.zone1"), It("r3.tier.zone2"), It("r3.tier.sub") }
	local shares = Engine.TIER_SHARES
	Fresh()
	Engine.TIER_SHARES = { [0] = 0, [1] = 0, [2] = 1 }
	local out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 3, "zone and subzone together reach TIER_MIN"); T.eq(tier, 2, "the place level, from the zone tier up")
	Engine.TIER_SHARES = { [0] = 1, [1] = 0, [2] = 0 }
	out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 2, "the generic level stands with fewer than TIER_MIN lines"); T.eq(tier, 0, "generic")
	-- one level for every tier: the pick of ADR 0029 before #138 (Tests/trace_picks.py --one-level)
	Engine.TIER_SHARES = { [0] = 1 }
	out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 3, "one level: only the most specific tiers with TIER_MIN fresh lines, as before"); T.eq(tier, 2, "zone up")
	Engine.TIER_SHARES = shares
	Engine.Remember("r3tier", "r3.tier.zone1", 10)
	out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 5, "one of them recent: the place level joins the generic one, every tier"); T.eq(tier, 0, "down to generic")
end)

-- #138 (ADR 0051): full specific pools, as the content waves write them
do
	local mix, mixTexts = {}, {}
	for i = 1, 40 do
		mix[("r3.mix.zone%02d"):format(i)] = { event = "r3mix", speaker = "character", styles = { "epic" },
			conditions = { zone = "Elwynn Forest" } }
		mix[("r3.mix.class%02d"):format(i)] = { event = "r3mix", speaker = "character", styles = { "epic" },
			conditions = { class = "WARRIOR" } }
	end
	for i = 1, 6 do mix["r3.mix.gen" .. i] = { event = "r3mix", speaker = "character", styles = { "epic" } } end
	for id in pairs(mix) do mixTexts[id] = { id .. " uno", id .. " due" } end
	NS:RegisterPack({ id = "t_r3_mix", name = "R3 mix tests", languages = { "itIT" },
		events = { r3mix = { category = "reflection" } }, registry = mix, texts = { itIT = mixTexts } })
end

T.run("#138: a generic line stays reachable when the specific pools are fuller than the window", function()
	P.zone, P.subzone, P.class = "Elwynn Forest", "", "WARRIOR"
	local ctx = NS:BuildContext()
	math.randomseed(5)
	Fresh()
	local seen, said = {}, {}
	for _ = 1, 300 do
		local rec = Engine:PickEntry("r3mix", ctx, "say")
		local l = Level(rec.id)
		seen[l] = (seen[l] or 0) + 1
		if l == 0 then said[rec.id] = true end
	end
	local n = 0
	for _ in pairs(said) do n = n + 1 end
	-- before #138 the 80 specific lines (more than the window of 30) kept the generic ones silent for good
	T.ok((seen[0] or 0) >= 300 * 0.08, "the generic lines speak in a session: " .. tostring(seen[0]) .. "/300")
	T.eq(n, 6, "every generic line is said")
	T.ok(seen[2] > seen[1] and seen[1] > seen[0], ("the more specific level speaks more: place %d, situation %d, generic %d")
		:format(seen[2], seen[1], seen[0]))
	-- the anti-repetition window holds inside each level: no line twice within the window of the event
	Fresh()
	local last = {}
	local ok = true
	for i = 1, 200 do
		local id = Engine:PickEntry("r3mix", ctx, "say").id
		if last[id] and i - last[id] <= Engine.KeepFor(86) then ok = false end
		last[id] = i
	end
	T.ok(ok, "no line comes back inside the window of " .. Engine.KeepFor(86) .. " picks")
end)

T.run("#138: the shares hold over many picks, renormalised over the levels that have usable lines", function()
	local function Count(ctx, n)
		local seen = { [0] = 0, 0, 0 }
		for _ = 1, n do
			Fresh()
			local l = Level(Engine:PickEntry("r3mix", ctx, "say").id)
			seen[l] = seen[l] + 1
		end
		return seen
	end
	math.randomseed(9)
	P.zone, P.subzone, P.class = "Elwynn Forest", "", "WARRIOR"
	local s = Count(NS:BuildContext(), 2000)
	local function Near(got, want, what)
		T.ok(math.abs(got / 2000 - want) < 0.035, ("%s: %.1f%% (share %.1f%%)"):format(what, 100 * got / 2000, 100 * want))
	end
	Near(s[2], 0.50, "place"); Near(s[1], 0.35, "situation"); Near(s[0], 0.15, "generic")
	-- no place line here: 35 and 15 become 70% and 30%
	P.zone = "Durotar"
	s = Count(NS:BuildContext(), 2000)
	T.eq(s[2], 0, "no place line outside its place")
	Near(s[1], 0.70, "situation, renormalised"); Near(s[0], 0.30, "generic, renormalised")
	-- the shares are data
	local shares = Engine.TIER_SHARES
	Engine.TIER_SHARES = { [0] = 1, [1] = 1, [2] = 2 }
	P.zone = "Elwynn Forest"
	s = Count(NS:BuildContext(), 2000)
	Engine.TIER_SHARES = shares
	Near(s[2], 0.50, "place, shares 1:1:2"); Near(s[0], 0.25, "generic, shares 1:1:2")
	P.zone, P.subzone, P.class = "Elwynn Forest", "Goldshire", "WARRIOR"
	Engine:DropPack("t_r3_mix")
end)

---------------------------------------------------------------------------
-- C0e (ADR 0052): a bounded pick
---------------------------------------------------------------------------
-- An event as the content waves will fill it: hundreds of lines per level. `scale` lines of each kind: generic, class
-- (situation), zone (place), and generic lines that never hold for a warrior (`not class`); five subzone lines.
local function BigPack(id, event, scale)
	local reg, tx = {}, {}
	local function Put(rid, cond)
		reg[rid] = { event = event, speaker = "character", styles = { "epic" }, conditions = cond }
		tx[rid] = { rid .. " uno", rid .. " due" }
	end
	for i = 1, scale do
		Put(("%s.gen%04d"):format(id, i), nil)
		Put(("%s.class%04d"):format(id, i), { class = "WARRIOR" })
		Put(("%s.zone%04d"):format(id, i), { zone = "Elwynn Forest" })
		Put(("%s.never%04d"):format(id, i), { ["not"] = { class = "WARRIOR" } })
	end
	for i = 1, 5 do Put(("%s.sub%d"):format(id, i), { subzone = "Goldshire" }) end
	NS:RegisterPack({ id = id, name = "C0e tests", languages = { "itIT" },
		events = { [event] = { category = "reflection" } }, registry = reg, texts = { itIT = tx } })
end

-- thousands of Lua instructions of a pick (a C function counts as one)
local function Kinstr(event, ctx)
	local n = 0
	debug.sethook(function() n = n + 1 end, "", 100)
	local rec = Engine:PickEntry(event, ctx, "say")
	debug.sethook()
	return n / 10, rec
end

T.run("C0e: a pick of a large event is bounded, and the shares and the conditions hold", function()
	BigPack("t_c0e_s", "c0esmall", 100)
	BigPack("t_c0e_b", "c0ebig", 1000)
	P.zone, P.subzone, P.class = "Elwynn Forest", "", "WARRIOR"
	local ctx = NS:BuildContext()
	-- the cost does not grow with the lines of the event: ten times the lines, about the same instructions
	math.randomseed(3)
	Fresh()
	local small, big = 0, 0
	for _ = 1, 60 do
		small = small + Kinstr("c0esmall", ctx)
		big = big + Kinstr("c0ebig", ctx)
	end
	local saved = Engine.SAMPLE
	Engine.SAMPLE = false
	Fresh()
	local whole = 0
	for _ = 1, 10 do whole = whole + Kinstr("c0ebig", ctx) end
	Engine.SAMPLE = saved
	T.ok(big < small * 1.3, ("4,005 lines cost about what 405 cost: %.1f against %.1f thousand instructions per pick")
		:format(big / 60, small / 60))
	T.ok(whole / 10 > 5 * big / 60, ("checking every line costs much more: %.1f thousand instructions per pick")
		:format(whole / 10))

	-- the shares of the levels hold statistically (place 50, situation 35, generic 15), with no window and in a session
	local function Shares(fresh, n)
		local seen, never = { [0] = 0, 0, 0 }, 0
		Fresh()
		for _ = 1, n do
			if fresh then Fresh() end
			local rec = Engine:PickEntry("c0ebig", ctx, "say")
			if rec.id:find("never", 1, true) then never = never + 1 end
			local l = Level(rec.id)
			seen[l] = seen[l] + 1
		end
		T.eq(never, 0, "a line whose conditions fail is never said")
		return seen
	end
	math.randomseed(11)
	for _, fresh in ipairs({ true, false }) do
		local s, n = Shares(fresh, 3000), 3000
		local what = fresh and "single picks" or "a session"
		for l, want in pairs({ [2] = 0.50, [1] = 0.35, [0] = 0.15 }) do
			-- three standard deviations of 3,000 draws are under 2.8 points
			T.ok(math.abs(s[l] / n - want) < 0.03, ("%s, level %d: %.1f%% (share %.0f%%)"):format(what, l,
				100 * s[l] / n, 100 * want))
		end
	end

	-- the pick stays random over every line that holds: a session reaches most of the 1,000 generic lines
	math.randomseed(12)
	Fresh()
	local said, generic = {}, 0
	for _ = 1, 4000 do
		local id = Engine:PickEntry("c0ebig", ctx, "say").id
		if Level(id) == 0 then
			generic = generic + 1
			said[id] = true
		end
	end
	local distinct = 0
	for _ in pairs(said) do distinct = distinct + 1 end
	-- ~600 generic picks over 1,000 lines: a uniform draw reaches about 1,000 x (1 - e^-0.6) = 450 of them
	T.ok(distinct > 0.6 * generic * 0.75 and distinct > 300, ("%d generic picks said %d different lines")
		:format(generic, distinct))

	-- the most specific tier is seen beside thousands of lines: in Goldshire the five subzone lines join the place
	-- level (zone and subzone) and speak
	P.subzone = "Goldshire"
	local gctx = NS:BuildContext()
	math.randomseed(13)
	local sub = 0
	for _ = 1, 400 do
		Fresh()
		if Engine:PickEntry("c0ebig", gctx, "say").id:find(".sub", 1, true) then sub = sub + 1 end
	end
	-- the subzone tier (5 fresh, >= TIER_MIN) is the place level alone: half of the picks
	T.ok(sub > 400 * 0.4 and sub < 400 * 0.6, "the five subzone lines take the place share: " .. sub .. "/400")
	P.subzone = ""

	-- the window keeps its size from the lines that hold (estimated): no line twice within 30 picks
	math.randomseed(14)
	Fresh()
	local last, ok = {}, true
	for i = 1, 400 do
		local id = Engine:PickEntry("c0ebig", ctx, "say").id
		if last[id] and i - last[id] <= 30 then ok = false end
		last[id] = i
	end
	T.ok(ok, "no line comes back inside the window of 30 picks")
	T.eq(#NS.cdb.memory.recent.c0ebig, 30, "the window of the large event holds 30 lines")
	Engine:DropPack("t_c0e_s")
	Engine:DropPack("t_c0e_b")
end)

T.run("C0e: a line that holds is found also when the sample misses it, and dropped rules leave the tiers", function()
	-- 1,000 generic lines that never hold for a warrior, and one that does: the sample rarely draws it, the check of
	-- every candidate then finds it
	local reg, tx = {}, {}
	for i = 1, 1000 do
		reg[("c0e.rare.never%04d"):format(i)] = { event = "c0erare", speaker = "character", styles = { "epic" },
			conditions = { ["not"] = { class = "WARRIOR" } } }
	end
	reg["c0e.rare.one"] = { event = "c0erare", speaker = "character", styles = { "epic" } }
	for id in pairs(reg) do tx[id] = { id .. " uno" } end
	NS:RegisterPack({ id = "t_c0e_rare", name = "C0e rare", languages = { "itIT" },
		events = { c0erare = { category = "reflection" } }, registry = reg, texts = { itIT = tx } })
	P.zone, P.subzone, P.class = "Elwynn Forest", "", "WARRIOR"
	local ctx = NS:BuildContext()
	math.randomseed(21)
	local found = 0
	for _ = 1, 50 do
		Fresh()
		local rec = Engine:PickEntry("c0erare", ctx, "say")
		if rec and rec.id == "c0e.rare.one" then found = found + 1 end
	end
	T.eq(found, 50, "the one line that holds is said every time")
	-- the tiers of a group are made again when the group changes: the dropped rules are no longer candidates
	BigPack("t_c0e_drop", "c0erare", 40)
	local seen = false
	for _ = 1, 30 do
		Fresh()
		if Engine:PickEntry("c0erare", ctx, "say").id:find("t_c0e_drop", 1, true) then seen = true end
	end
	T.ok(seen, "the rules of a new pack join the tiers of the event")
	Engine:DropPack("t_c0e_drop")
	local stale = false
	for _ = 1, 30 do
		Fresh()
		local rec = Engine:PickEntry("c0erare", ctx, "say")
		if not rec or rec.id ~= "c0e.rare.one" then stale = true end
	end
	T.ok(not stale, "after the drop only the line that holds is said again")
	-- a view that changes the tier of a rule moves it to its new tier in the splits (tests and tools do this)
	local group = Engine.index.c0erare.say["*"]
	local one = Engine.OrdOf("c0e.rare.one")
	local function InTier(t)
		for _, r in ipairs(Engine.Split(group)[t]) do
			if r == one then return true end
		end
		return false
	end
	T.ok(InTier(0), "a generic line is in tier 0 of its group")
	local view = Engine.byId["c0e.rare.one"]
	view.tier = Engine.MAX_TIER
	T.ok(InTier(Engine.MAX_TIER) and not InTier(0), "its new tier is read")
	view.tier = nil
	T.ok(InTier(0), "and back")
	Engine:DropPack("t_c0e_rare")
end)

T.run("C0j: TierPool weighs a candidate only while its tier counts and when its level is drawn", function()
	Fresh()
	-- 30 candidates in each level, as views; the weights of one list computed at once, of the other when read
	local calls = 0
	local lazy = Engine.Lazy(function(e)
		calls = calls + 1
		return e.w0
	end)
	local eager, late = {}, {}
	for i = 1, 90 do
		local view = { id = ("c0jw.%02d"):format(i), tier = (i - 1) % 3 == 2 and 2 or (i - 1) % 3, w0 = 1 + i % 4 }
		eager[i] = { e = view, w = view.w0 }
		late[i] = setmetatable({ e = view }, lazy)
	end
	for seed = 1, 20 do
		math.randomseed(seed)
		local a, ta = Engine.TierPool(eager, "c0jw")
		local pa = Engine.WeightedPick(a, "c0jw")
		math.randomseed(seed)
		calls = 0
		for _, it in ipairs(late) do rawset(it, "w", nil) end
		local b, tb = Engine.TierPool(late, "c0jw")
		local counted = calls
		local pb = Engine.WeightedPick(b, "c0jw")
		T.ok(ta == tb and #a == #b and pa.e == pb.e, ("seed %d: the same level and the same pick (%s, %s)")
			:format(seed, pa.e.id, pb.e.id))
		T.ok(counted <= 3 * Engine.TIER_MIN, ("seed %d: the levels are drawn after %d weights (at most %d)")
			:format(seed, counted, 3 * Engine.TIER_MIN))
		T.ok(calls <= counted + #b, ("seed %d: then only the level drawn is weighed (%d weights in all)"):format(seed, calls))
	end
end)

T.run("C0j: the first pick of a large event costs what the next ones cost, and a dropped pack leaves the splits in place", function()
	-- 8,005 lines: the split of the generic group is made as the rules are registered, not by the first pick
	BigPack("t_c0j_a", "c0jpool", 2000)
	P.zone, P.subzone, P.class = "Elwynn Forest", "", "WARRIOR"
	local ctx = NS:BuildContext()
	math.randomseed(21)
	Fresh()
	local first = Kinstr("c0jpool", ctx)
	local next = 0
	for _ = 1, 10 do next = next + Kinstr("c0jpool", ctx) end
	T.ok(first < 2 * next / 10, ("the first pick %.1f thousand instructions, the next ones %.1f"):format(first, next / 10))

	-- a pool share reads its own split of the group; a second pack in the same groups, then dropped
	local function IdOf(e) return type(e) == "number" and Engine.R.id[e] or e.id end
	Engine:SetPoolShare("t_c0j", function(_, event) return event == "c0jpool" and 0.5 or nil end,
		function(e) return IdOf(e):find("%.gen0") ~= nil end)
	BigPack("t_c0j_b", "c0jpool", 50)
	Fresh()
	for _ = 1, 5 do Engine:PickEntry("c0jpool", ctx, "say") end
	Engine:DropPack("t_c0j_b")
	local def
	for _, d in ipairs(Engine.poolShares) do
		if d.name == "t_c0j" then def = d end
	end
	for key, group in pairs(Engine.index.c0jpool.say) do
		local s, ss = Engine.Split(group), Engine.SplitShare(group, def, NS:TextLang())
		local n, gone, parts = 0, 0, true
		for t = 0, Engine.MAX_TIER do
			n = n + #s[t]
			for _, r in ipairs(s[t]) do
				if IdOf(r):find("t_c0j_b", 1, true) then gone = gone + 1 end
			end
			if #ss.pref[t] + #ss.rest[t] ~= #s[t] then parts = false end
			for _, r in ipairs(ss.pref[t]) do
				if IdOf(r):find("t_c0j_b", 1, true) or not IdOf(r):find("%.gen0") then parts = false end
			end
		end
		T.eq(n, #group, "group " .. key .. ": its tiers hold every rule of the group")
		T.eq(gone, 0, "group " .. key .. ": no rule of the dropped pack is left in its tiers")
		T.ok(parts, "group " .. key .. ": the share split follows the drop")
	end
	-- and the first pick after the drop costs what the next ones cost
	Fresh()
	first = Kinstr("c0jpool", ctx)
	next = 0
	for _ = 1, 10 do next = next + Kinstr("c0jpool", ctx) end
	T.ok(first < 2 * next / 10, ("after a drop, the first pick %.1f thousand instructions, the next ones %.1f")
		:format(first, next / 10))
	Engine:SetPoolShare("t_c0j", nil)
	Engine:DropPack("t_c0j_a")
end)

T.run("C0e: the composite pick reads the situational lines of the split groups", function()
	local mismatches, compared, nonEmpty = 0, 0, 0
	for _, zone in ipairs({ "Durotar", "Elwynn Forest", "Orgrimmar", "Stormwind City" }) do
		P.zone, P.subzone = zone, ""
		local ctx = NS:BuildContext()
		for ev in pairs(Engine.index) do
			for _, form in ipairs({ "say", "emote", false }) do
				local f = form or nil
				local want = {}
				for _, r in ipairs(Engine:Candidates(ev, ctx, f)) do
					if Engine.R.shape[r].situational then want[#want + 1] = r end
				end
				local got = Engine:SituationalCandidates(ev, ctx, f)
				compared = compared + 1
				if #got > 0 then nonEmpty = nonEmpty + 1 end
				if table.concat(got, ",") ~= table.concat(want, ",") then mismatches = mismatches + 1 end
			end
		end
	end
	T.eq(mismatches, 0, "the same situational lines, in the same order (" .. compared .. " cases)")
	T.ok(nonEmpty > 0, "some events have situational lines (" .. nonEmpty .. ")")
	P.zone, P.subzone = "Elwynn Forest", "Goldshire"
end)

T.run("#89: related-event fallback, declared in data and validated", function()
	Fresh()
	local rec = Engine:PickEntry("r3fb_a", NS:BuildContext(), "say")
	T.ok(rec ~= nil and rec.id == "r3.fb.target", "an event with no phrase speaks with its related event")
	T.eq(rec.event, "r3fb_a", "the record keeps the event asked"); T.eq(rec.via, "r3fb_b", "and says which one spoke")
	Engine.R1_COMPAT = true
	T.eq(Engine:PickEntry("r3fb_a", NS:BuildContext(), "say"), nil, "R1: silence")
	Engine.R1_COMPAT = nil
	-- a cycle never loops, and the validator reports it
	Engine.events.r3cyc_a.fallback, Engine.events.r3cyc_b.fallback = "r3cyc_b", "r3cyc_a"
	T.eq(Engine:PickEntry("r3cyc_a", NS:BuildContext(), "say"), nil, "a cycle ends in silence")
	local r = Validator:Run()
	T.ok(Has(r, "badFallback", "event:r3cyc_a"), "the validator reports the cycle")
	Engine.events.r3cyc_a.fallback, Engine.events.r3cyc_b.fallback = "no_such_event", nil
	T.ok(Has(Validator:Run(), "badFallback", "event:r3cyc_a"), "and a fallback to an unknown event")
	Engine.events.r3cyc_a.fallback = nil
	T.eq(Engine.events.rezother.fallback, "heal", "base data: rezother falls back to heal")
	T.eq(Engine.events.threat.fallback, "battle", "and threat to battle")
	T.ok(not Has(Validator:Run(), "badFallback"), "the base fallbacks are valid")
end)

---------------------------------------------------------------------------
-- #90 themes, motifs, voices, frames, openings
---------------------------------------------------------------------------
T.run("#90: closed vocabularies, checked by the validator", function()
	T.ok(Engine.THEMES.loss and Engine.THEMES.humour and Engine.MOTIFS.blade and Engine.MOTIFS.road, "base vocabularies")
	NS:RegisterPack({ id = "t_r3_vocab", languages = { "itIT" },
		registry = {
			["r3.v.theme"] = { event = "r3v", speaker = "character", styles = { "epic" }, theme = "boredom" },
			["r3.v.motif"] = { event = "r3v", speaker = "character", styles = { "epic" }, theme = "loss", motifs = { "spoon" } },
			["r3.v.many"] = { event = "r3v", speaker = "character", styles = { "epic" }, theme = "loss",
				motifs = { "blade", "blood", "bone", "ash" } },
			["r3.v.ok"] = { event = "r3v", speaker = "character", styles = { "epic" }, theme = "loss", motifs = { "blade" } },
		},
		texts = { itIT = { ["r3.v.theme"] = "a", ["r3.v.motif"] = "b", ["r3.v.many"] = "c", ["r3.v.ok"] = "d" } },
		frames = { { id = "r3.v.frame", event = "r3v", themes = { "boredom" }, it = "sbadiglia. «{line}»" } },
	})
	local r = Validator:Run({ packs = { "t_r3_vocab" } })
	T.ok(Has(r, "badTheme", "r3.v.theme"), "an unknown theme is an error")
	T.ok(Has(r, "badMotif", "r3.v.motif"), "an unknown motif is an error")
	T.ok(Has(r, "badMotif", "r3.v.many"), "more than three motifs is an error")
	T.ok(not Has(r, "badTheme", "r3.v.ok") and not Has(r, "badMotif", "r3.v.ok"), "a valid rule passes")
	T.ok(Has(r, "badTheme", "r3.v.frame"), "a frame with an unknown theme too")
	Engine:DropPack("t_r3_vocab")
	-- a pack may extend the vocabularies, like registers
	NS:RegisterPack({ id = "t_r3_vocab2", languages = { "itIT" }, themes = { "boredom" }, motifs = { "spoon" },
		registry = { ["r3.v2"] = { event = "r3v", speaker = "character", styles = { "epic" }, theme = "boredom", motifs = { "spoon" } } },
		texts = { itIT = { ["r3.v2"] = "e" } } })
	r = Validator:Run({ packs = { "t_r3_vocab2" } })
	T.ok(not Has(r, "badTheme") and not Has(r, "badMotif"), "declared by the pack: valid")
	Engine:DropPack("t_r3_vocab2")
end)

T.run("#90: the existing content is tagged", function()
	local tagged, total, motifs = 0, 0, 0
	for _, p in Engine:Rules() do
		if p.pack:find("^base_") or p.pack:find("_exploration$") then
			if p.pack ~= "base_arcs" and p.pack ~= "base_dialogues" then
				total = total + 1
				if p.theme then tagged = tagged + 1 end
				if p.motifs and #p.motifs > 0 then motifs = motifs + 1 end
			end
		end
	end
	T.eq(tagged, total, "every archived rule of the base and of the regions has a theme (" .. total .. ")")
	T.ok(motifs > total / 3, "and many have motifs: " .. motifs)
	for _, ev in ipairs({ "battle", "victory", "zone", "lowhp", "muse", "greet" }) do
		local themes = {}
		for _, p in ipairs(Engine:EventRules(ev)) do if p.theme then themes[p.theme] = true end end
		local n = 0
		for _ in pairs(themes) do n = n + 1 end
		T.ok(n >= 4, ev .. ": at least four themes to alternate (" .. n .. ")")
	end
end)

T.run("#90: novelty of theme, motifs and voice, decaying with time", function()
	Fresh()
	local loss, joke, road = Engine.byId["r3.th.loss1"], Engine.byId["r3.th.joke1"], Engine.byId["r3.th.road1"]
	T.eq(Engine.ThemeNovelty(loss), 1, "nothing said yet: neutral")
	Engine:NoteLine({ theme = "loss", motifs = { "grave" }, speaker = "character" })
	local n = Engine.ThemeNovelty(loss)
	T.ok(n < 0.3, "the same theme and motif just said weighs much less: " .. n)
	T.eq(Engine.ThemeNovelty(joke), 1, "another theme: neutral")
	Engine:NoteLine({ theme = "humour", speaker = "character" })
	T.ok(Engine.ThemeNovelty(loss, "narrator") > n, "one intervention later the theme weighs less on it")
	T.ok(Engine.ThemeNovelty(joke) < Engine.ThemeNovelty(road), "the newest theme is the most penalised")
	T.ok(Engine.ThemeNovelty(road) < 1, "the same voice as the last two: VOICE_REPEAT")
	T.eq(Engine.ThemeNovelty(road, "narrator"), 1, "a framed phrase is told by the narrator: another voice")
	ADVANCE(Engine.THEME_DECAY)
	T.eq(Engine.ThemeNovelty(loss), 1, "after THEME_DECAY seconds the memory no longer weighs")
	-- the weight of PickEntry is still the weight of Factors, bit for bit, with a thematic memory
	Fresh()
	Engine:NoteLine({ theme = "courage", motifs = { "blade", "blood" }, speaker = "character" })
	Engine:NoteLine({ theme = "humour", speaker = "character" })
	local ctx, bad, n2 = NS:BuildContext(), 0, 0
	for _, ev in ipairs({ "battle", "victory", "zone" }) do
		local profile = Engine.StyleResolver:Resolve(ev, ctx)
		for _, p in ipairs(Engine:Eligible(Engine:Candidates(ev, ctx), "en", ctx, nil, time())) do
			n2 = n2 + 1
			if Engine.Score(p, ev, 1, nil, ctx, profile) ~= Engine.Factors(p, nil, ctx, profile).W then bad = bad + 1 end
			if Engine.Score(p, ev, 1, nil, ctx, profile, "narrator") ~= Engine.Factors(p, nil, ctx, profile, "narrator").W then bad = bad + 1 end
		end
	end
	T.ok(n2 > 50, "candidates weighed: " .. n2); T.eq(bad, 0, "Score equals Factors().W with the novelty of R3")
end)

T.run("#90: consecutive themes drop in a session", function()
	local ctx = NS:BuildContext()
	local function Rate(r1)
		Engine.R1_COMPAT = r1
		Fresh()
		math.randomseed(31)
		local last, same, n = nil, 0, 0
		for _ = 1, 300 do
			local rec = Engine:PickEntry("r3th", ctx, "say")
			local th = Engine.byId[rec.id].theme
			if last and th == last then same = same + 1 end
			last, n = th, n + 1
			ADVANCE(30)
		end
		Engine.R1_COMPAT = nil
		return same / (n - 1)
	end
	local before, after = Rate(true), Rate(nil)
	T.ok(after < before, ("same theme consecutively: %.2f before, %.2f after"):format(before, after))
	T.ok(after < 0.15, ("under the 15%% of the roadmap: %.2f"):format(after))
end)

T.run("#90: voices alternate", function()
	local ctx = NS:BuildContext()
	Fresh()
	math.randomseed(41)
	local three = 0
	local voices = {}
	for i = 1, 200 do
		local rec = Engine:PickEntry("r3voice", ctx, "say")
		voices[i] = rec.speaker
		if i >= 3 and voices[i] == voices[i - 1] and voices[i] == voices[i - 2] then three = three + 1 end
		ADVANCE(30)
	end
	T.ok(three < 30, "the same voice three times in a row is rare: " .. three .. "/198")
end)

T.run("#90: a variant does not open like the last interventions", function()
	T.eq(Engine.Opening("«Il vento, soffia ancora.»"), "il vento", "the first two words, lower case, without quotes")
	T.eq(Engine.Opening("{target}, guarda!"), "guarda", "a placeholder is not an opening")
	T.eq(Engine.Opening("  "), nil, "an empty text has none")
	local ctx = NS:BuildContext()
	Fresh()
	math.randomseed(51)
	local bad = 0
	for _ = 1, 50 do
		Engine:ResetLines()
		Engine:NoteLine({ opening = "il vento" })
		local text = Engine:RenderPhrase(Engine.byId["r3.open"], "it", ctx)
		if text:find("^Il vento") then bad = bad + 1 end
	end
	T.eq(bad, 0, "the only variant with another opening is chosen")
end)

T.run("#90: frames tied to theme and register, and fresh across events", function()
	local ctx = NS:BuildContext()
	math.randomseed(61)
	local lossFrame, jokeFrame = 0, 0
	for _ = 1, 200 do
		Fresh()
		local rec = Engine:PickEntry("r3fr", ctx, "emote")
		if rec and rec.frame == "r3.frame.loss" then
			if rec.id == "r3.fr.loss" then lossFrame = lossFrame + 1 else jokeFrame = jokeFrame + 1 end
		end
	end
	T.eq(jokeFrame, 0, "a frame written for a theme never tells a phrase of another theme")
	T.ok(lossFrame > 0, "and it tells those of its theme: " .. lossFrame)
	-- the generic frames of the base: "says" and "murmurs" are rare in a session of emotes. They are light (weight 0.15),
	-- and in this mix of events (three of eight are greetings, toasts and farewells, spoken lines) their share is about
	-- 9-10%: one seed of 400 picks (about 280 framed, one standard deviation near 1.8 points) gave 7.7-10.4% by seed since
	-- R3a (#145), and the order of the picks differs between platforms. So five seeds are pooled and the bound keeps a
	-- margin; the target of the roadmap R3 (under 10% of the framed interventions of a simulated session) is checked by
	-- M2 in run_tests.py (9a).
	P.zone, P.subzone = "Elwynn Forest", "Goldshire"
	ctx = NS:BuildContext()
	local framed, says = 0, 0
	for _, seed in ipairs({ 62, 63, 64, 65, 66 }) do
		Fresh()
		math.randomseed(seed)
		for i = 1, 400 do
			local ev = ({ "battle", "victory", "muse", "zone", "greet", "toast", "farewell", "levelup" })[i % 8 + 1]
			local rec = Engine:PickEntry(ev, ctx, "emote")
			if rec and rec.frame then
				framed = framed + 1
				local f
				for _, list in pairs(Engine.frames) do
					for _, x in ipairs(list) do if x.id == rec.frame then f = x end end
				end
				local en = Engine.VariantText(f.text.en[1])
				if en:find("^says,") or en:find("^murmurs,") then says = says + 1 end
			end
			ADVANCE(40)
		end
	end
	T.ok(framed > 250, "framed interventions: " .. framed)
	T.ok(says / framed < 0.12, ("\"says\" and \"murmurs\" under 12%% of the frames of five seeds: %d/%d"):format(says, framed))
end)

T.run("#90: the thematic memory is never saved (ADR 0017)", function()
	Fresh()
	for _ = 1, 20 do Engine:PickEntry("r3th", NS:BuildContext(), "say") end
	T.ok(#Engine.lines > 0, "the session remembers")
	local saved = SERIALIZE(NS.cdb) .. SERIALIZE(NS.db)
	T.ok(not saved:find("strada", 1, true) and not saved:find("journey", 1, true), "no theme, opening or text in the SavedVariables")
	T.ok(#Engine.lines <= Engine.LINES_MAX, "bounded")
end)

---------------------------------------------------------------------------
-- #91 quotas and hunger
---------------------------------------------------------------------------
local function ResetDirector()
	SENT = {}
	P.combat = false
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.chat.mode = "PRIVATE"
	NS.db.chance = {}
	Director.queue, Director.log = {}, {}
	ADVANCE(1000)
	Pacing:Reset()
end

T.run("#91: per-session quota of a category, from the data", function()
	T.eq(Engine.QUOTAS.combat.share, 0.4, "combat: at most 40%")
	ResetDirector()
	local now = GetTime()
	for i = 1, 4 do Pacing:Record("battle", "combat", now - 100 + i) end
	local used, allowed = Pacing:Quota("combat", now)
	T.eq(used, 4, "four combat interventions"); T.eq(allowed, 2, "two of five allowed")
	local v = ND:Gate("battle", nil, now + 60)
	T.eq(v.reason, "quota:combat", "the fifth is refused by the quota")
	T.ok(ND:Gate("levelup", nil, now + 60).allow, "an exceptional moment is never refused")
	-- other categories make room: four combat out of ten
	for i = 1, 6 do Pacing:Record("zone", "exploration", now + i) end
	used = Pacing:Quota("combat", now + 100)
	T.eq(used, 4, "the window still holds the four of combat")
	Pacing:Record("zone", "exploration", now + 10)
	used = Pacing:Quota("combat", now + 100)
	T.eq(used, 3, "ten later the oldest is out of the window")
	-- the span: after QUOTA_SPAN seconds old interventions no longer count
	ResetDirector()
	for i = 1, 4 do Pacing:Record("battle", "combat", GetTime() + i) end
	ADVANCE(Pacing.QUOTA_SPAN + 10)
	T.eq(Pacing:Quota("combat", GetTime()), 0, "after the span the quota is free again")
	-- R1 compatibility
	ResetDirector()
	for i = 1, 4 do Pacing:Record("battle", "combat", GetTime() - 100 + i) end
	Engine.R1_COMPAT = true
	T.ok(ND:Gate("battle", nil, GetTime() + 60).reason ~= "quota:combat", "R1: no quota")
	Engine.R1_COMPAT = nil
end)

T.run("#91: hunger raises neglected categories", function()
	ResetDirector()
	local now = GetTime()
	T.eq(Pacing:Hunger("exploration", now), 1, "at the start of the session: no hunger")
	T.eq(Pacing:Hunger("combat", now), 1, "a category without hunger")
	local h = Pacing:Hunger("exploration", now + 300)
	T.ok(h > 1 and h < 2, "it grows with the silence: " .. h)
	T.eq(Pacing:Hunger("exploration", now + 2000), 2, "up to its factor")
	Pacing:Record("zone", "exploration", now + 2000)
	T.eq(Pacing:Hunger("exploration", now + 2000), 1, "speaking satisfies it")
	local v = ND:Gate("zone", nil, now + 5000)
	T.ok(v.allow and v.hunger == 2 and v.chanceMul == 2, "the gate multiplies the chance")
	-- among candidates of the same priority the hungriest goes first
	local list = ND:Order({ { event = "battle", priority = 1, seq = 1, hunger = 1 },
		{ event = "zone", priority = 1, seq = 2, hunger = 1.8 }, { event = "levelup", priority = 3, seq = 3, hunger = 1 } })
	T.eq(list[1].event, "levelup", "priority first"); T.eq(list[2].event, "zone", "then hunger")
	T.ok(Engine.HUNGER.exploration and Engine.HUNGER.reflection, "data: exploration and reflection are hungry")
	T.ok(not Has(Validator:Run(), "badQuota") and not Has(Validator:Run(), "badHunger"), "the data is valid")
	NS:SetCategoryQuota("combat", { share = 2 })
	T.ok(Has(Validator:Run(), "badQuota"), "a share above 1 is refused")
	NS:SetCategoryQuota("combat", { share = 0.4, window = 10 })
end)

T.run("#91: a simulated session keeps combat under its quota", function()
	ResetDirector()
	math.randomseed(71)
	NS.db.pacing.globalCooldownSeconds = 45
	local spoken = {}
	local n0 = #NS.Narrator.history
	for minute = 1, 120 do
		if minute % 20 == 1 then
			P.zone = ({ "Durotar", "The Barrens", "Ashenvale" })[math.floor(minute / 20) % 3 + 1]
			Director:Offer("zone"); ADVANCE(1)
		end
		P.combat = true
		Director:Offer("battle"); ADVANCE(10)
		P.combat = false
		Director:Offer("victory", { duration = 20 }); ADVANCE(20)
		-- the player presses "speak" now and then, out of combat (an explicit intervention: never refused)
		if minute % 5 == 0 then NS.Gateway:Improvise() end
		ADVANCE(29)
	end
	local cats = {}
	for _, h in ipairs(Pacing.history) do cats[h.category] = (cats[h.category] or 0) + 1 end
	local total = 0
	for _, n in pairs(cats) do total = total + n end
	T.ok(total > 10, "the session spoke: " .. total)
	T.ok((cats.combat or 0) / total <= 0.45, ("combat %d of %d, the quota is 40%%"):format(cats.combat or 0, total))
	local quota = 0
	for _, e in ipairs(Director.log) do if e.result == "quota:combat" then quota = quota + 1 end end
	T.ok(quota > 0 or #Director.log >= Director.LOG_SIZE, "the quota refused combat lines")
	T.ok((cats.exploration or 0) > 0, "and exploration spoke")
end)
