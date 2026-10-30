-- English texts of the regional pack Eastern Kingdoms (#101, ADR 0025). The rules are in AzerothUnspoken_EasternKingdoms/Exploration.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("eastern", "enUS", "eastern_exploration", function()
	return {
		["zone.dunmorogh.01"] = {
			"Dun Morogh. Snow, stone, and the smell of the forges. Home.",
			"Dun Morogh! Dark ale, solid stone, snow up to the knees. What more does anyone need?",
		},
		["zone.duskwood.01"] = {
			"Here the sun does not set: it surrenders.",
			{ "Howling, off in the trees. And those aren't ordinary wolves, I'd wager.", depth = "natural" },
			{ "The branches close over the road like fingers. Even at noon, you walk through dusk here.", depth = "literary" },
			{ "Crooked grave markers in the fields, lanterns no one puts out. Duskwood keeps vigil over its dead, and never sleeps.", depth = "elevated" },
		},
		["zone.elwynn.01"] = {
			"Elwynn. It still smells of bread and home, despite everything.",
			{ "Mill wheel turning, fields gone gold, a guard yawning at his post. Peaceful.", depth = "natural" },
			{ "Woodsmoke from the chimneys, the far-off thud of an axe. Elwynn gets on with its work and doesn't complain.", depth = "literary" },
			{ "Elwynn, green pillow at the white city's feet. Here the world still remembers how to be gentle.", depth = "elevated" },
		},
		["zone.forest.hinterlands"] = {
			"Listen. Gryphons, up above the ridges. This land still has wings.",
			"Carved stones half-swallowed by moss at every bend. Whoever set them here knew their business.",
		},
		["zone.stv.01"] = {
			"Thorns, tigers, pirates and trolls. What a charming place.",
			"Vines round the ankles, panthers in the branches. Blade out, eyes up.",
		},
		["zone.tirisfal.01"] = {
			"Tirisfal. Here the dead woke up, and decided to stay.",
			"Rotten pumpkins in the gardens, idle mills, and crows that don't bother to fly off when you pass.",
		},
	}
end)
