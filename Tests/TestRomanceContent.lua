-- Tests of active romance, step R3 (ADR 0061, docs/specs/romance.md point 15): the addon's own romance content.
--   - Data/RegistryRomance.lua: every rule is a romance event, carries a tier, never speaks as the character; the scenes
--     are prose; every outcome, tier, moment, phase and date option has its lines, in Italian and English;
--   - Data/RomanceFlirts.lua: the flirt answers, every kind and every moment, short labels in both languages;
--   - Data/Romance.lua: the children left out of romance;
--   - Systems/Romance.lua: the NPC of a line in its context (its name and sex, for {other} and {og:});
--   - the content in play: a reply, a scene and a jealous opening come from base_romance.
local NS = ...
local Engine, R, Ro = NS.Engine, NS.Relationships, NS.Romance

local PACK = "base_romance"
local LANGS = { "it", "en" }

-- the rules of the pack, as views
local RULES = {}
for _, id in ipairs(Engine:PackIds(PACK) or {}) do RULES[id] = Engine.byId[id] end

-- the event of a rule view (a view lists its events)
local function Event(p) return p.event or (p.events and p.events[1]) end

local function Count(t) local n = 0; for _ in pairs(t) do n = n + 1 end; return n end

local function Variants(p, lang)
	local n = 0
	for _, v in ipairs(p.text[lang] or {}) do if Engine.VariantOk(v) then n = n + 1 end end
	return n
end

-- the rules of an event whose conditions are exactly `want` (and the tier): the pools a line always finds
local function Pool(event, want)
	local out = {}
	for id, p in pairs(RULES) do
		if Event(p) == event then
			local w, same = p.when or {}, true
			for k, v in pairs(want) do if w[k] ~= v then same = false end end
			for k in pairs(w) do if want[k] == nil then same = false end end
			if same then table.insert(out, id) end
		end
	end
	return out
end

T.run("romance R3: 133 rules in base_romance, by event", function()
	T.eq(Count(RULES), 133, "133 intentions")
	local by = {}
	for _, p in pairs(RULES) do by[Event(p)] = (by[Event(p)] or 0) + 1 end
	T.eq(by.npcd_romance_welcome, 32, "32 welcomes")
	T.eq(by.npcd_romance_cold, 20, "20 cold answers")
	T.eq(by.npcd_romance_refuse, 18, "18 refusals")
	T.eq(by.npcd_romance_jealous_open, 11, "11 jealous openings")
	T.eq(by.romance_scene, 32, "32 scenes")
	T.eq(by.romance_inner, 20, "20 thoughts")
end)

T.run("romance R3: every rule a romance event, at a tier, never in the character's voice", function()
	for id, p in pairs(RULES) do
		T.ok(Ro.EVENTS[Event(p)] == true, id .. ": a romance event")
		local tier = p.when and p.when.romanceTier
		T.ok(tier == 1 or tier == 2, id .. ": tier 1 or 2 (never 3 outside the 18+ pack)")
		T.ok(p.speaker ~= "character", id .. ": not the character's voice (never public)")
		if Event(p) == "romance_scene" then
			T.eq(p.speaker, "narrator", id .. ": the narrator tells the scene")
			T.eq(p.form, "say", id .. ": as prose")
		elseif Event(p) == "romance_inner" then
			T.eq(p.speaker, "inner", id .. ": the inner voice")
		else
			T.eq(p.speaker, "npc", id .. ": the NPC speaks in the dialogue")
		end
		for _, lang in ipairs(LANGS) do
			T.ok(Variants(p, lang) >= 2, id .. ": at least two variants in " .. lang)
			for _, v in ipairs(p.text[lang] or {}) do
				local text = Engine.VariantView(v).text or ""
				T.ok(not text:find("http", 1, true), id .. ": no link")
				for tag in text:gmatch("{([^{}]+)}") do
					T.ok(tag == "other" or tag:match("^o?g:[^|]*|") ~= nil, id .. ": only {other}, {g:} and {og:} (" .. tag .. ")")
				end
			end
		end
	end
end)

