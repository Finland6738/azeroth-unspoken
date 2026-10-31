-- Texts in English for the lines of composite situations (#100). The rules are in Data/RegistrySituations.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	["sit.closecall.inner"] = {
		"Still standing. I am not entirely sure how.",
		"That was closer than I like. My hands only now remember to shake.",
		"One more blow and it would have been me lying there. Breathe. Just breathe.",
	},
	["sit.closecall.say"] = {
		"Not today. Not by your hand.",
		"I have bled worse than this and walked home.",
		"Close. Close counts for nothing, friend.",
	},
	["sit.secondwind.say"] = {
		"Down once. That was the only time you get.",
		"You should have made sure I stayed in the dirt.",
	},
	["sit.secondwind.inner"] = {
		"A little while ago I was a body on the ground. Now this. The world is strange, and I am still in it.",
		"Not long back from the dark, and winning again. I will take it.",
	},
	["sit.hardlevel.inner"] = {
		"So that is what it cost. Fair enough. I am stronger, and I have the scars to show the price.",
		"I nearly lost everything back there, and came out of it more than I was.",
	},
	["sit.hardlevel.say"] = {
		"Whatever does not kill me had better start running.",
		"Learned that one the hard way. I will not need to learn it twice.",
	},
	["sit.woundedarrival.inner"] = {
		"New ground, and I arrive in it limping. Not the entrance I would have chosen.",
		"{zone}. I would admire it more if every step did not hurt.",
	},
	["sit.woundedarrival.e"] = {
		"crosses into {zone} slowly, one hand pressed to the side.",
		"arrives favoring one leg, still breathing hard from the last fight.",
	},
	["mem.ret.sit.rain.inner"] = {
		"Back again, soaked to the bone, with the day going out. Somehow that feels right for this place.",
		"It rained last time too, or I remember it that way. The light is failing; I know the road anyway.",
	},
	["mem.ret.sit.rain.e"] = {
		"comes back through the rain as the light fails, and finds the old paths by memory.",
		"pulls the hood lower and walks the familiar road through the wet dusk.",
	},
}, "base_situations")
