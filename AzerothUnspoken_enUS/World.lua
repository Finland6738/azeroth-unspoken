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
	["band.b60.quest_complete.w10.001"] = {
		"Done. Next time, send word sooner. Trouble is cheaper while it's small.",
		"Taken care of. Call on me earlier next time; I'd rather prevent than repair.",
		"Finished. And please, the moment something like this starts, find me.",
	},
	["band.b60.quest_complete.w10.002"] = {
		"The reward is something I'd sell without looking at it. I'll take it anyway; refusing would insult them.",
		"Another pouch of coin and a trinket I'll never wear. The thanks in their voice was worth more.",
		"The prize means little to me now. Their relief means a great deal, which is a strange way round to have ended up.",
	},
	["band.b60.quest_complete.w10.003"] = {
		"tucks the reward away without a glance, already looking past it toward whatever comes next.",
		"accepts the thanks with a short nod, the kind that says this was work, not a favor to be paid back.",
		"lets the reward sit in {g:his|her} palm a moment, weighs it out of old habit, and puts it away.",
	},
	["band.b60.quest_complete.w10.004"] = {
		"That's done. If anyone asks, it was terribly difficult and I was magnificent.",
		"Finished. Feel free to embellish the story; I won't correct you.",
		"Done. Tell it however you like. Put a dragon in it, if that helps.",
	},
	["band.b60.quest_complete.w10.005"] = {
		"One more thing the world's horrors don't get to keep. Small, but the whole war is made of small things.",
		"A little ground taken from the dark. It won't be in any chronicle, and it still counts.",
		"Someone sleeps easier for this. That's the whole ledger, and it balances.",
	},
	["band.b60.quest_complete.w10.006"] = {
		"Next time, give the small jobs to the new faces. They need them more than I do.",
		"Leave the easy errands for the young ones. Save the ugly ones for me.",
		"If you've got simpler work, hand it to someone starting out. They have to learn somewhere.",
	},
	["band.b60.quest_complete.w10.007"] = {
		"Done, and I feel it in my shoulders. Strength doesn't mean it stops costing; it means I can afford it.",
		"Another one finished. The body keeps a tally of these even when I don't.",
		"That's one off the list. The list, I notice, has never once got shorter on its own.",
	},
	["band.b60.quest_complete.w10.008"] = {
		"Far back on the road there's a first errand: a few pelts, a lost satchel. I'd like to tell that beginner it all adds up to this.",
		"The first jobs I ever took paid in copper and pride. This one paid better, and I'm less proud of the pay.",
		"It's odd. The work hasn't changed so much since the start: someone asks, I go, it gets done. Only the monsters grew.",
	},
	["band.b60.quest_complete.w10.009"] = {
		"Done. Now tell me what you were too afraid to ask for.",
		"That's finished. Whatever you're saving for someone braver, I'm listening.",
		"The easy part's over. What's the job you didn't think anyone would take?",
	},
	["band.b60.quest_complete.w10.010"] = {
		"Another mark in someone's ledger of who can be trusted. Those ledgers open more doors than any key.",
		"It's slow, this business of being trusted by people who've been let down before. One task, then another.",
		"No hero's welcome, just a nod that's a little warmer than the last one. That's how standing is built.",
	},
	["band.b60.quest_complete.w10.011"] = {
		"There. Was that the whole problem? I brought supplies for something much worse.",
		"That's it? I'd braced for a disaster. Pleasantly disappointed.",
		"All done, and nothing caught fire. By my standards these days, that's a holiday.",
	},
	["band.b60.quest_complete.w10.012"] = {
		"This job is done. Whatever made it necessary is still out there, bigger than any one task.",
		"I can finish a hundred errands like this and the root of it all will still be out there, patient.",
		"Solved, for here. Far off, whatever caused it is already busy causing the next one.",
	},
	["band.b60.quest_progress.w10.001"] = {
		"Part of it done. I'm past rushing; it'll be finished when it's finished, and finished properly.",
		"Not there yet. At this stage I trust the pace more than the impatience.",
	},
	["band.b60.quest_progress.w10.002"] = {
		"That's all of it. Someone's waited long enough; let's not make it longer.",
		"Everything they needed. Now the walk to tell them, which is the part they'll remember.",
	},
	["band.b60.reputation_change.w10.001"] = {
		"A little more standing with them. At this point in the road I collect trust the way others collect trophies, and it's the better collection.",
		"They think better of me now. Funny how the hardest fights matter less to people than whether you kept showing up.",
	},
	["mood.city.journey.w10.001"] = {
		"Solid ground and other people's elbows. After hours of wind in my ears, a crowd's chatter sounds almost like music.",
		"The flight ends and the city starts at once: a merchant calling prices, a guard yawning, someone arguing about a cart.",
		"Feet down. Within ten paces I've been offered a sword, a hot pie and directions I never asked for.",
	},
	["mood.city.journey.w10.002"] = {
		"slides down from the mount, shakes the stiffness out of {g:his|her} legs and steps into the flow of the crowd as if {g:he|she} had never left it.",
		"comes down from the flight with the wind still roaring in {g:his|her} ears, and straightens {g:his|her} gear before anyone has a chance to stare.",
		"lands, gives the handler a nod, and within a dozen steps is swallowed by the traffic of the city.",
	},
	["mood.city.journey.w10.003"] = {
		"Down from the sky and straight into a queue. Cities never change.",
		"All that open air, and now I'll spend half an hour getting past one cart.",
		"Ah, the city. Somebody's already shouting, and I haven't even found my legs.",
	},
	["mood.city.journey.w10.004"] = {
		"Up there it was me and the wind. Down here it's me and a thousand people, which is a different kind of alone and a good deal louder.",
		"The city takes me back without noticing I was gone. Flights end like that: one moment the whole world lies below you, the next you're one more face in a street.",
	},
	["mood.city.journey.w10.005"] = {
		"A city at the end of a flight means a bath, a hot meal and a bed somebody else made. I'll take them in whatever order they come.",
		"Smiths, cooks and a bank, all within shouting distance. For a while the world's troubles can queue up somewhere else.",
		"Every city looks like safety from the air. On the ground it looks like errands. Still, errands beat ambushes.",
	},
	["mood.city.journey.w10.006"] = {
		"Behind me the smells of the city come apart one by one: smoke, bread, the tannery, the stables. Then only wind.",
		"I leave my errands down there, half of them unfinished. They'll keep; cities are good at keeping things waiting.",
		"The guards, the hawkers, the beggar who knew my face: all of it falls behind in a few wingbeats. The city won't miss me, and that's as it should be.",
	},
	["mood.city.journey.w10.007"] = {
		"settles into the saddle as the mount pulls away, and watches the city's stone fall behind, turn into a pattern, then a smudge.",
		"rides out the first lurch of the flight with one hand tight on the harness, the din of the streets fading under the beat of wings.",
		"glances back once at the city slipping away, the way one glances at a busy table just left, then turns {g:his|her} face to the road ahead.",
	},
	["mood.city.journey.w10.008"] = {
		"Goodbye, crowds. Goodbye, prices. I'll miss the pies.",
		"Off we go. If anyone down there was looking for me, they'll have to shout louder.",
		"Up and out. Nobody up here is going to try to sell me anything.",
	},
	["mood.city.journey.w10.009"] = {
		"A city is the last door with a lock on it for a long while. I feel it close behind me, and I don't look back.",
		"Guards and bolted doors give way to open country. The city was the easy part; it always is.",
		"Down there, people rest behind locked doors and grumble about the price of bread. I fly toward the places that make those locks necessary.",
	},
	["mood.city.journey.w10.010"] = {
		"There was a face in that crowd I meant to remember. Gone now, with the rest of it.",
		"Every time I leave a city I take one small thing along: a tune from a doorway, a smell, a stranger's laugh. Today it's a vendor's curse I didn't quite catch.",
		"So many people passed, and I'll never see one of them again. A city is a river of strangers; I've just stepped out of it.",
	},
	["mood.city.rest_enter.w10.001"] = {
		"Somewhere safe. I can let my guard drop a notch, and my pack drop all the way.",
		"Safe streets. Whatever I sleep on next, nothing is going to wake me with teeth.",
		"The city's peace settles over me. My shoulders notice it a moment before I do.",
	},
	["mood.city.rest_enter.w10.002"] = {
		"lets {g:his|her} shoulders sink as the guarded streets close around {g:him|her}, and unbuckles one strap, then another.",
		"slows to an easy walk, the wariness of the road draining out of {g:his|her} step a little at a time.",
		"rolls the stiffness out of {g:his|her} neck, judging the city safe enough to stop listening for every footstep.",
	},
	["mood.city.rest_enter.w10.003"] = {
		"Guards, merchants and somewhere to sit. I'm officially off duty.",
		"Right. Nobody's going to try to kill me for a while. Somebody may try to overcharge me, but I'll survive that.",
		"Safe at last. Now the only thing that can ambush me is the price of a meal.",
	},
	["mood.city.weather_change.w10.001"] = {
		"Rain over the city: the stalls throw covers over their goods, and every doorway fills with people pretending they meant to stop there.",
		"The rain comes, and the crowd changes shape at once: faster, closer to the walls, hoods up.",
	},
	["mood.city.weather_change.w10.002"] = {
		"watches the crowd spill back out of the doorways as the weather clears, the stalls uncovering their goods one after another.",
		"steps out into the cleared air along with everyone else, as if the whole street had taken a breath at the same moment.",
	},
	["mood.desert.journey.w10.001"] = {
		"My knees creak as I climb down, and the first breath tastes of grit. Dry country greets you with a handful of dust in the face.",
		"On the ground, and squinting already. Everything here is the color of dust, and soon I will be too.",
		"Down from the flight. The wind up there was cool; the land down here has never heard of the idea.",
	},
	["mood.desert.weather_change.w10.001"] = {
		"turns {g:his|her} back on the rising sand and pulls a cloth across {g:his|her} face as the air fills with stinging grit.",
		"hunches into the sandstorm, one arm raised, and keeps walking by memory more than by sight.",
	},
	["mood.fire.journey.w10.001"] = {
		"comes down off the flight into air so hot and dry it stings the eyes, and blinks hard until they water.",
		"lands on scorched ground and feels the heat climbing through {g:his|her} boot soles before the wings have even folded.",
	},
	["mood.forest.journey.w10.001"] = {
		"The treetops close up below like a green sea, and the forest swallows the spot where I stood without a ripple.",
		"Up through the leaves and into the open. The woods go on whispering down there, whether I listen or not.",
	},
	["mood.jungle.journey.w10.001"] = {
		"The canopy drops away beneath the wings, and for the first time in ages the air is dry enough that I notice I'm breathing it.",
		"Up and out of the green. From above, the jungle looks like a single great animal breathing, and I'm glad to be off its back.",
	},
	["mood.plague.journey.w10.001"] = {
		"The wings lift me out of the sick air. I won't breathe deeply until it's well behind me, but I will breathe.",
		"Below, gray fields and black trees fall away. I keep my eyes ahead; there's nothing down there I want to remember.",
	},
	["mood.snow.journey.w10.001"] = {
		"Down into the cold. The flight was chilly; the ground is worse, and means to stay that way.",
		"Boots in the snow before I've even pried my hands off the harness. Every breath comes out white.",
		"Feet down, and within ten steps the cold has found every gap in my clothes. It's had practice.",
	},
	["time.dawn.journey.w10.001"] = {
		"Up into the dawn. The land below is still gray, and the light is coming up to meet me.",
		"Taking off at first light. Below, the world is still rubbing its eyes.",
	},
	["time.dawn.journey.w10.002"] = {
		"touches down in the early light, stiff from the cold air above, and stamps some warmth back into {g:his|her} feet.",
		"lands just as the dawn comes up, and stands a moment watching the color return to the land.",
	},
	["time.day.journey.w10.001"] = {
		"Up, with the day wide open around me. Down below, every track and wall and ditch is drawn out in plain sight.",
		"A flight in good light. I can see the folk on the roads below going about their errands, small as ants and just as busy.",
		"Climbing into daylight. From up here the land looks like it's been at work for hours and isn't finished yet.",
	},
	["time.day.journey.w10.002"] = {
		"settles into the saddle as the ground falls away, eyes following the roads below while the daylight lasts.",
		"takes to the air in the middle of the day, and leans a little to watch the land slide past beneath.",
		"rises into the hours of light with a steady grip, picking out landmarks below one by one.",
	},
	["time.day.journey.w10.003"] = {
		"Down with daylight to spare. Good: time to find my bearings before anything finds me.",
		"Landed, and the day's still going. That's hours of walking I didn't have to do, and hours of light left to use.",
	},
	["time.day.journey.w10.004"] = {
		"Down in good light. No groping about for the road this time.",
		"Landed in broad day. If I get lost now, it's entirely my own doing.",
	},
	["time.day.rest_enter.w10.001"] = {
		"A rest in the middle of the day. It feels like stealing hours from someone, and I don't mind at all.",
		"Stopping while there's still light. The road will have to manage without me for a bit.",
		"Plenty of day left, and I'm spending some of it sitting down. A small, honest luxury.",
	},
	["time.day.weather_change.w10.001"] = {
		"In daylight I can watch the change come across the land like a slow tide, long before it reaches me.",
		"The sky is turning, and by day there's no missing it: the whole land takes on another color at once.",
		"Good that it's day. A change like this is easier to read when you can see the far edge of it.",
	},
	["time.dusk.journey.w10.001"] = {
		"Taking off with the light failing. I'll land in the dark, most likely, and that's the beast's problem.",
		"Up into the dusk. The land below is losing its colors one by one, and I have the best seat to watch.",
	},
	["time.dusk.journey.w10.002"] = {
		"Down before full dark. Just about. I'll take it.",
		"Landed with the last light. Now for a roof before the night finds me.",
	},
	["time.night.journey.w10.001"] = {
		"A night flight. The beast knows the way better than I do; all I can do is trust it and hold on.",
		"Flying through the dark, the land below is nothing but a guess. I'll have to take the world's word that it's still there.",
		"In the dark there's no up or down worth the name, only the beat of wings and the cold on my face.",
	},
	["time.night.journey.w10.002"] = {
		"climbs down from the saddle in the dark and waits a moment for the ground, and the eyes, to settle.",
		"lands in the night and stands still, listening, before taking a single step.",
		"slides to the ground in the darkness, finds {g:his|her} footing by touch, and lets out a long breath.",
	},
	["time.night.journey.w10.003"] = {
		"Down, and it's black as pitch. Somebody point me to a bed. Anybody.",
		"Landed in the dark. Now, which way is anything?",
	},
	["time.night.rest_enter.w10.001"] = {
		"Somewhere safe, and only half the night gone. That's more sleep than I'd hoped for.",
		"Rest, at last, at this hour. The dark can carry on without me keeping an eye on it.",
	},
	["time.night.weather_change.w10.001"] = {
		"Something has changed in the dark. I can't see it yet; I feel it on my skin and smell it in the air.",
		"The sky is shifting up there above the night, out of sight. I'll know what it has decided soon enough.",
	},
	["weather.clear.dawn.w10.001"] = {
		"Dawn under an open sky. The first color reaches every hill at once; there's nothing up there to stop it.",
		"No cloud to catch the dawn, so it comes plain and pale, and the land wakes all at once instead of by halves.",
	},
	["weather.clear.dawn.w10.002"] = {
		"watches the dawn come up into a cloudless sky, the far ridges taking shape one after another.",
		"turns toward the paling sky at dawn and finds not a single cloud in it, only a long clean edge of color.",
	},
	["weather.clear.dusk.w10.001"] = {
		"A clear dusk. Nothing in the sky to hold the color, so it drains off clean, and the chill comes in right behind it.",
		"Dusk with an empty sky: the light goes slowly and evenly, like a lamp being turned down by a careful hand.",
	},
	["weather.clear.dusk.w10.002"] = {
		"watches the clean sky change color at dusk, the far ridges going dark before the near ones.",
		"pulls {g:his|her} cloak a little closer at dusk; under a sky this clear, the air cools quickly.",
	},
	["weather.clear.journey.w10.001"] = {
		"Not a cloud to fly through. The wings beat steady, and below me the rivers and roads lie open like a map someone forgot to fold.",
		"Nothing in the sky but us. Every road below shows plain, every river, every roof. Flying in clear air feels like cheating at hide-and-seek.",
		"A smooth climb and nothing up here to wrestle with. For once the sky and the beast agree.",
	},
	["weather.clear.journey.w10.002"] = {
		"leans over the harness as the mount climbs into an empty sky, watching the roads below thin into threads.",
		"settles in for the flight with nothing ahead but open air, and lets the wind do all the talking.",
		"rises through air so still and clean that each wingbeat can be heard on its own.",
	},
	["weather.clear.journey.w10.003"] = {
		"Clean air, no cloud. Even the beast looks pleased with itself.",
		"Good flying weather. Let's not waste a wingbeat of it.",
	},
	["weather.clear.journey.w10.004"] = {
		"Down out of an empty sky without a single lurch. My stomach would like to thank the weather in person.",
		"Landed. In air this clear I could see where we'd come down from leagues away, and watched it grow for most of the flight.",
		"Clear all the way. I saw the land change under me from start to finish; now my feet get to learn it the slow way.",
	},
	["weather.clear.journey.w10.005"] = {
		"climbs down from the saddle without a hair out of place, the flight having been as easy as the sky was empty.",
		"lands without a single gust to fight, and gives the beast's neck a grateful pat for the quiet trip.",
	},
	["weather.clear.rest_enter.w10.001"] = {
		"A place to rest, and fair weather outside. I'll sleep better hoping the road stays dry.",
		"Rest, though the sky isn't pushing me toward it. That's the best kind: taken by choice, not chased in by the weather.",
	},
	["weather.clear.rest_enter.w10.002"] = {
		"settles down to rest with dry clothes for once, and nothing to wring out or hang by a fire.",
		"eases into the rest without a drop of weather on {g:him|her}, which feels almost like cheating.",
	},
	["weather.clear.weather_change.w10.001"] = {
		"watches the sky empty itself of weather, and loosens {g:his|her} hood for the first time in a while.",
		"shakes out {g:his|her} cloak as the air clears, and whatever it was carrying, rain or grit or snow, goes flying.",
		"watches the last ragged clouds hurry off, like stragglers late for somewhere else.",
	},
	["weather.clear.weather_change.w10.002"] = {
		"Whatever was falling has stopped. The world goes quiet in stages: one last drip, one last gust, then nothing.",
		"The weather lifts, and the land comes back piece by piece: the near ground, the far ridge, then the ridge beyond that.",
		"Clear again. The air feels rinsed, as if the world had been scrubbed and hung out to dry.",
	},
	["weather.clear.weather_change.w10.003"] = {
		"There. The sky's done sulking.",
		"Clearing up. Now my boots can begin the long, slow business of forgiving me.",
		"Clear again. I'll stop pretending I didn't mind.",
	},
	["weather.clear.weather_change.w10.004"] = {
		"When weather passes, the stillness it leaves is the best part, like the hush after a crowd has gone home.",
		"The clouds have gone, and something in my chest comes untied that I hadn't noticed was knotted.",
		"An open sky again. Nothing has changed down here, and still everything seems easier to carry.",
	},
	["weather.clear.weather_change.w10.005"] = {
		"hears the land stir again as the sky clears: a call here, a rustle there, the wild deciding it is safe to come out.",
		"straightens up as the weather breaks, rolling shoulders that had been hunched against it for far too long.",
	},
	["weather.fog.journey.w10.001"] = {
		"The world below is gone in the fog. I fly on trust: the beast's, not mine.",
		"Nothing to see but gray and the beast's ears. It knows the road through the air; I'll leave the worrying to it.",
		"We climb into fog thick as wool. Down there, somewhere, are roads and rivers; I'll take the beast's word for it.",
	},
	["weather.fog.weather_change.w10.001"] = {
		"watches the fog roll in low across the ground, until {g:his|her} own boots are the only sure thing in sight.",
		"stops as the fog closes in, and everything near, rock or tree or something else, fades into a pale sketch of itself.",
	},
	["weather.rain.dawn.w10.001"] = {
		"Dawn, if it counts in this rain: the dark just goes gray, and the water keeps falling as if nothing had happened.",
		"A wet dawn. No color comes up at all, only a slow paling behind the rain, like a lamp lit in the next room.",
	},
	["weather.rain.dusk.w10.001"] = {
		"barely notices dusk come down through the rain; the gray only deepens, and the road ahead fades into one long sound of water.",
		"pulls {g:his|her} hood tighter as the rain carries on into dusk, the light leaving without any ceremony at all.",
	},
	["weather.rain.journey.w10.001"] = {
		"Taking off in the rain. Every wingbeat throws water back in my face, and the land below is a smear of gray.",
		"Up into the wet. The harness is slick, the beast is grumbling, and I'm holding on with more than my hands.",
		"At this speed the raindrops sting like thrown gravel. I tuck my chin down and count the leagues.",
	},
	["weather.rain.journey.w10.002"] = {
		"comes down onto sodden ground, and the mount promptly shakes itself, soaking everyone within reach.",
		"slides down soaked from the flight, rain running off {g:his|her} chin, and makes for the nearest shelter at a jog.",
		"climbs down stiff and dripping, and wrings out a sleeve while the beast steams quietly alongside.",
	},
	["weather.rain.journey.w10.003"] = {
		"Down. Wet through. Where's the fire?",
		"That was less a flight than a long bath with wings.",
	},
	["weather.rain.rest_enter.w10.001"] = {
		"Rest at last. Let the rain fall all it likes; I don't have to walk in it anymore.",
		"Safe ground, and an end to walking in the wet. The rain can keep on; I'm done arguing with it.",
	},
	["weather.rain.weather_change.w10.001"] = {
		"And there's the rain. Every pocket I own is about to become a cup.",
		"Rain. I felt the first drop on the back of my neck, right where they always aim.",
	},
	["weather.storm.journey.w10.001"] = {
		"Flying into a storm. The beast fights every gust, and I fight the urge to shout at it to land.",
		"The wind throws us sideways and the sky flashes white. Whoever charted this route owes me an apology.",
		"Thunder at this height doesn't roll; it slaps. I hold on and promise the ground I'll visit more often.",
	},
	["quest_complete.w13.doubt.001"] = {
		"I said yes before I knew what I was agreeing to. It worked out. That's not the same as being wise.",
		"Agree first, understand later: that's how it went. It came out fine, which teaches me nothing useful.",
		"Lucky, not wise. I accepted before I knew the half of it, and luck covered the gap.",
	},
	["quest_complete.w13.doubt.002"] = {
		"I never learned why it mattered so much. Maybe that's the price of helping strangers: the ending without the story.",
		"Somebody had their reasons. I carried them out without ever hearing them.",
		"Handed over, and I still couldn't say what it was for. Strangers keep their reasons close.",
	},
	["quest_complete.w13.doubt.003"] = {
		"A small voice asks whether I was useful or merely used. I'll listen to it later, when I can afford the answer.",
		"Helpful, or just handy? From the inside, those two feel exactly alike.",
		"Somebody's tool or somebody's help? Maybe the difference lies only in how the work gets used.",
	},
	["quest_complete.w13.doubt.004"] = {
		"Every errand has two sides. I only ever hear from the one that asks.",
		"There may be someone for whom this is bad news. I'll never meet them, which is convenient, and not quite honest.",
		"Help for one is sometimes a loss for another. I didn't stay to find out who, if anyone, is on the losing end.",
	},
	["quest_complete.w13.doubt.005"] = {
		"It's a good feeling. I'm keeping an eye on it, though; good feelings make poor judges.",
		"Pleased, and a little suspicious of how pleased. Both can sit at the same table.",
		"Satisfaction is pleasant company. I just don't let it hold the scales.",
	},
	["quest_complete.w13.doubt.006"] = {
		"The version I'll tell later is tidier than what happened. I should remember the untidy one too.",
		"There's the story of how it went, and then there's how it went. Only one of them flatters me.",
		"Nobody will hear about the false starts. I'd like to keep them anyway; they taught more than the clean parts.",
	},
	["quest_complete.w13.doubt.007"] = {
		"Doing what's asked is easy to defend. Doing what's right takes more thinking. I hope this time they were the same thing.",
		"Asked, done. Somewhere between those two words there should have been a question or two.",
		"What was asked and what was right walked side by side this time, as far as I can tell. I didn't look very far.",
	},
	["quest_complete.w13.doubt.008"] = {
		"There was a question I meant to ask. It's gone now, and so is the chance.",
		"I should have asked one more thing. I can feel the shape of it, but not the words.",
		"Something I meant to ask slipped away during the handover. Whatever it was, it'll surface at some useless moment.",
	},
	["quest_complete.w13.doubt.009"] = {
		"A month from now, will anything be different because of this? Maybe the best help vanishes into things simply working.",
		"If it worked, nobody will notice. That's the strange thing about mending: success looks like nothing happened.",
		"Good help often leaves no mark. I'll have to take it on faith that this left the right kind of nothing.",
	},
	["quest_complete.w13.doubt.010"] = {
		"Was that for them, or so I could feel useful? Probably both. I'd like the first to be the bigger share.",
		"I helped. I also enjoyed being the one who helps. I'm not sure which came first.",
		"Kindness or vanity? Some of each, if I'm honest, and I'd like to be honest at least in here.",
	},
	["quest_complete.w13.doubt.011"] = {
		"Fixed, for now. Troubles like that have roots, and I only saw the top of it.",
		"I dealt with what was in front of me. Whatever caused it is still out there, minding its own business.",
		"Whatever set it going didn't end with my part. I trimmed a branch, maybe. The rest is still growing.",
	},
	["quest_complete.w13.doubt.012"] = {
		"Would I do it again, knowing what I know now? Yes, I think. The 'I think' is the part I'll chew on.",
		"Same choice, if I had it twice? Probably. That word is carrying a lot.",
		"If the same request came round twice, I'd say yes twice. Most likely. I'm keeping that 'most likely' honest.",
	},
	["quest_complete.w13.doubt.013"] = {
		"I took a stranger at their word and it held. It won't always, and I'd like to know how I'll tell the difference.",
		"Trust given freely, and this time not wasted. I shouldn't let that become a habit without checking.",
		"A stranger's word, and it was good. Next time I'd like a reason beyond hope for believing one.",
	},
	["quest_complete.w13.doubt.014"] = {
		"Something went missing along the way. Not an item; a little patience, maybe, or a little of the ease with which I say yes.",
		"It cost something, though I couldn't put a name to it. A bit of good humor, perhaps. It'll grow back.",
		"Nothing I could point to is missing. Still, something came off in the doing, the way an edge wears with use.",
	},
	["quest_complete.w13.doubt.015"] = {
		"I don't actually know whose side I was on just now. I knew whose request it was. Those aren't the same.",
		"There are always sides. I took one for a while, mostly by accident.",
		"Whose quarrel did I just step into? I know who asked. I know very little about who didn't.",
	},
	["quest_complete.w13.doubt.016"] = {
		"There's a lesson in there somewhere. I'll find it once I stop being pleased that it's over.",
		"I'm sure this taught me something. What, I'll work out in a few days.",
		"A lesson came along with it, surely. It's still wrapped.",
	},
	["quest_complete.w13.doubt.017"] = {
		"Second-guessing a finished thing. A bad habit, or the only kind of conscience that works after the fact.",
		"It's over, and here I am auditing myself anyway. Someone has to.",
		"The work's handed in and I'm still grading it. Harshly, in places.",
	},
	["quest_complete.w13.doubt.018"] = {
		"The way it was asked keeps coming back to me. Something in the wording. Probably nothing.",
		"Funny what sticks. Not the work itself, just how it was put to me, and the little pause before it.",
		"One word of the request keeps returning to me, like a pebble in a boot. Small, and impossible to ignore.",
	},
	["quest_complete.w13.doubt.019"] = {
		"If there are thanks coming, I'd like to be sure I've earned all of them.",
		"Any thanks for that, I'll take with a grain of salt. It worked; I'm not sure it was done the best way.",
	},
	["quest_complete.w13.doubt.020"] = {
		"There's nobody to ask if I did right. Just me, and I'm hardly an impartial witness.",
		"Who judges these things? Mostly me. Some days I forgive myself too much, other days nothing at all.",
		"No one stands at the end of a task to say whether it was right. That chair stays empty unless I sit in it.",
	},
	["quest_complete.w13.doubt.021"] = {
		"Every finished task is also something I'll never get to do better. That one's set now, flaws and all.",
		"No second attempt at this one. Whatever I got wrong in it has set like mortar.",
	},
	["quest_complete.w13.doubt.022"] = {
		"I'll never know how it ends. I was only a middle chapter in someone else's book.",
		"My part's over. The rest of the story goes on without me, and I won't hear how it turns out.",
		"A few pages of someone else's book, and then the book closes on me. The ending is theirs to read.",
	},
	["quest_complete.w13.doubt.023"] = {
		"It's easier to finish a task than to judge one. I've done the easy half.",
		"Finishing is the simple part. Deciding whether it should have been finished is slower work.",
		"Completing it took one kind of effort. Weighing it takes another, and that one's only beginning.",
	},
	["quest_complete.w13.doubt.024"] = {
		"If it turns out I was wrong to help, I'd want to know. That's the least I owe.",
		"Should this go bad later, I hope word reaches me. I'd rather carry my mistakes than not know about them.",
		"Let any harm in it find its way back to me. I'd rather answer for it than be spared the knowing.",
	},
	["quest_complete.w13.doubt.025"] = {
		"My conscience has read the job over twice and found nothing to object to. It's still reading.",
		"Conscience says fine. Conscience also says it'll get back to me.",
		"The inner tribunal is in session. So far, no verdict, but plenty of muttering.",
	},
	["quest_complete.w13.doubt.026"] = {
		"Pride is allowed. I'll just keep it the size of the thing I did.",
		"A little pride, cut to fit. Anything bigger would be borrowed.",
		"Some satisfaction, yes. Inflating it past what actually happened, no.",
	},
	["quest_complete.w13.doubt.027"] = {
		"Something was left out, I'm sure of it. Not a lie, exactly. More like a door left closed.",
		"I had the feeling I was told most of it. Most is a careful word.",
		"Every room of it was shown to me but one. The closed door is the one I keep thinking about.",
	},
	["quest_complete.w13.doubt.028"] = {
		"Whatever it was, it's not mine to wonder about anymore. Still, I wonder.",
		"Handed over, and with it the right to an opinion. My opinion didn't get the message.",
	},
	["quest_complete.w13.doubt.029"] = {
		"Good work and right work aren't always the same. I'm fairly sure this was good work.",
		"I did it well. Whether I did it rightly is a separate question with a separate judge.",
		"Skillful and right are two different kinds of praise. I've a fair claim to the first.",
	},
	["quest_complete.w13.doubt.030"] = {
		"Doubt isn't regret. Turning it over is how I keep my hands honest.",
		"Going back over it in my mind isn't the same as wishing it undone. It's how I keep my hands honest, nothing more.",
	},
	["quest_complete.w13.doubt.031"] = {
		"For a while my hands belonged to someone else. I hope I lent them to someone who deserved them.",
		"Lending myself out like a tool. It's honest work, if whoever holds the tool is honest.",
		"Useful hands go where they're pointed. Mine went. I'd like to know a little more about the pointing.",
	},
	["quest_complete.w13.doubt.032"] = {
		"Strange how quickly 'should I?' turns into 'I did.' I'd like the gap between them to be a little wider next time.",
		"From doubt to done in no time at all. Next time I'll let the doubt finish speaking.",
	},
	["quest_complete.w13.doubt.033"] = {
		"Some things, once done, stay done. This is one of them, and only now do I notice how permanent that is.",
		"It can't be unmade. That's true of most things, but truer of the ones I've had a hand in.",
		"No unsaying it now, no undoing it. That's how deeds work, and I'd rather keep it in mind.",
	},
	["quest_complete.w13.doubt.034"] = {
		"Was I the first one asked, or the last resort? I'll never know, and it shouldn't matter as much as it does.",
		"I wonder how many were asked before me. It's vanity to care. I care a little.",
		"Chosen, or just whoever happened by? Pride wants one answer. Honesty suspects the other.",
	},
	["quest_complete.w13.doubt.035"] = {
		"I got it done. Whether it made me any better, beyond better at errands, is another matter.",
		"Skill and goodness grow at different speeds. One of them grew a little just now. I'm not sure which.",
		"Handier, certainly. Wiser? That part doesn't come with the handover; it has to be earned some other way.",
	},
	["quest_complete.w13.doubt.036"] = {
		"Duty's a fine word. I'd like to be certain it was duty, and not plain habit, that kept me at it.",
		"Was it duty, or simply that I'd said yes and hate leaving things half-done? From outside, nobody could tell. From inside, neither can I.",
	},
	["quest_complete.w13.doubt.037"] = {
		"Maybe it mattered enormously. Maybe it was a whim. The not-knowing is part of the work.",
		"Life or death for someone, or a passing fancy? I did it the same either way. That's something, at least.",
		"Great need or small want, it looked the same from where I stood. I gave it the same care, and that will have to do.",
	},
	["quest_complete.w13.doubt.038"] = {
		"I'll keep thinking about it for a while. Some tasks leave the moment they're done; this one wants to stay.",
		"It's finished, but it hasn't quite left. It'll sit with me a little longer, and that's all right.",
	},
	["quest_complete.w13.doubt.039"] = {
		"In the stories, the hero never wonders afterwards. I'd make a poor hero. Possibly a better person.",
		"Heroes in songs don't look back over their shoulder like this. Then again, songs leave out most of everything.",
	},
	["quest_complete.w13.doubt.040"] = {
		"If I'd said no, someone else would have done it. Better? Worse? A useless question with a strong grip.",
		"Anyone could have done that. I did. I keep wondering whether that's a reason to be pleased or simply a fact.",
		"Somebody was always going to do it. Whether it was better that it was me, I can't decide.",
	},
	["quest_complete.w13.doubt.041"] = {
		"I trusted the request because it was put politely. That's not much of a test.",
		"Politeness isn't proof. I'll try to remember that before the next one, not after.",
	},
	["quest_complete.w13.doubt.042"] = {
		"Maybe one day I'll pass this way and see what came of it. Or maybe I won't, and that's how most help goes.",
		"I'd like to know, someday, what grew out of it. Most help never sends word back.",
		"Whatever comes of it will happen with nobody there to show me. I can live with that, mostly.",
	},
	["quest_complete.w13.doubt.043"] = {
		"One day there'll be a last of these, and I won't know it's the last. Odd thought at a handover. Let it be one done properly.",
		"Any finished task might be my final one. Not likely, but possible. I'd want it to be one like this, done with care.",
	},
	["quest_complete.w13.doubt.044"] = {
		"I'd like to be the kind of person who asks why before, not after. Working on it.",
		"Next time: the questions first, the yes after. An easy rule to make, a harder one to keep.",
		"Somewhere between eager and careful there's a better way to accept these things. I haven't found it yet.",
	},
	["quest_complete.w13.doubt.045"] = {
		"It probably means more on that side of the handover than on mine. I'd like to know why, and I won't ask.",
		"For me it was a task. On the other side of the handover, it may have been something else entirely.",
	},
	["quest_complete.w13.doubt.046"] = {
		"I keep thinking of what I'd do differently. Not much. Enough to be worth thinking about.",
		"One or two things I'd change. Small ones. Small ones are the ones I'll actually remember to change.",
		"A list of corrections is forming, short and specific. That's the useful kind of regret.",
	},
	["quest_complete.w13.doubt.047"] = {
		"I followed the request to the letter. The letter is a good place to stand, until it isn't.",
		"To the word, as requested. Whether the words were wise, I didn't stop to ask.",
		"Faithful to the request. I wonder if faithful and wise were the same thing this time.",
	},
	["quest_complete.w13.doubt.048"] = {
		"I gave this my attention for a while. Now I'm asking whether it deserved that much, or whether something else did.",
		"Time spent on one thing is time not spent on another. I hope this was the right one to choose.",
		"Whatever I left undone while I did this has waited for me, or it hasn't. I'll never know which.",
	},
	["quest_complete.w13.doubt.049"] = {
		"Second thoughts arrive after the work, never during. Excellent timing, as usual.",
		"My doubts always show up once there's nothing left to change. Punctual, in their way.",
		"The questions waited politely until it was too late to matter. Very well-mannered of them.",
	},
	["quest_complete.w13.doubt.050"] = {
		"In all of that there was a detail that didn't fit. I noticed it, and I let it go. I hope that wasn't a mistake.",
		"One small thing didn't sit right, and I said nothing. It sits even less right now.",
		"Something about it was slightly off, and I chose not to see it. I'm seeing it now.",
	},
	["quest_complete.w13.doubt.051"] = {
		"Not every doubt needs an answer. Some just need carrying for a while, to keep me careful.",
		"I'll keep this doubt in a pocket. It isn't heavy, and it might remind me to look twice next time.",
		"A doubt worth keeping is a small one. This one fits in a pocket, and it'll come in handy.",
	},
	["quest_complete.w13.doubt.052"] = {
		"I owe the world a little more care than I gave this. Not much more. A little.",
		"Done honestly, if not perfectly. I'll settle that account with my conscience later.",
	},
	["quest_complete.w13.doubt.053"] = {
		"It all lined up a little too neatly. Most likely that's luck, and not someone else's design.",
		"Everything fell into place by itself. I'll call it luck, and keep one eye open.",
	},
	["quest_complete.w13.doubt.054"] = {
		"Each thing I agree to teaches me where my limits are. This one sat comfortably inside them, I think.",
		"There are things I wouldn't do for anyone. This wasn't one of them. Good to check, now and then.",
	},
	["quest_complete.w13.doubt.055"] = {
		"A part of me hoped it would be harder to let go of. It wasn't. I'm not sure what that says.",
		"I expected to feel more at the end. Maybe that's calm. Maybe something got worn smooth.",
		"It slipped off me more easily than I thought it would. I can't decide whether that's peace or carelessness.",
	},
	["quest_complete.w13.doubt.056"] = {
		"I hope that was the right thing to do. I think it was.",
		"The right thing? Let's hope so.",
		"That felt right. Feeling isn't knowing, but it's a start.",
	},
	["quest_complete.w13.doubt.057"] = {
		"May I ask what it was for? No? Fair enough.",
		"I won't ask what it was for. I'd like to, though.",
	},
	["quest_complete.w13.doubt.058"] = {
		"Tell me that did some good. Even a little.",
		"If that helped someone, I'm glad. If not, I'd rather not know just yet.",
	},
	["quest_complete.w13.doubt.059"] = {
		"Hm. I expected to feel better about that.",
		"It's finished and I'm still frowning. Funny, that.",
	},
	["quest_complete.w13.doubt.060"] = {
		"Handed in, yes. Whether it was wise is a later argument.",
		"That part's settled. The arguing with myself starts now.",
		"Finished on the outside. The inside's still holding hearings.",
	},
	["quest_complete.w13.doubt.061"] = {
		"I'll be thinking about that one for a while.",
		"That one's going to follow me around a bit.",
	},
	["quest_complete.w13.doubt.062"] = {
		"Whatever it was for, I hope it's used kindly.",
		"Use it well. That's all I'd ask.",
		"May it go to good ends. I can't follow it to make sure.",
	},
	["quest_complete.w13.doubt.063"] = {
		"I did it. I'm not saying I understood it.",
		"Did it, yes. Understood it? That's another matter.",
		"Finished it. Understanding it is a separate errand.",
	},
	["quest_complete.w13.doubt.064"] = {
		"Next time I ask more questions first.",
		"Remind me to ask why, next time. Before, not after.",
	},
	["quest_complete.w13.doubt.065"] = {
		"Proud of it? A bit. Sure of it? Less.",
		"Pleased, mostly. Ask me again in a week.",
		"Pride, some. Certainty, not so much.",
	},
	["quest_complete.w13.doubt.066"] = {
		"I hope nobody comes to regret that. Least of all me.",
		"Let's hope that's the kind of help nobody regrets.",
		"No regrets, I hope. Not on either side.",
	},
	["quest_complete.w13.doubt.067"] = {
		"Funny. All finished, and I've more questions than I started with.",
		"More questions now than when I began. Typical.",
	},
	["quest_complete.w13.doubt.068"] = {
		"There was more to that than I was told, wasn't there?",
		"I've a feeling I only heard half of it.",
		"Half the story, I'd guess. The other half stays behind closed lips.",
	},
	["quest_complete.w13.doubt.069"] = {
		"Is that the end of it? Somehow I doubt it.",
		"That's the end of my part. I doubt it's the end of the matter.",
	},
	["quest_complete.w13.doubt.070"] = {
		"Good. I think. Yes. Good.",
		"All right. I suppose. Yes, I suppose that's all right.",
	},
	["quest_complete.w13.doubt.071"] = {
		"I've done what I said I'd do. What it means, I leave to wiser heads.",
		"My piece of it is finished. The meaning I'll leave to someone wiser.",
	},
	["quest_complete.w13.doubt.072"] = {
		"Let's hope it mattered to somebody. It ought to matter to somebody.",
		"May it count for someone, at least. Otherwise, what was it for?",
	},
	["quest_complete.w13.doubt.073"] = {
		"Strange business. I'm glad it's finished, and I couldn't tell you why.",
		"Odd one, that. Glad to be rid of it, for reasons I can't name.",
	},
	["quest_complete.w13.doubt.074"] = {
		"I hope I helped the right side.",
		"Whose side was that, exactly? Never mind. Too late now.",
	},
	["quest_complete.w13.doubt.075"] = {
		"Good work, I suppose. How good, I'll decide later.",
		"Not bad. Whether it was right is still being weighed.",
	},
	["quest_complete.w13.doubt.076"] = {
		"That's my part. I hope the rest of it is in good hands.",
		"My piece is in place. Someone else answers for the rest.",
		"From my hands to other hands. May they be steadier than mine.",
	},
	["quest_complete.w13.doubt.077"] = {
		"I'll mull that one over before I decide how I feel about it.",
		"Give me a while with that one. I'm not done thinking.",
	},
	["quest_complete.w13.doubt.078"] = {
		"Glad that's over. Less glad about the questions I skipped.",
		"Fine, it's handled. The questions I didn't ask can stop staring at me.",
	},
	["quest_complete.w13.doubt.079"] = {
		"Honest work, I hope. It felt honest.",
		"It felt honest. I'll trust that, for now.",
	},
	["quest_complete.w13.doubt.080"] = {
		"That'll do. Though I'm still turning it over.",
		"Closed. Not quite in my head, but closed.",
	},
	["quest_complete.w13.doubt.081"] = {
		"pauses after the handover, as if about to ask something, and then lets it go.",
		"opens {g:his|her} mouth to ask a question, thinks better of it, and keeps it to {g:himself|herself}.",
	},
	["quest_complete.w13.doubt.082"] = {
		"looks back once at what was handed over, with the face of someone checking a sum.",
		"glances back over {g:his|her} shoulder, faintly puzzled, as though recounting something in {g:his|her} head.",
	},
	["quest_complete.w13.doubt.083"] = {
		"turns one hand palm-up and studies it a moment, as if it might have an opinion.",
		"looks down at {g:his|her} own hands for a while, without any particular expression.",
		"considers {g:his|her} open hands, as one might question two witnesses who saw everything.",
	},
	["quest_complete.w13.doubt.084"] = {
		"rubs the back of {g:his|her} neck slowly, the gesture of someone not entirely at peace with something.",
		"scratches {g:his|her} chin with a thoughtful air, and does not move on just yet.",
	},
	["quest_complete.w13.doubt.085"] = {
		"lingers, eyes on nothing in particular, then shakes the thought off like water from a sleeve.",
		"stands a moment over some private question, then lets it go with a small shrug.",
	},
	["quest_complete.w13.doubt.086"] = {
		"gives a small nod that seems aimed inward more than outward.",
		"nods slowly, as if agreeing with something no one else has said.",
		"bows {g:his|her} head a fraction, less to anyone present than to some judge within.",
	},
	["quest_complete.w13.doubt.087"] = {
		"half-turns to go, stops, and looks back with a question that never quite becomes words.",
		"starts to leave, hesitates mid-step, and only then goes on.",
	},
	["quest_complete.w13.doubt.088"] = {
		"taps two fingers against {g:his|her} lips, the way people do when weighing whether to speak.",
		"presses {g:his|her} lips together, holding back whatever {g:he|she} was about to say.",
	},
	["quest_complete.w13.doubt.089"] = {
		"accepts the closing of the matter with a polite smile that stops a step short of certainty.",
		"smiles at the handover, a careful smile with a question folded inside it.",
	},
	["quest_complete.w13.doubt.090"] = {
		"stays a moment longer than needed, turning the whole business over in {g:his|her} mind.",
		"seems to replay something silently, lips moving slightly, before setting it aside.",
		"keeps still for a little while, the look of someone going back over each step in order.",
	},
	["quest_complete.w13.doubt.091"] = {
		"draws a slow line in the air with one finger, as if tracing back the steps that led here.",
		"retraces something in the air with a fingertip, a small map of decisions only {g:he|she} can read.",
	},
	["quest_complete.w13.doubt.092"] = {
		"straightens {g:his|her} gear absently, hands busy while the thoughts are elsewhere.",
		"fiddles with a strap that needs no fixing, plainly thinking about something else.",
	},
	["quest_complete.w13.doubt.093"] = {
		"lets out a short, wry sound, not quite a laugh, at some thought kept private.",
		"huffs quietly, amused or doubtful, it is hard to tell which.",
		"gives a crooked half-smile, the sort people wear when they catch themselves arguing with themselves.",
	},
	["quest_complete.w13.doubt.094"] = {
		"tilts {g:his|her} head, as if listening to an argument only {g:he|she} can hear.",
		"cocks {g:his|her} head to one side, weighing something unseen.",
	},
	["quest_complete.w13.doubt.095"] = {
		"folds {g:his|her} arms and stands quietly, the picture of someone not yet finished with a thought.",
		"crosses {g:his|her} arms and looks at the ground, considering.",
	},
	["quest_complete.w13.doubt.096"] = {
		"smooths {g:his|her} expression into something neutral, though a small crease stays between the brows.",
		"wears a look of mild doubt, the kind that settles in after the fact and does not insist.",
	},
	["quest_complete.w13.doubt.097"] = {
		"rocks once on {g:his|her} heels, mind somewhere else for a moment.",
		"sways back on {g:his|her} heels and stays there a moment, thinking.",
	},
	["quest_complete.w13.doubt.098"] = {
		"pinches the bridge of {g:his|her} nose briefly, then lets go with a faint, rueful smile.",
		"rubs {g:his|her} temple with a knuckle, the way one does with a question that will not settle.",
	},
	["quest_complete.w13.doubt.099"] = {
		"murmurs a few words to {g:himself|herself}, too low to catch, in the tone of a question.",
		"mutters a short question to nobody, and does not wait for an answer.",
	},
	["quest_complete.w13.doubt.100"] = {
		"lets {g:his|her} gaze drift past the handover toward whatever may come of it, eyes narrowed in thought.",
		"looks into the middle distance with narrowed eyes, as though trying to see what will come of all this.",
	},
	["quest_complete.w13.road.001"] = {
		"Funny. The tiredness waited politely until it was over, and now it's all arriving at once.",
		"While there was work to do, my legs kept quiet. Now they're making up for lost time.",
		"The weariness was standing in line behind the task. Its turn has come.",
	},
	["quest_complete.w13.road.002"] = {
		"Best not to stop too long. Once I sit, I'll find reasons to stay sitting.",
		"If I keep moving now, the momentum carries me. If I stop, I'll have to start from nothing.",
	},
	["quest_complete.w13.road.003"] = {
		"A chapter closes without any sound at all. You'd think it would make some noise.",
		"Endings are quieter than I expect. This one barely made a sound.",
		"No thud, no click. The thing simply stops being open.",
	},
	["quest_complete.w13.road.004"] = {
		"Somewhere there's a thing that needs doing and doesn't know my name yet. I'll go and find out where.",
		"The next thing is out there, not yet aware of me. That's a pleasant thought to walk on.",
	},
	["quest_complete.w13.road.005"] = {
		"My feet are already pointed somewhere. The rest of me will catch up.",
		"Part of me has already left. I'd better follow it before it gets too far ahead.",
	},
	["quest_complete.w13.road.006"] = {
		"For a moment nobody is waiting on me. I don't quite know what to do with that.",
		"No one expecting me anywhere. It's an odd sort of freedom, a little too roomy.",
		"Nobody's watching the door for me. The feeling fits like a coat a size too big.",
	},
	["quest_complete.w13.road.007"] = {
		"Now that it's done, I can admit my legs were never fully on board.",
		"My knees and I will be having words about this later.",
	},
	["quest_complete.w13.road.008"] = {
		"Close the chapter, don't reread it. There'll be time for that when there's less to do.",
		"No looking back over it yet. Memories keep; the next thing might not.",
	},
	["quest_complete.w13.road.009"] = {
		"That's room cleared for something new. I wonder what will move in.",
		"A space has opened up in my days. Something will fill it soon, and I'm curious what.",
	},
	["quest_complete.w13.road.010"] = {
		"This is the good kind of tired, the kind that comes with nothing left unfinished.",
		"Tired, yes, but cleanly so. Nothing half-done nagging at the edges.",
	},
	["quest_complete.w13.road.011"] = {
		"Where now? I'll let my feet vote. They usually win anyway.",
		"Next direction: undecided. My legs seem to have opinions, so I'll hear them out.",
	},
	["quest_complete.w13.road.012"] = {
		"First something to eat. Then something to sit on. Then, perhaps, a thought about what's next.",
		"Order of business: food, a seat, and only after that the question of where to go.",
		"Bread before plans. Plans made on an empty stomach always point somewhere silly.",
	},
	["quest_complete.w13.road.013"] = {
		"A traveler is someone who keeps finishing things in places they won't stay. I suppose that's me.",
		"Finish. Gather up. Go. The whole craft of wandering, in a handful of words.",
	},
	["quest_complete.w13.road.014"] = {
		"Rest is owed now. I'll collect it before anyone else comes to collect me.",
		"I've earned a pause. Best take it quickly, before someone finds a use for me.",
	},
	["quest_complete.w13.road.015"] = {
		"I don't have the next thing yet. For once, that doesn't worry me.",
		"No plan beyond this moment. It feels less like being lost than like being loose.",
		"Nothing lined up. I keep waiting to mind, and I don't.",
	},
	["quest_complete.w13.road.016"] = {
		"Weariness, the patient guest. It never interrupts the work; it just waits by the exit.",
		"Tiredness never barges in mid-task. It waits at the end, holding my coat.",
	},
	["quest_complete.w13.road.017"] = {
		"I walk differently without something owed. Looser. Almost like strolling.",
		"Funny how a step changes once nothing's owed. It goes from marching to wandering.",
	},
	["quest_complete.w13.road.018"] = {
		"Let the ending land before I move. Finished things deserve a soft place to come down.",
		"A short pause, so the end can sink in. Rushing past it feels like skipping a stair.",
	},
	["quest_complete.w13.road.019"] = {
		"I wonder where the next one waits. Not what. Just where.",
		"Where will it be, the next thing? That's the only question I'm willing to think about.",
	},
	["quest_complete.w13.road.020"] = {
		"The tiredness shows up in my eyes first, then settles somewhere behind my legs.",
		"It starts behind the eyes, this weariness, and works its way down until my legs feel it too.",
	},
	["quest_complete.w13.road.021"] = {
		"One more thing behind me. Ahead, everything else, and I'm glad of it.",
		"Behind me, finished. Before me, all the rest. I wouldn't trade places with anyone standing still.",
	},
	["quest_complete.w13.road.022"] = {
		"Every handover is a little farewell. Nobody marks it but me.",
		"A small parting, this. Not from anyone in particular. From the task itself, I suppose.",
	},
	["quest_complete.w13.road.023"] = {
		"The bill for all that effort is arriving now, itemized, mostly in my lower back.",
		"The aches were keeping a tally. They're presenting it now, in full.",
		"My back has been saving up its complaints. It's reading them out now, one by one.",
	},
	["quest_complete.w13.road.024"] = {
		"Already restless. It's barely over and I'm itching for whatever's after.",
		"There it is: the itch. Not even a minute's peace before I want to be off.",
	},
	["quest_complete.w13.road.025"] = {
		"Now I get to pick what comes next, instead of having it picked for me.",
		"The nice part about finishing: the next choice is mine to make.",
	},
	["quest_complete.w13.road.026"] = {
		"Next thing can come and find me. I'm not going looking for it on these legs.",
		"If something else needs doing, it knows where I am. I'm not moving.",
	},
	["quest_complete.w13.road.027"] = {
		"It's creeping in now, slow as water through cloth. The tiredness I didn't have time for.",
		"Here it comes, the weariness I kept putting off. It's patient. It soaks in.",
	},
	["quest_complete.w13.road.028"] = {
		"Something good could be next. No reason to think so, and no reason not to.",
		"Whatever's coming might be wonderful. I've decided to believe that until proven wrong.",
	},
	["quest_complete.w13.road.029"] = {
		"Shake it off, gather the kit, go. Anything else is lingering.",
		"Kit together, head up, off I go. The rest is dawdling.",
	},
	["quest_complete.w13.road.030"] = {
		"Wanderers have a saying: finish where you are, rest where you can, start where you must.",
		"As the wanderers put it: finish where you stand, rest where you're let, begin where you're needed.",
	},
	["quest_complete.w13.road.031"] = {
		"There's a lightness that only comes right after. I want to remember what it feels like.",
		"This feeling, right here, just after: I should keep a bit of it for heavier moments.",
	},
	["quest_complete.w13.road.032"] = {
		"I promised myself a long rest. Give it a moment and I'll be bargaining it down.",
		"A proper rest, I told myself. I can already hear me haggling it down to a short one.",
	},
	["quest_complete.w13.road.033"] = {
		"Closed. Whatever I carry out of it now, I carry as mine, not as anyone's errand.",
		"It's over, and what's left of it in me belongs to me now, not to the job.",
	},
	["quest_complete.w13.road.034"] = {
		"Let the next thing be bigger. I find I'm ready to be asked for more.",
		"Something larger, next. I think I've room for it now.",
		"A heavier one next, please. My stride can take it.",
	},
	["quest_complete.w13.road.035"] = {
		"This is the part nobody watches: the walk away, alone, after. I like it best.",
		"Nobody sees the leaving. The arrival gets the attention; the going is all mine.",
	},
	["quest_complete.w13.road.036"] = {
		"Something in me is letting go of its grip, slowly, like a fist that forgot it was clenched.",
		"I'm uncurling inside, bit by bit, like a hand that had been closed too long.",
	},
	["quest_complete.w13.road.037"] = {
		"A drink of something, a seat, and a while to stare at nothing. That's the whole plan.",
		"Plan for the next little while: sit, drink something, look at nothing in particular.",
		"All I'm after is a cup of anything and a spot to stare into space from.",
	},
	["quest_complete.w13.road.038"] = {
		"My head keeps running the errand even though it's finished. It'll need a while to notice.",
		"Part of my mind is still working at it, like a mill turning after the grain is gone.",
		"The task is over; my thoughts haven't heard yet. They're still pacing the same circle.",
	},
	["quest_complete.w13.road.039"] = {
		"What was I doing before all this? I've honestly lost the thread. Finding it can be the next thing.",
		"Whatever I was about before this began, it's gone hazy. Fine. Something new can take its place.",
	},
	["quest_complete.w13.road.040"] = {
		"Nothing due anywhere. Time feels wider when nobody's counting it for me.",
		"Without a deadline the moments get roomier. I can feel them loosening.",
	},
	["quest_complete.w13.road.041"] = {
		"I'm still braced for trouble that's already been sorted. Somebody tell my shoulders.",
		"My whole back is clenched against a problem that no longer exists. It can stand down.",
		"Every muscle is still on guard duty. Nobody told them the watch is over.",
	},
	["quest_complete.w13.road.042"] = {
		"Rest first, or move first? Every ending asks it, small as the question is.",
		"Sit, or set off? A tiny question. Surprisingly hard to settle.",
	},
	["quest_complete.w13.road.043"] = {
		"I'll walk a bit before I rest. Stopping right at the finish feels like sitting down in a doorway.",
		"A few paces first, then the rest. It seems wrong to collapse right at the finish.",
	},
	["quest_complete.w13.road.044"] = {
		"Take it on, carry it, hand it over, move on. I'm between the last two beats, and the pause is sweet.",
		"There's a rhythm to this life: accept, carry, deliver, go. Right now I'm in the rest between notes.",
	},
	["quest_complete.w13.road.045"] = {
		"I've set it down. Now to remember how I walk when I'm not carrying anything for anyone.",
		"Odd thing, putting a task down. For a few steps I walk like someone who's misplaced something.",
	},
	["quest_complete.w13.road.046"] = {
		"Finishing feels like reaching the end of a tune I'd been humming without noticing. Now I'll need a new one.",
		"It stopped the way a hummed tune stops: I only noticed when it wasn't there. Time to find the next one.",
	},
	["quest_complete.w13.road.047"] = {
		"For a little while I'm nobody's answer to anything. I could get used to it. I won't.",
		"Not needed, for the moment. It's restful, being nobody's solution.",
	},
	["quest_complete.w13.road.048"] = {
		"I'd like to be bored for a bit. Properly bored. It sounds wonderful.",
		"What I want next is a little stretch of dullness. Nothing happening, at length.",
		"Something tedious, for a change. A long, uneventful sit would be a treat.",
	},
	["quest_complete.w13.road.049"] = {
		"I can't tell yet whether I'm tired or simply finished. For the first little while they feel the same.",
		"Tired, or just emptied by the ending? Hard to say. They wear the same face at first.",
	},
	["quest_complete.w13.road.050"] = {
		"The work held me up like a pole holds a tent. Pull it out and I sag a little.",
		"It was the job keeping me upright. Now it's gone, I'd very much like to lean on something.",
	},
	["quest_complete.w13.road.051"] = {
		"My thoughts are already nosing ahead, like a hound at a door it wants opened.",
		"Half of me is already sniffing about for what's next. The other half would like a chair.",
	},
	["quest_complete.w13.road.052"] = {
		"The quiet after something's finished is the only quiet I fully trust. Nothing's left to break it.",
		"This kind of quiet has nothing hiding in it. That's why it rests me.",
	},
	["quest_complete.w13.road.053"] = {
		"Whatever's next, I'll take my time getting there. I've earned some dawdling.",
		"No rush toward the next thing. A slow walk is a kind of rest too.",
		"I'll go the unhurried way to whatever's after. Slowness is a small luxury of its own.",
	},
	["quest_complete.w13.road.054"] = {
		"There's the tiredness from the work, and under it an older one that finishing doesn't touch. I'll tend the first.",
		"Rest will mend the legs. The deeper weariness is another matter, and it doesn't answer to rest.",
	},
	["quest_complete.w13.road.055"] = {
		"Put it on the shelf in my head. It'll keep there, and I'll travel lighter for it.",
		"Into the back of the mind it goes, folded neatly. There's walking to do.",
	},
	["quest_complete.w13.road.056"] = {
		"Whatever comes next, I hope it starts gently. A slow beginning would suit me fine.",
		"Let the next thing knock softly. I'd like a quiet start for once.",
	},
	["quest_complete.w13.road.057"] = {
		"Now I find out who I am when I'm not doing something for somebody. Probably: hungry.",
		"Off duty to the world, briefly. Let's see what I do with myself when nobody's asking.",
		"No errand to hide behind. Just me, my kit, and a growing interest in food.",
	},
	["quest_complete.w13.road.058"] = {
		"I could go almost anywhere from here. Most of anywhere is probably fine.",
		"Every direction's open. I doubt there's a wrong one, not for the next little while.",
	},
	["quest_complete.w13.road.059"] = {
		"I ought to rest before whatever's next. I won't, but I'll feel very wise for having thought of it.",
		"Sensible people rest now. I'm going to think about resting, which is almost the same.",
	},
	["quest_complete.w13.road.060"] = {
		"A finished thing is good ground to stand on while choosing. Solid. I'll choose from here.",
		"Nothing undone beneath me now. It's the best footing there is for deciding where to go.",
	},
	["quest_complete.w13.road.061"] = {
		"That went right. I'd like to ride the feeling into whatever comes next, before it cools.",
		"Things went my way. Best to carry that along while it's still fresh.",
	},
	["quest_complete.w13.road.062"] = {
		"Nobody to report to now. The words I'd have used are just sitting there, unspent.",
		"I had a little speech ready in case anything went wrong. It can stay in my pocket, unused.",
	},
	["quest_complete.w13.road.063"] = {
		"Everything I own feels heavier than it did a moment ago. Nothing's changed but my patience.",
		"Same pack, same kit, and suddenly twice the weight. Finishing does that.",
	},
	["quest_complete.w13.road.064"] = {
		"Behind me, a thing closed. In front of me, the whole unwritten rest. That's the right way round.",
		"One end tied off. The loose end in front of me is the one worth chasing.",
	},
	["quest_complete.w13.road.065"] = {
		"Somebody, somewhere, can stop worrying about it now. And so can I, which I'd nearly forgotten.",
		"It's off their mind, I hope. It's certainly off mine, and I can feel the room it left.",
	},
	["quest_complete.w13.road.066"] = {
		"No sense standing about admiring it. It's done; standing won't make it more done.",
		"Lingering won't finish it any harder. Time I was moving.",
	},
	["quest_complete.w13.road.067"] = {
		"Each thing I finish is one more thing that no longer needs me. I'm glad, and a little bereft.",
		"It doesn't need me now. That's the point, of course. Still, it stings a little to be let go.",
	},
	["quest_complete.w13.road.068"] = {
		"My step's got a bounce in it I didn't put there. The ending must have slipped it in.",
		"There's a spring in my walk that wasn't there before. I'll keep it as long as it stays.",
	},
	["quest_complete.w13.road.069"] = {
		"Every leaving is also an arriving somewhere I can't see yet. I'll go and see it.",
		"To end a thing is only to stand at the edge of the next. From here, it's all open.",
	},
	["quest_complete.w13.road.070"] = {
		"Where to, then? Anywhere with a place to sit.",
		"Which way now? I'll take whichever ends at a bench.",
	},
	["quest_complete.w13.road.071"] = {
		"That's me free. Anyone else need anything? No? Splendid. I'm off.",
		"Free for a bit. I intend to enjoy it at a slow walk.",
	},
	["quest_complete.w13.road.072"] = {
		"If the world ends in the next little while, I'll be sitting down. Come and fetch me.",
		"Shout if anything catches fire. I'll be resting.",
	},
	["quest_complete.w13.road.073"] = {
		"Off I go, then. Somewhere. I'll know it when I get there.",
		"Time I was elsewhere. Exactly where, I'll work out on the way.",
	},
	["quest_complete.w13.road.074"] = {
		"Let me sit for a bit first. After that, the world may dispose of me as it likes.",
		"One moment's rest, and I'm everyone's again. Not before.",
	},
	["quest_complete.w13.road.075"] = {
		"What's next? Don't answer that. I'll go and find out.",
		"So, what's after this? Don't tell me. I'd rather stumble on it.",
	},
	["quest_complete.w13.road.076"] = {
		"My legs would like to lodge a complaint. It'll be heard after a sit-down.",
		"My back has thoughts about all that. I've asked it to hold them until I'm sitting.",
	},
	["quest_complete.w13.road.077"] = {
		"Closed, that one. Show me the next.",
		"Finished here. Point me at whatever's waiting.",
		"Shut and done. Now, the next door.",
	},
	["quest_complete.w13.road.078"] = {
		"And so it ends, and so the next begins. Fair enough.",
		"One thing ends; something else wakes up. That's how it ought to go.",
	},
	["quest_complete.w13.road.079"] = {
		"Is there anything to eat about? I'm asking on behalf of every part of me.",
		"First: food. Second: more food. Then I'll think.",
	},
	["quest_complete.w13.road.080"] = {
		"Nowhere to be. What a strange, lovely thing to say out loud.",
		"I've nowhere I need to be. Hearing it said is half the pleasure.",
	},
	["quest_complete.w13.road.081"] = {
		"Off, then, before I get comfortable.",
		"Moving on before I settle. Settling's dangerous.",
	},
	["quest_complete.w13.road.082"] = {
		"A short rest, and a long think. Or the other way round.",
		"I need a sit and a think. Not necessarily in that order.",
	},
	["quest_complete.w13.road.083"] = {
		"Give me a moment, and I'll be hunting for the next bit of trouble. Just a moment, mind.",
		"Two minutes' peace and then I'll go looking for more mischief. Possibly one minute.",
	},
	["quest_complete.w13.road.084"] = {
		"Page turned. Let's see what's on the next one.",
		"That page is written. Curious what the next one holds.",
	},
	["quest_complete.w13.road.085"] = {
		"Arms resting. Whatever needs carrying can wait its turn.",
		"Don't pass me anything. My arms have gone off duty.",
	},
	["quest_complete.w13.road.086"] = {
		"Onward, slowly. With a sit-down somewhere along the way.",
		"Forward, yes. Gently, and with stops.",
	},
	["quest_complete.w13.road.087"] = {
		"Ah, that feels good. Lighter already. What's next?",
		"Lighter. Much lighter. Time to find something to fill the space.",
	},
	["quest_complete.w13.road.088"] = {
		"I'd celebrate, but sitting down seems like more fun.",
		"Some would cheer. I'm going to find something to lean on.",
	},
	["quest_complete.w13.road.089"] = {
		"That's that one. Kit's packed. Moving.",
		"Closed out. Pack's on. Going.",
	},
	["quest_complete.w13.road.090"] = {
		"And now I go, and it stays here, finished. Funny, that.",
		"I'll leave, and it'll stay done without me. A strange kind of goodbye.",
	},
	["quest_complete.w13.road.091"] = {
		"Bring the next one along. I've found my stride and I mean to keep it.",
		"Bring on whatever follows. I've got the rhythm now.",
	},
	["quest_complete.w13.road.092"] = {
		"Everything aches in a polite, finished sort of way. I'll allow it.",
		"Sore all over, but tidily so. Nothing left undone to make it worse.",
	},
	["quest_complete.w13.road.093"] = {
		"No more? Then I'm gone before anyone has second thoughts.",
		"Is that all? Lovely. I'll vanish before someone remembers something.",
	},
	["quest_complete.w13.road.094"] = {
		"Time to see what else the world's been keeping for me.",
		"There'll be something else. There always is. I'm almost glad.",
	},
	["quest_complete.w13.road.095"] = {
		"Give me the length of a short sit. After that, I'm anybody's.",
		"A sit-down first. Then point me wherever you like.",
	},
	["quest_complete.w13.road.096"] = {
		"turns slowly on the spot, as though waiting for one direction to look more interesting than the rest.",
		"looks one way, then the other, with the air of someone letting the next step choose itself.",
	},
	["quest_complete.w13.road.097"] = {
		"rolls {g:his|her} neck slowly, one side and then the other, until something gives a quiet click.",
		"tips {g:his|her} head side to side, working the stiffness out of a long-held posture.",
	},
	["quest_complete.w13.road.098"] = {
		"sits down on the nearest thing that will hold {g:him|her}, just for a moment, and stays a little longer than that.",
		"lowers {g:himself|herself} onto whatever is closest and lets the moment stretch.",
	},
	["quest_complete.w13.road.099"] = {
		"checks each buckle of the pack in turn, unhurried, like someone between one thing and the next.",
		"hitches the pack higher and gives the straps a tug, readying for the next stretch.",
	},
	["quest_complete.w13.road.100"] = {
		"seems to grow a little heavier all at once, as if the tiredness had been waiting for permission.",
		"sags by a fraction, the way people do when the reason for standing straight has gone.",
	},
	["quest_complete.w13.road.101"] = {
		"hums a few aimless notes, loses the tune, and does not seem to mind.",
		"starts humming something, forgets what, and carries on humming anyway.",
	},
	["quest_complete.w13.road.102"] = {
		"leans against whatever is nearest and closes {g:his|her} eyes for a few long moments.",
		"finds something to lean on and shuts {g:his|her} eyes, just briefly, as if resting them on credit.",
	},
	["quest_complete.w13.road.103"] = {
		"takes a long drink from a waterskin and stoppers it with the air of starting something fresh.",
		"drinks deeply, wipes {g:his|her} mouth with the back of a hand, and looks ahead.",
	},
	["quest_complete.w13.road.104"] = {
		"stretches both arms high overhead until {g:his|her} back gives a small, satisfied pop.",
		"laces {g:his|her} fingers and pushes both arms out in front, stretching until the joints complain.",
	},
	["quest_complete.w13.road.105"] = {
		"stands very still for a while, then shakes out both hands and moves off at an easy pace.",
		"pauses a long moment, as though letting the ending catch up, then walks on without hurry.",
	},
	["quest_complete.w13.road.106"] = {
		"lets out a short laugh at nothing much, and seems lighter for it.",
		"chuckles once, quietly, at some private joke, and moves along.",
	},
	["quest_complete.w13.road.107"] = {
		"crouches a moment, elbows on knees, before rising to go on.",
		"drops into a squat, forearms across {g:his|her} knees, and stays there awhile, gathering strength.",
	},
	["quest_complete.w13.road.108"] = {
		"brushes off {g:his|her} sleeves and straightens, facing whatever lies in front.",
		"slaps the grime off {g:his|her} gear and stands a little taller, eyes forward.",
	},
	["quest_complete.w13.road.109"] = {
		"watches nothing in particular for a while, wearing the faraway look of someone already halfway to elsewhere.",
		"gazes at some point far off, as if half of {g:him|her} had already left.",
	},
	["quest_complete.w13.road.110"] = {
		"rubs the small of {g:his|her} back with one hand and grimaces, not unhappily.",
		"kneads a sore spot at the back of the neck, eyes half-closed.",
	},
	["quest_complete.w13.road.111"] = {
		"takes a step, then another, as if testing how walking feels with nothing owed.",
		"sets off, slow at first, then finding a looser stride than before.",
	},
	["quest_complete.w13.road.112"] = {
		"taps two fingers to {g:his|her} brow in a tiny salute to the moment, and turns to go.",
		"touches a hand to {g:his|her} chest in a small private gesture of closing, then moves on.",
	},
	["quest_complete.w13.road.113"] = {
		"rubs {g:his|her} eyes with the heels of both hands, slowly, like someone just now noticing how long it has been.",
		"presses the backs of {g:his|her} wrists against tired eyes for a moment.",
	},
	["quest_complete.w13.road.114"] = {
		"shakes out one leg, then the other, like someone getting ready for more walking.",
		"flexes each knee in turn, testing what is left in the legs for the next stretch.",
	},
	["quest_complete.w13.road.115"] = {
		"waits until the moment has entirely finished being a moment, then steps out of it.",
		"lets the ending stand on its own a little while before walking away from it.",
	},
	["quest_complete.w13.road.116"] = {
		"eyes the nearest place to sit with open longing, then, with visible effort, walks past it.",
		"gives a seat a long, wistful look and keeps going, if only just.",
	},
	["quest_complete.w13.wit.001"] = {
		"There must be a ledger of everything adventurers have been asked to do. I'd like to read it, then burn it.",
		"If anyone wrote down all the things strangers ask of people like me, it would be the strangest book in the world.",
		"Some scholar should collect them all: the errands of strangers, in alphabetical order. A very thick, very odd volume.",
	},
	["quest_complete.w13.wit.002"] = {
		"Nobody asks the neighbor. They wait for a passing stranger with a pack and the look of having nothing better to do.",
		"There's a logic to it. Why trouble someone you'll see again, when a wanderer will do it and walk out of your life?",
		"A passing stranger is the perfect helper: no history, no grudges, and gone before anyone has to be grateful for long.",
	},
	["quest_complete.w13.wit.003"] = {
		"Moments like this deserve a proper speech. Something with 'henceforth' in it. Instead, I mumbled.",
		"I really ought to keep words ready for the handover. Grand ones. What came out was closer to 'there you go'.",
		"A finer soul would have declaimed. I said 'right, so', and let my eyebrows do the rest.",
	},
	["quest_complete.w13.wit.004"] = {
		"Hero of the hour. I'd check how much of the hour is left, but I'd rather not know.",
		"For about a minute, I may be somebody's hero. I mean to enjoy every second of the minute.",
		"Hero, briefly. The title expires the moment I sit down.",
	},
	["quest_complete.w13.wit.005"] = {
		"The list in my head loses one line and, by some law I don't understand, gains two.",
		"Cross one thing off and the bottom of the list quietly grows a new one. I won't ask how.",
		"Somebody must be adding lines to my list while I sleep. It's the only explanation.",
	},
	["quest_complete.w13.wit.006"] = {
		"Nobody warns you that heroism is mostly turning up, explaining yourself, and being nodded at.",
		"The songs leave out the clerical side of heroics: the reporting back, the waiting while someone checks.",
		"Heroism, it turns out, is half deed and half describing the deed so that it sounds tidy.",
	},
	["quest_complete.w13.wit.007"] = {
		"My pack has stopped complaining. It, at least, seems pleased.",
		"The pack sits easier on my back now. It would thank me if it could.",
	},
	["quest_complete.w13.wit.008"] = {
		"I'd like a small bell that rings whenever I finish something. Nothing loud. Just enough for me.",
		"There should be a sound for this. A little chime, the kind a shop door makes. I'd settle for that.",
	},
	["quest_complete.w13.wit.009"] = {
		"The world's troubles end up with whoever stands still long enough. Note to self: stand still less.",
		"Lesson learned: never linger near a worried face. I lingered. The rest is history, of a very small kind.",
		"Rule of the wanderer: stop to tie a bootlace, and someone will mistake it for availability.",
	},
	["quest_complete.w13.wit.010"] = {
		"Adventurers are called brave. Mostly they're people who say yes before the sentence is finished.",
		"Bravery, it gets called. I'd call it a habit of agreeing too fast.",
		"Courage, yes. But mostly a weakness for the word 'please'.",
	},
	["quest_complete.w13.wit.011"] = {
		"Someone should invent a medal for finished errands. Small, cheap, and handed out by nobody.",
		"A medal for errands. Tin, not too heavy, and no ceremony. I'd wear it.",
	},
	["quest_complete.w13.wit.012"] = {
		"People trust a stranger with their troubles before they trust them with their names. Odd folk, people.",
		"Strange how a worry gets handed to someone whose name nobody thought to ask.",
	},
	["quest_complete.w13.wit.013"] = {
		"I keep a tally of errands in my head. The tally is wrong, but it's very confident.",
		"My count of finished tasks is a guess dressed up as a number.",
	},
	["quest_complete.w13.wit.014"] = {
		"The world is better by roughly the width of a hair. I plan to be unbearable about it for a while.",
		"A tiny improvement in the state of things. Tiny. I'll still mention it to anyone who stands near me.",
		"One small thing is the right way up because of me. I'll be insufferable until something else gives me cause.",
	},
	["quest_complete.w13.wit.015"] = {
		"My feet have filed a complaint. I've set it aside with the others.",
		"My legs would like a word with whoever accepted this job. Unfortunately, that was me.",
		"My knees are drafting a list of grievances. I've promised to read it later.",
	},
	["quest_complete.w13.wit.016"] = {
		"There ought to be a form for this. Name, errand, signature, and a box marked 'still in one piece'.",
		"If heroics came with paperwork, I'd want a stamp. A red one that says SEEN TO.",
	},
	["quest_complete.w13.wit.017"] = {
		"'I'll see to it,' I said. Bold words. Turns out they were also true.",
		"Promises made in a confident voice have a way of turning into errands. This one, at least, is behind me.",
	},
	["quest_complete.w13.wit.018"] = {
		"This corner of the world may not have needed saving. Too late now: it's saved.",
		"Saved, mended or sorted, whichever it was. There's no taking it back now, and I wouldn't.",
	},
	["quest_complete.w13.wit.019"] = {
		"Half the world, I suspect, runs on strangers doing things for other strangers. Nobody planned it. It just holds.",
		"If every wanderer said no, I wonder how much of the world would quietly fall apart. A worrying amount, I'd guess.",
	},
	["quest_complete.w13.wit.020"] = {
		"I'll add this to the list of things I can do now. The list is short, oddly specific and growing.",
		"New skill acquired: whatever that was. It goes with the things nobody will ever ask me about.",
		"I now know a good deal about a matter nobody will mention to me in my life. Expertise is a lonely business.",
	},
	["quest_complete.w13.wit.021"] = {
		"Whatever my trade is, errands seem to be the other one: no name, no guild, no hours.",
		"Asked what I do, I'd have to say 'help strangers with oddly specific problems'. It wouldn't fit on a sign.",
	},
	["quest_complete.w13.wit.022"] = {
		"The trick is to look as if I'd planned it from the start. I'm working on the look.",
		"Outwardly: calm competence. Inwardly: mild astonishment that it worked.",
		"I nodded as if this were routine. Inside, a small voice is still saying 'it worked?'",
	},
	["quest_complete.w13.wit.023"] = {
		"Grand deeds, small deeds: they all close the same way. A few words, a shuffle of feet, and everyone back to their business.",
		"Whether it saved a kingdom or a cabbage patch, the ending is the same: a few words, then back to the ordinary.",
	},
	["quest_complete.w13.wit.024"] = {
		"Let the record show that I did the thing. The record, as far as I know, is me.",
		"For the official record: done. The official record is kept in my head, and it is not well organized.",
		"Minutes of the meeting: one person asked, one person did. Meeting adjourned.",
	},
	["quest_complete.w13.wit.025"] = {
		"Accepted, carried out, reported. Somewhere in the middle I lost track of why, but the ending is tidy.",
		"Beginning, middle, end. The middle got a little untidy, but endings forgive a great deal.",
	},
	["quest_complete.w13.wit.026"] = {
		"Plenty of what gets asked of strangers could be done by the one asking. I don't say so. It would ruin the arrangement.",
		"There's an unspoken pact: one side asks, the other doesn't ask why. It keeps things turning.",
	},
	["quest_complete.w13.wit.027"] = {
		"I could sleep standing up. I won't, because someone would hand me something to hold.",
		"A bed, a corner, or a reasonably flat crate. I'm not fussy at this point.",
		"My eyelids are negotiating for a few minutes off. I'm inclined to accept their terms.",
	},
	["quest_complete.w13.wit.028"] = {
		"It's a fine feeling, being useful. It would be finer if usefulness came with a cushion.",
		"Useful: that's the word. It sounds better than it feels in the knees.",
		"Being useful is wonderful for the soul and terrible for the boots.",
	},
	["quest_complete.w13.wit.029"] = {
		"I wonder whether anyone keeps a list of people who said yes. I'd like my name crossed off it, gently.",
		"I'd wager my name is written somewhere under 'reliable'. That's how the trouble starts.",
	},
	["quest_complete.w13.wit.030"] = {
		"Every errand comes with its own small vocabulary. I now know words I will never use in my life.",
		"I've learned the names of things I'll never need to name twice. Knowledge is a strange thing to carry.",
	},
	["quest_complete.w13.wit.031"] = {
		"Modesty says: shrug. Vanity says: tell everyone. I'll compromise and tell the next person who asks, if anyone does.",
		"Part of me wants to shrug it off, and part of me wants it carved somewhere. They've agreed to argue later.",
	},
	["quest_complete.w13.wit.032"] = {
		"Turned in, handed over, signed off. Three ways of saying I can stop thinking about it.",
		"Settled, closed, seen to: the world has a dozen words for finished, and I like every one of them.",
	},
	["quest_complete.w13.wit.033"] = {
		"A wanderer's life: arrive, be useful, leave before anyone thinks of something else.",
		"The secret of a long career in errands is the exit. A smile, a nod, and be gone before the next request takes shape.",
		"The art of the errand is mostly the art of the graceful exit.",
	},
	["quest_complete.w13.wit.034"] = {
		"I seem to draw errands the way a lantern draws moths. Not a comparison I enjoy.",
		"It must be something about my face. People look at it and think: there's someone who'll go.",
	},
	["quest_complete.w13.wit.035"] = {
		"What is a hero supposed to do with the moment after? Stand heroically, I suppose. My back declines.",
		"There's no pose for this part. Victory has poses. Errands just have a sort of slouch.",
	},
	["quest_complete.w13.wit.036"] = {
		"Everything I own is scuffed, dusty or missing a strap. A small price for being helpful.",
		"My kit looks as though it did the job without me. In a sense, it helped.",
		"My gear has the look of something that has been of service. It's a distinguished look, in its way.",
	},
	["quest_complete.w13.wit.037"] = {
		"Modesty needs an audience. For now I'll be smug in private and humble in company.",
		"Smug inside, humble outside. It's a system, and it works.",
	},
	["quest_complete.w13.wit.038"] = {
		"I'll tell this badly one day, and it will grow with every telling. That's how legends happen: people like me, exaggerating.",
		"Give it a year and this will be a much better story. I'll see to that personally.",
		"In ten years this tale will have three times as much of everything in it, and I'll be braver.",
	},
	["quest_complete.w13.wit.039"] = {
		"Whoever asked now has one problem fewer, and I have one story more. Fair trade, roughly.",
		"One trouble less on that side, one anecdote more on mine. I think I got the better end.",
		"Their worry is lighter, my head is fuller. I can't think of a fairer split.",
	},
	["quest_complete.w13.wit.040"] = {
		"I'm sitting down for a moment. The world can hold itself together that long. Probably.",
		"The world managed before I came along. It can manage while I sit down.",
	},
	["quest_complete.w13.wit.041"] = {
		"In a better-organized world there'd be a clerk for this, and a seal, and a queue. Almost a shame there isn't.",
		"No clerk, no seal, no queue. Heroism remains blessedly unregulated.",
	},
	["quest_complete.w13.wit.042"] = {
		"A stranger's help comes in a stranger's style: willing, a little puzzled, and finished its own way.",
		"Not quite the way anyone imagined it, but finished, and finished is the part that counts.",
	},
	["quest_complete.w13.wit.043"] = {
		"Habit makes me check my pack for the errand. Gone. I check twice, because I don't trust good news.",
		"Some part of me still thinks there's a job to carry. That part will get the news last.",
	},
	["quest_complete.w13.wit.044"] = {
		"In stories, heroics fill a chapter. Mine are mostly muttering and guesswork, with a tidy ending.",
		"A storyteller would cut most of what I actually did. The muttering, for instance. The muttering was essential.",
	},
	["quest_complete.w13.wit.045"] = {
		"Adventure, they call it. Some days it's a chore with ambitions. I won't say which kind this was.",
		"Not every adventure has dragons in it. Some are errands in good boots. I'll let the story decide which this one was.",
		"Was it an adventure or a chore? The difference, I suspect, is who tells it afterward.",
	},
	["quest_complete.w13.wit.046"] = {
		"I'd keep a journal of these, but every page would just say 'did as asked', and that's no kind of reading.",
		"Journal entry: request, departure, work, return. Gripping stuff. The bards can embellish it.",
	},
	["quest_complete.w13.wit.047"] = {
		"It's surprising what counts as a crisis in other people's lives. Less surprising how small any trouble looks once it's dealt with.",
		"Troubles look enormous to their owners and modest to whoever fixes them. Both are right.",
	},
	["quest_complete.w13.wit.048"] = {
		"Lie down, and someone will ask me something. Stand up, same. I'll lean, and hope leaning counts as neither.",
		"There's a posture that says 'please, nothing more'. I'm trying to find it.",
	},
	["quest_complete.w13.wit.049"] = {
		"The errand and I part on good terms. I won't miss it, and it won't write.",
		"Farewell, little errand. You were trouble, but for a while you were my trouble.",
		"Goodbye, errand. I'd say I'll remember you fondly, but I'd be lying about the fondly.",
	},
	["quest_complete.w13.wit.050"] = {
		"Someone will tell this as 'and then a stranger came by and fixed it'. I'm the stranger. It's a good part.",
		"In somebody's version of events I'll be 'whoever was passing'. No name, one line. I'll take the role.",
	},
	["quest_complete.w13.wit.051"] = {
		"Strange, the things people trust to whoever happens by. I'd hesitate to lend a stranger my spoon.",
		"People hand their worries to wanderers with a trust I wouldn't give my own boots.",
		"Lend a stranger a worry, apparently, and it comes back fixed. I'd be suspicious, if I weren't the stranger.",
	},
	["quest_complete.w13.wit.052"] = {
		"The best part of finishing is the face I get to make afterward. Smug, but in a helpful way.",
		"One smug moment per errand: that's the rule. I made it up just now.",
	},
	["quest_complete.w13.wit.053"] = {
		"Strangers ask, I answer. A simple arrangement. I only wish I could read the small print first.",
		"Requests come with small print, written in a language I only learn afterward.",
	},
	["quest_complete.w13.wit.054"] = {
		"If I had a crest, it would show an open hand and the words 'oh, all right'.",
		"My motto, if I ever choose one: 'Fine. I'll go.'",
		"Carved over my door, if I had a door: 'Yes, but only this once.'",
	},
	["quest_complete.w13.wit.055"] = {
		"It's oddly flattering to be asked. It's oddly tiring to be flattered like that.",
		"Being trusted is lovely. Being trusted with errands is lovely in a way that ends in a long sit-down.",
	},
	["quest_complete.w13.wit.056"] = {
		"In the stories, heroes slay dragons. I did what was asked of me. Everyone has dragons their own size.",
		"Not a dragon, perhaps. Then again, nobody ever settled what size a dragon has to be to count.",
	},
	["quest_complete.w13.wit.057"] = {
		"One worry, removed and disposed of with care.",
		"One worry, taken out of the way and put somewhere safe. Namely, behind me.",
		"There. That's one thing the world can stop fretting about.",
	},
	["quest_complete.w13.wit.058"] = {
		"Mark it down: one stranger, reasonably helpful.",
		"For the record: helpful, punctual-ish, and only a little dusty.",
	},
	["quest_complete.w13.wit.059"] = {
		"No applause, please. Also, no more tasks. Not this very moment.",
		"Hold the applause. Hold the next request too, if it's all the same.",
		"Please, save the cheering. My ears and my legs are both off duty.",
	},
	["quest_complete.w13.wit.060"] = {
		"Seen to. Try not to need me for at least an hour.",
		"Handled. Give it a while before the next calamity, would you?",
		"Dealt with. The next disaster is kindly asked to wait its turn.",
	},
	["quest_complete.w13.wit.061"] = {
		"I'd bow, but I'm not sure I'd come back up.",
		"A bow seems called for. My back has vetoed it.",
		"Forgive me if I skip the curtsy. Or the bow. Whichever I was going to do.",
	},
	["quest_complete.w13.wit.062"] = {
		"As described, or close enough that nobody will notice.",
		"Everything as asked, apart from one detail I've decided not to mention.",
	},
	["quest_complete.w13.wit.063"] = {
		"If anyone asks who did it, describe me as taller.",
		"Should anyone ask, it was done with great dignity. Leave out any stumbling.",
		"When this gets told, I'd like a better hat in it.",
	},
	["quest_complete.w13.wit.064"] = {
		"One fewer thing wrong with the world. Only a few million left.",
		"The world's list of problems is one line shorter. I'd say keep it up, but I'm the one keeping it up.",
		"The world is a little less crooked. I've straightened one corner; the rest is someone else's turn.",
	},
	["quest_complete.w13.wit.065"] = {
		"Don't mention it. Really. I'd rather nobody mentioned it to me for a while.",
		"No need for thanks. No need to ask me anything else, either. Both, ideally.",
	},
	["quest_complete.w13.wit.066"] = {
		"Nobody's problem anymore. That's my favorite place to put a problem.",
		"And now it belongs to no one. That's where problems should live.",
	},
	["quest_complete.w13.wit.067"] = {
		"Sign here, here and here. I'm joking. Mostly.",
		"I'll need that in writing. No, I won't. But it was a nice thought.",
		"Shall I initial something? I've always liked the idea of initialing something.",
	},
	["quest_complete.w13.wit.068"] = {
		"Let the heralds proclaim it! Or don't. I'll proclaim it myself, quietly.",
		"Hear ye, hear ye: it is done. That's the whole proclamation.",
	},
	["quest_complete.w13.wit.069"] = {
		"I'm told this is where I say something wise. I've got nothing. A meal, perhaps?",
		"Words of wisdom for the occasion: sit down while you can.",
	},
	["quest_complete.w13.wit.070"] = {
		"I'd make a speech, but nobody's prepared for my speeches. Least of all me.",
		"A speech? No. You'd have to stand there while I looked for the end of it.",
	},
	["quest_complete.w13.wit.071"] = {
		"Sorted. Now, which way to somewhere I can be useless in peace?",
		"The useful part is over. Point me toward the useless part.",
	},
	["quest_complete.w13.wit.072"] = {
		"Glad that's sorted. Don't tell anyone how I did it.",
		"It worked. Please don't ask how; the answer is long and slightly embarrassing.",
		"I'd explain my method, but I doubt I had one.",
	},
	["quest_complete.w13.wit.073"] = {
		"Behold: a finished thing. Rarer than you'd think.",
		"Look at that. Completed. Someone ring a bell.",
		"Here it is: one completed thing, slightly worn at the edges.",
	},
	["quest_complete.w13.wit.074"] = {
		"Gratitude comes in many forms. My favorite is silence and a free hour.",
		"Any thanks can take the shape of leaving me alone for a bit.",
	},
	["quest_complete.w13.wit.075"] = {
		"Is that everything? Please say that's everything.",
		"That's all of it, yes? Tell me that's all of it.",
		"Nothing else hiding behind this one, I hope?",
	},
	["quest_complete.w13.wit.076"] = {
		"Neat work, by my own judgment, which is the one I trust most.",
		"Good work, me. Somebody had to say it, and I was nearest.",
		"I'd congratulate myself, but I'd only get conceited.",
	},
	["quest_complete.w13.wit.077"] = {
		"Remember this face. Mostly so you can find it next time you need someone gullible.",
		"There's a face worth remembering, should you ever need an easy yes.",
	},
	["quest_complete.w13.wit.078"] = {
		"A pleasure, mostly. Some of it was no pleasure at all, but the ending was.",
		"It was a pleasure. Partly. The finishing part especially.",
	},
	["quest_complete.w13.wit.079"] = {
		"Tell the next one in line I've retired. For a while. A short while.",
		"Shop's closed. Back shortly, probably.",
	},
	["quest_complete.w13.wit.080"] = {
		"Your trouble's gone. My boots will remember it for a while.",
		"Gone, the whole bother. Only my feet are still holding a grudge.",
		"The bother is over. My legs have agreed to forgive it, eventually.",
	},
	["quest_complete.w13.wit.081"] = {
		"Next errand, give me a day's warning. I like to sulk ahead of time.",
		"Next time, a little notice, please. I prefer to complain before, not after.",
	},
	["quest_complete.w13.wit.082"] = {
		"makes a small, exaggerated flourish with one hand, as though signing an invisible document.",
		"mimes stamping something with a fist, then looks faintly embarrassed at having done it.",
		"signs the air with a flourish and underlines it twice.",
	},
	["quest_complete.w13.wit.083"] = {
		"glances at {g:his|her} empty hands with mild suspicion, as if they might have forgotten something.",
		"pats each pocket in turn, finds nothing that belongs to anyone else, and looks almost disappointed.",
		"turns {g:his|her} empty palms up and studies them, as a juggler might once the last ball has landed.",
	},
	["quest_complete.w13.wit.084"] = {
		"attempts a modest shrug, overdoes it, and turns it into stretching a shoulder.",
		"begins a little bow, thinks better of it halfway, and settles for a nod with ambitions.",
	},
	["quest_complete.w13.wit.085"] = {
		"mouths a silent 'ta-da' and keeps a perfectly straight face.",
		"raises both hands a little, like a performer waiting for applause that may not come, then lowers them.",
	},
	["quest_complete.w13.wit.086"] = {
		"looks over {g:his|her} shoulder, as if the next request might already be sneaking up.",
		"edges a step away from anyone who looks as though they might have another favor in mind.",
		"takes one casual step backward, out of easy reach of further requests.",
	},
	["quest_complete.w13.wit.087"] = {
		"dusts off {g:his|her} gear with great ceremony, as if conferring a knighthood on the occasion.",
		"straightens an imaginary medal on {g:his|her} chest and gives it a little polish.",
	},
	["quest_complete.w13.wit.088"] = {
		"draws an invisible line through the air, crossing something off a list only {g:he|she} can see.",
		"makes a small tick in the air with one finger, then a second one, just to be sure.",
	},
	["quest_complete.w13.wit.089"] = {
		"rolls {g:his|her} eyes at the whole business, then grins in spite of it.",
		"shakes {g:his|her} head slowly at the strangeness of it all, half amused.",
		"lets out a short laugh at nothing much, the joke apparently being the whole business.",
	},
	["quest_complete.w13.wit.090"] = {
		"tucks away an imaginary quill, the business concluded.",
		"waves {g:his|her} fingers as if to dry the ink of an imaginary signature.",
	},
	["quest_complete.w13.wit.091"] = {
		"gives the empty air a crisp salute, then looks around to see whether anyone noticed.",
		"snaps off a salute, a little too smart to be entirely serious.",
		"raises two fingers to {g:his|her} temple, saluting the task itself on its way out.",
	},
	["quest_complete.w13.wit.092"] = {
		"hums a few bars of a triumphant tune, off-key, and stops before it gets any worse.",
		"starts a victorious little tune and abandons it after three notes, which were plenty.",
	},
	["quest_complete.w13.wit.093"] = {
		"stands up a little straighter, every inch the hero, for about as long as it takes to blink.",
		"strikes a heroic pose, holds it, and quietly lets it go when nobody comes to paint it.",
	},
	["quest_complete.w13.wit.094"] = {
		"checks the bottom of {g:his|her} pack, just in case another errand crept in when nobody was looking.",
		"peers suspiciously into {g:his|her} pack, as though errands breed in there.",
		"turns {g:his|her} pack upside down and gives it a shake, to be quite sure it holds nothing of anyone else's.",
	},
	["quest_complete.w13.wit.095"] = {
		"nods solemnly to the matter now closed, as one nods to an acquaintance leaving a party.",
		"bids the finished errand a silent, slightly mocking farewell.",
	},
	["quest_complete.w13.wit.096"] = {
		"wiggles {g:his|her} fingers in the air, a small private celebration nobody is invited to.",
		"does a very small, very contained victory shuffle, and stops at once.",
		"allows {g:himself|herself} one tiny fist, clenched at hip height: the most discreet celebration there is.",
	},
	["quest_complete.w13.wit.097"] = {
		"looks at the empty space where the task used to be, the way one looks at the gap a tooth has left.",
		"squints at nothing, as if trying to remember what all the fuss was about.",
	},
	["quest_complete.w13.wit.098"] = {
		"tilts {g:his|her} head, as though weighing whether a finished errand deserves a song or a nap, and the nap seems to be winning.",
		"looks for a moment like someone composing a ballad about it, then visibly gives up.",
		"gazes into the middle distance like a poet hunting a rhyme for 'errand', and comes back empty-handed.",
	},
	["quest_complete.w13.wit.099"] = {
		"polishes a perfectly clean buckle, for something to do with {g:his|her} hands.",
		"fiddles with a strap that needed no fiddling, a little lost without a task.",
		"straightens the same strap three times, as if idle hands needed a job invented for them.",
	},
	["quest_complete.w13.wit.100"] = {
		"mutters something about a strongly worded letter to the next person who asks, and plainly does not mean it.",
		"grumbles at the very idea of errands, without much conviction.",
		"complains to nobody about the state of the world, then looks rather pleased with its tiny improvement.",
	},
	["quest_complete.w13.wit.101"] = {
		"rubs the back of {g:his|her} neck, with the look of someone who has been useful and suspects it may become a habit.",
		"gives {g:his|her} own shoulder a congratulatory pat, since it was right there.",
	},
	["quest_complete.w13.worth.001"] = {
		"A word is cheap to give and dear to keep. This one cost something, and it's kept.",
		"Saying yes took a moment. The yes only means anything now, at the far end of it.",
		"Promising was the easy half. Keeping it was the rest, and both halves are mine now.",
	},
	["quest_complete.w13.worth.002"] = {
		"Somebody's load is lighter by exactly the part I carried. I like that arithmetic.",
		"Whatever trouble sat on someone's shoulders, a piece of it rode on mine for a while, and that piece is gone.",
		"What weighed on someone weighs a little less, and I carried the difference. Fair trade.",
	},
	["quest_complete.w13.worth.003"] = {
		"A crack mended early never becomes a split. Small work done in time is how things stay standing.",
		"Fix the little thing while it's little. That's most of wisdom, and I just practiced it.",
		"Leaks become floods when nobody bothers. Somebody bothered. I'm glad it was me.",
	},
	["quest_complete.w13.worth.004"] = {
		"Nobody made me. That's the part that makes it count.",
		"No one could have forced this out of me. It was given freely, and freely given weighs more.",
		"Freely chosen, fully done. That's the only kind of duty I trust.",
	},
	["quest_complete.w13.worth.005"] = {
		"Thanked or not, the thing stands finished. Work doesn't wait for applause to be real.",
		"Whatever thanks there were, or weren't, the job is exactly as finished either way.",
		"Gratitude is welcome and beside the point. The matter is closed; that part is true with or without it.",
	},
	["quest_complete.w13.worth.006"] = {
		"No loose ends. I checked twice, and the second look found nothing. That's how it should be.",
		"Every edge tucked in, nothing left dangling for someone else to trip over.",
		"Nothing half-tied, nothing left for the next poor soul to sort out. Clean.",
	},
	["quest_complete.w13.worth.007"] = {
		"More has been lost to little things left undone than to any army. This little thing, at least, is done.",
		"Great matters rest on small ones, the way a wall rests on its lowest course. I set one piece of that course.",
	},
	["quest_complete.w13.worth.008"] = {
		"Someone trusted a face they didn't know. I'm glad the face turned out to deserve it.",
		"Trust handed to a stranger is a fragile thing to carry. It came back without a crack in it.",
		"A stranger's trust is lent on faith alone. I'm returning it with interest.",
	},
	["quest_complete.w13.worth.009"] = {
		"The world is no tidier than it was, except for one drawer. I closed that drawer.",
		"One corner of things put back where it belongs. The rest can wait its turn.",
		"Somewhere in the great mess of things, one shelf is straight. My doing.",
	},
	["quest_complete.w13.worth.010"] = {
		"I could have done half and called it whole. Nobody would have known but me, and I'm exactly the one who'd know.",
		"There was a lazier version of this. I'd have had to live with it. I didn't take it.",
		"Cutting a corner would have saved a little and cost me more. I left the corner where it was.",
	},
	["quest_complete.w13.worth.011"] = {
		"What one does when no one is checking is the truest measure there is. I'd like to pass it more often than not.",
		"Nobody stood over me for this. Good. Work done unwatched tells me more about myself than any praise.",
	},
	["quest_complete.w13.worth.012"] = {
		"A promise to a stranger binds as tight as one to a friend. Tighter, maybe, since no one would blame me for dropping it.",
		"Strangers get the same word I'd give anyone. Otherwise it isn't a word, just a mood.",
		"Nobody would have held me to it. I held myself, which is harder to wriggle out of.",
	},
	["quest_complete.w13.worth.013"] = {
		"My word went out. Now it has come home.",
		"I gave my word. Here's the rest of it.",
		"Whole, as promised.",
	},
	["quest_complete.w13.worth.014"] = {
		"It wasn't my trouble to begin with. Now it isn't anyone's.",
		"The trouble belonged to someone else. I borrowed it long enough to end it.",
		"Someone was stuck with this. Then I was. Now no one is, and that's the best version.",
	},
	["quest_complete.w13.worth.015"] = {
		"It isn't pride, quite. Something quieter: being a person others can lean on.",
		"Not pride. More like finding out a floorboard holds, and being the floorboard.",
		"There's a word for this feeling and it isn't glory. Sturdy, maybe. I feel sturdy.",
	},
	["quest_complete.w13.worth.016"] = {
		"I want to be someone who finishes things. Each thing finished, I get a little closer.",
		"Starting belongs to anyone. Finishing is a habit, and I'm building it, one closed matter after the next.",
		"Half-finished things follow a person around. This one won't be following me.",
	},
	["quest_complete.w13.worth.017"] = {
		"If there was any thanks in it, I'll keep it, folded small, for a day that needs it.",
		"Thanks weren't the point. Any that came my way, I'll tuck somewhere safe all the same.",
		"Thanks or silence, either is fine. If there was any warmth in it, I'll keep that.",
	},
	["quest_complete.w13.worth.018"] = {
		"Duty isn't a chain. It's a shape I chose to hold, and I held it.",
		"People speak of duty as a weight. To me it's more like a spine: it keeps me upright.",
		"Some call it a yoke. I call it the thing that keeps my days from coming apart.",
	},
	["quest_complete.w13.worth.019"] = {
		"Better a modest thing done well than a grand thing done badly. I'll take the modest one.",
		"There's a fine sort of contentment in seeing a thing through without a single shortcut.",
		"Grand gestures are easy to admire. Getting a modest thing exactly right is harder, and that's what I did.",
	},
	["quest_complete.w13.worth.020"] = {
		"A day that would have gone badly for someone may go a little better now. I won't see it, and I don't need to.",
		"I'll never see the difference this makes. Somebody will. That's the right way round.",
		"The good part happens after I've gone, out of sight. I'm content to miss it.",
	},
	["quest_complete.w13.worth.021"] = {
		"The world runs on borrowed shoulders. For a while mine were on loan, and I don't mind the lending.",
		"Strangers carry each other's loads more often than anyone admits. This was one such stretch.",
		"A good share of the world's weight moves from one stranger's back to another's. This time the moving was mine.",
	},
	["quest_complete.w13.worth.022"] = {
		"Do what was asked, the way it was asked, and make no song of it. There's an old decency in that.",
		"No embroidery, no excuses: the thing asked for, done as asked. Some virtues are very plain.",
		"Asked plainly, answered plainly. The oldest courtesy there is, and still the best.",
	},
	["quest_complete.w13.worth.023"] = {
		"Being relied on is heavier than I expected. And better. Both at once, which seems to be how it works.",
		"It turns out being counted on has weight. Good weight, like a full pack before a long walk.",
		"Being counted on costs a little freedom and adds a little use. I'll take that trade.",
	},
	["quest_complete.w13.worth.024"] = {
		"The good I did fits in one hand. It's solid, though. I can feel the weight of it.",
		"Not much good, as goods go. But it's the real kind, not the talked-about kind.",
		"Nobody would call it a great deed. It's a true one, and true outlasts great.",
	},
	["quest_complete.w13.worth.025"] = {
		"Not a hero's work. A neighbor's work. Honestly, the world could use more neighbors than heroes.",
		"Heroes get the statues. Neighbors get things done. I'll be a neighbor for now.",
		"No banner, no parade. Just someone who said yes and meant it.",
	},
	["quest_complete.w13.worth.026"] = {
		"A promise is a line thrown forward. I just walked up and caught the other end.",
		"Every promise borrows a little piece of the future. This piece I've handed back intact.",
		"Promises are bridges built before anyone walks on them. This one bore the crossing.",
	},
	["quest_complete.w13.worth.027"] = {
		"If everyone set one thing right, most of the world's troubles would run out of room. This was my one thing.",
		"Imagine everyone mending just one thing properly. Someone has to start. Fine: I started.",
		"One trouble put to rest. If the habit spreads, the world will be a calmer place.",
	},
	["quest_complete.w13.worth.028"] = {
		"The last stitch has a pleasure the first one never has.",
		"The first step of a job is all nerves. The last one is pure satisfaction, and I'm standing in it.",
		"Beginnings get all the attention. Endings like this one are the quieter pleasure.",
	},
	["quest_complete.w13.worth.029"] = {
		"Each kept word makes the next easier to give and harder to break. A good kind of trap.",
		"Keeping promises is a muscle. This one got a little stronger.",
		"The more words I keep, the more my word is worth. That's one store that only ever fills.",
	},
	["quest_complete.w13.worth.030"] = {
		"Nobody may ever trace this back to me. It does its good just the same, without my name on it.",
		"Good work doesn't need a signature. This one goes out unsigned.",
		"Let the good go about its business anonymously. It doesn't need my name to work.",
	},
	["quest_complete.w13.worth.031"] = {
		"If I'm ever the one asking, I hope someone answers the way I just did.",
		"One day the asking may be mine. I'd like to have done my share of answering first.",
		"Everyone needs a stranger's hand sooner or later. Better to have lent a few before I need one.",
	},
	["quest_complete.w13.worth.032"] = {
		"The gap between done and done right was a few more minutes. Best minutes I've spent.",
		"A little extra care at the end. That's usually all that separates good work from the other kind.",
	},
	["quest_complete.w13.worth.033"] = {
		"I notice I didn't do it to be thanked. Noticing that pleases me more than any thanks would.",
		"A quiet discovery: I'd have done this with no one ever knowing. Good to learn that about myself.",
		"Turns out I'd do it unasked and unthanked. I'm a little relieved to find that out.",
	},
	["quest_complete.w13.worth.034"] = {
		"Whatever it meant to anyone else, it told me one thing: I can be counted on. I'd hoped so.",
		"I'd wondered whether I was dependable. A modest answer, but the right one.",
		"I said I could be relied on. Now it's not a claim; it's a fact.",
	},
	["quest_complete.w13.worth.035"] = {
		"Help given to someone I may never meet again asks nothing back. That's the cleanest kind.",
		"No ties, no favors owed, likely no second meeting. Good done like that travels light.",
		"Kindness to someone passing through leaves no strings to tangle in. Clean work, in every sense.",
	},
	["quest_complete.w13.worth.036"] = {
		"Whoever asked swallowed some pride to do it. I hope the answer was worth the swallowing.",
		"It's hard to admit a thing can't be managed alone. Someone admitted it. I respect that more than I let on.",
		"Asking cost someone something. I tried to make the cost worth it.",
	},
	["quest_complete.w13.worth.037"] = {
		"A trouble shared is a trouble split. I took my share, and carried it to the end.",
		"Someone couldn't carry all of it. I took a corner. Corners matter.",
		"A burden split between two is a different animal. I was the second pair of hands.",
	},
	["quest_complete.w13.worth.038"] = {
		"No chronicle will hold this. My own count does, and that's the one I actually read.",
		"It won't be written anywhere that matters to anyone else. It's written in me.",
		"History won't notice. I noticed. That'll do.",
	},
	["quest_complete.w13.worth.039"] = {
		"A finished task settles in the mind like a stone laid level. Nothing wobbles.",
		"The thing sits square now, all its corners true. I can stop checking it.",
	},
	["quest_complete.w13.worth.040"] = {
		"My name means a little more than it did. Not louder. Just more reliable.",
		"A name is only worth what's been done under it. Mine is worth one thing more.",
		"People can say my name now and mean something by it. A small something. A good one.",
	},
	["quest_complete.w13.worth.041"] = {
		"If I'm remembered for anything, let it be for answering and finishing. That's more than most fine speeches can claim.",
		"Answer, see it through. If that's my whole legend, I'll take it.",
		"Let them say I answered when asked and stayed until it was finished. I can't think of a better line to have said of me.",
	},
	["quest_complete.w13.worth.042"] = {
		"The world holds together less by walls and armies than by people keeping small promises to each other.",
		"Under all the noise of the great powers, it's the kept promises of ordinary folk that hold the floor up.",
	},
	["quest_complete.w13.worth.043"] = {
		"Kind words cost nothing. Time and effort do. I spent the second kind, and I don't regret the price.",
		"Easy to be generous with talk. This was generosity with legs and patience, which are harder to give.",
		"Advice is free and worth about that. Effort is dear, and I gave it.",
	},
	["quest_complete.w13.worth.044"] = {
		"I won't learn how the rest of it turns out. The good is set loose; it can find its own way.",
		"What happens next isn't mine to see. My part was to start the good rolling.",
		"Where it goes from here isn't up to me. That's how a gift is meant to work.",
	},
	["quest_complete.w13.worth.045"] = {
		"Nobody owes me for this. It wasn't a loan. It was a gift, and gifts keep no accounts.",
		"I'd rather it be a kindness than a debt. Kindnesses don't need collecting.",
		"Let it be a kindness, not a favor. Favors come back with a bill attached.",
	},
	["quest_complete.w13.worth.046"] = {
		"Useful. It's an underrated word. I was useful, and I'm a bit pleased about it.",
		"There are grander things to be than useful. Few of them feel this solid.",
		"A tool that works when needed. Not the poetry I'd choose, but a fine thing to be.",
	},
	["quest_complete.w13.worth.047"] = {
		"There's no glory in it, and it was never about glory. The thing needed doing. That was reason enough.",
		"Some work is done to be seen. This was done because it was right.",
		"Nobody needs to know. It needed doing; it got done; the rest is noise.",
	},
	["quest_complete.w13.worth.048"] = {
		"I did it partly glad and partly grudging. Next time I'd like the glad part to win outright.",
		"Duty done with a sour face still counts. Done with a light one, it counts and costs less. Something to aim for.",
	},
	["quest_complete.w13.worth.049"] = {
		"Things went right, and the reason is nothing magical: someone asked, and someone answered.",
		"No prophecy, no miracle. Just a request and a yes, carried through. That's how most good happens.",
	},
	["quest_complete.w13.worth.050"] = {
		"I can't mend the world. I mended this. When the world feels too big, I'll try to remember the difference.",
		"Most of what's wrong in the world is beyond my reach. This wasn't, and now it's right.",
		"The world's troubles outnumber me badly. Still, the count is lower by one, and I did the subtracting.",
	},
	["quest_complete.w13.worth.051"] = {
		"Dwarves have a saying, or so I've heard: a promise is a tool, and tools left idle go to rust. This one won't.",
		"There's a dwarven saying I half remember: a word is forged once and tempered every day after. This one's tempered.",
	},
	["quest_complete.w13.worth.052"] = {
		"Tauren say, I'm told, that a kindness is a seed you never see sprout. Fine by me. Plant it and walk on.",
		"As the tauren reportedly put it: plant the kindness, and leave the harvest to whoever comes after.",
	},
	["quest_complete.w13.worth.053"] = {
		"Something inside sits straighter now that this is done right, like a picture that finally stops hanging crooked.",
		"The untidy feeling is gone. What was asked is answered, and my thoughts have one less corner to snag on.",
	},
	["quest_complete.w13.worth.054"] = {
		"It took more than one try, and I kept trying because I said I would. That's the whole of it.",
		"Several tries. Each failure was a chance to quit with a good excuse. I passed up every one.",
	},
	["quest_complete.w13.worth.055"] = {
		"Honest work has a plainness to it that I trust more than any fine talk.",
		"Fine words promise. Plain work delivers. I'd rather be known for the second.",
		"Talk is a sketch; work is the building. I'd sooner be judged by the building.",
	},
	["quest_complete.w13.worth.056"] = {
		"It needed doing. Now it's done properly, not just done.",
		"Properly, mind. Not merely finished: finished right.",
		"Right the first time, and nothing to come back for.",
	},
	["quest_complete.w13.worth.057"] = {
		"No thanks needed. Truly. It was worth doing for its own sake.",
		"Keep the thanks. The thing itself was the point.",
		"Thanks aren't owed. It was right to do.",
	},
	["quest_complete.w13.worth.058"] = {
		"Big or small, it deserved doing right. It got that.",
		"However you measure it, it was worth care. It had mine.",
	},
	["quest_complete.w13.worth.059"] = {
		"There. One trouble fewer in the world.",
		"One less trouble walking around loose.",
		"Off the world's list of troubles. Good riddance to it.",
	},
	["quest_complete.w13.worth.060"] = {
		"Count on me for the next one, too.",
		"If there's more to be done, I'm listening.",
		"Anything more, and I'm the one to ask.",
	},
	["quest_complete.w13.worth.061"] = {
		"Promises should end like this one: kept.",
		"A promise, start to finish. As it should be.",
		"Kept. That's all the ceremony a promise needs.",
	},
	["quest_complete.w13.worth.062"] = {
		"My part's done. I hope it helps.",
		"My share is seen to. May it do some good.",
		"I've done what I could. Let it be enough.",
	},
	["quest_complete.w13.worth.063"] = {
		"Better right than quick. Every time.",
		"Slow and right beats fast and wrong. No contest.",
		"Haste spoils good work. This had none.",
	},
	["quest_complete.w13.worth.064"] = {
		"It mattered to someone. That's plenty.",
		"Somebody needed it. Good enough reason for me.",
		"Someone's better off. That'll do me.",
	},
	["quest_complete.w13.worth.065"] = {
		"If a hand is needed another time, ask. I mean it.",
		"Next time something's wrong, ask. Don't wait.",
	},
	["quest_complete.w13.worth.066"] = {
		"Duty's a plain word. I like plain words.",
		"Duty. Not a fancy word, but it carries well.",
	},
	["quest_complete.w13.worth.067"] = {
		"May it make the days easier. That was all I wanted.",
		"Let it lighten things a little. That's enough.",
	},
	["quest_complete.w13.worth.068"] = {
		"Good. One thing set right, and it'll stay set.",
		"Put right, and meant to stay that way.",
		"Mended to last. I don't do it any other way.",
	},
	["quest_complete.w13.worth.069"] = {
		"It was a pleasure, and I don't say that lightly.",
		"My pleasure. I mean the word, not the manners.",
	},
	["quest_complete.w13.worth.070"] = {
		"Asked, answered, and closed. As things should be between honest folk.",
		"A request made in good faith, met in good faith. Nothing finer.",
	},
	["quest_complete.w13.worth.071"] = {
		"Whatever comes of it, it was done right. Let that stand.",
		"May this hold as long as it's needed.",
		"Built to bear weight. Let the world lean on it.",
	},
	["quest_complete.w13.worth.072"] = {
		"Sorted, and sorted well.",
		"Squared away. Properly squared away.",
	},
	["quest_complete.w13.worth.073"] = {
		"Anyone in trouble deserves an answer. This one got mine.",
		"Trouble deserves an answer. This got one.",
	},
	["quest_complete.w13.worth.074"] = {
		"No speeches. It needed doing, I did it.",
		"Don't make much of it. It was the right thing, that's all.",
		"Nothing to celebrate. A thing was owed and it's been seen to.",
	},
	["quest_complete.w13.worth.075"] = {
		"What I said I'd do stands done. Word and deed match.",
		"Word and deed, side by side. That's the only way I want them.",
	},
	["quest_complete.w13.worth.076"] = {
		"Whatever it was worth to anyone else, it was worth it to me.",
		"Worth it. Don't ask me why; I just know.",
	},
	["quest_complete.w13.worth.077"] = {
		"We did that right, all of us. Thank you.",
		"Good work, everyone. That's how it's done properly.",
		"Proud of this lot. Every one of you pulled your weight.",
	},
	["quest_complete.w13.worth.078"] = {
		"I'd put my name to that, gladly.",
		"Work I'll stand behind, every bit of it.",
	},
	["quest_complete.w13.worth.079"] = {
		"Happy to help. Really, happy to.",
		"Glad I could lend a hand. Mean that.",
	},
	["quest_complete.w13.worth.080"] = {
		"Doing good is easier in company. I'm grateful for the hands beside mine.",
		"Alone, this would have been mine to carry. Shared, it was ours, and it's done.",
	},
	["quest_complete.w13.worth.081"] = {
		"pauses after the handover, with the look of someone whose word has come home unbroken.",
		"lets a quiet satisfaction show, the kind that comes from a promise brought to its end.",
	},
	["quest_complete.w13.worth.082"] = {
		"runs a thumb along the strap of {g:his|her} pack, the way a mason pats a wall that stands true.",
		"looks the finished matter over in {g:his|her} mind, finds no fault, and lets it go.",
	},
	["quest_complete.w13.worth.083"] = {
		"straightens a strap that needed no straightening, out of the same care that saw the task through.",
		"brushes a speck from {g:his|her} sleeve, careful to the last, as if the job deserved a tidy finish.",
	},
	["quest_complete.w13.worth.084"] = {
		"gives a short, private nod, the kind kept for a duty seen through to the end.",
		"draws {g:himself|herself} up a little, as one does when a duty has been honored to the letter.",
	},
	["quest_complete.w13.worth.085"] = {
		"stays a moment longer, as if to make sure the thing will hold once {g:he|she} has gone.",
		"waits a beat before leaving, the way a builder waits to see a beam take its load.",
	},
	["quest_complete.w13.worth.086"] = {
		"looks down at {g:his|her} own hands with a certain quiet approval, as if they had kept a promise of their own.",
		"turns one hand palm up and studies it, as if weighing what it has been good for.",
	},
	["quest_complete.w13.worth.087"] = {
		"squares {g:his|her} shoulders, the way people stand when they have been as good as their word.",
		"stands a little taller, with the plain bearing of someone who did what was said.",
	},
	["quest_complete.w13.worth.088"] = {
		"half-turns to go, then pauses, in case another hand is still needed.",
		"lingers within reach a moment more, in case the help turns out to need a second half.",
	},
	["quest_complete.w13.worth.089"] = {
		"files the matter away with care, like a ledger entry made in a neat hand.",
		"puts the finished task away in memory, neatly, the way one shelves a book worth reading.",
	},
	["quest_complete.w13.worth.090"] = {
		"smiles to {g:himself|herself}, picturing some trouble that will not be there tomorrow.",
		"wears, for a moment, the easy face of someone who has done a stranger a good turn.",
	},
	["quest_complete.w13.worth.091"] = {
		"lets the moment settle, unhurried, as though a good thing deserved a few seconds of quiet.",
		"takes a moment simply to stand in the fact of it: asked, answered, finished.",
	},
	["quest_complete.w13.worth.092"] = {
		"rests a hand flat on {g:his|her} chest for a moment, an old gesture for a pledge fulfilled.",
		"presses a fist lightly to {g:his|her} chest, the sign of an oath honored, and lets it fall.",
	},
	["quest_complete.w13.worth.093"] = {
		"throws one brief look over {g:his|her} shoulder, checking, perhaps, that what was mended stays mended.",
		"glances at the spot where the matter was settled, then away, at peace with it.",
	},
	["quest_complete.w13.worth.094"] = {
		"carries {g:himself|herself} a little differently now, like someone who was trusted and proved worth it.",
		"moves off with an unhurried step, the gait of someone with nothing on {g:his|her} conscience.",
	},
	["quest_complete.w13.worth.095"] = {
		"hums a few quiet notes, the tuneless kind people make when a thing has gone right.",
		"whistles two soft notes, then stops, as if even that were too much fuss over a duty done.",
	},
	["quest_complete.w13.worth.096"] = {
		"pauses as if listening for thanks, then seems not to mind either way.",
		"does not wait for thanks, and does not seem to miss them.",
	},
	["quest_complete.w13.worth.097"] = {
		"checks over {g:his|her} gear with fresh care, ready to be of use to whoever asks next.",
		"tightens a buckle and settles {g:his|her} kit, with the quiet readiness of someone others can rely on.",
	},
	["quest_complete.w13.worth.098"] = {
		"rubs {g:his|her} hands together once, briskly, the gesture of someone who has just closed an honest piece of work.",
		"claps {g:his|her} hands softly, once, as if to say the thing is sound.",
	},
	["quest_complete.w13.worth.099"] = {
		"repeats, half aloud, the words of the promise {g:he|she} made, as if to mark it kept.",
		"mouths a silent word of thanks, though it is not clear to whom.",
	},
	["quest_complete.w13.worth.100"] = {
		"rolls {g:his|her} neck and smiles a little, as if the stiffness were a fair price for what it bought.",
		"flexes tired fingers, and the tiredness seems to sit lightly, as tiredness does when it went toward something good.",
	},
	["subzone_enter.w13.cross.001"] = {
		"There's a seam between places, and I always cross it without noticing. Then the name tells me.",
		"I never catch the moment one place turns into the next. The name always gets there first.",
		"The last place let go of me some steps back. Which step, I couldn't tell you.",
	},
	["subzone_enter.w13.cross.002"] = {
		"glances back over {g:his|her} shoulder, as if the border might be visible from this side.",
		"looks back once, briefly, trying to spot where the last place ended. Nothing gives it away.",
		"turns half around after a few paces, as though the border might have left a mark. It hasn't.",
	},
	["subzone_enter.w13.cross.004"] = {
		"A new name, and with it the small hope that something good is kept here.",
		"Each name I walk into comes with a little hope tied to it. This one too.",
		"Crossing over, I let myself hope a little. It costs nothing and it travels light.",
	},
	["subzone_enter.w13.cross.005"] = {
		"taps the ground once with one foot as {subzone} begins, a private little ritual of arrival.",
		"marks the passage into {subzone} with a small tap of the heel, the way some people knock before entering.",
	},
	["subzone_enter.w13.cross.006"] = {
		"Nothing on the ground says where the last place ends. Someone just decided, and everyone agreed.",
		"No line, no post, no marker. A name ends and another begins because someone said so.",
		"Where one name stops, nothing changes but the name. It's still enough to make me look up.",
	},
	["subzone_enter.w13.cross.007"] = {
		"Whatever {subzone} turns out to be, hello.",
		"Pleased to meet you, {subzone}. I'll learn the rest as I go.",
	},
	["subzone_enter.w13.cross.008"] = {
		"The air doesn't change at a border. Something in me does, though, every time the name changes.",
		"Same air on both sides of the line. Only my attention shifts, as if the name had nudged me.",
		"Funny. One step and the place seems to belong to another story, though nothing I can point to has changed.",
	},
	["subzone_enter.w13.cross.009"] = {
		"slows at the crossing into {subzone}, curiosity plain on {g:his|her} face.",
		"lifts {g:his|her} chin a little as {subzone} begins, plainly curious about what it holds.",
	},
	["subzone_enter.w13.cross.010"] = {
		"I've arrived. Where, exactly, is a question for later.",
		"Arrival accomplished. Understanding may take a little longer.",
		"Here, wherever here is. A fine spot to have arrived in.",
	},
	["subzone_enter.w13.cross.011"] = {
		"I cross into {subzone} and mean no harm by it.",
		"Coming into {subzone} in good faith. Take me as you find me.",
	},
	["subzone_enter.w13.cross.012"] = {
		"This is the part of wandering I like best: the edge of a name, and not knowing what's past it.",
		"Wandering is mostly this. A name begins, and I go in to find out what it means.",
		"Not knowing what lies past a name is most of the pleasure of wandering. The rest is meals.",
	},
	["subzone_enter.w13.cross.013"] = {
		"shifts the weight of the pack as the name changes to {subzone}, like someone settling in for a fresh chapter.",
		"adjusts a strap without looking at it, already half a step into {subzone}.",
	},
	["subzone_enter.w13.cross.014"] = {
		"Every time I cross a border I half expect someone to ask for papers. Nobody ever does.",
		"Crossing from one name to another costs nothing. No toll, no papers. The best bargain I know.",
		"If borders charged a toll I'd be ruined. Lucky for me they're free.",
	},
	["subzone_enter.w13.cross.015"] = {
		"Let's see what {subzone} has to say for itself.",
		"What's {subzone} about, then? Only one way to learn.",
	},
	["subzone_enter.w13.cross.016"] = {
		"Every border was drawn by someone long gone. I cross it as a guest of their old agreement.",
		"Someone long ago agreed that here one thing ends and another begins. I honor it by noticing.",
		"Somebody settled on this line once, and the settling outlived them. I step over it with care.",
	},
	["subzone_enter.w13.cross.017"] = {
		"crosses into {subzone} without breaking stride, as if borders were for other people.",
		"passes into {subzone} at the same steady pace, granting the change of name a nod and nothing more.",
	},
	["subzone_enter.w13.cross.018"] = {
		"I like the first few steps into a name. Anything could be true here, for a little while.",
		"For a few steps after any border, everything is still possible. I try not to rush them.",
		"Just past a border, the place hasn't disappointed me yet. I enjoy that while it lasts.",
	},
	["subzone_enter.w13.cross.020"] = {
		"Name to name, that's how I travel. The ground in between doesn't argue.",
		"I keep moving from one name to the next. The ground underfoot doesn't seem to care which is which.",
	},
	["subzone_enter.w13.cross.021"] = {
		"touches two fingers to {g:his|her} brow on entering {subzone}, a small salute to the place.",
		"gives {subzone} a short, formal little bow, then carries on as if nothing happened.",
		"raises a hand in greeting to nothing in particular as {subzone} begins.",
	},
	["subzone_enter.w13.cross.022"] = {
		"I keep a quiet count of the borders I cross. Nobody asked me to; it just helps.",
		"One more crossing for the private tally. I don't know what it's for, but I keep it.",
	},
	["subzone_enter.w13.cross.023"] = {
		"{subzone} now, is it. Nobody tells me anything until I'm already in.",
		"Hah. Walked right into {subzone} without being asked.",
	},
	["subzone_enter.w13.cross.024"] = {
		"Strange how a name changes the mood of a place before I've seen anything of it.",
		"I haven't looked around yet, and already the name has set the mood.",
		"Before I know a thing about {subzone}, the name has set a mood. I'll see if it's right.",
	},
	["subzone_enter.w13.cross.025"] = {
		"squints at the edge of {subzone} as if hoping to catch the exact spot where it starts.",
		"pauses, looks down, and searches the ground briefly for the line where {subzone} begins. There isn't one.",
	},
	["subzone_enter.w13.cross.026"] = {
		"Whoever drew the borders here didn't consult me. I'll cross them anyway.",
		"The borders were settled long before I had an opinion. Probably for the best.",
		"Borders: someone else's decision, my footsteps. A fair split.",
	},
	["subzone_enter.w13.cross.027"] = {
		"There might be something good here. Nothing says otherwise yet.",
		"No promises from this place so far, but no refusals either. I'll call it open.",
	},
	["subzone_enter.w13.cross.028"] = {
		"Different name under my feet. Let's go see what it means.",
		"The name's changed. Let's find out what came with it.",
		"A name just started under me. Time to see what it's like.",
	},
	["subzone_enter.w13.cross.029"] = {
		"Places hand the traveler along, one name to the next, like a cup passed around a fire.",
		"The world passes me along from name to name, the way a message goes from hand to hand.",
		"One name hands me to the next without a word, like travelers passing a lantern down a line.",
	},
	["subzone_enter.w13.cross.030"] = {
		"says nothing as {subzone} begins, but the shoulders loosen a little, as if a page had turned.",
		"lets the change of name pass in silence, eyes moving over {subzone} with quiet interest.",
	},
	["subzone_enter.w13.cross.031"] = {
		"Is this {subzone} yet? Places never announce themselves properly.",
		"Somebody might have warned me {subzone} started here. A marker, a flag, anything.",
	},
	["subzone_enter.w13.cross.033"] = {
		"Every crossing is a small fresh start. I don't need a big one; small will do.",
		"A border is a cheap fresh start. I take one whenever it's offered.",
		"Cross a line, start over, just slightly. I could get used to that.",
	},
	["subzone_enter.w13.cross.034"] = {
		"steps into {subzone} with the faintly pleased look of someone who has arrived without knowing where.",
		"arrives in {subzone} wearing the cheerful expression of a traveler with no plan at all.",
	},
	["subzone_enter.w13.cross.035"] = {
		"One step I was somewhere else. The next, {subzone}. I'd like to know which step did it.",
		"Which step was it, the one that carried me into {subzone}? I never feel it happen.",
	},
	["subzone_enter.w13.cross.036"] = {
		"Hope you've got something worth the walk, {subzone}.",
		"Show me something worth stopping for, {subzone}.",
		"Go on, {subzone}. Give me a reason to stay a while.",
	},
	["subzone_enter.w13.cross.037"] = {
		"The world doesn't bother fencing its names. It trusts me to notice. Generous of it.",
		"Names don't come with gates. The world hands the noticing to me, which is flattering, really.",
	},
	["subzone_enter.w13.cross.038"] = {
		"hesitates for half a step where {subzone} begins, then commits to it.",
		"takes the last step of one place and the first of {subzone} as a single, unhurried stride.",
	},
	["subzone_enter.w13.cross.039"] = {
		"I don't belong to any of the names I walk through. I just borrow them for a while.",
		"These names aren't mine. I borrow each one for as long as I'm inside it.",
		"I pass through names like a guest through rooms: polite, curious, never quite moving in.",
	},
	["subzone_enter.w13.cross.040"] = {
		"Didn't knock. Hope {subzone} doesn't mind.",
		"Walked in without asking. {subzone} will have to forgive me.",
		"Should've wiped my feet. Too late now, {subzone}.",
	},
	["subzone_enter.w13.cross.041"] = {
		"Each name carries its own temper. I walk in quietly until I learn this one's.",
		"A place has a temper like anyone else. Best to come in softly and find out what it is.",
	},
	["subzone_enter.w13.cross.042"] = {
		"draws a slow line in the air with one finger, tracing where {subzone} might begin, then laughs quietly at {g:himself|herself}.",
		"points vaguely ahead, then to one side, trying to settle where exactly {subzone} starts, and gives up with a shrug.",
	},
	["subzone_enter.w13.cross.043"] = {
		"Crossing over always makes me a little quieter inside, as if a new name deserved my full attention.",
		"Something in me goes quiet whenever the name changes. Respect, maybe, or just listening.",
	},
	["subzone_enter.w13.cross.044"] = {
		"Let {subzone} surprise me. I came ready to be surprised.",
		"Whatever {subzone} is, bring it on. I've curiosity enough for anything.",
		"Surprise me, {subzone}. I'm ready to be impressed.",
	},
	["subzone_enter.w13.cross.045"] = {
		"I always count three steps after a border before I decide anything. One, two, three.",
		"Three steps in before I judge a place. That's my rule, and I'm sticking to it.",
		"One, two, three paces past the name before I allow myself an opinion. A habit worth keeping.",
	},
	["subzone_enter.w13.cross.046"] = {
		"glances around {subzone} with the frank puzzlement of someone not quite sure how this happened, then shrugs and keeps going.",
		"arrives in {subzone} looking faintly surprised to be anywhere at all, and carries on cheerfully.",
	},
	["subzone_enter.w13.cross.047"] = {
		"I walk in hoping {subzone} has one thing in it I'll want to remember. Just one.",
		"One good thing. That's all I ask of {subzone}. One thing worth carrying out of here.",
	},
	["subzone_enter.w13.cross.048"] = {
		"Over the line, then. Carry on.",
		"That's one name behind me and one under me. Fine.",
		"Line crossed. Feet, keep going.",
	},
	["subzone_enter.w13.cross.050"] = {
		"lays a hand briefly over {g:his|her} chest on crossing into {subzone}, a courtesy offered to no one in particular.",
		"inclines {g:his|her} head toward {subzone}, as one greets a household on entering it.",
	},
	["subzone_enter.w13.cross.051"] = {
		"Crossing from one name to another gives a long walk its punctuation. A comma here, a full stop there.",
		"Borders are the commas of a long walk. I pause on them without stopping.",
	},
	["subzone_enter.w13.cross.052"] = {
		"Nobody sent for me, {subzone}. I came anyway. You're welcome.",
		"Uninvited and unannounced, {subzone}. It's the best way to arrive.",
	},
	["subzone_enter.w13.cross.053"] = {
		"Each name I cross makes the last one a little smaller behind me.",
		"The name I just left is already shrinking. They always do, the moment I cross.",
	},
	["subzone_enter.w13.cross.054"] = {
		"rubs {g:his|her} hands together on crossing into {subzone}, plainly eager to see what it's about.",
		"picks up the pace a little as {subzone} begins, like someone opening a letter.",
		"walks on into {subzone} with a lighter step, as if crossings agreed with {g:him|her}.",
	},
	["subzone_enter.w13.cross.055"] = {
		"The name is spoken nowhere and written nowhere I can see, and still the place feels different once I know it.",
		"Knowing the name is enough to change how a place sits around me. Odd, the power of a word.",
	},
	["subzone_enter.w13.cross.056"] = {
		"Ooh. {subzone}. Didn't see that coming.",
		"Oh, it's {subzone} now? Look at that.",
	},
	["subzone_enter.w13.cross.057"] = {
		"Every border carries a tiny bet: that what's ahead is better than what's behind. I always take it.",
		"I cross every line on the same small wager. Better ahead than behind. I'm usually happy with the odds.",
	},
	["subzone_enter.w13.cross.058"] = {
		"lets {g:his|her} eyes go wide for a moment on entering {subzone}, taking in as much as possible at once.",
		"looks about {subzone} with open, unhurried curiosity, like a guest shown into a stranger's home.",
	},
	["subzone_enter.w13.cross.059"] = {
		"I could've sworn I was going somewhere else. Apparently I'm going here.",
		"This wasn't quite the plan. Then again, I'm not sure there was a plan.",
		"I set out with a destination in mind. This, it seems, is it.",
	},
	["subzone_enter.w13.cross.060"] = {
		"A traveler crosses into {subzone}. Mark it down.",
		"Let it be noted: one traveler, arriving in {subzone}, no fuss.",
	},
	["subzone_enter.w13.cross.061"] = {
		"I cross with a question already forming, though I couldn't say what it is yet.",
		"There's a question in me every time I pass into a new name. Sometimes the place answers it.",
	},
	["subzone_enter.w13.cross.062"] = {
		"grunts something that might be a greeting to {subzone} and keeps walking.",
		"acknowledges {subzone} with a short noise somewhere between a cough and a hello.",
		"nods once at {subzone}, curtly, as one nods to a stranger who might turn out useful.",
	},
	["subzone_enter.w13.cross.063"] = {
		"I come into each place carrying nothing against it. That's the least a traveler owes.",
		"No grudges carried across the border. Whatever {subzone} is, it starts with a clean slate.",
	},
	["subzone_enter.w13.cross.064"] = {
		"And what might this be?",
		"Hm. What's all this, then?",
		"Somebody tell me what {subzone} is. Anybody.",
	},
	["subzone_enter.w13.cross.065"] = {
		"Name after name. Sometimes I think I live in the gaps between them.",
		"I spend more of my life crossing between names than staying in any one of them.",
		"Crossing, crossing. If there's a life in between, I'm living it.",
	},
	["subzone_enter.w13.cross.066"] = {
		"pauses on the threshold of {subzone} just long enough to make the arrival count, then goes on.",
		"stops for a single moment at the edge of {subzone}, as if arrivals deserved a moment of their own.",
	},
	["subzone_enter.w13.cross.067"] = {
		"Borders are funny things. I keep crossing them and have yet to see one.",
		"I've yet to meet a border in person. They always leave just before I get there.",
	},
	["subzone_enter.w13.cross.068"] = {
		"Here's hoping, {subzone}.",
		"Fingers crossed for this one.",
		"Be kind, {subzone}. That's all.",
	},
	["subzone_enter.w13.cross.069"] = {
		"I don't know yet if {subzone} is a place to linger or a place to pass. The not knowing is pleasant.",
		"Linger or pass through? {subzone} hasn't told me yet. I'm in no rush to hear.",
	},
	["subzone_enter.w13.cross.070"] = {
		"notes the change to {subzone} with a flick of the eyes and nothing more.",
		"acknowledges the passage into {subzone} with one raised eyebrow, nothing more.",
	},
	["subzone_enter.w13.cross.071"] = {
		"I roll my shoulders at every border. Out goes the last place; in comes this one.",
		"A shrug at each crossing, to shake the last name off. Habit, and a good one.",
		"I flex my fingers at each crossing, like shaking off the last place. It works, more or less.",
	},
	["subzone_enter.w13.cross.073"] = {
		"Old wanderers say a traveler should reach each border a little lighter than the last. I try.",
		"Wanderers have a saying: leave something heavy at every border. I'm not sure what, but I'm trying.",
	},
	["subzone_enter.w13.cross.074"] = {
		"peers around {subzone} with polite interest, like a guest at the wrong party too courteous to leave.",
		"takes in {subzone} with the courteous blankness of a guest who hasn't caught the host's name.",
	},
	["subzone_enter.w13.cross.075"] = {
		"Whatever I was carrying from the last place, I can set some of it down here. A border's good for that.",
		"Crossing a name lets me leave a bit of the last place's mood behind. Not all of it. Enough.",
	},
	["subzone_enter.w13.cross.076"] = {
		"I've arrived! Somebody should probably be told.",
		"Arrived. Somebody ought to ring a bell or something.",
	},
	["subzone_enter.w13.cross.077"] = {
		"My feet got here before my thoughts did. They usually do.",
		"The body crosses first; the mind catches up a few steps later and reads the name.",
		"My thoughts are still a few steps back, in the last place. They'll catch up.",
	},
	["subzone_enter.w13.cross.078"] = {
		"looks ahead into {subzone}, then back the way {g:he|she} came, weighing the two names for a moment.",
		"stands with one foot in each name for a moment, as if reluctant to choose, then lets {subzone} win.",
	},
	["subzone_enter.w13.cross.079"] = {
		"Each border I cross is a small proof that the world is bigger than my worries. I like being reminded.",
		"The world keeps having more of itself past every line. That alone is worth the walking.",
	},
	["subzone_enter.w13.cross.080"] = {
		"{subzone}. Sounds promising. Most things do from the outside.",
		"{subzone}! Full of promise, at least until I learn otherwise.",
		"{subzone}. Whatever you are, I'm in a mood to like you.",
	},
	["subzone_enter.w13.name.001"] = {
		"Whoever named {subzone} was in love, in a hurry or in trouble. Most names come from one of the three.",
		"Love, haste or trouble: nearly every name starts with one of those. I'd like to know which produced {subzone}.",
		"Most names are cooked up from love, haste or trouble. I'd give a lot to know the recipe for this one.",
	},
	["subzone_enter.w13.name.002"] = {
		"I'll forget this place's name long before I forget how my legs felt walking into it. Names are the first thing to go.",
		"Names slip away. A year from now {subzone} may be a blank, and the walk through it will still be in my knees.",
		"Funny thing: a place's name goes first, and the ache it put in the legs stays on.",
	},
	["subzone_enter.w13.name.003"] = {
		"{subzone}. Rolls off the tongue. Mostly.",
		"Let me try that one: {subzone}. Close enough.",
		"{subzone}. Took me two goes, but I got there.",
	},
	["subzone_enter.w13.name.004"] = {
		"unfolds the map, finds {subzone} in small cramped letters, and puts it back in the pack.",
		"checks the map against the ground underfoot, finds the name {subzone}, and tucks the map away.",
		"spreads the map on one knee just long enough to find the name, then moves on.",
	},
	["subzone_enter.w13.name.005"] = {
		"Whoever first said {subzone} aloud may be long gone, and the word is still doing its job. Names make loyal servants.",
		"Names outlast the mouths that made them. Somewhere back there, someone coined {subzone} and walked on.",
		"A word said once by a stranger, and it holds a place together for generations. This place's name is likely such a word.",
	},
	["subzone_enter.w13.name.006"] = {
		"If anyone asks where I got to: {subzone}. Write that down.",
		"Mark it: {subzone}. Should anybody wonder where I wandered off to.",
	},
	["subzone_enter.w13.name.007"] = {
		"Names lie more cheerfully than people. I'll take {subzone} as a rumor, not a description.",
		"{subzone}, it calls itself. Names are boasts as often as they're facts.",
		"What a place says about itself goes into its name, and nobody is honest about themselves. Noted, {subzone}, with a pinch of salt.",
	},
	["subzone_enter.w13.name.008"] = {
		"Ten steps back this was just more walking. Now it's {subzone}, and I find I'm walking differently.",
		"Give me a name and my shoulders go up a little, as if I'd been introduced to someone.",
		"Cross a name and my stride changes without asking my leave.",
	},
	["subzone_enter.w13.name.009"] = {
		"announces {subzone} to nobody in particular, in the voice of a herald, then repeats it in an ordinary one.",
		"tries out {subzone} in a grand, ringing tone, then once more, plainly.",
	},
	["subzone_enter.w13.name.010"] = {
		"All I know about this place is what it's called. {subzone}. It's a start, and sometimes it's the whole of it.",
		"First thing a place tells you is its name, and often it's the only thing. {subzone}: I'll take what I'm given.",
		"The name's all I've got to go on. It'll have to be enough.",
	},
	["subzone_enter.w13.name.011"] = {
		"Who comes up with these? {subzone}. Honestly.",
		"{subzone}? Somebody thought long and hard about that one. Or not at all.",
		"Somebody sat down and chose that. On purpose.",
	},
	["subzone_enter.w13.name.012"] = {
		"Orcs, dwarves, elves, goblins: each people would likely give this place a different name. {subzone} is just the one that stuck on the map.",
		"Every people of this world names ground in its own tongue. The name on my map is one among the several it may have had.",
	},
	["subzone_enter.w13.name.013"] = {
		"I'd wager the mapmaker never stood here. Wrote down {subzone} from hearsay and moved on to the next blank.",
		"Some clerk inked {subzone} onto a map from a story told over a drink. And here I am, standing in the story.",
		"Maps are drawn by people sitting down. Places are crossed by people who aren't.",
	},
	["subzone_enter.w13.name.014"] = {
		"traces the name {subzone} in the air with one finger, as if writing it on a slate.",
		"sketches the letters of {subzone} in the air, half absent, the way people do while memorizing.",
	},
	["subzone_enter.w13.name.015"] = {
		"Saying a place's name aloud is a kind of friendliness. There. It already seems less of a stranger.",
		"A name spoken is a hand held out. {subzone}. There: on speaking terms, the place and I.",
	},
	["subzone_enter.w13.name.016"] = {
		"{subzone}. I'm probably saying it wrong. The place will survive.",
		"I'll say it my way, {subzone}, and the locals can wince, if there are any.",
		"Mangled it, probably. The name won't hold a grudge.",
	},
	["subzone_enter.w13.name.017"] = {
		"I keep names the way some people keep pebbles. {subzone} goes in the pocket with the rest.",
		"Names go in the pocket like pebbles picked up while walking. This one joins whatever's already in there.",
	},
	["subzone_enter.w13.name.018"] = {
		"tilts {g:his|her} head at the name {subzone}, as at a riddle with a missing line.",
		"repeats {subzone} once, slowly, like someone turning over a riddle.",
		"frowns at the name as though it were half of a joke and the other half might turn up.",
	},
	["subzone_enter.w13.name.019"] = {
		"Behind every name stands a small merchant. {subzone} is selling something. I'll find out what before I buy.",
		"Names are shop signs. {subzone} has hung its sign out; whether there's any stock behind it is another question.",
		"Strangers make the promises in names, and never stay to keep them.",
	},
	["subzone_enter.w13.name.020"] = {
		"Noted for the way back: {subzone}.",
		"Worth knowing the name of where you've been. {subzone}. Got it.",
		"Keep that one for later, should it be needed: {subzone}.",
	},
	["subzone_enter.w13.name.021"] = {
		"There's a story folded inside every name, this one included. Nobody hands it to you. You have to stay.",
		"Each name is a story with the pages glued shut. For now {subzone} keeps its own counsel.",
	},
	["subzone_enter.w13.name.022"] = {
		"Name first, place after. I'm curious whether the two of them agree.",
		"Here's the name; the place still has to live up to it, or down to it.",
		"Names and places don't always get along. Let's watch these two.",
	},
	["subzone_enter.w13.name.023"] = {
		"Whoever holds a place names it, and whoever loses it keeps the old name in their mouth for years. I wonder who still calls this place something else.",
		"Names change hands the way ground does. Somebody, somewhere, likely still calls {subzone} by a name that isn't on my map.",
	},
	["subzone_enter.w13.name.024"] = {
		"speaks the name {subzone} quietly, then waits a moment, as though a place might answer to its name.",
		"says {subzone} half aloud and pauses, as one does after knocking.",
	},
	["subzone_enter.w13.name.025"] = {
		"A short name is a shrug; a long one is a speech. {subzone}, whichever it is, will do.",
		"Names come short as a cough or long as an apology. {subzone} will have to be whatever it is.",
	},
	["subzone_enter.w13.name.026"] = {
		"Exactly where the map put it. Good map.",
		"The map promised {subzone}, and the map delivers. Credit where it's due.",
		"Map and ground agree for once. I'll take it.",
	},
	["subzone_enter.w13.name.027"] = {
		"Memory keeps names on its own terms. {subzone} might stay with me for years, for no reason I'll ever know.",
		"There's no telling which names stick. This one could be gone by the next bend, or with me for good.",
		"Whether a name stays with me isn't up to me. I've stopped trying to choose.",
	},
	["subzone_enter.w13.name.028"] = {
		"turns the map the right way up, finds the name {subzone}, and looks faintly vindicated.",
		"consults the map, turns it a quarter round, and only then finds where {subzone} is written.",
	},
	["subzone_enter.w13.name.029"] = {
		"Learn the names and the world gets smaller, in a good way. One more piece of it I can point to.",
		"Every name I learn shrinks the unknown by a little. {subzone} takes its small bite out of it.",
		"One more word for the world, and the world feels a size closer.",
	},
	["subzone_enter.w13.name.030"] = {
		"I hereby acknowledge {subzone}. No need to get up.",
		"Let it be known that {subzone} has been noticed. Carry on.",
		"By the authority vested in nobody, I recognize {subzone}. As you were.",
	},
	["subzone_enter.w13.name.031"] = {
		"Some names are warnings and some are memorials, and from outside they sound alike. I'll keep my ears open.",
		"A name can be a gravestone or a doormat with a welcome on it; you rarely know which until later. Let's see what {subzone} is.",
	},
	["subzone_enter.w13.name.032"] = {
		"scribbles {subzone} into a corner of the map where the ink had left a gap.",
		"adds a small mark beside {subzone} on the map, the private sort of mark only its owner can read.",
	},
	["subzone_enter.w13.name.033"] = {
		"To somebody, {subzone} is the word for home. To me it's a word. I'll try to step as if I knew the difference.",
		"This name I'll say once and drop might have been the first word someone ever learned. {subzone}: tread lightly.",
	},
	["subzone_enter.w13.name.034"] = {
		"Filed under places with names: {subzone}.",
		"Name: {subzone}. Remarks: none yet.",
		"Noted, filed, and very likely mislaid by supper: {subzone}.",
	},
	["subzone_enter.w13.name.035"] = {
		"The name always arrives a little before the place does. {subzone} is here; the rest will catch up.",
		"Names run ahead of places. I have this one already; the place itself is still sinking in.",
		"I always know what a place is called a moment before I know what it is.",
	},
	["subzone_enter.w13.name.036"] = {
		"gives {subzone} a short, courteous bow, the kind owed to a stranger with a title.",
		"bows to the name {subzone} with mock formality, like someone presented at court.",
	},
	["subzone_enter.w13.name.037"] = {
		"Names are written by optimists and read by everyone else. I'll read this one carefully.",
		"Whoever names a place is hoping. Whoever walks in is checking. Right now, I'm the one checking.",
		"Hope writes the names. Caution reads them.",
	},
	["subzone_enter.w13.name.038"] = {
		"Say it twice and it stays: {subzone}. And once more for luck.",
		"Repeat a name and it stays put. {subzone}. Good.",
	},
	["subzone_enter.w13.name.039"] = {
		"Names came before maps. Someone pointed and said a word, and the word was {subzone}, or something it grew from.",
		"Before ink there was a pointing hand and a word. {subzone} likely began like that: a gesture, a sound, a nod from whoever listened.",
	},
	["subzone_enter.w13.name.040"] = {
		"repeats the name {subzone} to the rhythm of {g:his|her} steps until it fits.",
		"fits {subzone} to the beat of {g:his|her} walking, syllable by syllable.",
		"lets the name settle into {g:his|her} stride before saying anything else.",
	},
	["subzone_enter.w13.name.041"] = {
		"Full name {subzone}. Give it a week and I'll have found something shorter to call it.",
		"Use wears every name down, like a doorstep. Somebody surely says {subzone} faster and shorter than the map does.",
	},
	["subzone_enter.w13.name.042"] = {
		"No idea what {subzone} means. I'll find out by walking it.",
		"What does {subzone} even mean? My legs are the only dictionary I've got.",
		"Whatever the name means, the ground will explain it slowly.",
	},
	["subzone_enter.w13.name.043"] = {
		"Someday I'll tell this part badly, and {subzone} will be the word I trip on.",
		"One day, telling someone about all this, I'll reach for the name {subzone} and get it slightly wrong.",
	},
	["subzone_enter.w13.name.044"] = {
		"squints at the map, then at the surroundings, and seems to be checking the map's opinion of {subzone}.",
		"frowns at the map as if suspecting it of getting {subzone} slightly wrong.",
	},
	["subzone_enter.w13.name.045"] = {
		"A goblin would have charged by the letter to name this place. A name like {subzone} would have cost someone a small fortune.",
		"If a goblin had picked the name, there'd be a fee for saying it. {subzone}, free of charge. Lucky me.",
	},
	["subzone_enter.w13.name.046"] = {
		"Let it be written somewhere: {subzone}, entered with eyes open.",
		"For whatever chronicle cares: {subzone}. Entered and accounted for.",
		"Name taken, eyes open, onward.",
	},
	["subzone_enter.w13.name.047"] = {
		"Maybe {subzone} means something in a tongue I don't speak. Or maybe it's only a name, and that's meaning enough.",
		"Plenty of names in this world come from languages nobody speaks anymore. This might be one; I'll never know.",
		"Some names are just sounds that stuck. That's allowed.",
	},
	["subzone_enter.w13.name.048"] = {
		"closes {g:his|her} eyes for a moment, as if setting {subzone} on a shelf in the mind.",
		"pauses half a step and nods once to {g:himself|herself}, putting {subzone} somewhere safe.",
	},
	["subzone_enter.w13.name.049"] = {
		"I'll probably spend less time here than it takes to say {subzone} properly. Fair enough.",
		"Names outlast my visits by a wide margin. This one will survive the next few minutes without me noticing.",
	},
	["subzone_enter.w13.name.050"] = {
		"Good. Now I know what to call you when I complain.",
		"At least now I know what to call you, {subzone}, if it comes to cursing.",
		"{subzone}, eh? Handy. Grumbling works better with a name to aim at.",
	},
	["subzone_enter.w13.name.051"] = {
		"Plenty of places are named for someone, and the someone is forgotten while the place goes on. Maybe this is one of those.",
		"A person becomes a place more easily than you'd think. Say a name long enough and it stops being anybody's.",
	},
	["subzone_enter.w13.name.052"] = {
		"tells {subzone} to the pack on {g:his|her} back, as if the pack had asked.",
		"murmurs {subzone} over one shoulder, informing the pack where it has been carried.",
	},
	["subzone_enter.w13.name.053"] = {
		"Maps are generous. They give a name to every bend and puddle, and here I am, inside one of the generous bits.",
		"Mapmakers hate an empty space. Give them a corner and they'll name it. I suppose this one goes on their account.",
		"Every scrap of the world gets a name eventually. Mapmakers can't help themselves.",
	},
	["subzone_enter.w13.name.054"] = {
		"Every name's a little dare: walk in and find out. Accepted.",
		"Names are dares in disguise. This one: accepted.",
		"Half invitation, half dare, like any name. I'll take both halves.",
	},
	["subzone_enter.w13.name.055"] = {
		"Handles, that's what names are. Grip {subzone} and the place is easier to carry.",
		"Anyone passing can carry a place off by its name. {subzone} comes with me, handle first.",
	},
	["subzone_enter.w13.name.056"] = {
		"tries {subzone} in two different accents and settles on neither.",
		"pronounces {subzone} once with care and once carelessly, apparently testing which sounds more local.",
	},
	["subzone_enter.w13.name.057"] = {
		"Being lost and knowing the name of where you're lost are two different things. Whatever else, I'm not the first kind.",
		"Half of not being lost is knowing the name. The other half is knowing what to do with it.",
		"Knowing what a place is called won't tell me where to go, but it does tell me where I am.",
	},
	["subzone_enter.w13.name.058"] = {
		"Introductions done: the place is {subzone}, and I'm me.",
		"So the name's {subzone}, and I'm me. That's the formalities handled.",
	},
	["subzone_enter.w13.name.059"] = {
		"There are names folk lower their voices to say. I don't yet know if this is one of those.",
		"Some names get whispered and some get shouted across a tavern. Which kind {subzone} is, I couldn't say.",
	},
	["subzone_enter.w13.name.060"] = {
		"creases the map along the line where the name begins, so the fold will find it later.",
		"folds the map so that {subzone} sits uppermost, ready for the next look.",
	},
	["subzone_enter.w13.name.061"] = {
		"The map says {subzone}. In my head it already has a ruder name. Time will tell which one sticks.",
		"Official name: {subzone}. Private name: pending.",
	},
	["subzone_enter.w13.name.062"] = {
		"Name before gossip. That's the order I take a place in.",
		"First the name, then the gossip, then my own opinion. In that order.",
	},
	["subzone_enter.w13.name.063"] = {
		"Crossing the world is just hopping from name to name. {subzone} is the one under my feet right now.",
		"From far off the world is a page of names. Up close it's this one: {subzone}.",
		"One name gives way to the next, and the walking is what stitches them together.",
	},
	["subzone_enter.w13.name.064"] = {
		"reads {subzone} off the map slowly, like a menu in someone else's language.",
		"sounds out {subzone} from the map with great care, as if each letter might be charged for.",
	},
	["subzone_enter.w13.name.065"] = {
		"Names oversell or undersell; hardly any get it exactly right. This one has its chance to surprise me.",
		"Hardly a name in the world is the exact size of its place. Time to measure {subzone} against itself.",
		"No name ever told the whole truth about a place. Few tell an outright lie, either.",
	},
	["subzone_enter.w13.name.066"] = {
		"Got the name. The rest comes with walking.",
		"One name learned. Everything else, I'll pick up as I go.",
		"The name was the easy part.",
	},
	["subzone_enter.w13.name.067"] = {
		"Dwarven surveyors have a saying: before anything else, you owe a place its proper name. {subzone}, said properly.",
		"There's a surveyors' rule, the dwarves say: name first, measure second. {subzone}. On to the measuring.",
	},
	["subzone_enter.w13.name.068"] = {
		"Names keep what people hoped for or what they were afraid of. Listening closely, I'd guess this one holds a bit of both.",
		"Choosing a name is a small confession. {subzone} confesses something; I'm not fluent enough to hear what.",
	},
	["subzone_enter.w13.name.069"] = {
		"touches two fingers to {g:his|her} brow at the name {subzone}, a traveler's courtesy.",
		"lifts a hand briefly at the name {subzone}, the small salute owed to a name worth knowing.",
	},
	["subzone_enter.w13.name.070"] = {
		"Anything goes wrong from here on, I'm blaming the name.",
		"Fair warning, {subzone}: if I get turned around, that's on you.",
		"If I go astray here, I already know whose name to curse.",
	},
	["subzone_enter.w13.name.071"] = {
		"{subzone}: one more name I could try to explain to the people I left. They'd nod and not quite picture it.",
		"If I ever tell the people I left about this place, the name alone will have to do all the work.",
	},
	["subzone_enter.w13.name.072"] = {
		"raises an eyebrow at the name {subzone} and lets it fall, reserving judgment.",
		"weighs the name {subzone} with a long, considering look, the kind given to a stranger's handshake.",
	},
	["subzone_enter.w13.name.073"] = {
		"Names get reused like boots passed from foot to foot. There's probably a place called nearly {subzone} somewhere else, and the two have never met.",
		"Half the world's names are borrowed from the other half. This one likely has a cousin out there somewhere.",
	},
	["subzone_enter.w13.name.074"] = {
		"Practice: {subzone}. Say it like you've always known it.",
		"Say a name with confidence and nobody asks questions.",
	},
	["subzone_enter.w13.name.075"] = {
		"A name is a bookmark. Wherever I end up, {subzone} marks this page of the walking.",
		"I'll fold down a corner at {subzone}, the way you mark a page you might want to find.",
	},
	["subzone_enter.w13.name.076"] = {
		"practices saying {subzone} without hesitating, and gets there on the third try.",
		"stumbles over {subzone} once, then says it cleanly, with the air of a small victory.",
	},
	["subzone_enter.w13.name.077"] = {
		"Every name has had somebody braver than me walk through it, and somebody more scared. I'm somewhere in between.",
		"{subzone} has seen bolder travelers and more frightened ones. I'll stand somewhere in the middle of that list.",
		"Brave or frightened, everyone who came this way learned the same name. Good company, of a sort.",
	},
	["subzone_enter.w13.name.078"] = {
		"That's a name for this patch of the world. Good, I like knowing.",
		"Now this patch has a name in my head. That helps more than you'd think.",
		"Good. This bit of the world has stopped being nameless.",
	},
	["subzone_enter.w13.name.079"] = {
		"Names blur if you walk fast enough. {subzone}. Slow down a little, and it stays apart from the rest.",
		"Hurry through enough names and they run together like wet ink. This one I'll keep dry.",
	},
	["subzone_enter.w13.name.080"] = {
		"says {subzone} with the faint care of someone handling a borrowed thing.",
		"handles the name {subzone} gently, the way one handles a borrowed cup.",
	},
	["subzone_enter.w13.name.081"] = {
		"glances at the map, then at the ground, as if the two ought to be introduced.",
		"holds the map up beside what lies ahead, ink against ground, letting {subzone} meet the real thing.",
	},
	["subzone_enter.w13.watch.001"] = {
		"Eyes first, feet second, mouth last. A sensible order for any arrival.",
		"Look, then step, then speak. In that order, and no skipping.",
		"The eyes do their work first. The feet can wait their turn, and the tongue longer than that.",
	},
	["subzone_enter.w13.watch.002"] = {
		"When the name changes, I slow down. No reason needed beyond that.",
		"The name has changed. My pace changes with it, a notch slower.",
		"A fresh name on the map is reason enough to ease the stride.",
	},
	["subzone_enter.w13.watch.003"] = {
		"The feeling of eyes on my back. Probably nothing. I'll look anyway.",
		"That prickle between the shoulders. Most likely my own imagination, but I'll turn and check.",
		"Something tells me I'm being looked at. Something often lies. I check all the same.",
	},
	["subzone_enter.w13.watch.004"] = {
		"I walk in as if I belong. Half of courage is posture.",
		"Shoulders back, chin level. Whatever this place is, it gets a straight back from me.",
		"Nobody needs to see me hesitate, least of all me. So I walk in like I mean it.",
	},
	["subzone_enter.w13.watch.005"] = {
		"My own judgment is the only guide I carry. It will have to do here too.",
		"No guide but my own eyes and whatever sense I was born with.",
		"Nobody hands out advice at the edge of a name. I bring my own.",
	},
	["subzone_enter.w13.watch.006"] = {
		"Before anything else: which way did I come from? Good. Now the rest.",
		"First thing to learn about any place is the way back out of it.",
		"I mark the way I came. Not from fear. From habit, which is cheaper.",
	},
	["subzone_enter.w13.watch.007"] = {
		"Every place keeps its own rules. The trick is learning them before breaking one.",
		"Each stretch of the world has its customs. I'd rather learn them by watching than by tripping over one.",
		"Somewhere here there's an unwritten rule waiting to be broken. Watching is how I avoid being the one.",
	},
	["subzone_enter.w13.watch.008"] = {
		"If something here is watching me, I hope it's at least impressed by how carefully I'm walking.",
		"Should anyone be watching, let the record show: a dignified entrance, only mildly suspicious.",
		"If I'm being observed, I'd like it noted that this is my careful walk, not my lost one.",
	},
	["subzone_enter.w13.watch.009"] = {
		"Fear is a fine scout. I let it walk ahead, and I keep the reins.",
		"A little wariness walks ahead of me on a long leash. Short enough to call back.",
		"Fear gets to come along. It doesn't get to choose where I put my feet.",
	},
	["subzone_enter.w13.watch.010"] = {
		"I listen before I look. The ears tend to know first.",
		"Ears before eyes. I want to hear this place before it hears me.",
		"Listening comes first. A place talks to the ears long before it shows itself to the eyes.",
	},
	["subzone_enter.w13.watch.011"] = {
		"{subzone}. Noted, and filed with everything else I need to keep an eye on.",
		"So this is {subzone}. Into the list of places where I watch my step.",
	},
	["subzone_enter.w13.watch.012"] = {
		"I don't yet know what this place wants. It doesn't know what I want either. Even terms, for now.",
		"Whatever this stretch has in mind, I've got plans of my own. Let's see whose hold up.",
		"Two parties sizing each other up: me, and a place with a name. Neither has blinked yet.",
	},
	["subzone_enter.w13.watch.013"] = {
		"Careful isn't the same as slow. Careful is slow only where it matters.",
		"Watchfulness is not dawdling. Quick where I can see, slow where I can't.",
		"Caution has two speeds, and the trick is knowing which bit of ground deserves which.",
	},
	["subzone_enter.w13.watch.014"] = {
		"Places have moods, like people. I give this one a moment to show its face.",
		"Give a place a moment and it tells you what it is. Rush it and it lies.",
		"First impressions of a place are usually wrong in some small way. I wait for the second.",
	},
	["subzone_enter.w13.watch.015"] = {
		"Tired feet are careless feet. I'll mind mine here.",
		"The wearier the legs, the sharper the eyes need to be. That's the deal I keep with myself.",
	},
	["subzone_enter.w13.watch.016"] = {
		"Whatever waits here, I came in on my own feet. That counts for something.",
		"I chose to walk in. Nobody pushed. Worth remembering if it gets hard.",
		"My own choice, this step. That makes it mine to stand behind.",
	},
	["subzone_enter.w13.watch.017"] = {
		"Different name, same pair of eyes. Let them work.",
		"Places change their names every few hundred paces. My caution doesn't.",
		"The map moves on to another name. The habits stay exactly where they were.",
	},
	["subzone_enter.w13.watch.018"] = {
		"Count what I carry, know where I stand. The rest I learn as I go.",
		"Two questions on arriving anywhere: what have I got, and where exactly am I standing?",
	},
	["subzone_enter.w13.watch.019"] = {
		"The arrivals that go wrong are the ones nobody pays attention to. So: attention.",
		"Distraction is how good walks turn bad. I put it away now.",
		"A wandering mind at the edge of a new name is how trouble finds its way in. Mine stays home.",
	},
	["subzone_enter.w13.watch.020"] = {
		"My instincts are muttering. They mutter about everything, but it's polite to let them finish.",
		"My gut has an opinion about this place. It has opinions about everything. Still, it gets a hearing.",
		"A small voice inside says be careful. It says that everywhere. It's not wrong often enough to ignore.",
	},
	["subzone_enter.w13.watch.021"] = {
		"A careful step is no shame. The proud trip over what the patient see.",
		"No shame in a slow foot. The hasty find the holes; the patient walk around them.",
	},
	["subzone_enter.w13.watch.022"] = {
		"{subzone}, then. I'll keep my opinions in my pocket until I've seen enough to earn some.",
		"The name says {subzone}. My eyes haven't said anything yet; I'll wait for them.",
	},
	["subzone_enter.w13.watch.023"] = {
		"Company or no company, I walk in as if someone is keeping score.",
		"Watched or unwatched, the step is the same. That's what a habit is for.",
	},
	["subzone_enter.w13.watch.024"] = {
		"A wasted glance over the shoulder costs nothing. A glance not taken can cost plenty.",
		"Looking behind me is free. I spend it freely.",
	},
	["subzone_enter.w13.watch.025"] = {
		"Not for me to judge it yet. First to see it, then perhaps to understand it.",
		"Judgment can wait. It's always more accurate when it has waited.",
		"I hold my verdict back a while. Places, like people, deserve a hearing before a sentence.",
	},
	["subzone_enter.w13.watch.026"] = {
		"Every place teaches something to whoever arrives with open eyes. Mine are open.",
		"Eyes open, mouth shut, ears turned out. That's how a place teaches you anything.",
	},
	["subzone_enter.w13.watch.027"] = {
		"Something about here wants a second look. Can't say what. I'll give it one.",
		"A second look never hurt anyone. I take one now, just to be sure.",
		"My first look says one thing. My second might say another. Worth asking it.",
	},
	["subzone_enter.w13.watch.028"] = {
		"If unease is coming, it will find me with my feet well planted.",
		"Nerves are allowed. Wobbly knees are not. I set my feet and carry on.",
	},
	["subzone_enter.w13.watch.029"] = {
		"Nobody hands you a list of what a place holds. You make your own, with your eyes.",
		"Whatever this place holds, I'll take my own inventory of it, slowly.",
	},
	["subzone_enter.w13.watch.030"] = {
		"I'm told seasoned travelers look relaxed while noticing everything. I manage the noticing.",
		"Looking casual while watching everything is an art. The watching part, at least, I've got.",
		"The trick is to seem at ease and miss nothing. Half the trick is better than none.",
	},
	["subzone_enter.w13.watch.031"] = {
		"A small knot somewhere inside, the kind that comes with a new name. Useful, if I don't let it grow.",
		"Unease is a tool, like any other. Kept small, it sharpens the eyes.",
	},
	["subzone_enter.w13.watch.032"] = {
		"Whatever brought me, it can wait the length of one good look around.",
		"Errands wait. Getting my bearings doesn't.",
		"Business later. First I learn where my feet are.",
	},
	["subzone_enter.w13.watch.033"] = {
		"{subzone}. I fix the name in my head; names are handholds when you lose your way.",
		"Better to know where I am, by name, than to wander guessing. {subzone}, then.",
	},
	["subzone_enter.w13.watch.034"] = {
		"I enter the way one ought to enter anywhere: awake, upright, unhurried.",
		"Awake eyes, an unhurried step, a straight back. Three things no place can take from me.",
	},
	["subzone_enter.w13.watch.035"] = {
		"The feeling of being looked at. Perhaps it's only the place itself, sizing me up.",
		"Sometimes I think a place studies whoever arrives as closely as it gets studied.",
	},
	["subzone_enter.w13.watch.036"] = {
		"There's a part of me that would stroll in without a care. I don't let that one lead.",
		"The careless part of me wants to wander. The careful part gets the final say.",
	},
	["subzone_enter.w13.watch.037"] = {
		"I'd rather the place come to me than go blundering into it head first.",
		"Let it reveal itself. I'm in no hurry to be surprised.",
		"Patience on arrival. Whatever this place is, it will tell me sooner if I don't shove.",
	},
	["subzone_enter.w13.watch.038"] = {
		"A good traveler leaves a place as it was found, and enters it as if it might bite.",
		"Respect on the way in. It costs nothing, and places have long memories.",
	},
	["subzone_enter.w13.watch.039"] = {
		"slows down and lets {g:his|her} eyes go ahead first.",
		"eases off the pace, sending the gaze on ahead.",
		"lets the feet fall behind the eyes for a few steps.",
	},
	["subzone_enter.w13.watch.040"] = {
		"runs a hand along the straps of the pack, checking each buckle by touch.",
		"tugs once at each strap, the way a careful traveler does on arriving anywhere.",
	},
	["subzone_enter.w13.watch.041"] = {
		"pauses at the edge of the place and takes it in, slowly, from one side to the other.",
		"stops for a moment and sweeps the place with an unhurried look.",
		"halts, and lets a long look travel across everything in reach of it.",
	},
	["subzone_enter.w13.watch.042"] = {
		"glances back the way {g:he|she} came, then forward once more.",
		"looks over a shoulder once, briefly, before going on.",
	},
	["subzone_enter.w13.watch.043"] = {
		"pats down pockets and pouches, a quick inventory without breaking stride.",
		"checks the pack with one hand, counting by feel.",
		"makes a brief count of the kit by touch, lips moving silently.",
	},
	["subzone_enter.w13.watch.044"] = {
		"tilts {g:his|her} head, listening, as if the place had said something.",
		"goes still for a moment: ears first, eyes after.",
	},
	["subzone_enter.w13.watch.045"] = {
		"keeps to the margins for a few steps, watchful.",
		"drifts sideways rather than straight in, taking the measure of the place.",
	},
	["subzone_enter.w13.watch.046"] = {
		"squares {g:his|her} shoulders before going further.",
		"straightens up, as if presenting {g:himself|herself} to the place.",
		"draws up to full height for a moment, then walks on with purpose.",
	},
	["subzone_enter.w13.watch.047"] = {
		"notes {subzone} with a narrow, considering look.",
		"takes in the name {subzone} and gives nothing away.",
	},
	["subzone_enter.w13.watch.048"] = {
		"rests a hand on the belt, easy and ready at once.",
		"keeps both hands free, a small habit of arrival.",
		"lets the hands hang loose and empty, ready for whatever.",
	},
	["subzone_enter.w13.watch.049"] = {
		"takes the next few steps more softly than the last few.",
		"softens {g:his|her} tread.",
	},
	["subzone_enter.w13.watch.050"] = {
		"looks up, then down, then around: the whole careful circle.",
		"turns slowly, taking stock in every direction.",
	},
	["subzone_enter.w13.watch.051"] = {
		"stops, listens, and only then moves on.",
		"halts for the space of a thought, then walks on.",
		"waits a moment longer than needed, and goes forward.",
	},
	["subzone_enter.w13.watch.052"] = {
		"checks {g:his|her} footing, one foot and then the other, before going on.",
		"tests the ground underfoot with a deliberate step.",
	},
	["subzone_enter.w13.watch.053"] = {
		"pretends to admire the place while counting every way in and out of it.",
		"wears an idle expression and very busy eyes.",
		"puts on an air of mild interest. The eyes are not mildly interested at all.",
	},
	["subzone_enter.w13.watch.054"] = {
		"glances at the kit, then at the place, as if weighing one against the other.",
		"weighs the place with a look, and the pack with a hand.",
	},
	["subzone_enter.w13.watch.055"] = {
		"rolls {g:his|her} shoulders loose without lowering the guard.",
		"loosens up a little, but not the eyes.",
	},
	["subzone_enter.w13.watch.056"] = {
		"finds the spot that shows the most of the place, and stands there a moment.",
		"picks the best vantage the spot allows, and looks.",
	},
	["subzone_enter.w13.watch.057"] = {
		"walks into {subzone} at an easy, measured pace, missing nothing.",
		"keeps a measured pace into {subzone}, eyes busy.",
	},
	["subzone_enter.w13.watch.058"] = {
		"flexes {g:his|her} fingers once, then lets the hands hang loose and ready.",
		"opens and closes one hand, a small readying gesture.",
		"curls and uncurls the fingers of one hand, quietly getting ready.",
	},
	["subzone_enter.w13.watch.059"] = {
		"Easy now. Eyes open.",
		"Gently. Look first.",
		"Steady does it. Eyes before feet.",
	},
	["subzone_enter.w13.watch.060"] = {
		"Hm. And what are you, then?",
		"And what sort of place might you be?",
	},
	["subzone_enter.w13.watch.061"] = {
		"Slow feet, open ears.",
		"Slow down. Listen.",
	},
	["subzone_enter.w13.watch.062"] = {
		"{subzone}. I'll keep my eyes peeled.",
		"{subzone}, is it? Then I'd best pay attention.",
	},
	["subzone_enter.w13.watch.063"] = {
		"Kit's in order. Feet are steady. Good enough.",
		"Pack's tight, hands are free. Onward, carefully.",
		"Straps snug, hands empty, eyes up. That'll do.",
	},
	["subzone_enter.w13.watch.064"] = {
		"Whoever might be listening: I mean no trouble. Mostly.",
		"If anyone's watching, I come in peace. More or less.",
		"To any watchful eyes: harmless traveler, passing by. Probably harmless.",
	},
	["subzone_enter.w13.watch.065"] = {
		"Get my bearings, and only then worry about the rest.",
		"Let me get my bearings, then see what's what.",
	},
	["subzone_enter.w13.watch.066"] = {
		"Mind the footing.",
		"Watch where you step. That means me.",
	},
	["subzone_enter.w13.watch.067"] = {
		"Here, then. Wherever 'here' turns out to be.",
		"So. Here. Time to find out what that means.",
	},
	["subzone_enter.w13.watch.068"] = {
		"Feels like eyes on me. Or I'm imagining it. Either way.",
		"Funny. Feels like being watched.",
	},
	["subzone_enter.w13.watch.069"] = {
		"Quietly does it.",
		"Softly, softly.",
		"Nice and quiet.",
	},
	["subzone_enter.w13.watch.070"] = {
		"No sudden moves. Not before a proper look.",
		"Nothing sudden, nothing loud.",
	},
	["subzone_enter.w13.watch.071"] = {
		"Steady. Whatever's ahead will still be there in a moment.",
		"No hurry. Places don't run off.",
	},
	["subzone_enter.w13.watch.072"] = {
		"{subzone}. Hm. Polite and alert, then.",
		"Manners on, eyes open. {subzone} gets both.",
	},
	["subzone_enter.w13.watch.073"] = {
		"Straps, footing, temper. All in order.",
		"Check the straps, check the ground, check the mood. Fine, fine, and fine.",
	},
	["subzone_enter.w13.watch.074"] = {
		"I'll just stand here a moment, if nobody minds.",
		"A moment's pause. Won't take long.",
	},
	["subzone_enter.w13.watch.075"] = {
		"Careful's free. Mistakes aren't.",
		"Caution costs nothing. I'll take plenty.",
	},
	["subzone_enter.w13.watch.076"] = {
		"Look twice, step once.",
		"Two looks to every step.",
		"A look to the left, a look to the right, and then one foot.",
	},
	["subzone_enter.w13.watch.077"] = {
		"Hmm. I don't trust it yet. I don't distrust it either.",
		"Undecided about this place. That's fine. That's honest.",
	},
	["subzone_enter.w13.watch.078"] = {
		"Ears open, mouth shut. Starting now.",
		"Less talking, more listening. From... this moment.",
	},
	["subzone_enter.w13.watch.079"] = {
		"Know the ground before you trust it.",
		"Ground first, trust second.",
	},
	["subzone_enter.w13.watch.080"] = {
		"Where am I standing, exactly? {subzone}. Good to know.",
		"Let me see. {subzone}. Fine, noted.",
	},
	["subzone_enter.w13.watch.081"] = {
		"I'll keep to the edges until I know better.",
		"Edges first. Middle later, maybe.",
	},
	["subzone_enter.w13.watch.082"] = {
		"Nothing to fret about until there's something to fret about.",
		"Worry when there's cause. Watch in the meantime.",
		"No sense fretting over nothing. Plenty of sense in looking.",
	},
}, "base_world")
