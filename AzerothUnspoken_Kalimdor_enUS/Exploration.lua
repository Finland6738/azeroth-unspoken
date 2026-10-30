-- English texts of the regional pack Kalimdor (#101, ADR 0025). The rules are in AzerothUnspoken_Kalimdor/Exploration.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("kalimdor", "enUS", "kalimdor_exploration", function()
	return {
		["zone.barrens.01"] = {
			"{zone}. Has anyone seen time go by? It seems to have stopped here.",
			"{zone}. Dry grass, kodos, and dust. I'm thirsty just saying it.",
		},
		["zone.darkshore.01"] = {
			{ "Darkshore. Dark trees right down to the tideline, broken shells crunching underfoot.", depth = "natural" },
			"The sea here is the color of old iron, and the trees lean toward it as if listening.",
			{ "Along this shore the ruins drink the salt, and every wave carries a little of their memory away.", depth = "elevated" },
		},
		["zone.desert.02"] = {
			"Hard red earth. Like us. That is why we chose it.",
			"Red dust on my boots. Let it stay. It's the only crown we need.",
		},
		["zone.durotar.01"] = {
			"Durotar. It is not generous, but it is ours. And no one will take it from us.",
			"Durotar. Red rock, scorpions, and little else. And we made it home with our own two hands.",
		},
		["zone.felwood.01"] = {
			"A poisoned wood. The trees weep, if you listen closely.",
			{ "I wouldn't touch that water with the tip of my boot. It's green. The wrong green.", depth = "natural" },
			{ "The bark peels like sick skin, and the sap that oozes out smells sickly-sweet. It sticks in the throat.", depth = "literary" },
			{ "Once druids sang to this forest. Now it answers with a moan, and its breath is a poison from beyond the world.", depth = "elevated" },
		},
		["zone.forest.ashenvale"] = {
			{ "Ashenvale. Even at noon it's twilight down here. Odd place.", depth = "natural" },
			"Fresh stumps at the forest's edge, sawdust in the grass. Someone here is felling trees, and someone else is counting every one.",
			{ "Among these vast trunks the night never quite leaves. It only draws back a little, and waits behind the leaves.", depth = "elevated" },
		},
		["zone.forest.feralas"] = {
			"Trees so tall I'd need a second neck to see the tops.",
			"Moss to the ankles, ogres somewhere about, and something roaring down there. Feralas, what a welcome.",
		},
		["zone.moonglade.01"] = {
			"{zone}. Here even the silence has a sound.",
			{ "No drawn blades, no shouting. I'm talking softer too, without meaning to.", depth = "natural" },
			{ "The lake lies so still it's like a second sky, laid upside down at my feet.", depth = "literary" },
			{ "In this guarded glade every leaf seems to wait upon a dream, and even a stranger's step learns reverence.", depth = "elevated" },
		},
		["zone.mulgore.01"] = {
			"Mulgore. Here the wind breathes with the Earth Mother's slow breath.",
			"Painted totems at the trail's edge, feathers tied to the wood. Here even the road is a prayer.",
		},
		["zone.silithus.01"] = {
			"Something hums beneath our feet. It is not the sand.",
			"Watch your step. The sand here has burrows, and the burrows have mandibles.",
		},
		["zone.teldrassil.01"] = {
			"The boughs of the World Tree sing. Only the patient can hear them.",
			{ "It's like a forest perched on top of another forest. Best not to think about the drop.", depth = "natural" },
			{ "Blue lights drifting through the ferns, and a quiet so clean I can hear my own pulse.", depth = "literary" },
			{ "Upon these roots hung between sky and sea, night is never wholly dark. It keeps a gentle watch over all who walk.", depth = "elevated" },
		},
	}
end)
