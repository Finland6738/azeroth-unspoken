-- Azeroth Unspoken: the numbers of active romance (ADR 0061, docs/specs/romance.md, step R1).
-- Every value here is a default a pack can change with NS:RegisterRelationData({ romance = { ... } }): tables are merged
-- key by key, the two lists (stages, dates) are replaced whole. The fixed rule of ADR 0037 (a humanoid of the opposite
-- sex) is not data and cannot be changed here.
-- What each part means:
--   flirt     who may be flirted with (from this disposition band), how many flirt answers a node shows (max; maxEarly
--             before courtship), how many per dialogue, and how many hours the same NPC waits after a flirt
--   stages    the thresholds to reach a stage (attraction, and a disposition band); declared and vowed come only from
--             their moment in the popup
--   affinity  the score of an answer: base + race + class + soul + relation + stage + situation + mood + momentum + random;
--             >= welcome is a welcome, >= cold a cold answer, below a refusal. `mood` is keyed by the dominant emotion of
--             Systems/Emotion.lua (melancholic is the grief that keeps the tone courteous)
--   refuse    the quiet after a refusal (hours), the refusals in a row (streak) that ask for room (restDays)
--   moment    the declaration asked again after a cold answer (coldDays) or a refusal (refuseDays); a date at most once
--             per dateHours with the same NPC
--   jealousy  from which stage of the beloved; the chance when the other NPC lives in another town; how long it lasts
--   breakup   attraction brought down to at most `attraction`, `affection` lost, the days before courting again, the
--             seconds within which the command must be repeated (R2)
--   tone      the default tier, the weights of the tiers when more than one fits, the night (the world's hour)
--   dates     the date options of the popup: a tier and the conditions of the moment
--   pack18    the optional 18+ pack (R4): its folder and the .toc field that marks it
local ADDON, NS = ...

NS:RegisterRelationData({
	romance = {
		exclude = { npcIDs = {} },   -- R3: the children of the curated register and of the capitals, by npcID
		stages = {
			{ id = "interest", attraction = 5 },
			{ id = "courtship", attraction = 25, band = "friend" },
			{ id = "declared", moment = "declaration", attraction = 50, band = "friend" },
			{ id = "vowed", moment = "vow" },
		},
		flirt = { minLevel = "acquaintance", max = 2, maxEarly = 1, perTalk = 1, hours = 6 },
		affinity = {
			base = 50, random = 12, welcome = 60, cold = 40,
			race = { same = 6, pairs = { Human = { Dwarf = 2, NightElf = 2 }, Orc = { Troll = 3, Tauren = 2 } } },
			class = { guard = { WARRIOR = 4, PALADIN = 4 }, innkeeper = { ROGUE = 2, HUNTER = 2 }, trainer = { same = 6 } },
			soul = {
				cheerful = { optimism = { high = 6, low = -4 }, irony = { high = 2 } },
				gruff = { irony = { high = 4 }, stoicism = { high = 3 }, altruism = { high = -2 } },
				stoic = { stoicism = { high = 5 }, irony = { high = -3 } },
				melancholic = { spirituality = { high = 3 }, optimism = { low = 4, high = -2 } },
				merciful = { altruism = { high = 6 }, vengefulness = { high = -5 } },
				fierce = { vengefulness = { high = 4 }, ambition = { high = 3 }, altruism = { high = -2 } },
				resolute = { ambition = { high = 4 }, patriotism = { high = 3 } },
			},
			relation = {
				band = { acquaintance = -12, friend = 0, close = 8, bond = 14 },
				axes = { attraction = 0.25, affection = 0.10, trust = 0.08, respect = 0.04, fear = -0.15 },
			},
			stage = { ahead = -15, tierOut = -20 },
			situation = { inn_night = 6, festival = 6, city = 0, wild = -3 },
			mood = { happy = 3, serene = 1, admiring = 2, curious = 1, worried = -4, tense = -3, furious = -5, melancholic = -10 },
			momentum = { step = 2, max = 6 },
		},
		refuse = { hours = 20, streak = 3, restDays = 5 },
		moment = { coldDays = 3, refuseDays = 7, dateHours = 20 },
		jealousy = { from = "vowed", farChance = 0.35, days = 7 },
		breakup = { attraction = 15, affection = 5, restDays = 30, confirmSeconds = 30 },
		tone = { default = 1, mix = { [1] = 0.6, [2] = 0.4, [3] = 0.4 }, night = { from = 21, to = 5 } },
		dates = {
			{ id = "walk", tier = 1 },
			{ id = "supper", tier = 1, when = { resting = true } },
			{ id = "stargaze", tier = 1, when = { romanceNight = true, indoors = false } },
			{ id = "night", tier = 2, when = { romanceNight = true, resting = true } },
		},
		pack18 = { addon = "AzerothUnspoken_Romance18", toc = "X-AzerothUnspoken-Romance" },
	},
	-- the increments of active romance (the temperament scales them like any other row)
	increments = {
		romance_flirt = { gain = { attraction = 2, affection = 0.5 }, decay = 0.7, cap = { attraction = 4, affection = 1 } },
		romance_date = { gain = { attraction = 3, affection = 1, trust = 1 }, decay = 0.5, cap = { attraction = 3, affection = 1, trust = 1 } },
		romance_declared = { gain = { attraction = 4, affection = 3, trust = 2 }, decay = 1 },
		romance_refused = { gain = { attraction = -1 }, decay = 1 },
		romance_jealous = { gain = { attraction = -4, trust = -3 }, decay = 1 },
		romance_breakup = { gain = { affection = -5 }, decay = 1 },
	},
})
