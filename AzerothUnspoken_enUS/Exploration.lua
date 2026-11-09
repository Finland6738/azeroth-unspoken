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
	["faction.alliance.muse.01"] = {
		"One banner, and under it people who count their lives in decades and people who count them in centuries. We still manage to agree on the road.",
		"The Alliance is a long table with odd guests under one banner: different tongues, different songs, different ideas of a proper meal. Somehow nobody gets up and leaves.",
		"Strangers by birth, kin by promise, all under the same banner. That's the Alliance on a good day, and most days are good enough.",
	},
	["faction.alliance.muse.02"] = {
		"The Alliance has broken before and been mended. The mended places are the strongest.",
		"We've been split apart and stitched back together more than once. Look closely and you'll see the seams holding.",
		"Broken, then mended. Every time, the Alliance comes out a little tougher at the joins.",
	},
	["faction.alliance.muse.03"] = {
		"Out there, a Horde scout is squinting at the horizon and wondering about me. Two of us losing sleep over strangers.",
		"Every time I check a ridge for red banners, I picture someone on the far side checking for blue ones. A whole world of people looking over their shoulders.",
		"The Horde worries about us, we worry about the Horde. Between the two of us, the worrying is in very good hands.",
	},
	["faction.alliance.muse.04"] = {
		"On every far road there's some little outpost flying our banner, kept by people who haven't seen home in years. I think of them when my feet hurt.",
		"Our banner flies over places nobody back home could find on a map. Somebody stands under each one, every day.",
		"Every lonely tower with our banner on it means a handful of our people chose to stay where it was hard. I owe them more than a nod.",
	},
	["faction.alliance.muse.05"] = {
		"hums a few bars of a marching song picked up somewhere on the Alliance roads, off-key and quite unbothered.",
		"whistles an old Alliance marching song under {g:his|her} breath, losing the tune halfway and carrying on regardless.",
	},
	["faction.alliance.muse.06"] = {
		"The north is still lost. Every Alliance map has a gray stretch where a kingdom used to be, and nobody has had the heart to redraw it.",
		"Lordaeron was the heart of the old Alliance. Now the maps keep its name out of habit, and the dead keep the rest.",
	},
	["faction.horde.muse.01"] = {
		"The old Horde was a fist someone else had closed. This one, for better or worse, closes its own hand.",
		"In the human kingdoms they remember the old Horde, and they're right to. This one is trying to be something else, and that's harder than any war.",
		"Once the Horde was a weapon in someone else's hand. Now it has to learn to be a people, and nobody teaches that.",
	},
	["faction.horde.muse.02"] = {
		"The Alliance has shinier armor. We have louder drums. I know which one I'd rather hear coming.",
		"Let them polish their armor. A Horde drum carries further than any shine.",
		"Their armor gleams; our drums boom. Only one of those still works in the dark.",
	},
	["faction.horde.muse.03"] = {
		"The Horde doesn't ask where you were born. It asks whether you'll stand when it counts.",
		"Nobody in the Horde cares where you came from, only whether you hold when the line bends.",
		"For the Horde. Not because I was told to say it: because I've seen who stands beside me when I do.",
	},
	["faction.horde.muse.04"] = {
		"Wherever the Horde has a camp, there's a fire with room for one more. Not always a warm welcome, but always the fire.",
		"The camps of the Horde don't all look alike, but each has a fire and somebody stirring a pot over it. I'm grateful for both.",
		"Not every Horde fire greets me warmly. Every one of them lets me sit down beside it.",
	},
	["faction.horde.muse.05"] = {
		"Not everyone in the Horde loves everyone else in the Horde. We keep the peace anyway; that is the work, and it's never finished.",
		"Orc and Forsaken, troll and tauren: some of those friendships are only a truce with good manners. Truces count.",
	},
	["faction.horde.muse.06"] = {
		"drums a Horde marching beat on {g:his|her} thigh with two fingers, without seeming to notice.",
		"falls into the stride of a Horde war drum that nobody else can hear.",
	},
	["faction.horde.muse.07"] = {
		"Our Warchief grew up in chains in a human fortress. Maybe that's why he spent so long breaking other people's.",
		"A Warchief who was once a slave. Whatever else the Horde is, it is led by someone who knows what a chain weighs.",
	},
	["mood.city.muse.01"] = {
		"In a city nobody looks at you twice. After the wild, I can't decide if that's a rest or an insult.",
		"Hundreds of people, and not one of them needs anything from me. Strange how restful that is, and how lonely.",
	},
	["mood.city.muse.02"] = {
		"Some folk here have never left the city. Everything they know about the wild, they heard from people like me, and we exaggerate.",
		"Half this crowd has never slept anywhere but a bed. I envy them a little, and pity them a little more.",
	},
	["mood.city.muse.03"] = {
		"steps aside to let a hurried knot of townsfolk pass, and stands a moment amid the voices of a city going about its business.",
		"pauses in the middle of the crowd, letting a hundred voices wash past, none of them speaking to {g:him|her}.",
	},
	["mood.city.subzone_enter.01"] = {
		"slows on entering {subzone}, where the crowd changes and so does the smell of the air.",
		"walks into {subzone} and reads it the way city folk do: who is selling, who is watching, who is in a hurry.",
		"turns into {subzone}, one more corner of the city with its own noises and its own small business.",
	},
	["mood.dark.landmark.01"] = {
		"{landmark}. In a land like this, every name on the map is a small lantern somebody refused to put out.",
		"{landmark}. Somebody held on to this place and gave it a name, gloom or no gloom. That counts for something.",
	},
	["mood.dark.muse.01"] = {
		"The quiet here isn't empty. It's listening.",
		"Something about this place keeps my voice low, though no one has asked me to lower it.",
		"Even the air seems to wait here, as if something hasn't decided about me yet.",
	},
	["mood.dark.muse.02"] = {
		"I don't like this place, and I've a feeling the place has opinions about me too.",
		"Whistling helps. Not much, but in a place like this I'll take not much.",
	},
	["mood.dark.muse.03"] = {
		"glances back over {g:his|her} shoulder for the third time, and finds nothing there, again.",
		"stops, listens to a silence that seems too careful, and only then moves on.",
	},
	["mood.desert.muse.01"] = {
		"Every mouthful of water counts here. I've started hearing it slosh in the waterskin like a song I can't stop humming.",
		"Out here water stops being a thing and becomes a thought. I think it often.",
		"I ration the water and count the swallows. Dry land teaches arithmetic faster than any tutor.",
	},
	["mood.desert.muse.02"] = {
		"shakes the dust from one boot, then the other, knowing perfectly well it will be back within a dozen steps.",
		"spits out a mouthful of dust and walks on, as if that settled the argument.",
		"pulls a scarf higher over the mouth and lets the dry, dusty air rasp at whatever skin is left uncovered.",
	},
	["mood.desert.subzone_enter.01"] = {
		"{subzone}. Dust with a name on it.",
		"Here's {subzone}: the same dust, under a new name.",
	},
	["mood.fire.muse.01"] = {
		"Heat from every side, as if the ground itself were breathing on me.",
		"No shelter worth the name here. The heat breathes up from below as much as it bears down from above.",
		"Every breath tastes scorched. My throat has stopped complaining; it knows nobody's listening.",
	},
	["mood.fire.muse.02"] = {
		"Nothing grows here, nothing's cool, and everything wants a fight. Charming.",
		"If I'd wanted to be roasted, I'd have stood closer to a cook.",
	},
	["mood.fire.muse.03"] = {
		"lifts a hand before {g:his|her} face against the heat, as if that could hold it back.",
		"squints into the shimmer of the scorching air, and keeps to the cooler side of every rock.",
	},
	["mood.fire.subzone_enter.01"] = {
		"{subzone}. Hotter, if that's possible, and a little redder.",
		"Another name on scorched ground: {subzone}. It burns the same as the last one.",
	},
	["mood.jungle.muse.01"] = {
		"Everything here is growing, eating or hiding, and most of it is doing two at once.",
		"So much green that my eyes stop seeing it. Then a leaf moves the wrong way, and they wake right up.",
		"The jungle never stops. Something in it is always being born, and something always being swallowed.",
	},
	["mood.jungle.muse.02"] = {
		"slaps at something on {g:his|her} neck and checks the palm. Nothing there. Something was, though.",
		"pushes a curtain of vines aside and waits a breath before stepping through, listening to the wet, busy noise of the jungle.",
		"wipes the damp from {g:his|her} face for the tenth time, with no hope of it being the last.",
	},
	["mood.jungle.subzone_enter.01"] = {
		"{subzone}. Under all this green there's supposed to be a path.",
		"{subzone}, apparently. I'll take the jungle's word for it.",
	},
	["mood.plague.muse.01"] = {
		"This land belonged to a kingdom once. Now it belongs to the plague, and the plague keeps nothing tidy.",
		"People lived in this country, planted fields, argued over boundaries. The sickness took all of it and left only the outlines.",
		"A whole kingdom, and the plague went through it like damp through cloth.",
	},
	["mood.plague.muse.02"] = {
		"steps around something on the ground without looking at it too closely.",
		"gives a wide berth to a dark stain on the earth, and walks on without a second look.",
	},
	["mood.plague.muse.03"] = {
		"Don't touch anything. Don't eat anything. Don't trust anything that's lying still.",
		"Rules for this place: drink only what you brought, and assume the dead are only resting.",
	},
	["mood.plague.subzone_enter.01"] = {
		"{subzone}. Even here, the plague has left its fingerprints.",
		"{subzone}. The sickness has been here too; you can smell it in everything.",
	},
	["mood.plains.landmark.01"] = {
		"{landmark}. A few roofs in the middle of all this open land. Out here, that counts as a fortress.",
		"{landmark}. After so much grass and wind, any roof at all looks like a kindness.",
	},
	["mood.plains.muse.01"] = {
		"Open land. I can see trouble coming from a long way off, and trouble can see me just as well.",
		"Nowhere to hide out here, and that cuts both ways. Whatever is watching me, I'll see it first, or second.",
		"The grass hides nothing taller than a hare. That's a comfort, until I remember how tall I am.",
	},
	["mood.plains.muse.02"] = {
		"Grass to the knees and road to the horizon. Good walking country.",
		"Wide land, wide sky, and a road that doesn't seem in a hurry to end. I like it.",
		"Look at all this room. A body could walk for days and never bump into a wall.",
	},
	["mood.plains.muse.03"] = {
		"lets the wind push at {g:his|her} back for a while, and walks with it rather than against it.",
		"stops to watch the wind run across the grass in long silver waves, then walks on.",
		"turns {g:his|her} face into the wind that sweeps the open land, and lets it tug at hair and cloak.",
	},
	["mood.plains.muse.04"] = {
		"The horizon is so far off here that a whole day's walk hardly seems to move it.",
		"So much sky over so much land. Out here I feel my size, and it isn't much.",
	},
	["mood.plains.subzone_enter.01"] = {
		"{subzone}. More grass, more sky, and a new name to hang on them.",
		"Into {subzone}. Out here the borders are only names; the grass doesn't notice them.",
		"{subzone}. The wind got here before me, as it does everywhere on this open land.",
	},
	["race.dwarf.muse.001"] = {
		"Under Ironforge the Great Forge is roaring this very moment. I can almost feel the heat of it on the back of my neck.",
		"Wherever I stand, part of me still hears the Great Forge breathing, deep inside the mountain.",
		"The Great Forge never goes out. It's a comfort, knowing that, wherever the road has put me.",
	},
	["race.dwarf.muse.002"] = {
		"Too much sky up there. A proper ceiling of rock never hurt anybody.",
		"Open sky is fine for birds and elves. I like a roof I could knock on with my knuckles.",
		"Nobody in Ironforge ever had to look up and wonder what the weather had in mind.",
	},
	["race.dwarf.muse.003"] = {
		"The Explorers' League swears our beginnings are carved in some forgotten rock. I'd give a good deal to read that first line.",
		"Brann and his diggers are hunting for the story of how the dwarves were made. Strange, to be a riddle to yourself.",
		"Whoever shaped the first of us did it with patience. You can tell from the stubbornness they left in.",
	},
	["race.dwarf.muse.004"] = {
		"Rams. Stubborn, smelly, bad-tempered beasts. I miss them more than I'd ever tell one to its face.",
		"Any beast that climbs a cliff and tries to bite you on the way up is a proper mount. I mean the rams of Dun Morogh, naturally.",
		"Say what you like about rams: not one of them ever asked me where we were going.",
	},
	["race.dwarf.muse.005"] = {
		"Bronzebeard, Wildhammer, Dark Iron: one people under one mountain, once. Every dwarf still carries a splinter of that quarrel.",
		"We were a single kin before the hammers turned on each other. Some cracks no forge can weld shut.",
		"To the scholars the War of the Three Hammers is a chapter. To us it's a family table with chairs nobody sits in.",
	},
	["race.dwarf.muse.006"] = {
		"squints at the stitching of {g:his|her} own boots with a craftsman's frown, the way every dwarf is taught to judge a piece of work.",
		"tests the weight of {g:his|her} pack in one hand, frowning like a smith weighing an ingot.",
		"hums something low and tuneless, the kind of hum that carries well down a mine shaft.",
	},
	["race.dwarf.muse.007"] = {
		"King Magni sits the High Seat as if the throne had been carved around him. Say what you like, the mountain feels steadier with him in it.",
		"Magni Bronzebeard laughs louder than any king I've heard of, and drinks like a miner. A king like that you can respect without pretending.",
		"A king who knows the weight of a hammer. Whatever else they say of Magni, nobody calls him soft-handed.",
	},
	["race.dwarf.muse.008"] = {
		"Since Gnomeregan fell, Ironforge rattles and whistles with gnomish contraptions. I grumble about it, but the place would feel empty without them now.",
		"Tinker Town clanks without pause these days. Our little neighbors lost their home; the least we could do was lend them a corner of ours.",
		"The gnomes took a corner of Ironforge and filled it with whistles and sparks. Odd lodgers. Good ones, mostly.",
	},
	["race.dwarf.muse.009"] = {
		"Copper smells of old coins, tin of nothing much, and iron of honest work. Any dwarf could tell you that blindfolded.",
		"Put a lump of ore in my hand in the dark and I'll tell you what it is. That's not a gift, that's a childhood.",
		"Dwarf children learn the names of the seams before the names of the stars. Seems the right order to me.",
	},
	["race.dwarf.muse.010"] = {
		"Stubborn? I prefer 'built to last'. Same as the mountain.",
		"Folk call us stubborn. We just see no point in changing our minds when we were right the first time.",
		"Bend like a reed? No, thank you. Reeds don't hold up roofs.",
	},
	["race.dwarf.subzone_enter.001"] = {
		"{subzone}. Let's see what the ground here is made of.",
		"{subzone}. Decent footing, at least. A dwarf notices these things first.",
		"{subzone}. I'd wager there's a seam of something worth having under all this.",
	},
	["race.gnome.muse.001"] = {
		"Gnomeregan is still down there, all its lights and gears, full of troggs and poison. I try not to picture the workshops.",
		"The finest city ever built, and we had to leave it to the troggs and the fallout. Every gnome still carries its blueprint in their head.",
		"Under Dun Morogh the great gears are still turning, for nobody at all.",
	},
	["race.gnome.muse.002"] = {
		"Every great invention starts with a small explosion. Some of mine never got past that stage.",
		"Rule one of tinkering: keep your eyebrows somewhere safe.",
		"Seven brilliant ideas this week. Only four caught fire, which is a personal record.",
	},
	["race.gnome.muse.003"] = {
		"High Tinker Mekkatorque swears we'll take Gnomeregan back. I believe him, mostly on the good days.",
		"Mekkatorque has plans for retaking the city. Mekkatorque always has plans; that's rather the point of him.",
		"One day the Exiles will march home under Mekkatorque's banner. I keep my tools oiled for it.",
	},
	["race.gnome.muse.004"] = {
		"Clouds, tides, the way leaves change color: all clockwork, if you look long enough. Clockwork I can't open, which is maddening.",
		"Everything in this world works by some rule. I just haven't found where they keep the schematics.",
		"A waterfall is just a very large, very badly regulated pipe. Beautiful, though. I'll grant it that much.",
	},
	["race.gnome.muse.005"] = {
		"pulls a small screwdriver from a pocket, turns it over thoughtfully, and puts it back without using it.",
		"scribbles a quick diagram in the margin of something, then squints at it as if it had answered back.",
		"counts something off on {g:his|her} fingers, loses track, and starts again with visible enthusiasm.",
	},
	["race.gnome.muse.006"] = {
		"The dwarves gave us Tinker Town when we had nothing. Their halls are too big and their ale too strong, and I'll never stop being grateful.",
		"Ironforge took us in with soot on our faces and nothing in our pockets. A gnome remembers a kindness like that.",
		"We're guests in a dwarven mountain now. Gracious hosts, enormous furniture.",
	},
	["race.gnome.muse.007"] = {
		"Not everyone got out of Gnomeregan. Some are still in there, changed by the poison, and nobody likes to finish that sentence.",
		"Thermaplugg told the High Tinker the radiation was the only way. Some advice you pay for with a whole city.",
		"When I hear a gnome laugh too loudly, I sometimes wonder whom they left behind in those dim halls.",
	},
	["race.gnome.muse.008"] = {
		"A mechanostrider never tires, never bites, and never eats your lunch. Rams, take note.",
		"Give me two legs of good steel and a gyroscope over any beast with opinions.",
		"Anyone can ride a horse. Riding a mechanostrider takes calibration.",
	},
	["race.gnome.muse.009"] = {
		"The world was built for taller folk. Fine. I'll rebuild the bits I need.",
		"Big people solve problems by lifting them. We solve them by thinking underneath them.",
		"Being small means the whole world is a little uphill. Good for the legs, and better for the mind.",
	},
	["race.gnome.muse.010"] = {
		"In Gnomeregan there was always a hum: fans, pumps, a thousand engines. Silence still makes me check whether something's broken.",
		"I grew up with engines humming in the walls. Quiet places feel to me like a machine that has stopped.",
		"Few places hum the way home did. I keep listening for the city's machines the way others listen for birds.",
	},
	["race.gnome.subzone_enter.001"] = {
		"looks around {subzone} with bright, measuring eyes, as if already sketching improvements.",
		"pauses at the edge of {subzone}, head tilted, like a tinker listening to an engine.",
		"takes in {subzone} with quick little glances, filing every detail away for later.",
	},
	["race.human.muse.001"] = {
		"King Varian set out for a meeting of peace and vanished on the way. Every rumor about him is a little worse than the last.",
		"A kingdom with an empty throne and a young prince waiting beside it. I wonder whether Anduin sleeps well.",
		"The king is alive somewhere, or he isn't. Either way, Stormwind has learned to hold its breath.",
	},
	["race.human.muse.002"] = {
		"Wheat in the wind, a cart on the road, a dog barking at nothing. That's the whole of a good life, and it's rarer than gold.",
		"I never thought I'd miss the smell of a hayloft. Then again, I never thought I'd end up this far from one.",
		"Somebody is always plowing in Elwynn. It's a comfort, knowing the furrows keep coming whether I'm there or not.",
	},
	["race.human.muse.003"] = {
		"Lordaeron was the brightest of the human kingdoms. Now its fields grow nothing but the restless dead.",
		"The old soldiers speak of Lordaeron's capital as a city of white stone and bells. I will never see it as they did.",
		"The north fell to the plague faster than anyone believed a kingdom could fall. People still lower their voices when they say 'Lordaeron'.",
	},
	["race.human.muse.004"] = {
		"Stormwind's walls were raised by honest masons who never got paid. Now look at Westfall. Pay your builders: that's all my politics.",
		"They rebuilt Stormwind in white stone and forgot the bill. The Defias remember it for them.",
		"A city of fine walls and unpaid wages. You'd think the nobles had never heard of interest.",
	},
	["race.human.muse.005"] = {
		"The Light was in every village I knew: a chapel, a candle in a window, an old priest's tired voice. Whatever I believe now, I carry that much.",
		"Some days I'm not sure what I believe. Then I think of the hush inside Northshire Abbey, and something in me stands up straighter.",
		"Humans light candles against everything: grief, cold, fear, the dark. It's not much. It has never been nothing.",
	},
	["race.human.muse.006"] = {
		"glances at the horizon the way farmers do, reading the sky for tomorrow's work.",
		"squints at the clouds out of an old habit of Elwynn: will it hold, or won't it?",
		"rubs the back of {g:his|her} neck and stares into the distance, like someone working out how many furrows are left before supper.",
	},
	["race.human.muse.007"] = {
		"Elves have centuries, dwarves have their mountain. We humans get about sixty good years, so we tend to hurry.",
		"Short lives, big plans. That's humans for you.",
		"We don't get much time, so we build things that outlast us. Walls, roads, stories for the children.",
	},
	["race.human.muse.008"] = {
		"Bolvar Fordragon holds the realm together with both hands and no crown. I don't envy him a single hour of it.",
		"A regent does a king's work with none of a king's thanks. Lord Fordragon looks more tired every year.",
		"Stormwind is ruled by borrowed authority and a great deal of hope. So far, it's holding.",
	},
	["race.human.muse.009"] = {
		"Our elders remember the Horde burning Stormwind the first time. I only know the stories, but the stories are enough to keep me watchful.",
		"Twice the orcs came, and twice we rebuilt. People still argue about what that ought to teach us.",
		"Some call the internment camps a mercy, some call them a mistake. Everyone agrees they settled nothing.",
	},
	["race.human.muse.010"] = {
		"What I'd give for a bowl of stew at the Lion's Pride and a long evening of bad gossip.",
		"Everything I know about people, I learned in the common room of a village inn.",
		"Some Goldshire innkeeper is telling the same old joke right now. I'd laugh at it, too.",
	},
	["race.human.subzone_enter.001"] = {
		"{subzone}. Somebody lived here once, or someday will. Humans leave a mark wherever they stop long enough.",
		"{subzone}. I wonder who named it, and whether they'd still know the place.",
		"{subzone}. In Stormwind there's a map with this name on it, and a clerk who's never seen the place.",
	},
	["race.nightelf.muse.001"] = {
		"Since Nordrassil gave up its strength at Hyjal, the years count for us too. I still catch myself planning centuries ahead.",
		"We traded our endless years to stop the Legion at the World Tree. A fair price, I think. I am still learning how to pay it.",
		"Mortal. The word sits strangely in my mouth, like a language I never meant to learn.",
	},
	["race.nightelf.muse.002"] = {
		"Teldrassil is beautiful, and young, and grown without the blessing the first tree had. Some druids will not meet your eyes if you ask about it.",
		"A tree planted in hope and in haste. I love Teldrassil, but I listen to it the way one listens to a cough.",
		"Our new home rests in the boughs of a tree that never knew the blessing of the Aspects. We do not speak of that at table.",
	},
	["race.nightelf.muse.003"] = {
		"Elune does not raise her voice. I feel her the way one feels a friend reading quietly over one's shoulder.",
		"To me Elune lives in every silver thing: a river, an old coin, the eye of an owl.",
		"When I am weary I think of the moonwells of home, still and silver, and something in me grows still as well.",
	},
	["race.nightelf.muse.004"] = {
		"You younger races rush so. Sit a moment; the world will still be here.",
		"Everything is urgent to those who count their lives in decades. Forgive me if I walk slowly.",
		"Patience is not idleness. It is having watched how things usually turn out.",
	},
	["race.nightelf.muse.005"] = {
		"Our own forebears drew the Legion into this world through the Well of Eternity. Kaldorei memory is long, and it does not forget even when it would like to.",
		"The Highborne were the brightest of us, and they nearly ended everything. I have been wary of bright things ever since.",
		"When the old ones speak of the Sundering, they do not raise their voices. Some memories are too heavy to lift that high.",
	},
	["race.nightelf.muse.006"] = {
		"stands so still for a moment that a passing bird might take {g:him|her} for a sapling.",
		"listens with the patience of the old forests, head tilted toward some sound only {g:he|she} seems to catch.",
		"moves without a sound, out of a habit older than most kingdoms of this world.",
	},
	["race.nightelf.muse.007"] = {
		"Darnassus: white stone among the branches, the Temple of the Moon, the slow talk of owls. I carry it like a seed in my pocket.",
		"In Darnassus no one hurries, and even the fountains seem to think before they speak.",
		"I miss the quiet of Darnassus, where even an argument is carried on in soft voices.",
	},
	["race.nightelf.muse.008"] = {
		"Malfurion walks the Emerald Dream while the rest of us keep the waking world. I wonder what he would make of it, if he opened his eyes.",
		"The great archdruid sleeps, and the High Priestess keeps watch without him. Some burdens are shared even across a dream.",
		"Our druids answer to the Dream and our Sentinels to the moon. Between them, the forest has two keepers and one heart.",
	},
	["race.nightelf.muse.009"] = {
		"Centuries of my people's practice, and still no one has taught a human to walk quietly.",
		"Dwarves dig, gnomes tinker, humans build walls. We plant something and wait. It works better than it sounds.",
		"Some call us aloof. We are simply waiting to see whether you will still be here in a century.",
	},
	["race.nightelf.muse.010"] = {
		"The orcs cut Ashenvale for their fires. A tree that took three centuries falls in an afternoon, and the axe never learns what it ended.",
		"Every felled tree in Ashenvale is a page torn from a book my people were still reading.",
		"Some of my people count the orc camps in Ashenvale the way others count debts. I understand them, even when I wish I did not.",
	},
	["race.nightelf.subzone_enter.001"] = {
		"{subzone}. The land remembers older names than this one. I wonder which it prefers.",
		"{subzone}. I listen before I look; a place says the most in its first silence.",
		"{subzone}. Every name is a new cloak on an old body. I try to see the body.",
	},
	["race.orc.muse.001"] = {
		"In the camps the worst was never the walls. It was the long gray tiredness, and the days nobody bothered to count.",
		"I remember orcs in the camps staring at nothing for hours. When I feel that stillness creeping up on me, I get moving.",
		"The camps taught a whole people to sit and wait. I have done enough sitting for one life.",
	},
	["race.orc.muse.002"] = {
		"Old orcs still talk about the day the spirits answered a shaman again. Some of them weep in the telling.",
		"We forgot the elements once, and spoke to demons instead. The spirits took us back anyway. I try to be worth that.",
		"Earth, fire, water, air, and the ancestors over all. Simple, the old shamans say. We were fools to need it explained twice.",
	},
	["race.orc.muse.003"] = {
		"Humans think orcs only grunt. We also shout, sing, and complain about the food.",
		"Zug zug. Yes, that's a word. No, I won't explain it to you.",
	},
	["race.orc.muse.004"] = {
		"There is a hunger in our blood that was put there, not born there. Some days I feel it stir. I do not feed it.",
		"Our grandfathers' eyes burned red with a gift that was a leash. Mine are clear, and I mean to keep them that way.",
	},
	["race.orc.muse.005"] = {
		"Thrall grew up a slave among humans and still came back to us as a chieftain. If he managed that, I can make something of myself.",
		"The Warchief could have hated everyone. He chose to build instead. I think of that when my temper rises.",
		"Durotar bears the name of Thrall's father. A son naming a land for a father he never knew: a whole people's story is in that.",
	},
	["race.orc.muse.006"] = {
		"Honor is not a thing you win. It is a thing you keep, every day, like the edge on a blade.",
		"Strength anyone can find. Honor you have to carry, and it gets heavier when nobody is looking.",
		"Win dirty and you have only won. Win clean and you have something to tell your children.",
	},
	["race.orc.muse.007"] = {
		"rolls {g:his|her} shoulders and cracks {g:his|her} knuckles one by one, an old ritual before thinking about anything hard.",
		"squats by the nearest stone and drags a thumb through the dust, as if checking whether it is red.",
		"hums a low tune of the clans under {g:his|her} breath, almost without noticing.",
	},
	["race.orc.muse.008"] = {
		"The old ones of the clans had hands like leather and laughs like rockslides. Ask any orc: the laugh is what stays.",
		"The elders say an orc is three things: a clan, a word, and a fire to come back to. The clans are scattered now. The other two are still mine to keep.",
	},
	["race.orc.muse.009"] = {
		"Lok'tar ogar. Victory or death. Most days I would settle for victory and a hot meal.",
		"Victory or death, the old cry says. I prefer the first, but I won't run from the second.",
	},
	["race.orc.muse.010"] = {
		"Green lands make me wary. Too soft. Ground that easy to live on always has someone else's name on it.",
		"I trust dry country. You know where the water is, because you had to fight for it.",
	},
	["race.orc.muse.011"] = {
		"Peace is fine. I just keep my weapon sharp in case peace changes its mind.",
		"Everyone expects an orc to kick the door in. Sometimes I knock, just to see their faces.",
		"An orc's patience is a short fuse. Short, but it does burn all the way down in the end.",
	},
	["race.orc.muse.012"] = {
		"Grom Hellscream drank the demon's blood first, and in the end it was he who killed the demon. The shame and its answer, in a single orc.",
		"Hellscream's death freed us from the blood curse. Every free breath an orc takes owes him something, whatever he did before.",
	},
	["race.orc.subzone_enter.001"] = {
		"{subzone}. Before anything else I note the high ground and the way out. The camps taught me that much.",
		"{subzone}. The first thing an orc looks for: where the water is, and who is guarding it.",
		"{subzone}. I walk in as if I owned a share of it. An old habit of a people who once owned nothing.",
	},
	["race.scourge.muse.001"] = {
		"I had a farm once, near Brill I think. Barley, a crooked fence, a dog that barked at crows. I can see the fence. I can't see the faces.",
		"There was a family. I know it the way you know a word is on the tip of your tongue. I have decided not to chase it.",
		"Some of us go looking for the houses we lived in. I went once. Someone else's washing on the line. I did not knock.",
	},
	["race.scourge.muse.002"] = {
		"For a time someone else moved my hands. Now every step I take is mine, even the wrong ones. Especially the wrong ones.",
		"The first time I chose some small thing, which road to take, I stood at the fork for a long while. Choosing was new again.",
		"The Dark Lady broke the leash. What we do with the slack is up to each of us.",
	},
	["race.scourge.muse.003"] = {
		"People ask if it hurts. Only my pride, and that went first.",
		"I don't sleep. I lie down and think about everything I ever did wrong. Like the living, only with more time.",
		"The children of the living run when they see me. Fair enough. I'd have run too, at their age.",
	},
	["race.scourge.muse.004"] = {
		"The living look at me and see what might happen to them. I can't blame them. I look at myself and see what did.",
		"Fear in their eyes, every time. I used to be the one who was afraid. I am not sure which is lonelier.",
		"A mother pulls her child behind her when I pass. I don't take it badly. I would have done the same, once.",
	},
	["race.scourge.muse.005"] = {
		"Sun on my face used to mean something: warmth, a long day, a reason to sit down. Now it is only light.",
		"I catch myself breathing out of habit, the way you keep turning a ring you no longer wear.",
		"My hands still remember a trade I can't name. Sometimes they make the motions on their own, and I let them.",
	},
	["race.scourge.muse.006"] = {
		"flexes stiff fingers until the joints click, then stares at them a moment as if they belonged to someone else.",
		"turns toward some far sound and listens with an unblinking stillness no living body could hold, then walks on.",
		"draws {g:his|her} cloak tighter, not against the cold, but against the looks of the living.",
	},
	["race.scourge.muse.007"] = {
		"The Dark Lady gave us back our minds. I spend mine as I see fit, and some of it on her.",
		"Sylvanas lost as much as any of us. Perhaps that is why she understands what we are.",
	},
	["race.scourge.muse.008"] = {
		"Every ghoul shambling through the Plaguelands could have been me. Each one I put down is a debt paid to the one I almost became.",
		"The Scourge still holds most of what was Lordaeron. I want it back. Not to live in, only so that it belongs to no master.",
	},
	["race.scourge.muse.009"] = {
		"Nobody waits for me anywhere. It is a strange kind of freedom, and on most days I can carry it.",
		"No letters, no hearth expecting me, no one counting the days. Some would call that bleak. I call it quiet.",
	},
	["race.scourge.muse.010"] = {
		"A little embalming oil and I'm good as new. Well. Good as old.",
		"I smell of herbs and grave dirt. You get used to it. Others don't, but I do.",
	},
	["race.scourge.muse.011"] = {
		"I don't say my old name aloud. It belonged to someone with a heartbeat, and I would rather leave it with them.",
		"Whoever I was in Lordaeron can stay there. I did not come back from death to carry their baggage.",
	},
	["race.scourge.muse.012"] = {
		"The orcs watch me as if I might fall apart at the table. I might. It's part of my charm.",
		"The tauren are kind to us. Too kind, at times. They keep offering me soup.",
	},
	["race.scourge.subzone_enter.001"] = {
		"{subzone}. I take it in slowly. No one hurries a dead traveler, and I don't hurry myself.",
		"{subzone}. I learn the name and keep it. I have lost too many names already.",
		"{subzone}. Another place that never asked for someone like me. It will manage.",
	},
	["race.tauren.muse.001"] = {
		"When I close my eyes I still hear the grass of Mulgore hissing against the legs of the kodo. Some sounds you carry inside, like water in a skin.",
		"I was still a calf when I first saw the plains from the top of the bluffs. I have walked far since, and nothing has looked as wide.",
		"The smell of a herd: warm dung and crushed sage. I would not have called it sweet once. Now I would trade a good deal for one breath of it.",
	},
	["race.tauren.muse.002"] = {
		"Smaller folk keep asking if I tread heavily. Only on their toes, and only by accident.",
		"Every chair I sit in creaks a warning. I choose to take it as a greeting.",
	},
	["race.tauren.muse.003"] = {
		"An'she by day, Mu'sha by night: the two eyes of the Earth Mother, so I was taught. Wherever I go, one of them is open.",
		"The sun and the moon are the Earth Mother's eyes. I have never once walked unwatched, and mostly that is a comfort.",
		"The elders say the sun and the moon are her eyes. Then there is no road so far that she cannot see me on it.",
	},
	["race.tauren.muse.004"] = {
		"By the fire the elders braid feathers into the young ones' manes and say the name of every ancestor as they go. I have forgotten half the names I was given. The ancestors, I think, are patient.",
		"Somewhere in me the old voices keep counting my line, name after name. When I am quiet enough, I can almost hear them at it.",
	},
	["race.tauren.muse.005"] = {
		"A hunter of my people thanks the beast before the knife and again after. I have never found a reason to stop.",
		"The hunt takes a life, so we owe it words. A plainstrider, a kodo, a prairie wolf: each one has had its thanks from me.",
		"Kill clean, waste nothing, say thank you. That was the whole lesson, and it took me years to learn it.",
	},
	["race.tauren.muse.006"] = {
		"My people measured a journey in days of walking and in sleeps under the open sky. Everyone else seems to measure it in complaints.",
		"A tauren never runs from a fight. We just walk away from it very fast, which is quite different.",
	},
	["race.tauren.muse.007"] = {
		"Wherever the road takes me, part of me is still standing on the mesa, watching the grass turn silver when the wind rolls it over.",
		"Below the bluffs of Mulgore there is a spot where the air smells of water and stone. I go back there in my head more often than I admit.",
	},
	["race.tauren.muse.008"] = {
		"presses a broad palm flat against the earth for a moment, as if making sure that someone below is still there.",
		"lowers {g:his|her} great head and murmurs a few words to the earth, the way one greets an elder in passing.",
		"stamps one hoof, softly, and waits a moment, as though for an answer from the ground.",
	},
	["race.tauren.muse.009"] = {
		"When the centaur had us hemmed in, it was orcs who came to our side. I do not forget a debt like that, and neither does Cairne.",
		"Cairne gave his hand to Thrall when few would have. The more roads I walk, the more wisdom I see in that hand.",
	},
	["race.tauren.muse.010"] = {
		"Patience is a thing of the plains. Grass is in no hurry, and in the end it covers everything.",
		"My people learned to wait out the dry season. Most troubles are only a dry season with a louder voice.",
		"The young ones always want to run ahead. The old kodo at the back of the herd gets there just the same.",
	},
	["race.tauren.muse.011"] = {
		"When I go back to the earth, I hope I go back light. Not much owed, not much taken, a few good tracks left behind me.",
		"One day the grass will grow up through my bones, and that is as it should be. Until then, I mean to walk.",
		"My people do not fear the return to the earth. We only ask to reach it having lived properly first.",
	},
	["race.tauren.muse.012"] = {
		"My horns have knocked down more lanterns than enemies. I have stopped apologizing to innkeepers; they only sigh now.",
		"Ducking under lintels, minding my horns on low branches. The world was not measured for a tauren, but I fit myself into it.",
	},
	["race.tauren.subzone_enter.001"] = {
		"{subzone}. I read this place the way my people read any stretch of land: water first, then shelter, then who else is watching.",
		"{subzone}. I lift my nose to the air before my eyes have finished looking. An old habit of the plains.",
		"{subzone}. I test the ground with a hoof, as if it might tell me its name in its own way.",
	},
	["race.troll.muse.001"] = {
		"The Echo Isles sit just across the water from Sen'jin, close enough to see. That is the worst of it: close enough to see.",
		"I can name every cove of the islands we lost. Saying the names keeps them ours a little, until we take them back.",
		"Our isles are still out there in the sea, full of the wrong voices now. Vol'jin says patience. I am trying, mon.",
	},
	["race.troll.muse.002"] = {
		"Trolls grow back what they lose, mon. Mostly. Don't go testing it on my ears.",
		"Cut a troll and it closes up. Insult a troll, and that one stays open a long, long time.",
	},
	["race.troll.muse.003"] = {
		"The loa have no love for prayers said in a hurry. Better a small offering made slowly than a big one tossed over the shoulder.",
		"Old trolls keep a little bowl for the loa beside every fire. When I make camp, I find myself looking for something to put in it.",
		"A loa remembers who fed it and who forgot. I try to stay on the right side of that memory.",
	},
	["race.troll.muse.004"] = {
		"The witch doctors taught me early: every charm has a price, and the price is never written on it.",
		"Voodoo is no game for children. It is a bargain, and the other side of the bargain is always listening.",
		"Every charm my people make is half a promise. The loa keep their half; we had better keep ours.",
	},
	["race.troll.muse.005"] = {
		"Our people once raised cities of stone in the jungle that made every other race look small. Remember that, when they look at us sideways.",
		"The troll empires are older than the kingdoms of men. Sometimes we forget it. The others forget it always.",
		"Before the humans had a single wall, trolls had temples. I'm not bragging, mon. Just keeping the count straight.",
	},
	["race.troll.muse.006"] = {
		"Sen'jin saw the way out of the dark for us, and did not live to walk it. We gave the village his name. It is not enough, but it is something.",
		"Our old leader died on the way to the new land. Every fire in Sen'jin Village burns a little in his name.",
	},
	["race.troll.muse.007"] = {
		"Too cold, too dry, too many walls. Anywhere outside the jungle has something wrong with it, mon.",
		"You know what this world needs? More hammocks. Fewer people telling me to get up.",
		"I tried sleeping in a bed once. Too flat. Give me a hammock and a bit of breeze.",
	},
	["race.troll.muse.008"] = {
		"rolls a small carved bone between {g:his|her} fingers, an old habit from the islands, then tucks it away again.",
		"touches the beads at {g:his|her} neck one by one, lips moving, as though counting debts owed in another world.",
		"squats low on {g:his|her} heels in the troll way and studies the ground, tusks lifted, listening to something.",
	},
	["race.troll.muse.009"] = {
		"Thrall pulled us out of the sea when we had nothing. Vol'jin keeps that debt, and so do I.",
		"The Darkspear owe the Horde a life. We pay it gladly, and we stay Darkspear while we do.",
	},
	["race.troll.muse.010"] = {
		"Some mornings I wake listening for parrots and surf. Then I remember where I am, and listen to whatever there is instead.",
		"The jungle had a thousand noises, all at once. Quiet places make me itch. Too much room for thinking.",
	},
	["race.troll.muse.011"] = {
		"We trolls stand up straight when we feel like it. Most days we don't feel like it, mon.",
		"Hunched? I'm saving my height for special occasions.",
	},
	["race.troll.muse.012"] = {
		"Zalazane sits on our isles and plays king with the minds of our own people. One day I want to stand on that sand and watch him answer for it.",
		"A witch doctor of our own tribe made puppets of our kin. That cut goes deeper than any spear.",
	},
	["race.troll.subzone_enter.001"] = {
		"{subzone}. Hm. Not as good as the islands, mon, but nothing is.",
		"{subzone}. Let's see what the spirits of this place make of me.",
		"{subzone}. I'll leave a bead somewhere, so the place knows a Darkspear passed through.",
	},
	["band.b10_20.muse.01"] = {
		"I've started drawing my own map on the back of a supply list. The roads are crooked, the distances are wrong, and I'm proud of every line.",
		"I know which crossroads have an honest signpost and which ones lie. That's worth more than any coin I've earned so far.",
		"The roads are starting to make sense. Not all of them. Enough that I've stopped asking every guard for directions.",
	},
	["band.b10_20.muse.02"] = {
		"I can now rate every inn bed by how many springs stab you in the back. It's a skill.",
		"Never trust a stew you can't see the bottom of. I learned that one the hard way.",
		"Rule of the road: eat when there's food, sleep when there's a roof, and never ask what went into the pie.",
	},
	["band.b10_20.muse.03"] = {
		"tightens the straps of a pack that has grown heavier with every week on the road, and does not seem to mind.",
		"checks the soles of {g:his|her} boots, frowns at a fresh hole worn by the road, and walks on anyway.",
		"pauses to look back along the road, as if surprised at how much of it already lies behind.",
	},
	["band.b10_20.muse.04"] = {
		"Some things out there are still too big for me. I've learned to see them before they see me, and to take the long way round.",
		"I can tell now, at a glance, which beasts are my size and which are not. The second kind gets a wide berth and my respect.",
	},
	["band.b1_10.muse.01"] = {
		"Eleven coppers, a patched bag and half a loaf going hard. I've counted twice. It is still eleven.",
		"I keep my coins in three different pockets, so one bad day can only take a third of my fortune. A small fortune, granted.",
		"Every copper already has a job: bread, a bandage, a bed under a roof. Not one of them gets to sit idle.",
	},
	["band.b1_10.muse.02"] = {
		"Every howl out there sounds like it knows my name. And where I sleep.",
		"I can handle one wolf. Two, if they're polite and take turns.",
	},
	["band.b20_30.muse.01"] = {
		"Places that were names on a map are turning into places I've slept. The world is shrinking, and somehow getting bigger at the same time.",
		"I can walk a whole day now and still have something left for a fight at the end of it. I remember when a single hill emptied me.",
		"The road no longer frightens me. It's the things that use it I keep an eye on.",
	},
	["band.b20_30.muse.02"] = {
		"Every tavern has a fellow who swears he saw a dragon. I've stopped buying him drinks, but I still listen.",
		"Half the rumors on the road are lies, and the other half are worse. I'm learning which half to run from.",
		"Heard a story about a cave full of gold yesterday. Heard it about the cave before that, too. Caves are popular.",
	},
	["band.b20_30.muse.03"] = {
		"mends a torn strap by the roadside with quick, sure stitches, hands that were clumsy at this not long ago.",
		"cleans, checks and packs away {g:his|her} gear without looking, hands moving the way a cook's do in a familiar kitchen.",
		"reads the sky, the dust on the road and the tracks beside it, and picks a path with a steady hand on the map.",
	},
	["band.b20_30.muse.04"] = {
		"The road is full of strangers who share a fire for an hour and are gone at first light. I've stopped expecting to see them again.",
		"Faces at the inns change faster than I can learn them. I keep the kind ones, and let the rest blur.",
		"On the road you pass people going the other way. I sometimes wonder what they're leaving behind, and whether it's what I'm walking toward.",
	},
	["band.b20_30.muse.05"] = {
		"I'm not the one who started down this road. That one would have turned around at the first ditch.",
		"At some point along the way I stopped being a beginner. Nobody told me; I just noticed.",
		"There's still a lot I can't do. But the list of what I can is longer than it was.",
	},
	["band.b30_40.muse.01"] = {
		"I have a scar for most of the lessons I've learned. The ones without scars I keep forgetting.",
		"My body keeps a better record of these years than any journal. Every knot and scar has a date I could almost name.",
		"Old scars ache before a hard day. I've stopped resenting them; they're the most honest advisers I have.",
	},
	["band.b30_40.muse.02"] = {
		"My map has been folded and refolded so often the creases have become roads of their own.",
		"I had to buy a bigger map. The old one ran out of edges.",
		"There are fewer blank spaces on my map than there used to be, and I'm not sure I like it.",
	},
	["band.b30_40.muse.03"] = {
		"rolls a stiff shoulder until it gives a dull crack, a sound {g:he|she} seems to know well.",
		"runs a thumb along an old scar on the back of one hand, without seeming to notice doing it.",
		"eases down to sit with the slow care of someone whose knees have carried a great deal of road.",
	},
	["band.b30_40.muse.04"] = {
		"I can tell within a few words now whether a job is worth taking. The trick is believing myself.",
		"When someone says a task is simple, I ask what happened to the last one who tried. It saves time.",
		"I've learned to read the pause before a request. The longer it is, the worse the job.",
	},
	["band.b30_40.muse.05"] = {
		"The world is wider than anyone told me, and harder, and I'm still glad I set out to see it.",
		"I've walked far enough to know there's no end to it. That isn't a complaint.",
		"Every ridge I climb shows me three more. Some days that's a burden. Today it's a promise.",
	},
	["band.b30_40.muse.06"] = {
		"Fear hasn't left me. It's just learned to wait its turn, like a dog by the door.",
		"I still get afraid. The difference now is that I know exactly how afraid, and of what.",
	},
	["band.b30_40.muse.07"] = {
		"You can spot the green ones a mile off. Clean boots, loud voices, no idea.",
		"Sometimes I see youngsters charge a beast twice their size, and I almost envy them. Almost.",
	},
	["band.b40_50.muse.01"] = {
		"The farther I go, the more I see what's wrong with the world. Not the small wrongs anymore. The kind that need years and armies.",
		"I used to think the dangers ended somewhere. Now I know they just get older and better organized.",
		"The troubles people bring me have changed. Less 'wolves in the field', more 'something has woken under the hills'.",
	},
	["band.b40_50.muse.02"] = {
		"I don't jump at noises anymore. I just work out how far away they are and how much they'll cost me.",
		"Everything out here wants to eat me, curse me or rob me. I find that oddly reassuring. At least it's honest.",
	},
	["band.b40_50.muse.03"] = {
		"pauses on a rise and studies the land ahead the way a merchant studies a ledger, weighing what it will cost.",
		"checks every buckle and strap with slow, thorough fingers, a ritual older than whatever fear first taught it.",
		"stands a long while at the edge of the path, listening, before taking a single step farther.",
	},
	["band.b40_50.muse.04"] = {
		"People step aside for me on the road now. I can't decide whether it's respect or the look on my face.",
		"Folk I've never met know of me. Not much, and not always right, but they know. It's a heavier coat than it sounds.",
		"Strangers ask for my help as if I were a wall they could lean on. I hope I'm as solid as they think.",
	},
	["band.b40_50.muse.05"] = {
		"The longer I walk, the less I need to prove. It's the only thing that's gotten lighter.",
		"I fight less to win now and more to finish. There's a difference, and it took years to find it.",
		"Courage is cheap at the start of the road. Out here you pay for it daily, and you keep paying.",
	},
	["band.b40_50.muse.06"] = {
		"I've been away so long that home has become a direction more than a place, a door I point at without seeing.",
		"I used to know every crack in my own doorstep. Now the doorsteps I know best belong to inns.",
		"If someone asked me where I'm from, I'd still give the old answer and picture the old door. I'm just less sure it's true.",
	},
	["band.b40_50.muse.07"] = {
		"My joints predict trouble better than any seer. Today they say 'everything', which is unhelpful.",
		"I've reached the stage of adventuring where I check the exits before I check the menu.",
		"I've collected enough near misses to fill a book. Nobody would believe half of it, and the other half I'd rather forget.",
	},
	["band.b50_60.muse.01"] = {
		"There are fewer and fewer people who can teach me anything. The rest the world will have to teach me itself, and it's a harsh tutor.",
		"Trainers look at me differently now. Less like a pupil, more like a colleague who still owes them a little coin.",
		"I've reached the stretch of road where advice runs thin. From here on, I mostly learn by surviving.",
	},
	["band.b50_60.muse.02"] = {
		"The top is close enough to see. It looks smaller than I imagined, and higher.",
		"Almost there. And I'm starting to understand that 'there' is just a better view of the work left to do.",
		"Near the end of the climb. Funny: I thought I'd feel finished. I just feel ready.",
	},
	["band.b50_60.muse.03"] = {
		"looks out over the land with the quiet attention of someone who has walked most of it, and remembers what each road cost.",
		"tests every strap and seam by habit, the way old sailors check knots they tied themselves.",
		"sits back against a stone and lets the silence stretch, unhurried, like someone who has earned it many times over.",
	},
	["band.b50_60.muse.04"] = {
		"The troubles I hear of now aren't a farmer's troubles. They have names that make old soldiers lower their voices.",
		"There are things in this world that could end it, and I've started to feel it falls to me, among others, to stand in their way.",
		"Talk around the fires has changed. Nobody asks me about bandits anymore. They ask about the old terrible things, and whether they can be stopped.",
	},
	["band.b50_60.muse.05"] = {
		"I've been called a hero twice this week. Both times by someone who wanted something. Heroism has a market price.",
		"My gear has more patches than original stitching, and I wouldn't trade it for a king's wardrobe.",
		"Young ones keep asking how I got this far. I tell them: mostly by not dying, and a little by luck.",
	},
	["band.b50_60.muse.06"] = {
		"Lately I wonder what I'll do when there's nothing left to grow into. Hold the line, probably. Somebody has to.",
		"The end of the climb is near, and I keep thinking of the ones still at the bottom. Someone should leave the path in better shape than they found it.",
		"I don't need to get much stronger. I need to get wiser about what the strength is for.",
	},
	["band.b50_60.muse.07"] = {
		"The quiet moments are rarer now, and better. I've learned to sit inside them without reaching for the next thing.",
		"Odd how the closer I get to the top, the more I notice small things. A bird on a fence. Bread still warm.",
		"I've seen enough wonders that most don't stop me anymore. The ones that still do, I keep like coins in a pocket.",
	},
	["band.b60.muse.01"] = {
		"There is nothing left above me to reach for. That leaves the harder question: what to hold onto, and for whom.",
		"I spent years becoming strong enough. Now I spend my days deciding what's worth that strength.",
		"The climbing is over. What remains is choosing where to stand, and standing there.",
	},
	["band.b60.muse.02"] = {
		"I've looked at things that would empty a tavern if I described them. I don't. Some memories are better kept than shared.",
		"I've felt the heat of the world's worst dangers up close. Ordinary fears have a hard time getting my attention now.",
		"Most people never see what lies at the edges of the world. I have, and I sleep less for it, and fight better.",
	},
	["band.b60.muse.03"] = {
		"Advice for the young ones: choose your fights the way you'd choose a horse. Slowly, and never just because it looked at you.",
		"When the youngsters ask me the secret, I tell them there isn't one. There's only the next road, and not quitting on it.",
		"Keep your gear mended and your temper well short of its end. That's most of what I know, and it took me years.",
	},
	["band.b60.muse.04"] = {
		"watches the road with the patience of someone who no longer needs to hurry anywhere to prove anything.",
		"stands quite still, and those passing by keep a little farther off than the path requires.",
		"rests one hand on a weathered pack, the gesture of someone who has carried it to the edges of the world and home again.",
	},
	["band.b60.muse.05"] = {
		"When I help someone now, it isn't for the coin or the practice. It's a favor to the world, passed on from whoever helped me early on.",
		"I don't need the rewards anymore. I take the work because a strong arm left idle is a kind of theft.",
		"Every small job I take now repays a debt to the people who once did the same for a beginner who couldn't pay.",
	},
	["band.b60.muse.06"] = {
		"I've reached the point where wolves cross the road to avoid me. It took long enough.",
		"People keep calling me a legend. Legends don't queue at the blacksmith. I do, and the wolves still eye my boots.",
		"Being at the top mostly means everyone expects you to know the way. I just walk confidently and hope the wolves agree.",
	},
	["band.b60.muse.07"] = {
		"I'm as strong as I'll ever be. It turns out strength doesn't make the world any lighter; it only lets you carry more of it.",
		"The view from the top is wide, and it shows every place that still needs help. I liked not knowing, a little.",
		"Hardly anything I meet surprises me now. Sometimes I miss that: being surprised.",
	},
	["band.b60.muse.08"] = {
		"Let the worst this world can raise come for us. I've spent a lifetime getting ready.",
		"Whatever rises next will find someone waiting. I've had time to prepare.",
		"I didn't climb this far to sit at the top admiring the view. There's work at every edge of the map.",
	},
	["landmark.w02.01"] = {
		"{landmark}. Rope, tar, fish and a dozen languages on the quay. Ports belong to whoever is passing through.",
		"{landmark}. Every ship tied up here is a road I could take. I won't, but it's good to know they're there.",
		"{landmark}: gulls, crates and loud dockhands. Whatever the world sells, it comes ashore somewhere like this.",
	},
	["landmark.w02.02"] = {
		"stops at the edge of {landmark} long enough to take its measure, then goes in.",
		"reads the name of {landmark} the way travelers do, and adds it to the long list carried in {g:his|her} head.",
		"slows on reaching {landmark}, as one does at any place that someone took the trouble to name.",
	},
	["mood.coast.landmark.w02.01"] = {
		"comes into {landmark} with the wind off the water tugging at {g:his|her} cloak.",
		"reaches {landmark}, where every board and rope seems to smell of brine.",
	},
	["mood.coast.muse.w02.01"] = {
		"The tide comes in, the tide goes out. It has kept that appointment longer than anyone has kept a promise.",
		"Salt on my lips and the long hush of the waves. The sea talks without pause and says the same thing, and it never bores me.",
		"Out there the water runs to the edge of the world. Some days that feels like freedom; some days like a wall.",
	},
	["mood.coast.muse.w02.02"] = {
		"lifts {g:his|her} head at the smell of salt carried in from the shore, and breathes it in slowly.",
		"listens to the far sound of the surf, keeping time with it for a few steps without meaning to.",
	},
	["mood.coast.subzone_enter.w02.01"] = {
		"{subzone}. You can hear the sea from here. Everything near the water ends up sounding a bit like it.",
		"{subzone}. Smells of salt and wet wood. I don't mind it.",
		"{subzone}. Gulls overhead, arguing as usual. Some things are the same on every shore.",
	},
	["mood.deep.muse.w02.01"] = {
		"No sky down here, only the weight of everything above. I try not to think about how much that is.",
		"The dark in these places is thick enough to lean on. I don't; something might lean back.",
	},
	["mood.desert.landmark.w02.01"] = {
		"{landmark}. Shade, water, other people. In dry country a name on the map promises those three, or should.",
		"{landmark}. Whatever else it is, it's a place to stand out of the dust for a while.",
	},
	["mood.desert.subzone_enter.w02.01"] = {
		"{subzone}. Grit in the corners of my eyes before I've taken ten steps.",
		"{subzone}. Sand underfoot, sand on the wind, and sand in my boots by evening.",
	},
	["mood.fire.landmark.w02.01"] = {
		"{landmark}. Somebody keeps a name alive on this scorched ground. Stubbornness like that deserves a nod.",
		"{landmark}. Here even a name feels hot to the touch.",
	},
	["mood.fire.subzone_enter.w02.01"] = {
		"steps into {subzone} with a hand raised against the heat coming off the rock.",
		"squints into {subzone}, where the air shimmers and tastes faintly of ash.",
	},
	["mood.forest.landmark.w02.01"] = {
		"comes into {landmark} beneath the branches, where the trees seem to have stepped back just enough to make room.",
		"reaches {landmark} and notices how the place keeps to the shade, as if it had asked the forest's leave to stand.",
	},
	["mood.forest.muse.w02.01"] = {
		"Under the trees the hours pass differently. I've stopped counting them and started counting birdcalls.",
		"The leaves keep up a steady whisper overhead. It isn't about me, and that's the restful part.",
	},
	["mood.forest.muse.w02.02"] = {
		"Every tree looks like the last one. If anyone spots a path, do shout.",
		"Roots, ferns, more roots. Lovely, as long as you don't need to go anywhere in a straight line.",
	},
	["mood.forest.subzone_enter.w02.01"] = {
		"{subzone}. Keep your voice down; the woods carry it farther than you'd think.",
		"{subzone}. Mind the roots. They were here first, and they won't move for anyone.",
	},
	["mood.jungle.landmark.w02.01"] = {
		"{landmark}. Somebody carved a place out of all this green and keeps on carving. Stop for a season and the vines would take it back.",
		"{landmark}. People, roofs, voices: a little island of order, with the jungle leaning in at the edges.",
	},
	["mood.mountain.landmark.w02.01"] = {
		"{landmark}. People who settle in the mountains settle to last. You can tell by how they've dug in.",
		"{landmark}. A level patch of ground, claimed and kept. Up here that's no small thing.",
	},
	["mood.mountain.muse.w02.01"] = {
		"Up here the ground is all slope and argument. Every step has to be won, and then won again.",
		"The ridges stand around like old soldiers who've forgotten the war but not the post.",
	},
	["mood.mountain.muse.w02.02"] = {
		"waits for a trickle of loose stones to finish rattling down the slope, then picks a firmer line upward.",
		"leans into the climb, one hand on the rock, and allows {g:himself|herself} a single look back at how far the path has come.",
	},
	["mood.mountain.subzone_enter.w02.01"] = {
		"{subzone}. Watch your footing; the loose rock here has opinions.",
		"{subzone}. Uphill, naturally. It's always uphill.",
	},
	["mood.plague.landmark.w02.01"] = {
		"{landmark}. Every name in this country has two stories now: what it was, and what the sickness made of it.",
		"{landmark}. I look for signs of the living here, and count them carefully when I find them.",
	},
	["mood.plague.subzone_enter.w02.01"] = {
		"{subzone}. Breathe through your sleeve, and touch nothing that's growing.",
		"{subzone}. Keep moving, and don't drink from anything here.",
	},
	["mood.plains.landmark.w02.01"] = {
		"reaches {landmark}, the first thing in a long while to stand taller than the grass.",
		"comes upon {landmark} after a long stretch of open grass, and slows to look around.",
	},
	["mood.plains.subzone_enter.w02.01"] = {
		"crests a low rise into {subzone} and stops to take in the long, open run of the land.",
		"walks into {subzone} with the wind at {g:his|her} back, the grass bending ahead as if to show the way.",
	},
	["mood.ruin.muse.w02.01"] = {
		"Someone cut these stones to fit, and fitted them, and was sure they'd stand forever. Half of them still do.",
		"A doorway with no house left around it: you see a lot of those in a place like this. I always want to knock.",
		"Every ruin is an argument someone lost with time. Time doesn't gloat; it just keeps going.",
	},
	["mood.ruin.subzone_enter.w02.01"] = {
		"{subzone}. I pick my way over tumbled stone, guessing where the walls once ran.",
		"{subzone}. I step around the fallen pieces with care, as if they still belonged to someone.",
	},
	["mood.snow.muse.w02.01"] = {
		"The cold gets in at the cuffs and the collar, patient as a thief. I keep moving; it's the one coin it can't take.",
		"My breath hangs in front of me, white and slow. Out here even breathing leaves a trace.",
		"Everything here is white and so still that my own footsteps sound rude.",
	},
	["mood.snow.subzone_enter.w02.01"] = {
		"stamps the cold out of {g:his|her} feet on reaching {subzone}, breath smoking in the frozen air.",
		"pulls {g:his|her} collar up on entering {subzone}, where the wind comes off the ice with nothing to slow it.",
	},
	["mood.swamp.muse.w02.01"] = {
		"Damp in the boots, damp in the bedroll, damp in the bread. The marsh shares everything it has.",
		"Something croaks, something splashes, something buzzes at my ear. The swamp is never quiet; it only changes the subject.",
		"I've stopped trying to stay dry. Now I just try to stay ahead of the leeches.",
	},
	["mood.swamp.subzone_enter.w02.01"] = {
		"{subzone}. Firm ground looks scarce. I'll take what there is and be grateful.",
		"{subzone}. Reeds, mud and a smell of old water. The marsh just keeps changing its name.",
	},
	["muse.clear.w02.01"] = {
		"Not a cloud anywhere. The sky has nothing to hide, and for once neither do I.",
		"Clear skies. Distances look shorter than they are; my legs will find out the truth.",
	},
	["muse.clear.w02.02"] = {
		"Clear weather. No excuses today.",
		"Fine, clear air. Even my boots feel lighter.",
	},
	["muse.clear.w02.03"] = {
		"glances up at the open sky, finds nothing there to worry about, and walks on a little easier.",
		"breathes the clean, clear air deeply, as if storing some of it away for worse days.",
	},
	["muse.day.w02.01"] = {
		"Middle of the day, and half of it already spent on walking. The other half has plans of its own, I'm sure.",
		"Good daylight for getting things done. I just have to decide which things, and in what order.",
		"Daylight makes everything look manageable. I'll enjoy that while it lasts.",
	},
	["muse.day.w02.02"] = {
		"Broad daylight. Whatever's out there can see me coming. Fair enough; I can see it too.",
		"Daytime. Honest working hours. Let's earn our bread.",
	},
	["muse.fog.w02.01"] = {
		"The fog swallows everything past a dozen paces. The world has shrunk to a small gray room, and I'm in it.",
		"Shapes loom out of the fog and turn out to be rocks or trees, mostly. It's the 'mostly' that keeps me awake.",
	},
	["muse.rain.w02.01"] = {
		"Rain drums on my hood and finds the gap at the back of my neck, as it always does.",
		"The rain turns every road into a stream and every thought into a slow one. Fine. I'll think slowly.",
	},
	["muse.rain.w02.02"] = {
		"Rain. Wonderful. My pack weighs twice as much and smells like a wet dog.",
		"If this keeps up I'll need a boat, not boots.",
	},
	["muse.sand.w02.01"] = {
		"Sand in the teeth, sand in the boots. I'll be shaking this storm out of my clothes for a week.",
		"Can't see ten paces in this. Cover your face and keep walking; the wind gets bored eventually.",
	},
	["muse.snow.w02.01"] = {
		"stops to watch the snow come down, one slow flake after another, and for a moment forgets to be cold.",
		"brushes the snow from {g:his|her} shoulders, knowing full well the sky will put it back.",
	},
	["race.dwarf.landmark.w02.01"] = {
		"{landmark}. Before anything else I look at what it stands on and what it's built from. The rest is decoration.",
		"{landmark}. Somebody picked this ground and dug in. A dwarf respects that before anything else.",
	},
	["race.dwarf.subzone_enter.w02.01"] = {
		"stamps once on the ground of {subzone}, like someone knocking to hear what lies underneath.",
		"crouches to rub a pinch of the soil of {subzone} between finger and thumb, reading it like a ledger.",
	},
	["race.gnome.landmark.w02.01"] = {
		"{landmark}. I start counting things: posts, doors, chimneys, whatever's there. Numbers make any place less strange.",
		"{landmark}. Not a single gear in sight, and yet it works. People are remarkable machines.",
	},
	["race.gnome.subzone_enter.w02.01"] = {
		"{subzone}! Right. Mental note: map it later, properly, with measurements.",
		"{subzone}. Interesting. Everything is interesting, but this is interesting in a whole other way.",
	},
	["race.human.landmark.w02.01"] = {
		"{landmark}. Somebody named this place and meant it to last. Humans do that wherever they stop; it's half our history.",
		"{landmark}. I try to picture who walked here first, and who gave it the name. A habit of my people: wanting to know whose a place is.",
	},
	["race.human.subzone_enter.w02.01"] = {
		"slows on entering {subzone}, looking about for a signpost, a farmhouse, anything that says people mean to stay here.",
		"steps into {subzone} and squares {g:his|her} shoulders, the way a traveler does before knocking on a stranger's door.",
	},
	["race.nightelf.landmark.w02.01"] = {
		"{landmark}. I listen for the oldest thing in this place; it is rarely the walls.",
		"{landmark}. Names change faster than the land beneath them. I greet the land first, then the name.",
	},
	["race.nightelf.subzone_enter.w02.01"] = {
		"{subzone}. Quietly, now. Let it see me before it hears me.",
		"{subzone}. Ishnu-alah, whoever keeps this place.",
	},
	["race.orc.landmark.w02.01"] = {
		"{landmark}. Before I rest anywhere, I find the weak side of it. Old lessons stay.",
		"{landmark}. I note who holds it and how well. A place held badly is only a place waiting for its next owner.",
	},
	["race.orc.subzone_enter.w02.01"] = {
		"rolls {g:his|her} neck on entering {subzone}, eyes moving from cover to cover, as orcs learn early to do.",
		"sniffs the air of {subzone} and spits to one side, as if to say the place will do.",
	},
	["race.scourge.landmark.w02.01"] = {
		"{landmark}. The living built this to keep something out. I try not to take it personally.",
		"{landmark}. I walk in slowly. Places like this remember what I used to be, even if I don't.",
	},
	["race.scourge.subzone_enter.w02.01"] = {
		"{subzone}. Nobody has screamed yet. Promising.",
		"{subzone}. Quiet. I like quiet; it doesn't flinch.",
	},
	["race.tauren.landmark.w02.01"] = {
		"{landmark}. I walk in slowly, as one walks into another family's camp: eyes low, hands open.",
		"{landmark}. Every place with a name has a heart. I look for it: a fire, a well, an old one telling stories.",
	},
	["race.tauren.subzone_enter.w02.01"] = {
		"pauses on the edge of {subzone}, nostrils wide, letting the wind say what it knows before taking another step.",
		"sets each hoof down with care on entering {subzone}, as if the ground deserved to be asked first.",
	},
	["race.troll.landmark.w02.01"] = {
		"{landmark}. I leave a little something by the entrance for the spirits of the place. Costs nothing; saves trouble.",
		"{landmark}. Every place with a name has a spirit that answers to it. I greet it quietly; a polite word never hurt anyone.",
	},
	["race.troll.subzone_enter.w02.01"] = {
		"{subzone}. Ears open. Every place has its spirits, and they all want to know who's walking in.",
		"{subzone}. I hum a little going in. Spirits like a song better than a stranger sneaking.",
	},
	["subzone_enter.clear.w02.01"] = {
		"{subzone}, and not a cloud over it. You can see every corner from here.",
		"{subzone}. Clear air. Good: whatever's here, I'll see it coming.",
	},
	["subzone_enter.day.w02.01"] = {
		"{subzone}, in good daylight. I take a long look; the light won't always be this generous.",
		"{subzone}. Daylight, and no hurry. For once the hours seem to be on my side.",
	},
	["muse.w04.001"] = {
		"Left foot, right foot. Most of the great journeys I've heard of were only that, told with more drums.",
		"Strip any heroic march of its songs and what's left is somebody putting one boot in front of the other.",
		"Every road anyone ever sang about was walked one ordinary step after another.",
	},
	["muse.w04.002"] = {
		"The road never asks where I'm going. It's the only one that doesn't.",
		"Nobody on the road wants to know why. It just runs on ahead and lets me follow.",
	},
	["muse.w04.003"] = {
		"Shortcuts. Every one I've taken was a long way round with a better name.",
		"No more shortcuts. They're just detours that lie about their length.",
		"A shortcut is a promise made by somebody who never walked it.",
	},
	["muse.w04.004"] = {
		"Some roads in this world are older than any kingdom that claims them. They'll outlast the next few, too.",
		"Kingdoms put their names on roads the way children carve a table. The road never notices.",
		"Under every road there's an older road, and under that, someone's first footprints.",
	},
	["muse.w04.005"] = {
		"I don't need to know where it ends. I need to know the next mile, and I usually do.",
		"The far end can stay a mystery. The next stretch is all I've ever really had to manage.",
	},
	["muse.w04.006"] = {
		"Walking is easy. It's the stopping that hurts, when the legs remember what they've been doing.",
		"The legs never complain while they're moving. They save it all for the moment I stop.",
		"Keep going and the body forgets. Stand still and it hands over the whole bill.",
	},
	["muse.w04.007"] = {
		"looks back over {g:his|her} shoulder at the way behind, as if to measure it.",
		"casts a long look back the way {g:he|she} came, weighing the distance.",
	},
	["muse.w04.008"] = {
		"Half the faces I pass on the road I'll never see again. I've stopped finding that sad. Mostly.",
		"People met on the road are like pages of someone else's book. I read a line and hand it back.",
		"So many strangers, each going somewhere I'll never know. We pass like boats with no lanterns.",
	},
	["muse.w04.009"] = {
		"Right. Onward, then. The world won't walk itself.",
		"Come on. Nothing ever got any closer by being stared at.",
		"Up and moving. Distance doesn't shrink out of politeness.",
	},
	["muse.w04.010"] = {
		"Every map I've owned was drawn by someone who never had to walk it.",
		"Maps are lovely things. Flat, dry, and nothing on them ever bites.",
	},
	["muse.w04.011"] = {
		"There's always one more hill past the last one. I hope that never stops being true.",
		"The world keeps a spare horizon behind every horizon. Good. I'd hate to run out.",
	},
	["muse.w04.012"] = {
		"Find a pace you could keep all day, then keep it. That's most of what I know about travel.",
		"Never the fastest pace. The one you can hold till you arrive. The rest is detail.",
	},
	["muse.w04.017"] = {
		"hitches {g:his|her} pack higher on {g:his|her} back and listens to what rattles.",
		"shifts the weight of {g:his|her} pack from one shoulder to the other, frowning at the balance.",
		"pats down every pocket in turn, the way people do when they know exactly what's in them.",
	},
	["muse.w04.022"] = {
		"Nothing I cook on the road tastes of anything but smoke and hurry.",
		"Road food has one flavor, whatever goes in the pot: smoke, with a hint of being tired.",
	},
	["muse.w04.025"] = {
		"Eat when you can, drink when you can, sit when you can. The rest matters less than people say.",
		"First rule of the road: never pass up clean water. Second rule: see the first rule.",
	},
	["muse.w04.026"] = {
		"breaks a crust in two, considers both halves, and starts on the bigger one.",
		"fishes a heel of bread out of a pocket, inspects it for a long moment, and eats it anyway.",
		"chews on something tough with grim determination, jaw working like a millstone.",
	},
	["muse.w04.030"] = {
		"weighs {g:his|her} purse in one hand, sighs, and tucks it away again.",
		"tips a few coins into {g:his|her} palm, looks at them as if they had personally let {g:him|her} down, and puts them back.",
	},
	["muse.w04.044"] = {
		"pauses mid-step and listens, head tilted, until the moment passes.",
		"goes still for a breath, eyes moving, then slowly lets the air out.",
		"stops, listens to something only {g:he|she} seems to hear, and lets it go.",
	},
	["muse.w04.047"] = {
		"touches two fingers to {g:his|her} chest, a small private gesture that means something only to {g:him|her}.",
		"makes a small, quick sign over {g:his|her} heart, too small for anyone else to read.",
	},
	["muse.w04.054"] = {
		"rolls {g:his|her} shoulders until something in them gives a satisfying crack.",
		"stretches with a wince, testing each joint as if counting what's still in working order.",
		"works a stiff wrist in slow circles, jaw set.",
	},
	["muse.w04.057"] = {
		"Every stranger is carrying a story heavier than their pack. I can only ever guess at it.",
		"The people I pass all have somewhere to be and someone on their mind. It's humbling, if I let it be.",
	},
	["muse.w04.058"] = {
		"Nod to everyone on the road. Half will nod back, and you'll remember the other half.",
		"A nod costs nothing. I hand them out freely and a few come back.",
	},
	["muse.w04.081"] = {
		"I'm not lost. I'm thoroughly exploring the wrong direction.",
		"Lost? No. I'm conducting a very detailed survey of where I'm not supposed to be.",
		"I know exactly where I am. It's everywhere else that's gone missing.",
	},
	["muse.w04.119"] = {
		"Good company is worth a detour. Bad company is worth two.",
		"I'll walk an extra mile for good company, and two to avoid bad.",
	},
	["muse.w04.126"] = {
		"drums {g:his|her} fingers on {g:his|her} belt, keeping time to some tune nobody else can hear.",
		"taps out a rhythm against {g:his|her} thigh, lost in a song that never quite reaches {g:his|her} lips.",
	},
	["muse.w04.127"] = {
		"turns something small over and over in {g:his|her} fingers, not looking at it.",
		"stares at nothing for a while, thumb rubbing slowly along a strap.",
		"picks absently at a loose thread, eyes somewhere very far off.",
	},
	["muse.w04.128"] = {
		"takes a long breath in through the nose and lets it out slowly, as if setting something down.",
		"breathes out hard, and {g:his|her} shoulders drop an inch.",
		"draws a deep breath and holds it a moment before letting it go.",
	},
	["muse.w04.129"] = {
		"murmurs a list under {g:his|her} breath, ticking the items off on {g:his|her} fingers.",
		"counts something off on {g:his|her} fingers, frowns, and starts the count over.",
	},
	["muse.w04.130"] = {
		"scrapes something unpleasant off the sole of a boot, without looking too closely at what it is.",
		"inspects the sole of one boot, finds a new hole in it, and gives it a look of deep betrayal.",
		"lifts one boot, regards the state of it, and sets it down again with a weary grunt.",
	},
	["muse.w04.131"] = {
		"stays quiet for a long moment, as if listening to something very far away.",
		"falls silent, and the silence seems to suit {g:him|her}.",
		"lets the talk in {g:his|her} head run down, and keeps the quiet that is left.",
	},
	["muse.w04.132"] = {
		"mutters something unrepeatable at nothing in particular, and looks the better for it.",
		"says one short, rude word to the world in general, and seems to mean it fondly.",
	},
	["muse.w04.133"] = {
		"touches {g:his|her} weapon without looking, just to make sure it is where it should be.",
		"rests a hand on {g:his|her} weapon for a moment, the way some people touch a doorframe for luck.",
		"checks by feel that everything that should be within reach is within reach.",
	},
	["muse.w04.134"] = {
		"goes quiet, with the look of someone rereading an old letter only {g:he|she} can see.",
		"turns inward for a time, as though walking back down some road only {g:he|she} remembers.",
	},
	["muse.w04.135"] = {
		"sniffs at {g:his|her} own sleeve, grimaces, and visibly lowers {g:his|her} standards.",
		"catches {g:his|her} own scent, winces, and keeps a straight face with great dignity.",
	},
	["muse.w04.136"] = {
		"sits down for a moment with the deep sigh of someone who has earned it.",
		"lowers {g:himself|herself} down for a short rest, joints protesting all the way.",
		"eases down to rest a while, legs stretched out, boots crossed at the ankle.",
	},
	["muse.w04.137"] = {
		"fiddles with a stubborn buckle, humming tunelessly, until it finally gives in.",
		"wrestles briefly with a twisted strap and wins, by a narrow margin.",
		"tugs at a knot that won't come loose, mutters at it, and tries {g:his|her} teeth.",
	},
	["muse.w04.138"] = {
		"flexes {g:his|her} fingers one by one, as if checking that they all still answer.",
		"opens and closes {g:his|her} hands slowly, looking at them as if they belonged to a friend.",
	},
	["muse.w04.139"] = {
		"turns slowly in place, taking the measure of everything around {g:him|her}.",
		"looks this way and that with the unhurried attention of someone used to strange places.",
		"takes stock of the surroundings with one long, patient look.",
	},
	["muse.w04.144"] = {
		"takes a moment with no hurry in it at all, as though the world had agreed to wait.",
		"lets {g:his|her} shoulders fall and simply breathes, in no rush to be anywhere.",
	},
	["muse.w04.148"] = {
		"Plenty of road left. Plenty of me, too. Let's see which runs out first.",
		"A long way still to go. Good. I'm not finished either.",
		"The road isn't done with me, and I'm not done with it.",
	},
	["muse.w04.150"] = {
		"Good luck to everybody out there walking somewhere they'd rather not. I know the feeling.",
		"To everyone else on the road right now: keep your boots sound and your purse close.",
	},
	["muse.w04.151"] = {
		"To the road ahead, and to everyone who wore it smooth before me.",
		"My respects to the miles behind me. They were honest, if not kind.",
		"Here's to the ones who walked this world first and left the path for the rest of us.",
	},
	["race.dwarf.landmark.w08.001"] = {
		"{landmark}. Somebody gave this place a name. A dwarf would have carved it over the door, deep enough to outlast the carver.",
		"{landmark}. Names painted on boards fade. Names cut in stone stay. I wonder which kind this one is.",
		"{landmark}. Good. A place with a name usually has a roof, and a roof usually has a cellar.",
	},
	["race.dwarf.landmark.w08.002"] = {
		"stops before {landmark} and studies every detail the way a dwarf studies another's work: slowly, thoroughly, and keeping any verdict private.",
		"takes the measure of {landmark} with a long, unhurried stare, as though counting every stone.",
		"gives {landmark} a curt, respectful nod, the greeting a dwarf keeps for any place that bears a name.",
	},
	["race.dwarf.muse.w08.001"] = {
		"Every tavern outside Khaz Modan pours something it calls ale. I drink it out of courtesy and judge it out of habit.",
		"Ale brewed away from the mountain tastes of water that never had to fight its way up through rock. Polite, but thin.",
		"I've yet to meet a foreign brewer who understood that ale ought to be chewed a little.",
	},
	["race.dwarf.muse.w08.002"] = {
		"I can't walk past a wall without checking the mortar. Most of the world is held together with hope and mud.",
		"Whoever laid most of the walls in this world never had a dwarf looking over their shoulder. It shows in the joints.",
		"A crooked doorframe bothers me more than a hungry wolf. The wolf, at least, means what it does.",
	},
	["race.dwarf.muse.w08.003"] = {
		"tugs a loose braid back into order and ties it off with a quick, practiced twist.",
		"runs a thumb along a braid, finds a knot gone slack, and redoes it without looking.",
		"unpicks a braid that has worked itself loose and plaits it again, quick and tight, as dwarves have done for longer than anyone remembers.",
	},
	["race.dwarf.muse.w08.004"] = {
		"Put me in a cave with a lamp and a bit of quiet, and I'll be calmer than any king on any throne.",
		"Rock overhead, rock underfoot, and my own breath coming back off the walls. That's the nearest thing to peace a dwarf knows.",
		"Give me a low ceiling and thick walls. Others would call it cramped; a dwarf calls it being held.",
	},
	["race.dwarf.muse.w08.005"] = {
		"The Wildhammer cover themselves in tattoos and sleep beside gryphons at Aerie Peak. Kin, certainly. Whether they're sensible is another matter.",
		"A Wildhammer will tell you the mountain is a cage. A Bronzebeard will tell you the sky is a draft. We've had that argument for centuries.",
		"The Wildhammer left the deep halls for the cliffs of the Hinterlands. Every time I meet one, I can't decide whether to pity them or envy them.",
	},
	["race.dwarf.muse.w08.006"] = {
		"The Dark Iron are dwarves too. That's the part that sits worst. Same stubbornness, same skill, pointed the wrong way.",
		"Under Blackrock, dwarves of our own blood keep forges burning for a lord of fire. I'd sooner face a dragon. A dragon, at least, isn't family.",
		"Every dwarf child hears of the Dark Iron sooner or later and asks the same thing: why. Nobody has a good answer, only old ones.",
	},
	["race.dwarf.muse.w08.007"] = {
		"If a gnome tells me a thing is perfectly safe, I take two steps back. If a gnome says it's dangerous, I take ten.",
		"Fond as I am of gnomes, I never stand downwind of their workbenches. Fondness has limits, and eyebrows are slow to grow back.",
		"Gnomes solve a problem by adding a rocket. Dwarves solve it by adding a wall. Each of us thinks the other reckless.",
	},
	["race.dwarf.muse.w08.008"] = {
		"Humans build fast and die young, and somehow their cities still stand. I'll never quite understand the trick.",
		"A human calls a thing old when it has seen three kings. A dwarf would call it barely broken in.",
		"Humans are always in a hurry. With lives that short I can't blame them, but they could at least let the mortar set.",
	},
	["race.dwarf.muse.w08.009"] = {
		"Night elves live in trees and call it architecture. I've kept quiet about it. Mostly.",
		"Ten thousand years, the elves say, and not one proper cellar to show for it.",
		"An elf will tell you the trees remember. Ask whether they remember the woodcutters, and the conversation ends.",
	},
	["race.dwarf.muse.w08.010"] = {
		"Troggs crawl up from the deep places like rot out of a bad beam. Somebody has to keep knocking them back down, and it's usually a dwarf.",
		"Every dwarf learns to listen for scratching under the floor. Troggs never knock first.",
		"Below every mine, likely enough, a trogg is wondering what's above. A dwarf keeps a lamp burning for that reason alone.",
	},
	["race.dwarf.muse.w08.011"] = {
		"The Explorers' League talks of makers, of titans who shaped the world. Maybe so. I'd still want to see the tool marks.",
		"If the League is right and greater hands shaped us out of stone, then stubbornness was in the recipe. Nobody can fault us for it.",
		"Titans, the scholars say. I'm a dwarf: I'll believe it once I've held the proof and weighed it.",
	},
	["race.dwarf.muse.w08.012"] = {
		"Show me any mountain in this world and I'll find something to like about it. Show me a marsh and we'll talk.",
		"Mountains are honest. They don't pretend to be anything but a great deal of rock, and they don't move to suit you.",
		"Mountains don't flatter anyone. Climb one and you'll learn exactly how strong your legs are. I like that in a thing.",
	},
	["race.dwarf.muse.w08.013"] = {
		"Bad air in a shaft has a taste: flat, like a coin left in water. Every dwarf learns it before it's needed.",
		"Seasoned miners judge a tunnel by the way a lamp burns. A flame that leans means the tunnel has something to tell you.",
		"A miner's first lesson: never trust a quiet tunnel. The second: never trust a noisy one either.",
	},
	["race.dwarf.muse.w08.014"] = {
		"The Thandol Span crosses a gorge so deep you could drop a stone and finish a mug before you heard it land. Dwarves built it. Of course we did.",
		"Folk who cross the Thandol Span look down once and then keep their eyes on the far side. The dwarves who built it looked down every day.",
	},
	["race.dwarf.muse.w08.015"] = {
		"The elders speak of Grim Batol the way you'd speak of a friend who went bad: low voice, short sentences, and a change of subject.",
		"Grim Batol was a dwarven hold once. The Wildhammer left it, the stories say, because something in the stone had gone wrong. Dwarves don't give up stone lightly.",
	},
	["race.dwarf.muse.w08.016"] = {
		"The Stonewrought Dam holds back a whole loch, and it has held longer than most kingdoms. Whenever I need to trust something, I think of that dam.",
		"Humans ask why the dam in Loch Modan doesn't break. A dwarf asks why on earth it would.",
		"Water is patient, but stone is more patient still. The dam is the proof, and every dwarf in Loch Modan knows it.",
	},
	["race.dwarf.muse.w08.017"] = {
		"Short? I'm the right height. Everyone else simply overshot.",
		"Tall folk hit their heads on every beam. I've never once had that trouble, and I don't plan to start.",
		"Next to a gnome I'm tall. I make a point of standing next to gnomes.",
	},
	["race.dwarf.muse.w08.018"] = {
		"We dwarves can wait out nearly anything: a siege, a winter, a bad king. We're built the way a cellar is built, for the long dark.",
		"Hurry is for folk who think the mountain will move if they don't. It won't. Take the time to do it right.",
		"Dwarves don't hurry the stone. It was here first and will be here after; it deserves the courtesy.",
	},
	["race.dwarf.muse.w08.019"] = {
		"Forgiving, my people can manage. Forgetting is a separate trade, and none of us was ever apprenticed to it.",
		"I'm keeping a list. Every dwarf keeps one. Mine is shorter than most, which is either a sign of good character or of a poor memory.",
		"Ask a dwarf whether a grudge is a burden. You'll hear it's more like an heirloom: heavy, and kept polished.",
	},
	["race.dwarf.muse.w08.020"] = {
		"Miners in Khaz Modan say that when one of us dies far from home, a friend should carry a stone back in their place. I've never asked who checks.",
		"A dwarf who falls far from the mountain should have a stone carried home for them: so the miners of Khaz Modan say. I'd ask for a heavy one.",
	},
	["race.dwarf.muse.w08.021"] = {
		"Not every dwarf kneels to the Light. But every dwarf knows what it is to tend a fire that mustn't go out, and that's halfway to faith already.",
		"Some of my people pray, some of them swear, and in a tight spot most do both in the same breath.",
		"My people trust what they can hold. The Light is the one thing many of them trust without holding it, and woe to anyone who smiles about it.",
	},
	["race.dwarf.muse.w08.022"] = {
		"Haggling with goblins is like mining a seam that keeps moving. You get something, but never what you came for.",
		"A goblin's smile costs nothing. Everything after the smile costs double.",
		"Goblins and dwarves both love a good bargain. The difference is that a dwarf wants the other side to walk away happy too. Mostly.",
	},
	["race.dwarf.muse.w08.023"] = {
		"Dwarves invented half the ways there are to make a loud noise, and we're proud of every one of them.",
		"Black powder: the finest thing my people ever poured into a barrel that wasn't ale. The smoke is just a bonus.",
		"Ask a dwarf how much powder to use and the answer is always 'a bit more'.",
	},
	["race.dwarf.muse.w08.024"] = {
		"goes very still for a moment, head cocked, as if listening for the creak of a beam somewhere deep underground.",
		"lays a flat palm on the nearest solid surface and waits, like a miner feeling for the tremor of a distant pick.",
	},
	["race.dwarf.muse.w08.025"] = {
		"Kharanos and the Thunderbrew Distillery. If I ever go missing, look there first, and bring a cup.",
		"In Kharanos, right now, somebody is tapping a fresh cask of Thunderbrew, and I'm not there. The world is unjust.",
		"Thunderbrew from Kharanos, the dwarves say, is the second-best reason to come home. Nobody agrees on the first.",
	},
	["race.dwarf.muse.w08.026"] = {
		"Dun Morogh teaches you to carry the cold like a pack: you stop noticing it, and only notice when it's gone.",
		"Anyone raised in Dun Morogh knows the difference between cold and the cold that bites. Most of the world never gets past the first kind.",
		"Folk from warmer lands shiver at the mere name of Dun Morogh. A dwarf only hears 'home', and feels something warm in the chest.",
	},
	["race.dwarf.muse.w08.027"] = {
		"raises an empty hand as if lifting a mug to someone absent, then lowers it with a grunt.",
		"wipes {g:his|her} mouth with the back of a hand out of pure habit, though nothing has been drunk.",
		"taps two fingers on {g:his|her} belt where a tankard might hang, then remembers there is none and sighs.",
	},
	["race.dwarf.muse.w08.028"] = {
		"Any steady sound and my hands start keeping time, as if an anvil were waiting for them somewhere. Footsteps, a drip, a heartbeat.",
		"There's a forge rhythm in every dwarf, the smiths say: strike, breathe, strike. I catch myself walking to it.",
	},
	["race.dwarf.muse.w08.029"] = {
		"Give a dwarf bread, cheese and something dark to wash it down, and you'll have a friend until the plate's empty. Then you'll need more bread.",
		"Food on the road is food. Only in Khaz Modan does it stick to your ribs and stay there for the season.",
		"A dwarf judges an inn by its bread. Soft bread means a baker in a hurry, and a hurried baker is a warning.",
	},
	["race.dwarf.muse.w08.030"] = {
		"I see a crack in the rock and think: iron, maybe, or tin. A dwarf's mind never quite stops prospecting.",
		"A glint in the rock and my fingers itch. Copper, mica or a rich vein: you never know until you look closer, and a dwarf always looks closer.",
	},
	["race.dwarf.muse.w08.031"] = {
		"If I go quiet for too long, check whether I'm well. Dwarves are many things, and silent is rarely one of them.",
		"My people talk at the top of their lungs because they learned to talk over a forge. That's our excuse, and we're keeping it.",
		"Whispering is a skill dwarves have heard of. We just never saw the use of it.",
	},
	["race.dwarf.muse.w08.032"] = {
		"Dwarves and deep water get along the way stone does with it: we sink, and we don't complain.",
		"Boats. A floor that moves and a roof made of sky. I can't think of a worse house.",
		"Dwarves crossed seas when they had to, the elders say, and kissed the stone of the far shore on landing.",
	},
	["race.dwarf.muse.w08.033"] = {
		"Ironforge pledged its hammers to the Alliance when the orcs came, and it has never taken them back. A dwarf's word weighs more than most kings' gold.",
		"We stood with the humans in the Second War because the orcs were in our mountains. We stay with them because a promise doesn't rust.",
	},
	["race.dwarf.muse.w08.034"] = {
		"When the orcs held Khaz Modan, the elders say, they worked our mines and burned our woods for their war. Some debts the mountain hasn't stopped counting.",
		"The veterans who fought the Horde across Khaz Modan talk about it sparingly, and always with their fists closed.",
	},
	["race.dwarf.muse.w08.035"] = {
		"My legs are short and the world is wide. It evens out: I simply walk longer than anyone else.",
		"Every road in this world was measured by somebody with longer legs. I've stopped taking it personally.",
		"Long-legged folk stride; dwarves plod. Plodders get there in the end, and with more breath to spare.",
	},
	["race.dwarf.muse.w08.036"] = {
		"Smoke from the wrong wood reminds me how far I am from a proper coal fire. Pine spits; coal sings.",
		"Wood fires are pleasant enough, but they don't hold their heat. A dwarf misses coal the way others miss a voice.",
	},
	["race.dwarf.muse.w08.037"] = {
		"If it's worth making, it's worth making so it outlives you. That's the whole of dwarven wisdom; the rest is ale talk.",
		"Build it once, build it right, and let the grandchildren argue over who built it.",
		"Anything that wobbles was made by somebody who stopped too soon. A dwarf would sooner skip a meal than stop too soon.",
	},
	["race.dwarf.muse.w08.038"] = {
		"A bed is a bed, but a bedroll on stone is where a dwarf truly sleeps. Soft things make my back suspicious.",
		"Feather mattresses are a human invention, and the sign of a people with too much time and too few rocks.",
	},
	["race.dwarf.muse.w08.039"] = {
		"The Wildhammer bond with a gryphon for life, the story goes. Anyone who's watched a gryphon chew through a saddle strap knows what a life of patience that must be.",
		"A Wildhammer and a gryphon: two creatures who'd rather be up in the sky and argue with you from there.",
	},
	["race.dwarf.muse.w08.040"] = {
		"sniffs the air, frowning, as if trying to tell iron from tin by smell alone.",
		"picks up a pebble, turns it over, and pockets it with the air of someone who has seen promise in worse.",
		"kicks a loose stone, watches how it rolls, and makes a quiet note of the lay of the land.",
	},
	["race.dwarf.muse.w08.041"] = {
		"rolls {g:his|her} shoulders the way a dwarf does before lifting something heavy, though there is nothing to lift.",
		"cracks {g:his|her} knuckles one by one, unhurried, like a smith counting rivets.",
	},
	["race.dwarf.muse.w08.042"] = {
		"pats the pouch at {g:his|her} belt to hear the reassuring clink of coin, then nods, satisfied with the music.",
		"weighs {g:his|her} purse in one palm and counts the coins inside by heft alone, without opening it.",
	},
	["race.dwarf.muse.w08.043"] = {
		"A mug of stout cures nothing. It just makes the cure feel less urgent.",
		"Dwarven medicine: rest, red meat and a stout. If that fails, a second stout.",
		"Every injury feels smaller after a stout. The injury disagrees, but it's outvoted.",
	},
	["race.dwarf.muse.w08.044"] = {
		"Dwarves keep their histories the way they keep their halls: carved deep, so nobody can scrub them out. Even the parts we'd like to.",
		"Most dwarves can recite the deeds of a great-great-grandsire before the names of their neighbors. Priorities.",
	},
	["race.dwarf.muse.w08.045"] = {
		"You can tell a lot about folk by how they treat stone. Those who carve it with care usually treat their friends the same way.",
		"Granite forgives nothing and remembers every blow. I've known people like that. Good people, mostly, so long as you never hit them.",
	},
	["race.dwarf.muse.w08.046"] = {
		"In Ironforge there's a seat at a long table that stays warm for every dwarf on the road. That's what the mountain is for.",
		"However far I wander, the gate of Ironforge stands open for a dwarf. Knowing that makes the road lighter.",
		"Wherever I end up, there's a mountain that counts me as one of its own. Not every traveler can say as much.",
	},
	["race.dwarf.muse.w08.047"] = {
		"Wood. The whole world loves wood. It burns, it rots, it warps in the damp. Give me a lintel of granite and it'll stand ten generations.",
		"Trees are fine. Trees are lovely. But nobody ever dug anything worth keeping out of a tree.",
	},
	["race.dwarf.muse.w08.048"] = {
		"A dwarf doesn't run from trouble. We back away from it slowly, at a dignified pace, while working out how to hit it.",
		"Retreat is a word we keep in the language for visitors.",
		"Dwarves have a saying about running away. It's very short, and nobody would write it down.",
	},
	["race.dwarf.muse.w08.049"] = {
		"The world beyond the mountain is quieter than a dwarf expects. No hammers in the walls, no voices booming down a hall. It takes some getting used to.",
		"Away from the forges, silence grows thick enough to lean on. A dwarf has to whistle now and then, just to keep it honest.",
	},
	["race.dwarf.muse.w08.050"] = {
		"Gold is pretty, but it's soft. A dwarf respects iron more and admires gold in secret, like a bad habit.",
		"Folk think dwarves love gold. We love what gold buys: good ale, good steel and a long silence from creditors.",
	},
	["race.dwarf.muse.w08.051"] = {
		"Pound for pound, nothing in the Alliance outlifts a dwarf. Not a horse, not a cart, and certainly not an elf.",
		"Give a dwarf a keg and a flight of stairs and you'll see two talents at once: hauling, and complaining the whole way up.",
	},
	["race.dwarf.muse.w08.052"] = {
		"Stone carries sound farther than air. Put an ear to the rock and the world tells you what's coming: footsteps, water, sometimes worse.",
		"Miners say rock talks to those who listen low enough. I've only ever heard creaks, never words. Maybe I'm not listening low enough.",
	},
	["race.dwarf.muse.w08.053"] = {
		"Dwarves go gray slowly and complain about it quickly.",
		"Among dwarves a gray braid is a medal. Nobody earns one by sitting still.",
		"My people count age in gray hairs and good stories. The second count matters more.",
	},
	["race.dwarf.muse.w08.054"] = {
		"Whenever I pass a ruin I wonder whether the Explorers' League has been through. If not, I'm half tempted to take the notes myself.",
		"A tumbled wall, a carved stone half sunk in the dirt: a dwarf can't pass that by without a long look. The League has ruined us all for walking past.",
	},
	["race.dwarf.muse.w08.055"] = {
		"The siege engines of the Second War rolled out of dwarven forges with gnomish gears in their bellies. Neither people will say who did the hard part.",
		"Dwarven iron and gnomish cleverness: together they built things that made the Horde think twice. Apart, they argue about the bolts.",
	},
	["race.dwarf.muse.w08.056"] = {
		"Dwarves don't weep in public. We go and hit something hard for a while, then come back and buy the next round.",
		"Grief among my people sounds like a hammer working late. Nobody asks what's being made.",
	},
	["race.dwarf.muse.w08.057"] = {
		"However far I go, there's rock under every road. Dig deep enough anywhere and you reach the same stone that holds up Ironforge. That's a comfort.",
		"The world is only a thin skin of grass and dirt over a great deal of honest rock. A dwarf never forgets what's underneath.",
	},
	["race.dwarf.muse.w08.058"] = {
		"Dark Iron raiders hold Dun Modr at the north end of the Wetlands, close enough to the Thandol Span to put every honest dwarf on edge.",
		"Dun Modr belongs to the Dark Iron now. A dwarven hold, held by dwarves, and still a loss. That's our kind of riddle.",
	},
	["race.dwarf.muse.w08.059"] = {
		"Bah. If it can't be fixed with a hammer, it wasn't worth fixing.",
		"Hmph. The world would run smoother if more of it were built by dwarves and fewer of its plans were drawn by elves.",
		"Hmph. Elves call it patience when they wait a century. Dwarves call it a slow afternoon.",
	},
	["race.dwarf.muse.w08.060"] = {
		"Measure twice, strike once. It works for stone, for iron, and for most of the trouble I meet.",
		"Every apprentice in Ironforge hears it first: look at the grain before you swing. I've found it holds for people too.",
	},
	["race.dwarf.muse.w08.061"] = {
		"The mountaineers patrol the passes of Khaz Modan in every season the mountains can throw at them. I raise a mug to them whenever I remember.",
		"The mountaineers of Ironforge keep the roads clear of troggs and worse, so the rest of us can complain about the roads. Thankless work. Someone ought to thank them.",
	},
	["race.dwarf.muse.w08.062"] = {
		"Humans learned to dig from us and to drink from us. They're better at one of those than the other.",
		"The masons of Stormwind picked up a trick or two from dwarves. They'll admit it, after the third mug.",
	},
	["race.dwarf.muse.w08.063"] = {
		"A dwarf says 'not bad' and means 'magnificent'. Foreigners never learn the exchange rate.",
		"If a dwarf calls your work 'sound', frame it. We don't hand out bigger praise.",
		"Praise from a dwarf comes in grunts. One grunt is politeness. Two is high honor. Three, and somebody's buying you a drink.",
	},
	["race.dwarf.muse.w08.064"] = {
		"Dun Algaz guards the road between Loch Modan and the Wetlands. Every pass in Khaz Modan has a gate, or the ruin of one. We never trusted an open door.",
		"Khaz Modan is a land of gates: on the passes, on the dams, on the mines. A dwarf likes to know which side of a door the trouble is on.",
	},
	["race.dwarf.muse.w08.065"] = {
		"Stars. Pretty enough. The miners of Dun Morogh say each one is a lantern somebody forgot to put out.",
		"A whole sky of little lights, and not one of them gives off any heat. The elves can keep them; I'll take a brazier.",
	},
	["race.dwarf.muse.w08.066"] = {
		"Snow. Finally a weather that knows what it's doing.",
		"Snow underfoot and cold in the lungs. Anywhere in the world, snow makes a dwarf feel the next valley over might be Dun Morogh.",
	},
	["race.dwarf.muse.w08.067"] = {
		"Rain. In a proper hall, water only comes through the ceiling if somebody cut it badly.",
		"Water falling out of the sky, and no ceiling to stop it. The surface world really hasn't thought things through.",
	},
	["race.dwarf.muse.w08.068"] = {
		"Rock overhead once more. My shoulders drop an inch, the way other folk's do when they see the sky.",
		"Tunnels and stone. Others peer into the dark; I read the walls.",
	},
	["race.dwarf.muse.w08.069"] = {
		"Forest all around and not a stone in sight worth the name. I feel like a fish on a tabletop.",
		"Trees, roots, more trees. Lovely for elves. For a dwarf it's like living inside a very large salad.",
	},
	["race.dwarf.muse.w08.070"] = {
		"Steep ground and bare rock. Any range like this is kin to Khaz Modan, and a dwarf greets kin.",
		"My legs know a slope like this before I do. Mountain air tastes the same wherever it's breathed: of stone and of home.",
	},
	["race.dwarf.muse.w08.071"] = {
		"Sand. Stone that gave up. I can't bring myself to respect it.",
		"Dust and heat and not a cool cellar for leagues. A dwarf in the desert is a barrel left out in the sun.",
	},
	["race.dwarf.muse.w08.072"] = {
		"Mud to the knees. For a dwarf that's mud to the belt, and I'll thank nobody to mention it.",
		"Swamp. The ground won't hold a footing, let alone a wall. I've never trusted earth that moves when you stand on it.",
	},
	["race.dwarf.muse.w08.073"] = {
		"Dwarven runes are all straight lines, the scribes of Ironforge say, because they were meant to be cut, not painted. Even our letters are built to last.",
		"A dwarf's signature is a mark cut into something hard. Ink is for people who expect to change their minds.",
	},
	["race.dwarf.muse.w08.074"] = {
		"Darnassus is a long voyage and a longer climb from any honest stone. They say it's beautiful. They say the same about clouds.",
		"Elves build their city in a tree on an island at the edge of the world. Dwarves build theirs inside a mountain. Each of us thinks the other is hiding.",
	},
	["race.dwarf.muse.w08.075"] = {
		"When a dwarf goes quiet over a mug, leave them be. They're not sulking. They're working something out, slowly, the way we work stone.",
		"Some thoughts have to be worked cold, blow after blow, without a fire to make them easy.",
	},
	["race.dwarf.muse.w08.076"] = {
		"Dwarven bootmakers put a double sole on everything. Elsewhere they call that heavy. We call it finished.",
		"A good pair of boots outlasts three roads and two arguments with the cobbler. Any dwarf will tell you so.",
	},
	["race.dwarf.subzone_enter.w08.001"] = {
		"runs a hand along the nearest beam or stone at the edge of {subzone}, judging the work by touch alone.",
		"takes in {subzone} with one sweep of the eyes and, before anything else, looks at what it all rests on.",
		"walks into {subzone} with a craftsman's squint, as if pricing the whole place by the cartload.",
	},
	["race.dwarf.subzone_enter.w08.002"] = {
		"{subzone}. First question: where would I put a door if I had to hold this place. Second question: where's the ale.",
		"{subzone}. Good stone or bad, I'll know within a dozen steps.",
		"{subzone}. If anyone here brews, I'll find them. A dwarf's nose for ale is a fine guide.",
	},
	["race.dwarf.subzone_enter.w08.003"] = {
		"{subzone}. Hm. Seen sturdier. Seen worse.",
		"{subzone}. It'll do, so long as nothing falls on me.",
		"{subzone}. A dwarf or two could straighten it out.",
	},
	["race.dwarf.subzone_enter.w08.004"] = {
		"{subzone}. Under every name on a map there's rock that never cared what it was called.",
		"{subzone}. Up top, names come and go. Down in the stone, nothing has changed in an age.",
		"{subzone}. Every place sits on older places. A dwarf feels the weight of all of them.",
	},
	["race.dwarf.subzone_enter.w08.005"] = {
		"takes a long look around, eyes going first to the ground, then to anything that might serve as cover, then, hopefully, to anything that looks like a tavern.",
		"sizes the place up in the dwarven order: footing, shelter, something to drink.",
		"stops, plants both heels and rocks on them once, as if testing a plank before trusting it.",
	},
	["race.dwarf.subzone_enter.w08.006"] = {
		"{subzone}. I check the slope of the ground out of habit. Water runs downhill, and so does trouble.",
		"{subzone}. Which way would a cave-in fall here? A useless question most places, and I ask it anyway.",
		"{subzone}. Where's the high ground, where's the dry ground. Then I can start enjoying myself.",
	},
	["race.dwarf.subzone_enter.w08.007"] = {
		"{subzone}. One more name to tell them about, back in Ironforge.",
		"{subzone}. Somebody in Kharanos will want to hear about this.",
		"{subzone}. Worth a line in a letter home, if I ever write one.",
	},
	["race.dwarf.subzone_enter.w08.008"] = {
		"{subzone}. If this ground could talk it would tell of floods and quakes and slow ages. Rock is a poor gossip, but an honest one.",
		"{subzone}. The layers under my boots took longer to settle than any kingdom has lasted.",
	},
	["race.dwarf.subzone_enter.w08.009"] = {
		"glances up at whatever passes for a ceiling in {subzone}, and seems to find it wanting.",
		"takes in {subzone} with a slow nod, the kind a mason gives to work that is merely acceptable.",
	},
	["race.dwarf.subzone_enter.w08.010"] = {
		"{subzone}. Somebody dug here once, or should have.",
		"{subzone}. Solid underfoot or not? A dwarf's heels always want to know.",
		"{subzone}. Fair ground. Fairer still if somebody laid a few flagstones.",
	},
	["race.dwarf.subzone_enter.w08.011"] = {
		"{subzone}. Looks like the sort of place where a sensible dwarf would sink a well, a shaft and a brewery, in no particular order.",
		"{subzone}. Under here there's a cellar waiting to be dug. I can feel it.",
	},
	["race.human.landmark.w08.001"] = {
		"{landmark}. First question, as always: who looks after it? A place with a name is a place somebody answers for.",
		"{landmark}. I catch myself checking the state of things: fences, paths, walls. Humans judge a place by how well it's kept.",
		"{landmark}. Whoever answers for this place, I'd like to meet them. People who keep such places usually know everything worth knowing about the road.",
	},
	["race.human.landmark.w08.002"] = {
		"stops at {landmark} and takes it in with a human's practical eye: who built it, what it cost, and who is paying now.",
		"looks {landmark} over the way a human sizes up a neighbor's barn: with interest, a little envy and a quick estimate of the cost.",
		"gives {landmark} a long look, as if adding up the work and the coin it took to make it, and the hands.",
	},
	["race.human.muse.w08.001"] = {
		"Lady Katrana Prestor has the ear of every noble at court, and nobody can quite say where her family's lands are. In Stormwind that counts as a small mystery and a large career.",
		"At court they say Lady Prestor is wise beyond her years. I've never trusted anyone the whole court agrees about.",
		"The regent rules, Lady Prestor advises, and the nobles nod along. A farmer would want to know who's really holding the plow.",
	},
	["race.human.muse.w08.002"] = {
		"Stromgarde still holds out in the Arathi Highlands, with ogres and brigands camped in its own streets. Humans don't know when to give up on a city, and I'm glad of it.",
		"Half of Stromgarde is rubble and the other half is held by soldiers who refuse to call it lost. That's a very human kind of arithmetic.",
		"Stromgarde's soldiers still walk walls with more holes than stones. Call it folly if you like; I call it keeping a promise to the dead.",
	},
	["race.human.muse.w08.003"] = {
		"Lady Proudmoore led her people across the whole sea and built Theramore in a marsh. Humans will plant a flag anywhere a boat can land.",
		"Theramore: a human city on the far side of the ocean, in a swamp, next door to the Horde. Somehow it works. Jaina Proudmoore must be very stubborn or very wise.",
		"When the north fell, some ran south and some ran east. Jaina Proudmoore went west, across an ocean, and took a city's worth of people with her.",
	},
	["race.human.muse.w08.004"] = {
		"Gilneas raised its great wall and shut the gate on the rest of us. Whatever is happening behind it, they decided long ago it was none of our business.",
		"Past Silverpine there's a whole human kingdom closed behind a wall, and not a word out of it in years. I can't decide whether that's wisdom or fear.",
		"Gilneas wanted no part of our wars or our refugees, so it built a wall. Humans can be generous to strangers or shut tight against them; Gilneas chose the second.",
	},
	["race.human.muse.w08.005"] = {
		"Westfall fed Stormwind once: wheat to the horizon, barns full by autumn. Now the fields belong to brigands, and the harvest golems work for them.",
		"A field left unplowed for one season is a pity. Westfall has been left for years, and you can watch the weeds winning from the road.",
		"The windmills of Westfall still turn, with nobody grinding anything. No farmer can look at that without wincing.",
	},
	["race.human.muse.w08.006"] = {
		"In Westfall the farmers formed their own militia when the crown didn't come. Pitchforks and old swords against the Defias. I'd stand with them sooner than with half the nobles.",
		"The People's Militia is a farmer's answer to a kingdom that stopped listening: if nobody guards the fields, we guard them ourselves.",
		"The Militia gathers at Sentinel Hill with whatever weapons it could scrape together. The most honest army in the kingdom.",
	},
	["race.human.muse.w08.007"] = {
		"In Redridge they fish the lake with one eye on the water and one on the hills. Orcs come down from the mountains every few seasons, and Lakeshire mends its roofs and waits.",
		"Lakeshire is a pretty town with a lake, a bridge and a great deal of trouble in the hills behind it. Most human towns are like that, if you look closely.",
		"Redridge has red stone, a clear lake and gnolls in the hills. A human would settle there anyway; we always do.",
	},
	["race.human.muse.w08.008"] = {
		"Duskwood was called Brightwood once, people say. Then something darkened it, and now Darkshire keeps a watch of farmers with lanterns and old swords.",
		"In Darkshire they lock their doors early and keep the lanterns lit, and nobody calls it superstition. Not out loud.",
		"A human forest gone dark: that's Duskwood. We don't have many places like it, and we don't talk about the ones we have.",
	},
	["race.human.muse.w08.009"] = {
		"Stormwind's canals carry everything: barges, fishing lines, gossip, and whatever somebody dropped off a bridge last week.",
		"Children fish off the canal walls in Stormwind with bent pins and enormous patience. It's the most hopeful sight in the city.",
		"A city of canals is a city of bridges, and every bridge in Stormwind has somebody leaning on it, watching the water and putting off work.",
	},
	["race.human.muse.w08.010"] = {
		"In the Trade District a smile costs nothing and everything else costs double. I love the place.",
		"Haggling is a human art. Dwarves bargain like they're mining, gnomes like they're calculating. We bargain like it's a play and everyone has a part.",
		"A Stormwind merchant can tell what you'll pay before you've finished saying hello. I admire it, from a distance, with my purse shut.",
	},
	["race.human.muse.w08.011"] = {
		"The cathedral bells of Stormwind ring the hours for half the city. Away from them I keep time by hunger instead.",
		"Every human town measures out its day with a bell. Far from one, my stomach does the job, and it's less punctual.",
	},
	["race.human.muse.w08.012"] = {
		"In Elwynn they plant pear trees that won't bear for ten years. A short-lived people planting for strangers: I think that's the best thing about us.",
		"Humans plant trees whose shade they'll never sit in. Elves would call it foolish. Elves have the time to wait for their own.",
		"Every orchard in Elwynn is a letter to people not yet born. Humans write a lot of those.",
	},
	["race.human.muse.w08.013"] = {
		"Every shopkeeper in Stormwind hands you your change with a 'Light be with you', whether or not they've set foot in the Cathedral this year. It's less a prayer than a habit, and habits hold a people together.",
		"'Light keep you.' Bakers say it, guards say it, cutpurses say it. Among humans the Light is a word for goodbye as much as for anything holy.",
		"Even the ones who never pray say 'Light keep you' at a parting. It costs nothing, and it's warmer than a plain farewell.",
	},
	["race.human.muse.w08.014"] = {
		"Not every human kneels when the bells call. Plenty of us keep our heads down, pay what's owed and trust our own two hands.",
		"The priests promise the Light will provide. As far as I can tell, the Light provides best to people who also carry a purse.",
		"Some humans find the Light in the Cathedral, some in a bottle, some nowhere at all. Stormwind makes room for all three, more or less.",
	},
	["race.human.muse.w08.015"] = {
		"The night elves joined the Alliance only lately, and they look at us the way we look at a candle: pretty, brief, a little alarming to leave unattended.",
		"The night elves remember things that happened before there was a single human city. It's hard to win an argument with someone who was there.",
		"To a night elf, a human friendship must be like a summer: lovely, and over before they've unpacked.",
	},
	["race.human.muse.w08.016"] = {
		"Gnomes built a cart that runs under the sea from Stormwind to Ironforge. I ride it and think very hard about anything but the water overhead.",
		"The Deeprun Tram is a marvel, everyone says so. Marvels are best enjoyed by people who don't know how deep they go.",
		"Fish swim somewhere above the tram tunnel. I prefer not to know exactly how far above.",
	},
	["race.human.muse.w08.017"] = {
		"Ironforge is warm, loud and smells of coal. Every human who visits leaves with a cough and a few dwarven friends, and only the cough goes away.",
		"A dwarf will drink to your health, then to his own, then to the health of the barrel. Humans just aren't built for that kind of loyalty.",
		"Humans and dwarves have bled side by side in more than one war. It's why a dwarf will still pour for a human stranger.",
	},
	["race.human.muse.w08.018"] = {
		"The veterans still raise a cup to Anduin Lothar, the Lion of Azeroth. When the city burned he led what was left of Stormwind north, and never got to lead it home.",
		"Old soldiers speak Lothar's name the way priests speak a blessing. A man who saved a kingdom by leaving it.",
	},
	["race.human.muse.w08.019"] = {
		"In the north the plague came in the grain. That's the part a farming people can't get past: the bread itself turned on them.",
		"They say Stratholme's grain carried the plague, sack by sack, into every kitchen. I can't look at a loaf the same way since I heard it.",
		"Bread is sacred to a human in the plainest way: you don't waste it, you share it. In Lordaeron the plague made it a weapon, and that wound hasn't closed.",
	},
	["race.human.muse.w08.020"] = {
		"The Scarlet Crusade are humans too: grief with a banner and nobody left to stop it. That's what frightens me about them.",
		"Hearthglen, Tyr's Hand, the monastery: all held by people who lost everything to the plague and decided to burn the rest. I understand them a little, and that's the worst part.",
		"Every human who lost someone to the plague has felt the Scarlet temptation for a moment: burn it all, trust no one. Most of us put it down again.",
	},
	["race.human.muse.w08.021"] = {
		"Most of the Forsaken were Lordaeron's own people once: bakers, guards, farmers. I can't decide whether to pity them or fear them, so I do a little of both.",
		"In Undercity walks someone who once kept a shop in Lordaeron, and maybe sold bread to people whose grandchildren live in Stormwind now.",
	},
	["race.human.muse.w08.022"] = {
		"Give me bread, a wedge of cheese and a mug of something cheap, and I'll follow you into any dungeon you like. Humans are easy to provision.",
		"Elves eat leaves, dwarves eat biscuits hard as rock, and humans eat whatever's in the pot and ask for seconds. We're simple, and it's served us well.",
		"A human can march all day on a heel of bread and the promise of a hot supper. Mostly on the promise.",
	},
	["race.human.muse.w08.023"] = {
		"Westfall stew: whatever the field gave, whatever the pot holds, and a long slow simmer. Every human kitchen has a version, and every cook swears theirs is right.",
		"Ask ten human cooks how to make a proper stew and you'll get eleven answers and one fistfight.",
	},
	["race.human.muse.w08.024"] = {
		"Stormwind built a prison and the prisoners took it over. I'd bet a clerk is still filing the report.",
		"The Stockade is so full of rioting prisoners that the guards ask passing adventurers to go in and tidy up. That's Stormwind: even the jail is short-staffed.",
		"The Stockade: Stormwind's proof that you can lock trouble up, but you can't lock it up quietly.",
	},
	["race.human.muse.w08.025"] = {
		"Stormwind's orphanage is never short of children. Two wars and a plague will do that to a kingdom, and the matron never seems to sleep.",
		"Every war leaves its bill, and in Stormwind a good part of it is paid by the children in the orphanage. A coin left there isn't enough. It isn't nothing, either.",
	},
	["race.human.muse.w08.026"] = {
		"Humans aren't the strongest people in the Alliance, or the oldest, or the cleverest. We're the ones who keep turning up anyway.",
		"Ask what humans are good at and you'll get a shrug. Then look around: we built half the roads you walked to get here.",
	},
	["race.human.muse.w08.027"] = {
		"Stormwind's historians say every human kingdom began as one: Arathor, raised by Thoradin to hold back the trolls. We've been splitting the inheritance ever since.",
		"There was a single human empire once, Arathor, and seven kingdoms grew out of it like branches from one trunk. Some branches are dead now. The trunk lies somewhere under the Arathi grass.",
	},
	["race.human.muse.w08.028"] = {
		"The high elves taught a hundred humans to work magic, back when the trolls threatened them both. Every mage in Stormwind descends, in a way, from that one bargain.",
		"Our first spellcasters learned at elven hands, in a war against the trolls. Humans took to it quickly, the stories say. Too quickly, some elves still think.",
	},
	["race.human.muse.w08.029"] = {
		"Dalaran hides under a violet dome in the hills of Alterac now. The mages inside say they're rebuilding. Everyone else says nothing and walks around it.",
		"From the road, Dalaran looks like a soap bubble the size of a city. Whether it keeps danger out or in, nobody I trust will say.",
	},
	["race.human.muse.w08.030"] = {
		"In Kul Tiras they think anyone who can't swim is half-dead. They may be right; it's a big world and most of it is wet.",
		"The sailors at Menethil Harbor drink as if the sea meant to steal their thirst next.",
		"Kul Tiran sailors walk the docks of Menethil as if the land were rocking under them, and complain that it isn't.",
	},
	["race.human.muse.w08.031"] = {
		"Southshore and Tarren Mill sit a few hills apart: one human village alive, one human village dead and wearing Forsaken colors. The road between them has seen more blood than any road should.",
		"In Hillsbrad the living and the dead claim the same farms. The apples don't care who picks them.",
	},
	["race.human.muse.w08.032"] = {
		"Every child in Elwynn grows up hearing about the kobolds in the mines. They steal candles. Nobody knows why, and nobody's brave enough to ask.",
		"Kobolds: small, smelly and deadly serious about candles. Elwynn's oldest nuisance, and somehow still a mystery.",
	},
	["race.human.muse.w08.033"] = {
		"Humans gray fast. A few hard years on the road and the mirror starts telling the truth. I've decided not to argue with it.",
		"By the time an elf has learned a person's name, that person has gone gray. We're a hurried people, and it shows on our faces first.",
		"Night elves don't wrinkle, and dwarves just grow more beard. Humans get lines on the face, one for every bad winter.",
	},
	["race.human.muse.w08.034"] = {
		"Humans bury their dead close, behind the chapel, under a stone with a name. We want to be able to visit. In Duskwood, at Raven Hill, the dead have started visiting back.",
		"We lay our dead in rows near the chapel so the living can find them. It's a gentle custom. Duskwood has made it a good deal less gentle.",
	},
	["race.human.muse.w08.035"] = {
		"The Light asks very little: kindness, courage, a hand where one is needed. Humans keep falling short of it and keep coming back to try. That's faith enough for me.",
		"I don't know whether the Light listens. I know what people do when they believe it does: they open doors, share bread, stand watch for strangers.",
	},
	["race.human.muse.w08.036"] = {
		"counts the coins in {g:his|her} purse twice, with the care of a people who have always paid for their own bread.",
		"weighs {g:his|her} purse in one hand and frowns, working through a small human sum of meals, repairs and whatever is left.",
		"tallies something on {g:his|her} fingers, lips moving: debts, distances, days. Humans are always counting.",
	},
	["race.human.muse.w08.037"] = {
		"hums a few bars of some tavern tune under {g:his|her} breath, then stops, a little embarrassed, and looks around to see who heard.",
		"whistles the opening of a song every village common room seems to know, and loses the tune halfway through.",
	},
	["race.human.muse.w08.038"] = {
		"brushes the dust off {g:his|her} sleeves and straightens {g:his|her} collar, as if someone important might come around the next corner.",
		"tugs {g:his|her} clothes straight, out of that very human habit of looking presentable for nobody in particular.",
	},
	["race.human.muse.w08.039"] = {
		"squares {g:his|her} shoulders and sets off at the brisk step of someone whose people never have enough time.",
		"quickens {g:his|her} pace without meaning to, the hurry of a short-lived people settling into {g:his|her} legs.",
	},
	["race.human.muse.w08.040"] = {
		"leans back and watches the world go by, like an old villager on the bench outside the tavern with nothing pressing to do.",
		"lets the noise of the world wash past for a moment, with the patience of someone sitting on a village doorstep after the harvest.",
	},
	["race.human.muse.w08.041"] = {
		"stops to tighten a strap and check every buckle twice, with the thoroughness of a people who learned the hard way that small things fail first.",
		"goes over buckles and laces one by one, a soldier's habit that half of humankind seems to share.",
	},
	["race.human.muse.w08.042"] = {
		"looks back the way {g:he|she} came, then ahead, and gives the small sigh of someone with too many errands and one short life.",
		"rubs {g:his|her} eyes and mutters the list of things still to do, the oldest human prayer there is.",
	},
	["race.human.muse.w08.043"] = {
		"A human trusts a horse before a gryphon, and a gryphon before a gnome's machine. Call it the wisdom of the stable.",
		"Give a human a horse and a road, and we'll be in the next kingdom by spring. Give us a mechanostrider and we'll be asking for the horse back.",
	},
	["race.human.muse.w08.044"] = {
		"Humans write everything down: debts, treaties, recipes, grudges. We don't live long enough to remember, so we let the ink do it for us.",
		"Stormwind runs on paper. In the Keep there's a ledger for every sack of grain since the city was rebuilt.",
	},
	["race.human.muse.w08.045"] = {
		"A human village will throw a feast for anything: a harvest, a wedding, a calf born with two colors. We know how quickly the good days go.",
		"Humans don't wait for a reason to celebrate. A full barn, a mended roof, a neighbor's child walking: out come the benches and the cheap wine.",
		"We know how few good days a life holds, so we don't let one pass without a dance.",
	},
	["race.human.muse.w08.046"] = {
		"In a human town news runs faster than any courier, and arrives improved.",
		"Tell one human a secret and by supper the whole street will have a better version of it.",
		"In a human village every stranger arrives twice: once on foot, and once, earlier, in the gossip.",
	},
	["race.human.muse.w08.047"] = {
		"The Alliance was a human idea first: Terenas calling the kingdoms together against the Horde. Lordaeron is gone now, and the idea is still standing.",
		"Kings called it, dwarves and elves answered, and the Alliance held. Every time it frays, someone remembers what it cost to sew it together.",
	},
	["race.human.muse.w08.048"] = {
		"We lost one kingdom to the dead and misplaced a king, and come spring there are still seeds going into the ground. Call it stubbornness; I call it human.",
		"Hope is a farmer's habit more than a virtue. You plant, you wait, you plant again after the hail.",
		"Humans have had every reason to give up on tomorrow. We keep setting the table for it anyway.",
	},
	["race.human.muse.w08.049"] = {
		"Ask a Stormwind guard the way and you'll get a salute, a smile and directions to somewhere nearby.",
		"The city watch of Stormwind would die for you without a second thought. Giving clear directions is another matter.",
		"Stormwind's guards are polite, well armed and always slightly tired. Like the kingdom, really.",
	},
	["race.human.muse.w08.050"] = {
		"An elf can afford to wait a century for the right moment. I'd rather make a wrong move today than a perfect one when I'm in the ground.",
		"Patience is a fine thing for those who live a thousand years. The rest of us have to be brave on a schedule.",
		"A human life is too short for long grudges and long sulks. Mostly.",
	},
	["race.human.muse.w08.051"] = {
		"In Stormwind a noble's son and a mason's daughter can end up in the same regiment. The regiment doesn't care; the nobility does.",
		"Titles mean a great deal in the Keep and nothing at all in a ditch with a gnoll coming. I find that comforting.",
	},
	["race.human.muse.w08.052"] = {
		"Every human road seems to run through a Goldshire: an inn, a forge, a well, and people arguing over the price of everything.",
		"Humans can't see a crossroads without putting an inn on it and a smithy beside it. Give us a century and every crossroads in Azeroth will have its Goldshire.",
	},
	["race.human.muse.w08.053"] = {
		"It was one of our own, Medivh, who opened the way for the orcs. Every human with a little power ought to remember it.",
		"The Guardian of Tirisfal was one of us, and he let the Horde into this world. Humans reach for power faster than any other people, and sometimes we grab the wrong end.",
	},
	["race.human.muse.w08.054"] = {
		"Human children play at soldiers and knights before they can spell either word.",
		"In every human village there's a child with a stick sword defending a woodpile from imaginary orcs.",
		"A farm child is knighting a goat with a broom handle right now, I'd wager. Humans start their ambitions early.",
	},
	["race.human.muse.w08.055"] = {
		"Orcs in camps, orcs in armies, and now orcs with a nation of their own across the sea. Humans have needed a new opinion of them every ten years.",
		"Thrall's Horde holds a land of its own across the sea now. Stormwind hasn't decided whether that's a peace or a pause, and neither have I.",
	},
	["race.human.muse.w08.056"] = {
		"The gnomes lost Gnomeregan and moved in with the dwarves without a word of complaint. Humans would have written a hundred letters to the king.",
		"The gnomes lost a whole city and still tinker away cheerfully in Ironforge. Humans in their place would still be holding an inquiry.",
	},
	["race.human.muse.w08.057"] = {
		"Elwynn's oaks and birches are kind trees: tall enough to shade a road, not so thick that you lose it.",
		"Most forests in this world want something from you. Elwynn only wants you to keep to the path and wave at the woodcutters.",
		"Elwynn has wolves, kobolds and the odd bandit, and it's still the gentlest forest I know of. That says something about the rest of the world.",
	},
	["race.human.muse.w08.058"] = {
		"Humans were never the strongest one by one. Shoulder to shoulder, a shield on every arm, we've held back worse than anything this road can send.",
		"Alone, a human is a small thing with a short life. In a line of others, holding, a human is a wall.",
	},
	["race.human.muse.w08.059"] = {
		"A human tavern is a parliament with ale: every table has a plan for the kingdom, and no two of them agree.",
		"Put three humans at a tavern table and you'll have four political parties by the second round.",
	},
	["race.human.muse.w08.060"] = {
		"Stormwind is home: white stone, blue roofs, the smell of bread and canal water. Wherever I am, that's what the word means.",
		"When I say home, I mean blue roofs over white walls and a crowd that never quite goes quiet. Stormwind, for all its faults.",
		"Stormwind: the gate, the bridge with its great stone guardians, and then the noise of a crowd that never ends. Home, in other words.",
	},
	["race.human.muse.w08.061"] = {
		"All through the north there are human ruins: a chapel, a farmhouse, a wall around nothing. We built a great deal for people who no longer exist.",
		"Half the ruins in the Eastern Kingdoms were human once. We build fast, and the world takes us apart just as fast.",
		"Humans build in a hurry and the world unbuilds us at leisure. Between the two, there's always a mason with work.",
	},
	["race.human.muse.w08.062"] = {
		"Humans live by the seasons: sow, mend, reap, wait. Even far from any field, part of me knows the month by what the farmers would be doing.",
		"On the road I still count the year in farm work: now they'd be sowing, now mending fences, now praying the harvest holds.",
	},
	["race.human.muse.w08.063"] = {
		"Every human is one good deed away from a title, or thinks so. It's what gets half of us out of bed.",
		"A farmer's child can become a knight in Stormwind, given courage, luck and great patience with paperwork.",
	},
	["race.human.muse.w08.064"] = {
		"Somewhere in the ruins of Lordaeron's capital is the throne room where King Terenas died at his own son's hand. Humans don't tell that story to children.",
		"A prince came home victorious, the city threw flowers, and he killed his father in the throne room. Every human knows how Lordaeron ended, and nobody likes to say the prince's name.",
	},
	["race.human.muse.w08.065"] = {
		"Uther died defending what was left of Lordaeron from its own prince. Every human knows the story, and nobody tells it the same way twice.",
		"The Silver Hand was born in Lordaeron, the pride of the human kingdoms. Its knights are scattered now, and they carry the order with them like a coal in a pot.",
	},
	["race.human.muse.w08.066"] = {
		"Every fisherman between Westfall and Elwynn has a murloc story, and every one of them ends with a lost net.",
		"Murlocs: the only creatures in Azeroth that can make a human fisherman swear in three dialects.",
		"A murloc's cry carries a long way over water. Ask anyone from Westfall: they'll do the noise for you, badly.",
	},
	["race.human.muse.w08.067"] = {
		"Humans don't do well alone. Even on the road I catch myself talking to the sky, the path, the nearest tree.",
		"We're a crowding people: we like a neighbor's smoke on the horizon. Too long without one and I start narrating my own day under my breath.",
	},
	["race.human.muse.w08.068"] = {
		"Menethil Harbor is where humans go when they want to leave the continent: a dock, a tavern and a keep with its feet in the swamp.",
		"Every ship west leaves from Menethil, a damp little port where the boards smell of tar and every sailor has an opinion about the tide.",
	},
	["race.human.muse.w08.069"] = {
		"Stormwind keeps a cellar full of spies, SI:7, and pretends it doesn't. Every kingdom has its knives; ours just has better manners about them.",
		"For every paladin in Stormwind's parades there's someone in a dark coat in Old Town keeping the parade safe. Humans like their heroes bright and their protectors quiet.",
	},
	["race.human.muse.w08.070"] = {
		"Under the Slaughtered Lamb, in the Mage Quarter, people study things the Cathedral would rather not hear about. Stormwind keeps both doors open and watches them carefully.",
		"A cathedral at one end of the city and a cellar full of summoning circles at the other. Humans have always wanted every kind of power within walking distance.",
	},
	["race.human.muse.w08.071"] = {
		"Copper for bread, silver for a bed, gold for a sword worth having. A human learns the whole economy before learning to read.",
		"Every human carries a rough price list in their head: bread, boots, a room, a healer. It changes in every town, and it's always a little too high.",
	},
	["race.human.muse.w08.072"] = {
		"First the orcs, then the orcs again, then the plague and the dead. Three wars in one lifetime have taught humans to keep the walls patched and a bag by the door.",
		"Ask any human town where its children would run if the bells rang the alarm. They'll know. Three wars have taught us that much.",
	},
	["race.human.muse.w08.073"] = {
		"A road is a promise between two towns. Humans make a great many promises.",
		"Wherever humans settle, a road follows within the year: first a footpath, then a cart track, then somebody charging a toll.",
		"Humans measure distance in inns more than in miles: how many nights between here and there, and how good the stew is at each.",
	},
	["race.human.muse.w08.074"] = {
		"Humans dream small: a roof, a field, a name that outlasts them by a generation or two. It isn't much to ask. The world keeps refusing it anyway.",
		"A roof that doesn't leak, a field that pays, children who outlive the wars. That's the whole of the human dream, and we keep having to fight for it.",
	},
	["race.human.muse.w08.075"] = {
		"If the Light wanted humans patient, it should have given us longer lives.",
		"Short lives make for quick tempers and quick forgiveness. I'll take the bargain.",
	},
	["race.human.muse.w08.076"] = {
		"The Argent Dawn holds Light's Hope Chapel in the middle of the Plaguelands. Humans, mostly, refusing to give the north up to the dead.",
		"In the Plaguelands the Argent Dawn keeps a chapel lit among the ruins. That's the best of us: a light left on in the worst place.",
	},
	["race.human.muse.w08.077"] = {
		"Stormwind taxes everything it can count. I'm only surprised nobody has found a way to tax adventuring yet.",
		"Humans grumble about taxes the way dwarves grumble about the cold: constantly, and with a certain affection.",
	},
	["race.human.subzone_enter.w08.001"] = {
		"{subzone}. Before anything else I'm judging the soil, the slope and where the water runs. A human can't help wondering what would grow.",
		"{subzone}. The farmer every human carries inside is already asking: would wheat take here, or only potatoes and patience?",
		"I take in {subzone} the way my people take in any land: what would grow here, and who would have to be paid for it?",
	},
	["race.human.subzone_enter.w08.002"] = {
		"{subzone}. Whose is it, I wonder? Somebody always owns the land, even when nobody's living on it.",
		"{subzone}. Who holds this, and who pays them taxes? A human question, but somebody always does.",
		"{subzone}. There's a deed for this ground in somebody's drawer. I'd bet on it.",
	},
	["race.human.subzone_enter.w08.003"] = {
		"{subzone}. First thing: where's the nearest roof, and would they let a stranger under it?",
		"{subzone}. My eye goes to anything that could keep the sky off my head for a while. Humans are a sheltering kind.",
		"{subzone}. Shelter first, opinions later. That's the human order of things.",
	},
	["race.human.subzone_enter.w08.004"] = {
		"{subzone}. Nice enough. I wonder what a room costs, and whether there's a room at all.",
		"{subzone}. I can already hear some local explaining that bread costs more here because of the road.",
		"{subzone}. Pretty. A human always wants to know the price of pretty.",
	},
	["race.human.subzone_enter.w08.005"] = {
		"{subzone}. I look for the way out before I've finished coming in. Humans like to know which direction home is.",
		"{subzone}. Where do the tracks go? Follow the cart ruts and you find the people; it's the oldest human map there is.",
		"{subzone}. A road worn by carts means trade; a path worn by feet means somebody lives near. I read them both.",
	},
	["race.human.subzone_enter.w08.006"] = {
		"takes in {subzone} with the quick, practical look of someone pricing a farm on market day.",
		"slows in {subzone} and listens, half expecting a bell, a dog, a voice: the sounds humans call company.",
		"squints around {subzone} as if working out how many families it could feed.",
	},
	["race.human.subzone_enter.w08.007"] = {
		"{subzone}. Could you raise children here? I ask it of every place. Most places answer 'not yet'.",
		"{subzone}. I measure every place by one human question: could a family live here without a sword beside the door?",
		"{subzone}. Safe enough for a farm? Safe enough for a market? Humans grade every place on that scale.",
	},
	["race.human.subzone_enter.w08.008"] = {
		"{subzone}. If humans ever lived here there'll be a chapel or a well to show for it. If not, I'll soon learn who did.",
		"{subzone}. I look for a human mark: a cut stone, a fence post, a shrine to the Light. Sometimes there is one. Often there isn't, and that tells me something too.",
		"{subzone}. I look for our marks the way a traveler looks for a familiar face in a crowd.",
	},
	["race.human.subzone_enter.w08.009"] = {
		"{subzone}! Somebody ought to put an inn here. Sooner or later somebody always does.",
		"{subzone}. Leave it to humans for ten years and there'd be a market here on the first of every month.",
		"{subzone}. Somebody find me the tavern. If there isn't one, somebody will have to build it.",
	},
	["race.human.subzone_enter.w08.010"] = {
		"{subzone}. Somebody will tell me how it was before the wars. In this world there's always a before.",
		"{subzone}. I wonder how it looked when there was nothing here to fear. Humans ask that of everywhere.",
		"{subzone}. Most places have a story that starts 'before the war'. I listen for it.",
	},
	["race.nightelf.landmark.w08.001"] = {
		"{landmark}. Whoever built it, I count how many trees it cost, and whether anyone planted any back.",
		"{landmark}. A place with a name and a purpose. My people would ask one thing more of it: what was growing here before.",
		"{landmark}. Young walls, most likely. Still, someone chose this spot and stayed. The kaldorei respect staying.",
	},
	["race.nightelf.landmark.w08.002"] = {
		"regards {landmark} with the unhurried attention of {g:his|her} people, as if guessing how many centuries it might last.",
		"takes in {landmark} quietly, eyes lingering on what is old in it and passing lightly over what is new.",
	},
	["race.nightelf.landmark.w08.003"] = {
		"{landmark}. Sturdy. For now.",
		"{landmark}. Built to last, they will tell you. My people have heard that before.",
	},
	["race.nightelf.muse.w08.001"] = {
		"The humans call a forest old when it has stood two hundred years. I have not the heart to correct them.",
		"A hundred-year oak, someone told me proudly. I nodded. Among my people that is a sapling with ambitions.",
		"Old, to the young races, means a grandmother's lifetime. To mine it once meant something very close to always.",
	},
	["race.nightelf.muse.w08.002"] = {
		"Since Hyjal, some of our elders have found the first gray in their hair. They touch it the way one touches a fresh scar.",
		"Gray at the temples: a human thing, we used to think. Now the oldest of us are learning it too, strand by strand.",
		"Our elders never had to count years. Now a few of them count gray hairs instead, and pretend they are not counting.",
	},
	["race.nightelf.muse.w08.003"] = {
		"Dwarves show friendship with a roast the size of a small wolf. I take the bread and thank them warmly for the rest.",
		"The forest feeds my people without much fuss: fruit, nuts, a fish when the river allows. Dwarven cooking is another kind of argument.",
		"Bread, fruit, cold water from a clear spring. My people feast quietly, and nobody has to be carried home.",
	},
	["race.nightelf.muse.w08.004"] = {
		"The orcs killed Cenarius in Ashenvale. A demigod of the forest, felled by hands that had never planted anything. I tell myself this Horde is not that Horde. I rarely believe it.",
		"Cenarius walked the forests of Kalimdor before any of us were born, and an orc's axe ended him. Some debts are too large for anyone to collect.",
		"The Horde talks of honor now. Cenarius is still dead.",
	},
	["race.nightelf.muse.w08.005"] = {
		"goes still against the nearest patch of shade and, for a breath, is simply not there.",
		"lets {g:his|her} outline soften into the dimness, an old trick of {g:his|her} people, and waits.",
		"stops moving entirely and becomes, for a heartbeat, one more shadow among the others.",
	},
	["race.nightelf.muse.w08.006"] = {
		"When one of us falls, the spirit rises as a wisp and drifts back toward the living. I find that more comforting than any grave.",
		"My people do not linger as gray ghosts. We go as small lights, quick and quiet, looking for the way back.",
		"Even our spirits keep the old manners: a little light, no noise, and a long patience.",
	},
	["race.nightelf.muse.w08.007"] = {
		"For centuries our druids slept in the Dream while the Sentinels kept the forest awake. When people ask why the Sentinels are so hard to impress, I tell them that.",
		"The druids slept and dreamed; the Sentinels stayed awake for them, year upon year. Every watch kept today owes them something.",
	},
	["race.nightelf.muse.w08.008"] = {
		"Archdruid Staghelm is very sure of himself. Certainty suits a leader. I only wish I knew where he finds so much of it.",
		"Fandral Staghelm leads the druids while Malfurion sleeps, and he does it with a firm hand. Some of my people find that reassuring; some keep very quiet.",
		"The archdruid speaks for the forest with great confidence. The forest, as far as I can tell, has not been asked.",
	},
	["race.nightelf.muse.w08.009"] = {
		"Tyrande Whisperwind has led the Sisters of Elune since before the world broke. In her quiet, ten thousand years stand in one person.",
		"The High Priestess never looks tired. More than any miracle, that is what I would ask Elune for.",
		"Ten thousand years at the head of her people, and Tyrande still crosses the temple as if every step of it were new to her.",
	},
	["race.nightelf.muse.w08.010"] = {
		"The high elves are the grandchildren of the Highborne my people sent across the sea. Now Quel'Thalas has fallen. I do not know what we owe them, if anything. I think about it more than I would admit.",
		"Cousins, in a way: the high elves kept the magic we gave up and carried it east over the sea. Now their kingdom burns, and we hear of it the way one hears of a far relative's illness.",
	},
	["race.nightelf.muse.w08.011"] = {
		"Human mages juggle fire in the street and call it study. My people once called that the beginning of the end.",
		"Gnomes show off their spells the way children show off a frog. I smile politely and step back two paces.",
		"My people banished arcane magic and still lost half the world to it. Forgive me if I flinch near a human spellbook.",
	},
	["race.nightelf.muse.w08.012"] = {
		"Dwarves laugh with their whole body, as if the joke might escape otherwise. I have grown fond of the noise, against every instinct of my people.",
		"A dwarf will tell you exactly what he thinks of you, then buy you a drink. My people need a century to manage either.",
		"Dwarven friendship arrives like a rockslide: all at once, very loud, and impossible to refuse. Kaldorei friendship grows like moss. Both hold.",
	},
	["race.nightelf.muse.w08.013"] = {
		"The gnomes lost their city and kept their cheer. My people lost their forests and kept their silence. I am not sure which of us chose better.",
		"Ask a gnome when Gnomeregan will be retaken and you get a season. Ask my people anything and you get 'in time'. The same hope, measured differently.",
		"Gnomes talk faster than my people think. I have learned to nod and catch up later.",
	},
	["race.nightelf.muse.w08.014"] = {
		"Befriend a human and you have agreed, sooner or later, to grieve. My people used to avoid it. Lately I find I do not want to.",
		"Humans burn bright and brief, like dry twigs. You learn to sit close to the fire anyway.",
		"Human friends age while you are still learning their names properly. It is a lesson in paying attention sooner.",
	},
	["race.nightelf.muse.w08.015"] = {
		"Owls keep the same hours as my people and ask the same few questions. I have always liked them.",
		"An owl turns its head and looks at you as if you owed it an answer. Among my people that counts as good manners.",
		"Owls hunt without a sound and watch without blinking. My people have been accused of the same, and taken it as a compliment.",
	},
	["race.nightelf.muse.w08.016"] = {
		"A nightsaber's purr is a sound you feel in your ribs before you hear it. Nothing in the world is more reassuring.",
		"Horses are fine animals. They simply lack the dignity of a great cat that has decided you may stay.",
		"Give me a great cat over any horse. A horse carries you; a nightsaber decides to.",
	},
	["race.nightelf.muse.w08.017"] = {
		"Ask an old sentinel about the War of the Ancients and she will talk about the smell of the camps, the color of the sky that year, anything but the battles.",
		"Ten thousand years since the War of the Ancients, and the veterans among us still do not tell it in order. Grief keeps its own calendar.",
		"The War of the Ancients is history to the young races and a family matter to mine. Some of our elders were there, and they lower their eyes when it comes up.",
	},
	["race.nightelf.muse.w08.018"] = {
		"Darkshore was not always a coast. My people remember when the sea was somewhere else entirely, and they walk its beaches politely, as guests.",
		"Auberdine knows exactly what it is: a dock, a few lanterns, and the sea that swallowed the old shore. I like a town that does not pretend.",
		"Darkshore is gray and damp and beautiful, the way an old grief grows beautiful if you live beside it long enough.",
	},
	["race.nightelf.muse.w08.019"] = {
		"Bows, to my people, are less a weapon than a way of paying attention. You cannot hit what you have not watched for a long time.",
		"My people say a good shot is mostly waiting. The arrow is only the short part at the end.",
		"Watch the leaf before you watch the mark, my people say: the wind tells you more than the eye does.",
	},
	["race.nightelf.muse.w08.020"] = {
		"When my people say nothing for an hour, humans ask whether we are angry. We are listening. It is different.",
		"Silence is not sulking. Among the kaldorei it is half of every conversation.",
		"I am not ignoring you. I am giving your words time to land.",
	},
	["race.nightelf.muse.w08.021"] = {
		"Nordrassil still stands on Hyjal, I am told, scarred but standing. I would like to see it once, and I am afraid to.",
		"Our first World Tree is still on its mountain, they say, with the burns of the battle in its bark. Some pilgrimages are better kept as an intention.",
	},
	["race.nightelf.muse.w08.022"] = {
		"Felwood was once part of the same green as Ashenvale. Now the leaves rot on the branch and the furbolgs go mad. A forest can be poisoned like a well.",
		"I have heard what Felwood has become. Corruption does not cut a tree down; it teaches it to grow wrong. That is worse.",
		"Some of my people go to Felwood to heal it, one sick grove after another. I admire them. I am not sure I could bear to watch.",
	},
	["race.nightelf.muse.w08.023"] = {
		"The satyrs were Highborne once. Whatever bargain gave them horns and hooves, I hope they at least read the terms.",
		"Every satyr is a Highborne who said yes to the wrong voice. When strangers offer me power, I keep my answers short.",
		"Horns, hooves and a Highborne's manners gone sour. Every satyr is a warning dressed up as a joke.",
	},
	["race.nightelf.muse.w08.024"] = {
		"Some months I feel Elune close, some months far. The moon does the same, and nobody calls it faithless.",
		"The priestesses teach that even a dark moon is still there, only turned away. I hold on to that on the bad days.",
		"The moon thins to a thread and comes back whole every time. I try to remember that when I feel thin myself.",
	},
	["race.nightelf.muse.w08.025"] = {
		"Elune-adore. May she find you on the dark roads, whoever you are.",
		"Elune-adore. It costs nothing to wish someone her light.",
		"Elune-adore. Walk softly, and may she walk with you.",
	},
	["race.nightelf.muse.w08.026"] = {
		"My people forgive, eventually. Our 'eventually' has been known to outlast a human dynasty.",
		"Never insult a night elf's grandmother. She may still be alive, and she remembers faces.",
		"A kaldorei grudge is not angry. It is simply very, very patient.",
	},
	["race.nightelf.muse.w08.027"] = {
		"Every season the Warsong lumber camps push a little deeper into Ashenvale. The Sentinels answer with arrows; the forest answers more slowly, but it answers.",
		"Ashenvale is a border now. My people never wanted borders in a forest, and yet here we are, guarding it trunk by trunk.",
		"The Warsong cut for their fires and their war engines. Each stump in Ashenvale is a small grave, and my people tend them as such.",
	},
	["race.nightelf.muse.w08.028"] = {
		"Under the Great Sea lies the land my people walked before the Well tore itself apart. I never look at deep water without thinking of the streets beneath it.",
		"The Maelstrom still turns where the Well of Eternity was. Ten thousand years, and the wound has not stopped spinning.",
		"Sailors fear the Maelstrom as a hazard of the sea. My people know it as the place where our capital used to stand.",
	},
	["race.nightelf.muse.w08.029"] = {
		"From the docks of Rut'theran the tree fills half the sky. From Auberdine it is a shape on the water. Any farther, and you carry it inside.",
		"Teldrassil to Auberdine, Auberdine to Menethil. So many journeys of my people begin with a boat and a long look back at the tree.",
		"Whenever the boat pulls away from Rut'theran, someone on deck goes quiet and watches the tree until it is gone.",
	},
	["race.nightelf.muse.w08.030"] = {
		"Stormwind is a marvel of stone, and the whole city seems to stand on guard against the grass.",
		"Humans pave everything. Then the moss arrives, slow and polite, to correct them.",
		"Human cities are built to outlast their builders. To my people, that is the saddest thing about them.",
	},
	["race.nightelf.muse.w08.031"] = {
		"Ironforge is warm and loud and kind, and there is no sky in it. After a day or two, my people catch themselves looking up for something that is not there.",
		"Stone over my head, stone under my feet. The dwarves call it shelter. To a night elf it feels like holding one's breath.",
		"In Ironforge the forge never sleeps and nobody can tell you what hour it is. My people find that harder than any battle.",
	},
	["race.nightelf.muse.w08.032"] = {
		"hums a few notes of something very old under {g:his|her} breath, then lets the tune trail off unfinished.",
		"murmurs part of an ancient melody, so softly it is almost breathing, and stops well before the end.",
	},
	["race.nightelf.muse.w08.033"] = {
		"lifts {g:his|her} eyes upward for a moment, the way {g:his|her} people do, as if to make sure the sky has not wandered off.",
		"tips {g:his|her} head back and looks up briefly, an old kaldorei habit, checking on something only {g:he|she} could name.",
	},
	["race.nightelf.muse.w08.034"] = {
		"Kaldorei: children of the stars. A grand name for a people who mostly want to be left alone with a good tree.",
		"We named ourselves after the stars and then spent ten thousand years among the leaves. Perhaps that is the whole of my people in one sentence.",
		"Children of the stars, we call ourselves. Nobody, I suspect, ever asked the stars.",
	},
	["race.nightelf.muse.w08.035"] = {
		"My people's patience was built for centuries. This war asks for days. I am learning to hurry without growing careless.",
		"Patience served us for millennia. Now the world moves at a human pace, and a night elf who waits too long finds the door already shut.",
		"A thousand years to decide used to be prudence. Now it is simply too late.",
	},
	["race.nightelf.muse.w08.036"] = {
		"Night elves are hard to hit, people complain. We grew up in forests full of things with claws.",
		"Dodging is not a trick. It is ten thousand years of sharing the woods with things that bite.",
		"If you mean to hit a night elf, aim where we will be in a moment. Most people aim where we were.",
	},
	["race.nightelf.muse.w08.037"] = {
		"Hippogryphs are proud, vain and very particular about their feathers. Perhaps that is why my people get on with them so well.",
		"Half owl, half stag, and wholly convinced of its own beauty. The hippogryph is a very kaldorei creature.",
		"A hippogryph will carry you anywhere, and afterwards it will make sure you know it did you a favor.",
	},
	["race.nightelf.muse.w08.038"] = {
		"My people used to plant a tree and wait to sit in its shade. Now we plant for whoever comes after. It is the human way, and it is harder than it looks.",
		"Once a night elf could bury an acorn and expect to rest under the oak. Since Hyjal, we plant for others. I am still getting used to the generosity of it.",
	},
	["race.nightelf.muse.w08.039"] = {
		"The young races sleep when it is dark and wake when it is bright. My people keep a more interesting schedule, and we are very tired of explaining it.",
		"In a human inn, everyone starts yawning just as a night elf is properly awake. We have learned to read quietly by the hearth.",
	},
	["race.nightelf.muse.w08.040"] = {
		"Half the ruins of Kalimdor were ours once. The other races explore them with lanterns and picks. I try not to read the carvings over their shoulders.",
		"Explorers call our old cities ruins and sell the pieces in Ironforge. I suppose they are ruins. They were also somebody's kitchen.",
		"Every broken column in Ashenvale was carved by someone who expected to see it standing forever. For a long while, they were right.",
	},
	["race.nightelf.muse.w08.041"] = {
		"Elune is gentle, and her priestesses ride to war. My people have never found that a contradiction. Mercy needs someone standing in front of it.",
		"My people worship a goddess of the moon and of mercy, and her temple trains archers. A soft heart and a steady hand were never enemies among the kaldorei.",
	},
	["race.nightelf.muse.w08.042"] = {
		"The Legion came through our own front door once. Every warlock I see in an Alliance city, I mark and remember.",
		"Humans let warlocks walk their streets with demons on a leash. My people once had a queen who thought she could keep demons on a leash too.",
		"My people do not trust a power that comes when called and then stays for supper.",
	},
	["race.nightelf.muse.w08.043"] = {
		"There she is. Whatever the day cost, the moon rises over it all the same, and I feel less alone in it.",
		"Elune's lamp is lit. I lift my face to it the way one turns toward a friend coming into the room.",
		"The moon is high, and with her the oldest part of me wakes.",
	},
	["race.nightelf.muse.w08.044"] = {
		"The stars are out. My people were named for them; it would be rude not to look up.",
		"Stars overhead. Among my people, looking up is a kind of greeting.",
		"Look up while you can. The stars wait for no one, not even for us.",
	},
	["race.nightelf.muse.w08.045"] = {
		"Dawn. The hour when my people used to draw the curtains of the forest and go to sleep. I keep going, out of a habit borrowed from the humans.",
		"Daybreak, and the forest my people knew would be settling down to sleep about now. The world I live in has other ideas.",
	},
	["race.nightelf.muse.w08.046"] = {
		"In Moonglade, they say, a tauren and a night elf can share a path and a silence. I find that more hopeful than any treaty.",
		"Moonglade answers to the Cenarion Circle and to no banner. Some days I think the rest of the world should be run by a forest.",
	},
	["race.nightelf.muse.w08.047"] = {
		"The tauren honor the Earth Mother and walk lightly on the land. If they did not keep company with the orcs, my people might have called them friends.",
		"Tauren druids, I hear, learned at the feet of the same demigod as ours. Strange cousins: one teacher, two sides of a war.",
		"Tauren and kaldorei both listen to the land. We only disagree about who should be listening beside us.",
	},
	["race.nightelf.muse.w08.048"] = {
		"The Forsaken walk without breath and without end. My people gave up forever to save the world; they had it forced on them. Neither of us got what we would have chosen.",
		"Undying is not the same as immortal. Watching the Forsaken, I understand a little better what my people lost, and what we were spared.",
	},
	["race.nightelf.muse.w08.049"] = {
		"My people and the trolls were enemies before either had written anything down. Some feuds are older than the alphabets that record them.",
		"Trolls remember us. That is the trouble with long memories: they run in both directions.",
		"The trolls had empires when my people were young, and so did we. Only the grudges have outlived both.",
	},
	["race.nightelf.muse.w08.050"] = {
		"Rain. My people never hurried in from it. It was here first, and it has things to say.",
		"A little rain never kept a kaldorei under a roof. Everything green is drinking; it would be rude to complain.",
		"Rain on my shoulders and on the road. My people would call this a conversation, not bad weather.",
	},
	["race.nightelf.muse.w08.051"] = {
		"Snow is a long sleep for the land. My people respect sleep; we have done a great deal of it.",
		"Snow, and everything beneath it resting. The druids of my people would call it a dream the land is having.",
	},
	["race.nightelf.muse.w08.052"] = {
		"Your language is efficient. In mine it takes a full breath to say good morning, and we consider that the point.",
		"In Darnassian a greeting takes a whole breath. In Common it takes a nod. I am still deciding which is ruder.",
	},
	["race.nightelf.muse.w08.053"] = {
		"Every wolf, bear and stag of Kalimdor was here before my people learned to walk quietly. We were the students; they were the forest's first teachers.",
		"My people learned stillness from the deer and watchfulness from the owl. The rest we had to work out ourselves, and it shows.",
	},
	["race.nightelf.muse.w08.054"] = {
		"Not every night elf talks to trees. Some of us simply prefer them to people, which is a different thing.",
		"People assume my kind all commune with the forest. Most of us just know where the good shade is.",
		"No, I cannot ask the oak what it thinks. I can guess, though: it thinks you are standing on its roots.",
	},
	["race.nightelf.muse.w08.055"] = {
		"Shandris Feathermoon holds a fortress off the coast of Feralas, far from any tree of ours. My people go where they are needed, and they bring their quiet along.",
		"Feathermoon Stronghold, out on the water by Feralas: kaldorei on an island, watching the old forests across the waves. That sounds like us.",
	},
	["race.nightelf.muse.w08.056"] = {
		"Yes, I heard that. Long ears are not decoration.",
		"Whisper all you like. My people's ears were made for forests where a whisper is the loudest thing for a mile.",
		"My ears hear everything. My manners pretend otherwise. Please do not test either.",
	},
	["race.nightelf.muse.w08.057"] = {
		"In Darnassus the houses are built around living trees, never through them. A small courtesy, repeated a thousand times, becomes a city.",
		"My people do not cut a branch to make room for a door. We move the door. It takes longer, and the house is happier for it.",
		"Other races build first and plant a garden after. We find a tree and ask it, more or less, where the rooms should go.",
	},
	["race.nightelf.muse.w08.058"] = {
		"The priestesses say Elune gathers her children when they fall. I hope she is patient with the latecomers. We are new at dying.",
		"My people used to think of death as something that happened to others. Now we must trust Elune with it too, and trust is a slow craft.",
		"We are a people learning to mourn properly, ten thousand years late. Elune, I hope, gives lessons.",
	},
	["race.nightelf.muse.w08.059"] = {
		"looks around for something green, the way {g:his|her} people do in every place, and makes do with whatever there is.",
		"searches the surroundings for anything alive and rooted, shoulders easing a little if {g:he|she} finds it, tensing a little if not.",
	},
	["race.nightelf.muse.w08.060"] = {
		"draws a long, slow breath, the kind {g:his|her} people take before saying anything that matters, and then says nothing at all.",
		"seems about to speak, weighs the words for a long moment in the kaldorei way, and lets them go unsaid.",
		"opens {g:his|her} mouth to speak, thinks better of it, and lets a long kaldorei silence answer instead.",
	},
	["race.nightelf.muse.w08.061"] = {
		"Magic is a thirst. My people drank deep from the Well once and nearly drowned the world. I keep my cup small.",
		"The Highborne could not stop reaching for more. Whenever I want something too much, I hear the old warning about them.",
		"Each of my people learns, sooner or later, the story of a queen who wanted more. It is the first lesson, and the last.",
	},
	["race.nightelf.muse.w08.062"] = {
		"The Light of the humans is bright and loud and everywhere at once. Elune prefers to be found.",
		"Human priests speak of the Light as if it were always noon. My people's goddess keeps the gentler hours.",
		"The Light shouts its comfort from the bell towers. Elune leaves hers on the windowsill and waits.",
	},
	["race.nightelf.muse.w08.063"] = {
		"The Ancients who guard our groves were trees before they were warriors. Ask one for advice, then come back next season for the answer.",
		"Among my people, the slowest voice in any council belongs to the one with bark. Nobody interrupts it.",
		"The Ancients are the most patient soldiers in the world. They have to be; they cannot run.",
	},
	["race.nightelf.muse.w08.064"] = {
		"We lost our immortality, not our purpose. The forests still need keepers, and a keeper does not need forever, only tomorrow.",
		"Forever is gone. So be it. A single day is still long enough to plant something, mend something, guard something.",
		"Mortal now. Very well: then today counts.",
	},
	["race.nightelf.muse.w08.065"] = {
		"Across the sea, every hill seems counted and claimed. Kalimdor still keeps a few secrets from its own maps.",
		"Over the water the humans have fenced their land into fields. My people would find that sad, if the fields were not so carefully loved.",
	},
	["race.nightelf.muse.w08.066"] = {
		"Have patience. I do not mean wait; I mean watch.",
		"Hurry if you must. I will catch up by not making your mistakes.",
		"Slowly. Most mistakes are made at a run.",
	},
	["race.nightelf.muse.w08.067"] = {
		"Before there were roads, my people found their way by the stars and the slope of the land. I still trust both more than a signpost.",
		"A signpost can lie, or be turned around by a prankster. Nobody has ever played that joke on the stars.",
	},
	["race.nightelf.muse.w08.068"] = {
		"Dolanaar is the kind of village my people build when no one is watching: a few houses in the trees, a moonwell, and no hurry at all.",
		"An inn, a moonwell, a few Sentinels and many trees: Dolanaar needs nothing else, and does not pretend to.",
	},
	["race.nightelf.muse.w08.069"] = {
		"Ishnu-alah. Yes, it means hello. No, I will not teach you the rest.",
		"Ishnu-alah. It is a greeting, not a spell; you may stop backing away.",
	},
	["race.nightelf.muse.w08.070"] = {
		"The Barrens look empty to my eyes and full to a tauren's. I suspect we are both right.",
		"A land without trees is not empty, my people are slowly learning. It only speaks a language we never studied.",
	},
	["race.nightelf.subzone_enter.w08.001"] = {
		"{subzone}. First I count the trees, or notice that there are none to count. Either way, it tells me who has been here.",
		"{subzone}. I look for something rooted and older than the name. Sometimes it is a tree; sometimes only the stones remember.",
		"{subzone}. Whatever grows here, or fails to, is the most honest sign on the road.",
	},
	["race.nightelf.subzone_enter.w08.002"] = {
		"{subzone}. The name sounds young. Most do, to a kaldorei ear.",
		"{subzone}. To the young races a name is a claim. To my people it is a guess the land has not yet confirmed.",
	},
	["race.nightelf.subzone_enter.w08.003"] = {
		"steps into {subzone} without a sound, eyes going first to the ground, then to whatever grows, then to whatever was built.",
		"crosses into {subzone} the kaldorei way: unhurried, silent, reading the place from the roots up.",
	},
	["race.nightelf.subzone_enter.w08.004"] = {
		"{subzone}. I wonder what stood here ten thousand years ago. Perhaps something of ours, and of that something, most likely, nothing is left.",
		"{subzone}. Before the world broke, this ground may have belonged to my people's empire. The land does not say, and I do not ask it to.",
		"{subzone}. My people have lived long enough to see places named, renamed and forgotten. I wonder which of those this one is waiting for.",
	},
	["race.nightelf.subzone_enter.w08.005"] = {
		"{subzone}. Let us see what lives here, and whether it minds company.",
		"{subzone}. Mind where you step. Whatever lives here had the place first.",
	},
	["race.nightelf.subzone_enter.w08.006"] = {
		"{subzone}. If the young races have settled here, the paths will run straight. Forests never draw a straight line; people in a hurry always do.",
		"{subzone}. I look for the marks of hurried hands: cut stumps, straight fences, stone laid in rows. Where they are missing, it feels like a welcome.",
		"{subzone}. Stone laid by short-lived hands always looks a little anxious to me, as if it knew it had to be finished quickly.",
	},
	["race.nightelf.subzone_enter.w08.007"] = {
		"{subzone}. Elune's sky reaches here as it reaches everywhere. That alone makes no place entirely foreign.",
		"{subzone}. However strange the ground, the same goddess watches over it. I walk in with that small courage.",
		"{subzone}. A stranger's ground, perhaps, but not a stranger's goddess.",
	},
	["race.nightelf.subzone_enter.w08.008"] = {
		"{subzone}. My ears find the place before my eyes do: water or none, wind or none, voices or none.",
		"{subzone}. I stand still long enough to hear it breathe. Every place does, given patience.",
		"{subzone}. Before trusting a place, I let my ears walk it once.",
	},
	["race.nightelf.subzone_enter.w08.009"] = {
		"{subzone}. If a forest ever stood here, I will feel its absence before I see the stumps.",
		"{subzone}. Some places still carry the shape of the trees they lost, the way a pillow keeps the shape of a sleeper. I look for that.",
	},
	["race.nightelf.subzone_enter.w08.010"] = {
		"{subzone}. Nice enough. Give it a few thousand years.",
		"{subzone}. Promising. Check again in a millennium.",
		"{subzone}. Young, by the look of it. Most things are.",
	},
	["race.nightelf.subzone_enter.w08.011"] = {
		"{subzone}. Wherever I go, the same moon will rise over it in its season. Under her, my people have never wholly lost their way.",
		"{subzone}. One more name for the map. The moon has no use for maps, and on some days neither do I.",
	},
	["race.nightelf.subzone_enter.w08.012"] = {
		"pauses at the edge of {subzone}, head tilted, sorting its sounds one by one before taking another step.",
		"eases into {subzone}, measuring it with the long, patient look {g:his|her} people give anything they mean to remember.",
	},
	["race.tauren.landmark.w08.001"] = {
		"{landmark}. Every name on the land was given by someone, and most of them stood a head shorter than me.",
		"{landmark}. Named by smaller folk, like most places. The land under it, I suspect, keeps an older name to itself.",
		"{landmark}. My people would have asked the land what it wished to be called. Others simply choose, and the land puts up with it.",
	},
	["race.tauren.landmark.w08.002"] = {
		"stops at the edge of {landmark} and takes it in slowly, the way a herd leader looks over fresh grazing before leading anyone in.",
		"slows on reaching {landmark} and looks it over carefully, judging how much room it has for someone of {g:his|her} size.",
		"comes into {landmark} with the patient, measuring gaze of the plains people, missing nothing and hurrying nowhere.",
	},
	["race.tauren.muse.w08.001"] = {
		"Every doorway in the world is a small lesson in humility. I bow to most of them, and the rest I pay for with a bruise.",
		"Doorframes have taught me more courtesy than any elder. You learn to bow quickly when the lintel offers to do it for you.",
	},
	["race.tauren.muse.w08.002"] = {
		"Other people's cups vanish in my hand. I drink from them the way one holds a bird's egg: two fingers, and no sudden thoughts.",
		"A goblin's mug holds about one swallow for a tauren. I make it last three, out of politeness, and nobody is fooled.",
		"Teacups. Delicate little things with a handle my finger will not go through. I hold them in my palm like water I am carrying to someone.",
	},
	["race.tauren.muse.w08.003"] = {
		"Yes, it's a tail. No, it does not want to be held. It has firm opinions about flies, and that is all.",
		"The tail is for flies, not for comment. Thank you.",
		"Every tauren has one. It swats flies and keeps its own counsel. I'd ask you to do the same.",
	},
	["race.tauren.muse.w08.004"] = {
		"Our dead rest at the Red Rocks, high and in the open, where the wind can visit them. No graveyard elsewhere has pleased me half as well.",
		"Other peoples put their dead behind walls and gates. Ours lie at the Red Rocks with the sky for a roof. I know which I would choose.",
		"When I think of endings, I think of the Red Rocks: bare stone, open air, and the grass of Mulgore stretching away below. A good place to be finished.",
	},
	["race.tauren.muse.w08.005"] = {
		"A kodo forgets nothing that matters to a kodo: water, grass, the way home. As lists to live by go, it is not a bad one.",
		"Kodo are slow, everyone says. Nobody adds that a kodo never gets lost. I would make that trade.",
		"Watch an old kodo cross the plains and you will see no wasted step. It knows where the water is. Most of us are still guessing.",
	},
	["race.tauren.muse.w08.006"] = {
		"The elders count our history in roads: generation after generation of walking, with the centaur at our heels. Every step I take for my own reasons would have looked like a luxury to them.",
		"My people wandered so long that wandering became a kind of house. Now we have a real one on the bluffs, and some of us still cannot stay in it.",
	},
	["race.tauren.muse.w08.007"] = {
		"Plainstriders. All legs and opinions. If one has never chased you, you have not really seen Mulgore.",
		"Never turn your back on a plainstrider. It won't hurt you much, but it will make sure you never forget it.",
		"Plainstriders run as if their legs were borrowed and already overdue.",
	},
	["race.tauren.muse.w08.008"] = {
		"Before I eat, I give the Earth Mother a word. Not a long one. She has a great many mouths to listen to.",
		"A word of thanks to the Earth Mother before food. She made the grass, the grass made the beast, the beast made supper. It seems only fair to start at the top.",
		"My people do not eat in silence. One short word for the Earth Mother first, then the meal, then the talking.",
	},
	["race.tauren.muse.w08.009"] = {
		"In thick forest I miss the horizon the way one misses a friend. Trees are fine. I just like to see what is coming while it is still a day's walk off.",
		"Among close trees my eyes keep reaching for distance and finding bark. Someone raised on the plains never quite stops looking for the edge of the world.",
	},
	["race.tauren.muse.w08.010"] = {
		"Hot country is hard on a body made for the winds of the plains. I carry a whole hide on my back and cannot take it off.",
		"Fur is a fine thing until the sun leans on it. Then a tauren learns to love shade the way others love gold.",
		"Every dry land I cross, I envy the bald races a little. Only a little, and only until the wind turns cold.",
	},
	["race.tauren.muse.w08.011"] = {
		"Through my hooves I can feel a cart coming before I hear it. The ground is always talking. Most folk simply wear too much leather on their feet to hear it.",
		"Hooves are not only for walking. Stay still long enough and they tell you who else is moving across the land.",
		"The earth carries news faster than any runner. Something heavy shifts a mile off, and a tauren standing quietly feels it come up through the bone.",
	},
	["race.tauren.muse.w08.012"] = {
		"The goblins of the Venture Company drill into Mulgore as if the earth were a barrel to be tapped. Some wounds the land forgives slowly. I am slower.",
		"I know what the Venture Company leaves behind: stumps, slag, and holes where water used to rise. I have a long memory for such things.",
		"Every Venture Company rig in Mulgore is a nail driven into a living thing. My people pull the nails out; the goblins drive more. It is a long argument.",
	},
	["race.tauren.muse.w08.013"] = {
		"The Darkspear laugh at things I would mourn, and mourn things I would laugh at. We get on better than that sounds.",
		"Trolls talk fast, move loose and always have a joke ready. Next to them I feel like a hill that has been invited to a dance.",
		"A troll will joke on the edge of a cliff; a tauren checks the edge first. Together the climb down usually goes well, and the argument goes on.",
	},
	["race.tauren.muse.w08.014"] = {
		"Orcs carry their anger close to the skin, like a coal kept in the hand. My people bury ours deep and let it cool. Between us we make a decent fire.",
		"An orc decides in a breath; a tauren decides in a season. Thrall seems to know when to ask which of us.",
		"The orcs run hot and the tauren run long. Put us on the same road and we both arrive, just not at the same hour.",
	},
	["race.tauren.muse.w08.015"] = {
		"The Forsaken smell of grave earth and bitter herbs, and my nose objects every time. Our elders hope the dead can be healed. I try to hope it with them, from a little upwind.",
		"It was tauren voices that spoke for the Forsaken before the Horde, people say, believing that what is broken might be mended. Some days, walking beside one of them, I believe it too.",
	},
	["race.tauren.muse.w08.016"] = {
		"People ask whether a tauren is hard to feed. Only for whoever's cooking.",
		"Feeding a tauren is easy. You just need a second pot, and a third for later.",
		"A tauren at your table is an honor. A tauren in your larder is a siege.",
	},
	["race.tauren.muse.w08.017"] = {
		"runs a thumb along one horn, feeling for nicks, the way others check the edge of a blade.",
		"rubs a smudge of dust from one horn with the heel of a hand, unhurried, like someone tidying a small shrine.",
		"turns {g:his|her} head to catch the light on one horn and studies a fresh scratch with mild disapproval.",
	},
	["race.tauren.muse.w08.018"] = {
		"The leatherworkers of Thunder Bluff say a good drum is the beast still speaking to the camp it fed. I think of that whenever the drums start up.",
		"A hide stretched over a frame, and the animal that fed a camp has a voice again. That is how the leatherworkers on the bluffs explain their drums, and I have never heard it explained better.",
	},
	["race.tauren.muse.w08.019"] = {
		"When a gust comes from nowhere on open ground, the elders say an ancestor has stopped to look us over. I stand a little straighter, just in case.",
		"A sudden wind across the grass is an ancestor passing, or so the elders tell it. I have never sworn to it. I still mind my manners when it blows.",
	},
	["race.tauren.muse.w08.020"] = {
		"Anything worth deciding is worth sleeping on. Twice, if it has horns.",
		"Give a hard choice two sleeps. If it still looks the same afterward, it was the right one.",
		"A tauren never decides on an empty stomach or a short sleep. Most regrets start with one or the other.",
	},
	["race.tauren.muse.w08.021"] = {
		"The Barrens are Mulgore with the kindness boiled out. Same sky, same distances, but the grass has stopped arguing with the sun.",
		"Cross out of Mulgore and the land changes its mind: gold where there was green, dust where there was water. My hooves feel the difference before my eyes.",
		"Mulgore is the Earth Mother smiling. The Barrens are the same face, squinting into the sun.",
	},
	["race.tauren.muse.w08.022"] = {
		"The lifts of Thunder Bluff creak like old knees and have carried every tauren I know. I trust them more than most bridges built by smaller hands.",
		"Riding a lift up the bluff, you feel the whole city lean on its ropes. Strange that the creaking is what makes me feel at home.",
		"Smaller folk eye the lifts of Thunder Bluff as if they might drop. They might. In all the time my people have used them, they simply have not.",
	},
	["race.tauren.muse.w08.023"] = {
		"Cairne has seen more winters than anyone has bothered to count, and still he stands straighter than the totems. When I am weary I think of that, and stand up too.",
		"Cairne carries his years the way a kodo carries its pack: without complaint, and without pretending they weigh nothing.",
		"Old as the bluffs, some say of Cairne, and about as easy to move. My people could do worse than to lean on him. We have done worse, long ago.",
	},
	["race.tauren.muse.w08.024"] = {
		"Not every tauren walks with Cairne. The Grimtotem keep their own counsel, and keep it sharp. It is hard to watch the horizon with one eye and your own people with the other.",
		"Magatha Grimtotem sits on Elder Rise and smiles at Cairne. I have seen warmer smiles on a prairie wolf over a fallen calf.",
	},
	["race.tauren.muse.w08.025"] = {
		"The elders do not speak of the centaur with heat. They speak of them as one speaks of a drought: something that came, and took, and will come again if we forget.",
		"In Mulgore the oldest warriors speak of the centaur flatly, without curses. That calm frightens me more than any war cry would.",
	},
	["race.tauren.muse.w08.026"] = {
		"The quilboar build their homes from thorns and dare the world to touch them. I understand the impulse. I just think a fence of briars keeps out friends as well.",
		"Quilboar burrow into briars and bristle at everything that passes. My people chose the opposite: high open ground where anyone can see us coming, and we can see them.",
	},
	["race.tauren.muse.w08.027"] = {
		"Hooves were made for grass. On a stone floor every step I take sounds like a small parade arriving.",
		"Stone floors turn my walk into a drumroll. I would tiptoe, if hooves knew how it was done.",
	},
	["race.tauren.muse.w08.028"] = {
		"To most travelers grass is just grass. In Mulgore even the young can tell you which blades the kodo want, which they leave, and which mean water is close.",
		"I cannot cross a meadow without reading it: grazed here, untouched there, greener in the hollow where the water sits. It is like reading a letter nobody else can see.",
		"Show a tauren a field and we see a ledger: how many beasts it could feed, for how long, and where it is thirsty.",
	},
	["race.tauren.muse.w08.029"] = {
		"A tauren's legs are the oldest road there is. Kodo, wind riders, zeppelins: all very well, but my people crossed Kalimdor on foot, and part of me still thinks that is the honest way.",
		"There is a way of knowing a land that only walking gives. My hooves have it. A saddle never will.",
	},
	["race.tauren.muse.w08.030"] = {
		"A goblin zeppelin is a wonder, built by someone who has never had to think about horns. I spend every crossing bent like an old tree.",
		"Zeppelins: built by goblins, measured for goblins, sold to everyone. I spend each crossing folded up like a tent.",
	},
	["race.tauren.muse.w08.031"] = {
		"Beneath Spirit Rise lie the Pools of Vision. I have heard the water there shows what is hidden. I have never been in a hurry to look.",
		"The water under Spirit Rise is said to show what eyes cannot. Some things, I think, are best left to the water.",
		"Some of my people go down to the Pools of Vision for answers. I have always thought a question should be ready for its answer first.",
	},
	["race.tauren.muse.w08.032"] = {
		"Roofs are a kindness, but I sleep best where the first thing I see on waking is the sky. My people slept under it so long that it still feels like the proper blanket.",
		"Give me a hide on the ground and the open sky above it, and I will sleep like a stone. Under a roof I dream about the roof.",
	},
	["race.tauren.muse.w08.033"] = {
		"Never argue with a kodo about the road. It will win, and it will take its time doing it.",
		"You can lead a kodo almost anywhere. Hurrying one is another matter entirely.",
		"A kodo has two speeds: slow, and slower out of spite. Plan accordingly.",
	},
	["race.tauren.muse.w08.034"] = {
		"Every young tauren passes through Camp Narache and its rites: strength, vision, wisdom. Strength was the easy one to understand. I am still working on the other two.",
		"Narache sends its young out to prove strength, then vision, then wisdom, in that order. I sometimes suspect the order was a joke the elders played on us.",
	},
	["race.tauren.muse.w08.035"] = {
		"Mulgore is never silent; the wind sees to that. In still places I keep lifting my head, as if someone had stopped speaking mid-word.",
		"Where I come from the wind talks all day across the grass. A windless place makes me uneasy, like a room where everyone has just gone quiet.",
	},
	["race.tauren.muse.w08.036"] = {
		"Goblin children stare at my horns as if I might lend them out. One day I may bend down and let one of them try. One day.",
		"Small folk look up at a tauren the way they look at a cliff: will it move, and which way?",
		"Most people speak to my chest. It is where their eyes land first, and climbing the rest of the way seems to tire them.",
	},
	["race.tauren.muse.w08.037"] = {
		"There are lands where the earth is sick, Felwood and the plagued north across the sea among them. Standing on them is like holding the hand of someone with a fever.",
		"Walk on poisoned ground and the hooves know first: a wrongness that comes up through the bone. I would rather not learn more of it than I must.",
	},
	["race.tauren.muse.w08.038"] = {
		"rolls {g:his|her} great shoulders and stretches until the joints crack like dry branches.",
		"shifts {g:his|her} weight from hoof to hoof, slow as a herd beast settling in for a long wait.",
		"lets {g:his|her} head hang for a moment, then lifts it again, the way a kodo shakes off a mile.",
	},
	["race.tauren.muse.w08.039"] = {
		"lets out a long huff through broad nostrils, the sound a kodo makes when it has decided not to be impressed.",
		"snorts softly, a low rumble from somewhere deep in the chest, and goes back to waiting.",
	},
	["race.tauren.muse.w08.040"] = {
		"The carvers on the bluffs say every great totem holds a story, one face stacked above another. I wonder sometimes whose faces will be stacked up there in a hundred years.",
		"Each face on a totem is someone's story, if the carvers of Thunder Bluff are to be believed. I would settle for a small face near the bottom, holding the rest up.",
	},
	["race.tauren.muse.w08.041"] = {
		"My people are slow to anger and slower still to forget the reason. I have both habits, and only one of them is a virtue.",
		"A tauren can be pushed a long way. It is the stopping, afterward, that takes us a while.",
		"We do not flare up. We warm, like a stone in the sun, and we keep the heat long after the sun has gone.",
	},
	["race.tauren.muse.w08.042"] = {
		"Shouting won't move the ground. It barely moves me.",
		"Say it slower. Tauren hear better when the words aren't in a hurry.",
		"No need to raise your voice. I'm tall, not far away.",
	},
	["race.tauren.muse.w08.043"] = {
		"Freewind Post stands on a needle of rock with nothing around it but air. Only tauren would build a village where the wind has to climb to visit.",
		"Some of my people live at Freewind Post, up on the needles, among lifts and rope bridges. We do like our high places. Perhaps it comes from wanting to see the centaur from very far away.",
	},
	["race.tauren.muse.w08.044"] = {
		"Mulgore spice bread travels badly and tastes of home anyway. I eat the crumbs at the bottom of the pack last, on purpose.",
		"Nothing sold in any market beats Mulgore spice bread, warm, with the crust still crackling. Perhaps I am alone in thinking so. My tongue has never lied to me yet.",
	},
	["race.tauren.muse.w08.045"] = {
		"On the plains you learn to greet water like a guest of honor. Even a muddy pool gets a word from me before I drink.",
		"Every stream I cross, I thank. My people spent too long searching for water to ever take it as owed.",
		"A spring is a gift the Earth Mother leaves out for anyone who passes. I never drink from one without saying so.",
	},
	["race.tauren.muse.w08.046"] = {
		"Some in the Alliance call my people cattle. I hope I meet one of them someday. I want to see the face when the cattle answer back.",
		"Cattle, some Alliance soldiers call us. Cattle do not usually remember the name of everyone who said it.",
	},
	["race.tauren.muse.w08.047"] = {
		"Half of being a tauren among other peoples is remembering how strong you are. A friendly slap on a goblin's back is not friendly at all if you forget.",
		"I measure my strength all day long: a handshake, a door, a cup. The one time I forget is the time someone gets hurt.",
		"Gentleness is the first thing a tauren learns in a crowded place. The world is full of things built to break under us.",
	},
	["race.tauren.muse.w08.048"] = {
		"The Earth Mother is not only under Mulgore. She is under this ground too, wherever this is. That is the first thing I remind myself of in a strange place.",
		"No land is foreign to the Earth Mother. Only to me, and that I can fix by walking it.",
		"However far I go, I never step off her. Distance is a thing for maps, not for the Earth Mother.",
	},
	["race.tauren.muse.w08.049"] = {
		"In Desolace there is a place where the old kodo go to die, and their bones lie in hills. My people do not fear it. It is what an honest ending looks like when there are a great many of them.",
		"The Kodo Graveyard in Desolace is mostly bones and silence. I find it less sad than a battlefield. The kodo, at least, went there of their own will.",
	},
	["race.tauren.muse.w08.050"] = {
		"My mane collects every burr and seed between here and the horizon. Somewhere behind me I am planting a small meadow without meaning to.",
		"At every halt I comb half a field out of my fur. The plains go everywhere with a tauren, whether we like it or not.",
	},
	["race.tauren.muse.w08.051"] = {
		"The orcs fell the trees of Ashenvale because the Horde needs timber, and the night elves make them pay for every trunk. I understand the need. I also hear the trees, and I wish the two could be squared.",
		"Between the Warsong axes and the Sentinels' arrows, Ashenvale is a hard place for a tauren to stand. My friends need the wood. The forest, I think, needs it more.",
	},
	["race.tauren.muse.w08.052"] = {
		"Two tauren can share a fire for hours without a word, and part as better friends.",
		"Among my people a silence is not an empty thing. You can say a good deal inside one, if the other has the patience to listen.",
	},
	["race.tauren.muse.w08.053"] = {
		"An'she looks hard at the dry lands. I respect the attention, but I walk in the shade of anything taller than me, which is not much.",
		"Under An'she's gaze in dry country, I find the shadow of every rock and carry myself into it. Even devotion likes a little shade.",
	},
	["race.tauren.muse.w08.054"] = {
		"My people's tents fold into a bundle a kodo can carry. For generations that was the shape of our lives: everything you love, ready to move by morning.",
		"Look at a tauren tent and you see the whole long road of my people: hides and poles, light enough to strike in an hour, strong enough to hold off the wind.",
	},
	["race.tauren.muse.w08.055"] = {
		"If you need something lifted, ask a tauren. If you need it lifted gently, ask nicely.",
		"Heavy things are a tauren's specialty. Fragile things, less so. Give me the heavy ones.",
	},
	["race.tauren.muse.w08.056"] = {
		"The plains burn sometimes, and the elders do not weep for it. A season later the grass comes back greener, as if the fire had only been clearing its throat.",
		"After a grass fire the land looks finished. It never is. I keep that picture for the days when I feel finished myself.",
		"Black ground after a burn, and a month later the first green spears coming through the ash. My people learned their patience from sights like that.",
	},
	["race.tauren.muse.w08.057"] = {
		"A boat is the worst place in the world for a tauren: nothing to read through the hooves, and nothing to stand on that isn't moving.",
		"On a ship's deck my hooves keep asking the ground where it went. The sea does not answer, and the planks only creak.",
		"Ships were built by people who weigh half what I do. The gangplank reminds me every time.",
	},
	["race.tauren.muse.w08.058"] = {
		"Bloodhoof Village is not much: tents, fires, a well, and the herds beyond. That is exactly as much as a tauren needs, and exactly why I think of it so often.",
		"Bloodhoof Village smells of smoke, tanned hide and baking bread. If anyone ever asks me what home smells like, that is my answer.",
		"Bloodhoof Village keeps no walls, only fires and good eyes. Wherever I go, I judge a town by how badly it needs the walls.",
	},
	["race.tauren.muse.w08.059"] = {
		"When a tauren decides to stand somewhere, the ground itself seems to agree. Enemies notice it, usually too late.",
		"We are slow to start and very hard to stop. Most of our enemies learn only the second half.",
		"There is a moment, before a tauren charges, when the earth goes quiet underfoot, as if it were holding its breath with us.",
	},
	["race.tauren.muse.w08.060"] = {
		"hums low in the chest, a wordless tune of the kind herders use to keep kodo calm on a long walk.",
		"makes a deep, slow hum, hardly a song, more the sound of a herd settling down.",
	},
	["race.tauren.muse.w08.061"] = {
		"Low tunnels are a tauren's private punishment. I walk them bent double, horns scraping, and promise the sky I will see it again soon.",
		"Underground, everything is too close: the ceiling, the walls, the air. My people were not made for burrows. We leave those to the quilboar.",
	},
	["race.tauren.muse.w08.062"] = {
		"Elders in Mulgore answer a question with a story, and the story with another question. The trick, I think, is that this is the answer.",
		"Ask a tauren elder something simple and you will get a long tale about a kodo, a river and a stubborn hunter. Somewhere inside it, if you are patient, is your answer.",
	},
	["race.tauren.muse.w08.063"] = {
		"Our shamans talk to the spirits of earth and wind the way one talks to neighbors over a fence. Gift or no gift, I try to be a decent neighbor.",
		"The shamans say the elements are not servants but kin, and kin with tempers. Living among my people, I can believe it of the kin and the tempers both.",
		"Our shamans thank the wind after it answers them, the way a hunter thanks the beast. Good manners hold for spirits too.",
	},
	["race.tauren.muse.w08.064"] = {
		"My people never turn a guest from the fire, not even one we dislike. We simply give that one the seat in the smoke.",
		"A tauren camp feeds whoever arrives hungry. The questions wait until after the meal, and some of them are never asked at all.",
	},
	["race.tauren.muse.w08.065"] = {
		"Big doesn't mean slow. It means that when I arrive, everyone knows about it.",
		"We tauren aren't slow. We simply refuse to be rushed, which looks the same from outside.",
	},
	["race.tauren.muse.w08.066"] = {
		"From the plains below, Thunder Bluff looks like a fist of rock raised against the sky, with fires on its knuckles. I have never looked up at it without slowing my step.",
		"Walking across Mulgore toward the bluffs, the city rises a little more with every hour, as if it were getting to its feet to greet you.",
	},
	["race.tauren.muse.w08.067"] = {
		"Armorers measure my head, then my horns, then sigh. Every helmet in the world was designed by someone who never had to think about horns.",
		"Show a smith a tauren head and watch the arithmetic start. Horns are a problem no anvil was ready for.",
	},
	["race.tauren.muse.w08.068"] = {
		"There is one smell I would carry across the world if I could: dry plains in the first moment the rain touches them. Everything that ever grew there seems to breathe at once.",
		"When the first drops hit the dust of Mulgore after a dry spell, the whole land smells as if it were waking. I have found nothing finer in any city.",
	},
	["race.tauren.muse.w08.069"] = {
		"My people move like a herd when danger comes: the strong to the outside, the young and the old within. I do it without thinking, even among strangers.",
		"Put a tauren in a crowd under threat and watch: we drift to the edge, between the trouble and the smallest ones. It is older than any oath.",
	},
	["race.tauren.muse.w08.070"] = {
		"The prairie dogs of Mulgore stand up to watch every traveler pass, like little sentries. I have always given them a nod. It costs nothing.",
		"Every hole on the plains has a prairie dog in it, and every prairie dog has a view on you. It is good to be watched by something that cannot hurt you.",
	},
	["race.tauren.muse.w08.071"] = {
		"May the ground be firm under all of you, and the grass high where you sleep.",
		"Earth Mother keep your steps steady on her back, hooves or boots, whichever you have.",
	},
	["race.tauren.muse.w08.072"] = {
		"Some of the oldest among us remember the years of wandering, before Mulgore was ours. When they speak of it, even the loudest young brave goes quiet.",
		"The long walk is no legend to my people. There are grandmothers in Bloodhoof who can still tell you how heavy the tent poles were.",
	},
	["race.tauren.muse.w08.073"] = {
		"If I fall far from Mulgore, the earth will take me just the same. It is all one earth. Still, I would like someone to carry word home.",
		"Whatever ground I end on, the Earth Mother is under it. That has always seemed a better promise to me than any grave.",
	},
	["race.tauren.muse.w08.074"] = {
		"The Kolkar still raid across the Barrens as if the old wars never ended. For them, perhaps, they never did. I am in no hurry to forget either.",
		"The centaur clans still roam: Kolkar in the Barrens, Galak among the needles, Magram and Gelkis in Desolace. My people learned those names the hard way.",
	},
	["race.tauren.muse.w08.075"] = {
		"Orc grog is fierce stuff for an orc. For a tauren it is a warm start. The orcs take this personally.",
		"There is more of a tauren for a drink to get lost in. The orcs at the next table never quite forgive it.",
	},
	["race.tauren.muse.w08.076"] = {
		"A storm on open grass teaches one thing quickly: a tauren is the tallest thing for a mile, and the sky has noticed.",
		"On the plains, when the thunder rolls in, the young are taught to get low and stay low. Being tall has its costs.",
		"The elders have a short rule for thunder on the plains: be lower than the grass, if you can manage it. A tauren rarely can.",
	},
	["race.tauren.muse.w08.077"] = {
		"Orcs, trolls, Forsaken, tauren: a strange herd, with horns and tusks and bones showing. Still, a herd moves together or the predators pick it apart, and every one of us knows it.",
		"The Horde is a mixed herd. We do not graze the same grass, but we all know which way the wolves come from.",
	},
	["race.tauren.muse.w08.078"] = {
		"scratches slowly at the base of one horn, the way some folk rub their chin when a thought will not come out.",
		"taps a broad finger against one horn, once, twice, while some thought finishes walking around.",
	},
	["race.tauren.muse.w08.079"] = {
		"I call everyone 'little one' without meaning to. Orcs mind it. Trolls find it funny. Goblins, for some reason, agree.",
		"To a tauren nearly everyone is small. I try not to say it aloud. I do not always manage.",
	},
	["race.tauren.subzone_enter.w08.001"] = {
		"{subzone}. A new name for the same earth. The Earth Mother does not read maps.",
		"{subzone}, the map says. The ground under my hooves never asked to be called anything.",
		"{subzone}. Names change every few hundred paces; the earth beneath them is one piece.",
	},
	["race.tauren.subzone_enter.w08.002"] = {
		"lowers {g:his|her} horns a little on entering {subzone}, from habit, whether or not there is anything to hit.",
		"comes into {subzone} with {g:his|her} head slightly tilted, the habitual caution of someone always taller than the doorways.",
		"enters {subzone} with one eye on what lies ahead and the other on whatever might hang low enough to catch a horn.",
	},
	["race.tauren.subzone_enter.w08.003"] = {
		"{subzone}. Softer ground or harder? My hooves tell me before my eyes do.",
		"{subzone}. The ground changes its voice under my hooves. A tauren hears a place before seeing it.",
		"{subzone}. Stone, dirt, planks or moss: my hooves file it away without asking me.",
	},
	["race.tauren.subzone_enter.w08.004"] = {
		"{subzone}. I look up first. The sky comes with me everywhere, and I like to see how it sits over each place.",
		"{subzone}. More sky here or less than the last place? Anyone raised in Mulgore checks.",
		"{subzone}. Before the ground, the sky: how much of it there is tells me how freely I will breathe here.",
	},
	["race.tauren.subzone_enter.w08.005"] = {
		"{subzone}. Would a kodo graze here? It is the first question my people ask of any ground, and still a good one.",
		"{subzone}. I weigh it the way a herder would: grass enough, water enough, room enough to turn a herd. Most places fail on the last.",
		"{subzone}. Fat herds or hungry ones? My eyes decide which this place would raise before I have taken ten steps.",
	},
	["race.tauren.subzone_enter.w08.006"] = {
		"{subzone}. Mind your heads. Well, mind mine.",
		"{subzone}. Room enough for a tauren? We'll see.",
		"{subzone}. Let's hope it's roomy.",
	},
	["race.tauren.subzone_enter.w08.007"] = {
		"{subzone}. Earth Mother, here too I walk on you. Bear with my weight a little longer.",
		"{subzone}. I set my hooves down gently. Wherever I go, I am a guest on the Earth Mother's back.",
		"{subzone}. A word to the ground before I walk it: forgive the hooves, I am heavier than most.",
	},
	["race.tauren.subzone_enter.w08.008"] = {
		"pauses as {subzone} opens around {g:him|her}, ears turning toward each new sound like a herd beast on watch.",
		"enters {subzone} at an unhurried pace, broad head turning slowly from one side to the other.",
		"lifts {g:his|her} head on entering {subzone} and stands a moment, taking in the place with the slow patience of the plains.",
	},
	["race.tauren.subzone_enter.w08.009"] = {
		"{subzone}. If there is a low branch, a low beam or a low ceiling here, my horns will find it. It is a gift.",
		"{subzone}. My horns will map this place long before I do, mostly by bumping into it.",
	},
	["race.tauren.subzone_enter.w08.010"] = {
		"{subzone}. Are there herds here, or were there ever? A land tells you a great deal by what it can feed.",
		"{subzone}. I look for droppings, hoofprints, cropped grass: any sign that something large has lived well here.",
		"{subzone}. A herd would not ask much of it: a little grass, a little water, a little peace. Let's see what it offers.",
	},
	["race.tauren.subzone_enter.w08.011"] = {
		"{subzone}. Wide enough to turn around without knocking anything over? That is my whole measure of a place.",
		"{subzone}. I count how many things I could break here by turning too fast. Fewer than the last place, I hope.",
	},
	["race.gnome.landmark.w09.001"] = {
		"stops before {landmark} and tilts {g:his|her} head back to take it all in, then further, then a little further still.",
		"circles {landmark} slowly, as if looking for the maker's mark.",
		"gives {landmark} a long, appraising look, fingers twitching as though itching to take something apart to see how it was done.",
	},
	["race.gnome.landmark.w09.002"] = {
		"{landmark}. A name worth keeping. I write it down twice, in case one page catches fire.",
		"{landmark}. Every landmark is somebody's proof that they were here. Gnomeregan was ours. I hope this one fares better.",
		"{landmark}. I'd love to know who planned it, and whether they kept the drawings.",
	},
	["race.gnome.muse.w09.001"] = {
		"Under the mountains west of Kharanos there are workshops with gnomish names still painted on the doors. Troggs sleep on the benches now.",
		"Sometimes I walk Gnomeregan's corridors in my head, left, right, down the lift, and stop just short of the part where it all went wrong.",
		"Ask any gnome the way to some corner of Gnomeregan and you'll get it, down to the last stair. Ask why they don't live there anymore and the conversation ends.",
	},
	["race.gnome.muse.w09.002"] = {
		"I've done the math. With enough stools, I can reach anything in Azeroth.",
		"Doorknobs at eye level for a dwarf, counters at chin level for a human. I've learned to climb with dignity.",
		"Tall folk see farther. Small folk see what's underfoot, and that's where the dropped coins are.",
	},
	["race.gnome.muse.w09.003"] = {
		"A dwarven mug holds roughly my own volume. I've been told this is not a reason to give up halfway.",
		"The dwarves pour ale for gnomes exactly as they pour it for themselves. It's pure generosity, and it's how a gnome learns to walk sideways.",
		"In Kharanos they brew a stout that could fuel a steam engine. I asked, quite seriously, whether anyone had tried.",
	},
	["race.gnome.muse.w09.004"] = {
		"The Deeprun Tram runs under the sea between Ironforge and Stormwind, dug by gnomes and dwarves together. Anyone who rides it should press their nose to the glass and count the fish.",
		"Under the sea, in a tube of stone and glass, a tram goes back and forth all day. Gnomish thinking, dwarven digging. Not a bad marriage.",
		"The best proof that gnomes and dwarves can work together is the Deeprun Tram. The second-best proof is that they're still on speaking terms afterwards.",
	},
	["race.gnome.muse.w09.005"] = {
		"The ones who stayed behind in Gnomeregan aren't quite gnomes anymore, people say. The sickness ate at them, and they no longer know who we were to them.",
		"'Leper gnomes,' folk call them, as if it were a breed. They were tinkers and clerks and cooks once, and the poison we let loose took the rest.",
		"Deep in the old city, gnomes wander who no longer know their own names. In Tinker Town nobody says that aloud.",
	},
	["race.gnome.muse.w09.006"] = {
		"Goblins and gnomes both love machines. The difference is that ours are supposed to work, and theirs are supposed to sell.",
		"A goblin builds it fast and cheap. A gnome builds it right and late. Both explode, but ours explode on schedule.",
		"Never lend a goblin a wrench. You'll get it back with an invoice.",
	},
	["race.gnome.muse.w09.007"] = {
		"We call ourselves the Gnomeregan Exiles, not 'the gnomes of Ironforge.' The name is a promise we keep making to the city.",
		"An exile is someone who still knows exactly where home is. That's why we chose the word.",
		"Ask a gnome where they're from and the answer is always Gnomeregan, never Tinker Town. We're stubborn about our addresses.",
	},
	["race.gnome.muse.w09.008"] = {
		"taps a nearby surface twice with a knuckle, listening hard, as though expecting it to report its alloy.",
		"stands on tiptoe to see past something, gives up, and starts working out the angles instead.",
		"mutters a string of numbers under {g:his|her} breath, nods with deep satisfaction, and never explains what they were for.",
	},
	["race.gnome.muse.w09.009"] = {
		"The humans of Stormwind say gnomes take to the arcane like fish to water. I think it's simpler: magic is just engineering that refuses to show its gears.",
		"Arcane power follows rules. Strange rules, badly documented, but rules. That's why so many of us find it irresistible.",
		"Some gnomes tinker with brass, some with the arcane, a few with darker things. Underneath it's the same itch: to see how the world is wired.",
	},
	["race.gnome.muse.w09.010"] = {
		"Thermaplugg still sits in Gnomeregan, they say, giving orders to troggs and to what's left of our own. A traitor with a throne in a poisoned city. He's welcome to it, for now.",
		"Every people has a traitor in its story. Ours has a name, a title and, the rumor goes, a throne built out of our own city.",
		"The trouble with a clever traitor is that the plan sounded so reasonable at the time. Thermaplugg knew exactly how we think.",
	},
	["race.gnome.muse.w09.011"] = {
		"Probability of something going wrong today: high. Probability I'll learn something from it: higher. I call that a good day.",
		"Every failure is just data with bad manners. I've collected quite a lot of data.",
		"A gnome doesn't fail. A gnome completes a test that reveals room for improvement.",
	},
	["race.gnome.muse.w09.012"] = {
		"There are fewer gnomes in the world than there were. You notice it in small ways: a Tinker Town bench with room to spare, a name nobody answers to.",
		"We were never many to begin with, and Gnomeregan cost us far too many. Every gnome you meet on the road is someone who made it out.",
		"When I spot another gnome far from Ironforge, I wave like a fool. There aren't enough of us left to be cool about it.",
	},
	["race.gnome.muse.w09.013"] = {
		"In a crowd of humans I navigate by belt buckles. It works surprisingly well.",
		"Crowds are an obstacle course for a gnome. By now I'm an expert in knees.",
		"Being trodden on is a hazard of my size. I've started wearing brighter colors in self-defense.",
	},
	["race.gnome.muse.w09.014"] = {
		"Tinker Town smells of oil, hot metal and somebody's overdone toast. It isn't home. It's the best impression of home we could build in a hurry.",
		"In Tinker Town something is always ticking, hissing or being argued about. For a borrowed corner, it sounds remarkably like us.",
		"Our quarter of Ironforge is small, cluttered and loud. If you squint, and the steam is just right, it could almost be a street of the old city.",
	},
	["race.gnome.muse.w09.015"] = {
		"The troggs came up from below, more of them than we had numbers for. That's a rare sentence for a gnome to say: more than we had numbers for.",
		"We built a city that could withstand anything from above. Nobody thought to ask what was underneath. I keep that as a lesson in where to look.",
		"Troggs aren't clever. They didn't need to be. There were simply more of them than there were of us, and they didn't stop.",
	},
	["race.gnome.muse.w09.016"] = {
		"Ropes, roots, nets, sticky webs: I've yet to meet a knot a gnome can't wriggle out of with some patience and a bit of contortion.",
		"Tie a gnome up and you've handed a gnome a puzzle. We don't stay puzzled long.",
		"Small joints, quick fingers, a deep dislike of being stuck. Escaping is practically a gnomish hobby.",
	},
	["race.gnome.muse.w09.017"] = {
		"Every map of Azeroth I've seen is wrong somewhere. That isn't a complaint. It's an invitation.",
		"Someone ought to measure this whole world properly, coast to coast, in consistent units. I nominate a gnome. I nominate several.",
		"Humans draw maps with sea monsters in the empty bits. Gnomes leave the empty bits empty and label them 'pending.'",
	},
	["race.gnome.muse.w09.018"] = {
		"goes still for a moment, eyes fixed on nothing, with the look gnomes get when someone mentions the old city.",
		"stops fiddling with whatever is in reach, and for once the busy hands simply rest.",
		"hums a few notes of something cheerful, falters, and lets the tune go without finishing it.",
	},
	["race.gnome.muse.w09.019"] = {
		"Humans think a gnome's height means a child's judgment. Then they watch us do sums. It's a short, satisfying conversation.",
		"The humans of Stormwind are lovely. They also lean down and speak slowly to me. I answer in very long words until they stop.",
		"Humans build tall, think fast and live short. We get along; we just keep different clocks.",
	},
	["race.gnome.muse.w09.020"] = {
		"The night elves make things grow instead of building them. There isn't a single bolt in all of Darnassus. It unsettles me and impresses me in about equal measure.",
		"Ask a kaldorei for the load-bearing calculations of their great tree and you get a long, patient silence. I'd still love to see the numbers.",
		"Night elves are very tall, very old and very calm. Next to one of them, a gnome feels like a pocket watch beside a tower clock.",
	},
	["race.gnome.muse.w09.021"] = {
		"Gnomish safety rules fit on a single card. The card is fireproof. That tells you most of what you need to know.",
		"Somebody in Tinker Town keeps a tally of small fires, I'm told. The number goes up every week, and everyone is oddly proud of it.",
		"Smoke from a gnomish workshop comes in three colors: normal, interesting and run.",
	},
	["race.gnome.muse.w09.022"] = {
		"When the Alliance needed wings and boats that swam under the sea, gnomes built them, the old tinkers say. We pay our debts in brass and cleverness.",
		"Our flying machines fought in the Second War, the old tinkers like to say. They also like to say how many of them landed on purpose.",
		"The Alliance kept a place for us after Gnomeregan, when we had nothing to give. A gnome repays that kind of thing, with interest.",
	},
	["race.gnome.muse.w09.023"] = {
		"Idea! No, wait. Better idea. Hold on, I'm having several.",
		"There's a solution to this. There's always a solution. Sometimes it's just very, very well hidden.",
		"Give me a minute and a scrap of paper and I'll have improved something. Possibly not the right thing.",
	},
	["race.gnome.muse.w09.024"] = {
		"We flooded our own halls with poison to stop the troggs. It worked, in the way a fire works on a house full of rats.",
		"The radiation was meant to kill the invaders and spare everyone else. Gnomes are good at plans. We are less good at the part where plans meet the world.",
		"The troggs bore the radiation better than we did. Nobody in Tinker Town finds that funny, and gnomes find most things funny.",
	},
	["race.gnome.muse.w09.025"] = {
		"Dwarves are the tall friends in my life. I tell them so. They never know whether to be flattered.",
		"To a gnome, a dwarf is a pleasantly tall neighbor with a beard you could hide in. I haven't tried. Yet.",
		"Dwarves complain that humans tower over them. I nod sympathetically, from somewhere around their belt.",
	},
	["race.gnome.muse.w09.026"] = {
		"A bird is a marvelous design: hollow bones, efficient wings, very poor documentation.",
		"Watch a cat walk along a fence and tell me nature doesn't understand balance. I'd love to see its gyroscope.",
		"Beasts are machines nobody built. I don't mean that coldly. It's the highest compliment a gnome has.",
	},
	["race.gnome.muse.w09.027"] = {
		"People think gnomes are cheerful because we don't understand what we've lost. We understand perfectly. We're cheerful anyway, on purpose.",
		"Cheer is an instrument. Gnomes learned that when we had nothing else left. I keep mine well polished.",
		"Grief sits underneath everything we do, like a foundation. You can build something bright on a foundation. We do.",
	},
	["race.gnome.muse.w09.028"] = {
		"Goggles are not a fashion choice. They are a lifestyle, and a precaution.",
		"Every gnome should carry three things: a pencil, a spare pencil and an excuse.",
		"If it's stuck, think. If it's still stuck, think harder. If it's still stuck, kick it gently. Gnomish method.",
	},
	["race.gnome.muse.w09.029"] = {
		"Dun Morogh taught a whole people of indoor tinkerers what cold is. We adapted. Mostly with scarves.",
		"Gnomeregan was a city of tunnels and lamps. To a lot of us, the open sky over Dun Morogh still looks like a ceiling someone forgot to finish.",
		"On the slopes of Dun Morogh the wind finds every seam in a coat. Small bodies chill quickly; we make up for it with enormous scarves.",
	},
	["race.gnome.muse.w09.030"] = {
		"High Tinker Mekkatorque lost a city and kept a people together. I wonder whether the second wasn't the harder trick.",
		"Mekkatorque could have spent his days blaming himself. Instead he counts survivors, draws up plans and listens. That's leadership, gnome-sized and full-sized at once.",
		"A High Tinker with no city to tinker in still keeps the title. I think he keeps it for us.",
	},
	["race.gnome.muse.w09.031"] = {
		"A gnome who stops asking questions is a gnome who has been badly hit on the head. I check myself regularly.",
		"Curiosity weighs nothing in a pack. It's the one load a gnome is glad to haul everywhere.",
		"Every question answered leaves two new ones behind. Some find that exhausting. A gnome calls it job security.",
	},
	["race.gnome.muse.w09.032"] = {
		"As Tinker Town tells it, when Gnomeregan fell, Magni Bronzebeard didn't ask what we could pay. He asked how many beds we needed. A gnome doesn't forget a question like that.",
		"Dwarves argue about everything except whether a neighbor in trouble gets help. On that point, Ironforge never even held a vote.",
		"We came to the dwarves' gate with burns, sick lungs and nothing to trade. They opened it anyway. That's the whole story, and it's enough.",
	},
	["race.gnome.muse.w09.033"] = {
		"Gnome-sized portions don't exist outside Tinker Town. Everywhere else I'm handed a meal and a challenge.",
		"Dwarven bread is dense enough to build with. I've stopped joking about that, because someone in Tinker Town is probably trying.",
		"A full dwarven breakfast would keep me going for three days. Apparently that's not how breakfast works.",
	},
	["race.gnome.muse.w09.034"] = {
		"Retaking Gnomeregan won't be a single heroic charge. It'll be a thousand small fixes: one corridor cleaned, one pump restarted, one door that opens again. Gnomes are good at small fixes.",
		"When we take the city back, somebody will have to scrub the poison out of every pipe. In my head, I've already volunteered.",
		"Once the city under the mountain is ours again, it will need everything: hands, ideas, patience. I'm practicing all three.",
	},
	["race.gnome.muse.w09.035"] = {
		"picks a scrap of wire off the ground, twists it into a tiny spiral without looking, and seems pleased with the result.",
		"squints at the nearest hinge, door or buckle, clearly composing a list of improvements nobody asked for.",
		"sketches a quick contraption in the air with one finger, frowns, and erases it with a wave.",
	},
	["race.gnome.muse.w09.036"] = {
		"I take notes on everything: distances, prices, which bridges creak. Nobody will ever read them. That isn't why I write them.",
		"My pockets fill up with scraps of paper covered in numbers. Every so often I sort them, and every time I find a better idea I'd forgotten.",
		"Writing a thing down is how a gnome makes it hold still long enough to be understood.",
	},
	["race.gnome.muse.w09.037"] = {
		"Out in the Shimmering Flats, gnomes and goblins race machines across a dry salt lake for the honor of their engineers. It's the most sensible war I've ever heard of.",
		"At the Mirage Raceway, gnomes and goblins settle their rivalry with speed and spectacular crashes. Nobody wins for long, and everybody learns something.",
		"If every quarrel in Azeroth were settled like the race in Thousand Needles, there'd be more wrecks and far fewer graves.",
	},
	["race.gnome.muse.w09.038"] = {
		"Gnomes don't talk much about dying. We talk about maintenance. It amounts to the same thing, with better odds.",
		"Everything wears out: gears, boots, cities, gnomes. The trick is to be useful while the parts still turn.",
		"I'd like my end to be a tidy one, with my notes in order. It won't be. Gnomes rarely manage tidy.",
	},
	["race.gnome.muse.w09.039"] = {
		"Bigger foes keep aiming where they'd expect a head to be. A gnome's head is somewhere else entirely. It's the one advantage I'll never complain about.",
		"Being small is not the same as being little. Ask anyone who underestimated a gnome. If you can find them.",
		"Courage isn't measured in height. Good thing too, or gnomes would be cowards by definition.",
	},
	["race.gnome.muse.w09.040"] = {
		"Somebody in Tinker Town is fixing something right now. I find that very comforting.",
		"Gnomeregan may be lost, but gnomes aren't. There's a difference, and I intend to keep it that way.",
		"Cheer up, everyone. Statistically, things are bound to improve eventually.",
	},
	["race.gnome.muse.w09.041"] = {
		"Nobody truly knows where the troggs came from, only that they came up from the deep and kept coming. A gnome hates an unanswered question nearly as much as a trogg.",
		"The troggs welled up out of the earth beneath Gnomeregan like water from a cracked pipe. I'd give a lot to know what cracked.",
		"Below the old city lies whatever place the troggs lived in before they found us. I'd like to see it, from a long way off, with a lot of friends.",
	},
	["race.gnome.muse.w09.042"] = {
		"Roads are wonderful inventions. Whoever designed the hills around them should be spoken to.",
		"A gnome's stride is short, so the world is bigger for us than for anyone. I've decided to count that as a bonus.",
		"Every mile is longer on short legs. Every view is just as wide, though. I call it even.",
	},
	["race.gnome.muse.w09.043"] = {
		"In Tinker Town the gray-bearded tinkers still argue about how Gnomeregan's lifts were balanced. Arguing about it is a way of keeping them running.",
		"Listen to old tinkers talk shop and every second sentence begins 'back in Gnomeregan.' Nobody points out how their voices change on those words.",
		"We remember the city through its machines: the great lifts, the pumps, the lamps that never went out. It's easier than remembering the faces.",
	},
	["race.gnome.muse.w09.044"] = {
		"No, I'm not a dwarf's apprentice. Yes, I'm sure. No, I won't fetch anything.",
		"I'm perfectly grown, thank you. Gnomes simply come in the efficient size.",
		"Compact. The word you're looking for is compact.",
	},
	["race.gnome.muse.w09.045"] = {
		"Every gnome out on the roads of Azeroth is doing two jobs: whatever the day asks, and showing the world we're not finished.",
		"Each gnome who makes a name out here makes it easier for the next. I'd like to make it a little easier still.",
		"We lost a city, not our usefulness. Out here I get to prove that a little every day.",
	},
	["race.gnome.muse.w09.046"] = {
		"The dwarves have a hundred jokes about gnomes. We have a hundred and one about dwarves. We just tell ours faster.",
		"Dwarves laugh at our inventions until one of them works. Then they ask to borrow it. Then they laugh again when it breaks. It's a good friendship.",
		"A dwarf and a gnome walk into a tavern. One of them can see over the counter. That's the whole joke, and the dwarf never stops finding it funny.",
	},
	["race.gnome.muse.w09.047"] = {
		"Ironforge is built on a scale that makes a gnome feel like a bolt in a bridge: small, but holding something up.",
		"The halls of Ironforge echo. A gnome's footsteps hardly count in there, but my thoughts get very loud.",
		"Everything in Ironforge is big, warm and made to last forever. Gnomes build for cleverness; dwarves build for eternity. Living in their house is an education.",
	},
	["race.gnome.muse.w09.048"] = {
		"When I see something broken by the road, a cart, a fence, a pump, my fingers itch. It takes real discipline to walk past.",
		"A broken cart by the roadside is a little tragedy and a little invitation. I usually stop to look at the axle, at least.",
		"Other folk see wreckage. A gnome sees spare parts.",
	},
	["race.gnome.muse.w09.049"] = {
		"I'm not built for hatred; gnomes rarely are. But when I see a trogg, something cold and precise wakes up in me and starts taking measurements.",
		"Troggs in our workshops, troggs in our homes, troggs sleeping where the great engines stood. I can stay cheerful about most things. Not that.",
		"Gnomes forgive easily. We just keep very good records.",
	},
	["race.gnome.muse.w09.050"] = {
		"Wherever dwarves set up a forge, a gnome seems to turn up within the week, offering to improve the bellows.",
		"Humans have the farms, dwarves the mines, kaldorei the forests. Gnomes have the questions. Every alliance needs someone asking them.",
		"The Alliance is a grand machine with very mismatched parts. That's exactly why it interests me.",
	},
	["race.gnome.muse.w09.051"] = {
		"Home is a city I can't walk into and a quarter that isn't mine. In between, the road has become something of a home too.",
		"Gnomes in exile get good at making a home out of a corner: a lamp, a bench, a stack of papers. Give me those and I'll manage anywhere.",
		"I don't have a home so much as an address under dispute. The troggs are squatting. We'll settle it eventually.",
	},
	["race.gnome.muse.w09.052"] = {
		"peers up at a tall passerby with polite patience, the way gnomes learn to look at most of the world.",
		"climbs onto the nearest crate or step for a better view, as though it were the most natural thing in the world.",
		"pats down several pockets in turn, finds what {g:he|she} was after in the very last one, and looks as though that was the plan all along.",
	},
	["race.gnome.muse.w09.053"] = {
		"Magic is like steam: it does marvelous work and has no sense of humor about carelessness.",
		"Some of the cleverest gnomes I've heard of were undone by one experiment too many. Curiosity is a fine engine with no brakes.",
		"The arcane rewards a careful mind and punishes a careless one immediately. Gnomes approve of feedback that clear.",
	},
	["race.gnome.muse.w09.054"] = {
		"Our city was young, as cities go. The mountains and the earth itself were far older. Sooner or later a gnome learns humility from the rock.",
		"Gnomeregan stood a long time in gnome terms and hardly any in the mountain's. Somewhere in that difference is a lesson I haven't finished working out.",
		"The mountains of Dun Morogh have outlasted kings and cities. They'll outlast Thermaplugg too. I take comfort in a patient mountain.",
	},
	["race.gnome.muse.w09.055"] = {
		"Gnomeregan will see its lamps lit again. Mark my words, and my measurements.",
		"One day we'll open Gnomeregan's front gate from the inside. I'd bet my last copper on it.",
		"Lost isn't gone. Gnomeregan is just waiting for the right repair crew.",
	},
	["race.gnome.muse.w09.056"] = {
		"My legs have done a dwarf's work today and been paid at gnome rates. I'll file a complaint with myself later.",
		"Tired is just a gauge reading. It tells me how far I've gone, not whether I can go farther.",
		"Even optimism needs a rest now and then. Mine is idling, not stopped.",
	},
	["race.gnome.muse.w09.057"] = {
		"A gnome travels best in company, if only because someone has to hand things down from the high shelves.",
		"Friends are the one machine nobody can build alone. I'm always glad to add a part.",
		"I like people who ask 'how does it work?' instead of 'what's it for?' The second question comes later and usually answers itself.",
	},
	["race.gnome.muse.w09.058"] = {
		"Out under the night sky, the stars are scattered like workshop lamps seen from far off. I know which city they remind me of.",
		"The night sky is the one ceiling no gnome has tried to repair. Give us time.",
	},
	["race.gnome.muse.w09.059"] = {
		"Snow. Exile in Dun Morogh made every gnome an expert in it, and not one of us a fan.",
		"Snowflakes settle on my sleeve, each one a perfect little lattice. I'd admire them more if they weren't melting down my collar.",
	},
	["race.gnome.muse.w09.060"] = {
		"Rain. Water falling without pipes, everywhere, all at once. A gnome can admire the system and still want to file a complaint.",
		"Every drop of this rain is going somewhere with no plan at all. Somebody ought to fit the sky with gutters.",
	},
	["race.gnome.muse.w09.061"] = {
		"Some gnome children have only ever known Tinker Town. They draw Gnomeregan from their elders' stories and always put in too many lamps. Nobody corrects them.",
		"There are little gnomes in Ironforge who think a city is something you borrow from dwarves. One day I'd like them to see the real thing.",
		"Ask a gnome child what a gnome city looks like and you'll hear about lifts, lamps and a great deal of hope. The details are borrowed. The hope isn't.",
	},
	["race.gnome.muse.w09.062"] = {
		"Every gnome secretly believes the world runs a little slow and needs adjusting. I just admit it.",
		"Patience is a virtue, they say. Gnomes prefer efficiency, which is patience with a schedule.",
		"I'd get more done if days were longer. I've looked into it. Apparently the sun isn't adjustable.",
	},
	["race.gnome.muse.w09.063"] = {
		"A gryphon gives a gnome a long, thoughtful look before takeoff. I prefer not to know what it's thinking.",
		"Gryphons and gnomes have an understanding: I make no sudden movements, and it doesn't wonder whether I'm a snack.",
		"Gryphons were not designed with gnomes in mind. Neither were saddles, stirrups or the people who make them.",
	},
	["race.gnome.subzone_enter.w09.001"] = {
		"steps into {subzone} and starts pacing out distances at once, lips moving as {g:he|she} counts.",
		"enters {subzone} with quick, light steps, glancing at every hinge, pulley and post in passing.",
		"pauses on the edge of {subzone} to tug a pencil stub from a pocket, as if the place needs writing down immediately.",
	},
	["race.gnome.subzone_enter.w09.002"] = {
		"{subzone}. First impression: built by someone tall, for someone tall. Second impression: interesting anyway.",
		"{subzone}. I make a quick estimate of how many gnomes would fit. The answer is always more than people think.",
		"{subzone}. Everything here is a little out of reach. Noted, and forgiven.",
	},
	["race.gnome.subzone_enter.w09.003"] = {
		"{subzone}. Every place I enter gets compared, without my meaning to, with a city under the mountains. It's not a fair contest. Nothing here is poisoned, for one.",
		"{subzone}. Somebody calls this home. I wish them better luck keeping it than we had.",
		"{subzone}. A name on a map, and people who'd fight to keep it. Gnomes understand that better than most.",
	},
	["race.gnome.subzone_enter.w09.004"] = {
		"{subzone}! Lovely. Who's in charge of maintenance?",
		"{subzone}. Right, let's see what makes this place tick.",
		"Ooh, {subzone}. I have questions already.",
	},
	["race.gnome.subzone_enter.w09.005"] = {
		"{subzone}. I count the exits first. Gnomes who lost a city in a hurry never quite lose the habit.",
		"{subzone}. Where does the water go, where does the smoke go, where would I go if things went wrong? A gnome's first three questions anywhere.",
		"{subzone}. Pretty place. Where's the back door? Old habit of a people who had to run.",
	},
	["race.gnome.subzone_enter.w09.006"] = {
		"walks into {subzone} chin up and shoulders back, making the most of every inch.",
		"strides into {subzone} at a brisk gnomish clip, two steps for every one of the taller folk.",
		"arrives in {subzone} slightly out of breath from keeping pace with the world, and plainly delighted to be there.",
	},
	["race.gnome.subzone_enter.w09.007"] = {
		"{subzone}. With a week here I'd map every path and name every rock. I have a few minutes. I'll name the important rocks.",
		"{subzone}. A clean page in the notebook. Gnomes never tire of a clean page.",
		"{subzone}. I like it already, and I haven't even found out how anything here works.",
	},
	["race.gnome.subzone_enter.w09.008"] = {
		"{subzone}. Whoever put this place together had a hammer and a dream. A gnome would have added a spirit level.",
		"{subzone}. Nothing here is quite square. I'm choosing to find that charming.",
		"{subzone}. I resist the urge to fix things that aren't mine. It's a daily struggle.",
	},
	["race.gnome.subzone_enter.w09.009"] = {
		"{subzone}. Small gnome, big place. That's every place, really. In I go.",
		"{subzone}. The world doesn't shrink to fit me. So I walk in as though it had.",
		"{subzone}. Whatever waits here is probably taller than me. Most things are. It hasn't stopped a gnome yet.",
	},
	["race.gnome.subzone_enter.w09.010"] = {
		"{subzone}. Someone remind me to measure this properly later.",
		"{subzone}, is it? I'll want a proper look at how this place is put together before I go.",
	},
	["race.orc.landmark.w09.001"] = {
		"{landmark}. Other peoples raise stones to be remembered. Orcs prefer stories. Stones are quieter about it.",
		"{landmark}. A name on a map. An orc remembers a place by what happened there, and I have not yet decided what that will be.",
		"{landmark}. I look around and give it a name of my own, in my head. Orcs were never good at keeping other people's names.",
	},
	["race.orc.landmark.w09.002"] = {
		"stops at {landmark} and plants {g:his|her} feet wide, looking the place over the way a wolf looks over an unfamiliar den.",
		"halts on reaching {landmark}, takes it in with a slow turn of the head, and gives a short grunt that may be approval.",
		"pauses at {landmark}, one hand resting on {g:his|her} belt, sizing the place up with the frank stare of {g:his|her} people.",
	},
	["race.orc.muse.w09.001"] = {
		"Red dust in the seams of everything I own. Wash it out and Durotar finds a way back in. I have stopped trying.",
		"No matter how far I go, at the end of the day I shake red dust out of my boots. Durotar does not let go of its own.",
		"In some corner of my pack there is always a pinch of Durotar. I never put it there. It comes along anyway.",
	},
	["race.orc.muse.w09.002"] = {
		"Orcs who lived it remember the camps less for the bars than for the dullness: whole clans who forgot why they should stand up. I stand up a lot. Maybe that is why.",
		"The elders speak of the lethargy in the camps like a sickness of the spirit. Thrall's war cured it, they say. I think it only sleeps, and every orc keeps it sleeping in their own way.",
		"In the camps, the old ones say, the worst chain was the one nobody could see. I never sit idle for long. It is the only key I know.",
	},
	["race.orc.muse.w09.003"] = {
		"When an orc laughs, people look around for the fight. It's only a laugh. Usually.",
		"Orc laughter clears a tavern faster than a brawl. We're working on it. Slowly.",
	},
	["race.orc.muse.w09.004"] = {
		"The elements are not gentle, the shamans say, only honest. Fire burns whoever touches it. In a way I find that restful.",
		"Earth holds, water flows, fire takes, air carries: that is how an old shaman names them. Simple enough for an orc to remember, and hard enough to live by.",
		"The spirits do not care how strong I am. They notice how I stand. It took me a while to tell the difference.",
	},
	["race.orc.muse.w09.005"] = {
		"The Warsong still cut timber in Ashenvale with night elf arrows whistling past. Hellscream's clan never learned to do anything the easy way.",
		"In Ashenvale Hellscream ended the curse, and his own life with it. The Warsong are still there, felling trees in his name. Stubbornness runs in that clan like sap.",
		"Every log out of Ashenvale is paid for twice, the Warsong say: once in sweat, once in arrows. They pay it anyway.",
	},
	["race.orc.muse.w09.006"] = {
		"wipes the sweat from {g:his|her} brow with the back of a green fist, then studies the fist as if it had done something clever.",
		"runs a thumb slowly along the edge of one tusk, the way some people stroke a beard while thinking.",
		"settles {g:his|her} weight on both feet like a post driven into the ground, and goes still to think.",
	},
	["race.orc.muse.w09.007"] = {
		"A wolf will tell you plainly what it thinks of you. No wonder orcs and wolves get along: neither of us has the patience for hints.",
		"The Frostwolves rode wolves before they rode anything else, the old ones say. A wolf is a friend who never pretends. I could use more of those.",
		"Give a wolf meat and respect, in that order, and it will follow you anywhere. Some orcs are not so different.",
	},
	["race.orc.muse.w09.008"] = {
		"The Darkspear trolls laugh at things I would not laugh at, and they fight beside us without being asked twice. I have stopped trying to understand the first part.",
		"Vol'jin's people keep their word and their own counsel. Odd allies, trolls. Good ones.",
		"Trolls in the Valley of Trials, trolls at Sen'jin, trolls at our backs in every fight. The Horde would be a smaller thing without those long arms and that laughter.",
	},
	["race.orc.muse.w09.009"] = {
		"The tauren helped us when they had little reason to. Cairne Bloodhoof does not forget a friend, and an orc should not forget a tauren.",
		"A tauren listens all the way to the end before answering. I am trying to learn that. It is going slowly.",
		"When orcs first came to Kalimdor, the elders say, it was the tauren who showed us where the water was. A debt like that has no end, and I do not want it to.",
	},
	["race.orc.muse.w09.010"] = {
		"The Forsaken stand in the Horde because Thrall allowed it. I give them what the Warchief gives: a chance, and a careful eye.",
		"Dead things that talk and trade and keep a bargain. I do not have to like them. I only have to watch whether they keep it.",
		"The Forsaken smell of the grave and of their apothecaries' bottles. I would rather stand upwind. But they hate the Scourge as much as anyone, and that counts.",
	},
	["race.orc.muse.w09.011"] = {
		"The Burning Blade wear our faces and whisper the old hunger back into orc ears. An enemy outside the walls I understand. This one I hate.",
		"In the caves beneath Orgrimmar itself the Burning Blade met in secret. The demons lost their hold on us. They did not stop reaching.",
		"Every orc who joins the Burning Blade is a door left open from the inside. I keep an eye on doors.",
	},
	["race.orc.muse.w09.012"] = {
		"Scorpid tail, roasted. Tastes like boot leather with a grudge. I'll have seconds.",
		"Durotar cooking: catch it, cook it, argue about it. In that order.",
	},
	["race.orc.muse.w09.013"] = {
		"Thrall gave us the hardest corner of Kalimdor, and I think he chose well. Few covet a land of rock and thorn, so few come to take it.",
		"Rock, thorn and red earth: Durotar gives nothing for free. That is exactly why every orc in it knows what a thing is worth.",
		"Other peoples settle where the living is easy. Orcs settled where the living is hard and made it ours. There is a pride in that I could never explain to a human.",
	},
	["race.orc.muse.w09.014"] = {
		"Draenor is a word the elders say slowly, as if it might break. Whatever they saw there, it is still in their faces.",
		"Green plains and wide rivers, the old ones say, before the fel burned the world we came from. They tell it the way you touch an old scar.",
		"Ask an elder about Draenor and wait. The answer comes slowly, and it is never about the land. It is about who was standing on it.",
	},
	["race.orc.muse.w09.015"] = {
		"Say what you mean. I'll do the same. We'll both get home sooner.",
		"Speak plainly or don't speak. Orcs have no ear for riddles.",
		"If it takes three sentences to say, it only needs one.",
	},
	["race.orc.muse.w09.016"] = {
		"The ancestors watch, the shamans say. I do not imagine them stern. I imagine them curious, waiting to see what an orc does with a free life.",
		"I would like the ancestors to see me do one thing well each day. Not great things. Things done well.",
		"Whatever the ancestors think of us, they knew the curse and they know it is broken. They must watch this generation with a kind of wonder.",
	},
	["race.orc.muse.w09.017"] = {
		"Orgrimmar carries Doomhammer's name, and Thrall carries his hammer. Our city and our Warchief both keep a dead orc's trust. A heavy thing to build on, and a strong one.",
		"Every time I say Orgrimmar I say Doomhammer's name too. A city that remembers its dead in every greeting. I like that.",
		"A city named for a fallen chieftain, ruled by the one he trusted. Orcs build on memory more than on stone.",
	},
	["race.orc.muse.w09.018"] = {
		"Humans flinch when I smile. I'm told the tusks make it look like a threat. I've decided to smile more.",
		"An orc smiling makes humans nervous. That's not my problem, but it is my entertainment.",
	},
	["race.orc.muse.w09.019"] = {
		"Strength is easy to show and hard to aim. Anyone learns the first part fast. The second takes a lifetime.",
		"A strong arm is a gift of the body. Knowing when to keep it still is a gift of the spirit, the shamans say. I am still working on that one.",
		"Hitting hard is the first lesson of strength. The last one is choosing what not to hit.",
	},
	["race.orc.muse.w09.020"] = {
		"The elders tell of the crossing: ships taken from the humans, a sea nobody knew, and a prophet's word that a land waited beyond it. It did. It was mostly rock, but it waited.",
		"Orcs are no sailors. Yet the old ones crossed a whole sea to come here, because Thrall said so. When I doubt the Warchief, I remember that.",
		"Every orc in Kalimdor stands at the far end of a sea voyage. Some made it, the elders say; some the sea kept. We do not talk about it much.",
	},
	["race.orc.muse.w09.021"] = {
		"taps out a heavy, steady beat with two fingers, the pulse of Orgrimmar's war drums, without seeming to notice.",
		"beats a slow rhythm on {g:his|her} chest with a closed fist, once, twice, as if keeping time for a march only {g:he|she} can hear.",
	},
	["race.orc.muse.w09.022"] = {
		"Orcs, trolls, tauren, the Forsaken: the Horde is made of peoples nobody else wanted. That is not a weakness. It is the mortar.",
		"Nobody chose the Horde because life was easy. We chose it because the other choice was being alone. That makes for loyal company.",
		"The Horde is a strange household. Everyone has scars, and nobody asks about them first.",
	},
	["race.orc.muse.w09.023"] = {
		"Orcs are loud, everyone says. Nobody sees us in the quiet moments, sitting with our own thoughts like a stone held in the hand.",
		"There is a silence orcs keep only for themselves. Most people never hear it. That is the point.",
		"I like the noise of the Horde. Sometimes I like this quiet better. Not that I would admit it out loud.",
	},
	["race.orc.muse.w09.024"] = {
		"The humans built the camps and called it mercy. The old ones have not forgiven it, and I will not be the one to tell them they should.",
		"Some say the Alliance and the Horde could make peace. Maybe. Ask the old ones who sat behind the camp walls first, and listen to how long they take to answer.",
		"I do not hate humans. I only remember, on behalf of those who cannot forget, what they did with us when we were weak.",
	},
	["race.orc.muse.w09.025"] = {
		"Every bench in a goblin town creaks when an orc sits down. I take it as applause.",
		"Goblins build everything for goblin-sized customers and charge orc-sized prices. Only half of that suits me.",
	},
	["race.orc.muse.w09.026"] = {
		"The Barrens: yellow grass, sudden thorns, and nothing at all to stop the eye. I never feel watched there. Only small.",
		"In the Barrens the land just keeps going, flat and dry, until the eye gives up before the road does. A good place to empty the head.",
		"Durotar is narrow and red. The Barrens are wide and yellow and do not end. Going from one to the other feels like taking a deep breath.",
	},
	["race.orc.muse.w09.027"] = {
		"The Crossroads sits in the middle of the Barrens like a fist planted on a table. Whoever holds it holds the roads. We hold it.",
		"Every caravan in the Barrens passes the Crossroads sooner or later. A little fort with a big job. I respect that kind of thing.",
	},
	["race.orc.muse.w09.028"] = {
		"Some orcs still call on demons, and the Horde lets them, with one eye open. After what the fel did to us, I understand both the fear and the hunger to master it.",
		"Warlocks walk in Orgrimmar again. The old ones go quiet when they pass. A people once owned by demons now tries to own them. I hope it works.",
		"The fel once held every orc on a leash. Now a few of us hold the leash instead. The elders do not like it, and they are not wrong to watch.",
	},
	["race.orc.muse.w09.029"] = {
		"Face me and I'll respect you, whatever happens. Stab me in the back and I'll make an exception.",
		"Fight me honestly and I'll fight you the same way. Lie to me, and you'll meet an orc's other side.",
	},
	["race.orc.muse.w09.030"] = {
		"Razor Hill is all spikes and smoke and shouting. If someone asked me to draw the Horde, I would draw that.",
		"Nobody built Razor Hill for beauty. It is a hill with walls, spikes and a forge, and every orc who passes through stands a little straighter in it.",
	},
	["race.orc.muse.w09.031"] = {
		"They call it the Valley of Trials, as if one valley could hold all of them. The real trials come after. The valley only teaches you to expect them.",
		"The Valley of Trials is a gentle name for a hard place, and the hard place is a gentle start to an orc's life.",
	},
	["race.orc.muse.w09.032"] = {
		"Orcs do not fear death so much as a useless one. A death that buys nothing is the only kind I would refuse.",
		"When my time comes, I want it to be for something. The old warriors say that is all an orc can ask, and more than most get.",
		"Dying is not the shame. Dying for nothing is. It is one of the few things every orc I know agrees on.",
	},
	["race.orc.muse.w09.033"] = {
		"Durotar boars are lean, mean, and offended by everything. I respect them. I also eat them.",
		"A Durotar boar charges first and thinks never. Some orcs are the same. Those orcs make good stories, and short ones.",
	},
	["race.orc.muse.w09.034"] = {
		"Rend Blackhand keeps the Blackrock in their mountain, still bowing to whatever master will have them. They wear our green skin and our clan names. That is what makes it worse.",
		"Rend's Blackrock chose the old way: masters and chains, only with a dragon instead of a demon. Every orc of the Horde is an answer to them.",
		"Some orcs never left the old Horde behind. Rend's Blackrock sit in their mountain serving a dragon. Free orcs and chained ones, and they chose the chains.",
	},
	["race.orc.muse.w09.035"] = {
		"Far off in the cold of Alterac the Frostwolves keep their valley and their wolves. Thrall was born of that clan. Every orc is a little proud of them for it.",
		"The Frostwolves held out in the mountains while the rest of us were in chains, the old ones say. Exiles who never forgot what an orc was. We owe them more than we say.",
		"Of all the clans, the Frostwolves kept the old ways best, far off in Alterac. When I want to know what an orc ought to be, I think of them.",
	},
	["race.orc.muse.w09.036"] = {
		"Goblins sell to the Horde and the Alliance both. At least they're honest about being dishonest.",
		"A goblin will sell you a rope and then sell the other end to your enemy. Still, the rope is usually good.",
	},
	["race.orc.muse.w09.037"] = {
		"My people went from slaves of demons to prisoners of humans to builders of a city in a single lifetime. Whatever comes next, I would not bet against us.",
		"Not long ago orcs had no home of their own. Now there is Orgrimmar, Razor Hill, the Crossroads. Ask an orc whether things can change. We are the proof.",
		"From chains to a city of our own, faster than anyone thought possible. Some days I look at Orgrimmar and think: we did that.",
	},
	["race.orc.muse.w09.038"] = {
		"flexes one green hand into a fist and opens it again, slowly, as if testing that it still answers.",
		"stretches until {g:his|her} shoulders crack, then grunts, satisfied, at nothing in particular.",
		"squints at the horizon with a hunter's patience, though there is nothing on it worth hunting.",
	},
	["race.orc.muse.w09.039"] = {
		"Sometimes, in a hard fight, I feel the rage rise and wonder if it is mine. The shamans say it is. The curse is gone; the temper is our own, and so is the reining in.",
		"The demon's taint is gone from us; Hellscream saw to that. What is left is plain orc anger. That one I am allowed to keep, and to master.",
		"When my temper flares I ask myself whose it is. Mine, every time, ever since Hellscream. That makes holding it my job.",
	},
	["race.orc.muse.w09.040"] = {
		"The farther I walk from Durotar, the more of an orc I feel. Strange how a people grows clearer from a distance.",
		"Out here nobody knows Razor Hill or the Valley of Trials. I carry them in the way I stand, and that much they see well enough.",
		"Every road away from Orgrimmar is also a road back to it. I never forget which way that is.",
	},
	["race.orc.muse.w09.041"] = {
		"The forges of Orgrimmar ring at all hours. If the city has a heartbeat, that is it: hammer on iron, patient and loud.",
		"Orc steel is ugly and honest. Nobody ever bought it for its looks, and nobody ever brought it back broken.",
		"Orc craft is not pretty. It is heavy, it is plain, and it does not break. The elders say the same of the people.",
	},
	["race.orc.muse.w09.042"] = {
		"Kalimdor was old long before we came. Every ruin in the Barrens belonged to someone who also thought they would stay forever.",
		"This land had owners before us: centaur, quilboar, night elves, others with no name left. We will have to be better at keeping it.",
	},
	["race.orc.muse.w09.043"] = {
		"Lok'tar. I don't shout it for show. I say it so I remember what I'm standing for.",
		"Lok'tar. Two syllables, and a whole people behind them.",
	},
	["race.orc.muse.w09.044"] = {
		"My shoulders ache, my boots are full of grit, and I'm hungry enough to eat a kodo whole. A good orc day, then.",
		"Sore everywhere, dust in my teeth, belly empty. Nothing an orc can't fix with meat and a short sleep.",
	},
	["race.orc.muse.w09.045"] = {
		"Thrall keeps an uneasy peace with the humans of Theramore. Some orcs grumble about it. I think it takes more strength to hold back a war than to start one.",
		"Peace with Theramore is a thin thread. The Warchief holds one end and a human woman holds the other. I hope both of them have strong hands.",
		"Half the Horde wants to march on Theramore, and the Warchief says no. A chieftain who can say no to his own people's anger is rare.",
	},
	["race.orc.muse.w09.046"] = {
		"Orcs feel fear like anyone. We just don't let it make the decisions. It can come along and carry the bags.",
		"Fear is a fine scout and a terrible chieftain. I let it report, then I decide.",
	},
	["race.orc.muse.w09.047"] = {
		"Orgrimmar smells of smoke, leather and roasting meat. Other cities smell of perfume and drains. I know which I'd rather come home to.",
		"Orgrimmar is loud, cramped and hot, and every corner of it is ours. That last part makes up for the rest.",
		"Some cities are built to impress visitors. Orgrimmar is built to be defended, lived in and argued in, and it does all three very well.",
	},
	["race.orc.muse.w09.048"] = {
		"The best thing an orc elder owns is a story, and the second best is someone to hear it. I try to be the second when I can.",
		"Old orcs tell the same tales many times. Listen closely and each time a different detail comes out, as if the story were still deciding how it went.",
	},
	["race.orc.muse.w09.049"] = {
		"Every orc thinks they whisper. No orc has ever whispered. The trolls find this hilarious.",
		"An orc whispering can be heard across a courtyard. We know. We have stopped apologizing.",
	},
	["race.orc.muse.w09.050"] = {
		"Durotar meets the sea in hard red cliffs. Even the waves seem to lose their temper against them.",
		"The sea along Durotar's coast is the one gentle thing in the land, and even it throws itself at the rocks as if it meant it.",
	},
	["race.orc.muse.w09.051"] = {
		"Kul Tiran soldiers still sit in Tiragarde Keep on our own coast. Their admiral came to finish us and died for it. His men did not take the hint.",
		"Tiragarde Keep: human stones on Durotar's shore. Every orc who walks past it remembers that the war never truly ended. It only changed address.",
	},
	["race.orc.muse.w09.052"] = {
		"Our Warchief is a shaman before he is a warrior. An orc who speaks to the elements before he lifts the hammer: that is the Horde I want to belong to.",
		"Thrall listens to the spirits before he gives orders. The old Horde tried every worse way to lead.",
	},
	["race.orc.muse.w09.053"] = {
		"I learn something from every people of the Horde. The trolls teach patience with strange things, the tauren patience with slow ones. The Forsaken teach patience, full stop.",
		"An orc alone learns only how to be an orc. The Horde gave us teachers we never asked for, and most of them were worth it.",
	},
	["race.orc.muse.w09.054"] = {
		"Orcs wear scars the way others wear jewelry: without shame, and with a story for each. The story is often exaggerated.",
		"Ask an orc about a scar and you will hear a tale twice as long as the wound. That is tradition, not lying.",
	},
	["race.orc.muse.w09.055"] = {
		"Cactus apples: spines outside, sweet inside, and they leave your fingers sore for a day. Durotar in a single fruit.",
		"Peel a cactus apple with care and it rewards you. Peel it like an orc and you spend the rest of the day picking spines out of your thumb.",
	},
	["race.orc.muse.w09.056"] = {
		"Once, the Horde followed orders into the fel. The new one follows a Warchief who explains himself. I prefer the second, and I follow it harder for that.",
		"I would follow Thrall a long way. Not because I must, which is how the old Horde followed. Because he gave me the choice.",
	},
	["race.orc.muse.w09.057"] = {
		"looks up and turns slowly, as if taking a bearing on Orgrimmar from wherever this is, then nods to {g:himself|herself}.",
		"pauses and gazes off into the distance, toward home by the look of it, then sets {g:his|her} jaw and gets on with things.",
	},
	["race.orc.muse.w09.058"] = {
		"The shamans say the ancestors speak in dreams. Mine mostly show me food. Perhaps that is advice too.",
		"If the ancestors visit orcs in their sleep, as the shamans claim, mine must be patient spirits. I have kept them waiting a long time.",
	},
	["race.orc.muse.w09.059"] = {
		"When Thrall broke open the camps, the elders say, some orcs did not want to leave. They had forgotten how. He waited for them. That patience is why we have a Horde.",
		"Thrall freed the camps one by one, the old ones say, and the hardest part was never the guards. It was teaching orcs to want something again.",
	},
	["race.orc.muse.w09.060"] = {
		"Brute, they say. Then the cart sticks in the mud and suddenly everyone wants a brute.",
		"Everyone looks down on orc muscle until something heavy needs moving.",
	},
	["race.orc.muse.w09.061"] = {
		"Whole clans were lost to the fel and to the wars it started. When I count the Horde, I also count the gaps.",
		"The elders sometimes stop in the middle of a story and say nothing for a while. Someone who should be in the tale is not. I have learned to wait with them.",
		"There are fewer of us than there should be. The demons took their share, then the humans, then the long years in the camps. Every orc child is a small victory.",
	},
	["race.orc.muse.w09.062"] = {
		"Honor does not pay for a meal. But a merchant who knows you keep your word gives credit, and that is close enough.",
		"My word is worth more than my purse. On a lean day that is not much of a boast, but it is still true.",
	},
	["race.orc.muse.w09.063"] = {
		"The skin is green, the tusks are real, and the temper is mostly under control. Any other questions?",
		"Green skin, real tusks, decent manners. Two out of three surprise people.",
	},
	["race.orc.muse.w09.064"] = {
		"In a dry land, the elders say, every spring is a gift of the water spirits. The orcs of Durotar waste no drop of it. I catch myself doing the same anywhere.",
		"Water is the first spirit an orc of Durotar learns to thank. Everything else can wait; thirst cannot.",
		"I never pass clean water without a word of thanks. The shamans of Durotar teach the habit to anyone who will listen. It is a habit that sticks.",
	},
	["race.orc.muse.w09.065"] = {
		"If you need help, ask. If you need a fight, ask politely. I'm good for either.",
		"Need a strong back or a hard head? I have both, and I lend them cheap.",
	},
	["race.orc.muse.w09.066"] = {
		"Orcs age hard, the elders say: in the end the body pays for every fight. They say it laughing, with half their teeth gone.",
		"Veteran warriors creak when they stand, and boast about every creak. Each one is a fight, they say. I mean to creak loudly when my turn comes.",
	},
	["race.orc.muse.w09.067"] = {
		"Gul'dan's name is spat, not spoken. One orc's hunger for power, the elders say, and a whole people paid the price.",
		"The elders say the old Horde was sold by its own: a council of orcs who loved power more than their people. Every chieftain since has had to prove they are not that.",
	},
	["race.orc.muse.w09.068"] = {
		"Durotar's heat sits on your shoulders like a yoke. Orcs carry it without complaining, mostly, and end up missing it anywhere cooler.",
		"Anywhere cooler than Durotar feels like a holiday to an orc, for about a day. Then something in us starts to miss the weight of the heat.",
	},
	["race.orc.muse.w09.069"] = {
		"The grunts at the gates of Orgrimmar stand in the heat all day so the rest of us can complain about the heat indoors. Somebody should thank them. I usually nod.",
		"Every grunt on a wall is an orc who chose boredom so others could have peace. That deserves more respect than it gets.",
	},
	["race.orc.muse.w09.070"] = {
		"Songs are fine. But an orc's name is made in the small deeds nobody sings about: a promise kept, a load carried, a friend not left behind.",
		"Glory is loud and leaves quickly. Respect is quiet and stays. I'll take the quiet one, and the loud one too if it happens to pass by.",
		"The elders say a name is built like a wall: one stone a day, and nobody notices until it holds.",
	},
	["race.orc.muse.w09.071"] = {
		"picks a bit of dried meat from {g:his|her} pouch and chews it slowly, with the gravity of someone attending to serious business.",
		"chews on a strip of jerky with great concentration, as if the meal had insulted {g:him|her} personally.",
	},
	["race.orc.muse.w09.072"] = {
		"Orc children grow up now without ever seeing a camp wall. The elders watch them play with a look I cannot quite name. Envy, maybe, or relief.",
		"In some village of Durotar an orc child is growing up who has never heard a jailer's voice. Everything the old ones suffered was for that.",
	},
	["race.orc.muse.w09.073"] = {
		"Strength for those who stand with me, and a hard head for those who don't. That's my whole philosophy.",
		"My philosophy fits on a tusk: stand firm, speak plain, eat well.",
	},
	["race.orc.muse.w09.074"] = {
		"The demons are gone from our blood, but not from the world. The shamans say they are patient. So are we, now.",
		"The Burning Legion remembers us, somewhere. Let it. This time it will find orcs who know what its offer costs.",
	},
	["race.orc.muse.w09.075"] = {
		"Orcs write down little and remember a great deal. The elders carry whole histories in their heads, and correct each other at the top of their voices.",
		"Our history lives in voices more than in books. That makes it louder than most, and harder to burn.",
	},
	["race.orc.muse.w09.076"] = {
		"Stonard, Kargath, Hammerfall: little orc forts scattered across the Eastern Kingdoms like stubborn thorns. The humans wanted us gone from their lands. Some of us stayed out of spite.",
		"Our elders fought across the Eastern Kingdoms, and Horde banners still fly there: Hammerfall, Kargath, Stonard. Small places, held by orcs too proud to leave.",
	},
	["race.orc.subzone_enter.w09.001"] = {
		"{subzone}. I check the ground first: hard enough to stand on, soft enough to dig into if it comes to that.",
		"The ground of {subzone} under my boots. An orc judges a place by its footing before its looks.",
		"Into {subzone}, testing the earth with each step, the way the old warriors teach the young.",
	},
	["race.orc.subzone_enter.w09.002"] = {
		"enters {subzone} with {g:his|her} shoulders squared, the walk of someone who expects to be challenged and has no objection.",
		"strides into {subzone} chin up, as if daring the place to make an issue of it.",
		"comes into {subzone} at an even, heavy pace, neither hurrying nor hiding, the way orcs go anywhere.",
	},
	["race.orc.subzone_enter.w09.003"] = {
		"{subzone}. Not as red as Durotar, but nothing is. It will do.",
		"{subzone}. I compare it to home without meaning to. Home wins, but politely.",
		"So this is {subzone}. Durotar would call it soft. I keep that opinion to myself, mostly.",
	},
	["race.orc.subzone_enter.w09.004"] = {
		"{subzone}. I look for Horde colors first. Then for anything worth eating.",
		"{subzone}. Banners first: whose are they? Then the cooking smoke: whose is that?",
	},
	["race.orc.subzone_enter.w09.005"] = {
		"{subzone}. If it is quiet, I trust it less. Orcs distrust quiet; it usually means someone is holding their breath.",
		"{subzone}. Noise I understand. Silence I check twice.",
		"{subzone}. The old warriors say a place too calm is an ambush that has not stood up yet. I keep my eyes moving.",
	},
	["race.orc.subzone_enter.w09.006"] = {
		"{subzone}. Nice place. Who do I thank, and who do I fight?",
		"{subzone}, is it? I'll learn the name properly once I know whether it bites.",
	},
	["race.orc.subzone_enter.w09.007"] = {
		"{subzone}. Nose first. Smoke, water, beast or blood: an orc learns what a place holds before seeing it.",
		"Into {subzone}, sniffing. Every land has its smell. Durotar's is hot stone; this one I will learn.",
		"{subzone}. I breathe it in and sort it out: what can be eaten, what can bite, what is burning.",
	},
	["race.orc.subzone_enter.w09.008"] = {
		"{subzone}. Many places remember orcs as raiders. I would like this one to remember me differently.",
		"{subzone}. The old Horde left its mark on half the world. I try to leave a lighter one.",
		"{subzone}. Whatever orcs did here before, if anything, I walk in as one of Thrall's. That should mean something.",
	},
	["race.orc.subzone_enter.w09.009"] = {
		"stamps the dust of the road from {g:his|her} boots at the edge of {subzone}, a small ceremony of arrival.",
		"reaches {subzone} and knocks the grit off {g:his|her} boots against a stone, one and then the other, like a guest wiping {g:his|her} feet.",
	},
	["race.orc.subzone_enter.w09.010"] = {
		"{subzone}. The shamans say every place has spirits that were here first. I nod to them, quietly. Manners cost nothing.",
		"Every patch of earth has its own spirits, the shamans say, {subzone} too. I let them know an orc is passing, and means no harm unless harmed.",
		"{subzone}. A short word to whatever spirits keep this ground. The shamans would want it, and it does no harm.",
	},
	["race.orc.subzone_enter.w09.011"] = {
		"{subzone}. My legs tell me how far I came to get here. My pride tells them to be quiet.",
		"{subzone} at last. The road was long; an orc complains about that only after sitting down.",
		"{subzone}. Sore feet, steady breath. An orc arrives on time, or arrives angry.",
	},
	["race.scourge.landmark.w09.001"] = {
		"{landmark}. Every named place had its living once, people who stood where I stand and never imagined someone like me. Yet here I am.",
		"{landmark}. I wonder who built it and whether they lie somewhere near. If so, I hope they're resting better than I did.",
		"{landmark}. Stone and timber age; I don't, much. Between the two of us, I wonder which will stand longer.",
	},
	["race.scourge.landmark.w09.002"] = {
		"stops before {landmark} and studies it with the long, unblinking regard of someone in no hurry at all.",
		"pauses at {landmark}, head tilted, as if listening for something under the noise of the living.",
	},
	["race.scourge.landmark.w09.003"] = {
		"{landmark}. Lovely. Does anyone here keep torches handy? Just so I know where not to stand.",
		"{landmark}. I'll be on my best behavior. Ask anyone; I didn't make a sound for years.",
	},
	["race.scourge.muse.w09.001"] = {
		"Wrap these hands around a hot mug and the mug goes cold before my fingers notice. I've stopped apologizing to the tea.",
		"The living warm their hands at a fire. I hold mine out of habit and watch the flames do nothing at all to them.",
		"Cold hands, warm heart, people used to say. I have the first half of the saying down perfectly.",
	},
	["race.scourge.muse.w09.002"] = {
		"The living lie down and leave the world for a few hours. I stay. Somebody has to keep an eye on it, and nobody asked me to.",
		"Sleep was a door I went through every day without thinking. Now it's a door painted on a wall. I sit near it sometimes, out of courtesy.",
		"While the others sleep I mend straps, count coins, listen to the walls. The hours are long when you can't spend them unconscious.",
	},
	["race.scourge.muse.w09.003"] = {
		"I still eat. Don't ask what for. The habit outlived the stomach, and I'm in no hurry to break the news to the habit.",
		"Food tastes of almost nothing now, so I'm very easy to cook for. Ask any innkeeper.",
		"Bread, cheese, a bit of meat: I chew, I swallow, and I wait for the pleasure that used to follow. It never comes, but the chewing passes the time.",
	},
	["race.scourge.muse.w09.004"] = {
		"pulls a needle through a loose seam at {g:his|her} wrist, neat and unhurried, the way one darns a sock.",
		"checks the stitches along {g:his|her} forearm one by one and tightens the one that has started to give.",
		"bites off a length of thread and goes back to mending {g:himself|herself}, without the slightest wince.",
	},
	["race.scourge.muse.w09.005"] = {
		"If my jaw clicks while I talk, ignore it. It has opinions of its own.",
		"Forgive the rasp. The voice still works; it's only had the shine taken off it.",
		"Speak up? I'd love to. This throat gives what it gives, and today it's mostly gravel.",
	},
	["race.scourge.muse.w09.006"] = {
		"Flies find me before anyone else does. I've decided to take it as a compliment to my standing in the world of flies.",
		"Crows look at me with professional interest. I look back with the same. Neither of us is in a hurry.",
	},
	["race.scourge.muse.w09.007"] = {
		"A cut can sit on my arm for an hour before I notice it. Pain finds me late now, like a letter sent to an old address.",
		"Pain still comes, but faint and slow, a knock on a door three rooms away. I answer it when I get there.",
		"I'm not brave about wounds, only numb. People confuse the two, and I let them.",
	},
	["race.scourge.muse.w09.008"] = {
		"Whenever something reaches into my head to bend me, a door slams shut somewhere inside. I didn't build that door. I earned it.",
		"Fear, charm, a whisper to make me kneel: I feel them try, and I feel them slide off. A mind that was owned once doesn't let itself be owned twice.",
		"Let any voice try to steer me. I have heard the worst one there is, and I walked out of it.",
	},
	["race.scourge.muse.w09.009"] = {
		"A lake is only a road with a lid on it. I can walk the bottom as long as I please; the fish keep staring as if I'd broken a rule.",
		"The living hold their breath and kick for the surface. I have no breath to hold, so I take the scenic route along the mud.",
	},
	["race.scourge.muse.w09.010"] = {
		"There's a thing we can do with the fallen, a way of taking strength back from flesh. The orcs look away when they see it. So, some days, do I.",
		"The living find our way of mending on the battlefield hard to watch. I don't blame them. I only wish they'd look at the Scourge with the same disgust.",
	},
	["race.scourge.muse.w09.011"] = {
		"The Banshee Queen does not explain herself, and we do not ask. When you have taken orders from the Lich King, a ruler who keeps silent feels like a mercy.",
		"Lady Sylvanas was a ranger of Quel'Thalas once, and she still watches the world like the edge of a forest. I find I trust a queen who never stops watching.",
		"Whatever the Dark Lady plans, she planned it awake and free. That alone sets her above the master we had before.",
	},
	["race.scourge.muse.w09.012"] = {
		"Undercity is no one's idea of a pretty city. It is ours, though, every damp step of it, and nobody else wanted it enough to take it from us.",
		"A home under a ruin. The living would find that grim. To me it sounds exactly right: the earth held us once already, and we chose to stay down.",
	},
	["race.scourge.muse.w09.013"] = {
		"The graves around Deathknell are full of turned earth and fresh confusion. Everyone who climbs out needs a few days to learn the shape of the new life. Some of us are still learning.",
		"Deathknell: a chapel, a graveyard, and a steady trickle of the newly risen asking what year it is. Nobody laughs at them. Every one of us asked something like it once.",
		"In Deathknell, right now, someone newly risen is learning to stand again. Someone will be patient with them, as someone once was with each of us.",
	},
	["race.scourge.muse.w09.014"] = {
		"The Royal Apothecary Society answers every question with a polite smile and a closed door. I've learned to admire the door.",
		"The apothecaries work in quiet, and the quiet has a smell: vinegar, bitter root, something underneath that I decline to name. Whatever they're making, I'd rather be on its good side.",
		"Ask an apothecary what's in the vat and you'll get a lecture on everything except the vat. They are very good at that.",
	},
	["race.scourge.muse.w09.015"] = {
		"The Scarlet Crusade would burn me and sing while they did it. They call that purity. I call it a bonfire with a choir.",
		"In Hearthglen and in the Monastery they pray for the strength to destroy things like me. Fair enough. I pray to no one, and practice instead.",
		"The Crusaders don't hate the Scourge more than they hate us. They hate us more, I think: we're the dead who got away.",
	},
	["race.scourge.muse.w09.016"] = {
		"The Lich King sits on his ice at the top of the world, far from here. Some of us mean to visit him one day. Not to kneel.",
		"The Lich King is a long way off. That suits me for now. A debt that large deserves to be collected in person, and I'm not ready yet.",
	},
	["race.scourge.muse.w09.017"] = {
		"The orcs judge us by whether we hold the line. Fair. It's the first test I've had in years that has nothing to do with my smell.",
		"Tolerated is a fine word. I've been called worse by better armies.",
		"An orc once told me the Forsaken fight like people with nothing to lose. He meant it as a warning. I took it as a review.",
	},
	["race.scourge.muse.w09.018"] = {
		"The trolls keep a little distance and a lot of charms between themselves and me. Their witch doctors know more about the dead than most. Maybe that's the trouble.",
		"A troll made a sign with two fingers as I passed. I don't know what it means. I suspect it isn't 'welcome'.",
	},
	["race.scourge.muse.w09.019"] = {
		"Sometimes a tune surfaces, three notes and no words, from the life before. I hum it through a throat that rasps it into something else. It's still mine.",
		"I was alive once. That much is certain. The rest arrives in scraps: a smell of wet wool, a stair that creaked, a laugh I can't put a face to.",
		"Memory works like a cellar after a flood. Most of it is ruined; now and then I pull out something whole and have no idea whose it was.",
	},
	["race.scourge.muse.w09.020"] = {
		"The Scourge never asked me to be kind, or cruel. It asked nothing; it simply moved me. Now each choice is mine, and I make the gentle ones more often than people expect.",
		"Not every Forsaken is cruel. Some of us are only tired, and some are kinder than we ever were alive, as if we'd been given a second try at it.",
	},
	["race.scourge.muse.w09.021"] = {
		"The Light was everywhere when Lordaeron fell, in every chapel and every prayer, and it did not stop the plague. I don't curse it. I just stopped expecting it to come when called.",
		"There was a chapel in every village of the old kingdom. Most of them are rubble now. I pass them without anger and without kneeling, which is as close to peace as I've come.",
	},
	["race.scourge.muse.w09.022"] = {
		"Dying was the worst thing that ever happened to me, and I've made a full recovery. Mostly.",
		"Death? Overrated. I tried it once; the second act is better.",
		"I'd tell you to enjoy life while it lasts, but coming from me it sounds odd.",
	},
	["race.scourge.muse.w09.023"] = {
		"The living rush because the clock is chasing them. Mine stopped. I can wait out a grudge, a siege or a slow merchant with the same calm.",
		"Patience comes easily to the dead. We're in no danger of running out of time; only of running out of reasons.",
		"Hurry me if you like. I've already reached the end once; nothing else is urgent.",
	},
	["race.scourge.muse.w09.024"] = {
		"Hold on, something's come loose. No, not that. Not that either. Ah. Fine, carry on.",
		"If you see a finger on the road, it isn't mine. Probably. Let me count.",
	},
	["race.scourge.muse.w09.025"] = {
		"Fire frightens me more than it used to. Dry old flesh catches easily, and I've seen what a torch does to the dead. I keep a respectful distance from every hearth.",
		"The living go toward a fire to get warm. I go around it. It has no warmth to offer me, only a very quick ending.",
		"I've seen Forsaken step back from a campfire without thinking, the way the living step back from a cliff edge. The body knows what burns.",
	},
	["race.scourge.muse.w09.026"] = {
		"Of all the beasts that carry the Horde, ours are the bats. They don't flinch at us. They may be the only creatures that never have.",
		"The bats of Tirisfal are leathery, squealing and entirely without judgment. I'm fond of them for the last part.",
	},
	["race.scourge.muse.w09.027"] = {
		"Prince Arthas came home to cheering and killed his father on the throne. The throne is still up there under the open sky. None of us sits on it. It isn't that kind of kingdom anymore.",
		"The ruins above Undercity were the heart of Lordaeron once. Now they're a lid. I like knowing exactly what lies between me and the sky: broken stone and a bad memory.",
	},
	["race.scourge.muse.w09.028"] = {
		"Silverpine: pines, wolves, and the Sepulcher's crypts dug into a hill. The wall of Gilneas stands at its southern end. They shut themselves in to stay alive. We were already past that worry.",
		"The Sepulcher is a few crypts and a lot of tired Deathguards holding a forest for the Dark Lady. Every Forsaken outpost looks like that: not much, held hard.",
	},
	["race.scourge.muse.w09.029"] = {
		"In Southshore they'd ring the alarm bell at the sight of me. I was alive somewhere in the old kingdom, likely not far, and now I'm what the bell is for.",
		"To the people of Southshore I'm the enemy at the gate. To me they're the neighbors I can't remember. Neither of us is wrong, which is the worst of it.",
	},
	["race.scourge.muse.w09.030"] = {
		"The Deathguard don't doze at their posts. They can't. Best sentries in the Horde, and they never once ask for a day off.",
		"A Deathguard on a wall doesn't yawn, doesn't shiver, doesn't drift off. The living call that eerie. I call it a well-kept gate.",
	},
	["race.scourge.muse.w09.031"] = {
		"Under the sun of Durotar the orcs sweat, the trolls grin, and I simply dry out a little more, like a herb on a windowsill.",
		"Durotar's heat does nothing for a body like mine except hurry the embalming along. The orcs think I'm brave to wear this cloak. I'm keeping the pieces together.",
	},
	["race.scourge.muse.w09.032"] = {
		"When a living hand takes mine, I feel it flinch at the cold. Most of them hold on anyway, out of politeness. I count those.",
		"A handshake with the living is a small test. They feel the chill, I feel them decide whether to let go. The ones who don't, I remember.",
		"I offer my hand less than I used to. Not out of pride: out of mercy for the hand that has to take it.",
	},
	["race.scourge.muse.w09.033"] = {
		"Don't worry, I don't bleed much. Seep, perhaps. It's less dramatic.",
		"That? A scratch. On me, scratches stay scratches. There's nothing much left to pour out of them.",
	},
	["race.scourge.muse.w09.034"] = {
		"straightens up with a sound of joints settling into place, like a door on an old hinge.",
		"rolls {g:his|her} neck slowly; something in it pops, and {g:he|she} seems faintly satisfied with the result.",
	},
	["race.scourge.muse.w09.035"] = {
		"The Forsaken keep grudges the way the living keep heirlooms: carefully, and for a very long time. I have a few. I polish them.",
		"Forgiveness takes energy, and the dead must budget. I forgive small things. The large ones I file away.",
	},
	["race.scourge.muse.w09.036"] = {
		"Dying once taught me nothing about dying twice. Perhaps there's nothing after this. Perhaps that's what the first death was trying to tell me before the Scourge interrupted.",
		"The living fear the end. I saw it from close up, and then I was dragged back. What frightens me is not the dark: it's someone else's hand on the lever again.",
		"I fear the second death less than a second master. Dust I can accept. Strings, never again.",
	},
	["race.scourge.muse.w09.037"] = {
		"The goblins who run the zeppelins treat me like any other passenger: a fare, a weight, a thing that mustn't be sick over the rail. I could hug them.",
		"Goblins don't care if you're a corpse so long as your coin is alive. Honest people, in their way.",
	},
	["race.scourge.muse.w09.038"] = {
		"I read more now than I ever did, I suspect. Books don't mind how long you take, or what's left of the hands turning the pages.",
		"A long book and a quiet corner: the dead have time for both. Some of us have become terribly well read.",
		"The dead make good readers: we never fall asleep halfway through a chapter.",
	},
	["race.scourge.muse.w09.039"] = {
		"Tirisfal still grows pumpkins, fat and orange in fields the plague walked through. There's something stubborn in that soil. I recognize it.",
		"The fields of Tirisfal keep growing whatever is put in them, as if nobody had told the earth the kingdom ended.",
	},
	["race.scourge.muse.w09.040"] = {
		"Brill keeps a tavern for the living travelers and a graveyard so the rest of us feel at home. Thoughtful town.",
		"In Brill the innkeeper serves the living, the undertaker serves the dead, and they've never once quarreled over a customer.",
	},
	["race.scourge.muse.w09.041"] = {
		"I've a good few years left in me. Not in all of me, granted. The left knee is negotiating.",
		"Growing old worries me less these days. Rotting is more of a project.",
	},
	["race.scourge.muse.w09.042"] = {
		"The Plaguelands are the house we escaped. Some of us go back in, armed, to see the rooms where we were kept. I understand the urge. I don't share it every day.",
		"East of Tirisfal the land is still sick, the trees bent, the rivers foul. The Scourge never cleans up after itself. We, at least, sweep.",
	},
	["race.scourge.muse.w09.043"] = {
		"I lost a few years somewhere between the grave and the Dark Lady's halls. Nobody gives them back. I've stopped asking for a receipt.",
		"How long did I serve the Scourge? Months, a year? The time is there and empty, like a page someone tore out and kept.",
	},
	["race.scourge.muse.w09.044"] = {
		"I don't remember much of what my hands did while they belonged to the Scourge. I've decided that's a mercy, and I don't look under it.",
		"Some Forsaken remember everything they did as the Lich King's puppets. My memory of it is mostly holes. I can't decide which of us is luckier.",
	},
	["race.scourge.muse.w09.045"] = {
		"Call me an abomination if you like. Abominations are taller and have more stitches. I'm only a little untidy.",
		"The living have a whole list of names for us. I've heard most of them. 'Corpse' is honest, at least; I'll answer to that one.",
	},
	["race.scourge.muse.w09.046"] = {
		"The Dark Lady was the first to ask us what we wanted. Most of us had to think about it for a long time. Some still are.",
		"I follow Sylvanas because she broke the chain first and asked questions after. Most rulers do it the other way round.",
	},
	["race.scourge.muse.w09.047"] = {
		"A dreadlord stands at the Dark Lady's side in the Royal Quarter. She says he serves. I've seen enough masters to know how that word can turn.",
		"Varimathras smiles too much for something that answers to anyone. I keep my distance and my opinion, both carefully.",
	},
	["race.scourge.muse.w09.048"] = {
		"Dogs know. Every dog in every village barks itself hoarse when I come up the road. The cats only stare, which is worse.",
		"Horses shy, dogs howl, hens scatter. The animals of the living have never once been polite about me.",
	},
	["race.scourge.muse.w09.049"] = {
		"Our horses are like us: bones, a bit of leather and a stubbornness that outlasted the flesh. They don't want hay. They don't want anything. We understand each other.",
		"A skeletal horse never tires and never spooks. The living find it horrible. I find it restful company.",
	},
	["race.scourge.muse.w09.050"] = {
		"The living smell of bread, sweat and smoke, all at once, all the time. I'd forgotten how loud a living body is to the nose.",
		"Sometimes, in a crowd, I catch the warm smell of someone alive and something in me turns toward it, like a plant toward a window. I don't let it go further.",
		"Fresh bread, a sweaty horse, smoke in someone's hair: the living carry their whole day on them. I carry herbs and earth, and nobody asks about my day.",
	},
	["race.scourge.muse.w09.051"] = {
		"laughs, a dry sound like gravel shaken in a box, and doesn't seem to mind how it lands.",
		"lets out a short, rasping laugh that turns a few heads, and keeps walking.",
	},
	["race.scourge.muse.w09.052"] = {
		"stands so still for so long that a spider starts measuring {g:his|her} boot for a web.",
		"waits without shifting {g:his|her} weight even once, with the patience of something that no longer tires of standing.",
	},
	["race.scourge.muse.w09.053"] = {
		"rubs a pinch of bitter herbs into a seam at {g:his|her} collar, and the smell of the grave retreats a little.",
		"dabs a little oil from a small flask along a stiff joint, working it in with slow, practiced fingers.",
	},
	["race.scourge.muse.w09.054"] = {
		"tilts {g:his|her} head back and regards the open sky with mild suspicion, as if it might drop something.",
		"glances up at the wide sky with the faint unease of someone more used to a ceiling.",
	},
	["race.scourge.muse.w09.055"] = {
		"We were Arthas's people once, the ones he was meant to protect. He came back with a plague instead. I hope someone reminds him of that someday, with a blade.",
		"Every Forsaken was a subject of the crown Arthas threw away. We have a long list of complaints, and only one address.",
	},
	["race.scourge.muse.w09.056"] = {
		"Nothing in this body begs me to stop: no breath running short, no heart hammering. Whatever keeps me going now is will, plain and stubborn, and I keep it sharp.",
		"The living have their bodies to drive them: hunger, fear, the blood in their veins. I have only the decision to go on. I make it again every morning.",
	},
	["race.scourge.muse.w09.057"] = {
		"People ask whether the apothecaries will find a cure. For what, exactly? I'm not ill. I'm just finished, and carrying on regardless.",
		"A cure would mean going back to what I was. I don't remember enough of that person to want them back.",
	},
	["race.scourge.muse.w09.058"] = {
		"shakes out {g:his|her} cloak, and a small cloud of dust and one bewildered moth come out of it.",
		"brushes grave dirt from {g:his|her} sleeve with the air of someone who has given up expecting it to stay off.",
	},
	["race.scourge.muse.w09.059"] = {
		"Relax. If I wanted to eat you, I'd have been much quieter about it.",
		"No, I don't bite. I've kept my manners. Most of them, anyway; a few fell off with the rest.",
	},
	["race.scourge.muse.w09.060"] = {
		"The kingdom I lived in fought the orcs for years. Now I stand in their Horde, and orcs ask me the way to Undercity. History has a black sense of humor.",
		"Lordaeron built the camps where the orcs were kept. Now the orcs share their bread with Lordaeron's dead. I don't know what to call that, but it isn't nothing.",
	},
	["race.scourge.muse.w09.061"] = {
		"The channels of Undercity run thick and green, and the living hold their noses on the bridges. I lean on the rail and watch the sludge go by. Water was never this interesting.",
		"Green sludge in the canals, bats in the rafters, apothecaries in the corners. Undercity has a smell for every quarter, and I can no longer tell which ones are bad.",
	},
	["race.scourge.muse.w09.062"] = {
		"Stratholme burned on the prince's order before the plague could take it. Some say a few of its people walk with us now. If so, they died twice in the same week.",
		"Stratholme is still burning, in a way, all ruin and Scourge. I'd like to see it cleaned out. Not rebuilt: cleaned out.",
	},
	["race.scourge.muse.w09.063"] = {
		"Some of us do terrible things with the freedom we were given. Some of us were terrible alive, too. Death doesn't change a person as much as the living hope.",
		"The Forsaken are not one thing. There are apothecaries who would poison a river and Deathguards who would carry a child across one. I try to be the second sort.",
	},
	["race.scourge.muse.w09.064"] = {
		"I can't weep anymore. Sometimes I sit with something sad until it passes, the way you'd sit with a friend.",
		"Tears were the body's way of letting grief out. Mine stays in now, with nowhere to go. I take it for long walks.",
		"Something sad happens and my eyes stay dry. It isn't coldness. The well has simply been filled in.",
	},
	["race.scourge.muse.w09.065"] = {
		"I go to the tavern for the noise, not the ale. Ale tastes like wet straw to me now. The noise still tastes like being among people.",
		"One mug, nursed for hours. Innkeepers think I'm thrifty. In truth I only want to sit near warm voices.",
	},
	["race.scourge.muse.w09.066"] = {
		"Some days I come out of my rest certain I've just heard an order. It's always only a door, or the wind.",
		"A shout on a parade ground still sets my feet moving before I've decided anything. Then I decide, and stand still, just to prove I can.",
	},
	["race.scourge.muse.w09.067"] = {
		"'Here lies', the stones say, as if the matter were settled. Some of us didn't stay where we were put.",
		"Everyone wishes the dead a quiet sleep. Nobody asked us whether we were tired.",
	},
	["race.scourge.muse.w09.068"] = {
		"We are not what Lordaeron was, and we are not what the Scourge made us. We're something with no name yet, building as we go. That's frightening. It's also the first new thing in a long time.",
		"A people made entirely of survivors of the worst. We should be broken. Instead we keep ledgers, mend roofs and argue about taxes. I find that magnificent.",
		"Nobody planned the Forsaken. We happened, and then we decided to keep happening. Not a bad founding story, as such stories go.",
	},
	["race.scourge.muse.w09.069"] = {
		"takes a piece of bread from {g:his|her} pack, turns it over, and puts it back, as if it were a letter in a language once known.",
		"sniffs the air, head tilted, as though trying to place an old smell that has gone before it could be named.",
	},
	["race.scourge.muse.w09.070"] = {
		"tugs a sleeve down over the bare bone of {g:his|her} wrist, out of a courtesy the living rarely return.",
		"settles {g:his|her} hood so the worst of the face stays in shadow, a small kindness to anyone passing.",
	},
	["race.scourge.muse.w09.071"] = {
		"The Deathguard have a saying: a grave is only a room you haven't left yet. Most of them say it without smiling, which is how you know they mean it.",
		"An old Deathguard once told me: you've already lost the worst fight, so stop flinching at the small ones. I think of it more than I'd admit.",
	},
	["race.scourge.muse.w09.072"] = {
		"Yes, I'm dead. No, it isn't catching. Not anymore.",
		"Don't mind me. I'm a corpse, not a boor.",
	},
	["race.scourge.muse.w09.073"] = {
		"The living I meet will grow old and die while I stay as I am, give or take a few pieces. Making friends has become a strange arithmetic.",
		"Every living friend is a friend on loan. I know how the loan ends; I've been on the other side of it.",
		"I'll outlast most of the living people I'm fond of. I try not to say it aloud. They have enough on their minds.",
	},
	["race.scourge.muse.w09.074"] = {
		"I caught my reflection in a shop window and, for a moment, felt sorry for whoever that was. Then I recognized the cloak.",
		"Nobody will ever call me a beauty again. On the other hand, nobody will ever tell me I look a bit pale. I've gone well past that.",
	},
	["race.scourge.muse.w09.075"] = {
		"Tirisfal's light is thin and greenish, the trees bare and crooked. The living call it bleak. To me it looks like a place that has stopped pretending.",
		"Crooked trees, low hills, a sky that never quite commits to blue. Tirisfal suits us. It, too, looks like it survived something.",
	},
	["race.scourge.muse.w09.076"] = {
		"Frost, desert heat, swamp damp: weather is mostly a matter for the living. I notice it only when it gets into the hinges.",
		"I don't shiver and I don't sweat. A cloak, for me, is only modesty and somewhere to keep things.",
	},
	["race.scourge.muse.w09.077"] = {
		"Undercity is the finest city ever built in a cellar. Name a better one. Go on.",
		"Underground, damp, and ours. You won't find a prouder cellar anywhere in the world.",
	},
	["race.scourge.muse.w09.078"] = {
		"The Alliance would call it justice to put me back in the grave. I went there once without anybody's justice. I'm not going back for theirs.",
		"Lordaeron's old allies would rather see us burned than free. They had their chance to save us, and they came too late. We saved ourselves.",
	},
	["race.scourge.muse.w09.079"] = {
		"runs a thumb along the stitched seam at {g:his|her} jaw, a small absent gesture, the way the living touch an old scar.",
		"presses a loose flap of skin back into place with two fingers and smooths it down, as calmly as straightening a collar.",
	},
	["race.scourge.muse.w09.080"] = {
		"The orcs talk of Kalimdor's open plains as if they were a gift. I find all that sky a little indecent. Give me a ceiling and a few crypts.",
		"Thunder Bluff, Orgrimmar, the Crossroads: Horde places built in sun and wind. I visit, and coming back, the cellars feel like a blessing.",
	},
	["race.scourge.muse.w09.081"] = {
		"If anything waits past the second death, it already turned me away once. I'm not sure I'd knock again.",
		"The priests of the living promise a reward after death. I went there. If it exists, someone forgot to tell the Scourge to wait.",
	},
	["race.scourge.muse.w09.082"] = {
		"Whatever I owned in life went to someone else, or to the fire. Everything I carry now I earned after the grave. It's a smaller purse, and an honest one.",
		"No inheritance, no debts, no land. Death settled all my accounts at once. I've rarely had so little paperwork.",
	},
	["race.scourge.subzone_enter.w09.001"] = {
		"{subzone}. Whatever lives here will notice me before I notice it. The living always smell the dead first.",
		"{subzone}. I walk in as quietly as I can, which is quiet indeed. Nothing in me breathes loud enough to give me away.",
	},
	["race.scourge.subzone_enter.w09.002"] = {
		"{subzone}. Let's see who runs first.",
		"{subzone}. Mind the smell, everyone; I'm coming through.",
		"{subzone}. Nobody panic. I'm only passing.",
	},
	["race.scourge.subzone_enter.w09.003"] = {
		"enters {subzone} with a stiff, even stride, cloak drawn close, eyes moving over everything and blinking at nothing.",
		"walks into {subzone} without hurry, at the slow, unbothered pace of someone the road can no longer tire.",
	},
	["race.scourge.subzone_enter.w09.004"] = {
		"{subzone}. Did I know this place when I was alive? The name stirs nothing. That's an answer too.",
		"{subzone}. I listen to the name for an echo from before. Silence. I walk on with one thing less, or one weight less; I can't tell which.",
	},
	["race.scourge.subzone_enter.w09.005"] = {
		"{subzone}. First I look for torches and anyone with a grudge. Then I can admire the view.",
		"{subzone}. Exits, cover, and any sign of Crusader red. After that, the scenery.",
	},
	["race.scourge.subzone_enter.w09.006"] = {
		"{subzone}. I came here because I chose to. Nobody pointed. I'll never get used to how good that is.",
		"{subzone}. My own feet brought me, on my own errand. A small thing, for most people.",
	},
	["race.scourge.subzone_enter.w09.007"] = {
		"{subzone}. Quiet as a crypt. I'll fit right in.",
		"{subzone}. Smells of damp earth. Homely.",
	},
	["race.scourge.subzone_enter.w09.008"] = {
		"{subzone}. I have all the time in the world to look around, so I do, corner by corner.",
		"{subzone}. No hurry. The dead are never late for anything that matters anymore.",
	},
	["race.scourge.subzone_enter.w09.009"] = {
		"pauses at the edge of {subzone} and tilts {g:his|her} head, listening for footsteps with the unmoving patience of the dead.",
		"steps into {subzone} and goes still for a moment, so still that nothing nearby seems to notice the new arrival.",
	},
	["race.scourge.subzone_enter.w09.010"] = {
		"{subzone}. Somebody lived here, loved here, buried someone here. Every name has a graveyard in it somewhere.",
		"{subzone}. Every place is built on someone's grave, if you dig far enough. I've stopped finding that sad.",
	},
	["race.scourge.subzone_enter.w09.011"] = {
		"{subzone}. The Dark Lady's reach is long. Let's see if it reaches this far.",
		"{subzone}. One more name to report back to Undercity.",
	},
	["race.scourge.subzone_enter.w09.012"] = {
		"{subzone}. If anyone here makes a sign against evil at me, I'll wave back.",
		"{subzone}. I'll try to look harmless. It never works, but I like to keep in practice.",
		"{subzone}. In here, somewhere, a dog is about to start barking at me. Any moment now.",
	},
	["race.scourge.subzone_enter.w09.013"] = {
		"enters {subzone} with {g:his|her} hood drawn low, the way one enters a house where one may not be welcome.",
		"comes into {subzone} with a faint creak of old joints and nothing else to announce {g:him|her}.",
	},
	["race.scourge.subzone_enter.w09.014"] = {
		"{subzone}. The ground here holds its dead the usual way, quietly. I nod to them as I pass. Professional courtesy.",
		"{subzone}. Under my feet lie those who stayed put. I envy them a little, and pity them a little more.",
	},
	["race.troll.landmark.w09.001"] = {
		"{landmark}. I look for where the people of this place keep their fire and their trouble. Usually it's the same spot.",
		"{landmark}. Every named place has someone who runs it and someone who resents that. A troll finds both before unpacking.",
		"{landmark}. The name is on every tongue around here. I'll learn what it means by the smell of the place, as trolls do.",
	},
	["race.troll.landmark.w09.002"] = {
		"lifts {g:his|her} chin at {landmark}, nostrils flaring, reading the place by scent before by sight.",
		"stops short of {landmark} and leans on nothing at all, in that hunched troll ease, studying it from under heavy brows.",
		"comes up to {landmark} with a slow, rolling stride, tusks tilted, taking the measure of the place without a word.",
	},
	["race.troll.muse.w09.001"] = {
		"In Sen'jin the surf never stops talking. Anywhere else, I catch myself filling the quiet with it from memory.",
		"Sen'jin Village sits right on the water, and the waves keep up their chatter against the huts all day. Inland, the world sounds unfinished.",
		"A Darkspear grows up with the sea in one ear. Far from the coast, that ear keeps listening for it anyway.",
	},
	["race.troll.muse.w09.002"] = {
		"The elders say the Darkspear were pushed out of Stranglethorn by the Gurubashi long ago. Every troll ruin I pass there, I wonder which side built it.",
		"Stranglethorn was ours before it was anyone's, the elders tell it, until other tribes drove us to the sea. Quarrels grow long roots in the jungle.",
		"Our tribe left the jungle with nothing but spears and a grudge, so the elders say. The spears we still carry. The grudge we keep somewhere safe.",
	},
	["race.troll.muse.w09.003"] = {
		"Mind the tusks when you lean in, friend. They don't know they're rude.",
		"Tusks are mostly for show. Mostly. Keep a little distance and we'll never find out.",
		"I brush past a curtain and it comes away with a hole in it. Tusks have no manners at all.",
	},
	["race.troll.muse.w09.004"] = {
		"Troll flesh is impatient. It closes a cut before I've finished being annoyed at it.",
		"Other people nurse a scratch for days. On a troll it is a thin pale line before the day is out, and then nothing at all.",
		"Healers of other races look at troll skin with plain envy. It mends itself while they are still threading the needle.",
	},
	["race.troll.muse.w09.005"] = {
		"The loa are not kind and not cruel. They are proud and they are hungry, and they remember who showed them respect.",
		"No troll I know asks the loa for love. You ask for a hearing, and you count yourself lucky to get one.",
		"The spirits my people honor are no gentle shepherds. They are more like great beasts in the deep jungle: treat them right and they let you pass, or even walk beside you.",
	},
	["race.troll.muse.w09.006"] = {
		"rubs a thumb along the curve of one tusk, frowning at a nick in the ivory.",
		"flexes {g:his|her} long fingers one after another, cracking each knuckle with lazy care.",
		"rolls {g:his|her} shoulders, then lets them settle back into the easy troll slouch.",
	},
	["race.troll.muse.w09.007"] = {
		"Fish on a fire, a pinch of salt, a little smoke. Every troll knows that is the best meal in the world, whatever the city cooks pretend.",
		"Give me a fish fresh out of the water and a stick to roast it on. Cities have kitchens and sauces; I have never seen the point of either.",
		"Durotar feeds you scorpid and hard bread. Down on the coast at Sen'jin they feed you fish, and a troll can taste which land is fond of us.",
	},
	["race.troll.muse.w09.008"] = {
		"The orcs did not have to take us in. They had their own troubles and a new land to win. They made room anyway, and a Darkspear does not forget room made.",
		"Thrall's people are grim, loud and stubborn. They also keep their word. A troll can forgive a great deal for that.",
		"An orc laughs about once a season; a troll laughs about once a breath. Somewhere between the two, the Horde gets its business done.",
	},
	["race.troll.muse.w09.009"] = {
		"Orgrimmar gave the trolls a corner of its own, the Valley of Spirits. Smoke, drums, and witch doctors haggling over bones: the most homelike place in the whole city.",
		"When the orcs' city gets too loud and too square for me, I go down to the Valley of Spirits. The smell of our own smoke fixes most things.",
		"In the Valley of Spirits the trolls of Orgrimmar keep their fires and their charms. Walking in there is like stepping back into my own tongue.",
	},
	["race.troll.muse.w09.010"] = {
		"Easy, mon. Nobody ever died of slowing down a little.",
		"Da world be in a hurry. I don't have to be.",
		"Breathe, mon. Whatever it is, it'll still be there after.",
	},
	["race.troll.muse.w09.011"] = {
		"In Zul'Gurub the Gurubashi bleed for Hakkar the Soulflayer. Some troll gods should have stayed buried, and every Darkspear knows it.",
		"The name Hakkar sours the air when it is spoken. My people do not say it near the fire, and I do not say it twice.",
		"Hakkar drinks lives and calls it worship. Whatever the Gurubashi think they are buying in Zul'Gurub, the Soulflayer will take more than they offered.",
	},
	["race.troll.muse.w09.012"] = {
		"The Amani up in the Hinterlands hate the elves with a hate older than any human kingdom. I understand a grudge. I would not want to live inside one.",
		"Amani trolls carve their anger into every post and every mask. A Darkspear can admire the work and still keep well clear of the carver.",
		"The Amani have spent ages at war with the elves and have little else left. Watching them, I learn what a tribe turns into when it only remembers its wounds.",
	},
	["race.troll.muse.w09.013"] = {
		"The Sandfury hold Zul'Farrak out in the dunes of Tanaris. Trolls who chose to love sand: I have never understood them, and I do not plan to try.",
		"Out in Tanaris the Sandfury keep a city of baked stone and old bones. Same tusks as mine. Very different ideas about guests.",
	},
	["race.troll.muse.w09.014"] = {
		"The witch doctors of Sen'jin say mojo pools where it is needed, like water in a hollow. Grab at it and it runs out between your fingers.",
		"Mojo is not a thing you own, the witch doctors say. It is a thing you borrow, and the lender keeps a careful count.",
		"According to the witch doctors, mojo is like the tide: it comes to whoever waits on the shore, and drowns whoever wades out to fetch it.",
	},
	["race.troll.muse.w09.015"] = {
		"A shadow hunter walks with one foot among the spirits and one in the mud with the rest of us. I would not want to carry that balance. I am glad someone does.",
		"The shadow hunters of our tribe see the spirit side of things as plainly as I see a road. It must make supper conversation very strange.",
		"Some trolls are called to stand between the living and the spirits, and they become shadow hunters. The tribe respects them, and gives them plenty of room at the fire.",
	},
	["race.troll.muse.w09.016"] = {
		"Vol'jin speaks little and means all of it. When the Darkspear argue, his silence ends it sooner than any shout.",
		"Our chief carries the tribe the way someone carries water across slick rocks: carefully, steadily, never spilling a drop he can help.",
		"Vol'jin stands at Thrall's side and never forgets whose people he speaks for. That is a hard trick. He makes it look easy.",
	},
	["race.troll.muse.w09.017"] = {
		"Raptors are like cousins. They bite, they steal your food, and you'd still fight anyone who touched one.",
		"Never trust a raptor that's being quiet. It's thinking, and you won't like what it thinks.",
		"A good raptor is worth three horses and all their manners. Horses don't know how to grin.",
	},
	["race.troll.muse.w09.018"] = {
		"Somewhere on the Echo Isles, trolls who once shared our fires now walk wherever a madman points them. I keep a little anger set aside for that, the way others keep coin.",
		"The scouts say the hexed ones on the Echo Isles still wear the faces of our cousins. I would rather meet a hundred raptors than one of them.",
	},
	["race.troll.muse.w09.019"] = {
		"Durotar is all red dust and thorns. Good for orcs, I suppose. A troll wants green, and wet, and things that grow while you watch.",
		"The orcs love their red country. I love it too, the way you love a friend with a hard handshake. My skin still asks where the water went.",
		"Out here the ground cracks like stale bread. In the jungle the ground sweats and steams and grows something new every hour. I know which one my bones prefer.",
	},
	["race.troll.muse.w09.020"] = {
		"The Forsaken walk with the Horde now. I nod to them, I trade with them, and I never once turn my back. The witch doctors know too much about the dead to trust them easily.",
		"Dead things that talk and bargain: my people have stories about those, and none of the stories end well. Still, the Dark Lady's folk keep their side of the pact. So far.",
		"A troll knows the dead belong with the spirits. The Forsaken disagree, and they don't seem to want advice about it. I keep my charms close and my opinions closer.",
	},
	["race.troll.muse.w09.021"] = {
		"The tauren are slow to speak and slow to anger. Around them I lower my voice without meaning to, the way you do near a sleeping beast twice your size.",
		"Tauren carry a calm about them like a cloak. Standing beside one, I feel like a monkey next to a mountain, and somehow it is a pleasant feeling.",
		"I like the tauren. They laugh at my jokes late, but when they get there they laugh properly, from the belly.",
	},
	["race.troll.muse.w09.022"] = {
		"Goblins sell the same thing to both sides and call it business. A troll can respect a good trick, but I always count my fingers after a handshake.",
		"The goblins of Booty Bay would sell the sea back to the fish if the fish had coin. I laugh, I pay, and I check the change twice.",
	},
	["race.troll.muse.w09.023"] = {
		"hums a low tune under {g:his|her} breath, the kind sung on the coast while mending nets.",
		"taps a slow rhythm against {g:his|her} thigh with two fingers, as if keeping time with a drum nobody else can hear.",
		"lets out a short, bright laugh at nothing in particular, then goes quiet again, still smiling.",
	},
	["race.troll.muse.w09.024"] = {
		"My people laugh at hard things. Outsiders think it means we don't feel them. It means we have felt them so long that laughing became the cheaper choice.",
		"Trolls laugh in bad times, and the other races decide we are mad or heartless. Neither. Laughter is how my people carry a weight that would snap a straighter back.",
		"When a troll laughs at trouble, look closer: the laugh is doing the work of a shield. It is the oldest one my people own.",
	},
	["race.troll.muse.w09.025"] = {
		"The sea gives fish and takes boats. A fair bargain, if you happen to be the sea.",
		"Never argue with the tide. It was here before you and it doesn't listen.",
		"Learn to swim before you learn to boast. The sea checks the first one sooner.",
	},
	["race.troll.muse.w09.026"] = {
		"Some days I feel a loa look at me the way a cat watches a beetle. Not angry. Just curious what I'll do next.",
		"There are days the spirits seem close enough to tap my shoulder. On those days I walk carefully and keep my promises small.",
		"A troll learns to feel when something unseen has taken an interest. The back of the neck learns it first; the head catches up later.",
	},
	["race.troll.muse.w09.027"] = {
		"A voodoo mask is not a disguise, the witch doctors say. It is a face lent to whatever wants to come through. I keep my own face, thank you, and my own guest list.",
		"The witch doctors carve masks so the spirits know who is speaking to them, or so they tell it. A face made for listening rather than for being looked at. I like that.",
		"Put on a witch doctor's mask, the elders warn, and something else may decide to wear it too. I admire the carving from a polite distance.",
	},
	["race.troll.muse.w09.028"] = {
		"Cold country makes a troll feel every bone in those long legs. I wrap up, keep moving, and think about warm water.",
		"The north of the world was made by someone who never met a troll. Wind like teeth, and nothing ripe on the trees.",
		"Troll skin is made for steam and heat. In the cold it simply gives up and turns a color I would rather not discuss.",
	},
	["race.troll.muse.w09.029"] = {
		"The Frostmane trolls made a home in the ice of Dun Morogh. Trolls in the cold on purpose. I still can't decide whether that is courage or a very long mistake.",
		"Somewhere up in Dun Morogh, troll cousins wrap themselves in furs and hunt among the dwarves' mountains. Every time I picture it, my toes curl up.",
	},
	["race.troll.muse.w09.030"] = {
		"The Alliance looks at a troll and sees a savage from the old wars. Let them look. The Darkspear were never part of those wars, and we are not going anywhere.",
		"Humans remember the Amani who burned their villages, and they paint every troll with the same brush. I won't waste breath correcting them. My deeds can argue for me.",
		"To an Alliance soldier, every tusk is a threat out of the history books. I can't fix that. I can only make sure I am a different chapter.",
	},
	["race.troll.muse.w09.031"] = {
		"Trolls carry a heat low down, like coals banked in the belly. In a fight it climbs and the world goes fast and bright. Afterward I am always a little surprised at myself.",
		"When the berserk heat rises in a troll, the arms forget they were ever tired. The elders say: enjoy it, but never ask it for advice.",
		"My people burn hot when it counts. The trick is to let the fire out on purpose, and to remember where you put the lid.",
	},
	["race.troll.muse.w09.032"] = {
		"Darkspear children learn to stalk before they learn to count, the elders like to say: still as a root, quick as a snake. That patience never quite leaves a troll.",
		"My people prize stillness. A troll who can wait in the brush without twitching will eat; the one who fidgets will be eaten. The jungle teaches it, and it sticks.",
		"Wait like a root, strike like a snake. Every troll hears it young, and every troll finds out, sooner or later, that it holds for far more than hunting.",
	},
	["race.troll.muse.w09.033"] = {
		"Long legs, long arms, long patience. Two out of three on a good day.",
		"Built for reaching high branches. Also for knocking things off high shelves. Mostly that one.",
		"Trolls aren't clumsy. The world is just built too small for our elbows.",
	},
	["race.troll.muse.w09.034"] = {
		"Jungle again. The air is thick enough to drink and every leaf drips. Something in me unclenches that I didn't know was tight.",
		"Green on green on green, and the smell of rot and flowers at once. This is how the world is meant to smell to a troll.",
		"Vines, heat, birds shouting over each other. The jungle feels like a crowded house where everyone already knows my name.",
	},
	["race.troll.muse.w09.035"] = {
		"Salt on the wind. My shoulders drop an inch and my step goes loose. Whatever this coast is called, it speaks my language.",
		"The waves come in and pull back, come in and pull back. A troll could sit and listen to that until the fire burned down.",
		"Wet sand underfoot, gulls bickering overhead. Any shore is a little bit Darkspear, if you squint.",
	},
	["race.troll.muse.w09.036"] = {
		"Sand and more sand. My people came out of the water; this place is the sea's dry skeleton.",
		"Dry as an old bone out here. I ration my water and my temper, and the heat takes a little of both.",
		"A troll in a desert is a fish on a hot stone. I keep moving and I keep complaining, and both of them help.",
	},
	["race.troll.muse.w09.037"] = {
		"Swamp water, warm and stinking and full of things that bite. Not home, but it remembers home a little.",
		"Mud to the knee, insects singing, a smell like the bottom of a fish barrel. Close enough to the jungle that I almost feel welcome.",
	},
	["race.troll.muse.w09.038"] = {
		"Night, and the bats are out. The elders say bats carry whispers between the loa. I listen anyway, in case some of it is meant for me.",
		"Under the stars the world goes quiet enough to hear the spirits clearing their throats. A troll stays up for that.",
		"Dark, warm, and full of small sounds. My people belong to the night hours as much as the day; I feel awake in a way the daylight never quite manages.",
	},
	["race.troll.muse.w09.039"] = {
		"Rain at last. Let the others run for a roof. A troll stands in it and lets it wash off the dust.",
		"Warm rain or cold, it smells of the islands to me. I tip my head back and drink a little, like a child.",
		"The rain drums on the leaves and the ground drinks. My skin drinks with it. This is a troll's weather.",
	},
	["race.troll.muse.w09.040"] = {
		"Cities are full of straight lines and straight faces. I walk a little looser just to keep things balanced.",
		"All these walls, all these people in a hurry. A troll in a city is a parrot in a smithy: loud, colorful, and slightly in the way.",
	},
	["race.troll.muse.w09.041"] = {
		"Spirits be watching, mon. Best behave, or at least be entertaining.",
		"The loa love a good show. Let's give them one.",
		"If the spirits laugh at me today, at least somebody's having fun.",
	},
	["race.troll.muse.w09.042"] = {
		"This land is sick to the roots. The witch doctors would burn every bone here and smoke the ground for a year before letting anyone sleep on it.",
		"Everything here is dead and walking, or dead and waiting to. My charms feel heavy around my neck, as if they know exactly where we are.",
	},
	["race.troll.muse.w09.043"] = {
		"Fallen stones. Whoever built this, my people once built bigger, and watched it come down the same way. Ruins are where every race finally stands equal.",
		"Broken walls always make me think of the troll empires: huge, proud, and now mostly vines and lizards on the steps.",
	},
	["race.troll.muse.w09.044"] = {
		"Orc jerky, tauren flatbread, goblin anything: I eat it all, and every one of them could use some pepper and a fish.",
		"The orcs cook meat until it gives up. The tauren cook grain until it agrees with them. A troll tosses a fish on the fire and is eating while they are still arguing.",
		"Every race in the Horde has its own idea of supper. Mine involves fewer pots, more smoke, and a lot less waiting.",
	},
	["race.troll.muse.w09.045"] = {
		"The elders of Sen'jin say our old chief saw the orcs coming in a vision, long before their ships reached us. He trusted it with his life, and lost the life. The tribe kept the trust.",
		"They tell it in Sen'jin Village that the old chief dreamed of a great warrior who would lead us out. Thrall came. The chief did not live to follow him, so we followed for him.",
		"A vision, a shipwreck, a sacrifice: the elders of Sen'jin tell our freedom in those three words, and they always slow down on the last one.",
	},
	["race.troll.muse.w09.046"] = {
		"The Darkspear crossed to Kalimdor with the orcs, crowded onto ships never built for so many. Every troll in Durotar has an ancestor who stood at a rail and looked back.",
		"My tribe came to this land by sea, on orc ships, with only what we could carry. Maybe that is why trolls pack light and laugh loud.",
	},
	["race.troll.muse.w09.047"] = {
		"A bead, a tooth on a string, a knot of feathers. Not because I am sure such things work. Because I am not sure they don't.",
		"Outsiders call troll charms superstition. I call them good manners toward forces nobody fully understands.",
		"Charms cost nothing to carry and a great deal to be without, my people say. A troll wears a few and does not explain them.",
	},
	["race.troll.muse.w09.048"] = {
		"glances off toward where the sea ought to be, as if checking it is still there.",
		"sniffs the air for salt, finds none, and shrugs it off with a lopsided grin.",
		"stretches both long arms overhead until the joints pop, tusks tipped up toward the sky.",
	},
	["race.troll.muse.w09.049"] = {
		"The night elves look at a troll the way a cat looks at a wet dog. The feeling is mutual, but at least I admit it.",
		"Any elf, from Darnassus or from Quel'Thalas, wears the same expression around trolls, as if we had tracked mud across their history.",
	},
	["race.troll.muse.w09.050"] = {
		"Everybody's in a hurry. The spirits aren't, the sea isn't, and neither am I.",
		"You can rush a troll. Once.",
		"Push me and I'll go slower. That's not stubbornness, that's balance.",
	},
	["race.troll.muse.w09.051"] = {
		"The Darkspear have been pushed off one land after another. Durotar is dry and hard, but no one is pushing us off it. That is worth more than green.",
		"For once my people stand on ground nobody can take from us by shouting. Red dust and all, it is ours to keep, beside the orcs who share it.",
		"A tribe that ran from the jungle and ran from the sea can finally stand still somewhere. I don't take that lightly, even when I complain about the heat.",
	},
	["race.troll.muse.w09.052"] = {
		"Bats like the dark, the damp and a good piece of fruit. Trolls and bats understand each other better than most people suspect.",
		"A bat hanging upside down in a cave is the most relaxed creature in the world. I respect that deeply.",
	},
	["race.troll.muse.w09.053"] = {
		"A hex can sit in a bead or a feather for years, waiting for the wrong hand. I don't pick up charms I find lying on the road. Ever.",
		"Strange bundle of feathers on the path? Walk around it. A troll who picks up somebody else's mojo takes whatever comes with it.",
		"Mojo found by chance is like food found in a witch doctor's hut: probably meant for someone else, and probably not meant kindly.",
	},
	["race.troll.muse.w09.054"] = {
		"Up in the Hinterlands the Revantusk hold their village by the sea against the Amani and the Vilebranch. Trolls standing with the Horde, far from Durotar: it warms me to know they are there.",
		"Not every troll tribe is an enemy. The Revantusk keep a village on the Hinterlands coast and share their fire with the Horde. Good people. Loud, like us.",
	},
	["race.troll.muse.w09.055"] = {
		"Darkspear. A good name for a tribe: something sharp, something hard to see coming, something you hold on to.",
		"Some tribes are named for skulls or blood. Ours is named for a weapon held steady in a strong hand. I like that we picked the useful one.",
	},
	["race.troll.muse.w09.056"] = {
		"Durotar dust gets everywhere: in the ears, in the food, between the teeth and the tusks. I'll be finding red grit on me long after I've left it.",
		"The orcs say red dust is good for the spirit. I say it's bad for the teeth. Possibly we are both right.",
	},
	["race.troll.muse.w09.057"] = {
		"Trolls and orcs learn their first hard lessons side by side in the Valley of Trials. The scorpids there don't care about tusks or green skin, which makes allies of people quickly.",
		"The Valley of Trials is where young Darkspear and young orcs first learn that the Horde fights shoulder to shoulder. The quilboar and the scorpids teach it, very patiently.",
	},
	["race.troll.muse.w09.058"] = {
		"High rock and thin wind. My legs are long enough for the climbing, but the rest of me was made at sea level.",
		"Mountains are the jungle's opposite: no green, no wet, no noise. Only stone and sky and a troll muttering under the breath.",
	},
	["race.troll.muse.w09.059"] = {
		"These trees are taller and quieter than jungle trees, like elders at a council. I keep my voice down out of respect.",
		"A forest without vines feels unfinished to me. Where is the heat? Where are the birds that never shut up?",
	},
	["race.troll.muse.w09.060"] = {
		"The Darkspear stand with the Horde. Loudly, and with excellent timing.",
		"Darkspear first, Horde always. Both are true, every single day.",
		"Thrall has our spears and Vol'jin has our hearts. That's a fair split.",
	},
	["race.troll.muse.w09.061"] = {
		"Alone for long enough, I start talking to the spirits out loud. They never answer and they never interrupt. Better than some company.",
		"Out on my own, I chat with whatever spirit might be listening. If none is, at least the conversation stays honest.",
	},
	["race.troll.muse.w09.062"] = {
		"crouches, presses one long hand flat against the ground for a moment, then straightens as if something has been settled.",
		"pauses to flick a pinch of whatever is in reach over one shoulder, a quick troll courtesy to anything watching.",
		"touches two fingers to a tusk, then to the earth, in a small gesture older than any road here.",
	},
	["race.troll.muse.w09.063"] = {
		"The other races write things down. My people say them aloud, again and again, until they live in the voice. Both ways lose something. Ours loses less on a long road.",
		"Trolls keep their knowledge in songs and sayings and the heads of the elders. No library to burn. Only people to keep alive.",
	},
	["race.troll.muse.w09.064"] = {
		"Fruit tastes better picked by hand from high up, where nobody else can reach. That is one of the quiet joys of a troll's arms.",
		"A tree heavy with fruit and long arms to reach it with: some days the world is very simple and very kind.",
	},
	["race.troll.muse.w09.065"] = {
		"When a troll dies, my people say, the spirits come to argue over who gets to keep the company. I hope mine is worth a good argument.",
		"Death is a long walk to a loud fire, the elders tell it, full of everyone who went first. I'm in no hurry, but I don't fear the walk.",
	},
	["race.troll.muse.w09.066"] = {
		"Humans stare at trolls like we are about to eat them. We are not. Mostly they are too salty.",
		"Every Alliance traveler I pass checks my tusks, then my hands, then my tusks again. I smile. It never helps.",
	},
	["race.troll.muse.w09.067"] = {
		"Once the troll empires ruled half the world, before the elves and the humans had even learned to stack stones. Now the empires are rubble and we are here, still laughing. I know which I'd rather be.",
		"Empires fall; tribes go on. The Gurubashi and the Amani built higher than anyone, and look what's left. The Darkspear built nothing to fall, and we are still out here in the open, laughing.",
	},
	["race.troll.muse.w09.068"] = {
		"A troll's word is a knot: easy to tie, hard to undo. My people don't promise often, but when we do, we promise long.",
		"Trolls are loose about most things: posture, hours, manners. Not about a promise. That we tie tight and carry a long way.",
		"Laugh with a troll all you like, but take the troll's word seriously. Among my people a broken promise outlives the one who broke it.",
	},
	["race.troll.muse.w09.069"] = {
		"The hair? It does that on its own. I just negotiate with it.",
		"Nobody styles troll hair. You make an agreement with it and hope it keeps its side.",
		"Yes, it stands up like that. No, I don't know how. It was like this when I found it.",
	},
	["race.troll.muse.w09.070"] = {
		"When the drums start up at Sen'jin, nobody needs to be told twice. Trolls drift toward the sound like moths to a lamp, and by the third beat everyone is talking at once.",
		"A Darkspear gathering begins with drums and ends with too much laughter. In between, things actually get decided, which surprises the orcs every time.",
	},
	["race.troll.muse.w09.071"] = {
		"draws a small mark in the dust with one finger, studies it a moment, then scuffs it out with a heel.",
		"picks up a pebble, turns it over twice as if reading something on the underside, and sets it down exactly where it was.",
	},
	["race.troll.subzone_enter.w09.001"] = {
		"{subzone}. I sniff the air before anything else. A troll trusts a nose ahead of a map.",
		"{subzone}. Smoke, dung, water, or blood: the air tells me who lives here before anyone comes out to say so.",
		"{subzone}. First the smell, then the sounds, then the faces. That order has kept trolls alive for a long time.",
	},
	["race.troll.subzone_enter.w09.002"] = {
		"slows at the edge of {subzone}, head tilted, tusks lifted to test the air.",
		"pads into {subzone} on long, quiet feet, shoulders loose and eyes everywhere at once.",
		"pauses as {subzone} opens up ahead, rocking back on {g:his|her} heels to take the whole of it in.",
	},
	["race.troll.subzone_enter.w09.003"] = {
		"{subzone}. Let's see who lives here, and whether they share their fish.",
		"{subzone}, eh? Looks like a place with stories. And hopefully a cook.",
		"{subzone}. Nobody's thrown anything at me yet. Promising start, mon.",
	},
	["race.troll.subzone_enter.w09.004"] = {
		"{subzone}. Somewhere in here there is a fruit tree, and I intend to find it.",
		"{subzone}. My long ears swing forward on their own. They like to catch the gossip early.",
		"{subzone}. I look up before I look ahead. Trolls always check the branches; half the trouble in the world lives up there.",
	},
	["race.troll.subzone_enter.w09.005"] = {
		"{subzone}. I look for bones on posts first. Trolls of other tribes like to decorate their borders.",
		"{subzone}. Feathers tied to a branch, a scratched mark on a stone: I read the signs before I trust the quiet.",
		"{subzone}. If another tribe claims this ground, it will have said so somewhere, in bone or paint. I keep my eyes open for the message.",
	},
	["race.troll.subzone_enter.w09.006"] = {
		"{subzone}. The canopy closes over me like a roof I already know.",
		"{subzone}. Wet leaves slap my shoulders in welcome. The jungle never learned to whisper.",
		"{subzone}. Heat, green and the hum of a thousand small lives. My step goes easy without asking me.",
	},
	["race.troll.subzone_enter.w09.007"] = {
		"{subzone}. Salt and wet wood. The sea is close enough to hear, and my shoulders know it first.",
		"{subzone}. Waves somewhere just out of sight. A troll can find water with eyes shut.",
		"{subzone}. The wind tastes of the sea here. I would walk a long way for that taste.",
	},
	["race.troll.subzone_enter.w09.008"] = {
		"{subzone}. Dust again. I lick my lips and promise them water later.",
		"{subzone}. Dry enough to crack a troll's skin like old leather. I keep to the shade and keep my opinions to myself.",
		"{subzone}. Not a drop of water in sight. My tusks feel thirsty, and I didn't know tusks could.",
	},
	["race.troll.subzone_enter.w09.009"] = {
		"{subzone}. Greetings to whatever lives here, seen or unseen. I'm only passing.",
		"{subzone}. Easy, spirits. One troll, friendly, just walking through.",
		"{subzone}. Mind if a Darkspear passes? I'll keep it quick and quiet.",
	},
	["race.troll.subzone_enter.w09.010"] = {
		"ducks under a low branch on the way into {subzone}, long arms brushing it aside like a curtain.",
		"rolls into {subzone} with that loose, swinging troll gait, as if the ground were a deck at sea.",
		"takes the first steps into {subzone} slowly, one long hand trailing along whatever is nearest.",
	},
	["band.b60.muse.w10.001"] = {
		"Every road out of a first village looks short to me now. It isn't the road that shrank.",
		"There was a time a single hill felt like a day's march. The hills haven't changed. The legs have.",
		"The first roads of my life seemed endless. Looking back, they were barely the length of a good argument.",
	},
	["band.b60.muse.w10.002"] = {
		"walks without hurry, gear worn smooth at every edge, with the look of someone the road has finished testing.",
		"adjusts a strap that has been adjusted a thousand times before, without needing to look.",
		"checks each buckle and seam in turn, the slow inventory of someone who has learned what a loose one costs.",
	},
	["band.b60.muse.w10.003"] = {
		"Sooner or later every road at this height leads to the Plaguelands. The ones who walk them don't talk about it much afterward.",
		"The Plaguelands are where strength finds out what it's worth. The Scourge never stops asking.",
		"Up north the land itself is sick, and the Argent Dawn holds a chapel against it with stubbornness and little else. I understand stubbornness.",
	},
	["band.b60.muse.w10.004"] = {
		"Half my coin goes to repairs now. Being strong is mostly an expensive way to get hit by bigger things.",
		"There's a pair of gloves in Blackrock with my name on them. I only have to persuade their current owner.",
		"Repairmen everywhere seem glad to see me. That isn't fame. That's a regular customer.",
	},
	["band.b60.muse.w10.005"] = {
		"Strength is a debt. The world lent me hard years to build it, and it expects to be paid in kind.",
		"There's no point being this strong for my own sake. A shield nobody stands behind is just a heavy plate.",
		"Whatever I've become, it should stand between something terrible and someone who can't.",
	},
	["band.b60.muse.w10.006"] = {
		"Some days the body lists every road it has walked, one ache after another, and expects me to listen.",
		"Beginners get tired. This is something else: the weariness of knowing exactly how much is left to do.",
		"I could rest. Nobody would blame me. That's precisely why it's so hard to.",
	},
	["band.b60.muse.w10.007"] = {
		"If you're new to this: buy bandages before you buy anything shiny. You'll thank me inside a week.",
		"First lesson, free of charge: the thing that looks harmless is usually the one that bites.",
		"A word to anyone starting out: run sooner than feels proud. Pride heals slower than bruises.",
	},
	["band.b60.muse.w10.008"] = {
		"People I've never met know my face now. I'm not sure I like being a story they tell without me.",
		"Strangers nod at me as if we'd shared a campfire. Word travels farther than I ever have.",
		"My name walks into every town ahead of me these days. I spend half my time catching up with it.",
	},
	["band.b60.muse.w10.009"] = {
		"The dragonflights are stirring. Black in the mountain, green at the edges of the great trees, blue over the ruins of Azshara. Whatever they're waiting for, it isn't us.",
		"Dragons were a story for children once. At this point in the road they're an entry on the list of things to prepare for.",
		"Every dragonflight seems to have its own business in this world, and none of them has asked our opinion.",
	},
	["band.b60.muse.w10.010"] = {
		"Everyone talks about Molten Core like it's a tavern down the road. It's a volcano. Full of fire. On purpose.",
		"They want forty people to walk into a mountain of fire and fight its master. Forty. I can't get four to agree on lunch.",
		"Onyxia's lair, Molten Core, the troll city in Stranglethorn... Every tavern table has a plan. Few of them have a date.",
	},
	["band.b60.muse.w10.011"] = {
		"I remember being afraid of the first thing that ever growled at me. Not the fear itself, which is gone, but how real it was.",
		"The early fears were small and honest. The ones I carry now are bigger and much better dressed.",
		"What frightened me at the start would barely make me turn my head today. I'm not sure that's only good news.",
	},
	["band.b60.muse.w10.012"] = {
		"Blackrock Mountain holds three wars in one: Dark Iron below, the Dark Horde above, dragons over both. Nobody sensible goes in alone, which says a lot about who goes in.",
		"That mountain in the Burning Steppes is the kind of place that makes people write their letters first.",
		"Inside Blackrock the heat comes from the stone, the hate comes from everyone, and the loot comes, if it comes, last.",
	},
	["band.b60.muse.w10.013"] = {
		"Silithus is sand, insects the size of carts, and a wall the night elves and the dragons sealed a thousand years ago. People keep walking up to that wall anyway.",
		"Cenarion Hold keeps watch over a desert that hums. Something under the sand is counting, and it isn't counting in our favor.",
		"The Twilight's Hammer camps in Silithus, the hives dig beneath it, and the gates of Ahn'Qiraj stay shut. For now, which is the least comforting phrase I know.",
	},
	["band.b60.muse.w10.014"] = {
		"People ask me for real things now. Not 'fetch ten pelts' but 'can you stop it'. I'm still learning to say yes without flinching.",
		"When someone asks for help these days, they look at me as if the asking were the hard part. For them, it was.",
		"Being asked isn't the same as being hired. Hired, you owe the job. Asked, you owe the person.",
	},
	["band.b60.muse.w10.015"] = {
		"Let the Scourge send what it likes. Someone has to meet it, and I've run out of reasons that someone shouldn't be me.",
		"There are worse things than me in this world. I mean to find them before they find anyone else.",
		"The world is full of things that only stop when they're made to. Fine. That's the work.",
	},
	["band.b60.muse.w10.016"] = {
		"glances down at a pack full of things no beginner would recognize, and a few no beginner should touch.",
		"counts the coins in {g:his|her} purse, works out the repair bill in {g:his|her} head, frowns, and counts again.",
		"stretches until something in one shoulder answers with a pop, the sound of long service.",
	},
	["band.b60.muse.w10.017"] = {
		"In Caer Darrow they teach necromancy like a trade, with lessons and masters. That's the part I can't shake: how orderly it is.",
		"Stratholme is a city nobody let finish dying. The Scourge holds one half, the Scarlet Crusade the other, and neither will let it rest.",
		"Scholomance, Stratholme: names young adventurers whisper to sound brave. I say them plainly now, which is worse.",
	},
	["band.b60.muse.w10.018"] = {
		"Glory is a loud word for something that mostly looks like patience and repair bills.",
		"The songs make it sound like one great day. It's ten thousand ordinary ones, most of them muddy.",
		"Nobody writes ballads about the hundredth walk into the same dungeon. That's where the real work lives, though.",
	},
	["band.b60.muse.w10.019"] = {
		"Anyone heading for Blackrock? I'm good company, and better company once the dragons show up.",
		"If anyone needs one more for Blackrock Spire, I've got time, supplies and a terrible sense of self-preservation.",
		"Looking for a few steady people for the Plaguelands. Nerves required, heroics optional.",
	},
	["band.b60.muse.w10.020"] = {
		"Fewer people walk beside me at this height. Not lonelier, exactly. Quieter.",
		"Most of the faces from the early roads went their own ways long ago. I wish them well, wherever the road set them down.",
		"Strength thins out the company you keep. Not on purpose; the roads just get narrower.",
	},
	["band.b60.muse.w10.021"] = {
		"Any quiet place looks like a beginner's country to me now. Peaceful fields, small trouble, and someone just starting out who thinks it's the whole world.",
		"I like the gentle lands more than I did when they were all I could handle. You have to have seen the Plaguelands to love a plain meadow properly.",
		"The softest corners of the world are where everyone begins. I'm glad they exist, and glad someone keeps them soft.",
	},
	["band.b60.muse.w10.022"] = {
		"Rend Blackhand sits in the Spire playing warchief with a dragon's leash around his neck. Someone should tell him how that looks.",
		"Thaurissan's dwarves keep digging under the mountain, toward a master made of fire. Some people never learn which way is up.",
		"Every horror in the world has a court of people who chose to serve it. Those are the ones I can't forgive.",
	},
	["band.b60.muse.w10.023"] = {
		"The best thing the long road taught me is when not to fight. It took the longest to learn and gets used the most.",
		"Experience is mostly a list of mistakes I no longer have time to make.",
		"What I know now would fit in a short letter. Writing it took the whole road.",
	},
	["band.b60.muse.w10.024"] = {
		"There's talk of a necropolis hanging over the Plaguelands, a fortress of the dead that floats. I'd laugh, if the Argent Dawn weren't so quiet about it.",
		"The Lich King is far away, they say, across the sea in the frozen north. Far away has a strange way of reaching all the way here.",
		"The Scourge's masters never set foot on the field themselves. That's what frightens me: whoever moves the pieces can afford to wait.",
	},
	["band.b60.muse.w10.025"] = {
		"When the children ask if I've fought a dragon, I tell them 'not before breakfast'. It keeps them guessing.",
		"The young ones think I know everything. I let them, right up until they ask me for directions.",
		"Apparently I'm someone to look up to now. I'll try not to trip while they're looking.",
	},
	["band.b60.muse.w10.026"] = {
		"Every road up to this height is lined with people who didn't make it. I didn't know most of them. I think of them anyway.",
		"Strength is partly luck that never got a name. I try to remember that when I pass the cairns along the way.",
		"Plenty who were braver than me stopped somewhere on the way. Being here isn't a verdict on them.",
	},
	["band.b60.muse.w10.027"] = {
		"Everlook's goblins sell hot drinks at prices that should be a crime, and in Winterspring nobody argues. That's how you know a place is truly at the edge.",
		"The edges of the map are where the interesting trouble lives: Winterspring, Silithus, the Plaguelands. The middle of the world has been tidied.",
		"At this point the far corners feel closer than the capitals. I know the way to Everlook better than the way to a decent tailor.",
	},
	["band.b60.muse.w10.028"] = {
		"The Argent Dawn wants scourgestones, the Timbermaw want beads, the Thorium Brotherhood wants ore. Being trusted turns out to be a full-time errand.",
		"Standing is built the way walls are: one dull stone after another, and nobody notices until it holds.",
		"Every faction that matters wants proof, and proof comes in sacks. I've carried a lot of sacks.",
	},
	["band.b60.muse.w10.029"] = {
		"stands with the quiet of a blade tempered long ago, nothing left to prove and everything left to do.",
		"lifts {g:his|her} gaze without hurry, as if measuring the whole world for a job that still needs doing.",
		"breathes out slowly, and the whole long road seems to settle onto {g:his|her} shoulders and stay there, carried well.",
	},
	["band.b60.muse.w10.030"] = {
		"If all this strength ends up in an inn, telling stories over a mug, I'll have wasted it. There's still work.",
		"Purpose is easy when you're weak: get stronger. Now I have to choose one, and nobody hands it over.",
		"The world doesn't need another hero. It needs people who keep showing up after the songs stop. That much I can do.",
	},
	["band.b60.muse.w10.031"] = {
		"Everything I'm wearing was pried from something that didn't want to give it up. Fashion is hard work.",
		"People ask where I got these boots. The honest answer is 'from someone who no longer needed them', and that ends the conversation.",
		"Nothing I wear matches, but every piece of it has survived something. That's a style too.",
	},
	["band.b60.muse.w10.032"] = {
		"Being at the top only means the dangers left are the ones that were waiting for someone like me.",
		"I'm strong enough now to be noticed by the things that matter. I'm not sure that's the compliment it sounds like.",
		"Nothing in the ordinary world can hurt me much anymore. The world beyond the ordinary is where I'm headed anyway.",
	},
	["faction.alliance.muse.w10.001"] = {
		"Common is the tongue we trade, march and bicker in. Half the Alliance still counts, curses and dreams in something else.",
		"Ask a dwarf, a gnome and an elf for directions in Common and you'll get three accents and one road. That's the Alliance working as intended.",
		"Common for the orders, the mother tongue for the swearing. In any Alliance camp you can tell who stubbed a toe by the language that follows.",
	},
	["faction.alliance.muse.w10.002"] = {
		"The masons who rebuilt Stormwind sent their bill to the nobles and got silence back. Now the Westfall road collects from the whole Alliance, in red masks.",
		"Every ally bound for Stormwind crosses Westfall first, and sees what an unpaid debt looks like once it learns to carry a knife.",
		"A dwarf would call a mason's wage sacred. Stormwind's nobles called it negotiable, and the Defias have been negotiating ever since.",
	},
	["faction.alliance.muse.w10.003"] = {
		"A sailor in Menethil swore King Varian's ship never reached Theramore. A guard in Stormwind swore he never reached the ship. Everyone agrees he's gone; nobody agrees where.",
		"A peddler blames pirates, a priest blames the Horde, a drunk in Lakeshire blames the nobles. Every story of the missing king says more about the teller than about the king.",
		"Each tavern of the Alliance keeps its own version of where the king went. I've stopped collecting them: none of them has a happy last page.",
	},
	["faction.alliance.muse.w10.004"] = {
		"In Stormwind Keep a boy sits under a crown too large for him, and soldiers of four peoples take orders in his name. Bolvar Fordragon carries the weight; the boy carries the name.",
		"On paper the Alliance answers to a child king and a tired regent. I hope Bolvar Fordragon gets one unbroken sleep a year, and that the boy gets to be a boy now and then.",
	},
	["faction.alliance.muse.w10.005"] = {
		"The great forge of Ironforge hasn't gone cold in living memory, and dwarven memory is long. Whatever else the Alliance loses, that fire still burns under the mountain.",
		"Half the steel carried under our banners was poured beneath one mountain. Whoever we are, a dwarf has had a hand in keeping us whole.",
	},
	["faction.alliance.muse.w10.006"] = {
		"In Ironforge they lower their voices about the king's daughter. Taken by the Dark Irons, some say; gone to them of her own will, say others. Magni Bronzebeard says nothing at all.",
		"A king who digs up the past of the whole world, and can't get his own daughter out from under Blackrock. Even Ironforge's thick walls can't stop that from echoing.",
	},
	["faction.alliance.muse.w10.007"] = {
		"Magni had two brothers at his side once. One wanders the world for the Explorers' League; the other went north with a prince of Lordaeron, and the north kept him.",
		"Ironforge's royal house is short of brothers: Brann off digging somewhere, Muradin lost in the ice with the prince he went to help. The Alliance's oldest friend has paid its share.",
	},
	["faction.alliance.muse.w10.008"] = {
		"Darnassus sits in a tree across the sea, as far from the rest of the Alliance as a capital can be and still send soldiers. Some days that distance looks like wisdom.",
		"Ask a human how far Darnassus is and you'll hear 'a crossing'. Ask a night elf and you'll hear 'just far enough'.",
		"The night elves joined us late and keep their city over the water, up a tree. You can be a good ally and still prefer your own quiet.",
	},
	["faction.alliance.muse.w10.009"] = {
		"The Sentinels hold Ashenvale against the Warsong nearly alone. When the Alliance talks about its war with the Horde, the elves could teach it a thing or two about the price of timber.",
		"Every Warsong axe in Ashenvale bites a tree some Sentinel swore to keep. The rest of the Alliance reads about it in reports; the elves hear it in the wood.",
	},
	["faction.alliance.muse.w10.010"] = {
		"Some druids whisper that Teldrassil was planted without the blessing of the old powers. The Alliance's youngest capital, and even its own people argue over the roots.",
		"A great tree raised in a hurry, after a great tree was lost. The elves call it hope. Now and then a druid looks at the roots and says nothing, and the nothing is louder.",
	},
	["faction.alliance.muse.w10.011"] = {
		"Ask a gnome what the Alliance did when Gnomeregan fell and you get a bright smile and a new subject. The smile says enough.",
		"The gnomes lost a whole city and still fix everyone else's gadgets. If the Alliance ever marches on Gnomeregan, it owes them the front rank.",
	},
	["faction.alliance.muse.w10.012"] = {
		"Lady Proudmoore keeps a truce with the Warchief across the water. Some in the Alliance call it statecraft, some call it a betrayal waiting for a date. Theramore just keeps its gates open.",
		"Theramore talks to Orgrimmar; Stormwind doesn't. The Alliance has more than one idea of peace, and each comes with its own walls.",
	},
	["faction.alliance.muse.w10.013"] = {
		"We say 'the war with the Horde' as if it were one war. In Ashenvale it's timber, in Hillsbrad it's farmland, in Arathi it's a mine and a smithy. Everywhere it's somebody's brother.",
		"The war with the Horde has no front, only fences: a ridge in Hillsbrad, a lumber camp in Ashenvale, a crossroads in Stranglethorn. You learn where the fences run by where the graves are.",
	},
	["faction.alliance.muse.w10.014"] = {
		"The Alliance argues over Westfall and Ashenvale while the dead keep the whole north. Some days I think the Scourge is the only one of us not distracted.",
		"Every council of the Alliance keeps a chair for the Horde question, one for the Defias, one for the gnomes' city. The Scourge never needed a chair. It has the north.",
	},
	["faction.alliance.muse.w10.015"] = {
		"Seven human kingdoms stood behind the first Alliance, with dwarves and elves besides. Count the banners from that list still flying and you'll have fingers to spare.",
		"Lordaeron fallen, Alterac sold, Gilneas walled, Stromgarde in ruins, Dalaran under its dome. The first Alliance didn't lose a war; it lost its members one by one.",
	},
	["faction.alliance.muse.w10.016"] = {
		"At Light's Hope the Argent Dawn takes anyone who'll stand against the dead, Alliance and Horde alike. The Scourge has managed what no king could, and made both sides share a chapel.",
		"In the Plaguelands an Alliance soldier and a Horde one may keep watch on the same wall, under the Argent Dawn. Nobody calls it peace. Nobody calls it war, either.",
	},
	["faction.alliance.muse.w10.017"] = {
		"In Alterac the Stormpike dwarves dig after their claims and the Frostwolves defend the only home they have. Both sides have a point, which is exactly why the valley never stays quiet.",
		"The Stormpike Guard calls for volunteers, and the Alliance sends them up into the Alterac mountains. The Frostwolves were there first; the dwarves came with a charter. Nobody up there reads charters.",
	},
	["faction.alliance.muse.w10.018"] = {
		"The Silverwing Sentinels hold a gulch where the Warsong cut the forest down. A flag goes one way, a flag goes the other, and the trees never get their say.",
		"Warsong Gulch: the Alliance carries their flag out, the Horde carries ours. It sounds like a game until you've seen the stumps.",
	},
	["faction.alliance.muse.w10.019"] = {
		"The League of Arathor fights the Defilers for a farm, a mine, a mill, a stable and a smithy. Kingdoms were founded on less, in those same hills. Kingdoms were lost on less, too.",
		"The Arathi hills were the cradle of the first human empire. Now the Alliance and the Horde race each other for a basin's stables and mill, and the weathered stones watch.",
	},
	["faction.alliance.muse.w10.020"] = {
		"Back in the cities they call the battlegrounds glory. Up close they're an argument with the Horde that nobody has the authority to end.",
		"Medals, marks of honor, a nod from a general. All for holding a field the Horde will hold again by next week.",
	},
	["faction.alliance.muse.w10.021"] = {
		"The boat between Menethil and Auberdine is where the Alliance truly meets: dwarves gripping the rail, gnomes timing the waves, elves pretending they aren't seasick.",
		"Kul Tiran sailors ferry the Alliance from coast to coast and nobody thanks them until the boat is late. Then everybody knows their names.",
	},
	["faction.alliance.muse.w10.022"] = {
		"Gryphons in the east, hippogryphs in the west. The Alliance can't even agree on what to fly, and both of them get you there.",
		"Feathers and a beak either way. Dwarves and elves will argue for an hour over which beast is better, and the beasts couldn't care less.",
	},
	["faction.alliance.muse.w10.023"] = {
		"The Wildhammer belong to the Alliance the way a gale belongs to a ship: they arrive when they please, from Aerie Peak, on gryphons, shouting. To be fair, they usually arrive.",
		"Not every dwarf answers to Ironforge. The Wildhammer keep their own counsel in the Hinterlands and lend the Alliance their gryphons, their tempers and, when it counts, their hammers.",
	},
	["faction.alliance.muse.w10.024"] = {
		"Not every dwarf stands with the Alliance. The Dark Irons crowned their own emperor under Blackrock, and the wound between the clans has never closed.",
		"The Dark Irons broke Thandol Span, so the road between Ironforge and the south has a hole in it. The Alliance has been laying planks over holes like that for years.",
	},
	["faction.alliance.muse.w10.025"] = {
		"Gilneas shut its gate, Quel'Thalas walked out, Stromgarde went its own way. The Alliance has lost more members to sulking than to the Horde.",
		"Every few years some kingdom slams the door on the Alliance and swears it's for good. The door's still on its hinges; the Alliance is mostly made of doors like that.",
	},
	["faction.alliance.muse.w10.026"] = {
		"Once the Alliance was human crowns, with dwarves and elves along for the war. This one is stranger: a boy king, a dwarf king, a high priestess and an exiled tinker, and a great deal of correspondence.",
		"The Horde has one Warchief. We have Stormwind's regent, Ironforge's king, Darnassus's priestess and Gnomeregan's tinker, and a courier who has never once had a day off.",
	},
	["faction.alliance.muse.w10.027"] = {
		"Every people of the Alliance keeps a ledger: who came when the gates fell, who sent a letter instead. None of the ledgers balance, and we march together anyway.",
		"Old debts hold the Alliance together better than new oaths. The dwarves remember who fought for Ironforge, the humans who fought for Stormwind, and everyone remembers who didn't.",
	},
	["faction.alliance.muse.w10.028"] = {
		"At Hyjal, the veterans say, orc, human and night elf stood shoulder to shoulder against the Legion. Then the fires went out, and everyone went home to their old quarrels.",
		"Once, beneath a burning mountain, the Alliance and the Horde fought on the same side. People tell it now as if it were a fable, and in a way it has become one.",
	},
	["faction.alliance.muse.w10.029"] = {
		"Nethergarde Keep stands in the Blasted Lands watching a Dark Portal that has been dead for years. The Alliance pays good mages to stare at a ruin, just in case. I find it oddly comforting.",
		"In the red waste a keep full of Alliance mages keeps an eye on a gate nobody uses anymore. That's how you can tell a people who've been surprised before.",
	},
	["faction.alliance.muse.w10.030"] = {
		"Somewhere in Stormwind a quartermaster is counting arrows for Ashenvale, boots for Arathi and bandages for the Plaguelands, and wondering who pays. The Alliance runs on that one tired clerk.",
		"Wars are won by heroes in the songs and by clerks in the ledgers. The Alliance has more songs than clerks, and it shows.",
	},
	["faction.alliance.muse.w10.031"] = {
		"Humans ask the Light, elves ask Elune, dwarves dig after their makers and gnomes check the sums. At an Alliance burial we all bow our heads at the same moment.",
		"The Alliance has no single creed and needs none. A paladin, a priestess of the moon and a dwarf with a lantern can stand at one grave and mean the same thing.",
	},
	["faction.alliance.muse.w10.032"] = {
		"The Explorers' League digs up the world's oldest secrets and hands them to the Alliance like souvenirs. Some of the souvenirs bite.",
		"Dwarves with shovels have taught the Alliance more about the making of the world than any library. Mostly by opening things that were sealed for a reason.",
	},
	["faction.alliance.muse.w10.033"] = {
		"The Alliance posts its people far from where they were born: dwarves in elven forests, elves on human roads, gnomes anywhere with a workbench. Homesickness is the one thing all of us share.",
		"In every Alliance garrison someone misses a different home: a mountain, a forest, a city of gears, a field of wheat. Put them together and you have the whole Alliance, aching.",
	},
	["faction.alliance.muse.w10.034"] = {
		"An Alliance supper: human bread, dwarven cheese, elven fruit, and a gnomish gadget that heats it all slightly too much.",
		"Four peoples, one pot. Nobody likes the stew, everybody eats it, and that's the Alliance in a bowl.",
	},
	["faction.alliance.muse.w10.035"] = {
		"Stormwind lines its gate with stone heroes who went through the Dark Portal and stayed on the other side. The Alliance carves statues for the people it cannot fetch home.",
		"Walk under the statues at Stormwind's gate and you feel watched, kindly, by people who expected more of us. I try to walk with my head a little higher there.",
	},
	["faction.alliance.muse.w10.036"] = {
		"Alterac sold the first Alliance to the Horde, and now its ruins belong to the Syndicate. Treason never really ends; it just changes owners.",
		"Every ally has a name to spit. For the first Alliance it was Perenolde, the lord who opened the passes to the Horde. Alterac has never been forgiven, and its hills have stopped asking.",
	},
	["faction.alliance.muse.w10.037"] = {
		"Westfall burns because a city wouldn't pay; the north rots because a prince wouldn't stop. The Alliance's worst wounds were struck by its own hand.",
		"Look closely at the Alliance's enemies and you'll find familiar faces: unpaid masons, a lost prince, nobles who sold a pass. The Horde is the only foe we didn't raise at home.",
	},
	["faction.alliance.muse.w10.038"] = {
		"counts the capitals of the Alliance on {g:his|her} fingers, hesitates over Gnomeregan, and counts it anyway.",
		"ticks off Stormwind, Ironforge and Darnassus on three fingers, holds up a fourth for Gnomeregan, and leaves it there a moment longer than the others.",
	},
	["faction.alliance.muse.w10.039"] = {
		"mutters a thought in Common, frowns, and tries it again under {g:his|her} breath in another tongue, as if to see which one fits.",
		"practices a few courteous words in the language of some other Alliance people, mangles the last one, and decides it was close enough.",
	},
	["faction.alliance.muse.w10.040"] = {
		"Say what you like about the Alliance's councils. When the dead came south, most of our gates opened for the people running ahead of them.",
		"For all our quarrels, the Alliance took in the ones fleeing the Scourge. Remember that the next time the nobles bore you.",
	},
	["faction.alliance.muse.w10.041"] = {
		"In Booty Bay the goblins pour for the Alliance and the Horde from the same barrel and smile at both. There's a lesson in that; I'm just not sure I like it.",
		"Goblin towns sell rope to us and rope to them, and the noose doesn't care which side bought it. The Alliance needs the goblins and hates needing them.",
	},
	["faction.alliance.muse.w10.042"] = {
		"Plenty of soldiers in the Alliance were born after the Dark Portal was broken. To them the old Horde is a story, and the new one is simply the people on the other ridge.",
		"Veterans fight the Horde they remember. Recruits fight the Horde in front of them. They don't always agree on which one is worse.",
	},
	["faction.alliance.muse.w10.043"] = {
		"In Darnassus an elf child is learning Common from a human trader and getting the rude words first. The Alliance will be fine.",
		"A gnome apprentice is teaching a dwarf child to count gears, and being taught to swear in return. That's how alliances outlive treaties.",
	},
	["faction.alliance.muse.w10.044"] = {
		"Stormwind thinks it leads the Alliance. Ironforge thinks it pays for it. Darnassus thinks neither of them is paying attention.",
		"Every capital of the Alliance is quietly sure it's the one holding the rest up. They're all a little right, which is the problem.",
	},
	["faction.alliance.muse.w10.045"] = {
		"The Knights of the Silver Hand were the first Alliance's pride. Now the order is scattered: some to the Argent Dawn, some to the Scarlet madness, a few still kneeling in Stormwind's cathedral.",
		"Paladins of the Alliance still swear by the Light, but the order that trained them broke along with Lordaeron. Each of them carries a piece of it now, and none of them the whole.",
	},
	["faction.alliance.muse.w10.046"] = {
		"Different peoples, different gods, one line. Hold it.",
		"The Alliance was never one people. It's a promise to stand together, and I mean to keep my end of it.",
	},
	["faction.horde.muse.w10.001"] = {
		"Four peoples, four ways of praying, one tongue for giving orders. Orcish is the only thing the whole Horde shares, and even that each people pronounces its own way.",
		"Tauren rumble it, trolls drawl it, the Forsaken rasp it, orcs bark it. Somehow everyone in the Horde understands the orders.",
		"In the Horde, Orcish is the common tongue and nobody's mother tongue but the orcs'. The others learned it the way you learn a road: by walking it in company.",
	},
	["faction.horde.muse.w10.002"] = {
		"Thrall could have asked for greener land. He took Durotar: red dust, scorpions, and nobody else wanting it. A people that wants peace starts where no one will fight it for the ground.",
		"Durotar is hard ground, chosen on purpose. Land nobody envies is land nobody comes to take.",
		"Orgrimmar was raised where the earth is red and water is scarce. The Warchief understood that the safest home is the one nobody covets.",
	},
	["faction.horde.muse.w10.003"] = {
		"Cairne Bloodhoof speaks slowly, and the Horde has learned to wait for the end of his sentences. A people in a hurry needs someone who isn't.",
		"When the Warchief's council grows loud, Cairne lets it, the story goes, and then says three words. Usually they are the right three.",
	},
	["faction.horde.muse.w10.004"] = {
		"The Darkspear swore to the Horde when Thrall would not sail away and leave them to their enemies. Vol'jin has kept that oath through every hard season since. Debts like that hold a pact together better than any treaty.",
		"Sen'jin died so his tribe could follow the Warchief. Vol'jin never lets the Horde forget it, and never lets the Darkspear forget the promise either.",
	},
	["faction.horde.muse.w10.005"] = {
		"The Forsaken stand in the Horde the way a guest stands near the door: inside, welcome on paper, and watched. Cairne spoke for them. Not everyone listened.",
		"Some in the Horde still count their fingers after shaking a Forsaken hand. The Forsaken notice. They have long memories and very little left to lose.",
		"The Forsaken were let into the Horde with one hand and held off with the other. Trust is coming, slowly, the way feeling comes back to a numb limb.",
	},
	["faction.horde.muse.w10.006"] = {
		"Nobody outside Undercity knows quite what the Royal Apothecary Society brews in its vats. Sylvanas swears it is all meant for the Scourge. The Horde has chosen to believe her, for now.",
		"An ally who keeps her cellars locked. The Horde fights beside the Dark Lady and asks no questions about the green glass. Some day someone will have to.",
	},
	["faction.horde.muse.w10.007"] = {
		"The demon's blood was burned out of the orcs only when Grom Hellscream fell killing Mannoroth. Every people of the Horde walks on that price now, orc or not.",
		"Every free step the Horde takes was bought at Demon Fall Canyon, with the life of the one who had first drunk the demon's gift.",
	},
	["faction.horde.muse.w10.008"] = {
		"Half the Horde's unity hangs from goblin zeppelins that creak like old barrels. If the goblins ever raise their fares, the Warchief will have a war on his hands with no enemy in sight.",
		"Orgrimmar, Undercity, Grom'gol: the Horde is held together by gasbags and goblin rope. Best not think about it on the next crossing.",
		"A goblin pilot, a balloon patched in four colors, and the Horde's whole link between two continents. Admirable, in its way. Terrifying, in every other.",
	},
	["faction.horde.muse.w10.009"] = {
		"Orgrimmar needs timber and Durotar grows none. So the axes go to Ashenvale, and the Sentinels come out of the trees. Need on one side, grief on the other, and both of them right.",
		"Every beam in Orgrimmar carries a piece of Ashenvale, and the price of an arrow. I can't tell whether that makes the city less ours or the war more honest.",
		"The Warsong camps cut, the forest bleeds, the night elves answer. Nobody in that war is a villain in their own eyes.",
	},
	["faction.horde.muse.w10.010"] = {
		"Ashenvale's trees are too tall for their own good. The Sentinels disagree, at length, with arrows.",
		"The night elves call it a sacred forest. Splintertree Post calls it next month's firewood. Somebody will have to give.",
	},
	["faction.horde.muse.w10.011"] = {
		"Honor in the old Horde meant killing well. In this one it means knowing when not to. The second is harder to teach, and nobody is fully sure of it yet.",
		"The new Horde keeps the old word, honor, and tries to pour something better into it. Some days the word still tastes of what it held before.",
		"Honor, the Warchief's way, means a beaten foe can walk away. Some in the Horde call that weakness. They never saw what the other way cost.",
	},
	["faction.horde.muse.w10.012"] = {
		"The Horde remembers the internment camps, even the peoples who were never inside one. A pact is partly that: carrying an ally's scars as if they were your own.",
		"Some Forsaken, in life, may have stood guard at the internment camps. Now they march under one banner with the ones they guarded. The Horde doesn't talk about it much.",
	},
	["faction.horde.muse.w10.013"] = {
		"Lok'tar ogar. Victory or death, the orcs say, and the rest of the Horde has learned to say it with them.",
		"Victory or death. Every people of the Horde says it in Orcish now, and means it in its own tongue.",
	},
	["faction.horde.muse.w10.014"] = {
		"The Horde is a scatter of outposts held by stubbornness: Kargath, Stonard, Grom'gol, Hammerfall, Tarren Mill. On a map it looks thin. On the ground it looks like people refusing to leave.",
		"Mark the Horde's camps on a map of the Eastern Kingdoms and you get a handful of dots in hostile country. Each dot is somebody's watch fire, and none of them goes out.",
		"Every Horde outpost in the Eastern Kingdoms is a long way from Orgrimmar and behaves as if it weren't. That stubbornness is half of what holds it up.",
	},
	["faction.horde.muse.w10.015"] = {
		"Troll food burns, tauren food fills, orc food fights back, and Forsaken food is best left unasked about. A Horde feast is an act of diplomacy.",
		"Sharing a meal in the Horde takes courage. Somebody's dish is always going to set somebody else's tongue on fire.",
	},
	["faction.horde.muse.w10.016"] = {
		"The Scourge holds the north of Lordaeron, and the Lich King's will moves every corpse in it. The Horde has a hundred quarrels with the Alliance, and one with the dead that it cannot lose.",
		"When the Plaguelands come up at a Horde fire, the voices drop. Orc, troll, tauren or Forsaken, nobody wants to end up in that army.",
		"The Alliance is a rival. The Scourge is an ending. The Horde knows the difference, even when its loudest voices forget it.",
	},
	["faction.horde.muse.w10.017"] = {
		"The Horde fights the walking dead with the help of the walking dead. Nobody planned it that way. War makes stranger allies than any council would dare.",
		"An army of the dead in the north, an ally of the dead in Undercity. The difference is a will of one's own, and the Horde has wagered a great deal on it.",
	},
	["faction.horde.muse.w10.018"] = {
		"In Warsong Gulch the Outriders fight so the axes can keep working in Ashenvale. A flag carried home there is a tree felled somewhere else. War is rarely as simple as a banner.",
		"The Warsong Outriders and the Silverwing Sentinels have turned a gulch into a quarrel with rules. Two flags, two bases, and a whole forest behind the score.",
	},
	["faction.horde.muse.w10.019"] = {
		"The Defilers fight over Arathi Basin's mine, mill and stables. Glory goes into the songs, ore and lumber go into the reports, and the Horde needs the reports more.",
		"In Arathi Basin the Defilers face the League of Arathor: the old kingdom's dead against its living, over fields some of them plowed in life.",
	},
	["faction.horde.muse.w10.020"] = {
		"The Frostwolf clan kept the old ways in Alterac's high valley while the rest of the orcs sat in camps. Now the Stormpike dig into that valley, and the whole Horde is invited to answer.",
		"Alterac Valley belongs to the Frostwolves by the oldest right there is: they survived there when nobody meant them to. The Stormpike dwarves claim the same hills for their mines.",
	},
	["faction.horde.muse.w10.021"] = {
		"In Theramore a human woman keeps a truce with the Warchief that half her own people would call treason. Jaina Proudmoore and Thrall have bet on the same thin rope.",
		"Peace with the Alliance has one door, and it opens from Theramore. Jaina Proudmoore stood against her own father to keep it ajar. The Horde remembers that, grudgingly.",
		"Thrall and Jaina Proudmoore write to each other, it's said, and both keep the letters away from their councils. It's the quietest front of the war, and maybe the one that matters most.",
	},
	["faction.horde.muse.w10.022"] = {
		"The Alliance tells its children the Horde eats them. The Horde tells its young the Alliance bathes too often. Only one of those is slander.",
		"In Alliance stories we are monsters at the edge of the map. In ours they are the ones who build walls and call it civilization. Both stories could use an editor.",
		"The Alliance has kings, councils and great halls of stone. The Horde has a Warchief, a few chieftains and a great deal of shouting. Both get things done; ours is louder about it.",
	},
	["faction.horde.muse.w10.023"] = {
		"There are young warriors in the Horde now who never saw a camp, a chain or a demon. They fight for something they were simply born into. That's what the old ones bled for.",
		"A whole generation is growing up thinking the Horde was always like this: drums, councils, allies. Let them think it. It's the best thing anyone could leave them.",
	},
	["faction.horde.muse.w10.024"] = {
		"The Horde has no single faith. Spirits for the orcs, the Earth Mother for the tauren, the loa for the trolls, and for the Forsaken mostly questions. It marches anyway. Maybe that is a kind of faith too.",
		"Ask four Horde soldiers what watches over them and you get four answers and one shrug. Nobody tries to win anybody over. It may be the Horde's best rule.",
	},
	["faction.horde.muse.w10.025"] = {
		"The Horde fights over water, wood and ore more than over glory. Kalimdor's good land was taken long before the orcs arrived, and need makes a poor diplomat.",
		"Hunger has started more of the Horde's fights than pride ever did. Pride just takes the credit afterward.",
	},
	["faction.horde.muse.w10.026"] = {
		"adjusts the fit of {g:his|her} gear with the brisk care of a soldier whose kit has worn down many Horde roads.",
		"squares {g:his|her} shoulders as if a Horde officer had just walked past, though no one has.",
	},
	["faction.horde.muse.w10.027"] = {
		"mutters a few words of Orcish under {g:his|her} breath, the way travelers keep a shared tongue from going rusty.",
		"hums a few bars of a marching tune from some Horde camp, then stops short, as if caught at it.",
	},
	["faction.horde.muse.w10.028"] = {
		"Orc, troll, tauren, Forsaken. Sounds like the start of a joke. It's the start of an army.",
		"Four peoples who'd never have shared a road, and now they argue over whose turn it is to cook. That's the Horde.",
		"One banner, four peoples, and no two of them agree on the right marching pace. Somehow the army still arrives.",
	},
	["faction.horde.muse.w10.029"] = {
		"The Horde asks a lot. Then again, it gave a lot first: a home, a name, a place in the line.",
		"Strength is easy to find. Strength that keeps its word is what the Horde is short of. I mean to be some of it.",
	},
	["faction.horde.muse.w10.030"] = {
		"Thrall is young, as Warchiefs go. Still, I sometimes wonder who would hold all these peoples together without him. Then I stop wondering; there is no good answer.",
		"The Horde rests on a few pairs of shoulders: Thrall's, Cairne's, Vol'jin's, the Dark Lady's. Strong shoulders. Still only a few.",
	},
	["faction.horde.muse.w10.031"] = {
		"Rend Blackhand's Dark Horde still flies the old colors in Blackrock Spire. The Horde doesn't call them enemies, exactly. More a bad memory with axes.",
		"The Burning Blade still whispers to orcs in caves that the demons' gifts were real. Every Horde camp keeps one ear turned toward that whisper.",
	},
	["faction.horde.muse.w10.032"] = {
		"Wind riders in Kalimdor, bats in Lordaeron. The Horde travels on whatever beasts its peoples have tamed, and nobody asks the beasts for their opinion.",
		"Every people brought something of its own to the pact. The orcs brought wolves, the trolls raptors, the tauren kodo, the Forsaken bony horses and a long patience.",
	},
	["faction.horde.muse.w10.033"] = {
		"Every people in the Horde was hunted, enslaved or cursed by somebody. Maybe that's what binds it: everyone here knows what it is to be cornered.",
		"Orcs out of the camps, tauren hounded by the centaur, Darkspear chased off their islands, the Forsaken torn out of the Lich King's grip. The Horde is a gathering of escapes.",
		"Nobody joined the Horde from a position of comfort. Every people in it came in out of some disaster of its own.",
	},
	["faction.horde.muse.w10.034"] = {
		"Grunts in Orgrimmar, watchers on the bluffs, deathguards in Undercity, spears at Sen'jin. Different names for the same job: standing where trouble arrives first.",
		"Every capital of the Horde dresses its guards its own way and drills them the same: watch, hold, call for help early. The old Horde never learned the last part.",
	},
	["faction.horde.muse.w10.035"] = {
		"At the bank in Orgrimmar a tauren waits behind a troll, who waits behind a Forsaken, who waits behind an orc. Nobody pushes. It's a small miracle, and nobody notices it.",
		"Undercity's bats carry tauren riders; Thunder Bluff's lifts creak under Forsaken passengers. The pact shows best in the dull places.",
	},
	["faction.horde.muse.w10.036"] = {
		"When the Horde loses someone, each people mourns its own way: orc pyres, tauren earth, troll chants, Forsaken silence. One war, and four kinds of farewell.",
		"Horde funerals are crowded affairs. Everyone brings a custom of their own and stands politely through everyone else's.",
	},
	["faction.horde.muse.w10.037"] = {
		"The goblins sell to the Horde and the Alliance from the same crate, with the same smile. Neutral, they call it. I call it the only side that never loses.",
		"Booty Bay, Gadgetzan, Ratchet: goblin towns where a Horde blade and an Alliance blade drink at the same counter. The bruisers see to it that both stay sheathed.",
		"Goblin neutrality is the one treaty the Horde and the Alliance both respect. It's written in coin and enforced by bruisers.",
	},
	["faction.horde.muse.w10.038"] = {
		"Tarren Mill and Southshore sit a short walk apart and hate each other across every step of it. The Forsaken remember those hills from when they still breathed. The Alliance remembers them as its own.",
		"Hillsbrad is where the Horde and the Alliance stopped pretending. The road between Tarren Mill and Southshore is short, and nobody walks it unarmed.",
	},
	["faction.horde.muse.w10.039"] = {
		"No song will name the errands I run for some outpost quartermaster. The Horde is made of those errands far more than of songs.",
		"Wars are remembered for their battles. The Horde survives on its supply lines, its water carriers, and whoever answers the notice on the post.",
	},
	["mood.city.muse.w10.001"] = {
		"Every city has the same three people: one selling, one watching the seller, and a guard pretending not to watch either.",
		"In a city everybody has an opinion about the war and nobody has been near it. I listen and nod; it's cheaper than arguing.",
		"In one of these streets a merchant is getting rich off things I bled to find. Good for him, I suppose.",
	},
	["mood.city.muse.w10.002"] = {
		"All these doorways, and behind each one a life that has nothing to do with mine. I find that oddly comforting.",
		"Thousands of people live within a short walk of here. Not one of them knows my name, and not one of them needs to.",
		"A crowd is the best place to be alone. Nobody asks where you've been when everyone is busy getting somewhere.",
	},
	["mood.city.muse.w10.003"] = {
		"stops to watch a haggle over a single coin that goes on far longer than the coin deserves.",
		"steps around a knot of apprentices sprawled in the way, arguing about whose master is the harshest.",
		"lingers by a stall just long enough to have a price shouted at {g:him|her}, and moves on before a second one follows.",
	},
	["mood.city.muse.w10.004"] = {
		"Too many people, too little room, and every single one of them walks slower than me.",
		"Out there I can take on a pack of anything. In here I can't cross one street without apologizing four times.",
		"Guards everywhere, rules everywhere. I liked it better when the only rule was don't get eaten.",
	},
	["mood.city.muse.w10.005"] = {
		"Out in the wild I forget what the guards on these streets are for. Then I watch a stallkeeper count the takings without once looking over a shoulder, and I remember.",
		"Here nobody has to rest with a hand on a weapon. Somebody out there paid for that, and keeps paying.",
	},
	["mood.city.muse.w10.006"] = {
		"After the wild, a city is too much all at once: a hundred sounds, and my ears want to check every one of them for danger.",
		"Every shout and my hand drifts toward my weapon. In a city that's a bad habit; out there it kept me alive.",
		"I come to cities to make peace with tables and beds again. The truce never lasts more than a few days.",
	},
	["mood.city.muse.w10.007"] = {
		"Look at them all. Every one of them with somewhere to be and somebody waiting. Must be nice.",
		"Listen to it: forges, hawkers, gossip, footsteps. A city sounds like a lot of people deciding to keep going.",
	},
	["mood.city.subzone_enter.w10.001"] = {
		"turns into {subzone} and matches {g:his|her} pace to the crowd, neither the fastest in it nor the slowest.",
		"comes into {subzone} and steps neatly around a porter bent double under a crate.",
		"walks into {subzone} with one hand near {g:his|her} purse, out of an old habit.",
	},
	["mood.city.subzone_enter.w10.002"] = {
		"{subzone}. Different stalls, same prices: too high.",
		"{subzone}. If I stand still for one moment, someone will try to sell me something. I keep walking.",
		"{subzone}. A city is just a lot of little towns sharing one captain of the guard.",
	},
	["mood.city.subzone_enter.w10.003"] = {
		"{subzone}. Right, and where's the smith from here?",
		"{subzone}. Left or right? Every corner in this place looks like the one before it.",
		"{subzone}. I know where I am. Roughly. Mostly.",
	},
	["mood.city.subzone_enter.w10.004"] = {
		"{subzone}. Strangers' faces, strangers' business. In a city you can walk a long way without being anyone at all.",
		"{subzone}. The folk who live here pass me without a glance. To them this corner is home; to me it's a name on a sign.",
		"{subzone}. Somebody is laughing in a doorway. I don't know the joke, but I'm glad somebody is telling it.",
	},
	["mood.city.subzone_enter.w10.005"] = {
		"passes into {subzone} and reads it the way a scout reads a valley: the exits, the crowd, the guards and where they stand.",
		"enters {subzone} and notes, without meaning to, every guard and every way out.",
		"drifts into {subzone} and lets the bustle carry {g:him|her} along for a while, eyes moving from face to face.",
	},
	["mood.dark.landmark.w10.001"] = {
		"reaches {landmark}, and the gloom seems to lift by a hand's breadth, no more.",
		"stops at {landmark} and studies it a long while, as one studies a stranger met on a lonely road.",
	},
	["mood.dark.muse.w10.001"] = {
		"Light comes in here thin and tired, as if it had walked a long way and lost its nerve at the border.",
		"Even my own outline seems reluctant to follow me through this place.",
		"Something here makes every sound too loud: a footstep, a cough, my own breathing.",
	},
	["mood.dark.muse.w10.002"] = {
		"Whatever's watching, it can keep watching. I'm not stopping to introduce myself.",
		"Eyes front, feet moving. This is no place to linger, and I've no intention of becoming part of it.",
	},
	["mood.dark.subzone_enter.w10.001"] = {
		"slows at the edge of {subzone}, letting {g:his|her} eyes get used to the gloom before going on.",
		"enters {subzone} and finds {g:himself|herself} walking more quietly without having decided to.",
	},
	["mood.dark.subzone_enter.w10.002"] = {
		"{subzone}. The gloom here has a smell: damp, old and patient.",
		"{subzone}. I note the name and the nearest way out, in that order. Here, perhaps the other order.",
	},
	["mood.deep.muse.w10.001"] = {
		"Down here my ears do the work my eyes can't. Every drip, every scrape gets weighed and put away.",
		"I keep one hand on the rock wall, the way a child keeps hold of a sleeve. Nobody has to know.",
	},
	["mood.deep.subzone_enter.w10.001"] = {
		"{subzone}. Deeper in, and the way back grows longer with every name.",
		"{subzone}. The air is close and stale; every sound comes back off the rock a heartbeat late.",
	},
	["mood.desert.landmark.w10.001"] = {
		"{landmark}. A name on dry ground. When people name a place out here, they've usually found water or lost someone looking for it.",
		"{landmark}. Even the stones here look thirsty, and I know exactly how they feel.",
	},
	["mood.desert.muse.w10.001"] = {
		"Dry country has a voice of its own: grit hissing over stone, and under it a silence so wide it rings.",
		"The land here has been worn down to its bones. Every ridge looks like something that used to stand taller.",
		"Dry places keep things. Bones, coins, old walls: the sand hides them for an age and hands them back on a whim.",
	},
	["mood.desert.muse.w10.002"] = {
		"Every boot, every seam, every fold of the pack: the grit has moved in and means to stay.",
		"If anybody finds a scrap of shade, call me over. I'll pay.",
	},
	["mood.desert.muse.w10.003"] = {
		"runs a tongue over cracked lips and decides, for the moment, not to drink.",
		"tips a little water onto a cloth and presses it to the back of {g:his|her} neck, as if handling something precious.",
	},
	["mood.desert.subzone_enter.w10.001"] = {
		"enters {subzone} picking a line from one patch of shade to the next, wherever there is any.",
		"crunches into {subzone} over ground baked as hard as pottery.",
		"reaches {subzone} and weighs the waterskin in one hand before going any farther.",
	},
	["mood.fire.landmark.w10.001"] = {
		"{landmark}. People holding ground in all this heat: either very brave or out of other choices. Usually both.",
		"{landmark}. Whoever keeps a place going in this furnace has a hide like boot leather, and probably a temper to match.",
	},
	["mood.fire.muse.w10.001"] = {
		"There's no soil here, only cinders that remember being soil. Nothing will put down roots in it for a long age.",
		"I keep looking for something green out of habit. This ground was cooked hard long ago and has nothing left to give.",
		"The rock is still warm under my palm, like the flank of something asleep. I take my hand back quickly.",
	},
	["mood.fire.muse.w10.002"] = {
		"My waterskin's warm enough to brew tea in. That isn't a compliment.",
		"Anyone who settles in this heat on purpose has a grudge against comfort.",
		"Sweat in my eyes, soot in my teeth. Remind me what's in this place worth the trouble.",
	},
	["mood.fire.muse.w10.003"] = {
		"draws a sleeve across {g:his|her} brow and finds it gritty with soot.",
		"breathes shallowly through the nose, as if the hot air were being rationed.",
		"stamps once on a dark slab to hear whether it rings hollow, and only then shifts {g:his|her} weight onto it.",
	},
	["mood.fire.muse.w10.004"] = {
		"Fire here isn't something you light. It's the ground's own temper, and it has never fully cooled.",
		"Whatever burned this land isn't finished with it. The heat comes up through my boots like a grudge kept warm.",
		"Ash on everything: in my food, in the creases of my hands. This land is a hearth nobody ever swept.",
	},
	["mood.fire.muse.w10.005"] = {
		"Buckles, rings, anything metal I carry has turned hot to the touch. I've learned which ones to stop fiddling with.",
		"After a while I stop noticing the burnt smell in the air, which worries me more than the smell ever did.",
	},
	["mood.fire.subzone_enter.w10.001"] = {
		"{subzone}. Nobody told the heat that I'd moved on.",
		"{subzone}. New name, same oven.",
		"{subzone}. Somebody bothered to name a patch of scorched rock. I admire the optimism.",
	},
	["mood.fire.subzone_enter.w10.002"] = {
		"enters {subzone} through a drift of warm cinders that stirs at every step.",
		"wipes the soot from {g:his|her} lips on reaching {subzone}, the taste of smoke heavy in {g:his|her} mouth.",
		"steps into {subzone} and takes a long look at the cracked ground before choosing where to set {g:his|her} feet.",
	},
	["mood.fire.subzone_enter.w10.003"] = {
		"{subzone}. Watch where you step. Some of this rock is still deciding whether to be solid.",
		"{subzone}. Keep moving. The ground here is hot enough to punish anyone who stands still.",
	},
	["mood.forest.landmark.w10.001"] = {
		"{landmark}. Someone's cleared a little room among the trees. Polite of the trees to allow it.",
		"{landmark}. A place with a name, and the forest pressing close on every side, as if curious.",
	},
	["mood.forest.muse.w10.001"] = {
		"Something always moves among the branches: a bird, a squirrel, a bough settling. The forest is never still, only quiet.",
		"Trees make slow neighbors. They'll outlive every quarrel held beneath them, and they never take sides.",
	},
	["mood.forest.muse.w10.002"] = {
		"picks a burr out of {g:his|her} sleeve, then another, then gives up on the rest.",
		"stops to let a beetle cross the path, which takes rather longer than expected.",
	},
	["mood.forest.subzone_enter.w10.001"] = {
		"{subzone}. Ferns to the knee and a smell of moss and old leaves. Good walking, as long as nothing in the ferns objects.",
		"{subzone}. Deeper among the trunks, where the path thins to a suggestion. I could get lost here happily, which is the dangerous kind of lost.",
	},
	["mood.jungle.muse.w10.001"] = {
		"Nothing in the jungle stays dead for long. A fallen tree is a feast by the next rain, and a garden by the one after.",
		"My clothes haven't been dry since I got here. I've given up hoping; now I wring them out and listen for teeth.",
	},
	["mood.jungle.subzone_enter.w10.001"] = {
		"ducks beneath a hanging tangle into {subzone}, clothes clinging, every leaf around {g:him|her} dripping.",
		"pushes into {subzone} through a wall of steam and greenery, and something unseen goes crashing away ahead.",
		"freezes on entering {subzone} as a long shape slides off a nearby branch and is gone into the green.",
	},
	["mood.plague.landmark.w10.001"] = {
		"{landmark}. I mark it on my map with a careful hand. In a land this sick, knowing exactly where you are is a kind of protection.",
		"{landmark}. A name to steer by. Out here I'd rather count names than graves.",
	},
	["mood.plague.muse.w10.001"] = {
		"The sickness didn't stop at the people. It went into the soil, the water, the very wood. Nothing here was spared, not even the ground.",
		"Everything here smells faintly sweet and wrong, like fruit left far too long in a shut room.",
	},
	["mood.plague.muse.w10.002"] = {
		"If it moves and it shouldn't, hit it. If it doesn't move and it should, walk faster.",
		"Wash your hands after this. Wash them twice. Then burn the gloves.",
	},
	["mood.plague.subzone_enter.w10.001"] = {
		"enters {subzone} with a cloth pressed over nose and mouth, eyes moving over every heap and hollow.",
		"slows on reaching {subzone}, where the air hangs heavy and sour, and turns to make sure nothing has started following.",
	},
	["mood.plains.subzone_enter.w10.001"] = {
		"{subzone}. Wind in my face and a road in no hurry. Suits me.",
		"{subzone}. Long grass, long views, long walk. I'll take all three.",
	},
	["mood.ruin.landmark.w10.001"] = {
		"{landmark}. A name stuck to old stone. Whoever first called it that probably didn't build it.",
		"{landmark}. Someone made a place here out of whatever was left. Ruins are good at being somebody's second chance.",
	},
	["mood.ruin.muse.w10.001"] = {
		"Whoever lived here thought in bigger numbers than I do: wider halls, taller stairs, longer ages. And still it all came down.",
		"Ruins are honest in a way cities never are. Nothing here pretends it will last.",
		"I keep finding carvings worn smooth. Someone wanted to be remembered, and time kept only the outline.",
	},
	["mood.ruin.muse.w10.002"] = {
		"That's a lot of broken stone for one place. Somebody had a very bad century.",
		"Mind the masonry. It's been waiting a long while to fall on someone.",
	},
	["mood.ruin.subzone_enter.w10.001"] = {
		"enters {subzone} by way of a toppled archway, ducking beneath a stone that has been about to fall for centuries.",
		"picks a path into {subzone} across broken paving, testing each slab before trusting it.",
		"comes into {subzone} and rests a hand on a cracked pillar, as though checking that it still stands.",
	},
	["mood.snow.landmark.w10.001"] = {
		"{landmark}. Tell me there's a fire somewhere inside. Lie if you have to.",
		"{landmark}. A chimney with smoke coming out of it would be the finest sight in the world right now.",
	},
	["mood.snow.muse.w10.001"] = {
		"The cold makes everything simple. Keep moving, keep fed, keep your hands out of the wind. Little else matters.",
		"Snow swallows sound. Between steps I can hear my own heart, and I'd rather not.",
		"Snow keeps every track: mine, a wolf's, something bigger. Out here you always know who has passed, and never quite when.",
	},
	["mood.snow.subzone_enter.w10.001"] = {
		"plows into {subzone} through snow that squeaks underfoot, shoulders hunched against the cold.",
		"reaches {subzone} and knocks the packed snow from {g:his|her} boots against a rock.",
	},
	["mood.swamp.landmark.w10.001"] = {
		"reaches {landmark} and stamps gratefully onto ground that doesn't give way underfoot.",
		"comes squelching into {landmark}, a muddy trail stretching out behind {g:him|her}.",
	},
	["mood.swamp.muse.w10.001"] = {
		"In a marsh you learn to read the color of the water. Brown is mud, green is rot, black is deep, and clear is a lie.",
		"Every log might be a log. I treat each one as if it isn't, and so far I've kept all my toes.",
	},
	["mood.swamp.subzone_enter.w10.001"] = {
		"{subzone}. If I sink, at least I'll know where the deep part is.",
		"{subzone}. Wet, wetter, and whatever this is.",
	},
	["time.dawn.muse.w10.001"] = {
		"Dawn. The dark gives up the ground a little at a time, like an army that knows it has lost.",
		"First light, gray and thin, and already it's winning. Every day starts with a small victory nobody cheers.",
		"The edges of things come back first at dawn: a roofline, a tree, a hand held up in front of me.",
	},
	["time.dawn.muse.w10.002"] = {
		"Up with the light, which is too early for anyone who isn't a rooster or a soldier.",
		"Dawn. My body has opinions about it, and none of them are polite.",
		"The early hour has a cold all of its own. It gets into the joints and sits there, smug.",
	},
	["time.dawn.muse.w10.003"] = {
		"watches the first light creep over the land, breathing slowly, as if not to disturb it.",
		"stands quite still as the dawn comes up, letting the gray turn to color all around.",
		"stretches in the early light, one joint at a time, and squints at the day that is beginning.",
	},
	["time.dawn.muse.w10.004"] = {
		"Light's coming. Time to be gone before the day gets ideas.",
		"Early start. The road's never emptier than this.",
		"Dawn. Good. Everything's possible for about an hour.",
	},
	["time.dawn.subzone_enter.w10.001"] = {
		"{subzone}, just waking. The first light finds it before anyone else is about.",
		"{subzone} at dawn. Whatever the day holds for this place, it hasn't started yet.",
		"{subzone}. Gray light, cold air, everything still deciding what to be today.",
	},
	["time.dawn.subzone_enter.w10.002"] = {
		"enters {subzone} with the first light, footsteps loud in the early quiet.",
		"reaches {subzone} as the dawn comes up, and pauses to let the place wake around {g:him|her}.",
	},
	["time.day.landmark.w10.001"] = {
		"{landmark}, plainly seen in the light of day. A place looks most like itself at this hour.",
		"{landmark}. Daylight lets me judge it on its merits, without the dark adding anything.",
	},
	["time.day.landmark.w10.002"] = {
		"stops before {landmark} and looks it over in the daylight, unhurried, the way one checks a horse before buying.",
		"takes in {landmark} by the plain light of day, noting what has been mended and what has not.",
	},
	["time.day.muse.w10.001"] = {
		"In daylight a road is only a road: so many steps, so many hills, no tricks. I'll take it at its word.",
		"Distances are honest by day. The ridge over there is exactly as far as it looks, which is too far, but at least it isn't lying.",
		"The hours of light are for covering ground. Thinking can wait for the dark; it usually insists on it anyway.",
	},
	["time.day.muse.w10.002"] = {
		"Middle of the working day. A baker, wherever there's a town, is done already and feeling smug about it.",
		"Half the day gone and nothing a bard would sing about. Good. Bards make everything sound tiring.",
		"Plenty of light left. That's what people say right before they get lost.",
	},
	["time.day.muse.w10.003"] = {
		"Daytime belongs to everyone else: their errands, their trades, their arguments over the price of rope. I just pass through the middle of it.",
		"By day the world is too busy to notice one more traveler. There's a kind of rest in that.",
		"The hours of light ask nothing personal of me. It's the dark that wants to talk.",
	},
	["time.day.muse.w10.004"] = {
		"Long day, and it isn't done with me. The light will last longer than my patience, as usual.",
		"There's a stretch in the middle of every day when the work stops feeling like a choice and starts feeling like weather. You just get through it.",
		"Half the day behind me. My hands know it before the rest of me admits it.",
	},
	["time.day.muse.w10.005"] = {
		"In this light I can see every fold of the land: where the path dips, where a stream must run, where something might be lying in wait.",
		"Good visibility. I take the time to read the ground properly, the way trackers do, while the light's still willing.",
		"Everything out here has edges by day. Even the far trees look like I could count them.",
	},
	["time.day.muse.w10.006"] = {
		"stops to scan the land ahead while the light is good, marking the paths worth taking.",
		"makes use of the daylight to check every strap and buckle, one by one, without hurry.",
		"pauses in the open, turning slowly, as though fixing the lay of the land in memory before the light changes.",
	},
	["time.day.muse.w10.007"] = {
		"Daylight shows everything, including how much mud I've collected since breakfast. Some things are better in the dark.",
		"In good light every bit of travel wear shows. No hiding it until the lamps come on.",
		"By daylight a traveler's every stain and patch is on display. The dark is kinder to the wardrobe.",
	},
	["time.day.muse.w10.008"] = {
		"Whatever watches over the world, the Light or the spirits or something with no name, it seems more patient by day.",
		"I've heard a dozen peoples give thanks for the day in a dozen tongues. Not one of them thanks the dark the same way.",
		"The day doesn't promise anything. It just keeps turning up, which is better than most promises I've heard.",
	},
	["time.day.muse.w10.009"] = {
		"Light's good. No reason to sit about. Let's get on.",
		"Plenty of day left, and plenty to do with it. Move.",
		"Daylight's for work. Complaining can wait for the fire.",
	},
	["time.day.muse.w10.010"] = {
		"People treat the day as safe. It isn't. It's just that by day you see the danger coming, and the danger sees you.",
		"Daylight doesn't make the wilds any kinder. It only takes away the excuse of not having seen.",
		"Nothing hides better than something that doesn't need to. Plenty of hunters work by day.",
	},
	["time.day.muse.w10.011"] = {
		"Somewhere around now a sensible person would stop and eat. I'll find out whether I'm one.",
		"My stomach keeps the hours of the day better than any bell tower, and it says it's time.",
		"The day's at its busiest and so is my stomach. One of us will have to give in first.",
	},
	["time.day.muse.w10.012"] = {
		"glances around at the plain light of day, as if checking that the world is still where it was left.",
		"squints into the daylight and rolls {g:his|her} shoulders, ready for whatever the hours bring.",
	},
	["time.day.muse.w10.013"] = {
		"The days run together on the road. I only notice one has gone when the light starts to go with it.",
		"Every day of light is one more than the dead get. I try to spend it as if that mattered.",
		"How many days like this one are left to anyone? Nobody counts until the count is short.",
	},
	["time.day.muse.w10.014"] = {
		"Fine hour for travel. Not that I'd know a bad one; I travel through those too.",
		"Daytime, wide awake, nowhere urgent to be. Something must be wrong.",
	},
	["time.day.muse.w10.015"] = {
		"In daylight the old walls and roadside stones look merely old. It takes the dark to make them look like they remember.",
		"By day the ruins along the road are just stones in the grass. Their stories keep different hours.",
	},
	["time.day.subzone_enter.w10.001"] = {
		"{subzone}. I get a proper look at it in the light: who lives here, what they keep, where the paths go.",
		"{subzone}, plain as a map by day. Good. I like a place that shows its hand.",
		"{subzone}. Daylight, and every corner of it on display. I'll remember the corners.",
	},
	["time.day.subzone_enter.w10.002"] = {
		"enters {subzone} in the full light of day, eyes moving over it from one end to the other.",
		"walks into {subzone} without hurry, letting the daylight show {g:him|her} the lay of the place.",
		"comes into {subzone} with the day still high, and takes in the place at a glance.",
	},
	["time.day.subzone_enter.w10.003"] = {
		"{subzone}, by daylight. Let's see what it looks like before anyone tells me what it's like.",
		"{subzone}. Good hour to arrive anywhere: shops open, people awake, everyone a bit less suspicious.",
		"Ah, {subzone}. In good light, too. Small mercies.",
	},
	["time.day.subzone_enter.w10.004"] = {
		"{subzone}. Daylight is generous to places. It shows the work people put into them, and hides what they lost.",
		"{subzone} in the light of day. Whatever happened here, the day has decided not to mention it.",
	},
	["time.day.subzone_enter.w10.005"] = {
		"{subzone}. Still light enough to get through and beyond before I need a roof. Let's not dawdle.",
		"{subzone}. Plenty of day left; I can look around properly and still be on my way in good time.",
	},
	["time.dusk.muse.w10.001"] = {
		"Dusk. The light doesn't fall so much as thin out, until I notice I've been squinting for a while.",
		"The day is going, and taking its time, like a guest who isn't sure anyone wants them to stay.",
		"The hour between: too dark to read, too light for lamps. I always feel I should be somewhere else by now.",
	},
	["time.dusk.muse.w10.002"] = {
		"Light's going. Time to think about where I'll be when it's gone.",
		"Dusk is a question: how far to the next roof? I'd like an answer before the dark gives me one.",
		"The day's spent. Whatever I didn't do, I can do tomorrow, if the night allows.",
	},
	["time.dusk.muse.w10.003"] = {
		"pauses as the light drains out of the land, and watches the far places go dim first.",
		"stands a while in the failing light, until the edges of the world begin to blur.",
		"glances back the way {g:he|she} came, where the dusk has already swallowed the road.",
	},
	["time.dusk.muse.w10.004"] = {
		"That's the day done. Someone, somewhere, is lighting a fire, and I'd like to be near it.",
		"Getting dark. The hour when sensible folk go in and the rest of us keep walking.",
		"Evening coming on. Good hour for a hot meal and a bad story.",
	},
	["time.dusk.subzone_enter.w10.001"] = {
		"{subzone}, in the last of the light. I'll get a good look now; soon there'll be nothing to look at.",
		"{subzone} at dusk. The place is folding up its day, and here I am arriving late.",
		"{subzone}. Lamps or no lamps, I'll be here when the dark comes.",
	},
	["time.dusk.subzone_enter.w10.002"] = {
		"enters {subzone} as the dusk thickens, eyes already searching for a light.",
		"reaches {subzone} with the day nearly gone, the shapes around {g:him|her} going soft and gray.",
	},
	["time.night.landmark.w10.001"] = {
		"{landmark}, or the dark shape of it. Tomorrow it will be a place again; for now it's an outline with opinions.",
		"{landmark}. At night even a known place feels borrowed, as if its owners might come back at any moment.",
		"{landmark} at this hour. If there's a light anywhere about it, that's where I'm going.",
	},
	["time.night.muse.w10.001"] = {
		"At night I trust my ears over my eyes. They've earned it; my eyes keep inventing things.",
		"The dark doesn't hide much, really. It just makes me do the work of guessing.",
		"Night, and every sound arrives without a face. I fill them in, mostly wrong.",
	},
	["time.night.muse.w10.002"] = {
		"Sleep keeps asking, and I keep telling it later. One of these nights it will stop asking.",
		"Any sensible creature is asleep by now. I've never claimed to be sensible.",
		"My body voted for bed hours ago. The rest of me is still counting the ballots.",
	},
	["time.night.muse.w10.003"] = {
		"In every town a few windows stay lit all night. Behind each one, someone is waiting, or can't stop thinking.",
		"The night is long for anyone with someone missing. I've heard that said at every hearth from the mountains to the coast.",
		"Night is when the absent come and sit beside you. They never say much. They don't have to.",
	},
	["time.night.muse.w10.004"] = {
		"Dark as the inside of a boot. Mind your step, and mine.",
		"Can't see a thing. Excellent. Neither can anything else, I hope.",
		"Quiet out here. Too quiet, as the bad storytellers say. They're usually right, the bad ones.",
	},
	["time.night.muse.w10.005"] = {
		"stands still in the dark for a while, letting {g:his|her} eyes find what little the night will give them.",
		"slows {g:his|her} pace in the dark, placing each foot with care, as if the ground itself were asleep.",
		"turns {g:his|her} collar up against the night chill and goes on without a sound, quiet as the hour.",
	},
	["time.night.muse.w10.006"] = {
		"Someone is always keeping watch at this hour: on a wall, at a gate, beside a fire. I think of them, and the dark feels less empty.",
		"The night watch is the loneliest work there is. Every guard I've met says the same, and none of them would trade it.",
		"At night, whoever stays awake is answerable for everyone else. That's a heavy thing to carry quietly.",
	},
	["time.night.muse.w10.007"] = {
		"The cold comes up out of the ground at this hour. It finds the knees first, then the patience.",
		"Night air, sharp enough to wake me better than any brew. I may be grateful for it later.",
		"At night the warmth goes out of things: stones, water, the iron of a buckle. Only the living hold on to theirs.",
	},
	["time.night.muse.w10.008"] = {
		"The night is older than any kingdom. Every people that ever lived had to make its peace with it, one way or another.",
		"Everything the world forgot during the day comes back at night to see if anyone is still listening.",
		"Night belongs to things that were here before us. We only borrow it, and badly.",
	},
	["time.night.muse.w10.009"] = {
		"Easy now. Nothing out there but the dark, and the dark never hurt anyone. It's what's in it.",
		"Quiet hours. Best kind for thinking, worst kind for walking.",
		"Not much to see. Plenty to hear. I'll make do.",
	},
	["time.night.muse.w10.010"] = {
		"A clear sky and more stars than anyone could count. I try anyway, lose my place, and start again.",
		"The stars are all out tonight. Whatever else goes wrong, they keep their appointments.",
		"Under this many stars my worries look like what they are: small, and mostly mine.",
	},
	["time.night.subzone_enter.w10.001"] = {
		"{subzone}, at the hour when every shape could be something. I take it slowly.",
		"{subzone} in the dark. I'll learn what it looks like tomorrow; tonight I'll learn what it sounds like.",
		"{subzone}. At night I meet a place through my feet and ears first, and trust neither.",
	},
	["time.night.subzone_enter.w10.002"] = {
		"enters {subzone} quietly, a figure the night barely acknowledges.",
		"slips into {subzone} under cover of the dark, each step placed with care.",
		"comes into {subzone} at the dead of night, and lets the stillness close behind {g:him|her}.",
	},
	["time.night.subzone_enter.w10.003"] = {
		"{subzone}. Lovely, I assume. I'll know when it's light.",
		"{subzone}, at this hour. Whoever lives here is asleep, and wisely so.",
	},
	["time.night.subzone_enter.w10.004"] = {
		"{subzone} at night. Places are more honest in the dark; they stop pretending to be busy.",
		"{subzone}. Without daylight to dress it up, a place shows its bones. This one has interesting bones.",
	},
	["weather.clear.landmark.w10.001"] = {
		"{landmark}, standing plain under an open sky. Nothing about it is hidden; I can read it like a notice nailed to a door.",
		"{landmark}. In air this clear I can make out every detail from the path.",
	},
	["weather.clear.landmark.w10.002"] = {
		"stops to take in {landmark}, every edge of it sharp in the clean air.",
		"looks {landmark} over with nothing in the air to soften it, and nods as if it had passed some private inspection.",
	},
	["weather.clear.muse.w10.001"] = {
		"Air this clean carries sound a long way. A hammer on an anvil, a dog, two people haggling over a price: I can hear half the countryside's business.",
		"With nothing in the sky, sounds travel. Somebody far off is splitting wood, and I could count the strokes.",
		"Clear air brings distance closer to the ear. A shout, a bell, a cartwheel squealing: none of it near, all of it plain.",
	},
	["weather.clear.muse.w10.002"] = {
		"Not a cloud anywhere. If I get lost now, I've only my own feet to blame.",
		"Dry boots, dry pack, dry everything. I hardly know what to complain about.",
		"Fine weather. Which means every bandit on the roads is out enjoying it too.",
	},
	["weather.clear.muse.w10.003"] = {
		"takes advantage of the dry weather to spread a damp blanket over a rock and let the air have at it.",
		"checks every strap and buckle while the weather is kind, the way careful travelers do when nothing is dripping.",
		"stops to shake a pebble out of a boot, and lingers a little longer than needed, since the ground is dry enough to sit on.",
	},
	["weather.clear.muse.w10.004"] = {
		"Not a cloud to blame for my mood. Rain I could have blamed. An empty sky leaves me alone with it.",
		"Bad weather lends a gloomy heart an alibi. Under a sky this clean, the gloom is plainly my own.",
	},
	["weather.clear.muse.w10.005"] = {
		"No rain to soften the ground, so the road keeps every mark: boot prints, hoof prints, the long scrape of a cart.",
		"Nothing falling from the sky to wipe a trail away. The road remembers who passed lately better than any gate guard.",
		"Weather this dry keeps tracks. Anyone following me could read my way like a signpost; I'd better not be followed.",
	},
	["weather.clear.muse.w10.006"] = {
		"In weather like this, anyone on high ground can see me a league off. A clear sky works both ways.",
		"Clean air and long views. Good for spotting trouble, and just as good for trouble spotting me.",
		"Nothing in the air to hide behind. I keep to the low ground and the edges of things, out of habit.",
	},
	["weather.clear.muse.w10.007"] = {
		"Empty sky, dry road. Somebody enjoy it for me; I'm working.",
		"Lovely weather. I'll admire it properly once the work's done.",
	},
	["weather.clear.muse.w10.008"] = {
		"No rain to hide from, so everything is out: birds up high, beasts on the open ground. Fine weather empties every burrow.",
		"Without weather to shelter from, the wild comes out to be seen. Even the carrion birds circle higher.",
		"Dry air, and the creatures of the place move freely, unhurried. They know a kind stretch of weather better than any almanac.",
	},
	["weather.clear.muse.w10.009"] = {
		"Nothing falling on me, nothing to fight but the road itself. Somehow my legs still find it a long one.",
		"Perfect weather for walking, they'd tell you. My feet would like a word with whoever 'they' are.",
		"Good weather takes away every excuse to stop, and my body keeps inventing new ones.",
	},
	["weather.clear.muse.w10.010"] = {
		"In clear weather the land shows its whole plan: where water runs, where paths meet, where you'd camp if you had to. I read it like a freshly inked map.",
		"Clear air turns the country into a lesson. Here the stream bends, there the trail climbs, over there the ground goes soft. I learn more in an hour of this than in a week of fog.",
		"Nothing blurs the land in air like this. I mark the passes and the water in my head, in case the weather turns and I need them blind.",
	},
	["weather.clear.muse.w10.011"] = {
		"pauses on a rise to look out over country laid open in every direction, and takes a moment to choose the next stretch of road.",
		"turns slowly in place, taking in the open country on every side before settling on a direction.",
		"walks on with a long, easy stride, under an open sky that asks nothing at all.",
	},
	["weather.clear.subzone_enter.w10.001"] = {
		"{subzone}. Dry ground underfoot and nothing overhead. I'll take that as a good start.",
		"{subzone}, and the air clean enough to taste. Whatever the place is like, I'll meet it with dry boots.",
		"Into {subzone} under an empty sky. Nowhere to hide here, for anyone, me included.",
	},
	["weather.clear.subzone_enter.w10.002"] = {
		"enters {subzone} with the wide-awake look of someone who can see every path and hollow ahead.",
		"comes into {subzone} dry-footed and clear-eyed, and takes stock of the place at an easy pace.",
		"walks into {subzone} with a glance at the open sky, as if to make sure it means to stay that way.",
	},
	["weather.clear.subzone_enter.w10.003"] = {
		"{subzone}. Fine weather for a look around.",
		"{subzone}. Clear air. Let's see what you're made of.",
		"{subzone}. Dry and clear. Good; I'd hate to turn up soaked.",
	},
	["weather.fog.muse.w10.001"] = {
		"In fog, sounds come from the wrong places. A bird on my left turns out to be on my right, and close.",
		"The fog bends every noise. A step behind me, a voice ahead; I stop, and both of them stop too.",
		"Fog makes a liar of the ear. Water I'd swear is running beside me turns out to be a stone's throw off.",
	},
	["weather.fog.muse.w10.002"] = {
		"I can see my hand. Most of it. That'll have to do.",
		"Fog. Walk slow, talk loud, and hope everything out there does the same.",
	},
	["weather.fog.subzone_enter.w10.001"] = {
		"{subzone}. Or so I'm told; I can see about ten paces of it.",
		"{subzone}, a name in the fog. The rest of the place is keeping to itself.",
		"{subzone}. The fog holds the place close and lends me only the next few steps.",
	},
	["weather.rain.landmark.w10.001"] = {
		"reaches {landmark} with rain dripping off {g:his|her} nose, and looks first for its driest corner.",
		"stops before {landmark} in the rain, the whole place glistening as though it had just been washed.",
	},
	["weather.rain.muse.w10.001"] = {
		"Rain gets into the pack first. Then the bread, then the bandages, then whatever I most wanted to keep dry.",
		"Everything I carry is learning to be wet. The straps have gone dark and stiff, and the oilcloth gave up a while ago.",
		"Rain finds the seams. Every stitch in my gear is a little door, and it knocks on all of them.",
	},
	["weather.rain.muse.w10.002"] = {
		"Has anyone ever lit a fire in this? Asking for a friend. The friend is me.",
		"The good news: no dust. The bad news: everything else.",
		"I've stopped trying to stay dry. Now I'm only trying to stay cheerful, and that's going worse.",
	},
	["weather.rain.muse.w10.003"] = {
		"Rain covers every sound. Good for anything that wants to creep up on me; good for me too, if I'm quicker.",
		"In this rain I can't hear my own steps. Neither can anything else out there. A blade with two edges, and both of them wet.",
		"The hiss of the rain swallows the small noises: a twig, a breath, a sword leaving its sheath. I look twice as hard to make up for it.",
	},
	["weather.rain.muse.w10.004"] = {
		"steps around one puddle and straight into another hidden under the mud, and gives up on dry boots with a sigh.",
		"plods along a road gone to brown soup, each step coming loose with a wet, sucking sound.",
		"stops to tip the water out of a boot, considers the road ahead, and puts the boot back on with no enthusiasm at all.",
	},
	["weather.rain.muse.w10.005"] = {
		"Rain wakes the smell of everything: wet earth, crushed leaves, old wood, my own cloak. The world gets louder to the nose.",
		"Under the rain the ground gives off a smell like something fresh from the oven. Mud, yes, but honest mud.",
		"Wet stone, wet bark, wet wool. Rain reminds me the world has a smell under all its dust.",
	},
	["weather.rain.subzone_enter.w10.001"] = {
		"{subzone}, through a veil of rain. I'll find out what it looks like dry some other time.",
		"{subzone}. Water running off every edge. Any place looks a little sorry for itself in the rain.",
		"{subzone}. The rain got here before me and has already made itself at home.",
	},
	["weather.rain.subzone_enter.w10.002"] = {
		"squelches into {subzone} with water running from {g:his|her} hood, eyes searching for anything that might pass for shelter.",
		"comes into {subzone} head down, reading the ground for puddles rather than the place for sights.",
		"enters {subzone} at a heavy, sodden trudge, the rain blurring every edge of the place.",
	},
	["weather.sand.muse.w10.001"] = {
		"Sand gets into everything: the seams, the waterskin, the creases of my eyelids. Even blinking grinds.",
		"The sand hisses across the ground like a whisper with teeth. I walk with my eyes half shut and my mouth fully shut.",
	},
	["weather.snow.muse.w10.001"] = {
		"Fresh snow keeps every track. I can read who passed before me, and anyone behind me can read me just as easily.",
		"Snow to the ankles and rising. Each step is a small negotiation, and the snow wins most of them.",
	},
	["weather.storm.muse.w10.001"] = {
		"Lightning shows the land all at once, every stone and branch, then takes it back. I walk by those glimpses.",
		"On open ground in a storm, everyone is the tallest thing around. I keep my head down and keep moving.",
		"Flash, then the count, then the thunder. The count is getting shorter, and so is my patience.",
	},
	["weather.storm.muse.w10.002"] = {
		"Loud up there, isn't it? Somebody's losing an argument with the sky.",
		"Stay off the ridges. The sky is picking targets.",
	},
	["weather.storm.muse.w10.003"] = {
		"flinches at a crack of thunder, then pretends very hard that it was only a stretch.",
		"hunches into the wind as the storm pounds the land, cloak snapping like a flag.",
	},
	["weather.storm.subzone_enter.w10.001"] = {
		"{subzone}, seen in flashes. Not the place at its best, nor me at mine.",
		"{subzone}, between one thunderclap and the next. I'll look properly once the sky stops shouting.",
	},
	["muse.w11.body.006"] = {
		"presses a thumb into a sore spot on {g:his|her} shoulder and winces, as if pleased to have found it.",
		"probes a tender place along {g:his|her} ribs with two careful fingers, then decides not to know more.",
	},
	["muse.w11.body.014"] = {
		"rummages in {g:his|her} pack for something to eat and comes up with a squashed apple, which will do.",
		"digs through {g:his|her} bags for food, finds a flattened piece of fruit at the very bottom, and shrugs at it.",
	},
	["muse.w11.body.019"] = {
		"rubs the back of {g:his|her} neck, working at a stiffness that won't quite go.",
		"tilts {g:his|her} head slowly from side to side, hunting down a crick in the neck.",
	},
	["muse.w11.body.028"] = {
		"tugs at a strap that has been biting into {g:his|her} shoulder and lets it out a notch, with a grunt of relief.",
		"loosens a buckle at {g:his|her} side by one hole, and visibly forgives it.",
	},
	["muse.w11.body.041"] = {
		"rearranges the contents of {g:his|her} bags with great care, gaining no room at all.",
		"shuffles things from one bag to another, as if the trouble were where they are and not how many.",
	},
	["muse.w11.body.045"] = {
		"inspects a fresh nick in {g:his|her} gear with a sour look, already counting what it will cost.",
		"runs a thumb along a new scratch in {g:his|her} gear and sighs at it as if at a debt.",
		"finds a new dent somewhere on {g:his|her} gear, frowns, and adds it to a long mental list.",
	},
	["muse.w11.body.051"] = {
		"holds a piece of junk up to the light, weighs whether it's worth carrying, and keeps it out of pure optimism.",
		"turns a worthless trinket over in {g:his|her} hand, sighs, and stuffs it back into an already overfull bag.",
		"considers throwing something away, hesitates, and puts it back in the bag with an air of defeat.",
	},
	["muse.w11.body.058"] = {
		"blinks hard a few times, as if trying to shake the tiredness out of {g:his|her} eyes.",
		"presses the heels of {g:his|her} hands to {g:his|her} eyes for a moment, then carries on.",
		"squeezes {g:his|her} eyes shut, opens them wide, and tries to look more awake than {g:he|she} is.",
	},
	["muse.w11.body.067"] = {
		"sits down heavily, eats something quick from {g:his|her} pack, and is back up before the last crumb lands.",
		"drops onto the nearest seat, wolfs a mouthful of something from {g:his|her} bag, and gets straight up again.",
	},
	["muse.w11.body.071"] = {
		"sags for a moment like a sack set down, then gathers {g:himself|herself} up again.",
		"slumps a little where {g:he|she} stands, then catches it and straightens, as if someone had called {g:his|her} name.",
	},
	["muse.w11.body.082"] = {
		"unwinds a stained bandage, studies what's beneath with detached interest, and winds on a fresh one.",
		"ties off a fresh strip of cloth around {g:his|her} forearm, pulling the knot tight with {g:his|her} teeth.",
		"checks a bandage, decides it will hold a while longer, and tucks the loose end in.",
	},
	["muse.w11.body.088"] = {
		"sets {g:his|her} jaw, ignores whatever hurts, and squares {g:his|her} shoulders.",
		"straightens up with a small grimace, as if turning down an offer from {g:his|her} own aches.",
		"rolls the stiffness out of {g:his|her} neck, plants {g:his|her} feet, and is ready.",
	},
	["muse.w11.body.096"] = {
		"reties a knot that was holding perfectly well, just to be sure.",
		"doubles a knot on {g:his|her} pack, then doubles it again, and finally looks satisfied.",
		"pulls a lace loose and laces it again, tighter, with the care of someone who expects it to give way one day.",
	},
	["muse.w11.body.105"] = {
		"massages one calf with both hands, slowly, kneading out a knot.",
		"sits with {g:his|her} elbows on {g:his|her} knees and hands hanging loose, waiting for {g:his|her} legs to stop humming.",
	},
	["muse.w11.body.112"] = {
		"bites a coin to test it, the way merchants do, and looks none the wiser.",
		"flips a coin across {g:his|her} knuckles, drops it, and pretends that was the trick.",
	},
	["muse.w11.body.119"] = {
		"uncorks a flask, sniffs at it with deep suspicion, and drinks anyway.",
		"takes a long pull from a flask, grimaces, and screws the cap back on with grim respect.",
	},
	["muse.w11.body.124"] = {
		"polishes a scuffed buckle against {g:his|her} sleeve until it gives back a dull gleam.",
		"works a rag over {g:his|her} gear with slow, even strokes, unhurried as a craftsman.",
	},
	["muse.w11.body.131"] = {
		"favors one leg for a few steps, then stubbornly stops favoring it.",
		"walks off a twinge in {g:his|her} knee, refusing to give it the satisfaction of a limp.",
	},
	["muse.w11.body.137"] = {
		"pats {g:his|her} stomach, listens, and seems to receive bad news.",
		"looks into {g:his|her} food bag, then up, then back in, as if hoping it might refill out of pity.",
		"rummages for a snack, finds only crumbs, and eats them with dignity.",
	},
	["muse.w11.body.141"] = {
		"props one foot up on whatever is nearest and reties the boot over a sore ankle.",
		"loosens a boot that has been pinching, works the foot inside it, and fastens it again a hole looser.",
	},
	["muse.w11.history.011"] = {
		"sketches something in the air with one finger, like a tactician going over a battle long finished, then lets the hand drop.",
		"moves one hand through the air as though placing armies on a table, and stops, as if remembering how that one ended.",
	},
	["muse.w11.history.019"] = {
		"lowers {g:his|her} head for a moment, a small bow to nobody in particular, the kind people give to the dead of old wars.",
		"goes still and bows {g:his|her} head a little, as if a long list of the fallen were being read aloud somewhere.",
	},
	["muse.w11.history.033"] = {
		"studies the worn edge of {g:his|her} weapon for a while, as if wondering how many old wars the same design has seen.",
		"turns {g:his|her} weapon over and looks at it plainly: a simple tool, like the thousands left rusting on the old battlefields.",
	},
	["muse.w11.history.044"] = {
		"glances toward the north without quite meaning to, the way many people have since the plague years.",
		"looks off northward for a moment, as people do when the Scourge comes up in talk, then looks away again.",
	},
	["muse.w11.history.053"] = {
		"straightens up a little, the way people do when an old hero's name comes up, then looks faintly embarrassed about it.",
		"squares {g:his|her} shoulders as if under the eye of some famous captain long dead, then lets them settle again.",
	},
	["muse.w11.history.059"] = {
		"rests a palm flat on the ground for a moment, the way some people do on old battlefields, and then stands again.",
		"crouches to touch the ground with two fingers, as if greeting whoever might lie beneath it, and straightens up.",
	},
	["muse.w11.history.067"] = {
		"lets {g:his|her} shoulders sink and shakes {g:his|her} head, like someone weighing all the old wars at once and finding the sum too heavy.",
		"shakes {g:his|her} head at nothing, in the patient way of someone hearing a story told too often and never digested.",
	},
	["muse.w11.history.075"] = {
		"touches a hand to {g:his|her} brow in a short salute to nobody, the kind given as old banners go by.",
		"offers a small, stiff salute to the empty air, then looks faintly surprised at {g:himself|herself}.",
	},
	["muse.w11.history.084"] = {
		"sets {g:his|her} jaw, with the look people get when talk turns to the plague years.",
		"goes quiet and hard about the eyes, like someone remembering news that once came down from the north.",
	},
	["muse.w11.history.091"] = {
		"looks far off for a while, as if trying to picture the land as it was before the world broke apart.",
		"studies the far horizon with a frown, like someone comparing it against a much older map.",
		"stands still a while, eyes on the far distance, like someone trying to see how things were long before anyone kept count.",
	},
	["muse.w11.history.099"] = {
		"mouths something silently, a name perhaps, as though testing whether it still carries any weight.",
		"murmurs something that sounds like a name, very quietly, the way people speak of those long gone.",
		"is silent a moment, lips moving on a word that never quite comes out.",
	},
	["muse.w11.history.107"] = {
		"tightens a strap with one sharp tug, as if done with old wars for the day and ready for whatever comes next.",
		"brushes off {g:his|her} hands briskly, like someone closing a long history book and putting it back on the shelf.",
		"gives a short nod, as if agreeing with some old chronicler, and moves on.",
	},
	["muse.w11.history.111"] = {
		"snorts quietly, like someone hearing a heroic tale told with all the dull parts cut out.",
		"rolls {g:his|her} eyes faintly, as if at some grand old legend that got far too grand in the telling.",
		"gives a small dry smile, like someone listening to mud being described as glory.",
	},
	["muse.w11.history.112"] = {
		"lifts {g:his|her} chin a little, as people do when they decide some old story is worth living up to.",
		"settles {g:his|her} stance, as if an old story had just asked {g:him|her} a question that deserved an answer.",
		"nods slowly to {g:himself|herself}, like someone deciding that an old example is worth following.",
	},
	["muse.w11.history.113"] = {
		"glances at the ground underfoot as though wondering what lies buried there, and sets {g:his|her} feet down a little more carefully.",
		"scuffs the ground with a heel and looks down, as if half expecting some old bone to answer.",
		"treads carefully for a while, as though everything underfoot might be somebody's history.",
	},
	["muse.w11.history.114"] = {
		"sits a moment with {g:his|her} chin in one hand, looking for all the world like a student stuck on a hard chapter of history.",
		"wipes {g:his|her} hands slowly, like a scholar who has just set down something very old and very fragile.",
		"frowns in thought, lips pursed, like someone trying to put three old wars in the right order.",
	},
	["muse.w11.history.115"] = {
		"goes so still that for a while {g:he|she} could pass for a statue from some older age.",
		"keeps very quiet, weathered and patient as an old monument nobody visits anymore.",
		"holds a long silence, the kind usually kept for ruins.",
	},
	["muse.w11.history.129"] = {
		"rubs the back of {g:his|her} neck, like someone handed a very thick history and told to have it read by tomorrow.",
		"pulls a face at nothing, the face of a pupil just told how many wars there are to learn by heart.",
		"scratches {g:his|her} head slowly, looking like someone who lost the thread of the royal lineages three kings ago.",
	},
	["muse.w11.history.130"] = {
		"pauses and looks down for a moment, the way people look at a stone whose name has worn away.",
		"lingers in place a little longer than needed, with the patient look of someone paying respects nobody asked for.",
	},
	["muse.w11.memory.008"] = {
		"stops short, as if a half-remembered word had tapped {g:him|her} on the shoulder, then shakes {g:his|her} head and moves on.",
		"opens {g:his|her} mouth to say a name, then closes it again, no longer sure how it ends.",
	},
	["muse.w11.memory.017"] = {
		"turns to say something to someone who isn't there, and lets the words go unsaid.",
		"half-turns as if to share a thought with a person who isn't at {g:his|her} side, and keeps the thought.",
	},
	["muse.w11.memory.025"] = {
		"mouths a few words without sound, the way one rehearses something so as not to lose it.",
		"repeats something under {g:his|her} breath three times, like someone tying a knot in a thought.",
	},
	["muse.w11.memory.034"] = {
		"pats a pocket where nothing is kept anymore, a habit left with nowhere to go.",
		"reaches for something at {g:his|her} belt that isn't there and hasn't been for some time, then lets the hand drop.",
	},
	["muse.w11.memory.045"] = {
		"traces a small shape on {g:his|her} palm with one finger, looks at it a moment, and closes the hand over it.",
		"sketches something in the air with a fingertip, the outline of a doorway perhaps, then lets the hand fall.",
		"smiles at nothing in particular, the smile of someone remembering a joke heard very far from here.",
	},
	["muse.w11.memory.054"] = {
		"looks down at {g:his|her} hands for a moment, as if they knew something {g:he|she} had forgotten.",
		"frowns at nothing, chasing a thought that keeps slipping one step ahead.",
		"goes very still, then snaps {g:his|her} fingers, then sighs: whatever it was, it's gone again.",
	},
	["muse.w11.memory.062"] = {
		"arranges {g:his|her} few belongings in a neat row, the way someone makes a corner feel like theirs for a while.",
		"smooths the spot with one hand before sitting, a small ritual of claiming it.",
		"settles in with care, as if this were a room {g:he|she} meant to come back to.",
	},
	["muse.w11.memory.069"] = {
		"pauses with the faraway look of someone counting backward through days.",
		"is quiet for a while, eyes unfocused, lips moving slightly as if reading a list of names.",
		"lets {g:his|her} gaze drift past everything near, toward something only memory could show.",
	},
	["muse.w11.memory.076"] = {
		"slows for a step, as if passing the door of a house that used to mean something.",
		"hesitates mid-stride, as though someone had called {g:him|her} by an old name, and then walks on.",
		"starts at some small sound, half expecting a voice it can't possibly be, and lets the moment pass.",
	},
	["muse.w11.memory.087"] = {
		"unfolds a scrap of paper from a pocket, reads it over twice, and puts it away without changing expression.",
		"takes out something small and worn, looks at it the way one checks a map, and tucks it back where it belongs.",
		"rereads a folded note that has clearly been read many times, then folds it along the same tired creases.",
	},
	["muse.w11.memory.093"] = {
		"sits for a while with {g:his|her} chin on {g:his|her} fist, somewhere else entirely.",
		"rests {g:his|her} chin on one hand and looks at nothing, the way people do when visiting rooms inside their heads.",
		"sits a while with elbows on knees, absently tracing circles with one thumb, miles away.",
	},
	["muse.w11.memory.100"] = {
		"says a single word under {g:his|her} breath, a name perhaps, and doesn't say anything after it.",
		"murmurs something that might be a name, then presses {g:his|her} lips together as if to keep the rest in.",
	},
	["muse.w11.memory.106"] = {
		"glances back once, not for long, the way one checks that a door has been properly shut.",
		"straightens, as if setting down something heavy that was never in {g:his|her} hands at all.",
		"gives a small nod to no one, the nod of someone agreeing to let something go.",
	},
	["muse.w11.memory.112"] = {
		"stops to look at something small and ordinary with the soft attention of someone reminded of something.",
		"picks up a small, ordinary object, studies it as if it recalled something, and puts it carefully back.",
	},
	["muse.w11.memory.119"] = {
		"stands a moment with head bowed, for a reason no one could name.",
		"bows {g:his|her} head briefly, a private respect paid to someone not present.",
	},
	["muse.w11.memory.126"] = {
		"tucks {g:his|her} feet in and sits the way people sit in their own kitchens, unguarded for a moment.",
		"loosens a strap and leans back, wearing for a moment the face of someone at home.",
	},
	["muse.w11.memory.129"] = {
		"counts quietly on {g:his|her} fingers: not coins this time, but days.",
		"tallies something on {g:his|her} fingers, loses count, and seems to decide it has been long enough either way.",
		"catches {g:his|her} reflection in a polished buckle and studies it, as if checking who's still in there.",
	},
	["muse.w11.memory.130"] = {
		"folds something carefully and tucks it inside {g:his|her} clothes, close, the way one keeps a thing that can't be replaced.",
		"checks, as if from long habit, that a certain pocket still holds what it should, and eases.",
		"rests a hand flat over one pocket for a moment, as if feeling what's inside were enough.",
	},
	["muse.w11.people.007"] = {
		"lifts a hand in a small wave to nobody in particular, then seems faintly embarrassed by it.",
		"raises a hand as if to greet someone, thinks better of it, and pretends to be adjusting a strap.",
	},
	["muse.w11.people.018"] = {
		"turns as if to say something to someone at {g:his|her} side, then closes {g:his|her} mouth again.",
		"starts to share a thought aloud, stops halfway, and keeps the rest of it.",
	},
	["muse.w11.people.026"] = {
		"mutters a price under {g:his|her} breath, knocks a quarter off it, and nods as if a merchant had just agreed.",
		"rehearses a bit of haggling in a low voice, playing both sides, and seems to lose.",
	},
	["muse.w11.people.033"] = {
		"tucks one coin into a separate pocket, apart from the rest, the way some people keep a little aside for whoever needs it more.",
		"sets a single copper apart from the others, as if it already belonged to someone else.",
	},
	["muse.w11.people.040"] = {
		"rubs the back of {g:his|her} neck like someone replaying an awkward conversation word by word.",
		"winces faintly at nothing, with the look of someone remembering what {g:he|she} said instead of what {g:he|she} meant.",
	},
	["muse.w11.people.046"] = {
		"shifts aside without thinking, leaving room for someone who isn't there, and lets the space stay.",
		"glances to one side, the way people do when they expect a familiar face, then quietly looks ahead again.",
	},
	["muse.w11.people.050"] = {
		"practices a friendly smile, finds it a little stiff, and works at it until it fits.",
		"tries out a polite nod on no one in particular, as if rehearsing for the next meeting.",
	},
	["muse.w11.people.056"] = {
		"nods once, slowly, as if agreeing with someone who isn't there to hear it.",
		"gives a short nod to some voice in {g:his|her} memory, as if settling an old argument.",
		"murmurs 'fair enough' to no one, conceding a point made long ago.",
	},
	["muse.w11.people.062"] = {
		"pats {g:his|her} purse quickly, the way people do after brushing past a stranger, and relaxes only a little.",
		"checks that {g:his|her} purse is where it should be, with the reflex of anyone who has walked through a market.",
	},
	["muse.w11.people.067"] = {
		"smiles faintly at some remembered kindness, small and private, and keeps it to {g:himself|herself}.",
		"softens for a moment, as if a stranger's good turn had just come back to mind.",
	},
	["muse.w11.people.073"] = {
		"squares {g:his|her} shoulders the way people do before walking into a room full of strangers.",
		"straightens up and sets {g:his|her} face into something calm and civil, ready for whoever comes next.",
	},
	["muse.w11.people.078"] = {
		"chuckles at a joke someone told a long way back, still funny for no good reason.",
		"laughs once, softly, at something nobody else heard, then shakes {g:his|her} head.",
	},
	["muse.w11.people.089"] = {
		"rehearses an apology under {g:his|her} breath, frowns at the wording, and tries again.",
		"mouths a few words of an apology, then trims them shorter, as if honesty came easier in fewer words.",
	},
	["muse.w11.people.096"] = {
		"frowns over some old slight, then lets it go with a small shake of the head, unannounced and unasked.",
		"lets a grudge drop with a little shrug, the way one sets down something heavy that was never worth carrying.",
	},
	["muse.w11.people.102"] = {
		"repeats a name under {g:his|her} breath a few times, the way people do when they mean to remember it.",
		"murmurs a name twice to {g:himself|herself}, fixing it in place like a knot pulled tight.",
	},
	["muse.w11.people.108"] = {
		"mimics someone's pompous way of talking under {g:his|her} breath, then looks faintly guilty about it.",
		"does a quiet, unkind impression of some self-important stranger, and smiles despite {g:himself|herself}.",
	},
	["muse.w11.people.117"] = {
		"sets aside the best bite of {g:his|her} food without quite deciding to, as if keeping it for someone.",
		"breaks off a piece of something to eat and holds it out by reflex, then, with a shrug, eats it {g:himself|herself}.",
	},
	["muse.w11.people.123"] = {
		"tidies {g:his|her} gear with unusual care, as if someone whose opinion mattered might be watching.",
		"brushes off the worst of the dust, the way people do before meeting someone they'd like to impress.",
	},
	["muse.w11.people.129"] = {
		"mutters a few choice words about a certain kind of person, without saying which kind, and seems relieved.",
		"rolls {g:his|her} eyes, quite thoroughly, at the memory of someone's boasting.",
	},
	["muse.w11.people.134"] = {
		"sets {g:his|her} jaw like someone deciding to be the steady one, for whoever needs it.",
		"draws {g:himself|herself} up a little, with the look of someone who has chosen to be dependable today.",
	},
	["muse.w11.people.140"] = {
		"stops to pick up something someone else dropped, looks about for its owner, and finally sets it somewhere easy to find.",
		"nudges a stray stone out of the way with one boot, a small courtesy for whoever comes next.",
	},
	["muse.w11.people.145"] = {
		"counts on {g:his|her} fingers the favors owed and the favors due, and frowns at the balance.",
		"tallies something under {g:his|her} breath, who lent a hand and who still waits for one, and runs out of fingers.",
	},
	["muse.w11.road.006"] = {
		"traces a route across {g:his|her} palm with one finger, frowns, and traces it again a different way.",
		"points in one direction, then another, then settles on the first with a decisive little nod.",
	},
	["muse.w11.road.013"] = {
		"unfolds a creased map, turns it the right way up, then the other right way up.",
		"studies a map at arm's length, then brings it close, as if distance might change the answer.",
		"folds a map along creases it clearly doesn't want, and gives up halfway.",
	},
	["muse.w11.road.022"] = {
		"tightens the laces of one boot, then the other, and stamps once to settle them.",
		"ties off a bootlace with a double knot, the way people do before a long walk.",
	},
	["muse.w11.road.032"] = {
		"looks ahead for a long moment, as though trying to see past the next turn.",
		"narrows {g:his|her} eyes at the way ahead, weighing how much of it is left.",
	},
	["muse.w11.road.040"] = {
		"hesitates, turns left, turns back, and sets off to the right with great dignity.",
		"turns in a slow circle to get {g:his|her} bearings, and then pretends that was the plan all along.",
	},
	["muse.w11.road.049"] = {
		"cranes {g:his|her} neck for a better look at the way ahead, then settles back with a small grunt.",
		"peers ahead as if the destination might be persuaded to come a little closer.",
	},
	["muse.w11.road.056"] = {
		"walks a few paces, stops, and walks a few more, as if checking that {g:his|her} legs agree with the plan.",
		"stamps {g:his|her} feet a couple of times, waking them up for the walk ahead.",
	},
	["muse.w11.road.064"] = {
		"settles the pack with a little hop, the way travelers do before a long stretch.",
		"shrugs the pack into place and starts off without a backward glance.",
		"gives the pack straps a final tug and turns to face the way ahead.",
	},
	["muse.w11.road.072"] = {
		"slows, glances around to get {g:his|her} bearings, and gives a small satisfied nod.",
		"pauses to work out which way is which, lips moving silently.",
	},
	["muse.w11.road.080"] = {
		"recites a set of directions under {g:his|her} breath like a lesson learned by heart, and stumbles on the last turn.",
		"mutters 'left, then left, then...' and trails off with a look of deep suspicion.",
	},
	["muse.w11.road.089"] = {
		"brushes the dust of the way off {g:his|her} sleeves, without much hope that it'll stay off.",
		"knocks dried mud from {g:his|her} boots against the nearest hard thing, one boot, then the other.",
		"slaps at {g:his|her} clothes, raises a small cloud of travel, and gives up.",
	},
	["muse.w11.road.097"] = {
		"pauses on the edge of setting off, one foot already turned toward the way ahead.",
		"lingers a moment longer, as if saying a quiet goodbye to the spot, then moves on.",
		"looks around once more before going, the way someone checks a room for anything forgotten.",
	},
	["muse.w11.road.105"] = {
		"glances at the way ahead, then down at {g:his|her} boots, as if asking them whether they're up to it.",
		"gives {g:his|her} feet a long, doubtful look, then gives the road ahead an even longer one.",
	},
	["muse.w11.road.114"] = {
		"takes a few long strides, then a few short ones, finding the rhythm of the way.",
		"falls into an easy walking rhythm, arms swinging loosely.",
		"settles into a steady, unhurried pace, the kind that eats distance without seeming to.",
	},
	["muse.w11.road.122"] = {
		"nods once toward the way ahead, as if agreeing terms with it.",
		"taps the pack twice, a small private signal that it's time to move.",
		"squares {g:his|her} shoulders and steps off, as if crossing a line only {g:he|she} can see.",
	},
	["muse.w11.road.136"] = {
		"raises a hand in a small farewell to the place, though no one is there to see it.",
		"gives the spot a brief nod of thanks before moving on, as travelers sometimes do.",
	},
	["muse.w11.voices.025"] = {
		"unbuckles a pouch, peers inside as if expecting a surprise, and buckles it shut again, unsurprised.",
		"opens a pouch, studies its contents at length, and closes it with a small nod.",
	},
	["muse.w11.voices.026"] = {
		"glances left, then right, then left again, as though the world might have moved while {g:he|she} wasn't looking.",
		"looks about with mild suspicion, as if checking that everything is still where it was left.",
	},
	["muse.w11.voices.027"] = {
		"hums a few bars of nothing in particular, loses the thread, and carries on in a different key.",
		"hums to {g:himself|herself}, the same four notes going round and round.",
		"starts humming something, stops to think about how it goes, and gives up with a shrug.",
	},
	["muse.w11.voices.028"] = {
		"taps one foot, slowly, the way people do while waiting for something that is late.",
		"beats a slow, impatient rhythm with the toe of one boot.",
	},
	["muse.w11.voices.029"] = {
		"counts {g:his|her} coins into little stacks in {g:his|her} palm, loses count at the third, and starts over.",
		"lines up a few coins by size, admires the arrangement briefly, then pockets the lot.",
		"taps a coin against {g:his|her} teeth, decides it is honest metal, and tucks it away.",
	},
	["muse.w11.voices.030"] = {
		"laces {g:his|her} fingers together and pushes them out in front, arms straight, until the knuckles complain.",
		"leans to one side, then the other, working the stiffness out of {g:his|her} middle.",
	},
	["muse.w11.voices.031"] = {
		"tightens a strap by one hole, considers it, and lets it back out again.",
		"adjusts something at {g:his|her} belt, then adjusts it back exactly as it was.",
		"fusses with a buckle until it sits just so, and seems obscurely satisfied.",
	},
	["muse.w11.voices.032"] = {
		"lifts {g:his|her} chin and studies the surroundings like someone reading a page in poor handwriting.",
		"narrows {g:his|her} eyes at the way ahead, as if it had said something rude.",
	},
	["muse.w11.voices.033"] = {
		"makes a small, long-suffering noise aimed at nobody in particular.",
		"clicks {g:his|her} tongue, shakes {g:his|her} head, and lets the matter drop.",
	},
	["muse.w11.voices.034"] = {
		"crouches for a moment, forearms on {g:his|her} knees, studying nothing in particular.",
		"drops into a crouch and stays there a while, weight on {g:his|her} heels, eyes far away.",
	},
	["muse.w11.voices.035"] = {
		"wipes {g:his|her} weapon down with a corner of cloth, more out of habit than need.",
		"turns {g:his|her} weapon this way and that, looking for any nick or crack.",
	},
	["muse.w11.voices.036"] = {
		"smiles at something private, and keeps it.",
		"gives a short laugh at some private joke and doesn't explain it.",
	},
	["muse.w11.voices.037"] = {
		"empties a pocket into {g:his|her} palm: a button, a pebble, a bit of string. Then puts it all back.",
		"finds something forgotten in a pocket, frowns at it, and decides to keep it a while longer.",
	},
	["muse.w11.voices.038"] = {
		"nods once, firmly, as if some private question had just been settled.",
		"gives a small, decisive nod to no one, and squares {g:his|her} shoulders.",
		"sets {g:his|her} jaw and nods to {g:himself|herself}, the matter decided.",
	},
	["muse.w11.voices.039"] = {
		"rubs the back of {g:his|her} neck and rolls {g:his|her} head slowly from side to side.",
		"kneads a knot at the base of {g:his|her} neck, wincing with something like relief.",
	},
	["muse.w11.voices.040"] = {
		"cracks {g:his|her} knuckles one by one, then looks faintly guilty about it.",
		"presses {g:his|her} palms together until the knuckles pop, and seems pleased with the sound.",
	},
	["muse.w11.voices.067"] = {
		"sets {g:his|her} pack down, rummages to the very bottom, and finds the thing was in the top pocket all along.",
		"turns {g:his|her} pack inside out hunting for something, then finds it already in {g:his|her} hand.",
		"rummages in {g:his|her} pack with growing irritation, mutters, and gives up with nothing to show for it.",
	},
	["muse.w11.voices.068"] = {
		"straightens up, tugs {g:his|her} clothes into order, and tries to look like someone with a plan.",
		"brushes the worst of the dirt off {g:his|her} front, and gives up on the rest.",
	},
	["muse.w11.voices.069"] = {
		"moves {g:his|her} lips over a few numbers, frowning, as if a sum refuses to come out right.",
		"works out some sum in {g:his|her} head, and plainly does not like the answer.",
	},
	["muse.w11.voices.070"] = {
		"mutters a running commentary to {g:himself|herself}, none of it complimentary.",
		"grumbles quietly about something, loses interest halfway through, and stops.",
	},
	["muse.w11.voices.071"] = {
		"inspects a scrape on the back of {g:his|her} hand, decides it will live, and forgets about it.",
		"turns a fresh scratch toward the light, judges it unimportant, and moves on.",
	},
	["muse.w11.voices.072"] = {
		"rolls {g:his|her} eyes so hard it is nearly audible.",
		"rolls {g:his|her} eyes at nothing in particular, and seems the better for it.",
	},
	["muse.w11.voices.073"] = {
		"rubs at a stubborn mark on {g:his|her} gear with the heel of a hand until it gives up.",
		"scrubs at a stain on {g:his|her} sleeve, makes it worse, and stops.",
	},
	["muse.w11.voices.074"] = {
		"sits back on {g:his|her} heels and surveys {g:his|her} gear spread out around {g:him|her}, like a general over a map.",
		"lays out {g:his|her} gear in a neat row, looks it over, and packs it all away again in a different order.",
		"sorts {g:his|her} belongings into piles labeled, by the look of it, useful, maybe, and why.",
	},
	["muse.w11.voices.075"] = {
		"throws a quick look over {g:his|her} shoulder, sees nothing, and holds the look a moment longer anyway.",
		"checks behind {g:him|her}, twice, for no reason {g:he|she} could explain.",
	},
	["muse.w11.voices.076"] = {
		"lifts {g:his|her} chin and fixes {g:his|her} eyes on some far point, with the air of someone nothing can ruffle.",
		"draws {g:himself|herself} up to full height and sets {g:his|her} face into something like confidence.",
	},
	["muse.w11.voices.077"] = {
		"mouths silent words, as if rehearsing something {g:he|she} means to say to someone one day.",
		"rehearses a conversation in silence, lips moving, and shakes {g:his|her} head at {g:his|her} own lines.",
	},
	["muse.w11.voices.078"] = {
		"shakes out {g:his|her} arms and bounces lightly on the spot, like someone about to step into an arena.",
		"rolls {g:his|her} neck, shakes out {g:his|her} hands, and plants {g:his|her} feet.",
	},
	["muse.w11.voices.079"] = {
		"scratches a small mark into {g:his|her} gear with a fingernail, as though keeping some private tally.",
		"adds another notch to a tally only {g:he|she} seems to understand.",
	},
	["muse.w11.voices.080"] = {
		"pulls a face at nothing, then smooths it away before anyone can see.",
		"makes a sour face, and lets it fade slowly.",
	},
	["muse.w11.voices.081"] = {
		"chews thoughtfully on the inside of {g:his|her} cheek, working something out.",
		"frowns into the middle distance, chewing over some problem.",
	},
	["muse.w11.voices.082"] = {
		"shifts {g:his|her} weight from foot to foot, restless, unable to keep still.",
		"can't seem to keep still, fidgeting with a strap, a pocket, the strap again.",
	},
	["muse.w11.voices.083"] = {
		"bows {g:his|her} head for a moment, as if for someone who isn't there.",
		"lowers {g:his|her} eyes and stands a moment in a silence that seems to belong to someone else.",
	},
	["muse.w11.voices.084"] = {
		"rests {g:his|her} chin on a fist and gazes at nothing, deep in some argument with {g:himself|herself}.",
		"props {g:his|her} chin in one hand and lets {g:his|her} thoughts wander off without {g:him|her}.",
	},
	["muse.w11.voices.115"] = {
		"squints at something in the distance, decides it is not worth the trouble, and looks away.",
		"peers hard at a far point, then shrugs, unconvinced.",
	},
	["muse.w11.voices.116"] = {
		"shrugs to no one, as if conceding a point in an argument nobody else heard.",
		"shrugs, says nothing, and lets whatever it was go.",
	},
	["muse.w11.voices.117"] = {
		"scratches {g:his|her} head and frowns, as if faced with a riddle.",
		"rubs {g:his|her} temples with two fingers, slowly, the way people do when a thought won't settle.",
	},
	["muse.w11.voices.118"] = {
		"hums something low and wordless that rises and falls like a rocking cradle.",
		"keeps up a low, tuneless drone, the sort of sound that keeps a person company.",
	},
	["muse.w11.voices.119"] = {
		"balances a coin on the back of one finger, and watches it tip off into {g:his|her} palm.",
		"spins a coin on {g:his|her} palm and watches it wobble down to stillness.",
	},
	["muse.w11.voices.120"] = {
		"blinks slowly, like someone surfacing from a daydream.",
		"starts slightly, as if waking from a thought, and glances round to see whether anyone noticed.",
	},
	["muse.w11.voices.121"] = {
		"rubs {g:his|her} eyes hard with the heels of {g:his|her} hands, then blinks the world back into focus.",
		"pinches the bridge of {g:his|her} nose and stays like that for a long moment.",
	},
	["muse.w11.voices.122"] = {
		"sits down heavily, elbows on {g:his|her} knees, and lets {g:his|her} head hang for a while.",
		"drops onto the nearest flat surface and stays there, hands dangling between {g:his|her} knees.",
		"settles down with a grunt and gives every muscle permission to stop.",
	},
	["muse.w11.voices.123"] = {
		"wraps a strip of cloth around {g:his|her} knuckles, tight, and tests the grip.",
		"rewinds the worn binding on {g:his|her} weapon's grip with slow care.",
	},
	["muse.w11.voices.124"] = {
		"gives {g:his|her} gear a quick once-over: all there, all fastened, all filthy.",
		"takes a quick look down at {g:himself|herself}, and finds everything present, if not respectable.",
	},
	["muse.w11.voices.125"] = {
		"smiles crookedly, as at a joke the world has made at {g:his|her} expense.",
		"lets out a short, rueful laugh and shakes {g:his|her} head.",
	},
	["muse.w11.voices.126"] = {
		"glares at the way ahead as though it owed {g:him|her} money.",
		"gives the path in front a long, unfriendly look.",
	},
	["muse.w11.voices.127"] = {
		"draws a slow line in the air with one finger, tracing some route only {g:he|she} can see.",
		"points vaguely in one direction, then another, then lowers {g:his|her} hand, undecided.",
	},
	["muse.w11.voices.128"] = {
		"kicks a pebble ahead and follows it for a few steps, like a game played alone.",
		"nudges a small stone along with the toe of a boot, absently.",
	},
	["muse.w11.voices.129"] = {
		"nods slowly, agreeing with some inner voice, then shakes {g:his|her} head, disagreeing with it again.",
		"argues something out in silence, eyebrows rising and falling, and seems to lose.",
	},
	["muse.w11.voices.130"] = {
		"straightens a crooked strap, then the one beside it, then all of them, in a sudden fit of order.",
		"tidies {g:himself|herself} up with brisk, efficient movements, as though an inspection were imminent.",
	},
	["muse.w11.voices.131"] = {
		"stands very still for a moment, jaw tight, waiting for something inside to settle.",
		"closes {g:his|her} eyes briefly, and opens them again on a face set harder than before.",
	},
	["muse.w11.voices.132"] = {
		"grins suddenly, wide and unrepentant, at something nobody else can see.",
		"breaks into a grin, the kind that means trouble for someone.",
	},
	["muse.w11.voices.133"] = {
		"stamps one foot, then the other, settling into {g:his|her} boots.",
		"rocks from heel to toe and back again, settling {g:his|her} weight.",
	},
	["muse.w11.voices.134"] = {
		"raises an imaginary cup to no one, and drinks to it.",
		"makes a small toast with an empty hand, to whoever might be watching.",
	},
	["muse.w11.voices.141"] = {
		"pauses, as if a name had come to the tip of the tongue, and lets it go unsaid.",
		"starts to say something, thinks better of it, and closes {g:his|her} mouth again.",
		"opens {g:his|her} mouth to speak to someone not there, and shuts it with a small, crooked smile.",
	},
	["muse.w11.voices.142"] = {
		"tightens {g:his|her} grip on {g:his|her} weapon until the knuckles stand out.",
		"shifts {g:his|her} grip on {g:his|her} weapon, settling it just so.",
		"hefts {g:his|her} weapon, frowns at the balance, and shifts {g:his|her} hold an inch.",
	},
	["muse.w11.voices.143"] = {
		"lifts a hand in greeting to no one in particular, just in case.",
		"nods politely at nothing, the way one does to a stranger on a road.",
		"offers a small wave in no particular direction, and looks faintly embarrassed.",
	},
	["muse.w11.voices.144"] = {
		"lets {g:his|her} shoulders slump, then hauls them back up by force of will.",
		"sags for a moment, then catches {g:himself|herself} and straightens.",
		"droops visibly, notices, and corrects it with an effort.",
	},
	["muse.w11.wonder.007"] = {
		"rubs {g:his|her} fingertips together, as if testing the air for some faint charge.",
		"lifts a hand as if to feel which way something invisible is blowing, then lets it fall.",
		"tilts {g:his|her} head, frowning, like someone who has just heard a note nobody played.",
	},
	["muse.w11.wonder.032"] = {
		"stops to let a beetle finish crossing in front of {g:him|her}, with great patience.",
		"follows the progress of some small crawling thing with a look of real interest, then steps carefully around it.",
		"crouches to watch a tiny creature go about its business, and seems in no hurry to go about {g:his|her} own.",
	},
	["muse.w11.wonder.041"] = {
		"glances over {g:his|her} shoulder at nothing, then laughs at {g:himself|herself}, quietly.",
		"starts at some small sound, then shakes {g:his|her} head with a rueful half smile.",
	},
	["muse.w11.wonder.052"] = {
		"squares {g:his|her} shoulders like someone about to wade into icy water, and goes on.",
		"sets {g:his|her} jaw, gives one short nod to nobody, and steps forward.",
		"pauses on the edge of something only {g:he|she} can see, then makes up {g:his|her} mind.",
	},
	["muse.w11.wonder.067"] = {
		"flips a coin, catches it, and puts it away without looking at which side came up.",
		"spins a coin on the back of {g:his|her} knuckles, watching it with the air of someone asking it a question.",
		"tosses a coin, glances at the result, and shrugs as though it had only confirmed something.",
	},
	["muse.w11.wonder.068"] = {
		"pauses, lips moving silently over a few words, then goes on as if nothing happened.",
		"bows {g:his|her} head for the length of a few quiet words, and lifts it again without explanation.",
	},
	["muse.w11.wonder.069"] = {
		"picks a burr off {g:his|her} sleeve, studies its tiny hooks with interest, and flicks it away.",
		"pulls a stray seed from a fold of cloth, turns it in the light, and tucks it away instead of throwing it.",
	},
	["muse.w11.wonder.070"] = {
		"watches a mote of dust turn slowly in the air, as if it were the most interesting thing in the world.",
		"follows something tiny drifting through the air with {g:his|her} eyes until it is gone.",
	},
	["muse.w11.wonder.082"] = {
		"holds out an open palm as though inviting something small and winged to land, and smiles when nothing does.",
		"offers a flat hand to the air, very still, the way one waits for a shy creature to come closer.",
		"keeps one hand open and motionless for a while, patient as a branch, then lowers it with a small shrug.",
	},
	["muse.w11.wonder.083"] = {
		"studies the lines of {g:his|her} own palm for a long moment, as if they might have changed.",
		"turns {g:his|her} hand over and back, reading the creases as though someone had written there in the meantime.",
	},
	["muse.w11.wonder.084"] = {
		"knocks twice on {g:his|her} own pack, quick and furtive, the way people do for luck.",
		"taps a knuckle three times against a buckle, then glances round as if hoping nobody saw.",
		"crosses two fingers behind {g:his|her} back, very discreetly, as if luck were watching.",
	},
	["muse.w11.wonder.085"] = {
		"lifts {g:his|her} eyes for a moment to nothing in particular, with the look of someone asking a question.",
		"raises {g:his|her} gaze briefly, as though checking whether someone up there were paying attention.",
	},
	["muse.w11.wonder.086"] = {
		"draws a small circle in the air with one finger, absently, then seems to notice and stops.",
		"traces some idle shape in the air with a fingertip, and lets it go unfinished.",
	},
	["muse.w11.wonder.087"] = {
		"goes still, as if someone had spoken {g:his|her} name from very far off, then shakes the feeling away.",
		"stops short and turns {g:his|her} head toward a sound that is no longer there.",
		"freezes for half a moment, listening to the quiet as though it had just said something.",
	},
	["muse.w11.wonder.088"] = {
		"rests the flat of one hand on the ground for a moment, as if checking that it is still there.",
		"crouches and presses a palm to the ground beneath {g:him|her}, head bowed, as though listening through it.",
	},
	["muse.w11.wonder.089"] = {
		"cups something tiny in both hands, peers at it closely, then opens them and lets it go.",
		"lifts some small crawling creature out of harm's way and sets it down with surprising care.",
	},
	["muse.w11.wonder.090"] = {
		"mouths a slow count to three, and on three, moves.",
		"nods once to {g:himself|herself}, the small private nod of a decision that will not be revisited.",
	},
	["muse.w11.wonder.091"] = {
		"frowns at {g:his|her} own shadow as though it had just done something it shouldn't.",
		"glances down at {g:his|her} shadow, then away, with the air of someone keeping an eye on a doubtful companion.",
	},
	["muse.w11.wonder.092"] = {
		"makes a small, wry bow to no one in particular, as if thanking luck for the last stretch.",
		"tips an imaginary hat to the world at large, for reasons {g:he|she} keeps to {g:himself|herself}.",
	},
	["muse.w12.coin.013"] = {
		"holds {g:his|her} purse up to one ear and shakes it gently, listening like a healer to a weak chest.",
		"gives {g:his|her} purse a little shake beside one ear, and the faint answer does not seem to reassure {g:him|her}.",
	},
	["muse.w12.coin.032"] = {
		"splits a handful of coins into two small heaps, what must be spent and what might be saved, and the second heap loses every argument.",
		"sorts {g:his|her} coins into one pile for needs and one for hopes, then quietly slides most of the hopes across.",
	},
	["muse.w12.coin.051"] = {
		"rubs a tarnished coin against {g:his|her} sleeve until a worn face shows through, and studies it as if trying to place it.",
		"polishes a dull coin on {g:his|her} cuff, squinting at whatever was once stamped there.",
	},
	["muse.w12.coin.052"] = {
		"reties the strings of {g:his|her} purse with a double knot, then a third, as if the coins inside had been plotting something.",
		"pulls the cord of {g:his|her} purse tighter than it needs and fastens it with a stubborn knot, plainly distrusting the contents.",
	},
	["muse.w12.coin.053"] = {
		"holds one small thing in each hand, weighing them against each other with the grave face of someone deciding which to sell.",
		"turns a trinket over, then another, plainly working out which of the two a merchant would pay more for, and which {g:he|she} would miss less.",
	},
	["muse.w12.coin.054"] = {
		"looks from a worn boot to {g:his|her} purse and back, as if the two were haggling and neither would give way.",
		"glances at a split seam, then at the purse at {g:his|her} belt, and seems to referee a quarrel between them.",
	},
	["muse.w12.coin.055"] = {
		"smooths out a crumpled scrap of paper with a sum written on it, reads it, and folds it away with a long face.",
		"unfolds a small note with a figure scrawled across it, sighs at the figure, and folds it smaller, as if that might shrink it.",
	},
	["muse.w12.coin.056"] = {
		"turns out a pocket, finds a lone copper caught in the seam, and greets it like an old acquaintance.",
		"digs a stray coin out of the corner of a pocket and looks at it with real affection, as though it had come back of its own accord.",
	},
	["muse.w12.coin.057"] = {
		"closes {g:his|her} fist around the last few coins and holds it a moment, the way one might hold a small bird.",
		"folds {g:his|her} fingers over a few remaining coins and keeps the hand still for a while, careful, as if they could fly off.",
	},
	["muse.w12.coin.058"] = {
		"draws a quick column of figures in the air with one finger, adds them up, and frowns at the total hanging there.",
		"writes a sum on nothing with a fingertip, carries the one, and glares at the invisible answer.",
	},
	["muse.w12.coin.059"] = {
		"puts {g:his|her} purse away with the firm, final gesture of someone who has just said no to something tempting.",
		"tucks the purse back at {g:his|her} belt with a decisive pat, the matter of some small luxury plainly closed.",
	},
	["muse.w12.coin.060"] = {
		"stares at a single coin in {g:his|her} palm for a long moment, as if the coin were the one deciding something.",
		"looks down at one coin resting in {g:his|her} open hand, very still, like someone waiting for it to give an opinion.",
	},
	["muse.w12.coin.061"] = {
		"glances about with lips moving, pricing everything in sight out of sheer habit, and arrives at a total {g:he|she} plainly dislikes.",
		"runs an appraising eye over everything nearby, as merchants do, and seems unimpressed by the sum.",
	},
	["muse.w12.coin.062"] = {
		"grins briefly at nothing, with the look of someone remembering a bargain that went very well.",
		"chuckles to {g:himself|herself}, quietly pleased, like someone who got a fair price and a little more.",
	},
	["muse.w12.craft.004"] = {
		"lays a few small tools out in a neat row, uses each in turn, and puts them back in the order they came out.",
		"sets out a modest kit of odds and ends, works through it piece by piece, and packs it away exactly as it was.",
	},
	["muse.w12.craft.010"] = {
		"works a stubborn knot loose with a fingernail, patient as someone with nowhere else to be.",
		"teases apart a knot pulled far too tight, strand by strand, without once losing {g:his|her} temper.",
	},
	["muse.w12.craft.015"] = {
		"tries to thread a needle, misses, squints, misses once more, and finally succeeds with an air of having meant it all along.",
		"jabs a thread at the eye of a needle several times, mutters something unkind, and gets it through on the next go.",
	},
	["muse.w12.craft.024"] = {
		"rubs a little grease into a stiff buckle until it moves without a sound.",
		"works a dab of grease into a squeaking clasp, testing it open and shut until it falls silent.",
	},
	["muse.w12.craft.032"] = {
		"tugs at each strap in turn, firmly, as though asking every one of them a question.",
		"runs a hand down the line of buckles, testing each with a short pull before moving on.",
	},
	["muse.w12.craft.040"] = {
		"holds a freshly mended strap up for inspection, turns it this way and that, and gives a small nod of approval.",
		"finishes a repair, gives it a hard tug, and looks quietly pleased when it holds.",
	},
	["muse.w12.craft.044"] = {
		"empties out a pouch, frowns at a tangle of string, wire and thread, and spends a long moment unpicking it.",
		"pulls a hopeless snarl of cord from a pocket and sets about untangling it with grim determination.",
	},
	["muse.w12.craft.051"] = {
		"turns a small worn tool over in {g:his|her} fingers, thumb resting in the hollow that other thumbs wore into it long ago.",
		"studies the smooth dip in the handle of an old tool, and fits {g:his|her} own thumb into it.",
	},
	["muse.w12.craft.058"] = {
		"bites off the end of a thread, ties it off, and sits for a moment looking at nothing in particular.",
		"finishes the last stitch, snaps the thread with {g:his|her} teeth, and lets the work rest across {g:his|her} knees.",
	},
	["muse.w12.craft.064"] = {
		"notices a fraying end on a strap and pinches it between finger and thumb, as if making a note to deal with it.",
		"spots a frayed edge on {g:his|her} gear, frowns, and tucks it out of sight for now.",
	},
	["muse.w12.craft.069"] = {
		"re-ties a loose lace with quick, practiced fingers, without even looking down.",
		"bends to fix a slipping lace and is upright before the knot has quite settled.",
	},
	["muse.w12.craft.075"] = {
		"repacks {g:his|her} bag with great care, steps back, and finds one small item still lying on the ground.",
		"fits the last thing into the pack with a satisfied pat, then notices something else that was supposed to go in first.",
	},
	["muse.w12.craft.080"] = {
		"smooths a patch flat with the palm of {g:his|her} hand, slowly, the way one might settle a sleeping animal.",
		"presses a fresh patch down with {g:his|her} palm and holds it there a moment longer than it needs.",
	},
	["muse.w12.craft.087"] = {
		"glares at a buckle that has just come undone, as if it had said something rude.",
		"looks down at a strap hanging loose and gives it the long, flat stare of an unimpressed sergeant.",
	},
	["muse.w12.doubt.013"] = {
		"takes a step, stops, and looks back the way {g:he|she} came as if something there had asked a question.",
		"half turns to go back, thinks better of it, and then thinks better of that.",
	},
	["muse.w12.doubt.019"] = {
		"lifts a hand as if to raise an objection to something, holds it there, and slowly lowers it.",
		"starts to say something, weighs it, and swallows it instead.",
	},
	["muse.w12.doubt.027"] = {
		"rubs the back of {g:his|her} neck with the sheepish air of someone conceding a point to nobody in particular.",
		"winces at some private thought, mutters 'fair enough' to no one, and lets it go.",
	},
	["muse.w12.doubt.039"] = {
		"sits very still, turning over something in {g:his|her} mind that will clearly not be settled quickly.",
		"frowns at the ground for a long moment, like someone rereading a verdict passed on {g:himself|herself}.",
	},
	["muse.w12.doubt.046"] = {
		"takes a few steps one way, stops, and turns around with the air of someone overruled by {g:himself|herself}.",
		"starts off in one direction, hesitates, and changes course with a small, resigned shake of the head.",
	},
	["muse.w12.doubt.054"] = {
		"gives a short, rueful laugh, as if {g:he|she} had just caught {g:himself|herself} in a small lie.",
		"shakes {g:his|her} head slowly at some private foolishness, half amused and half not.",
	},
	["muse.w12.doubt.063"] = {
		"chews at the inside of {g:his|her} cheek, plainly arguing both sides of something and winning neither.",
		"turns {g:his|her} hands palm up, then palm down, like a scale that will not settle.",
	},
	["muse.w12.doubt.073"] = {
		"goes back a few steps to set right some small thing left askew, then carries on with a lighter step.",
		"stops, retraces a pace or two to put something where it belongs, and only then moves on.",
	},
	["muse.w12.doubt.081"] = {
		"counts on {g:his|her} fingers, pros on one hand and cons on the other, and frowns at the result.",
		"holds up one hand, then the other, weighing two things that aren't there, and sighs at the tie.",
	},
	["muse.w12.doubt.089"] = {
		"raises a finger to make a point, thinks better of it halfway, and turns the gesture into scratching an ear.",
		"draws {g:himself|herself} up to argue, then deflates, conceding with a shrug to someone who isn't there.",
	},
	["muse.w12.doubt.094"] = {
		"picks up a pebble, weighs it in {g:his|her} palm as though it were a question, and sets it down exactly where it was.",
		"turns a pebble over in {g:his|her} fingers, as if one side said yes and the other no, and pockets it without deciding.",
	},
	["muse.w12.doubt.095"] = {
		"flinches at a thought that seems to have arrived uninvited, lets it stay a moment, and then sends it on its way.",
		"goes quiet with the uncomfortable patience of someone listening to {g:his|her} own conscience.",
	},
	["muse.w12.doubt.096"] = {
		"draws a line in the dirt with the toe of a boot, studies it, and steps over it with a shrug.",
		"scuffs a line on the ground with one boot, looks at it a long time, and finally crosses it.",
	},
	["muse.w12.doubt.097"] = {
		"unclenches {g:his|her} fists one finger after another, as if letting go of something that was never worth the grip.",
		"slowly opens {g:his|her} hands, the way one drops an argument nobody won.",
	},
	["muse.w12.humor.092"] = {
		"trips over nothing at all, turns to inspect the nothing, and walks on with great dignity.",
		"stumbles on perfectly flat ground and gives the spot a long, accusing look.",
	},
	["muse.w12.humor.093"] = {
		"swats at a fly, misses, and turns the movement into a stretch, as if that had been the plan.",
		"waves off some buzzing pest, then another, and finally concedes the field.",
	},
	["muse.w12.humor.094"] = {
		"unhooks a thorn from {g:his|her} sleeve, studies it, and flicks it away like a servant dismissed.",
		"picks a burr off one sleeve, finds it stuck to the other hand, and spends a while losing to it.",
	},
	["muse.w12.humor.095"] = {
		"tests the ground ahead with one toe, the way people test a bridge that has lied to them before.",
		"presses a boot cautiously onto the next patch of ground, as if it might not be there.",
	},
	["muse.w12.humor.096"] = {
		"bows gravely to the ground, then sits down on it with full ceremony.",
		"sits down with the slow solemnity of someone accepting a throne, though the throne is only bare ground.",
	},
	["muse.w12.humor.097"] = {
		"practices a stern, heroic expression, holds it a moment, and lets it collapse into a grin.",
		"tries on a noble frown, decides it doesn't fit, and puts it away.",
	},
	["muse.w12.humor.098"] = {
		"steps on something that squelches, freezes, and decides not to look down.",
		"feels something give wetly underfoot, and walks on with eyes fixed firmly ahead.",
	},
	["muse.w12.humor.099"] = {
		"jumps lightly over nothing at all, lands, and looks around to see whether anyone noticed.",
		"gives a small hop in mid-stride for no reason, and carries on pretending it never happened.",
	},
	["muse.w12.humor.100"] = {
		"salutes a passing beetle with complete seriousness.",
		"steps carefully around a small crawling thing, with the courtesy due to a fellow traveler.",
	},
	["muse.w12.humor.101"] = {
		"announces {g:his|her} own arrival with a small fanfare, hummed for nobody.",
		"hums a brief, pompous fanfare to {g:himself|herself}, then looks around as though expecting applause.",
	},
	["muse.w12.humor.102"] = {
		"leans casually against something, which shifts, and recovers with as much dignity as can be found at short notice.",
		"props an elbow on what turns out to be nothing, and turns the lurch into a thoughtful stroll.",
	},
	["muse.w12.humor.103"] = {
		"glares at a small stone underfoot as if it had been placed there on purpose, then steps over it with enormous dignity.",
		"regards a small obstacle in {g:his|her} way with deep suspicion, then goes the long way round it.",
	},
	["muse.w12.humor.104"] = {
		"mutters 'never again' to nobody, in the tone of someone who has said it often.",
		"shakes {g:his|her} head slowly and mouths the words 'never again', without much conviction.",
	},
	["muse.w12.hunger.004"] = {
		"peels an apple in one long unbroken curl, and looks faintly proud when it reaches the end.",
		"turns an apple slowly in {g:his|her} fingers, working the peel off in a single ribbon.",
		"takes great care over peeling a piece of fruit, as if the whole day depended on the peel staying in one piece.",
	},
	["muse.w12.hunger.026"] = {
		"brushes a scatter of crumbs off {g:his|her} front, finds more in a fold of {g:his|her} clothes, and gives up.",
		"shakes crumbs out of one sleeve, then the other, with the air of someone who has stopped asking how they got there.",
	},
	["muse.w12.hunger.040"] = {
		"scatters a few crumbs on the ground, an offering to whatever small creature might want them.",
		"drops the last crumbs of {g:his|her} meal for whatever small mouths might be watching.",
	},
	["muse.w12.hunger.062"] = {
		"finishes eating and licks {g:his|her} fingers clean, one by one, without the slightest shame.",
		"wipes {g:his|her} fingers on a sleeve after the last bite, glances around, and then licks them clean anyway.",
	},
	["muse.w12.hunger.077"] = {
		"tests a hot drink with the very tip of {g:his|her} tongue, winces, and sets it down to wait.",
		"sips something far too hot, puts it aside with a look of betrayal, and waits.",
	},
	["muse.w12.hunger.078"] = {
		"pulls the stopper from a waterskin, drinks, and closes it again with care, as if the water were precious.",
		"takes a long drink of water, then a second, smaller one, and puts the rest away for later.",
	},
	["muse.w12.hunger.079"] = {
		"shakes the waterskin beside {g:his|her} ear, listening to how much is left.",
		"tilts the waterskin, judges its weight, and decides to wait a little before drinking.",
	},
	["muse.w12.hunger.080"] = {
		"checks what's left to eat, divides it in {g:his|her} head into meals, and comes up one short.",
		"unwraps the last of the bread, looks at it for a while, and wraps it up again for a worse moment.",
	},
	["muse.w12.hunger.081"] = {
		"breaks a piece of cheese in two and studies the inside, as though it might hold a secret.",
		"cuts a sliver of cheese, tastes it slowly, and nods as if it had answered a question well.",
	},
	["muse.w12.hunger.082"] = {
		"eats slowly, eyes half closed, as if the plainest food deserved {g:his|her} full attention.",
		"chews each mouthful properly, unhurried, giving the meal the attention of a guest at a good table.",
	},
	["muse.w12.hunger.083"] = {
		"wipes the last of a meal from the bowl with a crust and leaves the wood shining.",
		"runs a crust of bread around the inside of the bowl until there's nothing left to argue about.",
	},
	["muse.w12.hunger.084"] = {
		"pops a berry into {g:his|her} mouth, makes a face at the sourness, and reaches for another.",
		"eats a handful of something small and sour, wincing at each one and stopping at none.",
	},
	["muse.w12.hunger.085"] = {
		"sniffs the air hopefully, as if supper might be somewhere close, and is disappointed.",
		"lifts {g:his|her} head and sniffs, the way hungry people do when they imagine they smell bread.",
	},
	["muse.w12.rest.010"] = {
		"stifles a yawn behind one fist, then a second, and gives up on dignity for the third.",
		"tries to hide a yawn, fails, and lets the next one out in full.",
	},
	["muse.w12.rest.011"] = {
		"blinks slowly, the long heavy blink of someone losing a quiet argument with sleep, then forces {g:his|her} eyes wide.",
		"lets {g:his|her} eyelids droop, catches them halfway, and hauls them up with visible effort.",
		"keeps {g:his|her} eyes open by sheer stubbornness, though they plainly have other plans.",
	},
	["muse.w12.rest.021"] = {
		"sits cross-legged, hands loose on {g:his|her} knees, and does absolutely nothing with great care.",
		"settles down on the ground and stays there, doing nothing at all, and doing it thoroughly.",
	},
	["muse.w12.rest.029"] = {
		"nods off for a moment where {g:he|she} sits, chin dipping, then jerks upright and looks around as if nothing happened.",
		"dozes off briefly, head sagging forward, and wakes with a start and a very innocent expression.",
	},
	["muse.w12.rest.037"] = {
		"lets {g:his|her} eyes close and listens to whatever is happening far away, as though it were being told for {g:his|her} benefit.",
		"shuts {g:his|her} eyes for a while and simply listens, face easing as the distant noises sort themselves out.",
	},
	["muse.w12.rest.045"] = {
		"stretches both arms high overhead until something pops, then lets them fall with a contented grunt.",
		"reaches up in a long, shameless stretch, holds it, and lets go all at once.",
		"stretches until every joint has had its say, and comes out of it looking two fingers taller.",
	},
	["muse.w12.rest.055"] = {
		"shifts {g:his|her} weight onto one leg and settles into the patient slouch of someone who expects to wait a while.",
		"props {g:himself|herself} against the nearest solid thing and waits, arms folded, in no particular hurry.",
		"leans on whatever is handy, crosses one ankle over the other, and gives every sign of being prepared to wait all day.",
	},
	["muse.w12.rest.063"] = {
		"lies down flat on {g:his|her} back, arms spread wide, and stays there as though the ground had asked for company.",
		"stretches out full length on the ground and lies perfectly still, eyes half closed, a picture of deliberate laziness.",
	},
	["muse.w12.rest.069"] = {
		"lays out three pebbles and plays some game against {g:himself|herself} with them, and seems to be losing.",
		"invents a small game with whatever lies within reach and plays it with complete seriousness until it stops being interesting.",
	},
	["muse.w12.rest.075"] = {
		"props {g:his|her} feet up on the nearest thing that will hold them and sighs like someone who has finally been understood.",
		"finds something to rest {g:his|her} feet on and puts them there with enormous satisfaction.",
	},
	["muse.w12.rest.084"] = {
		"leans back on {g:his|her} hands and watches the world go about its business, with no intention whatsoever of joining in.",
		"watches whatever moves nearby with the mild, unhurried interest of someone who has nowhere to be.",
	},
	["muse.w12.rest.089"] = {
		"settles into an attitude of profound idleness, then glances around as if daring anyone to object.",
		"makes {g:himself|herself} comfortable with the air of someone who intends to stay that way, whatever the world has planned.",
	},
	["muse.w12.sayings.106"] = {
		"murmurs half of a dwarven saying about stone and patience, loses the end of it, and shrugs.",
		"mutters a few words of some dwarven proverb, something about stone and waiting, and can't seem to recall how it ends.",
	},
	["muse.w12.sayings.107"] = {
		"repeats a goblin trader's saying quietly, counting on {g:his|her} fingers as if checking whether the arithmetic holds.",
		"says a goblin proverb half aloud, something about profit and patience, then frowns as though doing the sums.",
	},
	["muse.w12.sayings.108"] = {
		"nods slowly to {g:himself|herself}, turning over some tauren saying about the earth, and seems to find it heavier than expected.",
		"goes quiet over a half-remembered tauren proverb, lips moving on the words, and gives a small, slow nod.",
	},
	["muse.w12.sayings.109"] = {
		"snorts at some sailors' saying that has surfaced from nowhere, the sort that's only funny after a long voyage.",
		"laughs once, low, at a sailors' proverb come back from who knows where, and doesn't explain it to anyone.",
	},
	["muse.w12.sayings.110"] = {
		"mouths a troll saying about patience, very slowly, as if the slowness were part of it.",
		"repeats a troll proverb about waiting, unhurried, as though rushing it would spoil the point.",
	},
	["muse.w12.sayings.111"] = {
		"squares {g:his|her} shoulders at the memory of some orcish saying about honor, as if it had been addressed to {g:him|her} personally.",
		"straightens at an orc proverb about honor that seems to have come to mind, and looks faintly challenged by it.",
	},
	["muse.w12.sayings.112"] = {
		"recalls some kaldorei saying about how long a forest remembers, and moves on a little more carefully.",
		"seems to remember a kaldorei proverb about the long memory of trees, and goes on a touch more gently.",
	},
}, "base_exploration")
