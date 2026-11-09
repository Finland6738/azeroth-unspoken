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
	["dur.journey.w01.01"] = {
		"From up here Durotar is all red folds and dry creases, like a hide left too long in the sun.",
		"The canyons look like cracks in a clay pot from this high. Down there a scorpid is very disappointed in me.",
		"Red earth, gray sea and a thin brown line of road between them. Durotar, the short version.",
	},
	["dur.journey.w01.02"] = {
		"comes down into the heat, and the red dust rises to greet the landing before the wind rider has folded its wings.",
		"steps off onto hard red ground, squinting as the glare comes back off the rocks all at once.",
	},
	["dur.quest_complete.w01.01"] = {
		"Done. Pay me in water, if it's all the same to you.",
		"Finished. I'd celebrate, but it's too hot to cheer.",
	},
	["dur.quest_progress.w01.01"] = {
		"That part's done. The rest is out there, under the same hard sun.",
		"One piece down. Durotar is generous with errands, if nothing else.",
	},
	["dur.attack.w02.01"] = {
		"Eat dust! There's plenty to go around.",
		"Here's a taste of Durotar!",
		"Hot ground, hard blows. Welcome.",
	},
	["dur.quest_complete.w02.01"] = {
		"Done. This land gives nothing away for free, and asks the same of anyone who lives on it.",
		"Finished. Durotar is hard, but it pays its debts in respect, if not in shade.",
		"Another job done beneath the red cliffs. My shoulders know it; soon someone else will too.",
	},
	["dur.quest_progress.w02.01"] = {
		"That's all of it. Now back across the hot ground to tell them, and hope for a breeze.",
		"All done. In this heat, the walk to hand it in is the hard part.",
	},
	["dur.attack.w16.cry.001"] = {
		"Down into the red dust!",
		"Into the dirt with you!",
		"Meet the ground!",
	},
	["dur.attack.w16.cry.002"] = {
		"Hard as Durotar stone!",
		"Rock-hard, like this land!",
	},
	["dur.attack.w16.cry.003"] = {
		"That's for the heat!",
		"And that's for the grit in my boots!",
		"One for every scorpid in this land!",
	},
	["dur.attack.w16.cry.004"] = {
		"Like the river, straight through!",
		"Through, like the current!",
	},
	["dur.attack.w16.cry.005"] = {
		"The ground here bites. So do I!",
		"Everything in Durotar stings. Me too!",
	},
	["dur.attack.w16.cry.006"] = {
		"Quick, before the heat gets you!",
		"Faster than a scorpid!",
	},
	["dur.attack.w16.cry.007"] = {
		"Now, while the dust hides it.",
		"There. Through the grit. Now.",
	},
	["dur.attack.w16.cry.008"] = {
		"Durotar says no!",
		"This land answers!",
		"Feel the red country!",
	},
	["dur.attack.w16.cry.009"] = {
		"moves first, and the red dust follows.",
		"strikes out in a spray of rust-colored grit.",
	},
	["dur.attack.w16.cry.010"] = {
		"Count the stones on the way down!",
		"Plenty of rocks to land on!",
	},
	["dur.attack.w16.cry.011"] = {
		"Like the cliffs against the tide!",
		"Steady as the coast rock under the sea!",
	},
	["dur.attack.w16.cry.012"] = {
		"Hard land, harder hit!",
		"Red rock, red-hot hit!",
	},
	["dur.attack.w16.cry.013"] = {
		"Here, a souvenir of Durotar!",
		"Take some of the red dirt home!",
	},
	["dur.battle.w16.cult.001"] = {
		"Cultist. You're selling the oldest lie in Durotar, and nobody's buying.",
		"Skull Rock can keep its smoke. You're not going back to it.",
		"Hear that? Nobody's answering your chant.",
	},
	["dur.battle.w16.cult.002"] = {
		"Cultists in Orgrimmar's own backyard. Someone in the city must lose sleep over that.",
		"Under the Warchief's nose, and still they gather. Bold, or very stupid.",
		"Robes and sulfur. The caves keep sending them up.",
	},
	["dur.battle.w16.cult.003"] = {
		"Go home, demon. This dry country has nothing for your hunger.",
		"Whoever called you up picked the wrong land to do it in.",
		"Demon. Durotar has a long memory for your kind.",
	},
	["dur.battle.w16.cult.004"] = {
		"hears the cultist's chant start low and moves before it can finish.",
		"catches a reek of sulfur and old smoke, and squares up to the robed figure.",
	},
	["dur.battle.w16.cult.005"] = {
		"The orcs threw off demons to make a home of this rock. Nobody takes it from them cheaply.",
		"Demons couldn't hold the orcs forever. You won't hold me for long.",
	},
	["dur.battle.w16.cult.006"] = {
		"Raiders from the sea, cultists in the caves, quilboar in the brush. Durotar is never short of a fight.",
		"Enemies inside and out, this country. Whichever kind you are, it ends the same.",
	},
	["dur.battle.w16.dust.001"] = {
		"Red dust on both of us already. Let's see who ends up wearing more.",
		"This grit sticks to everyone. By the end, you'll have most of it.",
		"Dust on you, dust on me. Fair start.",
	},
	["dur.battle.w16.dust.002"] = {
		"Gravel rolls under the boots in this country. Keep the weight low and let the other one slip.",
		"Weight low. The loose stones of Durotar do half the work.",
		"Heels down, knees soft. Let the gravel take the careless one.",
	},
	["dur.battle.w16.dust.003"] = {
		"scuffs a foothold into the red grit and waits for the first move.",
		"digs in both heels; a little cloud of rust-colored dust lifts and hangs there.",
		"sets {g:his|her} feet wide on the red gravel and waits.",
	},
	["dur.battle.w16.dust.004"] = {
		"You picked a fight in Durotar. Brave, or just thirsty?",
		"Starting trouble in this heat? You must be very bored, or very hungry.",
		"In this heat? You must really want it.",
	},
	["dur.battle.w16.dust.005"] = {
		"Try me. This baked earth has seen worse than you.",
		"The ground here is fired like brick. It'll be hard on whoever drops.",
		"Fall here and the ground won't cushion you. Neither will I.",
	},
	["dur.battle.w16.dust.006"] = {
		"Red rock all around, old and patient. It has watched a thousand fights like this and kept none of them.",
		"These stones have seen it all before. They will not remember who won.",
	},
	["dur.battle.w16.dust.007"] = {
		"Dust in the eyes, then. Same for both of us.",
		"Kick up all the grit you want. I can fight squinting.",
		"Squint and strike. Everyone fights half-blind in Durotar.",
	},
	["dur.battle.w16.dust.008"] = {
		"Back off if you like. Everything behind you in this land has thorns.",
		"Retreat won't help. Durotar grows spines in every direction.",
	},
	["dur.battle.w16.dust.009"] = {
		"Heat off the stones, grit in my teeth. Fine. Think about the fight, not the thirst.",
		"Thirsty, hot, and now this. The thirst can wait its turn.",
		"Ignore the heat. Ignore the grit. Watch the foe.",
	},
	["dur.battle.w16.dust.010"] = {
		"Red land, short tempers. You just found mine.",
		"This country breeds bad moods, and you walked right into one.",
		"Bad ground, black mood, bad luck for you.",
	},
	["dur.battle.w16.dust.011"] = {
		"reads every shift of weight in the dust kicked up between them.",
		"watches the little puffs of grit at the foe's feet; each one gives a move away before it comes.",
		"watches the grit stir, and moves when it does.",
	},
	["dur.battle.w16.dust.012"] = {
		"No shade, no cover, no time to look for either. Just this.",
		"Nothing in reach to put between us. Good. Fewer tricks.",
	},
	["dur.battle.w16.dust.013"] = {
		"Everyone who crosses Durotar pays a toll. Here's mine, and here's yours.",
		"Something always gets paid to cross this country. You first.",
		"Toll's due. Pay it in bruises.",
	},
	["dur.battle.w16.dust.014"] = {
		"spits red grit, wipes a hand on a sleeve and gets ready.",
		"blinks the sand out of {g:his|her} eyes and drops into a crouch.",
	},
	["dur.battle.w16.dust.015"] = {
		"This land was named for a chieftain who died fighting. It has no patience for anyone who won't.",
		"A land named for a fallen chieftain. It expects a fight out of everyone on it.",
	},
	["dur.battle.w16.dust.016"] = {
		"You want this patch of red dirt? Earn it.",
		"Nobody in Durotar gets anything for free. You won't start with me.",
	},
	["dur.battle.w16.shore.001"] = {
		"Clack all you like. Shells crack.",
		"Up out of the surf with a spear and a temper. Fine, crab. Dance.",
		"Back to the tide pools, clacker.",
	},
	["dur.battle.w16.shore.002"] = {
		"Did Tiragarde send you out, or did you just wander off?",
		"Kul Tiran boots on red dust. They never look right here.",
		"Kul Tiras is a whole sea away. You should have stayed on the ship.",
	},
	["dur.battle.w16.shore.003"] = {
		"Whatever's looking out of your eyes, it isn't you. Sorry for this.",
		"Zalazane's puppet. I'll cut the strings the hard way.",
		"Zalazane's hold on you ends here.",
	},
	["dur.battle.w16.shore.004"] = {
		"steps back from the water's edge as the crocolisk heaves itself out, jaws first.",
		"keeps clear of the snapping jaws, circling toward drier ground.",
	},
	["dur.battle.w16.shore.005"] = {
		"Sea on one side, river on the other. Nobody runs far in Durotar.",
		"This whole land is pinned between the sea and the river. No retreat for either of us.",
		"Between the river and the sea, there's only holding your ground.",
	},
	["dur.battle.w16.shore.006"] = {
		"Be the red rock of the coast. Let it come in like surf, and break.",
		"The sea has been throwing itself at Durotar's cliffs forever. The cliffs are still there.",
	},
	["dur.battle.w16.shore.007"] = {
		"The Darkspear lost their isles and they still fight. I can manage this.",
		"Zalazane took the Echo Isles from the trolls, and they never stopped fighting. Neither will I.",
	},
	["dur.battle.w16.shore.008"] = {
		"Even the Kul Tirans dug in on Durotar's coast and held. You think you'll shift me?",
		"Humans built a keep on this country's shore and still haven't budged. I can be stubborn too.",
		"If Kul Tirans can dig in here, so can I.",
	},
	["dur.battle.w16.wild.001"] = {
		"Everything in Durotar comes with a sting, a spine or a tooth. Which are you?",
		"Spines, stingers, teeth... this land never sends anything soft.",
		"Sharp, poisonous or angry? Around here, usually all three.",
	},
	["dur.battle.w16.wild.002"] = {
		"Lean ribs, hard eyes. Nothing goes hungry quietly in this land.",
		"It's thin. Dry country makes hunters desperate, and desperate hunters reckless.",
	},
	["dur.battle.w16.wild.003"] = {
		"Raptor! Watch the feet. The claws come before the teeth.",
		"Fast and mean, these isle raptors. Fast isn't everything.",
		"Raptor on the sand! Don't let it get behind you.",
	},
	["dur.battle.w16.wild.004"] = {
		"ducks as a shriek comes down from above, and turns to meet the beating wings.",
		"pulls {g:his|her} head in as feathers and talons drop out of the air.",
	},
	["dur.battle.w16.wild.005"] = {
		"Big, slow and crackling. Keep moving, and don't touch the hide.",
		"Stay clear of the tail. That thing hits like a falling wall.",
	},
	["dur.battle.w16.wild.006"] = {
		"If the vultures are watching, they don't mind which of us they get.",
		"Vultures don't take sides. They only wait for it to end.",
		"Nobody in Durotar falls without the vultures noticing.",
	},
	["dur.battle.w16.wild.007"] = {
		"Hungry? Get in line. Everything in this country is.",
		"Hungry, are you? So is the whole land. Wait your turn.",
		"Go find a boar. I'm all gristle.",
	},
	["dur.battle.w16.wild.008"] = {
		"goes still the way the lizards of the red rocks do, and waits for the other to move first.",
		"freezes like a lizard on a warm stone, every muscle ready.",
	},
	["dur.battle.w16.wild.009"] = {
		"Whatever Durotar armed you with, bring all of it.",
		"Show me what this hard land taught you.",
		"You got thorns from Durotar. I got more.",
	},
	["dur.battle.w16.wild.010"] = {
		"In a land this poor, everything fights for scraps. Nothing personal.",
		"Nothing here has enough of anything. That's why every fight in Durotar is a mean one.",
	},
	["dur.battle.w16.wild.011"] = {
		"Even a scorpid raises its tail first. You didn't bother.",
		"Even the cactus here gives a warning. You didn't.",
	},
	["dur.journey.w16.land.001"] = {
		"Feet on red ground. Hard, dusty, and not interested in where I've been, which suits me.",
		"Down. The dust finds me before I've taken a step, like a dog that missed me.",
		"Back on Durotar's hard floor. My knees remember every bump of that ride.",
	},
	["dur.journey.w16.land.002"] = {
		"sets down in a puff of red dust and stands a moment, letting the legs remember how to be legs.",
		"slides down, works the stiffness out of both legs, and looks around at the red ridges as if counting them.",
		"lands, steps clear, and brushes off the first layer of Durotar before it has properly settled.",
	},
	["dur.journey.w16.land.003"] = {
		"The first thing Durotar gives back after a flight is the smell: hot stone, dry scrub, and, if the air is kind, a cookfire somewhere.",
		"Landed. The air tastes of rust and dry thorn, nothing like the sky.",
	},
	["dur.journey.w16.land.004"] = {
		"Down at last. Somebody tell my stomach.",
		"Ground. Red, dusty, wonderful ground.",
		"That's enough sky for me. Where's the nearest flat rock to sit on?",
	},
	["dur.journey.w16.land.005"] = {
		"From above the land looked small and finished. On foot it is large again, and nothing in it is finished at all.",
		"Down among the ridges, the world closes in to the next bend and the next rock. Easier to think about, somehow.",
		"Landing turns the map back into a country. The red is no longer a color; it's grit, and stone, and distance to walk.",
	},
	["dur.journey.w16.land.006"] = {
		"steps down onto the red earth and stamps once, firmly, as if to make sure it is still there.",
		"comes down, takes three stiff steps, and turns to look back up at the empty air with something like respect.",
	},
	["dur.journey.w16.rise.001"] = {
		"The ground lets go, and Durotar shows its whole shape at last: a red strip pressed between the river and the sea.",
		"Climbing. Ridges that take an hour of work on foot slide under me in a few moments.",
		"From this height a palisade is a ring of splinters, and a road is a scratch in the red.",
	},
	["dur.journey.w16.rise.002"] = {
		"rises off the red ground in a swirl of dust, and the grit falls from the boots as the land drops away.",
		"climbs into the open air above Durotar; below, the ridges shrink to ripples in rust-colored sand.",
		"lifts clear of the dust, knuckles tight on the harness, and watches the red country tilt and slide underneath.",
	},
	["dur.journey.w16.rise.003"] = {
		"Up and away. For once the dust is someone else's problem.",
		"Below me, a vulture. A vulture, below me. I'm going to enjoy that more than I should.",
		"Somewhere down there a boar is wondering where I went. Let it wonder.",
	},
	["dur.journey.w16.rise.004"] = {
		"Looking south, the Echo Isles are a scatter of green on the water, close to the shore and out of anyone's reach. Whatever holds them now does not show from the air.",
		"The whole of Durotar fits in one look from up here: hard country, built on in a hurry by people who had nowhere else to go.",
	},
	["dur.journey.w16.rise.005"] = {
		"Steady up here. I've had enough of the ground for a while.",
		"Higher! Let's see how far the red goes.",
		"Look at it all down there. Red to the edges, and not a tree to spoil it.",
	},
	["dur.journey.w16.rise.006"] = {
		"watches the road to Orgrimmar unspool northward below, a pale thread pulled through red cloth.",
		"looks down as the land falls away; camps become rings, trails become cracks, and the whole country goes quiet.",
	},
	["dur.lowhp.w16.hold.001"] = {
		"The red ground looks soft from this close. It isn't. Stay up.",
		"Don't go down. Durotar's earth is hard, and it doesn't give back.",
		"Stay on your feet. The ground here makes a poor bed.",
	},
	["dur.lowhp.w16.hold.002"] = {
		"Hands shaking. Fine. Shaking hands can still hold on.",
		"My grip's going loose. Tighten it. Everything here punishes letting go.",
		"Shaking's allowed. Letting go isn't.",
	},
	["dur.lowhp.w16.hold.003"] = {
		"Whoever walks away from this, Durotar won't care. I do. That will have to be enough.",
		"The land won't mourn either of us. So it's up to me to care.",
	},
	["dur.lowhp.w16.hold.004"] = {
		"Back to a rock. There's always a rock in Durotar. Find it.",
		"Something solid behind me. A boulder, a wall, anything. This land has plenty.",
		"Find a rock. Put it behind you. Hold.",
	},
	["dur.lowhp.w16.hold.005"] = {
		"Think. Where's the road? Where's Razor Hill? How far is anything?",
		"Which way to help? Razor Hill, Sen'jin, anywhere with walls. Think.",
	},
	["dur.lowhp.w16.hold.006"] = {
		"The guards at Razor Hill say this land breaks what bends. So don't bend.",
		"Stone does not bend, the orcs say, and Durotar is made of stone. Be stone.",
		"Bend and this country breaks you. So don't.",
	},
	["dur.lowhp.w16.hold.007"] = {
		"Everything hurts and the grit is everywhere. Keep moving, or it settles on me for good.",
		"If I stop, the dust will start covering me. It's patient like that.",
	},
	["dur.lowhp.w16.hold.008"] = {
		"Spots in my eyes, heat in my head. Don't faint here. Nobody faints gracefully in Durotar.",
		"The world's going red at the edges, and it isn't only the rocks.",
	},
	["dur.lowhp.w16.hold.009"] = {
		"Hurt, yes. Beaten, no. In this land the difference is all that matters.",
		"Hurt isn't beaten. Durotar knows the difference, and so do I.",
		"Hurt, but upright. This country respects that much.",
	},
	["dur.lowhp.w16.hold.010"] = {
		"Battered, dusty and angry. Two of those are your fault.",
		"Dust, bruises and heat enough to cook in. You're the least of it.",
		"You're not even the worst thing that's happened to me in this heat.",
	},
	["dur.lowhp.w16.hold.011"] = {
		"Someone tell Razor Hill I might be late.",
		"If this goes badly, tell them in Razor Hill it was the heat.",
	},
	["dur.lowhp.w16.hold.012"] = {
		"Durotar wants me on the ground. It can keep wanting.",
		"The red earth's reaching for me. It'll have to reach harder.",
		"The ground will have to be patient. It usually is.",
	},
	["dur.lowhp.w16.hold.013"] = {
		"Hit me again. I'm made of the same stuff as these rocks.",
		"The rocks here don't crack on the first blow. Neither do I.",
	},
	["dur.lowhp.w16.hold.014"] = {
		"Down in Durotar, you finish what you start. I mean to.",
		"This fight started in the dust. It ends with me on my feet.",
		"Finish it. That's the only rule Durotar keeps.",
	},
	["dur.lowhp.w16.hold.015"] = {
		"Tell the vultures to wait. They're early.",
		"The vultures can keep circling. I'm not on the menu.",
	},
	["dur.lowhp.w16.hold.016"] = {
		"This dirt doesn't get me. Not by your hand, it doesn't.",
		"I'll fall somewhere better than this, and later than this.",
	},
	["dur.lowhp.w16.hold.017"] = {
		"sways, then plants a hand on warm red stone and pushes upright.",
		"slumps against a rock, then shoves off it, back into the fight.",
		"leans on a boulder, gathers what's left, and pushes off.",
	},
	["dur.lowhp.w16.hold.018"] = {
		"staggers in the loose grit, finds {g:his|her} footing at the last moment, and stays up.",
		"skids on the red gravel, one knee almost to the ground, and comes back up.",
	},
	["dur.lowhp.w16.hold.019"] = {
		"blinks the red blur out of {g:his|her} eyes and squares up once more.",
		"shakes off the dizziness and the dust together, jaw set.",
	},
	["dur.muse.w16.coast.001"] = {
		"The Echo Isles lie low on the water off the southern coast, green and close. Too close, for a place the trolls can't go back to.",
		"Green across the strait: the Echo Isles. The only green for miles, and nobody in Sen'jin likes to look at it long.",
		"The Echo Isles, just off the coast, wear the only real green in sight. Nobody from Sen'jin swims out to enjoy it.",
	},
	["dur.muse.w16.coast.002"] = {
		"In Sen'jin they say a witch doctor named Zalazane holds the isles now, and the trolls who stayed aren't themselves anymore.",
		"Zalazane. The trolls of Sen'jin say the name the way you'd name a fever that hasn't broken.",
		"A witch doctor turned on his own and kept the isles for himself, so the story goes on the coast. The Darkspear haven't forgotten.",
	},
	["dur.muse.w16.coast.003"] = {
		"pries a small white shell out of a crack in the red rock, far from any beach, and turns it over in the fingers.",
		"notices a seashell set in the face of a boulder, the stone grown around it as if the sea had once reached this far.",
		"brushes the dust off a pebble streaked with tiny fossil shells, the sea's handwriting in red stone.",
	},
	["dur.muse.w16.coast.004"] = {
		"Tiragarde Keep is what's left of the admiral's war on this coast: some walls, some marines, and orders nobody sailed back to cancel.",
		"The Kul Tiran marines still hold their keep on a shore that will never be theirs. I can almost admire that. Almost.",
		"Across the sea, some ledger in Kul Tiras still lists Tiragarde as a garrison. The garrison might disagree.",
	},
	["dur.muse.w16.coast.005"] = {
		"The Southfury runs the whole western edge of Durotar, brown and quick. The crocolisks use it like a road and pay no toll.",
		"A river on one side, the sea on the other, and red rock pinched between. Durotar keeps its back to water twice over.",
		"Water on both flanks and not a drop in the middle. This land has a strange sense of where to keep things.",
	},
	["dur.muse.w16.coast.006"] = {
		"Makrura on the shore click at you like they're haggling, and they never come down on the price.",
		"Crab-men with spears all along the beaches. This coast keeps strange neighbors.",
		"If the makrura ever learn to build boats, the coast is in trouble.",
	},
	["dur.muse.w16.coast.007"] = {
		"The road south from Razor Hill keeps the sea on its left the whole way to Sen'jin. Salt on one side, dust on the other.",
		"Between Razor Hill and Sen'jin the road hugs the coast, and everyone who walks it smells faintly of fish by the end.",
		"Fishers' road, the guards call the stretch down to Sen'jin: baskets go down empty and come back up full.",
	},
	["dur.muse.w16.coast.008"] = {
		"The water off this coast changes with the depth: pale green over the sand, almost black where the rock drops away.",
		"Seen from the cliffs, the sea along Durotar is striped like a lizard's back, green and dark and green.",
		"Below the cliffs the water goes so deep and so clear that a fall into it looks like it would take a long time.",
	},
	["dur.muse.w16.coast.009"] = {
		"watches a seabird ride the air high over the red country, heading for the coast without a single wingbeat.",
		"follows a white seabird drifting in from the east, so far inland it looks lost against the red.",
		"tracks a gull's lazy drift toward the coast until it is only a white fleck against the sky.",
	},
	["dur.muse.w16.coast.010"] = {
		"The guards say that when a sail shows on the horizon, every lookout on the coast goes quiet until it turns away.",
		"A sail off Durotar is never just a sail, say the veterans on the walls. It's a question, until it turns.",
		"Lookouts along the coast keep one eye on the sea at all times. Kul Tiras taught them that.",
	},
	["dur.muse.w16.coast.011"] = {
		"The sea is the only thing in Durotar bigger than the dust. Good to know something is.",
		"Whatever this land lacks, it has a coast, and the coast has a horizon. That's more room than most places give you.",
	},
	["dur.muse.w16.coast.012"] = {
		"The Darkspear are a people of islands, living on a strip of shore across from the ones they lost. A hard view to keep.",
		"Sen'jin faces the water. Of course it does. You build facing the thing you mean to go back to.",
		"Sen'jin's huts are built light, the kind you could take down in a hurry. Or carry back across a strait.",
	},
	["dur.muse.w16.coast.013"] = {
		"Sea all down one side of Durotar, and not a mouthful of it worth drinking.",
		"All that water out east and I'm rationing my skin. Durotar has a cruel sense of humor.",
		"Salt water on one side, red dust on the other, and my waterskin in the middle, losing.",
	},
	["dur.muse.w16.coast.014"] = {
		"catches a faint smell of salt and drying fish carried in from the east, and turns toward it for a moment.",
		"lifts the head at a whiff of the sea, drifting in over the red hills from somewhere east.",
	},
	["dur.muse.w16.coast.015"] = {
		"Every troll in Sen'jin knows exactly where to look when the talk turns to home. So do I. South, across the water.",
		"The isles are close enough to name every beach. Close enough to hurt. Not close enough to go back to, not yet.",
		"On a good day I can smell the isles. Salt, wet leaves, smoke. Then the dust takes it back.",
	},
	["dur.muse.w16.dust.001"] = {
		"The cracks in this ground run every which way, like a plate somebody dropped and never swept up.",
		"Dry gullies everywhere, and not one of them remembers what water was for.",
		"This earth has split and split again until it looks more like old leather than land.",
	},
	["dur.muse.w16.dust.002"] = {
		"taps a knuckle against a slab of red stone; it rings faintly, hollow as a clay jar.",
		"picks a flake of red rock off the trail and snaps it in two, along a grain older than any road.",
		"presses a palm flat to a red boulder and feels the warmth stored deep inside the stone.",
	},
	["dur.muse.w16.dust.003"] = {
		"Rule one of Durotar: don't lean on anything green.",
		"The cactus here has more spines than sense, and more patience than me.",
		"Plants here grow spines instead of leaves. Sensible, if you never want a hug.",
	},
	["dur.muse.w16.dust.004"] = {
		"Some slopes are streaked white, like salt left behind by water that gave up long ago.",
		"Pale crusts in the low hollows. Water was here once, long enough to leave its ghost behind.",
		"White rings on the rocks of the low ground, like the stains a cup leaves on a table. Something drank here, long before anyone came.",
	},
	["dur.muse.w16.dust.005"] = {
		"Everything I carry creaks out here: straps, boots, the pack itself. Durotar dries out whatever you bring.",
		"My gear has gone stiff with dust. Oil the leather soon, or it starts to crack.",
		"This air gets into leather and wood alike. A strap here lasts half as long as anywhere else.",
	},
	["dur.muse.w16.dust.006"] = {
		"notes how the red of the rocks shifts with every bend of the trail: brick, then rust, then nearly purple in the hollows.",
		"looks across the ridges, each one a slightly different red, as if the land had been dyed in separate batches.",
		"squints at the far cliffs, where the red stone looks almost soft at this distance, like folded cloth.",
	},
	["dur.muse.w16.dust.007"] = {
		"Cactus apples, red and fat among the spines. The only sweet thing for miles, and it makes you earn it.",
		"Someone has picked the cactus apples along this stretch, neatly, leaving the small ones to ripen.",
		"A cactus apple tastes of warm water and a little dust. Out here that counts as a feast.",
	},
	["dur.muse.w16.dust.008"] = {
		"Kick this dust and it just hangs there. Nothing in Durotar is in a hurry to settle.",
		"Fine as flour, this dust. It gets through every seam you own.",
		"Stamp a foot and half the trail goes up with it. The other half waits its turn.",
	},
	["dur.muse.w16.dust.009"] = {
		"Tall fingers of rock stand along the ridges, worn thin. Sentries nobody ever came back to relieve.",
		"Some of these stone columns lean so far I keep waiting for them to fall. They've been waiting longer than I have.",
		"Pillars of rock, narrow at the foot and wide at the top. Durotar builds things that shouldn't stand, and they stand.",
	},
	["dur.muse.w16.dust.010"] = {
		"glances back along the trail; the footprints are already softening at the edges, filling in grain by grain.",
		"studies a print in the dust, every stitch of a boot sole kept perfectly, until something else walks over it.",
		"scuffs out a footprint with a heel and watches the red dust smooth itself over, as if nobody had passed.",
	},
	["dur.muse.w16.dust.011"] = {
		"Out on the flats there are stretches so quiet I can hear the grit crunch under each step.",
		"No songbirds, no water, no voices. Only the tick of a pebble working loose somewhere.",
		"This land isn't loud. It just never quite stops making small, dry sounds.",
	},
	["dur.muse.w16.dust.012"] = {
		"The air over the flats shimmers like a lake. Durotar's only lake, and nobody can drink from it.",
		"Heat rises off the rocks in ripples until the far ridge wobbles. Nothing at that distance can be trusted.",
		"The far rocks swim in the heat. If something is walking toward me out there, I won't know it until it's close.",
	},
	["dur.muse.w16.dust.013"] = {
		"Found some shade. It's the size of a plate, and it's mine.",
		"One scrap of shade on this whole ridge, and a lizard got there first.",
		"I'd move, but this patch of shade fits me perfectly and I've grown attached.",
	},
	["dur.muse.w16.dust.014"] = {
		"snaps a dead twig off a thornbush; it breaks with a crack like a knuckle, dry right through.",
		"gathers a handful of dead brush, already dry enough to burn: out here, everything is firewood waiting.",
		"breaks a thorn off a dry bush and tests its point on a thumb: sharp as any cobbler's awl.",
	},
	["dur.muse.w16.dust.015"] = {
		"Down in the canyons the walls close in and the sky shrinks to a strip. Up on the ridges it's all sky, and nowhere to hide.",
		"Ridge, canyon, ridge again. This land keeps folding over on itself, as if it had something to tuck away.",
		"The trails here drop into a canyon and climb onto a ridge, down and up, until the knees start keeping count.",
	},
	["dur.muse.w16.dust.016"] = {
		"wipes red grit from the corners of the eyes with a knuckle and blinks until the land comes back into focus.",
		"rubs at gritty eyes, which only grinds the red dust in deeper.",
		"blinks hard against the grit until the red hills stop swimming.",
	},
	["dur.muse.w16.dust.017"] = {
		"uncorks a waterskin, drinks sparingly, and stoppers it fast, before the dust can get in.",
		"allows a single swallow of water and puts the skin away, as if a bargain had been struck with it.",
		"shakes the waterskin by one ear to judge what's left, and frowns at the answer.",
	},
	["dur.muse.w16.folk.001"] = {
		"Somewhere there's always a peon chopping wood, slowly, and a foreman shouting at it to chop faster.",
		"Peons haul, peons chop, peons nap behind the woodpile when nobody's looking. Durotar got built anyway.",
		"Half the walls in this country went up on peon labor and peon naps, in roughly equal measure.",
	},
	["dur.muse.w16.folk.002"] = {
		"The grunts in the watchtowers stand so still you'd take them for part of the timber. Then one spits over the rail, and they're people.",
		"A lookout on every tower along the road, each one staring at a different stretch of nothing. Nothing here goes unwatched for long.",
		"The towers along the road are never left empty. Some grunt is always staring at the horizon so the rest can stare at their bowls.",
	},
	["dur.muse.w16.folk.003"] = {
		"Wolf riders take these roads at a run, always. The dust needs an hour to forgive them.",
		"Step aside for wolf riders, always. They don't slow down, and nobody expects them to.",
		"The wolves on these roads have right of way. Nobody voted on it. Nobody needed to.",
	},
	["dur.muse.w16.folk.004"] = {
		"The zeppelin towers outside Orgrimmar creak like old ships in harbor. The goblins swear by them, and at them.",
		"A goblin balloon tied to a tower of scrap and rope, and people line up to ride it across the sea. Durotar has its brave ones.",
		"Every so often a zeppelin swings in over the ridges, groaning like a tired kodo, and half the road stops to watch it dock.",
	},
	["dur.muse.w16.folk.005"] = {
		"glances toward a distant watchtower, where a lookout raises one hand, then lets it drop.",
		"lifts a hand to the nearest watchtower; up on the platform, a figure answers with the butt of a spear against the rail.",
		"raises a hand toward a watchtower on the ridge and gets, after a long moment, a single slow nod in return.",
	},
	["dur.muse.w16.folk.006"] = {
		"Orcs and trolls sharing one red country. You'd expect it to be louder. Then you pass Sen'jin on a feast day, and it is.",
		"An orc grumbles, a troll laughs, and somehow the two of them finish the same wall. That's the whole arrangement here.",
		"Troll jokes and orc silences. This country runs on both, and they balance better than you'd think.",
	},
	["dur.muse.w16.folk.007"] = {
		"Durotar runs on boar: meat for the pot, hide for the tents, tusks for the palisade. Nothing wasted but the smell.",
		"Boar stew, boar jerky, boar-hide boots. Out here the boar does most of the work and gets none of the thanks.",
		"Every orc town smells of boar, smoke and leather. It's the smell of things getting done.",
	},
	["dur.muse.w16.folk.008"] = {
		"Forsaken off the zeppelins, tauren up from the Barrens, goblins everywhere at once. Durotar's roads see all sorts.",
		"Tauren, trolls, the odd pale Forsaken shuffling down from the zeppelin tower. Orgrimmar draws them all, and they all cross this dust.",
		"Everyone bound for the zeppelins crosses Durotar with the same look: half hurry, half dust.",
	},
	["dur.muse.w16.folk.009"] = {
		"pauses as a faint drumbeat carries over the ridges from somewhere far off, keeps time for a while, then stops.",
		"tilts the head at the distant thud of drums, too far away to tell whether they mean work, a feast or a warning.",
		"stops, head cocked, at the far beat of a drum, then lengthens the stride a little, as if it were a summons.",
	},
	["dur.muse.w16.folk.010"] = {
		"The guards at Razor Hill look past you at the road behind, as if trouble always comes from the direction you just left.",
		"None of the guards here quite meet your eyes. They're watching over your shoulder, where trouble usually is.",
		"Guards here size you up by your boots first. Boots tell them how far you've come, and how much trouble you've walked through.",
	},
	["dur.muse.w16.folk.011"] = {
		"Down in the Valley of Trials, someone's getting knocked flat by a boar right now. Good for them.",
		"The Valley of Trials turns out a fresh batch every season, bruised and proud. Durotar never runs short of either.",
	},
	["dur.muse.w16.folk.012"] = {
		"The Darkspear hunters move through the scrub without a sound. It unsettles the orcs, who like to hear their friends coming.",
		"A troll can cross a slope of loose red stone and not shift a pebble. An orc crosses it and the whole slope knows.",
		"Darkspear and orc share a road the way two old soldiers share a bench: not much talk, a lot of understanding.",
	},
	["dur.muse.w16.folk.013"] = {
		"returns the curt nod of a passing grunt, who neither breaks stride nor looks twice.",
		"steps aside for a troll carrying a basket of fish on one shoulder, who flashes a tusked grin in passing.",
		"nods to a peon trudging past under a load of hides, and gets a weary grunt back.",
	},
	["dur.muse.w16.folk.014"] = {
		"Runners pass on the northern road all the time, carrying word to Orgrimmar. Nobody stops them to ask what word.",
		"Messages go up to Orgrimmar faster than any wagon could carry them. News in Durotar travels on foot, and in a hurry.",
		"Somebody's always running toward Orgrimmar with something important. Nobody ever seems to run the other way.",
	},
	["dur.muse.w16.folk.015"] = {
		"Orc, troll, tauren, Forsaken: Durotar's gates don't ask which. That's worth more than green fields.",
		"Whoever you are in the Horde, there's a fire in Durotar you can sit by without being asked your business.",
		"The Horde's capital rises out of this red dust, and any of its peoples can walk in. Few places are that simple.",
	},
	["dur.muse.w16.folk.016"] = {
		"catches the smell of roasting boar from some camp over the ridge, and the trail seems a little shorter for it.",
		"turns toward a thread of cook smoke rising beyond the rocks, where someone, somewhere, is making supper of a boar.",
	},
	["dur.muse.w16.history.001"] = {
		"The internment camps are a story every orc here can tell, and no two tell it the same way. All of them end on this coast.",
		"Ask an orc in Durotar about the camps and you'll get a different story each time, but the same silence after it.",
	},
	["dur.muse.w16.history.002"] = {
		"Orgrimmar carries Doomhammer's name, Durotar carries Durotan's. This whole country is a roll call of the dead someone meant to keep.",
		"Names here are memorials. A city for one fallen warchief, a land for one fallen chieftain. The living get the work.",
		"Durotan, Doomhammer: the names of the dead on every map of this country. The living don't seem to mind carrying them.",
	},
	["dur.muse.w16.history.003"] = {
		"Everything standing here went up within a single lifetime: the walls, the towers, the roads. A young country wearing old rock.",
		"Not one wall in Durotar is older than the people who built it. The stone underneath is older than anyone's stories.",
		"Fresh timber, fresh walls, fresh roads, all laid on rock older than any of it by a very long way.",
	},
	["dur.muse.w16.history.004"] = {
		"The Darkspear came here because Thrall offered them a place. They took it, and kept their own village a little apart. Both sides seem to like it that way.",
		"Vol'jin's trolls owe Thrall a debt and pay it in their own coin: loyal, close by, and never quite under the same roof.",
		"Sen'jin and Razor Hill trade, fight side by side, and argue about fish. A good alliance looks a lot like that.",
	},
	["dur.muse.w16.history.005"] = {
		"The Burning Blade is an old sickness that never quite cleared: orcs who still want the demons back. Durotar keeps a hand on its weapon even inside its own walls.",
		"Every cave near Orgrimmar gets searched sooner or later. Not for beasts. For candles, and chanting, and the Burning Blade.",
	},
	["dur.muse.w16.history.006"] = {
		"The elders speak of the lethargy in the camps, and of the burning thirst that came before it. Here nobody thirsts that way anymore. Only for water.",
		"First the demons' fire, then the long gray sickness, the elders say. Durotar is what came after both: dry, hard, and clear-headed.",
		"The old ones don't talk much about the bad years. When they do, they look at the red earth for a while, then go back to work.",
	},
	["dur.muse.w16.history.007"] = {
		"Thrall rules from Orgrimmar, and somehow his word reaches every corner of this red country before any rider does.",
		"Out on the farthest ridge you'll still hear somebody quote the Warchief. Thrall's voice carries further than his walls.",
		"In Durotar the Warchief's name is said plainly, without a bow, and somehow that sounds more loyal than any bow.",
	},
	["dur.muse.w16.history.008"] = {
		"The story goes that Thrall could have chosen greener ground, and took this instead. Nobody agrees whether that was pride or wisdom.",
		"Some in Razor Hill say this land was chosen because nobody else wanted it, so nobody would come to take it. Others say that is wisdom.",
	},
	["dur.muse.w16.history.009"] = {
		"Cairne's tauren helped the orcs when they first landed on Kalimdor. You can see the debt in how easily tauren walk these roads.",
		"Thrall and Cairne made a friendship on this continent that still holds. Every tauren in Durotar is a small proof of it.",
		"Tauren on Durotar's roads walk like guests who were invited, which they were.",
	},
	["dur.muse.w16.history.010"] = {
		"Every beam in Durotar's watchtowers was hauled in from the forests up north. This land has stone to spare and not one tree worth cutting.",
		"No timber grows here worth the name. Each post of each palisade was a long, heavy walk before it was a wall.",
		"Durotar's palisades are a map of where the wood came from: every log a long haul out of greener country.",
	},
	["dur.muse.w16.history.011"] = {
		"Ask a Razor Hill guard and you'll hear it was a camp before Orgrimmar was a city. It still builds as if an attack were due within the week.",
		"The first palisades went up in a hurry, and Razor Hill has kept the habit. Sharpen first, decorate never.",
	},
	["dur.muse.w16.history.012"] = {
		"pauses by a cairn of red stones at the edge of the trail, each stone set there by a different hand, and leaves it as it is.",
		"stops beside a low heap of stacked stones by the trail; someone has wedged a boar's tusk at the top, bleached nearly white.",
		"sets a hand briefly on a waist-high cairn by the path, smooth on top where many hands have done the same.",
	},
	["dur.muse.w16.history.013"] = {
		"runs a thumb along a notched marker post by the trail, its carved signs worn soft by grit.",
		"reads the scratches on a waymarker, orcish signs cut deep and filled with red dust.",
		"pauses at a worn post carved with orcish marks, a hand pointing north, toward the city.",
	},
	["dur.muse.w16.history.014"] = {
		"Free ground, red as it is. The camps are a story now, and I mean to keep them one.",
		"No fence but the ones we raised ourselves, no warden to bow to. This dry country is the freest place I know.",
	},
	["dur.muse.w16.history.015"] = {
		"Thrall brought them across the sea to this coast, the story goes, with the old world behind them and nothing promised ahead. Somehow it became a country.",
		"The orcs reached Kalimdor by ship, with little more than they could carry. The rest of Durotar they made with their hands.",
		"The ships that brought the orcs here are long gone. The habit of glancing at the sea now and then has stayed.",
	},
	["dur.muse.w16.history.016"] = {
		"looks north toward the canyon where Orgrimmar lies hidden, marked only by a smudge of forge smoke above the ridges.",
		"turns to the north, where a haze of smoke over the rocks is all that shows of the city in the canyon.",
		"glances up the long road north, which narrows and climbs toward the canyon walls hiding Orgrimmar.",
	},
	["dur.muse.w16.wild.001"] = {
		"follows the slow circling of a vulture overhead; it seems to have plans that include somebody.",
		"squints up at a pair of vultures turning lazy rings over the ridge, patient as tax collectors.",
		"notes a vulture settling on a dead branch nearby, folding up like a shabby cloak, to wait.",
	},
	["dur.muse.w16.wild.002"] = {
		"The mottled boars root around the cactus for fallen fruit. Even the boars here have learned to eat around the spines.",
		"A boar with its snout full of cactus spines and no regrets. Durotar breeds them stubborn.",
		"Boars out here are lean, mean and dusty. Anyone would be, living on cactus.",
	},
	["dur.muse.w16.wild.003"] = {
		"The guards say a scorpid with its tail up is only curious. It's the one holding its tail low you should worry about.",
		"According to the guards, a scorpid that raises its tail is curious and one that lowers it is busy. I'd rather meet neither.",
	},
	["dur.muse.w16.wild.004"] = {
		"Lizards on every warm rock, flat as dropped gloves. They don't move until you're one step too close.",
		"See that rock? It's a lizard. That one too. Possibly all of them.",
		"Every lizard here does the same thing: freeze, stare, then vanish the moment you look away.",
	},
	["dur.muse.w16.wild.005"] = {
		"Raptors run wild on the Echo Isles, the fishers of Sen'jin say, lean as fence posts and quicker than rumor.",
		"Even the beasts of the isles turned savage after the trolls left, they say in Sen'jin: raptors in the brush and worse among the huts.",
	},
	["dur.muse.w16.wild.006"] = {
		"reads the tracks crossing the trail: a boar's split hoof, the drag of a lizard's belly, and something with far too many legs.",
		"crouches over a crossing of tracks in the dust, boar and lizard and scorpid, all heading somewhere in a hurry.",
		"kneels by a scuffed patch of dust where something small lost an argument with something larger.",
	},
	["dur.muse.w16.wild.007"] = {
		"A crocolisk can lie in the shallows of the Southfury so still that birds land on it. Then the birds learn something.",
		"The crocolisks of the Southfury look like driftwood until the driftwood opens its mouth.",
	},
	["dur.muse.w16.wild.008"] = {
		"The tigers of Durotar hunt once the light's gone. Sometimes a pair of eyes shows at the edge of sight, then doesn't.",
		"Dark out here belongs to the striped cats. Best keep to open ground, where nothing can come at you from the brush unseen.",
	},
	["dur.muse.w16.wild.009"] = {
		"Everything in Durotar stings, bites, or pretends to be a rock. The clever ones do all three.",
		"If it moves, it bites. If it doesn't move, give it a moment.",
		"Two kinds of wildlife here: the kind that stings, and the kind waiting for the first kind to finish.",
	},
	["dur.muse.w16.wild.010"] = {
		"Harpies nest in the ravines up north. From afar they could pass for vultures. Up close they scream back.",
		"Vultures and harpies share the sky over the northern ravines. The vultures at least wait for you to fall over first.",
	},
	["dur.muse.w16.wild.011"] = {
		"watches a beetle push a ball of dung up a slope, lose it, and start over with great dignity.",
		"steps carefully around a beetle trundling its prize across the trail, unhurried and entirely sure of itself.",
		"grants a beetle the time to finish crossing the trail, which it does with enormous seriousness.",
	},
	["dur.muse.w16.wild.012"] = {
		"The great lizards of the northern ridges carry a charge in their hides; the air around a herd of them smells like a struck anvil.",
		"Up on the northern ridges the big lizards graze on scrub and crackle when they move, like a fire that never quite catches.",
	},
	["dur.muse.w16.wild.013"] = {
		"The crabs on the beaches all walk sideways, as if the shore were tilted and only they could tell.",
		"Down on the shore everything with a shell walks crooked. Nothing there comes at you straight, which is almost polite.",
		"Crabs, makrura, and whatever else the tide brings: the shore has more claws per stride than anywhere in Durotar.",
	},
	["dur.muse.w16.wild.014"] = {
		"Nothing here wastes water. The lizards get theirs from what they eat, and the cactus keeps its own behind a fence of spines.",
		"Every living thing in Durotar is a little miser of water, and the cactus is the richest of them all.",
		"Even the plants hoard in this land: the cactus stores its water and guards it like a goblin guards gold.",
	},
	["dur.muse.w16.wild.015"] = {
		"The lizards have all come out onto the open rock to drink from the hollows. Rain is an event here, even for them.",
		"Every scorpid, boar and lizard in sight has stopped to stand in the rain. Durotar's beasts know a rare thing when it falls on them.",
	},
	["dur.muse.w16.wild.016"] = {
		"flicks a small, indignant scorpid off a boot toe; it lands, regroups, and comes back for more.",
		"nudges a tiny scorpid aside with the edge of a boot; it raises its tail at the boot as if the boot had started it.",
		"watches a scorpid back into a crack, tail last, keeping its opinions to itself.",
	},
	["dur.muse.w16.wild.017"] = {
		"stops to watch a column of ants carry a dead scorpid's leg across the trail like a beam of timber.",
		"steps over a line of ants hauling a scrap of scorpid shell, a whole work gang under one load.",
		"follows a trail of ants to a cracked shell picked clean, then quietly takes a different path.",
	},
	["dur.muse.w16.wry.001"] = {
		"I've started rating rocks by how good they are to sit on. This one's a four. Durotar grades hard.",
		"Best rock to sit on so far: flat, no scorpids, only mildly scorching. I've had worse chairs.",
		"There must be one comfortable rock in Durotar. The search continues, sore backside and all.",
	},
	["dur.muse.w16.wry.002"] = {
		"If Durotar had a motto, it'd be 'Mind your step.' Or just 'Ow.'",
		"Durotar's motto, if it had one: everything bites. Second motto: especially that.",
	},
	["dur.muse.w16.wry.003"] = {
		"The cactus, the scorpid and the guard all wear the same expression. I think it's the local face.",
		"Spines on the plants, spikes on the walls, stingers on the wildlife. This land has a theme and it's sticking to it.",
		"Even the scorpids here give you the guard's look: who sent you, and why.",
	},
	["dur.muse.w16.wry.004"] = {
		"Whoever called Durotar's roads flat never walked them. Or carried anything on them.",
		"One more ridge, everyone says. There's always one more ridge in Durotar. I think someone moves them when nobody's looking.",
	},
	["dur.muse.w16.wry.005"] = {
		"Lovely spot for a picnic, if you like your bread gritty and your company with stingers.",
		"I'd suggest a meal outdoors, but the dust always gets the first bite.",
		"Dinner in the open: one part food, two parts dust, and a pinch of scorpid for flavor if you're unlucky.",
	},
	["dur.muse.w16.wry.006"] = {
		"Two colors in this land: red, and whatever you arrived wearing, which is red by now as well.",
		"I think I was wearing brown when I got here. It's hard to argue the point with the dust anymore.",
		"Washing clothes in Durotar is pure optimism. They come back redder than they went in.",
	},
	["dur.muse.w16.wry.007"] = {
		"Water costs more than ale in this land, which may be the strangest thing ever said in an orc town.",
		"Innkeepers in Durotar water nothing down. Water is the expensive part.",
	},
	["dur.muse.w16.wry.008"] = {
		"The goblins at the zeppelin tower will offer you a seat, a snack and a warning about the snack, and only the seat is free.",
		"Zeppelin goblins will take your name, your bags and your trust, and promise to give back two of the three.",
	},
	["dur.muse.w16.wry.009"] = {
		"If I stand still long enough, the dust will finish burying me and I'll count as scenery.",
		"Keep walking. Stop here too long and Durotar starts treating you like furniture.",
		"Nobody stands still too long in Durotar. Not from discipline: the ground just gets too hot.",
	},
	["dur.muse.w16.wry.010"] = {
		"A short list of things in Durotar that won't hurt me: cactus apples, once peeled. Rocks, if I watch my feet. That's the list.",
		"Friendly things in Durotar, in order: water, shade, a wall at my back. Everything else is negotiable.",
	},
	["dur.muse.w16.wry.011"] = {
		"eyes a cactus, then the trail, then the cactus, and walks a careful half circle around it.",
		"gives a wide berth to a cactus that hasn't done anything yet.",
	},
	["dur.muse.w16.wry.012"] = {
		"Fourth time I've checked my pack for scorpids. None so far. That's exactly what a scorpid would want me to think.",
		"Nothing in the bedroll. Nothing in the boots. Which means it's somewhere else, planning.",
		"Checked everything twice. The scorpid I'm looking for is clearly a professional.",
	},
	["dur.muse.w16.wry.013"] = {
		"I'd trade a story for a cup of cold water. A good story. A true one, even.",
		"Cold water. I've heard of it. Somebody describe it to me, slowly.",
		"If anyone has cold water, I will listen to any story you care to tell. Any story at all.",
	},
	["dur.muse.w16.wry.014"] = {
		"I tripped on a rock, apologized to it, and only then saw it was a lizard. It accepted.",
		"Said sorry to a boulder I bumped into. Durotar is getting to me.",
	},
	["dur.muse.w16.wry.015"] = {
		"Everyone in Durotar looks like they're squinting, and now I know why. My face may stay this way.",
		"Give it a week here and you'll squint at everything, even indoors, even at friends.",
	},
	["dur.muse.w16.wry.016"] = {
		"Out here even my boots look foreign: wrong make, wrong stitching, far too clean. The dust is working on that.",
		"At every watchtower I pass, I count the steps to the next bit of cover. Durotar teaches an Alliance traveler arithmetic.",
		"Every orc I pass looks at my colors before my face. Fair enough: my side does the same with theirs.",
	},
	["dur.npc_meet.w16.ask.001"] = {
		"That's the look of someone with a problem too small for an army and too big for one pair of hands.",
		"Here it comes. Nobody in Durotar looks at a traveler that hopefully unless there's work.",
		"Whatever's troubling this one, it has been troubling them a while. It shows in the jaw.",
	},
	["dur.npc_meet.w16.ask.002"] = {
		"Been waiting for someone to pass this way? Here I am. What needs doing?",
		"Go on, say it. Something out on the ridges needs seeing to.",
	},
	["dur.npc_meet.w16.ask.003"] = {
		"stops to listen, arms folded, as the trouble of this corner of the land is laid out plainly.",
		"leans in to hear what is wanted, head tilted, the way one listens to directions in a country with few roads.",
	},
	["dur.npc_meet.w16.guard.001"] = {
		"The guard's eyes go to my hands first, then my face, then the road behind me. In that order, and fast.",
		"A guard who hardly blinks. With this much dust about, that must take practice.",
		"This guard has stood in the same spot long enough to wear a hollow in the ground. Nothing gets past without being weighed.",
	},
	["dur.npc_meet.w16.guard.002"] = {
		"Quiet stretch of road? Or should I keep a hand ready?",
		"Anything I should know about the ridges before I head out?",
		"Which way's trouble, and which way's the inn?",
	},
	["dur.npc_meet.w16.guard.003"] = {
		"receives a long, unblinking look from the guard and decides, wisely, not to make a joke about it.",
		"is studied by the guard from boots to brow, and seems to pass, since nothing more is said.",
	},
	["dur.npc_meet.w16.inn.001"] = {
		"An innkeeper in Durotar has to be half cook, half quartermaster. This one has the look of both.",
		"Behind the counter, someone who has heard every traveler complain about the dust and agreed with all of them.",
		"Thick walls, a low counter, and a keeper who watches the door as much as the room. Sensible, out here.",
	},
	["dur.npc_meet.w16.inn.002"] = {
		"Something cool to drink, if such a thing exists in Durotar. And whatever smells that good.",
		"A bowl of whatever's in that pot, and a corner where nobody shakes dust on me.",
	},
	["dur.npc_meet.w16.inn.003"] = {
		"sets a dusty pack down by the counter and meets the innkeeper's measuring look with a nod.",
		"stamps the red grit off both boots at the threshold before stepping up to the counter, which earns a look of approval.",
	},
	["dur.npc_meet.w16.teach.001"] = {
		"A teacher in a hard land teaches hard. I'd expect nothing else, and I'll learn quicker for it.",
		"The trainer barely looks up, and still I feel measured. Whatever is taught here won't come wrapped in praise.",
		"Lessons in Durotar come plain and without padding, like everything else here. Good.",
	},
	["dur.npc_meet.w16.teach.002"] = {
		"I'm told you're the one to learn from around here. Show me.",
		"Teach me what this land taught you. I'm listening.",
	},
	["dur.npc_meet.w16.teach.003"] = {
		"stands straight under the trainer's appraising eye, as one does before someone who has plainly earned the right to judge.",
		"notes the trainer's worn gear and steady hands, and pays attention.",
	},
	["dur.npc_meet.w16.trade.001"] = {
		"A trader in Durotar sells two things above all: water and patience. I suspect both are marked up.",
		"The goods are stacked to keep the dust off. The prices are stacked to keep the haggling short.",
	},
	["dur.npc_meet.w16.trade.002"] = {
		"What's good for a long walk on dry ground? Show me that, and skip the rest.",
		"I need things that last in this land. Leather, cord, food that keeps.",
		"Show me what the dust hasn't ruined yet.",
	},
	["dur.npc_meet.w16.trade.003"] = {
		"runs an eye over the merchant's wares, all of it wrapped or covered against the red grit that gets in anyway.",
		"picks up a piece of the merchant's stock, turns it over, and blows the dust off before asking the price.",
	},
	["dur.quest_complete.w16.folk.001"] = {
		"People here ask for help the way they'd ask to borrow a knife: plainly, and expecting it back sharp.",
		"Nobody in this land begs. They ask once, they say what it's worth, and they remember who said yes.",
	},
	["dur.quest_complete.w16.folk.002"] = {
		"Razor Hill can't spare soldiers for every trouble on the ridges. So it asks whoever is walking past. Fair enough.",
		"The guards have the walls, the peons have the lumber, and the little troubles in between go to anyone with a free pair of hands.",
		"Durotar has more troubles than hands. For a little while, the hands were mine.",
	},
	["dur.quest_complete.w16.folk.003"] = {
		"nods to the one who asked, one worker to another, and keeps the thanks short on both sides.",
		"trades a look with the one who asked for help, the plain look of two people who both know how much there is still to do.",
	},
	["dur.quest_complete.w16.folk.004"] = {
		"Not long ago none of this was here: no walls, no wells, no road. Small jobs like this one are how it got built, and how it stays standing.",
		"A country this young runs on favors. I just added one to the pile.",
		"Every wall in Durotar was raised by people still living. The building isn't finished; it goes on, one errand after another.",
	},
	["dur.quest_complete.w16.folk.005"] = {
		"Anything else needs doing, ask. I'd rather be useful than idle in this heat.",
		"Good folk here. Hard as the rock, but good.",
		"You ask, I go, you pay, I go again. Simple country, Durotar.",
	},
	["dur.quest_complete.w16.folk.006"] = {
		"Everyone in Durotar has a small job for whoever walks by. I suspect they keep a shared list.",
		"Ask one person here for directions and leave with three errands. It's a talent.",
	},
	["dur.quest_complete.w16.folk.007"] = {
		"accepts a short word of thanks and finds it lands better than a speech would have.",
		"hears the thanks, says little back, and somehow both sides seem satisfied with that.",
	},
	["dur.quest_complete.w16.folk.008"] = {
		"Whatever this land needs next, send word. I'll come.",
		"Keep the road safe for the next one who walks it. That's thanks enough.",
	},
	["dur.quest_complete.w16.folk.009"] = {
		"Orcs at Razor Hill, trolls at Sen'jin, and the same small troubles at both ends of the road. Help one, and the other hears of it.",
		"In this land the orcs and the Darkspear lean on each other. It's good to be one more thing they can lean on.",
	},
	["dur.quest_complete.w16.folk.010"] = {
		"stretches, dusts off, and looks around this hard little corner of the world as though it might need something else.",
		"claps the grit off both hands and surveys the land around with the look of someone wondering what else it might want.",
	},
	["dur.quest_complete.w16.folk.011"] = {
		"Somebody in Razor Hill will mention this at the fire. Somebody always does; it's how the place keeps its accounts.",
		"The guards on the palisade see who comes and goes with work done. They say little and forget nothing.",
	},
	["dur.quest_complete.w16.folk.012"] = {
		"Done is done. Who's next?",
		"Next trouble, please. This land has a queue.",
		"There. Send in the next one.",
	},
	["dur.quest_complete.w16.folk.013"] = {
		"Every errand here teaches me another fold of this land: which gully echoes, which rock hides a nest, which path the boars use.",
		"Do a few favors for Durotar and it starts to show its corners. I know one more of them now.",
	},
	["dur.quest_complete.w16.folk.014"] = {
		"Look after this corner of the land. I'll look after the next one.",
		"Watch the ridges for me while I'm gone. I'll watch them for you while I'm out there.",
	},
	["dur.quest_complete.w16.pay.001"] = {
		"Settled. Out here payment comes the way water does: never much, and you learn not to waste it.",
		"A fair trade. This land has little to give, so what it gives is counted twice before it's handed over.",
		"Nobody in Durotar gets rich paying for help. I'd have done it for less, but don't tell them.",
	},
	["dur.quest_complete.w16.pay.002"] = {
		"Whatever you can spare. I know what things cost in a land this dry.",
		"A handshake and a full waterskin would have done. But I won't argue.",
		"That settles it. If there's a cup of water in the deal, I'll take that first.",
	},
	["dur.quest_complete.w16.pay.003"] = {
		"weighs the reward in one palm for a moment, then puts it away without counting.",
		"accepts what is offered, and taps the dust off it out of habit before stowing it.",
		"puts the pay away with a short nod, the kind that closes a bargain in these parts.",
	},
	["dur.quest_complete.w16.pay.004"] = {
		"Whatever they handed over, it came from people who don't have much spare. That makes it heavier in the pack.",
		"Small pay, honest hands. A land this poor can't afford to cheat the people who help it.",
		"Nobody here pays with a smile, and nobody short-changes you either. I'll take that bargain.",
	},
	["dur.quest_complete.w16.pay.005"] = {
		"A fair price for fair work. Put it in the ledger, if this land keeps one.",
		"What's owed is paid. Good. I like a debt that ends clean.",
		"We're square. Call on me if the ridges start biting.",
	},
	["dur.quest_complete.w16.pay.006"] = {
		"Half of what I earned in Durotar is red grit in the seams of my pack. The other half, at least, I can spend.",
		"The reward is in my hand. The scratches are on my arms. I know which will last longer.",
		"Earned, paid, and already wondering what the next errand will cost me in boot leather.",
	},
	["dur.quest_complete.w16.pay.007"] = {
		"turns the reward over twice, as if expecting a scorpid to crawl out of it, then tucks it away.",
		"shakes the pay once before pocketing it; in this land, anything left on the ground long enough grows a stinger.",
	},
	["dur.quest_complete.w16.pay.008"] = {
		"In this country a debt is remembered longer than a name. Somewhere a tally just moved my way.",
		"Durotar keeps count of who helped and who didn't, quietly, the way stone keeps the shape of rivers long gone.",
	},
	["dur.quest_complete.w16.pay.009"] = {
		"Don't thank me twice. Once is plenty, and the scorpids are listening.",
		"Keep the speech. A nod does the same job and costs nothing.",
	},
	["dur.quest_complete.w16.pay.010"] = {
		"Word travels along the road to Razor Hill faster than any runner. Somebody there will hear of this before long.",
		"Small deeds get talked about in a place this small. My name just picked up a little dust and a little weight.",
	},
	["dur.quest_complete.w16.pay.011"] = {
		"takes a swallow from the waterskin as the business ends, a small private toast to a job closed.",
		"counts nothing, asks nothing more, and caps the waterskin as if sealing the bargain.",
	},
	["dur.quest_complete.w16.pay.012"] = {
		"The pay is in my pack. Whether the work was worth doing, this land will decide in its own slow time.",
		"Paid. Out here the pay is the easy part. Knowing what the work changed takes longer.",
	},
	["dur.quest_complete.w16.pay.013"] = {
		"opens the pack to stow the reward and finds that Durotar got in there first: a fine layer of red grit over everything.",
		"stows the reward among gear already dusted red, where it will fit right in within the hour.",
	},
	["dur.quest_complete.w16.walk.001"] = {
		"That's settled, and the road is already pulling at my boots. Durotar doesn't let anyone stand still for long.",
		"The next trail starts right where this one ended, in the same red grit.",
		"Back out, then. The ruts in the road are deep enough to follow with my eyes shut, nearly.",
	},
	["dur.quest_complete.w16.walk.002"] = {
		"shoulders the pack and turns back toward the road, red dust already climbing the boots to the ankle.",
		"steps away from the business and looks along the trail, choosing between two ridges.",
		"tightens a strap and sets off at a pace meant to last.",
	},
	["dur.quest_complete.w16.walk.003"] = {
		"Good. Fill the skins and point me at the next hill.",
		"Which way next? Don't say the long way. It's always the long way.",
		"On my way. If the road gets lonely, the vultures will keep me company.",
	},
	["dur.quest_complete.w16.walk.004"] = {
		"Work done, and the land unchanged: the same ridges, the same cracked stone. It does not notice what we do on it, and maybe that is a kindness.",
		"The ridges were here before the errand and will be here long after. I walk on, lighter by one task.",
	},
	["dur.quest_complete.w16.walk.005"] = {
		"Every job in Durotar ends with a walk. Some start with one too, and keep another in the middle.",
		"That's it? Good. My feet were hoping you'd say that.",
	},
	["dur.quest_complete.w16.walk.006"] = {
		"Wherever the next job is, it'll be a fair walk off. Nothing in Durotar sits close to anything else.",
		"This land is all distance and no shortcuts. Good thing I'm in no hurry.",
		"Back to the road. It's the only thing here that goes anywhere on purpose.",
	},
	["dur.quest_complete.w16.walk.007"] = {
		"slaps red dust from both knees and starts back the way {g:he|she} came, slower than before.",
		"works a kink out of one shoulder, squints along the red trail, and walks.",
		"kicks a stone off the path and follows it a few steps, as good a direction as any.",
	},
	["dur.quest_complete.w16.walk.008"] = {
		"On the way back I'll take the other side of the ridge. I haven't seen what's behind it, and this land doesn't show everything at once.",
		"Same road back, but it looks different with the job done. Wider, somehow.",
		"The walk out always feels shorter than the walk in. A trick this land plays, and I don't mind it.",
	},
	["dur.quest_complete.w16.walk.009"] = {
		"Tell the next one in line I'm on the road. They'll find me by the dust.",
		"If anyone else needs a hand, I'll be somewhere between here and the next ridge.",
	},
	["dur.quest_complete.w16.walk.010"] = {
		"I'd swear the same vulture has followed me for the whole errand. Waiting, the way they do here.",
		"Over, and nothing stung me on the way back. In this land that counts as a bonus.",
	},
	["dur.quest_complete.w16.walk.011"] = {
		"looks back once at the place where the work was done, then out at the red country that has already forgotten it.",
		"leaves the business behind and climbs a little rise to read the land ahead: ridge, gully, scrub, ridge.",
		"sets off without hurry, in the loose, ground-eating stride that the long roads of this land teach.",
	},
	["dur.quest_complete.w16.walk.012"] = {
		"Good. Now to find a road that isn't uphill both ways.",
		"Point me at some shade. Oh, right. There isn't any.",
	},
	["dur.quest_complete.w16.walk.013"] = {
		"allows {g:himself|herself} a moment's rest once the business is done, back against warm red stone.",
		"sits on a flat rock for a moment, after checking under it, and then gets up and goes on.",
	},
	["dur.quest_progress.w16.done.001"] = {
		"That's all of it. The walk back is the one part of the job that won't argue with me.",
		"Everything that was asked, done. The road back is long, but it's the light end of the job.",
		"Complete. Now the walk back, with nothing left to look for and plenty of time to look around anyway.",
	},
	["dur.quest_progress.w16.done.002"] = {
		"Finished out here. Now the triumphant return: dusty, scratched and squinting.",
		"All done. Someone back there had better still be waiting, after all this.",
		"That's the lot. If anything else in Durotar wants to stop me on the way back, it can take a number.",
	},
	["dur.quest_progress.w16.done.003"] = {
		"checks over the finished work one last time, then turns back toward the one who asked for it.",
		"straightens with the task complete and fixes {g:his|her} eyes on the long way back across the red country.",
		"sets the last part of the job to rights and turns for the return without wasting a step.",
	},
	["dur.quest_progress.w16.done.004"] = {
		"The lot, and nothing missing. Back I go.",
		"Finished here. Time to go and tell them.",
	},
	["dur.quest_progress.w16.step.001"] = {
		"Part of it, anyway. Somewhere among the ridges the remainder is waiting to be found.",
		"That piece is handled. Durotar is holding on to the others.",
		"Some of the way there. The land won't give up the rest without a walk.",
	},
	["dur.quest_progress.w16.step.002"] = {
		"Good progress. Also, more dust in my boots than an hour ago. Both count.",
		"Getting there. The scrub has taken a little skin off my shins as its share.",
	},
	["dur.quest_progress.w16.step.003"] = {
		"tallies the work so far on dusty fingers, frowns at what remains, and keeps going.",
		"pauses to take stock, one task partly behind and the rest of it ahead among the red rocks.",
	},
	["dur.quest_progress.w16.step.004"] = {
		"One more done. My shoulders say stop; the job disagrees, and the job is louder.",
		"Some way along. This land makes every step cost something, and I'm still paying.",
	},
	["dur.quest_progress.w16.step.005"] = {
		"That's one. Where's the rest hiding?",
		"Getting somewhere. Slowly, but somewhere.",
	},
	["dur.quest_progress.w16.step.006"] = {
		"A little more of the task done, and the red country hasn't moved a stone for it. That's how it is here: the land waits, and you finish.",
		"Progress. The ridges look exactly as they did, which in Durotar is both an insult and a comfort.",
	},
	["dur.victory.w16.won.001"] = {
		"The dust takes longer to settle than the fight took to end.",
		"Done. The grit is still hanging in the air, slow to come down.",
		"Over. The red haze thins, slowly.",
	},
	["dur.victory.w16.won.002"] = {
		"drops to one knee on the hard red ground, just for a moment, then rises.",
		"lets the shaking go out of {g:his|her} hands before moving on.",
	},
	["dur.victory.w16.won.003"] = {
		"Durotar tests everything that walks on it. You failed.",
		"The red country sorts the hard from the soft. You were the soft one.",
		"Too soft for this land. It happens.",
	},
	["dur.victory.w16.won.004"] = {
		"Nothing in this land dies gently, and nothing lies long. By tomorrow the scavengers will have tidied up.",
		"The land will clear this away soon enough. It wastes nothing.",
	},
	["dur.victory.w16.won.005"] = {
		"Lie easy. Red earth holds what it's given.",
		"Rest now. Durotar's ground is hard, but it keeps its dead quiet.",
		"Sleep in the dust. It's warm, at least.",
	},
	["dur.victory.w16.won.006"] = {
		"Small fights like that, one after another: that's how Orgrimmar got built.",
		"In Durotar, everything gets built out of small fights like that one.",
	},
	["dur.victory.w16.won.007"] = {
		"stands a moment in the settling dust, then turns back to the way ahead.",
		"kicks loose grit over the scuffed ground and moves on without a backward look.",
	},
	["dur.victory.w16.won.008"] = {
		"My hands are shaking a little. Heat or the fight, it hardly matters which.",
		"Hands not quite steady. Give them a moment. Durotar will wait.",
	},
	["dur.victory.w16.won.009"] = {
		"That's settled. Red country, send the next one.",
		"Done. This land can keep them coming.",
		"Next. Durotar never runs short.",
	},
	["dur.victory.w16.won.010"] = {
		"The Darkspear say the land remembers who walks it with care. I hope that counted as care.",
		"The trolls of Sen'jin say the earth keeps count of how it's treated. I wonder how that fight will be counted.",
		"Was that care, or just survival? The land will decide.",
	},
	["dur.victory.w16.won.011"] = {
		"straightens up out of the red haze of the fight, shoulders squared.",
		"looks around through the drifting grit for whatever comes next.",
	},
	["dur.victory.w16.won.012"] = {
		"Quiet again. Durotar goes back to minding its own business.",
		"Silence settles, and the land acts as if nothing happened.",
	},
	["dur.victory.w16.won.013"] = {
		"A clean end, in hard country. More than most get.",
		"Quick and clean. In Durotar, that counts as kindness.",
		"Short and clean. The land approves of that.",
	},
	["dur.victory.w16.won.014"] = {
		"This land is hard on everyone. Then again, so am I.",
		"Hard ground, hard fight, hard ending. Durotar would approve.",
		"Hard rock underfoot, a steady hand. That's what this country asks.",
	},
	["dur.victory.w16.won.015"] = {
		"Go tell the Razormane the roads of Durotar aren't theirs.",
		"One less quill pointed at Razor Hill.",
		"Bristles in the red dust. Razor Hill can rest easier.",
	},
	["dur.victory.w16.won.016"] = {
		"Fast on open ground, the Kolkar. Not fast enough.",
		"All those hooves, and it still ended in the dust.",
	},
	["dur.victory.w16.won.017"] = {
		"checks both arms for claw marks once the raptor lies still, and finds a few.",
		"steps back from the raptor, shaking out an arm that took more of the teeth than it should have.",
	},
	["dur.victory.w16.won.018"] = {
		"One fewer shriek over Drygulch. The ravine owes me.",
		"Feathers settle, and for once nothing is screaming. Lovely.",
		"No more wings over the ravine. The vultures can have the sky back.",
	},
	["dur.victory.w16.won.019"] = {
		"Whatever had hold of you, it's let go now. Rest.",
		"Free of Zalazane at last. I'm sorry it took this.",
	},
	["dur.victory.w16.won.020"] = {
		"Down, all that crackling weight. The ground felt that.",
		"That much lizard makes a fine noise going down.",
	},
	["dur.victory.w16.won.021"] = {
		"Nobody in Durotar has an easy life. At least the end was quick.",
		"Hard life, hard land, short end. I don't envy anything born here.",
	},
	["dur.victory.w16.won.022"] = {
		"Let the ridges hear it: this one's over.",
		"Tell the red hills. One more quarrel settled.",
		"Quarrel's closed. The hills keep the record.",
	},
	["dur.victory.w16.won.023"] = {
		"looks down a moment longer than needed while the red dust settles, then lets it go.",
		"pauses in the quiet, head bowed briefly over the scuffed red ground, before turning away.",
		"bows {g:his|her} head once over the red dust, then moves on.",
	},
	["dur.victory.w16.won.024"] = {
		"Someone at Razor Hill will hear about this. Probably from me.",
		"That's a story for the inn, if I tell it right and leave out the stumble.",
	},
	["dur.victory.w16.wry.001"] = {
		"A vulture somewhere just cheered. I can feel it.",
		"I'd bet the vultures are already arguing over the seating.",
		"The vultures thank you for your service.",
	},
	["dur.victory.w16.wry.002"] = {
		"I'd boast, but the only audience is a lizard, and it's unimpressed.",
		"Nobody saw that but the scorpids. Typical.",
		"A triumph witnessed by one cactus. Glory, Durotar style.",
	},
	["dur.victory.w16.wry.003"] = {
		"spits out a mouthful of grit and looks faintly offended by it.",
		"pats down every pocket and finds red dust in all of them.",
	},
	["dur.victory.w16.wry.004"] = {
		"Note for later: every fight in Durotar comes with free sand. In every crease.",
		"Won. Also, there's grit somewhere I can't reach, and that's my real enemy now.",
	},
	["dur.victory.w16.wry.005"] = {
		"If that was Durotar being friendly, I don't want to see it cross.",
		"Lovely country. Everything here tries to kill you, and takes turns doing it.",
		"This country's idea of a hug has thorns in it.",
	},
	["dur.victory.w16.wry.006"] = {
		"glances around the empty red land as if expecting applause, and gets none.",
		"gives a little bow to no one at all, then winces at a bruise.",
	},
	["dur.victory.w16.wry.007"] = {
		"That's the most excitement this patch of rock has seen all year.",
		"The cactus over there saw everything. It's not telling.",
		"Nothing to see here, lizards. Move along.",
	},
	["dur.victory.w16.wry.008"] = {
		"One point to Durotar, none to anyone else. I'll mark it on its behalf.",
		"Score one for the red country. I'm just the help.",
	},
	["dur.victory.w16.wry.009"] = {
		"Cracked open. Somebody in Sen'jin would have a recipe for that.",
		"All that clacking, and it ended like every crab does: open.",
	},
	["dur.victory.w16.wry.010"] = {
		"Crab on the menu, then. Don't tell its cousins.",
		"Sideways all its life, and it still couldn't dodge.",
	},
	["dur.victory.w16.wry.011"] = {
		"Everything I own is part red dust now. Including, apparently, me.",
		"Won, and I'm wearing half of Durotar for it.",
	},
	["dur.victory.w16.wry.012"] = {
		"Next time, pick a fight somewhere with shade.",
		"You couldn't have jumped me near a well? Rude.",
		"Couldn't we have done this somewhere cooler?",
	},
	["dur.weather_change.w16.sky.001"] = {
		"The haze lifts, and the landmarks I'd given up on are back where they belong: that spire, that ridge, that lonely watchtower.",
		"The air clears all at once. Durotar shows itself in full detail, down to the last thornbush.",
	},
	["dur.weather_change.w16.sky.002"] = {
		"looks up as the first drops darken the red stone, each one leaving a spot the color of rust.",
		"watches the rain bead on the dust instead of sinking in, as if the ground had forgotten how to drink.",
	},
	["dur.weather_change.w16.sky.003"] = {
		"Cover your face! The sand's coming up off the flats.",
		"Here comes the sand. Eyes down, mouth shut, keep walking.",
	},
	["dur.weather_change.w16.sky.004"] = {
		"The air goes heavy and smells like hot metal. Durotar is about to remember it has a sky.",
		"Clouds pile up over the ridges, low and dark, and every lizard in sight vanishes into a crack. They know.",
	},
]==])
