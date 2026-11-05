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
]==])
