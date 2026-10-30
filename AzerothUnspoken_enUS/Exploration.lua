-- Testi di base in inglese: zone e pensieri. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryExploration.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	["zone.gen.01"] = {
		"{zone}. Every name on a map is a story someone paid for in blood.",
		"{zone}. Let these roads learn the sound of our boots.",
	},
	["zone.gen.02"] = {
		"{zone}... I wonder who walked here before me, and what they sought.",
		"{zone}. Just a word on a map until you set foot in it. Then it's mud and pebbles and smells you don't know yet.",
	},
	["zone.gen.03"] = {
		"{zone}. They told me it was closer.",
		"{zone}. Lovely. Does anyone remember which way we came in?",
	},

	-- forests
	["zone.forest.01"] = {
		"The trees here are old. Older than kings, older than wars.",
		{ "Three of me couldn't reach around these trunks. How many winters have they stood through?", depth = "natural" },
		{ "Moss on the roots, sap on the bark. The forest keeps count of the years in its own way.", depth = "literary" },
		{ "Before the first stone of any throne was laid, these roots were already drinking from the deep earth.", depth = "elevated" },
	},
	["zone.forest.02"] = {
		"Walk softly. The forest listens, and remembers.",
		{ "Mind your feet. Snap a twig here and the next valley hears it.", depth = "natural" },
		{ "Keep the axes sheathed and the fires low. We're guests, and our host has roots.", depth = "literary" },
		{ "Speak low. Beneath this vault of leaves, every word is either a gift or a trespass.", depth = "elevated" },
	},
	["zone.forest.dawn"] = {
		"The birds all start at once, as if someone gave the signal.",
		{ "Boots soaked with dew, nose full of moss. There are worse ways to start a day.", depth = "natural" },
		{ "Dawn steps into the forest on tiptoe, branch by branch, gilding the webs strung between the trunks.", depth = "elevated" },
	},
	["zone.forest.dusk"] = {
		"stands still a moment as the light drains from between the trunks and the wood fills with crickets.",
		"slows as a deer crosses the path, glances back once, and is gone into the undergrowth.",
		{ "studies the roots of an old tree, broad enough to shelter beneath for the night.", depth = "elevated" },
	},
	["zone.forest.night"] = {
		{ "Hear that? The crickets stopped. Something shut them up.", depth = "natural" },
		"Yellow eyes in the brush. The fire stays lit tonight.",
		{ "At night the wood keeps other laws. Walk it like someone knocking at a door that isn't theirs.", depth = "elevated" },
	},

	["zone.dark.01"] = {
		"Here even the light seems afraid to enter.",
		"No birdsong. Only dead branches scraping against each other.",
	},
	["zone.dark.02"] = {
		"Keep your torches high and your voices low. Something is watching.",
		"Stay on the path. Folk who wander off here don't get found.",
	},
	["zone.dark.03"] = {
		"The mist rises from the graves like a breath held far too long.",
		"A light, down there. Someone keeping watch, or something that wants me to think so.",
	},
	["zone.plains.01"] = {
		"So much sky, and so little shade. Here the wind tells everything.",
		"Horizon on every side. Nowhere to hide, and for once no reason to.",
	},
	["zone.plains.02"] = {
		"The grass bends and rises again. So the Earth Mother taught us.",
		"Tread lightly. The Earth Mother rests beneath the grass, and her sleep feeds us all.",
	},
	["zone.mountain.01"] = {
		"The mountains are in no hurry. They were here before the world had a name.",
		"Up those ridges, then. From the top we'll see where the road goes, and what it'll cost us.",
	},
	["zone.snow.01"] = {
		"The snow covers everything: footprints, graves, memories. Perhaps it is mercy.",
		"My breath clouds and is gone. Even sounds seem cold here, muffled and slow.",
	},
	["zone.snow.02"] = {
		"Cold. Very cold. Remind me why we came here.",
		"Can't feel my fingers. If anyone finds them, they're mine.",
	},
	["zone.snow.03"] = {
		"Ah, the air of home! Cold keeps the blood awake.",
		"Hear that crunch underfoot? That's a proper song, that is.",
	},
	["zone.jungle.01"] = {
		"Every leaf hides a tooth. Every shadow, a spear.",
		"Flowers big as shields, and a sweetness in the air that makes the head swim. Even beauty sets snares here.",
	},
	["zone.jungle.02"] = {
		"You hear the drums, mon? The jungle remembers us.",
		"Wet earth and fruit gone soft. That's the smell of home.",
	},
	["zone.swamp.01"] = {
		"Still water keeps secrets better than any tomb.",
		"Bubbles rising from the bottom, slow and patient. As if the marsh were thinking something over.",
	},
	["zone.swamp.02"] = {
		"Mud to the knees. And I had just polished my boots.",
		"Mosquitoes the size of sparrows. Greedier than sellswords, too.",
	},
	["zone.desert.01"] = {
		"Empires sleep beneath this sand. Let us hope they keep sleeping.",
		"Thirst and sand to the horizon. Good. The best tales happen where nobody wants to go.",
	},
	["zone.fire.01"] = {
		"The air tastes of ash and iron. Here the world is still wounded.",
		"Black rock, glassy as broken bottles. Nothing grows here. Nothing wants to.",
	},
	["zone.fire.02"] = {
		"The fire beneath the mountain has never gone out. It only waits.",
		"Keep your waterskins close and your eyes on the cracks. This ground bites.",
	},
	["zone.plague.01"] = {
		"There were wheat fields here, and children running. Now there is only the wind.",
		"A rope swing hangs from a dead branch. Nobody's coming back to push it.",
	},
	["zone.plague.02"] = {
		"Don't drink the water. Don't touch the grain. Don't trust the dead.",
		"Cover your mouth and nose. And if someone calls your name from a barn, don't answer.",
	},
	["zone.ruin.01"] = {
		"Fallen stones, broken columns. Even the great forget they were ever great.",
		{ "People lived here once. You can still see where the hearth was.", depth = "natural" },
		{ "A step worn hollow by a thousand feet. Then no more feet at all.", depth = "literary" },
		{ "Where feasts were once laid, the ivy now weaves its slow tapestry across the stone.", depth = "elevated" },
	},
	["zone.coast.01"] = {
		"The sea always brings something ashore. Almost never what you hope for.",
		"Seaweed and waterlogged timber. The waves come in, draw back, and every time they take a little sand with them.",
	},
	["zone.sacred.01"] = {
		"Lower your weapons. This place is older than war.",
		"Here you speak softly and keep to the paths. You don't need to know why.",
	},
	["zone.deep.01"] = {
		"The deep places are hungry. Stay close.",
		"Count the torches. If one goes out, say so at once.",
	},
	["zone.city.01"] = {
		"Cities: high walls, dear ale, and someone always asking a favor.",
		"Three steps past the gate: two hawkers and a pickpocket. Hold on to your purse.",
	},
	["zone.city.02"] = {
		"Stone on stone, generation on generation. This is what we defend.",
		"Listen. Hammers, bells, children shouting. That's the noise worth holding the gates for.",
	},

	-- named zones: in the regional packs (AzerothUnspoken_Kalimdor_enUS, AzerothUnspoken_EasternKingdoms_enUS, #101)

	-- narrator
	["zone.e.01"] = {
		"halts at the edge of {zone}, and looks long upon the road ahead.",
		"shifts the strap of {g:his|her} pack and takes the first steps into {zone}.",
	},
	["zone.e.02"] = {
		"breathes in the air of {zone}, as if to learn its taste.",
		"lifts {g:his|her} gaze to the far reaches of {zone}, and for a moment simply listens.",
	},
	["zone.e.03"] = {
		"grips {g:his|her} weapon a little tighter, for no reason {g:he|she} could name.",
		"glances back over {g:his|her} shoulder, once, then again, before going on.",
	},
	["zone.e.forest"] = {
		"pauses beneath the low branches; somewhere a woodpecker is knocking at the bark.",
		"runs a hand along a rough trunk and comes away with fingers sticky with sap.",
		"moves on through the ferns, which close behind {g:him|her} without a sound.",
	},
	["zone.e.dark"] = {
		"walks more slowly now, the mud of the path sucking at {g:his|her} boots with every step.",
		"starts, just slightly, as a crow lifts off a bare branch with a harsh cry.",
		"turns up {g:his|her} collar against the damp air, which smells of rotting leaves.",
	},
	["zone.e.plains"] = {
		"stops on a low rise, the grass rippling away on every side to the edge of the sky.",
		"shades {g:his|her} eyes with one hand and scans the plain, where a distant herd raises a smudge of dust.",
	},
	["zone.e.mountain"] = {
		"tilts {g:his|her} head back toward the ridges, where a hawk circles without hurry.",
		"catches {g:his|her} breath halfway up the slope as loosened stones go clattering down.",
	},
	["zone.e.snow"] = {
		"pulls {g:his|her} cloak tighter, each step sinking into the snow with a dry crunch.",
		"blows into cupped hands; the breath rises in small white clouds that fray at once.",
	},
	["zone.e.jungle"] = {
		"wipes the sweat from {g:his|her} brow and pushes aside a dripping vine.",
		"goes still for a moment. Somewhere in the leaves, something large has stopped moving too.",
		"presses on through the drone of insects and the far-off shrieks of unseen birds.",
	},
	["zone.e.swamp"] = {
		"sinks shin-deep in the dark water, and all at once the frogs fall silent.",
		"swats at a cloud of gnats around {g:his|her} face, without much luck.",
	},
	["zone.e.desert"] = {
		"draws a scrap of cloth over {g:his|her} nose and mouth, squinting against the glare.",
		"leaves a footprint in the sand that the first breath of air is already smoothing away.",
		"shakes {g:his|her} waterskin beside one ear, listening to how much is left.",
	},
	["zone.e.coast"] = {
		"walks down to where the sand turns dark and wet, and a wave runs up to lap at {g:his|her} boots.",
		"turns toward the creak of a half-buried wreck, its ribs bleached by salt.",
	},
	["zone.e.ruin"] = {
		"traces a worn inscription with {g:his|her} fingertips; only a handful of letters remain.",
		"steps over a fallen column, and a lizard darts off into the cracks.",
	},
	["zone.e.sacred"] = {
		"lowers {g:his|her} voice and {g:his|her} head, though no one has asked.",
		"slows on the soft grass; the clink of {g:his|her} gear suddenly sounds out of place.",
	},
	["zone.e.city"] = {
		"edges past a cabbage cart and two children chasing each other.",
		"dodges, barely, a bucket of slops tipped from an upper window.",
		"pauses under an inn's creaking sign; the smell of stew reaches all the way to the street.",
	},
	["zone.e.dawn"] = {
		"sets off in the gray light of dawn, dew darkening the hem of {g:his|her} cloak.",
		"rolls stiff shoulders and watches the sky pale above {zone}.",
	},
	["zone.e.night"] = {
		"moves on carefully in the dark; every snapped twig rings out like a call.",
		"goes still. A rustle, somewhere off in the dark, then quiet again.",
	},

	-- musings
	["muse.01"] = {
		"Sometimes I wonder whether the songs will remember the right names.",
		"I wonder if anyone, a hundred years on, will know I came this way.",
	},
	["muse.02"] = {
		"No one chooses the season they are born in. The harvest, though, is ours.",
		"The world doesn't ask leave before it changes. It only asks that we show up.",
	},
	["muse.03"] = {
		"Every great tale begins with someone who decides not to stay home.",
		"Someday someone will tell the tale of this journey. Let's make it worth the listening.",
	},
	["muse.04"] = {
		"They say the journey matters more than the destination. They have never seen my boots.",
		"I've walked so far my feet want to renegotiate their terms.",
	},
	["muse.05"] = {
		"I have known heroes braver than me. Nearly all of them are underground.",
		"Now and then I count the companions I've lost. I always stop before I'm done.",
	},
	["muse.06"] = {
		"The world is older than we think, and remembers more than we would like.",
		"Every stone under my boots has been mountain, sand, seabed. I'm only passing through.",
	},
	["muse.07"] = {
		"Even the longest night ends. Not because the light is strong, but because it is stubborn.",
		"A candle doesn't beat the night. It's enough to see where to put your foot.",
	},
	["muse.08"] = {
		"Something dreams beneath the world. I hope it never wakes.",
		"Some nights the ground trembles, just barely, and no one mentions it. As if we all know better than to ask.",
	},
	["muse.09"] = {
		"Destiny chose me. I'd like to know who gave it permission.",
		"They told me I was meant for great things. So far it's mostly great blisters.",
	},
	["muse.10"] = {
		"Wars end, kings fall, but the roads remain. Someone will have to walk them.",
		"Every bridge we cross was built by someone we'll never meet. The least we can do is reach the far side.",
	},
	["muse.night.01"] = {
		"The stars are cold and close tonight. Like old friends who no longer speak.",
		"At night the world shrinks to the circle of my own footsteps. It's almost a relief.",
	},
	["muse.night.02"] = {
		"At night, memories walk faster than we do.",
		"At night every creak sounds like someone I used to know.",
	},
	["muse.dawn.01"] = {
		"Another dawn. None was ever promised to me.",
		"Dawn chill in my bones, and the first bird trying out its voice. Here we go again.",
	},
	["muse.dusk.01"] = {
		"The sun lies down on the hills like a tired old hound.",
		"At this hour the colors leave one at a time. Red always goes last, stubborn to the end.",
	},
	["muse.rest.01"] = {
		"A roof, a fire, and no one trying to kill me. Almost suspicious.",
		"Boots off, feet warm. If a dragon shows up now, it can take a number.",
		"Something hot in the bowl and a chair that doesn't wobble. Luxury.",
	},
	["muse.rest.02"] = {
		"Inns are full of stories. Half are true, and those are the saddest.",
		"For one night nobody needs me to be brave. Strange how heavy that is, once you set it down.",
	},
	["muse.orc.01"] = {
		"Our fathers drank the wrong blood. We must earn our own.",
		"Our chains were broken. It falls to us not to forge new ones.",
	},
	["muse.scourge.01"] = {
		"I no longer feel the cold. I miss it, sometimes. It was proof of being alive.",
		"I tried to remember the taste of bread. I only remember that I liked it.",
	},
	["muse.tauren.01"] = {
		"Every hoof leaves a print, and the rain washes it away. The land remains.",
		"Take from the land what you need, and give back what you can. The rest follows.",
	},
	["muse.troll.01"] = {
		"The loa be fickle, mon. Like the sea. Like the heart. Like me.",
		"A feather, a bead, a drop of rum for the spirits. That's how you travel easy.",
	},
	["muse.human.01"] = {
		"We always rebuild. Walls, homes, kingdoms. Sooner or later we'll learn not to tear them down.",
		"Every village has its bell tower and its old woman who knows everyone's business. I miss them both.",
	},
	["muse.dwarf.01"] = {
		"Every stone in Ironforge has a name. My grandfather knew them all.",
		"Stone never lies. If a seam cracks, there was a reason.",
	},
	["muse.nelf.01"] = {
		"I remember when this land was young. It was more beautiful, and more cruel.",
		"Centuries pass like seasons, and sometimes I catch myself greeting trees that are no longer there.",
	},
	["muse.gnome.01"] = {
		"I have a theory about everything. Sadly, none about life.",
		"If I could take homesickness apart, I bet I'd find one bent cog inside.",
	},
	["muse.warlock.01"] = {
		"Everything has a price. The trick is making someone else pay it.",
		"Power never asks how much you're willing to give. It finds out on its own.",
	},
	["muse.priest.01"] = {
		"Faith is not knowing it will be well. It is walking on when you don't.",
		"One short prayer, said properly, is worth a hundred shouted at the sky.",
	},
	["muse.hunter.01"] = {
		"The wild teaches you one thing only: whoever hurries, dies.",
		"Tracks don't lie. People who misread them do.",
	},
	["muse.mage.01"] = {
		"Magic is like wine: a little enlightens, too much burns down your house.",
		"Years spent studying the arcane, and I still can't fold a map properly.",
	},

	-- musings: narrator
	["muse.e.01"] = {
		"gazes into the distance, and for a moment seems far older than {g:his|her} years.",
		"rubs a hand over {g:his|her} face, and for a moment all the weariness shows.",
	},
	["muse.e.02"] = {
		"hums an old tune under {g:his|her} breath, whose words {g:he|she} has long forgotten.",
		"whistles a few off-key notes, breaks off, and starts again from the top.",
	},
	["muse.e.03"] = {
		"checks the straps of {g:his|her} gear one by one, with practiced hands.",
		"picks a flat stone off the path, turns it over in {g:his|her} fingers, then pockets it.",
	},
	["muse.e.night"] = {
		"tips {g:his|her} head back to the night sky and stays like that for a long while.",
		"draws {g:his|her} cloak close and listens to the sounds of the night, one by one.",
	},
	["muse.e.rest"] = {
		"sits on the edge of a step and shakes a pebble out of {g:his|her} boot.",
		"yawns hugely, only half covering it with a hand.",
	},
	["muse.e.inn"] = {
		"stretches {g:his|her} legs under the table while the chatter of the common room washes over {g:him|her}.",
		"warms {g:his|her} hands around a lukewarm mug, eyes following the comings and goings of the room.",
		"leans back against the wall, and for the first time in hours {g:his|her} shoulders loosen.",
	},
	["muse.e.hearth"] = {
		"watches the hearth fire as a log collapses in a burst of sparks.",
		"holds {g:his|her} hands out to the fire, warmth creeping slowly back into stiff fingers.",
	},
}, "base_exploration")
