-- Monologues (#99, ADR 0032): two or three whole phrases said as one intervention of the Director, only by the private
-- voices (narrator and inner voice). Only the rules; the texts are in AzerothUnspoken_enUS/Monologues.lua and
-- AzerothUnspoken_itIT/Monologues.lua.
--
-- A monologue (`kind = "monologue"`) has no texts of its own: `parts` names the phrases it says, in order (with
-- `order = "free"` the parts after the first may change places). Each part is a whole phrase marked `chainable`:
-- `"only"` when it was written to go in a monologue and is never said alone, `true` when it also stands on its own.
-- Every variant of a part goes with every variant of the next one. The first part has the form of the monologue (a
-- narrator emote follows the character's name); the others are whole sentences in the form `say`. The validator checks
-- voice, form, register, theme or motif and length (CONTRIBUTING "Monologues"). Never in combat.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_monologues",
	name = "Base: monologues",
	languages = { "itIT", "enUS" },
	registry = {
		-------------------------------------------------------------------
		-- muse: the inner voice, when the player asks for a thought
		-------------------------------------------------------------------
		["mono.muse.road"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			tags = { "temperament:stoic", "motivation:freedom" }, depth = { "natural", "literary" },
			theme = "journey", motifs = { "road", "fire" },
			kind = "monologue", parts = { "mono.muse.road.1", "mono.muse.road.2", "mono.muse.road.3" } },
		["mono.muse.road.1"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "journey", motifs = { "road" },
			chainable = "only" },
		["mono.muse.road.2"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "journey", motifs = { "road" },
			chainable = "only" },
		["mono.muse.road.3"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "journey", motifs = { "fire" },
			chainable = "only" },

		["mono.muse.scar"] = { event = "muse", speaker = "inner", styles = { "intimate", "tragic" },
			tags = { "melancholy", "temperament:melancholic" }, depth = { "literary" },
			theme = "mortality", motifs = { "scar", "hand" },
			kind = "monologue", parts = { "mono.muse.scar.1", "mono.muse.scar.2", "mono.muse.scar.3" } },
		["mono.muse.scar.1"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "mortality", motifs = { "scar", "hand" },
			chainable = "only" },
		["mono.muse.scar.2"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "mortality", motifs = { "scar" },
			chainable = "only" },
		["mono.muse.scar.3"] = { event = "muse", speaker = "inner", styles = { "intimate", "tragic" },
			theme = "mortality", motifs = { "scar" },
			chainable = "only" },

		["mono.muse.stars"] = { event = "muse", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "calm", "temperament:stoic" }, depth = { "literary", "elevated" },
			theme = "solitude", motifs = { "star", "night", "breath" },
			kind = "monologue", order = "free",
			parts = { "mono.muse.stars.1", "mono.muse.stars.2", "mono.muse.stars.3" },
			conditions = { time = "night" } },
		["mono.muse.stars.1"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "solitude", motifs = { "star", "night" },
			chainable = "only" },
		["mono.muse.stars.2"] = { event = "muse", speaker = "inner", styles = { "intimate", "ancient" },
			theme = "solitude", motifs = { "star" },
			chainable = "only" },
		["mono.muse.stars.3"] = { event = "muse", speaker = "inner", styles = { "intimate" },
			theme = "solitude", motifs = { "breath", "night" },
			chainable = "only" },

		-------------------------------------------------------------------
		-- zone: the narrator, entering a zone (an emote, then two sentences)
		-------------------------------------------------------------------
		["mono.zone.crest"] = { event = "zone", speaker = "narrator", form = "emote", styles = { "ancient" },
			tags = { "calm", "motivation:knowledge" }, depth = { "literary", "elevated" },
			theme = "landscape", motifs = { "road", "sky", "bird" },
			kind = "monologue", parts = { "mono.zone.crest.1", "mono.zone.crest.2", "mono.zone.crest.3" } },
		["mono.zone.crest.1"] = { event = "zone", speaker = "narrator", form = "emote", styles = { "ancient" },
			theme = "landscape", motifs = { "road" },
			chainable = "only" },
		["mono.zone.crest.2"] = { event = "zone", speaker = "narrator", form = "say", styles = { "ancient" },
			theme = "landscape", motifs = { "road" },
			chainable = "only" },
		["mono.zone.crest.3"] = { event = "zone", speaker = "narrator", form = "say", styles = { "ancient" },
			theme = "landscape", motifs = { "sky", "bird" },
			chainable = "only" },

		["mono.zone.dusk"] = { event = "zone", speaker = "narrator", form = "emote", styles = { "ancient", "intimate" },
			tags = { "calm", "temperament:melancholic" }, depth = { "literary", "elevated" },
			theme = "landscape", motifs = { "dusk", "shadow", "light" },
			kind = "monologue", parts = { "mono.zone.dusk.1", "mono.zone.dusk.2", "mono.zone.dusk.3" },
			conditions = { time = "dusk" } },
		["mono.zone.dusk.1"] = { event = "zone", speaker = "narrator", form = "emote", styles = { "ancient" },
			theme = "landscape", motifs = { "dusk", "light" },
			chainable = "only" },
		["mono.zone.dusk.2"] = { event = "zone", speaker = "narrator", form = "say", styles = { "ancient" },
			theme = "landscape", motifs = { "shadow" },
			chainable = "only" },
		["mono.zone.dusk.3"] = { event = "zone", speaker = "narrator", form = "say", styles = { "ancient", "intimate" },
			theme = "landscape", motifs = { "dusk" },
			chainable = "only" },

		-------------------------------------------------------------------
		-- rest_enter: the inner voice, at the inn
		-------------------------------------------------------------------
		["mono.rest.hearth"] = { event = "rest_enter", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "calm", "temperament:cheerful" }, depth = { "natural", "literary" },
			theme = "home", motifs = { "hearth", "bread", "door" },
			kind = "monologue", parts = { "mono.rest.hearth.1", "mono.rest.hearth.2", "mono.rest.hearth.3" },
			conditions = { indoors = true } },
		["mono.rest.hearth.1"] = { event = "rest_enter", speaker = "inner", styles = { "intimate", "everyday" },
			theme = "home", motifs = { "hearth", "bread" },
			chainable = "only" },
		["mono.rest.hearth.2"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" },
			theme = "home",
			chainable = "only" },
		["mono.rest.hearth.3"] = { event = "rest_enter", speaker = "inner", styles = { "intimate", "everyday" },
			theme = "home", motifs = { "door" },
			chainable = "only" },

		-------------------------------------------------------------------
		-- levelup and rez: the inner voice after an exceptional moment (two parts)
		-------------------------------------------------------------------
		["mono.lvl.lock"] = { event = "levelup", speaker = "inner", styles = { "intimate", "epic" },
			tags = { "temperament:stoic" }, depth = { "natural", "literary" },
			theme = "growth", motifs = { "hand", "road" },
			kind = "monologue", parts = { "mono.lvl.lock.1", "mono.lvl.lock.2" } },
		["mono.lvl.lock.1"] = { event = "levelup", speaker = "inner", styles = { "intimate" },
			theme = "growth", motifs = { "hand" },
			chainable = "only" },
		["mono.lvl.lock.2"] = { event = "levelup", speaker = "inner", styles = { "intimate", "epic" },
			theme = "growth", motifs = { "road" },
			chainable = "only" },

		["mono.rez.breath"] = { event = "rez", speaker = "inner", styles = { "intimate", "tragic" },
			tags = { "topic:death" }, depth = { "natural", "literary" },
			theme = "mortality", motifs = { "breath", "earth" },
			kind = "monologue", parts = { "mono.rez.breath.1", "mono.rez.breath.2", "mono.rez.breath.3" } },
		["mono.rez.breath.1"] = { event = "rez", speaker = "inner", styles = { "intimate" },
			tags = { "topic:death" },
			theme = "mortality", motifs = { "breath", "earth" },
			chainable = "only" },
		["mono.rez.breath.2"] = { event = "rez", speaker = "inner", styles = { "intimate", "tragic" },
			tags = { "topic:death" },
			theme = "mortality",
			chainable = "only" },
		["mono.rez.breath.3"] = { event = "rez", speaker = "inner", styles = { "intimate" },
			tags = { "topic:death" },
			theme = "mortality", motifs = { "earth" },
			chainable = "only" },
	},
})
