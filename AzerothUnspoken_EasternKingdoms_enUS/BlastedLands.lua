-- English texts of the regional pack eastern_blastedlands (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/BlastedLands.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("blastedlands", "enUS", "eastern_blastedlands", [==[
	["bla.a.attack.01"] = {
		"Take that back to whatever hole you crawled out of!",
		"From Nethergarde, with no love at all!",
	},
	["bla.a.battle.01"] = {
		"Nethergarde holds, and so do I. Come on, then!",
		"Another thing this waste spat out. Let's see how it bites.",
	},
	["bla.a.battle.02"] = {
		"Spikes, scales or claws. Out here the only question is which end to avoid.",
		"Of course it's in a foul mood. Anyone would be, living here.",
	},
	["bla.a.battle.03"] = {
		"sets {g:his|her} heels in the red dust and meets the charge head on.",
		"squints through the hot wind and the blowing dust, and raises a guard as the foe closes in.",
	},
	["bla.a.journey.01"] = {
		"rises from Nethergarde on gryphon wings, and the red waste spreads out below, the great gate standing dark far to the south.",
		"climbs into the hot air above the keep, the scarred land falling away in shades of rust and ash.",
	},
	["bla.a.landmark.01"] = {
		"{landmark}. Thick walls, tired magi, and every window facing the same way: south, toward the gate.",
		"Stone, banners and the hum of wards. Nethergarde is the only thing out here built to last, and it knows it.",
	},
	["bla.a.lowhp.01"] = {
		"Not on this ground. Nothing that falls here ever gets buried properly.",
		"The red is in my eyes now, not just in the sand. Stay up.",
		"Stay standing. This ground has drunk enough of other people's blood.",
	},
	["bla.a.muse.01"] = {
		"Nothing grows here that wasn't twisted on the way up. Even the dust has a color it shouldn't.",
		"Red earth, black rock, and a wind that tastes of something burned long ago. This land never healed; it only cooled.",
		"Whatever this ground was before the war, it has forgotten. I don't think it wants reminding.",
	},
	["bla.a.muse.02"] = {
		"Nethergarde watches a gate that does nothing. Every day it goes on doing nothing, the magi have earned their bread.",
		"The Portal sleeps, and the keep stays awake for it. Someone has to, and it might as well be the Alliance.",
		"A dead gate, and a living wall in front of it. I know which of the two I'd rather lean on.",
	},
	["bla.a.muse.03"] = {
		"Lovely country. If you like your boars mangy and your scorpions the size of carts.",
		"Somebody should tell the wildlife here that the war is over. It hasn't heard.",
		"Red sand, red rock, red-eyed beasts. Nobody can say this place lacks a sense of style.",
	},
	["bla.a.muse.04"] = {
		"stands a while on the cracked ground, where the wind turns up old bones and buries them again without hurry.",
		"looks out over the scorched waste toward the great gate, as hot gusts drag red dust across the broken stone.",
		"lets the hush of the waste settle, broken only by the far grunt of an ogre and the hiss of blowing dust.",
	},
	["bla.a.muse.05"] = {
		"The magi at the keep pay good coin for pieces of the beasts out here. Jowls, pincers, brains. I don't ask what they brew.",
		"Everything in this waste is worth something to the magi of Nethergarde, as long as you bring back the right part of it.",
	},
	["bla.a.npc_meet.01"] = {
		"A gryphon master at the edge of the world. The birds look as if they'd like to leave as much as anyone.",
		"The gryphons here keep their wings half open, ready. Even they don't care for the smell of the place.",
		"Someone keeps gryphons fed in this waste. That deserves more than one nod, so I give two.",
	},
	["bla.a.quest_complete.01"] = {
		"Done. Whoever needed it has it now, and this waste has one less thing to throw at us.",
		"Finished. Small work, far from anywhere, and someone out here is the better for it.",
		"That's handled. Out here a finished task is worth more than a full waterskin, and nearly as rare.",
	},
	["bla.a.quest_complete.02"] = {
		"takes the reward and shakes a little red grit out of the purse before tucking it away.",
		"accepts the payment with a nod and brushes the dust of the waste from {g:his|her} hands.",
	},
	["bla.a.quest_progress.01"] = {
		"Part of it done. Whatever's left is somewhere in all that red, waiting to bite.",
		"Some progress. The waste gives things up the way a scorpion gives up its sting.",
	},
	["bla.a.subzone_enter.01"] = {
		"The Tainted Scar. Mind the ground, and mind what walks on it.",
		"Here's the Scar. Demons walk around here like they own it. Weapons out.",
	},
	["bla.a.victory.01"] = {
		"Down. The scavengers here won't even have to wait.",
		"There. Something else for the sand to bury.",
		"One less mouth in the Blasted Lands. It won't be missed. Nothing here ever is.",
	},
	["bla.a.victory.02"] = {
		"lowers {g:his|her} weapon and stands breathing hard while the hot wind drags the dust over what fell.",
		"catches {g:his|her} breath on the cracked red ground, eyes narrowed against the haze, as the waste falls quiet again.",
	},
	["bla.h.attack.01"] = {
		"Eat dust! There's plenty of it!",
		"Lok'tar! The Horde fights even in the waste!",
	},
	["bla.h.battle.01"] = {
		"Lok'tar! This waste won't be my grave!",
		"Come, then. I've walked too far through this dust to turn back now.",
	},
	["bla.h.battle.02"] = {
		"You too? Does everything here have to bite?",
		"Fine. I wasn't enjoying the walk anyway.",
	},
	["bla.h.battle.03"] = {
		"Breathe. The heat wants me careless. Don't give it that.",
		"Slow and steady. Out here, whoever tires first doesn't walk home.",
	},
	["bla.h.journey.01"] = {
		"The road ends in red dust and broken hills. No Horde flag waits here, so I pitch a camp in my head and keep going.",
		"Here, if that's the word for it. Stonard lies far behind me, and the waste opens up ahead along the road like an old wound.",
	},
	["bla.h.landmark.01"] = {
		"comes to the foot of the Dark Portal, where the great stone frame stands black and silent above the steps the old Horde once came down.",
		"halts before the cold arch of the Dark Portal; the wind moans through the stone, and nothing else comes through at all.",
	},
	["bla.h.lowhp.01"] = {
		"That all you've got? This heat hurts more than you do.",
		"Not here. This waste won't make a meal of me. Not today.",
		"Not done yet. The ogres can wait a while longer for their supper.",
	},
	["bla.h.muse.01"] = {
		"The old Horde marched out of that gate, a whole people with a fire at its back. Now the gate is cold, and the Horde is something else.",
		"This is where it began for the orcs on this world. Strange how little is left to show it: red ground, a dead gate, and wind.",
		"Everything the Horde is now, it became after leaving this place behind. Some roads are only walked once.",
	},
	["bla.h.muse.02"] = {
		"No Horde roof for miles. Stonard is a long walk north, and everything between here and there would like a bite of me.",
		"Nobody out here flies our colors. You carry your camp on your back, and you sleep with one eye open.",
		"The keep at the edge of the waste isn't ours, and the ogres aren't anyone's. Out here I am the whole Horde, and the Horde is tired.",
	},
	["bla.h.muse.03"] = {
		"Every living thing here is red, spiny or angry. Most manage all three.",
		"Ogres on one side, demons on the other, the Alliance on the hill. And me in the middle, admiring the view.",
		"I'd complain about the heat, but the boars here just grew tougher hides instead. Point taken.",
	},
	["bla.h.muse.04"] = {
		"crouches to rub a pinch of soil between two fingers; it crumbles like old ash and leaves a red stain behind.",
		"looks over the broken hills, where nothing stands taller than a thornbush and the rocks lie split as if by some long-gone heat.",
		"watches a dust devil wander across the waste and fall apart, the only thing out here that moves without hunting.",
	},
	["bla.h.muse.05"] = {
		"Demons wander this waste with nobody left to command them. I'm not sure that makes them less dangerous. Maybe more.",
		"Near the Scar the air tastes of iron, with something sweeter underneath. I've learned to walk the other way when it does.",
	},
	["bla.h.npc_meet.01"] = {
		"Someone with work to offer, this far out in the waste. Either very brave or very well paid.",
		"Work, out here? Fine. It's not as if the scenery was keeping me busy.",
		"Whoever hands out tasks in a place like this has no choice, or has lost their wits. I'll listen either way.",
	},
	["bla.h.quest_complete.01"] = {
		"Done. A long way to come for it, but coin spends the same in Stonard.",
		"That's finished. Now for the long walk back, with my pockets a little heavier.",
		"Paid, and not a single piece of me lost on the way. In this place, that's a good day's work.",
	},
	["bla.h.quest_complete.02"] = {
		"Done. Nobody here will remember it, and the wind will have covered my tracks before long.",
		"Finished, far from any Horde banner. Some work you do just because it needed doing.",
	},
	["bla.h.quest_progress.01"] = {
		"pauses to shake the red sand out of {g:his|her} boots, a little closer to done than before.",
		"wipes the sand from {g:his|her} eyes and looks out across the waste, the task one step further along.",
	},
	["bla.h.subzone_enter.01"] = {
		"Dreadmaul ground. Big, ugly and plenty of them. Keep low.",
		"Ogre country. Smell that? Smoke, sweat and old meat.",
	},
	["bla.h.victory.01"] = {
		"Down in the red dust. Who's next?",
		"Stay down. This land has teeth, and so do I.",
		"That's how the Horde crosses a waste: over whatever stands in the road.",
	},
	["bla.h.victory.02"] = {
		"wipes the sweat and the grit from {g:his|her} brow and looks around for the next thing that wants a fight.",
		"spits out red dust, checks the weapon for nicks and walks on without looking back.",
	},
]==])
