-- English texts for the world the client describes: weather, dawn and dusk, subzones and landmarks, quests, reputation,
-- inns and flights (R3, #92 #93 #94 #95 #121). The rules are in Data/RegistryWorld.lua.
-- A line says only what its condition guarantees: rain only under `weather = "rain"`, a flight only under `onFlight`.
-- No invented lore: these are moods of the road, never facts about a place.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- weather changes
	---------------------------------------------------------------------------
	["world.rain.01"] = {
		"The first drops are falling. Even the dust of the road seems relieved.",
		"Rain on the road. Let it wash whatever it likes; I keep walking.",
		{ "Rain. The kind that starts as a whisper and means to stay.", depth = "natural" },
		{ "The sky has remembered that it can weep. I walk on beneath it and do not ask for a reason.", depth = "elevated" },
	},
	["world.rain.02"] = {
		"Rain. Of course. The road was getting too comfortable.",
		"A little water never hurt a soul. A great deal of it, now, that is another story.",
		{ "Well, at least the mud will finally have something to talk about.", depth = "natural" },
	},
	["world.rain.e"] = {
		"pulls the hood forward as the rain begins, and the road darkens under it one drop at a time.",
		"listens to the rain finding its rhythm on the leaves, and does not hurry to answer it.",
		{ "lifts {g:his|her} face to the first rain and, for a moment, says nothing at all.", depth = "elevated" },
	},
	["world.snow.01"] = {
		"Snow. The world grows quieter, and I can hear my own thoughts better than I would like.",
		"The first flakes are down. Everything sharp about the land is being forgiven, softly.",
		{ "Snow. My breath comes out white, and the day gets a little slower.", depth = "natural" },
	},
	["world.snow.e"] = {
		"watches the first flakes settle on a sleeve and not melt.",
		"stops to see the snow close over the tracks behind, one soft layer at a time.",
		{ "walks on through the falling white, where every sound is taken in and none is given back.", depth = "elevated" },
	},
	["world.storm.01"] = {
		"Thunder rolls over the land. Let the sky shout; we have shouted louder.",
		"A storm, then. Good. I was tired of a quiet sky that promised nothing.",
		{ "That is thunder, and it is close. Best keep moving.", depth = "natural" },
	},
	["world.storm.e"] = {
		"stops as thunder breaks overhead, and counts the heartbeats until the next one.",
		"watches the clouds gather their weight above the road, and sets {g:his|her} jaw against what is coming.",
		{ "stands under a sky that has begun to speak in thunder, and answers it only with a steady gaze.", depth = "elevated" },
	},
	["world.sand.e"] = {
		"turns {g:his|her} back to the wind as sand rises along the road, and waits for it to pass.",
		"pulls a cloth over mouth and nose, and walks on with eyes half shut against the grit.",
	},
	["world.fog.01"] = {
		"The fog takes the edges off everything. Even my doubts look softer.",
		"A gray stillness on the road. Whatever lies ahead, it will keep until I am close enough to see it.",
		{ "Fog. I can walk a hundred steps and meet nothing but myself.", depth = "natural" },
	},
	["world.clear.01"] = {
		"The sky has let go of its weather. Light comes back to everything it had left.",
		"The air is clean again. A fresh start, if I want one.",
		{ "Clear sky. For once, nothing above me has an opinion.", depth = "natural" },
	},
	["world.clear.e"] = {
		"looks up as the clouds thin, and lets the light fall on {g:his|her} face.",
		"watches the last of the gray drift off the hills, and shakes the damp from {g:his|her} shoulders.",
	},

	---------------------------------------------------------------------------
	-- arriving in a place with the weather it has
	---------------------------------------------------------------------------
	["world.zone.rain"] = {
		"I arrive in the rain. Whatever this place is, it is showing me its wet face first.",
		"Rain to greet me, and I walk into it. A fair welcome, as welcomes go.",
		{ "Rain here too. I begin to think it follows me.", depth = "natural" },
	},
	["world.zone.rain.first"] = {
		"My first time here, and the sky weeps for the occasion. I will remember this place wet.",
		"I have never walked this ground, and the rain is the first thing to greet me. I take it as a courtesy.",
		{ "Strange land, wet road. Let the water carry my name in, since no one else knows it.", depth = "elevated" },
	},
	["world.zone.snow"] = {
		"arrives with snow settling on {g:his|her} shoulders, and takes the white stillness of the place as a welcome.",
		"steps into a land that wears the snow like a cloak, and slows to match its quiet.",
	},

	---------------------------------------------------------------------------
	-- dawn and dusk
	---------------------------------------------------------------------------
	["world.dawn.01"] = {
		"Dawn. Another day lent to me, and no one asking for it back yet.",
		"The light comes up slowly, like someone who is not sure of their welcome. I know the feeling.",
		{ "Morning at last. The cold is already thinking of leaving.", depth = "natural" },
		{ "Each dawn is a door that opens only once. I step through it with whatever I am carrying.", depth = "elevated" },
	},
	["world.dawn.e"] = {
		"greets the first light the way travelers do: without a word, only a long breath.",
		"watches the east go pale and, without noticing, stands a little straighter.",
		{ "meets the dawn with open hands, as one receives a gift that asks for nothing.", depth = "elevated" },
	},
	["world.dawn.forest"] = {
		"Light drips through the branches, thin and gold. The forest wakes more slowly than I do.",
		"Birdsong begins somewhere in the green, one voice and then a dozen. The woods are getting up.",
		{ "Dawn under the trees: mist at the roots, gold in the crowns, and me in between.", depth = "elevated" },
	},
	["world.dusk.01"] = {
		"Dusk. The day lets go of the land one hill at a time.",
		"The light goes thin and long. It is the hour when everything remembers it has a shadow.",
		{ "Evening already. The road does not get shorter, only darker.", depth = "natural" },
		{ "The sun leans on the horizon like a tired traveler, and I lean with it.", depth = "elevated" },
	},
	["world.dusk.e"] = {
		"watches the light drain from the road, and pulls the cloak closer without noticing.",
		"stops a moment to see the last color leave the sky, then walks on a little faster.",
		{ "stands at the edge of the evening and lets the day go, the way one lets go of a hand.", depth = "elevated" },
	},
	["world.dusk.forest"] = {
		"Dusk in the forest: the trees grow taller as the light goes. I should find a fire before they finish.",
		"The woods thicken with the dark. Everything here is listening now.",
		{ "Evening in the trees. The path is a rumor, and I follow it on trust.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- subzones ({subzone} is the name the client gives)
	---------------------------------------------------------------------------
	["world.sub.01"] = {
		"walks on into {subzone} without hurry, reading the place as {g:he|she} goes.",
		"crosses into {subzone}. The ground feels no different, but a name changes how a place is walked.",
		{ "steps into {subzone} and takes a long look around before taking a second step.", depth = "natural" },
	},
	["world.sub.02"] = {
		"{subzone}. A small name for a small stretch of road, and still it asks to be remembered.",
		"Every place has a name before it has a story. This one is {subzone}.",
		{ "{subzone}. I add it to the list of places I have been, which is also a list of the people I was.", depth = "elevated" },
	},
	["world.sub.03"] = {
		"So this is {subzone}. Let us see what it has to say.",
		"{subzone}, then. I have heard stranger names on kinder roads.",
		{ "{subzone}. Somebody walked here first and named it. I will try to be worth the name.", depth = "literary" },
	},
	["world.sub.04"] = {
		"{subzone}, is it? Show me where the road goes next.",
		"{subzone}. Fine. I have no complaints yet, which is more than I can say for most places.",
	},
	["world.sub.dark"] = {
		"{subzone}. The air changes here, thicker, and my hand goes to my weapon without my deciding it.",
		"Into {subzone}, where the light thins and the quiet has weight. I keep my steps small.",
		{ "{subzone}. Some places do not need a reason to feel wrong.", depth = "literary" },
	},
	["world.sub.night"] = {
		"{subzone} at night. Every shadow here has had practice.",
		"The dark has settled over {subzone}. I walk it the way one crosses a sleeping house.",
		{ "{subzone} under the stars, or what the clouds leave of them. A fair hour to be quiet.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- landmarks ({landmark} is the name the client gives)
	---------------------------------------------------------------------------
	["world.lm.inn"] = {
		"pauses at the door of {landmark}, listening to the murmur of the room before going in.",
		"sees the lamplight in the windows of {landmark} and feels the road go out of {g:his|her} legs.",
		{ "comes up to {landmark}, where a warm glow spills over the threshold and asks no questions.", depth = "elevated" },
	},
	["world.lm.inn.inner"] = {
		"{landmark}. Warm light behind the shutters, and the promise of a bench that does not move.",
		"A roof, a fire, a mug. {landmark} has everything I need and nothing I will regret.",
		{ "{landmark}. I could use a seat and a word with no edge on it.", depth = "natural" },
	},
	["world.lm.village"] = {
		"{landmark}. Smoke, voices, a dog somewhere. People who live here, and a road that does not need me.",
		"Chimney smoke over {landmark}. For a moment I envy people who know which roof is theirs.",
		{ "{landmark}: a few roofs, a few lives, a hundred small habits. It is easy to forget that this is what we guard.", depth = "elevated" },
	},
	["world.lm.village.e"] = {
		"slows at the edge of {landmark}, where doors stand open and the day goes on without any need of a hero.",
		"comes into {landmark} along a worn path, past gardens and fences, and lets the pace of the place set {g:his|her} own.",
	},
	["world.lm.graveyard"] = {
		"slows at {landmark}, where the grass grows quiet over names no one reads anymore.",
		"steps into {landmark} and lowers {g:his|her} voice without being asked to.",
		{ "passes among the stones of {landmark}, and the living and the dead keep each other politely at a distance.", depth = "elevated" },
	},
	["world.lm.graveyard.inner"] = {
		"{landmark}. The dead keep their own counsel here. I will keep mine.",
		"Stones in rows, and the wind with nothing to say about it. {landmark} asks for silence; I give it.",
		{ "{landmark}. Whoever lies here once had a name for the road, too.", depth = "literary" },
	},
	["world.lm.camp"] = {
		"A camp at {landmark}: fires, tents, people with business of their own. Good enough company for a while.",
		"{landmark}. Not much, but there is a fire and someone has kept it going. That counts for a great deal.",
		{ "{landmark}. Smoke, a few tents, and the sound of people who are not in a hurry.", depth = "natural" },
	},
	["world.lm.mine"] = {
		"{landmark}. The hill is hollow here, and something in me prefers the open sky.",
		"The mouth of {landmark} breathes cold air. I would rather not know how far down it goes.",
		{ "{landmark}. Whoever works in there earns every coin twice.", depth = "natural" },
	},
	["world.lm.abbey"] = {
		"{landmark}. The stones are patient here, and the quiet has something of a prayer in it.",
		"I lower my voice at {landmark} before I have decided to. Some places ask without speaking.",
		{ "{landmark}. Whatever each person brings through these doors, the walls take it in without comment.", depth = "elevated" },
	},
	["world.lm.crossroads"] = {
		"{landmark}. Every road ends here and begins again; I wonder which of them is mine.",
		"Roads meet at {landmark} and part again. It is a good place to be undecided.",
		{ "{landmark}: four ways to go and no one to tell me which. I find I like it.", depth = "natural" },
	},

	---------------------------------------------------------------------------
	-- quests
	---------------------------------------------------------------------------
	["world.quest.progress.01"] = {
		"One more thing done, and the task shrinks to a size I can carry.",
		"Another piece set in place. It is not finished, but it has begun to look like finishing.",
		{ "A part of it is done. I do not ask for more than that today.", depth = "natural" },
	},
	["world.quest.progress.e"] = {
		"marks off another part of the errand and straightens, a little lighter.",
		"looks over what is done and what is not, and finds the balance has tipped a little.",
	},
	["world.quest.ready.01"] = {
		"It is finished. All that remains is to walk back and say so.",
		"Everything that was asked is done. The part that matters now is making sure someone knows.",
		{ "Done, and no one has noticed yet. I think that is how good work feels.", depth = "natural" },
	},
	["world.quest.ready.02"] = {
		"Done. Let us go and tell them so.",
		"That is the work done. Time to bring the news back.",
		{ "It is finished, and I would like it known.", depth = "literary" },
	},
	["world.quest.complete.01"] = {
		"Settled. One more debt of the road paid, and the next one already waiting.",
		"It is done and handed over. A small weight leaves me, and I notice how much I was carrying.",
		{ "Another task closed. Not every day is a story, but every day is a page.", depth = "elevated" },
	},
	["world.quest.complete.02"] = {
		"closes the matter with a nod, the way one shuts a door gently.",
		"hands over the end of the task and feels it go, like setting down a pack at the end of a long road.",
	},
	["world.quest.complete.03"] = {
		"A task is done. May the next find me as ready.",
		"That is one more promise kept. The road may ask what it likes of me now.",
		{ "It is finished. Let it be known that it was done properly.", depth = "literary" },
	},
	["world.quest.again.01"] = {
		"At last. It took me more tries than I will admit, and I will not admit it.",
		"Done, finally. The task and I had a long argument, and in the end I had the last word.",
		{ "Third time, fourth time, I lost count. The task is done, and so, a little, am I.", depth = "natural" },
	},
	["world.quest.again.e"] = {
		"lets out the breath {g:he|she} has been holding since the first failed try.",
		"closes the matter after more attempts than anyone cares to count, and leans on a wall to enjoy the silence.",
	},

	---------------------------------------------------------------------------
	-- reputation
	---------------------------------------------------------------------------
	["world.rep.up.neutral"] = {
		"The coldness has gone out of their voices. Neutral, they call it. I call it a start.",
		"They no longer look through me. It is not warmth yet, but it is not a closed door.",
	},
	["world.rep.up.friendly"] = {
		"A friendlier look than before. Trust is built one small favor at a time.",
		"They say my name more kindly now. I take care not to get used to it.",
		{ "Friendly, the word is. I have earned it by walking in, and I mean to keep it by walking on.", depth = "elevated" },
	},
	["world.rep.up.honored"] = {
		"Honored. The word is heavier than it sounds, and I mean to deserve it.",
		"They have gone from tolerating me to trusting me. It changes how a doorway feels.",
		{ "Honored among them. Somewhere along the road I stopped being a stranger.", depth = "elevated" },
	},
	["world.rep.up.revered"] = {
		"Revered. I came to do small things; somewhere along the way they added up.",
		"Revered, they say. I wonder whether they mean me, or the story they have made of me.",
		{ "They speak of me with a care that makes me careful. A good weight to carry.", depth = "natural" },
	},
	["world.rep.up.exalted"] = {
		"Exalted. There are no more doors left to earn; only the ones I open for others.",
		"Nothing more to prove to them. It leaves me an odd, quiet space to fill.",
		{ "At the summit, one has to decide what the summit is for.", depth = "elevated" },
	},
	["world.rep.down.cold"] = {
		"I have lost ground with them. It was not the plan; plans are poor at that.",
		"Some bridges burn on their own. This one, I fear, I lit myself.",
		{ "Their faces have closed to me. A lesson, if I choose to read it that way.", depth = "literary" },
	},
	["world.rep.down.e"] = {
		"feels the welcome cool, and says nothing, the way one does about a wound.",
		"takes the colder looks and the shorter answers as news, and files it away.",
	},

	---------------------------------------------------------------------------
	-- rest: an inn indoors, a city outdoors
	---------------------------------------------------------------------------
	["world.rest.inn.01"] = {
		"Warm walls, a roof, and nothing that needs killing. I could stay here a year.",
		"Walls that do not move, a fire that asks nothing. This is as close to home as the road gets.",
		{ "Indoors at last. My bones remember what chairs are for.", depth = "natural" },
	},
	["world.rest.inn.e"] = {
		"sets down {g:his|her} pack by the hearth and lets the road drain out of {g:his|her} legs.",
		"drops onto a bench and, for the first time in a long while, has nowhere to be.",
		{ "settles in a corner of the room where the fire is warm and the noise is of other people's lives.", depth = "elevated" },
	},
	["world.rest.town.01"] = {
		"Rest. The kind that comes when nobody is looking for you.",
		"Quiet streets and a place to be still. I have missed the sound of nothing happening.",
		{ "A moment's peace in a place that holds its own. I take it, and do not ask for more.", depth = "literary" },
	},
	["world.rest.town.e"] = {
		"slows to the pace of the streets, and feels the weight of the road settle a little.",
		"finds a quiet corner and breathes, as one does after a long climb that has no end in sight.",
	},

	---------------------------------------------------------------------------
	-- flights
	---------------------------------------------------------------------------
	["world.flight.start.01"] = {
		"The ground lets go. Whatever I leave behind down there, it gets smaller by the minute.",
		"Up. The world is a map now, and I am reading it from above.",
		{ "The wind has me, and the roads shrink to threads. For a while, nothing is my responsibility.", depth = "elevated" },
	},
	["world.flight.start.e"] = {
		"holds on as the world tilts away, and watches the roads shrink into threads below.",
		"sits very still as the earth drops back, and keeps both eyes on the horizon.",
		{ "rises into the open air, and the land unrolls below like a page that does not care who reads it.", depth = "elevated" },
	},
	["world.flight.start.02"] = {
		"Up we go. Let us hope whoever is flying this knows the way better than I do.",
		"Well. I have been in worse seats. Fewer of them were this high.",
	},
	["world.flight.arrive.01"] = {
		"Solid ground again. My legs take a moment to remember what it is for.",
		"The wind lets me go, and the road takes me back. We both pretend nothing happened.",
		{ "Down at last. The sky was fine; I simply prefer it from below.", depth = "natural" },
	},
	["world.flight.arrive.e"] = {
		"steps onto the ground and stands a moment, letting the sway of the air go out of {g:his|her} knees.",
		"touches down and takes two careful steps, as one does after the sea.",
	},
	["world.flight.long.01"] = {
		"After so long above the land, the ground feels like an old acquaintance.",
		"A long way, flown and finished. Down here, all the distances are small again.",
		{ "So much road behind me, and none of it walked. I wonder what that does to a journey.", depth = "elevated" },
	},
	["world.flight.long.e"] = {
		"steps off after the long flight, and the ground seems heavy and slow after so long among the clouds.",
		"lands at the end of a long crossing, and spends a moment simply standing on something that does not move.",
	},
	["mood.city.journey.01"] = {
		"The noise of the city falls away behind me, every errand and argument at once, and none of them mine anymore.",
		"Up and away. All that crowding and bargaining shrinks to a murmur, then to nothing.",
		"A whole city of voices, and in a few heartbeats I can't hear a single one.",
	},
	["mood.city.journey.02"] = {
		"Down into the crowd. After all that quiet up there, a city is a lot of people talking at once.",
		"Among people again. Mind the elbows; I've only just found my legs.",
	},
	["mood.city.rest_enter.01"] = {
		"Guards on every corner and nothing hunting me. I can loosen a strap or two.",
		"In a city, the worst danger is a bad bargain. I can live with that for a while.",
	},
	["mood.city.weather_change.01"] = {
		"The sky above is turning a new face. The city hasn't noticed: the stalls stay open and the crowd keeps moving.",
		"Whatever the sky is doing overhead, nobody down here looks up; there's business to finish.",
	},
	["mood.dark.journey.01"] = {
		"Feet on the ground, and the gloom settles on my shoulders like a cloak someone else has worn.",
		"Down from the flight, and the light seems thinner already. I'd have liked a longer trip.",
	},
	["mood.desert.journey.01"] = {
		"Down we come, into the dust. I'd forgotten how dry a mouth can get in one breath.",
		"Landed. And there's the dust, waiting like an old dog at the door.",
	},
	["mood.fire.journey.01"] = {
		"The flight sets me down, and the heat comes up to meet me like an open furnace door. I miss the wind already.",
		"On the ground again, and the ground is hot. The cool wind up there feels like a story now.",
	},
	["mood.jungle.journey.01"] = {
		"Down from the cool air, straight into a wet green heat that closes over me like a blanket.",
		"The moment I land, the air turns thick enough to drink. Somewhere close, something is shrieking about it.",
	},
	["mood.plague.journey.01"] = {
		"Landing here feels like walking into a sickroom with the windows nailed shut.",
		"The air changes on the way down. By the time my feet touch the ground, I already want to leave.",
	},
	["mood.plains.journey.01"] = {
		"As we climb, the grass runs together into one great color under the wind, broken only by a farm or a camp.",
		"Up here the open land finally makes sense: a single sweep from edge to edge, the wind moving over the grass like a hand.",
		"Rising over all that open country. From this height even the longest road looks like an afternoon's stroll.",
	},
	["mood.plains.weather_change.01"] = {
		"watches the sky change over the open land from far off, the shift rolling across the grass long before it arrives.",
		"turns to see the sky changing at the edge of the grassland, with plenty of time to make ready for it.",
	},
	["quest_complete.w01.01"] = {
		"Paid or not, it's off my mind. That alone was worth the walk.",
		"One less thing to carry in my head. The pack weighs the same, but I don't.",
		"Done. The best part isn't the reward; it's not having to think about it anymore.",
	},
	["quest_complete.w01.02"] = {
		"There. Exactly as asked. Next time, ask me something easy.",
		"All done, and only slightly worse for wear. You're welcome.",
		"Finished. If anyone needs me, I'll be sitting down with my feet up.",
	},
	["quest_complete.w01.03"] = {
		"allows {g:himself|herself} a small, private moment of satisfaction, and leaves it at that.",
		"permits {g:himself|herself} one quiet smile at a thing done properly, then puts it away.",
	},
	["quest_complete.w01.04"] = {
		"If someone was waiting on this, they're waiting a little less now. That's enough for me.",
		"Some worry, somewhere, just got smaller. I had a hand in that.",
	},
	["quest_complete.w01.05"] = {
		"I learned something doing that, though not what anyone asked me to learn.",
		"Every errand teaches something on the side. This one taught me patience, mostly by testing it.",
	},
	["quest_complete.w01.06"] = {
		"Done, and done with my own two hands. Nobody can take that part from me.",
		"Whatever the reward, the deed is mine, and my hands know it. I'll carry that longer than any coin.",
	},
	["race.dwarf.journey.001"] = {
		"The Wildhammer were born to this. Me, I was born to have a floor under my boots.",
		"Hold tight, dwarf. The ground's still down there; it's just in no hurry to catch you.",
		"Stone below, wind all around, and nothing in between but straps and hope.",
	},
	["race.dwarf.quest_complete.001"] = {
		"Finished. Not pretty, maybe, but sound. A dwarf would always rather have sound.",
		"Job's done. I'd stamp my maker's mark on it, if I had one.",
		"Every task is a piece of work. This one will hold.",
	},
	["race.dwarf.quest_complete.002"] = {
		"Done! If the Explorers' League ever asks, I want this one written down properly.",
		"Another tale for the hearth back home. It'll grow a little every time I tell it.",
		"Finished. Somebody fetch a chronicler; my memory improves with every retelling.",
	},
	["race.dwarf.quest_complete.003"] = {
		"dusts off {g:his|her} hands with two firm claps, like a miner at the end of a shift.",
		"gives a short, satisfied nod and tucks the matter away, the way a smith racks a finished tool.",
		"rolls {g:his|her} shoulders like someone setting down a full hod of stone.",
	},
	["race.dwarf.quest_progress.001"] = {
		"One more cart of ore up the shaft. Plenty still down there, mind.",
		"Progress, stone by stone. The halls of Ironforge weren't carved in an afternoon either.",
	},
	["race.gnome.journey.001"] = {
		"Lift-off! I'd love to see the wing mechanics up close. From a safe distance. Which this is not.",
		"Altitude rising. Heart rate also rising. Both within acceptable limits, I hope.",
		"Up we go! Note to self: design something that flies without needing to be fed.",
	},
	["race.gnome.quest_complete.001"] = {
		"Task complete! Efficiency: acceptable. Explosions: none worth mentioning.",
		"Job done, and nothing caught fire. Somebody write that down.",
		"Finished! I'd file a report, but I'd only end up redesigning the form.",
	},
	["race.gnome.quest_complete.002"] = {
		"Done. Noted what worked, noted what didn't. The second list is always the more useful.",
		"Another problem solved. Not elegantly, but solved; elegance can wait for version two.",
		"Every finished task is the prototype of the next one. This one taught me plenty.",
	},
	["race.gnome.quest_complete.003"] = {
		"ticks an imaginary box in the air with a small, precise flourish.",
		"rubs {g:his|her} hands together like an inventor watching a machine finally start.",
		"makes a tiny note in an even tinier notebook and underlines it twice.",
	},
	["race.gnome.quest_progress.001"] = {
		"Progress: measurable. Completion: pending. Morale: surprisingly good.",
		"Part one works. Parts two to whatever, we shall see.",
	},
	["race.human.journey.001"] = {
		"Feet on the ground. Humans were made to walk; I'm sure of it now.",
		"Down at last. I'll leave the sky to the birds and to braver folk.",
		"Solid earth. I could kiss it, if nobody were watching.",
	},
	["race.human.quest_complete.001"] = {
		"A job done and a promise kept. In the villages, that's how you earn your name.",
		"Word given, word kept. Where I come from, that's worth more than any reward.",
		"Done. Somebody out there can stop worrying about one thing, at least.",
	},
	["race.human.quest_complete.002"] = {
		"Done, and without filling a single form in triplicate. Stormwind's clerks would faint.",
		"Finished! If only the Stormwind treasury paid this promptly.",
		"There. If anyone wants it in writing, I know a clerk who'll lose it.",
	},
	["race.human.quest_complete.003"] = {
		"straightens and lets out a long breath, shoulders easing like a farmhand's at the end of harvest.",
		"wipes {g:his|her} palms on {g:his|her} clothes, a plain gesture from a land of plain work.",
		"allows {g:himself|herself} a small, tired smile, the kind kept for jobs nobody else wanted.",
	},
	["race.human.quest_progress.001"] = {
		"That's all of it. Now the walk back, and a word with whoever asked.",
		"Done, near enough. Better go and say so before something comes undone.",
	},
	["race.nightelf.journey.001"] = {
		"Up, into the wind. The world looks younger from up here, and I know better.",
		"Rising. Below, forests older than me and forests younger slip away like friends taking leave.",
		"Wings and wind. For a while I am as unhurried as the clouds.",
	},
	["race.nightelf.quest_complete.001"] = {
		"Done. A small thing, measured against the centuries, and still worth doing well.",
		"Finished. The forest teaches that small deeds, kept up, become a shape that can be seen from far away.",
		"Complete. In a hundred years no one will remember it, and still it will have mattered.",
	},
	["race.nightelf.quest_complete.002"] = {
		"inclines {g:his|her} head slightly, a quiet courtesy that closes the matter without a word.",
		"draws a slow breath and lets it go, as unhurried as leaves settling after the wind.",
		"rests a hand over {g:his|her} heart a moment, then lets the matter go.",
	},
	["race.nightelf.quest_complete.003"] = {
		"It is done. May it bear fruit in its season.",
		"Finished. A seed planted; let us see what grows.",
		"There. Ande'thoras-ethil: may your troubles be fewer now.",
	},
	["race.nightelf.quest_progress.001"] = {
		"Part of it done. The rest will come as leaves come, each in its turn.",
		"Progress. Slow, but the oldest trees grew the same way.",
	},
	["race.orc.journey.001"] = {
		"Up, on the back of a beast that could eat me. The Horde runs on trust like this.",
		"The land drops away. From up here it is hard to say whose it is, and that is a strange comfort.",
		"Off we go. An orc's place is on the ground, but I will admit the view is fine.",
	},
	["race.orc.quest_complete.001"] = {
		"Done. Tell them an orc did it, and did it properly.",
		"Finished. My word was iron, as it should be.",
		"That's settled. Next time, give me something harder.",
	},
	["race.orc.quest_complete.002"] = {
		"In the camps nobody asked anything of us but silence. It is good to be asked for something, and to give it.",
		"Work for my own people, by my own choice. The internment camps never allowed that.",
		"A task done freely is worth ten done under a whip. I know which kind this was.",
	},
	["race.orc.quest_complete.003"] = {
		"There. Now where is the food?",
		"Done. Zug zug. Don't make me do it twice.",
		"Finished. If anyone asks, it was much harder than it looked.",
	},
	["race.orc.quest_progress.001"] = {
		"That's all of it. Now to bring the word back, and see their faces.",
		"The work is done. The rest is walking back, and orcs are good at walking.",
	},
	["race.scourge.journey.001"] = {
		"Up and away. The wind goes straight through me, which saves it the trouble of going around.",
		"Flying. If I fall, at least it won't be the first time I've died.",
		"The world shrinks below. From up here you can't tell which fields the plague took.",
	},
	["race.scourge.quest_complete.001"] = {
		"Done. You may stop staring now.",
		"There. No need to thank me, and no need to stand so far away.",
		"Finished. I'd shake your hand, but you would rather I didn't.",
	},
	["race.scourge.quest_complete.002"] = {
		"I chose to do that. No voice in my head but mine. It still feels like a small miracle.",
		"A task taken up and carried to the end by my own will. The Scourge never gave me that.",
		"Done, and done because I decided so. Each time it tastes a little less strange.",
	},
	["race.scourge.quest_complete.003"] = {
		"inclines {g:his|her} head with stiff courtesy, a gesture from a life long buried.",
		"hands the matter over and steps back, like someone used to people preferring a little distance.",
		"gives a dry, rasping sound that might once have been a satisfied sigh.",
	},
	["race.scourge.quest_progress.001"] = {
		"Part of it, then. I have patience to spare; it's one of the few things I kept.",
		"Not done, but moving. Like me.",
	},
	["race.tauren.journey.001"] = {
		"A tauren in the sky. My grandfathers would laugh, and then hold on to the saddle with both hands, as I am doing now.",
		"Hooves were made for the earth. Up here I keep them very still and try not to think about how far away the grass is.",
		"The beast beneath me grunts. I suspect it is working out my weight and does not like the sum.",
	},
	["race.tauren.quest_complete.001"] = {
		"Done as I said it would be. Among my people a promise is like a hoofprint in clay: it hardens, and it stays.",
		"Word kept. An elder would nod and say nothing, which from an elder is a great deal.",
		"Finished, and finished properly. The elders would call that the only way to finish anything.",
	},
	["race.tauren.quest_complete.002"] = {
		"There you are. Next time, ask me for something heavy; that is what I am built for.",
		"All done. If you need anything carried, pushed, or sat on, you know where to find me.",
		"Finished. Was that all? I barely had to duck.",
	},
	["race.tauren.quest_complete.003"] = {
		"touches {g:his|her} chest with an open hand, as if putting something back where it belongs.",
		"dips {g:his|her} horns in a slow, contented nod.",
		"lets the matter go with the calm of someone used to long seasons and longer roads.",
	},
	["race.tauren.quest_progress.001"] = {
		"That is all of it. Now the long walk back, which is the part my legs enjoy.",
		"Everything asked is done. A tauren goes back the way a herd does: unhurried, but sure of the road.",
	},
	["race.troll.journey.001"] = {
		"Back on the ground. My stomach is still somewhere over the last hill.",
		"Earth. Good. Trolls belong on the earth, or in trees, or in water. Not up in the clouds.",
		"Landed. I was not scared. My hands were just holding on for reasons of their own.",
	},
	["race.troll.quest_complete.001"] = {
		"Done, mon. Easy work, if you don't count the hard parts.",
		"There you go. Pay me in coin, or in something good to eat. Either one.",
		"All finished. Now, is there a hammock anywhere around here?",
	},
	["race.troll.quest_complete.002"] = {
		"A job done is a small offering too. The loa notice who keeps their word.",
		"Finished. I leave a pinch of something for the spirits, out of habit, and walk on.",
		"That debt is paid. A troll with no debts sleeps easy, and the loa leave you be.",
	},
	["race.troll.quest_complete.003"] = {
		"flicks one long ear and grins, tusks and all, as if this had been the plan from the start.",
		"stretches long arms over {g:his|her} head until something cracks, and looks pleased with the day.",
		"gives a lazy two-finger salute and an even lazier grin.",
	},
	["race.troll.quest_progress.001"] = {
		"Halfway, maybe. The loa like a story that has a middle.",
		"Some of it done. The rest can wait for me; it isn't going anywhere.",
	},
	["weather_change.w01.01"] = {
		"The sky has changed its mind. Mine stays where it was.",
		"Up in the sky, something's shifting. Down here, the plan holds.",
	},
	["band.b10_20.quest_complete.01"] = {
		"Another one done. I'm starting to have a reputation. A small one, but it knows my name.",
		"Done. Folk around here have started nodding at me in the street. I could get to like that.",
		"Finished, and nobody had to come and rescue me. Progress.",
	},
	["band.b10_20.quest_complete.02"] = {
		"The pay is better than it used to be. So are the bruises, in their way: they heal faster.",
		"I'm earning enough now to buy something I want instead of only what I need. I haven't yet. But I could.",
	},
	["band.b10_20.quest_complete.03"] = {
		"weighs the purse in one hand, nods once, and tucks it somewhere safer than the last one.",
		"counts the reward without hurry, then pats the pocket twice with one hand to be sure it's still there.",
	},
	["band.b10_20.quest_progress.01"] = {
		"Part of it done. I'm learning to keep the rest in my head instead of on scraps of paper.",
		"Halfway there. I used to lose track of these. Not anymore.",
	},
	["band.b1_10.quest_complete.01"] = {
		"Done, and paid in real coin. I could get used to this.",
		"A job finished and a purse a little heavier. Small purse, small job, but mine.",
	},
	["band.b1_10.quest_complete.02"] = {
		"They thanked me as if I'd done something large. It was an errand any neighbor could have run. I'm keeping the thanks anyway.",
		"Somebody in this world now owes me a small favor. I don't know what to do with that yet, but I like it.",
	},
	["band.b20_30.quest_complete.01"] = {
		"Done. Folk are starting to send for me by name. I'm not sure when that happened.",
		"Finished. The jobs are getting bigger, and so, thankfully, is the pay.",
		"Another one handled. I'm getting good at this, which is either encouraging or worrying.",
	},
	["band.b20_30.quest_complete.02"] = {
		"Paid, thanked and pointed at the next problem. That seems to be the shape of things now.",
		"I used to celebrate every finished job. Now I check my supplies and ask what's next.",
		"One more knot in the world untied. There's always another knot.",
	},
	["band.b20_30.quest_complete.03"] = {
		"accepts the thanks with a short nod, the way someone does who has heard a fair few of them by now.",
		"tucks the reward away without counting it twice, a small luxury earned somewhere along the road.",
	},
	["band.b20_30.quest_complete.04"] = {
		"Done. I'd say it was easy, but my back would call me a liar.",
		"Job's finished. I'm keeping the bruises as a receipt.",
	},
	["band.b20_30.quest_progress.01"] = {
		"That's everything. Now the long walk to tell them.",
		"All done out here. Going to report is the easy part, usually.",
	},
	["band.b30_40.quest_complete.01"] = {
		"Done. Not my hardest, not my easiest. A good honest day's work.",
		"Finished. I've stopped expecting songs about it, which makes the pay feel better.",
		"There. Tell them it's handled. They'll know who to send for next time.",
	},
	["band.b30_40.quest_complete.02"] = {
		"The reward is fine. What I really keep is knowing how it went, and how I'd do it better.",
		"Another job, another lesson filed away. My head is turning into a library of mistakes not to repeat.",
		"I don't remember the faces of the first people I worked for. I'll remember this one. Funny how that changes.",
	},
	["band.b30_40.quest_complete.03"] = {
		"accepts payment with the unhurried manner of someone who has done this many times and will be back on the road soon enough.",
		"listens to the thanks, nods at the right moments, and is plainly already thinking about the road.",
	},
	["band.b30_40.quest_complete.04"] = {
		"Done. Next time, ask someone cheaper. Oh, wait. There isn't anyone.",
		"Handled. I accept payment in coin, gratitude and decent food, in that order.",
	},
	["band.b30_40.quest_complete.05"] = {
		"Someone will sleep easier because of today. I won't meet them, and that's all right.",
		"The people who'll benefit most from this will never know my name. Somehow that sits well with me.",
	},
	["band.b30_40.quest_progress.01"] = {
		"Some of it done. Patience: these things always take longer than the one asking thinks.",
		"A piece in place. I've stopped expecting jobs to go in a straight line.",
		"Progress. Slow, but the kind that sticks.",
	},
	["band.b40_50.quest_complete.01"] = {
		"Done. That one had teeth, but so do I.",
		"Finished, and properly. I don't leave jobs half-done anymore; they have a way of growing.",
		"It's handled. Pay me, and point me at the next mess.",
	},
	["band.b40_50.quest_complete.02"] = {
		"The rewards are better than they were. I notice I care about them less.",
		"A good job, done well. These days that's the part that pleases me, more than the purse.",
		"Coin comes and goes. What stays is the quiet sense of a thing finished properly.",
	},
	["band.b40_50.quest_complete.03"] = {
		"takes the reward and the thanks with equal calm, as if both were clouds that would pass.",
		"listens to the gratitude with a tired half-smile that has heard every version of it.",
		"pockets the payment without looking at it, eyes already on the horizon.",
	},
	["band.b40_50.quest_complete.04"] = {
		"Good. One less thing for folk to fear. There are plenty more.",
		"Done. It won't fix the world, but it fixes a corner of it.",
	},
	["band.b40_50.quest_complete.05"] = {
		"I caught myself judging the reward by what it would sell for. When did I get so practical?",
		"A few years ago I'd have bragged about this for a week. Now I'm mostly thinking about a bath.",
	},
	["band.b40_50.quest_progress.01"] = {
		"That's the lot. Now someone gets their good news.",
		"All of it done. The report will be shorter than the work was.",
		"Finished out here. Time to go and collect my thanks and my next problem.",
	},
	["band.b50_60.quest_complete.01"] = {
		"It's done. Tell whoever needs telling that it won't trouble them again.",
		"Handled. Not a small thing, that one. I'm glad it fell to someone who could finish it.",
		"Finished. The world is a little safer and I'm a little more tired. Fair trade.",
	},
	["band.b50_60.quest_complete.02"] = {
		"The people who hand me work now have worried faces and long memories. The work has grown up along with me.",
		"The jobs I'm given these days are the ones nobody else could finish. I try not to let it go to my head; mostly, it's just heavy.",
		"Once, a finished job meant a hot meal. These days it can mean a lot of people never learn how close it came.",
	},
	["band.b50_60.quest_complete.03"] = {
		"accepts the thanks with grave courtesy, the way one accepts a debt that will be called in someday.",
		"takes the reward and inclines {g:his|her} head, a small gesture carrying the weight of many such moments.",
	},
	["band.b50_60.quest_complete.04"] = {
		"Done. Do I get a statue? No? A sandwich, then.",
		"Finished. I'd make a speech, but I'm saving my breath for whatever's next.",
	},
	["band.b50_60.quest_complete.05"] = {
		"Another favor done for people I'll likely never see again. It used to sting. Now it feels like the point.",
		"The rewards barely matter now. I keep doing it because I can, and because the list of those who can is short.",
	},
	["band.b50_60.quest_progress.01"] = {
		"One part done. The rest will take patience, and patience is the one thing I've got plenty of now.",
		"Progress. I don't rush these anymore; I've seen what rushing costs.",
		"Some of it finished. I'll do the rest properly, the slow way, the way that works.",
	},
	["band.b60.quest_complete.01"] = {
		"Done. Consider it a favor to the world, not to me.",
		"It's taken care of. Save your thanks for someone who still needs them.",
		"Handled. Don't thank me; just do the same for someone else someday.",
	},
	["band.b60.quest_complete.02"] = {
		"A small task, by my measure now. To them it was everything. I try never to forget the second part.",
		"It barely cost me a morning. It'll mean a season of peace for someone.",
		"Easy work, at this point. That's exactly why I keep doing it: the hard part is choosing to bother.",
	},
	["band.b60.quest_complete.03"] = {
		"hears the gratitude out with patient kindness, as one listens to a story heard many times and still worth hearing.",
		"lingers a moment after the thanks, as if the task deserved one more look before being set down.",
	},
	["band.b60.quest_complete.04"] = {
		"Done. I'll add it to the list of things nobody believes I did on my own.",
		"Finished. At this point it's less a quest and more a house call.",
	},
	["journey.clear.w02.01"] = {
		"A clear sky to fly in. I can see so far that the horizon looks like a rumor finally confirmed.",
		"Up, with nothing between me and the far edge of the land but clean air.",
	},
	["journey.day.w02.01"] = {
		"Up into the daylight. From here the whole land is laid out plain, roads and rivers and all the small business in between.",
		"A daytime flight: everything below is as clear as a map someone took care over.",
	},
	["journey.night.w02.01"] = {
		"Flying by night. Below, the land is dark except for a few fires, small and stubborn as promises.",
		"Up into the night air. The ground goes dark beneath me, and only the wind says we're still moving.",
	},
	["mood.city.journey.w02.01"] = {
		"comes down off the flight into the clamor of the city and takes a moment, letting the noise find its level.",
		"sets foot back among the crowds and the stone, the quiet of the sky giving way to market voices.",
	},
	["mood.coast.journey.w02.01"] = {
		"Down by the water. After the flight the air is heavy with salt, and it tastes like the end of a road.",
		"Landed, and the first thing I hear is the surf. A good sound to arrive to.",
	},
	["mood.dark.journey.w02.01"] = {
		"Up and out of the gloom. I didn't know how heavy it was until the wings lifted it off me.",
		"The wings climb and the murk falls away below. Strange how much easier it is to breathe up here.",
	},
	["mood.forest.journey.w02.01"] = {
		"Down out of the open air and under the branches. The light goes green and soft, and my shoulders follow.",
		"Landed. After all that sky, the trees feel close and kind, like a roof that grew itself.",
	},
	["mood.mountain.journey.w02.01"] = {
		"Up and over the ridges. From here the mountains look tame, which I know is a lie.",
		"The peaks drop below the wings one by one. I've climbed slower and seen less.",
	},
	["mood.plains.journey.w02.01"] = {
		"Down. Grass and sky as far as I can see. Good: nothing's hiding.",
		"Back on the ground. The wind out here runs almost as fast as the flight did.",
	},
	["mood.ruin.journey.w02.01"] = {
		"Down, into a land of broken walls. From above, the old foundations looked like a drawing someone gave up on.",
		"On the ground among stones that used to be something. The flight was the cheerful part.",
	},
	["mood.swamp.journey.w02.01"] = {
		"steps down from the flight and catches the smell of standing water and rot all at once.",
		"lands in thick, wet air, and the first gnat finds {g:him|her} before the second step.",
	},
	["race.dwarf.journey.w02.01"] = {
		"Down, and the ground stays put. That's the whole of my opinion on flying.",
		"Solid ground again. Flying's for birds and fools, and today I was both.",
	},
	["race.gnome.journey.w02.01"] = {
		"Landing gear: legs. Performance: wobbly but acceptable.",
		"Touchdown confirmed. Note to self: design a softer landing.",
	},
	["race.human.journey.w02.01"] = {
		"Up and off. The land below turns into a map, and I keep looking for the little roads that lead home.",
		"The ground drops away, and every small worry with it. They'll be waiting when I land, but for now they're far below.",
	},
	["race.nightelf.journey.w02.01"] = {
		"Down from the wind. My feet find the ground the way roots do: slowly, and then for good.",
		"The flight is over. I let the stillness of the earth settle back into me before I walk on.",
	},
	["race.orc.journey.w02.01"] = {
		"Ground. Good. The beast flew well, but I trust my own feet more.",
		"Back on the ground. Now I can fight properly again.",
	},
	["race.scourge.journey.w02.01"] = {
		"Down on the ground. It doesn't care what I am, which makes it better company than most.",
		"Feet on the ground. Nothing in me complains about the flight. Nothing in me complains about much, anymore.",
	},
	["race.tauren.journey.w02.01"] = {
		"Hooves on the earth at last. The Earth Mother holds me up better than any wing.",
		"The sky was kind, but the earth is home. I feel it under my hooves before I see it.",
	},
	["race.troll.journey.w02.01"] = {
		"Up, up, mon! Look at all that, so small. Not so scary from here, eh?",
		"Off we go! The wind be strong up here, so hold on tight, mon.",
	},
	["weather_change.w02.01"] = {
		"glances up as the sky shifts its weight, then tightens a strap and walks on without comment.",
		"looks up at the turning sky, shrugs the pack higher on {g:his|her} shoulders, and keeps going.",
	},
	["journey.w04.001"] = {
		"Nothing to do now but sit and be carried. I'd forgotten how rare that is.",
		"For once the road is someone else's problem. I'll just hold on and watch.",
		"No reins in my hands, no path to choose. Strange, how restful it is to have no say.",
	},
	["journey.w04.002"] = {
		"Steady, steady. I'm told the trick is not to look down. I'm told a lot of things.",
		"Wings, straps and nothing underneath. I've agreed to stranger things, though I can't think of one right now.",
	},
	["journey.w04.003"] = {
		"settles into the saddle as the wings find their rhythm, and the ground below begins to look like someone else's business.",
		"grips the harness as the beat of great wings carries {g:him|her} up and away from the roost.",
		"rises on steady wingbeats, and everything that was large a moment ago becomes something {g:he|she} could cover with a thumb.",
	},
	["journey.w04.004"] = {
		"Up here, nobody can ask anything of me. The rush of air takes every voice away.",
		"From this high, every trouble down there looks the same size. Small, and someone else's.",
		"No one can reach me for a while. It's the closest thing to quiet I'll get.",
	},
	["journey.w04.005"] = {
		"Off we go! Whoever packed my stomach, please check it's still on board.",
		"And up! If I shout, it's enthusiasm. Mostly.",
	},
	["journey.w04.006"] = {
		"My legs have earned this. Let the wings do the walking for a while.",
		"Good. Every league up here is a league my feet don't have to argue with.",
	},
	["journey.w04.007"] = {
		"The world never looks this simple from the ground. I know it's a lie. I'll enjoy it anyway.",
		"Everything below fits together from up here, as if it had been planned. It wasn't, but it's nice to pretend.",
	},
	["journey.w04.008"] = {
		"leans into the first wide turn without meaning to, and then pretends that was on purpose.",
		"keeps one hand on the strap and the other free, as if to wave at something below, and does not.",
	},
	["journey.w04.009"] = {
		"The ground comes back up to meet me, the way it always does. Thank you, ground.",
		"Down. My knees aren't sure yet, but the rest of me is glad.",
		"Feet first, then the rest of me catches up. Landed.",
	},
	["journey.w04.010"] = {
		"slides down from the saddle and stands for a moment, letting the hum of the wings fade out of {g:his|her} ears.",
		"climbs down stiffly, and works the cramp out of one leg before trusting it with any weight.",
		"lands, unbuckles, and gives the sky one last look over the shoulder, as if to make sure it stays up there.",
	},
	["journey.w04.011"] = {
		"Fingers, toes, pack. All present. I'll call that a good flight.",
		"Down in one piece, which is the only review a flight needs.",
		"There. Down, with everything attached and only a little rearranged.",
	},
	["journey.w04.012"] = {
		"Back to walking pace. Things have their proper size again, and so do I.",
		"From up there it all looked so tidy. Down here it's back to boots and the long way round.",
	},
	["journey.w04.013"] = {
		"Right, then. Where's the nearest place that doesn't move under me?",
		"Down. Now point me at whatever brought me here.",
	},
	["journey.w04.014"] = {
		"steps off at the end of the long flight with the ache of the saddle in every joint, and stretches until something cracks.",
		"comes down from the long crossing stiff in every joint, and spends a while walking in small circles to remember how legs work.",
	},
	["journey.w04.015"] = {
		"That was long enough for my legs to file a complaint. They're filing it now.",
		"So much sky behind me that the ground feels like news.",
	},
	["journey.w04.016"] = {
		"A different air, different voices. Nothing changes the whole picture as fast as a flight.",
		"I got here faster than my worries could follow. Let's enjoy the head start while it lasts.",
	},
	["journey.w04.017"] = {
		"The wings turn back the way they came, and I'm left with the ground and my own two feet. As it should be.",
		"Down, and back to the old partnership: me and the road.",
	},
	["landmark.w04.001"] = {
		"{landmark}. A name someone thought worth giving. I'll give it a moment of my attention, at least.",
		"{landmark}. Somebody cared enough about this spot to name it. That's always worth a look.",
		"So this is {landmark}. Smaller than the name, or bigger. It's never quite the same size as the name.",
	},
	["landmark.w04.002"] = {
		"takes in {landmark} with a slow look, the way one learns a face to know it again later.",
		"commits the look of {landmark} to memory, one detail at a time, in case the road ever leads back.",
		"pauses at {landmark} and turns once, slowly, to fix where it stands among everything else.",
	},
	["landmark.w04.003"] = {
		"{landmark}. Good. It exists, then; I'd half suspected the maps of making things up.",
		"Ah, {landmark}. Exactly as advertised, more or less.",
		"{landmark}. Worth the walk? Ask me again when I've had a look around.",
	},
	["landmark.w04.004"] = {
		"{landmark}. Good to have something on the map I can put my finger on.",
		"{landmark}. One fixed point, anyway. The rest of the day can arrange itself around it.",
		"{landmark}. Now I know where I am, which is more than I could say a while ago.",
	},
	["landmark.w04.005"] = {
		"looks {landmark} over with frank, unhurried interest, the way one sizes up a new acquaintance.",
		"reaches {landmark} and gives the place the courtesy of a proper look before anything else.",
	},
	["quest_complete.w04.001"] = {
		"Hands empty again. Funny how much lighter they feel than when they were full of someone else's business.",
		"Nothing left in my hands that belongs to anyone else. That is a good way to stand.",
		"My hands are my own again. I'd forgotten how that feels.",
	},
	["quest_complete.w04.002"] = {
		"Done. I'd like that written down somewhere, preferably in large letters.",
		"Finished, and nobody had to carry me home. Mark the day.",
		"That's settled. If it comes undone, I'd rather not hear about it.",
	},
	["quest_complete.w04.003"] = {
		"lets the last of the errand go out in one long breath, and rolls a stiff shoulder.",
		"straightens after the handover, and for a moment simply stands there, owing nothing to anyone.",
	},
	["quest_complete.w04.004"] = {
		"Already the details are going. In a month I'll remember that I did it, and little of how.",
		"Strange how fast a finished task goes soft at the edges. Soon it will be one more thing I once did.",
		"I'll forget the shape of this one soon enough. The ache in my legs will remind me a day or two longer.",
	},
	["quest_complete.w04.005"] = {
		"My word was given, and now it is kept. That is all a word is for.",
		"I said I would see it through. I have. Nothing more to say about it.",
		"Promised, and delivered. Let that be the whole of my reputation.",
	},
	["quest_complete.w04.006"] = {
		"Every time I finish one of these, I tell myself it was the last favor. Every time, I lie.",
		"I keep saying I'll stop running errands for strangers. Strangers keep having errands.",
		"One more favor for one more stranger. At this rate I'll know half the world by their troubles.",
	},
	["quest_complete.w04.007"] = {
		"tries to look modest about it, and does not quite manage.",
		"puts on a modest face for the occasion, which fits about as well as borrowed boots.",
	},
	["quest_complete.w04.008"] = {
		"Small work, maybe. But the world is mostly made of small work, and someone has to do it properly.",
		"Nobody will sing about this. Good. The things worth doing rarely get songs.",
		"It won't change the world. It changed one corner of it, for a while, and I was the one standing there.",
	},
	["quest_complete.w04.009"] = {
		"Right. That's off the list. What's left on it can wait for my boots to stop aching.",
		"Good. Done. Nobody ask me for anything for a little while.",
		"Finished. Anyone with a new job for me can take a number.",
	},
	["quest_complete.w04.010"] = {
		"A task is a road with an end you can see. I have walked this one to its end. The others still curve out of sight.",
		"Each thing I finish is a milestone, and I am beginning to have a long row of them behind me.",
	},
	["quest_complete.w04.011"] = {
		"wipes both palms down the front of {g:his|her} gear, as if the task had left something on them, and moves on.",
		"flexes the fingers of one hand, slowly, the way a craftsman does at the end of a piece of work.",
	},
	["quest_complete.w04.012"] = {
		"They always look so surprised when it's actually done. I try not to take it personally.",
		"That face people make when you come back with it finished. Half relief, half disbelief. I'm collecting them.",
		"Every time, the same look: as if they'd half expected never to see me again.",
	},
	["quest_complete.w04.013"] = {
		"Another one. Let them add it to the tally, if anyone is keeping one.",
		"That's how it's done. Remember who did it.",
		"Write it down. I want this one remembered.",
	},
	["quest_complete.w04.014"] = {
		"Done, and no one to tell who would understand what it cost. That's all right. I know.",
		"It's the quiet after a finished task I never get used to. Everyone goes back to their day, and so must I.",
		"The end of a task is a lonely little moment. It passes. They always do.",
	},
	["quest_complete.w04.015"] = {
		"gives a short, formal nod, the kind that closes an account between two parties.",
		"inclines {g:his|her} head once, and the matter is closed with as little ceremony as it was opened.",
	},
	["quest_complete.w04.016"] = {
		"Good. Now I can think about food again, which my stomach has been suggesting for some time.",
		"One task down. My stomach has been very patient about it, and now it wants its share.",
		"First the task, then the rest of me. The rest of me would like a meal.",
	},
	["quest_complete.w04.017"] = {
		"Something in me is a little steadier than it was when I took this on. I'll keep that and leave the rest.",
		"Whatever I was when I accepted this, I am a little more than that now. Not much. Enough.",
	},
	["quest_complete.w04.018"] = {
		"No need for a speech. A simple 'well done' and a chair would be plenty.",
		"Don't thank me all at once. Actually, don't thank me. Just point me somewhere I can sit.",
		"Please, no fuss. I'll settle for a nod and somewhere quiet.",
	},
	["quest_complete.w04.019"] = {
		"One closed. I can already feel the next one tugging at my sleeve.",
		"Finished, and already the next thing is clearing its throat behind me.",
		"Is it done? It's done. Good. Now, what was the next thing...",
	},
	["quest_complete.w04.020"] = {
		"taps the side of {g:his|her} pack twice, the small habit of a traveler when one thing ends and another has not yet begun.",
		"glances back the way the task led, as if to fix it in memory, then turns to face the other way.",
	},
	["quest_complete.w04.021"] = {
		"I know a little more about this corner of the world than I did. Nobody paid me for that part, and it's the part I'll keep.",
		"Whatever else it was, it was a lesson in how things work around here. I'll remember that longer than the reward.",
	},
	["quest_complete.w04.022"] = {
		"That's that, then. On to whatever's next.",
		"Finished. I'll not pretend it was hard, and I'll not pretend it was nothing.",
		"It's done. I'd do it again, but I'd rather not have to.",
	},
	["quest_complete.w04.023"] = {
		"I never know, handing these things over, whether I've ended someone's trouble or only moved it along.",
		"Over and done. Whether it mends anything is out of my hands now. I hope it does.",
	},
	["quest_complete.w04.024"] = {
		"counts on {g:his|her} fingers for a moment, loses track, and decides it was a good day's work regardless.",
		"looks around as if expecting a fanfare, finds none, and seems relieved about it.",
		"nods to no one in particular, the way people do when they have surprised themselves a little.",
	},
	["quest_complete.w04.025"] = {
		"There's always a point where a task could be dropped. I didn't drop this one. That's worth something.",
		"It would have been easy to walk away from it halfway. Most things would be. I didn't.",
	},
	["quest_complete.w04.026"] = {
		"Glad to be of use. Truly. It's a rare enough feeling to be worth saying out loud.",
		"I'm glad it was me you asked. That isn't nothing.",
	},
	["quest_complete.w04.027"] = {
		"Half of it was walking, a quarter was waiting, and the rest I'd rather not talk about. Still, done.",
		"If I wrote down how that actually went, nobody would hire me again. Lucky nobody asks.",
		"It went more or less to plan, if the plan was mostly improvising. Done is done.",
	},
	["quest_complete.w04.028"] = {
		"stands a moment between one errand and the next, in that short, unclaimed space that belongs to no one else.",
		"lingers a breath longer than needed, as if the end of a task were a threshold worth standing on.",
	},
	["quest_complete.w04.029"] = {
		"It's a good feeling, a finished thing. I should collect more of them.",
		"Nothing grand. Just one thing that was broken and isn't now, or was missing and isn't now. I'll take it.",
	},
	["quest_complete.w04.030"] = {
		"Next time someone says 'it'll only take a moment', I'm bringing a witness.",
		"Every task starts out as 'a small favor'. I'm learning to translate that.",
	},
	["quest_complete.w04.031"] = {
		"One knot fewer in the world's tangle. I won't pretend the tangle noticed.",
		"Every finished task is a knot untied. The world has plenty more, but this one hangs loose now.",
	},
	["quest_complete.w04.032"] = {
		"shifts {g:his|her} weight from one sore foot to the other, task done, and is in no hurry to go anywhere.",
		"lets {g:his|her} shoulders drop a full inch, as if a strap had just been cut.",
	},
	["quest_complete.w04.033"] = {
		"Free again, for a moment. No one's errand in my pocket. The map is all mine until I agree to something else.",
		"This is the best part: the short stretch when I belong to no task at all.",
	},
	["quest_progress.w04.001"] = {
		"Part of it, at least. The rest is out there somewhere, not hurrying to meet me.",
		"That piece is done. The other pieces are being difficult about it.",
		"Progress. Not the whole thing, but the whole thing never arrives all at once.",
	},
	["quest_progress.w04.002"] = {
		"checks off the last of it, and turns with the walk back already in mind.",
		"finishes the final part of the errand; all that remains of the work is the way back.",
	},
	["quest_progress.w04.003"] = {
		"That part's done. Don't stop now, it's only half a job.",
		"Good. Still more owed, but good.",
		"Closer. Not there, but closer.",
	},
	["subzone_enter.w04.001"] = {
		"passes some unmarked border into {subzone}, and starts noticing things all over again.",
		"enters {subzone} with the alert, unhurried look of someone taking stock.",
		"comes into {subzone} and slows a fraction, the way anyone does when a place changes its name.",
	},
	["subzone_enter.w04.002"] = {
		"{subzone}. Same world, different name. Let's see if the name earns it.",
		"Here begins {subzone}, if the map is to be believed. Maps usually are, about names.",
		"{subzone}. Another heading on the day's page.",
	},
	["subzone_enter.w04.003"] = {
		"{subzone}. Lovely name. Let's hope the place lives up to it, or at least doesn't bite.",
		"Ah, {subzone}. I'll behave if it does.",
		"{subzone}! Somebody went to the trouble of naming this. Let's find out why.",
	},
	["subzone_enter.w04.004"] = {
		"Every name on the map was someone's whole world once. {subzone} too, I suppose.",
		"{subzone}. I wonder how many people have walked in here thinking about something else entirely, like me.",
		"{subzone}. Somebody's home, somebody's shortcut, somebody's bad memory. Today it's my next few steps.",
	},
	["subzone_enter.w04.005"] = {
		"notes the name {subzone} with the faint satisfaction of someone ticking off a list.",
		"registers {subzone} with a small nod, like a greeting in passing.",
	},
	["subzone_enter.w04.006"] = {
		"{subzone}. I note the name, the ways in and the ways out. The rest can wait.",
		"{subzone}. First thing in any place: where are the exits. Second: who else is here.",
		"{subzone}. Lay of the land first, opinions later.",
	},
	["subzone_enter.w04.007"] = {
		"{subzone}. Fine. Eyes open and hands where they can reach something.",
		"{subzone}, eh? Doesn't change what I'm here for.",
		"{subzone}. Mind the footing and the company.",
	},
	["subzone_enter.w04.008"] = {
		"{subzone}. Another name I'll carry out of here, whether I want it or not.",
		"Names pile up behind me. {subzone} goes on the pile, and I keep walking.",
	},
	["subzone_enter.w04.009"] = {
		"pauses at the edge of {subzone} as one waits at a stranger's door, then steps in.",
		"listens to {subzone} before looking at it: what a place sounds like says a good deal.",
	},
	["subzone_enter.w04.010"] = {
		"{subzone}. Whoever named it either had a poet's soul or had run out of ideas. Hard to say which.",
		"{subzone}. Fine name. I've met people with worse.",
		"{subzone}. Somebody stood here once and thought: yes, that'll do for a name.",
	},
	["subzone_enter.w04.011"] = {
		"{subzone}. Whatever waits in here, it'll find me ready.",
		"Into {subzone}. Steady, and no surprises.",
		"{subzone}. I've walked into worse. Probably.",
	},
	["subzone_enter.w04.012"] = {
		"takes in {subzone} in quick glances: the lay of it, the people, if any, and the likely ways through.",
		"reads {subzone} the way a tracker reads ground, quickly and without seeming to.",
		"measures {subzone} with a single sweeping glance, and files it away.",
	},
	["subzone_enter.w04.013"] = {
		"{subzone}. Let's hope it's kind. Places mostly are, if you don't ask too much of them.",
		"{subzone}. I'll be polite to it, and see if it returns the favor.",
	},
	["subzone_enter.w04.014"] = {
		"{subzone}. I'll take it on trust, the way I take most names.",
		"{subzone}, says the map. The map's been wrong before, but not about this sort of thing.",
		"{subzone}. I'll reserve judgment until something tries to eat me.",
	},
	["subzone_enter.w04.015"] = {
		"Every place keeps something back from anyone just passing through. I wonder what {subzone} is keeping.",
		"{subzone}. There's always more to a place than one walk through it. I'll only get the outside.",
	},
	["subzone_enter.w04.016"] = {
		"squares {g:his|her} shoulders as {subzone} begins, out of habit more than need.",
		"settles the pack and steps into {subzone} like someone arriving at work.",
	},
	["subzone_enter.w04.017"] = {
		"{subzone}. Good. I like a place that tells you its name up front.",
		"{subzone}. At least the place introduces itself. More than some people manage.",
	},
	["subzone_enter.w04.018"] = {
		"{subzone}. Noted. Onward.",
		"{subzone}. One more name for the road. Keep moving.",
	},
	["subzone_enter.w04.019"] = {
		"says the name {subzone} under the breath, once, as if testing how it sits on the tongue.",
		"mouths the name {subzone} without a sound, the way people do when they mean to remember it.",
	},
	["subzone_enter.w04.020"] = {
		"{subzone}. The world goes on being divided into pieces with names. I like that about it.",
		"{subzone}. A name is a promise that something here mattered to someone. I'll keep my eyes open for it.",
	},
	["subzone_enter.w04.021"] = {
		"enters {subzone} without ceremony, hand never far from where it might be needed.",
		"goes into {subzone} with the plain caution of someone who has walked into enough places to know better.",
	},
	["subzone_enter.w04.022"] = {
		"{subzone}. A different name, the same me walking into it.",
		"{subzone}. The places change faster than I do. Maybe that's the point of walking.",
	},
	["subzone_enter.w04.023"] = {
		"Well met, {subzone}. Let's get along.",
		"Hello, {subzone}. I'll try not to make a mess of you.",
	},
	["weather_change.w04.001"] = {
		"stops to sniff the air like a farmer at a field's edge, then nods as if a question had been answered.",
		"lifts {g:his|her} face to the changed air for a moment, reading it the way some people read a letter.",
		"squints upward at the change, then goes back to minding the ground underfoot.",
	},
	["weather_change.w04.002"] = {
		"The sky has turned the page. I didn't read the last one closely enough to know what changed.",
		"Up above, a decision has been made without me. That's how it usually goes with the sky.",
		"The air feels different on my skin than it did a moment ago. The world keeps its own counsel and changes anyway.",
	},
	["weather_change.w04.003"] = {
		"And there it goes. Whatever it's planning, I'm dressed for something else.",
		"The sky's changed its plans. Nobody told me, as usual.",
		"Well, that's different. I liked the old one fine, but nobody asked.",
	},
	["weather_change.w04.004"] = {
		"The sky does what it likes. The road is the same length either way.",
		"Changed, has it? My boots don't care, and I've decided to agree with my boots.",
		"Whatever's coming, the road doesn't get any shorter for complaining.",
	},
	["weather_change.w04.005"] = {
		"pulls {g:his|her} gear a little tighter, or a little looser, as the change in the air demands.",
		"pauses while the air shifts all around, as if waiting to be sure the change means to stay.",
	},
	["weather_change.w04.006"] = {
		"Everything up there is rearranging itself, quietly. I envy how little fuss it makes.",
		"A change in the air, and something in me changes with it, a little. I never know in which direction.",
		"The sky moves on to something else, and I find I'd been paying it no attention at all.",
	},
	["weather_change.w04.007"] = {
		"Different sky, same boots, same road. Onward.",
		"The air's turned. Nothing to do about it but notice and carry on.",
	},
	["race.dwarf.journey.w08.001"] = {
		"The ground lets go of my boots. A dwarf and the earth have an understanding, and this breaks it.",
		"Up. Every instinct I own is shouting that rock belongs right beneath me, not a long way below.",
		"Off the ground once more. I'll count the straps, then count them again, then pretend I'm not counting.",
	},
	["race.dwarf.journey.w08.002"] = {
		"grips the saddle with both hands and keeps {g:his|her} eyes fixed straight ahead, jaw set like a closed gate.",
		"settles into the saddle with the grim patience of a dwarf who has decided not to look down.",
		"holds on as the ground drops away, muttering something that might be a prayer and might be a list of complaints.",
	},
	["race.dwarf.journey.w08.003"] = {
		"Steady, beast. Neither of us wants to find out what a dwarf weighs from this high.",
		"Up we go. If I come down early, tell them it was the flight's fault, not mine.",
		"Fly straight, and I'll say only kind things about you at the inn.",
	},
	["race.dwarf.journey.w08.004"] = {
		"From up here the land looks untouched, every hill whole and unmined. A dwarf can't help counting what lies under them.",
		"The world from above is all surface and no depth. I know better; I know what the hills keep underneath.",
	},
	["race.dwarf.journey.w08.005"] = {
		"Whoever first strapped a dwarf to a flying beast must have lost a wager. I'd like a word with them.",
		"Let the beast do the flying. My job is to hold on and think about cellars.",
	},
	["race.dwarf.journey.w08.006"] = {
		"Ground under my boots once more. My knees are telling the rest of me we're never doing that again. They're lying, but it's sweet of them.",
		"Down. The earth takes my weight back without a word, as if I'd never left it.",
		"On solid ground. Every bone in a dwarf's body sighs at once when the earth comes back.",
	},
	["race.dwarf.journey.w08.007"] = {
		"slides from the saddle and stamps hard, twice, as if to make sure the ground hasn't gone soft in the meantime.",
		"steps down, rolls {g:his|her} shoulders and pats the nearest solid thing with open relief.",
		"touches down, checks every buckle and strap with a craftsman's suspicion, and only then lets go.",
	},
	["race.dwarf.journey.w08.008"] = {
		"Thank you, beast. You're a fine flier, and I hope never to see you again until the next time.",
		"Down. Somebody find me a stool and a mug, in that order or the other.",
		"Off at last. Next time I'm taking the long road, blisters and all.",
	},
	["race.dwarf.journey.w08.009"] = {
		"The Wildhammer would call that a pleasant little hop. The Wildhammer have something loose between the ears.",
		"The Wildhammer live like that every day, air in their braids and nothing under their feet. Kin or not, I don't understand them.",
	},
	["race.dwarf.quest_complete.w08.001"] = {
		"Done, and done properly. Put a round on my tab at the Thunderbrew; I've earned the thirst.",
		"There's your job, finished. Now point me at the nearest keg before my throat turns to gravel.",
		"Finished. My thirst waited patiently the whole time, and it expects to be paid as well.",
	},
	["race.dwarf.quest_complete.w08.002"] = {
		"The masons of Ironforge tap a stone before they set it, to hear whether it rings true. I tapped this one. It rang.",
		"In Ironforge nobody sets a block until they've knocked on it and listened. I knocked, I listened, and it's in place.",
	},
	["race.dwarf.quest_complete.w08.003"] = {
		"gives the matter a firm nod and raps a fist against {g:his|her} chest, as if knocking on a sound wall to hear it hold.",
		"hooks {g:his|her} thumbs into {g:his|her} belt and rocks back on {g:his|her} heels with the look of a brewer tasting a batch that came out right.",
	},
	["race.dwarf.quest_complete.w08.004"] = {
		"All finished, and not one gnome contraption blew up. Somebody mark the date.",
		"Finished, and nothing caught fire. A gnome engineer would call that a disappointing day's work.",
	},
	["race.dwarf.quest_complete.w08.005"] = {
		"Ironforge opened its gates to a whole people when Gnomeregan was lost. Next to that, an errand like this is nothing, but it's the same habit.",
		"When the gnomes lost their city, Ironforge made room for all of them. Lending a hand with someone's trouble is the same thing, only smaller.",
	},
	["race.dwarf.quest_complete.w08.006"] = {
		"Another stone in the wall of the dwarven name! A small one, mind, but it'll hold!",
		"Let it be told a dwarf saw this through, down to the last nail!",
		"Khaz Modan breeds folk who finish things. Here's the proof, signed and sealed!",
	},
	["race.dwarf.quest_complete.w08.007"] = {
		"That's done, and my legs are reporting every hill of it. Dwarves were made for tunnels, not for all this up and down.",
		"Finished. Short legs, long roads: whoever shaped the dwarves never planned on this much walking.",
	},
	["race.dwarf.quest_complete.w08.008"] = {
		"Don't thank me, pay me. Then thank me after, if you still feel like it.",
		"Coin first, kind words second, ale last of all. That's the proper order.",
		"Save the speech for the tavern. I listen better with a mug in my fist.",
	},
	["race.dwarf.quest_complete.w08.009"] = {
		"The chroniclers of Ironforge say three clans once tore the mountain apart over a throne. A dwarf finishing honest work for other folk makes the better story.",
		"War of the Three Hammers, the histories call it: dwarf against dwarf over who would rule. I'd rather be remembered for jobs like this one.",
	},
	["race.dwarf.quest_complete.w08.010"] = {
		"pats the pouch at {g:his|her} belt where the reward now sits, the way a miner pats a cart full of good ore.",
		"weighs the reward in one broad hand, gives a grunt that might be approval, and stows it away.",
		"tucks the reward away with the care of a jeweler packing uncut stones.",
	},
	["race.dwarf.quest_complete.w08.011"] = {
		"Finished! Somebody in Kharanos owes me a stout, they just don't know it yet.",
		"All done. The brewers of Dun Morogh had nothing to do with it, but they'll be getting my coin all the same.",
	},
	["race.dwarf.quest_complete.w08.012"] = {
		"Rough ore in, good iron out. A task is like smelting: most of the work is heat and patience, and the rest is knowing when to stop.",
		"Like a pour at the forge: it looked like slag for a long while, and then it came out clean.",
		"Good work is like good ore: you don't know it until it's been through the fire. This one came through.",
	},
	["race.dwarf.quest_complete.w08.013"] = {
		"Glad to help. If you're ever in Ironforge, ask for a dwarf with dust on the boots. That narrows it down to everyone.",
		"Happy to lend a hand. Find me in Ironforge some time and I'll show you where the good ale hides.",
	},
	["race.dwarf.quest_complete.w08.014"] = {
		"Wherever the work's done, it counts for the mountain. That's what I tell myself, anyway.",
		"However near or far Ironforge is, someone under all that stone would nod at this. That's enough.",
		"The mountain doesn't see it, but the mountain would approve. That's how I measure things.",
	},
	["race.dwarf.quest_complete.w08.015"] = {
		"Finished. Took longer than a proper job should, but less long than an elf would have.",
		"Sorted. A human would want a song about it. A gnome, a diagram. I'll settle for supper.",
	},
	["race.dwarf.quest_complete.w08.016"] = {
		"A promise kept is a stone that doesn't shift. Build enough of those and you've got something folk can lean on.",
		"Word given, word kept. That's the whole of dwarven law, as far as the plain folk of Dun Morogh are concerned.",
		"Said I'd do it, and it's done. Stone doesn't bargain, and neither should a dwarf's word.",
	},
	["race.dwarf.quest_complete.w08.017"] = {
		"lets out a long breath through {g:his|her} nose, the sort a dwarf saves for the end of a long haul.",
		"stretches until {g:his|her} back gives a loud crack, then looks quite pleased about it.",
		"sets both fists on {g:his|her} hips and surveys the finished business like a foreman at the end of a shift.",
	},
	["race.dwarf.quest_complete.w08.018"] = {
		"Sorted. If it comes loose again, send for a dwarf.",
		"That'll hold. Did it the Ironforge way: plain, heavy and meant to last.",
	},
	["race.dwarf.quest_complete.w08.019"] = {
		"The Explorers' League digs the world over asking where dwarves come from. I've no answer for them, but I know what dwarves do: they finish the job.",
		"Maybe the Titans shaped us out of stone, as the Explorers' League suspects. If so, they did it so we'd see things through.",
	},
	["race.dwarf.quest_complete.w08.020"] = {
		"Good doing business with you. If you ever need a stubborn pair of hands again, you know the type to ask for.",
		"Pleasure. Next time you've a problem too heavy to shift, look for someone short and unreasonable.",
		"Glad it's sorted. Should trouble dig its way back, you know where to find a dwarf: usually near the ale.",
	},
	["race.dwarf.quest_complete.w08.021"] = {
		"Done at last. Stone's honest: it tells you plainly where it'll split. Errands could learn a thing from it.",
		"Finished. Everything's simpler underground; among other folk even an errand has twists and side tunnels.",
	},
	["race.dwarf.quest_complete.w08.022"] = {
		"If King Magni asks after me, tell him I'm keeping busy and keeping the name clean.",
		"One more good word for Ironforge. Magni won't hear of it, but it's been earned all the same.",
	},
	["race.dwarf.quest_complete.w08.023"] = {
		"Dwarves threw the Thandol Span across a gorge most folk won't even look down into. Next to that, this was a small bridge, but I crossed it.",
		"Whoever raised the Thandol Span didn't stop halfway because the drop was deep. Neither did I.",
	},
	["race.dwarf.quest_complete.w08.024"] = {
		"Done! Even a Dun Morogh ram couldn't have butted through that any faster.",
		"Finished, and I barely had to put my head down. The rams of Dun Morogh would be proud.",
	},
	["race.dwarf.quest_complete.w08.025"] = {
		"The Wildhammer would have done it from gryphon-back and sung about it after. Ironforge folk walk, and grumble, and get there just the same.",
		"A Wildhammer would have flown in, finished it with a whoop, and flown off again. Ironforge does things on foot, and thoroughly.",
	},
	["race.dwarf.quest_complete.w08.026"] = {
		"By hammer and anvil, it's done.",
		"Struck, shaped and quenched. Next!",
		"Forged and finished. What's the next piece on the bench?",
	},
	["race.dwarf.quest_complete.w08.027"] = {
		"squints at the finished task with one eye shut, the way a mason sights down a wall for the slightest lean, and seems satisfied.",
		"gives a short laugh through {g:his|her} nose and shakes the dust out of {g:his beard|her braids}.",
	},
	["race.dwarf.quest_progress.w08.001"] = {
		"Some of it done. The rest is still buried somewhere, and dwarves are good at digging.",
		"Halfway down the vein. Keep swinging.",
		"Progress. Not enough to stop for an ale, but enough to think about one.",
	},
	["race.dwarf.quest_progress.w08.002"] = {
		"That's the lot! Back we go, and somebody had better have the kettle on. Or the keg.",
		"All of it, gathered and counted twice. Time to collect.",
		"Done here. Now for the walk back, which is always longer on short legs.",
	},
	["race.dwarf.quest_progress.w08.003"] = {
		"pauses to count on thick fingers what's been done and what hasn't, and grunts at the second number.",
		"eyes the task still ahead the way a miner eyes the rock left to clear, then rolls {g:his|her} shoulders.",
		"mutters a running tally under {g:his|her} breath, in the clipped way of a dwarf keeping stock.",
	},
	["race.dwarf.reputation_change.w08.001"] = {
		"They think a bit better of me now. A good name's like good masonry: slow to raise, slower to come down, if it's built right.",
		"A little more trust earned. Dwarves keep a grudge for ages; I like to think we keep a friendship just as long.",
		"My name sits easier with them now. In Ironforge they'd say the metal's been tested and rings sound.",
	},
	["race.dwarf.rest_enter.w08.001"] = {
		"A place to rest. First I'll find out who pours here, then whether they pour honestly.",
		"Rest at last. The boots can come off, and the opinions can come out.",
		"Somewhere to sit and nothing to fight. A dwarf asks little: a seat, a mug, a wall at the back.",
	},
	["race.dwarf.rest_enter.w08.002"] = {
		"sets {g:his|her} back against a solid wall, tests it with a shoulder, and only then allows {g:himself|herself} to sit.",
		"drops onto a bench near the hearth, raps the table once for luck, and lets the road go.",
		"unbuckles {g:his|her} pack, sets it down where a foot can reach it, and settles in with a long, gravelly sigh.",
	},
	["race.dwarf.rest_enter.w08.003"] = {
		"Safe walls and other people's noise. A dwarf rests best with a bit of clatter about, like a forge working through the wall.",
		"Somewhere to lay my bones at last. Dwarves have slept on bare rock and called it comfortable; this will do nicely.",
	},
	["race.human.journey.w08.001"] = {
		"Up we go. My people learned to plow, to build, to sail. Nobody ever taught us to sit calmly on a flying animal.",
		"Off the ground. Humans took centuries to learn to stay on a horse, and a few moments in this saddle make a beginner of me.",
		"Up. I grip the harness the way a plowman grips the handles in stony soil, and try not to watch the fields shrink.",
	},
	["race.human.journey.w08.002"] = {
		"From up here the fields have no fences. Every quarrel over a boundary stone looks very small from the saddle.",
		"The ground falls away and takes the property lines with it. A human could turn philosophical up here, if the drop below were less distracting.",
	},
	["race.human.journey.w08.003"] = {
		"Off we go! A day's walk saved for a handful of silver. Best bargain a short life can buy.",
		"Up and away. Whatever this cost, it's cheaper than the boots I'd have worn through.",
	},
	["race.human.journey.w08.004"] = {
		"settles into the saddle with both hands firmly on the harness, wearing the polite, fixed smile of someone who would rather be on a horse.",
		"grips the harness as the ground drops away, and looks very deliberately at the horizon instead of at {g:his|her} own feet.",
		"hunches against the rush of air, knuckles pale on the straps, and pretends to admire the view.",
	},
	["race.human.journey.w08.005"] = {
		"Villages from up here look like toys someone left out: a few roofs, a well, a path. Every one of them is somebody's whole world.",
		"Farms slide past below, one after another. I can't help guessing at each: good soil, poor soil, a household doing fine, a household that isn't.",
		"Someone down there is probably staring up at me and wondering what a ride costs. Keep your silver, friend; your feet are cheaper.",
	},
	["race.human.journey.w08.006"] = {
		"Down, and still in one piece. Somebody point me to the nearest inn; my legs have opinions.",
		"Landed. First a drink, then a bench, then I'll think about courage.",
		"Ground. Now, where does a weary traveler find a hot meal around here?",
	},
	["race.human.journey.w08.007"] = {
		"slides from the saddle and stamps both feet on the ground, the way sailors greet a dock.",
		"climbs down stiffly, rubs the small of {g:his|her} back and gives the beast a grateful pat, the way one thanks a good horse after a long road.",
	},
	["race.human.journey.w08.008"] = {
		"Down. A day's road done in an hour. Humans never have enough time; for once I've stolen some of it back.",
		"The flight's over, and the time it saved is mine to spend. I'll try to spend it better than usual.",
	},
	["race.human.journey.w08.009"] = {
		"The ground. Wonderful, dull, unmoving ground. I promise to stop complaining about mud. For a day, at least.",
		"Earth that doesn't sway. Humans never value it until they've spent an hour without it.",
	},
	["race.human.journey.w08.010"] = {
		"Down. Whoever first saddled a winged beast was either very brave or very human, which is to say impatient.",
		"Only a short-lived people would climb onto a flying animal to save half a day. And here I am, proving it.",
	},
	["race.human.quest_complete.w08.001"] = {
		"A day's work, as the Elwynn farmers would call it, and nobody thanks the plow. Fine. Supper will be my thanks.",
		"Work finished, the way it finishes in any farmyard in Elwynn: no songs, no speeches, just bread earned.",
		"Plain work, plainly done. In Elwynn that buys you a loaf and a nod, and both are worth having.",
	},
	["race.human.quest_complete.w08.002"] = {
		"Somebody ring a bell. No? Fine, I'll hum.",
		"In Goldshire they'd ring the bell for less. Go on, somebody ring something.",
		"No bells? A human likes a bell when a job's done. I'll whistle instead.",
	},
	["race.human.quest_complete.w08.003"] = {
		"rolls {g:his|her} shoulders like a stonemason who has just set the last block of a long wall.",
		"rubs the back of {g:his|her} neck and nods, plain satisfaction on a plain human face.",
	},
	["race.human.quest_complete.w08.004"] = {
		"We don't get the centuries the elves get. So a thing finished now is worth more to us. That's the arithmetic of being human.",
		"Elves can afford to put a task off for a hundred years. A human finishes it, because there may be no later.",
	},
	["race.human.quest_complete.w08.005"] = {
		"That's one more tale for the Lion's Pride. By the third telling I'll be twice as tall.",
		"Done! Somebody at the Lion's Pride will want to hear this one, and I'll want a seat by the fire to tell it.",
	},
	["race.human.quest_complete.w08.006"] = {
		"Stormwind was burned to the ground once and built again. Every job like this puts another stone back in its place.",
		"The orcs left Stormwind a ruin, and we raised it again. That's what humans are best at, and this was more of the same.",
		"Because of this, some door stays unbarred a little longer. Rebuilding is the one craft every human knows.",
	},
	["race.human.quest_complete.w08.007"] = {
		"For the realm, then. The regent will never hear of it, and the realm is better for it all the same.",
		"Bolvar Fordragon won't hear about this one. The kingdom's a little sounder for it anyway.",
	},
	["race.human.quest_complete.w08.008"] = {
		"Done, and well before supper. Humans are always in a hurry; now and then it pays.",
		"Quick work. A dwarf would have taken a week and carved a plaque about it. We just get on with things.",
	},
	["race.human.quest_complete.w08.009"] = {
		"In Elwynn, folk thank the Light for a full barn. Whoever deserves the thanks for this one, they have mine.",
		"Elwynn's farmers give thanks to the Light at every harvest. I'll send a little thanks up as well, to whoever is listening.",
	},
	["race.human.quest_complete.w08.010"] = {
		"Tell them it's sorted. And tell them a human did it, in case anyone's keeping score.",
		"It's handled. If anybody's keeping a tally by race, put one down for the humans.",
	},
	["race.human.quest_complete.w08.011"] = {
		"Lordaeron was full of people who did jobs like this, once. Then the plague came. Some of us still do them, partly for them.",
		"Up in Lordaeron there were folk who'd have seen to this before breakfast. The Scourge has them now. Somebody has to keep doing the work.",
		"Every task finished is one the dead of Lordaeron can't finish. I try to do them properly, as if they were watching.",
	},
	["race.human.quest_complete.w08.012"] = {
		"tucks the matter away with a brisk nod, the way a Stormwind clerk closes a ledger.",
		"dusts off {g:his|her} hands, as tidy about an ending as a Trade District merchant shutting up shop.",
	},
	["race.human.quest_complete.w08.013"] = {
		"At Northshire they tell every recruit to finish what was started. Of all their lessons, it's the one nobody forgets.",
		"Finish what you start: the brothers of Northshire Abbey drill it into every new arrival. They'd nod at this one.",
	},
	["race.human.quest_complete.w08.014"] = {
		"Settled, fair and square, on both sides. The stonemasons of Westfall would say that's rarer than gold.",
		"A bargain kept by everyone involved. Ask the masons who rebuilt Stormwind how often that happens.",
	},
	["race.human.quest_complete.w08.015"] = {
		"Somewhere a farmhouse lamp is lit that might not have been. I like to think so, anyway.",
		"A kettle on a hearth, people at a table, a little safer than before. That's the picture I keep.",
		"There's a hearth out there with someone sitting beside it a bit easier now. Humans need very little more than that.",
	},
	["race.human.quest_complete.w08.016"] = {
		"Mark it down, Stormwind. One more name the realm can count on.",
		"Let the heralds add a line to the realm's long list. Mine.",
	},
	["race.human.quest_complete.w08.017"] = {
		"Feet ache, back aches, job's done. A human body is built for a short hard life, and it likes to remind me.",
		"Finished, and every joint is filing a complaint. We're not made of stone like the dwarves, more's the pity.",
	},
	["race.human.quest_complete.w08.018"] = {
		"lingers a moment, as if picturing the farm or the family this was for, then lets the thought go.",
		"glances back the way {g:he|she} came, with the quiet look of someone counting who will rest easier now.",
	},
	["race.human.quest_complete.w08.019"] = {
		"That's done. First round's on me, as long as nobody orders the dwarven stuff.",
		"Finished! I'll stand a round. A human-sized round, mind you.",
		"All wrapped up. Drinks are on me, within reason, and reason is short.",
	},
	["race.human.quest_complete.w08.020"] = {
		"The wars taught humankind to mend what it can and hold what it can't. This was mending.",
		"The people who rebuilt after the First War did it with small jobs like this one, one after another, until there was a city again.",
	},
	["race.human.quest_complete.w08.021"] = {
		"Done. Nobody at court will ever hear of it, which suits me fine.",
		"There. Not the sort of deed anyone discusses at court in Stormwind, and I'm glad of it.",
	},
	["race.human.quest_complete.w08.022"] = {
		"Redridge, Westfall, Duskwood: everywhere the same story, folk who need a hand and the hands spread thin. This time mine were enough.",
		"The realm is short of soldiers and long on trouble. One more piece of trouble put away, then.",
		"Too few guards, too many roads. Every human who finishes a job like this is one more guard, in a way.",
	},
	["race.human.quest_complete.w08.023"] = {
		"hums a few bars of some tavern tune from Elwynn, badly, and seems not to care who hears.",
		"whistles something half remembered from a Goldshire taproom, off key and entirely pleased.",
	},
	["race.human.quest_complete.w08.024"] = {
		"A human life is short enough that nobody remembers the small deeds. That doesn't make them small to the people they were for.",
		"No one will recall this in fifty years. The people it helped will have had fifty better years, though. Fair trade.",
	},
	["race.human.quest_complete.w08.025"] = {
		"Next! The kingdom never runs out of chores.",
		"Right, that's one. Humans have a lot of kingdom and not much time; what's next?",
	},
	["race.human.quest_complete.w08.026"] = {
		"Stromgarde holds out in the highlands, Theramore across the sea, Stormwind behind its walls. Scattered as we are, we get things done.",
		"The human kingdoms are scattered now: Stromgarde, Theramore, Stormwind, and the north lost. Scattered or not, this got done.",
	},
	["race.human.quest_complete.w08.027"] = {
		"Job done. A human's word is worth something, and I mean to keep mine worth it.",
		"Said I would, and I did. That's all the reputation a human needs.",
	},
	["race.human.quest_complete.w08.028"] = {
		"folds the matter away like a letter that can finally be sent, and is already looking for the next one.",
		"nods once, the satisfied nod of a farmer looking down a straight furrow.",
		"squints toward the horizon the way farmers squint at the sky, already weighing the next job.",
	},
	["race.human.quest_progress.w08.001"] = {
		"Halfway. Elwynn farmers say the second half of the field is always the longer one.",
		"Part done. Any plowman will tell you the far end of the furrow is the hard end.",
	},
	["race.human.quest_progress.w08.002"] = {
		"That's the lot. Back to whoever's waiting; humans hate to be kept waiting, me included.",
		"All of it, done. Let's not keep anyone waiting; life's too short for that.",
		"Finished out here. Time to go and give somebody good news.",
	},
	["race.human.quest_progress.w08.003"] = {
		"Bit by bit, the way Stormwind was rebuilt. One more stone set.",
		"A piece in place. The city went back up stone on stone, and so does this.",
		"Not done, but further. Humans built a whole capital out of 'further'.",
	},
	["race.human.quest_progress.w08.004"] = {
		"ticks off the last of it with a satisfied grunt, like a carter counting the final sack onto the wagon.",
		"finishes the last of the errand and turns for the walk back, brisk as a Stormwind courier.",
	},
	["race.human.reputation_change.w08.001"] = {
		"Humans keep accounts of everything, goodwill included. Mine just went up a line.",
		"A little more trust in the ledger. In Stormwind a good name spends almost as well as gold.",
		"Somebody's opinion of me just improved. Back in the Trade District they'd call that capital.",
	},
	["race.human.rest_enter.w08.001"] = {
		"Rest. Somewhere with guards and bread, where the worst danger is the bill. Humans built whole cities for moments like this.",
		"A place where nobody needs me to be brave for an hour or two. Humans invented towns for exactly this.",
		"Safe walls and a full belly within reach. A human doesn't need much more than that to call a place good.",
	},
	["race.human.rest_enter.w08.002"] = {
		"A bench, a fire and the smell of somebody else's cooking. The finest thing humans ever built is a common room.",
		"Inside at last. Hang up the cloak, find a stool near the fire, and let the gossip of the room wash over me.",
	},
	["race.human.rest_enter.w08.003"] = {
		"loosens a buckle or two and lets {g:his|her} shoulders drop, with the plain relief of a human who has found walls and neighbors.",
		"slows down at last, and lets the safe noise of other people's business settle around {g:him|her}.",
		"rolls {g:his|her} shoulders and breathes out, the way a farmhand does when the last cart is under cover.",
	},
	["race.nightelf.journey.w08.001"] = {
		"The land falls away and turns small. From up here, ten thousand years of my people's history would fit in a cupped hand.",
		"Up, and the world flattens into a map. Strange how the long view makes even an elf feel brief.",
		"Lifting off. Every flight reminds me how much of the world my people have not yet seen, for all our years.",
	},
	["race.nightelf.journey.w08.002"] = {
		"Gryphon or hippogryph, it is all one to me: anything with feathers, I trust to know the way.",
		"Off we go. Whatever is carrying me, I will thank it properly when we land.",
	},
	["race.nightelf.journey.w08.003"] = {
		"From above, wherever forests have been cut, it shows plainly, like bites taken out of a leaf. I try not to keep count.",
		"Height is honest. Whatever woods were felled, whatever hills were scorched, from up here it all shows, and nobody can pretend otherwise.",
	},
	["race.nightelf.journey.w08.004"] = {
		"settles low against the feathered neck as the beast climbs, as calm in the saddle as on a forest path.",
		"leans into the climb with the ease of {g:his|her} people, who have never feared a high branch.",
	},
	["race.nightelf.journey.w08.005"] = {
		"Up among the clouds, closer to the sky my people took their name from. It feels less like flying than paying a visit.",
		"Kaldorei, children of the stars, and here I am a little nearer to them. I will tell no one that it made me smile.",
	},
	["race.nightelf.journey.w08.006"] = {
		"Wind in my hair and the land sliding by beneath. An owl would find this ordinary; I am trying to look as if I do too.",
		"Flying. My people have watched birds for ten thousand years, and it turns out we were right to envy them.",
		"The wind up here is clean and cold and asks for nothing. For a little while I let it do my thinking.",
	},
	["race.nightelf.journey.w08.007"] = {
		"Down. The ground is slower than the sky, and kinder to my people's way of thinking.",
		"Landed. A flight saves days; I spend my first moment on the ground giving a few of them back, standing still.",
		"Feet on solid earth. I wait for the world to stop moving and start growing again.",
	},
	["race.nightelf.journey.w08.008"] = {
		"My thanks, feathered one. You fly better than most people walk.",
		"A fine flight. If my people ever give medals to birds, you are first in line.",
	},
	["race.nightelf.journey.w08.009"] = {
		"slides down from the saddle and stands a moment with a hand on the warm feathers, unhurried, before walking on.",
		"lands lightly and gives the beast a long, grateful look, as {g:his|her} people do with any creature that has carried them.",
	},
	["race.nightelf.journey.w08.010"] = {
		"Arrived. Whatever my people say about patience, I am glad that one was quick.",
		"A journey my people would once have walked over a season, finished before I had come to the end of a thought.",
	},
	["race.nightelf.journey.w08.011"] = {
		"On the ground once more. My people walk softly, and after a flight I walk more softly still, until my legs believe it.",
		"The sky lets me go. I give it a nod; we will meet again.",
	},
	["race.nightelf.quest_complete.w08.001"] = {
		"Finished. Measured against ten thousand years it is a small thing, but the years are made of small things.",
		"That is settled. Not a chapter in any chronicle, only a line in my own, and kaldorei keep long ones.",
		"Closed. My people count in centuries, and still every century was built out of afternoons like this.",
	},
	["race.nightelf.quest_complete.w08.002"] = {
		"There. Done before an owl could finish turning its head.",
		"Finished, and quicker than a nightsaber finds the one warm stone in the glade.",
		"Over already. Even the wisps would have to hurry to keep up with me.",
	},
	["race.nightelf.quest_complete.w08.003"] = {
		"The priestesses say that once a kaldorei could leave a task like this for a century. Since Hyjal the years count for us too, so I finished it today.",
		"There was an age, the elders tell, when no kaldorei ever had to hurry. That age ended on Mount Hyjal. This task I did not leave waiting.",
	},
	["race.nightelf.quest_complete.w08.004"] = {
		"lets the finished task go as a tree lets go of a leaf: without ceremony, and without looking back.",
		"breathes out slowly, a long forest-quiet breath, and turns {g:his|her} attention to whatever comes next.",
		"folds the matter away with the unhurried neatness of someone who expects to remember it for a very long time.",
	},
	["race.nightelf.quest_complete.w08.005"] = {
		"It is done. Teldrassil was a seed once, too.",
		"Finished. Every great tree begins as something small that someone carried in one hand.",
		"Complete. The great forests are only small plantings that nobody gave up on.",
	},
	["race.nightelf.quest_complete.w08.006"] = {
		"The priestesses teach that Elune sees small labors as clearly as great ones. I hope she glanced this way.",
		"Finished, and offered quietly to Elune, as the priestesses say any honest work may be.",
	},
	["race.nightelf.quest_complete.w08.007"] = {
		"To the short-lived this would have been a long errand. To me it was a pleasant walk with an ending.",
		"Some races would count that a long labor. My people would call it an afternoon and ask what's for supper.",
		"A long task, a human would say. I hardly had time to grow bored.",
	},
	["race.nightelf.quest_complete.w08.008"] = {
		"Done, and done quietly. The forest finishes its work without an audience; so can I.",
		"There. No horns, no banners. Ashenvale grows without heralds, and so does good work.",
		"No one will sing of it, and no one needs to. The roots of Teldrassil do their work unseen.",
	},
	["race.nightelf.quest_complete.w08.009"] = {
		"I will likely remember this errand long after everyone involved in it is gone. A kaldorei memory keeps everything, wanted or not.",
		"This goes into the long memory with all the rest. My people forget nothing; it is not always a kindness.",
	},
	["race.nightelf.quest_complete.w08.010"] = {
		"That is one thorn drawn from the world. Ashenvale alone has plenty more.",
		"Finished. One less thorn in the paw of the world.",
		"Finished. Somewhere in the woods, something can rest easier for it.",
	},
	["race.nightelf.quest_complete.w08.011"] = {
		"Done. Somewhere a wisp is drifting home through the boughs, and I feel a little like it.",
		"Finished. I could walk all the way to Darnassus on this feeling alone.",
	},
	["race.nightelf.quest_complete.w08.012"] = {
		"accepts the end of the task with a nod as small and certain as a nightsaber's blink.",
		"lets {g:his|her} shoulders ease, with the slow care of an owl folding its wings after the hunt.",
	},
	["race.nightelf.quest_complete.w08.013"] = {
		"The Sentinels cannot be everywhere. Today, in one small corner of the world, they did not have to be.",
		"One task closed. The Sentinels are few and spread from Auberdine to Ashenvale; the small things fall to the rest of us.",
	},
	["race.nightelf.quest_complete.w08.014"] = {
		"Finished. Don't look so surprised; we elves only look like we're dawdling.",
		"Done. Slow is not the same as late, whatever the short-lived think.",
		"There. My people are not slow; we simply refuse to rush.",
	},
	["race.nightelf.quest_complete.w08.015"] = {
		"Finished under Elune's own light. It feels like a blessing, even if it was only an errand.",
		"Done, with the moon looking on. The priestesses would say she approves; I will simply say it went well.",
	},
	["race.nightelf.quest_complete.w08.016"] = {
		"Even with the long memory of my people, the world still finds things to teach. This was one of them.",
		"I learned something this time. Ten thousand years of kaldorei lore, and the world has lessons left over.",
	},
	["race.nightelf.quest_complete.w08.017"] = {
		"Finished. Tell the next one who asks that a kaldorei came by and set it right.",
		"There, done. If anyone wonders who did it, say it was someone of Teldrassil, and leave it at that.",
	},
	["race.nightelf.quest_complete.w08.018"] = {
		"The World Tree gave its strength at Hyjal, the priestesses say, and since then every day matters more. This one, at least, I did not waste.",
		"Since Nordrassil's gift was spent, our days are numbered like anyone's. I am glad to have spent one of mine on this.",
	},
	["race.nightelf.quest_complete.w08.019"] = {
		"tucks a stray strand of hair behind one long ear and looks, briefly, very pleased.",
		"flicks one long ear in quiet satisfaction and moves on.",
	},
	["race.nightelf.quest_complete.w08.020"] = {
		"Complete. Tyrande's people do not leave things half-finished.",
		"Finished. Darnassus would expect nothing less, and neither do I.",
	},
	["race.nightelf.quest_complete.w08.021"] = {
		"Finished. Like the seasons in Ashenvale, it took its time and then came all at once.",
		"That is done. Things in the forest happen slowly, then suddenly; this was the suddenly.",
		"Done at last. The oldest oaks would call that brisk.",
	},
	["race.nightelf.quest_complete.w08.022"] = {
		"Done. If I keep this up, the owls of Teldrassil will start asking me for favors.",
		"Finished. Word travels fast in the canopy; expect the squirrels to come with requests.",
		"Settled. Darnassus will hear of it eventually, though the hippogryphs gossip less than you'd think.",
	},
	["race.nightelf.quest_complete.w08.023"] = {
		"No crowd, no herald, a quiet word and it's over. I like my work the way the forest likes its creatures: unseen until needed.",
		"Over without fuss. There is a very kaldorei pleasure in that, in doing a thing well and slipping back among the trees.",
	},
	["race.nightelf.quest_complete.w08.024"] = {
		"Done. The old sentinels say the Highborne thought themselves too great for small work. We learned otherwise.",
		"Finished, and gladly. My people learned in the War of the Ancients where pride without labor leads.",
	},
	["race.nightelf.quest_complete.w08.025"] = {
		"Finished. I'll think of the boughs of Darnassus on the way, and the way will feel shorter.",
		"That's settled. Whatever the road does next, Darnassus is still at the end of it.",
	},
	["race.nightelf.quest_complete.w08.026"] = {
		"lifts {g:his|her} gaze upward for a moment, as if seeking the moon beyond the sky, and offers the finished work in silence.",
		"murmurs a few words to Elune under {g:his|her} breath, too low for anyone else to catch.",
		"bows {g:his|her} head briefly: a thanks to no one in particular, and to Elune most of all.",
	},
	["race.nightelf.quest_progress.w08.001"] = {
		"A part of it done. The rest will come; patience is the one thing my people never lack.",
		"Halfway. My people grew a World Tree; I can finish an errand.",
		"Some done, some not. The moon doesn't rise all at once either.",
	},
	["race.nightelf.quest_progress.w08.002"] = {
		"All of it done. Now back, as quietly as I came.",
		"Everything asked is done. Now the walk back, unhurried, the way my people prefer it.",
		"Finished, every part. I'll carry the news back as carefully as a Sentinel carries word from the border.",
	},
	["race.nightelf.quest_progress.w08.003"] = {
		"pauses to look over what is done, ears tilted, then moves on toward the rest without hurry.",
		"notes the progress with a slight nod, as patient as a gardener among slow-growing trees.",
		"takes stock in silence, as an owl surveys a clearing, and walks on.",
	},
	["race.nightelf.reputation_change.w08.001"] = {
		"Their regard has grown. My people measure trust in centuries; I'll take this as a good first decade.",
		"A warmer welcome than before. Trust grows like an oak: slowly, and then for a very long time.",
		"They think better of me now. My people would call it a seedling; I mean to see it grow.",
	},
	["race.nightelf.rest_enter.w08.001"] = {
		"A place to rest. My people sleep lightly anywhere; what matters is the permission, not the bed.",
		"Safe ground at last. One of my people can doze standing up if need be, but this is better.",
		"Rest. Even the long-lived need it, it turns out. Nobody warned us.",
	},
	["race.nightelf.rest_enter.w08.002"] = {
		"lets the watchfulness drain slowly from {g:his|her} shoulders, the way {g:his|her} people do once they have decided a place is safe.",
		"finds a corner out of the way and settles into it with the long patience of {g:his|her} kind.",
		"eases down, every sense still half awake, as {g:his|her} people have rested for ten thousand years.",
	},
	["race.nightelf.rest_enter.w08.003"] = {
		"A safe place, for now. I thank Elune for it quietly, the way one thanks a host who wants no fuss.",
		"Rest. For a while Elune keeps the watch, and I let her.",
	},
	["race.tauren.journey.w08.001"] = {
		"From up here the herds would look like scattered seeds. I search for them anyway, out of plain habit.",
		"The land drops away and I scan it for herds the way my people always have. From this height a kodo would be a crumb.",
		"Below, the world becomes a hide stretched out to dry, with rivers for its seams. I look for herds on it all the same.",
	},
	["race.tauren.journey.w08.002"] = {
		"settles into the saddle with care, horns tucked low against the wind, as the wings take hold of the air.",
		"leans over the wind rider's neck as the ground falls away, horns low and mane streaming.",
		"grips the reins as the wind rider kicks off, great body hunched forward to make itself, briefly, a little smaller.",
	},
	["race.tauren.journey.w08.003"] = {
		"Every wingbeat puts more air between me and the Earth Mother. She is patient. She will have me back soon enough.",
		"Up into the wind. The ground does not let go of a tauren easily, and I do not entirely let go of it either.",
		"Leaving the earth is the strangest thing a tauren can do. I keep one hand on the saddle and one thought on the ground below.",
	},
	["race.tauren.journey.w08.004"] = {
		"Steady, friend. I know I'm heavy. Think of it as training.",
		"Easy, easy. Yes, all of me. Fly slow, and you can complain at the other end.",
	},
	["race.tauren.journey.w08.005"] = {
		"The wind catches my horns like a pair of sails. I tuck my head down and try to be a smaller shape than I am.",
		"Up here the air pulls at my horns and mane as if it meant to keep them. I hold my head low and let it try.",
	},
	["race.tauren.journey.w08.006"] = {
		"Ground. I stamp once, to be sure it is the real thing and not more sky pretending.",
		"Down. My knees take the earth back like old friends meeting. Next time, perhaps I will walk.",
		"The wings fold and the land comes back under me, solid and indifferent. I would kiss it, if horns allowed.",
	},
	["race.tauren.journey.w08.007"] = {
		"slides down from the wind rider and stands a moment with hooves planted wide, as if the ground might try to tilt.",
		"climbs down from the saddle, stamps once to wake {g:his|her} legs, and gives the beast a grateful slap on the neck.",
	},
	["race.tauren.journey.w08.008"] = {
		"A long way through the air. My people once crossed such distances in a season of walking; I did it between two thoughts, and I am not sure I am grateful.",
		"So much land passed under me, and not one blade of it touched. A journey without the walking feels like a meal without the hunger.",
		"A long while above the world, and now it all comes back underfoot at once. My legs need a moment to believe in distance again.",
	},
	["race.tauren.journey.w08.009"] = {
		"The wind rider shakes itself, glad to be rid of me. I feel much the same about the sky.",
		"We part on good terms, the wind rider and I. Each of us is relieved, and each of us is polite about it.",
		"The beast does not look back as it leaves. It has carried a tauren; it has earned its rest.",
	},
	["race.tauren.quest_complete.w08.001"] = {
		"Done. A finished task is a stretch of road walked to its end; the elders say you thank the road before you leave it.",
		"There. The elders of my people say every road walked to its end deserves a word of thanks. Thank you, road.",
		"Finished. Before taking the next path, a tauren is meant to thank the last one. So: thank you, and on to the next.",
	},
	["race.tauren.quest_complete.w08.002"] = {
		"Here you go. Mind the horns when you lean in to take it; everyone forgets the horns.",
		"All yours. Careful reaching past me; there is a lot of me to reach past.",
		"There it is. I'd bow, but bowing with horns this size needs room and a warning.",
	},
	["race.tauren.quest_complete.w08.003"] = {
		"stoops and lays a broad palm flat on the ground for a moment, a quiet thanks to the Earth Mother for a task carried to its end.",
		"bends to touch the ground with two fingers, then {g:his|her} brow, unhurried, as if settling a small debt with the earth.",
		"presses a hand flat to the ground and holds it there a heartbeat longer than a stranger would think necessary.",
	},
	["race.tauren.quest_complete.w08.004"] = {
		"Like grass seed thrown on the wind: you do the throwing and let the plains decide the rest. Over to the plains, then.",
		"Work handed over. Whether it bears fruit is another season's business. The plains taught me to let seasons be.",
	},
	["race.tauren.quest_complete.w08.005"] = {
		"May your water stay sweet and your herds stay many. That's how we part in Mulgore.",
		"Walk with the wind at your back. It's what my people wish anyone they've helped.",
		"May the Earth Mother keep the ground firm under your feet. Good work, this, and gladly done.",
	},
	["race.tauren.quest_complete.w08.006"] = {
		"Most people thank a tauren the way they'd thank a cliff: head tipped back, and from a careful distance.",
		"Gratitude from below again. I've learned to bend a little so people don't strain their necks being kind.",
		"Another thank-you said with a craned neck. One day someone will thank a tauren without stepping back first.",
	},
	["race.tauren.quest_complete.w08.007"] = {
		"The elders tell of the long wandering years, when nothing stayed built. Maybe that's why a finished thing pleases a tauren so much.",
		"For ages, the tellers say, my people's work was loaded onto kodo every few days and carried off. Work that stays where you leave it feels like a luxury.",
		"For a nomad nothing is ever finished: the camp is always moving. Since the bluff was settled, the tellers say, my people have learned the taste of done. I like it.",
	},
	["race.tauren.quest_complete.w08.008"] = {
		"It's done, and it was done with both hands. A tauren doesn't do half of anything.",
		"Finished properly, no corners cut. My people have never been good at small efforts.",
		"Seen through from end to end. We tauren are too big for halfway.",
	},
	["race.tauren.quest_complete.w08.009"] = {
		"If anything died for this task, I hope I paused to thank it. A hunter of my people would ask me that before asking about the reward.",
		"Before the coin, the old question of the plains: did I give thanks for what was taken? I think I did. I hope I did.",
	},
	["race.tauren.quest_complete.w08.010"] = {
		"Done. If there's a reward, make it food. Feeding a tauren is a task of its own.",
		"Coin is fine. Bread would be finer. A tauren gets hungry just walking across a room.",
		"Finished. You wouldn't happen to have anything to eat? Asking for a very large stomach.",
	},
	["race.tauren.quest_complete.w08.011"] = {
		"has to stoop low to take the reward, and straightens again with the care of someone well acquainted with low beams.",
		"bends nearly double to accept the reward, then unfolds back to full height, one joint after another.",
		"takes the reward between two enormous fingers, with all the delicacy of a kodo stepping around a nest.",
	},
	["race.tauren.quest_complete.w08.012"] = {
		"An'she sees the deeds of the day and Mu'sha those of the dark, so the elders teach. Either way, this one was seen.",
		"Whichever of the Earth Mother's eyes was open, it saw this done. That's enough witness for a tauren.",
		"No crowd, no herald. The Earth Mother has two eyes, the sun and the moon; one of them always sees the work.",
	},
	["race.tauren.quest_complete.w08.013"] = {
		"Another small payment on an old debt. The orcs stood with my people against the centaurs, the elders say, and a tauren remembers who stood beside them.",
		"Cairne teaches that the Horde's help in the centaur wars is a debt worth paying slowly and gladly. Every finished task pays a little of it.",
	},
	["race.tauren.quest_complete.w08.014"] = {
		"That's it. Let me stand here a moment and let my heart slow to a kodo's walk.",
		"Finished. I'll take a breath the size of a tauren before I take another errand.",
		"Over and handed in. Now I'm going to stand still for a while, like a kodo after a river crossing.",
	},
	["race.tauren.quest_complete.w08.015"] = {
		"If you're ever up on the bluff, find a fire and sit down. In Mulgore, folk say a guest is fed before being asked a single question.",
		"Should the road ever take you to Mulgore, find any tauren fire. The custom is food first, questions later.",
		"Come by Bloodhoof Village one day. There's always a pot on, so they say, and nobody will ask your business before you've eaten.",
	},
	["race.tauren.quest_complete.w08.016"] = {
		"No need for fine words. Praise sits on a tauren about as well as a saddle on a wild bull.",
		"Thank me less, please. Praise makes my ears twitch, and then everyone stares at the ears.",
	},
	["race.tauren.quest_complete.w08.017"] = {
		"The grass doesn't ask to be thanked for growing. I try to finish my work the same way, and mostly fail; I do like being thanked.",
		"On the plains nothing announces it's done. The grass simply grows, the river simply arrives. I could learn from that, and maybe tomorrow I will.",
	},
	["race.tauren.quest_complete.w08.018"] = {
		"rumbles a low sound of approval, deep enough to be felt in the chest more than heard.",
		"gives a single, unhurried nod, the kind that seems to come all the way up from the hooves.",
		"taps two fingers against one horn, a small private gesture, and turns away looking satisfied.",
	},
	["race.tauren.quest_complete.w08.019"] = {
		"Tell them a tauren did this. Not for my sake: so the next tauren who passes this way is welcomed.",
		"Remember the horns, if anyone asks who helped. My people's name is built out of deeds like this one.",
	},
	["race.tauren.quest_complete.w08.020"] = {
		"Up on the bluff a fire burns without me. One day I'll tell it about this.",
		"When I next ride the lift up to the rises, this will be one more story for the fire.",
	},
	["race.tauren.quest_complete.w08.021"] = {
		"Earth Mother, this was small, and it was done well. I hope you like small things done well; I've a lot of them.",
		"I give it to the Earth Mother, the way a hunter gives back a share of the kill. Small, but given.",
	},
	["race.tauren.quest_complete.w08.022"] = {
		"Done, and nothing trampled that wasn't meant to be. For a tauren, that's careful work.",
		"Finished, and I only stepped on what deserved it. Where I come from, that counts as grace.",
		"All done. Not one fence knocked over. Write that down somewhere.",
	},
	["race.tauren.quest_complete.w08.023"] = {
		"A kodo calf learns to walk in a morning and to carry loads in a year. I'm somewhere in between, and this helped.",
		"Every finished task is a little weight added to what I can carry. That's how kodo are trained, the herders say: one stone more each season.",
		"Strength grows the way a herd grows: slowly, then all at once one spring. Today was a slow day, and it counts.",
	},
	["race.tauren.quest_complete.w08.024"] = {
		"May what was broken here grow back like grass after a burn. It always does, on the plains.",
		"There. Give it a season; the plains taught me that most wounds in the land close if you leave them be.",
	},
	["race.tauren.quest_progress.w08.001"] = {
		"Finished out here. The rest is walking, kodo-steady: no hurry and no stops.",
		"That's the whole of it. A tauren carries news the way the plains carry wind: steadily, all the way.",
		"Everything asked is done. Time to point the horns toward whoever's waiting.",
	},
	["race.tauren.quest_progress.w08.002"] = {
		"One part done. The rest is out there; the plains taught me that a herd is gathered stray by stray.",
		"Some of it. A hunter of my people would say the trail is warm now. Keep following.",
		"Part of the way. Patience; even a kodo doesn't cross Mulgore in one step.",
	},
	["race.tauren.quest_progress.w08.003"] = {
		"ticks off one part of the task on a broad finger and looks around for the rest.",
		"grunts: half the job done, and no hurry at all to admit it's only half.",
		"flicks an ear, weighs what's done against what's left, and sets off at an even, tireless walk.",
	},
	["race.tauren.reputation_change.w08.001"] = {
		"A little more trust, earned the tauren way: slowly, the way a calf grows horns.",
		"Someone thinks better of me now. My people say a good name is like a deep well: dug slowly, and it never runs dry.",
		"Goodwill grows like the grass of Mulgore after the fires: quietly, and then everywhere.",
	},
	["race.tauren.rest_enter.w08.001"] = {
		"Rest at last. My people learned to rest wherever the herd stopped, and I have never lost the knack.",
		"A place to stop. A tauren can sleep almost anywhere; it is waking with a horn caught in something that I could do without.",
		"Time to set the load down. Somewhere in me an old herder counts heads, finds them all, and lets me sleep.",
	},
	["race.tauren.rest_enter.w08.002"] = {
		"A roof, a fire, and a bed that ends at my knees. I'll take the floor and a pile of hides, as usual, and be happier for it.",
		"Inns are built for shorter sleepers. I spread a blanket by the hearth and tell the innkeeper it is a tauren custom. It is now.",
	},
	["race.tauren.rest_enter.w08.003"] = {
		"lets the weight come off {g:his|her} hooves at last, and the whole great frame seems to settle a hand's breadth lower.",
		"eases down slowly, as large things do, and lets out a long breath that seems to come up from the ground.",
	},
	["race.gnome.journey.w09.001"] = {
		"Wings beat, the ground drops, and every gnomish instinct I have says this needs more rivets.",
		"Flight by feathers and muscle. Charming, really. Our flying machines in the old wars at least came with a manual.",
		"Up we go. I've calculated the odds of falling off. I'm choosing not to remember them.",
	},
	["race.gnome.journey.w09.002"] = {
		"clutches the saddle with both hands, feet dangling well short of the stirrups, and puts on a brave, scientific expression.",
		"settles into a saddle made for someone twice {g:his|her} size and holds on with grim, cheerful determination.",
		"peers over the side as the ground falls away, scribbles a hasty note about wing angles, then thinks better of it and holds on.",
	},
	["race.gnome.journey.w09.003"] = {
		"From up here the world looks like a model on a workbench, every road and river laid out neatly. I always want to adjust something.",
		"The land below turns into a map, and maps are a gnome's comfort. Everything in its place, at a safe distance.",
		"Higher and higher. The towns shrink into tidy little schematics. I wish the real ones were half as orderly.",
	},
	["race.gnome.journey.w09.004"] = {
		"Is there a manual for this creature? No? Of course not.",
		"Wings, check. Straps, check. Gnome, mostly calm.",
		"Fly steady, please. Gnomes bounce, but not well.",
	},
	["race.gnome.journey.w09.005"] = {
		"Solid ground. My knees approve; my stomach is still reviewing the matter.",
		"Down, and in one piece. I'll write up the flight later: excellent speed, questionable comfort, not a single rivet.",
		"Feet on the ground again. Flying is marvelous, and so is standing on something that doesn't flap.",
	},
	["race.gnome.journey.w09.006"] = {
		"slides down from the saddle, lands with a small hop, and gives the beast a polite, slightly wary pat.",
		"drops from the saddle a little farther than expected, straightens {g:his|her} coat and carries on as if it were all planned.",
		"climbs down carefully, checks every pocket in turn, and looks relieved that nothing stayed behind in the sky.",
	},
	["race.gnome.journey.w09.007"] = {
		"Arrived. New ground, new problems, and very likely new things to take apart. Lovely.",
		"Here at last. The flight was the easy part; now my legs remember they're short.",
		"Feet down, notes out. Whatever this place needs, I'd like to know before it asks.",
	},
	["race.gnome.journey.w09.008"] = {
		"Thank you, feathered transport. Your landing could use some work.",
		"Well flown. Mostly. I have notes, if anyone's interested.",
	},
	["race.gnome.quest_complete.w09.001"] = {
		"Finished, and every part I started with is still attached. I call that a flawless run.",
		"Done! No smoke, no sparks, and only one small yelp, which I'm choosing not to count.",
	},
	["race.gnome.quest_complete.w09.002"] = {
		"Another job done for people who had no reason to need a gnome. Someday I'd like to finish one for Gnomeregan.",
		"Good work, honest pay. Still not the work I'd most like to do, which is opening the gates of home again.",
	},
	["race.gnome.quest_complete.w09.003"] = {
		"dusts off {g:his|her} small hands with two brisk claps, like a tinker shutting the lid on a finished box.",
		"stands on tiptoe to hand over the last of it, then rocks back on {g:his|her} heels, thoroughly pleased.",
		"gives a quick, satisfied nod, the kind a gnome saves for a gear that finally meshes.",
	},
	["race.gnome.quest_complete.w09.004"] = {
		"Problem solved. Please hold your applause; I'm short, and it goes right over my head.",
		"There, sorted. You may thank me down here, a little below eye level.",
	},
	["race.gnome.quest_complete.w09.005"] = {
		"Done. I've already written down three things I'd do differently. That isn't regret; that's a revision.",
		"Finished, and the notes run longer than the job did. For a gnome, that's time very well spent.",
		"Complete. Now the fun part: working out why it worked.",
	},
	["race.gnome.quest_complete.w09.006"] = {
		"Done, and done for the Alliance. Gnomeregan's exiles pay their debts, one task after another.",
		"Another errand finished for the Alliance. A people in exile has to be twice as useful, and I don't mind one bit.",
	},
	["race.gnome.quest_complete.w09.007"] = {
		"A reward almost too heavy for me to carry. That's the best problem a gnome can have.",
		"Thank you! I'll need both arms for this purse, which is exactly how I like a purse.",
	},
	["race.gnome.quest_complete.w09.008"] = {
		"counts the reward coin by coin, frowns, and counts it again with the care of someone checking a measurement.",
		"weighs the payment in one small palm, does a quick sum under {g:his|her} breath, and tucks it away satisfied.",
	},
	["race.gnome.quest_complete.w09.009"] = {
		"The survivors say Thermaplugg advised flooding Gnomeregan with poison to save it. Whatever I fix, I fix so the patient lives.",
		"Mekkatorque listened to the wrong adviser once, the exiles say, and a city paid. I check my own solutions twice.",
	},
	["race.gnome.quest_complete.w09.010"] = {
		"Task complete. File it under things a small person finished after a big person was asked first.",
		"All done. Funny how often the job ends up with whoever's closest to the floor.",
	},
	["race.gnome.quest_complete.w09.011"] = {
		"A finished task is proof the world can still be fixed. Gnomes need proof like that, now and then.",
		"Something was broken, and now it isn't. After Gnomeregan, I never get tired of that feeling.",
		"One thing put right. It doesn't mend a city, but it mends my mood, which is a start.",
	},
	["race.gnome.quest_complete.w09.012"] = {
		"Done! I'd like a receipt, a sandwich and the next impossible thing, in that order.",
		"Finished! Now, is there anything to eat, and anything harder to do? Both, ideally.",
		"That's handled. What else have you got that nobody else wants to touch?",
	},
	["race.gnome.quest_complete.w09.013"] = {
		"climbs onto the nearest crate to deliver the good news from a more dignified height.",
		"clears {g:his|her} throat, straightens to full height, and reports success to somebody's belt buckle.",
	},
	["race.gnome.quest_complete.w09.014"] = {
		"Somewhere under Dun Morogh, gnomes who never got out still wander the halls, sick and lost. Every good deed up here is a word I'd like to send down to them.",
		"The leper gnomes still roam what's left of Gnomeregan. I finish my work up here and think of them, every single time.",
	},
	["race.gnome.quest_complete.w09.015"] = {
		"Finished. What's broken next?",
		"That's sorted. Got anything harder?",
		"Done. Next problem, please.",
	},
	["race.gnome.quest_complete.w09.016"] = {
		"They handed the job to the smallest person in the room. The smallest person in the room has just finished it.",
		"Nobody expected much from someone my size. Expectations, it turns out, are adjustable.",
	},
	["race.gnome.quest_complete.w09.017"] = {
		"Glad to help! If anything else breaks, ask for the gnome. There's usually one nearby, underfoot.",
		"Happy to lend a hand. Small hands, but they get into the places big ones can't.",
	},
	["race.gnome.quest_complete.w09.018"] = {
		"Done, and my legs did twice the walking anyone else's would. Next time I'm borrowing a mechanostrider.",
		"Finished. Short strides make for long errands; somebody ought to invent a cure for that, and it might as well be a gnome.",
	},
	["race.gnome.quest_complete.w09.019"] = {
		"Problem, attempt, failure, better attempt, solution. The order never changes; only the number of failures does.",
		"Try, fail, adjust, try again. An old tinker's rhythm, and it got this done too.",
	},
	["race.gnome.quest_complete.w09.020"] = {
		"hums three bright, tuneless notes of triumph and pockets the reward.",
		"lets out a small, pleased whistle through {g:his|her} teeth and pats the job goodbye.",
		"beams, a sudden wide gnomish grin that takes up most of a small face.",
	},
	["race.gnome.quest_complete.w09.021"] = {
		"Done, and on the first try. Well, the first try that counted.",
		"Success at the first attempt! The first attempt anyone saw, at least.",
	},
	["race.gnome.quest_complete.w09.022"] = {
		"A dwarf would shrug and call it an honest day's work. A gnome would draw a chart of it. I'm doing both.",
		"The dwarves of Ironforge finish a job and go for an ale. Gnomes finish a job and go for a pencil. I may try the ale this once.",
	},
	["race.gnome.quest_complete.w09.023"] = {
		"Tinker Town will hear about this, probably in far more detail than it wants.",
		"Somebody in Tinker Town is going to get the whole story of this, with diagrams, whether they asked or not.",
	},
	["race.gnome.quest_complete.w09.024"] = {
		"Let it be noted: a gnome did this! Small hands, large results!",
		"Write it down somewhere: finished by a gnome of Gnomeregan, in exile and in excellent form!",
		"Put my people's name on that one. Gnomes, the short ones who get it done!",
	},
	["race.gnome.quest_complete.w09.025"] = {
		"Every job finished out here is one more skill the gnomes can carry home, once there's a home to carry it to.",
		"I keep learning things on these errands. Gnomeregan will be rebuilt by gnomes who learned a great deal while they waited.",
	},
	["race.gnome.quest_complete.w09.026"] = {
		"sketches a quick diagram of what just happened in the air with one finger, then nods at it, satisfied.",
		"taps {g:his|her} temple twice, as if filing the whole affair somewhere safe for later study.",
	},
	["race.gnome.quest_complete.w09.027"] = {
		"Finished properly, not just finished. There's a difference, and gnomes can always tell.",
		"It works, and it'll keep working. That second part is the one that counts.",
		"Done to a standard I'd sign my name under. The High Tinker would ask for nothing less.",
	},
	["race.gnome.quest_complete.w09.028"] = {
		"There you are, all fixed. If it ever goes wrong again, I'll pretend to be surprised.",
		"All yours, in good order. Mind how you use it, and it'll mind you back.",
	},
	["race.gnome.quest_progress.w09.001"] = {
		"Stage one complete. Stage two: the same thing, only more of it.",
		"Partial results. Promising ones, too.",
		"Some of it done. The rest is a matter of iteration.",
	},
	["race.gnome.quest_progress.w09.002"] = {
		"That's every piece! Back to whoever asked; I want to see their face.",
		"All collected! Time for the delivery run.",
	},
	["race.gnome.quest_progress.w09.003"] = {
		"counts off what's done on small fingers, runs out of fingers, and starts over with a grin.",
		"crosses off one more line of a list kept entirely in {g:his|her} head, and hums.",
	},
	["race.gnome.quest_progress.w09.004"] = {
		"All done out here. The walk back is the one part of this I can't optimize.",
		"Finished. Now the long trip back on short legs, the only flaw in an otherwise excellent design.",
	},
	["race.gnome.reputation_change.w09.001"] = {
		"They think better of me now. A people in exile learns that goodwill is worth more than gold.",
		"A little more trust earned. Gnomes keep careful records, and this goes in the good column.",
		"My standing improves. Ironforge taught my people what it means when strangers decide to trust you.",
	},
	["race.gnome.rest_enter.w09.001"] = {
		"A place to rest. First I'll find a chair my size, which will take a while, and then I'll rest twice as hard.",
		"Rest at last. My legs have been doing double work all day just to keep pace with the world.",
		"Somewhere safe to sit. A gnome recharges quickly, given a cushion and five minutes without explosions.",
	},
	["race.gnome.rest_enter.w09.002"] = {
		"climbs onto a bench meant for taller folk, legs swinging, and lets out a long, contented sigh.",
		"drags a stool closer to the warmth, pulls a crumpled notebook from a pocket, and promptly forgets to open it.",
	},
	["race.gnome.rest_enter.w09.003"] = {
		"Resting in borrowed rooms is a gnomish specialty by now. Unpack the essentials, claim the warmest spot, and the place is home enough for the hour.",
		"An inn, a bed, a door that shuts. Simple things. The exile taught us not to call them small.",
	},
	["race.orc.journey.w09.001"] = {
		"Up we go. I check the straps, then check them again. An orc trusts strength, and a strap is only leather.",
		"The ground falls away. I hold on harder than I need to. Nobody is watching, so nobody will know.",
		"Hoisted into the air like a sack of grain. An orc's dignity does not survive a flight intact, but the rest of me usually does.",
	},
	["race.orc.journey.w09.002"] = {
		"swings up onto the wind rider and grips the harness with both green fists, jaw set as the wings beat.",
		"climbs onto the wind rider's back with a grunt, settles {g:his|her} weight, and gives the flight master a single nod.",
		"hunches low over the wind rider's neck as it springs into the air, tusks bared against the rush of wind.",
	},
	["race.orc.journey.w09.003"] = {
		"From up here the world is a map of colors. I look for red earth out of habit, and if I find it I feel a small tug.",
		"Below, roads turn to threads and forts to pebbles. I pick out the Horde's from the rest; even up here an orc keeps count.",
		"Height makes everything small, even war. For a moment, up here, I can see the shape of the world instead of its quarrels.",
	},
	["race.orc.journey.w09.004"] = {
		"Fly straight, beast, and I'll find you something with more meat on it than me.",
		"Steady, beast. I don't bite, and I'd prefer you didn't either.",
	},
	["race.orc.journey.w09.005"] = {
		"Down. My legs remember what they are for. My stomach takes a little longer.",
		"Solid ground under me. An orc was not made to hang in the sky, and my knees have been saying so the whole way.",
		"Feet down, harness off. Flying is fast, I grant it that. Dignified it is not.",
	},
	["race.orc.journey.w09.006"] = {
		"drops from the wind rider's back and lands heavily, rolling {g:his|her} shoulders as if to shake the sky off them.",
		"slides down from the saddle, stamps once on the ground to make sure it is real, and walks off without looking back.",
	},
	["race.orc.journey.w09.007"] = {
		"Good flying. I'll tell the others you only frightened me twice.",
		"You did well, beast. A strip of meat for you, if the flight master allows it.",
		"Thanks for the ride. My stomach may thank you later.",
	},
	["race.orc.journey.w09.008"] = {
		"Off we go. The wind riders serve the Horde as the wolves do: not slaves, partners. The old Horde never understood the difference.",
		"A wind rider carries an orc because it chooses to work with us. In the old Horde, the elders say, everything was driven with a whip. This is better.",
	},
	["race.orc.journey.w09.009"] = {
		"Landed. Wherever this is, it is a long way from the red dust. I set off on foot, the way an orc should.",
		"The flight ends and the walking begins. That is how an orc likes it: the last stretch on one's own legs.",
		"Down at last. I could have walked it, given a week. A wind rider is only a quicker kind of stubborn.",
	},
	["race.orc.quest_complete.w09.001"] = {
		"Finished. Next time, just tell me what needs breaking and stand back.",
		"Orcs don't need speeches before work, only the work. That's it, handled.",
		"Handled. Keep the thanks; give me the next job.",
	},
	["race.orc.quest_complete.w09.002"] = {
		"Said I would, and did. In the end that is all honor is: a word, and the legs to carry it.",
		"Honor isn't a banner. It's a promise kept when nobody would have known you broke it.",
		"I gave my word, and now it's paid in full. That weighs less than any coin.",
	},
	["race.orc.quest_complete.w09.003"] = {
		"knocks the dust of the road from {g:his|her} boots, and a small, satisfied grunt marks the job as finished.",
		"rolls {g:his|her} shoulders and grunts once, the plain sound an orc makes over work well done.",
	},
	["race.orc.quest_complete.w09.004"] = {
		"Orcs who lived through the camps talk of whole seasons spent doing nothing worth remembering. Not me. Not today.",
		"Elders who survived the internment camps say the worst of it was the idleness. I'll take sore feet over that any day.",
	},
	["race.orc.quest_complete.w09.005"] = {
		"Somebody owes me a meal for that, and an orc's meal is not a small thing.",
		"Finished, and hungry. Payment in roast boar is also accepted.",
	},
	["race.orc.quest_complete.w09.006"] = {
		"Plain work, done plainly. The Warchief asks that of every orc, and it's a fair thing to ask.",
		"Thrall never asked us for songs about ourselves. He asked for work that holds. This holds.",
		"Thrall didn't free us from the camps so we could sit and wait to be told. He freed us for things like this, done well.",
	},
	["race.orc.quest_complete.w09.007"] = {
		"Tell it in Orgrimmar if you like: I was asked, and I delivered.",
		"Carry word to the Valley of Strength if you want. I won't stop anyone bragging on my behalf.",
	},
	["race.orc.quest_complete.w09.008"] = {
		"Sweat dries. The job stays done. That's the trade, and I like it.",
		"My arms ache, and the thing is finished. An orc can sleep well on that.",
		"Hands sore, back stiff, task complete. An honest ledger.",
	},
	["race.orc.quest_complete.w09.009"] = {
		"Done right, too. Check it if you like; orcs don't cut corners, but I won't take offense.",
		"Look it over all you want. I've nothing to hide and even less patience.",
	},
	["race.orc.quest_complete.w09.010"] = {
		"Every honest task is a stone in Orgrimmar's walls. A small stone. Still a stone.",
		"Durotar wasn't built by heroes. It was built by orcs doing the next thing that needed doing, like this.",
	},
	["race.orc.quest_complete.w09.011"] = {
		"You expected it to take longer? You've been hiring the wrong races.",
		"Quicker than you thought? Next time, ask an orc first.",
	},
	["race.orc.quest_complete.w09.012"] = {
		"presses a fist to {g:his|her} chest and lets it rest there a moment: promise kept.",
		"gives one short nod, tusks bared in something close to a smile.",
	},
	["race.orc.quest_complete.w09.013"] = {
		"The elders say our blood ran hot with demon fire once. Mine runs hot only for honest work, and that's the better fever.",
		"In Orgrimmar they say Hellscream's death bought us this: a task we chose, finished by hands no demon owns.",
	},
	["race.orc.quest_complete.w09.014"] = {
		"Finished. An orc doesn't need to be asked twice, only once and clearly.",
		"Ask plainly and you get plain work back. Like this.",
		"Say what you need one time; orcs listen the first time. See?",
	},
	["race.orc.quest_complete.w09.015"] = {
		"Trolls, tauren, even the Forsaken: whoever's on the other end of a job like this, it's how the Horde holds together.",
		"The Horde is a lot of strange peoples agreeing to help each other. Today I did my share of the agreeing.",
	},
	["race.orc.quest_complete.w09.016"] = {
		"With my own two hands, start to finish. Lok'tar!",
		"Strength is for using, and I used it well!",
	},
	["race.orc.quest_complete.w09.017"] = {
		"If they start thanking me, I'll nod once and leave. Orcs aren't built for that much gratitude; it itches.",
		"Let them keep the speeches. A grunt and a handshake, and we're square.",
	},
	["race.orc.quest_complete.w09.018"] = {
		"Strength isn't only for the arena. Most days it's for carrying things where they need to go. Like today.",
		"Orcs talk of strength as if it lived in the fist. Half of it lives in the patience to finish.",
	},
	["race.orc.quest_complete.w09.019"] = {
		"Job's over. I'll take my pay and the road, in that order.",
		"Pay me and point me at the next thing. Orcs don't linger.",
		"That was my part. Settle yours and I'm gone.",
	},
	["race.orc.quest_complete.w09.020"] = {
		"Frostwolf, Warsong, Blackrock once: the clans were proud of different things. Every one of them was proud of a job finished.",
		"Whatever clan an orc hails from, they agree on one thing: what you take up, you finish.",
	},
	["race.orc.quest_complete.w09.021"] = {
		"cracks {g:his|her} knuckles one by one, looking faintly disappointed that nothing else needs hitting.",
		"glances around as if hoping the job had a second half, then shrugs and settles for the reward.",
	},
	["race.orc.quest_complete.w09.022"] = {
		"Every task like this leaves a little less room for the Burning Blade to whisper in. Busy orcs don't listen to cults.",
		"The Burning Blade feeds on orcs with nothing to do and nothing to believe. I have both, for now.",
	},
	["race.orc.quest_complete.w09.023"] = {
		"That's it? I've wrestled wolves that put up more argument.",
		"Over already? Durotar's scorpids put up more of a fight on a slow day.",
		"Already? I hadn't even warmed my arms up.",
	},
	["race.orc.quest_complete.w09.024"] = {
		"Next time I see Orgrimmar's gates, I'll walk through them with my head a little higher.",
		"Something to tell around the fire in Razor Hill, if anyone asks. Orcs always ask.",
	},
	["race.orc.quest_complete.w09.025"] = {
		"My word to you is kept. An orc's word is the one thing nobody can take from us again.",
		"Promise kept. My people had a great deal taken from them once; never their word.",
	},
	["race.orc.quest_complete.w09.026"] = {
		"A wolf doesn't boast after the hunt. It eats, it rests, it hunts again. Good enough for me.",
		"Wolves never brag about a kill. They eat and move on. Orcs could learn from them, and the best ones have.",
	},
	["race.orc.quest_complete.w09.027"] = {
		"Good work makes for a good thirst. Where's the grog?",
		"That's earned me a mug of something strong. Who's pouring?",
	},
	["race.orc.quest_complete.w09.028"] = {
		"Strength grows the way the red rock of Durotar was carved: one hard day after another.",
		"Nobody turns strong in one afternoon. You stack days like this one until the pile can bear weight.",
	},
	["race.orc.quest_progress.w09.001"] = {
		"That's everything they asked. Now the long walk to tell them, and an orc's legs don't mind it.",
		"All of it, gathered and done. The road to the one who asked is the easy part.",
		"Nothing left to do out here. The rest is carrying the news, and I carry well.",
	},
	["race.orc.quest_progress.w09.002"] = {
		"Some of it. Not all. Orcs don't stop at some.",
		"Part done. The rest is hiding from me, and it won't hide long.",
		"Not finished. Fine. I wasn't tired yet anyway.",
	},
	["race.orc.quest_progress.w09.003"] = {
		"Some way along. A wolf on a trail doesn't count the steps behind it, only the scent ahead.",
		"Not there yet. Nose down and feet moving, like a wolf that has the scent.",
	},
	["race.orc.quest_progress.w09.004"] = {
		"gives a grunt of satisfaction: everything is in hand, and only the walk remains.",
		"squares {g:his|her} shoulders and turns toward whoever is waiting, without a wasted step.",
	},
	["race.orc.reputation_change.w09.001"] = {
		"A little more respect. Orcs earn it the slow way, with deeds, and it lasts the longer for it.",
		"They think better of me now. Good. An orc's name is built like a wall: heavy stone on heavy stone.",
		"Respect, earned and not begged. That's the only kind an orc should carry.",
	},
	["race.orc.rest_enter.w09.001"] = {
		"A place to stop. An orc rests the way a wolf does: one ear up, and sound asleep in between.",
		"Rest. I set my things down where I can reach them without looking. An old habit of a people who slept with one hand near a weapon.",
		"Time to sit. The elders say an orc who rests without shame fights without fear. I mean to rest very well.",
	},
	["race.orc.rest_enter.w09.002"] = {
		"A roof and a fire. Somebody else's bench, somebody else's walls, but the warmth is the same. I'll take it.",
		"Indoors. The stools are always too small for an orc, but the fire does not care whose people lit it.",
		"Four walls and a hearth. Orcs build theirs thicker, but these will do for now.",
	},
	["race.orc.rest_enter.w09.003"] = {
		"lowers {g:himself|herself} onto a seat with a long grunt, stretches out {g:his|her} legs, and lets the weight of the road come off at last.",
		"sets down {g:his|her} pack and sits, heavy and content, like a boulder that has finally rolled to the bottom of the hill.",
	},
	["race.scourge.journey.w09.001"] = {
		"The ground lets go of me. No lurch in the stomach, only a mild curiosity about the view.",
		"Airborne. The living grip the harness until their knuckles go white. Mine are already that color, so I simply hold on.",
		"Up into the wind. The cold up here can't find anything in me that still minds it.",
	},
	["race.scourge.journey.w09.002"] = {
		"settles into the saddle as the beast lifts off, back straight and body perfectly still, like cargo that knows its destination.",
		"rises into the air without so much as a gasp, cloak snapping, hands resting on the harness.",
	},
	["race.scourge.journey.w09.003"] = {
		"If I fall off, just leave me. I'll walk back.",
		"Steady, beast. You're carrying a corpse with appointments.",
	},
	["race.scourge.journey.w09.004"] = {
		"From above, the land looks whole. The living see fields and roads. I keep looking for the places where something went wrong, out of habit.",
		"Below, the roads look like stitches holding the land together. I know a little about stitches.",
	},
	["race.scourge.journey.w09.005"] = {
		"Down. My joints creak a little from sitting still so long. That's the whole of my travel sickness.",
		"Ground again. A living rider would be stretching and groaning. I only have to check that nothing fell off on the way.",
		"Landed, and not a hair out of place. Mostly because there aren't many left.",
	},
	["race.scourge.journey.w09.006"] = {
		"climbs down from the saddle stiffly and pats {g:his|her} pockets, and then {g:his|her} seams, to make sure everything arrived.",
		"steps off the mount and stands a moment, unruffled, the wind still tugging at the cloak and at nothing else.",
	},
	["race.scourge.journey.w09.007"] = {
		"Thank you for the ride. You were very calm about the passenger.",
		"Good flight. Nobody screamed, not even me.",
	},
	["race.scourge.journey.w09.008"] = {
		"Back on the ground, among the living and their noise. The sky was quieter. The sky doesn't stare.",
		"On the ground. Now begins the part where people step aside without quite knowing why.",
	},
	["race.scourge.journey.w09.009"] = {
		"Flying, I remember that the living used to feel joy at this. I look for it in myself and find something smaller: a kind of quiet.",
		"The wind rushes past and I feel nothing of its cold. A pity. I'd like to have felt this once with a living face.",
	},
	["race.scourge.journey.w09.010"] = {
		"Down, and the earth under me again. I spent long enough under it; on top suits me better.",
		"Ground. Good. I've known the earth from below and from above, and walking on it is still my favorite.",
	},
	["race.scourge.journey.w09.011"] = {
		"Up, beast. And no sudden drops; some of my parts are only tied on.",
		"Smooth flying, please. I'm held together with thread and good intentions.",
	},
	["race.scourge.quest_complete.w09.001"] = {
		"Here it is, finished. You may count your fingers after we part, if it makes you feel better.",
		"All done. Go on, check that nothing of mine dropped in there. A finger, an ear. It happens.",
		"Finished, and nothing of me fell off on the job. I call that a good day.",
	},
	["race.scourge.quest_complete.w09.002"] = {
		"I gave my word and kept it. A small thing for the living. For one of us, a word kept is proof there is still someone inside to keep it.",
		"Promised, and delivered. Whatever else the grave took, it left me able to keep a promise.",
		"My word, freely given and freely kept. The dead are supposed to be faithless. I enjoy disappointing people.",
	},
	["race.scourge.quest_complete.w09.003"] = {
		"closes the matter with a short nod, the dry joints of {g:his|her} neck giving a faint creak.",
		"works stiff fingers open and shut once, as if to make sure the hands that did the work are still attached, and lets them fall.",
	},
	["race.scourge.quest_complete.w09.004"] = {
		"Pay me in coin, not in that look. I've had plenty of the look.",
		"Coin, please. The face you're making doesn't spend anywhere I've been.",
		"Your gold, if you don't mind. Keep the shudder; I already have a collection.",
	},
	["race.scourge.quest_complete.w09.005"] = {
		"Finished. For a moment I almost felt the old satisfaction, the warm kind. Then it passed, and the plain kind stayed. I'll take the plain kind.",
		"The living celebrate this sort of thing with supper and company. I stand here a while, and that is my celebration.",
	},
	["race.scourge.quest_complete.w09.006"] = {
		"Another task for Undercity. The Forsaken are few, so each of us has to count for ten.",
		"That's one more thing the Forsaken did for themselves. Nobody else was going to.",
		"Mark it down for the Forsaken. We're used to nobody else keeping score.",
	},
	["race.scourge.quest_complete.w09.007"] = {
		"Nobody fainted when I handed it over. Either I'm getting better at standing politely, or they're getting used to us.",
		"Not one scream at the hand-over. Progress, for the Forsaken, is measured in screams not screamed.",
		"They thanked me from ten paces off. A Forsaken learns to hear gratitude at a distance.",
	},
	["race.scourge.quest_complete.w09.008"] = {
		"says nothing for a moment, then gives a dry rasp of a laugh that seems to surprise even {g:him|her}.",
		"lets out a hoarse sound of approval, the closest thing to a sigh that a body without breath can manage.",
	},
	["race.scourge.quest_complete.w09.009"] = {
		"The apothecaries would want a full report: what I saw, what I touched, what it smelled like. Let them wait. I'm enjoying the finishing.",
		"Undercity always has an apothecary ready to make me write all this down in a ledger, with measurements. I'll give them a shrug.",
	},
	["race.scourge.quest_complete.w09.010"] = {
		"There. Done by someone with no pulse and all the patience in the world. You got a bargain.",
		"Finished. No meals, no sleep, no complaints. The dead make excellent hired help.",
		"All taken care of. I didn't even stop to eat. Then again, I rarely do.",
	},
	["race.scourge.quest_complete.w09.011"] = {
		"The Lich King had me fetch and carry without end, and none of it was mine. This errand was no grander, but I chose it. That is the whole difference, and it's enormous.",
		"Under the Scourge, every task finished only led to the next order. Now a task ends, and the next one waits until I decide.",
	},
	["race.scourge.quest_complete.w09.012"] = {
		"Tell the orcs a Forsaken did this. They won't believe it, and then they'll have to.",
		"If anyone in the Horde asks, say it was one of Sylvanas's people. Let them chew on that.",
	},
	["race.scourge.quest_complete.w09.013"] = {
		"I used to finish things because life was short. Now there's no hurry at all, and I finish them anyway. Habit, or something better than habit.",
		"When I was alive, a task like this was a race against the years. The years have stopped counting me. I did it anyway.",
	},
	["race.scourge.quest_complete.w09.014"] = {
		"sets the last of it aside and pushes a loose jaw back into place with the heel of a hand, plainly satisfied.",
		"gives a satisfied nod, then has to steady {g:his|her} jaw, which nodded a little more than the rest of {g:him|her}.",
	},
	["race.scourge.quest_complete.w09.015"] = {
		"The Scarlet Crusade calls us abominations. Abominations, it turns out, keep their word.",
		"Let the Crusade preach about the walking dead. This walking dead finished the job.",
	},
	["race.scourge.quest_complete.w09.016"] = {
		"No one waits to hear how it went. I tell myself anyway, briefly, and the telling is enough.",
		"Finished, and nobody to tell. I'll tell the stones of Undercity later; they've heard worse.",
	},
	["race.scourge.quest_complete.w09.017"] = {
		"Sorry about the smell. The work's good, at least, and the work's what you asked for.",
		"It's done. Yes, that smell is me. No, it doesn't come off.",
		"Finished. I'd stand closer to hand it over, but I'm told embalming oils are an acquired taste.",
	},
	["race.scourge.quest_complete.w09.018"] = {
		"Lordaeron's throne room sits in ruins above Undercity. Every small task like this one is a way of saying the dead still live there, and still mean to.",
		"Above the city, the old capital crumbles. Below it, we get things done. One more done.",
	},
	["race.scourge.quest_complete.w09.019"] = {
		"You can breathe now. I won't take offense; I've given it up myself.",
		"Finished. You can unclench now. I don't bite. Rarely.",
	},
	["race.scourge.quest_complete.w09.020"] = {
		"Whoever I was before would have been proud of this, I think. I can't ask them. I'll be proud on their behalf.",
		"The person I was in Lordaeron might have done this better or worse. I'll never know. This version did it.",
	},
	["race.scourge.quest_complete.w09.021"] = {
		"That's done. Tell whoever's next on the list that the dead are in a working mood.",
		"Bring me the next one. The dead don't tire, and I'd hate to waste that.",
	},
	["race.scourge.quest_complete.w09.022"] = {
		"stands still a while after the hand-over, unblinking, as though listening for a feeling that is slow to arrive.",
		"lingers a moment with a faintly puzzled look, the look of someone checking a pocket for something that used to be there.",
	},
	["race.scourge.quest_complete.w09.023"] = {
		"The coin will buy food I can barely taste. I'll buy it anyway; chewing passes the time, and it reminds the jaw what it's for.",
		"A reward for the living is a hot meal. Mine is a cold one, eaten for the habit. It still feels like a reward.",
	},
	["race.scourge.quest_complete.w09.024"] = {
		"Finished. Don't make a fuss; I wouldn't know what to do with it.",
		"There. No speeches, please. The dead are poor at accepting compliments.",
		"Done and delivered. Whatever thanks you had planned, consider it received.",
	},
	["race.scourge.quest_complete.w09.025"] = {
		"Tirisfal taught us one thing early: the Forsaken get what they work for, and little else. Here's a little more, worked for.",
		"Brill, Deathknell, the Sepulcher: our people built every outpost out of errands like this one. I've laid my brick.",
	},
	["race.scourge.quest_complete.w09.026"] = {
		"I'll admit it: I thought about quitting halfway. Then I remembered nobody can make me quit either.",
		"Finished. My own will got me through, the same stubborn thing that told the Lich King no.",
	},
	["race.scourge.quest_complete.w09.027"] = {
		"Done, and I didn't even die doing it. Again.",
		"Another job survived. I use the word loosely.",
		"Over, and in one piece. Most of one piece.",
	},
	["race.scourge.quest_complete.w09.028"] = {
		"wipes a smear of something dark from {g:his|her} sleeve, inspects the stitching beneath it, and moves on to whatever comes next.",
		"tugs a frayed stitch at {g:his|her} wrist tight again, the way the living might straighten a collar after a job well done.",
	},
	["race.scourge.quest_progress.w09.001"] = {
		"Some of it done. The rest will keep; most things keep better than I did.",
		"Partway. Slow and steady, like the rot, only in a useful direction.",
		"Halfway. I'm in no hurry; the grave cured me of hurry.",
	},
	["race.scourge.quest_progress.w09.002"] = {
		"counts the remainder on stiff fingers, loses a knuckle's worth of patience, and carries on.",
		"ticks something off on stiff gray fingers and walks on without hurry.",
	},
	["race.scourge.quest_progress.w09.003"] = {
		"All of it. Back to whoever asked, and I'll try not to make them flinch.",
		"Everything's gathered. Time to collect and watch someone pretend not to stare.",
		"Finished here. Now the walk back, which for once I don't mind; my legs never tire.",
	},
	["race.scourge.quest_progress.w09.004"] = {
		"Ready to hand over. I don't feel eager, exactly, but I remember eager, and this is close.",
		"All of it gathered. Some pale cousin of pride stirs. I'll let it come along.",
	},
	["race.scourge.reputation_change.w09.001"] = {
		"They think a little better of one of the Forsaken. I didn't expect it to matter. It does, a bit.",
		"A sliver more trust, given to the dead. I'll carry it carefully; it's fragile, and so are they.",
		"Someone has decided I'm less of a monster than they thought. Small victory. I'll keep it.",
	},
	["race.scourge.rest_enter.w09.001"] = {
		"A place to rest. I don't need the bed the way the living do, but I'll take the quiet, and the right to sit without being stared at.",
		"Safe walls. I don't tire, exactly, but something in me unclenches, a fist I didn't know I was making.",
		"At last somewhere I can stop being watched. The dead don't need sleep; what we need, now and then, is to be ignored.",
	},
	["race.scourge.rest_enter.w09.002"] = {
		"A chair, no bed. The dead make cheap guests: we don't sleep, we barely eat, and we never complain about the draft.",
		"No room for me, thanks. A corner will do, and I'll try not to frighten the other guests.",
	},
	["race.scourge.rest_enter.w09.003"] = {
		"sits down with the stiff care of old joints, and goes so still that the room soon forgets {g:he|she} is there.",
		"finds a corner out of the way, draws up {g:his|her} hood and settles into a patient, unbreathing stillness.",
		"lowers {g:himself|herself} onto a bench and lays both hands flat on the table, as if to anchor a body that has forgotten how to tire.",
	},
	["race.troll.journey.w09.001"] = {
		"Up into the wind. I hold on with my long fingers and tell my stomach this is perfectly natural for a troll. My stomach is not convinced.",
		"Off the ground we go. Trolls climb trees, not sky, and my knees would like that noted.",
		"The beast beats its wings and the world drops away. I grin, mostly so my face has something to do besides panic.",
	},
	["race.troll.journey.w09.002"] = {
		"folds {g:his|her} long legs tight against the beast's flanks as it climbs, tusks bared to the rushing air.",
		"hunches low in the saddle as the wings take hold, long arms locked around the beast's neck.",
		"settles into the climb with a troll's easy balance, hair whipping back and eyes narrowed against the wind.",
	},
	["race.troll.journey.w09.003"] = {
		"Fly smooth, friend. I tip well, in fish.",
		"Easy on the turns, beast. I've got a lot of leg to keep track of.",
		"Up we go! Try not to drop me, I'm the only troll I've got.",
	},
	["race.troll.journey.w09.004"] = {
		"From up here every patch of blue might be the sea. My eyes go to it first every time, like a needle to the north.",
		"Below, the land shrinks to a map. I search the edges of it for water, the way my people always search the horizon for home.",
		"The ground falls away and I find myself hunting for a glint of surf. Wherever a troll flies, some part of the troll is looking for the coast.",
	},
	["race.troll.journey.w09.005"] = {
		"Solid ground. My knees argue about it for a moment, then remember how walking works.",
		"Down again. I unfold one long leg at a time and check that both still belong to me.",
		"Feet on the earth, wind out of my ears. A troll is a creature of the ground and the trees, and I am happy to be one again.",
	},
	["race.troll.journey.w09.006"] = {
		"slides down from the saddle in one long, loose motion and shakes the wind out of {g:his|her} hair.",
		"drops to the ground, stretches until {g:his|her} back cracks, and gives the beast a grateful pat on the neck.",
		"steps off, wobbles once on long legs, then catches the balance with a short laugh.",
	},
	["race.troll.journey.w09.007"] = {
		"Down again! Somebody give me something that doesn't move.",
		"Good flight. Never again. Until next time.",
		"Ground! I missed you, ground. Don't ever change.",
	},
	["race.troll.journey.w09.008"] = {
		"A long flight. The whole way I watched coastlines slide past and named the ones I knew. Now my legs need reminding they are mine.",
		"So many miles of land and water under the wings. A troll's people crossed one sea in fear; I crossed half a continent sitting down.",
	},
	["race.troll.quest_complete.w09.001"] = {
		"All done. If the reward smells of fish, so much the better.",
		"Here it is. First the troll works, then the troll eats. That's the order of things.",
		"Finished. Count it if you like; I'll be over there, looking for something to put on a fire.",
	},
	["race.troll.quest_complete.w09.002"] = {
		"Word kept. The witch doctors of Sen'jin say a broken promise follows you around like a stray dog. Nothing following me.",
		"Finished as promised. The witch doctors say a kept word is the cheapest charm there is, and the strongest.",
		"A promise is a little mojo you put on yourself, the witch doctors say. This one's lifted now.",
	},
	["race.troll.quest_complete.w09.003"] = {
		"hands the last of it over with a flourish of long fingers, tusks bared in a pleased grin.",
		"drums a quick rhythm on one thigh, the kind of beat Darkspear children tap out on overturned boats.",
		"rolls {g:his|her} long neck from side to side and lets out a short, contented laugh.",
	},
	["race.troll.quest_complete.w09.004"] = {
		"The elders of Sen'jin say our old chief gave his life so the tribe could walk free. Small jobs like this are how the rest of us pay it back.",
		"Sen'jin died so the Darkspear could have a tomorrow, the elders say. I try to fill mine with something worth it. Today, this.",
	},
	["race.troll.quest_complete.w09.005"] = {
		"There. Next time, ask for something hard. My arms are too long for little jobs.",
		"Done. You had a worried look. Never worry when a troll says yes.",
		"Finished, mon. Took me less time than the walk over.",
	},
	["race.troll.quest_complete.w09.006"] = {
		"Job done. Now a fire, a fish on a stick, and nobody asking me for anything until it's crisp.",
		"Finished. My belly has been doing its own sums all day, and it says supper is overdue.",
		"Done, and hungry enough to eat a whole basket of crabs. Shells too, maybe.",
	},
	["race.troll.quest_complete.w09.007"] = {
		"A spirit somewhere is nodding at me. Or laughing at me. With the loa it's often both.",
		"I mutter a thank-you to whatever spirit was watching. Better to thank one that wasn't there than ignore one that was.",
	},
	["race.troll.quest_complete.w09.008"] = {
		"Glad to help. The Darkspear remember who was kind to them, and I'll remember you.",
		"There, it's handled. May your nets come up heavy and your fire never go out.",
		"Done. Go well, and if the trouble comes back, send for a troll.",
	},
	["race.troll.quest_complete.w09.009"] = {
		"touches two fingers to a tusk and then to the ground, unhurried, like someone settling a small debt.",
		"murmurs a few words in the trolls' own tongue over the finished work, half a thanks and half a joke.",
	},
	["race.troll.quest_complete.w09.010"] = {
		"One more thing put right. Like mending a net: no single knot matters, and all of them do.",
		"Small work, honest work. A canoe is only many little pegs, and it still crosses the sea.",
		"Done. The sea is made of drops, the beach of grains. I'm content to be one grain that did its part.",
	},
	["race.troll.quest_complete.w09.011"] = {
		"Surprised? Everybody's surprised when the troll comes back with what they asked for.",
		"Yes, it's all there. I only stopped twice for a nap.",
	},
	["race.troll.quest_complete.w09.012"] = {
		"Another job finished. The Echo Isles are still in the hands of that mad witch doctor, the elders say. Every task feels like one more plank in the boat that takes them back.",
		"Done. One day the Darkspear will sail home to the Echo Isles. Until then I keep my hands busy and my word good.",
	},
	["race.troll.quest_complete.w09.013"] = {
		"That's Darkspear work. Clean, quick, and finished with a grin.",
		"Tell whoever asks: a troll of the Darkspear did this, and barely broke a sweat.",
		"Done, and done well. The Darkspear don't do things by halves.",
	},
	["race.troll.quest_complete.w09.014"] = {
		"The orcs grunt when a job's done. The tauren nod. I prefer to laugh. Same meaning, more noise.",
		"An orc would just say 'done' and walk off. A troll says 'done' and waits for the story to be told properly.",
		"The Forsaken would sneer at a job like this, the orcs would grunt. Me, I'll grin about it all the way to the next one.",
	},
	["race.troll.quest_complete.w09.015"] = {
		"Long legs, long reach, long patience. That's what it took, and that's what trolls are made of.",
		"The job wanted patience. People think trolls are wild, but a hunter in the jungle can wait longer than anyone.",
	},
	["race.troll.quest_complete.w09.016"] = {
		"unfolds to full height, which takes a moment, and gives an idle nod over a job well done.",
		"hums a scrap of a fishing chant, the sort sung while hauling nets on the Durotar coast.",
	},
	["race.troll.quest_complete.w09.017"] = {
		"Done as you asked. No more, no less.",
		"It's taken care of. Anything else, say it now; I don't stay in one spot for long.",
		"Finished. Paid in full, nothing owed on either side.",
	},
	["race.troll.quest_complete.w09.018"] = {
		"Good mojo on this one. I can feel it, the way you feel the tide turn without looking.",
		"Some jobs leave bad mojo on your hands. Not this one. This one comes away clean.",
		"The spirits liked that. I can tell by how light my feet feel.",
	},
	["race.troll.quest_complete.w09.019"] = {
		"Finished. The road's calling, and a troll's long legs never learned to say no to it.",
		"Done here. Next stop is wherever the wind and the next job say.",
	},
	["race.troll.quest_complete.w09.020"] = {
		"Picked up a scratch or two doing it. Don't look for them; they're already gone.",
		"Cost me some skin. Troll skin grows back, so I won't put it on the bill.",
	},
	["race.troll.quest_complete.w09.021"] = {
		"Our ancestors built empires and forgot how to keep their word. The Darkspear are fewer, and we keep it.",
		"The Gurubashi had gold and temples. We have a village of huts and a name people can trust. I know which I'd rather carry.",
		"The Gurubashi empire rotted from its own hunger. Small, honest jobs like this keep the Darkspear off that road.",
	},
	["race.troll.quest_complete.w09.022"] = {
		"For the Horde, for the Darkspear, and a little bit for the coin.",
		"Thrall gave my people a home; the least a troll can do is make it a better one. Done.",
		"Someone asked, a troll answered. Thrall's Horde is built on small answers like that.",
	},
	["race.troll.quest_complete.w09.023"] = {
		"A quiet moment. A troll learns to enjoy the space between one job and the next, like the lull between waves.",
		"Done. I let the moment settle. On the coast you learn the sea is loudest just before it goes still.",
	},
	["race.troll.quest_complete.w09.024"] = {
		"That's the last of it. If you have more trouble, I have more patience. Not much more.",
		"All done. Don't thank me too long; thanks go stale, coin doesn't.",
	},
	["race.troll.quest_complete.w09.025"] = {
		"Finished. Even a bat knows when to stop hunting and hang upside down for a while. My turn.",
		"Job's done. Raptors eat, then doze in the warm; there's wisdom in raptors.",
	},
	["race.troll.quest_progress.w09.001"] = {
		"Some of it done. The rest is waiting for me like fish wait for the net. Not that they know it.",
		"Getting there. Slow and steady, like a canoe against the current.",
		"Not done, but not stuck. A troll can work with that.",
	},
	["race.troll.quest_progress.w09.002"] = {
		"That's all of it. Time to go collect, and maybe eat on the way.",
		"Everything's done. Back I go: long legs, short trip.",
		"Done out here. Somebody's waiting, and trolls don't like to keep people waiting long.",
	},
	["race.troll.quest_progress.w09.003"] = {
		"counts off on long fingers what's left to do, and runs out of fingers less often than before.",
		"eyes the work still ahead with the patience of someone fishing on a slow tide.",
	},
	["race.troll.quest_progress.w09.004"] = {
		"All of it done. The spirits like a task carried back whole.",
		"Nothing left but to hand it over. Funny how the walk back always feels shorter.",
	},
	["race.troll.reputation_change.w09.001"] = {
		"They think better of me now. Among trolls, a good name travels faster than a raptor.",
		"A little more trust earned. The Darkspear were exiles once; we know what being welcome is worth.",
		"My name sits a little higher with them. Good mojo, that.",
	},
	["race.troll.rest_enter.w09.001"] = {
		"Time to rest. I find the coolest corner, stretch my legs as far as they go, and let them hang off the end of whatever is there.",
		"A place to stop. Trolls can doze almost anywhere, but we like a breeze and room for the elbows. I'll find both, or complain until I do.",
		"Rest. My long bones settle one by one, like a camp going quiet after the fire.",
	},
	["race.troll.rest_enter.w09.002"] = {
		"folds down onto the nearest seat in sections, the way only a troll can, and lets out a long, contented sigh.",
		"sinks into a loose crouch, then all the way down, long limbs sprawling in every direction at once.",
	},
	["race.troll.rest_enter.w09.003"] = {
		"A roof and a fire. The bed is too short and the room too warm, but a troll has slept in worse. Up trees, mostly.",
		"Indoors, with walls and a door that shuts. I prop it open a crack. A troll sleeps better with the air moving.",
	},
}, "base_world")
