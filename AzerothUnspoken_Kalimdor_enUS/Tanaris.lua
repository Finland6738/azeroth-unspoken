-- English texts of the regional pack kalimdor_tanaris (content wave W03). The rules are in AzerothUnspoken_Kalimdor/Tanaris.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("tanaris", "enUS", "kalimdor_tanaris", [==[
	["tan.a.attack.01"] = {
		"Here's some heat of my own!",
		"Eat sand!",
	},
	["tan.a.attack.02"] = {
		"A gift from the north!",
		"No charge for this one. Don't tell the goblins.",
	},
	["tan.a.battle.01"] = {
		"Come on, then. The sand's hot enough without you.",
		"Out here it's just the dunes, you, and me. Let's be quick about it.",
		"I've walked too far through this heat to back down now.",
	},
	["tan.a.battle.02"] = {
		"Feet wide. Sand gives way; don't let it take me with it.",
		"Bad footing, worse heat. Keep the fight short and keep breathing.",
		"Sweat in my eyes already. Make every swing count.",
	},
	["tan.a.battle.03"] = {
		"sets {g:his|her} feet in the shifting sand and raises {g:his|her} weapon, a plume of dust rising with the first step.",
		"meets the rush with sand spraying from every footfall, the heat shimmering around them both.",
		"plants a heel, finds the sand too soft, plants it again, and turns to face the attack.",
	},
	["tan.a.battle.04"] = {
		"Wastewander! Whose water are you carrying this time?",
		"Stealing from a desert town's water? Put up your blade, bandit.",
	},
	["tan.a.battle.05"] = {
		"An ogre in the desert. Doesn't the heat bother you? It's about to get worse.",
		"Dunemaul, is it? Big, slow and half baked. I know the feeling.",
	},
	["tan.a.battle.06"] = {
		"Watch the tail, not the claws. The tail is the part that ends things.",
		"Scorpid. Keep its sting in sight and its pincers busy.",
	},
	["tan.a.journey.01"] = {
		"rises over the walls of Gadgetzan on gryphon wings, the dunes spreading out below like a creased golden sheet.",
		"climbs into the hot sky above the town, the goblin rooftops shrinking to a scatter of tin and smoke.",
	},
	["tan.a.journey.02"] = {
		"Down in Gadgetzan. The heat hits like an open oven door the moment the gryphon lands.",
		"Off the gryphon. Goblins, dust and the clank of the water pumps. Gadgetzan, then.",
	},
	["tan.a.landmark.01"] = {
		"{landmark}. Goblin walls, goblin prices, and a peace the bruisers enforce with clubs. Best town in the desert.",
		"Gadgetzan: the only place for miles with shade, water and an auction house, and all of it for sale.",
		"Walls of patched sheet metal and a water tower everybody keeps one eye on. Gadgetzan holds the desert at arm's length.",
	},
	["tan.a.lowhp.01"] = {
		"Not here. The sand would have me covered with the next wind.",
		"Too far from water to bleed this much. Up.",
	},
	["tan.a.lowhp.02"] = {
		"I didn't cross half a desert to fall in it!",
		"Still standing. The dunes can wait for me a while longer.",
	},
	["tan.a.lowhp.03"] = {
		"staggers, sand sliding under one knee, and drags {g:himself|herself} upright through the heat.",
		"sways in the shimmering air, then sets {g:his|her} jaw and refuses to go down.",
	},
	["tan.a.muse.01"] = {
		"Dunes to the edge of sight, each one shaped like the last and none of them where it was yesterday.",
		"The wind rebuilds the desert every hour. Footprints, tracks, whole paths: it files them all away.",
		"Nothing in Tanaris stays put but the heat. The dunes walk, slowly, and the trails walk with them.",
	},
	["tan.a.muse.02"] = {
		"First thing I check whenever I stop: the waterskin. Second thing: the waterskin again.",
		"Out here a full waterskin is worth more than a full purse. The goblins worked that out before anyone.",
	},
	["tan.a.muse.03"] = {
		"Gadgetzan sells water by the cup. Somewhere a goblin is working out how to charge for shade.",
		"Water costs money here. I'm still waiting for the bill for the air.",
		"A goblin offered me a drink of water and a payment plan in the same breath.",
	},
	["tan.a.muse.04"] = {
		"Orcs and dwarves queue at the same goblin counter in Gadgetzan, and nobody so much as touches a hilt. The bruisers see to that.",
		"Gadgetzan's peace isn't friendship. It's a row of very large goblins with very large clubs, and it works.",
		"In Gadgetzan the Horde and I nod at each other like neighbors who can't stand each other. The bruisers like it that way.",
	},
	["tan.a.muse.05"] = {
		"shades {g:his|her} eyes and studies the dunes, where the heat makes the far crests waver like water.",
		"stops on a ridge of sand and lets the hot wind tug at {g:his|her} clothes, the desert empty in every direction.",
	},
	["tan.a.muse.06"] = {
		"Off to the west the Sandfury keep their city behind walls of baked stone. The goblins won't even sell maps to it.",
		"Zul'Farrak sits in the sand like a closed fist. The trolls in there have no use for visitors, except on an altar.",
	},
	["tan.a.muse.07"] = {
		"The south of this desert belongs to the silithid. Their hives go down into the sand, and nobody knows how deep.",
		"The goblins don't send caravans south past a certain dune. Bugs the size of ponies will teach you that sort of rule quickly.",
	},
	["tan.a.muse.08"] = {
		"Theramore's a long flight north. Stormwind might as well be on the moon.",
		"Nearest Alliance banner is a gryphon ride away. Out here it's every traveler and their canteen.",
	},
	["tan.a.muse.09"] = {
		"East of the dunes the desert simply stops and the sea begins. A strange seam in the world, sand on one hand, green water on the other.",
		"The coast here is the same color as the dunes until the waves reach it. Then it darkens, and the smell of salt wins over the smell of dust.",
	},
	["tan.a.muse.10"] = {
		"Every breath is hot, every step sinks. The desert takes a toll from the legs that no road ever asked for.",
		"My boots fill with sand, I empty them, they fill again. That is the whole of the desert's conversation.",
		"Walking on dunes is walking on something that would rather you didn't. Two steps up, one sliding back.",
	},
	["tan.a.muse.11"] = {
		"The Wastewander rob water in a land where water is the difference between walking and lying down. Out here that's worse than robbing gold.",
		"Bandits who steal coin, I understand. Bandits who steal water from a desert town are something meaner.",
	},
	["tan.a.muse.12"] = {
		"Half of Gadgetzan is held together with rivets and optimism. The other half is on fire, a little.",
		"Every goblin machine in this town either pumps water or explodes. Some of them do both, I'm told.",
	},
	["tan.a.muse.13"] = {
		"The goblin prospectors talk about old carvings in the south, a gate nobody has opened. They also talk about gold under every dune.",
		"There's a rumor in Gadgetzan of a great sealed door somewhere past the dunes. Rumors here come cheap; water doesn't.",
	},
	["tan.a.muse.14"] = {
		"squints toward the dunes, where something with too many legs leaves a quick track across a crest and is gone.",
		"kicks the sand from one boot and keeps an eye on the low ground, where scorpids like to wait in the shade of the ridges.",
	},
	["tan.a.muse.15"] = {
		"If I ever see a beach again, I'm walking straight past it.",
		"Sand in my boots, my teeth, my pack. I'm carrying half of Tanaris around with me.",
		"No more dunes after this. Grass. I want grass.",
	},
	["tan.a.npc_meet.01"] = {
		"A goblin bruiser with a club bigger than its owner. Nobody starts trouble within sight of one of those.",
		"The bruiser looks me over once, decides I'm not worth the paperwork, and goes back to glaring at the road.",
	},
	["tan.a.npc_meet.02"] = {
		"Something cold, if you've got it. Something wet, if you haven't.",
		"A room out of the heat and a jug of water. I'll pay goblin prices, I suppose.",
	},
	["tan.a.npc_meet.03"] = {
		"A gryphon this far south. It looks as hot and patient as I feel.",
		"Wings, and cooler air above the dunes. That alone is worth the fare.",
	},
	["tan.a.quest_complete.01"] = {
		"Done, and paid. Out here, the reward always comes with a little sand in it.",
		"Job finished. I count the coin twice, shake the sand out of the purse, and count it again.",
	},
	["tan.a.quest_complete.02"] = {
		"Done. If there's a cold drink in this desert, I've earned it.",
		"Finished. Next time, somebody else crosses the dunes.",
		"That's that. Somebody else can cheer; I'm saving my breath for the heat.",
	},
	["tan.a.quest_complete.03"] = {
		"A small thing, done well, in a hard place. Tanaris has few enough of those.",
		"It won't make the desert any kinder. But somebody out here will have an easier day of it.",
		"Settled. The heat hasn't changed, but the day has, a little.",
	},
	["tan.a.quest_complete.04"] = {
		"tucks the reward away and glances back at the dunes, already measuring the next long walk.",
		"accepts the reward with a dusty hand and a tired nod.",
	},
	["tan.a.quest_complete.05"] = {
		"Every errand here teaches the same lesson: carry more water than you think, and trust the map less.",
		"One more thing learned about this desert. Mostly that it doesn't care what I've learned.",
	},
	["tan.a.quest_progress.01"] = {
		"That's everything. Now the long walk back across the sand.",
		"Done here. Drink, check the bearings, and head off before the water runs low.",
		"All of it, at last. The dunes look the same in every direction, so I'll trust the map for the way back.",
	},
	["tan.a.subzone_enter.01"] = {
		"crests another dune and finds the land beyond looking much like the land behind, only hotter.",
		"comes over a rise of sand into a new stretch of desert, ridges of dune marching off toward the haze.",
		"trudges down a slope of loose sand into country the map can name and the eye can barely tell apart.",
	},
	["tan.a.subzone_enter.02"] = {
		"Pirates. In a desert. On a beach. Of course there are.",
		"Lost Rigger Cove. Smells of tar, rum and bad intentions.",
	},
	["tan.a.victory.01"] = {
		"Done. The wind is already smoothing the sand where we fought.",
		"Quiet again. In an hour the dunes will have forgotten all about it.",
		"Over. The desert will bury the marks of it before I've caught my breath.",
	},
	["tan.a.victory.02"] = {
		"That's settled. Now, does anyone have any water?",
		"Down you go. I'd offer you a drink, but water's too dear around here.",
		"There. That's the most excitement these dunes have seen all week.",
	},
	["tan.a.victory.03"] = {
		"Breathe. Drink. Not too much. Then on again.",
		"That took more out of me than it should have. It's the heat, mostly. Mostly.",
		"Won. Now a sip of water and a moment in whatever shade I can find.",
	},
	["tan.a.victory.04"] = {
		"One less bandit between Gadgetzan and its water.",
		"That's for every caravan your lot ever robbed.",
	},
	["tan.a.victory.05"] = {
		"lowers {g:his|her} weapon and shakes the sand out of {g:his|her} sleeves, squinting across the empty dunes.",
		"straightens, breathing hard in the dry heat, and wipes a gritty forearm across {g:his|her} brow.",
	},
	["tan.a.weather_change.01"] = {
		"ties a scarf across {g:his|her} face as the wind rises and the dunes begin to smoke with blowing sand.",
		"turns a shoulder to the storm as the horizon vanishes behind a wall of tan grit.",
	},
	["tan.h.attack.01"] = {
		"Feel that? That's the Horde!",
		"Down into the dust with you!",
	},
	["tan.h.attack.02"] = {
		"Special delivery from the Horde!",
		"Hot enough for you?",
	},
	["tan.h.battle.01"] = {
		"For the Horde! Even out here, in the middle of nowhere!",
		"Lok'tar! Let's see how you fight in this heat!",
		"Come on! I've crossed worse ground than this to get to a fight.",
	},
	["tan.h.battle.02"] = {
		"Short fight. Long fights in this heat end with both of us on the ground.",
		"Keep the weight low. Soft sand punishes anyone who leans too far.",
		"Breathe through the nose. Save the water for after.",
	},
	["tan.h.battle.03"] = {
		"drops into a crouch on the shifting dune, sand hissing away from {g:his|her} boots as the foe closes in.",
		"squares up in the dry heat, weapon ready, grit already streaking {g:his|her} face.",
	},
	["tan.h.battle.04"] = {
		"Sandfury! Your gods can't help you out here.",
		"Go back to your walls, troll, or stay in the sand for good.",
		"Your city hides behind walls. You don't.",
	},
	["tan.h.battle.05"] = {
		"Bugs. Big ones. Fine, I brought a big weapon.",
		"Crawl back under the sand, insect!",
	},
	["tan.h.battle.06"] = {
		"Basilisk. Don't hold its stare. Watch the feet instead.",
		"Hide like cracked glass, eyes like a bad omen. Hit it before it gets a long look at me.",
	},
	["tan.h.journey.01"] = {
		"lifts off from Gadgetzan on a wind rider, the town's walls and water tower shrinking into the dunes.",
		"rises into the hot air on leathery wings, Tanaris unrolling below in endless ridges of sand toward the sea.",
	},
	["tan.h.journey.02"] = {
		"Off the wind rider and into the oven. Gadgetzan, the hottest welcome in Kalimdor.",
		"On the ground again. Goblins, sand and a heat that settles on my shoulders like a heavy pack.",
	},
	["tan.h.landmark.01"] = {
		"walks into {landmark}, where goblin dockhands haul crates along the pier and the bruisers keep an eye on the dunes for bandits.",
		"comes in among the docks and warehouses of the port, the smell of tar and salt pushing back the smell of dust.",
		"reaches the goblin harbor on the edge of the desert, cargo stacked high by the water and the green sea stretching away past the warehouses.",
	},
	["tan.h.lowhp.01"] = {
		"Not in this sand. Nobody would ever find the bones.",
		"The heat is closing in at the edges. Stay up. Stay up.",
	},
	["tan.h.lowhp.02"] = {
		"Is that all? The desert hits harder than you!",
		"Still breathing! You'll have to do better than that!",
	},
	["tan.h.lowhp.03"] = {
		"sinks to one knee in the burning sand, and with a growl hauls {g:himself|herself} up again.",
		"wavers, blinking sweat and grit from {g:his|her} eyes, and somehow keeps {g:his|her} guard raised.",
	},
	["tan.h.muse.01"] = {
		"The dunes run like a slow sea, wave after golden wave, and not one of them will ever break.",
		"From the top of a dune Tanaris looks like a hide left out to dry, a thousand folds and no seam.",
		"Ridges of sand cross the land like the ribs of something huge and buried. Best not to think about that.",
	},
	["tan.h.muse.02"] = {
		"And I thought Durotar was dry. Durotar has a coast and the decency to offer rocks to sit on.",
		"Durotar's red dust, I can live with. This stuff gets into places dust never dreamed of.",
	},
	["tan.h.muse.03"] = {
		"Water is the coin of this desert. The goblins just found a way to charge for it twice.",
		"Count the water, then count the steps to the next drink. Out here that's the only arithmetic that matters.",
		"A mouthful now, a mouthful later. Never the whole skin at once, however the throat begs.",
	},
	["tan.h.muse.04"] = {
		"There are Alliance in Gadgetzan, haggling at the same stalls we do. The bruisers make sure that's all anyone does.",
		"In the goblin town a dwarf can stand beside me at the water barrel and neither of us reaches for steel. Peace, goblin style.",
	},
	["tan.h.muse.05"] = {
		"scoops up a handful of sand and lets it run through {g:his|her} fingers, the hot wind carrying it off before it lands.",
		"pauses to empty a boot of sand, considers the other boot, and decides it isn't worth the trouble.",
	},
	["tan.h.muse.06"] = {
		"Not every troll answers to Vol'jin. The Sandfury of Zul'Farrak answer to their own gods, and those are hungry ones.",
		"Zul'Farrak stands out there in the sand, walled and old and full of trolls who want no part of the Horde.",
	},
	["tan.h.muse.07"] = {
		"The silithid hold the far south of the desert. Even the goblins won't send a caravan there, and goblins have a price for everything.",
		"Insects that dig hives in the sand and walk on too many legs. Whatever waits down south, I'd rather meet it rested and armed.",
	},
	["tan.h.muse.08"] = {
		"Long way from Orgrimmar. Longer still from anything green.",
		"Freewind Post is a long way north. Ahead there's sand, more sand, and a goblin selling sand.",
	},
	["tan.h.muse.09"] = {
		"The sea runs right up to the dunes on the east side, warm and green. All that water and not a drop of it fit to drink.",
		"Surf to my left, dunes to my right, and me trudging the line between them with a dry throat.",
	},
	["tan.h.muse.10"] = {
		"The heat doesn't hit you. It leans on you, hour after hour, until your shoulders forget how standing straight felt.",
		"Sweat dries before it can run. The desert drinks from me while I walk.",
		"Every dune is a small mountain made of something that refuses to hold still under the feet.",
	},
	["tan.h.muse.11"] = {
		"The Wastewander prey on anyone who crosses the sand with a full waterskin. Which is anyone with sense.",
		"Bandits in the dunes, lurking by the springs and the ruins. In this heat, a thief who takes your water takes the rest of you with it.",
	},
	["tan.h.muse.12"] = {
		"Goblins built a town in the middle of a desert and then started selling the desert to visitors. I almost admire it.",
		"Steamwheedle Cartel: if it can be weighed, bottled or blown up, they've got a price for it.",
		"In Gadgetzan even the shade has a goblin standing in it, waiting for a tip.",
	},
	["tan.h.muse.13"] = {
		"Travelers at the inn swear there are stone giants watching over a valley in the south, older than the trolls. Nobody I've met has gone to check.",
		"Talk in Gadgetzan turns, sooner or later, to some sealed door in the far south. It's always a cousin of a friend who saw it.",
	},
	["tan.h.muse.14"] = {
		"watches a dust devil spin up off the dunes, wander a short way, and fall apart as if it had forgotten why it started.",
		"studies the far ridges, where the heat bends the air into slow, wavering ribbons.",
	},
	["tan.h.muse.15"] = {
		"If anyone asks, I hate sand. Write it down.",
		"Next job I take, I'm asking first whether there's shade.",
		"Whoever called this place a desert was being polite.",
	},
	["tan.h.npc_meet.01"] = {
		"nods to the goblin bruiser, who answers with a slow nod, club resting on one shoulder.",
		"passes the bruiser under a long, unimpressed stare that says the peace of this town is not optional.",
	},
	["tan.h.npc_meet.02"] = {
		"What's the price of water today, and how much of it is sand?",
		"Show me something that keeps the heat off. I'm not paying for anything that melts.",
	},
	["tan.h.npc_meet.03"] = {
		"A wind rider in the desert, wings half spread in the heat. Somewhere north there's green, and it can take me there.",
		"The wind rider shifts on its claws, eager for open sky. So am I.",
	},
	["tan.h.quest_complete.01"] = {
		"Done. The coin gets counted out slowly here, as if each piece hurt to part with.",
		"Another task off the list. The desert gave me nothing; the reward will have to do.",
		"Paid. It isn't much, but out here a little coin buys a lot of water.",
	},
	["tan.h.quest_complete.02"] = {
		"Finished. If that doesn't earn me a drink of water, nothing will.",
		"Done. Next time, send someone who likes sand.",
		"There. Now point me to the nearest shade.",
	},
	["tan.h.quest_complete.03"] = {
		"Little enough, in a land this big. Still, somebody out here will breathe easier for it.",
		"The desert won't notice. The people living on its edge might.",
	},
	["tan.h.quest_complete.04"] = {
		"pockets the reward, shakes the dust from {g:his|her} shoulders, and turns to look at the next stretch of sand.",
		"nods once at the payment, already squinting out toward the dunes.",
	},
	["tan.h.quest_complete.05"] = {
		"Each errand in Tanaris leaves me knowing the dunes a little better. They answer by never looking the same twice.",
		"Learned something again: in the desert, everything takes twice as long and three times the water.",
	},
	["tan.h.quest_progress.01"] = {
		"Finished out here. Now to cross the sand again without cooking.",
		"That's the last of it. Drink, find my bearings, and off to whoever's waiting.",
		"The job's done here. The dunes can keep my sweat as a souvenir.",
	},
	["tan.h.subzone_enter.01"] = {
		"Another part of the desert, another name on the map. The sand didn't get the message.",
		"Another name, says the map. The land looks exactly like the last stretch, only with fresh tracks in it.",
	},
	["tan.h.subzone_enter.02"] = {
		"edges into the Noxious Lair, where the sand gives way to tunnels and a dry clicking rises from below.",
		"steps among the silithid mounds, the air thick with a sour, waxy smell and the ground pitted with holes.",
		"slows at the edge of the hive, every sense pricked by the faint scrape of chitin somewhere out of sight.",
	},
	["tan.h.victory.01"] = {
		"Finished. The dunes take the bodies, the tracks, the noise. Soon there will be nothing left but me and the heat.",
		"Silence once more. Just wind across the sand and my own breathing.",
		"Over. Nobody saw it out here, and the sand won't remember.",
	},
	["tan.h.victory.02"] = {
		"Should've stayed in the shade, friend.",
		"And that's why you don't pick fights in this heat.",
		"The desert doesn't forgive the slow. Neither do I.",
	},
	["tan.h.victory.03"] = {
		"Won, and parched. Every fight here costs a mouthful of water.",
		"That's done. My tongue feels like leather. Drink first, think later.",
		"Throat full of dust, arms like lead. A good win, all the same.",
	},
	["tan.h.victory.04"] = {
		"Big ogre, small brain, long fall. The usual.",
		"Down you go, Dunemaul. The dune can keep you.",
	},
	["tan.h.victory.05"] = {
		"kicks sand over the scuffed ground and turns toward the open dunes, breathing hard.",
		"takes a careful sip from {g:his|her} waterskin, eyes still on the horizon, before moving on.",
	},
	["tan.h.weather_change.01"] = {
		"squints into the rising wind as the dunes begin to blow, sand stinging every bit of bare skin.",
		"drops {g:his|her} head and leans into the gusts, the world shrinking to a few paces of whirling tan.",
	},
]==])
