-- English texts of the regional pack eastern_duskwood (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Duskwood.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("duskwood", "enUS", "eastern_duskwood", [==[
	["dsk.attack.01"] = {
		"Stay in the gloom if you like. This will find you there.",
		"Light's scarce in this wood. My aim isn't.",
		"You picked a dark place to fight. Bad luck: I came ready for that.",
	},
	["dsk.battle.01"] = {
		"Come out of the trees, then. I've been waiting for something I can actually hit.",
		"At last, something in this wood that doesn't vanish into the trees.",
		"Good. Something solid. Better than jumping at every shape.",
	},
	["dsk.battle.02"] = {
		"Out of the trees without a sound. Everything in Duskwood learns to move like that.",
		"No warning, no snapped twig. This wood hides its hunters well.",
		"Out of the gray between the trunks, all at once. I'll be looking behind every tree for a week.",
	},
	["dsk.battle.03"] = {
		"sets {g:his|her} feet among the sodden leaves and meets the attack head-on.",
		"turns as something breaks from the undergrowth, weapon up before the leaves have settled.",
	},
	["dsk.battle.04"] = {
		"Back, worgen! You're not dragging anyone else into these trees.",
		"I've heard you howling all through the wood. Now come and try it on me.",
	},
	["dsk.battle.05"] = {
		"faces the shambling thing in its rotted burial clothes, whatever name it had long since left in the ground.",
		"stands against the dead as they lurch from the gloom, bones clicking under what is left of their skin.",
	},
	["dsk.battle.06"] = {
		"Eight legs and no manners. Let's get this over with.",
		"Not in my hair, not on my boots, not anywhere. Get back, spider!",
	},
	["dsk.journey.arrival.01"] = {
		"Down into Darkshire. From up there the wood looked almost peaceful. Up there was lying.",
		"Feet on the ground, gloom overhead. The gryphon set me down and left in a great hurry, I notice.",
	},
	["dsk.journey.start.01"] = {
		"rises out of Darkshire on gryphon wings, the black canopy of Duskwood spreading below like a sea that never catches the sun.",
		"climbs above the crooked treetops, the lamps of Darkshire shrinking to a handful of sparks in the gray.",
	},
	["dsk.landmark.cemetery.01"] = {
		"Raven Hill Cemetery. The headstones lean every which way, and some of the graves were opened from the inside.",
		"So many stones up here, half of them toppled. Whoever tended this place lost the fight with it long ago.",
	},
	["dsk.landmark.darkshire.01"] = {
		"comes out of the trees into Darkshire, where a lamp burns by every door and the street smells of chimney smoke.",
		"walks into the lamplit streets of Darkshire, past watchmen who look up, look {g:him|her} over, and go back to watching the trees.",
	},
	["dsk.lowhp.01"] = {
		"Not here. Not in a wood where the dead get back up.",
		"If I fall in Duskwood, I'd rather not find out what walks around in my boots afterward.",
		"Raven Hill has enough graves. I'm not adding mine.",
	},
	["dsk.lowhp.02"] = {
		"Still on my feet! The crows will have to wait.",
		"Not yet. This wood doesn't get me that easily, crows or no crows.",
	},
	["dsk.meet.guard.01"] = {
		"Red-rimmed eyes, a lantern, a hand never far from the hilt. Guard duty in Darkshire wears people down to the bone.",
		"The guard looks past me, into the trees, the way everyone here does. Talking to them feels like interrupting a vigil.",
		"Another sentry who hasn't slept properly in a long while. Still standing straight, though. That counts for something.",
	},
	["dsk.meet.innkeeper.01"] = {
		"Something hot, please, and a seat facing the door.",
		"Have you a bed behind a good stout lock? Not that I'm worried. Much.",
	},
	["dsk.muse.01"] = {
		"The light in this wood never quite finishes arriving. It stops somewhere above the branches and waits.",
		"Whatever the sky is doing above these branches, down here it's only a rumor.",
		"Gray light, gray bark, gray faces in Darkshire. Even the colors seem to have packed up and left.",
	},
	["dsk.muse.02"] = {
		"Every lamp in Darkshire is somebody refusing to give up. The Night Watch keeps them lit for all of us.",
		"Thin ranks, tired eyes, and still the Watch holds. Those are our people at their best.",
		"Say what you like about Darkshire: its lamps never go out. The Watch sees to that, for every one of us.",
	},
	["dsk.muse.03"] = {
		"Crows on every second branch, watching me walk. They've seen plenty of travelers come in. Fewer go out, judging by their faces.",
		"The crows here don't startle. They just turn their heads and keep count.",
	},
	["dsk.muse.04"] = {
		"The graves at Raven Hill don't stay closed. Whoever was buried there was promised rest, and the promise broke.",
		"In most places the dead are a sorrow. In Duskwood they're also a patrol route.",
		"Somebody dug those graves with care, once. Now the earth keeps handing back what was put in it.",
	},
	["dsk.muse.05"] = {
		"picks a way between trunks gone black and crooked, their roots knotted over the path like old fingers.",
		"passes beneath branches that meet overhead, gray moss hanging from them in long, still threads.",
		"steps over a root as thick as a man's leg, and the whole wood seems to lean in an inch to watch.",
	},
	["dsk.muse.06"] = {
		"A howl off to the west. Too long, too low for a wolf. The worgen are out, and they know this wood better than I do.",
		"That wasn't a wolf. Wolves don't howl like they remember being something else.",
	},
	["dsk.muse.07"] = {
		"Whoever named this place Duskwood wasn't trying to sell land.",
		"Lovely wood. Lovely crows. Lovely graves. I'll be going now.",
	},
	["dsk.muse.08"] = {
		"East, the road climbs toward Deadwind Pass, and folk in Darkshire won't follow it far. Even the trees thin out there, as if they'd rather not.",
		"The road east runs into Deadwind Pass and out the other side, so I'm told. Nobody here seems keen to check.",
	},
	["dsk.muse.09"] = {
		"Ogres in the hills, dead men in the fields, and spiders in between. Darkshire must breed very patient people.",
		"The ogres camp up at Vul'Gol. Big, loud, and just clever enough to be trouble.",
	},
	["dsk.muse.10"] = {
		"Webs across the path again, thick as sailcloth. Whatever spun these, I'd rather meet its smaller cousins.",
		"Another web in the face. The spiders of Duskwood must think the roads were laid out for them.",
	},
	["dsk.muse.11"] = {
		"Folk in Darkshire say this whole wood was green once, like Elwynn's. Out at Brightwood Grove, I can almost believe them.",
		"Brightwood Grove still keeps its leaves. The old folk in Darkshire say the rest of the wood used to look like that.",
	},
	["dsk.muse.12"] = {
		"Torch high, feet moving, eyes open. Duskwood can stare all it likes.",
		"Gloomy, sure. But a good lantern and a steady step go a long way, even here.",
	},
	["dsk.muse.13"] = {
		"stops to listen. Somewhere among the trees a branch cracks, then nothing, then a crow.",
		"stands still on the path while the wood creaks and settles around {g:him|her}, like a house full of sleepers.",
		"waits for the sound to come again from the trees. It doesn't, which is somehow worse.",
	},
	["dsk.muse.14"] = {
		"Sodden leaves, black mud, roots in every step. My boots gave up on being dry a mile ago.",
		"Mud to the ankle and leaves stuck to everything. Duskwood doesn't have ground so much as a long, damp argument.",
	},
	["dsk.qp.01"] = {
		"That's all of it. Back to whoever's waiting, before the wood decides it wants this back.",
		"Finished out here. Now the long walk back under the trees, eyes open the whole way.",
		"Done. The road back is the same road, and it won't be any friendlier.",
	},
	["dsk.quest.01"] = {
		"Paid and done. In Duskwood even a reward feels like it came out of a cold pocket.",
		"Settled. One small thing set right, in a wood with a great many things wrong.",
		"Coin in hand, job behind me. Somebody here can cross one worry off a very long list.",
	},
	["dsk.quest.02"] = {
		"takes the reward with a short nod and tucks it away, eyes already drifting back to the trees.",
		"counts the coins in the poor light, then pockets them without a word.",
		"accepts the thanks and the purse, and somehow both weigh less than they should.",
	},
	["dsk.quest.03"] = {
		"There. One less reason for this wood to keep its doors bolted.",
		"Done! Tell the others: Duskwood just got a little less grim.",
		"That's handled. Not much, but the gloom here only gives ground in small steps.",
	},
	["dsk.quest.04"] = {
		"Darkshire holds out because strangers keep showing up and doing the work. Today that was me.",
		"The Night Watch can't be everywhere. For a little while today, I was where they couldn't be.",
	},
	["dsk.sub.01"] = {
		"slows as the trees change around {g:him|her}: older here, closer, and very quiet.",
		"steps into another stretch of the wood, where the path narrows and the trunks press in on both sides.",
		"pauses at the edge of a new part of the forest, letting {g:his|her} eyes find the shapes among the trunks.",
	},
	["dsk.sub.orchard.01"] = {
		"The Rotting Orchard. Whoever named it wasn't hoping for visitors either.",
		"The name says it all. Not one tree here I'd trust with a decent apple.",
	},
	["dsk.victory.01"] = {
		"Quiet again. The trees close back around the spot as if nothing happened here.",
		"Done. Duskwood swallows the sound of it, and the crows go back to waiting.",
		"Over. I count my breaths, listen to the trees, and keep my weapon out a little longer.",
	},
	["dsk.victory.02"] = {
		"One less thing lurking. Duskwood still has plenty in stock.",
		"That's one. The wood will send another along shortly, I'm sure.",
		"Down you go. Don't get up; this isn't that kind of wood. Well, it is. But don't.",
	},
	["dsk.victory.03"] = {
		"lowers {g:his|her} weapon and listens a while to the dark trees, waiting to see what comes next.",
		"wipes {g:his|her} weapon on a fistful of dead leaves, never quite taking an eye off the gloom.",
	},
	["dsk.victory.04"] = {
		"Whatever you were before the curse took you, you can rest now.",
		"One less howl in the wood. Darkshire will sleep a little easier.",
	},
	["dsk.victory.05"] = {
		"The bigger they are, the longer they take to stop. That one took a while.",
		"Down at last. Ogres don't fall so much as give up standing, in stages.",
	},
	["dsk.weather.rain.01"] = {
		"draws {g:his|her} hood up as rain begins to tick on the leaves overhead, and the whole wood darkens one shade more.",
		"listens to the rain arrive in Duskwood: no downpour, just a steady patter on the leaves that soaks into everything.",
	},
]==])
