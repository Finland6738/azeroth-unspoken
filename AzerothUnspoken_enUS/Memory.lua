-- English texts for the Living Memory: first visits and returns (steps S6 and S7). The rules are in Data/RegistryMemory.lua.
-- A memory line says only what its condition guarantees: no invented details about the earlier visit.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- first visit: the forest
	---------------------------------------------------------------------------
	["mem.first.forest.01"] = {
		"My steps have never touched this ground before. Yet the trees seem to have been waiting for me all along.",
		"A forest I do not know. May the woods welcome me, or at least let me pass.",
		{ "New trees. Nobody here knows my name, and that is a relief.", depth = "natural" },
		{ "I walk into a wood that has never seen me. To it I am one more sound of footsteps among a thousand seasons.", depth = "elevated" },
	},
	["mem.first.forest.02"] = {
		"First time in these woods. I will remember this road.",
		"I have never been here. The path begins now.",
		{ "New woods. Better watch my footing.", depth = "natural" },
		{ "Let these trees know me from this day, and find me worthy of their road.", depth = "elevated" },
	},
	["mem.first.forest.e"] = {
		"stops where the path slips under the branches, and gives {g:his|her} eyes time to learn the gloom.",
		"crosses the edge of the wood. Behind, open light; ahead, a thick green that swallows every sound.",
		{ "steps in among the trees. Dry leaves crackle underfoot.", depth = "natural" },
		{ "passes beneath the first boughs as beneath the arch of a door, and the forest closes its silence behind {g:him|her}.", depth = "elevated" },
	},
	["mem.first.forest.dawn"] = {
		"First light leaks between the trunks. Arriving somewhere new at dawn feels almost like a promise.",
		"Dew on the leaves and no prints on the path but mine. Not a bad way to begin.",
		{ "Dawn finds the forest still asleep, and me at its threshold: two strangers meeting for the first time.", depth = "elevated" },
	},
	["mem.first.forest.night"] = {
		"Night, in a forest I do not know. Every snapped twig sounds like something keeping pace with me.",
		"I have no idea where this path leads, and the dark has no intention of telling me.",
	},
	["mem.first.forest.stoic"] = {
		"Trees, roots, a path. That will do.",
		"A forest like any other. You cross it one step at a time.",
	},
	["mem.first.forest.cheerful"] = {
		"New woods! Somewhere in here there is a poisonous mushroom with my name on it.",
		"Good air, tall trees, no walls. I like it already.",
	},
	["mem.first.forest.fierce"] = {
		"Whatever dens in these woods can come and meet me. I'm here too now.",
		"Thick cover, good ambushes. I will be the one setting them, if it comes to that.",
	},
	["mem.first.forest.curious"] = {
		"That bark is a color I have never seen. I wonder if the whole forest is like this.",
		"Strange tracks in the mud. Something big comes through here, and I want to know what.",
	},
	["mem.first.forest.reverent"] = {
		"It feels right to lower my voice. This wood was here long before I learned to speak.",
		"I never asked leave to come in. I ask it now, quietly.",
		{ "May the roots bear with me and the branches shelter me: I come as a guest, not a master.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- first visit: anywhere, cities, moods
	---------------------------------------------------------------------------
	["mem.first.gen.01"] = {
		"{zone}. A new name in the book of my travels.",
		"I do not know {zone}. That is reason enough to explore it.",
		"I know nothing about this place. For once, I like not knowing.",
	},
	["mem.first.gen.02"] = {
		"Never been here before. Let us see what {zone} has to tell me.",
		"New ground. Eyes open.",
	},
	["mem.first.gen.e"] = {
		"takes a long look around, the way one does on entering someone else's house.",
		"slows down and takes it all in: the shape of the hills, the color of the soil, the way the wind blows.",
		{ "stops and looks around. New place.", depth = "natural" },
		{ "stands still a moment at the border, while the unknown land stretches out before {g:him|her} and promises nothing.", depth = "elevated" },
	},
	["mem.first.capital"] = {
		"The walls of {zone}. It feels as if the whole world agreed to meet here.",
		"{zone} opens before me for the first time. So many stories behind those gates.",
		"So many voices, tongues and smells. The first time in a city like this, you feel very small.",
	},
	["mem.first.capital.hostile"] = {
		"Walls that are not mine, eyes that do not want me here. I keep my hands where they can see them.",
		"A capital that owes me nothing. Every step in here is borrowed.",
	},
	["mem.first.town"] = {
		"A new village. I hope the ale is better than the roads.",
		"Low roofs, barking dogs, someone hanging out the washing. I can breathe here.",
	},
	["mem.first.dark"] = {
		"I have never been here, and already I wish I had not come. The very air seems to be in mourning.",
		"A new land, and already a tired one. Things went wrong here long before I arrived.",
	},
	["mem.first.plains"] = {
		"watches the plain roll out to the horizon, where grass and sky blur together.",
		"stops on the first rise: before {g:him|her} the land lies wide and open, with nowhere to hide.",
	},
	["mem.first.mountain"] = {
		"New mountains. My legs will complain, but the view will pay them back.",
		"I do not know these passes. Slow and steady: the mountain does not forgive haste.",
	},
	["mem.first.snow"] = {
		"First time in these snows. The cold does not ask who you are. It just takes you.",
		"All white, all new. My own footprints are the only ones I can see.",
	},
	["mem.first.jungle"] = {
		"First time in the jungle. Somebody tell me which of these plants bite.",
		"Hot, wet, green everywhere. And noises I cannot name yet.",
	},
	["mem.first.swamp"] = {
		"A swamp. Just what my collection of ruined boots was missing.",
		"Never been here. Judging by the smell, nobody comes here gladly.",
	},
	["mem.first.desert"] = {
		"Sand to the horizon. I have never seen so much empty space, nor heard my own breathing so loud.",
		"The desert does not know me, and is in no hurry to. Here even water must be earned.",
	},
	["mem.first.fire"] = {
		"stops at the edge of the scorched land: heat rises from the ground like a forge just banked.",
		"coughs quietly. The air tastes of sulfur, and the rock is black as far as the eye can reach.",
	},
	["mem.first.plague"] = {
		"I had heard about these lands. Hearing is not enough: here the fields grow no grain, and the dead do not stay buried.",
		"First time here. I try not to breathe too deeply, and not to think about who lived here.",
	},
	["mem.first.ruin"] = {
		"Ruins I have never seen. Someone set these stones with care, one by one, and then walked away.",
		"Fallen columns, stairs to nowhere. I wish I knew what this place was called, back when it had a name.",
	},
	["mem.first.coast"] = {
		"I had not seen the sea from this shore yet. It always looks the same, and it never is.",
		"Salt in the air and gulls squabbling. Nice place to arrive.",
	},
	["mem.first.sacred"] = {
		"lowers {g:his|her} voice without noticing. The air here weighs differently, quiet, like an empty temple.",
		"pauses at the threshold of the place and brushes the dust from {g:his|her} shoulders before going in.",
	},
	["mem.first.deep"] = {
		"Never been this far down. The ceiling is rock, and there is a lot of rock.",
		"First time down here. I count my steps, so I know how many it takes to get back.",
	},
	["mem.first.dungeon"] = {
		"First time down here. Stay close, and do not touch anything that glows.",
		"I do not know these halls. Go slow: here, whoever runs trips for good.",
	},
	["mem.first.raid"] = {
		"I had never set foot anywhere like this. There are so many of us, and I still feel very small.",
		"Huge walls, long shadows, and the breathing of a small army around me. I will remember this gate.",
	},
	["mem.first.pvp"] = {
		"First time on this field. Eyes open!",
		"New field. Learn fast.",
	},

	---------------------------------------------------------------------------
	-- return: anywhere
	---------------------------------------------------------------------------
	["mem.ret.gen"] = {
		"{zone} again. Some places call you back, whether you like it or not.",
		"I have been to {zone} before. Coming back tastes different.",
		{ "Back here. At least this time I know the way.", depth = "natural" },
		{ "I return to {zone}, and the road knows me before I know it.", depth = "elevated" },
	},
	["mem.ret.gen.e"] = {
		"slows where the road bends, like someone finding a turn already taken once.",
		"looks around with less surprise than the first time, and with more care.",
	},
	["mem.ret.gen.wry"] = {
		"{zone} again. I should ask whether they give a discount to regulars.",
		"Here I am again. The place has not changed; I hope I have.",
	},

	---------------------------------------------------------------------------
	-- return: the forest (vertical slice C)
	---------------------------------------------------------------------------
	["mem.ret.forest.01"] = {
		"Among these trees again. The first time I looked at them as a stranger; now they know my step.",
		"The wood has not changed. I am the one who comes back different.",
		{ "I have seen these trees before. Odd how they look less tall.", depth = "natural" },
		{ "The boughs take me back the way one takes back a traveler from far away: no questions, only a rustle.", depth = "elevated" },
	},
	["mem.ret.forest.02"] = {
		"Here I am again. This forest already knows me.",
		"Back under these leaves. I almost feel at home.",
		{ "Back in the woods. This time I know the trail.", depth = "natural" },
		{ "I come back to you, trees. Do you remember my step? I remember your silence.", depth = "elevated" },
	},
	["mem.ret.forest.e"] = {
		"runs a hand slowly along a trunk, like greeting an old acquaintance.",
		"takes up a path walked before, and {g:his|her} feet find the roots to step over on their own.",
		{ "walks back under the trees. The wood is as it was.", depth = "natural" },
		{ "goes back into the green half-light without hesitating, and the forest folds its boughs around {g:him|her} like a cloak already worn.", depth = "elevated" },
	},
	["mem.ret.forest.long"] = {
		"Days have passed since the last time. The trees did not count them; I did.",
		"So long away, and the wood stayed right where I left it. Trees are better at waiting than I am.",
	},
	["mem.ret.forest.often"] = {
		"By now my boots know this trail better than I do.",
		"How many times have I come through here? I stopped counting.",
	},
	["mem.ret.forest.night"] = {
		"The same wood, but by night. The roots I knew have turned into shadows I do not.",
		"I come back in the dark. The path I remember; the sounds are all new.",
	},
	["mem.ret.forest.stoic"] = {
		"Same wood. Same path. Move on.",
		"No surprises. Good.",
	},
	["mem.ret.forest.cheerful"] = {
		"Hello, trees! Did you miss me? No? Fair enough.",
		"Back again. I wonder if the squirrels keep count of their visitors.",
	},
	["mem.ret.forest.melancholic"] = {
		"Back among these trees, I notice that what I remember most of the first time is the light. It seems dimmer now.",
		"The wood stayed the same. It is people who change, and people who leave.",
	},
	["mem.ret.forest.gruff"] = {
		"This forest again. Branches in my face again.",
		"Back here. The wood did me no favors the first time, and I expect none now.",
	},
	["mem.ret.forest.bad.death"] = {
		"Last time, among these trees, I fell. The wood went on rustling as if nothing had happened.",
		"Even the leaves watched me die here. Today I tread more carefully.",
		{ "I died in these woods, last time. I am not back for revenge, but I am back.", depth = "natural" },
		{ "These boughs received my fall without a murmur. Let them receive my return now, and let it be another story.", depth = "elevated" },
	},
	["mem.ret.forest.bad.flight"] = {
		"Last time I left these woods at a run. Today I mean to actually see them.",
		"I ran from these trees once. No shame in it: I am here to tell the tale.",
	},

	---------------------------------------------------------------------------
	-- return: cities, time, habits
	---------------------------------------------------------------------------
	["mem.ret.capital"] = {
		"The streets of {zone}, once more. Almost like coming home.",
		"{zone}. Same noise, same crowd, and now I know where to turn.",
	},
	["mem.ret.capital.first"] = {
		"I remember the first time I saw the walls of a real city. Now I walk beneath them without looking up, and that saddens me a little.",
		"The first city I ever saw seemed the center of the world. I have seen others since; that wonder never came back quite the same.",
	},
	["mem.ret.town"] = {
		"Back here. Same inn, same bench, hopefully the same stew.",
		"The usual village. Nice to be recognized, even if only by the dogs.",
	},
	["mem.ret.long"] = {
		"Days pass, but places stay where you left them. {zone} was waiting for me.",
		"How long have I been away from {zone}? Long enough for it to be worth seeing again.",
	},
	["mem.ret.verylong"] = {
		"More than a month since I was last here. I wonder who I was then, and whether I would know myself.",
		{ "A month and more of road between me and the last time I saw {zone}. The place is the same; the traveler is not.", depth = "elevated" },
	},
	["mem.ret.often"] = {
		"How many times now, in {zone}? I am starting to know every stone.",
		"Back again. At this point I could work as a guide.",
	},
	["mem.ret.veryoften"] = {
		"{zone}, again. They ought to give me a key.",
		"I come back so often the stones greet me by name.",
	},
	["mem.ret.bad.death"] = {
		"The last time I set foot in {zone}, I fell. It will not happen again.",
		"{zone} already asked a price of me once. I remember exactly how much.",
		{ "I died here last time. Easy does it, this time.", depth = "natural" },
		{ "I have already left my life in this land once. I owe it nothing more, and I do not mean to pay again.", depth = "elevated" },
	},
	["mem.ret.bad.death.e"] = {
		"pauses and studies the ground, as if looking for the very spot where {g:he|she} fell last time.",
		"comes back to where {g:his|her} last visit ended in the dust, and grips {g:his|her} weapon a little tighter.",
	},
	["mem.ret.bad.death.fierce"] = {
		"You got me once, {zone}. Once.",
		"I fell here last time. This time someone else does.",
	},
	["mem.ret.bad.death.wry"] = {
		"Ah, {zone}. The place where I died. Fond memories.",
		"Last visit, they had to scrape me off the ground. Let us try to do better this time.",
	},
	["mem.ret.bad.flight"] = {
		"I left {zone} in a hurry last time. Today I am in no rush to flee.",
		"I remember how fast I left. This time I am coming back slowly.",
	},
	["mem.ret.bad.flight.wry"] = {
		"Last time I made a rather... brisk exit from here. This time I would like to see the rest.",
		"I know the escape route by heart. Let us hope I do not need it again.",
	},
	["mem.ret.bad.melancholic"] = {
		"Last time here ended badly. The place is not to blame, but I hold it against it all the same.",
		"Back where things went wrong. The wind is the same; there is a knot in my throat.",
	},
	["mem.ret.bad.resolute"] = {
		"It went badly here last time. That is no reason to stay away.",
		{ "Ended badly, last time. Start again.", depth = "natural" },
		{ "I lost here once already. I do not return to forget it, but to write a different ending over it.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- return: narrative flags
	---------------------------------------------------------------------------
	["mem.ret.firstdeath"] = {
		"Since death first touched me, every return tastes different.",
		"I have seen what lies on the other side. Since then I look at the places I come back to more carefully.",
	},
	["mem.ret.level.mid"] = {
		"I have come a long way since I started. I feel every mile of it in my knees whenever I return somewhere I have been.",
		"I come back here with more scars and more sense. Not sure which weighs more.",
	},
	["mem.ret.level.60"] = {
		"There is little left the world can teach me with a sword. I come back to familiar places to learn the rest.",
		{ "I have walked the world to its harshest edges. Coming back here is like rereading the first page of a finished book.", depth = "elevated" },
	},
	["mem.ret.dungeon"] = {
		"Down here again. At least this time I know which way to go.",
		"Here we go again. Same stairs, same stink, same urge to leave.",
	},
	["mem.ret.raid"] = {
		"I have been inside here before. What I remember most is the silence before the charge.",
		"These halls again. The fear of the first time is gone; the respect is not.",
	},
	["mem.ret.pvp"] = {
		"This field again.",
		"I know this field. Let's go!",
	},

	---------------------------------------------------------------------------
	-- return: the other moods
	---------------------------------------------------------------------------
	["mem.ret.dark"] = {
		"Back in this sunless land. I never got used to it, and I hope I never do.",
		"Here again, where the light comes in grudgingly. The second time is no less frightening, only less surprising.",
	},
	["mem.ret.plains"] = {
		"The plains again. You can see anyone coming from miles off. Me too, this time.",
		"I have walked this grass before. It stood back up, as it always does.",
	},
	["mem.ret.mountain"] = {
		"Mountains do not notice who returns. I notice them, though, more each time.",
		"Seeing these peaks again, I feel I have the breath to climb them. Coming back teaches that too.",
	},
	["mem.ret.snow"] = {
		"This cold again. I had almost forgotten how much I dislike it.",
		"Snow, more snow. My tracks from last time? Gone, naturally.",
	},
	["mem.ret.jungle"] = {
		"Back in the jungle. This time I brought more water and less patience.",
		"I remember this heat. It seems to remember me too.",
	},
	["mem.ret.swamp"] = {
		"The swamp again. My boots asked to wait outside.",
		"Same mud as last time. Possibly the very same splash.",
	},
	["mem.ret.desert"] = {
		"Back in the sand, and the sand has already erased every trace of my passing. Here you always arrive for the first time.",
		"The desert keeps no memory of those who cross it. Luckily I do: I know where the water is.",
	},
	["mem.ret.fire"] = {
		"This burning land again. I remembered it cooler. I was wrong.",
		"Among the cinders once more. The fire here never sleeps, and neither do I.",
	},
	["mem.ret.plague"] = {
		"Back in the sick lands. I hoped to find them healed; they are not.",
		"Here again, among the dead fields. I catch myself holding my breath, like the first time.",
	},
	["mem.ret.ruin"] = {
		"The same ruins. The stones have not moved; no one came back to raise them.",
		"Back among these remains. I think I know them a little better, the way you know an old man who rarely speaks.",
	},
	["mem.ret.coast"] = {
		"returns to the shore and stands watching the waves, which have not stopped coming for a moment.",
		"breathes in the salt air deeply, the way old acquaintances greet each other.",
	},
	["mem.ret.sacred"] = {
		"returns to that quiet place and bows {g:his|her} head as the first time, perhaps a little longer.",
		"steps back into the hush of the sanctuary. The stride is the same; the reverence has not worn thin.",
	},
	["mem.ret.deep"] = {
		"Underground again. The dark is the same; the fear a little less.",
		"Back down here. I remember how many steps lead back to the light, and I repeat them to myself.",
	},
}, "base_memory")
