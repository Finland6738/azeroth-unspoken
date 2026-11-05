-- English texts of the regional pack eastern_ironforge (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/Ironforge.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("dunmorogh", "enUS", "eastern_ironforge", [==[
	["ifo.journey.arrival.01"] = {
		"slides down from the gryphon into the heat of the Great Forge, cheeks still stinging from the cold of the sky.",
		"lands with a thump on warm stone as the clang of the anvils rushes in from every side.",
		"dismounts and lingers a moment by the forge, letting the warmth chase the height out of {g:his|her} bones.",
	},
	["ifo.journey.arrival.02"] = {
		"Warm air, the smell of coal, the ring of hammers. However the road went, Ironforge takes me in.",
		"Down from the cold sky and straight into the mountain's warmth. A friendly hall, and safe walls all around.",
	},
	["ifo.journey.arrival.03"] = {
		"Solid stone under my feet. I could kiss it, but it's probably hot.",
		"Made it. Can someone point me to the ale before my knees stop shaking?",
	},
	["ifo.journey.start.01"] = {
		"Out of the forge heat and into open sky in a single wingbeat. The cold hits like a slap, and it's glorious.",
		"The gryphon bursts out past the gates and the mountain drops away behind. After all that stone, so much sky.",
		"From the furnace glow to the white roof of the world. The gryphon doesn't seem to notice the difference; I do.",
	},
	["ifo.journey.start.02"] = {
		"Mind the ceiling! Mind the ceiling! ...Right. We're out.",
		"Through the gate at full speed. Let it be noted that I did not scream. Much.",
		"Farewell, Ironforge. Keep the forge lit and the tankards full.",
	},
	["ifo.journey.start.03"] = {
		"settles onto the gryphon's back as it lifts away from the Great Forge, the glow of molten iron shrinking below.",
		"grips the harness as the gryphon beats its wings once, twice, and carries {g:him|her} out of the mountain's red light.",
	},
	["ifo.memory_return.01"] = {
		"The same red glow, the same ringing anvils. Ironforge hasn't changed, and right now I'm grateful for it.",
		"I'd forgotten how the heat meets you at the gate. Some things the body remembers before the mind does.",
	},
	["ifo.muse.ale"] = {
		"In Ironforge the ale flows as freely as the molten iron. I know which of the two I'd rather drink.",
		"I've never seen a city with so many forges and so many tankards. I suspect the two are related.",
	},
	["ifo.muse.anvils"] = {
		"pauses to listen to a hundred hammers striking a hundred anvils, never quite in time with one another.",
		"steps aside as a smith hauls a glowing ingot past, the heat of it washing over {g:him|her} like a wave.",
		"watches sparks leap from an anvil and die on the stone floor, one bright spray after another.",
	},
	["ifo.muse.dwarf"] = {
		"Every hall here was cut by the hands of my forebears, blow after stubborn blow. I walk through their patience.",
		"Home. The ring of the anvils, the smell of coal and ale, and the mountain closed overhead like a sheltering hand.",
	},
	["ifo.muse.explorers"] = {
		"The Explorers' League digs through half the world looking for where the dwarves came from. Brave work, asking the earth who you are.",
		"Maps, bones, broken tablets. The dwarves seem as hungry for their own past as they are for gold.",
	},
	["ifo.muse.forge"] = {
		"The whole city hums with the Great Forge, like a heart beating deep in the stone.",
		"Heat on my face, cold rock at my back. Ironforge never lets you forget there's a mountain all around you.",
		"Molten metal pours down from the heights, bright as a sunrise nobody here ever needs to see.",
	},
	["ifo.muse.gnome"] = {
		"The dwarves gave us Tinker Town and never once made us feel like beggars. Still, a guest room is not a home.",
		"Mekkatorque holds court in a borrowed corner of a borrowed city. One day we'll take Gnomeregan back. One day.",
	},
	["ifo.muse.king"] = {
		"King Magni keeps his high seat in the heart of the mountain. Say what you like about kings; this one keeps a warm hall.",
		"Deep in these halls Magni Bronzebeard sits with his counsel and his crown. The city works as if he were watching. Perhaps he is.",
	},
	["ifo.muse.nosky"] = {
		"Lovely city. Shame about the sky. Somebody seems to have built a mountain over it.",
		"Day or night? No idea. Down here the forge decides, and the forge never sleeps.",
		"I asked a dwarf what it was like outside today. He said 'cold', as if that settled it, and went back to his anvil.",
	},
	["ifo.muse.tram"] = {
		"Somewhere under my feet a gnomish car is rattling through a tunnel beneath the sea, all the way to Stormwind. Madness. Wonderful madness.",
		"The Deeprun Tram: a road under the sea, built by gnomes. I'm told you can watch the fish go by through the glass.",
	},
	["ifo.npc_meet.banker"] = {
		"The Vault of Ironforge. If anywhere in the world can keep my few coins safe, it's a bank dug into a mountain.",
		"The banker looks at my deposit the way a smith looks at poor ore. Polite, but unconvinced.",
	},
	["ifo.npc_meet.flightmaster"] = {
		"A gryphon, please. One that's eaten recently, and not a traveler.",
		"Where can your gryphons take me from here? Somewhere with a sky over it would be nice.",
	},
	["ifo.npc_meet.guard"] = {
		"An Ironforge guard, broad as a doorway and just as easy to move. I feel better already.",
		"The guard's eyes flick over me, weigh me, and let me pass. A dwarf on watch misses nothing.",
	},
	["ifo.quest_complete.01"] = {
		"Paid and done. In this city that means one thing: a round at the tavern.",
		"Another job finished. The dwarves pay fair, and in coin that rings true.",
		"That's settled. Somebody in this city owes me a drink, and I mean to find out who.",
	},
	["ifo.quest_complete.02"] = {
		"accepts the thanks with a nod and steps back into the noise of the city, one task lighter.",
		"tucks the reward away and lets the clamor of the forges swallow the moment.",
		"clasps a calloused hand in thanks, then turns back toward the glow of the Great Forge.",
	},
	["ifo.quest_complete.03"] = {
		"The dwarves remember who helps them. In a city carved to last, that's no small thing.",
		"Word travels slowly through stone, but it travels. Someone in these halls will remember my name.",
	},
	["ifo.rest_enter.inn"] = {
		"A bench, a fire, a mug of something brewed by people who take brewing as seriously as war. I can rest here.",
		"The tavern is loud and warm and smells of roast and stout. Exactly what my bones were asking for.",
		"Boots off, back to the stone, forge-heat in the walls. Rest comes easy under a mountain.",
	},
	["ifo.rest_enter.safe"] = {
		"Walls of solid mountain and a dwarf with an axe at every door. I think I'll finally get some sleep.",
		"Safe inside Ironforge. Nothing gets through that much stone, except the noise of the forges.",
	},
	["ifo.subzone_enter.explorers"] = {
		"The Hall of Explorers. Old bones, older maps, and the hush of people reading about places they mean to dig up.",
		"Shelves of books, the skeleton of some great beast, and dwarves arguing softly over a map. My kind of hall.",
	},
	["ifo.subzone_enter.forlorn"] = {
		"lowers {g:his|her} voice without meaning to on entering the Forlorn Cavern, where the light is thin and the talk is thinner.",
		"passes into the dim hollow of the Forlorn Cavern, where watchful eyes follow from corners the forge-glow never reaches.",
	},
	["ifo.subzone_enter.greatforge"] = {
		"steps into the red glow of the Great Forge, where rivers of molten metal pour from the heights into the heart of the city.",
		"stops at the edge of the Great Forge, the heat beating against {g:his|her} face and the great anvil ringing at its center.",
	},
	["ifo.subzone_enter.tinker"] = {
		"Tinker Town. Everything here either whirs, clanks or smokes. Some things manage all three.",
		"Gnomes, gears and a faint smell of something singed. I'll keep my eyebrows well clear of the workbenches.",
	},
	["ifo.weather_change.snow"] = {
		"Somebody just came in from the gate shaking snow off a cloak. Out there it's blowing; in here it's forge-warm all year round.",
		"Snow on the boots of everyone coming in from outside. I'll stay by the forge and take their word for it.",
		"Folk are stamping snow off at the gates. Ironforge doesn't bother with weather; it only does heat.",
	},
	["ifo.greet.w02.01"] = {
		"Hail! Warm enough in here for you, after that mountain road?",
		"Well met. Mind the sparks, and mind the dwarves in a hurry.",
	},
	["ifo.muse.w02.01"] = {
		"Runes cut into every arch, worn soft at just the height where hands have touched them for generations.",
		"The stone of the halls is polished smooth where boots and shoulders have rubbed it. A city wears in, like a good glove.",
	},
	["ifo.muse.w02.02"] = {
		"Somebody in the Military Ward is testing a rifle again. Either that, or the mountain has hiccups.",
		"Bang. Then cheering. Then another bang. Dwarven target practice, or a very lively wedding.",
		"A boom from the far end of the city, and nobody so much as looks up. Ironforge has heard worse.",
	},
	["ifo.muse.w02.03"] = {
		"leans on a stone rail above the Great Forge, the heat rising past {g:his|her} face in slow, shimmering waves.",
		"watches the red light of the molten channels move across the carved walls, until the stone faces seem to change expression.",
	},
	["ifo.muse.w02.04"] = {
		"The Mystic Ward is the quietest corner of the city. Even the dwarves who study there seem to have learned to put their hammers down.",
		"Priests and mages in the Mystic Ward, murmuring over their books. After the din of the forges it's like stepping into a pocket of the mountain's own thoughts.",
	},
	["ifo.quest_complete.w02.01"] = {
		"Done. The one who set the task looked over the result the way a smith looks at a weld: hard, from every side, then one short nod.",
		"Finished, inspected and approved. In Ironforge even thanks go through the forge first.",
	},
	["ifo.quest_complete.w02.02"] = {
		"takes the reward in a hand still warm from the forge-heat of the halls, and nods once.",
		"steps aside for a cart of ore, the reward already in a belt pouch and the task sinking into the noise of the city.",
	},
	["ifo.weather_change.w02.01"] = {
		"Someone at the gate says the sky outside has cleared. I'll keep the forge-glow, but it's good news for the gryphons.",
		"Word comes in from the gates: blue sky over Dun Morogh. Nobody in here changes pace on account of it.",
	},
]==])
