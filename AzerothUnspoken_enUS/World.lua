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
		"New ground, and rain upon it. A fair welcome, as welcomes go.",
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
		"Done, finally. The task and I had a long argument, and I won on points.",
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
		"steps off after the long flight, and the ground seems heavy and slow after so many hours among the clouds.",
		"lands at the end of a long crossing, and spends a moment simply standing on something that does not move.",
	},
}, "base_world")
