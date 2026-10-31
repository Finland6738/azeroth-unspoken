-- Lines that follow the character's emotional state and strong personality traits (R4, #96, #97, ADR 0031). Only the
-- rules; the texts are in AzerothUnspoken_enUS/Emotions.lua and AzerothUnspoken_itIT/Emotions.lua.
--
-- Conditions: `emotion` (the dominant emotion), `emotionMin` / `emotionMax` ({ emotion = 0..1 }), `traitMin` /
-- `traitMax` ({ axis = 0..100 }); tag `emo:<emotion>` (the line carries that emotion: factor E). A line that only a
-- strong trait may say uses traitMin/traitMax rather than a `req:` tag: a condition keeps it out of the candidates of a
-- neutral profile, so a neutral profile picks exactly as before. With the emotion module off no line conditioned on
-- an emotion is ever eligible. These conditions do not raise the specificity tier: the lines compete by weight.
-- Editorial rule (GDD §5.4, CONTRIBUTING "Emotion-aware lines"): the emotion and the trait are implied by what the
-- character notices and does, never named ("I keep my hand near the hilt", not "I am worried").
local ADDON, NS = ...

local ALL = { "natural", "literary", "elevated" }

NS:RegisterPack({
	id = "base_emotions",
	name = "Base: emotions and strong traits",
	languages = { "itIT", "enUS" },
	registry = {
		-------------------------------------------------------------------
		-- entering a zone
		-------------------------------------------------------------------
		["emo.zone.worried"] = { event = "zone", speaker = "inner", styles = { "intimate" },
			tags = { "emo:worried" }, depth = { "natural", "literary" },
			theme = "fear", motifs = { "road", "hand" },
			conditions = { emotion = "worried" } },
		["emo.zone.curious"] = { event = "zone", speaker = "character", styles = { "everyday" },
			tags = { "emo:curious" }, depth = { "natural", "literary" },
			theme = "mystery", motifs = { "road", "door" },
			conditions = { emotion = "curious" } },
		["emo.zone.melancholic"] = { event = "zone", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "emo:melancholic" }, depth = { "literary", "elevated" },
			theme = "loss", motifs = { "wind" },
			conditions = { emotion = "melancholic" } },
		["emo.zone.serene"] = { event = "zone", speaker = "narrator", styles = { "ancient" },
			tags = { "emo:serene" }, depth = ALL,
			theme = "landscape", motifs = { "grass", "sky" },
			conditions = { emotion = "serene" } },
		["emo.zone.patriot"] = { event = "zone", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" },
			theme = "home", motifs = { "banner" },
			conditions = { place = { friendlyCapital = true }, traitMin = { patriotism = 70 } } },
		["emo.zone.cynic"] = { event = "zone", speaker = "character", styles = { "ironic" },
			depth = { "natural", "literary" },
			theme = "humour", motifs = { "door", "coin" },
			conditions = { mood = "city", traitMax = { idealism = 25 } } },
		["emo.zone.ambitious"] = { event = "zone", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" },
			theme = "glory", motifs = { "road", "crown" },
			conditions = { firstVisit = true, traitMin = { ambition = 75 } } },

		-------------------------------------------------------------------
		-- coming back to a place: the outcome of the last visit sets the tone (#98)
		-------------------------------------------------------------------
		["mem.ret.emo.bad.worried"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
			tags = { "emo:worried" }, depth = { "natural", "literary" },
			theme = "fear", motifs = { "road" },
			conditions = { lastVisitBad = true, emotion = { "worried", "tense", "melancholic" } } },
		["mem.ret.emo.bad.determined"] = { event = "memory_return", speaker = "character", styles = { "epic" },
			tags = { "emo:determined" }, depth = { "natural", "literary" },
			theme = "courage",
			conditions = { lastVisitBad = true, emotion = "determined" } },
		["mem.ret.emo.bad.furious"] = { event = "memory_return", speaker = "character", styles = { "epic" },
			tags = { "emo:furious", "topic:death" }, depth = { "natural", "literary" },
			theme = "wrath", motifs = { "dust" },
			conditions = { lastVisitBad = "death", emotion = "furious" } },
		["mem.ret.emo.nostalgic"] = { event = "memory_return", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "emo:nostalgic" }, depth = { "literary", "elevated" },
			theme = "memory", motifs = { "road" },
			conditions = { lastVisitBad = false, repeatVisit = true, emotion = "nostalgic" } },

		-------------------------------------------------------------------
		-- defeat, and getting up again
		-------------------------------------------------------------------
		["emo.death.worried"] = { event = "death", speaker = "inner", styles = { "intimate" },
			tags = { "emo:worried", "topic:death" }, depth = { "natural", "literary" },
			theme = "mortality", motifs = { "breath" },
			conditions = { emotion = "worried" } },
		["emo.death.furious"] = { event = "death", speaker = "character", styles = { "epic" },
			tags = { "emo:furious", "topic:death" }, depth = { "natural", "literary" },
			theme = "wrath",
			conditions = { emotion = "furious" } },
		["emo.death.stoic"] = { event = "death", speaker = "character", styles = { "ancient" },
			tags = { "topic:death" }, depth = { "natural", "literary" },
			theme = "mortality", motifs = { "earth" },
			conditions = { traitMin = { stoicism = 70 } } },
		["emo.rez.determined"] = { event = "rez", speaker = "character", styles = { "epic" },
			tags = { "emo:determined" }, depth = { "natural", "literary" },
			theme = "courage",
			conditions = { emotion = "determined" } },
		["emo.rez.melancholic"] = { event = "rez", speaker = "inner", styles = { "intimate" },
			tags = { "emo:melancholic" }, depth = { "literary", "elevated" },
			theme = "loss", motifs = { "breath" },
			conditions = { emotionMin = { melancholic = 0.3 } } },

		-------------------------------------------------------------------
		-- fights
		-------------------------------------------------------------------
		["emo.battle.tense"] = { event = "battle", speaker = "inner", styles = { "everyday" },
			tags = { "emo:tense" }, depth = { "natural", "literary" },
			theme = "fear", motifs = { "blade" },
			conditions = { emotionMin = { tense = 0.4 } } },
		["emo.battle.furious"] = { event = "battle", speaker = "character", styles = { "epic" },
			tags = { "emo:furious" }, depth = { "natural", "literary" },
			theme = "wrath",
			conditions = { emotion = "furious" } },
		["emo.lowhp.worried"] = { event = "lowhp", speaker = "inner", styles = { "intimate" },
			tags = { "emo:worried" }, depth = { "natural", "literary" },
			theme = "fear", motifs = { "breath" },
			conditions = { emotion = { "worried", "tense" } } },
		["emo.victory.tense"] = { event = "victory", speaker = "inner", styles = { "everyday" },
			tags = { "emo:tense" }, depth = { "natural", "literary" },
			theme = "fatigue", motifs = { "hand" },
			conditions = { emotion = "tense" } },
		["emo.victory.happy"] = { event = "victory", speaker = "character", styles = { "everyday" },
			tags = { "emo:happy" }, depth = { "natural", "literary" },
			theme = "glory", motifs = { "ale" },
			conditions = { emotion = "happy" } },
		["emo.victory.determined"] = { event = "victory", speaker = "character", styles = { "epic" },
			tags = { "emo:determined" }, depth = { "natural", "literary" },
			theme = "courage",
			conditions = { emotion = "determined" } },
		["emo.victory.vengeful"] = { event = "victory", speaker = "character", styles = { "epic" },
			tags = { "emo:furious" }, depth = { "natural", "literary" },
			theme = "wrath", motifs = { "coin" },
			conditions = { emotionMin = { furious = 0.2 }, traitMin = { vengefulness = 70 } } },
		["emo.victory.altruist"] = { event = "victory", speaker = "character", styles = { "intimate" },
			depth = { "natural", "literary" },
			theme = "fellowship", motifs = { "hand" },
			conditions = { group = { "party", "raid" }, traitMin = { altruism = 75 } } },
		["emo.levelup.happy"] = { event = "levelup", speaker = "character", styles = { "everyday" },
			tags = { "emo:happy" }, depth = { "natural", "literary" },
			theme = "growth", motifs = { "door", "bone" },
			conditions = { emotion = "happy" } },

		-------------------------------------------------------------------
		-- rest, prayer and thoughts
		-------------------------------------------------------------------
		["emo.rest.serene"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" },
			tags = { "emo:serene" }, depth = ALL,
			theme = "home", motifs = { "hearth", "door" },
			conditions = { indoors = true, emotion = "serene" } },
		["emo.rest.worried"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" },
			tags = { "emo:worried" }, depth = { "natural", "literary" },
			theme = "fear", motifs = { "door" },
			conditions = { indoors = true, emotionMin = { worried = 0.3 } } },
		["emo.pray.spiritual"] = { event = "pray", speaker = "inner", styles = { "ceremonial" },
			tags = { "topic:religion" }, depth = { "literary", "elevated" },
			theme = "faith", motifs = { "candle" },
			conditions = { traitMin = { spirituality = 75 } } },
		["emo.muse.melancholic"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			tags = { "emo:melancholic" }, depth = { "literary", "elevated" },
			theme = "loss", motifs = { "road" },
			conditions = { emotion = "melancholic" } },
		["emo.muse.nostalgic"] = { event = "muse", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "emo:nostalgic", "topic:family" }, depth = { "literary", "elevated" },
			theme = "home", motifs = { "hearth", "voice" },
			conditions = { emotion = "nostalgic" } },
		["emo.muse.admiring"] = { event = "muse", speaker = "inner", styles = { "ceremonial" },
			tags = { "emo:admiring" }, depth = { "literary", "elevated" },
			theme = "memory", motifs = { "stone" },
			conditions = { emotion = "admiring" } },
		["emo.muse.serene"] = { event = "muse", speaker = "inner", styles = { "ancient" },
			tags = { "emo:serene" }, depth = ALL,
			theme = "solitude", motifs = { "breath" },
			conditions = { emotion = "serene" } },
		["emo.muse.dreamer"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			depth = { "natural", "literary" },
			theme = "journey", motifs = { "road", "sky" },
			conditions = { traitMax = { concreteness = 25 } } },
		["emo.muse.pessimist"] = { event = "muse", speaker = "character", styles = { "ironic" },
			depth = { "natural", "literary" },
			theme = "humour",
			conditions = { traitMax = { optimism = 25 } } },
		["emo.weather.rain"] = { event = "weather_change", speaker = "inner", styles = { "intimate" },
			tags = { "emo:melancholic" }, depth = { "natural", "literary" },
			theme = "landscape", motifs = { "rain" },
			conditions = { weather = "rain", emotion = "melancholic" } },
	},
})
