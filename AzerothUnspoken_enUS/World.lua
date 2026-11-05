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
}, "base_world")
