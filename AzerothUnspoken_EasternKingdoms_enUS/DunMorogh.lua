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
	["dmo.attack.w16.cry.001"] = {
		"Frost in the bones, fire in the fist!",
		"Cold hands, hard hit!",
		"Frozen fist, hot temper!",
	},
	["dmo.attack.w16.cry.002"] = {
		"Here's something to warm you up!",
		"Hot delivery, straight from the cold!",
		"Warm-up's over!",
	},
	["dmo.attack.w16.cry.003"] = {
		"Hard as the stone of Ironforge!",
		"Let the peaks hear that one!",
	},
	["dmo.attack.w16.cry.004"] = {
		"Now, while the footing holds.",
		"Feet set. Go.",
	},
	["dmo.attack.w16.cry.005"] = {
		"Into the snow with you!",
		"Down you go, face first in the white!",
		"Bury it in the drift!",
	},
	["dmo.attack.w16.cry.006"] = {
		"Compliments of the valley!",
		"Greetings from the peaks!",
		"Courtesy of the high passes!",
	},
	["dmo.attack.w16.cry.007"] = {
		"Like an avalanche!",
		"Like rock off a ridge!",
	},
	["dmo.attack.w16.cry.008"] = {
		"Feel the cold in this one!",
		"Colder than the lakes, this!",
	},
	["dmo.attack.w16.cry.009"] = {
		"Before the fingers stiffen. Now.",
		"Strike while the hands still listen.",
	},
	["dmo.attack.w16.cry.010"] = {
		"Crack like lake ice!",
		"Break, like ice under a boot!",
		"Shatter!",
	},
	["dmo.attack.w16.cry.011"] = {
		"Dwarven hospitality!",
		"Straight from the quarry!",
	},
	["dmo.attack.w16.cry.012"] = {
		"Up here, nothing yields!",
		"The mountains don't bend, and neither do I!",
		"Hold, and strike!",
	},
	["dmo.battle.w16.ice.001"] = {
		"Mind your footing. This slope has thrown down better than you.",
		"Watch the ice. It doesn't care which of us it drops.",
	},
	["dmo.battle.w16.ice.002"] = {
		"Heels in, knees soft. Frozen ground punishes the first one to lunge.",
		"Let it come to me. On ground this hard, whoever rushes ends up sliding.",
		"Feel for the grit under the frost. Fight from there.",
	},
	["dmo.battle.w16.ice.003"] = {
		"shifts {g:his|her} weight on the crusted drift until it stops creaking, then raises {g:his|her} guard.",
		"kicks the loose snow aside down to bare rock, and sets {g:his|her} stance.",
	},
	["dmo.battle.w16.ice.004"] = {
		"The mountain's watching. Let's give it something worth seeing.",
		"Out here the cold kills slow. I'm quicker.",
		"Dun Morogh picked this fight. I'll finish it.",
	},
	["dmo.battle.w16.ice.005"] = {
		"Whoever falls here, the drifts will cover soon enough. Best it isn't me.",
		"The snow keeps no grudges and no names. Fight like it matters anyway.",
	},
	["dmo.battle.w16.ice.006"] = {
		"Quick, before my fingers forget how to close.",
		"Let's be brief. I can barely feel my hands as it is.",
		"Make it fast. My ears are about to fall off.",
	},
	["dmo.battle.w16.ice.007"] = {
		"Ironforge is cut from this same rock. I can be as stubborn as it is.",
		"Dwarves carved a king's hall out of these mountains. I can hold one patch of ground.",
	},
	["dmo.battle.w16.ice.008"] = {
		"turns into the fight, and the cliffs throw the first shout back.",
		"squares off against the threat, the white walls of the mountains standing over both like judges.",
	},
	["dmo.battle.w16.ice.009"] = {
		"Stiff shoulders, cold hands. Warm up on the first exchange or don't bother with a second.",
		"Everything aches when it's this cold. Good. The ache keeps me sharp.",
	},
	["dmo.battle.w16.ice.010"] = {
		"I walked through drifts up to my knees to get here. Make it worth the walk.",
		"Of all the places to pick a fight, you chose a frozen one. Bold.",
		"I didn't climb all this way to be stopped by you.",
	},
	["dmo.battle.w16.ice.011"] = {
		"Plant your feet, then. Let's see who the ice likes better.",
		"On this footing, one mistake ends it. Make yours.",
	},
	["dmo.battle.w16.ice.012"] = {
		"Kharanos has lit forges and a hot hearth. Finish this and go find them.",
		"Small fight, big mountains. Nobody up here will remember it but me.",
	},
	["dmo.battle.w16.ice.013"] = {
		"draws up short among the rocks as the fight finds {g:him|her}.",
		"turns to face the attack with the mountainside at {g:his|her} back and nowhere soft to fall.",
	},
	["dmo.battle.w16.ice.014"] = {
		"I've crossed frozen lakes that tried harder to kill me.",
		"Frostbite first, then you. Get in line.",
	},
	["dmo.battle.w16.trogg.001"] = {
		"Rockjaw! You dug your way up here. You won't dig your way out.",
		"Up from the deep, are you? The surface has rules. Lesson one.",
		"Go back to the dark, Rockjaw. It suits you better.",
	},
	["dmo.battle.w16.trogg.002"] = {
		"Troggs. Nobody knows how deep their tunnels run, only that they run deep enough to keep sending more.",
		"A trogg out in the open, squinting. It hates the white as much as I do.",
	},
	["dmo.battle.w16.trogg.003"] = {
		"Put down the bone, trogg. I've seen better clubs in a woodpile.",
		"Nice bone. Is that the club, or lunch?",
		"That's a club? I've seen dwarves stir stew with bigger.",
	},
	["dmo.battle.w16.trogg.004"] = {
		"meets the trogg's rush head on, stone dust still sifting from its hide.",
		"sets {g:his|her} feet as the trogg comes scrabbling out of the rocks, knuckles first.",
	},
	["dmo.battle.w16.trogg.005"] = {
		"Gol'Bolar was a dwarven quarry before you crawled into it. Out.",
		"These mountains have tenants already, trogg. You're not on the lease.",
	},
	["dmo.battle.w16.trogg.006"] = {
		"The troggs came up and a whole city fell. Hard to see only a brute in one.",
		"One of the things that emptied Gnomeregan. It looks too dull to have done it. That's what scares me.",
	},
	["dmo.battle.w16.trogg.007"] = {
		"Stay back! Whatever Gnomeregan did to you, I can't undo it.",
		"Easy, easy. I don't want this either, but you're not giving me a choice.",
	},
	["dmo.battle.w16.trogg.008"] = {
		"Its eyes are wrong. Whatever was in that city got into it and stayed.",
		"A gnome, or what the poison left of one. It still moves like it remembers a workshop.",
	},
	["dmo.battle.w16.trogg.009"] = {
		"Dark Iron, this far north? You've wandered a long way from your own fires.",
		"Spying under Ironforge's nose? Bold. Short-lived, but bold.",
	},
	["dmo.battle.w16.trogg.010"] = {
		"turns on the Dark Iron dwarf, and the old feud between the clans is suddenly close enough to touch.",
		"faces the Dark Iron, and the old clan war shrinks to one patch of frozen ground.",
	},
	["dmo.battle.w16.trogg.011"] = {
		"How many of you are down there? Never mind, I'll count you up here.",
		"Every hole in this valley has a trogg in it. You'll do for a start.",
	},
	["dmo.battle.w16.trogg.012"] = {
		"Snarl all you like. Stone doesn't scare me, and you're mostly stone.",
		"Rockjaw. Thick skull, thicker hide. I'll find the gap.",
	},
	["dmo.battle.w16.trogg.013"] = {
		"Troggs hit hard and think slow. Make it think.",
		"Low and heavy, all shoulders. Stay out of reach and let it tire.",
	},
	["dmo.battle.w16.trogg.014"] = {
		"You were somebody's tinker once. Now you're a danger on the road. Sorry.",
		"Back toward Gnomeregan! I don't want to do this.",
	},
	["dmo.battle.w16.troll.001"] = {
		"Painted face and a hard stare. Frostmane, you'll need more than both.",
		"Off your ridge and into the open. Good. I prefer you where I can see you.",
		"Frostmane. Big voice for such a cold place.",
	},
	["dmo.battle.w16.troll.002"] = {
		"Ice trolls. Kin of the jungle tribes, some say, worn pale and hard by the cold. They don't shrink from it like I do.",
		"At ease in the frost, while I shiver. That edge belongs to the troll.",
	},
	["dmo.battle.w16.troll.003"] = {
		"hears the Frostmane's cry bounce between the ridges and turns to meet it.",
		"steps toward the troll as its war cry rolls off the rock walls, louder for the echo.",
	},
	["dmo.battle.w16.troll.004"] = {
		"You lot live in caves at the top of a frozen mountain. I'm almost sorry for you.",
		"Frostmane! Don't you ever come down for anything but trouble?",
		"Even the rams have better manners than you, troll.",
	},
	["dmo.battle.w16.troll.005"] = {
		"Shout louder, troll. The mountains carry it, and it still won't move me.",
		"Your seer can mutter all it likes. I'm not stepping back.",
	},
	["dmo.battle.w16.troll.006"] = {
		"Watch the shoulders, not the spear point. A troll gives everything away, if you know where to look.",
		"Long reach, quick feet. Close the distance and keep it closed.",
	},
	["dmo.battle.w16.troll.007"] = {
		"Bones on a string around your neck. Don't add mine to the collection.",
		"Keep your trophies, troll. You won't be adding one.",
	},
	["dmo.battle.w16.troll.008"] = {
		"turns toward the troll, its painted face and bone charms stark against the white behind it.",
		"faces the Frostmane, whose eyes hold the patient cold of the caves it came from.",
	},
	["dmo.battle.w16.troll.009"] = {
		"Raiding the road to Kharanos? Not while I'm on it.",
		"Stay up in your caves, Frostmane. The valley roads aren't yours to raid.",
		"The valley folk have troubles enough. You're one I can fix.",
	},
	["dmo.battle.w16.troll.010"] = {
		"Trolls up here bury nothing. The snow does it for them.",
		"If this goes badly, the Frostmane decide what's left of me. Don't let it go badly.",
	},
	["dmo.battle.w16.troll.011"] = {
		"Oh good, a troll. I was getting bored of the scenery.",
		"Paint and shrieking. Do you rehearse this in the caves?",
	},
	["dmo.battle.w16.troll.012"] = {
		"The ice is your home, troll. I only learned to stand on it.",
		"Your ice, your ridge, your fight. My win.",
	},
	["dmo.battle.w16.troll.013"] = {
		"Frostmane. You know these slopes, and I respect it. I still won't yield them.",
		"Your hold, your caves, your mountain. But this patch is mine.",
	},
	["dmo.battle.w16.troll.014"] = {
		"meets the troll's lunge on the ice and turns it aside, both of them skidding.",
		"ducks under the troll's long reach and steps inside it, boots crunching on the crust.",
	},
	["dmo.battle.w16.wild.001"] = {
		"Hungry? Everything up here is. Find something smaller.",
		"I know, the pickings are thin in this cold. I'm still not on the menu.",
		"No. I'm all gristle. Not worth the trouble.",
	},
	["dmo.battle.w16.wild.002"] = {
		"locks eyes with the beast across the frozen ground; neither looks away first.",
		"watches the animal circle, low and lean like everything up here, and turns with it.",
	},
	["dmo.battle.w16.wild.003"] = {
		"Where's the rest of the pack? Behind the pines, I'll bet.",
		"Lone wolf, or the bait for the others? Either way.",
		"Wolves, of course. It's always wolves in these hills.",
	},
	["dmo.battle.w16.wild.004"] = {
		"A boar with a grudge. Kharanos has a spit with your name on it.",
		"Easy, pig. Nobody wants your patch of frozen roots.",
	},
	["dmo.battle.w16.wild.005"] = {
		"A bear, woken and furious about it. Stay out of those arms.",
		"Big, slow to turn, and too angry to care. Use all three.",
	},
	["dmo.battle.w16.wild.006"] = {
		"Out of the Grizzled Den, are you? Roar all you like.",
		"Wendigo! Back to your den, or I'll see you off myself.",
	},
	["dmo.battle.w16.wild.007"] = {
		"faces the wendigo, a heap of matted white with a voice like a split tree.",
		"stands {g:his|her} ground as the wendigo rears up, taller than any door in Kharanos.",
	},
	["dmo.battle.w16.wild.008"] = {
		"It's only hungry, like everything this high. Sorry, but not that sorry.",
		"Ribs showing under thick hide. The mountain starves its creatures and then sends them at me.",
	},
	["dmo.battle.w16.wild.009"] = {
		"Teeth bared? Fine. I've got my own way of saying no.",
		"Back off, beast. I'm colder than you and in a worse mood.",
		"Snarl at someone who scares easily.",
	},
	["dmo.battle.w16.wild.010"] = {
		"Every herder in this valley would thank me for this. Let's earn it.",
		"One less prowler near the ranches. That's worth some cold fingers.",
	},
	["dmo.battle.w16.wild.011"] = {
		"meets the charge at the edge of a drift, and the fight breaks out in a spray of white.",
		"braces as the beast bounds in across the crusted snow.",
	},
	["dmo.battle.w16.wild.012"] = {
		"Watch the ears. When they flatten, it comes.",
		"Patience. Beasts up here don't waste a move. Neither will I.",
	},
	["dmo.battle.w16.wild.013"] = {
		"Easy, now. You're hungry, I'm cold, and neither of us wants this.",
		"Shoo! Go and bother something your own size!",
	},
	["dmo.battle.w16.wild.014"] = {
		"This is the mountain's way: something hungry, something in its path. This time I'm the thing in its path.",
		"Nothing up here gets fed for free. It knows that. So do I.",
	},
	["dmo.journey.w16.land.001"] = {
		"slides down to the ground and stamps a few times, reminding {g:his|her} legs how walking works.",
		"touches down with a jolt, brushes the ice crystals from {g:his|her} sleeves, and looks around at the white slopes.",
	},
	["dmo.journey.w16.land.002"] = {
		"Feet on the ground, and the first thing Dun Morogh offers is a cold that goes straight through the boots.",
		"Earth under me, the smell of pine and coal smoke in the air. That's this valley, all right.",
		"On foot at last. The cold was waiting at the landing like a host with no manners.",
	},
	["dmo.journey.w16.land.003"] = {
		"Thanks for the ride. My knees will remember it longer than I will.",
		"Down, and nothing missing. Somebody point me toward something hot.",
	},
	["dmo.journey.w16.land.004"] = {
		"The flight ends, and the mountains are suddenly enormous again. From above they looked like folded paper.",
		"With my feet down, the peaks take back the sky. Funny how quickly they stop looking small.",
	},
	["dmo.journey.w16.land.005"] = {
		"steps away from the mount with shoulders hunched against the cold and takes a long look at the valley before choosing a road.",
		"arrives in a spray of kicked-up snow and waits for the world to stop swaying before taking a step.",
	},
	["dmo.journey.w16.land.006"] = {
		"After the rush of air, the quiet of the snow is almost loud. I stay still a moment and let it settle.",
		"The flight leaves a hum in my ears that the mountain slowly swallows.",
	},
	["dmo.journey.w16.land.007"] = {
		"comes down out of the fog with the ground appearing only at the last moment, white on white.",
		"touches down in a gray murk where the peaks are only guesses, and waits for the shapes of the valley to firm up.",
	},
	["dmo.journey.w16.rise.001"] = {
		"Below, Kharanos shrinks to a smudge of smoke and roofs, and the valley turns into a map someone forgot to color.",
		"From up here the roads of the valley are thin dark threads stitched across the white.",
		"The ground drops so fast I lose the village in a blink. Up here it's all ridges and white.",
	},
	["dmo.journey.w16.rise.002"] = {
		"grips the harness as the ground drops away, the snowfields wheeling slowly below.",
		"leans out a little to watch the frozen lakes slide past below, flat and pale as polished pewter.",
	},
	["dmo.journey.w16.rise.003"] = {
		"Off to the west, the way into Gnomeregan squats in the hills. From up here it looks almost peaceful, which is the worst part.",
		"High over the gnomes' lost city, and nothing on the surface tells what went wrong beneath it.",
	},
	["dmo.journey.w16.rise.004"] = {
		"Up we go! Mind the peaks, they're taller than they look.",
		"Higher! I want the whole valley at once, before my ears freeze off.",
	},
	["dmo.journey.w16.rise.005"] = {
		"The mountains crowd together below, ridge after ridge, and the dwarven roads thread between them as if they had always been there.",
		"Higher than any mountaineer climbs. The peaks that loomed over the valley are white teeth now, far below.",
		"The dwarves spent ages cutting roads through those ridges. I cross them in the time it takes to sneeze.",
	},
	["dmo.journey.w16.rise.006"] = {
		"settles into the gryphon's saddle as the great wings beat, and Dun Morogh tilts and falls away beneath.",
		"pats the gryphon's neck once as they clear the last ridge, the valley spread out white behind them.",
	},
	["dmo.journey.w16.rise.007"] = {
		"If the valley was cold, the sky above it is a whole new argument. I take back every word about the ground.",
		"My fingers had only just warmed up. Of course it's time to fly.",
	},
	["dmo.landmark.w16.mark.001"] = {
		"Coldridge Valley is walled in on every side. Safe from the worst of the mountains, they say, if not from what crawls out of its own caves.",
		"A valley like a cupped hand. Whatever happens in here, the walls of rock hear it first.",
		"Cliffs all around and a tunnel for a door. The valley keeps its own counsel.",
	},
	["dmo.landmark.w16.mark.002"] = {
		"follows the trodden path down into the valley, past shouted drills and wolves prowling the far slopes.",
		"enters the valley and hears, from somewhere near the stone hall, the steady clang of someone at practice.",
	},
	["dmo.landmark.w16.mark.003"] = {
		"{landmark}: where the mountain gives its first lesson to everyone who comes through. The lesson is 'cold'.",
		"So this is where they bring the newly arrived. Sheltered, quiet, and full of wolves. A balanced education.",
	},
	["dmo.landmark.w16.mark.004"] = {
		"Coldridge. Snug, sheltered, and somehow freezing anyway.",
		"Troll caves at one end, a dwarven hall at the other, and me in the middle. Lovely.",
	},
	["dmo.landmark.w16.mark.005"] = {
		"Coldridge took my people in when Gnomeregan could no longer hold us. A debt like that doesn't fade.",
		"Dwarven walls, dwarven fires, and gnomes sheltering beside them. Gnomeregan's fall made neighbors of two peoples in a hurry.",
	},
	["dmo.landmark.w16.mark.006"] = {
		"Kharanos is all stone walls and steep roofs, built to shed snow and hold warmth in. Nothing here is built for show.",
		"{landmark} has a sound of its own: hammer on anvil, cart wheels on stone, the low talk of mountaineers by the doors.",
	},
	["dmo.landmark.w16.mark.007"] = {
		"walks into the village past the smithy, where sparks jump from the anvil and the heat reaches out into the street.",
		"slows among the houses, eyeing the traffic of rams, carts and mountaineers on the Ironforge road.",
		"reaches the edge of the village, where the snow has been shoveled into high banks along the road and walking suddenly gets easy.",
	},
	["dmo.landmark.w16.mark.008"] = {
		"If there's a warmer place in Dun Morogh, nobody's told me about it.",
		"Now this is a village. Roofs, walls, and people who look like they'd lend you a coat.",
		"Hot food, a forge and a roof. Kharanos, you have my full attention.",
	},
	["dmo.landmark.w16.mark.009"] = {
		"Every dwarf of the valley has raised a mug here to something: a birth, a burial, a good seam of ore.",
		"Coal smoke, wet wool, a whiff of the brewhouse. To a dwarf's nose, that is the smell of a proper village.",
	},
	["dmo.landmark.w16.mark.010"] = {
		"No flight master, no harbor, no great walls. {landmark} gets by on hot food, honest work and good beer, and seems none the worse.",
		"A village sitting right on the road to Ironforge, and still keeping its own slow rhythm. The traffic flows past it like a stream around a boulder.",
	},
	["dmo.lowhp.w16.hold.001"] = {
		"The snow looks soft from here. It isn't. Stay on your feet.",
		"Don't kneel. If I kneel up here, the cold will make it permanent.",
		"Up. The ground is colder than anything that hits me.",
	},
	["dmo.lowhp.w16.hold.002"] = {
		"Is that all? A patch of ice has knocked me down harder!",
		"Hurt, yes. Finished? Not on this mountain.",
		"Bruised and frozen and nowhere near done!",
	},
	["dmo.lowhp.w16.hold.003"] = {
		"Numb hands, numb feet. Good. Then the rest won't hurt as much either.",
		"The cold is doing me a favor for once: I can barely feel any of it.",
		"Cold enough that the hurt comes slow. Use the time.",
	},
	["dmo.lowhp.w16.hold.004"] = {
		"slips to one knee on the frozen ground and comes back up, slower but up.",
		"staggers, catches {g:himself|herself} against a rock, and stays there, refusing to sink.",
	},
	["dmo.lowhp.w16.hold.005"] = {
		"Not like this. Not in sight of Ironforge.",
		"If I go down here, the dwarves will make a song of it. I'd rather not hear it.",
	},
	["dmo.lowhp.w16.hold.006"] = {
		"Crawling won't get me anywhere warm. So don't crawl. Fight.",
		"This is the part where the stories skip ahead. I'd rather stay for it.",
		"Every stubborn thing in these mountains holds on. Be one of them.",
	},
	["dmo.lowhp.w16.hold.007"] = {
		"Ow. Fine. That one I'll remember.",
		"That hurt. Now I'm angry as well as cold.",
	},
	["dmo.lowhp.w16.hold.008"] = {
		"The white is starting to swim. Blink it clear. Pick one thing and hit it.",
		"Everything's gone white and far away. Focus on the one thing that's close.",
	},
	["dmo.lowhp.w16.hold.009"] = {
		"sways on the slope, battered under the indifferent peaks, and does not fall.",
		"wavers, every ache sharpened by the cold, and somehow keeps {g:his|her} guard up.",
	},
	["dmo.lowhp.w16.hold.010"] = {
		"You'll have to do better. My head's as hard as the rock underfoot!",
		"Hit me again. The mountain taught me how to stand.",
		"Ironforge has held against worse than you!",
	},
	["dmo.lowhp.w16.hold.011"] = {
		"Shaking hands. Fine. Shaking hands can still close.",
		"Easy. Panicking on ice is how you end up under it.",
		"Pick a rock. Lean. Strike from there.",
	},
	["dmo.lowhp.w16.hold.012"] = {
		"Knocked down twice and up twice. Keep counting.",
		"Down once, up once. I can do this longer than you can.",
	},
	["dmo.lowhp.w16.hold.013"] = {
		"So this is how the cold gets in. Through the cracks a fight leaves open.",
		"Everything is going quiet, the way snow goes quiet. Shake it off.",
	},
	["dmo.lowhp.w16.hold.014"] = {
		"wipes the frost from {g:his|her} eyes with the back of a hand and sets {g:his|her} feet again, grim.",
		"drags a boot back onto firmer ground and holds there, battered but unbending.",
	},
	["dmo.lowhp.w16.hold.015"] = {
		"I'd like a warm fire and a bandage. In either order.",
		"Ow. Somebody put the kettle on in Kharanos.",
	},
	["dmo.lowhp.w16.hold.016"] = {
		"The mountain has outlasted everything that ever bled on it. I only need to outlast this.",
		"Lean on the hurt like a wall. It holds better than it should.",
		"Hurt is just one more kind of cold. I know cold.",
	},
	["dmo.lowhp.w16.hold.017"] = {
		"You want me in the snow? Come and put me there yourself!",
		"Closer! If I'm falling, I'm taking you down the slope with me!",
		"Up I get, and up I stay!",
	},
	["dmo.lowhp.w16.hold.018"] = {
		"One more exchange. Then the one after. Don't look further.",
		"Count the blows. Five more I can take. Make them count.",
	},
	["dmo.lowhp.w16.hold.019"] = {
		"falters, and for an instant the white mountains seem to lean in to watch.",
		"sinks half a step into the drift, then hauls free, jaw clenched against the hurt.",
	},
	["dmo.lowhp.w16.hold.020"] = {
		"If I walk away from this, the first round in Kharanos is mine. All of them.",
		"Somebody's buying me a drink after this. Probably me.",
	},
	["dmo.muse.w16.folk.001"] = {
		"The dwarves of the valley still talk about the war that split their clans in three. Up here an old grudge keeps as well as meat in the snow.",
		"Dark Iron agents skulking around Ironband's Compound. The dwarves here spit when they say the name, as if the old war ended last week.",
	},
	["dmo.muse.w16.folk.002"] = {
		"The Ironforge Mountaineers patrol these roads in pairs, and as far as I can tell they argue the whole way round.",
		"Two mountaineers on patrol will cover a whole valley and settle nothing. Whose turn it is to carry the kettle, for instance.",
	},
	["dmo.muse.w16.folk.003"] = {
		"At Amberstill they raise rams the way some folk raise children: firmly, with a lot of shouting, and secretly very proud.",
		"Ram herders. They talk to their animals in a voice they'd never use on a person. Gentler, mostly.",
	},
	["dmo.muse.w16.folk.004"] = {
		"Gnomes and dwarves share these valleys like an old married couple: grumbling, borrowing each other's tools, never quite apart.",
		"A dwarf holding the lamp, a gnome with both arms inside the machine, both of them giving orders. That seems to be how things get fixed in Dun Morogh.",
		"The gnomes lost a city and the dwarves lent them a mountain. Neither side mentions it much. They just go on handing each other things.",
	},
	["dmo.muse.w16.folk.005"] = {
		"Kharanos brews enough to float a ship, and somehow Ironforge still complains of a shortage.",
		"They brew without pause in that village, and the barrels still never seem to reach the bottom of the valley full.",
	},
	["dmo.muse.w16.folk.006"] = {
		"The smithy in Kharanos never quite goes quiet. Somewhere in that village, somebody is always hitting iron.",
		"Even far out on the slopes you can sometimes pick out the ring of a hammer from Kharanos. The valley keeps time to it.",
	},
	["dmo.muse.w16.folk.007"] = {
		"The hunters who come down off the high slopes carry pelts on their shoulders and frost in their beards, and they never say much about where they've been.",
		"A dwarven hunter can spend a week in the high passes and come back looking as if it were a stroll to the corner. I've stopped believing the look.",
	},
	["dmo.muse.w16.folk.008"] = {
		"Steelgrill's Depot smells of oil and scorched metal, and every gnome in it is holding a tool and an opinion.",
		"Over at Steelgrill's, ask one gnome a question and three answer. Two of them draw you a diagram.",
	},
	["dmo.muse.w16.folk.009"] = {
		"Rams at one end of the valley, mechanostriders at the other. Dun Morogh can't decide whether to ride on wool or on gears.",
		"Dwarves swear by rams, gnomes swear by mechanostriders, and both swear at each other's choice.",
	},
	["dmo.muse.w16.folk.010"] = {
		"Folk here will share a fire with anyone who knocks the snow off their boots first. That seems to be the whole of the etiquette.",
		"In these valleys a stranger at the door gets a seat by the hearth before anyone asks a name. Questions can wait until the hands thaw.",
	},
	["dmo.muse.w16.folk.011"] = {
		"A dwarf with a pipe can stand out in this cold for an hour and call it fresh air.",
		"Pipe lit, hood down, snow to the knees: that's a dwarf taking a break. I'd call it a test of endurance.",
	},
	["dmo.muse.w16.folk.012"] = {
		"Every dwarf I pass gives me the same short nod: one of ours, keep going. It's a good nod to get.",
		"A nod from a stranger in a mountaineer's coat, and nothing more needed saying. We know each other here without a word.",
	},
	["dmo.muse.w16.folk.013"] = {
		"Dwarves laugh from the belly, loud enough to rattle the shutters. I've heard one carry clear across a valley.",
		"A dwarf's laugh is half a shout and half a cough, and nobody within a hundred paces can keep a straight face once it starts.",
	},
	["dmo.muse.w16.folk.014"] = {
		"Down in Coldridge Valley the sergeants at Anvilmar drill the youngsters, and on a still day you can hear the shouting from the far slopes.",
		"Anvilmar turns out a steady stream of young dwarves and gnomes with new boots and too much confidence. The mountain sorts them out.",
	},
	["dmo.muse.w16.folk.015"] = {
		"Brewnall Village. With a name like that, at least you know where their priorities lie.",
		"Somebody named a village Brewnall and nobody objected. That tells you most of what you need about Dun Morogh.",
	},
	["dmo.muse.w16.folk.016"] = {
		"A ram pulling a sledge of coal climbs at exactly one speed, and no amount of shouting changes it. The dwarves seem to respect that.",
		"The coal sledges come up the road behind rams that cannot be hurried. The drivers walk beside them, unbothered, as if they'd agreed on the pace long ago.",
	},
	["dmo.muse.w16.folk.017"] = {
		"Dwarves, gnomes, a human peddler, a night elf passing through. Up close the Alliance looks like this: cold, crowded and mostly getting along.",
		"Every people of the Alliance seems to come through these valleys sooner or later, and every one of them complains about the cold in a different accent.",
	},
	["dmo.muse.w16.folk.018"] = {
		"returns the nod of a passing dwarf, who doesn't break stride or say a word.",
		"trades a brief nod with a gnome bundled up to the eyes, the whole greeting done without stopping.",
		"exchanges a nod with a herder leading two rams down the road, and none of the three breaks pace.",
	},
	["dmo.muse.w16.folk.019"] = {
		"The Frostmane keep to their caves and ridges, and the dwarves keep to the valley floor. Between them runs a line nobody drew and everybody knows.",
		"Somewhere up on the ridges the Frostmane are watching the valley roads. It's their mountain too, by their reckoning.",
	},
	["dmo.muse.w16.folk.020"] = {
		"Ask a gnome for directions and you'll get a map. Ask a dwarf and you'll get a finger pointed at a mountain.",
		"Gnomes explain the way with numbers. Dwarves explain it with landmarks. Somehow I get lost both ways.",
	},
	["dmo.muse.w16.folk.021"] = {
		"follows a smudge of chimney smoke with the eye to a farmhouse tucked under the slope, its door banked with snow.",
		"picks out a lone homestead far off, little more than a dark roof and a thread of smoke against the white.",
	},
	["dmo.muse.w16.folk.022"] = {
		"hears a ram bleat somewhere up the slope, and a dwarf's sharp whistle answer it.",
		"catches the far-off clank of a mechanostrider somewhere on the road, and the outraged bleat of a ram that has just met one.",
	},
	["dmo.muse.w16.folk.023"] = {
		"makes way for a mountaineer patrol, who pass with a nod and a quick look at {g:his|her} boots, as if judging whether they'll last.",
		"steps off the path to let two mountaineers by; they go past without hurrying, rifles slung, discussing somebody's cooking.",
	},
	["dmo.muse.w16.frost.001"] = {
		"Touch any rock face here and it's colder than the air around it. In Dun Morogh the cold doesn't fall from above; it comes up out of the stone.",
		"The cold here lives in the rock. The air only borrows it for a while.",
	},
	["dmo.muse.w16.frost.002"] = {
		"Iceflow Lake groans every so often, a long low note somewhere under the ice, like a door on a frozen hinge.",
		"Something cracks far out on Iceflow Lake, a sound that rolls from shore to shore and then is gone. The ice is settling, I hope.",
	},
	["dmo.muse.w16.frost.003"] = {
		"Helm's Bed Lake lies flat and white, and the only way to tell the ice from the snow is to walk on it. I won't.",
		"From the shore of Helm's Bed Lake there's no telling where the snow ends and the ice begins. Some questions are best left unanswered.",
	},
	["dmo.muse.w16.frost.004"] = {
		"Icicles hang from the eaves in Kharanos as long as spears. The villagers walk down the middle of the lane, and I've started doing the same.",
		"Every roof in the valley grows a fringe of icicles, some of them longer than a gnome is tall. Folk here learn early not to linger under eaves.",
	},
	["dmo.muse.w16.frost.005"] = {
		"My waterskin froze solid. I'm now carrying a small, very cold rock in a leather bag.",
		"Tried to drink and got a lump of ice. Dun Morogh serves everything on the rocks.",
	},
	["dmo.muse.w16.frost.006"] = {
		"When it's this cold the snow squeaks underfoot, a dry little sound, like walking across sacks of flour.",
		"Every step on the hard snow makes a small dry creak. A whole valley that complains when you walk on it.",
	},
	["dmo.muse.w16.frost.007"] = {
		"brushes a crust of frost from {g:his|her} sleeves; it starts growing back before the next bend in the path.",
		"flexes stiff fingers one by one, like someone checking that all of them are still on the payroll.",
		"tucks both hands under {g:his|her} arms for a moment and stands very still, waiting for the feeling to come back.",
	},
	["dmo.muse.w16.frost.008"] = {
		"How do the rams stand this? Oh. Right. Wool. Lots of it.",
		"The rams at Amberstill look perfectly cozy. I'm thinking of asking one to share.",
		"Were I a ram, I'd be fine. As it is, I'm a person in a coat, and the coat is losing.",
	},
	["dmo.muse.w16.frost.009"] = {
		"The cold here hates nobody. It simply takes whoever stops moving, and it is very patient about it.",
		"A snowbank makes a soft bed and an honest grave. The mountaineers say the second follows the first more often than you'd think.",
	},
	["dmo.muse.w16.frost.010"] = {
		"Shadows lie blue across the snowfields, sharp as if they'd been cut out with a knife.",
		"In this light every footprint holds a little pool of blue. The snow keeps the shape of everyone who passed.",
	},
	["dmo.muse.w16.frost.011"] = {
		"Things get frozen into the ice at the lake edges: a boot, a barrel stave, a gnomish spanner. The lakes keep whatever they're given.",
		"Under the clear ice by the shore lies a lost glove, fingers spread, as if it were waving. It'll wave there until the thaw, whenever that is.",
	},
	["dmo.muse.w16.frost.012"] = {
		"Word of advice: don't put your tongue to anything iron out here. Ask me how I know. Actually, don't.",
		"Bare hand on cold iron, Dun Morogh style. It bites harder than the wolves.",
	},
	["dmo.muse.w16.frost.013"] = {
		"In this cold everything slows: the water under the ice, the beasts in their dens, even my thoughts. Only the dwarves keep their usual pace.",
		"Cold is a kind of slowness that gets into everything. Streams thicken, beasts doze, and words come out slow and few.",
	},
	["dmo.muse.w16.frost.014"] = {
		"Fresh snow coming down on the old. The whole valley being written over, line by line, and none of it in a hand I can read.",
		"New flakes settle on every track, mine included. In an hour nobody will know who passed this way.",
	},
	["dmo.muse.w16.frost.015"] = {
		"walks on through the dark, the snowfields around {g:him|her} holding a faint pale light of their own.",
		"finds the path easily enough in the dark: the snow gives back every scrap of light there is.",
	},
	["dmo.muse.w16.frost.016"] = {
		"The peaks catch the first light long before the valley does. For a while the world is lit from the top down.",
		"Up on the summits the day has already begun. Down here it's still deciding.",
	},
	["dmo.muse.w16.frost.017"] = {
		"stops where the path dips; the valley below is filled to the brim with white murk, and only the peaks stand out of it, like islands.",
		"watches the murk swallow the lower slopes, then the pines, then the road itself, until only the nearest stones are left.",
	},
	["dmo.muse.w16.frost.018"] = {
		"All this white is blinding. I'm walking with my eyes half shut and trusting my feet, which is a mistake.",
		"Bright enough to make the snow hurt. Somebody turn the valley down a little.",
	},
	["dmo.muse.w16.frost.019"] = {
		"Snow leopard tracks crossing the slope, deep and evenly spaced. It walked here without hurrying, which is the worrying part.",
		"A line of round prints in the snow, wide as a palm, and not one of them dragged. A snow leopard, and a calm one.",
	},
	["dmo.muse.w16.frost.020"] = {
		"hits a patch of ice, recovers with as much dignity as can be managed, and glances around to see who saw.",
		"skids, flails, and somehow stays upright, then walks on very carefully, as though nothing at all occurred.",
	},
	["dmo.muse.w16.frost.021"] = {
		"Out here the white goes on until it meets the sky, and somewhere in all of it is me, the only thing that moves.",
		"Nothing but snow in every direction, and one small dark shape crossing it. It takes a moment to remember that the shape is me.",
	},
	["dmo.muse.w16.frost.022"] = {
		"A pine bough sheds its load somewhere behind me with a soft thump, and the whole slope seems to hold still and listen.",
		"Snow slides off a branch and lands with a hush. Up here even small noises are an event.",
	},
	["dmo.muse.w16.frost.023"] = {
		"works some feeling back into {g:his|her} cheeks with the heels of both hands, which helps very little.",
		"pulls a scarf up over {g:his|her} nose and squints out over the top of it at all the white.",
		"hunches deeper into {g:his|her} collar until only the eyes show, and keeps walking.",
	},
	["dmo.muse.w16.frost.024"] = {
		"studies the frozen face of a lake from the shore, tests it with one boot, and draws the boot back at the first creak.",
		"taps the edge of the lake ice with a heel; it answers with a long, deep ring, like a struck bell.",
		"skims a pebble across the lake ice and listens to it sing away into the distance, a thin high note.",
	},
	["dmo.muse.w16.frost.025"] = {
		"draws {g:his|her} cloak tight as the night cold settles into the valley, sharp enough to make the snow crack underfoot.",
		"tucks {g:his|her} chin down as the night cold deepens; even the stones seem to tighten in it.",
	},
	["dmo.muse.w16.frost.026"] = {
		"Dwarf and gnome, troll and trogg: everyone in this valley has to reckon with the cold. It's the one thing they all share.",
		"Up here the cold doesn't take sides. It bites the mountaineer and the Frostmane alike, and the traveler before either.",
		"Trolls, troggs and dwarves fight over everything in these valleys except the cold. Nobody wants that.",
	},
	["dmo.muse.w16.gnomeregan.001"] = {
		"Now and then a clank carries from the west, from the direction of Gnomeregan. Machines that nobody minds any longer, still running.",
		"Somewhere west, under the hills, a great engine might still be turning in the dark with no one left to tell it to stop.",
	},
	["dmo.muse.w16.gnomeregan.002"] = {
		"The snow toward Gnomeregan looks the same as the snow anywhere else. The gnomes walk around it anyway, as though it might not be.",
		"Gnomes give the western slopes a wide berth, even where the snow looks clean. They know better than the rest of us what got out of that city.",
	},
	["dmo.muse.w16.gnomeregan.003"] = {
		"The Rockjaw aren't only in Gnomeregan. They're in the quarry, in the caves, under the hills. The dwarves speak of them the way farmers speak of locusts.",
		"Troggs in Gol'Bolar, troggs at the gnomes' door, troggs wherever the ground has a hole in it. Dun Morogh has a draft from below.",
	},
	["dmo.muse.w16.gnomeregan.004"] = {
		"High Tinker Mekkatorque chose to poison his own city to stop the troggs. Everyone in the valley has an opinion of that choice, and nobody says it loudly.",
		"To save a people, Mekkatorque gave up their home. The gnomes still argue about whether it worked, and quietly, so he won't hear.",
	},
	["dmo.muse.w16.gnomeregan.005"] = {
		"No gnome needs a map to point west. We all know where Gnomeregan lies, the way you know where an old wound is.",
		"Any gnome could find the road to the front gate of Gnomeregan blindfolded. I keep my feet pointed elsewhere.",
	},
	["dmo.muse.w16.gnomeregan.006"] = {
		"The gnomes who walked out of Gnomeregan carried what they could. Some carried tools, some carried children, and some carried only the blueprints in their heads.",
		"A whole people left with their pockets full of springs and their heads full of plans. Everything else stayed behind with the troggs.",
	},
	["dmo.muse.w16.gnomeregan.007"] = {
		"The troggs took a city full of clockwork and sat in it. Like handing a bear a pocket watch.",
		"All those marvels in Gnomeregan, and the troggs use them as furniture. I can't decide if that's sad or funny.",
		"Troggs living in the finest workshops in the world. Somewhere a gnome is crying into a very precise handkerchief.",
	},
	["dmo.muse.w16.gnomeregan.008"] = {
		"A city built to last a thousand years, emptied in a single season. Gnomes are wonderful at building. Keeping, it turns out, is another craft.",
		"Gnomeregan was the cleverest place in the world, and cleverness didn't save it. That's worth remembering.",
	},
	["dmo.muse.w16.gnomeregan.009"] = {
		"What did the troggs find down there that they wanted badly enough to climb? Nobody in the valley seems to know, and the troggs aren't telling.",
		"The troggs came up from somewhere below Gnomeregan. Whatever is under that, they either fled it or followed it up.",
	},
	["dmo.muse.w16.gnomeregan.010"] = {
		"The leper gnomes keep to their old routines, I'm told: mending machines nobody uses, guarding doors nobody opens.",
		"They say in Kharanos that the sick gnomes near the city still answer to their old trades. A tinker still tinkers, even after the mind has gone.",
	},
	["dmo.muse.w16.gnomeregan.011"] = {
		"stoops over a brass cog lying in the snow, turns it with the toe of a boot, and leaves it where it lies.",
		"notices a twist of copper wire half frozen into the path, a small leftover of gnomish work, and steps carefully around it.",
		"picks a bent gnomish screw out of the snow, studies its fine thread, and sets it on a rock where a gnome might find it.",
	},
	["dmo.muse.w16.gnomeregan.012"] = {
		"We took the gnomes in when their city fell. A dwarf doesn't keep count of what a door held open costs.",
		"Gnomes in Ironforge, gnomes in Kharanos, gnomes at our tables. It was the right thing, and the mountain had room.",
	},
	["dmo.muse.w16.gnomeregan.013"] = {
		"The gnomes of the valley have a habit of glancing west. They do it while they talk, while they work, without seeming to notice they do it.",
		"Watch any gnome in Dun Morogh long enough and sooner or later the eyes go west, just for a moment, then come back to the work.",
	},
	["dmo.muse.w16.gnomeregan.014"] = {
		"Gnomeregan will have its gnomes back one day. They're too stubborn not to, and too clever to wait quietly.",
		"Mark my words: the gnomes will take that city back. They're already drawing up the plans.",
	},
	["dmo.muse.w16.gnomeregan.015"] = {
		"catches a faint smell of oil and scorched metal from somewhere to the west, and turns {g:his|her} head toward it for a long moment.",
		"wrinkles {g:his|her} nose at a sour, metallic tang that seems to come from the direction of Gnomeregan.",
	},
	["dmo.muse.w16.gnomeregan.016"] = {
		"Troggs squint at the open sky as if it were a mistake somebody made. I can almost sympathize.",
		"A trogg in the daylight looks offended by the whole idea of a sky. It came up for the stone, not the view.",
	},
	["dmo.muse.w16.gnomeregan.017"] = {
		"We built marvels and then we built the one thing that drove us out. Sometimes I can't decide which of the two was the cleverer.",
		"Every gnome you meet in Dun Morogh is carrying a city on their back. We just don't let it slow us down.",
	},
	["dmo.muse.w16.gnomeregan.018"] = {
		"There may be older halls below Dun Morogh than any dwarf has ever charted. Gnomeregan only scratched the surface, and look what came up.",
		"The deep under these mountains goes further than the dwarves like to admit. Gnomeregan opened one door into it. Nobody wants to find the second.",
	},
	["dmo.muse.w16.gnomeregan.019"] = {
		"A gnome told me Gnomeregan had the best plumbing in the world. Then went very quiet. I didn't ask about the plumbing.",
		"Every gnome I meet has a story about some marvel back in the old city. Every story stops at the same place.",
	},
	["dmo.muse.w16.gnomeregan.020"] = {
		"gives a wide berth to a heap of rusted gnomish scrap at the roadside, half buried and faintly ticking.",
		"hears a soft tick-tick from a pile of rusted scrap half sunk in the snow, and leaves it well alone.",
	},
	["dmo.muse.w16.gnomeregan.021"] = {
		"Troggs. Ugly, stubborn, and they smell like a wet cellar. They probably say much the same about me.",
		"A trogg gave me a look of real disgust earlier. I've decided to take it as a compliment.",
		"Troggs smell like a cellar that flooded once and was never forgiven.",
	},
	["dmo.muse.w16.road.001"] = {
		"The tunnel east to Loch Modan is a long throat of stone with lamps along the walls. It would be a poor place to have them go out.",
		"Going east means going through the mountain: a long dim passage, the drip of water somewhere, and the far end a coin of light that grows slowly.",
	},
	["dmo.muse.w16.road.002"] = {
		"Half the travelers of the Eastern Kingdoms come up this valley sooner or later on their way to Ironforge, and all of them stamp their feet at the same spots.",
		"Pilgrims for the Great Forge, merchants for the bank, the lost for directions. Every road in Dun Morogh ends up carrying somebody to the gates.",
	},
	["dmo.muse.w16.road.003"] = {
		"Every signpost in this valley points to Ironforge, more or less. The dwarves saw no reason to point anywhere else.",
		"Follow any signpost long enough here and you'll reach Ironforge. Or a bear. Mostly Ironforge.",
	},
	["dmo.muse.w16.road.004"] = {
		"steps into an old cart rut frozen hard as iron, nearly turns an ankle, and carries on with a scowl at the road.",
		"picks a way along the frozen ruts of the road, where every wheel that ever passed has left a ridge to trip on.",
		"knocks clods of frozen snow from {g:his|her} heels every few steps, the toll an old road takes.",
	},
	["dmo.muse.w16.road.005"] = {
		"The climb to the gates of Ironforge winds back and forth across the slope, as if the road were in no hurry to arrive.",
		"Switchback after switchback up toward the gates. The dwarves could have cut it straight; they chose to make you earn the view.",
	},
	["dmo.muse.w16.road.006"] = {
		"Everything in Dun Morogh is \"just over that ridge.\" There's always one more ridge, and it never mentions it.",
		"Distance here is measured in ridges. Three ridges is a short walk. I've learned to ask how big the ridges are.",
	},
	["dmo.muse.w16.road.007"] = {
		"In all this white the road is the only line anyone ever drew. I keep it close, the way you keep a hand on a rope.",
		"Lose the road out here and the snow looks the same in every direction. The dwarves cut it wide for good reason.",
	},
	["dmo.muse.w16.road.008"] = {
		"The guards at the South Gate Outpost watch the tunnel mouth as if it might decide to swallow somebody. Given the troggs, it might.",
		"North Gate, South Gate: little outposts of stone and stubbornness, keeping the passes open for everyone else.",
	},
	["dmo.muse.w16.road.009"] = {
		"Directions in Dun Morogh: past the big statue, left at the frozen lake, and if a bear sees you, you've gone wrong.",
		"Turn at the second snowbank. No, the other one. Every snowbank looks like the second one.",
	},
	["dmo.muse.w16.road.010"] = {
		"reads the marker at a fork in the road, then reads it again, as if a second look might show a shorter way.",
		"squints at a signpost crusted with frost, scrapes the letters clear with a thumb, and finds they say what they said before.",
	},
	["dmo.muse.w16.road.011"] = {
		"The snow on the main road is packed so hard by boots and hooves that it shines. One step off and you're in to the shin.",
		"The valley keeps two kinds of snow: the packed road, hard as tile, and everything else, which swallows a leg whole.",
	},
	["dmo.muse.w16.road.012"] = {
		"Every pass out of Dun Morogh climbs. The valley is a bowl, and the rest of the world lies up and over the rim.",
		"From down here the mountains close every horizon. You have to climb out of Dun Morogh to remember there's anything beyond it.",
	},
	["dmo.muse.w16.road.013"] = {
		"Whoever laid out the road to Ironforge had a sense of drama. Nobody needed it that wide, except to impress.",
		"That approach to the gates is built to make you feel small. It works. I feel small. Small and cold.",
	},
	["dmo.muse.w16.road.014"] = {
		"hitches the pack higher on {g:his|her} shoulders and settles into the slow, steady pace the slopes demand.",
		"shortens {g:his|her} stride for the climb, the way the mountain folk do, and leans into the slope.",
	},
	["dmo.muse.w16.road.015"] = {
		"Dun Morogh is a doorstep. Everyone crosses it on the way somewhere else: the forge, the Loch, the deep tram to Stormwind.",
		"Hardly anyone comes to Dun Morogh to stay. They pass through, stamping, on their way to the gates or the tunnel or the tram.",
	},
	["dmo.muse.w16.road.016"] = {
		"Halfway to the gates, halfway to the tunnel, halfway to Gnomeregan: Kharanos sits in the middle of everything in this valley.",
		"All the roads of the valley seem to cross at Kharanos sooner or later, the way threads gather at a knot.",
	},
	["dmo.muse.w16.road.017"] = {
		"Wolves on one side of the road, boars on the other. The road is the only thing in this valley that doesn't want a piece of me.",
		"Stick to the road, they told me. Even the wolves seem to have heard the same advice.",
	},
	["dmo.muse.w16.road.018"] = {
		"Strangers on these roads lift a hand to each other, every time. It costs nothing, and in this much empty white it counts.",
		"A wave from a traveler going the other way. Out here you greet anyone you pass, because you may be the last face they see for an hour.",
	},
	["dmo.muse.w16.road.019"] = {
		"This road has carried dwarves, gnomes, armies and peddlers for longer than any of them could say. The ruts are older than the carts.",
		"Under the packed snow the road has a hard old spine, worn down by more feet than anyone could count.",
	},
	["dmo.muse.w16.road.020"] = {
		"pauses at the top of a rise to look back down the road, a dark thread stitched across the white of the valley.",
		"looks back from a bend in the road at the line of footprints behind, already going soft at the edges.",
	},
	["dmo.muse.w16.road.021"] = {
		"watches a line of travelers wind up the far slope toward the gates, small and dark against the snow, like beads on a string.",
		"follows with the eye a cart creeping up the distant road, so slow against the white that it barely seems to move.",
		"counts the specks moving on the road below: a cart, a rider, a dwarf with a pack the size of a barrel.",
	},
	["dmo.muse.w16.stone.001"] = {
		"Every big stone along the valley roads has a chisel mark on it somewhere, if you look. The dwarves can't leave a rock alone.",
		"Look closely at any boulder by the way and you'll find a squared edge or a notch. Dwarven hands have been over nearly everything in these valleys.",
	},
	["dmo.muse.w16.stone.002"] = {
		"Dwarves build in stone the way other folk whistle: without thinking about it, and without ever stopping.",
		"Give a dwarf a free afternoon and a hillside, and by supper that hillside has a door in it.",
	},
	["dmo.muse.w16.stone.003"] = {
		"tips {g:his|her} head back to follow a cliff up and up, until the rock gives way to the white of the peaks.",
		"measures a cliff with the eye, from the scree at its foot to the snow on its crown, and gives up somewhere in the middle.",
		"cranes {g:his|her} neck at the rock walls that close the valley in, a pebble at the foot of a giant.",
	},
	["dmo.muse.w16.stone.004"] = {
		"The dwarves say the mountain was here before them and will be here after. They say it proudly, as if they'd arranged it.",
		"Dwarves speak of the mountain the way you'd speak of an elderly relative: stubborn, patient, and best not contradicted.",
		"Ask a dwarf how old these peaks are and you get a long look, as though you'd asked how old the dwarf's own grandmother was.",
	},
	["dmo.muse.w16.stone.005"] = {
		"Gol'Bolar Quarry is cut so deep that its walls show stripes, layer under layer, like the rings of a felled trunk.",
		"Half the walls of Kharanos probably came out of Gol'Bolar Quarry, block by heavy block, hauled up the road on sledges.",
	},
	["dmo.muse.w16.stone.006"] = {
		"I once saw a dwarf pat a cliff the way you'd pat a horse. Nobody else found it strange.",
		"A miner told me that rock face had a kind look to it. I've decided to believe him.",
		"Dwarves talk to stone. What worries me is that they seem to wait for the answer.",
	},
	["dmo.muse.w16.stone.007"] = {
		"brushes the frost off a carved stone beside the path and finds a dwarven rune beneath, worn almost smooth.",
		"pauses by a marker stone half buried in a drift, its carving rounded by more winters than anyone has counted.",
	},
	["dmo.muse.w16.stone.008"] = {
		"Hear the picks over at the quarry? Sounds like the mountain is going through its pockets for change.",
		"Knock, knock, knock, all the way from Gol'Bolar. The dwarves are asking the mountain to open up, politely.",
	},
	["dmo.muse.w16.stone.009"] = {
		"A whole city lies inside that mountain. From out here you'd never guess it, except for the gates and the smoke.",
		"Ironforge is under all that rock: halls, forges, thousands of dwarves. The mountain wears it the way a quiet person wears a secret.",
	},
	["dmo.muse.w16.stone.010"] = {
		"Dwarven houses sit low and thick-walled, half sunk into the slope, as if they were bracing for a shove.",
		"The houses here are built like their owners: short, broad, heavy at the base, and very hard to knock over.",
	},
	["dmo.muse.w16.stone.011"] = {
		"Every dwarf child hears that the mountain is listening. Walking here, I can see why some of us never quite stop believing it.",
		"We were raised on the idea that the stone hears us. Walking here, under these peaks, I find I still lower my voice.",
	},
	["dmo.muse.w16.stone.012"] = {
		"Shimmer Ridge earns its name whenever light catches the ice along its face. Pretty, from a distance. Frostmane, up close.",
		"The ice on Shimmer Ridge glitters like a jeweler's tray. The trolls who live there are less decorative.",
	},
	["dmo.muse.w16.stone.013"] = {
		"Shout in these valleys and the mountains answer three times, each one a little less sure of it.",
		"Hello, mountains! ...They agree with everything I say. Most polite company I've had in a while.",
	},
	["dmo.muse.w16.stone.014"] = {
		"picks up a flat stone from the path, turns it over in {g:his|her} fingers, and sets it carefully back where it was.",
		"weighs a smooth pebble in one palm for a moment, then puts it back exactly where the mountain left it.",
		"nudges a loose stone off the path and listens to it skitter down the slope for a surprisingly long time.",
	},
	["dmo.muse.w16.stone.015"] = {
		"Some dwarves believe their people were shaped out of stone itself. Standing among these peaks, the idea doesn't sound so strange.",
		"The Explorers' League digs all over the world for the dwarves' beginnings. Looking at these mountains, I'd have started right here.",
		"Dwarves dig for iron, for gems, and for the story of where they came from. The last one goes deepest.",
	},
	["dmo.muse.w16.stone.016"] = {
		"Mountains like these make any life look short. They were sitting here long before anyone thought to give them names.",
		"These peaks have watched clans rise and split and fight. They'll watch whatever comes next with the same blank face.",
	},
	["dmo.muse.w16.stone.017"] = {
		"Should I ever build a house, I'm hiring a dwarf. It'll take ten years and outlast the mountain.",
		"Dwarven masonry: slow to start, slower to finish, and still standing when everyone's forgotten why it was built.",
	},
	["dmo.muse.w16.stone.018"] = {
		"knocks twice on a standing stone by the path, half joking, and gets back the deep silence of solid rock.",
		"raps a knuckle against a roadside boulder as if at a door. The boulder, sensibly, does not answer.",
	},
	["dmo.muse.w16.stone.019"] = {
		"Chimney smoke comes up out of the hillsides in odd places. Half of Dun Morogh lives inside the slopes, and the slopes don't mind.",
		"A thread of smoke rising straight out of a snowbank: somebody's kitchen is under there, dug into the hill.",
	},
	["dmo.muse.w16.stone.020"] = {
		"Bronzebeard stone, Bronzebeard snow. Whoever comes up this valley walks on what our clan has kept for a very long time.",
		"Magni keeps the throne inside the mountain, and the mountain keeps us. A fair trade, and an old one.",
	},
	["dmo.muse.w16.stone.021"] = {
		"listens to the faint, steady knock of picks coming from somewhere inside the hillside.",
		"feels more than hears a dull thud deep in the ground: a charge in some mine, or a door closing far below.",
	},
	["dmo.muse.w16.stone.022"] = {
		"rests a moment in the lee of a great boulder, the rock at {g:his|her} back as cold and patient as the mountain it fell from.",
		"sits for a moment on a boulder by the path, and the cold of the stone comes straight up through every layer.",
	},
	["dmo.muse.w16.stone.023"] = {
		"Somewhere under my boots there are probably tunnels. In Dun Morogh it's best to assume so and tread politely.",
		"Half this valley is hollow, if the miners are to be believed. I walk a little lighter for knowing it.",
	},
	["dmo.muse.w16.wry.001"] = {
		"Three layers of wool and the cold still finds the one gap. It must carry a map.",
		"I've buttoned everything that buttons. The cold has found a way in regardless. I admire its persistence, a little.",
	},
	["dmo.muse.w16.wry.002"] = {
		"The dwarves call this \"brisk.\" I'd like a word with whoever taught them that word.",
		"\"A touch nippy,\" says the dwarf, with icicles hanging off the beard. A touch.",
	},
	["dmo.muse.w16.wry.003"] = {
		"Tried to make a snowball. It came apart like sand. The snow here is too cold even to be thrown.",
		"This snow won't pack. It's too dry, too cold and, frankly, too proud.",
		"Snowball fight? With this snow? I'd do better throwing salt.",
	},
	["dmo.muse.w16.wry.004"] = {
		"My nose stopped reporting in some time ago. I've decided it's resting.",
		"I can't feel my ears. On the bright side, they've stopped complaining.",
	},
	["dmo.muse.w16.wry.005"] = {
		"Everything in this valley is frozen, fermenting, or trying to bite me. Some things manage two of the three.",
		"Dun Morogh has three kinds of thing: things that freeze, things that brew, and things with teeth. Pick your company carefully.",
	},
	["dmo.muse.w16.wry.006"] = {
		"I asked a dwarf if it ever warms up here. The laughter went on so long that I left.",
		"Asked when the thaw comes. The dwarf just patted my shoulder, kindly, the way you'd pat a fool.",
	},
	["dmo.muse.w16.wry.007"] = {
		"Even the boars here wear a thicker coat than I do. Dressed for the weather, every one of them.",
		"The bears in these hills are warmer than I am, better fed than I am, and less polite about it.",
	},
	["dmo.muse.w16.wry.008"] = {
		"hops from foot to foot in a short, graceless dance that has nothing to do with music and everything to do with the cold.",
		"stamps both feet, claps both hands and blows into them, a whole small ceremony performed for the cold, which ignores it.",
		"slaps both arms in turn like a drummer who has lost the beat, and carries on regardless.",
	},
	["dmo.muse.w16.wry.009"] = {
		"A special kind of quiet falls when you realize you've crossed a snowfield in the wrong direction. I'm hearing it right now.",
		"I've been walking with great confidence for some time. Toward the wrong ridge, it now appears.",
	},
	["dmo.muse.w16.wry.010"] = {
		"Big rams, big mugs, big beards. The dwarves don't do anything by halves.",
		"In Dun Morogh even the portions are built to last a winter.",
	},
	["dmo.muse.w16.wry.011"] = {
		"Wendigos in the Grizzled Den. As though bears weren't large and angry enough already.",
		"Somebody looked at the bears of Dun Morogh and thought: bigger, angrier, more of them. The answer was the Grizzled Den.",
	},
	["dmo.muse.w16.wry.012"] = {
		"Gnomes here can fix anything except the temperature. Believe me, I asked.",
		"I asked a gnome if there was a device for the cold. There is. It's called a fire.",
	},
	["dmo.muse.w16.wry.013"] = {
		"Snow leopards. White beasts, on white snow, with very white teeth. I'm watching every drift twice.",
		"A cat the color of the snow, in a land made of snow. Whoever arranged that has a cruel sense of humor.",
	},
	["dmo.muse.w16.wry.014"] = {
		"They tell me the trick to the cold is to stop noticing it. They tell me a lot of things up here.",
		"The secret, a dwarf told me, is to ignore the cold. I've been ignoring it very hard. It hasn't noticed.",
	},
	["dmo.muse.w16.wry.015"] = {
		"A dwarf told me the cold builds character. If so, I've built more than I need, and I'd trade some for a warm mug.",
		"Character, the dwarves say, is what the cold leaves behind. I'd settle for keeping my toes.",
	},
	["dmo.muse.w16.wry.016"] = {
		"tries to work a stiff buckle with numb fingers, gives up, and simply glares at it until it feels sorry.",
		"fumbles a strap three times with frozen hands and then fixes it at the fourth try, with the look of someone who meant to all along.",
	},
	["dmo.muse.w16.wry.017"] = {
		"Left my bootlaces untied for one minute. They're frozen in a bow now. Very festive.",
		"Everything I set down out here freezes in whatever shape it was in. My gloves are now a sculpture.",
	},
	["dmo.muse.w16.wry.018"] = {
		"The troggs, the trolls, the wolves and the bears all agree on one thing: whoever walks through the valley is their business.",
		"If the beasts of Dun Morogh ever held a vote, I suspect the motion would be about me, and it would pass.",
	},
	["dmo.muse.w16.wry.019"] = {
		"tries to stride through a deep drift, sinks to the thigh, and stays there for a dignified moment of reflection.",
		"climbs out of a drift that was deeper than it looked, and brushes off with the air of someone who only meant to test it.",
	},
	["dmo.muse.w16.wry.020"] = {
		"If anyone finds a pair of feet, they're mine. I lost track of them a mile back.",
		"Somebody check whether I still have toes. I'm not brave enough to look.",
	},
	["dmo.npc_meet.w16.ask.001"] = {
		"That look: worry kept behind a brave face. Somebody here is about to ask me for something.",
		"They've been waiting for someone with the time and the nerve. I seem to have both.",
		"A furrowed brow and a glance at the hills, then at me, then at the hills. I know where this is going.",
	},
	["dmo.npc_meet.w16.ask.002"] = {
		"You look like you've got a problem. Tell me about it while my hands thaw.",
		"Trouble? Go on. In this valley I've yet to hear a short story.",
	},
	["dmo.npc_meet.w16.ask.003"] = {
		"listens as the trouble comes out, told with a great deal of pointing toward the hills.",
		"is beckoned over by someone with a worried frown and the air of a long list to share.",
	},
	["dmo.npc_meet.w16.ask.004"] = {
		"Some folk ask for help like it costs them a tooth. This tooth came out without too much fuss.",
		"A request, carefully worded, with the danger trimmed down to sound smaller. I know that trick, and I'll go anyway.",
	},
	["dmo.npc_meet.w16.guard.001"] = {
		"The guard looks me over the way the mountain does: slowly, and without much interest in my opinion.",
		"A watchful sort, eyes on the ridgeline more than on me. Out here trouble usually comes from higher up.",
		"This guard has the patience of the stone behind them. I suspect the stone blinks more often.",
	},
	["dmo.npc_meet.w16.guard.002"] = {
		"Quiet out here? Good. May it stay that way.",
		"Cold post you've got. Anything moving on the roads I should know about?",
		"Long watch? I won't keep you. Just tell me where the troggs were last seen.",
	},
	["dmo.npc_meet.w16.guard.003"] = {
		"returns the guard's curt nod and keeps {g:his|her} hands well away from anything that might look like a threat.",
		"pauses by the guard just long enough to be looked over, judged harmless, and waved on.",
	},
	["dmo.npc_meet.w16.guard.004"] = {
		"A friendly face on guard, and a friendly word for one of their own side. In these hills that is half the warmth there is.",
		"The guard sees the colors I wear and eases a little. Even here, it's good to be on the same side.",
	},
	["dmo.npc_meet.w16.inn.001"] = {
		"The innkeeper reads the cold by how hard the guests stamp their boots at the door. Business looks good.",
		"Behind the counter, someone who has heard every complaint about the cold and answered each one with a mug.",
		"An innkeeper with a ledger, a ladle and a look that says the beds are full of mountaineers' snoring.",
	},
	["dmo.npc_meet.w16.inn.002"] = {
		"A bed, if you've got one free, and a corner where the draft can't find me.",
		"Good to meet you. Tell me the beds are softer than the ground outside and we have a deal.",
		"Is that malt I smell from the back? Then I've knocked at the right door.",
	},
	["dmo.npc_meet.w16.inn.003"] = {
		"leans on the counter and trades a few words with the innkeeper about the roads, the troggs and the price of a bed.",
		"catches the innkeeper's eye across the room and gets a quick nod and a wave toward the kegs.",
	},
	["dmo.npc_meet.w16.inn.004"] = {
		"An innkeeper who remembers faces. In a valley this cold, a place that remembers you is worth more than a room.",
		"Kegs stacked to the rafters and an innkeeper who clearly samples the stock. I'll trust the recommendations.",
	},
	["dmo.npc_meet.w16.teach.001"] = {
		"A trainer with scarred hands and patient eyes. Whatever is taught here was learned the hard way first.",
		"The trainer watches how I stand before anything else. In a land of ice, maybe that is the first lesson.",
		"No speeches from this trainer, only a measuring look. Up here, teaching seems to start with silence.",
	},
	["dmo.npc_meet.w16.teach.002"] = {
		"I'm told you're the one to learn from around here. I'm listening, and I'll try not to shiver through it.",
		"Teach me something the cold can't take from me.",
	},
	["dmo.npc_meet.w16.teach.003"] = {
		"holds still under the trainer's measuring look, like goods on a scale that finally tips the right way.",
		"exchanges a nod with the trainer, the kind of nod that promises hard lessons and no flattery.",
	},
	["dmo.npc_meet.w16.trade.001"] = {
		"Whatever is for sale here, the price includes the walk it took to haul it up these slopes.",
		"Steep prices, like everything else in these mountains. At least the goods look built for the cold.",
		"Everything on offer has come a long way up a hard road. I can see it in the price, and I can't really argue.",
	},
	["dmo.npc_meet.w16.trade.002"] = {
		"What have you got that keeps feet dry? I'll pay for dry feet.",
		"Show me your stock. And don't tell me the price until I've a chair under me.",
		"Anything you'd let go cheap because nobody up here wants it? That's usually my size.",
	},
	["dmo.npc_meet.w16.trade.003"] = {
		"runs an eye over the merchant's wares and asks the price of two things, just to hear how folk haggle up here.",
		"trades a polite greeting with the merchant, who is already sizing up {g:his|her} purse with a practiced glance.",
	},
	["dmo.npc_meet.w16.trade.004"] = {
		"The merchant tallies my coins faster than I can count them. In a valley full of engineers, even shopkeepers do sums in their sleep.",
		"Fair prices, by the look of it, and nobody overselling. In cold country people don't waste words on lies.",
	},
	["dmo.quest_complete.w16.folk.001"] = {
		"Folk up here don't ask for help lightly. When they do, the trouble has been knocking for a good while.",
		"Nobody in this valley wasted words asking. They showed me the problem and waited to see if I'd flinch.",
	},
	["dmo.quest_complete.w16.folk.002"] = {
		"Half the people asking for help here lost a city to the troggs. Small mercies count double with them.",
		"The gnomes say thank you like people who have had a lot of practice lately. Since Gnomeregan, I suppose they have.",
		"Refugees from Gnomeregan, making do in a borrowed valley. Every little trouble lifted gives them back a scrap of ground.",
	},
	["dmo.quest_complete.w16.folk.003"] = {
		"Anyone else with trouble, speak up. I'm already cold; I may as well be useful.",
		"More troubles in this valley? Line them up. I've got the boots for it.",
		"Who else needs something? My boots are still laced, so ask now.",
	},
	["dmo.quest_complete.w16.folk.004"] = {
		"listens patiently while the talk drifts from the job to the troggs, the trolls and the price of coal.",
		"stays long enough to hear the latest from the valley: troll smoke on the ridges, troggs in the quarry, a ram gone missing.",
	},
	["dmo.quest_complete.w16.folk.005"] = {
		"The valley needs more hands than it has. Mountaineers hold the roads, smiths feed the forges, and the rest waits for whoever passes through.",
		"Ironforge is close enough to see, and still the valley folk settle most troubles on their own. Or with whoever happens by.",
	},
	["dmo.quest_complete.w16.folk.006"] = {
		"Glad to help. If your neighbors need a hand, send them my way.",
		"Happy to. Up here everybody owes everybody, and I'd rather be owed.",
		"Any time. Valleys this cold only work if folk lean on each other.",
	},
	["dmo.quest_complete.w16.folk.007"] = {
		"Thanks here come in two flavors: a grunt, or ten minutes on how the problem could have been engineered away.",
		"I got the long version of the thanks, with diagrams. Somewhere in there was a coin.",
	},
	["dmo.quest_complete.w16.folk.008"] = {
		"sees the worry ease out of a lined face and stays a moment longer than the job required.",
		"is pressed to stay for a cup of something hot, declines politely, and is pressed again, harder.",
	},
	["dmo.quest_complete.w16.folk.009"] = {
		"One trouble less for the valley. Trolls, troggs, the cold itself: the list here never gets shorter, it only changes.",
		"They thanked me as if it were the last of their troubles. They knew better, and so did I.",
	},
	["dmo.quest_complete.w16.folk.010"] = {
		"Take care of yourselves. And if the troggs come up again, send word before they reach your door.",
		"Keep your eyes on the ridges. Whatever comes down from them, I'd like to hear about it early.",
	},
	["dmo.quest_complete.w16.folk.011"] = {
		"Someone who calls this cold 'brisk' just told me I did good work. I'll treasure that.",
		"Praise is rationed up here like coal. I just got a lump.",
		"Up here 'not bad' is high praise. I got a 'not bad at all', and I'm trying not to let it go to my head.",
	},
	["dmo.quest_complete.w16.folk.012"] = {
		"leaves the valley folk to their work, the hammering and hauling picking up behind {g:him|her}.",
		"hears the talk turn back to everyday things, ore prices and broken axles, and seems to take that as the best sign of all.",
	},
	["dmo.quest_complete.w16.folk.013"] = {
		"Every gnome I help up here once had a workbench under Gnomeregan. Doing it for my own folk feels less like work and more like a promise kept.",
		"We will go back to Gnomeregan one day. Until then, every small trouble I clear up here is a brick in the road home.",
	},
	["dmo.quest_complete.w16.folk.014"] = {
		"There. Now you can stop glaring at the hills and get back to work.",
		"All sorted. Go on, your forge won't stoke itself.",
		"That's handled. Off you go, and mind the ice on your doorstep.",
	},
	["dmo.quest_complete.w16.pay.001"] = {
		"Coin from these hills is heavy for its size. Like the bread up here, and the opinions.",
		"They pay in thick coins stamped deep. Even the money in Dun Morogh looks built to last.",
	},
	["dmo.quest_complete.w16.pay.002"] = {
		"Kind of you. I'll spend it somewhere with a roof.",
		"Much obliged. That buys a hot meal and a dry pair of socks.",
		"Thank you kindly. My boots will be glad of it, even if they never say so.",
	},
	["dmo.quest_complete.w16.pay.003"] = {
		"counts the coins with a gloved thumb, loses track halfway, and decides the number is close enough.",
		"weighs the little purse in one hand, approves of its heft with a nod, and knots the string tight.",
	},
	["dmo.quest_complete.w16.pay.004"] = {
		"The pay is small. What it buys them is a quieter road to the next farm, and that is worth more than it looks.",
		"A handful of copper for me. For them, one fear fewer on the walk to the well.",
		"Not much coin changed hands. Something else did, though: a road that is safe to use again.",
	},
	["dmo.quest_complete.w16.pay.005"] = {
		"No, no, I won't count it in front of you. I'll count it behind that boulder, like a civilized person.",
		"Paid in full and not a copper over. Folk up here keep honest books and tight purses.",
		"Exact to the copper. I expected nothing less from people who measure stone to a hair's width.",
	},
	["dmo.quest_complete.w16.pay.006"] = {
		"Half the pay in coin, half in advice on keeping my feet dry. I can't tell yet which half is worth more.",
		"With the money came a warning about the ice on the lake road. Up here a warning is part of the wage.",
	},
	["dmo.quest_complete.w16.pay.007"] = {
		"takes the offered hand, a grip like a vise, and keeps a straight face until it lets go.",
		"shakes on it the old way, then flexes {g:his|her} fingers afterward, when nobody is looking.",
		"seals the matter with a handshake that nearly cracks a knuckle and accepts the coin with the other hand.",
	},
	["dmo.quest_complete.w16.pay.008"] = {
		"That coin came out of a purse that has seen leaner days. Since Gnomeregan fell, so have most purses in this valley.",
		"They paid without a word about what they can spare. People who lost a city learn to count every copper, and still settle their debts.",
	},
	["dmo.quest_complete.w16.pay.009"] = {
		"Keep the extra. Someone else will come knocking with the next trouble, and you'll want it then.",
		"That's more than agreed. Fine, but the next round at the distillery is on me.",
	},
	["dmo.quest_complete.w16.pay.010"] = {
		"That covers new nails for my boot soles. On this ice, that isn't vanity, it's survival.",
		"Enough for a hot bath in Kharanos, if Kharanos has such a thing. I'll settle for a hot bowl.",
		"I know where this coin goes: thicker socks, a bowl of something, and lamp oil. Dun Morogh spends it for me.",
	},
	["dmo.quest_complete.w16.pay.011"] = {
		"tests a coin between {g:his|her} teeth out of habit, winces at the cold of the metal, and pockets the lot.",
		"rubs a coin bright on a sleeve and holds it up against the glare off the snow before putting it away.",
	},
	["dmo.quest_complete.w16.pay.012"] = {
		"I'd have done it for nothing. Better they never learn that, or the next job pays in thanks alone.",
		"The coin is fine. The look on their faces when the trouble was gone was better pay, and harder to spend.",
	},
	["dmo.quest_complete.w16.pay.013"] = {
		"Pleasure doing business. Tell whoever's next in line that I charge extra for caves.",
		"That settles it. Anyone else with trouble that bites, I'm cheaper before supper.",
	},
	["dmo.quest_complete.w16.walk.001"] = {
		"Job handed in, and the cold is already back at my collar, asking what's next.",
		"Done here. The valley runs white in every direction, and out in it somewhere is the next thing that needs doing.",
	},
	["dmo.quest_complete.w16.walk.002"] = {
		"turns up {g:his|her} collar and heads back out along the trampled track, boots crunching on old snow.",
		"settles the pack higher on {g:his|her} shoulders and picks a line across the slope toward the road.",
		"hitches up {g:his|her} belt, takes one look at the long white slope ahead, and starts down it without complaint.",
	},
	["dmo.quest_complete.w16.walk.003"] = {
		"Which way is downhill? I swear every road here climbs in both directions.",
		"Downhill from here, I hope. My knees have already voted.",
		"Back down the slope. If I slip, I'm calling it a shortcut.",
	},
	["dmo.quest_complete.w16.walk.004"] = {
		"The road east runs on to the tunnel and Loch Modan. It can wait; there is still work in this valley.",
		"Past the gates to Loch Modan the land turns softer, travelers swear. Here it stays hard all the way to the next job.",
	},
	["dmo.quest_complete.w16.walk.005"] = {
		"Each errand here ends with a long walk back, cold feet, and a story nobody asked for.",
		"Every track in this valley is a groove worn by somebody else's errands. Mine has just joined them.",
	},
	["dmo.quest_complete.w16.walk.006"] = {
		"kicks a lump of packed ice off the toe of a boot and sets off: the job's weight gone, the pack's weight unchanged.",
		"lingers at the edge of the track to take a bearing off the far peaks, then goes on.",
	},
	["dmo.quest_complete.w16.walk.007"] = {
		"If anyone's heading toward Kharanos, I'll walk with you. Your company beats the wolves'.",
		"Anyone going my way? I'm good company, and I know where the ice is thin.",
	},
	["dmo.quest_complete.w16.walk.008"] = {
		"The walk back is the best part. Nobody asking anything, only the crunch underfoot and my own thoughts.",
		"Quiet on the way back. Up here the quiet has weight, like a heavy blanket laid over the whole valley.",
		"Out on the slopes again, with nobody waiting on me for a while. I take the long way and let my thoughts thaw.",
	},
	["dmo.quest_complete.w16.walk.009"] = {
		"Next stop the smithy, then the long road east. Or the long road east, and then regret about the smithy.",
		"I'll go around every lake between here and the next job. I don't trust ice I didn't watch freeze.",
	},
	["dmo.quest_complete.w16.walk.010"] = {
		"leaves a fresh line of prints in the packed snow, one more set among the many crossing the valley.",
		"trudges off with the unhurried pace of someone who, for once, has nowhere urgent to be.",
	},
	["dmo.quest_complete.w16.walk.011"] = {
		"Off I go. If I'm not back in a week, check the drifts.",
		"Back out there, then. Save me a seat near a fire somewhere.",
		"Time to go. If you hear swearing on the slopes, that's me finding the ice.",
	},
	["dmo.quest_complete.w16.walk.012"] = {
		"These paths were cut by dwarves long before anyone thought to ask me for help. I'm only borrowing them.",
		"The stones along the road are older than any trouble I've solved here. They will see the next one through too.",
	},
	["dmo.quest_complete.w16.walk.013"] = {
		"glances back once at the place where the job ended, then turns toward the mountains and the next stretch of road.",
		"stamps the cold out of {g:his|her} feet and strikes out across the open ground, one burden lighter.",
	},
	["dmo.quest_complete.w16.walk.014"] = {
		"sets off into the dark, the job finished and a few lanterns glowing here and there across the valley.",
		"heads out into the dark, following the pale gleam of the snow where the track runs.",
	},
	["dmo.quest_progress.w16.done.001"] = {
		"All of it, finally. Now to find my way back before the cold finds its way in.",
		"That's everything they asked for. The walk back is the easy part, if you don't count the hills.",
		"That settles it. I'll take the low road back; the ridges have had enough of me.",
	},
	["dmo.quest_progress.w16.done.002"] = {
		"Done! Now, which of these white hills did I come over?",
		"That's the lot. Somebody's going to be very pleased, and I'm going to be very warm.",
		"All done! Back I go, and quickly, before my ears fall off.",
	},
	["dmo.quest_progress.w16.done.003"] = {
		"straightens with the task complete and turns back, following {g:his|her} own tracks through the snow.",
		"ties off the last of the work with a satisfied grunt and squints toward where it all began, somewhere beyond the ridges.",
	},
	["dmo.quest_progress.w16.done.004"] = {
		"Everything's in hand. Now I only have to cross the same frozen ground in the other direction. Joy.",
		"Job complete, and only a few miles of mountain between me and a warm room.",
	},
	["dmo.quest_progress.w16.step.001"] = {
		"Some of it done. The mountain gives up the rest slowly, the way it gives up everything.",
		"Progress. Slow progress, cold progress, but progress.",
		"Bit by bit. The snow keeps no secret for long if you know where to dig.",
	},
	["dmo.quest_progress.w16.step.002"] = {
		"That's some of it. My fingers say stop; the job says keep going. The job is louder.",
		"Good, one piece in place. If I keep moving, the cold never gets the chance to settle in.",
	},
	["dmo.quest_progress.w16.step.003"] = {
		"Getting there. Slowly, but nothing in this valley moves fast.",
		"That's a start. The rest can't be far, surely. Can it?",
	},
	["dmo.quest_progress.w16.step.004"] = {
		"works out how much of the task remains and scans the white slopes to see where to look next.",
		"pauses to take stock, nods once at the tally, and pushes on through the cold.",
	},
	["dmo.quest_progress.w16.step.005"] = {
		"Part way there. Dun Morogh measures progress in frozen toes, and I've used up about four.",
		"Some of it done. If the rest goes as easily, I'll be beside a fire before my nose turns blue.",
	},
	["dmo.quest_progress.w16.step.006"] = {
		"One part done, and no troll or trogg any the wiser. Better keep it that way.",
		"Quietly does it. In these hills, noise carries further than you'd think.",
	},
	["dmo.subzone_enter.w16.part.001"] = {
		"picks a way between abandoned carts and heaps of broken rock, where the quarry's tools lie where the miners dropped them.",
		"slows at the rim of the quarry, where the cut stone gives way to scratch marks no pick ever made.",
	},
	["dmo.subzone_enter.w16.part.002"] = {
		"A dwarven quarry gone quiet, except for the scrabbling. The troggs dig too, only without a plan.",
		"The quarry is silent in the wrong way. No hammers, no work songs, only claws on stone somewhere below.",
	},
	["dmo.subzone_enter.w16.part.003"] = {
		"Shimmer Ridge earns its name: every ledge glitters with old ice. Lovely, and a terrible place to lose my footing.",
		"Up on the ridge the glitter hurts the eyes. I'll be watching my feet more than the view.",
	},
	["dmo.subzone_enter.w16.part.004"] = {
		"steps carefully along the shore of Iceflow Lake, where the ice gives a long, low groan now and then as it settles under its own weight.",
		"halts at the edge of the frozen lake, tests the ice with a heel, and thinks better of it.",
	},
	["dmo.subzone_enter.w16.part.005"] = {
		"Helm's Bed Lake. Flat and white as a laid table, with the mountains pulled up around it.",
		"A lake named for a bed. Whoever named it had a strange idea of comfort, or a very hard mattress.",
	},
	["dmo.subzone_enter.w16.part.006"] = {
		"Chill Breeze Valley. Whoever named this place was being polite.",
		"A valley named for the chill. As if the rest of Dun Morogh were a beach.",
	},
	["dmo.subzone_enter.w16.part.007"] = {
		"comes in among the close-set pines of the refuge, where the snow lies quieter and the cold eases its grip a little.",
		"ducks under the low branches and lets the trees close in all around, a shelter of needles and shade.",
	},
	["dmo.subzone_enter.w16.part.008"] = {
		"Ironband's Compound, and not a friendly face in it. Whoever holds these walls now, they aren't the ones who built them.",
		"Dark Iron dwarves, this close to Ironforge. Even the smoke here smells wrong.",
	},
	["dmo.subzone_enter.w16.part.009"] = {
		"Steelgrill's Depot! Something in there is clanking, hissing and very possibly about to explode.",
		"Gnomish machines on long legs, parked in the snow like patient birds. I want a ride, and I'm scared of them.",
	},
	["dmo.subzone_enter.w16.part.010"] = {
		"passes under the eyes of the outpost's watch, where the road bends toward the great tunnel to Loch Modan.",
		"slows at the outpost, where the stonework is old and sturdy and the mountaineers keep close count of who comes through.",
	},
	["dmo.subzone_enter.w16.part.011"] = {
		"The south gate. Past it lies the road to Loch Modan, and a valley with more grass than snow, if the travelers are honest.",
		"Thick walls at the gate, raised by people who expected the worst from both directions.",
	},
	["dmo.subzone_enter.w16.part.012"] = {
		"Warm air rolls out of the gates, carrying the din of a thousand hammers. The mountain is awake.",
		"Traffic thickens here: carts, rams, travelers from every corner, all funneling toward one door in the rock.",
	},
	["dmo.subzone_enter.w16.part.013"] = {
		"Brewnall Village. With a name like that, I expect a warm welcome and a full cup.",
		"Brewnall. If the name is honest, there's a cask somewhere in this village waiting for me.",
	},
	["dmo.subzone_enter.w16.part.014"] = {
		"climbs into the rolling hills, where the snow lies in long smooth drifts and wolf tracks cross the slopes.",
		"tops a rise and looks back over the white folds of the hills, one after another like frozen waves.",
	},
	["dmo.subzone_enter.w16.part.015"] = {
		"The tunnel through the mountain. Stone close on every side, and the echo of my own steps for company.",
		"Inside the pass the cold changes: still and old, the cold of rock that has never seen daylight.",
	},
	["dmo.subzone_enter.w16.part.016"] = {
		"passes the solid stone front of Anvilmar, where voices of instruction carry across the yard and the snow.",
		"lingers before Anvilmar's heavy doors, built low and broad like the folk who raised them.",
	},
	["dmo.subzone_enter.w16.part.017"] = {
		"Thunderbrew Distillery. You can smell it from the doorway, and I'm warmer already.",
		"Barrels stacked to the ceiling and a smell that could knock over a ram. My kind of building.",
	},
	["dmo.subzone_enter.w16.part.018"] = {
		"A change of ground. In this valley that means fresh tracks in the snow to read, and reasons to read them carefully.",
		"The mountains fold a different way here. I learn their shape before I trust them.",
	},
	["dmo.subzone_enter.w16.part.019"] = {
		"takes stock as the ground changes: the slopes, the tracks, the nearest cover.",
		"looks around this corner of {zone}, marking the way back before going any further.",
	},
	["dmo.victory.w16.won.001"] = {
		"Done. The mountain didn't even notice. That's how it should be.",
		"Quiet all the way to the peaks. As if nothing had happened here.",
		"Over, and the peaks never even blinked.",
	},
	["dmo.victory.w16.won.002"] = {
		"straightens beneath the cliffs and, for a moment, stands as still as the dwarven statues at the gates.",
		"glances up toward Ironforge, as if reporting in.",
	},
	["dmo.victory.w16.won.003"] = {
		"That's how it's done under Ironforge's eye.",
		"Down it goes. Dun Morogh keeps its rough edges, and so do I.",
		"Ironforge's doorstep stays clean.",
	},
	["dmo.victory.w16.won.004"] = {
		"Over. Flex the fingers, count them, move on.",
		"Finished. Now my hands can go back to being cold for no good reason.",
		"That's settled. Rub the hands, check the feet, keep going.",
	},
	["dmo.victory.w16.won.005"] = {
		"The road to Kharanos is a little safer. Pass it on.",
		"One less threat on the valley roads. The mountaineers can thank me later.",
		"That's for the folk of Kharanos, who never asked me to.",
	},
	["dmo.victory.w16.won.006"] = {
		"stands still as the last echo of the fight runs off along the ridges.",
		"listens as the valley swallows the noise of the fight, the way it swallows everything.",
	},
	["dmo.victory.w16.won.007"] = {
		"Its charms rattle once in the cold and go still. Someone in those caves will wait for it.",
		"The caves just lost one. Someone there will notice the empty place.",
	},
	["dmo.victory.w16.won.008"] = {
		"Back to the rock with you, trogg. You'll fit right in.",
		"That's one hole in the valley that'll stay empty.",
		"Rockjaw down. The quarry can have its stone back.",
	},
	["dmo.victory.w16.won.009"] = {
		"Rest, whoever you were. Gnomeregan took the rest of you long before I did.",
		"There's no glory in that. Only a little less suffering at the gates of a lost city.",
	},
	["dmo.victory.w16.won.010"] = {
		"Tell Thaurissan his spies freeze up here.",
		"One less Dark Iron watching the gates of Ironforge.",
	},
	["dmo.victory.w16.won.011"] = {
		"kneels by the fallen beast a moment, then rises; up here nothing that falls goes to waste for long.",
		"looks down at the still animal, its hide already gathering frost.",
	},
	["dmo.victory.w16.won.012"] = {
		"Small fights, all of them, but they add up. The valley is a fraction quieter for it.",
		"Nobody in Kharanos will hear of this. It still counts.",
		"A little less danger between here and the gates. That's enough.",
	},
	["dmo.victory.w16.won.013"] = {
		"Ha! Let the peaks carry that one all the way to Ironforge!",
		"Victory, and not a frozen toe lost. Dun Morogh, you'll have to try harder.",
		"A win in the white! Carve it somewhere!",
	},
	["dmo.victory.w16.won.014"] = {
		"By the time anyone passes this way, the drifts will have hidden all of it. The mountain tidies up after everyone.",
		"Something lived, and now it doesn't, and the cold doesn't care. I do, a little.",
	},
	["dmo.victory.w16.won.015"] = {
		"touches two fingers to {g:his|her} brow toward the distant gates of Ironforge, then turns back to the trail.",
		"raises a hand toward the peaks in a brief, wordless salute, and lowers it.",
	},
	["dmo.victory.w16.won.016"] = {
		"Mark it down! Dun Morogh gives nothing away, but this I took.",
		"Won fair, on cold ground. That's the only kind of win this valley respects.",
	},
	["dmo.victory.w16.won.017"] = {
		"Sit on a rock for a moment. Not long: the rocks here are colder than the air.",
		"Let the shaking stop. Then the next ridge.",
		"Pause. Long enough to feel the ache, not long enough to freeze.",
	},
	["dmo.victory.w16.won.018"] = {
		"stands over the fight's end, small against the white mountains and not at all diminished by them.",
		"plants {g:his|her} feet again on the frozen ground, with nothing left to face.",
	},
	["dmo.victory.w16.won.019"] = {
		"Frostmane: one fewer. Your caves are getting roomy.",
		"Paint doesn't stop much, does it?",
	},
	["dmo.victory.w16.won.020"] = {
		"Whoever that was, they had reasons for being out here in the cold. I'll never know them.",
		"Something with a voice and a will. I didn't wait to hear what it wanted.",
	},
	["dmo.victory.w16.won.021"] = {
		"Let the stone keep the record. I won't need to.",
		"Done, and done properly. The mountain can witness it.",
		"Let it be said: this ground was held.",
	},
	["dmo.victory.w16.won.022"] = {
		"Every scrap in these hills teaches the same thing: footing first, anger last.",
		"That taught me something about frozen slopes, mostly where not to put a boot.",
		"Footing, patience, then the blow. The mountains are a strict teacher.",
	},
	["dmo.victory.w16.wry.001"] = {
		"Good news: I can feel my hands again. Bad news: they hurt.",
		"Warm at last. Shame about how.",
		"At least I'm not cold anymore. Mostly.",
	},
	["dmo.victory.w16.wry.002"] = {
		"And for my next trick, I'll walk another mile in this cold and do it all over.",
		"Won. My reward: the same frozen valley as before, minus one problem.",
		"Victory. The valley looks exactly the same. Typical.",
	},
	["dmo.victory.w16.wry.003"] = {
		"Troggs. All that digging, and this is where it gets you.",
		"Should've stayed underground. Honestly, I'd have stayed underground.",
	},
	["dmo.victory.w16.wry.004"] = {
		"shakes out stinging fingers, looking a good deal more pleased than cold.",
		"tucks both hands under {g:his|her} arms and grins at nothing in particular.",
	},
	["dmo.victory.w16.wry.005"] = {
		"Dun Morogh: one. Me: slightly more than one.",
		"Somebody tell the mountain the score.",
		"Score settled. The mountain can sulk.",
	},
	["dmo.victory.w16.wry.006"] = {
		"A dwarf would tell this one with twice the foes and half the slipping. Fair enough.",
		"In the songs nobody ever stops to rub their ears afterward. They should.",
	},
	["dmo.victory.w16.wry.007"] = {
		"Nice hide. Pity you were inside it.",
		"Should've gone for the rams. They don't hit back.",
		"Next time, eat a hare.",
	},
	["dmo.victory.w16.wry.008"] = {
		"wins the fight and very nearly loses the footing afterward, arms windmilling on a patch of ice.",
		"steps forward proudly and skids half a pace on the frost, dignity mostly intact.",
	},
	["dmo.victory.w16.wry.009"] = {
		"That went well. I'll keep quiet about the part where I nearly fell over.",
		"Victory, with one small slip nobody saw. Let's keep it that way.",
		"If anyone asks, that stumble was a feint.",
	},
	["dmo.victory.w16.wry.010"] = {
		"So much for the war paint.",
		"All that shrieking, and it ends like this.",
	},
	["dmo.victory.w16.wry.011"] = {
		"Is that it? The mountain sends its best and its best is that?",
		"I've had harder arguments with a frozen door.",
		"I've met fiercer things in a Kharanos stewpot.",
	},
	["dmo.victory.w16.wry.012"] = {
		"Won the fight, lost a glove somewhere in the drift. The mountain always takes its cut.",
		"Victory tastes like snow, mostly because I've got a mouthful of it.",
	},
	["dmo.victory.w16.wry.013"] = {
		"checks fingers, toes and ears, finds the right number of each, and nods.",
		"counts {g:his|her} fingers twice over: the cold hasn't kept any.",
	},
	["dmo.victory.w16.wry.014"] = {
		"That's the most exercise anyone's had in this valley that didn't involve carrying a keg.",
		"Kegs, rams and fights. Dun Morogh offers three kinds of work, and I just did one.",
		"Fighting, hauling kegs, herding rams. At least this one ends quickly.",
	},
	["dmo.victory.w16.wry.015"] = {
		"Nothing personal. You'd have done the same, and with less guilt about it.",
		"Sorry, beast. Hunger makes fools of all of us up here.",
	},
	["dmo.victory.w16.wry.016"] = {
		"Tell the rest of the tunnels. Ironforge is still upstairs, and it's not moving.",
		"Next trogg that pokes its head up gets the same.",
		"Up from the deep for that? Poor planning, trogg.",
	},
	["dmo.victory.w16.wry.017"] = {
		"I'd celebrate, but every muscle I'd use for it is frozen stiff.",
		"A grin would crack my face in this cold. Consider it grinned.",
	},
	["dmo.victory.w16.wry.018"] = {
		"scoops a handful of clean snow, scrubs {g:his|her} hands with it, and pretends that was the plan all along.",
		"wipes {g:his|her} face with a fistful of snow and grimaces at the cold of it.",
	},
	["dmo.victory.w16.wry.019"] = {
		"Brief, cold, and in my favor. My favorite kind.",
		"Short and sharp, like the mountain air.",
		"Over fast. The cold barely had time to complain.",
	},
	["dmo.victory.w16.wry.020"] = {
		"The valley gets one problem lighter, and I get one bruise heavier. Fair trade, I suppose.",
		"A win's a win. My knee disagrees, but my knee wasn't consulted.",
		"I'll be stiff for a week. Worth it, probably.",
	},
	["dmo.victory.w16.wry.021"] = {
		"Run and tell the pack. Ah. Never mind.",
		"That's the last time you howl at me.",
	},
	["dmo.victory.w16.wry.022"] = {
		"bows to the empty mountainside as if to a crowd, and gets the silence {g:he|she} deserves.",
		"glances around for witnesses. The pines keep their opinions to themselves.",
	},
	["dmo.weather_change.w16.sky.001"] = {
		"Flakes begin to come down, slow and fat, and the far slopes soften at the edges. The mountain is pulling up its blanket.",
		"More snow, drifting down onto the old. Here that hardly counts as news, yet the valley goes quiet for it, out of respect.",
		"Here comes the snow, sifting down like flour from a shaken sack. My tracks are already filling in behind me.",
	},
	["dmo.weather_change.w16.sky.002"] = {
		"Snowing. Of course it is. Dun Morogh would hate for anyone to forget where they are.",
		"Fresh snow. Lovely. Now the drifts can come up to my waist instead of my knees.",
	},
	["dmo.weather_change.w16.sky.003"] = {
		"looks up as the sky clears over the peaks, every ridge suddenly standing out sharp, as if cut from paper.",
		"sees the valley open up as the sky comes clear: far slopes, far pines, the long line of the road, all of it crisp and near.",
		"pushes back {g:his|her} hood as the sky opens, and the whole valley seems to step closer, sharp-edged and still.",
	},
	["dmo.weather_change.w16.sky.004"] = {
		"The sky has cleared, and with it comes a cold that bites twice as hard. Up here a clear sky is no kindness.",
		"Clear above the peaks now. Every distance looks shorter than it is, which is how the mountain lures you on.",
	},
	["dmo.weather_change.w16.sky.005"] = {
		"slows as fog creeps up out of the hollows and the road ahead fades to a few pale yards.",
		"waits while the fog settles all around, the nearest pine reduced to a dark smudge and the rest of the world simply gone.",
		"keeps one hand on the nearest rock as the fog closes in, the valley shrinking to a small white room.",
	},
	["dmo.weather_change.w16.sky.006"] = {
		"Fog, in a valley full of cliffs. Wonderful. I'll be walking very slowly, thank you.",
		"Can't see my own boots in this murk. If you hear a yelp and a long silence, that was me finding a ledge.",
	},
	["dmo.weather_change.w16.sky.007"] = {
		"The sky over the peaks is changing its mind. Up here it does that often, and asks nobody's leave.",
		"Something has shifted overhead. The dwarves would already know what it means; I'll find out the slow way.",
		"The mountain has turned its sky like a page. Whatever is written on the next one, the valley has read it before.",
	},
]==])
