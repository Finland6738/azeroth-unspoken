-- Tests of the scale foundations (R1): selection index by event and place (#83), compact in-memory format (#84) and
-- bounded anti-repetition memory (#86). The equivalence tests compare the indexed selection with the selection before
-- the index (a scan of all byEvent with the old order of checks) on the current database and on a small synthetic
-- archive (Tests/SyntheticArchive.lua, loaded by run_tests.py before this file).
--
-- Updated on purpose by R3 (#89, #90, #91, ADR 0029). What still holds: the index gives the same *eligible* rules, in
-- the same order and with the same random draws, as a scan of byEvent (CheckEquivalent, unchanged), and the weight of
-- a candidate is the weight of Factors bit for bit (now with the thematic novelty in N: see also TestSelection.lua).
-- What changes on purpose is the *pick* among the eligible rules: the specificity tiers narrow the pool, the novelty
-- of themes, motifs, voices, openings and frames changes the weights, the related-event fallback speaks where R1 was
-- silent, the quotas and hunger change which spontaneous event speaks. With Engine.R1_COMPAT = true all of that is
-- off and Tests/trace_picks.py --r1 printed the same 3,000 picks as the engine of R1 on the same data (checked before
-- the frames were rewritten); Tests/bench_m2.py measures the effect.
local NS = ...
local Engine = NS.Engine

local function Ids(list)
	local out = {}
	for i, p in ipairs(list) do out[i] = p.id end
	return table.concat(out, ",")
end

-- the selection before #83: every rule of the event, checks in the old order (texts before conditions)
local function OldEligible(list, lang, ctx, form, now)
	local out = {}
	local mem = NS.cdb.memory
	for _, p in ipairs(list or {}) do
		-- #99: a part said only inside a monologue is never a candidate; a monologue is one when its parts are usable
		local usable
		if p.kind == "monologue" then
			usable = not Engine.R1_COMPAT and Engine.SafeMatch(p.when, ctx) and Engine:MonologueUsable(p, lang, ctx, now)
		else
			usable = #Engine.UsableVariants(p.text[lang], ctx, p.speaker, p.pack) > 0 and Engine.SafeMatch(p.when, ctx)
		end
		if (not form or p.form == form) and not NS.db.disabledPacks[p.pack] and p.chainable ~= "only"
			and not (p.cooldown and mem.last[p.id] and now - mem.last[p.id] < p.cooldown) and usable then
			table.insert(out, p)
		end
	end
	return out
end

-- contexts that open different groups of the index: zones and subzones (also unknown), classes, races, hours,
-- a target, a map and an instance
local SCENES = {
	{ zone = "Durotar", subzone = "", class = "WARRIOR", race = "Orc", hour = 14 },
	{ zone = "Elwynn Forest", subzone = "Goldshire", class = "MAGE", race = "Human", hour = 22 },
	{ zone = "Moonglade", subzone = "Nighthaven", class = "DRUID", race = "NightElf", hour = 6 },
	{ zone = "Arathi Highlands", subzone = "Stromgarde Keep", class = "PRIEST", race = "Scourge", hour = 19 },
	{ zone = "Orgrimmar", subzone = "Valley of Honor", class = "HUNTER", race = "Tauren", hour = 3, resting = true },
	{ zone = "Duskwood", subzone = "Darkshire", class = "ROGUE", race = "Gnome", hour = 12,
		target = { name = "Stitches", level = 35, hp = 50, hpMax = 100, hostile = true, ctype = "Undead", classification = "elite" } },
	{ zone = "Nowhere At All", subzone = "Nothing", class = "PALADIN", race = "Dwarf", hour = 9, mapID = 1429 },
	{ zone = "Deadmines", subzone = "", class = "WARLOCK", race = "Human", hour = 15, instance = true, instanceType = "party" },
}

local function Scene(s)
	P.zone, P.subzone, P.class, P.race, P.hour = s.zone, s.subzone, s.class, s.race, s.hour
	P.resting, P.target, P.mapID, P.instance, P.instanceType = s.resting, s.target, s.mapID, s.instance, s.instanceType
	return NS:BuildContext()
end

local function Events()
	local list = {}
	for ev in pairs(Engine.byEvent) do table.insert(list, ev) end
	table.sort(list)
	return list
end

-- same rules, same order, and the same random numbers drawn (chance conditions draw them)
local function CheckEquivalent(label)
	local mismatches, compared, nonEmpty = 0, 0, 0
	local now = time()
	for _, s in ipairs(SCENES) do
		local ctx = Scene(s)
		for _, ev in ipairs(Events()) do
			for _, f in ipairs({ "say", "emote", false }) do
				local form = f or nil
				for _, lang in ipairs({ "it", "en" }) do
					math.randomseed(compared + 1)
					local new = Engine:Eligible(Engine:Candidates(ev, ctx, form), lang, ctx, form, now)
					local drawNew = math.random()
					math.randomseed(compared + 1)
					local old = OldEligible(Engine.byEvent[ev], lang, ctx, form, now)
					local drawOld = math.random()
					compared = compared + 1
					if #new > 0 then nonEmpty = nonEmpty + 1 end
					if Ids(new) ~= Ids(old) or drawNew ~= drawOld then
						mismatches = mismatches + 1
						if mismatches <= 3 then
							T.ok(false, ("%s: %s %s %s %s: indexed [%s] / scan [%s]"):format(label, s.zone, ev, tostring(form),
								lang, Ids(new), Ids(old)))
						end
					end
				end
			end
		end
	end
	T.eq(mismatches, 0, label .. ": same eligible rules, in the same order, with the same random draws (" .. compared .. " cases)")
	T.ok(nonEmpty > compared / 4, label .. ": the cases are not all empty (" .. nonEmpty .. ")")
end

T.run("#83: the index gives the same eligible rules as a scan of byEvent (current database)", function()
	CheckEquivalent("database")
	-- a rule on cooldown and a disabled pack: same answer on both paths
	local p = Engine.byId["battle.gen.01"]
	NS.cdb.memory.last[p.id] = time()
	local saved = p.cooldown
	p.cooldown = 3600
	NS.db.disabledPacks.base_social = true
	CheckEquivalent("cooldown and disabled pack")
	p.cooldown = saved
	NS.db.disabledPacks.base_social = nil
	NS.cdb.memory.last[p.id] = nil
end)

T.run("#83: the weight of every candidate is the weight of Factors, bit for bit", function()
	local n, bad = 0, 0
	for _, s in ipairs(SCENES) do
		local ctx = Scene(s)
		for _, ev in ipairs({ "battle", "zone", "victory", "greet", "muse", "death" }) do
			local profile = Engine.StyleResolver:Resolve(ev, ctx)
			local lastTone = NS.cdb.memory.lastTone[ev]
			for _, p in ipairs(Engine:Eligible(Engine:Candidates(ev, ctx), "en", ctx, nil, time())) do
				n = n + 1
				if Engine.Score(p, ev, 1, lastTone, ctx, profile) ~= Engine.Factors(p, lastTone, ctx, profile).W then bad = bad + 1 end
			end
		end
	end
	T.ok(n > 100, "candidates weighed: " .. n)
	T.eq(bad, 0, "Score equals Factors().W")
end)

T.run("#83: index keys follow the comparisons of the rule engine", function()
	local function K(when) return table.concat(Engine.IndexKeys(when) or { "*" }, " ") end
	T.eq(K(nil), "*", "no conditions: generic")
	T.eq(K({ zone = "Elwynn Forest" }), "z:elwynn forest", "a zone, lower case")
	T.eq(K({ zone = { "Durotar", "DUROTAR", "Mulgore" } }), "z:durotar z:mulgore", "a list of zones, one key per value")
	T.eq(K({ zone = { "Durotar", true } }), "*", "a list with a boolean accepts any zone: generic")
	T.eq(K({ zone = false }), "*", "zone = false: generic")
	T.eq(K({ class = "MAGE", zone = "Duskwood" }), "z:duskwood", "the first dimension wins")
	T.eq(K({ place = { mapID = { 1429, 1411 } } }), "pm:1429 pm:1411", "map ids")
	T.eq(K({ place = { zone = "Orgrimmar" } }), "pz:orgrimmar", "zone of the place")
	T.eq(K({ race = "Orc", combat = true }), "r:orc", "race")
	T.eq(K({ mood = "forest" }), "m:forest", "zone mood")
	T.eq(K({ time = { "dusk", "night" } }), "h:dusk h:night", "time of day")
	T.eq(K({ zone = "Durotar", chance = 50 }), "*", "chance draws a random number: generic")
	T.eq(K({ zone = "Durotar", any = { { chance = 10 } } }), "*", "also inside any")
	T.eq(K({ zone = "Durotar", place = { func = function() return true end } }), "*", "a function: generic")
	T.eq(K({ zone = "Durotar", hobbyLevel = 3 }), "*", "a condition of a pack: generic")
	T.eq(K({ ["not"] = { zone = "Durotar" } }), "*", "a zone under not: generic")
	-- a pack that makes a condition of the engine computed: the index is rebuilt and those rules become generic
	NS:RegisterPack({ id = "t_scale_idx", languages = { "itIT" },
		registry = { ["t.scale.ctype"] = { event = "t_scale_ev", speaker = "character", styles = { "epic" },
			conditions = { ctype = "beast" } } },
		texts = { itIT = { ["t.scale.ctype"] = "Una bestia." } } })
	T.ok(Engine.index.t_scale_ev.say["t:beast"] ~= nil, "indexed by creature type")
	local calls = 0
	NS:RegisterCondition("ctype", function(v, ctx) calls = calls + 1; return true end)
	T.ok(Engine.index.t_scale_ev.say["t:beast"] == nil and Engine.index.t_scale_ev.say["*"][1].id == "t.scale.ctype",
		"after the pack changed ctype, the rule is generic")
end)

T.run("#83: candidates are a part of byEvent, in registration order", function()
	for _, s in ipairs(SCENES) do
		local ctx = Scene(s)
		for _, ev in ipairs(Events()) do
			local c = Engine:Candidates(ev, ctx)
			local last = 0
			for _, p in ipairs(c) do
				T.ok(p.ord > last, ev .. ": increasing order")
				last = p.ord
			end
			T.ok(#c <= #Engine.byEvent[ev], ev .. ": never more than byEvent")
		end
	end
	local ctx = Scene(SCENES[1])
	T.ok(#Engine:Candidates("battle", ctx, "say") < #Engine.byEvent.battle, "the index leaves rules out")
	T.eq(#Engine:Candidates("no_such_event", ctx), 0, "an unknown event has no candidates")
end)

T.run("#83: the same on a synthetic archive with rules bound to places", function()
	local src = SYNTH_SOURCE(NS, 1500, { seed = 3 })
	assert(loadstring(src))(NS)
	T.ok(Engine.byId["syn.001500"] ~= nil, "synthetic archive loaded")
	CheckEquivalent("synthetic")
end)

T.run("#84: source tables are not kept, variants are strings", function()
	local pack = Engine.packs.base_combat
	T.ok(pack ~= nil and pack.registry == nil and pack.texts == nil, "registry and texts released after registration")
	T.ok(pack.ids and #pack.ids > 0 and pack.languages, "ids and languages stay for the validator")
	local strings, tables = 0, 0
	for _, p in pairs(Engine.byId) do
		for _, list in pairs(p.text) do
			for _, v in ipairs(list) do
				if type(v) == "string" then strings = strings + 1 else tables = tables + 1 end
			end
		end
	end
	T.ok(strings > 4000, "variants as strings: " .. strings)
	-- (one in 15: the variants of a different depth, the third and fourth of a rule, are tables; R3 added about 170)
	T.ok(tables < strings / 15, "only rare variants keep a table: " .. tables)
	-- shared tables: same values, one copy
	local a, b = Engine.byId["battle.gen.02"], Engine.byId["battle.gen.03"]
	T.ok(a.events == b.events and a.styles == b.styles, "events and registers are shared")
	-- a variant with a depth of its own, an empty one and one from another pack stay tables
	NS:RegisterPack({ id = "t_scale_fmt", languages = { "itIT" },
		registry = { ["t.scale.fmt"] = { event = "t_scale_ev", speaker = "character", styles = { "epic" } } },
		texts = { itIT = { ["t.scale.fmt"] = { "semplice", { "profonda", depth = "elevated" }, "" } } } })
	NS:AddTexts("itIT", { ["t.scale.fmt"] = "da un altro pacchetto" }, "t_scale_other")
	local list = Engine.byId["t.scale.fmt"].text.it
	T.eq(type(list[1]), "string", "a plain variant is a string")
	T.ok(type(list[2]) == "table" and list[2].depth.elevated, "a variant with a depth is a table")
	T.ok(type(list[3]) == "table" and not list[3].ok, "an empty variant is a table, for the validator")
	T.ok(type(list[4]) == "table" and Engine.VariantPack(list[4], "t_scale_fmt") == "t_scale_other", "the pack of another text")
	T.eq(Engine.VariantPack(list[1], "t_scale_fmt"), "t_scale_fmt", "a string belongs to the owner")
	T.eq(Engine.VariantText(list[2]), "profonda", "VariantText"); T.ok(not Engine.VariantOk(list[3]), "VariantOk")
	-- a pack switched off still hides its strings
	NS.db.disabledPacks.t_scale_fmt = true
	T.eq(#Engine.UsableVariants(list, {}, "character", "t_scale_fmt"), 1, "only the text of the other pack")
	NS.db.disabledPacks.t_scale_fmt = nil
end)

T.run("#86: the anti-repetition memory stays bounded", function()
	local mem = NS.cdb.memory
	mem.uses, mem.last, mem.variant, mem.recent = {}, {}, {}, {}
	for i = 1, 3000 do Engine.Remember("battle", ("t.bound.%04d"):format(i), 30) end
	local n = 0
	for _ in pairs(mem.uses) do n = n + 1 end
	T.ok(n <= Engine.USES_MAX, "uses within the cap after 3000 distinct entries: " .. n)
	T.ok(mem.uses["t.bound.3000"] ~= nil, "the entry just used stays")
	T.eq(next(mem.last), nil, "no last use for entries without a cooldown")
	T.ok(#mem.recent.battle <= 30, "the window of the event keeps its size")
	local size = #SERIALIZE(mem)
	T.ok(size < 40000, "serialized memory stays small: " .. size .. " bytes")
	-- a rule with a cooldown keeps its last use, until the cooldown ends
	local cd = Engine.byId["t.scale.fmt"]
	cd.cooldown = 100
	Engine.Remember("t_scale_ev", cd.id, 5)
	T.ok(mem.last[cd.id] ~= nil, "last use of a rule with a cooldown")
	ADVANCE(50); Engine:DecayMemory()
	T.ok(mem.last[cd.id] ~= nil, "kept while the cooldown runs")
	ADVANCE(60); Engine:DecayMemory()
	T.eq(mem.last[cd.id], nil, "dropped when it ends")
	cd.cooldown = nil
	-- no text in the memory (ADR 0017)
	for i = 1, 30 do Engine:PickEntry("battle", NS:BuildContext(), "say") end
	local saved = SERIALIZE(NS.cdb.memory)
	local text = Engine.VariantText(Engine.byId["battle.gen.02"].text.en[1])
	T.ok(not saved:find(text, 1, true), "no phrase text is saved")
end)

T.run("#86: migration from schema 6", function()
	local uses, last, variant = {}, {}, {}
	for i = 1, 2000 do
		local id = ("t.old.%04d"):format(i)
		uses[id], last[id], variant[id] = (i % 7) + 0.5, time() - Engine.DORMANT_LAST_MAX - 1, 2
	end
	-- known rules: one with a cooldown still running, one without cooldown
	local cooled = Engine.byId["battle.gen.01"]
	cooled.cooldown = 600
	uses[cooled.id], last[cooled.id], variant[cooled.id] = 9, time() - 10, 1
	uses["battle.gen.02"], last["battle.gen.02"], variant["battle.gen.02"] = 9, time() - 10, 1
	AzerothUnspokenDB = { schemaVersion = 6, settings = {} }
	AzerothUnspokenCharacterDB = { schemaVersion = 6,
		memory = { uses = uses, last = last, variant = variant, recent = { battle = { "battle.gen.02" } }, lastTone = { battle = "epic" } } }
	NS.Config:Load()
	local mem = NS.cdb.memory
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 7, "schema 7")
	local n = 0
	for _ in pairs(mem.uses) do n = n + 1 end
	T.ok(n <= Engine.USES_MAX, "uses within the cap: " .. n)
	T.ok(mem.uses[cooled.id] == 9 and mem.uses["battle.gen.02"] == 9, "the most used entries stay")
	for id in pairs(mem.variant) do T.ok(mem.uses[id] ~= nil, "variant only for entries in uses: " .. id) end
	Engine:DecayMemory()
	T.ok(mem.last[cooled.id] ~= nil, "a running cooldown survives the migration")
	T.eq(mem.last["battle.gen.02"], nil, "the last use of a rule without cooldown goes")
	T.eq(mem.last["t.old.0001"], nil, "and of rules that do not exist, after DORMANT_LAST_MAX")
	T.eq(mem.recent.battle[1], "battle.gen.02", "the recent window stays"); T.eq(mem.lastTone.battle, "epic", "the last register too")
	cooled.cooldown = nil
end)

T.run("R3 (#89): the tiers narrow the pool of eligible rules on purpose, never widen it", function()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	local narrowed, cases = 0, 0
	for _, s in ipairs(SCENES) do
		local ctx = Scene(s)
		for _, ev in ipairs(Events()) do
			local items = {}
			for _, p in ipairs(Engine:Eligible(Engine:Candidates(ev, ctx, "say"), "en", ctx, "say", time())) do
				table.insert(items, { e = p, w = 1 })
			end
			if #items > 0 then
				cases = cases + 1
				local pool, tier = Engine.TierPool(items, ev)
				local inItems = {}
				for _, it in ipairs(items) do inItems[it] = true end
				local ok, specific = true, 0
				for _, it in ipairs(pool) do
					if not inItems[it] or Engine.Tier(it.e) < tier then ok = false end
					specific = specific + 1
				end
				T.ok(ok, ev .. ": the pool is a part of the eligible rules, from its tier up")
				T.ok(tier == 0 and #pool == #items or specific >= Engine.TIER_MIN, ev .. ": a narrowed pool keeps TIER_MIN rules")
				if #pool < #items then narrowed = narrowed + 1 end
			end
		end
	end
	T.ok(narrowed > 0 and narrowed < cases, ("the tiers narrow some pools, not all: %d of %d"):format(narrowed, cases))
end)

---------------------------------------------------------------------------
-- #157, #138: memo of one pick, cache of merged candidates, shared rule shapes and conditions
---------------------------------------------------------------------------
-- The memo and the caches must not change a single pick: the same seeded sequence of picks, with the same memory of
-- uses, gives the same trace with Engine.MEMO on and off. Run after the synthetic archive above is loaded, so many
-- rules share their shape and their conditions.
local TRACE_EVENTS = { { "battle", "say" }, { "battle", "emote" }, { "victory", "say" }, { "zone", "emote" },
	{ "zone", "say" }, { "muse", "say" }, { "greet", "say" }, { "death", "emote" }, { "lowhp", "say" }, { "travel", "emote" } }

local function Trace(memo, picks, seed)
	Engine.MEMO = memo
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Engine:ResetLines()
	math.randomseed(seed)
	local out = {}
	for i = 1, picks do
		local ev = TRACE_EVENTS[i % #TRACE_EVENTS + 1]
		local ctx = Scene(SCENES[math.floor(i / 3) % #SCENES + 1])
		NS.db.locale = (math.floor(i / 7) % 2 == 0) and "en" or "it"
		local rec = Engine:PickEntry(ev[1], ctx, ev[2])
		out[i] = rec and (rec.id .. " " .. tostring(rec.variant) .. " " .. tostring(rec.frame) .. " " .. rec.text) or "-"
	end
	Engine.MEMO = true
	return out
end

local function SameTrace(label, picks, seed)
	-- every pick with the memo of the weights, also the small ones
	local min = Engine.MEMO_MIN
	Engine.MEMO_MIN = 0
	local a, b = Trace(false, picks, seed), Trace(true, picks, seed)
	Engine.MEMO_MIN = min
	local first
	for i = 1, picks do
		if a[i] ~= b[i] then first = first or i end
	end
	T.ok(first == nil, label .. ": the same picks with and without the memo" ..
		(first and (" (first difference at pick " .. first .. ": " .. a[first] .. " / " .. b[first] .. ")") or ""))
	local spoke = 0
	for i = 1, picks do if b[i] ~= "-" then spoke = spoke + 1 end end
	T.ok(spoke > picks / 2, label .. ": most picks speak (" .. spoke .. ")")
end

T.run("#157: the memo of a pick changes no pick (neutral, soul and emotions, impure hook)", function()
	local locale, soul = NS.db.locale, NS.Personality:Profile().archetype
	SameTrace("neutral", 400, 5)
	NS.Personality:SetArchetype("veteran")
	NS.Emotion:Reset()
	NS.Emotion:Add("worried", 0.6); NS.Emotion:Add("tense", 0.3)
	SameTrace("veteran, worried", 400, 6)
	NS.Personality:SetArchetype("rogue")
	NS.Emotion:Reset()
	NS.Emotion:Add("happy", 0.7)
	-- a hook that reads the id is not pure: it is called for every rule, the pure ones still once per shape
	Engine:SetWeightHook("C", "t.scale.impure", function(e) return (#e.id % 3 == 0) and 1.7 or 1 end)
	SameTrace("rogue, happy, impure hook", 400, 7)
	Engine:SetWeightHook("C", "t.scale.impure", nil)
	NS.Emotion:Reset()
	NS.Personality:SetArchetype(soul ~= "custom" and soul or "neutral")
	NS.db.locale = locale
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
end)

T.run("#138: rules share their shape and their conditions; a write changes only its rule", function()
	local a, b = Engine.byId["syn.000001"], nil
	local shape = Engine.ShapeOf(a)
	T.ok(shape ~= nil, "a registered rule has a shape")
	local own = 0
	for _ in pairs(a) do own = own + 1 end
	T.ok(own <= 8, "the rule table keeps only its own fields (" .. own .. ")")
	-- another rule with the same shape
	for id, p in pairs(Engine.byId) do
		if p ~= a and Engine.ShapeOf(p) == shape then b = p; break end
	end
	T.ok(b ~= nil, "two synthetic clones share a shape")
	if b then
		local cooldown = b.cooldown
		a.cooldown = 4321
		T.eq(a.cooldown, 4321, "the write is read back")
		T.eq(b.cooldown, cooldown, "the other rule of the shape does not change")
		T.ok(Engine.ShapeOf(a) ~= shape and Engine.ShapeOf(b) == shape, "the rule got a copy of its shape")
		a.cooldown = nil
		T.eq(a.cooldown, nil, "a shape field can be removed from one rule")
		T.eq(a.speaker, b.speaker, "the copy keeps the other fields")
	end
	-- interned conditions: the clones of one rule that kept its conditions share the table
	local byKey, shared = {}, 0
	for _, p in pairs(Engine.byId) do
		if p.when then
			if byKey[p.when] then shared = shared + 1 end
			byKey[p.when] = true
		end
	end
	T.ok(shared > 100, "many rules share their conditions table (" .. shared .. ")")
end)

T.run("#138: the cache of merged candidates follows the index", function()
	local ctx = Scene(SCENES[2])
	local before = Engine:Candidates("battle", ctx, "say")
	T.ok(Engine:Candidates("battle", ctx, "say") == before, "the same context gives the cached list")
	local shapes0, whens0 = Engine.InternCounts()
	NS:RegisterPack({ id = "t_scale_cache", registry = {
		["t.scale.cache.z"] = { event = "battle", speaker = "character", conditions = { zone = "Elwynn Forest" } },
		["t.scale.cache.g"] = { event = "battle", speaker = "character" },
	}, texts = { enUS = { ["t.scale.cache.z"] = "Cache, zone.", ["t.scale.cache.g"] = "Cache, generic." } } })
	local after = Engine:Candidates("battle", ctx, "say")
	T.eq(#after, #before + 2, "a new rule is in the next union")
	T.ok(after[#after - 1].id == "t.scale.cache.g" and after[#after].id == "t.scale.cache.z", "in registration order")
	Engine:DropPack("t_scale_cache")
	T.eq(#Engine:Candidates("battle", ctx, "say"), #before, "a dropped pack leaves the union")
	local shapes1, whens1 = Engine.InternCounts()
	T.ok(shapes1 == shapes0 and whens1 == whens0, ("a dropped pack releases its shapes and conditions (%d/%d, %d/%d)")
		:format(shapes1, shapes0, whens1, whens0))
end)
