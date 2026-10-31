-- Lines written for composite situations (#100, ADR 0032): two or more things that happen together and that one line
-- says better than either alone (a victory at low health, a level after a hard fight, a return in the rain at dusk).
-- Only the rules; the texts are in AzerothUnspoken_enUS/Situations.lua and AzerothUnspoken_itIT/Situations.lua.
--
-- The situations are data in Data/Themes.lua (`situations = {}`): the Director composes them from the candidates of
-- the moment and the events of the last seconds, and puts their ids in ctx.situation. A line asks one with the
-- condition `situation`; its event is the situation's lead. These lines are tried before the ordinary ones of the
-- event and are never eligible outside their situation. Editorial rule (CONTRIBUTING "Composite situations"): the line
-- carries both halves of the moment, without naming the mechanics ("still standing", not "I had low health").
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_situations",
	name = "Base: composite situations",
	languages = { "itIT", "enUS" },
	registry = {
		-------------------------------------------------------------------
		-- close_call: victory after low health in the same fight
		-------------------------------------------------------------------
		["sit.closecall.inner"] = { event = "victory", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "temperament:stoic" }, depth = { "natural", "literary" },
			theme = "mortality", motifs = { "breath", "hand" },
			conditions = { situation = "close_call" } },
		["sit.closecall.say"] = { event = "victory", speaker = "character", styles = { "epic", "ironic" },
			tags = { "wry", "temperament:fierce" }, depth = { "natural", "literary" },
			theme = "courage", motifs = { "blood" },
			conditions = { situation = "close_call" } },

		-------------------------------------------------------------------
		-- second_wind: victory soon after getting up again
		-------------------------------------------------------------------
		["sit.secondwind.say"] = { event = "victory", speaker = "character", styles = { "epic" },
			tags = { "temperament:fierce", "motivation:vengeance" }, depth = { "natural", "literary" },
			theme = "wrath", motifs = { "earth" },
			conditions = { situation = "second_wind" } },
		["sit.secondwind.inner"] = { event = "victory", speaker = "inner", styles = { "intimate" },
			tags = { "morality:hopeful" }, depth = { "natural", "literary" },
			theme = "hope", motifs = { "breath" },
			conditions = { situation = "second_wind" } },

		-------------------------------------------------------------------
		-- hard_won_level: a level right after a hard fight or a death
		-------------------------------------------------------------------
		["sit.hardlevel.inner"] = { event = "levelup", speaker = "inner", styles = { "intimate", "epic" },
			tags = { "temperament:resolute" }, depth = { "natural", "literary" },
			theme = "growth", motifs = { "scar" },
			conditions = { situation = "hard_won_level" } },
		["sit.hardlevel.say"] = { event = "levelup", speaker = "character", styles = { "epic", "ironic" },
			tags = { "wry", "temperament:fierce" }, depth = { "natural", "literary" },
			theme = "growth",
			conditions = { situation = "hard_won_level" } },

		-------------------------------------------------------------------
		-- wounded_arrival: a new zone entered still wounded
		-------------------------------------------------------------------
		["sit.woundedarrival.inner"] = { event = "zone", speaker = "inner", styles = { "intimate", "ironic" },
			tags = { "wry", "temperament:stoic" }, depth = { "natural", "literary" },
			theme = "fatigue", motifs = { "wound", "road" },
			conditions = { situation = "wounded_arrival" } },
		["sit.woundedarrival.e"] = { event = "zone", speaker = "narrator", styles = { "tragic" },
			tags = { "temperament:resolute" }, depth = { "natural", "literary" },
			theme = "fatigue", motifs = { "wound", "breath" },
			conditions = { situation = "wounded_arrival" } },

		-------------------------------------------------------------------
		-- rain_dusk_return: back to a known place in the rain, as the light goes
		-------------------------------------------------------------------
		["mem.ret.sit.rain.inner"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
			tags = { "melancholy", "temperament:melancholic" }, depth = { "natural", "literary" },
			theme = "home", motifs = { "rain", "dusk" },
			conditions = { situation = "rain_dusk_return", repeatVisit = true, lastVisitBad = false } },
		["mem.ret.sit.rain.e"] = { event = "memory_return", speaker = "narrator", styles = { "tragic", "intimate" },
			tags = { "temperament:melancholic" }, depth = { "literary", "elevated" },
			theme = "memory", motifs = { "rain", "road" },
			conditions = { situation = "rain_dusk_return", repeatVisit = true } },
	},
})