T.run("romance R3: a scene is read in the popup, so it may be longer than a chat line", function()
	T.ok(NS.Validator.READ_ONLY_EVENTS.romance_scene == true, "romance_scene is read only")
	local longest = 0
	for _, p in pairs(RULES) do
		if Event(p) == "romance_scene" then
			for _, lang in ipairs(LANGS) do
				for _, v in ipairs(p.text[lang] or {}) do
					local n = #(Engine.VariantView(v).text or "")
					if n > longest then longest = n end
				end
			end
		end
	end
	T.ok(longest <= NS.Validator.LIMITS.READING, ("the longest scene within READING (%d bytes)"):format(longest))
end)

T.run("romance R3: every outcome at both tiers, the jealousy, every thought", function()
	for _, o in ipairs({ "welcome", "cold", "refuse" }) do
		for tier = 1, 2 do
			T.ok(#Pool("npcd_romance_" .. o, { romanceTier = tier }) >= 2,
				("%s: lines for any NPC at tier %d"):format(o, tier))
		end
		T.ok(#Pool("romance_inner", { romanceTier = 1, romanceOutcome = o }) >= 2, o .. ": a thought after it")
	end
	T.ok(#Pool("npcd_romance_jealous_open", { romanceTier = 1 }) >= 2, "a jealous opening for any beloved")
end)

T.run("romance R3: a scene for every moment, phase and date option", function()
	local function Has(moment, phase, tier, date)
		local want = { romanceTier = tier, romanceMoment = moment, romancePhase = phase, romanceDate = date }
		T.ok(#Pool("romance_scene", want) >= 1,
			("scene %s %s, tier %d%s"):format(moment, phase, tier, date and (", " .. date) or ""))
	end
	for _, phase in ipairs({ "open", "welcome", "cold", "refuse" }) do Has("declaration", phase, 1) end
	for tier = 1, 2 do Has("vow", "open", tier); Has("vow", "welcome", tier) end
	for tier = 1, 2 do Has("date", "open", tier) end
	for _, phase in ipairs({ "welcome", "cold", "refuse" }) do
		Has("date", phase, 1)
		for _, d in ipairs(Ro.config.dates) do Has("date", phase, d.tier, d.id) end
	end
end)

T.run("romance R3: the flirt answers, every kind and moment, short labels in both languages", function()
	local mine, kinds, moments = {}, {}, {}
	for _, f in ipairs(Ro.flirts) do
		if f.pack == PACK then
			table.insert(mine, f)
			kinds[f.kind] = (kinds[f.kind] or 0) + 1
			if f.moment then moments[f.moment] = true end
		end
	end
	T.ok(#mine >= 40, ("about forty flirts (%d)"):format(#mine))
	for _, k in ipairs({ "glance", "compliment", "gift", "walk", "invite" }) do
		T.ok((kinds[k] or 0) >= 3, k .. ": several flirts")
	end
	for _, m in ipairs({ "declaration", "date", "vow" }) do T.ok(moments[m], m .. ": its moment answer") end
	local tier2 = 0
	for _, f in ipairs(mine) do
		T.ok(f.tier == 1 or f.tier == 2, f.key .. ": tier 1 or 2")
		if f.tier == 2 then
			tier2 = tier2 + 1
			T.ok((Ro.STAGE_INDEX[f.from] or 0) >= Ro.STAGE_INDEX.declared, f.key .. ": tier 2 only from the declaration")
		end
		for _, lang in ipairs(LANGS) do
			local label = f.label[lang]
			T.ok(type(label) == "string" and label ~= "" and #label <= NS.NPCAlive.LABEL_BYTES, f.key .. ": label in " .. lang)
		end
	end
	T.ok(tier2 >= 3, "some intimate flirts")
	-- the date's evening answer comes before the plain one: the first that fits is offered
	local dates = {}
	for _, f in ipairs(mine) do if f.moment == "date" then table.insert(dates, f) end end
	T.ok(#dates >= 2 and dates[1].when and dates[1].when.romanceNight == true, "the date: the evening's answer first")
	-- the validator's flirt checks pass
	local errors = 0
	for _, p in ipairs(Ro:Check({ "it", "en" }, NS.NPCAlive.LABEL_BYTES) or {}) do
		if tostring(p.key):find(PACK, 1, true) then errors = errors + 1 end
	end
	T.eq(errors, 0, "no flirt problem in the validator")
end)

T.run("romance R3: children are never courted", function()
	for _, id in ipairs({ 8666, 14305, 14444 }) do
		T.ok(Ro.config.exclude[id] == true, ("npcID %d excluded"):format(id))
		T.ok(Ro:Excluded(id), ("npcID %d: Excluded"):format(id))
	end
end)

T.run("romance R3: the NPC of a line, its name and sex in the context", function()
	local id = 70101
	R.session.kin = R.session.kin or {}
	R.session.kin[id] = nil
	local rec = { name = "Selwen" }
	local ctx = Ro:Person({ sex = "male" }, id, rec)
	T.eq(ctx.otherName, "Selwen", "the name, for {other}")
	T.eq(ctx.otherSex, "female", "the other sex of the character's, for {og:}")
	ctx = Ro:Person({ sex = "female" }, id, rec)
	T.eq(ctx.otherSex, "male", "and the other way round")
	R.session.kin[id] = { sex = 3, humanoid = true }
	T.eq(Ro:Person({ sex = "female" }, id, rec).otherSex, "female", "the client's reading wins")
	R.session.kin[id] = nil
	T.eq(Ro:Person({ otherName = "Kept", otherSex = "male" }, id, rec).otherName, "Kept", "a name already there stays")
	T.eq(Engine:Render("{og:pronto|pronta}", "it", Ro:Person({ sex = "male" }, id, rec)), "pronta", "{og:} composes")
end)

T.run("romance R3: the content in play: a reply, a jealous opening and a scene from base_romance", function()
	local id = 70102
	R.session.kin = R.session.kin or {}
	R.session.kin[id] = { sex = 3, humanoid = true }
	R:RecordNPC(id, "Ysolde", "test")
	local rec = R:Get("npc", id)
	T.ok(rec ~= nil, "a record for the NPC")
	if not rec then return end
	rec.name = rec.name or "Ysolde"
	local who = { kind = "npc", npcID = id, role = "innkeeper" }
	local saved = Ro.random
	Ro.random = function() return 0 end   -- the first tier of the mix: courteous
	for _, o in ipairs({ "welcome", "cold", "refuse" }) do
		local ctx = NS:BuildContext({ npcDialogue = true })   -- the lines of a dialogue speak only inside one
		local line = Ro:Reply(who, { kind = "glance" }, o, ctx)
		T.ok(line and line.id:find("^rom%.") and line.text ~= "", o .. ": a reply of base_romance")
	end
	for _, m in ipairs({ { "declaration", "open" }, { "declaration", "welcome" }, { "date", "open" }, { "vow", "open" } }) do
		local scene = Ro:Scene(id, m[1], m[2], NS:BuildContext())
		T.ok(scene and scene.id:find("^rom%.scene%.") and scene.text ~= "", m[1] .. " " .. m[2] .. ": a scene")
	end
	local walk
	for _, d in ipairs(Ro.config.dates) do if d.id == "walk" then walk = d end end
	local scene = walk and Ro:Scene(id, "date", "welcome", NS:BuildContext(), walk)
	T.ok(scene and scene.id:find("^rom%.scene%.date%."), "a date's scene for the walk (its own, or any date's)")
	Ro.random = saved
	R.session.kin[id] = nil
end)

T.run("romance R3: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
end)
