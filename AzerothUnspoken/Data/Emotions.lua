-- Azeroth Unspoken: emotion data (R4, #97, ADR 0030). Read by Systems/Emotion.lua.
-- Half-lives, appraisal rules (event -> change of each emotion, with optional conditions on the context, as for a
-- line), how the personality changes a rise, which emotions clash, which old tags carry an emotion, and the
-- registers each emotion prefers. The numbers are a first proposal of the analysis A1 (§5.3), to be tuned in game.
local ADDON, NS = ...

NS.Emotion:Register({
	-- seconds for an emotion to halve. From 1800 s on an emotion is slow and, if strong, is saved (D8)
	halfLife = {
		tense = 180, furious = 300, admiring = 300, curious = 600, happy = 900, worried = 1200,
		determined = 1800, serene = 1800, nostalgic = 3600, melancholic = 7200,
	},

	-- a rise is multiplied by 1 + sum(coefficient x (axis - 50) / 50), between 0.25 and 2. A stoic character rises
	-- more slowly in the strong emotions; an optimist worries less; a vengeful one burns faster.
	modulation = {
		furious = { vengefulness = 0.8, stoicism = -0.6 },
		tense = { stoicism = -0.6 },
		worried = { optimism = -0.5, stoicism = -0.4 },
		melancholic = { optimism = -0.6, stoicism = -0.3 },
		happy = { optimism = 0.5, stoicism = -0.3 },
		curious = { curiosity = 0.8 },
		determined = { ambition = 0.5, stoicism = 0.3, patriotism = 0.2 },
		serene = { spirituality = 0.5, stoicism = 0.4 },
		nostalgic = { concreteness = -0.4, patriotism = 0.3 },
		admiring = { altruism = 0.4, idealism = 0.5 },
	},

	-- a line of the first emotion weighs less while one of these is strong (factor E)
	clash = {
		happy = { "worried", "melancholic", "furious", "tense" },
		serene = { "furious", "tense", "worried" },
		curious = { "worried", "furious" },
		admiring = { "furious" },
		worried = { "happy", "serene" },
		melancholic = { "happy" },
		furious = { "serene" },
		tense = { "serene" },
	},

	-- tags written before R4 that carry an emotion: a cheerful line is a happy line
	implied = {
		["temperament:cheerful"] = "happy",
		["temperament:melancholic"] = "melancholic",
		["temperament:fierce"] = "furious",
		["temperament:stoic"] = "serene",
	},

	-- registers the narrator prefers while an emotion dominates
	styles = {
		serene = { "ancient" }, happy = { "everyday" }, determined = { "epic" }, curious = { "everyday" },
		worried = { "intimate" }, tense = { "everyday" }, furious = { "epic" }, melancholic = { "tragic", "intimate" },
		nostalgic = { "intimate", "ancient" }, admiring = { "ceremonial" },
	},

	-- appraisal rules: every rule of the event whose conditions hold applies (negative = the emotion eases)
	appraisals = {
		-- defeat and its aftermath
		{ event = "death", gain = { worried = 0.4, melancholic = 0.3, furious = 0.2, happy = -0.6, serene = -0.4 } },
		{ event = "rez", gain = { determined = 0.35, worried = 0.1, tense = -0.3 } },
		{ event = "lowhp", gain = { tense = 0.45, worried = 0.2, serene = -0.2 } },
		-- fights
		{ event = "battle", gain = { tense = 0.25, serene = -0.1 } },
		{ event = "victory", gain = { determined = 0.1, happy = 0.1, tense = -0.3 } },
		{ event = "victory", when = { any = { { elite = true }, { boss = true }, { targetStronger = true } } },
			gain = { happy = 0.15, determined = 0.2 } },
		{ event = "encounter_end", gain = { determined = 0.3, tense = -0.4 } },
		{ event = "levelup", gain = { happy = 0.4, determined = 0.3, worried = -0.2 } },
		{ event = "quest_complete", gain = { happy = 0.25, determined = 0.15 } },
		-- places
		{ event = "zone", when = { firstVisit = true }, gain = { curious = 0.45 } },
		{ event = "zone", when = { lastVisitBad = true }, gain = { worried = 0.35, tense = 0.25, happy = -0.3 } },
		{ event = "memory_return", when = { lastVisitBad = true },
			gain = { worried = 0.3, melancholic = 0.25, tense = 0.2, happy = -0.5 } },
		{ event = "memory_return", when = { lastVisitBad = false }, gain = { nostalgic = 0.2, serene = 0.1 } },
		{ event = "memory_return", when = { lastVisitBad = false, daysSinceLastVisit = 3 }, gain = { nostalgic = 0.3 } },
		{ event = "landmark", gain = { admiring = 0.3, curious = 0.2 } },
		{ event = "subzone_enter", when = { landmark = "graveyard" }, gain = { melancholic = 0.15 } },
		-- rest and the road
		{ event = "rest_enter", gain = { serene = 0.4, tense = -0.4, worried = -0.15 } },
		{ event = "journey", when = { journeyMin = 120 }, gain = { serene = 0.25, nostalgic = 0.15 } },
		{ event = "dawn", gain = { serene = 0.15 } },
		{ event = "dusk", gain = { nostalgic = 0.1 } },
		{ event = "pray", gain = { serene = 0.3, worried = -0.1 } },
		-- people
		{ event = "relation_player", when = { relation = { "friend", "comrade", "lover" } },
			gain = { happy = 0.3, serene = 0.1, worried = -0.1 } },
		{ event = "relation_player", when = { relation = { "rival", "enemy", "wary", "disliked" } },
			gain = { tense = 0.3, furious = 0.1 } },
		{ event = "rezother", gain = { determined = 0.15, admiring = 0.1 } },
		-- weather
		{ event = "weather_change", when = { weather = { "rain", "fog" } }, gain = { melancholic = 0.1, serene = -0.05 } },
		{ event = "weather_change", when = { weather = "storm" }, gain = { tense = 0.15 } },
		{ event = "weather_change", when = { weather = "clear" }, gain = { serene = 0.15 } },
	},
})
