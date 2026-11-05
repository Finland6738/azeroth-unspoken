-- English texts of the regional pack eastern_stranglethorn (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Stranglethorn.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("stranglethornvale", "enUS", "eastern_stranglethorn", [==[
	["stv.h.attack.01"] = {
		"This jungle's crowded enough. Make room!",
		"Lok'tar! Down you go, into the ferns!",
	},
	["stv.h.attack.02"] = {
		"Hold still. It's too hot to chase you.",
		"Here, have something worse than the heat.",
	},
	["stv.h.battle.01"] = {
		"Come out of the green, then. I can hear you breathing.",
		"Enough skulking in the ferns. Face me.",
		"You've been on my heels for a while. Let's finish it here.",
	},
	["stv.h.battle.02"] = {
		"sets both feet in the soft, sucking mud as the attack bursts out of the undergrowth.",
		"shoves aside a curtain of vines and meets the enemy waiting behind it.",
		"spins toward the snap of a branch, sweat stinging both eyes, weapon already up.",
	},
	["stv.h.battle.03"] = {
		"Too close, too fast. In this green you never see them until they're on you.",
		"No room to swing, no room to run. Fine. Then it's here.",
	},
	["stv.h.battle.04"] = {
		"Keep your trophies, Bloodscalp. Mine isn't joining the collection.",
		"My head stays on my shoulders, troll. Yours, we'll see.",
	},
	["stv.h.battle.05"] = {
		"Your war ended years ago, soldier. Nobody told you?",
		"Kurzen's still paying you? I doubt it. Call this your discharge.",
	},
	["stv.h.battle.06"] = {
		"Easy, beast. You picked the wrong meal.",
		"All teeth and no patience. I know the type.",
		"Go on, then. Show me why this jungle fears you.",
	},
	["stv.h.battle.07"] = {
		"Too hot for this. Let's make it quick.",
		"Fine, but I'm not running anywhere in this heat.",
		"Of course. Why rest in the shade when you can brawl in the mud?",
	},
	["stv.h.journey.01"] = {
		"From up here Stranglethorn is one endless green roof, with a gray ruin poking through now and then.",
		"Above the canopy at last. The air up here moves. I'd forgotten air could do that.",
		"Down there it's all heat and teeth. From this high it looks almost soft, like moss on a stone.",
	},
	["stv.h.journey.02"] = {
		"slides down from the wind rider into air so thick and wet it feels like walking into a damp blanket.",
		"lands, and the heat of the jungle closes in like water over a dropped stone.",
	},
	["stv.h.landmark.01"] = {
		"{landmark}. Huts, a wall of sharpened logs and the zeppelin tower over the trees. Out here, that counts as a fortress.",
		"Horde banners in the damp air, orcs at the gate. Grom'gol is small, but it's ours.",
	},
	["stv.h.landmark.02"] = {
		"{landmark}. Mind your purse, then your step on the docks, in that order.",
		"A town in a cliff, full of goblins and gold. What could possibly go wrong?",
	},
	["stv.h.lowhp.01"] = {
		"The green is closing in at the edges. Hold on. Hold on.",
		"The jungle can wait for me a while longer. It has plenty to eat.",
		"Everything's going soft and far away. Stay up. Stay standing.",
	},
	["stv.h.lowhp.02"] = {
		"Bleeding in this heat? Then I'll finish this before I dry out.",
		"That's all? Stranglethorn's mosquitoes have taken more blood than you.",
	},
	["stv.h.lowhp.03"] = {
		"staggers against a tree trunk, slick with sweat and worse, and keeps the weapon raised.",
		"sinks to one knee in the mud for a heartbeat, then drags upright once more.",
	},
	["stv.h.muse.01"] = {
		"The air here is so thick I could wring it out, and I'd still be thirsty.",
		"Every breath in this jungle is half water and half heat. Neither one helps.",
		"I've stopped sweating. I think I've just started leaking.",
	},
	["stv.h.muse.02"] = {
		"Stone faces under the vines, every one of them bigger than a hut. The trolls who carved them meant to be remembered. The jungle had other plans.",
		"Steps that climb to nothing, walls held together by roots. A whole empire, and the green is slowly eating it.",
		"Somebody built these terraces to last forever. The roots are patient, though, and they're winning.",
	},
	["stv.h.muse.03"] = {
		"stands still under the canopy and listens: birds, insects, dripping leaves, and somewhere far off, something large pushing through the brush.",
		"pauses in the green half-light, where the leaves drip without end and the jungle never once falls quiet.",
	},
	["stv.h.muse.04"] = {
		"Grom'gol is a palisade, a zeppelin tower and a few tired grunts. That's the Horde's whole grip on this jungle, and it holds.",
		"A long way from Orgrimmar, that camp. Thin walls, trolls close by on every side. Still, the banners stay up.",
		"Every plank of Grom'gol came in past someone who wanted it gone. You can tell by the way the guards watch the trees.",
	},
	["stv.h.muse.05"] = {
		"In Booty Bay they'd sell you your own sweat back, by the cup.",
		"Goblins built a whole town into a cliff just to sit closer to the money. You have to admire it.",
	},
	["stv.h.muse.06"] = {
		"The Bloodscalps hang their trophies where the path bends, so you see them before you see the trolls. It works.",
		"Skulls on poles at the edge of the clearing. A message, and not a subtle one: this is still Bloodscalp ground.",
	},
	["stv.h.muse.07"] = {
		"A dwarf came all this way to shoot tigers and write about it. The tigers, I'd guess, see it differently.",
		"Nesingwary's hunters keep counting pelts as if the jungle could run out of teeth. It won't.",
		"Somewhere out there a page of that old hunter's book is blowing through the ferns. Even his stories get lost in here.",
	},
	["stv.h.muse.08"] = {
		"Something striped has been keeping pace with me for a while now, just inside the leaves. I keep walking. So does it.",
		"There are eyes in that undergrowth. I can't see them. I can feel them, though, the way you feel heat off a stone.",
	},
	["stv.h.muse.09"] = {
		"Raptors. Always in pairs, always from the side you aren't watching.",
		"If you hear clicking in the ferns, stop admiring the flowers.",
		"Raptors hunt like a pack of bad decisions: fast, loud, and all together.",
	},
	["stv.h.muse.10"] = {
		"The gorillas here beat their chests at anything that moves. Then they come over to check whether it's still moving.",
		"Careful with the apes. They're smarter than they look, and they already look fairly clever.",
	},
	["stv.h.muse.11"] = {
		"runs a hand along a carved stone face half swallowed by a tree, its open mouth now full of moss.",
		"steps around a toppled idol in the undergrowth, its jeweled eyes long gone, its grin still there.",
	},
	["stv.h.muse.12"] = {
		"The jungle runs right down to the sand and stops, as if even it respects the sea.",
		"Green behind me, blue in front, and a strip of white sand between them. For a moment the heat almost feels kind.",
		"Out past the surf the water is a color I don't have a word for. The jungle gives way to it without a fight.",
	},
	["stv.h.muse.13"] = {
		"Everything in this jungle bites. The flies, the plants, probably the mud.",
		"Six kinds of insect have fed on me today, and not one of them said thank you.",
		"The mosquitoes here could carry off a goblin, and they'd charge him for the trip.",
	},
	["stv.h.muse.14"] = {
		"The Horde's trolls talk about the Bloodscalps the way you'd talk about a cousin who stole the good knives.",
		"Ask a Darkspear about the jungle tribes and watch the face. Old kinship, older grudges, and none of it simple.",
	},
	["stv.h.muse.15"] = {
		"Human soldiers, living in this jungle like it's a war that never ended. Whatever Kurzen promised them, it wasn't this.",
		"Kurzen's men wear uniforms gone green with rot. They came here to fight, and the jungle kept them.",
	},
	["stv.h.muse.16"] = {
		"Behind the great walls of Zul'Gurub the Gurubashi still call on something that drinks blood. I'd rather not meet it.",
		"Zul'Gurub's gates stay shut, and I'm told the priests inside still feed a god on blood. Some doors are better left alone.",
	},
	["stv.h.muse.17"] = {
		"Half the flowers here are lovely and the other half are hungry. Telling them apart is the whole trick.",
		"That vine moved. I'm almost sure that vine moved.",
	},
	["stv.h.npc_meet.01"] = {
		"A wind rider out here, in all this wet heat. It looks about as pleased with the jungle as I am.",
		"Wings to somewhere drier, and a patch of open sky. Nothing in this jungle has looked so kind.",
	},
	["stv.h.npc_meet.02"] = {
		"Anything that keeps the bugs off? I'll pay double.",
		"What's a cool drink cost around here, or don't I want to know?",
		"Show me what doesn't rot in this damp.",
	},
	["stv.h.npc_meet.03"] = {
		"nods to the guard, whose eyes stay on the treeline rather than on the newcomer.",
		"passes the sentry, who stands sweating in the heat and never once stops watching the jungle.",
	},
	["stv.h.quest_complete.01"] = {
		"sets down what was asked for, still damp and smelling of the jungle.",
		"accepts the reward with a sweat-slick hand and a short nod.",
		"wipes a muddy palm on one leg before taking what's owed.",
	},
	["stv.h.quest_complete.02"] = {
		"Done. The jungle didn't make it easy, and it won't remember any of it.",
		"One job closed. In Stranglethorn there's always another one waiting under the leaves.",
		"That's settled. Now somewhere to sit where nothing bites.",
	},
	["stv.h.quest_complete.03"] = {
		"Done. I'll take my pay, and something cold, if anyone here has heard of cold.",
		"Finished. Half the jungle is still stuck to my boots, no extra charge.",
	},
	["stv.h.quest_complete.04"] = {
		"Every task done in this jungle makes Grom'gol's walls feel a little less thin.",
		"A trail cleared, a threat gone. The Horde's camp breathes a little easier for it.",
	},
	["stv.h.quest_complete.05"] = {
		"The path I hacked open to get there is probably closed already. The jungle doesn't hold a grudge, it just grows.",
		"Finished, and the vines have already crept over my tracks. The jungle forgets faster than anyone.",
	},
	["stv.h.quest_complete.06"] = {
		"tucks the reward away and flicks a beetle off one sleeve with a finger.",
		"checks the reward, then fans a hand at the gnats, which seem to want their share.",
	},
	["stv.h.quest_progress.01"] = {
		"One part done. The rest is somewhere under all this green.",
		"Halfway, maybe. In Stranglethorn it's hard to tell how far anything is.",
	},
	["stv.h.quest_progress.02"] = {
		"That's everything. Now to find the way out of this green before it finds me.",
		"All of it. Time to hand it in before it rots in this heat.",
	},
	["stv.h.subzone_enter.01"] = {
		"pushes through a wall of broad leaves and steps out into {subzone}, blinking at the change of light.",
		"follows the narrow trail as the trees thin a little, and {subzone} comes into view between the trunks.",
	},
	["stv.h.subzone_enter.02"] = {
		"{subzone}. Another name, same heat, same teeth in the leaves.",
		"A different part of the jungle, by the look of it. The insects haven't noticed.",
	},
	["stv.h.subzone_enter.03"] = {
		"Kurzen's lot dig in like they're still under orders. Stay low.",
		"Keep your eyes up. These men know how to hold a camp.",
	},
	["stv.h.victory.01"] = {
		"Done. Now the hard part: breathing this air again.",
		"It's down. I'm still standing, and dripping, and that will do.",
		"Over. My heart's pounding louder than the insects.",
	},
	["stv.h.victory.02"] = {
		"One fewer thing in this jungle trying to eat me. Only a thousand to go.",
		"There. The jungle can have that one.",
		"Stay down. It's too hot to do that twice.",
	},
	["stv.h.victory.03"] = {
		"wipes the sweat away and waits as, little by little, the birds and insects take up their racket once more.",
		"lowers the weapon in the sudden hush, until the jungle decides the fight is over and starts chattering again.",
		"steps back from the fallen enemy as the ferns stop shaking and the green noise of the jungle returns.",
	},
	["stv.h.victory.04"] = {
		"No more raids on Booty Bay from you, buccaneer.",
		"That's one less red sail on the water. Booty Bay can thank me with a drink.",
	},
	["stv.h.victory.05"] = {
		"A fine animal. Nesingwary's people would want the hide. I just want it to have been worth something.",
		"It fought like it owned this jungle. In a way, it did.",
	},
	["stv.h.victory.06"] = {
		"Before long the jungle will have this body hidden under leaves. Here nothing lies in the open for long.",
		"Ants already, and flies close behind them. In this heat nothing waits to be eaten.",
	},
	["stv.h.weather_change.01"] = {
		"Rain at last, hammering on the big leaves like a hundred drums. It cools nothing. It just makes the heat wetter.",
		"Here comes the rain, straight down and warm as bathwater. The jungle drinks it and asks for more.",
		"The rain arrives all at once, loud on the canopy, and the whole jungle starts to steam.",
	},
	["stv.a.attack.01"] = {
		"Take that, and tell the jungle who sent it!",
		"For the Alliance, and for dry boots someday!",
		"Here's something that stings worse than a thorn!",
	},
	["stv.a.battle.01"] = {
		"Stand and face me. I didn't walk this far to be ambushed.",
		"Right. You picked the ground. Now hold it, if you can.",
		"Come on, then. The jungle can watch.",
	},
	["stv.a.battle.02"] = {
		"brings the weapon up just as the attacker breaks from a screen of broad leaves, close enough to touch.",
		"kicks a rotten log aside to clear some footing and turns to meet the charge.",
		"backs against the trunk of a great tree, so that whatever comes, comes from the front.",
	},
	["stv.a.battle.03"] = {
		"Breathe. Watch the feet, not the leaves. The leaves always move.",
		"Ignore the racket of the jungle. Only one sound in it matters now, and it's coming straight at me.",
	},
	["stv.a.battle.04"] = {
		"Wonderful. I was just thinking this walk needed more teeth.",
		"Can't anything in this jungle simply say hello?",
	},
	["stv.a.battle.05"] = {
		"Booty Bay sends its compliments, pirate.",
		"Back to your boats, Bloodsail. This beach isn't yours.",
	},
	["stv.a.battle.06"] = {
		"Easy. Watch the shoulders, not the teeth. The shoulders tell you when it jumps.",
		"All right, beast. You're hungry and I'm in the way. Let's settle it.",
	},
	["stv.a.journey.01"] = {
		"rises from the Booty Bay roost on gryphon wings, and the harbor shrinks to a ring of masts and roofs in the cliff's green hand.",
		"lifts off over the bay, the gryphon beating hard against the heavy air until the jungle drops away below.",
	},
	["stv.a.journey.02"] = {
		"Down in Booty Bay. The gryphon shakes out its wings and gives me a look that says the trip was my idea, not its.",
		"Feet on solid planks, salt and fish and goblin shouting all around. Booty Bay: loud, cheerful and dear.",
	},
	["stv.a.landmark.01"] = {
		"{landmark}. Not ours, not the Horde's, only the goblins'. For the Alliance down here, that's as safe as it gets.",
		"Lanterns, ships, bruisers on every stair, and a price on every breath. The goblins keep a tidy town.",
		"Neutral ground, they call it. That means the bruisers club anyone who starts trouble, then charge both sides for the bandages.",
	},
	["stv.a.lowhp.01"] = {
		"Not here. I won't be a lump under the ferns by next week.",
		"Stay up. If I go down in this green, nobody will even find the bones.",
		"Keep moving. The jungle is patient, but I'm not ready to feed it.",
	},
	["stv.a.lowhp.02"] = {
		"Patch me up later. Not now.",
		"A little blood. I have more where that came from.",
	},
	["stv.a.muse.01"] = {
		"The Rebel Camp is a few tents, a cookfire and men who said no to Kurzen. Out here that's as close to Stormwind as it gets.",
		"Soldiers who walked away from their own colonel and stayed in the jungle anyway. The Rebel Camp is stubborn, and I like it for that.",
		"A handful of tents on the edge of the jungle, Duskwood at their backs. The rebels hold their corner and don't ask for thanks.",
	},
	["stv.a.muse.02"] = {
		"The Alliance has a camp of rebels at one end of this jungle and a goblin town at the other. Everything in between belongs to whoever bites first.",
		"North, the rebels. South, Booty Bay, which belongs to nobody but the goblins. Between them, a long green walk full of teeth.",
	},
	["stv.a.muse.03"] = {
		"Grom'gol sits on the western shore with its zeppelin tower. Whenever an airship drones over the canopy, I check my weapon.",
		"The Horde keeps a camp on this coast, and its zeppelins pass low over the trees. When one goes by, I stay in the shade and keep still.",
	},
	["stv.a.muse.04"] = {
		"In Booty Bay an orc and I drink at the same bar and pretend not to see each other. The goblins call that peace.",
		"Booty Bay's bruisers keep the peace with clubs. Nobody loves the Horde there, but nobody swings first either.",
	},
	["stv.a.muse.05"] = {
		"Venture Co. saws, whining away under the canopy. This jungle has outlasted trolls, tigers and wars. Goblins with a contract might be another matter.",
		"The Venture Co. has dug in here, felling and digging as if the jungle had come with a receipt.",
	},
	["stv.a.muse.06"] = {
		"Ogres to the east, in their mound. You smell the Mosh'Ogg long before you see them, which is the only kind thing about them.",
		"If the wind turns and your eyes start watering, that's not the jungle. That's the ogres.",
	},
	["stv.a.muse.07"] = {
		"Basilisks on the rocks, crystals jutting from their backs like broken glass. Whatever happens, don't let one hold your gaze for long.",
		"Basilisks sprawled on the warm stones, like lizards that swallowed a quarry. The worst of them is the stare.",
		"Crystals on the back, stone in the skin, and eyes that hold you a moment too long. I give the basilisks all the room they want.",
	},
	["stv.a.muse.08"] = {
		"Off this coast there are always red sails. The Bloodsail raid the beaches as if they owned them, and Booty Bay pays dearly for saying otherwise.",
		"Pirates camped on the beaches, pirate ships on the water. The Bloodsail Buccaneers want this coast, and they make no secret of it.",
	},
	["stv.a.muse.09"] = {
		"kneels to tighten a boot strap and finds a file of ants already marching across the leather, as if the jungle had sent someone to take measurements.",
		"brushes a leaf from one shoulder and discovers it was not a leaf. It walks off, unhurried, into the ferns.",
	},
	["stv.a.muse.10"] = {
		"Half the names on the map of this jungle have 'Ruins' in them. The trolls must have been everywhere once.",
		"Ruins here, ruins there, a ruin behind that ruin. The troll empire didn't leave much standing, but it left plenty.",
	},
	["stv.a.muse.11"] = {
		"Bloodscalp in the north, Skullsplitter further in. Once they were one empire. Now each tribe hates the other nearly as much as it hates outsiders.",
		"The Gurubashi broke into tribes long ago, and the tribes never stopped fighting over the pieces. The jungle doesn't care which of them wins.",
	},
	["stv.a.muse.12"] = {
		"I'd wager a clerk in Stormwind still lists Kurzen's expedition as on active duty. Nobody wants to be the one who writes down what the jungle did to it.",
		"Stormwind sent soldiers here to deal with the trolls. Some still follow Kurzen, the rest live in tents at the Rebel Camp. The reports home must make grim reading.",
	},
	["stv.a.muse.13"] = {
		"Duskwood lies just north, all hush and gloom. Down here nothing is ever quiet. I can't decide which I'd rather have.",
		"Not far north the trees turn black and still, and Duskwood swallows every sound. Here the jungle shouts from morning to evening. Neither one lets you rest.",
	},
	["stv.a.muse.14"] = {
		"There's a boat from Booty Bay to Ratchet. Good to know this jungle has a back door.",
		"The goblins sail from Booty Bay clear across to Kalimdor. Every trap should have a way out.",
	},
	["stv.a.muse.15"] = {
		"That old Gurubashi arena still draws a crowd. The trolls fought there for glory; now it's anyone with a weapon and an eye on a chest of coin.",
		"An arena in the heart of the jungle, built by trolls, kept going by greed. People still climb in to kill each other for a chest. Some customs outlive empires.",
	},
	["stv.a.npc_meet.01"] = {
		"A gryphon perched over a goblin harbor. Somebody, somewhere, must have lost a bet.",
		"The gryphons here sit with their backs to the jungle. A long flight north, but it beats every step of the walk.",
	},
	["stv.a.npc_meet.02"] = {
		"A bed with a roof over it and the sea right outside. After the jungle, a goblin inn feels like a palace, prices included.",
		"An innkeeper, a stool, a drink that's almost cool. Booty Bay has its faults, but this isn't one of them.",
		"A room, a bed and a roof, and nothing crawling across the pillow. I'd pay goblin prices for that. In fact I'm about to.",
	},
	["stv.a.quest_complete.01"] = {
		"hands over what was asked and flexes fingers gone stiff from the long trek.",
		"takes the reward, counts it once, and tucks it away from the damp.",
		"nods once at the thanks and picks a thorn out of one sleeve.",
	},
	["stv.a.quest_complete.02"] = {
		"Done, and paid. My legs have opinions about this jungle that I'll keep to myself.",
		"Another errand closed. The jungle took its toll in sweat and scratches, and I paid it.",
	},
	["stv.a.quest_complete.03"] = {
		"There. Next time, find someone who likes jungles.",
		"Done. If there's another job, I hope it comes with shade.",
	},
	["stv.a.quest_complete.04"] = {
		"The jungle won't notice what I did today. Someone living in it will.",
		"A small thing done right in a big, careless place. That counts for something.",
	},
	["stv.a.quest_complete.05"] = {
		"The Alliance has few friends this far south. Every job finished here makes it one more.",
		"Down here the Alliance owns a camp of tents and a little goodwill. Today I added to the goodwill.",
	},
	["stv.a.quest_progress.01"] = {
		"A step forward. Not done, but the jungle has given up a little of what it's hiding.",
		"Progress. Slow, sweaty progress, but progress.",
		"More to find yet. Eyes on the ground, and one ear on the ferns.",
	},
	["stv.a.subzone_enter.01"] = {
		"ducks under a low bough heavy with moss and comes up in {subzone}, the jungle no quieter for the change of name.",
		"picks a careful way down a slope of tangled roots into {subzone}.",
		"steps over a fallen trunk furred with fungus, and the trail carries on into {subzone}.",
	},
	["stv.a.subzone_enter.02"] = {
		"Rebel Camp. A few tents, a cookfire, and soldiers who look glad, for a change, to see someone on their side.",
		"Alliance faces at last, and a sentry who nods instead of reaching for steel. For this jungle, that's a warm welcome.",
	},
	["stv.a.victory.01"] = {
		"Down. I lean on my knees and let my heart slow to something like a walk.",
		"Finished. Now to check for cuts before the jungle finds them first.",
		"Over. Every muscle wants to sit, and every log around here has something living under it.",
	},
	["stv.a.victory.02"] = {
		"Well. That settles who goes home hungry.",
		"Lie there and think about your choices.",
		"And that's why you don't jump on strangers in the jungle.",
	},
	["stv.a.victory.03"] = {
		"steps back and wipes both hands on a broad leaf, the one thing this jungle never runs short of.",
		"lets out a long breath and watches a pair of bright birds settle on a branch nearby, quite unconcerned.",
	},
	["stv.a.victory.04"] = {
		"Under the jungle rot, that was a Stormwind soldier once. I hope whoever sent him here never learns how he ended.",
		"One of Kurzen's men. He came to this jungle wearing our colors. The jungle, or the colonel, made him into something else.",
	},
	["stv.a.victory.05"] = {
		"Tell your foreman the contract's cancelled.",
		"The Venture Co. can send me the bill for that one.",
	},
	["stv.a.weather_change.01"] = {
		"turns {g:his|her} face up to the rain sheeting off the high leaves, warm as soup and no help at all against the heat.",
		"stands under a broad leaf as the rain comes pouring through the canopy, and the whole jungle hisses like a kettle.",
	},
]==])
