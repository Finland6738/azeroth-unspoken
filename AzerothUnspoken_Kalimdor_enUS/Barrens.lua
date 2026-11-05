-- English texts of the regional pack kalimdor_barrens (content wave W02). The rules are in AzerothUnspoken_Kalimdor/Barrens.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("thebarrens", "enUS", "kalimdor_barrens", [==[
	["bar.attack.01"] = {
		"Feel that? That's the Barrens hitting back.",
		"Hard land, hard blows.",
	},
	["bar.attack.02"] = {
		"Sorry. The heat puts me in a mood.",
		"Nothing personal. Blame the heat.",
	},
	["bar.attack.03"] = {
		"Short and sharp. No water to waste on a long fight.",
		"Hit hard, finish fast, find water.",
	},
	["bar.battle.01"] = {
		"Out of the grass and into my reach. Bad trade.",
		"Plenty of room to run in the Barrens. You should have used it.",
		"Open ground, no cover. Just you and me, then.",
	},
	["bar.battle.02"] = {
		"raises a hand against the blowing grit and steps into the fight, dust rising in a gold cloud around both of them.",
		"kicks up yellow dust as the fight begins, the dry grass whipping at both of them.",
	},
	["bar.battle.03"] = {
		"Heat, dust, and now you. The Barrens are generous today.",
		"Sweat in my eyes and a fight in front of me. The Barrens never hand you just one problem.",
	},
	["bar.battle.04"] = {
		"Everything in the Barrens is thirsty, hungry or angry. You look like all three.",
		"Let me guess: hot, hungry, and in a foul mood. That makes two of us.",
	},
	["bar.battle.05"] = {
		"No tree to put my back against. Then I'll put it against nothing, and hold anyway.",
		"Open ground. Nowhere to hide, and that cuts both ways.",
	},
	["bar.battle.06"] = {
		"The vultures are already circling. Let's see which of us they're waiting for.",
		"Look up. The buzzards have picked a side, and they don't care which.",
	},
	["bar.battle.07"] = {
		"turns to meet the charge, boots sliding a little on the loose, dry earth.",
		"squints at the shape coming in fast through the tall grass, and braces.",
	},
	["bar.battle.08"] = {
		"Plenty of sky to witness this. Let's give it a show.",
		"Under all this sky, nobody hides. Face me.",
	},
	["bar.battle.09"] = {
		"Can nothing in this land let a body walk in peace? Fine. A fight, then.",
		"Halfway to water, and now this. Of course.",
	},
	["bar.battle.10"] = {
		"Kolkar! Mind the hooves and the spear both.",
		"Get off your high horse, centaur. Oh. Sorry.",
	},
	["bar.battle.11"] = {
		"Another quilboar out of the briars. You lot never run short of spears.",
		"Come out of the brambles and fight me in the open, quilboar!",
	},
	["bar.battle.12"] = {
		"Venture Co.! Put down the wrench and collect your severance.",
		"You're drilling in the wrong place, goblin. Specifically, near me.",
	},
	["bar.journey.01"] = {
		"lifts off on the wind rider's back, and the Barrens open out below: a gold sea with roads drawn across it in dust.",
		"rises above the palisade on leathery wings, the plains tilting away beneath into a haze of heat.",
	},
	["bar.journey.02"] = {
		"Up into the moving air at last. From here the Barrens look almost gentle.",
		"The wind rider climbs, and the heat falls away beneath me like a dropped cloak.",
	},
	["bar.journey.03"] = {
		"Back on the ground, back in the heat. The sky was nicer.",
		"Solid ground. Hot, dusty, solid ground.",
		"Down from the sky and straight into an oven.",
	},
	["bar.landmark.01"] = {
		"passes under the palisade of the Crossroads, where traders, grunts and kodo drivers all talk over one another in the dust.",
		"walks into the Crossroads, the one busy knot in a thousand miles of empty grass.",
		"enters the Crossroads as a wind rider settles on the tower above, shaking dust down onto the merchants.",
	},
	["bar.landmark.02"] = {
		"Ratchet. Smells of salt, oil and money.",
		"A goblin port. Keep one hand on your purse and the other on your other purse.",
	},
	["bar.lowhp.01"] = {
		"The grass is soft enough to lie down in. That's the trouble.",
		"Up. Vultures are patient, but I'm more stubborn.",
		"So easy to go down on these plains. The ground is flat, and always right there.",
	},
	["bar.lowhp.02"] = {
		"Still on my feet. The Barrens will have to try harder.",
		"Bleeding in the dust. Fine. The dust has seen worse.",
		"Not finished. Not by half.",
	},
	["bar.lowhp.03"] = {
		"staggers in the dry grass, breath ragged, the endless plain tilting for a moment.",
		"sways, the heat and the wounds pressing down together like two heavy hands.",
	},
	["bar.lowhp.04"] = {
		"Too far from water and too far from help. Hold on anyway.",
		"Nobody to see this but the sky. Then the sky had better see me get up.",
	},
	["bar.muse.01"] = {
		"Yellow grass to the edge of the world, and one thorn tree standing in the middle of it like it lost a bet.",
		"Walk for an hour out here and the horizon hasn't moved an inch. The Barrens simply go on.",
		"Flat, gold and endless. On these plains the sky does most of the talking.",
	},
	["bar.muse.02"] = {
		"Whoever named this place wasn't straining the imagination.",
		"The Barrens. For once, a name that doesn't lie to you.",
	},
	["bar.muse.03"] = {
		"watches a line of zhevra cross the grass in single file, stripes flickering as they pass.",
		"pauses as a herd of zhevra lifts its heads all at once, ears turning, before going back to grazing.",
		"follows a string of striped zhevra trotting through the tall grass toward water only they know how to find.",
	},
	["bar.muse.04"] = {
		"The wind here never stops. It only changes its mind about which way to push.",
		"Hot wind, dry grass, a hiss that never ends. The Barrens keep breathing out and never seem to breathe in.",
	},
	["bar.muse.05"] = {
		"Every waterskin in the Barrens is half empty. I've checked mine four times this hour.",
		"On these plains you learn to count water like coin, and to spend it slower.",
		"Thirst is the real master of this land. The centaurs and the raptors only work for it.",
	},
	["bar.muse.06"] = {
		"Raptors in the grass. You never see the first one. You see the second.",
		"Keep off the tall grass. That's where the raptors do their thinking.",
	},
	["bar.muse.07"] = {
		"A plainstrider just stared at me, decided I wasn't worth the bother, and wandered off. Fair.",
		"The plainstriders here look like somebody built a bird out of spare legs and forgot the wings.",
	},
	["bar.muse.08"] = {
		"East of here the Southfury runs fast and brown. Strange, that much water beside a land this thirsty.",
		"The Southfury marks the edge: red rock on one bank, gold grass on the other, and the river minding its own business.",
	},
	["bar.muse.09"] = {
		"The Gold Road runs straight down the middle of the Barrens, north to south, and everyone on it is in a hurry.",
		"Follow the Gold Road long enough and it takes you somewhere. That's more than most roads promise.",
		"Kodo tracks, wagon ruts, boot prints of every size. The Gold Road keeps a record of everyone who passes.",
	},
	["bar.muse.10"] = {
		"rests a moment in the thin shade of a thorn tree, where the light falls through in a hundred small coins.",
		"stops beneath a flat-topped tree, the only shade for half a mile, and finds a lion's tracks already there.",
	},
	["bar.muse.11"] = {
		"Somewhere out there the Kolkar are riding. You feel them through the ground before you see the dust.",
		"Centaur country. Every fold in the grass could hide a war party, and this grass is nothing but folds.",
	},
	["bar.muse.12"] = {
		"The quilboar say the great thorns to the south grew where their demigod bled. Looking at those brambles, I believe something did.",
		"Razormane country, all briar and bristle. The quilboar call the thorns holy; I call them a good reason to wear boots.",
	},
	["bar.muse.13"] = {
		"Venture Co. pumping oil out of a fen. Of course they are. They'd drain the sky if it had a spout.",
		"Goblin derricks in the swamp, smoke on the wind. The Venture Co. never met a place it couldn't make worse.",
	},
	["bar.muse.14"] = {
		"Every road in the Barrens comes to the Crossroads sooner or later. Good to have a Horde banner over the middle of it all.",
		"A palisade, a few towers, and our banner where the roads meet. It isn't much, but it holds.",
	},
	["bar.muse.15"] = {
		"watches a kodo caravan plod past along the road, bells clanking, the drivers half asleep in the saddle.",
		"steps aside for a pair of laden kodos, their great heads swinging, each step raising a small cloud of dust.",
	},
	["bar.muse.16"] = {
		"The oases ought to be the best part of this land. Instead the water smells wrong and the plants have grown teeth.",
		"Green around the pools, too green, and twisted with it. Something under the Barrens is dreaming badly.",
	},
	["bar.muse.17"] = {
		"Hot, dry, and full of things that bite. I'm starting to like it here.",
		"Lovely weather for a walk. It's always the same lovely weather, mind you, but still.",
	},
	["bar.muse.18"] = {
		"The grass goes silver under the stars, and the hyenas start their laughing somewhere far off.",
		"The Barrens cool fast at night. The stars come down almost to the grass, and something out there giggles like a hyena. Because it is one.",
	},
	["bar.muse.19"] = {
		"Ratchet's goblins will sell you a bucket of water and then charge you for the bucket.",
		"Never haggle with a goblin in this heat. They don't sweat, and you do.",
	},
	["bar.muse.20"] = {
		"Under a sky this big, a traveler is a very small thing. It's almost restful.",
		"Nothing between me and the horizon but grass, and then more grass. A body could forget its own name out here.",
		"So much sky. Every worry I carry shrinks to a pebble in a boot: annoying, and not worth stopping for.",
	},
	["bar.muse.21"] = {
		"shakes a boot upside down and watches a small yellow drift of Barrens dust pour out.",
		"wipes the grit from the corners of the eyes and looks out over plains that seem to have no far side.",
	},
	["bar.muse.22"] = {
		"Far Watch Post, the Crossroads, Camp Taurajo: a string of camps holding the Barrens together for the Horde. Thin string. Strong knots.",
		"The Horde holds this land with a handful of camps and a great deal of stubbornness. So far, it's enough.",
	},
	["bar.muse.23"] = {
		"Horde banners at every crossing. In these colors I keep to the grass and away from the roads.",
		"A long way from any friendly wall. Northwatch Hold is somewhere to the east, and Theramore farther still.",
	},
	["bar.muse.24"] = {
		"Lion tracks, fresh ones. Walk slow and look big.",
		"Something tawny just moved in the grass. Let's not find out what.",
	},
	["bar.muse.25"] = {
		"steps around the bleached bones of some great beast, half sunk in the earth, the grass growing up through its ribs.",
		"pauses by a skull as big as a cart, white as chalk, with a lizard dozing on the brow.",
	},
	["bar.muse.26"] = {
		"Harpies nest in the dry hills to the north. You hear them long before you see them, and you'd rather do neither.",
		"Wings and shrieking from the hills. Somebody upset the harpies, and I'd like it noted that it wasn't me.",
	},
	["bar.muse.27"] = {
		"Tauren tents, kodo hides drying on frames, a drum by the fire. Taurajo feels like a piece of Mulgore that wandered south.",
		"Camp Taurajo keeps the south road open. The braves here have the look of people who sleep with one hand on the spear.",
	},
	["bar.npc_meet.01"] = {
		"Something cold to drink, if you have it. Something wet, if you don't.",
		"A bed out of the wind and a jug of water. I'm not asking for miracles.",
	},
	["bar.npc_meet.02"] = {
		"The wind rider eyes me as if I'm the one who smells. Fair enough, after the Barrens.",
		"A wind rider and its handler, both squinting at the horizon. Up there, at least, the air moves.",
		"Leathery wings, a scorpion's tail and a temper. The best way across the Barrens, they tell me.",
	},
	["bar.npc_meet.03"] = {
		"Every merchant in the Barrens sells water at the price of wine. And they know I'll pay it.",
		"Dusty goods, a dusty counter, and a price that went up the moment I walked in sweating.",
	},
	["bar.npc_meet.04"] = {
		"meets the steady gaze of a guard who has watched a great many strangers come in off the plains.",
		"nods to the guard, whose eyes go once over the dust on the boots and decide that is explanation enough.",
	},
	["bar.quest_complete.01"] = {
		"Done, and paid. In the Barrens coin is welcome, but water would have been better.",
		"Paid in coin. Out here I'd have taken a full waterskin and called the matter closed.",
	},
	["bar.quest_complete.02"] = {
		"tucks the reward away and takes a long, grateful pull from a freshly filled waterskin.",
		"accepts the payment with a nod and a cough, the dust of the road still thick in the throat.",
	},
	["bar.quest_complete.03"] = {
		"There you are. Now tell me where the nearest well is, and we're square.",
		"All done. If there's a cold drink anywhere in the Barrens, I've earned it.",
	},
	["bar.quest_complete.04"] = {
		"One more thing set right for the Horde out here. The Barrens are held like this, one errand after another.",
		"Done. The Warchief will never hear of it, and the Crossroads will be a little safer all the same.",
	},
	["bar.quest_complete.05"] = {
		"Done. I'll take my reward in coin, gratitude, and an honest answer about where all the water went.",
		"Finished. Next time, ask me to fetch something that isn't in the hottest corner of Kalimdor.",
	},
	["bar.quest_complete.06"] = {
		"Paid and done. The road is long, the grass is longer, and there's always another job at the end of both.",
		"Finished. Somewhere in all this grass another poor soul is already waiting with a problem in hand.",
	},
	["bar.quest_complete.07"] = {
		"counts the coins in the lee of a tent, slowly, as if the heat might steal one.",
		"pockets the reward and squints back out at the plains, already weighing the next stretch of road.",
	},
	["bar.quest_complete.08"] = {
		"People here live close to the edge. In a dry land, a small help goes a long way.",
		"It isn't much, what I did. But in the Barrens, not much is often the difference.",
	},
	["bar.quest_complete.09"] = {
		"There. Done. And no, I don't want to talk about the centaurs.",
		"Job's finished. Pay me before the heat melts what's left of my patience.",
		"All yours. Mind, the raptors out there didn't make it easy.",
	},
	["bar.quest_progress.01"] = {
		"That's all of it. Now the long walk back through the grass, with the heat for company all the way.",
		"All of it, and the hyenas never noticed. Back I go while my luck holds.",
		"Everything I came for. The rest of the Barrens is welcome to its dust.",
	},
	["bar.quest_progress.02"] = {
		"marks one part of the errand done and turns toward the next stretch of grass, one hand on the waterskin.",
		"pauses to drink, one piece of the work finished, the rest still out there on the wide plain.",
	},
	["bar.subzone_enter.01"] = {
		"crests a low rise and looks out over another stretch of gold grass, broken only by a lone thorn tree.",
		"passes from one part of the plain into the next: the grass changes color by a shade, the heat not at all.",
	},
	["bar.subzone_enter.02"] = {
		"This bit of the Barrens looks exactly like the last bit. I suspect it's on purpose.",
		"Another name on the map, the same grass underfoot.",
	},
	["bar.subzone_enter.03"] = {
		"Smells like a goblin's armpit. Must be the Sludge Fen.",
		"Oil on the water, smoke in the air. The Venture Co. has been busy here.",
	},
	["bar.subzone_enter.04"] = {
		"Water at last, and green around it. Then why does every instinct tell me not to drink?",
		"An oasis. The palms are lovely; the things living under them, less so.",
	},
	["bar.victory.01"] = {
		"stands breathing hard in the grass while the vultures, far up, begin to circle lower.",
		"wipes a dusty sleeve across the brow as the hot wind carries the noise of the fight away over the plain.",
		"steps back as the dust settles, and the grass closes over the trampled ground as though the fight had never been.",
	},
	["bar.victory.02"] = {
		"And that's one less thing in the Barrens trying to eat me. Only a thousand to go.",
		"Another one down. The Barrens will send a replacement shortly, I'm sure.",
	},
	["bar.victory.03"] = {
		"Done. Now water, a flat rock to sit on, and five minutes of not moving.",
		"Finished. My throat's as dry as the ground. Where did that waterskin go?",
	},
	["bar.victory.04"] = {
		"That one won't raid the road again. The Kolkar will need another rider.",
		"Fast on four legs, slow on the uptake. Rest, centaur.",
	},
	["bar.victory.05"] = {
		"The quilboar fight like the thorns they love: no grace, but they leave their mark.",
		"Another Razormane in the dust. The briars to the south must be crawling with them.",
	},
	["bar.victory.06"] = {
		"Tell your foreman the Barrens aren't hiring.",
		"One less wrench turning in the fen. The land won't miss you.",
	},
	["bar.victory.07"] = {
		"The grass will cover this soon enough. Here everything gets covered, sooner or later.",
		"Nothing stays long where it falls on these plains. The land sees to that.",
	},
	["bar.victory.08"] = {
		"Ha! That one goes in the stories around the fire.",
		"Not bad, not bad at all. The Barrens are learning my measure.",
	},
	["bar.victory.09"] = {
		"kneels to check the fallen foe's gear, then stands and looks down the road toward whatever comes next.",
		"shakes the dust from the weapon and looks around the empty plain, with only the wind for company.",
	},
	["bar.victory.10"] = {
		"That went better than my last fight. Then again, my last fight was with the heat.",
		"Won. If only the heat were this easy to beat.",
	},
	["bar.weather_change.01"] = {
		"Rain on the Barrens. The whole plain smells of wet dust, and the grass seems to stand up taller.",
		"Rain, real rain. Somewhere a tauren herder is grinning up into it, and so am I.",
	},
	["bar.weather_change.02"] = {
		"watches the last clouds burn away, and the plain goes back to its old gold glare.",
		"squints as the sky clears and the heat settles over the grass once more, heavy as a blanket.",
	},
]==])
