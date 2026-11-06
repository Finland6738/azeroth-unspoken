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
}, "base_exploration")
