-- Tests of the selection quality of R3 (ADR 0028): specificity tiers and the fallback chain (#89), themes, motifs and
-- the thematic memory of the session (#90), per-session category quotas and hunger (#91). Every test that draws
-- random numbers fixes the seed.
local NS = ...
local Engine, Director, ND, Pacing, Validator = NS.Engine, NS.Director, NS.NarrativeDirector, NS.Pacing, NS.Validator

NS.db.locale = "it"

local function Fresh()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Engine:ResetLines()
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

T.run("#89: the most specific tier wins until it is exhausted, generic is the explicit fallback", function()
	P.zone, P.subzone, P.class = "Elwynn Forest", "Goldshire", "WARRIOR"
	local ctx = NS:BuildContext()
	math.randomseed(21)
	local first = 0
	for _ = 1, 60 do
		Fresh()
		local rec = Engine:PickEntry("r3tier", ctx, "say")
		if rec and Engine.Tier(Engine.byId[rec.id]) >= 2 then first = first + 1 end
	end
	T.eq(first, 60, "with nothing used, the place-specific lines (zone and subzone: 4 >= TIER_MIN) always win")
	-- a session: the specific lines are used, then the pool widens to the generic ones
	Fresh()
	local order = {}
	for i = 1, 8 do
		local rec = Engine:PickEntry("r3tier", ctx, "say")
		order[i] = Engine.Tier(Engine.byId[rec.id])
	end
	T.ok(order[1] >= 2 and order[2] >= 2, "the first picks are specific: " .. table.concat(order, ","))
	local generic = 0
	for i = 3, 8 do if order[i] == 0 then generic = generic + 1 end end
	T.ok(generic > 0, "once they are recent, the generic lines speak")
	-- elsewhere only the generic lines and those of the situation
	P.zone, P.subzone, P.class = "Durotar", "", "MAGE"
	ctx = NS:BuildContext()
	local seen = {}
	for _ = 1, 40 do
		Fresh()
		local rec = Engine:PickEntry("r3tier", ctx, "say")
		seen[Engine.Tier(Engine.byId[rec.id])] = (seen[Engine.Tier(Engine.byId[rec.id])] or 0) + 1
	end
	T.ok(not seen[2] and not seen[3], "no place-specific line outside its place")
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
	Fresh()
	local out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 3, "zone and subzone together reach TIER_MIN"); T.eq(tier, 2, "from the zone tier up")
	Engine.Remember("r3tier", "r3.tier.zone1", 10)
	out, tier = Engine.TierPool(items, "r3tier")
	T.eq(#out, 5, "one of them recent: the pool widens to every tier"); T.eq(tier, 0, "down to generic")
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
	for _, p in pairs(Engine.byId) do
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
		for _, p in ipairs(Engine.byEvent[ev]) do if p.theme then themes[p.theme] = true end end
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
	-- the generic frames of the base: "says" and "murmurs" are rare in a session of emotes
	P.zone, P.subzone = "Elwynn Forest", "Goldshire"
	ctx = NS:BuildContext()
	Fresh()
	math.randomseed(62)
	local framed, says = 0, 0
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
	T.ok(framed > 50, "framed interventions: " .. framed)
	T.ok(says / framed < 0.10, ("\"says\" and \"murmurs\" under 10%% of the frames: %d/%d"):format(says, framed))
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
