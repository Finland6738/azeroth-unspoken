-- English texts of the story arcs (step S9): the journal's telling, the choices and the narrator's lines.
-- The rules of the lines are in Data/RegistryArcs.lua, the arcs' structure in Data/Arcs.lua.
-- Rules (GDD §5.4, §7.5): original, no invented lore passed off as canon, no promises about the game; the voices are
-- private (thought and narrator); a choice never makes the character say what the player did not decide.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddArcTexts("enUS", {
	path = {
		title = "The Path Found Again",
		summary = "You are back where the road began. A short story about how far apart who you were and who you are have grown, and how to take the road up again.",
		states = {
			DISCOVERED = "You have found the place you set out from. Stop a moment: the story waits for you to reflect, here, on what this place has been.",
			REFLECTED = "You have looked at the path with new eyes. All that is left is to take it up again: when you leave this place, the story will close.",
			RESOLVED = "You took the road up again. A memory of this story stays in the journal.",
		},
		choices = {
			reflect = {
				prompt = "What does the place you set out from tell you now?",
				options = {
					gratitude = { label = "Remember it with gratitude", note = "The memory of this place became a thank-you." },
					distance = { label = "Measure the road behind me", note = "The memory became a measure: how far you have walked." },
					silence = { label = "Stay silent", note = "The memory stayed without words." },
				},
			},
		},
	},
	knownface = {
		title = "A Familiar Face",
		summary = "Someone you meet more and more often has stopped being a stranger. A short story about what to make of getting to know each other.",
		states = {
			DISCOVERED = "By now you recognize each other. The story waits for the acquaintance to grow: go and see this person again.",
			REFLECTED = "You have thought about what this person is to you. What remains is to let time do the rest: the story closes when the bond has ripened.",
			RESOLVED = "The acquaintance has become something of your own. A memory of this story stays in the journal.",
		},
		choices = {
			feeling = {
				prompt = "What do you want to do with this acquaintance?",
				options = {
					thank = { label = "Give thanks", note = "The bond took the shape of a thank-you." },
					remember = { label = "Remember", note = "The bond became an image to keep." },
					distance = { label = "Keep my distance", note = "The bond stays courteous and nameless." },
				},
			},
		},
	},
	fallen = {
		title = "The Place of the Fall",
		summary = "A fall leaves a mark on the place where it happened. A short story about going back, and about what you carry with you when you go on.",
		states = {
			DISCOVERED = "There was a fall, and then a return to your feet. The place waits to be seen again: the story goes on when you go back.",
			REFLECTED = "You have seen the place of the fall again and chosen how to stand in it. What remains is to go on: at the next level the story closes.",
			RESOLVED = "You went on. A memory of this story stays in the journal.",
		},
		choices = {
			stance = {
				prompt = "Now that you are here again: how do you stand in this place?",
				options = {
					silence = { label = "A moment of silence", note = "You let the place remember by itself." },
					prepare = { label = "Put in order what I carry", note = "You turned the fall into caution." },
					onward = { label = "Go on without looking back", note = "You refused to give the fall the last word." },
				},
			},
		},
	},
	capitals = {
		title = "The Three Gates",
		summary = "Whoever walks from one capital to another learns that every city has its walls and its gates. A short story about what one looks for in passing them.",
		stateNames = { JOURNEY = "three gates crossed" },
		states = {
			DISCOVERED = "You have passed the walls of another capital. The story waits until you have crossed three.",
			JOURNEY = "You have crossed three capitals. After a few minutes, from the journal, the story will ask what you were looking for: whenever you wish.",
			REFLECTED = "You have answered. What remains is to leave the walls and take the open road.",
			RESOLVED = "You left the walls for the open road. A memory of this story stays in the journal.",
		},
		choices = {
			meaning = {
				prompt = "What do you look for each time you pass the walls of a capital?",
				options = {
					shelter = { label = "A shelter", note = "Every capital became a way of saying rest." },
					crossroads = { label = "A crossroads", note = "Capitals are crossings: different voices, one threshold." },
					promise = { label = "A promise", note = "Walls are there to make a return a promise." },
				},
			},
		},
	},
}, "base_arcs")

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- The Path Found Again
	---------------------------------------------------------------------------
	["arc.path.open.i"] = {
		"{zone}. The path beneath my feet is the same, or perhaps I am the one who walks it differently.",
		"This is where I took my first steps, empty-handed and full of questions. I wonder how many I have answered since.",
		{ "I am back where it all began. I never thought I would miss it.", depth = "natural" },
		{ "Every road I have walked springs from this one. For a moment I feel all of it, like a thread pulled taut behind me.", depth = "elevated" },
	},
	["arc.path.open.e"] = {
		"stops where the path begins and lets memory catch up before the footsteps do.",
		"finds {zone} again the way one finds an old book: the pages are the same, only the reading has changed.",
	},
	["arc.path.refl.gratitude"] = {
		"Thank you, to whoever showed me the way and to whoever let me lose it. Without both I would not be here.",
		"A silent gratitude, with no names. It only has to be true.",
	},
	["arc.path.refl.distance"] = {
		"I look back and count the steps. They are not few. They are not quite enough, either.",
		"So much road since here. But the measure is not in the steps: it is in what I have stopped fearing.",
	},
	["arc.path.refl.silence"] = {
		"No words. The wind has already said what there was to say.",
		"There are places where silence is the only honest answer.",
	},
	["arc.path.done.gratitude"] = {
		"takes up the road with the lightness of a debt acknowledged. The path rediscovered stays behind, yet no longer far.",
		"leaves the threshold with a thanks no one heard. Something in the stride has grown gentler.",
	},
	["arc.path.done.distance"] = {
		"turns back only once, to measure the road behind, then looks ahead: the rest is all still to be walked.",
		"leaves the place where it all began, knowing now how far a first step can carry.",
	},
	["arc.path.done.silence"] = {
		"leaves in silence, the way the memory arrived: without knocking. The path knows: some stories close best unspoken.",
		"takes the road again without a word. Behind, the wind covers the footprints with the discretion of an old friend.",
	},

	---------------------------------------------------------------------------
	-- A Familiar Face ({other} is the name of the arc's person)
	---------------------------------------------------------------------------
	["arc.face.open.i"] = {
		"I know {other} from afar by now: the step, the voice, the way of waiting. I cannot say when it happened, but this is a familiar face.",
		"I know little of {other}, and yet it is enough: among all the people on this road, this is one I greet by name.",
		{ "I pass {other} and find myself smiling. It must be like this when someone starts to count.", depth = "natural" },
	},
	["arc.face.open.e"] = {
		"exchanges with {other} a nod that needs no words: for some time now, between them, greetings have stopped being a duty.",
		"{other} looks up before the footsteps have even stopped. That is how one learns one is no longer a stranger.",
	},
	["arc.face.refl.thank"] = {
		"One day I will have to thank {other}, and do it properly. For now I say it like this, under my breath.",
		"I do not know whether {other} notices, but some kindnesses weigh more than a coin.",
	},
	["arc.face.refl.remember"] = {
		"I want to remember {other} as they are now: the tone, the hurry, the weariness. People change, and seldom give warning.",
		"If one day {other} were no longer there at the usual hour, I would at least like to remember what it was to find them.",
	},
	["arc.face.refl.distance"] = {
		"I know {other}, and that is enough. Some bonds hold precisely because nobody calls them by name.",
		"A nod, a coin, an open door. Keeping a distance does not mean being ungrateful.",
	},
	["arc.face.done.thank"] = {
		"says a word of thanks to {other}, brief and true. The other takes it without fuss, as one takes what one already knew.",
	},
	["arc.face.done.remember"] = {
		"lingers a moment longer with {other}, just to fix the image: time will do the rest. A familiar face is made of this too.",
	},
	["arc.face.done.distance"] = {
		"greets {other} as always, halfway between courtesy and silence. It is fine like that: some stories are written in the margin.",
	},

	---------------------------------------------------------------------------
	-- The Place of the Fall
	---------------------------------------------------------------------------
	["arc.fall.open.i"] = {
		"I fell, and I got back up. The second is harder to tell than the first.",
		"That spot on the road still holds my weight, somewhere. One day I will go back and look it in the face.",
		{ "One day I have to go back there, where I fell. Not now.", depth = "natural" },
	},
	["arc.fall.open.e"] = {
		"rises with the dust still clinging and a thought that will not leave: some places wait to be seen again.",
	},
	["arc.fall.refl.silence"] = {
		"Here. I say nothing, because there is nothing to add. The place remembers by itself.",
		"A minute of silence, for myself and for everyone who lost more than a fight here.",
	},
	["arc.fall.refl.prepare"] = {
		"I check the straps, count the supplies, set in order what I carry. If I fall again, it will be with things in their place.",
		"Next time, here, I will be better prepared. It is not courage: it is craft.",
	},
	["arc.fall.refl.onward"] = {
		"I do not turn around. The past has had its turn; now it is the road's.",
		"I walk past the place of my fall without slowing. To slow down would already be conceding it.",
	},
	["arc.fall.done.silence"] = {
		"climbs another step and feels, for the first time since that day, the silence grow lighter. What fell in that place no longer weighs the same.",
	},
	["arc.fall.done.prepare"] = {
		"gains a level the way one tightens a buckle: with care, knowing it will hold. Where there was a fall, there is now a habit of caution.",
	},
	["arc.fall.done.onward"] = {
		"climbs once more, and the place of the fall is left behind, small as everything seen from the road that goes on.",
	},

	---------------------------------------------------------------------------
	-- The Three Gates
	---------------------------------------------------------------------------
	["arc.gates.open.i"] = {
		"{zone}: another city, another circle of walls. I begin to recognize how capitals resemble each other, and how they do not.",
		"Another capital yet, and already the world feels smaller and larger at once.",
	},
	["arc.gates.open.e"] = {
		"passes the walls of {zone} with the dust of another capital still on the boots. City gates have their own way of welcoming those who come from afar.",
	},
	["arc.gates.journey.i"] = {
		"Three capitals, three gates crossed. If one day I am asked where I have been, I will have more than one name to give. I will think on it at leisure.",
		"The three gates are behind me. When I am ready I will ask myself what I was looking for, passing through.",
	},
	["arc.gates.refl.shelter"] = {
		"I look for a roof under which the world's noise becomes a murmur. Every capital, at bottom, is a different way of saying rest.",
		"A shelter: the one thing you do not wear, and yet carry with you.",
	},
	["arc.gates.refl.crossroads"] = {
		"A crossroads. Capitals are where roads stop being mine and become everyone's.",
		"I look for crossings: different voices, same walls, the chance to take a road I had not foreseen.",
	},
	["arc.gates.refl.promise"] = {
		"A promise. I enter cities to remind myself there is something to defend, and that someone is already doing it.",
		"I look for what is worth coming back to. Walls are for this: to make a return a promise.",
	},
	["arc.gates.done.shelter"] = {
		"leaves the walls with the city's warmth still on the skin, like a cloak the open air cannot take away.",
	},
	["arc.gates.done.crossroads"] = {
		"walks out of the gate and picks a direction at random among all the possible ones. The crossroads, now, comes along.",
	},
	["arc.gates.done.promise"] = {
		"crosses the gateway to the open road, and the promise made between the walls keeps pace, light and stubborn.",
	},
}, "base_arcs")
