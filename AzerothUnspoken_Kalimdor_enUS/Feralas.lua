-- English texts of the regional pack kalimdor_feralas (content wave W03). The rules are in AzerothUnspoken_Kalimdor/Feralas.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("feralas", "enUS", "kalimdor_feralas", [==[
	["fer.a.attack.01"] = {
		"This one's from Feathermoon!",
		"Take that back to your corner of the forest!",
	},
	["fer.a.attack.02"] = {
		"Fresh from the forest floor!",
		"Here's something the ferns can't hide you from.",
	},
	["fer.a.battle.01"] = {
		"Come on, then. These trees have seen worse than you.",
		"Feralas is big enough for both of us. Not for long.",
		"For Feathermoon! Let's make this quick.",
	},
	["fer.a.battle.02"] = {
		"sets {g:his|her} feet among the ferns as the foe comes crashing out of the green.",
		"shifts {g:his|her} weight on the soft forest floor, leaves sliding underfoot, and raises {g:his|her} guard.",
	},
	["fer.a.battle.03"] = {
		"Too many trees, too many places for a second one to be waiting. Watch the edges.",
		"Something moved in the ferns behind me too. Or I imagined it. This one first, then look.",
		"Close quarters among the trunks. Mind the footing, mind the tree at my back.",
	},
	["fer.a.battle.gordunni.01"] = {
		"Gordunni! Big, loud, and about to be a lot quieter.",
		"Ogre, you picked the wrong trail.",
		"Another Gordunni. Do they breed them in the ruins?",
	},
	["fer.a.battle.woodpaw.01"] = {
		"A Woodpaw. Go back to your hills and your fleas.",
		"Gnoll, you smell like a wet dog that lost an argument.",
	},
	["fer.a.battle.yeti.01"] = {
		"A yeti, all fur and fists. Keep moving, and don't let it get both arms around me.",
		"Big, hairy, angry. Stay out of reach and let it tire first.",
	},
	["fer.a.journey.arrival.01"] = {
		"Down among the great trees. The hippogryph shakes itself off, and the smell of moss and old leaves comes up to meet me.",
		"Feet on soft ground. Feralas looks just as big from down here, only closer.",
	},
	["fer.a.journey.start.01"] = {
		"rises on hippogryph wings above the giant trees, the canopy rolling away below like a green sea.",
		"is lifted clear of the forest, the treetops shrinking beneath the beat of feathered wings.",
	},
	["fer.a.landmark.feathermoon.01"] = {
		"crosses into Feathermoon Stronghold, where pale walls rise over the island and Sentinels watch the mainland from the ramparts.",
		"walks the stone ways of {landmark}, the sea on every side and the dark line of the Forgotten Coast across the water.",
		"comes up from the landing into the stronghold, hippogryphs shifting on their perches and salt in the air.",
	},
	["fer.a.lowhp.01"] = {
		"Not here. Not under these trees, where nobody would find me for a hundred years.",
		"On my feet. Feathermoon is a long boat ride away, and I'm not making it dead.",
		"Still breathing. Feralas will have to wait for me.",
	},
	["fer.a.lowhp.02"] = {
		"The green is swimming in front of my eyes. Blink. Breathe. Keep standing.",
		"Soft ground here. Too soft. Don't lie down on it.",
		"The roots would take me in a season. Not yet. Not today.",
	},
	["fer.a.muse.01"] = {
		"Trees as wide as a house at the root, and still growing. Feralas was old long before anyone planted Teldrassil.",
		"I've stopped craning my neck at the treetops. It doesn't help; there's always more tree.",
		"The trunks end in leaves somewhere up there. From down here I have to take it on trust.",
	},
	["fer.a.muse.02"] = {
		"Dire Maul stands in the heart of the forest, half city and half rubble. The elves who raised it would not know what to make of the ogres in their halls.",
		"Eldre'Thalas, the old name was. Now it's Dire Maul, and the new name suits whoever moved in.",
	},
	["fer.a.muse.03"] = {
		"Home behind walls on an island, with a boat ride first. The Sentinels don't care for surprise visitors.",
		"Feathermoon is a fine stronghold. Getting there means waiting on the boat, which is less fine.",
	},
	["fer.a.muse.04"] = {
		"Every fern here is big enough to hide something with teeth. Most of them probably do.",
		"Gnolls in the hills, ogres on the trails, yetis in the caves. Feralas has no shortage of neighbors, and few good ones.",
		"I walk softly here, and not out of reverence. The forest listens, and so does whatever lives in it.",
	},
	["fer.a.muse.05"] = {
		"Old elven stone everywhere, cracked and green. Whoever lived here built for ten thousand years and got a fair share of them.",
		"A carved column lies across the path like a fallen tree. The moss has owned it longer than the masons ever did.",
	},
	["fer.a.muse.06"] = {
		"The Gordunni think this forest is theirs because they're the biggest thing in it. Feathermoon has another opinion.",
		"Ogres with clubs, and ogres who mutter spells. I can't decide which bothers me more.",
	},
	["fer.a.muse.07"] = {
		"Green moss, green stone, green underfoot. After a while the eyes stop asking for any other color.",
		"So much green that the first gray rock I see feels like news.",
		"Even the rocks here wear a coat of green. I didn't know a forest could be this thorough.",
	},
	["fer.a.muse.08"] = {
		"tips {g:his|her} head back to follow a trunk up and up, until the branches close over it far overhead.",
		"lays a palm against the bark of one of the giant trees, a trunk wider than a cart is long.",
		"steps over a root as thick as a fallen wall, the forest floor soft and deep with old leaves.",
	},
	["fer.a.muse.09"] = {
		"Naga on the coast, ogres inland, and Feathermoon keeping watch from its island between the two. Someone has to.",
		"The Sentinels hold their island the way they hold everything: quietly, and without giving an inch.",
	},
	["fer.a.muse.10"] = {
		"Yetis in a forest. Nobody told them they were meant to be up a mountain somewhere cold.",
		"Somebody ought to explain to the yetis here that they've wandered a long way from any snow.",
	},
	["fer.a.muse.11"] = {
		"In the northwest the Twin Colossals rise out of the forest, two great columns of rock. Some things are too big to need a story.",
		"Those two stone giants in the northwest make the trees look small, and nothing else here manages that.",
	},
	["fer.a.muse.12"] = {
		"However far I go into the trees, I know which way the coast is. Feathermoon is out there, and the boat runs.",
		"One good thing about an island fortress: whatever chases me through the forest has to stop at the water.",
	},
	["fer.a.muse.13"] = {
		"Moss on the stones, moss on the logs, and soon enough, I suspect, moss on me.",
		"Stand still long enough in Feralas and something will start growing on you.",
	},
	["fer.a.muse.14"] = {
		"The elves left Feralas to the forest long ago. The forest took it gladly and gave nothing back.",
		"Every ruin here was somebody's home once. Now the roots hold the walls up, or pull them down, depending on the day.",
	},
	["fer.a.muse.15"] = {
		"Wild hippogryphs up in the Frayfeather Highlands. Same wings as the ones we ride, none of the manners.",
		"The hippogryphs of the highlands have never carried a rider and don't intend to start.",
		"Up in Frayfeather the hippogryphs nest wild. Lovely from a distance; up close, mostly beak.",
	},
	["fer.a.npc_meet.flightmaster.01"] = {
		"The hippogryph master runs a hand down a feathered neck and asks where to. Anywhere with open sky, I nearly say.",
		"Hippogryphs waiting on the perch, preening. After the canopy, the thought of open air is very tempting.",
	},
	["fer.a.npc_meet.guard.01"] = {
		"A Sentinel at the post, still as the trees, eyes never leaving the forest.",
		"The guard looks me over once, slowly, and goes back to watching the treeline. The Sentinels don't chatter.",
	},
	["fer.a.npc_meet.innkeeper.01"] = {
		"A dry corner and something hot, if you have it. The forest out there is all moss and teeth.",
		"A bed, please, as far from the ferns as you can manage.",
	},
	["fer.a.quest_complete.01"] = {
		"Done. One more knot untied in a very large, very tangled forest.",
		"That job's finished. Feralas hardly looks different, but somebody will sleep better for it.",
		"Handed in. The forest is too big to fix, but this corner of it is a little better.",
	},
	["fer.a.quest_complete.02"] = {
		"Done. If anyone needs me, I'll be emptying the moss out of my boots.",
		"That's settled. Next time, someone else can crawl through the ferns.",
		"Finished. I'd say it was easy, but the forest would know I was lying.",
	},
	["fer.a.quest_complete.03"] = {
		"The Alliance holds Feralas a little more firmly now. Small work, but it adds up.",
		"Every task done out here pushes the edge of the wild back a step. Only a step, but a step.",
		"Out here, so far from any city, every finished job counts for something.",
	},
	["fer.a.quest_complete.04"] = {
		"glances back at the wall of trees, the job done, already counting the miles to the next one.",
		"nods once, the business finished, the green of Feralas pressing close all around.",
		"lets out a long breath and shakes the last of the forest's leaves from {g:his|her} shoulders.",
	},
	["fer.a.quest_progress.01"] = {
		"That's all of it. Now back through the ferns without finding anything else that wants a fight.",
		"Done here. Back the way I came, and keep to the trail.",
		"Finished. The hard part now is finding my way out of all this green.",
	},
	["fer.a.subzone_enter.01"] = {
		"Another stretch of Feralas, and the trees only get bigger. I'm starting to think they do it on purpose.",
		"A different corner of the forest. Same moss, other ruins, and something else watching from the ferns.",
		"The path bends and the forest opens a little: a clearing, a broken wall, a stream in no hurry.",
	},
	["fer.a.subzone_enter.twin.01"] = {
		"comes out beneath the Twin Colossals, two immense spires of rock that make even the forest giants look young.",
		"stops at the foot of the twin stone towers, so tall that the birds circling them look like specks of dust.",
	},
	["fer.a.victory.01"] = {
		"Quiet returns. The ferns close over the spot as if nothing had happened.",
		"Done. The forest swallows the noise and goes back to its own small sounds.",
		"Finished. Far above, a bird starts up again. Feralas has already moved on.",
	},
	["fer.a.victory.02"] = {
		"Whatever was lurking in those ferns, it won't be lurking anymore.",
		"Feralas gives, Feralas takes. That one, it took.",
	},
	["fer.a.victory.03"] = {
		"lowers {g:his|her} weapon among the great trunks, breathing hard, while the forest settles around {g:him|her}.",
		"steps back from the fight and leans a moment against the bark of a giant tree.",
		"wipes {g:his|her} hands on the ferns and looks up at the canopy, which never noticed a thing.",
	},
	["fer.a.victory.04"] = {
		"That'll do. Catch my breath, check the trees, keep walking.",
		"Over. My arms ache and the path is still long. Nothing in Feralas comes small.",
	},
	["fer.a.victory.gordunni.01"] = {
		"One less Gordunni on the trails. Feathermoon will be glad to hear it.",
		"Ogres fall like trees here. Loud, and all at once.",
		"Down you go, ogre. The forest can have you back.",
	},
	["fer.a.weather_change.rain.01"] = {
		"turns {g:his|her} face up as the rain finds its way down through the canopy, the whole forest beginning to drip and murmur.",
		"pulls {g:his|her} collar tight as rain patters on the giant leaves overhead and runs in streams down the bark.",
	},
	["fer.h.attack.01"] = {
		"From Camp Mojache, with feeling!",
		"Back to the ferns with you!",
	},
	["fer.h.attack.02"] = {
		"Courtesy of the Horde. No need to thank me.",
		"Mind the trees. And this.",
	},
	["fer.h.battle.01"] = {
		"For Mojache! Come on, then.",
		"Plenty of room among these trees. Plenty of room to fall.",
		"The Horde stands in Feralas too. You're about to learn how.",
	},
	["fer.h.battle.02"] = {
		"plants {g:his|her} feet between two great roots and turns to face the attack.",
		"ducks beneath a drooping fern and comes up with weapon ready.",
	},
	["fer.h.battle.gordunni.01"] = {
		"Gordunni! Mojache has been waiting for this.",
		"Big ogre, small brain. Let's see which one gives out first.",
		"You've been sniffing around our camp too long, ogre.",
	},
	["fer.h.battle.grimtotem.01"] = {
		"Grimtotem. You turned your back on your own people. Now turn and face me.",
		"Cairne offered peace. You chose this.",
	},
	["fer.h.battle.woodpaw.01"] = {
		"A Woodpaw, all teeth and yapping. Guard low; they go for the legs.",
		"Gnoll. Mangy fur, quick feet, and company never far behind.",
	},
	["fer.h.battle.yeti.01"] = {
		"goes still as the yeti beats its chest and lumbers forward through the ferns.",
		"sidesteps the sweep of a great furred arm, the yeti's roar shaking leaves loose overhead.",
		"squares up to the yeti, a mountain of fur that somehow fits beneath the trees.",
	},
	["fer.h.journey.arrival.01"] = {
		"Landed at Mojache. The wyvern shakes out its wings, and the smell of cookfires and tanned hides comes to greet me.",
		"Solid ground, soft with moss, and the giant trees standing all around as if they'd been waiting.",
	},
	["fer.h.journey.start.01"] = {
		"climbs onto the wind rider at Camp Mojache, and with a few heavy wingbeats the tents and totems drop away below.",
		"is borne up out of the forest on leathery wings, the giant trees spreading into an endless roof of green.",
	},
	["fer.h.landmark.mojache.01"] = {
		"steps into {landmark}, where broad tauren tents stand among the trees and braves keep watch at the edge of the clearing.",
		"comes among the tents of Camp Mojache, smoke rising from the cookfires and the low talk of tauren all around.",
		"passes the wyverns on their roost and the hides stretched out to dry, the camp a warm island in the deep green.",
	},
	["fer.h.lowhp.01"] = {
		"Not yet. Mojache is still expecting me back.",
		"Is that your best? A falling branch would do worse.",
		"Still up! Come on, finish it if you can.",
	},
	["fer.h.lowhp.02"] = {
		"Too much blood on the moss. Mine. Get up, get away, get it bound.",
		"The great trees blur. Breathe. They'll still be here; I mean to be too.",
		"If I fall here, the ferns will cover me before morning. Don't fall.",
	},
	["fer.h.muse.01"] = {
		"Trees older than any tribe I know of, and still not done growing. Feralas makes even the tauren of Mojache look small.",
		"These trunks could hold up the sky if it ever started to fall. Somebody should tell them they're allowed to rest.",
		"Up and up the bark goes, until the eye gives up before the tree does.",
	},
	["fer.h.muse.02"] = {
		"Camp Mojache: big tents, a good fire, and tauren who don't ask more questions than they need to.",
		"Say what you like about Feralas, Mojache keeps a warm fire and a full pot.",
		"Mojache is a small camp in a big forest. That's exactly why it feels like home.",
	},
	["fer.h.muse.03"] = {
		"Dire Maul looms over the trees, west of camp. The elves called it Eldre'Thalas; the ogres call it theirs.",
		"Half the old elf city has fallen into the forest. The other half is full of things that would rather it all had.",
	},
	["fer.h.muse.04"] = {
		"The Gordunni camp too close to Mojache. Any distance would be too close, if you ask me.",
		"Ogres on one side, gnolls on the other, Grimtotem wherever they please. Mojache sleeps with one eye open.",
	},
	["fer.h.muse.05"] = {
		"Grimtotem out here too. Tauren against tauren under the same old trees. Cairne's people deserve better neighbors.",
		"The Grimtotem keep to their compound and their grudges. Mojache keeps its spears close.",
		"Strange, seeing the same horns on both sides of a fight. The Grimtotem chose their road, and it runs away from Thunder Bluff.",
	},
	["fer.h.muse.06"] = {
		"Somebody at Mojache would pay well for a yeti hide. The yeti, I expect, is still attached to it.",
		"Yetis in a green forest, with not a flake of snow for miles. Nobody seems to have told them.",
	},
	["fer.h.muse.07"] = {
		"pushes through a stand of ferns taller than {g:he|she} is, the fronds closing again behind {g:him|her}.",
		"stops to listen: water somewhere, a bird far up, and the slow creak of trees too big to sway.",
		"picks a way across a slope of mossy roots, each one as broad as a road.",
	},
	["fer.h.muse.08"] = {
		"Woodpaw gnolls in the hills, yipping at each other. They sound braver in a pack than they fight.",
		"Gnolls are the same everywhere: loud, hungry, and sure the next fight will go their way.",
	},
	["fer.h.muse.09"] = {
		"In the south the Ruins of Isildien are slowly going back to the forest, stone by stone.",
		"Every old wall in Feralas has a tree growing out of it. The forest is patient, and it always wins.",
	},
	["fer.h.muse.10"] = {
		"A Horde camp among the giant trees. Let nobody say we only know the dry lands.",
		"Mojache stands where the forest is thickest, and it stands on its own. That's the Horde, all told.",
	},
	["fer.h.muse.11"] = {
		"No wind under these trees. The air just sits, heavy and green, and lets me pass.",
		"The deeper I go, the quieter it gets. Not peaceful. Just quiet.",
		"Out here the forest keeps its own time, and it is in no hurry at all.",
	},
	["fer.h.muse.12"] = {
		"Moss in my pack, ferns in my hair, a beetle in my boot. Feralas makes itself at home.",
		"Out here you don't carry the forest home on your boots. It walks in on its own.",
	},
	["fer.h.muse.13"] = {
		"Up in the Frayfeather Highlands the hippogryphs nest without riders or masters. The elves' birds, and nobody's.",
		"A hippogryph screams somewhere over the highlands. I'll stick to wind riders; they can keep their beaks.",
	},
	["fer.h.muse.14"] = {
		"The tauren of Mojache speak of the Earth Mother as if she lives just past the next tree. In Feralas, I can almost believe it.",
		"The shamans at camp talk to the land here as if it might answer. Walking through it, I half expect it to.",
	},
	["fer.h.muse.15"] = {
		"East of camp the land drops toward the Lower Wilds. Even the name sounds like a warning.",
		"The Lower Wilds. Lower ground, wilder beasts, and no tent in sight.",
	},
	["fer.h.npc_meet.flightmaster.01"] = {
		"The wind rider master scratches a wyvern under the chin. It looks at me as if I might be lunch.",
		"Wyverns dozing by the tents, tails twitching. A flight out of all this green would be a fine thing.",
	},
	["fer.h.npc_meet.guard.01"] = {
		"A Mojache brave on watch, spear upright, eyes on the trees. Out here the forest is the wall.",
		"The guard gives me a slow nod and goes back to staring into the green. Any shape out there could be an ogre.",
	},
	["fer.h.npc_meet.innkeeper.01"] = {
		"Something hot and a spot by the fire, if there's room. The forest has had enough of me for one day.",
		"A bowl of whatever's in the pot, please. Feralas works up an appetite.",
	},
	["fer.h.quest_complete.01"] = {
		"Done. One job closer to taming a forest that won't be tamed.",
		"Finished. Feralas is just as wild as it was, but a little less in my way.",
		"That's handled. The trees don't care, but somebody does.",
	},
	["fer.h.quest_complete.02"] = {
		"Done. Tell the next one who needs something fetched from the forest that I'm busy.",
		"There. And I only got lost twice.",
		"Finished. I'll take my pay in something that isn't moss.",
	},
	["fer.h.quest_complete.03"] = {
		"Another task done for the Horde. Feralas will learn our name.",
		"That's how we hold a forest: one job, then the next.",
		"Done. Let the Gordunni and the Grimtotem hear of it.",
	},
	["fer.h.quest_complete.04"] = {
		"brushes the forest from {g:his|her} sleeves, the errand behind {g:him|her}, and glances toward the next trail.",
		"lets the weight of the task slide off {g:his|her} shoulders with a long, slow breath.",
		"nods to no one in particular, the job finished, the green walls of Feralas close on every side.",
	},
	["fer.h.quest_progress.01"] = {
		"Objective done. Now the long way back, ears open.",
		"That's finished. The forest let me get this far; let's see if it lets me leave.",
		"Got what I came for. Time to go before something bigger notices.",
	},
	["fer.h.subzone_enter.01"] = {
		"Another part of the forest, and more eyes in the ferns. Feralas has plenty of both.",
		"The trees change a little, the ruins change a little. The feeling of being watched stays the same.",
		"Over a fallen trunk and into the next stretch of green. The forest just keeps going.",
	},
	["fer.h.subzone_enter.diremaul.01"] = {
		"comes in sight of the walls of Dire Maul, elven arches broken against the sky and the smoke of ogre fires rising from within.",
		"passes beneath the shattered gates of the old elven city, where carved stone lies tumbled among the roots.",
	},
	["fer.h.victory.01"] = {
		"Still. The forest closes back over the fight like water over a stone.",
		"Done. High overhead the leaves keep on whispering, untroubled.",
		"Over. The ferns stop shaking, and the big trees never even looked.",
	},
	["fer.h.victory.02"] = {
		"Mojache will want to hear about that one. I'll make it sound harder.",
		"Another mess for the forest to tidy up.",
	},
	["fer.h.victory.03"] = {
		"straightens among the ferns, chest heaving, and lets the green hush of Feralas settle back in.",
		"sets a hand on a mossy trunk and waits for {g:his|her} breath to come back.",
		"looks around the trampled clearing, then up at trees that have outlived every fight beneath them.",
	},
	["fer.h.victory.gordunni.01"] = {
		"That's one ogre who won't be bothering Mojache.",
		"The Gordunni can keep sending them. We'll keep sending them back.",
		"Down, and staying down. Next Gordunni, step up.",
	},
	["fer.h.victory.grimtotem.01"] = {
		"A Grimtotem, fallen among the old trees. Same horns, same earth. Different road.",
		"No joy in that one. A tauren should have stood with Cairne, not against him.",
	},
	["fer.h.weather_change.rain.01"] = {
		"Rain up in the canopy. It takes its time getting down here, and then it's everywhere.",
		"The rain turns the forest loud: every leaf drumming, every fern bowing under it.",
	},
]==])
