-- Regional pack Eastern Kingdoms (#101, ADR 0025): rules of the exploration lines bound to a zone of Eastern Kingdoms.
-- The texts are in AzerothUnspoken_EasternKingdoms_enUS and AzerothUnspoken_EasternKingdoms_itIT. The base addon loads this folder and the one
-- of the chosen language when the character enters Eastern Kingdoms, outside combat, and drops the rules from its tables when the
-- character leaves the continent: the builder below runs again on the way back.
local AU = AzerothUnspoken

AU:RegisterRegionalPack("eastern", function()
	return {
		id = "eastern_exploration",
		name = "Eastern Kingdoms: exploration",
		languages = { "itIT", "enUS" },
		registry = {
			["zone.dunmorogh.01"] = { event = "zone", speaker = "character", styles = { "epic" },
				tags = { "heroic", "temperament:cheerful" }, depth = { "literary" },
				theme = "home", motifs = { "snow", "stone" },
				conditions = { zone = "Dun Morogh", race = { "Dwarf", "Gnome" } } },
			["zone.duskwood.01"] = { event = "zone", speaker = "inner", styles = { "tragic" },
				tags = { "dark", "topic:death", "temperament:melancholic" }, depth = { "natural", "literary", "elevated" },
				theme = "fear", motifs = { "tree", "dusk" },
				conditions = { zone = "Duskwood" } },
			["zone.elwynn.01"] = { event = "zone", speaker = "inner", styles = { "intimate" },
				tags = { "melancholy", "morality:hopeful" }, depth = { "natural", "literary", "elevated" },
				theme = "home", motifs = { "bread", "smoke" },
				conditions = { zone = "Elwynn Forest", race = "Human" } },
			["zone.forest.hinterlands"] = { event = "zone", speaker = "character", styles = { "epic", "ancient" },
				tags = { "heroic", "motivation:freedom" }, depth = { "literary", "elevated" },
				theme = "nature", motifs = { "stone" },
				conditions = { mood = "forest", zone = "The Hinterlands" } },
			["zone.stv.01"] = { event = "zone", speaker = "character", styles = { "epic" },
				tags = { "fierce", "temperament:fierce" }, depth = { "literary" },
				theme = "humour",
				conditions = { zone = "Stranglethorn Vale" } },
			["zone.tirisfal.01"] = { event = "zone", speaker = "inner", styles = { "tragic" },
				tags = { "dark", "topic:undead", "topic:death", "temperament:melancholic" }, depth = { "literary", "elevated" },
				theme = "loss",
				conditions = { zone = "Tirisfal Glades" } },
		},
	}
end)
