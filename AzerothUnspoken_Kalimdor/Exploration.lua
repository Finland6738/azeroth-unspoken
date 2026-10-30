-- Regional pack Kalimdor (#101, ADR 0025): rules of the exploration lines bound to a zone of Kalimdor.
-- The texts are in AzerothUnspoken_Kalimdor_enUS and AzerothUnspoken_Kalimdor_itIT. The base addon loads this folder and the one
-- of the chosen language when the character enters Kalimdor, outside combat, and drops the rules from its tables when the
-- character leaves the continent: the builder below runs again on the way back.
local AU = AzerothUnspoken

AU:RegisterRegionalPack("kalimdor", function()
	return {
		id = "kalimdor_exploration",
		name = "Kalimdor: exploration",
		languages = { "itIT", "enUS" },
		registry = {
			["zone.barrens.01"] = { event = "zone", speaker = "character", styles = { "ironic" },
				tags = { "wry", "temperament:gruff" }, depth = { "natural", "literary" },
				conditions = { zone = "The Barrens" } },
			["zone.darkshore.01"] = { event = "zone", speaker = "inner", styles = { "intimate", "ancient" },
				tags = { "melancholy", "temperament:melancholic" }, depth = { "natural", "literary", "elevated" },
				conditions = { zone = "Darkshore" } },
			["zone.desert.02"] = { event = "zone", speaker = "character", styles = { "epic" },
				tags = { "fierce", "temperament:fierce" }, depth = { "literary" },
				conditions = { zone = "Durotar", race = "Orc" } },
			["zone.durotar.01"] = { event = "zone", speaker = "character", styles = { "epic" },
				tags = { "heroic", "motivation:protection", "temperament:resolute" }, depth = { "literary", "elevated" },
				conditions = { zone = "Durotar", race = { "Orc", "Troll" } } },
			["zone.felwood.01"] = { event = "zone", speaker = "inner", styles = { "intimate" },
				tags = { "melancholy", "topic:demons", "temperament:melancholic" }, depth = { "natural", "literary", "elevated" },
				conditions = { zone = "Felwood" } },
			["zone.forest.ashenvale"] = { event = "zone", speaker = "inner", styles = { "ancient" },
				tags = { "mystic", "curiosity:high" }, depth = { "natural", "literary", "elevated" },
				conditions = { mood = "forest", zone = "Ashenvale" } },
			["zone.forest.feralas"] = { event = "zone", speaker = "character", styles = { "ironic", "everyday" },
				tags = { "wry", "temperament:cheerful" }, depth = { "natural", "literary" },
				conditions = { mood = "forest", zone = "Feralas" } },
			["zone.moonglade.01"] = { event = "zone", speaker = "inner", styles = { "ancient" },
				tags = { "mystic", "faith:spiritual" }, depth = { "natural", "literary", "elevated" },
				conditions = { zone = "Moonglade" } },
			["zone.mulgore.01"] = { event = "zone", speaker = "inner", styles = { "ceremonial" },
				tags = { "solemn", "faith", "topic:religion", "faith:spiritual" }, depth = { "literary", "elevated" },
				conditions = { zone = "Mulgore" } },
			["zone.silithus.01"] = { event = "zone", speaker = "character", styles = { "tragic" },
				tags = { "dark", "temperament:stoic" }, depth = { "literary", "elevated" }, conditions = { zone = "Silithus" } },
			["zone.teldrassil.01"] = { event = "zone", speaker = "inner", styles = { "ancient" },
				tags = { "mystic", "faith:spiritual" }, depth = { "natural", "literary", "elevated" },
				conditions = { zone = "Teldrassil" } },
		},
	}
end)
