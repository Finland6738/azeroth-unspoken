-- Texts in English for the parts of the monologues (#99). The rules are in Data/RegistryMonologues.lua.
-- Every variant of a part goes with every variant of the next part: read them in all their combinations.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	-- mono.muse.road
	["mono.muse.road.1"] = {
		"Another mile behind me. I stopped counting them a while ago.",
		"The road has a way of emptying the head. I let it.",
	},
	["mono.muse.road.2"] = {
		"Odd, what the feet remember: a loose stone, a bend, a gate left open.",
		"My boots know this world better than any map I have bought.",
	},
	["mono.muse.road.3"] = {
		"Somewhere ahead there is a fire I have not sat at yet.",
		"Whatever waits at the end of it, I would rather walk to it than wait for it.",
	},

	-- mono.muse.scar
	["mono.muse.scar.1"] = {
		"I caught myself tracing the old scar again.",
		"My hand went to the scar without asking me first.",
	},
	["mono.muse.scar.2"] = {
		"It stopped hurting long ago. It has not stopped talking.",
		"It is thinner now, and paler. Time is a patient healer and a poor liar.",
	},
	["mono.muse.scar.3"] = {
		"Every one of us is a map of the places we nearly stayed.",
		"One day I will tell someone how I got it. Not today.",
	},

	-- mono.muse.stars (order free: the second and third may change places)
	["mono.muse.stars.1"] = {
		"The stars are out, and nobody is asking anything of me.",
		"Night at last. The world is quieter when it cannot see me.",
	},
	["mono.muse.stars.2"] = {
		"I could name a few of them, if I tried. I would rather not.",
		"The old tales say each of them is a watcher. Tonight I hope they are bored.",
	},
	["mono.muse.stars.3"] = {
		"Only breath, and the cold, and this small patch of dark that is mine.",
		"For an hour I belong to no one. It is a strange kind of wealth.",
	},

	-- mono.zone.crest (the first part is an emote: it follows the character's name)
	["mono.zone.crest.1"] = {
		"pauses where the road crests, and {zone} opens below.",
		"slows at the border stones and takes in {zone}.",
	},
	["mono.zone.crest.2"] = {
		"The land runs on further than the eye wants to follow.",
		"Every hill hides another, and every path forks before it ends.",
	},
	["mono.zone.crest.3"] = {
		"A bird crosses the sky without hurry, as if it owned the place.",
		"High up, a hawk turns once over the road and lets it be.",
	},

	-- mono.zone.dusk
	["mono.zone.dusk.1"] = {
		"stops to watch the light go amber over {zone}.",
		"turns west as the day burns low over {zone}.",
	},
	["mono.zone.dusk.2"] = {
		"Shadows stretch long across the ground, and the air cools by a breath.",
		"The colors leave the land one by one, the reds going last.",
	},
	["mono.zone.dusk.3"] = {
		"Soon the lamps will be lit, and the road will belong to the night.",
		"What is left of the day will not be spent in a hurry.",
	},

	-- mono.rest.hearth
	["mono.rest.hearth.1"] = {
		"Warm air, loud voices, the smell of bread. I stand in the doorway a moment longer than I need to.",
		"A fire, a bench, a roof that keeps the sky out. Small things, until you have gone without them.",
	},
	["mono.rest.hearth.2"] = {
		"Nobody here knows what I did today, and nobody asks.",
		"The keeper nods at me as if I were anyone. Tonight I am.",
	},
	["mono.rest.hearth.3"] = {
		"I will sleep like a stone and leave the road outside until morning.",
		"Tomorrow can knock. For now the door stays shut.",
	},

	-- mono.lvl.lock
	["mono.lvl.lock.1"] = {
		"Something has shifted. My arms know it before I do.",
		"There it is again, that small click, like a lock turning somewhere inside me.",
	},
	["mono.lvl.lock.2"] = {
		"The road does not get shorter. I just get better at walking it.",
		"I should feel prouder. Mostly I wonder what will come for me next.",
	},

	-- mono.rez.breath
	["mono.rez.breath.1"] = {
		"Breath again. It tastes of dust, and it is the sweetest thing I know.",
		"Back. The ground is cold under my hands, and that is how I know.",
	},
	["mono.rez.breath.2"] = {
		"For a moment there was nothing at all, not even fear.",
		"I keep looking for the wound. There is only the memory of it.",
	},
	["mono.rez.breath.3"] = {
		"Up, then. The world did not stop to wait for me.",
		"I will be more careful. I say that every time.",
	},
}, "base_monologues")
