-- Regional pack Kalimdor, Moonglade (content wave W03: the sacred glade, Nighthaven and the lake under the barrow dens). Written through the authoring archive
-- (tools/archive, CONTRIBUTING.md); the texts are in AzerothUnspoken_Kalimdor_enUS/Moonglade.lua and AzerothUnspoken_Kalimdor_itIT/Moonglade.lua. Built while
-- the character is in the area "moonglade" and dropped when it leaves it (ADR 0048); the folder is loaded with the region
-- (ADR 0025). Races, classes, factions, weather, the time of day and the moment are conditions inside the rules, never
-- separate packs. Subzone names are those of the English Classic client and are not yet confirmed in Forever (#36): a
-- wrong name only keeps a line silent.
local AU = AzerothUnspoken

AU:RegisterRegionalPack("moonglade", {
	id = "kalimdor_moonglade",
	name = "Kalimdor: Moonglade",
	languages = { "itIT", "enUS" },
}, [==[
	["mgl.a.battle.01"] = { event = "battle", speaker = "character", styles = { "epic", "ceremonial" },
		tags = { "temperament:resolute" }, depth = { "natural", "literary" },
		theme = "courage", motifs = {},
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.lowhp.01"] = { event = "lowhp", speaker = "inner", styles = { "tragic", "intimate" },
		tags = { "temperament:resolute", "topic:death" }, depth = { "natural", "literary" },
		theme = "mortality", motifs = { "grass" },
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.meet.guard.01"] = { event = "npc_meet", speaker = "inner", styles = { "everyday", "ironic" },
		tags = { "other.role:guard", "motivation:duty" }, depth = { "natural", "literary" },
		theme = "duty", motifs = {},
		conditions = { zone = "Moonglade", faction = "Alliance", other = { role = "guard" } } },
	["mgl.a.muse.01"] = { event = "muse", speaker = "inner", styles = { "intimate", "ceremonial" },
		tags = { "temperament:stoic" }, depth = { "natural", "literary" },
		theme = "fellowship", motifs = {},
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.muse.02"] = { event = "muse", speaker = "narrator", styles = { "ancient", "intimate" },
		tags = { "temperament:melancholic" }, depth = { "literary", "elevated" },
		theme = "landscape", motifs = { "water" },
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.muse.03"] = { event = "muse", speaker = "character", styles = { "everyday", "intimate" },
		tags = { "temperament:cheerful" }, depth = { "natural" },
		theme = "nature", motifs = {},
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.quest.01"] = { event = "quest_complete", speaker = "inner", styles = { "intimate", "ceremonial" },
		tags = { "motivation:duty" }, depth = { "natural", "literary" },
		theme = "fellowship", motifs = {},
		conditions = { zone = "Moonglade", faction = "Alliance" } },
	["mgl.a.victory.01"] = { event = "victory", speaker = "narrator", styles = { "intimate", "ancient" },
		tags = { "temperament:stoic" }, depth = { "natural", "literary" },
		theme = "landscape", motifs = { "bird" },
		conditions = { zone = "Moonglade", faction = "Alliance" } },
]==])
