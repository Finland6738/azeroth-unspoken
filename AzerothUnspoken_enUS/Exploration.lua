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
}, "base_exploration")
