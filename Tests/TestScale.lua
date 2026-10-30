-- Tests of the scale foundations (R1): selection index by event and place (#83), compact in-memory format (#84) and
-- bounded anti-repetition memory (#86). The equivalence tests compare the indexed selection with the selection before
-- the index (a scan of all byEvent with the old order of checks) on the current database and on a small synthetic
-- archive (Tests/SyntheticArchive.lua, loaded by run_tests.py before this file).
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
		if (not form or p.form == form) and not NS.db.disabledPacks[p.pack]
			and not (p.cooldown and mem.last[p.id] and now - mem.last[p.id] < p.cooldown)
			and #Engine.UsableVariants(p.text[lang], ctx, p.speaker, p.pack) > 0 and Engine.SafeMatch(p.when, ctx) then
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
	T.ok(tables < strings / 20, "only rare variants keep a table: " .. tables)
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
