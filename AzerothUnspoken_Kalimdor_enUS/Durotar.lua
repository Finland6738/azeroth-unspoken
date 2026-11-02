-- English texts of the regional pack kalimdor_durotar (#102). The rules are in AzerothUnspoken_Kalimdor/Durotar.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("durotar", "enUS", "kalimdor_durotar", [==[
	["dur.battle.blade.01"] = {
		"Cultist! Your masters won't save you.",
		"You sold your people to demons. Time to pay.",
		"Put out that fire, cultist. I'll help.",
	},
	["dur.battle.boar.01"] = {
		"plants both feet in the dust as the boar lowers its tusks and charges.",
		"squares up to the snorting beast, eyes on the tusks.",
		"braces for the boar's charge, dust flying.",
	},
	["dur.battle.familiar.01"] = {
		"An imp. A small one. Somehow that's worse.",
		"Back to whatever pit you crawled out of!",
		"Little fire-licker. Hold still.",
	},
	["dur.battle.harpy.01"] = {
		"Harpy! Above us!",
		"Down from the sky, then. Let's see how you like the ground.",
		"Cover your face. They go for the eyes.",
	},
	["dur.battle.kolkar.01"] = {
		"Centaur! Get to the rocks!",
		"Let it charge. It has to stop sometime.",
		"Watch the hooves!",
	},
	["dur.battle.kultiras.01"] = {
		"Kul Tirans! You're a long way from your sea.",
		"Off this coast, sailor! Back to the sea!",
		"Steel and sea salt. Come on, then.",
	},
	["dur.battle.lizard.01"] = {
		"feels the ground shake as the great beast turns, crackling, to face the threat.",
		"sets both feet as the lizard's hide begins to spark.",
		"watches the heavy tail of the beast swing back for a blow.",
	},
	["dur.battle.razormane.01"] = {
		"Back to your thorns, pig-face!",
		"Razormane! Keep them off the road!",
		"Bristles and spears. Come on, then.",
	},
	["dur.battle.scorpid.01"] = {
		"Watch the tail!",
		"Mind the stinger. Crack the shell.",
		"Another scorpid. Of course.",
	},
	["dur.battle.tiger.01"] = {
		"Big cat! Don't run, it loves a chase.",
		"Stripes in the brush. Steady, beast.",
		"Easy, kitty. Easy.",
	},
	["dur.battle.water.01"] = {
		"Claws and teeth. The water's full of them.",
		"Out of the water, are you? Bad idea.",
		"Keep away from the water's edge!",
	},
	["dur.dawn.01"] = {
		"shivers in the last of the cold as the sun lifts out of the sea to the east.",
		"watches the first light run along the ridges, turning the rock from gray to red in a few breaths.",
		"pauses as dawn kindles the red hills one by one, like a row of hearths lit by an unseen hand.",
	},
	["dur.dawn.02"] = {
		"First sun on Durotar. Best hour of the day: everything is still cool enough to touch.",
		"Sunrise over the sea. Even the scorpids stop to look, I'd swear.",
		"Dawn, and the rock's still cold. Move now, before the sun turns it into an oven.",
	},
	["dur.death.01"] = {
		"sinks to the hard red earth; a scorpid skitters away from the outstretched hand.",
		"falls face down in the red dust, which settles over the body without a sound.",
		"collapses on the bare red earth, and the wind begins at once, patiently, to cover the tracks with dust.",
	},
	["dur.death.02"] = {
		"So this is how Durotar says no.",
		"The stone wins. This time.",
		"Dust in my mouth, a hot stone under my cheek, then nothing.",
	},
	["dur.death.03"] = {
		"Bury me facing the sea.",
		"Not like this... not in the dirt.",
		"Remember... I didn't run.",
	},
	["dur.dusk.01"] = {
		"watches the red rock glow like an ember as the sun goes down behind the river.",
		"pauses as the ridges stretch long dark fingers across the flats and the heat of the sun begins to ebb.",
		"lingers while dusk pours copper over the hills, and the first cook fires of the camps answer it.",
	},
	["dur.dusk.02"] = {
		"Sunset over the Barrens, and Durotar turns the color of a forge. Almost pretty enough to forgive the day.",
		"The heat's leaving. The things that hunt in the cool are waking up.",
		"Day's done. Time to find a fire and a wall to put my back against.",
	},
	["dur.farewell.01"] = {
		"Keep your waterskin full on the road.",
		"May your road be short and your water last.",
		"Don't let the road swallow you, or the dust.",
	},
	["dur.farewell.02"] = {
		"Until the red road crosses ours again.",
		"Strong walls and full bellies to you.",
		"Go well. Durotar will still be here.",
	},
	["dur.greet.01"] = {
		"Water and shade to you.",
		"Good dust on your boots, and a short road.",
		"Greetings, under a hard sky.",
	},
	["dur.greet.02"] = {
		"Dusty enough for you?",
		"Mind the scorpids. Hello, by the way.",
		"Hello. Watch your step, the ground bites here.",
	},
	["dur.jest.01"] = {
		"In Durotar, even the cactus fruit fights back.",
		"They say the scorpids here are friendly. They say a lot of things.",
		"Durotar has two seasons: hot, and also hot.",
	},
	["dur.jest.02"] = {
		"I asked a guard for directions. The guard pointed at a rock. Somehow, that was right.",
		"Red dust is the local seasoning. It's in everything.",
		"Why does everything here have spikes? So the scorpids feel at home in the dust.",
	},
	["dur.levelup.01"] = {
		"I'm getting the hang of this. The boars are starting to look smaller.",
		"Stronger. This land is teaching me, one bruise at a time.",
		"A little more ready. Not ready. A little more.",
	},
	["dur.levelup.02"] = {
		"Harder than the stone. Well, nearly.",
		"Durotar hasn't broken me. It's sharpened me on its stones.",
		"One more notch on the spear, and the stone didn't win.",
	},
	["dur.lm.razorhill.01"] = {
		"looks up at the watchtower over {landmark}, where a guard leans on a spear and watches the road.",
		"passes under the spiked palisade; somewhere inside, a hammer rings on an anvil and smoke drifts from the forge.",
		"walks into the dust of the village, among spiked walls, smoke and the smell of cooking meat.",
	},
	["dur.lm.razorhill.02"] = {
		"{landmark}. Walls, a forge, an inn. Out here, that's practically a city.",
		"Smoke from the smithy, voices from the inn. Somewhere to catch my breath.",
		"The guards on the wall nod as I pass. A small thing. It lands somewhere warm.",
	},
	["dur.lm.razorhill.03"] = {
		"{landmark}. They don't name things gently around here.",
		"Every post on that wall is sharpened. Even the friendly ones.",
		"Nice place. Best not lean on anything.",
	},
	["dur.lm.razorhill.04"] = {
		"An orc town with spikes on every wall. I'll keep my business short.",
		"{landmark}. The guards' eyes follow me like a slow arrow.",
		"No inn for me here. Just the road out, and quickly.",
	},
	["dur.lm.senjin.01"] = {
		"walks among the thatched huts of {landmark}, where fishing nets dry in the salt wind off the sea.",
		"steps around a cluster of fetishes and bundled herbs swinging in the sea wind outside a hut.",
		"listens to the sea beyond the huts and the low, rolling talk of the trolls.",
	},
	["dur.lm.senjin.02"] = {
		"The trolls here keep looking out to sea. Toward the isles they lost, I'd guess.",
		"{landmark}. A village built by people who had to leave home in a hurry. It shows, and it doesn't.",
		"Fish on the racks, crabs in the sand, and something old and sore in the way they watch the sea.",
	},
	["dur.lm.senjin.03"] = {
		"{landmark}. Not the isles, but the fire's warm and the faces are ours.",
		"Good to hear our own tongue spoken out loud, and nobody minding.",
		"Our tribe's ground. Here I can put my back to a wall and sleep.",
	},
	["dur.lm.senjin.04"] = {
		"The trolls are friendly enough, once you get used to the tusks. And the stares.",
		"Something's always simmering in a pot here. I've decided not to ask what.",
		"{landmark}. Salt air, smoke, and somebody laughing at a joke I'll never understand.",
	},
	["dur.lm.valley.01"] = {
		"looks over the dusty valley where new recruits are put to the test: boars in the brush, scorpids on the rocks, smoke from a cave.",
		"watches a pair of fresh recruits argue over a boar's carcass while an old orc pretends not to listen.",
		"walks the valley's dusty paths, where many a fighter took a first clumsy swing.",
	},
	["dur.lm.valley.02"] = {
		"{landmark}. Everyone starts somewhere. Mine, apparently, is full of scorpids.",
		"Prove yourself here, they said. To whom? The boars don't seem impressed.",
		"Every name the Horde remembers once walked a valley like this, with clumsy hands and a dull blade.",
	},
	["dur.lm.valley.03"] = {
		"So this is where it starts. Fine. Let's begin.",
		"First trial, first scar. Let's get on with it.",
		"The valley wants proof. It'll get some.",
	},
	["dur.lm.valley.04"] = {
		"The recruits look so young, swinging at boars as if the whole world were watching.",
		"Boars and scorpids. It's almost restful, after what's out there.",
		"{landmark}. A good place to be new. Not such a good place to be bored.",
	},
	["dur.lore.razorhill.saying.01"] = {
		"A saying the guards trade along the walls of Razor Hill:\nWater first and boasting after,\nshade by day and blade kept bright;\nscorpids never share your laughter:\nshake your boots out, left and right.",
		"Another the guards repeat, mostly to newcomers:\nCount the ridge before you cross it,\nmind the wind and mind the spear;\nif you drop your blade, you've lost it:\nnothing comes back easy here.",
	},
	["dur.lore.senjin.song.01"] = {
		"A net-mender at the water's edge sings low, to no one in particular:\nThe isles lie close enough to swim,\nand far as any shore can be;\nwe mend our nets along the rim\nand keep a fire toward the sea.",
		"Another verse heard by the nets, taken up by a second voice:\nThe salt is in the mended rope,\nthe smoke is in the drying fish;\nwe lost the isles, but not the hope,\nand every tide repeats the wish.",
	},
	["dur.lowhp.01"] = {
		"The red dust is coming up to meet me. Not yet.",
		"Too dry, too tired, too many teeth. Hold on.",
		"Not here. Not face down in the dust like this.",
	},
	["dur.lowhp.02"] = {
		"Is that all, {target}? I've had worse sunburns.",
		"Durotar grinds the weak to dust. Not today.",
		"It hurts. It isn't over.",
	},
	["dur.muse.alliance.01"] = {
		"No friendly roof for a hundred miles. Just red rock and people who'd rather I left.",
		"Every patrol on this road wears the wrong colors, as far as I'm concerned. And I wear the wrong ones for them.",
		"Keep moving, keep quiet. Durotar isn't the place to make friends, not in my colors.",
	},
	["dur.muse.barrens.01"] = {
		"Past the river, the land goes yellow and flat and runs on forever. A different kind of thirsty.",
		"Beyond the river the Barrens wait, Durotar's big, dry neighbor.",
		"Funny how one river can split red from gold so cleanly.",
	},
	["dur.muse.day.01"] = {
		"Hot enough to fry an egg on my helmet. If I had an egg. Or a helmet that wasn't already this hot.",
		"The sun out here doesn't shine. It leans on you.",
		"Find some cover from the sun and wait it out. The scorpids have the right idea.",
	},
	["dur.muse.deadeye.01"] = {
		"Out past the breakers there's nothing but sea until the world ends. Or until Kul Tiras, whichever comes first.",
		"The tide leaves little treasures in the sand: shells, driftwood, a makrura claw as long as my arm.",
		"Salt on my lips, sand in my boots. The coast has its own idea of comfort.",
	},
	["dur.muse.dust.01"] = {
		"There's red dust in my teeth. I'm told that's how you know you're local.",
		"I'll be finding this dust in my pack for weeks.",
		"Red dust on my boots, on my hands, in my bread. This land likes to leave a mark.",
	},
	["dur.muse.heat.01"] = {
		"The rock here holds heat like a grudge: long after, and without forgiving.",
		"My waterskin is lighter than I'd like. In Durotar, it always is.",
		"Every stone I touch is warm. This land never quite cools off.",
	},
	["dur.muse.home.01"] = {
		"Any fool can farm good soil. It takes a people to make this earth feed them.",
		"Nobody else wanted this land. We did.",
		"Poor earth, proud people. I've seen worse trades.",
	},
	["dur.muse.home.02"] = {
		"The elders say the camps had walls on every side, and chains inside them. Here the walls are ours, and the doors open outward.",
		"Lean boars, stubborn gardens, cactus fruit. Nobody here grows fat, and nobody here wears chains.",
		"Sometimes I think about how little this land had to give. Then I think about how much we made it give.",
	},
	["dur.muse.night.01"] = {
		"The stars over Durotar are sharp as broken glass tonight.",
		"At night the canyons fill with small sounds: claws, wings, something digging.",
		"The heat finally lets go in the night, and the whole land seems to breathe out under the stars.",
	},
	["dur.muse.razorhill.01"] = {
		"That smith hasn't stopped hammering since I got here. I respect that.",
		"Every guard here looks like they were carved from the hill itself.",
		"Fortified, dusty, loud. My kind of town.",
	},
	["dur.muse.redrock.01"] = {
		"brushes red grit from a sleeve with one hand, which only spreads it further.",
		"runs a hand along a rust-red boulder; the color comes away on the fingers like dry paint.",
		"lays a hand on the layered cliff, bands of rust and ochre stone stacked like the pages of a closed book.",
	},
	["dur.muse.roadnorth.01"] = {
		"Dust, ruts, the odd wolf rider passing at a trot. Every road here ends at the great gate.",
		"The road north to Orgrimmar never seems to end, and never quite lets you forget where it goes.",
		"Northward the road climbs toward the city in the canyon, and every traveler on it carries a little red dust to its gates.",
	},
	["dur.muse.sand.01"] = {
		"Sand in my ears, sand in my collar. The wind has decided I'm part of the landscape.",
		"Can't see the ridge anymore. Just red air, wind, and the hiss of sand.",
		"The sandstorm will pass. Everything here passes, sooner or later, except the rock.",
	},
	["dur.muse.scorpid.01"] = {
		"Never sit on a flat stone without looking under it first.",
		"I've counted nine scorpids since the last bend. I've stopped counting.",
		"The scorpids here are the color of the stone. That's not an accident, and it's not friendly.",
	},
	["dur.muse.seawind.01"] = {
		"A breath of wind off the sea, salt and cool. Durotar's one apology.",
		"The east wind smells of salt. Somewhere out there, the sea is doing all the moving for me.",
		"When the wind turns and comes off the sea, even the scorpids seem to slow down and enjoy it.",
	},
	["dur.muse.senjin.01"] = {
		"From the beach the isles look close enough to swim to. I doubt anyone here thinks the sea is that simple.",
		"The trolls hang charms on the doorposts that face the sea. Against what, I haven't asked.",
		"Waves, gulls, someone mending a net by the sea and humming. A quiet I didn't expect in Durotar.",
	},
	["dur.muse.southfury.01"] = {
		"watches a crocolisk slide off the riverbank and vanish into the water without a ripple.",
		"skims a flat stone across the river; it skips four times before the current takes it.",
		"sits a moment on a rock by the water, listening to the river talk to itself.",
	},
	["dur.muse.thorns.01"] = {
		"Everything that grows here has thorns. Can't say I blame it.",
		"A single flower on a cactus, red as the rock. Stubborn little thing.",
		"The scrub bends in the wind and comes right back. There's a lesson there, if I wanted one.",
	},
	["dur.muse.tiger.01"] = {
		"spots a striped beast lying flat along a ledge, its tail twitching, its eyes half closed.",
		"notes paw prints in the dust, broad and fresh, heading the same way as the trail.",
		"hears a low cough from the brush, the kind a big cat makes when it is not hungry yet.",
	},
	["dur.muse.valley.01"] = {
		"My arms ache, my boots are full of sand, and I've never felt more awake.",
		"Another boar, another lesson. The boars are better teachers than they look.",
		"One day this valley will be a story I tell. Right now it's mostly bruises.",
	},
	["dur.npc.guard.01"] = {
		"A guard with a scar for every year of the wars. One nod. From them, that's a lot.",
		"The guard looks me over the way a smith looks over a blade.",
		"Spear, scowl, spiked shoulders. The Durotar welcome.",
	},
	["dur.npc.innkeeper.01"] = {
		"nods toward the counter, where a hand is already reaching for a mug.",
		"catches a look from behind the counter, across the smoky room.",
		"leans on the counter, wiped clean of red dust for the hundredth time today.",
	},
	["dur.npc.merchant.01"] = {
		"Everything for sale here is dusted red. I suppose that's the local style.",
		"Waterskins, rope, salted meat. Someone who knows what Durotar takes from people.",
		"The prices are as dry as the land. So is the smile.",
	},
	["dur.npc.questgiver.01"] = {
		"Trouble on the road? Tell me where.",
		"You look like someone with a problem and no one to send.",
		"Scorpids, quillboar, or cultists? Let me guess.",
	},
	["dur.npc.trainer.01"] = {
		"Hands like those learned the hard way. Good. I'll listen.",
		"Every lesson here comes with a bruise and, sooner or later, a scar. Fair enough.",
		"Old scars, steady voice. This one's worth the coin.",
	},
	["dur.npcd.guard.danger.01"] = {
		"Scorpids in the rocks, quillboar in the brush, centaurs on the high ground. Pick your poison.",
		"Stay on the road. What's off it bites.",
		"Watch the coast road. The Kul Tirans don't stay behind their walls.",
	},
	["dur.npcd.guard.danger.02"] = {
		"The caves up north reek of demon work. Don't go in without company.",
		"If you hear chanting from a cave, walk the other way. Or bring friends.",
		"The cultists wear the same faces we do. That's what makes them dangerous.",
	},
	["dur.npcd.guard.danger.03"] = {
		"Harpies in the ravine. Lizards on the ridge. Use your head.",
		"Danger? It's Durotar. Everything's danger.",
		"Drink water. Watch the sky. Don't pet the tigers.",
	},
	["dur.npcd.guard.dir.01"] = {
		"Orgrimmar's at the north end of the road. You can't miss the gate.",
		"Razor Hill sits on the main road in the middle of Durotar. Look for the tower.",
		"Sen'jin is down on the southern coast, past the road to the valley. Follow the smell of fish.",
	},
	["dur.npcd.guard.dir.02"] = {
		"The river's our western edge. Cross it and you're in the Barrens.",
		"Want the coast? Head east till your boots get wet.",
		"The Valley of Trials is in the south, between the river and Sen'jin. That's where the young ones are tested.",
	},
	["dur.npcd.guard.dir.03"] = {
		"North for the city. South for the trolls. East for trouble.",
		"The road's that way. Stay on it.",
		"Not sure where to go? Follow the road. It goes everywhere worth going.",
	},
	["dur.npcd.inn.news.01"] = {
		"The guards say the Razormane are getting bold near the road. Keep your eyes open.",
		"Word is the Kolkar have been raiding again, out toward the river road.",
		"A caravan came in off the river road yesterday. Two wagons short.",
	},
	["dur.npcd.inn.news.02"] = {
		"Folk whisper that the cultists at Skull Rock are getting bolder. I don't go north after dark.",
		"Somebody saw lights in the caves up by Orgrimmar's gate. Nobody went to look.",
		"The Burning Blade still has friends, they say. Hard to tell who, and that's the trouble.",
	},
	["dur.npcd.inn.news.03"] = {
		"The Kul Tirans at the keep have been sending patrols up the beach. Nobody's sure what for.",
		"The fishers at Sen'jin say they won't go near the isles anymore. Not even for the good catch.",
		"Harpies carried off a whole string of drying fish from the shore last week. Bold as anything.",
	},
	["dur.npcd.inn.open.01"] = {
		"Come in, shake the dust off. Not on the floor. Outside.",
		"Sit. Water first, then we talk about ale.",
		"You look like Durotar chewed you up and spat out the dust. Sit, eat.",
	},
	["dur.npcd.inn.open.02"] = {
		"Fire's lit, stew's hot, and nobody bothers you in here.",
		"Make yourself comfortable. The scorpids stay outside; the rest of us manage.",
		"A bench, a bowl and four walls. The best Durotar has to offer.",
	},
	["dur.npcd.merchant.news.01"] = {
		"Water's dear this week. Everyone wants it, nobody wants to carry it.",
		"Scorpid shells are fetching a fair price. If you find whole ones, bring them.",
		"Trade with Orgrimmar has been slow. The caravans don't like the Razormane.",
	},
	["dur.npcd.merchant.news.02"] = {
		"Sen'jin fish, salted and fresh enough. Well. Salted.",
		"The trolls trade good charms, if you don't ask what's in them.",
		"Heard the Kul Tirans pay in good silver. Not that I'd know.",
	},
	["dur.pray.01"] = {
		"Spirits of earth and wind, keep this dry land standing.",
		"Ancestors, walk the road with me, and keep the sky clear above it.",
		"Earth beneath, sky above: hold steady, and I will too.",
	},
	["dur.quest.01"] = {
		"Done. Someone in Durotar will sleep a little easier.",
		"Another task off the list. Durotar has plenty more where that came from.",
		"Done, and the dust hasn't even settled.",
	},
	["dur.quest.02"] = {
		"hands over the proof of the work and brushes red grit off both palms.",
		"answers the nod of thanks with a nod and a raised hand.",
		"tucks away the reward with a dusty hand and glances out at the red hills.",
	},
	["dur.rest.razorhill.01"] = {
		"An inn with thick walls and a cook who doesn't ask questions. Good.",
		"A bench, a roof, something hot in a bowl. {landmark} has its comforts.",
		"Boots off. Well, one boot. Let's not get careless.",
	},
	["dur.rest.razorhill.02"] = {
		"sinks onto a bench by the fire and lets the noise of the inn wash over everything.",
		"drops the pack by the hearth and stretches until the back cracks.",
		"settles near the hearth fire, where the smell of roasting boar fills the air.",
	},
	["dur.rest.senjin.01"] = {
		"Rest among the trolls, with the sea for a lullaby.",
		"A mat by the fire, the sea close by, someone humming. I could stay a while.",
		"{landmark}. The trolls don't fuss over guests. They just shift over and make room.",
	},
	["dur.ret.death.01"] = {
		"Last time this red ground was the last thing I saw. I'll watch my footing.",
		"I fell here. The dust keeps no mark of it, but I do.",
		"This land took me down once and gave me back. I walk it now as one walks past a dog that has bitten before.",
	},
	["dur.ret.death.02"] = {
		"slows at the edge of the trail where things went wrong last time, and does not look away.",
		"passes in silence the stretch of road where the last fall came, jaw set.",
		"touches the hilt once, lightly, on the stretch of road where it all ended before.",
	},
	["dur.ret.flight.01"] = {
		"Last time I ran from this place. Not today.",
		"I left here at a sprint. This time I walk.",
		"Durotar sent me packing once. Let's try that again.",
	},
	["dur.ret.light.01"] = {
		"Back in the red dust. My boots remember the way even if I don't.",
		"Durotar again. Same scorpids, I'd swear. They look pleased to see me.",
		"Here once more. The rocks haven't moved. Somehow that's comforting.",
	},
	["dur.ret.light.02"] = {
		"Durotar, I've missed you. Not much, but some.",
		"Hello again, rocks. Still red, I see.",
		"Back again. The dust gets in, and it never quite gets out.",
	},
	["dur.ret.light.03"] = {
		"takes the familiar fork in the trail without slowing, as if the road itself remembered.",
		"nods at a boulder by the path, the way one greets an old acquaintance.",
		"walks the red trail again with an easier stride than the first time.",
	},
	["dur.ret.long.01"] = {
		"It's been a while. The red dust smells the same, and so does the scrub.",
		"Weeks away, and still these hills fit my eyes like an old pair of boots.",
		"Long have I been away; the land has not missed me, but it has not forgotten the shape of my steps either.",
	},
	["dur.ret.long.02"] = {
		"looks over the red hills for a long moment, noting what has changed and what never will.",
		"searches the horizon for the familiar landmarks, finding them one by one.",
		"pauses at the trailhead, as if the long absence needed a moment to settle.",
	},
	["dur.rez.01"] = {
		"draws a ragged breath, spits out red dust, and stands.",
		"rises from the dust, shaking it from hair and gear, and looks around with care.",
		"comes back to the world coughing dust, the light hard on the eyes.",
	},
	["dur.rez.02"] = {
		"Up again. Durotar didn't want me after all.",
		"Still here. The scorpids will be disappointed.",
		"Breathe. Count the fingers. Walk.",
	},
	["dur.rez.03"] = {
		"The spirits sent me back. I won't waste it.",
		"Not done yet. The land will have to wait for me.",
		"Up. Once more. Let's finish this.",
	},
	["dur.sub.bladefist.01"] = {
		"looks out over the bay, where the red cliffs drop straight into the green sea.",
		"picks a way down the rocks toward the bay, gulls wheeling and complaining overhead.",
		"pauses on the cliff path above the bay as the sea booms in the hollows of the rock below.",
	},
	["dur.sub.bladefist.02"] = {
		"{subzone}. Even the wind off the sea sounds tired of the rocks.",
		"Somewhere beyond all that water there are other shores. Not my concern today.",
		"The sea keeps coming at the cliffs, patient as a mason.",
	},
	["dur.sub.bladefist.03"] = {
		"Nice bay. Pity everything in it has claws.",
		"If I fall off this cliff, tell them I was admiring the view.",
		"Smell that sea air. Now smell the makrura. Ruins it, doesn't it?",
	},
	["dur.sub.coven.01"] = {
		"ducks into the cave mouth; the air inside is hot and thick, and smells of scorched hair and old fire.",
		"pauses as the tunnel widens; small, giggling shapes skitter at the edge of the firelight.",
		"follows the cave deeper, past scratched symbols on the walls that hurt a little to look at.",
	},
	["dur.sub.coven.02"] = {
		"A coven of the Burning Blade, right under the valley where the young are tested. Bold.",
		"Imps everywhere. Somebody down here is calling them up by the handful.",
		"{subzone}. The walls sweat. I don't think it's from the heat.",
	},
	["dur.sub.coven.03"] = {
		"Stay close. The little ones bite, the big ones cast.",
		"Whatever leads this cult, it's deeper in. Keep going.",
		"Mind the fire. And the imps. Mostly the imps.",
	},
	["dur.sub.deadeye.01"] = {
		"walks the hard sand of the shore, where the surf hisses over red pebbles.",
		"stops at the tide line in the wet sand; small claws click among the rocks, and something larger answers.",
		"breathes in the salt wind off the sea, the first cool air in miles.",
	},
	["dur.sub.deadeye.02"] = {
		"Makrura. Crabs with opinions. And spears.",
		"{subzone}. Lovely beach, if you don't mind being pinched within an inch of your life.",
		"The sea is beautiful. The things climbing out of it, less so.",
	},
	["dur.sub.deadeye.03"] = {
		"Keep off the wet rocks by the sea. The crab-men wait for someone to slip.",
		"Watch what the sea brings in with the tide.",
		"Shell's hard. Go for the joints.",
	},
	["dur.sub.drygulch.01"] = {
		"follows the ravine's dry bed, where shed feathers lie caught among the stones.",
		"looks up at the ledges of the ravine; something winged shifts there and screeches.",
		"picks a careful path between the boulders of the dry gulch, ears full of distant shrieks.",
	},
	["dur.sub.drygulch.02"] = {
		"Harpies. Half woman, half vulture, all bad manners.",
		"{subzone}. The smell arrives before the harpies do. Small mercies.",
		"Nests up on the ledges, bones down in the gulch. Easy to guess the menu.",
	},
	["dur.sub.drygulch.03"] = {
		"Keep your head down and your eyes up. They come from the sky.",
		"Watch the ledges. Harpies love a target that forgets the sky.",
		"If it screams and has wings, hit it first.",
	},
	["dur.sub.dustwind.01"] = {
		"steps into the cave out of the wind; the floor crunches with small bones and broken eggshell.",
		"pauses just inside the cave mouth as a shriek echoes along the rock, then another.",
		"covers mouth and nose against the stench of the harpies' roost, bones and feathers underfoot.",
	},
	["dur.sub.dustwind.02"] = {
		"{subzone}. Harpies indoors. As if the outdoor kind weren't enough.",
		"Feathers, droppings, bones. Interior decorating, harpy style.",
		"The echoes make it sound like a hundred of them. I hope it's just the echoes.",
	},
	["dur.sub.dustwind.03"] = {
		"In we go. Backs to the wall, weapons out.",
		"Their nest, their rules. Let's break both.",
		"Tight quarters. Good. They can't swoop in here.",
	},
	["dur.sub.echo.01"] = {
		"{subzone}. Palm trees, warm water, and something wrong in the way the trolls here move.",
		"The trolls on these isles stare without seeing. Something has hold of them.",
		"Pretty, from a distance. Up close, every hut seems to be watching me.",
	},
	["dur.sub.echo.02"] = {
		"stands on the wet sand of the isles, listening to a silence that is not peaceful.",
		"sets foot on the damp sand; somewhere among the huts, a voice mutters and does not stop.",
		"looks back across the strait toward the mainland, then ahead at the hexed village.",
	},
	["dur.sub.echo.03"] = {
		"These isles were ours. They will be again.",
		"Our home, and look what walks in it now.",
		"I know these beaches. I don't know the eyes looking out from them anymore.",
	},
	["dur.sub.kolkar.01"] = {
		"hears hooves on stone somewhere above the crag, then a harsh call answered by another.",
		"picks out the centaurs' camp on the high rock: hide tents, a smoking fire, a lookout pacing in the dust.",
		"keeps clear of the open ground below the crag, where hoofprints churn the red dust.",
	},
	["dur.sub.kolkar.02"] = {
		"Centaurs. Faster than me on open ground, and they know it.",
		"{subzone}. The Kolkar watch the trail the way hawks watch a field mouse.",
		"If they come at a gallop, I want a rock at my back. That one will do.",
	},
	["dur.sub.kolkar.03"] = {
		"Half horse, half bad temper. Keep moving.",
		"Centaurs. Nobody ever tells you how loud they are.",
		"I'd race them, but I'd like to keep my dignity.",
	},
	["dur.sub.razormane.01"] = {
		"screws up the face at the reek of the quillboar camp: wet bristle, smoke and old bones.",
		"steps around a tangle of thorny brambles the quillboar have dragged into a crude wall, smoke rising behind it.",
		"watches the huts of hide and thorn from a safe distance, where snouts and spears move in and out of the smoke.",
	},
	["dur.sub.razormane.02"] = {
		"Quillboar. They look like someone stuffed a boar into a pincushion and taught it to hold a spear.",
		"{subzone}. Thorns on the huts, thorns on the boars. They do have a style.",
		"They grunt, they squeal, and they mean every word of it.",
	},
	["dur.sub.razormane.03"] = {
		"Watch the tusks. And the spears. Mostly the spears.",
		"Too close to Razor Hill, this lot. The guards must love the smell.",
		"Smell that? That's quillboar. Breathe through your mouth.",
	},
	["dur.sub.skull.01"] = {
		"looks up at the great skull-shaped rock; firelight flickers in the caves beneath it.",
		"catches a whiff of sulfur from the cave mouths under the rock and wrinkles the nose.",
		"stops below the rock where the stone grins like a bleached skull, and hears chanting from within.",
	},
	["dur.sub.skull.02"] = {
		"Orcs who still bow to demons, right at Orgrimmar's door. Some lessons don't take.",
		"The Burning Blade. They kept the old poison and called it strength, and the old chains with it.",
		"{subzone}. A cult in a cave, chanting to the same things that once chained a whole people.",
	},
	["dur.sub.skull.03"] = {
		"Smoke out the cultists, and we all breathe easier.",
		"Whatever they're summoning down there, it doesn't get to stay.",
		"Fel fire under a skull of stone. Subtle, these people.",
	},
	["dur.sub.southfury.01"] = {
		"kneels at the river's edge and splashes the cold water over face and neck.",
		"watches the broad river slide past, brown and quick, the dry plains waiting on the far bank.",
		"stops among the reeds of the watershed, where the red rock finally gives way to green beside the water.",
	},
	["dur.sub.southfury.02"] = {
		"Across the river, the Barrens. Flat as a table and twice as wide.",
		"{subzone}. The river is the only thing in Durotar that seems in a hurry.",
		"Green on the riverbanks, at last. My eyes needed that.",
	},
	["dur.sub.southfury.03"] = {
		"Fresh water! Fill every skin we've got.",
		"Mind the crocolisks. The water isn't as friendly as it looks.",
		"I could stand here all day just listening to the water.",
	},
	["dur.sub.thunder.01"] = {
		"feels a low rumble through the soles of the boots: something heavy is grazing nearby.",
		"watches a great lizard shoulder its way along the ridge, the air crackling faintly around its hide.",
		"smells something sharp on the wind, like the air after a lightning strike.",
	},
	["dur.sub.thunder.02"] = {
		"Lizards the size of wagons, and they spark when they're cross. Durotar does nothing by halves.",
		"My hair's standing on end. Either it's the lizards, or I should start running.",
		"{subzone}. You hear them before you see them. You feel them before you hear them.",
	},
	["dur.sub.thunder.03"] = {
		"Mind the big ones. They don't stop, they just walk through you.",
		"Hide's tough as boot leather. Aim for the soft bits.",
		"Keep off the skyline. Those things can see you from a mile off.",
	},
	["dur.sub.tiragarde.01"] = {
		"A stone keep flying Kul Tiran colors on the orcs' own coast. Someone has nerve.",
		"{subzone}. Humans built a little piece of home here, walls and all. Brave, or very stubborn.",
		"Proper masonry. In Durotar. It looks as lost as a fish on a hot stone.",
	},
	["dur.sub.tiragarde.02"] = {
		"studies the gray stone walls of the keep, counting the sentries on the battlements.",
		"crouches under the keep's stone wall, where the sea wind carries the sound of human voices.",
		"eyes the heavy gate of the keep; somebody inside is shouting orders in a clipped, sea-weathered voice.",
	},
	["dur.sub.tiragarde.03"] = {
		"Kul Tirans, on our shore. They picked the wrong beach.",
		"That keep has stood long enough. Let's see how it likes visitors.",
		"Their walls are thick. Our patience is thicker.",
	},
	["dur.thanks.01"] = {
		"Thanks. Out here, a kindness is worth more than water. Almost.",
		"My thanks. In a land this dry, I won't forget a drop of water given.",
		"That's a debt, like water shared in the dust. I pay mine.",
	},
	["dur.threat.01"] = {
		"Leave now, or Durotar gets one more pile of bones.",
		"The vultures here are always hungry. Don't feed them your bones.",
		"Walk away. This land has buried tougher than you, bones and all.",
	},
	["dur.toast.01"] = {
		"To the red land, which gives us nothing and gets everything from us!",
		"To water, shade, and walls. In that order.",
		"Drink deep. In Durotar you never know when the next cup comes, or the next drop of water.",
	},
	["dur.travel.01"] = {
		"turns the hearthstone over; red dust has worked even into its carvings.",
		"blows red dust off the stone before closing a hand around it.",
		"holds the warming stone and takes one last look at the red hills.",
	},
	["dur.travel.02"] = {
		"Home, then. Wherever the hearth is lit.",
		"The stone knows the way to the hearth. It always does.",
		"Off we go. The dust can come along.",
	},
	["dur.victory.01"] = {
		"Durotar keeps what it can hold. So do I.",
		"Down. The red earth can have it.",
		"Another one for the vultures and the earth.",
	},
	["dur.victory.02"] = {
		"wipes red dust and sweat from the brow, breathing hard, and checks the trail for more.",
		"lowers the weapon slowly, catching a breath in the dry air.",
		"straightens, shaking red dust from the gear, still short of breath.",
	},
	["dur.victory.03"] = {
		"That's one less thing in Durotar that wants to sting me. Several thousand to go.",
		"I'd celebrate, but I need water first.",
		"Good. Now for some cover and a swallow of water.",
	},
	["dur.victory.04"] = {
		"Dry air makes every fight twice as long. My arms know it.",
		"Still standing. The rock is rough under my hand as I lean on it.",
		"Breathe. Drink. Look around. In that order.",
	},
	["dur.victory.05"] = {
		"glances at the vultures already circling, and nods to them as to colleagues.",
		"shakes out a boot, just in case, before taking another step.",
		"brushes off the dust of the fight, which only makes room for more dust.",
	},
	["dur.victory.blade.01"] = {
		"One less voice calling demons into this land.",
		"Your masters didn't come. They never do.",
		"That cult's blade is a little duller now.",
	},
	["dur.victory.harpy.01"] = {
		"Feathers everywhere. I'll be picking them out of my hair for days.",
		"Grounded at last, bird.",
		"That's one less screech on the wind. The birds can thank me.",
	},
	["dur.victory.horde.01"] = {
		"One more pest off Durotar's back.",
		"That's how we keep this land: one fight at a time.",
		"The Horde's land stays the Horde's.",
	},
	["dur.victory.kultiras.01"] = {
		"A soldier far from the sea that raised them. Whatever orders brought them here are done with them now.",
		"Salt-stained armor, a Kul Tiran crest. Someone across the sea will wait a long time.",
		"They fought well. Stone walls and stubbornness, so far from their own sea: I know the type.",
	},
	["dur.victory.scorpid.01"] = {
		"Scorpid shell. Makes a decent bowl, they say, if you get the stink out.",
		"The stinger's still twitching. I'll step around it.",
		"Crunchy.",
	},
	["dur.wc.clear.01"] = {
		"The dust settles and the ridges come back, sharp and red, as if nothing had happened.",
		"Clear sky again. I can see all the way to the next thing that wants to sting me.",
		"The wind drops and the dust with it. The sky over Durotar is wide and empty and very blue.",
	},
	["dur.wc.rain.01"] = {
		"Rain! Smell that: wet stone and dust, all at once.",
		"The rain hits the hot stone and steams. Durotar doesn't know whether to thank it or fight it.",
		"Rain in Durotar. Somebody mark the day.",
	},
	["dur.wc.sand.01"] = {
		"turns away as the wind picks up and the red sand begins to hiss across the trail.",
		"narrows the eyes as a wall of red sand rolls in from the flats on the wind.",
		"pulls up a collar against the gritty wind now scouring the rocks with sand.",
	},
	["dur.wc.storm.01"] = {
		"Storm off the sea. Get off the ridges before the lightning finds you.",
		"That's thunder rolling over the coast. Find a cave, and quick.",
		"The sky's gone black over the water. This storm won't be gentle.",
	},
	["dur.zone.alliance.01"] = {
		"Horde country. I keep off the main road and my eyes on the ridgelines.",
		"Every watchtower here belongs to someone who'd rather I weren't here. Best not to linger.",
		"Red rock, orc banners, and me. One of these doesn't belong.",
	},
	["dur.zone.alliance.02"] = {
		"Lovely place. Shame about the welcome committee.",
		"I'll be quick. Durotar doesn't strike me as fond of visitors.",
		"Red dust, sharp rocks, and spears on every hill. Nobody told me it was this cozy.",
	},
	["dur.zone.emo.curious.01"] = {
		"Those marks on the boulder by the trail: old carvings, or just a bored guard with a knife?",
		"Every cave mouth in these hills has a story. I want at least three of them before I leave.",
		"What lives under these flat stones? Only one way to find out, and it probably stings.",
	},
	["dur.zone.emo.tense.01"] = {
		"keeps to the middle of the trail, one hand never far from the weapon, eyes on every ridge.",
		"stops at a rattle in the scrub and waits, quite still, until the rattle stops too.",
		"glances back down the canyon twice in as many steps.",
	},
	["dur.zone.first.01"] = {
		"First time in {zone}. Everything's red, and everything looks like it bites.",
		"New ground under my boots: red, cracked, and dry as old bread.",
		"I have never walked this country before. It does not greet me; it only lets me pass, and watches.",
	},
	["dur.zone.first.02"] = {
		"takes a long look at the unfamiliar red hills, as if trying to learn them by heart.",
		"turns slowly in place, reading this new country: ridges, scrub, a far line of rock.",
		"crouches, rubs a pinch of the strange red earth between two fingers, and lets it fall.",
	},
	["dur.zone.horde.01"] = {
		"Durotar. Poor soil, hard rock, and ours to the last stone.",
		"We were given nothing here, so we built everything. Good to stand on it.",
		"Let other lands be green. This red one was won, and it holds us like a fist.",
	},
	["dur.zone.horde.02"] = {
		"Smoke from a cookfire somewhere over the ridge. Our people. Our fires.",
		"This land is hot and red and hard, and nobody locks the gate on us.",
		"It isn't much, this land. It's the first thing in a long while that nobody can take back.",
	},
	["dur.zone.neutral.01"] = {
		"kicks a pebble loose and watches it bounce down the red slope, raising a little puff of dust at each hop.",
		"stops at the edge of the trail; red stone runs off in every direction, cracked like old pottery.",
		"pauses where the land opens: red stone, gray scrub, and a dust that settles on everything like a patient tide.",
	},
	["dur.zone.neutral.02"] = {
		"{zone}. The ground here doesn't give anything away. You have to take it.",
		"Hard red earth, thorny scrub, and not a scrap of cover worth the name.",
		"Every step crunches. This land is made of things that crack.",
	},
	["dur.zone.neutral.03"] = {
		"Red dust in my boots already. That was quick.",
		"{zone}. Scorpids, rocks, more rocks. Lovely.",
		"If anyone sees a tree, point it out. I'd like to say hello.",
	},
	["dur.zone.neutral.04"] = {
		"They named this land after a chieftain who never saw it. Strange gift, a name.",
		"A land called after a father who fell before he could walk it. The stone doesn't seem to mind the name.",
		"This country bears the name of a chieftain who did not live to see it; the son gave it to the stone, and the stone has kept it.",
	},
	["dur.zone.orc.01"] = {
		"Our elders dug this soil with bare hands. I'll keep it with mine.",
		"Feel that? Stone that answers to us. No chains, no walls, no wardens.",
		"An orc should stand on ground like this: hard, red, and unafraid.",
	},
	["dur.zone.time.day.01"] = {
		"Sun's hammering the rock like an anvil. And we're the horseshoe.",
		"You could cook on these stones. Someone probably has.",
		"Water. Shade. Then we'll talk.",
	},
	["dur.zone.time.night.01"] = {
		"Night in {zone}. The rock gives back the day's heat, and the stars come down low.",
		"The scorpids go quiet after dark. Something else doesn't. I can hear it in the scrub.",
		"Night lies over the red country like a cool hand on a fevered brow, and the stars are many and close.",
	},
	["dur.zone.troll.01"] = {
		"The sea's off to the east, as it should be. A troll breathes easier with salt in the air.",
		"Red rock is no jungle, but the orcs share their water. That counts for a lot.",
		"Somewhere past that coast are the isles we left. Not today. One thing at a time.",
	},
	["dur.zone.weather.rain.01"] = {
		"Rain. In Durotar. The dust doesn't know what to do with itself.",
		"The red earth drinks the rain so fast you'd think it had been waiting all year. It probably had.",
		"Rain upon red stone: rare here as mercy, and the parched ground opens every crack to catch it.",
	},
	["dur.zone.weather.sand.01"] = {
		"pulls a cloth over mouth and nose as the wind lifts the red sand off the flats in long, hissing sheets.",
		"turns a shoulder to the gusts; grit rattles against armor and stings the eyes.",
		"squints into the blowing sand. The far ridges come and go like ghosts.",
	},
]==])
