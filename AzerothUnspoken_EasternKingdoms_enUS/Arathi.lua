-- English texts of the regional pack eastern_arathi (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/Arathi.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("arathihighlands", "enUS", "eastern_arathi", [==[
	["ara.a.attack.01"] = {
		"For Arathor's old fields!",
		"Stromgarde isn't finished, and neither am I!",
		"A taste of the highlands for you!",
	},
	["ara.a.battle.01"] = {
		"Arathor's armies held these hills. I can hold this one.",
		"Open ground and nowhere to hide. Good. Neither of us gets a surprise.",
		"You want this hill? Come and take it.",
	},
	["ara.a.battle.02"] = {
		"squares up on the hillside, grass whipping around {g:his|her} knees, and waits for the enemy to come.",
		"turns sharply at the rustle behind, weapon already rising.",
	},
	["ara.a.battle.03"] = {
		"Witherbark! Arathor drove your tribe back once. Today it's my turn.",
		"Keep your axes, troll. These hills have had enough of them.",
	},
	["ara.a.battle.04"] = {
		"Syndicate! Give back what you've stolen, and the farm you stole it from.",
		"Thief or noble, it's the same stance and the same mistake.",
	},
	["ara.a.battle.05"] = {
		"An ogre. Big as a barn door and half as clever. Don't let it land one.",
		"Boulderfist. Keep moving, keep low, and let it wear itself out swinging.",
	},
	["ara.a.journey.01"] = {
		"Up and away from Refuge Pointe. From here Arathi is all green folds and gray ruins, and none of it can bite.",
		"The gryphon climbs, and the highlands fall away. Down there an ogre is shaking its fist at me. Probably.",
		"In the air at last. The old walls look like stitches holding the hills together.",
	},
	["ara.a.landmark.01"] = {
		"climbs into {landmark}, where Alliance banners fly over the walls and every guard faces outward.",
		"reaches the camp on its rocky height, a small island of order above the wild grass of the highlands.",
	},
	["ara.a.lowhp.01"] = {
		"staggers back through the grass, steadies, and refuses to fall.",
		"drops to one knee among the thistles, then forces {g:himself|herself} up.",
	},
	["ara.a.lowhp.02"] = {
		"Not yet. Arathi has enough graves.",
		"I've got more fight left in me than you've got teeth.",
	},
	["ara.a.muse.01"] = {
		"Arathor started here. The first human kingdom, the first human magi, all of it among these hills.",
		"Every human kingdom traces its line back to these highlands, the scholars say. It's humbling, and a little sad, to see them so empty.",
		"Strom was the capital of Arathor once, the old histories tell. Its stones are still here, if not much else.",
	},
	["ara.a.muse.02"] = {
		"Stromgarde still stands, part of it anyway, held by soldiers who won't give up their city to ogres and thieves.",
		"Within those broken walls, Stromgarde's last soldiers keep watch. I hope someone is keeping watch for them.",
	},
	["ara.a.muse.03"] = {
		"Refuge Pointe isn't a town, it's a promise somebody made and kept. I'll take it.",
		"Walls on a hilltop and a gryphon to carry me off. Refuge Pointe looks better the longer I'm out here.",
	},
	["ara.a.muse.04"] = {
		"Hammerfall. Orcs, behind walls that were built to hold them in. The world has a long memory and a strange sense of humor.",
		"The Horde holds the east from Hammerfall. Between them and the ogres, Refuge Pointe has neighbors enough.",
	},
	["ara.a.muse.05"] = {
		"Mind the raptors. They're fast, they're hungry, and they think the highlands belong to them.",
		"Somebody should tell the raptors this is Alliance land. Somebody braver than me.",
	},
	["ara.a.muse.06"] = {
		"pauses on a rise and looks out over the highlands, a patchwork of grass, stone walls and empty farmsteads.",
		"follows an old stone wall along the hillside until it ends in a heap of rubble and thistles.",
	},
	["ara.a.muse.07"] = {
		"Trolls fought Arathor's armies across these hills before there was a Stormwind or a Lordaeron. The Witherbark haven't forgotten.",
		"The Witherbark have never accepted that these hills belong to anyone but them.",
	},
	["ara.a.muse.08"] = {
		"The Syndicate calls itself the true heir of Alterac. Out here it's just thieves in good boots, squatting in other people's houses.",
		"Northfold Manor, the streets of Stromgarde, every empty farm: wherever there's a roof, there's a Syndicate cloak under it.",
	},
	["ara.a.muse.09"] = {
		"An orchard gone wild, a well with no bucket. People lived well here once. It shows in what they left.",
		"Somebody planted these hedges in straight lines and expected their grandchildren to trim them.",
	},
	["ara.a.muse.10"] = {
		"These are the oldest fields of humankind. Worth fighting for, even half gone to weed.",
		"Arathi gave humankind its first kings. The least we can do is keep the ogres off it.",
	},
	["ara.a.muse.11"] = {
		"The Thandol Span lies to the north, a dwarven bridge over a gorge I'd rather not measure by falling into it.",
		"North, past the great bridge, lie the Wetlands and the road to Ironforge. Good to know Alliance ground isn't far.",
	},
	["ara.a.muse.12"] = {
		"stops dead at the sound of something heavy moving through the tall grass, then breathes again when it moves away.",
		"kneels by a line of clawed tracks in the soft earth, three-toed and fresh, and looks around more carefully.",
	},
	["ara.a.npc_meet.01"] = {
		"A guard with dented armor, polished anyway. In Arathi, pride holds the walls up as much as mortar does.",
		"The guard gives me a tired nod. Out here, every new face is one more pair of hands.",
	},
	["ara.a.npc_meet.02"] = {
		"A gryphon out of here? Somewhere with fewer raptors, if you have it.",
		"Ready when you are. The highlands look much friendlier from above.",
	},
	["ara.a.quest_complete.01"] = {
		"Done. The Alliance's hold on these hills is a little firmer for it.",
		"Another task for the Alliance in Arathi. The highlands won't thank me, but somebody will.",
		"One more errand finished. Out here, that's how ground gets taken back: slowly.",
	},
	["ara.a.quest_complete.02"] = {
		"Paid in coin and a tired nod. Very Arathi.",
		"Done. If anyone needs me, I'll be scraping raptor off my boots.",
	},
	["ara.a.quest_complete.03"] = {
		"takes the reward with a short bow and turns to look out over the long, empty hills.",
		"tucks the coin away and stands a moment, as if listening for the next call for help.",
	},
	["ara.a.quest_complete.04"] = {
		"It's small work. But small work is how a kingdom like Arathor got built in the first place.",
		"Finished. Maybe one day people will farm these hills again without a sword beside the plow.",
	},
	["ara.a.quest_progress.01"] = {
		"Done gathering. The walk back to safety is the part Arathi likes to test.",
		"Everything I came for. Now to carry it back in one piece, me included.",
		"Ready to hand in. The hills seem to know it, and they're watching.",
	},
	["ara.a.subzone_enter.01"] = {
		"Witherbark Village. Hides stretched on frames, smoke in the air, and eyes behind every hut.",
		"The trolls' village. Step softly; nothing here was built to welcome me.",
	},
	["ara.a.subzone_enter.02"] = {
		"crests a low rise into another fold of the highlands, ruins scattered across it like dropped dice.",
		"comes down into another stretch of country, where the old roads fade into the grass and only the walls remember where they went.",
	},
	["ara.a.victory.01"] = {
		"Done. The grass will hide it soon enough; it hides everything here.",
		"Over. The hills go back to their long, empty silence.",
		"That's one less danger between here and Refuge Pointe.",
	},
	["ara.a.victory.02"] = {
		"Stay down. These hills have seen enough fighting for one day.",
		"Rest easy, Arathor. One less brute on your hills.",
	},
	["ara.a.victory.03"] = {
		"lowers {g:his|her} weapon and listens until the only sound left is the grass.",
		"catches {g:his|her} breath, one hand on a knee, and squints across the hills for the next trouble.",
	},
	["ara.a.victory.04"] = {
		"The bigger they are, the longer it takes. Still works.",
		"One less ogre in the hills. Stromgarde owes me a drink.",
	},
	["ara.a.weather_change.01"] = {
		"turns up {g:his|her} collar as the rain sweeps in over the highlands, darkening the old stone walls.",
		"watches the rain come across the hills in long gray sheets, the grass bowing under it field by field.",
	},
	["ara.h.attack.01"] = {
		"Hammerfall stands, and you fall!",
		"Compliments of the highlands. Duck!",
		"Lok'tar, and down you go!",
	},
	["ara.h.battle.01"] = {
		"Come on, then. The highlands have room for one more grave.",
		"Arathi has seen worse than you. So have I.",
		"You picked open ground. Bad choice.",
	},
	["ara.h.battle.02"] = {
		"sets {g:his|her} feet in the long grass and meets the attack head-on.",
		"spins around on the open hillside, weapon up, as the attack comes.",
	},
	["ara.h.battle.03"] = {
		"Witherbark! Your hills, your spears, your funeral.",
		"Put the axe down, troll. Or throw it, and miss.",
	},
	["ara.h.battle.04"] = {
		"Syndicate. Go back and hide in your ruin.",
		"Another fancy title with a knife. Let's see the pedigree.",
	},
	["ara.h.battle.05"] = {
		"braces as the ogre comes thundering in, huge and bellowing.",
		"steps in close to the ogre, near enough to smell what it had for its last meal.",
	},
	["ara.h.battle.06"] = {
		"Stromgarde soldiers. Holding the line of a dead kingdom, and they mean it. So do I.",
		"These humans fight as if the walls behind them were still whole. I almost envy them that.",
	},
	["ara.h.journey.01"] = {
		"rises over Hammerfall on leathery wings, and the highlands open below in long folds of gold and green.",
		"climbs into the air above the walls, the ruined farms and broken towers of Arathi shrinking to a map.",
	},
	["ara.h.journey.02"] = {
		"Down at Hammerfall. Solid ground, orc voices and the smell of a cooking fire. Good.",
		"Off the wind rider and onto the highlands. My legs remember how to walk a moment later than the rest of me.",
	},
	["ara.h.landmark.01"] = {
		"passes through the gate of {landmark}, where the old walls of a human camp now fly the banners of the Horde.",
		"walks into {landmark}, between rough walls and the low talk of orcs around a fire.",
		"comes in under the walls of {landmark}, where the guards watch the hills and the hills watch back.",
	},
	["ara.h.lowhp.01"] = {
		"Not here. Not in some human's old field.",
		"Is that the best Arathi has? I've taken worse.",
		"Still on my feet. Come and finish it, if you can.",
	},
	["ara.h.lowhp.02"] = {
		"The grass looks very soft from down here. Don't find out how soft.",
		"Breathe. Hammerfall is too far to crawl to. Stand up.",
	},
	["ara.h.muse.01"] = {
		"Everything here was built by people who thought it would last forever. Walls, farms, a whole kingdom. Now the raptors nest in the walls.",
		"This was the first kingdom of the humans, the scouts say. Now it's grass and broken stone, and the Horde at Hammerfall.",
		"Old walls run along the hills like the bones of something that died lying down.",
	},
	["ara.h.muse.02"] = {
		"Hammerfall was a pen for orcs once. Now orcs keep the gate. The stones don't seem to mind either way.",
		"After the war the humans built camps to hold the orcs. One of them stood where Hammerfall stands. The Horde kept the ground and threw out the chains.",
		"Orcs behind a wall, once, on this very ground. Orcs on top of the wall now. That's a turn of fortune worth remembering.",
	},
	["ara.h.muse.03"] = {
		"Raptors in the grass, trolls in the hills, ogres in the caves. Arathi doesn't do anything by halves.",
		"Keep your eyes on the long grass. Something with teeth always has its eyes on you.",
	},
	["ara.h.muse.04"] = {
		"Wide country. You can see an ambush coming a mile off, and so can whoever is planning it.",
		"Hills folding into hills, and the grass running silver and green whenever the air stirs.",
	},
	["ara.h.muse.05"] = {
		"looks out across the highlands, where a crumbled wall follows the ridge for a while and then simply gives up.",
		"pauses in the long grass and turns slowly, taking in hills, ruins and a wide sky with nothing in it but birds.",
	},
	["ara.h.muse.06"] = {
		"Stromgarde's soldiers still cling to their broken city. Stubborn. I'd respect it more if they weren't shooting at us.",
		"The humans of Stromgarde hold one corner of their old capital against everyone. Ogres, trolls, thieves, the Horde. A busy corner.",
	},
	["ara.h.muse.07"] = {
		"Witherbark trolls in the eastern hills. Trolls were here long before the humans, and they've never forgotten it.",
		"The Witherbark watch from the treeline and the rocks. You rarely see the first one.",
	},
	["ara.h.muse.08"] = {
		"Hammerfall's not much, but it has walls, a fire and people who won't stab me. In Arathi that's luxury.",
		"Give me Hammerfall's smoke and a bowl of something hot. The highlands can wait a while.",
	},
	["ara.h.muse.09"] = {
		"Boulderfist ogres all over the hills. Big, loud and not inclined to share a single rock.",
		"The ogres have taken a fair piece of these highlands. Nobody seems to have told them it was taken already.",
	},
	["ara.h.muse.10"] = {
		"Farmhouses with no roofs and fields gone to weed. Whoever worked this land left in a hurry and never came back.",
		"A plow rusting in a ditch. The highlands are full of small things people meant to come back for.",
	},
	["ara.h.muse.11"] = {
		"North, the dwarves' great bridge crosses into the Wetlands. A long way down, if you look. I try not to.",
		"The road north runs to the Thandol Span and the Alliance's marshes beyond it. Not a road the Horde walks lightly.",
	},
	["ara.h.muse.12"] = {
		"lifts {g:his|her} head at a raptor's cry somewhere in the hills, and walks on a little faster.",
		"watches a pair of raptors cross a far slope in long, easy strides, and decides to go around.",
	},
	["ara.h.muse.13"] = {
		"The rings of standing stones on these hills were raised to bind something, the scouts say. The shamans who pass through don't like to linger near them.",
		"Old stone circles on the high ground, built to hold the elements down, or so the shamans tell it. I'd rather not find out what's still tied up in there.",
	},
	["ara.h.muse.14"] = {
		"Syndicate cloaks in the hills. Every ruin in Arathi has a thief in it, and every thief claims a title.",
		"Noble born, they say. Cutpurse manners, I say. Watch the Syndicate around the old manors.",
	},
	["ara.h.npc_meet.01"] = {
		"A Hammerfall guard, eyes on the hills. Out here nobody stands watch for show.",
		"The guard looks me over once, decides I'm Horde enough, and goes back to watching the road.",
		"Scarred, patient, leaning on a spear. Hammerfall's guards have seen every kind of trouble the highlands can send.",
	},
	["ara.h.npc_meet.02"] = {
		"Something hot and a corner by the fire, if you've got one. The highlands are cold company.",
		"A bed behind Hammerfall's walls. Best offer I've had all day.",
	},
	["ara.h.quest_complete.01"] = {
		"Another task done for the Horde out here. Our hold on these hills is thin, but it's a little thicker now.",
		"Done. In Arathi every errand is one more stone in the wall.",
		"One less worry for the Horde in these hills. They'll find another by supper.",
	},
	["ara.h.quest_complete.02"] = {
		"Done. Pay me in coin, or in a bed that doesn't smell of raptor.",
		"There. Arathi's a slightly tidier place. Slightly.",
	},
	["ara.h.quest_complete.03"] = {
		"pockets the reward and glances toward the hills, already counting the miles of the next errand.",
		"accepts the coin with a short nod, the highland grass bending around {g:his|her} boots.",
		"takes the payment and weighs it in one hand, as if the hills might want it back.",
	},
	["ara.h.quest_complete.04"] = {
		"It's done. The humans fought over this land for ages; the Horde came late. I wonder who will hold it last.",
		"Paid and thanked. Still, these hills have outlasted every banner ever raised over them.",
	},
	["ara.h.quest_progress.01"] = {
		"That's everything. Now the long walk back, eyes on the grass.",
		"Done here. In Arathi, the dangerous part is the way home.",
		"Got it all. The grass can stop whispering at me now.",
	},
	["ara.h.subzone_enter.01"] = {
		"walks among the leaning stones of the circle, where the grass grows short and nothing else seems to grow at all.",
		"steps into the ring of standing stones and finds the air inside oddly still, as if it were holding its breath.",
	},
	["ara.h.subzone_enter.02"] = {
		"Over the next rise. Same hills, same ruins, same feeling of being watched from the grass.",
		"Another stretch of the highlands. Somebody farmed this once; now the raptors do the harvesting.",
	},
	["ara.h.victory.01"] = {
		"Down. The grass closes over the place like nothing ever happened.",
		"Over. The hills go quiet, and the quiet goes on for miles.",
		"That's done. Arathi has plenty more where that came from, I'm sure.",
	},
	["ara.h.victory.02"] = {
		"Stay down. The raptors will thank me.",
		"Next time, pick a fight closer to home.",
	},
	["ara.h.victory.03"] = {
		"wipes off {g:his|her} weapon on the long grass and scans the hills for the next shape moving through it.",
		"straightens up, breathing hard, while the highland air carries off the noise of the fight.",
	},
	["ara.h.victory.04"] = {
		"One less spear in the hills. Hammerfall sleeps a little easier.",
		"Your village can send the next one. We'll be waiting.",
	},
	["ara.h.victory.05"] = {
		"Soft boots and a family crest. Neither one helped.",
		"There goes one more heir to nothing.",
	},
	["ara.h.weather_change.01"] = {
		"Rain over the highlands. The old walls darken, the grass lies flat, and every raptor in Arathi goes quiet.",
		"Here comes the rain, sweeping across the hills like a gray curtain. Hammerfall's fires will be smoking.",
	},
]==])
