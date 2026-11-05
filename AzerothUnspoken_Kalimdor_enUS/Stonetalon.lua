-- English texts of the regional pack kalimdor_stonetalon (content wave W02). The rules are in AzerothUnspoken_Kalimdor/Stonetalon.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("stonetalonmountains", "enUS", "kalimdor_stonetalon", [==[
	["stm.a.attack.01"] = {
		"This is for every tree on Windshear Crag!",
		"Feel that? The mountain sends its regards.",
	},
	["stm.a.battle.01"] = {
		"Wings overhead. Watch the sky, not just the path.",
		"Out of the rocks, out of the air. Nothing here comes at me straight.",
	},
	["stm.a.battle.02"] = {
		"sets {g:his|her} back to the cliff wall as the attack comes, leaving nothing behind but stone.",
		"plants {g:his|her} feet on the narrow ledge, scree sliding away beneath, and meets the enemy.",
	},
	["stm.a.battle.venture.01"] = {
		"Venture Co.! Your contract with this mountain just expired.",
		"Put the axe down. The trees have had enough of you.",
		"You've cut your last tree, goblin.",
	},
	["stm.a.journey.01"] = {
		"rises from the peak on hippogryph wings, the bare ridges and the felled slopes of Windshear Crag falling away below.",
		"lifts off from the heights on a hippogryph's back, the mountain wind roaring past and the stone peaks shrinking behind.",
	},
	["stm.a.landmark.peak.01"] = {
		"{landmark}. Kaldorei sentries, a hippogryph roost, and the whole mountain range below. A good place to catch my breath.",
		"Up at {landmark} the wind is cold and clean, and nobody here is cutting anything down.",
	},
	["stm.a.lowhp.01"] = {
		"A long way down if I fall. So I don't fall.",
		"Breath short, legs heavy, and the thin air isn't helping. Hold.",
		"Not on this bare rock. The kaldorei need every hand up here, mine included.",
	},
	["stm.a.muse.01"] = {
		"Stumps for miles where Venture Co. has been. The kaldorei must feel every one of them.",
		"Whole slopes shaved bare, like a hide scraped for tanning. The goblins call it business.",
		"I keep hearing the saws, even when they've stopped. This mountain is being eaten from the edges.",
	},
	["stm.a.muse.02"] = {
		"Up at the peak the kaldorei keep a camp among the stones. A few lanterns, a few bows, and a long view of trouble.",
		"Stonetalon Peak is the one place in these mountains where I can rest without one ear open.",
		"Friendly faces on the heights. Up here, that's worth more than a roof.",
	},
	["stm.a.muse.03"] = {
		"Goblins logging, harpies screeching, and me on a goat track in the middle. Lovely mountains.",
		"I'd admire the view, but someone's cut half of it down and sold it.",
		"There must be one tree in all this rock that Venture Co. hasn't found yet. I hope.",
	},
	["stm.a.muse.04"] = {
		"The Talondeep Path runs under the mountain to Ashenvale. A dark tunnel, then green again. I can live with that.",
		"Below me the old tunnel cuts through the rock to Ashenvale's forests. Good to know there's a way back to the trees.",
		"Ashenvale is just through the rock. These bare slopes make it feel very far away.",
	},
	["stm.a.muse.05"] = {
		"The Sentinels can't hold every ridge. I'll take one.",
		"If the kaldorei want these mountains kept green, they'll have my help.",
		"Every saw I stop here means a few more trees standing. Reason enough to stay.",
	},
	["stm.a.muse.06"] = {
		"looks up at the high gray crags, where the wind combs the last stunted pines and the harpies wheel and cry.",
		"pauses on the switchback trail, the whole sweep of the mountains spread out below in stone and scars.",
	},
	["stm.a.npc_meet.flight.01"] = {
		"The hippogryphs up here are the calmest creatures in these mountains. Possibly the only calm ones.",
		"A hippogryph on the heights, waiting. Ashenvale and the coast are only a flight away from all this rock.",
		"Feathers ruffled by the mountain wind, eyes on the far horizon. The hippogryph looks as ready to leave as I am.",
	},
	["stm.a.quest_complete.01"] = {
		"Done. One more ridge where the Sentinels can stand down for an hour.",
		"Finished. The kaldorei on the peak will be glad of it, in their quiet way.",
		"That's one less wound in these mountains, or one less on its way.",
	},
	["stm.a.quest_complete.02"] = {
		"Done. If Venture Co. sends a complaint, forward it to me.",
		"Finished. Any chance the reward comes with a downhill path?",
	},
	["stm.a.quest_progress.01"] = {
		"That's the lot. Back up the switchbacks to report, then.",
		"All done out here. Now the long climb back to the heights.",
	},
	["stm.a.subzone_enter.windshear.01"] = {
		"comes into {subzone} and stops at the sight: stumps, sawdust and the rusted bulk of goblin machines where a forest stood.",
		"walks into {subzone}, where the wind has nothing left to blow through but cut timber and smoke.",
	},
	["stm.a.victory.01"] = {
		"That's for the trees.",
		"One less threat to the kaldorei on these heights.",
		"Done. The mountain breathes a little easier.",
	},
	["stm.a.victory.02"] = {
		"lowers {g:his|her} guard and looks out over the stripped slopes as the wind comes whistling up the pass.",
		"catches a breath on the high ground, the stumps of a felled forest spread out below.",
		"steps back from the edge, loose stones rattling down into the ravine after the fight.",
	},
	["stm.h.attack.01"] = {
		"For Sun Rock!",
		"Off my mountain!",
		"The Horde hits harder uphill.",
	},
	["stm.h.battle.01"] = {
		"For the Horde, and for Sun Rock!",
		"For the Horde! Not one step of this trail is yours!",
	},
	["stm.h.battle.02"] = {
		"sets both feet on the loose scree as the enemy comes down the slope.",
		"takes the high ground on a slab of rock, pebbles skittering away down the slope.",
	},
	["stm.h.battle.03"] = {
		"Thin air, steep ground. Keep the breath short and the blows shorter.",
		"Mind the edge. In these heights the drop kills more than the blade.",
	},
	["stm.h.battle.04"] = {
		"You climbed all this way to fight me? I'm flattered.",
		"Everybody in these mountains wants a piece of the Horde. Take a number.",
	},
	["stm.h.battle.05"] = {
		"You're cutting down the wrong mountain, goblin.",
		"Venture Co.! Your saws stop here.",
	},
	["stm.h.battle.06"] = {
		"Grimtotem! Cairne offered you peace once, and you spat on it.",
		"Put down the spear, Grimtotem. The Horde has no quarrel with the tauren, only with you.",
	},
	["stm.h.journey.01"] = {
		"slides off the wind rider at Sun Rock, the cool mountain air a shock after the open sky.",
		"lands on the rock of Sun Rock Retreat, the wind rider folding its wings with a grunt of relief.",
		"climbs down from the saddle as the handler leads the wind rider away, the peaks rising sharp all around.",
	},
	["stm.h.landmark.01"] = {
		"Sun Rock Retreat. Tents against the cliff, a fire always going, and the mountain wind at the door.",
		"The Horde's foothold in these mountains: a few tents, a lot of rock, and people who don't scare easily.",
		"Sun Rock. After the climb, the sight of Horde banners is worth more than water.",
	},
	["stm.h.lowhp.01"] = {
		"Not on this ledge. It's a long way down, and the harpies would get there first.",
		"Breathe, even if the air up here is thin. Hold the ground; it's the only ground there is.",
		"One slip, and the mountain finishes what the enemy started.",
	},
	["stm.h.lowhp.02"] = {
		"The Horde doesn't fall off mountains. Not today.",
		"Sun Rock's waiting for me. I'm not done.",
	},
	["stm.h.muse.01"] = {
		"From the high trails you can see the Barrens laid out below like a yellow rug. Up here the air finally has an edge to it.",
		"Up out of the Barrens, and the heat lets go of me one switchback after another.",
	},
	["stm.h.muse.02"] = {
		"Stumps, stumps and more stumps. The Venture Co. went through this wood like rats through a granary.",
		"Somebody counted every tree on Windshear Crag and put a price on it. The goblins, naturally.",
		"The saws never stop over on the crag. You can hear the mountain losing its hair.",
	},
	["stm.h.muse.03"] = {
		"Sun Rock holds the way through for the Horde. Small camp, big view, stubborn people.",
		"A handful of Horde tents on a rock, and every goblin and harpy in these peaks knows our name.",
	},
	["stm.h.muse.04"] = {
		"looks north to the great peak, where the night elves keep their camp among the high pines, beyond the reach of any Horde road.",
		"pauses on the trail to study the great peak, its upper slopes green and quiet and held by the kaldorei.",
	},
	["stm.h.muse.05"] = {
		"Down in the Charred Vale the trunks are black, the ground is gray, and the wind still smells of smoke.",
		"Whatever burned the Charred Vale burned it to the bone. The harpies nest there anyway.",
	},
	["stm.h.muse.06"] = {
		"Every trail here goes up. Next time the wind rider can carry me, and my pride can walk.",
		"The climb from the Barrens to Sun Rock: the surest way to learn you have knees.",
	},
	["stm.h.muse.07"] = {
		"Grimtotem in these hills. Tauren against tauren; I'd rather not think about what Cairne makes of it.",
		"The Grimtotem keep to themselves up here, and what they keep, they keep with spears.",
	},
	["stm.h.muse.08"] = {
		"watches a wind rider beat its way up from Sun Rock and vanish over the ridge toward the Barrens.",
		"follows a wind rider circling above the camp, its shadow sliding across the rock face.",
	},
	["stm.h.muse.09"] = {
		"The Horde cuts wood in Ashenvale and calls it survival. The goblins cut it here and call it profit. The stumps look much the same.",
		"Strange. I curse the goblins for these stumps, and say nothing of the Warsong axes in Ashenvale.",
	},
	["stm.h.muse.10"] = {
		"Bloodfury harpies shrieking from every ledge. Somebody tell them we can hear them fine.",
		"Harpies. Loud, ugly, and always above you. Like a bad officer.",
	},
	["stm.h.muse.11"] = {
		"The cold comes down off the peak at night, and the campfires of Sun Rock look very small and very welcome.",
		"Stars sharp as spearpoints over the ridges, and somewhere a harpy still complaining about it.",
	},
	["stm.h.muse.12"] = {
		"A shredder coughs and starts up again, somewhere out on the crag. The mountain flinches every time.",
		"Goblin machines walking through a forest on iron legs. The elders back home would have called it a bad dream.",
	},
	["stm.h.muse.13"] = {
		"Cool air, clean water, and only a few things trying to kill me. Stonetalon spoils a Horde traveler.",
		"After the Barrens these mountains feel like a holiday. A holiday with harpies.",
	},
	["stm.h.npc_meet.01"] = {
		"A wind rider out of Sun Rock? Best news since I left the Barrens.",
		"Down the mountain in an hour instead of a day. Saddle it up.",
		"Has this one been fed? It's looking at my arm like a snack.",
	},
	["stm.h.npc_meet.02"] = {
		"An innkeeper this high up deserves a medal. Hauling a keg up these trails is a feat of arms.",
		"A fire, a bowl of something hot, a place out of the wind. At Sun Rock they know what a traveler needs.",
	},
	["stm.h.quest_complete.01"] = {
		"Done. Sun Rock is a little safer, and the pass a little more ours.",
		"Finished. The Horde holds these heights with errands like this one, and this time it was my turn.",
		"Task done. Somebody at Sun Rock will sleep with one eye shut instead of both open.",
	},
	["stm.h.quest_complete.02"] = {
		"accepts the reward beside the campfire, hands still scraped from the climb.",
		"pockets the payment and looks out from the rock over the long drop toward the Barrens.",
	},
	["stm.h.quest_complete.03"] = {
		"Done. Next time, could the trouble be at the foot of the mountain?",
		"All handled. I'd ask for a raise, but I suspect it would be another climb.",
	},
	["stm.h.quest_complete.04"] = {
		"One small thing put right on a mountain where the goblins have put so much wrong.",
		"A drop against the saws. Still, a drop.",
	},
	["stm.h.quest_progress.01"] = {
		"That's the last of it. Now back to Sun Rock, and mind the drops on the way.",
		"All done up here. The trail back is steep, but at least I know where it goes.",
		"Got it all. The mountain can keep its harpies.",
	},
	["stm.h.subzone_enter.01"] = {
		"comes out onto the crag and stops: a hillside of stumps, sawdust drifting like pollen, and the howl of goblin machines.",
		"steps among fresh stumps on the windy crag, the sap still running from the cut wood.",
	},
	["stm.h.subzone_enter.02"] = {
		"Ash underfoot and black trees standing like burnt matches. Quiet, except for the harpies.",
		"The air here still smells of a fire long gone cold. Nothing grows back quickly this high.",
	},
	["stm.h.victory.01"] = {
		"looks down from the ledge after the fight, the Barrens spread out, hazy and endless, far below.",
		"catches a breath in the thin air, the fallen foe underfoot and the wind whistling through the stumps.",
	},
	["stm.h.victory.02"] = {
		"Your contract's cancelled, goblin. Tell the Venture Co. the mountain said no.",
		"One less saw on the crag. The trees thank you for your resignation.",
	},
	["stm.h.victory.03"] = {
		"Done. My legs burn more from the climb than from the fight.",
		"Over. At this height even winning leaves you short of breath.",
	},
	["stm.h.victory.04"] = {
		"Sun Rock stands. Go and tell the rest of the mountain.",
		"That's how the Horde holds a pass. Next!",
	},
	["stm.h.victory.05"] = {
		"Even after the fight, the saws on the crag keep going. Some battles are not mine to win.",
		"The fight's over. The axes on the far slope aren't.",
	},
	["stm.h.weather_change.01"] = {
		"watches the rain sweep down off the peaks, and the stumps on the far crag turn dark and shining.",
		"pulls up the collar as rain settles over Stonetalon, the trail dust turning to slick mud and the harpies falling quiet in their nests.",
	},
]==])
