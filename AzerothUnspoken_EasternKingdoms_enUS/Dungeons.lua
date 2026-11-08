-- English texts of the regional pack eastern_dungeons (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/Dungeons.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("eastern", "enUS", "eastern_dungeons", [==[
	["brd.attack.01"] = {
		"Cool off!",
		"Something to remember the surface by!",
	},
	["brd.battle.01"] = {
		"The mountain sends another one. Good. I'm warmed up already.",
		"Hot halls, hard foes. Come on, then.",
		"Stand and fight. Down here there's nowhere cool to run to.",
	},
	["brd.battle.02"] = {
		"sets {g:his|her} feet on the hot stone and meets the attack in the red glow of the forges.",
		"turns to face the charge, sweat already running, the whole hall lit like the inside of a furnace.",
	},
	["brd.encounter_end.01"] = {
		"That's {encounter} dealt with. The mountain can keep its heat; I'll keep this.",
		"Down. Another name the Dark Iron will have to stop shouting.",
	},
	["brd.lowhp.01"] = {
		"Not here. I won't end up as one more lump of slag.",
		"Hold. The heat is making it worse. Hold anyway.",
	},
	["brd.muse.01"] = {
		"A whole city carved under the mountain, forges and halls and streets. The Dark Iron built this, and they built it well.",
		"Shadowforge City. Say what you like about Thaurissan's people, they know how to cut stone.",
		"Streets, statues, a throne room under a mountain of fire. The Dark Iron didn't hide down here; they ruled.",
	},
	["brd.muse.02"] = {
		"blinks against the heat rising through the very floor, from something vast that burns far below.",
		"stands at a railing above a river of molten rock, and feels the mountain's heat press on {g:his|her} face like a hand.",
	},
	["brd.muse.03"] = {
		"Thaurissan called Ragnaros up from the deep, and the Dark Iron have served the fire ever since. The fire never says thank you.",
		"Somewhere under my boots is the Firelord himself. I try not to think about it, and fail.",
	},
	["brd.muse.04"] = {
		"A tavern. Down here, in the middle of all this, the Dark Iron kept a tavern. I respect that.",
		"Of course there's a pub. Every dwarven city has one, even the one built over a volcano.",
	},
	["brd.muse.05"] = {
		"Emperor Dagran Thaurissan sits on his throne somewhere ahead. Every hall I clear brings that throne closer.",
		"At the heart of all this stone and fire is one dwarf on a throne. That's the one who matters.",
	},
	["brd.subzone_enter.01"] = {
		"enters {subzone}, where the red light of the lava throws long, moving shapes over the carved stone.",
		"walks into {subzone}; the ring of distant hammers changes pitch, as if the city had noticed.",
	},
	["brd.threat.01"] = {
		"I've come a long way down. Don't make me go through you.",
		"Step aside. The heat's bad enough without you in my way.",
	},
	["brd.victory.01"] = {
		"Done. My gear's hot enough to cook on.",
		"One down. I'd trade every coin I own for a cold drink.",
	},
	["brd.victory.02"] = {
		"steps back as the fallen settles on the hot stone, and far off the forges of the city keep hammering.",
		"catches {g:his|her} breath in the glow of the lava, while ash drifts down on the stillness like gray feathers.",
	},
	["brs.attack.01"] = {
		"There's your tribute!",
		"Back down the mountain with you!",
	},
	["brs.battle.01"] = {
		"You want the spire? Come and keep it.",
		"I've climbed too far to stop for you.",
		"Come on. You're just another step on the stair.",
	},
	["brs.battle.02"] = {
		"Breathe. Watch the edges. A fall here is a long one.",
		"Mind the ledge. The spire doesn't need to kill me itself; it can just let me drop.",
		"Back to the wall. Too many drops, too much smoke.",
	},
	["brs.encounter_end.01"] = {
		"{encounter} won't hold this hall any longer. One less thing between me and the top.",
		"Done. Higher up, the dragons will have felt that.",
	},
	["brs.lowhp.01"] = {
		"Not here. Not for some dragon's doorman.",
		"I've climbed too high to fall now.",
		"Still breathing. Still angry. Come on.",
	},
	["brs.muse.01"] = {
		"The Dark Iron carved this spire long ago. Orcs hold it now, and over them, the black dragons.",
		"Once a dwarven fortress, then an orc stronghold, now a roost for the black dragonflight. The mountain keeps changing masters.",
	},
	["brs.muse.02"] = {
		"Rend Blackhand calls himself Warchief up there. Thrall would have a word for that.",
		"A Dark Horde under a false warchief, holding the spire for a dragon. Strange loyalties grow in the heat.",
	},
	["brs.muse.03"] = {
		"looks up through the smoke, where black shapes with wings shift on ledges far overhead.",
		"hears the scrape of great claws from higher up, and the rumble of something breathing like a forge.",
		"pauses on a ledge of black rock while a hot draft rises from the depths, carrying the smell of brimstone.",
	},
	["brs.muse.04"] = {
		"Orcs, ogres, trolls, spiders and dragons. Whoever does the hiring here never says no.",
		"Every race with a grudge seems to have a room in this place.",
	},
	["brs.muse.05"] = {
		"General Drakkisath waits at the top, a dragon in a soldier's shape. Everything between here and him is just stairs.",
		"The higher the spire climbs, the closer the dragons get. Drakkisath is only the first of them.",
	},
	["brs.muse.06"] = {
		"Smoke in my throat, heat on my face, the mountain humming under my feet. This place wears you down without lifting a hand.",
		"Breathing here is work. Every lungful tastes of ash and old iron.",
	},
	["brs.subzone_enter.01"] = {
		"climbs into {subzone}, where the black stone is scorched and every doorway looks guarded.",
		"passes into {subzone}; the air grows hotter, and the echoes of claws and boots come from everywhere at once.",
	},
	["brs.threat.01"] = {
		"Stand aside. I'm going up, through you or past you.",
		"Run and tell the top of the spire I'm on my way.",
	},
	["brs.victory.01"] = {
		"stands among the fallen in the smoke, the black rock ticking as it cools all around.",
		"lowers {g:his|her} guard and listens: from higher up the spire, something answers the silence with a roar.",
		"catches {g:his|her} breath against a pillar of black stone, sweat stinging the eyes.",
	},
	["brs.victory.02"] = {
		"Next. The spire has plenty, I'm sure.",
		"That's one. The mountain has a few thousand more, but that's one.",
	},
	["ddm.battle.01"] = {
		"Tight tunnels, bad light. Suits me fine.",
		"Come on, then. This mine has nowhere left to hide you.",
		"Out of the shadows and into the lantern light. I want to see your face.",
	},
	["ddm.lowhp.01"] = {
		"Not in a mine. I refuse to be found by the next shift of miners.",
		"Still up. The Defias will have to try harder.",
	},
	["ddm.muse.01"] = {
		"VanCleef's masons rebuilt Stormwind and were never paid. This mine is what that debt grew into.",
		"Stonemasons cheated by the nobles, and now a brotherhood of thieves under the hills. Unpaid wages make a long fuse.",
	},
	["ddm.muse.02"] = {
		"A whole ship, hidden in a cave under Westfall. You have to admire the nerve.",
		"They built a ship underground. In a mine. I've seen sillier plans, but not many.",
	},
	["ddm.muse.03"] = {
		"ducks under a sagging timber prop, where the lanterns of the Defias light tunnels thick with dust and sawdust.",
		"stops to listen; from deeper in the mine come the clank of tools and the hiss of goblin machines.",
	},
	["ddm.muse.04"] = {
		"Past these tunnels, Edwin VanCleef waits on his ship. Westfall has paid for his grudge long enough.",
		"Every Defias in Westfall answers, in the end, to the man at the bottom of this mine.",
	},
	["ddm.victory.01"] = {
		"lets out a breath that stirs the dust, and listens to the mine creak and settle.",
		"steps back from the fallen, coughing on sawdust, while further on a goblin machine keeps grinding.",
		"wipes the grime from {g:his|her} face; the lanterns sway, and the place goes quiet.",
	},
	["gnm.battle.01"] = {
		"Gears, teeth or both? Doesn't matter. Come on.",
		"Whatever you are under all that grime, you're in my way.",
	},
	["gnm.muse.01"] = {
		"This was a city once. Gnomes slept in these rooms and argued over these workbenches. Now the troggs sleep here.",
		"Whole streets of brass and pipes, built with love, and all of it handed to the troggs by one bad choice.",
		"Workshops, homes, a whole city's worth of clever hands, and now only troggs and rust.",
	},
	["gnm.muse.02"] = {
		"covers {g:his|her} mouth against the stale, metallic air; the radiation left more than rust in these halls.",
		"steps around a puddle that glows faintly green, and does not look too long at what floats in it.",
	},
	["gnm.victory.01"] = {
		"Down. In a moment I'll check I still have all my fingers.",
		"One less thing clanking or snarling in the dark. Gnomeregan won't miss it.",
	},
	["sch.battle.01"] = {
		"Here's a lesson they never taught you down here.",
		"Lesson's starting. You won't like the teacher.",
	},
	["sch.battle.02"] = {
		"Whatever this school made of you, you'll fall like anything else.",
		"Bone or flesh or something in between. It all goes down the same.",
	},
	["sch.encounter_end.01"] = {
		"{encounter} won't be part of this school's lessons any more. That's something.",
		"One less horror on the timetable.",
	},
	["sch.lowhp.01"] = {
		"I'm not going to be anyone's lesson.",
		"Not here. They'd only use what's left of me.",
	},
	["sch.muse.01"] = {
		"A school. They teach death here the way other places teach letters, with lessons and homework.",
		"Classrooms, lecterns, students taking notes. Only the subject is raising corpses.",
	},
	["sch.muse.02"] = {
		"The Barovs sold Caer Darrow to the Cult of the Damned. I wonder if the gold was worth it.",
		"A noble family handed their castle to the necromancers for a price. The price still walks the halls.",
	},
	["sch.muse.03"] = {
		"passes a table of bones laid out in neat rows, like specimens waiting for a lesson.",
		"stops at the edge of a lecture hall, where empty benches face a dais stained dark with old work.",
	},
	["sch.muse.04"] = {
		"Darkmaster Gandling runs a strict school. Detention here is permanent.",
		"I'd hate to see what they give you for failing a test in this place.",
	},
	["sch.muse.05"] = {
		"Caer Darrow was a lovely place once, by all accounts. A lake, an island, a castle. Then the necromancers moved in.",
		"An island castle on a quiet lake. Under it, the worst school in the world.",
	},
	["sch.subzone_enter.01"] = {
		"goes down into {subzone}; the cold here is the cellar kind, damp and old, with a faint smell of chemicals.",
		"comes into {subzone}, where the torches burn low and the walls keep the murmur of lessons given long ago.",
	},
	["sch.victory.01"] = {
		"Class dismissed.",
		"Failed. Don't bother sitting the exam twice.",
	},
	["sch.victory.02"] = {
		"steps back from the fallen and wipes {g:his|her} hands, as if anything in this school could ever come clean.",
		"stands still in the cold hall afterward, listening; a door closes far off, unhurried, like the end of a lesson.",
	},
	["sfk.battle.01"] = {
		"Come on, then. This keep has had enough masters.",
		"Out of the dark. I can hear you.",
	},
	["sfk.muse.01"] = {
		"Arugal called the worgen to fight the Scourge. Now the keep belongs to them, and so, they say, does he.",
		"A wizard of Dalaran brought wolves to save Silverpine. The wolves stayed, and the wizard went mad among them.",
	},
	["sfk.muse.02"] = {
		"pauses under a cold stone arch, where the tapestries hang in rags and something howls far up in the towers.",
		"listens to the old keep creak all around; claws click on stone beyond the next door.",
		"runs a hand along a wall scored with long, deep scratches, too high up for any ordinary dog.",
	},
	["sfk.victory.01"] = {
		"steps over the fallen and listens; somewhere above, another howl answers the silence.",
		"straightens up among the dust and broken furniture, listening to the keep go quiet, for now.",
	},
	["smn.attack.01"] = {
		"Here's your penance!",
		"On your knees!",
	},
	["smn.battle.01"] = {
		"Save the sermon. I've heard it.",
		"A pyre, you say? You'll have to catch me first.",
		"Red tabard, raised blade, and not one doubt in your head. Come on.",
	},
	["smn.battle.02"] = {
		"Steady. Tight halls, hard floor, nowhere to run. That cuts both ways.",
		"Fine. The monastery wants a fight; it gets one.",
	},
	["smn.encounter_end.01"] = {
		"looks down at {encounter} and then up at the vaulted ceiling, where the echo of the fight is still dying away.",
		"stands in the hush that follows the fight, and all that red cloth around the hall suddenly looks very ordinary.",
	},
	["smn.lowhp.01"] = {
		"Not on your clean floor. Not today.",
		"You'll need more than faith to finish me.",
	},
	["smn.muse.01"] = {
		"Red banners, clean floors, candles lit in rows. Everything here is in order except the people.",
		"So much care in the stonework, so much hate in the hands that keep it.",
		"The Crusade kept the hymns and lost the mercy somewhere along the way.",
	},
	["smn.muse.02"] = {
		"Lovely place. Polished floors, fresh candles, and everyone in it wants me burned.",
		"I've had warmer welcomes from wolves. At least wolves don't preach first.",
	},
	["smn.muse.03"] = {
		"stops beneath a vaulted ceiling where every candle burns straight and still, as if afraid to flicker.",
		"walks softly on stone worn smooth by the knees of the devout, and finds no comfort in it.",
	},
	["smn.muse.04"] = {
		"They'd purge the whole of Lordaeron to be sure of the Scourge. Me too, without a second thought.",
		"Zeal is a fire that doesn't ask what it burns. These people stopped asking long ago.",
	},
	["smn.muse.05"] = {
		"Books, relics, armor, a cathedral. The Crusade hoards the past the way misers hoard coin.",
		"So much kept behind these walls: old books, old blades, old prayers. Kept, not shared.",
	},
	["smn.subzone_enter.01"] = {
		"steps into {subzone}, where the stone is scrubbed clean and the air smells of wax and old incense.",
		"moves quietly into {subzone}; the halls carry every footstep ahead of {g:him|her}, like a warning.",
	},
	["smn.threat.01"] = {
		"Preach at me once more and see where it gets you.",
		"So much faith, and none of you asks whether I'm worth dying for.",
	},
	["smn.victory.01"] = {
		"steps back from the fallen, and the candles nearby burn on, steady and indifferent.",
		"lowers {g:his|her} guard slowly; the hall is silent, and the stone floor has one more stain to scrub.",
	},
	["smn.victory.02"] = {
		"Quiet at last. This place shouts more than any holy house should.",
		"Down. Somebody's going to have to scrub that floor, and it won't be me.",
	},
	["stk.muse.01"] = {
		"A prison in the middle of Stormwind, and the prisoners hold it. Somebody upstairs is having a very bad week.",
		"The cells are open and the inmates run the place. So much for locks.",
		"Iron bars, stone walls, and a riot behind them. The guards must be thrilled.",
	},
	["str.battle.01"] = {
		"Back into the ashes with you.",
		"Your time ran out long ago. Lie down.",
	},
	["str.battle.02"] = {
		"Something else crawls out of the ruins. Come on, then.",
		"Burning streets, broken walls, and you. Settle it, then.",
	},
	["str.encounter_end.01"] = {
		"stands over {encounter} while the ash drifts down, and for a moment the burning city seems a little quieter.",
		"lets the silence after the fight settle, and looks out over the ruins as if counting what is left.",
	},
	["str.lowhp.01"] = {
		"Not here. Anyone who falls in Stratholme gets up again, and not as themselves.",
		"Get up. I am not joining this city's dead.",
	},
	["str.muse.01"] = {
		"Stratholme burned once and never stopped. The fires are still going, and nobody is left to put them out.",
		"A great city of Lordaeron, ash and embers now. Even the street signs are scorched.",
	},
	["str.muse.02"] = {
		"Arthas purged this city to stop the plague. Now Baron Rivendare holds it for the Scourge. The dead got it anyway.",
		"Everyone who lived here was killed to keep them from the Scourge, and the Scourge took them all the same.",
	},
	["str.muse.03"] = {
		"steps around a heap of charred timber, and the smell of old smoke and older death rises from it.",
		"pauses in a ruined street where embers still glow under the rubble, and the stillness has a sound of its own.",
	},
	["str.muse.04"] = {
		"Half the city is the Scourge's, half is the Crusade's, and both halves want me dead. At least they agree on something.",
		"Undead on one side, zealots on the other. Stratholme never had much luck with its neighbors.",
	},
	["str.muse.05"] = {
		"Somebody owes this city a proper ending. It might as well be me.",
		"Stratholme can't be saved. It can still be finished properly.",
	},
	["str.subzone_enter.01"] = {
		"moves into {subzone}, where scorched walls lean close and nothing moves that should.",
		"goes carefully into {subzone}; every doorway is dark, and every window was broken long ago.",
	},
	["str.victory.01"] = {
		"steps back as the fallen crumples to the ground, one more shape for a city already full of them.",
		"lowers {g:his|her} guard and listens; the whole ruined city seems to hold its breath, then go on smoldering.",
	},
	["str.victory.02"] = {
		"Another life spent in this city. It has spent so many.",
		"Done. It doesn't feel like winning, here. It feels like tidying a grave.",
	},
	["tah.battle.01"] = {
		"Deep water, bad footing, worse company. Come on.",
		"Mud to the knees and something angry ahead. Of course.",
	},
	["tah.muse.01"] = {
		"The Atal'ai tried to call Hakkar into the world, and Ysera drowned their temple in the swamp for it. They're still trying.",
		"A whole temple pushed under the marsh to stop one ritual, and the priests below never stopped chanting.",
	},
	["tah.muse.02"] = {
		"wades through knee-deep water between the sunken statues, while something with wings stirs in the gloom overhead.",
		"stops on a mossy stair half-drowned in green water; the dragons that keep watch here look as weary as the stone.",
		"listens to the slow drip from the vaulted ceiling, and under it, faintly, a chant in a troll tongue.",
	},
	["tah.victory.01"] = {
		"Quiet. Only the dripping, and the chant somewhere deeper. It never really stops here.",
		"That's done. The temple goes on murmuring to itself, under all that water.",
	},
	["uld.battle.01"] = {
		"Get in line. Everything down here wants a turn at me.",
		"Everything in Uldaman wants a piece of me. Take a number.",
	},
	["uld.muse.01"] = {
		"These vaults were old before the dwarves had a name. The Explorers' League would give a beard to read every wall.",
		"Titan stone: seamless, cold and enormous. Whoever built this didn't think in human sizes.",
	},
	["uld.muse.02"] = {
		"stops before a great carved figure set into the wall, and has the uneasy sense that its stone eyes are following.",
		"watches dust drift down from the vault, where statues taller than houses stand in their niches, waiting.",
		"brushes a palm over the wall and finds no seam, no joint, nothing a mason would recognize.",
	},
	["uld.victory.01"] = {
		"Silence. The old stone has seen a thousand fights like this one and kept none of them.",
		"Done. The vault doesn't notice. It was here before the fight and it'll be here long after.",
	},
	["abg.battle.01"] = {
		"This banner stays the color it is.",
		"You want this base? Then pay for it.",
		"Step away from the banner. Nobody takes it while I'm here.",
	},
	["abg.lowhp.01"] = {
		"Not yet. Somebody has to hold this base until help comes.",
		"Hit, not beaten. The banner's still up.",
	},
	["abg.muse.01"] = {
		"Five places worth holding: a stable, a farm, a forge, a mill and a mine. Strange how every war comes down to bread, iron and timber.",
		"This was good farmland once. Now it's a game board, and the pieces carry swords.",
		"From the mill on the hill you can see the whole basin: every banner, every runner, every bad decision.",
	},
	["abg.muse.02"] = {
		"watches the banners across the basin change color one by one, as if the whole valley were breathing in and out.",
		"pauses at the edge of the road, eyes moving from banner to banner across the valley.",
	},
	["abg.muse.03"] = {
		"Somebody keep an eye on the blacksmith. Everybody forgets the blacksmith.",
		"Don't all chase the same fight. A base nobody guards is a base gone.",
	},
	["abg.victory.01"] = {
		"Down. Check the banner, then check the road.",
		"That's one. Now: what color is the banner?",
		"Clear, for a moment. In this valley a moment is all anyone ever gets.",
	},
	["avl.battle.01"] = {
		"This road is held. Turn back, or end up in the snow.",
		"You won't reach the general by going through me.",
		"One more step up this valley costs you everything. Take it, then.",
	},
	["avl.lowhp.01"] = {
		"Hold on. The snow here is soft, but I'm not lying down in it.",
		"Not here. The valley is long, and I mean to see the end of it.",
	},
	["avl.muse.01"] = {
		"A whole valley of snow and towers, and two armies who both swear it was theirs first. The mountains don't care whose it was.",
		"Towers, bunkers, graveyards, mines. Taking this valley isn't one battle; it's a long, cold season of them.",
		"The fight here goes on for hours, up and down the same frozen road. Some battles are won by forgetting how tired you are.",
	},
	["avl.muse.02"] = {
		"blows into cupped hands and squints down the long white valley, where the far towers stand dark against the snowfields.",
		"stamps the cold out of {g:his|her} feet and looks up at the mountainsides, white and silent above the noise of the battle.",
	},
	["avl.muse.03"] = {
		"Snow to the knees and an army at each end. Lovely spot for a picnic.",
		"Whoever planned this war never had to march it on foot.",
	},
	["avl.victory.01"] = {
		"straightens up from the fight, breath smoking in the cold, and looks for where the battle has moved on to.",
		"kicks snow over the dark stains on the trampled ground and moves on down the valley.",
		"leans on a fence post, gulping cold air, while the noise of fighting carries up from further down the valley.",
	},
	["bwl.battle.01"] = {
		"You serve a dragon who'd eat you on a slow day. Step aside or fall here.",
		"Nefarian's servants, every one. Come and earn your keep.",
		"This far up, and you think you'll be the one to stop me?",
	},
	["bwl.lowhp.01"] = {
		"Not in a dragon's workshop. I won't end up as somebody's spare parts.",
		"Hold on. Whatever Nefarian does with the fallen, I don't want to find out.",
	},
	["bwl.muse.01"] = {
		"Nefarian keeps his lair on top of the mountain's fire, and everything that serves him on the stairs below.",
		"Somewhere up here Nefarian breeds dragons of every color into a single one. The thought alone turns the stomach.",
		"This place has the tidy cruelty of a workshop. Cages, vats, the smell of something cooked too long. Dragons were made here, and not gently.",
	},
	["bwl.muse.02"] = {
		"looks up at the high black vaults, where the scrape of claws on stone comes and goes like a slow tide.",
		"catches the smell of scorched scales and old smoke drifting down the corridor, and tightens {g:his|her} grip.",
	},
	["bwl.muse.03"] = {
		"A dragon with a laboratory. I liked them better when they just lay about on gold.",
		"Goblin engineers working for a dragon. I'd pay good money to read that contract.",
	},
	["bwl.victory.01"] = {
		"steps over the fallen, careful of the scorched floor, and looks ahead to the next black doorway.",
		"lets out a long breath as the echoes die away down the dark stone halls, where something larger is surely listening.",
		"wipes soot from {g:his|her} face with the back of a glove; the lair is quiet, but only for now.",
	},
	["mc.battle.01"] = {
		"Burn as hot as you like. I'm not going back up with this unfinished.",
		"Over here, ember. Let's see which of us cools first.",
	},
	["mc.battle.02"] = {
		"Watch the floor, not just the foe. Down here the ground fights too.",
		"Mind the lava at my back. One step wrong and the fight won't matter.",
	},
	["mc.encounter_end.01"] = {
		"{encounter} is done. The heat hasn't dropped a single degree, but something down here just got quieter.",
		"{encounter} won't burn for anyone again. This is one fight I'll remember by the heat alone.",
	},
	["mc.lowhp.01"] = {
		"Not here. I won't be one more scorch mark on this floor.",
		"I've come too deep to burn out now.",
	},
	["mc.muse.01"] = {
		"This is where Ragnaros lives, under Blackrock, among rivers of stone gone liquid. The world was never meant to have a cellar like this.",
		"Rivers of molten rock, walls that glow from inside, air that shimmers. Past all of it, the Firelord waits.",
		"The elementals here were old when the first dwarf swung a pick. To them I'm hardly a foe, just a spark that hasn't gone out yet.",
	},
	["mc.muse.02"] = {
		"wipes sweat from {g:his|her} eyes with the back of a wrist; the heat comes off the lava in waves that make the far wall swim.",
		"watches a slow river of molten rock slide past, close enough to feel it pull at the skin of {g:his|her} face.",
		"breathes through a cloth against the sulfur, eyes narrowed at the glare rising from below.",
	},
	["mc.muse.03"] = {
		"Bring a waterskin, they said. They meant bring ten.",
		"Next time anyone grumbles about the heat of the desert, I'm bringing them down here.",
		"Well, nobody can say this place is drafty.",
	},
	["mc.subzone_enter.01"] = {
		"moves deeper into the Core, where the passages open on caverns lit red from below and the rock is warm through the boots.",
		"passes into another hall of the burning deep, the air thick with sulfur and the roar of moving lava.",
	},
	["mc.victory.01"] = {
		"steps back as the fallen thing hisses and smokes, its glow dying to a dull red and then to nothing.",
		"lowers {g:his|her} weapon, still hot to the touch, and waits for the hissing to stop.",
	},
	["mc.victory.02"] = {
		"Put out. If only the rest of this place would take the hint.",
		"One fire fewer. The rest of the mountain doesn't seem to have noticed.",
	},
	["nax.muse.01"] = {
		"A whole necropolis hanging in the sky over the Plaguelands, and I'm inside it. The floor is cold enough to feel through the boots.",
		"Kel'Thuzad's citadel. Every corridor smells of the slab and the stitching needle.",
		"Here the dead are not kept, they are made, with care and by the hundred. The Plaguelands below are only where they're sent to walk.",
	},
	["zg.battle.01"] = {
		"Your blood god can wait his turn. You're first.",
		"Come out of the green, then. I'm not here for the scenery.",
	},
	["zg.muse.01"] = {
		"The old Gurubashi capital, overgrown and stirring again. Its priests want their blood god back, and they aren't asking politely.",
		"Vines over the steps, snakes in the vines, priests at the top of the steps. Hakkar's city is waking, and the jungle keeps very still around it.",
		"High on these temples, the priests are trying to make a god out of blood. The air already tastes of it.",
	},
	["zg.muse.02"] = {
		"Bats, tigers, raptors and priests who bleed on purpose. Stranglethorn saved all its best for last.",
		"Every vine in this place could be a snake. About half of them are.",
	},
	["zg.victory.01"] = {
		"listens as the noise of the fight fades into the jungle, while the drums higher up beat on without missing a stroke.",
		"steps back onto the old stone path, brushing vines from {g:his|her} shoulders, and looks up toward the temples.",
	},
	["brd.attack.w10.001"] = {
		"Here's one for the Ring of Law!",
		"Put that on the emperor's tab!",
	},
	["brd.battle.w10.001"] = {
		"For the emperor? He won't even notice you're gone.",
		"Come on, then. Thaurissan can spare one more guard.",
	},
	["brd.battle.w10.002"] = {
		"Can't anyone cross this city without a brawl?",
		"Fight first, drinks after. The local custom, I hear.",
		"Easy! I'm only here for the ale!",
	},
	["brd.battle.w10.003"] = {
		"braces on the warm flagstones and takes the attack in a glow of red from below.",
		"meets the charge while the ring of the city's hammers carries on behind every blow.",
	},
	["brd.battle.w10.004"] = {
		"I didn't come all this way to end up in your cells.",
		"Chains? Not today. Not tomorrow either.",
		"Lock me up? You'll need more than you've got.",
	},
	["brd.battle.w10.005"] = {
		"Away from the edges. Down here a stumble ends in lava.",
		"Watch their hands. In this city, fire comes out of every one of them.",
	},
	["brd.encounter_end.w10.001"] = {
		"{encounter} is down. Somebody tell the emperor his court just shrank.",
		"The city's still hammering away, but {encounter} won't hear it again.",
	},
	["brd.encounter_end.w10.002"] = {
		"All down. The forges didn't even pause. Up, and again.",
		"Beaten, with the Dark Iron watching. Work out what went wrong, then come back.",
	},
	["brd.lowhp.w10.001"] = {
		"Not like this. I won't end up in their prison block.",
		"Get me out of the fire before I join it!",
	},
	["brd.lowhp.w10.002"] = {
		"Too hot to think. Back away, now.",
		"If I drop here, the Dark Iron will melt my gear down by supper.",
		"Breathe. Slowly. The heat wants me to panic.",
	},
	["brd.muse.w10.001"] = {
		"Three dwarven clans went to war over Ironforge, and the losers dug this deep to win it back. They found something worse than losing.",
		"Bronzebeard, Wildhammer, Dark Iron. The first two still argue over ale. The third has fire for a landlord.",
		"Each Dark Iron down here carries the old defeat like a coal in the chest. It has kept them warm for a very long time.",
	},
	["brd.muse.w10.002"] = {
		"Dark Iron ale. Brewed over lava, served by people who'd happily kill you. It had better be good.",
		"In the middle of a war, in this city, some dwarf is pulling pints. That's either madness or the most dwarven thing I've ever seen.",
	},
	["brd.muse.w10.003"] = {
		"There's a prison block in this city, and not everyone in those cells is a criminal. Some just took the wrong road through the Searing Gorge.",
		"The Dark Iron keep prisoners the way they keep everything else: chained, counted and far from the door.",
		"Whoever is locked in those cells has heard nothing but hammers for who knows how long. I'd want someone to come for me.",
	},
	["brd.muse.w10.004"] = {
		"listens to the city: hammers, bellows, the hiss of quenched iron, all of it rising and falling like breathing.",
		"notices that every surface here is warm, the rail, the stone, the very air, and that nothing ever cools.",
	},
	["brd.muse.w10.005"] = {
		"They hold trials in an arena here and call it law. The verdict is whoever walks out.",
		"The Ring of Law: a crowd, a judge, and a gate that opens on whatever beast they've picked for you. Justice, Dark Iron style.",
		"An arena with a judge in the stands. Here a trial is a fight with an audience, and the audience has already decided.",
	},
	["brd.muse.w10.006"] = {
		"The Lyceum keeps its braziers lit for its masters, and every flame burns for the fire below. Nothing in this city just gives light.",
		"Dark Iron sorcerers study fire here the way scholars elsewhere study the stars. Only their teacher answers back.",
		"A school of sorts under a volcano. I wonder what the Dark Iron learn first: to read, or to burn.",
	},
	["brd.muse.w10.007"] = {
		"Creatures of fire walk these halls beside the dwarves like foremen. The Dark Iron don't rule here alone, whatever the emperor thinks.",
		"The fire's servants down here don't look at the dwarves as allies. They look at them as fuel that talks.",
	},
	["brd.muse.w10.008"] = {
		"Golems, forges, vaults full of gold. The Dark Iron may be cursed, but they're not poor.",
		"A whole city of dwarves who never stop working. Ironforge should be worried, or jealous.",
		"Even their guards' armor is a work of art. Shame about who's wearing it.",
	},
	["brd.muse.w10.009"] = {
		"Magni Bronzebeard's daughter is down here at the emperor's side. Rescued or wed, depending on who tells it.",
		"A Bronzebeard princess beside a Dark Iron throne. Ironforge calls it a kidnapping. I wonder what she calls it.",
		"Thaurissan wears the crown of a beaten people, and wears it proudly. That pride may be all the fire left him.",
	},
	["brd.muse.w10.010"] = {
		"runs a hand over the carved face of some Dark Iron lord of long ago, its features half melted by the heat of centuries.",
		"stops before a statue of a dwarf king, so blackened by soot that only the crown still catches the light.",
	},
	["brd.muse.w10.011"] = {
		"Long road down, longer road back. At least the company's better than the locals.",
		"Keep together down here. In a city this size, getting lost means getting found by the wrong people.",
	},
	["brd.muse.w10.012"] = {
		"There's a tomb in this city where seven Dark Iron sorcerers are said to linger. They opened the door to the fire, and it never let them go.",
		"Under the city the mountain opens onto something even the Dark Iron fear. The heat comes from there, and so does the obedience.",
		"Deeper than this city burns a fire with a lord of its own. I hope I never have reason to go and look.",
	},
	["brd.subzone_enter.w10.001"] = {
		"enters {subzone}; the stone is cut with the square, heavy care of the Dark Iron, and blackened by everything since.",
		"passes into {subzone}, and the heat follows like a dog at the heels.",
	},
	["brd.subzone_enter.w10.002"] = {
		"{subzone}. The Dark Iron name everything grandly. Mostly it means more guards.",
		"{subzone}. Another hall of a city that should never have been built under a volcano.",
	},
	["brd.threat.w10.001"] = {
		"Back off. The emperor doesn't pay you enough for this.",
		"Stand aside, or join the slag heap.",
		"I've crossed half this city. You're not the one who stops me.",
	},
	["brd.victory.w10.001"] = {
		"One less customer for the Grim Guzzler.",
		"Someone pour one out for that one. Dark Iron ale, preferably.",
	},
	["brd.victory.w10.002"] = {
		"lowers {g:his|her} guard as the fallen begins to smoke faintly on the hot stone.",
		"steps back from the fallen; somewhere behind the walls, the forges never missed a beat.",
	},
	["brd.victory.w10.003"] = {
		"My throat's as dry as a forge bellows.",
		"This city has guards the way the mountain has heat: no end to them.",
	},
	["brd.victory.w10.004"] = {
		"Tell your emperor we're coming for the throne.",
		"Thaurissan is running out of soldiers.",
	},
	["brd.victory.w10.005"] = {
		"Whatever it was, it served the fire. The fire won't mourn it.",
		"One more servant of the mountain gone quiet. The mountain won't even notice.",
		"It fell for an emperor who never learned its name.",
	},
	["brs.attack.w10.001"] = {
		"Off the stair!",
		"Make room, I'm climbing!",
	},
	["brs.attack.w10.002"] = {
		"With the spire's compliments!",
		"Here's something for Rend to watch!",
	},
	["brs.battle.w10.001"] = {
		"Rend can watch this one from his seat.",
		"Another of Blackhand's leftovers. Come here.",
	},
	["brs.battle.w10.002"] = {
		"Does anyone in this spire ever knock?",
		"Oh good, more company. The spire never runs short.",
		"Orc, ogre, troll, spider... I've stopped asking which.",
	},
	["brs.battle.w10.003"] = {
		"Eyes up. Here things drop on you from the ledges.",
		"One fight at the foot of the stair, and the next already coming down it.",
	},
	["brs.battle.w10.004"] = {
		"plants {g:his|her} feet on the scorched stone and meets them head on.",
		"turns to meet the rush, black dust lifting around {g:his|her} boots at every step.",
	},
	["brs.battle.w10.005"] = {
		"No dragon's errand-runner stops me here.",
		"Drakkisath won't thank you for this. Nobody up here thanks anyone.",
	},
	["brs.battle.w10.006"] = {
		"The Dark Horde's war ended years ago. Want to know how?",
		"The old Horde is long gone. You just never got the news.",
	},
	["brs.battle.w10.007"] = {
		"Hot enough without you. Let's make this quick.",
		"Nothing like a brawl inside a furnace to wake you up properly.",
	},
	["brs.battle.w10.008"] = {
		"Breathe through it. Smoke hurts more than any blade here.",
		"The climb takes more out of me than the fighting. Keep going.",
		"Arms heavy, air thin and hot. Fight anyway.",
	},
	["brs.encounter_end.w10.001"] = {
		"{encounter} is down. One more floor of this mountain is ours.",
		"Water, a breath, and up we go. {encounter} won't be following.",
	},
	["brs.encounter_end.w10.002"] = {
		"{encounter} lies in the smoke. My ears are still ringing.",
		"Over. The spire goes quiet, as if deciding what to send next.",
	},
	["brs.encounter_end.w10.003"] = {
		"Back to the stairs, then. The spire isn't going anywhere.",
		"All down. Next time slower, and nobody chases anything up the stairs.",
	},
	["brs.lowhp.w10.001"] = {
		"Not on these stairs. Not for Rend.",
		"I won't be one more body for the dragons to step over.",
	},
	["brs.lowhp.w10.002"] = {
		"Too much smoke, too little breath. Back off, now.",
		"The heat and the wounds together. If I go down here, nobody carries me down all those stairs.",
	},
	["brs.lowhp.w10.003"] = {
		"Patch me up before I become part of the decor!",
		"Help! I'm not ending up as a trophy on Rend's wall.",
	},
	["brs.muse.w10.001"] = {
		"Rend kept his father's name and his father's war. He calls that loyalty. The rest of the Horde moved on without him.",
		"Blackhand's son, sitting on a mountain full of his father's banners, waiting for a war that ended years ago.",
		"The Dark Horde still paints the old clan sign on every shield. Some can't bear to be anything but what they were.",
	},
	["brs.muse.w10.002"] = {
		"Some of these orcs are too young to remember the old Horde. They fight for it anyway, because it's the story they were handed.",
		"Every Dark Horde soldier up here fights like a cornered animal. I wonder if any of them ever had a choice.",
		"Elsewhere, orcs farm and trade now. Up here they still sleep in their armor, waiting for the old war to call them back.",
	},
	["brs.muse.w10.003"] = {
		"Ogres guarding doors for orcs who answer to a dragon. Somebody's paying very well, or lying very well.",
		"The ogres up here even have a lord of their own. I wonder if he knows who's really in charge.",
		"One club, no doubts, and the firm belief that a door is a thing you go through. The ogres here have a simple life.",
	},
	["brs.muse.w10.004"] = {
		"The orcs gave the lower tunnels to the spiders and pretend it was their idea. Nobody argues with a nest that size.",
		"Every web I've seen in this place has something wrapped in it. I've stopped trying to guess what.",
		"A spider the size of a cart, mothering a brood under an orc fortress. Even the Dark Horde keeps its distance.",
	},
	["brs.muse.w10.005"] = {
		"There's a rookery up there somewhere, rows of black eggs kept warm by the mountain itself. A whole generation, waiting.",
		"The black dragonflight doesn't just guard this place. It breeds here. That's the part that keeps me walking.",
		"Eggs by the hundred in the heat of the upper halls, and each one is a dragon someone will have to face one day.",
	},
	["brs.muse.w10.006"] = {
		"The orcs keep a creature of fire chained in the upper spire and feed it heat like a forge. One day the chains won't hold, and I'd rather not be in the room.",
		"Binding fire with chains and chanting. The Dark Horde has a talent for holding things that should not be held.",
		"Up there a being of living flame strains against its bonds. The whole spire hums with the effort.",
	},
	["brs.muse.w10.007"] = {
		"Rend built himself an arena in the spire. Of course he did. A warchief nobody chose needs a crowd to tell him he's real.",
		"Up top there's a stadium where the Dark Horde watches things die for sport. Plenty of seats. I'd rather not take one.",
		"An orc fortress with a stadium in it. Whatever else the Dark Horde lacks, it isn't a taste for spectacle.",
	},
	["brs.muse.w10.008"] = {
		"Under the orc paint the stonework is dwarven, square and patient. The Dark Iron built this place to last, and it did. They just didn't get to keep it.",
		"Dwarven runes still sit over some doors, half scraped away by orc axes. The mountain remembers who cut it.",
		"The orcs sleep in halls the dwarves carved, and the bones of the first garrison are probably still in the walls somewhere.",
	},
	["brs.muse.w10.009"] = {
		"lays a hand on the black wall and pulls it back: the stone is warm, like the flank of some huge sleeping animal.",
		"listens to the spire creak and settle in the heat, as if the whole mountain were shifting its weight.",
		"wipes {g:his|her} brow, and the fingers come away black with soot, as everything here does sooner or later.",
	},
	["brs.muse.w10.010"] = {
		"The lower spire is orcs, ogres and their squabbles. Higher up it gets orderly, and orderly is what worries me.",
		"Each stair in this place leads up, and each floor is meaner than the one below. Somebody planned it that way.",
		"Taking a fortress from the bottom is a fool's way in. It's also the only way in, so here I am.",
	},
	["brs.muse.w10.011"] = {
		"The black dragons have used orcs before, and they're doing it again. Rend thinks he's an ally. He's a tool with a title.",
		"Drakkisath handles the orcs the way a smith handles tongs: carefully, and without ever asking their opinion.",
		"Whoever really owns Blackrock Spire lives above all this smoke and never comes down. That should tell you something.",
	},
	["brs.muse.w10.012"] = {
		"Count heads at every landing. This place loses people between one stair and the next.",
		"Stay close. The spire likes to split a party up and deal with the pieces.",
		"Water, bandages, patience. We'll need all three before the top.",
	},
	["brs.muse.w10.013"] = {
		"Orgrim Doomhammer was a Blackrock. His hammer went to Thrall. All the clan kept was the mountain.",
		"The Blackrock clan gave the old Horde its warchiefs. Now it offers a mountain full of angry orcs to anyone who'll lead them.",
		"Blackrock banners on every wall. Whatever the Horde became out in the world, in here it's still the year the Dark Portal opened.",
	},
	["brs.muse.w10.014"] = {
		"Whelps underfoot, dragonspawn on the stairs and something bigger snoring upstairs. It's a nursery with a garrison.",
		"I was after orcs and found dragons. Next time I'm asking for a list before I climb.",
		"Each dragon in this spire is somebody's child. I'd rather not meet the parents.",
	},
	["brs.subzone_enter.w10.001"] = {
		"enters {subzone}, where Dark Horde banners hang over doorways the dwarves once carved.",
		"steps into {subzone}; somewhere ahead an orc barks an order, and the echo does the rest.",
	},
	["brs.subzone_enter.w10.002"] = {
		"{subzone}. Another name on the way up. I'll remember this one by the heat.",
		"{subzone}. The spire names its rooms as if anyone here needed directions.",
	},
	["brs.subzone_enter.w10.003"] = {
		"passes into {subzone} through a drift of smoke, and the air changes taste: more iron, more ash.",
		"climbs into {subzone}, where the black stone is scored with marks no pick ever made.",
	},
	["brs.threat.w10.001"] = {
		"Turn back. The way down is shorter than you think.",
		"Go back to your warchief. Tell him the stairs are taken.",
	},
	["brs.threat.w10.002"] = {
		"You don't want this. Look how far I've already climbed.",
		"One step closer and you take the quick way down.",
	},
	["brs.victory.w10.001"] = {
		"One fewer for Rend's roll call.",
		"Somebody tell Rend he's short a soldier.",
	},
	["brs.victory.w10.002"] = {
		"kicks the fallen weapon aside; it clatters off across the black stone.",
		"straightens up in the drifting soot, already looking toward the next stair.",
	},
	["brs.victory.w10.003"] = {
		"Quiet, for now. A breath while the spire allows it.",
		"One more landing cleared. My legs are counting them even if I'm not.",
	},
	["brs.victory.w10.004"] = {
		"Next floor. The top's getting closer.",
		"Up there, they'll hear about this one.",
		"The spire just got a little shorter.",
	},
	["brs.victory.w10.005"] = {
		"Another one dead for Rend's war. He won't even learn the name.",
		"Whatever it fought for, it was fighting someone else's grudge.",
	},
	["brs.victory.w10.006"] = {
		"Good. Now if someone could open a window.",
		"Done, and it's still hot. Victories aren't what they used to be.",
	},
	["brs.victory.w10.007"] = {
		"steps over the fallen onto flagstones the dwarves laid long ago.",
		"rests a moment against a carved dwarven pillar, the orc banners above it stirring in the hot draft.",
		"looks down at the fallen, then at the dwarven carving behind it, which has outlived every master of this place so far.",
	},
	["sch.attack.w10.001"] = {
		"Back to the ossuary!",
		"Into the pile with the rest of you!",
	},
	["sch.attack.w10.002"] = {
		"Grade that one yourself!",
		"Make a note of that!",
	},
	["sch.battle.w10.001"] = {
		"Stitched or summoned, you'll come apart the same!",
		"Whatever they built you from, I'll take you back to pieces.",
		"Bone and wire and bad intentions. Come here.",
	},
	["sch.battle.w10.002"] = {
		"Put the book down and fight.",
		"Your studies end here, necromancer.",
	},
	["sch.battle.w10.003"] = {
		"Don't think about what it's made of. Just fight it.",
		"Not the moment to wonder whose bones those were.",
	},
	["sch.battle.w10.004"] = {
		"sets {g:his|her} back to a cold stone wall and meets whatever comes through the next door.",
		"braces against the chill of the hall and meets the attack head-on.",
	},
	["sch.battle.w10.005"] = {
		"Is this an exam? Nobody told me there'd be an exam.",
		"Another of the headmaster's projects. Lovely.",
	},
	["sch.battle.w10.006"] = {
		"Not one more body for this school.",
		"This place gets no recruits from me.",
	},
	["sch.encounter_end.w10.001"] = {
		"looks down at {encounter} and then around the cold room, as if checking that nothing else intends to get up.",
		"stands over {encounter} while the candles gutter, and lets the quiet of the school close back in.",
		"steps back from {encounter} and listens; somewhere above, the halls go on with their work regardless.",
	},
	["sch.lowhp.w10.001"] = {
		"Not here. They'd have me on a workbench before I'd cooled.",
		"Out of reach. Breathe. Don't give them the material.",
		"Too close. This school wastes nothing, and I'm not volunteering.",
	},
	["sch.lowhp.w10.002"] = {
		"I'm nobody's specimen!",
		"Not on your table. Not ever.",
	},
	["sch.muse.w10.001"] = {
		"The Barov name is carved over half the doorways here. A family that sold its own house, and still put its crest on the bill.",
		"Lord and Lady Barov still live in these halls, people say, in a manner of speaking. The bargain came with lodgings.",
		"Heirs of the Barov line still quarrel over who owns Caer Darrow, from what I hear. Neither seems in a hurry to come and claim it.",
	},
	["sch.muse.w10.002"] = {
		"Nobody can say for certain where Gandling is in this place. The rumor is that every room is his, and he simply chooses which one to stand in.",
		"Darkmaster Gandling, they say, can move anyone inside these walls from one room to another with a thought. I'd rather walk.",
		"Above or below, the headmaster is listening. Schools like this one don't need bells; they have him.",
	},
	["sch.muse.w10.003"] = {
		"steps around a half-built construct slumped against a wall, its ribs wired together from more than one body.",
		"pauses at a workbench of stitched limbs and labeled jars, the tidiness of it worse than any mess would be.",
		"sees a skeleton on a rack twitch once, as if someone had left it half-finished and meant to come back.",
	},
	["sch.muse.w10.004"] = {
		"The students came here on purpose. Somebody applied, so to speak, to learn this.",
		"Every apprentice in these halls had a reason. Ambition, grief, a debt. None of them good enough.",
		"Most of these students had ordinary lives, once. Then someone offered them power, and they said yes.",
	},
	["sch.muse.w10.005"] = {
		"There's an ossuary under the school, sorted by size and kind. Someone has the job of sorting bones, and turns up for it.",
		"Shelves of skulls in neat rows, labeled. Even the dead here have been filed.",
		"Bones by the cartload in the cellars below. Nothing in Scholomance goes to waste; that's the horror of it.",
	},
	["sch.muse.w10.006"] = {
		"The cold in these halls doesn't come from outside. It seeps out of the stone, as if the walls had been taught to be unkind.",
		"Frost on the inside of a door, and no window anywhere near. Someone down here works the cold the way a smith works fire.",
		"Breath clouds in these corridors. Whatever keeps the halls this cold, it isn't the lake.",
	},
	["sch.muse.w10.007"] = {
		"Somebody here wrote a textbook on raising the dead. I'd like a word with the publisher.",
		"Don't touch the notes on the desks. I'm fairly sure the homework bites.",
		"A library, a dining hall, dormitories. Take away the corpses and it's almost respectable.",
	},
	["sch.muse.w10.008"] = {
		"The Cult of the Damned didn't begin with soldiers. It began with teachers, and this is where they still train the next ones.",
		"Kel'Thuzad's cult needed necromancers by the hundred, and necromancers have to learn somewhere. Here, it turns out.",
	},
	["sch.muse.w10.009"] = {
		"hears a quill scratching behind a closed door, steady and unhurried, and decides not to knock.",
		"notices a chalkboard covered in careful drawings of a ribcage and, beneath them, in a neat hand, a list of what to replace.",
	},
	["sch.muse.w10.010"] = {
		"The dead ask for one thing only, to be left alone, and this whole school is built on refusing them.",
		"All the dead ever wanted was to stay down. This place exists to tell them no.",
		"Some grave lies open because a student needed the practice. I'd like to give the bones back.",
	},
	["sch.subzone_enter.w10.001"] = {
		"comes into {subzone} past a row of empty benches, all of them facing the same scorched lectern.",
		"steps into {subzone}; the air is a breath colder here, and smells of tallow and old paper.",
	},
	["sch.subzone_enter.w10.002"] = {
		"{subzone}. Every room in this school has a purpose, and I don't enjoy guessing this one's.",
		"{subzone}. Somebody planned this room with care. That's never good news here.",
	},
	["sch.threat.w10.001"] = {
		"Back off, or they'll be sweeping you up for the ossuary.",
		"Leave now. I'd hate to hand this school more raw material.",
	},
	["sch.threat.w10.002"] = {
		"Go and tell your headmaster I'm coming. Take the long way.",
		"Run along to class. I'll be there shortly.",
	},
	["sch.victory.w10.001"] = {
		"One less thing the necromancers can patch up and send back out.",
		"Down. And this time nobody gets to stitch it together.",
		"Done. Let them try to reassemble that.",
	},
	["sch.victory.w10.002"] = {
		"kicks the pieces apart so nobody can put them back together.",
		"steps over the wreckage and stops to listen to the halls, where far off a book drops to the floor.",
	},
	["sch.victory.w10.003"] = {
		"Expelled.",
		"That's one fewer graduate.",
	},
	["sch.victory.w10.004"] = {
		"Quiet again. I don't trust it; this place is never empty for long.",
		"Nothing moving. Somewhere a door opens anyway.",
		"Done, and the cold creeps back in as if it had been waiting.",
	},
	["str.attack.w10.001"] = {
		"For the people of this city!",
		"Out of my road, and out of Stratholme!",
	},
	["str.attack.w10.002"] = {
		"Mind the ash. Oh, too late.",
		"Here's something hotter than the embers.",
	},
	["str.battle.w10.001"] = {
		"Another one out of the cinders. Come on!",
		"Out of the rubble and into the fight. Let's have you.",
		"This city's made of ash. Go and add yourself to the pile.",
	},
	["str.battle.w10.002"] = {
		"Purge this, if you can.",
		"Your Crusade picked the wrong city, and now the wrong fight.",
	},
	["str.battle.w10.003"] = {
		"The Baron can count you among his losses.",
		"Go and tell Rivendare he's one servant short.",
	},
	["str.battle.w10.004"] = {
		"Whoever you were, I'm sorry. Not sorry enough to stop.",
		"Somebody's neighbor, once. Not anymore.",
	},
	["str.battle.w10.005"] = {
		"plants {g:his|her} feet on the scorched cobbles and meets the charge.",
		"steps over a fallen beam and into the fight, ash rising with every stride.",
	},
	["str.battle.w10.006"] = {
		"Every street in this town has a welcome party.",
		"Lively place, for a dead one.",
	},
	["str.encounter_end.w10.001"] = {
		"{encounter} is finished. Stratholme won't miss it; the city stopped missing anyone long ago.",
		"That's the end of {encounter}. One less master for a city that never asked for any.",
	},
	["str.encounter_end.w10.002"] = {
		"The city took that round. It's been taking rounds for years.",
		"Flattened in the cinders, all of us. Stratholme is good at this; we'll have to be better.",
	},
	["str.lowhp.w10.001"] = {
		"Not in this street. Not with the Baron watching.",
		"Breathe. Get out of the smoke. Think.",
		"Too much, too fast. This city won't have me.",
	},
	["str.lowhp.w10.002"] = {
		"I'm not becoming part of the scenery!",
		"Not here. I won't be one more body in these streets.",
	},
	["str.muse.w10.001"] = {
		"Every house here still has its door. Most were never closed; people left in a hurry, or didn't leave at all.",
		"Doors hanging open all down the street. Nobody had time to lock up, and nobody came back to try.",
		"A pot of flowers on a windowsill, long dead and never moved. Someone in that house meant to stay.",
	},
	["str.muse.w10.002"] = {
		"The few who got out of Lordaeron alive agree on one thing: the city was put to the sword before the plague could finish it. Whose sword, some still won't say.",
		"Ask a refugee from the north about Stratholme and watch the face close. A purge, they say, and a prince who ordered it. Then they change the subject.",
		"The Argent Dawn won't talk about the culling over a drink, and they'll talk about nearly anything over a drink.",
	},
	["str.muse.w10.003"] = {
		"The Crusade fortified its corner of a dead city and called it a bastion. Of all the places to make a stand, they chose one already lost.",
		"Scarlet banners over the gate of a burned city. Somebody in that order really doesn't know when a fight is over.",
	},
	["str.muse.w10.004"] = {
		"Grand Crusader Dathrohan leads the zealots in this city. Some say the man died years ago, and what wears his face answers to an older name.",
		"There's a rumor among the Argent Dawn that the Crusade's commander here isn't a man at all. If it's true, the zealots are kneeling to the wrong master.",
		"The crusaders follow Dathrohan without a question. Some say they should have asked one: whose voice really speaks through him.",
	},
	["str.muse.w10.005"] = {
		"Baron Rivendare sold his name to the Scourge while his heart still beat. Now he keeps the far half of the city the way a lord keeps an estate.",
		"The Baron rules the ruins from behind a ziggurat and a gate. A nobleman to the last, even dead: he made sure he'd still have servants.",
		"Rivendare was a lord of Lordaeron once. He traded his people for a seat at the Scourge's table, and that table is all bone.",
	},
	["str.muse.w10.006"] = {
		"stops as a pale shape drifts across the street ahead, a townsman by his clothes, walking an errand that ended years ago.",
		"hears a woman's voice calling a name somewhere in the ruins, and finds nobody there when {g:he|she} turns.",
		"watches a translucent figure stoop at a market stall that no longer exists, pick up nothing, and walk on.",
	},
	["str.muse.w10.007"] = {
		"The ash gets into everything here: hair, food, the creases of a map. A week from now I'll still be finding Stratholme in my pockets.",
		"Every breath in this city tastes of cinders. I'd stop breathing if that were an option.",
		"Burned grain, burned timber, burned something else I won't name. The nose stops complaining after an hour, and that's worse.",
	},
	["str.muse.w10.008"] = {
		"Mind the cobbles. Half of them are loose and the other half used to be somebody.",
		"If anyone spots a street that isn't smoldering, tell me. I'd like to stand in it for a minute.",
		"Don't linger. This city has a habit of keeping whatever stops moving.",
	},
	["str.muse.w10.009"] = {
		"The Argent Dawn sends people into these ruins knowing who comes back. They keep sending them. Faith or stubbornness; I've stopped seeing the difference.",
		"Not far off, a chapel holds the line with prayer and plain steel. In here there's no line to hold, only a city to walk through and out of.",
	},
	["str.muse.w10.010"] = {
		"glances up at the ziggurats that rise over the far rooftops, alien stone squatting in the middle of a human city.",
		"follows a gutter running dark toward the Scourge's side of the city, and decides not to wonder what made it dark.",
		"pauses beside a cart of bodies left at a street corner, never collected, and steps around it without a word.",
	},
	["str.muse.w10.011"] = {
		"It began with grain: crates of it, shipped north to feed people. The cruelest trick the Cult ever played was a gift.",
		"A granary in this city held the plague in sacks, and the bakers did the rest without knowing. I can't look at bread the same way here.",
	},
	["str.muse.w10.012"] = {
		"Bakers and clerks and children, once. The kindest thing left to give them is a second, quieter ending.",
		"Whatever they are now, the people of this city earned some rest. Every one I put down gets a little of it back.",
	},
	["str.subzone_enter.w10.001"] = {
		"enters {subzone}; the smoke thins a little here, enough to see how much is gone.",
		"comes into {subzone} past an overturned cart, the stones underfoot black and cracked.",
	},
	["str.subzone_enter.w10.002"] = {
		"{subzone}. A name on the old maps, and once a reason to come here. Only the name is left.",
		"{subzone}. People used to meet here and haggle and gossip. Now things wait here instead.",
	},
	["str.threat.w10.001"] = {
		"Walk away. The fires here could use one more log.",
		"Turn back. This city has buried better than you.",
		"One step closer and you join the rubble.",
	},
	["str.threat.w10.002"] = {
		"Pray if you like. I'll wait. Not long.",
		"Your Crusade has lost this city already. Don't get lost along with it.",
	},
	["str.victory.w10.001"] = {
		"That's one less thing walking these streets.",
		"Down. The ruins can keep it.",
		"Done. Stratholme takes everything back sooner or later; it can have this one now.",
	},
	["str.victory.w10.002"] = {
		"Somebody put that on the Baron's tab.",
		"Next. This city never runs short.",
	},
	["str.victory.w10.003"] = {
		"shakes the ash from {g:his|her} shoulders and looks along the street for the next shape moving in the smoke.",
		"kicks a smoldering board aside and moves on without looking back.",
	},
	["str.victory.w10.004"] = {
		"All that faith, and it ends on a street like any other.",
		"The Crusade will call that martyrdom. I'd call it a zealot who went looking for a fight.",
	},
	["str.victory.w10.005"] = {
		"Lie still now. Nobody here gets to wake you again.",
		"There. Nobody owns you anymore.",
	},
	["uld.battle.w10.001"] = {
		"Stone or flesh, you'll break the same way.",
		"Troggs in front, statues behind, and me in the middle. Fine. Come on.",
	},
	["uld.encounter_end.w10.001"] = {
		"{encounter} is still. The vault keeps its secrets, with one guard fewer.",
		"Over. Whatever {encounter} stood watch on, it stood a very long watch.",
	},
	["uld.lowhp.w10.001"] = {
		"I'm not ending up as one more find for the next dig.",
		"Hold! I'm not leaving my bones for the troggs to gnaw.",
	},
	["uld.muse.w10.001"] = {
		"In these vaults, somewhere, lie discs that tell where the dwarves came from. Some truths are kept under a lot of stone for a reason.",
		"The dwarves dig half the world looking for their beginnings, and here they are, under the Badlands, watched by things that never tire.",
	},
	["uld.muse.w10.002"] = {
		"Troggs in the lower halls, Dark Iron diggers in the corridors, statues that get up and walk. Lovely spot for a dig.",
		"Everyone down here is digging for something. The troggs for food, the Dark Iron for treasure, and the dust gets into all of it.",
	},
	["uld.subzone_enter.w10.001"] = {
		"steps into {subzone}, where lines of titan runes run along the walls like an account no living scribe can read.",
		"passes into {subzone}; the air is dry and still, and every footstep sounds far too loud in it.",
	},
	["uld.victory.w10.001"] = {
		"Back to the dust with you. You'll fit right in.",
		"One less thing wandering the vault. The archaeologists can thank me later.",
	},
	["abg.attack.w11.001"] = {
		"Clear the post!",
		"Off that banner!",
		"Here's the basin's welcome!",
	},
	["abg.battle.w11.001"] = {
		"Off the banner, or under it!",
		"Touch that post and you'll lie beside it.",
		"This base stays as it is. Go and argue with the mine.",
	},
	["abg.battle.w11.002"] = {
		"All the way from the stables for this? You should have stayed with the horses.",
		"Long run for such a short fight.",
		"Wrong base. Try the blacksmith; nobody's guarding it.",
	},
	["abg.battle.w11.003"] = {
		"plants {g:himself|herself} between the attackers and the banner post.",
		"sets {g:his|her} feet in the trampled dirt by the post and meets the rush.",
	},
	["abg.battle.w11.004"] = {
		"Keep them off the post. Nobody touches it.",
		"Nobody finishes that capture while I'm still on my feet.",
	},
	["abg.encounter_end.w11.001"] = {
		"That clash is ours. Hold the banner and keep your eyes on the road.",
		"Broken at the post, the lot of them. Now we keep it.",
	},
	["abg.encounter_end.w11.002"] = {
		"The base is gone. The graveyard is close; the anger can wait for the next push.",
		"Too few at the post, and too late. Next time count heads before charging.",
	},
	["abg.lowhp.w11.001"] = {
		"Too many hits. Toward the graveyard, yes, but not into it.",
		"Not on this road. Not with the mine still contested.",
		"Hold on. Lose me, lose the base.",
	},
	["abg.muse.w11.001"] = {
		"Somebody tilled these fields once and meant to bring in a harvest. Now the only thing anyone gathers here is resources.",
		"The furrows at the farm still run straight. Whoever ploughed them never imagined banners.",
		"The fences here went up to keep livestock in. Now they mark where one charge ends and the next begins.",
	},
	["abg.muse.w11.002"] = {
		"Three bases held is a win. Five is greed, and greed always gets caught out at the mill.",
		"Hold three and hold them well. Every time somebody gets greedy for a fourth, the first one falls.",
	},
	["abg.muse.w11.003"] = {
		"counts the banners across the basin under {g:his|her} breath, lips moving, then counts them again to be sure.",
		"narrows {g:his|her} eyes and reads the far banners one by one, the way a merchant reads a ledger.",
	},
	["abg.muse.w11.004"] = {
		"Every base has its own graveyard. Whoever laid out this valley knew exactly how it would be used.",
		"A graveyard by the stables, a graveyard by the mine. Even the dead here are kept close to the work.",
	},
	["abg.muse.w11.005"] = {
		"Two thousand resources. I've never once seen a resource. I think somebody made them up.",
		"Everyone shouts about resources. Nobody has ever shown me a sack of them.",
		"A war over a number on a board. Still, it's a lovely number when it climbs on the right side.",
	},
	["abg.muse.w11.006"] = {
		"Stables to blacksmith, blacksmith to farm, farm back to the stables. My legs know this basin better than my head does.",
		"I've run the road from the mill to the forge so often that the ruts ought to know my boots by now.",
	},
	["abg.muse.w11.007"] = {
		"Arathor was the first kingdom of men, or so the scholars of Stromgarde tell it. Now its heartland is a place to settle scores.",
		"The old crown of Strom ruled from these highlands, the histories say. I wonder what its kings would make of a war over a farm.",
	},
	["abg.muse.w11.008"] = {
		"A banner on a post is just cloth. A banner with somebody standing next to it is a base.",
		"Nobody holds a base by admiring it from the road. Somebody has to stand by the post.",
	},
	["abg.muse.w11.009"] = {
		"pauses by a trampled field of crops and nudges a flattened stalk upright with the toe of {g:his|her} boot.",
		"stops at the edge of the crops, where a whole row lies flattened by the last charge, and steps carefully around it.",
	},
	["abg.muse.w11.010"] = {
		"The worst one is the quiet base. Nobody's come for it in a while, and that means somebody's coming.",
		"A calm mine makes me more nervous than a busy one. Calm is just a fight that hasn't arrived.",
		"Five banners, and four of them are busy. Guess which one I keep watching.",
	},
	["abg.muse.w11.011"] = {
		"The Defilers and the League of Arathor both say they fight for the people of Arathi. The people of Arathi left a long time ago.",
		"The League wants the basin back, the Defilers want it kept. The farm would just like to be left alone.",
	},
	["abg.subzone_enter.w11.001"] = {
		"reaches {subzone} and takes stock: who holds it, who's coming, which way out.",
		"slows at the edge of {subzone}, reading the ground before stepping into the open.",
	},
	["abg.subzone_enter.w11.002"] = {
		"{subzone}. Count the defenders, count the roads in, then decide.",
		"{subzone}. Whoever holds this spot has to see the next charge coming.",
	},
	["abg.threat.w11.001"] = {
		"Look around. Four other bases, and you picked mine.",
		"You can leave this base by the road you came in on. That's the kind offer.",
		"Turn back to the road. This post has company.",
	},
	["abg.victory.w11.001"] = {
		"Go and wait at the graveyard. It's close, at least.",
		"The graveyard's just over there. Short walk.",
		"Off to the spirit healer with you. Mind the queue.",
	},
	["abg.victory.w11.002"] = {
		"Down. Now the road, the post, the ridge: who's coming?",
		"One fewer. Look at the other four bases before chasing the next.",
		"Done here. Which base is shouting for help now?",
	},
	["abg.victory.w11.003"] = {
		"wipes {g:his|her} weapon on a fence rail and looks across the basin for the next fight.",
		"leans on the banner post for a moment and counts the colors across the basin.",
	},
	["avl.attack.w11.001"] = {
		"Clear the bridge!",
		"Take the bunker!",
		"Up the hill, now!",
	},
	["avl.battle.w11.001"] = {
		"You'll make a fine snowbank.",
		"Down in the drifts with you!",
		"The snow's deep. Go and lie in it.",
	},
	["avl.battle.w11.002"] = {
		"Long march, to get beaten this close to a bunker.",
		"You walked all this way? In this cold?",
		"Should have waited for spring.",
	},
	["avl.battle.w11.003"] = {
		"lowers {g:his|her} head and wades through the snow into the fight.",
		"charges down the slope, snow flying from every stride.",
	},
	["avl.encounter_end.w11.001"] = {
		"The captain's down. Their garrison won't hold without a voice to rally it.",
		"That's the commander done. Now the road to the keep is open.",
	},
	["avl.encounter_end.w11.002"] = {
		"Thrown back from the keep, the whole push. The general's still there, and so is the long walk back.",
		"Too few to finish the general, too many to call it bad luck. The graveyard, the road, then again.",
	},
	["avl.lowhp.w11.001"] = {
		"Not in this snow. I'd never thaw.",
		"Hold. The graveyard's too far back to drop here.",
		"Up. This valley doesn't get to keep me.",
	},
	["avl.muse.w11.001"] = {
		"The Frostwolves came here in exile, the Stormpike dwarves came here to dig. Both of them found a home, and that's the trouble.",
		"This valley was a refuge before it was a battlefield. Refuges are always what people end up fighting over.",
	},
	["avl.muse.w11.002"] = {
		"Who decided this war should be fought uphill, in snow, both ways?",
		"Every tower in this valley is uphill. I've checked.",
	},
	["avl.muse.w11.003"] = {
		"knocks the ice off {g:his|her} boots against a fence rail and watches the march wind on toward the far keep.",
		"pauses to scrape packed snow from {g:his|her} gear, then looks up the valley along the long gray road.",
	},
	["avl.muse.w11.004"] = {
		"Take the tower, burn the banner, move on. By the time the fire's out, nobody remembers who stood on the battlements.",
		"When a tower falls in this valley, the smoke tells both armies at once.",
	},
	["avl.muse.w11.005"] = {
		"Somebody stay on the graveyard. A march with no graveyard behind it is a march that ends.",
		"Don't skip the bunkers. Every one we leave is a row of archers at our backs.",
	},
	["avl.muse.w11.006"] = {
		"Hours in this valley. My fingers have stopped complaining, and that worries me more than when they did.",
		"The march to the far keep is so long I've had time to get cold, warm up, and get cold again.",
	},
	["avl.muse.w11.007"] = {
		"The quartermasters talk of a forest lord and an ice lord who answer if enough is gathered. In this valley I'd believe either.",
		"Crystals on one side, blood on the other, both traded for a giant. Wars used to have simpler accounts.",
	},
	["avl.muse.w11.008"] = {
		"falls in with the long column trudging up the valley, {g:his|her} steps finding the ruts the others left.",
		"turns up {g:his|her} collar and starts the long trudge toward the next tower.",
	},
	["avl.muse.w11.009"] = {
		"Troggs in one mine, kobolds in the other. Two armies at war, and nobody has asked the oldest tenants anything.",
		"Irondeep, Coldtooth. Whoever holds the mines gets richer; whoever lived in them never had a say.",
	},
	["avl.muse.w11.010"] = {
		"Chin up. The snow's soft, the keep's that way, and nobody's dead yet.",
		"One more tower, and then I'm allowed to think about soup.",
	},
	["avl.subzone_enter.w11.001"] = {
		"trudges into {subzone}, snow caked to the knees, and looks for whoever holds it.",
		"crunches into {subzone} over packed snow, counting the figures ahead.",
	},
	["avl.subzone_enter.w11.002"] = {
		"{subzone}. One more name on a very long road.",
		"{subzone}. Halfway, maybe. Nobody in this valley ever knows.",
	},
	["avl.threat.w11.001"] = {
		"Turn around. Your keep is back that way, and so is safety.",
		"Come closer and you'll be the next thing the snow buries.",
		"This bunker's taken. Find another.",
	},
	["avl.victory.w11.001"] = {
		"Down. The snow will cover it before the next wave.",
		"Done. On to the next tower before the cold gets into my bones.",
	},
	["avl.victory.w11.002"] = {
		"Rest there. It's a long walk back from the graveyard.",
		"Enjoy the snow. You'll be in it a while.",
		"Back to your keep. Take the long way.",
	},
	["avl.victory.w11.003"] = {
		"stamps the snow from {g:his|her} boots and takes up the road again.",
		"shakes off the cold, settles {g:his|her} gear and looks for the next tower.",
	},
	["bwl.attack.w11.001"] = {
		"Back to the lab!",
		"Here's one for the notes!",
		"Take that to your master!",
	},
	["bwl.battle.w11.001"] = {
		"Back to your vat, whatever you are!",
		"Another failed experiment. Let's close the file.",
		"Nefarian's experiment ends here!",
	},
	["bwl.battle.w11.002"] = {
		"Which color are you this time?",
		"Scales, claws, a bad temper. The house special.",
		"You're what happens when a dragon gets bored.",
	},
	["bwl.battle.w11.003"] = {
		"Watch for the breath, then strike. The rest is noise.",
		"Eyes on the claws. Nefarian bred these to kill.",
	},
	["bwl.encounter_end.w11.001"] = {
		"{encounter} is finished. The lair breathes a little differently now.",
		"{encounter} won't be on Nefarian's rolls anymore. One fewer between me and the top.",
	},
	["bwl.encounter_end.w11.002"] = {
		"Back on our feet. Nefarian enjoyed that more than we did.",
		"All down. Someone up there is taking notes on us now.",
	},
	["bwl.lowhp.w11.001"] = {
		"Patch me up, I'm not becoming a specimen!",
		"Heal me! I won't end up in a jar!",
		"Help! Not up here, not like this!",
	},
	["bwl.muse.w11.001"] = {
		"Goblin technicians, orc handlers, dragon masters. Somebody up here keeps careful records of everything that screamed.",
		"The benches here are scrubbed clean between experiments. That's what bothers me most.",
	},
	["bwl.muse.w11.002"] = {
		"The Dark Horde's grunts call him Lord Victor Nefarius, a noble in a fine coat. Up here nobody bothers pretending.",
		"Black dragons love a mortal mask. The son plays a lord in these halls; the daughter, so the rumors go, played one at court.",
	},
	["bwl.muse.w11.003"] = {
		"stops beside a clutch of dark eggs in a nest of scorched rock, and watches one shift by itself.",
		"steps around rows of black eggs laid out on the scorched floor, each as big as a barrel, something knocking softly inside.",
	},
	["bwl.muse.w11.004"] = {
		"A red dragon chained in a black dragon's house. Whatever Nefarian did to Vaelastrasz, he did it slowly.",
		"Vaelastrasz was one of Alexstrasza's. Now he's what Nefarian shows his guests to explain the house rules.",
		"Of everything up here, the red dragon is the one I can't stop thinking about. A guardian of life, bent until it broke.",
	},
	["bwl.muse.w11.005"] = {
		"Black, red, green, blue, bronze, all stitched into one. Someone up here really can't choose.",
		"A dragon of every color. I've seen tavern signs painted with more restraint.",
		"Nefarian wanted all five flights in one body. Ambitious. Revolting, but ambitious.",
	},
	["bwl.muse.w11.006"] = {
		"This place doesn't just house monsters. It was laid out to wear down whoever comes for them.",
		"Somebody thought about intruders here, carefully. Every room is a test, and whoever set them is watching the results.",
	},
	["bwl.muse.w11.007"] = {
		"flattens against a pillar as a file of drakonids passes the far end of the hall, scales clicking like armor plates.",
		"studies a scaled sentry at a distant doorway, half dragon and half soldier, holding a stillness no living guard could keep.",
	},
	["bwl.muse.w11.008"] = {
		"Nobody pokes the vats. I mean it. Whatever's in them, we've fought enough of it already.",
		"Keep together up here. This place was built by someone who studies how people come apart.",
		"If anyone finds the dragon's notes, burn them. Whoever comes next shouldn't learn from them.",
	},
	["bwl.subzone_enter.w11.001"] = {
		"passes into {subzone}, where the air smells of brine and burned hair, and the lanterns hang from chains.",
		"steps into {subzone}; long tables of glass and metal line the walls, still faintly steaming.",
	},
	["bwl.subzone_enter.w11.002"] = {
		"{subzone}. The higher I climb, the worse the work I find.",
		"Another of Nefarian's rooms. Each one tidier than the last, and worse.",
	},
	["bwl.threat.w11.001"] = {
		"Step aside. Your master won't miss one drakonid.",
		"Go and tell Nefarian his guests have arrived.",
		"Back to your handler, beast.",
	},
	["bwl.victory.w11.001"] = {
		"steps back from the twitching scales until they go still, then a little farther.",
		"nudges the fallen drakonid with a boot, as if it might stitch itself back together.",
	},
	["bwl.victory.w11.002"] = {
		"One less experiment for the notebooks.",
		"Mark that one down as a failure, Nefarius.",
		"Back to the drawing board, dragon.",
	},
	["bwl.victory.w11.003"] = {
		"Down. Whatever it was meant to become, it won't.",
		"Done. Its scales keep changing color even now.",
	},
	["mc.attack.w11.001"] = {
		"Douse this!",
		"Cool off, hothead!",
	},
	["mc.attack.w11.002"] = {
		"Back into the lava!",
		"Down to the slag with you!",
	},
	["mc.battle.w11.001"] = {
		"You're only fire. I've put out fires.",
		"Come on, then, cinder. Let's see you flicker.",
		"Tell your Firelord his fire's going out.",
	},
	["mc.battle.w11.002"] = {
		"Does everything down here have to be on fire?",
		"Lovely. Another one that's mostly lava.",
		"I'd ask you to cool down, but I doubt you know how.",
	},
	["mc.battle.w11.003"] = {
		"Away from the edge first. Then fight.",
		"Lava on the left, foe in front. Nothing else matters.",
		"Steady. It's stone and fire, and stone breaks.",
	},
	["mc.battle.w11.004"] = {
		"Hold them here, away from the healers!",
		"Hold the line! Nobody gets pushed into the lava!",
	},
	["mc.battle.w11.005"] = {
		"squares up to the burning thing, eyes narrowed against its glare.",
		"sets {g:his|her} feet on the black crust and raises {g:his|her} guard as the heat rolls over {g:him|her} like an open furnace door.",
	},
	["mc.encounter_end.w11.001"] = {
		"{encounter} takes this round. Cool heads next time, if anyone can keep one down here.",
		"All of us on the floor, and {encounter} not even singed. Up, and slower.",
		"We'll be back for {encounter}. The fire isn't going anywhere, and neither are we.",
	},
	["mc.lowhp.w11.001"] = {
		"Healer! I'm cooking over here!",
		"I'm burning up, and I mean it! Help!",
		"Water, a heal, anything!",
	},
	["mc.lowhp.w11.002"] = {
		"Back from the edge. Fall now and there's no getting up.",
		"Too hurt to stand this close to the lava. Move.",
	},
	["mc.muse.w11.001"] = {
		"A Dark Iron sorcerer-king called the Firelord up through the stone to win a war. The war ended long ago. The fire never left.",
		"The Searing Gorge, the Burning Steppes, every scorched mile up there began with one summoning down here. One man's bad idea, still smoldering.",
		"The first Thaurissan wanted a weapon against his enemies. He got a master instead, and the Dark Iron have kept the flame fed ever since.",
	},
	["mc.muse.w11.002"] = {
		"The Hydraxian Waterlords want the runes doused, every one. Water's old quarrel with fire, and I'm the bucket they picked.",
		"The Hydraxians say the runes keep the Firelord's lieutenants strong. Put them out and the court weakens. Water holds a grudge a long time.",
	},
	["mc.muse.w11.003"] = {
		"tilts {g:his|her} head back to take in a molten giant at rest, a hill of slag that shifts its weight like a sleeper.",
		"goes still as a giant of cooling rock lumbers along the far bank, each step leaving a glowing print behind it.",
	},
	["mc.muse.w11.004"] = {
		"The Thorium Brotherhood wants every core I can carry out of here. Funny how they never come down to fetch them.",
		"Up in the Searing Gorge a dwarf is waiting for these cores with a smile and an anvil. Must be nice.",
	},
	["mc.muse.w11.005"] = {
		"Up top, fire is a thing you light. Down here it has opinions, servants and a king.",
		"Anywhere else, fire is a tool. Here it walks, guards doors and answers to a lord.",
		"Fire for cooking, fire for warming the hands, fire cursed when it won't catch. Never once did I think it might look back.",
	},
	["mc.muse.w11.006"] = {
		"shifts {g:his|her} grip on a weapon whose metal has gone warm enough to sting, and wraps the hilt in a strip of cloth.",
		"checks the buckles of {g:his|her} gear one by one; down here even the metal fittings hold the heat.",
	},
	["mc.muse.w11.007"] = {
		"The hounds down here are made of the same stuff as the floor. When one lies down by the lava, it's like watching a dog curl up by the hearth.",
		"Core hounds, they call them. Two heads, a hide like a cooling crust, and they pace the shore as if someone had trained them to it.",
	},
	["mc.muse.w11.008"] = {
		"Ragnaros keeps a proper household: lords, hounds, a majordomo. Even the fire under the world wants someone to answer the door.",
		"A majordomo. The lord of all flame has a steward, as if this were some baron's manor with a lava problem.",
		"Past the lords and the hounds, a steward stands at the Firelord's door. Even here, you have to get past the staff first.",
	},
	["mc.muse.w11.009"] = {
		"This isn't a cave. It's a wound the world never closed, and things climbed up out of it.",
		"Every passage here was made by something molten forcing its way through. Nothing was dug. Everything was burned open.",
	},
	["mc.muse.w11.010"] = {
		"Whoever's got the quintessence, stay close. I'm not walking back for a rune.",
		"Everyone count the runes as we pass. Missing one means a long walk back through all this.",
	},
	["mc.muse.w11.011"] = {
		"Fall in a river up top and someone might fish you out. Down here there'd be nothing left to bury.",
		"I keep a pace from the edge at all times. The lava doesn't take prisoners, or bodies.",
		"The lava takes a careless foot the way a forge takes scrap, without noticing.",
	},
	["mc.muse.w11.012"] = {
		"Under the Dark Iron city, under the emperor's throne, under all of it. Below this there's only whatever the fire calls home.",
		"Blackrock Depths felt deep. This is the floor under the floor, and the walls hum.",
	},
	["mc.muse.w11.013"] = {
		"steps back from the bank as the lava heaves and something shaped like a wave rises out of it, looks about, and sinks again.",
		"watches a surge of molten rock lift itself from the river, hold a shape for a moment, and slide back under.",
	},
	["mc.subzone_enter.w11.001"] = {
		"enters {subzone}; the glow from below throws {g:his|her} shadow up the wall, long and shaking.",
		"crosses into {subzone}, where the rock ticks and creaks as it takes the heat.",
	},
	["mc.subzone_enter.w11.002"] = {
		"Deeper still. The rumble under my feet is louder here.",
		"{subzone}. Even the names down here sound scorched.",
	},
	["mc.threat.w11.001"] = {
		"Back to your lava, or I'll put you there.",
		"Stay in your river. Come out and I'll douse you.",
	},
	["mc.threat.w11.002"] = {
		"The Hydraxians would love to hear how I put you out.",
		"I've doused bigger fires than you. Try me.",
	},
	["mc.victory.w11.001"] = {
		"And out it goes. Who's next for snuffing?",
		"That one's cooling. Let it set.",
		"Cooled off at last. Took some persuading.",
	},
	["mc.victory.w11.002"] = {
		"watches the creature crumble into black, glassy chunks.",
		"kicks a lump of cooling slag aside; a moment ago it was trying to kill {g:him|her}.",
	},
	["mc.victory.w11.003"] = {
		"Down. Now drink something before the next one.",
		"Done. My hands are shaking, and it isn't fear. It's the heat.",
	},
	["mc.victory.w11.004"] = {
		"Good work. Watch the floor while we regroup.",
		"One more of the Firelord's court gone. Keep moving.",
		"Nicely done, all. Check the runes on the way.",
	},
	["nax.battle.w11.001"] = {
		"Stitched together? Then come apart.",
		"This necropolis is short one soldier, starting now.",
		"Back to the slab with you.",
	},
	["nax.lowhp.w11.001"] = {
		"No. This place would only put me back to work.",
		"Not on one of their tables. Not me.",
	},
	["nax.muse.w11.001"] = {
		"Every abomination in these halls was stitched from people who once had names. Someone kept a ledger of them, I'd bet.",
		"The Cult of the Damned runs this place like a workshop: tools on hooks, tables scrubbed, orders posted. The work is turning the living into soldiers.",
	},
	["nax.muse.w11.002"] = {
		"Kel'Thuzad serves a master far away in the north and runs this necropolis in his name. A lieutenant who never sleeps, and never needs to.",
		"The Argent Dawn says the plague that took Lordaeron was brewed under a roof like this one. Down below, the Plaguelands are still paying for it.",
	},
	["nax.victory.w11.001"] = {
		"steps back from the remains as the cold seeps up through the floor again.",
		"looks down at the stitched seams coming apart, then turns away.",
		"nudges a dropped hook aside with a boot; it skids across the green-lit stone.",
	},
	["zg.attack.w11.001"] = {
		"Down off your altar!",
		"Here's a sacrifice you didn't plan for!",
	},
	["zg.battle.w11.001"] = {
		"No blood for Hakkar from me today.",
		"Your priests want blood. They'll get yours.",
		"The Soulflayer's thirsty. Let him stay thirsty.",
	},
	["zg.battle.w11.002"] = {
		"Another loa's pet. Does anything here come without fangs?",
		"Fur, scales or feathers? I've lost count in this city.",
	},
	["zg.battle.w11.003"] = {
		"Watch the vines. In this city the green itself attacks.",
		"Ears open. The drums cover everything, even footsteps.",
	},
	["zg.encounter_end.w11.001"] = {
		"That's the end of {encounter}. Up on the temples the drums missed a beat; I'd swear to it.",
		"{encounter}, finished. The Zandalar will want to hear about this one soon.",
		"{encounter} won't climb those altar steps again. The city seems a little less sure of itself.",
	},
	["zg.lowhp.w11.001"] = {
		"No altar for me. Not Hakkar's, not today.",
		"I won't feed a god I don't even pray to.",
	},
	["zg.lowhp.w11.002"] = {
		"Pull back. Everything that falls here ends up on an altar.",
		"Too deep, too hurt. The jungle is waiting for me to slip.",
	},
	["zg.muse.w11.001"] = {
		"The Gurubashi ruled half of Stranglethorn from these terraces once. They broke their own empire calling Hakkar in, and now a few of them are trying it again.",
		"An empire of trolls, gone to vine and rubble because its priests wanted a god at their beck and call. Some lessons never take.",
		"The stairs are worn hollow in the middle, where generations of Gurubashi climbed to the altars. Few of them came back down by choice.",
	},
	["zg.muse.w11.002"] = {
		"Bat, snake, spider, panther, tiger: each high priest here wears a loa's power like a borrowed coat, and Hakkar holds the other end of every thread.",
		"The animal loa were honored in these temples long before the Soulflayer. Now their priests have tied them to him, and the jungle's old spirits answer to a thirsty one.",
		"A troll priest who serves a loa usually haggles with it. The ones in here have stopped haggling. They obey, and the loa obey through them.",
	},
	["zg.muse.w11.003"] = {
		"The Zandalar sent envoys all the way to Yojamba Isle to ask outsiders for help. Trolls that proud asking strangers for anything: that's how bad it is in here.",
		"On Yojamba Isle the Zandalar say that if Hakkar walks this world whole again, his thirst won't stop at the edge of the jungle. They don't strike me as people who exaggerate.",
		"The Zandalar pay in favor and old trinkets for every token cut from Hakkar's servants. A tribe that old doesn't trade with outsiders for fun.",
	},
	["zg.muse.w11.004"] = {
		"Every troll in this city keeps a pet the size of a horse. Nobody here does anything small.",
		"Tigers on the terraces, bats overhead, spiders in every doorway. Somebody here really dislikes guests.",
		"I came all this way for a blood god, and so far it's mostly been bats.",
	},
	["zg.muse.w11.005"] = {
		"runs a thumb along a carved serpent on the wall; the stone is slick, and the carving's eyes have been painted a fresh red.",
		"stops at the edge of a terrace and looks down over the canopy, where the river winds dark and slow between the ruined temples.",
	},
	["zg.subzone_enter.w11.001"] = {
		"climbs into {subzone}, where every pillar is carved with a loa's face and every face has been freshly daubed.",
		"comes into {subzone}; somewhere above, the drums change their rhythm, as if they had noticed.",
		"pushes through hanging vines into {subzone}, and the air turns close and sweet with rot.",
	},
	["zg.threat.w11.001"] = {
		"Go back to your priests. Tell them the altar stays empty.",
		"One step more and you're the offering.",
	},
	["zg.victory.w11.001"] = {
		"One less servant for the Soulflayer.",
		"Hakkar can count his priests again. He's short one.",
		"Back to your loa. Tell them they picked the wrong master.",
	},
	["zg.victory.w11.002"] = {
		"wipes {g:his|her} hands on a broad leaf and looks up toward the next terrace.",
		"steps back from the fallen as the jungle noise creeps back in, insects first.",
	},
]==])
