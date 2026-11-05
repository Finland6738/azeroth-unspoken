-- English texts of the regional pack eastern_hinterlands (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/Hinterlands.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("thehinterlands", "enUS", "eastern_hinterlands", [==[
	["hin.a.attack.01"] = {
		"For Aerie Peak!",
		"Feel that? The Hinterlands bite back.",
		"There's more where that came from, and I'm not tired yet.",
	},
	["hin.a.battle.01"] = {
		"For Aerie Peak, and for the hills. Come on, then.",
		"The hills have outlasted worse than you. I mean to do the same.",
		"Out of the brush and into the open. Let's be done with it.",
	},
	["hin.a.battle.02"] = {
		"sets {g:his|her} feet as the owlbeast rears up with a hoot like a cracked horn, talons out.",
		"meets the owlbeast's charge head on, and the path fills with feathers and fury.",
	},
	["hin.a.battle.03"] = {
		"Witherbark! Back to your ruins, or into the ground. Your choice.",
		"Another Witherbark with a long knife and a longer grudge. Let's settle it.",
		"Witherbark. The hills were yours once; they aren't now.",
	},
	["hin.a.battle.04"] = {
		"Vilebranch. Keep your altars; you won't be needing them.",
		"One of the Vilebranch. Good. That's one less waiting at the top of Jintha'Alor.",
	},
	["hin.a.battle.05"] = {
		"Breathe. Watch the footing; on these slopes a slip kills as surely as a claw.",
		"Steady. Roots underfoot, a slope behind me. Mind the ground as much as the foe.",
	},
	["hin.a.journey.01"] = {
		"rises from Aerie Peak on gryphon wings, the cliffs dropping away and the green of the Hinterlands spreading out below.",
		"is carried off the peak in a rush of feathers, the wind roaring and the forest shrinking to a rumpled green blanket.",
	},
	["hin.a.journey.02"] = {
		"Down at Aerie Peak, legs stiff, ears ringing. The gryphon looks pleased with itself.",
		"Solid stone under my feet again. Aerie Peak smells of feathers, smoke and ale.",
	},
	["hin.a.landmark.01"] = {
		"climbs into Aerie Peak, where gryphons shift on their roosts and tattooed dwarves call to each other across the stone.",
		"comes up among the halls of {landmark}, the wind sharp off the cliffs and the smell of gryphons everywhere.",
		"reaches the Wildhammer stronghold on its high rock, gryphon cries echoing off the walls.",
	},
	["hin.a.lowhp.01"] = {
		"Not here. The Wildhammer would never let me hear the end of it.",
		"Up. The dwarves fly gryphons with worse than this.",
		"Still standing. These hills will have to try harder.",
	},
	["hin.a.lowhp.02"] = {
		"The green is going gray at the edges. Not in these woods. Nobody would ever find me.",
		"Too much blood in the grass, and it's mine. Hold on.",
	},
	["hin.a.muse.01"] = {
		"Green hills folded one into the next, and not a farm on any of them. The Hinterlands were never tamed; they were only fought over.",
		"All this green, and hardly a fence in it. Nobody plows these hills. Trolls held them first, and the forest holds them now.",
		"No fields, no fences, no roads worth the name. Just hills rolling off toward the sea, as if no one ever owned them.",
	},
	["hin.a.muse.02"] = {
		"The Wildhammer brew their ale strong enough to strip paint. I think that's how they stay warm on those gryphons.",
		"Wildhammer ale. One mug and you could fly without the gryphon.",
	},
	["hin.a.muse.03"] = {
		"Owlbeasts. Feathers, claws and a stare that follows you down the path long after you've passed.",
		"Half owl, half bear, and all of the bad temper of both. The owlbeasts of these hills don't share the path.",
		"An owlbeast never hurries. It watches from the brush with those round eyes, deciding, and it usually decides yes.",
	},
	["hin.a.muse.04"] = {
		"Troll stone under the moss everywhere: steps, walls, carved heads with their tusks worn smooth. This was a great empire once, and it doesn't care that I walk on it.",
		"Every few hills, another troll ruin, half eaten by roots. The Amani built for forever. The forest is patient.",
		"Old troll steps lead up into the trees and stop at nothing. Whatever stood at the top went back to the forest long ago.",
	},
	["hin.a.muse.05"] = {
		"Good folk, the Wildhammer. Loud, tattooed and half wild, but they'll stand by you in a fight.",
		"You haven't met a dwarf until you've met a Wildhammer. Ironforge is a parlor by comparison.",
		"Say what you like about the Wildhammer, they don't stand on ceremony. They barely stand on the ground.",
	},
	["hin.a.muse.06"] = {
		"Seradane. Green dragons' ground, from what I hear, and a place where the trees stand too tall and too quiet. Some doors are best left to the ones who keep them.",
		"Folk at Aerie Peak speak of Seradane quietly, the way you'd speak of something asleep. I'll take the hint.",
	},
	["hin.a.muse.07"] = {
		"The wind comes up the valleys and goes through the trees like a broom. Out here, it's the only one in a hurry.",
		"Hours of hills, and the only voice is the wind's. I find I don't mind it much.",
		"Nobody to talk to but the wind in the branches. It agrees with everything I say, which is restful.",
	},
	["hin.a.muse.08"] = {
		"stops on a rise and looks out over the Hinterlands, ridge after green ridge, with a ring of mountains standing guard at the edges.",
		"pauses where the path tops a hill, the forest falling away on every side and the far peaks blue with distance.",
	},
	["hin.a.muse.09"] = {
		"Witherbark in the ruins, Vilebranch up at Jintha'Alor, and both of them with long memories. The Wildhammer do well to keep their gryphons saddled.",
		"The trolls here never forgot these hills were theirs. Every camp of theirs is a reminder that they mean to take them back.",
	},
	["hin.a.muse.10"] = {
		"The silvermane wolves hunt in packs and in silence. You hear the first one when it's already too close.",
		"Handsome animals, the silvermanes, with that pale ruff. Handsomer from a long way off.",
	},
	["hin.a.muse.11"] = {
		"High elves at Quel'Danil Lodge, a long way from any home they'd name. They keep the lodge neat and their bows strung.",
		"Quel'Danil is a hunting lodge of the high elves, all carved wood and quiet manners. Out here it looks like a lantern left in the forest.",
		"There are high elves in these woods, at Quel'Danil. Few of them, far from their own forests, and keeping to themselves.",
	},
	["hin.a.npc_meet.01"] = {
		"A gryphon over the treetops, please. I've had enough of walking under them.",
		"Take me over the hills. I've walked enough of them.",
		"Your fastest gryphon. These woods have had enough of me, and I of them.",
	},
	["hin.a.npc_meet.02"] = {
		"An innkeeper at Aerie Peak, where the ale is dark and the songs get louder as the hours go by.",
		"A bench, a fire and a dwarf pouring something strong. The Wildhammer know how to keep a hall.",
	},
	["hin.a.quest_complete.01"] = {
		"Done, and the hills are a little safer for it. Only a little, but it counts.",
		"One more debt of the Hinterlands paid off. The forest won't notice. The people here will.",
		"That's handled. Out here, every small thing done is a small thing that won't go wrong later.",
	},
	["hin.a.quest_complete.02"] = {
		"Done! If there's a mug of Wildhammer ale at the end of this, I've earned every drop.",
		"Finished. Now, which way to the nearest ale?",
		"There. Tell whoever's counting to put it on my tab.",
	},
	["hin.a.quest_complete.03"] = {
		"The trolls will be back, the beasts too. But for a while, someone in these hills sleeps easier.",
		"It won't change the Hinterlands. It changes one corner of them, for a season, and that's not nothing.",
	},
	["hin.a.quest_complete.04"] = {
		"finishes the business with a nod and steps back, mud of the Hinterlands still on {g:his|her} boots.",
		"lets out a breath as the task is settled, already glancing back toward the green hills.",
	},
	["hin.a.quest_progress.01"] = {
		"That's what was asked. Now back through the hills to say so.",
		"Enough. Time to find the way back before the forest changes its mind.",
		"Done here. The walk back is the part nobody thanks you for.",
	},
	["hin.a.subzone_enter.01"] = {
		"A new fold of the hills, and a new set of trees to eye with suspicion. Something here is always watching.",
		"Over the ridge and into another valley, more trees than sky. The Hinterlands keep their corners well hidden.",
	},
	["hin.a.subzone_enter.02"] = {
		"comes upon the high elves' lodge among the trees, carved beams and quiet archers, a long way from any elven land.",
		"walks into {subzone}, where the woodwork is fine, the trees crowd close and the welcome is careful.",
	},
	["hin.a.victory.01"] = {
		"Quiet again. The birds take a moment to decide it's safe, then start up as before.",
		"Done. The forest closes over the noise like water. In a day, there'll be no sign of it.",
		"The hills don't keep score. By tomorrow the grass will have stood back up.",
	},
	["hin.a.victory.02"] = {
		"That's one fewer thing in these woods that wants to eat me. The list is still long.",
		"Well. The Hinterlands are slightly less hungry now.",
		"Beautiful country. I'd enjoy it more if it stopped trying to kill me.",
	},
	["hin.a.victory.03"] = {
		"One less raider for Aerie Peak to worry about.",
		"That's one Witherbark who won't be creeping up on the Wildhammer again.",
		"Rest now. The hills will be quieter without your knife.",
	},
	["hin.a.victory.04"] = {
		"lowers {g:his|her} weapon and wipes it clean on a tuft of grass, listening to the forest settle.",
		"straightens, breathing hard, and looks around the green slope for whatever comes next.",
	},
	["hin.a.weather_change.01"] = {
		"Rain on the leaves, a soft drumming all through the forest. The paths turn slick and everything smells of earth.",
		"The rain rolls in over the ridges, and the old troll stones go dark and shine.",
	},
	["hin.h.attack.01"] = {
		"For Revantusk!",
		"Here's the Horde's answer.",
		"These woods have bitten me enough. My turn.",
	},
	["hin.h.battle.01"] = {
		"For Revantusk, and for the Horde!",
		"Lok'tar! These hills are big enough to bury you in.",
		"Come on. The forest is watching; let's give it something to see.",
	},
	["hin.h.battle.02"] = {
		"Vilebranch! The Revantusk send their regards.",
		"Run home to your altars, Vilebranch. If you can.",
		"Another Vilebranch. The Revantusk will want to hear about this one.",
	},
	["hin.h.battle.03"] = {
		"Witherbark! You picked the wrong path.",
		"Your ruins won't hide you, Witherbark.",
	},
	["hin.h.battle.04"] = {
		"ducks a swipe of talons as the owlbeast comes on in a whirl of feathers and hooting rage.",
		"stands {g:his|her} ground before the owlbeast, which puffs itself up to twice its size and screeches.",
	},
	["hin.h.battle.05"] = {
		"Trees at my back, the slope in front. Let it do the climbing.",
		"Easy. In this undergrowth, the second one is always closer than the first.",
	},
	["hin.h.journey.01"] = {
		"lifts away from Revantusk on a wind rider, the huts falling behind and the gray sea opening wide to the east.",
		"is borne up over the coast, the cliffs and the long green hills sliding away beneath the wings, the sea at {g:his|her} shoulder.",
	},
	["hin.h.journey.02"] = {
		"Revantusk, at last. Salt wind, smoke from the huts, and ground that holds still.",
		"Landed. The wind rider shakes itself like a wet dog, and the sea goes on grumbling at the rocks.",
	},
	["hin.h.landmark.01"] = {
		"comes into {landmark}, where troll huts crowd the shore and the sea wind carries woodsmoke and salt.",
		"walks among the huts of the Revantusk, spears stacked by the doors and the surf breaking white beyond them.",
		"reaches the Revantusk village on the eastern shore, a Horde outpost of hide, wood and stubbornness at the edge of the sea.",
	},
	["hin.h.lowhp.01"] = {
		"Not yet. Revantusk is a long walk for a corpse.",
		"Is that all? I've had worse from the sea wind.",
		"Still up. The Horde doesn't fall over in the woods.",
	},
	["hin.h.lowhp.02"] = {
		"leans hard on a mossy trunk, breathing in gasps, then shoves away from it with the weapon still raised.",
		"sinks into the ferns, blood dark on the green, and drags {g:himself|herself} up by stubbornness alone.",
	},
	["hin.h.muse.01"] = {
		"On the east side the hills run straight into the sea, and Revantusk sits on the edge as if it were built to watch for something.",
		"Forest at my back, cliffs and gray water ahead. The Hinterlands end abruptly, as if they lost their nerve at the coast.",
		"Green to the cliffs, then nothing but sea. Whoever settled Revantusk wanted a wall on one side and a way out on the other.",
	},
	["hin.h.muse.02"] = {
		"These hills were troll country long before anyone drew a border. The ruins say so on every slope, in stone nobody repairs.",
		"Old steps, old altars, old faces carved with tusks. The forest trolls had an empire here, and now they fight over its bones.",
	},
	["hin.h.muse.03"] = {
		"The Revantusk fight the Vilebranch for the same reason you'd fight a bad neighbor: they're right there.",
		"Trolls fighting trolls in a forest full of troll ruins. And we're the strangers here.",
	},
	["hin.h.muse.04"] = {
		"Good allies, the Revantusk. They know every path in these hills, and which ones to stay off.",
		"Revantusk is small, but the trolls there hold it like a fist. Better that fist is on our side.",
		"The war between the Revantusk and the Vilebranch is older than my business here. I just try to be useful in it.",
	},
	["hin.h.muse.05"] = {
		"An owlbeast's hoot carries a long way in these woods. The trouble is guessing which way it came from.",
		"The owlbeasts here move more quietly than anything that big has a right to. You learn to look up, and around.",
		"Gouged bark and feathers in the moss: you find them all over these hills. Owlbeast country, and it doesn't hide it.",
	},
	["hin.h.muse.06"] = {
		"Jintha'Alor climbs its hill in terraces of stone, the Vilebranch on every step. Whatever they worship up there, they guard it hard.",
		"From the right ridge you can see Jintha'Alor, stacked high and gray. It looks like a place built to be feared.",
		"The Vilebranch built their city to be climbed slowly, every step under their eyes. I'd rather not climb it at all.",
	},
	["hin.h.muse.07"] = {
		"Seradane. A green hush among the hills, the trolls say, where the dragons have business. Not my business.",
		"There's a place called Seradane where the trees stand too still. Green dragons keep it, or so I'm told, and I've no wish to check.",
	},
	["hin.h.muse.08"] = {
		"pauses on a green slope and lets the Hinterlands open out before {g:him|her}, hill on hill, forest on forest, with mountains walling it all in.",
		"takes a long look at the hills all around, every one wooded to the top and every one hiding something.",
	},
	["hin.h.muse.09"] = {
		"A long way from any Horde city. The Revantusk huts are the closest thing to a welcome for days in any direction.",
		"Out here the Horde is a few huts by the sea and whoever happens to be passing. It's enough. It has to be.",
		"No walls, no streets, no warchief's banner for miles. Just the forest, and whatever I brought with me.",
	},
	["hin.h.muse.10"] = {
		"The Wildhammer ride their gryphons over these hills as if they owned the sky. Maybe they do. The ground's still up for argument.",
		"Off west at Aerie Peak, the gryphon dwarves are drinking to the Alliance. Let them drink. These hills aren't anyone's yet.",
	},
	["hin.h.muse.11"] = {
		"Silvermane wolves run these woods in packs. Their howl doesn't sound angry. It sounds organized.",
		"A silvermane pack doesn't waste a step. I could learn from that, if I survive the lesson.",
		"Pale ruffs in the green, eyes low to the ground. When the silvermanes go quiet, it's time to move.",
	},
	["hin.h.npc_meet.01"] = {
		"A wind rider, and quick. I've had my fill of these hills.",
		"Somewhere with fewer trolls trying to kill me, if you please.",
		"Up and away. These woods can manage without me for a while.",
	},
	["hin.h.npc_meet.02"] = {
		"An innkeeper among the Revantusk huts. The stew smells of the sea, and the welcome is better than the stew.",
		"A place to sit, out of the wind off the sea. On this coast that's worth more than gold.",
	},
	["hin.h.quest_complete.01"] = {
		"Done. Out here the Horde is thin on the ground, and every job finished counts double.",
		"One more thing set right in the Hinterlands. Not much, against all this forest. Enough for now.",
		"Settled. The hills are no friendlier for it, but they're a little less dangerous.",
	},
	["hin.h.quest_complete.02"] = {
		"Done. Now somebody point me to a fire and a meal.",
		"Finished, and with all my fingers. That counts as a win in the Hinterlands.",
		"There. Write it down somewhere; I'll want it remembered.",
	},
	["hin.h.quest_complete.03"] = {
		"The Vilebranch won't stop, and the forest won't thin. But the work holds, for a while, and a while is what we get.",
		"Small against all these hills. Still, that's how a coast gets held: one small task after another.",
	},
	["hin.h.quest_complete.04"] = {
		"settles the matter with a curt nod, the smell of the forest still in {g:his|her} clothes.",
		"sets the task aside as done and rolls {g:his|her} shoulders, already thinking of the next path into the hills.",
	},
	["hin.h.quest_progress.01"] = {
		"That's the job done. Now the long walk back through troll country.",
		"Enough here. Back to whoever's waiting on word.",
		"Finished. The forest can have this corner back.",
	},
	["hin.h.subzone_enter.01"] = {
		"pushes through the undergrowth into another part of the hills, where the trees close in and the air goes still.",
		"crests a wooded rise and looks down into a new valley, green and silent under the trees.",
	},
	["hin.h.subzone_enter.02"] = {
		"{subzone}. Steps of old troll stone climbing toward nothing, and the feeling of being watched from every one of them.",
		"A troll altar, huge and broken, open to the sky. Whatever was offered here, I hope it was worth it to someone.",
	},
	["hin.h.victory.01"] = {
		"The forest swallows the last of the noise. A bird starts up again, as if nothing had happened.",
		"Still. Leaves settling, my own breath, nothing else. The Hinterlands forget a fight quickly.",
		"Over. The green closes in again, quiet and patient, as if it had only been waiting.",
	},
	["hin.h.victory.02"] = {
		"One less mouth in these woods. Plenty left.",
		"And the Hinterlands lose another argument.",
		"Lovely hills. Everything in them bites, but lovely.",
	},
	["hin.h.victory.03"] = {
		"That's for Revantusk.",
		"One fewer Vilebranch on the steps of Jintha'Alor.",
		"The Revantusk can sleep a little easier. A little.",
	},
	["hin.h.victory.04"] = {
		"kneels to catch {g:his|her} breath among the ferns, then rises and looks back toward the coast.",
		"cleans the weapon on a fistful of moss and listens a while before moving on.",
	},
	["hin.h.weather_change.01"] = {
		"Rain sweeping in from the sea, gray curtains over the hills. Every path turns to running water.",
		"The rain comes down through the leaves in fat, slow drops, and the whole forest starts to drip and whisper.",
	},
]==])
