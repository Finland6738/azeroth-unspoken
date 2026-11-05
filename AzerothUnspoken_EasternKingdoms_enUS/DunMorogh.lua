-- English texts of the regional pack eastern_dunmorogh (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/DunMorogh.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("dunmorogh", "enUS", "eastern_dunmorogh", [==[
	["dmo.battle.cold"] = {
		"Numb fingers, steady grip. The cold can wait until this is done.",
		"Breathe out, plant the feet, mind the ice. Now.",
	},
	["dmo.battle.trogg"] = {
		"Back into your hole, trogg!",
		"Another one up from the deep. Let's send it back down.",
	},
	["dmo.journey.arrival"] = {
		"climbs down from the gryphon into the biting cold, stiff from the ride and blinking at the white glare all around.",
		"lands among the mountains, shakes the frost from {g:his|her} cloak, and takes a first careful step on the packed ground.",
	},
	["dmo.journey.start"] = {
		"Up through the cold air, and the whole of Dun Morogh opens beneath me: white peaks, black pines, frozen lakes like dropped coins.",
		"The gryphon climbs, and the white slopes fall away until the valleys look like folds in a pale cloak.",
		"Wind like knives, and below, the mountains turning slowly as we bank. My fingers will forgive me eventually.",
	},
	["dmo.landmark.coldridge"] = {
		"looks across Coldridge Valley, a white bowl ringed by cliffs, where the smoke of Anvilmar rises into the still air.",
		"takes in the sheltered valley, its tracks churned by new recruits and its far edges dark with troll caves.",
	},
	["dmo.landmark.kharanos"] = {
		"Kharanos. Chimney smoke, the smell of malt from the distillery, and a door that opens onto warmth.",
		"Here's Kharanos: a smithy, a brewery and a fire. A village that knows what matters.",
	},
	["dmo.lowhp.01"] = {
		"Not here. Not face down in the snow, miles from a fire.",
		"The cold creeps in where the blood runs out. Get up. Get up and finish it.",
	},
	["dmo.muse.01"] = {
		"Snow on every slope, and the peaks above it white as old bone. The mountain does not hurry for anyone.",
		"Everything up here is white, gray, or blue with cold. The eye learns to rest on the dark of a pine.",
		"The snow takes every sound and keeps it. Even my own steps seem to come from far away.",
	},
	["dmo.muse.02"] = {
		"Cold enough to freeze the words before they leave your mouth. Good thing I talk fast.",
		"I've lost feeling in two toes. I'm told that's how you know you've reached Dun Morogh.",
		"Somebody tell the mountain it's allowed to be warm for one afternoon.",
	},
	["dmo.muse.03"] = {
		"stamps the snow off {g:his|her} boots and watches the breath drift away in a slow white cloud.",
		"pulls {g:his|her} collar higher against the cold and squints at the glare off the snowfields.",
	},
	["dmo.muse.04"] = {
		"Gnomeregan is just past those hills. Our city, our workshops, and not one of us can walk in through our own front door.",
		"We built marvels down there. Then the troggs came up, and we made the choice that poisoned our own halls. I still can't say it was the right one.",
	},
	["dmo.muse.05"] = {
		"Cold air, hard stone, honest snow. Whatever else the world holds, this is the shape of home.",
		"My people have carved these mountains for longer than anyone has kept count. The stone knows our hands.",
	},
	["dmo.muse.06"] = {
		"Troggs everywhere, crawling out of holes nobody knew were there. Makes you wonder what else is waiting in the deep.",
		"The ground here feels solid until you remember what climbed up out of it. I keep one ear on the rocks.",
	},
	["dmo.muse.07"] = {
		"A howl comes down from the high slopes, too long for any wolf. The wind, I tell myself. Only the wind.",
		"Something big has walked this way, tracks wider than my two hands together. A bear, or something that walks like one.",
	},
	["dmo.muse.08"] = {
		"Every road in this valley seems to lead back to a fire and a mug of something dark. I'm not complaining.",
		"Out here a good stout is no luxury. It's a coat you wear on the inside.",
	},
	["dmo.muse.09"] = {
		"The stars are sharper up here, as if the cold had polished them. The snow gives their light back.",
		"Night on the mountain. So quiet I can hear the pines creak under their load of white.",
	},
	["dmo.muse.10"] = {
		"Hard country makes hard folk. I can see why the dwarves never left.",
		"Wind, ice, troggs and trolls. If this is the welcome, I'd hate to see the farewell.",
	},
	["dmo.npc_meet.guard"] = {
		"A mountaineer with frost on the helm and a rifle on the shoulder. These folk keep watch in cold that would send me indoors.",
		"The guard nods, once. Out here that counts as a long conversation.",
	},
	["dmo.npc_meet.innkeeper"] = {
		"A seat by the fire and whatever's warmest. I'll pay double if it comes with a blanket.",
		"Well met. Is there a stout in this house strong enough to thaw a traveler?",
		"I'll take a room, a bowl of stew, and the chair closest to the hearth, if nobody's claimed it.",
	},
	["dmo.quest_complete.01"] = {
		"Done. Now, which way to the nearest fire and the nearest mug?",
		"That's that. If anyone needs me, I'll be thawing.",
		"Job finished, fingers still attached. I'll call that a good day.",
	},
	["dmo.quest_complete.02"] = {
		"A small thing, maybe. But up here small things are what keep a village fed and its roads open.",
		"One more trouble lifted off these folk. The mountain will send them another soon enough, but not today.",
		"The mountaineers have their hands full. Glad to carry a little of the load.",
	},
	["dmo.quest_complete.03"] = {
		"blows into cupped hands to warm them, the task behind {g:him|her} and the cold still everywhere.",
		"rubs some life back into stiff fingers and lets the quiet satisfaction of a finished job settle in.",
	},
	["dmo.quest_progress.ready"] = {
		"That's the job done. Now the long, cold walk back to tell them.",
		"Finished. All that's left is to trudge back through the drifts.",
	},
	["dmo.subzone_enter.amberstill"] = {
		"Rams! Look at those horns. I'd ask for a ride, but I think they'd ask for my boots.",
		"A ranch full of mountain rams. Sturdy, stubborn, and better climbers than me on my best day.",
	},
	["dmo.subzone_enter.frostmane"] = {
		"slows at the mouth of the troll caves, where the smell of smoke and old bones hangs in the frozen air.",
		"eyes the dark entrance of the Frostmane caves and the trampled path that leads into it.",
	},
	["dmo.subzone_enter.grizzled"] = {
		"That cave breathes. Warm, rank air, and deep inside, something big turning over in its sleep.",
		"Bones at the entrance, gnawed clean. Whatever lives in this den isn't fussy about its supper.",
	},
	["dmo.victory.01"] = {
		"Well, that warmed me up. Who's next?",
		"Nothing like a scrap to chase the chill out of the bones.",
	},
	["dmo.victory.frostmane"] = {
		"The Frostmane hold these hills as fiercely as the dwarves do. Only one of us gets to keep them today.",
		"Down in the snow, spear still in hand. The trolls would say these slopes were theirs long before any forge was lit. Maybe they're right.",
	},
	["dmo.weather_change.snow"] = {
		"stops to watch fresh snow drift down over the peaks, softening every track and every edge.",
		"turns {g:his|her} face up as the snowfall thickens and the far mountains fade to gray shapes.",
	},
	["dmo.attack.w02.01"] = {
		"Feel that? That's the mountain hitting back.",
		"Take that, and tell the rest of the valley!",
		"Harder than the frost, and quicker too!",
	},
	["dmo.battle.w02.01"] = {
		"Come on, then. A scrap is the only warm thing for miles.",
		"Good. Something to do besides shiver.",
		"Step up. The cold slows us both, and I've had more practice.",
	},
	["dmo.battle.w02.02"] = {
		"sets {g:his|her} boots in the packed snow as the beast comes on, its breath streaming white.",
		"turns to meet the charge with snow kicked up around both feet, the cold forgotten for a moment.",
	},
	["dmo.battle.w02.03"] = {
		"Short steps. The ground here is half ice, and whoever slips first loses.",
		"Mind the footing first and the teeth second. On this slope the worst danger is underfoot.",
	},
	["dmo.battle.w02.04"] = {
		"Down from your caves again, troll? Then let's settle it out here.",
		"Frostmane. Paint, spears and a lot of shouting. Go on, then.",
		"Spear up, troll. I've walked too far in this cold to step aside.",
	},
	["dmo.lowhp.w02.01"] = {
		"My hands are shaking, and not from the cold this time. Hold a little longer.",
		"Too much red on the white. Get your feet under you and finish this.",
		"The mountain doesn't care who walks off it. Make sure it's me.",
	},
	["dmo.muse.w02.01"] = {
		"The lake is frozen so clear I can see the stones on the bottom. It looks like a window nobody ever bothered to open.",
		"Ice from shore to shore, gray at the edges and black in the middle where it runs deep. I'll walk around, thank you.",
		"The wind has swept the lake down to bare ice. Underneath, a pale fish drifts past, in no hurry at all.",
	},
	["dmo.muse.w02.02"] = {
		"Stone dwarves as tall as a cliff, guarding the gates up there. Everything the dwarves build is bigger than the dwarves.",
		"You can see the gates of Ironforge from half the valley. That isn't a door; that's a statement.",
		"I tried to guess how long it took to carve that gate. Then I stopped, because my neck hurt.",
	},
	["dmo.muse.w02.03"] = {
		"stops to watch a boar root through the crust of snow for something green, find nothing, and keep at it.",
		"follows a line of hare tracks across the snow until they end in a scuffle and a few tufts of fur.",
	},
	["dmo.muse.w02.04"] = {
		"The gnomes who stayed behind in Gnomeregan still wander near its gates, sick and strange. Nobody around here talks about them for long.",
		"Down toward the old gnomish road the air tastes of oil and something worse. A whole city's grief, seeping out under the snow.",
	},
	["dmo.quest_complete.w02.01"] = {
		"A clap on the shoulder that nearly knocked me flat. Thanks in these hills are like the ale: strong, and not subtle.",
		"A grunt and a coin pushed my way. Around here, I think that counts as gushing.",
		"Nobody makes a speech when the work is done. They nod, they pay, they point at the next thing. I could get used to it.",
	},
	["dmo.quest_progress.w02.01"] = {
		"marks one more piece of the task as done and blows on {g:his|her} fingers before going on.",
		"stamps some warmth back into {g:his|her} feet: one part finished, the rest still waiting out in the white.",
	},
	["dmo.victory.w02.01"] = {
		"Done. If I stand here, the sweat will freeze on me, so I won't.",
		"Over. Keep moving before the cold notices I've stopped.",
		"That's one. Now off this open slope before my hands stiffen.",
	},
	["dmo.victory.w02.02"] = {
		"lowers {g:his|her} weapon, and the snow around the fight is already settling back over the tracks.",
		"straightens up, breathing hard, while fresh powder slides off a pine branch and buries the worst of the mess.",
	},
	["dmo.victory.w02.03"] = {
		"That one's going in the story. It'll be twice the size by the time I reach Kharanos.",
		"Somebody remember that. I'll want witnesses at the bar.",
		"Not bad. The mug I'm owed just grew by a size.",
	},
]==])
