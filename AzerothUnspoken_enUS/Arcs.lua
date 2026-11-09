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
	nemesis = {
		title = "Nemeses",
		subjectTitle = "The Shadow of {name}",
		summary = "Some foes are not forgotten once the fight is over. One of them cut your road short, and its shadow now falls across the miles ahead: a story that grows each time it brings you down, and ends only with its fall.",
		stateNames = { MARKED = "the mark", HAUNTED = "the long shadow", SWORN = "the feud" },
		states = {
			MARKED = "It brought you down once. You know its shape now: the story waits for another meeting, or for its fall.",
			HAUNTED = "It has brought you down twice. The road keeps leading you back its way: the story deepens with every fall, and ends only with its own.",
			SWORN = "Three times and more it has had the better of you. This is no longer chance but a feud: the story ends when it falls by your hand.",
			RESOLVED = "It fell by your hand. The shadow lifts from the road, and a memory of this story stays in the journal.",
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

	---------------------------------------------------------------------------
	-- Nemeses (N7, #219): {other} is the nemesis's name
	---------------------------------------------------------------------------
	["arc.nemesis.done.e"] = {
		"sees {other} fall at last. The shadow that lay across the road lifts, and the road is only a road again.",
		"watches {other} go down, and for a long moment the world is very quiet, as if it too had been holding its breath.",
	},
	["arc.nemesis.done.i"] = {
		"It is over. {other} lies still, and the road ahead is just a road again.",
		"So ends the tale of {other}. Somewhere, I suspect, someone will make a song of it.",
	},
	["arc.nemesis.haunt.i"] = {
		"{other} again. Twice now: whatever it guards, I keep walking straight into it.",
		"Twice fallen to the same hand. I begin to know the ways of {other} better than the way home.",
	},
	["arc.nemesis.meet.e"] = {
		"catches sight of {other}, and the old shadow stirs on the road.",
	},
	["arc.nemesis.meet.haunted.i"] = {
		"{other} again. Twice it has ended my road; I would rather it did not make three.",
		"There: {other}. My hands remember before I do.",
	},
	["arc.nemesis.meet.marked.i"] = {
		"{other}. The last time we met, the meeting ended in the dust.",
		"That shape I know. {other}, and the memory of the dust.",
	},
	["arc.nemesis.meet.sworn.i"] = {
		"{other}. Every fall has led here. Let this one be the last, one way or the other.",
		"We know each other too well by now, {other} and I.",
	},
	["arc.nemesis.open.e"] = {
		"rises from the dust with one name lodged in the memory like a splinter: {other}.",
		"takes up the road again, and the road now has a shadow on it called {other}.",
	},
	["arc.nemesis.open.i"] = {
		"{other}. I will remember that name, and the ground I fell on.",
		"Not every foe is forgotten once the fight is done. {other} will not be.",
		{ "{other} got the better of me. Next time I will know what I face.", depth = "natural" },
	},
	["arc.nemesis.sworn.e"] = {
		"stands once more, and the name of {other} is no longer a memory but a direction.",
	},
	["arc.nemesis.sworn.i"] = {
		"Three times {other} has seen me on the ground. It is no longer chance: it is a road to walk to its end.",
		"{other}. Some debts are counted in falls, and I have counted enough.",
	},
	-- N9 (#221): the nemesis again (N7): a second fall told by the narrator, meetings, the opening and the fall in other tones
	["arc.nemesis.done.ironic.i"] = {
		"Down goes {other}. I would gloat, but my knees remember too much.",
		"{other}, finally. Somebody fetch a bard; I am too tired to exaggerate it myself.",
	},
	["arc.nemesis.done.still.e"] = {
		"stays a long moment beside the fallen {other}, and lets the silence say what words would not.",
		"looks down at {other} for a long while. Whatever was owed is paid.",
	},
	["arc.nemesis.done.stoic.i"] = {
		"{other} is down. No cheering; only the breath going out of me, long and slow.",
		"That was {other}. A debt closed. I feel lighter, and older.",
	},
	["arc.nemesis.haunt.e"] = {
		"rises from the dust a second time, and both times the shadow had one name: {other}.",
		"gets up slowly and counts: twice now, and both times {other}.",
	},
	["arc.nemesis.meet.ironic.i"] = {
		"{other}. We should stop meeting like this. Preferably with me upright at the end.",
		"Oh, good. {other}. My favorite way to see the ground up close.",
	},
	["arc.nemesis.meet.night.i"] = {
		"{other}, in the dark. Of course it would be the dark.",
		"Night, and {other} in it. My pulse knew before my eyes did.",
	},
	["arc.nemesis.meet.stoic.i"] = {
		"{other}. No fear left, only the count. Let us settle it.",
		"Three falls make a long lesson. {other}, I have learned it.",
	},
	["arc.nemesis.open.ironic.i"] = {
		"{other}. I will remember you, which is more than you will do for me.",
		"Well. {other} has a story now, and so, unfortunately, do I.",
	},
	["arc_open.w15.capitals.001"] = {
		"A second great city. One is a place; two start to feel like a pattern.",
		"{zone}. With two capitals counted, I'm beginning to compare, which feels a little rude.",
		"Two of the great cities now. I'm no expert, but I've stopped being a complete stranger to them.",
	},
	["arc_open.w15.capitals.002"] = {
		"slows at the threshold of {zone}, letting the name settle before going in.",
		"crosses into the great city with the measured step of someone quietly comparing it against another.",
	},
	["arc_open.w15.capitals.003"] = {
		"Every great city seems sure it's the middle of the world. They can't all be right, which is half the fun.",
		"A second center of the world. I'll need to keep a list of them.",
	},
	["arc_open.w15.capitals.004"] = {
		"Different gates, and the same road under my feet to reach them. I'm starting to see how it all joins up.",
		"Roads from everywhere end up at a door like this one. It's the second I've walked through.",
		"Every road gathers somewhere. This is one of the places where they do.",
	},
	["arc_open.w15.capitals.005"] = {
		"stops just past the entrance to get {g:his|her} bearings, like anyone in a great city not yet learned by heart.",
		"pauses to work out which way is which, with the patience of someone who has done this once before.",
		"takes a moment at the entrance, fitting the pack and the pace to the size of the place.",
	},
	["arc_open.w15.capitals.006"] = {
		"One more capital, and a whole new set of things I'm probably not supposed to touch.",
		"Great cities, plural now. Each with its customs to get wrong; I'll try to get them wrong politely.",
	},
	["arc_open.w15.capitals.007"] = {
		"Each great city seems to answer a different question. I haven't worked out this one's yet.",
		"Two capitals. I'm beginning to suspect each one is a different answer to the same question.",
	},
	["arc_open.w15.capitals.008"] = {
		"takes in {zone} with a traveler's double look: what is here, and what the other city had instead.",
		"looks around with the half-distracted air of someone setting one city beside another in {g:his|her} head.",
	},
	["arc_open.w15.capitals.009"] = {
		"Nobody in a great city notices one more traveler. I've found that out twice now, and I like it better each time.",
		"There's a freedom in being small somewhere big. A second capital, and the feeling holds.",
		"{zone}: big enough to vanish in. There's rest in that.",
	},
	["arc_open.w15.fallen.001"] = {
		"I keep seeing the spot. Not the moment itself, only the ground and whatever stood near it.",
		"The place stays with me more than the fall does. Odd, which part memory chooses to keep.",
	},
	["arc_open.w15.fallen.002"] = {
		"rolls one stiff shoulder, then the other, and glances back the way the trouble lay.",
		"stands a moment testing each limb, with a look over {g:his|her} shoulder toward somewhere left behind.",
	},
	["arc_open.w15.fallen.003"] = {
		"In this world death sometimes lets you back out. That doesn't make the going in any easier.",
		"Coming back doesn't cancel the going. Both happened; I just have to hold them together.",
		"Dead, and then not. I'd like a moment to understand that before anything else happens.",
	},
	["arc_open.w15.fallen.004"] = {
		"Humbling, that. Nobody saw but the ground, and the ground won't forget it either.",
		"There's no dignified way to come back from that. I'll settle for upright.",
		"Note to self: that was not the way.",
	},
	["arc_open.w15.fallen.005"] = {
		"I won't need a map to find that place again. It's marked now, on me if nowhere else.",
		"That spot has a pull to it already. Whenever I pass near, I'll know.",
	},
	["arc_open.w15.fallen.006"] = {
		"moves on with a new care in each step, like someone who has learned what the ground can take back.",
		"goes on more carefully than before, eyes on the path ahead as if it had changed its opinion of {g:him|her}.",
		"picks up the road again, slower, as though counting what is left of the ground's patience.",
	},
	["arc_open.w15.fallen.007"] = {
		"Am I afraid of going back there? Not much. Some. Enough to notice.",
		"The thought of that place sits in my stomach. I'll go back when it sits easier.",
	},
	["arc_open.w15.fallen.008"] = {
		"Let that place keep the worst of it. I'll take the lesson along, and leave the rest lying where it fell.",
		"A bargain, then: the ground keeps the fall, I keep what it taught me.",
	},
	["arc_open.w15.fallen.009"] = {
		"sits a moment before going on, hands on knees, until things feel ordinary again.",
		"takes a while to move on, and when {g:he|she} does, it is without hurry.",
		"shakes off what dust there is and stays quiet a little while, unhurried.",
	},
	["arc_open.w15.fallen.010"] = {
		"Down once, up once. I mean to keep the count even.",
		"It took me down. It didn't keep me. That's the part worth remembering.",
	},
	["arc_open.w15.knownface.001"] = {
		"I had the name before I'd even looked properly: {other}. When did that start?",
		"I don't have to think about who {other} is anymore. Somewhere along the way it stopped needing thought.",
		"The name {other} came to mind on its own. I never set out to remember it.",
	},
	["arc_open.w15.knownface.002"] = {
		"A face I know without trying: {other}. That's how you find out you keep coming back to the same places.",
		"When {other} starts to look familiar, it means I've been circling more than I'd admit.",
		"Funny: I didn't set out to know anyone. {other} happened anyway.",
	},
	["arc_open.w15.knownface.003"] = {
		"gives {other} the short nod kept for people who need no introduction anymore.",
		"doesn't bother with a formal greeting for {other} this time; a nod does the work, and it seems to be enough.",
	},
	["arc_open.w15.knownface.004"] = {
		"I know the face of {other} well by now. Whether mine is known in return, I can't tell, and I find I don't mind.",
		"{other} is familiar to me, at least. What I am on the other side of the exchange is anyone's guess.",
	},
	["arc_open.w15.knownface.005"] = {
		"Same voice, same manner, every time I see {other}. With everything else shifting from one mile to the next, I'll take it.",
		"Some people are like a landmark you can talk to. {other} has turned into one of mine.",
		"{other} is one thing on the road I don't have to work out from scratch each time.",
	},
	["arc_open.w15.knownface.006"] = {
		"lingers with {other} a moment longer than needed, for no reason anyone would put into words.",
		"stays with {other} a little after the business is done, as if leaving straight away would be rude now.",
	},
	["arc_open.w15.knownface.007"] = {
		"On roads full of strangers, one face that isn't goes further than it should. The face of {other} does.",
		"Most people I pass, I'll never see twice. {other} keeps turning up, and I've started counting on it.",
		"A stranger nearly everywhere. Here, with {other}, a little less of one.",
	},
	["arc_open.w15.knownface.008"] = {
		"Careful. One more visit to {other} and I'll be asking how things are going, and actually listening to the answer.",
		"This is how it starts: a familiar face, {other}, then small talk, then caring how the answer goes.",
	},
	["arc_open.w15.knownface.009"] = {
		"knows {other} at a glance, and the set of {g:his|her} shoulders eases a little.",
		"spots {other} and visibly stops bracing for a stranger.",
		"falls into an easy manner with {other}, the kind kept for faces that need no guessing.",
	},
	["arc_open.w15.knownface.010"] = {
		"Every familiar face is a small hostage to fortune, that of {other} included. I'd rather not think of that, so of course I do.",
		"Knowing {other} is a risk of its own: one day the face won't be there, and I'll notice.",
	},
	["arc_open.w15.knownface.011"] = {
		"{other}. A name and a way of doing things: that's all I know, and the way, at least, I trust.",
		"I know next to nothing about {other}, except that things are always done properly. That counts for more than gossip.",
	},
	["arc_open.w15.knownface.012"] = {
		"almost says the name of {other} before a word has been exchanged, then settles for a nod.",
		"catches {g:himself|herself} halfway through a greeting to {other} that sounds far too familiar, and lets it finish anyway.",
		"nods to {other} before {g:he|she} has quite decided to, which says enough.",
	},
	["arc_open.w15.nemesis.001"] = {
		"{other}. A name I never asked to learn, and learned the hard way.",
		"Some names you pick up in conversation. That one I picked up from the ground.",
	},
	["arc_open.w15.nemesis.002"] = {
		"I keep going over it, looking for my mistake. Maybe there wasn't one. That would be worse.",
		"If I'd done one thing differently... I can't find which thing. That's what bothers me.",
		"Was it bad luck? Bad judgment? The answer matters more than it should.",
	},
	["arc_open.w15.nemesis.003"] = {
		"gets up slowly and says a single name, low, like something being put away for later.",
		"says {other} once, quietly, the way one writes down a debt.",
	},
	["arc_open.w15.nemesis.004"] = {
		"Note for the future: {other}. Not to be approached casually, or at all, without a plan.",
		"Lesson learned, at the usual price. Next time I'll pay attention before, not after.",
		"Humility, freshly earned. Expensive stuff.",
	},
	["arc_open.w15.nemesis.005"] = {
		"It won, once. One win doesn't settle anything, and I intend to have a say in the rest.",
		"That's one to {other}. The tally is open, and I'm not done adding to my side.",
		"It took a round. Rounds are not fights.",
	},
	["arc_open.w15.nemesis.006"] = {
		"stands a long moment afterward, taking the measure of a foe that took {g:his|her} measure first.",
		"looks back toward where it happened, learning the way as one learns a warning.",
	},
	["arc_open.w15.nemesis.007"] = {
		"I always knew there were things out there stronger than me. Now one of them has a name.",
		"Strength in the abstract is easy to respect. {other} made it specific.",
		"There's a difference between knowing you can die and knowing what can do it. I've learned the second.",
	},
	["arc_open.w15.nemesis.008"] = {
		"This isn't over. It only looks that way from where {other} is standing.",
		"Done? Hardly. That was the first word, not the last.",
	},
	["arc_open.w15.nemesis.009"] = {
		"goes over {g:his|her} gear with sudden, scrupulous care, like someone who has just been shown the alternative.",
		"counts what is left in the pack twice, and frowns at the total.",
		"sits down to mend what can be mended, slow and silent.",
	},
	["arc_open.w15.nemesis.010"] = {
		"What stays with me isn't the end. It's the moment before, when I still thought it was going my way.",
		"The worst part to remember is how sure I felt, right up until I wasn't.",
		"Until the last moment I thought I had it. That's the part that stings.",
	},
	["arc_open.w15.nemesis.011"] = {
		"Whatever {other} is doing now, it's not gloating. Gloating would at least be personal.",
		"The real insult is how ordinary it must have been, on the other side.",
	},
	["arc_open.w15.nemesis.012"] = {
		"sets {g:his|her} jaw, looks once toward where it happened, and the look is not a beaten one.",
		"turns away from the place of the fight with the calm of someone filing it under unfinished.",
	},
	["arc_open.w15.nemesis.013"] = {
		"It's a strange closeness, to be brought down by one particular foe. I know nothing of {other} but the one thing that counts.",
		"One meeting, and already it's what I know best about this whole stretch of road.",
	},
	["arc_open.w15.path.001"] = {
		"The road has brought me back to where I set out. I knew almost nothing when I left; I'd like to think the sum has grown.",
		"Back at the start. Whatever I've learned since, this place only ever saw me knowing nothing.",
	},
	["arc_open.w15.path.002"] = {
		"Nothing here asks where I've been. Places let you go without a word and take you back the same way.",
		"This place never noticed I left. I suppose that's a kind of welcome.",
		"{zone} kept quiet the whole time I was away. Fair enough: so did I.",
	},
	["arc_open.w15.path.003"] = {
		"slows as {zone} opens around {g:him|her}, checking an old memory against the ground underfoot.",
		"lingers a moment at the edge of where it all started, measuring the memory against what is actually there.",
	},
	["arc_open.w15.path.004"] = {
		"The one who set out from here wouldn't know me now. Or would, and be quietly surprised.",
		"If I passed my earlier self on this path, I wonder who would step aside first.",
		"Here, I was someone else. Not worse. Just lighter, with far less to carry.",
	},
	["arc_open.w15.path.005"] = {
		"stops on the path and laughs once, quietly, at nothing anyone else could see.",
		"shakes {g:his|her} head with a small smile, and walks on more slowly than before.",
		"brushes the dust of the road from {g:his|her} sleeves, then laughs at the idea of tidying up for a place.",
	},
	["arc_open.w15.path.006"] = {
		"The worries I carried out of here would fit in a pocket now. I wouldn't trade the new ones for them, though. Probably.",
		"Whatever troubled me here once looks small from where I stand. Small, and strangely dear.",
	},
	["arc_open.w15.path.007"] = {
		"Beginnings stay where they were left. Everything else moves on, me included.",
		"It's an odd comfort: wherever I go, this start keeps its place and waits.",
		"Some things don't need to come with me. This place keeps the start of the story, and keeps it well.",
	},
	["arc_open.w15.path.008"] = {
		"speaks the name half aloud, {zone}, as if testing whether it still fits.",
		"stands still a while, letting the place say what it has to say first.",
	},
	["arc_open.w15.path.009"] = {
		"Not everything I began here was finished. Some of it never will be, and that has to be allowed.",
		"There are loose ends here I'll never tie. Coming back, I find I can live with that.",
	},
	["arc_step.w15.capitals.001"] = {
		"Three great cities. That stopped being a detour some time ago; it's become a way of traveling.",
		"A third capital. I could turn back now and say I'd seen the size of things. I don't think I will.",
		"{zone} makes three. Somewhere along the line, passing through capitals became part of how I travel.",
	},
	["arc_step.w15.capitals.002"] = {
		"passes the third gate with an ease the first one never allowed.",
		"enters the city with the unbothered stride of someone collecting thresholds.",
	},
	["arc_step.w15.capitals.003"] = {
		"What I want from the great cities is simple: a door that shuts behind me for a while, and the world on the other side of it.",
		"Shelter. I pass the gates to put something solid between me and everything else, if only for an hour.",
	},
	["arc_step.w15.capitals.004"] = {
		"unbuckles a strap that did not need unbuckling, as if the thought of shelter alone could ease the load.",
		"lets {g:his|her} shoulders drop at the thought of a roof, any roof, behind a gate.",
	},
	["arc_step.w15.capitals.005"] = {
		"In the great cities my road crosses everyone else's. I go to see which of theirs I could borrow next.",
		"A crossroads, that's all a capital is to me: the place to pick the next road.",
	},
	["arc_step.w15.capitals.006"] = {
		"turns the thought over: the great cities as knots in a net of roads, and {g:himself|herself} passing from one to the next.",
		"traces an idle line in the air with one finger, from one point to another, then on to a third.",
	},
	["arc_step.w15.capitals.007"] = {
		"Each great city is a reason to return. That's the promise I make passing through: to come back, and to find it standing.",
		"I go through their gates to promise myself a return. Somebody has to keep them worth returning to.",
	},
	["arc_step.w15.capitals.008"] = {
		"touches a hand to {g:his|her} chest, briefly, like someone sealing a word given to no one in particular.",
		"nods once to nobody, the small private nod of a promise made and meant.",
	},
	["arc_step.w15.fallen.001"] = {
		"Nothing to say to this place. I only wanted it to see me on my feet.",
		"I stand here a while and add no words. It already knows the story better than I do.",
	},
	["arc_step.w15.fallen.002"] = {
		"stops where it happened and lets a long moment pass without a sound.",
		"stands quite still at the spot, head lowered, until the quiet has done its work.",
		"says nothing, and the place says nothing back.",
	},
	["arc_step.w15.fallen.003"] = {
		"This time I know where the trouble lies. Kit in order, eyes open, and no surprises I could have avoided.",
		"Same ground, better prepared. I check every buckle twice and count what I have left.",
	},
	["arc_step.w15.fallen.004"] = {
		"goes over {g:his|her} gear piece by piece within sight of the spot, slow and thorough.",
		"tightens a strap, shifts the weight of the pack, and studies the ground ahead with care.",
		"takes stock of everything carried, quietly, as if the place were checking the inventory.",
	},
	["arc_step.w15.fallen.005"] = {
		"I could stop here and dwell on it. I'd rather keep walking and dwell on what's ahead.",
		"This place had its say. It doesn't get to set my pace.",
		"Whatever happened here, it doesn't follow me past the next bend.",
	},
	["arc_step.w15.fallen.006"] = {
		"passes the spot at an even pace and does not turn {g:his|her} head.",
		"walks straight through where it happened, neither faster nor slower than anywhere else.",
	},
	["arc_step.w15.knownface.001"] = {
		"I've never said it properly, so let me at least think it: thank you, {other}. For the steadiness, mostly.",
		"A thank-you to {other}, unspoken but meant. For being where I expected, every time I needed it.",
		"Gratitude toward {other}, small and sincere. Not for anything grand: for a face that was always there when I came by.",
	},
	["arc_step.w15.knownface.002"] = {
		"parts from {other} with a nod a little deeper than usual, a thank-you folded small enough to pass unnoticed.",
		"thanks {other} once more than the moment calls for, and means each one.",
	},
	["arc_step.w15.knownface.003"] = {
		"I want to remember {other} just like this: the manner, the voice, the small habits. Nothing stays where it is forever.",
		"Let me fix {other} in mind, exactly as now. One day I'll want the picture, and it should be a clear one.",
		"Remembering {other} is the one thing I can give that costs nothing. I mean to give it well.",
	},
	["arc_step.w15.knownface.004"] = {
		"looks at {other} a moment longer than usual, the way one looks at a room before leaving it.",
		"studies the face of {other} quietly, as if committing it to memory.",
	},
	["arc_step.w15.knownface.005"] = {
		"Courteous, brief, nothing more. It suits me, and I suspect it suits {other} too.",
		"No need to make it more than it is with {other}. A greeting, a bit of business, and on my way.",
	},
	["arc_step.w15.knownface.006"] = {
		"keeps to a nod and a word with {other}, courteous and exactly as far away as before.",
		"leaves the familiarity with {other} where it is and, politely, adds nothing to it.",
	},
	["arc_step.w15.nemesis.001"] = {
		"Two for {other}, none for me. I'm beginning to suspect the road is trying to tell me something.",
		"The same foe, a second time. Either I'm learning nothing, or the lesson is longer than I thought.",
		"Brought down by the same foe once more. Once is bad luck; this is starting to look like a pattern, and I'm in it.",
	},
	["arc_step.w15.nemesis.002"] = {
		"gets back up with a grimace that is starting to feel familiar, and says the name through {g:his|her} teeth.",
		"rises a second time and does not look surprised, which is worse.",
	},
	["arc_step.w15.nemesis.003"] = {
		"Three times. There's no chance left in it. This ends when {other} stays down, and I mean to see it.",
		"A third time on the ground for the same name. Very well: I swear it, quietly, to no one but myself.",
		"Count it: three. From here on it isn't a run of bad luck. It's a promise with my name on it.",
	},
	["arc_step.w15.nemesis.004"] = {
		"rises a third time and stands very still, like someone taking an oath with no witness but the ground.",
		"closes one hand slowly into a fist, and keeps it closed for a long time.",
	},
	["arc_step.w15.path.001"] = {
		"Thanks, then. This place let me start badly and never held it against me.",
		"Whatever I am now began with a clumsy try, here. I'm grateful the ground was patient.",
		"I owe this place for its patience. Starting badly is easier somewhere that doesn't mind.",
	},
	["arc_step.w15.path.002"] = {
		"rests a hand on the ground for a moment, a thank-you with no one there to receive it.",
		"bows {g:his|her} head toward the path behind, briefly, the way one thanks a host.",
	},
	["arc_step.w15.path.003"] = {
		"From that first stretch to now. I couldn't put a figure on it, but my feet could make a decent guess.",
		"Measured from here, the road behind me is longer than I thought. Shorter than what's left, I suspect.",
	},
	["arc_step.w15.path.004"] = {
		"looks back along the road for a long moment, then ahead, as if weighing one against the other.",
		"turns once toward where the road began, then away, a measuring look in both directions.",
	},
	["arc_step.w15.path.005"] = {
		"Words would only make this smaller. Better to stand here and let it be what it is.",
		"I could name what I feel here. I'd rather not shrink it.",
	},
	["arc_step.w15.path.006"] = {
		"keeps quiet for a long while; the path asks nothing, and gets nothing.",
		"stands without a word, hands still, until the moment has passed on its own.",
	},
}, "base_arcs")
