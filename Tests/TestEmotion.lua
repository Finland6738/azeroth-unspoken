-- Tests of R4 (#96, #97, #98, ADR 0030): intensity traits (threshold tags, graded affinity, migration of S5 profiles),
-- the emotional state (appraisal, decay, personality, conditions, factor E, registers, persistence, module off,
-- /au emotion and /au debug), the validator rule on the tone of return lines and the scenario "return after a
-- defeat" (M6 of the analysis A1). Every test that uses chance fixes the seed.
local NS = ...
local Engine, Traits, Personality, Emotion = NS.Engine, NS.Traits, NS.Personality, NS.Emotion
local LM, Director, Validator = NS.LivingMemory, NS.Director, NS.Validator

NS.db.locale = "en"
NS.db.proseDepth = "literary"

local function Near(a, b, eps) return math.abs(a - b) < (eps or 1e-9) end
local function HasV(soul, trait, value) return Traits.Has(Traits.defs[trait], soul, value) end

local function Fresh()
	NS.cdb.memories = nil
	NS.cdb.emotion = nil
	NS.Config.Merge(NS.Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	Emotion:Reset()
	Engine.R1_COMPAT = nil
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.target = "Durotar", "", false, false, 100, 100, nil
	NS.db.enabled, NS.paused, NS.db.chance = true, false, {}
	NS.db.intensity = 0
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	Director.queue, Director.log = {}, {}
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Engine:ResetLines()
	Personality:SetArchetype("neutral")
	NS.Diagnostics.errors = {}
	SENT = {}
end

local function Go(zone, wait)
	if wait and wait >= 600 then ADVANCE(5); LEAP(wait) else ADVANCE(wait or 5) end
	P.zone = zone
	FIRE("ZONE_CHANGED_NEW_AREA")
end

---------------------------------------------------------------------------
-- #96: intensity traits
---------------------------------------------------------------------------
T.run("#96: ten axes from 0 to 100 cover the user's list", function()
	T.eq(#Personality.AXES, 10, "ten axes")
	for _, id in ipairs(Personality.AXES) do
		local d = Traits.defs[id]
		T.ok(d and d.kind == "scale" and d.min == 0 and d.max == 100, id .. ": a 0-100 scale")
	end
	-- altruistic, cynical, pragmatic, dreamer, idealist, pessimist, stoic, ambitious, spiritual, patriotic, curious, vengeful
	local soul = { altruism = 90, idealism = 10, concreteness = 90, optimism = 10, stoicism = 90, ambition = 90,
		spirituality = 90, patriotism = 90, curiosity = 90, vengefulness = 90 }
	T.ok(HasV(soul, "temperament", "merciful") and HasV(soul, "morality", "disillusioned")
		and HasV(soul, "morality", "pragmatic") and HasV(soul, "temperament", "melancholic")
		and HasV(soul, "temperament", "stoic") and HasV(soul, "motivation", "glory") and HasV(soul, "faith", "devout")
		and HasV(soul, "motivation", "duty") and HasV(soul, "motivation", "knowledge")
		and HasV(soul, "motivation", "vengeance"), "the intensities coexist: stoic and vengeful at once")
	local dreamer = { concreteness = 10, idealism = 90 }
	T.ok(HasV(dreamer, "motivation", "freedom") == false and HasV(dreamer, "morality", "righteous"), "dreamer and idealist")
end)

T.run("#96: threshold tags", function()
	local t = Traits.ParseTag("req:stoicism>=60")
	T.ok(t and t.mode == "req" and t.name == "stoicism" and t.op == ">=" and t.n == 60, "req with a threshold")
	t = Traits.ParseTag("optimism<=30")
	T.ok(t and t.mode == "affinity" and t.op == "<=" and t.n == 30, "soft threshold, no colon")
	T.eq(Traits.CheckTag("req:stoicism>=60"), nil, "valid")
	T.eq(Traits.CheckTag("not:optimism<=30"), nil, "valid exclusion")
	T.ok(Traits.CheckTag("stoicism>=160"), "out of range")
	T.ok(Traits.CheckTag("temperament>=10"), "only on a scale")
	T.ok(Traits.CheckTag("bogus>=10"), "unknown axis")
	T.eq(Traits.CheckTag("emo:worried"), nil, "emo: tag of a known emotion")
	T.ok(Traits.CheckTag("emo:bored"), "emo: tag of an unknown emotion")
	local tags = { ["req:stoicism>=60"] = true }
	T.eq((Traits.Evaluate(tags, { stoicism = 60 })), 1, "req met at the threshold")
	T.eq((Traits.Evaluate(tags, { stoicism = 59 })), 0, "not met under it")
	T.eq((Traits.Evaluate(tags, {})), 0, "not met by a neutral profile")
	T.eq((Traits.Evaluate({ ["not:optimism<=30"] = true }, { optimism = 20 })), 0, "exclusion")
	T.eq((Traits.Evaluate({ ["not:optimism<=30"] = true }, {})), 1, "a neutral profile is not excluded")
end)

T.run("#96: the soft affinity is graded by intensity", function()
	local tags = { ["stoicism:high"] = true }
	T.eq((Traits.Evaluate(tags, {})), 1, "unset: neutral")
	T.ok(Near((Traits.Evaluate(tags, { stoicism = 90 })), Traits.MATCH), "inside the band: MATCH")
	T.ok(Near((Traits.Evaluate(tags, { stoicism = 20 })), Traits.MISMATCH), "far from it: MISMATCH")
	local edge = Traits.Evaluate(tags, { stoicism = 57 })
	T.ok(edge > Traits.MISMATCH and edge < Traits.MATCH, "near the edge: in between (" .. edge .. ")")
	T.ok(Traits.Evaluate(tags, { stoicism = 62 }) > edge, "closer: higher")
	-- the old tags read the axes: temperament:stoic is stoicism >= 67
	local old = { ["temperament:stoic"] = true }
	T.ok(Near((Traits.Evaluate(old, { stoicism = 80 })), Traits.MATCH), "old tag, strong axis")
	T.ok(Near((Traits.Evaluate(old, { stoicism = 10 })), Traits.MISMATCH), "old tag, weak axis")
	T.eq((Traits.Evaluate(old, { optimism = 90 })), 1, "old tag, other axes only: neutral (traits coexist)")
	-- an interlocutor (S6c) still chooses a value: nothing changes for it
	T.ok(Near((Traits.Evaluate({ ["other.temperament:gruff"] = true }, { temperament = "gruff" }, "other")), Traits.MATCH),
		"a chosen value still matches")
	T.ok(Near((Traits.Evaluate({ ["temperament:gruff"] = true }, { temperament = "stoic" })), Traits.MISMATCH),
		"and still mismatches")
end)

T.run("#96: v1 profiles migrate and the old tags still apply", function()
	-- the archetypes of S5, as they were saved
	local V1 = {
		veteran = { temperament = "stoic", morality = "disillusioned", faith = "doubting", motivation = "duty", irony = 60, curiosity = 30 },
		traveler = { temperament = "cheerful", morality = "hopeful", faith = "spiritual", motivation = "freedom", irony = 40, curiosity = 90 },
		guardian = { temperament = "merciful", morality = "righteous", faith = "devout", motivation = "protection", irony = 15, curiosity = 40 },
		rogue = { temperament = "gruff", morality = "pragmatic", faith = "skeptic", motivation = "freedom", irony = 90, curiosity = 60 },
		scholar = { temperament = "stoic", morality = "conflicted", faith = "skeptic", motivation = "knowledge", irony = 45, curiosity = 95 },
		avenger = { temperament = "fierce", morality = "conflicted", faith = "doubting", motivation = "vengeance", irony = 25, curiosity = 25 },
		penitent = { temperament = "melancholic", morality = "conflicted", faith = "spiritual", motivation = "redemption", irony = 20, curiosity = 50 },
	}
	for id, old in pairs(V1) do
		for _, mode in ipairs({ id, "custom" }) do
			Fresh()
			NS.cdb.personality = { version = 1, archetype = mode, trp3 = false, traits = Traits.Copy(old) }
			NS.cdb.personality.traits.innerVoice = "quiet"
			NS.cdb.personality.traits.avoid = { death = true }
			Personality:Sanitize()
			local p = NS.cdb.personality
			T.eq(p.version, 2, id .. "/" .. mode .. ": version 2")
			local soul = Personality:Effective()
			for _, trait in ipairs(Personality.LEGACY) do
				T.ok(HasV(soul, trait, old[trait]), ("%s/%s: %s:%s still applies"):format(id, mode, trait, old[trait]))
				T.eq(p.legacy[trait], old[trait], id .. ": the old choice is kept as an identifier")
				T.eq(p.traits[trait], nil, id .. ": and not as a trait")
			end
			T.eq(soul.irony, old.irony, id .. ": irony kept")
			T.ok(soul.curiosity ~= nil, id .. ": curiosity kept")
			T.ok(soul.innerVoice == "quiet" and soul.avoid.death, id .. ": inner voice and topics kept")
			T.eq(p.archetype, mode, id .. ": the archetype (or custom) is kept")
		end
	end
	-- every single old choice converts to intensities that satisfy it
	for trait, map in pairs(Personality.MIGRATION) do
		for value in pairs(map) do
			local soul = Personality.FromLegacy({ [trait] = value })
			T.ok(HasV(soul, trait, value), trait .. ":" .. value .. " converts and still applies")
		end
	end
	-- a saved profile is converted once: the second load leaves it as it is
	Fresh()
	NS.cdb.personality = { version = 1, archetype = "custom", trp3 = true, traits = { temperament = "fierce", irony = 70 } }
	Personality:Sanitize()
	local first = Traits.Copy(NS.cdb.personality.traits)
	Personality:Sanitize()
	T.eq(NS.cdb.personality.traits.vengefulness, first.vengefulness, "converted once")
	T.eq(NS.cdb.personality.trp3, true, "consent kept")
	T.eq(#NS.Diagnostics.errors, 0, "no error")
end)

T.run("#96: archetypes are editable presets; a neutral profile changes nothing", function()
	Fresh()
	for _, a in ipairs(Personality.archetypes) do
		T.eq(select(2, Traits.Sanitize(a.traits)), 0, a.id .. ": valid intensities")
		for k, v in pairs(a.traits) do
			if type(v) == "number" then T.ok(Traits.defs[k].kind == "scale", a.id .. ": " .. k .. " is an axis") end
		end
	end
	Personality:SetArchetype("avenger")
	Personality:SetTrait("vengefulness", 40)
	T.eq(NS.cdb.personality.archetype, "custom", "an edit makes it custom")
	T.eq(NS.cdb.personality.base, "avenger", "from the avenger")
	T.eq(Personality:GetArchetype("avenger").traits.vengefulness, 85, "the preset does not change")
	T.ok(Personality:ArchetypeLabel(NS.cdb.personality):find("Avenger", 1, true), "the label says where it started")
	Personality:SetArchetype("neutral")
	T.ok(Personality:IsNeutral(), "neutral: no trait")
	-- neutral: every line of the base without a requirement weighs P = 1 (TestSoul checks the whole database)
	local ctx = NS:BuildContext()
	for _, id in ipairs({ "mem.ret.forest.cheerful", "mem.ret.forest.stoic", "emo.zone.worried" }) do
		T.eq(Personality.Factor(Engine.byId[id], ctx), 1, id .. ": P = 1 with a neutral profile")
	end
	-- a line gated by an intensity is not even a candidate for a neutral profile
	T.ok(not Engine.SafeMatch(Engine.byId["emo.death.stoic"].when, ctx), "traitMin: not eligible")
	Personality:SetTrait("stoicism", 75)
	T.ok(Engine.SafeMatch(Engine.byId["emo.death.stoic"].when, NS:BuildContext()), "eligible for a stoic character")
end)

---------------------------------------------------------------------------
-- #97: the emotional state
---------------------------------------------------------------------------
T.run("#97: data, decay and the personality", function()
	Fresh()
	for _, e in ipairs(Emotion.LIST) do
		T.ok((Emotion.halfLife[e] or 0) > 0, e .. ": half-life")
	end
	T.eq(#Emotion.LIST, 10, "ten emotions")
	T.ok(next(Emotion.appraisals) ~= nil and Emotion.appraisals.death and Emotion.appraisals.rest_enter, "appraisal rules")
	Emotion:Add("worried", 0.8)
	T.ok(Near(Emotion:Value("worried"), 0.8), "set")
	ADVANCE(Emotion.halfLife.worried)
	T.ok(Near(Emotion:Value("worried"), 0.4, 1e-6), "halved after one half-life")
	ADVANCE(Emotion.halfLife.worried * 5)
	T.eq(Emotion:Context().worried, nil, "gone under the floor")
	Emotion:Add("happy", 0.5); Emotion:Add("happy", -0.9)
	T.eq(Emotion:Value("happy"), 0, "an easing never goes below 0")
	Emotion:Add("happy", 5)
	T.ok(Emotion:Value("happy") <= 1, "never above 1")
	-- a stoic character rises more slowly; a vengeful one burns faster
	Fresh()
	local neutral = Emotion:Gain("furious", {})
	T.eq(neutral, 1, "neutral profile: gain 1")
	T.ok(Emotion:Gain("furious", { stoicism = 90 }) < 1, "stoic: slower")
	T.ok(Emotion:Gain("furious", { vengefulness = 90 }) > 1, "vengeful: faster")
	T.ok(Emotion:Gain("worried", { optimism = 90 }) < Emotion:Gain("worried", { optimism = 10 }), "an optimist worries less")
	T.ok(Emotion:Gain("furious", { stoicism = 100, vengefulness = 0 }) >= Emotion.GAIN_MIN, "within the limits")
	Personality:SetArchetype("scholar")   -- stoicism 80
	Emotion:Add("tense", 0.5)
	local stoic = Emotion:Value("tense")
	Fresh()
	Emotion:Add("tense", 0.5)
	T.ok(stoic < Emotion:Value("tense"), ("the same event raises a stoic less (%.2f < %.2f)"):format(stoic, Emotion:Value("tense")))
	T.eq(Emotion:Register({ halfLife = { bored = 5 }, appraisals = { { event = "x", gain = { happy = 3 } } } }), 2,
		"bad data is skipped")
end)

T.run("#97: appraisal through the Director, ctx.emotion and conditions", function()
	Fresh()
	T.eq(next(Emotion:Context()), nil, "calm at the start")
	Director:Offer("death"); ADVANCE(1)
	local ctx = NS:BuildContext()
	T.eq(ctx.emotion.dominant, "worried", "after a death: worried")
	T.ok(ctx.emotion.melancholic > 0 and ctx.emotion.furious > 0, "and more than one emotion")
	T.eq(Emotion.cause.event, "death", "the last cause")
	local M = Engine.SafeMatch
	T.ok(M({ emotion = "worried" }, ctx) and M({ emotion = { "tense", "worried" } }, ctx), "emotion")
	T.ok(not M({ emotion = "happy" }, ctx), "not another one")
	T.ok(M({ emotionMin = { worried = 0.3 } }, ctx) and not M({ emotionMin = { worried = 0.9 } }, ctx), "emotionMin")
	T.ok(M({ emotionMax = { happy = 0.1 } }, ctx) and not M({ emotionMax = { worried = 0.1 } }, ctx), "emotionMax")
	T.ok(not M({ traitMin = { stoicism = 10 } }, ctx), "traitMin: an unset axis is not known")
	ctx.soul = { stoicism = 70 }
	T.ok(M({ traitMin = { stoicism = 70 } }, ctx) and M({ traitMax = { stoicism = 70 } }, ctx), "traitMin and traitMax")
	T.eq(#Engine.CheckConditions({ emotion = "worried", emotionMin = { tense = 0.2 }, traitMax = { optimism = 30 } }), 0,
		"the validator knows them")
	T.ok(#Engine.CheckConditions({ emotion = "bored" }) > 0, "unknown emotion")
	T.ok(#Engine.CheckConditions({ emotionMin = { worried = 2 } }) > 0, "out of 0..1")
	T.ok(#Engine.CheckConditions({ traitMin = { temperament = 50 } }) > 0, "not an axis")
	T.ok(Engine.TIER_NEUTRAL.emotion and Engine.TIER_NEUTRAL.traitMin, "they do not raise the tier")
	-- rest eases the tension
	Fresh()
	Emotion:Add("tense", 0.6)
	P.resting = true
	Director:Offer("rest_enter"); ADVANCE(1)
	T.ok(Emotion:Value("tense") < 0.3, "an inn eases the tension")
	T.eq(Emotion:Context().dominant, "serene", "and calms")
	P.resting = false
end)

T.run("#97: factor E and the registers", function()
	Fresh()
	local cheerful = Engine.byId["mem.ret.forest.cheerful"]   -- temperament:cheerful: carries happy
	local worriedLine = Engine.byId["emo.zone.worried"]
	local ctx = NS:BuildContext()
	T.eq(Emotion.Factor(cheerful, ctx), 1, "calm: neutral")
	Emotion:Add("worried", 0.7)
	ctx = NS:BuildContext()
	T.ok(Near(Emotion.Factor(cheerful, ctx), Emotion.CLASH_MIN), "a cheerful line while worried: much lower")
	T.ok(Near(Emotion.Factor(worriedLine, ctx), Emotion.MATCH), "a worried line: higher")
	T.eq(Emotion.Factor(Engine.byId["mem.ret.forest.01"], ctx), 1, "a line with no emotion: neutral")
	local w = Engine:Weight(worriedLine, "zone", ctx)
	T.ok(Near(w.E, Emotion.MATCH) and Near(w.W, w.B * w.C * w.P * w.N * w.S * w.R * w.E), "E is in the product W")
	local pref = NS.StyleResolver:Resolve("zone", ctx).preferred
	Emotion:Reset()
	local calm = NS.StyleResolver:Resolve("zone", NS:BuildContext()).preferred
	T.eq(pref.intimate, (calm.intimate or 0) + 1, "the dominant emotion moves the registers")
end)

T.run("#97: module off, R1_COMPAT: behaviour as before", function()
	Fresh()
	NS.db.modules.emotion = false
	Director:Offer("death"); ADVANCE(1)
	local ctx = NS:BuildContext()
	T.eq(ctx.emotion, nil, "no ctx.emotion")
	T.eq(next(Emotion.v), nil, "no state")
	T.eq(Engine:Weight(Engine.byId["mem.ret.forest.cheerful"], "memory_return", ctx).E, 1, "E = 1")
	T.ok(not Engine.SafeMatch({ emotion = "worried" }, ctx) and not Engine.SafeMatch({ emotionMax = { happy = 1 } }, ctx),
		"no emotion condition holds")
	T.eq(Emotion:Status(), "off", "debug says off")
	-- every line conditioned on an emotion is out
	for id, p in pairs(Engine.byId) do
		if p.when and (p.when.emotion or p.when.emotionMin or p.when.emotionMax) then
			T.ok(not Engine.SafeMatch(p.when, ctx), id .. ": never eligible with the module off")
		end
	end
	NS.db.modules.emotion = true
	Engine.R1_COMPAT = true
	Director:Offer("death"); ADVANCE(1)
	T.eq(NS:BuildContext().emotion, nil, "R1_COMPAT switches it off too")
	Engine.R1_COMPAT = nil
end)

T.run("#97: only slow, strong emotions are saved, as numbers and time()", function()
	Fresh()
	Director:Offer("death"); ADVANCE(1)   -- worried, melancholic, furious
	local saved = NS.cdb.emotion.values
	T.ok(saved.melancholic ~= nil, "melancholic (slow, strong) is saved")
	T.eq(saved.worried, nil, "worried is fast: not saved")
	T.eq(saved.furious, nil, "furious is fast: not saved")
	for e, rec in pairs(saved) do
		T.ok((Emotion.halfLife[e] or 0) >= Emotion.SLOW and rec.v >= Emotion.SAVE_MIN, e .. ": slow and strong")
		local keys = 0
		for k, v in pairs(rec) do
			keys = keys + 1
			T.ok((k == "v" or k == "at") and type(v) == "number", e .. ": only a value and a time")
		end
		T.eq(keys, 2, e .. ": two fields")
	end
	T.eq(NS.cdb.emotion.cause, nil, "the cause is never saved")
	-- a new session: the saved emotion comes back, decayed by the time away
	local before = saved.melancholic.v
	LEAP(Emotion.halfLife.melancholic)
	Emotion:Load()
	T.ok(Near(Emotion:Value("melancholic"), before / 2, 0.01), "decayed by the time away")
	T.eq(Emotion:Value("worried"), 0, "the fast ones are gone")
	-- malformed data is dropped, never an error
	NS.cdb.emotion.values = { melancholic = { v = "x", at = 1 }, bored = { v = 0.5, at = time() }, worried = { v = 0.9, at = time() },
		nostalgic = { v = 0.8, at = time() } }
	T.eq(Emotion:Load(), 3, "three bad entries dropped")
	T.ok(Emotion:Value("nostalgic") > 0.7 and NS.cdb.emotion.values.nostalgic, "the good one stays")
	-- switched off: nothing is kept
	NS.db.modules.emotion = false
	Emotion:Load()
	T.eq(next(NS.cdb.emotion.values), nil, "module off: the saved state is cleared at the next start")
	NS.db.modules.emotion = true
	T.eq(#NS.Diagnostics.errors, 0, "no error")
end)

T.run("#97: /au emotion and /au debug", function()
	Fresh()
	Director:Offer("death"); ADVANCE(1)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("emotion")
	T.ok(T.sentContains("worried") and T.sentContains("last cause death"), "the state and the cause")
	SlashCmdList.AZEROTHUNSPOKEN("debug")
	T.ok(T.sentContains("Emotion: on;"), "/au debug shows it")
	SlashCmdList.AZEROTHUNSPOKEN("emotion off")
	T.eq(NS.db.modules.emotion, false, "off")
	T.eq(next(Emotion.v), nil, "and cleared")
	SlashCmdList.AZEROTHUNSPOKEN("emotion on")
	T.eq(NS.db.modules.emotion, true, "on again")
	Director:Offer("levelup"); ADVANCE(1)
	SlashCmdList.AZEROTHUNSPOKEN("emotion reset")
	T.eq(next(Emotion.v), nil, "reset")
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "nothing goes to the chat") end
end)

---------------------------------------------------------------------------
-- #98: the tone of a return follows the last visit
---------------------------------------------------------------------------
local function LightLine(p)
	return Validator.IsLightLine(p)
end

T.run("#98: the validator rule and the shipped data", function()
	Fresh()
	local r = Validator:Run({ packs = { "base_memory", "base_emotions" } })
	for _, e in ipairs(r.errors) do T.ok(e.code ~= "lightReturnAfterBadVisit", "shipped data: " .. tostring(e.id)) end
	NS:RegisterPack({ id = "r4bad", languages = { "enUS" }, registry = {
		["r4.ret.cheer"] = { event = "memory_return", speaker = "character", styles = { "everyday" },
			tags = { "temperament:cheerful" }, conditions = { repeatVisit = true } },
		["r4.ret.wry"] = { event = "memory_return", speaker = "character", styles = { "ironic" },
			conditions = { repeatVisit = true } },
		["r4.ret.badwry"] = { event = "memory_return", speaker = "character", styles = { "ironic" },
			conditions = { lastVisitBad = "death" } },
		["r4.ret.ok"] = { event = "memory_return", speaker = "character", styles = { "ironic" },
			conditions = { repeatVisit = true, lastVisitBad = false } },
		["r4.ret.gallows"] = { event = "memory_return", speaker = "character", styles = { "ironic" },
			tags = { "req:irony:high" }, conditions = { lastVisitBad = "death" } },
		["r4.zone.again"] = { event = "zone", speaker = "character", styles = { "ironic" },
			conditions = { visitsMin = 3 } },
	}, texts = { enUS = { ["r4.ret.cheer"] = "a", ["r4.ret.wry"] = "b", ["r4.ret.badwry"] = "c", ["r4.ret.ok"] = "d",
		["r4.ret.gallows"] = "e", ["r4.zone.again"] = "f" } } })
	r = Validator:Run({ packs = { "r4bad" } })
	local flagged = {}
	for _, e in ipairs(r.errors) do if e.code == "lightReturnAfterBadVisit" then flagged[e.id] = true end end
	T.ok(flagged["r4.ret.cheer"] and flagged["r4.ret.wry"] and flagged["r4.ret.badwry"] and flagged["r4.zone.again"],
		"cheerful or ironic returns without the guard are flagged")
	T.ok(not flagged["r4.ret.ok"] and not flagged["r4.ret.gallows"], "lastVisitBad = false, or gallows humour for the ironic")
	NS.db.disabledPacks.r4bad = true   -- the bad examples never reach the selection of the next tests
	-- the guard does not make a line heavier (#98: specificity unchanged)
	T.eq(Engine.byId["mem.ret.forest.cheerful"].spec, 2, "mem.ret.forest.cheerful: still two conditions for the weight")
end)

T.run("#98: after a simulated death no cheerful return is eligible", function()
	for _, arche in ipairs({ "neutral", "traveler", "rogue" }) do
		Fresh()
		Personality:SetArchetype(arche)
		Go("Durotar", 30); Go("Elwynn Forest", 30)
		ADVANCE(30); FIRE("PLAYER_DEAD")
		Go("Westfall", 100)
		Go("Elwynn Forest", 3600)
		local ctx = NS:BuildContext()
		T.eq(ctx.memory.lastVisitBad, true, arche .. ": the last visit ended badly")
		local light = {}
		for _, p in ipairs(Engine:Eligible(Engine.byEvent.memory_return, "en", ctx, nil, time())) do
			if LightLine(p) and Personality.Factor(p, ctx) > 0 then table.insert(light, p.id) end
		end
		if arche == "rogue" then
			-- irony 90: gallows humour about the death is allowed, and only that
			for _, id in ipairs(light) do T.ok(Engine.byId[id].tags["req:irony:high"], arche .. ": only gallows humour " .. id) end
		else
			T.eq(#light, 0, arche .. ": no cheerful or ironic return line: " .. table.concat(light, ", "))
		end
		T.ok(not Engine.SafeMatch(Engine.byId["mem.ret.forest.cheerful"].when, ctx), arche .. ": the cheerful forest return is out")
	end
end)

T.run("M6: return after a defeat (enter, die, come back) has a coherent tone", function()
	local spoken, light, said = {}, {}, {}
	local propose = NS.Gateway.Propose
	NS.Gateway.Propose = function(self, rec, ctx, opts)
		local shown = propose(self, rec, ctx, opts)
		if shown and rec then table.insert(said, rec.id) end
		return shown
	end
	for seed = 1, 12 do
		Fresh()
		math.randomseed(seed)
		NS.db.intensity, NS.db.chance = 100, { memory_return = 100 }
		Go("Durotar", 30); Go("Elwynn Forest", 30)
		ADVANCE(60); FIRE("PLAYER_DEAD"); ADVANCE(30)
		Go("Westfall", 120)
		said = {}
		Go("Elwynn Forest", 1800)
		ADVANCE(10)
		for _, id in ipairs(said) do
			spoken[id] = (spoken[id] or 0) + 1
			local p = Engine.byId[id]
			if p and p.events[1] == "memory_return" and LightLine(p) then table.insert(light, id) end
		end
		local emo = NS:BuildContext().emotion
		T.ok(emo.dominant == "worried" or emo.dominant == "melancholic" or emo.dominant == "tense",
			seed .. ": the mood after the return is " .. tostring(emo.dominant))
	end
	NS.Gateway.Propose = propose
	local n, returns = 0, 0
	for id in pairs(spoken) do
		n = n + 1
		if Engine.byId[id].events[1] == "memory_return" then returns = returns + 1 end
	end
	T.ok(returns > 0, ("the return spoke (%d different lines, %d of return)"):format(n, returns))
	T.eq(#light, 0, "no cheerful or ironic return line: " .. table.concat(light, ", "))
end)

---------------------------------------------------------------------------
-- #154, #156: data from a newer version is read, never rewritten; loaded data is cleaned
---------------------------------------------------------------------------
local function Deep(v)
	if type(v) ~= "table" then return v end
	local out = {}
	for k, x in pairs(v) do out[k] = Deep(x) end
	return out
end

local function Same(a, b)
	if type(a) ~= type(b) then return false end
	if type(a) ~= "table" then return a == b end
	for k, v in pairs(a) do if not Same(v, b[k]) then return false end end
	for k in pairs(b) do if a[k] == nil then return false end end
	return true
end

local function ErrorsAbout(text)
	local n = 0
	for _, e in ipairs(NS.Diagnostics.errors) do
		if e.message:find(text, 1, true) then n = n + 1 end
	end
	return n
end

local function BackToNormal()
	NS.cdb.personality, NS.cdb.emotion = nil, nil
	NS.Config.Merge(NS.Config.characterDefaults, NS.cdb)
	Personality:Sanitize()
	Emotion:Load()
end

T.run("#154: a personality from a newer version is read from a copy and never rewritten", function()
	Fresh()
	local saved = { version = 3, archetype = "futurist", base = "futurist",
		traits = { idealism = 70, resolve = 80, avoid = { death = true, spiders = true } } }
	NS.cdb.personality = saved
	local before = Deep(saved)
	NS.Diagnostics.errors = {}
	T.eq(Personality:Sanitize(), 0, "nothing is cleaned")
	T.eq(Personality.readOnly, true, "read-only")
	T.eq(ErrorsAbout("personality.version 3 > 2"), 1, "/au debug says so")
	T.ok(Same(before, NS.cdb.personality), "the saved profile is exactly as it was: no version 2, no custom archetype")
	T.eq(Personality:Profile().traits.resolve, 80, "the copy still holds what this version does not know")
	T.eq(Personality:Effective().idealism, 70, "and the known traits count")
	-- every way to write refuses
	T.eq(Personality:SetTrait("irony", 50), false, "SetTrait refuses")
	T.eq(Personality:SetTrait("avoid", nil), false, "clearing refuses")
	T.eq(Personality:SetArchetype("neutral"), false, "SetArchetype refuses")
	T.eq(Personality:ToggleTopic("death"), nil, "ToggleTopic refuses")
	T.eq(Personality:SetLegacy("temperament", "stoic"), false, "SetLegacy refuses")
	Personality:SetTRP3Consent(true)
	T.eq(Personality:Reset(), false, "Reset refuses")
	T.ok(Same(before, NS.cdb.personality), "still exactly as it was")
	T.eq(Personality:Profile().trp3, false, "the consent did not change either")
	SENT = {}
	Personality:Command("irony 50")
	T.ok(T.sentContains(NS:L("soul_readonly")), "the command says why")
	Personality:Command("neutral")
	T.ok(Same(before, NS.cdb.personality), "the commands changed nothing")
	-- a second start: same result
	Personality.readOnly = false
	Personality:Sanitize()
	T.ok(Same(before, NS.cdb.personality), "and a second load")
	BackToNormal()
	T.eq(Personality.readOnly, false, "back to normal data: writable again")
	T.eq(Personality:SetTrait("irony", 50), true, "and it writes")
end)

T.run("#154: a profile whose version is lost or damaged is not converted again", function()
	Fresh()
	local function Profile(version)
		return { version = version, archetype = "custom", legacy = { temperament = "stoic" },
			traits = { stoicism = 95, irony = 40, avoid = { death = true } }, trp3 = false }
	end
	for _, v in ipairs({ -1, 0, 0.5, "x" }) do
		NS.cdb.personality = Profile(v)
		NS.Diagnostics.errors = {}
		Personality:Sanitize()
		local p = NS.cdb.personality
		T.eq(p.traits.stoicism, 95, tostring(v) .. ": the edited intensity stays")
		T.eq(p.legacy and p.legacy.temperament, "stoic", tostring(v) .. ": the old choice stays in legacy")
		T.eq(p.version, 2, tostring(v) .. ": the version is repaired")
	end
	-- a version 1 profile still converts, also when its version is lost
	for _, v in ipairs({ 1, -1 }) do
		NS.cdb.personality = { version = v, archetype = "custom", traits = { temperament = "gruff" }, trp3 = false }
		Personality:Sanitize()
		T.eq(NS.cdb.personality.traits.altruism, 25, tostring(v) .. ": a version 1 profile is converted")
		T.eq(NS.cdb.personality.version, 2, tostring(v) .. ": to version 2")
	end
	BackToNormal()
end)

T.run("#156: an archetype that is not a string gives the same result as an unknown one", function()
	Fresh()
	NS.cdb.personality = { version = 2, archetype = 5, traits = { irony = 100, optimism = 0 }, trp3 = false }
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "custom", "traits without a valid archetype: custom")
	NS.cdb.personality = { version = 2, archetype = {}, traits = {}, trp3 = false }
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "neutral", "no traits: neutral")
	NS.cdb.personality = { version = 2, archetype = "neutral", traits = { irony = 80 }, trp3 = false }
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "custom", "'neutral' with traits is a custom profile")
	BackToNormal()
end)

T.run("#154: an emotional state from a newer version is read and never rewritten", function()
	Fresh()
	local wall = time()
	local saved = { version = 2, values = { nostalgic = { v = 0.9, at = wall, extra = "x" } }, newField = true }
	NS.cdb.emotion = saved
	local before = Deep(saved)
	NS.Diagnostics.errors = {}
	Emotion:Load()
	T.eq(Emotion.readOnly, true, "read-only")
	T.eq(ErrorsAbout("emotion.version 2 > 1"), 1, "/au debug says so")
	T.ok(Same(before, NS.cdb.emotion), "the saved record is exactly as it was: version 2, the extra fields")
	T.ok(Near(Emotion:Value("nostalgic"), 0.9, 0.01), "the emotion is read from the copy")
	Emotion:Add("happy", 0.8)
	Emotion:Add("nostalgic", 0.05)
	Emotion:Persist()
	T.ok(Same(before, NS.cdb.emotion), "Persist does nothing")
	Emotion:Reset()
	T.ok(Same(before, NS.cdb.emotion), "Reset does nothing")
	T.ok(Emotion:Value("nostalgic") > 0.8, "and it did not clear the state")
	SENT = {}
	Emotion:Command("reset")
	T.ok(T.sentContains(NS:L("emotion_readonly")), "the command says why")
	T.ok(Same(before, NS.cdb.emotion), "the command changed nothing")
	Emotion:Load()
	T.ok(Same(before, NS.cdb.emotion), "and a second load")
	BackToNormal()
	T.eq(Emotion.readOnly, false, "back to normal data: writable again")
	Emotion:Add("melancholic", 0.8)
	Emotion:Persist()
	T.ok(NS.cdb.emotion.values.melancholic ~= nil, "and it saves")
end)

T.run("#156: loaded emotions are rebuilt: a value within 0-1, no time in the future, no other field", function()
	Fresh()
	local wall = time()
	NS.cdb.emotion = { version = 1, values = {
		nostalgic = { v = 0.9, at = wall + 365 * 86400, junk = string.rep("x", 200000) },   -- a clock one year ahead
		melancholic = { v = 7, at = wall - 60, extra = { 1, 2, 3 } },
		serene = { v = -3, at = wall },
	} }
	NS.Diagnostics.errors = {}
	Emotion:OnInit()
	local values = NS.cdb.emotion.values
	T.eq(values.nostalgic.at, wall, "the future time is now")
	T.eq(values.nostalgic.junk, nil, "the extra field is gone")
	T.eq(values.melancholic.v, 1, "the value is clamped")
	T.eq(values.melancholic.extra, nil, "no extra field")
	T.eq(values.serene, nil, "a value of zero is not an emotion")
	for e, rec in pairs(values) do
		local keys = 0
		for _ in pairs(rec) do keys = keys + 1 end
		T.eq(keys, 2, e .. ": only a value and a time")
	end
	T.ok(Near(Emotion:Value("nostalgic"), 0.9, 0.01), "no decay was lost: it starts from now")
	T.ok(ErrorsAbout("brought back inside their limits") == 1, "/au debug reports it")
	-- it ages normally from now on
	LEAP(Emotion.halfLife.nostalgic)
	Emotion:Load()
	T.ok(Near(Emotion:Value("nostalgic"), 0.45, 0.02), "and the next login decays it: " .. tostring(Emotion:Value("nostalgic")))
	-- a second load of clean data changes nothing and reports nothing
	local before = Deep(NS.cdb.emotion)
	NS.Diagnostics.errors = {}
	Emotion:OnInit()
	T.ok(Same(before, NS.cdb.emotion), "a second load changes nothing")
	T.eq(#NS.Diagnostics.errors, 0, "and reports nothing")
end)

T.run("#156: the anti-repetition memory loses future times and huge counters", function()
	Fresh()
	local good = next(Engine.byId)
	local now = time()
	NS.cdb.memory = { uses = { [good] = 7.5e299, other = 3 }, last = { [good] = now + 365 * 86400, far = 1e15, past = now - 10 },
		recent = {}, lastTone = {}, variant = {} }
	NS.Diagnostics.errors = {}
	local dropped, clamped = Engine:SanitizeMemory()
	T.eq(dropped, 0, "nothing malformed")
	T.eq(clamped, 3, "three values brought back")
	T.eq(NS.cdb.memory.uses[good], Engine.COUNT_MAX, "a huge counter is capped")
	T.eq(NS.cdb.memory.uses.other, 3, "a normal one stays")
	T.eq(NS.cdb.memory.last[good], now, "a future last use is now")
	T.eq(NS.cdb.memory.last.far, now, "and so is a ruined one")
	T.eq(NS.cdb.memory.last.past, now - 10, "a past one stays")
	-- through the start-up decay: the cooldown ends instead of lasting for ever
	NS.cdb.memory.last = { [good] = now + 365 * 86400, far = 1e15 }
	Engine:DecayMemory()
	T.eq(ErrorsAbout("future times or oversized counters"), 1, "/au debug reports it")
	T.ok(NS.cdb.memory.last[good] == nil or NS.cdb.memory.last[good] <= now, "a known phrase is blocked at most for its cooldown")
	T.ok(NS.cdb.memory.last.far == nil or NS.cdb.memory.last.far <= now, "an unknown id too")
	LEAP(31 * 86400)
	Engine:DecayMemory()
	T.eq(NS.cdb.memory.last.far, nil, "and an unknown id goes after the dormant period")
end)
