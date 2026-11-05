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
]==])
