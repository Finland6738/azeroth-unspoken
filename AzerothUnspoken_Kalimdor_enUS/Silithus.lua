-- English texts of the regional pack kalimdor_silithus (content wave W04). The rules are in AzerothUnspoken_Kalimdor/Silithus.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("silithus", "enUS", "kalimdor_silithus", [==[
	["sil.a.attack.01"] = {
		"For Cenarion Hold, and for the Alliance!",
		"Silithus can have you back!",
	},
	["sil.a.battle.01"] = {
		"Out here in the open, then. No walls, no tricks, just you and me and the sand.",
		"Silithus breeds nothing but trouble, and here's more of it. Fine.",
		"Hold your ground. In this sand, whoever stumbles first loses.",
	},
	["sil.a.battle.02"] = {
		"Silithid. Where there's one, there are twenty more under the sand. Make it quick.",
		"Chitin and mandibles. Go for the joints; the shell turns a blade.",
	},
	["sil.a.battle.03"] = {
		"Twilight's Hammer! Your masters want the world broken. I'd rather break you.",
		"Put the robe down and walk away. No? Then we do this the hard way.",
	},
	["sil.a.journey.01"] = {
		"lifts off from Cenarion Hold, and the walls of the camp shrink to a pale ring in a sea of yellow sand.",
		"rises over the desert, the hives below like scattered anthills and the Scarab Wall a dark line to the south.",
	},
	["sil.a.landmark.01"] = {
		"Cenarion Hold. Walls, water, and druids who look as though they haven't slept in a month.",
		"{landmark}. The only place in Silithus where I can put my back to a wall and close my eyes for a moment.",
	},
	["sil.a.lowhp.01"] = {
		"Not here. Not in this sand, with the hives so close.",
		"Not in Silithus. I refuse to end as one more mound in the dunes.",
		"No. Whatever happens, I don't lie down in this desert.",
	},
	["sil.a.muse.01"] = {
		"Sand the color of old bone and rock like scorched iron. Silithus isn't just a desert. It's a wound that never closed.",
		"Yellow dunes, black stone, and a hum in the ground that never quite stops. This land is sick, and it knows it.",
		"Pale sand over rotten rock. Some deserts are only empty; this one feels infected.",
	},
	["sil.a.muse.02"] = {
		"The hives rise out of the sand like the tops of buried towers. I don't want to know how deep they go.",
		"Those mounds are hives, and the silithid inside them number past counting. The ground itself feels hollow.",
		"Every hive is a door down into something old. The Cenarion Circle watches them the way a healer watches a fever.",
	},
	["sil.a.muse.03"] = {
		"Sand in my boots, sand in my teeth, sand in places I won't mention. Silithus is generous that way.",
		"I've found sand in pockets I didn't know I had. This place gets everywhere.",
	},
	["sil.a.muse.04"] = {
		"Twilight's Hammer cultists in robes, camped in the sand, calling up things that should stay buried. Why is it always robes?",
		"The Twilight's Hammer camps out here as if it owned the place, summoning storms and worse. Somebody has to break their circles.",
	},
	["sil.a.muse.05"] = {
		"The Scarab Wall has held for a thousand years. I keep looking at it the way you'd look at a dam with the flood pressing behind.",
		"Behind that wall the Qiraji wait. Dragons and elves sealed it long ago, and every grain of sand here seems to lean against it.",
	},
	["sil.a.muse.06"] = {
		"shades {g:his|her} eyes against the glare and looks out across the dunes, where the heat bends the air into slow ripples.",
		"stops atop a ridge of sand, squinting at the shimmer of heat over the waste.",
	},
	["sil.a.muse.07"] = {
		"After dark the sand clicks and rustles all around. The silithid don't sleep, and neither, it seems, will I.",
		"Night brings the chittering closer. I sit with my back to a rock and count the sounds.",
		"In the dark hours the dunes are full of small dry noises, and every one of them has legs.",
	},
	["sil.a.npc_meet.01"] = {
		"A roof, a bed, and water that doesn't taste of sand. In Silithus, an innkeeper is a small miracle.",
		"Shade and a cool cup. Whoever keeps this inn keeps more travelers alive than any healer.",
		"The innkeeper hands me water before I even ask. Out here they know what the desert does to people.",
	},
	["sil.a.quest_complete.01"] = {
		"Done. In Silithus every small victory is a grain of sand taken back from the hives.",
		"One more task finished. The desert is no smaller, but somebody here sleeps a little easier.",
		"Settled. Out here, nobody asks for help unless they truly need it.",
	},
	["sil.a.quest_complete.02"] = {
		"accepts the reward, beats the sand out of {g:his|her} sleeves, and looks south toward the wall.",
		"nods {g:his|her} thanks and squints out at the dunes, already measuring the next stretch of sand.",
		"puts the reward away and takes a long swallow from {g:his|her} waterskin before the heat can claim it.",
	},
	["sil.a.quest_progress.01"] = {
		"That's the last of it. Now to deliver it, before the sand fills my boots completely.",
		"All found. Time to get out of the dunes while I still have water.",
	},
	["sil.a.subzone_enter.01"] = {
		"crests a dune and finds another stretch of sand beyond, broken by black rock and the dark mouths of burrows.",
		"comes down into a new hollow of the desert, where the sand lies rippled and the air hums faintly.",
		"passes between two weathered spires of stone into more of Silithus, as yellow and as hostile as the last.",
	},
	["sil.a.victory.01"] = {
		"Over. The sand is already drifting across it, as it does over everything here.",
		"Finished. The wind will have it buried by evening, like all the rest.",
	},
	["sil.a.victory.02"] = {
		"That's one less thing crawling around this desert. Only a few million to go.",
		"Down you go. Silithus won't even notice you're gone.",
	},
	["sil.a.victory.03"] = {
		"shakes the sand from {g:his|her} gear and wipes the grit from {g:his|her} eyes, the dunes silent again.",
		"spits out a mouthful of dust and straightens, scanning the sand for the next thing that moves.",
	},
	["sil.h.attack.01"] = {
		"This one's from the Horde!",
		"Hot enough for you? Have some more!",
	},
	["sil.h.battle.01"] = {
		"For the Horde! Even this cursed sand won't slow me down.",
		"Good timing. The heat already has me in a bad mood; you'll do nicely.",
		"Stand and fight! There's no shade to hide in out here.",
	},
	["sil.h.battle.02"] = {
		"sets {g:his|her} feet in the shifting sand as the silithid comes scuttling in, mandibles clacking.",
		"turns as a silithid rushes in on clicking legs, its shell glinting.",
	},
	["sil.h.battle.03"] = {
		"An elemental, loose in the sand. The cult's doing, most likely. Whatever called it up, I'll put it down.",
		"Raw elemental fury, dragged into this desert by somebody's ritual, I'd wager. Let's undo their work.",
	},
	["sil.h.journey.01"] = {
		"Down at Cenarion Hold. The wind rider shakes the sand from its wings, and I do the same from my collar.",
		"On the ground, in the heat. The walls of the Hold are the most welcome thing in this whole desert.",
	},
	["sil.h.landmark.01"] = {
		"stands before the Scarab Wall, its great carved stones looming over the sand, and feels the silence behind it pressing outward.",
		"looks up at the vast wall with its stone scarabs, and at the sand at its foot, lying strangely still.",
	},
	["sil.h.lowhp.01"] = {
		"Too much blood, too much heat. The sand is spinning. Focus.",
		"My head swims in this heat. One more mistake and the scavengers eat well.",
		"Not here, not like this, not with the hives listening.",
	},
	["sil.h.muse.01"] = {
		"The wind never stops in Silithus. It carries sand, and heat, and a faint dry clicking from somewhere underground.",
		"Hot wind, endless grit, and that clicking under the dunes. Even the air here feels like it has legs.",
		"A restless wind full of sand, and under it a sound like a thousand small jaws working. I'd rather not listen.",
	},
	["sil.h.muse.02"] = {
		"Southwind Village is only a name now. The silithid came up out of the sand, and the village went under.",
		"There was a village at Southwind once, with walls and wells. The hives took it, and the wind finished the job.",
	},
	["sil.h.muse.03"] = {
		"Bugs the size of kodos, and sand in every seam of my gear. Silithus really does try to make everyone feel welcome.",
		"If this desert had a smell, it would be hot chitin. Oh, wait. It does.",
	},
	["sil.h.muse.04"] = {
		"The cultists of the Twilight's Hammer talk about the end of the world as if it were a feast day. I'd like to spoil the party.",
		"Robed fanatics in the dunes, dreaming of the world cracking open. The Horde has fought madmen before; these are no different.",
	},
	["sil.h.muse.05"] = {
		"Beyond the Scarab Wall the Qiraji are waiting. You can feel it from here: patience, and hunger, and a very long memory.",
		"The wall to the south holds back an empire of insects and their masters. Every time I look at it, I check it's still standing.",
	},
	["sil.h.muse.06"] = {
		"tips the waterskin back and drinks sparingly, eyes on the dunes.",
		"pauses to drink, swallowing slowly to make it last, the hot wind tugging at straps and buckles.",
		"wets {g:his|her} lips from the waterskin and caps it again quickly, as if the desert might steal what's left.",
	},
	["sil.h.muse.07"] = {
		"Cenarion Hold takes help from Horde and Alliance alike. Out here the silithid are a bigger enemy than either of us.",
		"At the Hold the druids don't ask which side you come from, only whether you can fight. A fair question, in Silithus.",
		"Horde and Alliance share the same walls at Cenarion Hold. The desert has a way of putting old quarrels in their place.",
	},
	["sil.h.npc_meet.01"] = {
		"Anywhere without sand, please. If there is such a place.",
		"Your wind rider looks as tired of the heat as I am. Let's both go somewhere greener.",
		"Take me out of Silithus. I don't much care where, as long as it isn't here.",
	},
	["sil.h.quest_complete.01"] = {
		"Done. The Horde holds up its end, even in this furnace.",
		"Finished. Let them know at Cenarion Hold that the Horde pulled its weight.",
		"That's handled. Silithus will remember the Horde was here, if it remembers anything.",
	},
	["sil.h.quest_complete.02"] = {
		"Settled. One fewer worry for somebody in this desert, and they all have plenty.",
		"Done. My reward is mostly the honor of being thirsty for a good cause.",
		"Complete. I'll drink to it, the moment I find water that isn't half sand.",
	},
	["sil.h.quest_progress.01"] = {
		"There, the last one. Now out of the dunes before I dry up like the rest of this place.",
		"That's all of it. Time to deliver, and to find some shade on the way.",
	},
	["sil.h.subzone_enter.01"] = {
		"More sand, more rock, more of that hum underfoot. Silithus repeats itself, and none of it is good news.",
		"Another stretch of the desert. I keep listening through my boots for the hives.",
		"Another hollow, and the same dry menace in it. Every hollow in Silithus looks like a place where something is waiting.",
	},
	["sil.h.victory.01"] = {
		"Done. The dunes swallow the sound as if the fight never happened.",
		"It's over. The wind is already smoothing the tracks away.",
	},
	["sil.h.victory.02"] = {
		"Back to the hive with you. Oh, wait. You won't be going anywhere.",
		"Tell the rest of your swarm I'm coming. Actually, don't; I'd like to surprise them.",
	},
	["sil.h.victory.03"] = {
		"drags a forearm across {g:his|her} brow, smearing sweat and sand, and looks around for the next threat.",
		"kneels a moment in the hot sand to catch {g:his|her} breath, then rises with a grunt.",
	},
	["sil.a.attack.w10.001"] = {
		"Back under the sand with you!",
		"Chew on this!",
	},
	["sil.a.battle.w10.001"] = {
		"Out of the sand and into my way. Bad choice.",
		"Sand in my eyes and you in my face. One of those I can fix.",
		"Cenarion Hold is behind me. You don't get past.",
	},
	["sil.a.battle.w10.002"] = {
		"A cultist. Watch the hands; they mutter before they strike.",
		"Twilight's Hammer. Break the chant before it finishes, and the rest is easy.",
		"Cultist! Your end of the world starts with you.",
	},
	["sil.a.battle.w10.003"] = {
		"kicks free of the sand as the insect bursts up out of it, mandibles wide.",
		"braces against the rush of chitin and legs, the sand sliding away underfoot.",
	},
	["sil.a.battle.w10.004"] = {
		"Sand and wind with a grudge. The cult called you; I'll send you back.",
		"Another of the cult's pets. Back to whatever pit they dragged you from!",
	},
	["sil.a.journey.w10.001"] = {
		"Down at Cenarion Hold. The heat comes up off the sand like an open oven door, and the hippogryph looks as unhappy about it as I am.",
		"On the ground in Silithus. First breath: dust. Second breath: more dust. By the third I stop counting.",
		"Boots in the sand at the Hold. The hippogryph shakes itself, and a small dune falls out of its feathers.",
	},
	["sil.a.landmark.w10.001"] = {
		"{landmark}. Night elves and dragons raised it together, a thousand years ago. Standing at its foot, I feel very young and very small.",
		"The Scarab Wall. Every stone in it was set against what lies behind. I touch one, just once, for luck.",
	},
	["sil.a.lowhp.w10.001"] = {
		"Back to the Hold, if I have to crawl the whole way!",
		"Water, breath, a little luck. I'll take any of them!",
	},
	["sil.a.lowhp.w10.002"] = {
		"Heat in my head, blood in my eyes. Slow down. Think.",
		"The dunes are swaying. No, they aren't. I am. Steady.",
	},
	["sil.a.muse.w10.001"] = {
		"At Cenarion Hold a tauren druid and a night elf druid share a map table and argue in low voices. The Circle is older than the quarrel between our factions.",
		"The Cenarion Circle takes druids from both sides. Out here they tend the same wounded land, and they trade herbs without a glance at each other's colors.",
		"Horde druids inside Cenarion Hold. It sits strangely at first. Then the silithid come over the dunes, and nobody cares who swore to whom.",
	},
	["sil.a.muse.w10.002"] = {
		"A thousand years ago the night elves fought the Qiraji here and barely won. The druids speak of it carefully, like a debt that was never paid off.",
		"The War of the Shifting Sands ended with a wall and a seal, not a victory. The kaldorei know it. You can hear it in how quietly they say Ahn'Qiraj.",
	},
	["sil.a.muse.w10.003"] = {
		"Word from Ironforge says the Alliance is stockpiling: bandages, metal bars, crates of food. Nobody says what for, but everyone looks south while not saying it.",
		"The talk at Cenarion Hold is of gates and gongs and an army being gathered back home. Rumor, mostly. Rumor in Silithus has a way of turning true.",
		"If the gates of Ahn'Qiraj ever open again, the Alliance means to be ready. That's what the quartermasters say, anyway, while they count copper bars.",
	},
	["sil.a.muse.w10.004"] = {
		"The Twilight's Hammer leave their camps littered with tablets and scrawled pages. Most of it is raving about the world cracking open. Some of it reads like a plan, and that's worse.",
		"In the cult's camps there are standing stones that hum as you pass. Whatever the Twilight's Hammer means to call through them, I'd rather it stayed uncalled.",
	},
	["sil.a.muse.w10.005"] = {
		"Watch a silithid swarm long enough and you stop seeing insects. You see one creature with a thousand legs, and it's thinking.",
		"The silithid don't fight like beasts. They come in waves, pull back and come again, as if something deep in the hive were counting the cost.",
	},
	["sil.a.muse.w10.006"] = {
		"Bakers' ovens run cooler than this. And the bread would come out half sand anyway.",
		"Somebody tell the desert it can stop now. I'm cooked through.",
	},
	["sil.a.muse.w10.007"] = {
		"The dwarves at Bronzebeard Encampment dig away in the middle of all this, as calm as if the hives were a passing rumor. Dwarves and old stones: nothing keeps them apart.",
		"Even here there are dwarves with shovels in the sand. To a dwarf every ruin is a library, and Silithus is full of very old books.",
	},
	["sil.a.muse.w10.008"] = {
		"tips a boot upside down and watches a thin stream of sand pour out, then pulls it back on with an air of resignation.",
		"ties a strip of cloth over nose and mouth against the grit and walks on, eyes narrowed to slits.",
	},
	["sil.a.muse.w10.009"] = {
		"Stormwind feels like a story from someone else's life out here. Green fields, stone streets, rain. I'd take any one of the three.",
		"The Alliance's heartlands are a long way north. Out here it's a handful of us at Cenarion Hold, sharing walls and water with whoever else came to hold the line.",
	},
	["sil.a.muse.w10.010"] = {
		"Why would the Twilight's Hammer camp so close to the hives and not be eaten? Either they're very lucky, or something down there knows them.",
		"The cultists and the silithid leave each other alone. In a desert where everything eats everything, that peace is the most frightening thing here.",
	},
	["sil.a.muse.w10.011"] = {
		"Somebody has to stand between the hives and the rest of Kalimdor. For now, that's whoever holds Cenarion Hold.",
		"Let the hives buzz. The Hold's still standing, and so are we.",
	},
	["sil.a.npc_meet.w10.001"] = {
		"North, please, somewhere green. The hippogryph looks as keen as I am.",
		"Take me up over the dunes. I want to see the hives from very high up and very briefly.",
	},
	["sil.a.npc_meet.w10.002"] = {
		"Waterskins, and plenty of them. Anything else this merchant sells is a luxury in Silithus.",
		"This merchant has watched every kind of traveler stumble in off the dunes. Nothing I buy will surprise anyone.",
	},
	["sil.a.quest_complete.w10.001"] = {
		"Done. Out here nothing goes to waste, least of all help.",
		"Finished. A nod, a line in a ledger, and back out into the heat. That's thanks, in Silithus.",
		"That's handled. Silithus is no gentler for it, but it's a little less crowded.",
	},
	["sil.a.quest_complete.w10.002"] = {
		"Tell them in Ironforge and Stormwind: the Alliance did its part in the desert.",
		"Done. One more reason for Cenarion Hold to be glad the Alliance came.",
	},
	["sil.a.quest_complete.w10.003"] = {
		"shakes the sand out of the reward pouch before tucking it away, already a habit.",
		"accepts the payment, then simply stands still for a while, letting the hot wind go past.",
	},
	["sil.a.quest_progress.w10.001"] = {
		"That's everything. Now back across the dunes, and may the sand stay quiet underfoot.",
		"All of it, gathered. Silithus cost me a lot of water for this; let's make it count.",
	},
	["sil.a.subzone_enter.w10.001"] = {
		"{subzone}. I stop and listen before going on. In Silithus the ears see farther than the eyes.",
		"{subzone}. The sand here looks like the sand everywhere else, which is exactly what worries me.",
		"{subzone}. Water first, then a look around. The order matters in Silithus.",
	},
	["sil.a.victory.w10.001"] = {
		"Back into the sand. It was always going to have you.",
		"That's one. The desert keeps count; I don't.",
		"Stay under this time. The dunes have room.",
	},
	["sil.a.victory.w10.002"] = {
		"One less thing between Cenarion Hold and a little peace.",
		"That clears some sand around the Hold. The druids can breathe a moment longer.",
	},
	["sil.a.victory.w10.003"] = {
		"crouches to drink, and the water tastes of the fight's dust.",
		"shields {g:his|her} eyes from the grit and listens. Under the sand, something is still clicking.",
	},
	["sil.a.victory.w10.004"] = {
		"Dead, but the hive doesn't care. It'll send another, and another, and never miss this one.",
		"Down. For every silithid that falls, the hive lays a hundred eggs.",
	},
	["sil.a.weather_change.w10.001"] = {
		"pulls a cloth over {g:his|her} face as the sandstorm rolls in, a brown wall swallowing the dunes one by one.",
		"turns {g:his|her} back to the rising wind as the air fills with stinging sand and the hives vanish into the haze.",
		"half closes {g:his|her} eyes against the driving grit, every bare inch of skin scoured raw.",
	},
]==])
