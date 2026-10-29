-- Example texts in English for the Living Memory (step S6). The rules are in Data/RegistryMemory.lua.
local ADDON, NS = ...

NS:AddTexts("enUS", {
	["mem.first.forest.01"] = {
		"My steps have never touched this ground before. Yet the trees seem to have been waiting for me all along.",
		"A forest I do not know. May the woods welcome me, or at least let me pass.",
	},
	["mem.first.forest.02"] = {
		"First time in these woods. I will remember this road.",
		"I have never been here. The path begins now.",
	},
	["mem.first.gen.01"] = {
		"{zone}. A new name in the book of my travels.",
		"I do not know {zone}. That is reason enough to explore it.",
	},
	["mem.first.gen.02"] = {
		"Never been here before. Let us see what {zone} has to tell me.",
	},
	["mem.first.capital"] = {
		"The walls of {zone}. The whole world seems to meet here.",
		"{zone} opens before me for the first time. So many stories behind those gates.",
	},

	["mem.ret.gen"] = {
		"{zone} again. Some places call you back, whether you wish it or not.",
		"I have been to {zone} before. The return tastes different.",
	},
	["mem.ret.forest.01"] = {
		"Back among these trees. The first time I looked at them as a stranger; now they know my step.",
		"The forest has not changed. It is I who return different.",
	},
	["mem.ret.forest.02"] = {
		"Here I am again. This forest knows me already.",
		"Beneath these boughs once more. I almost feel at home.",
	},
	["mem.ret.capital"] = {
		"The streets of {zone} again. Almost like coming home.",
	},
	["mem.ret.long"] = {
		"Days go by, but places stay where one left them. {zone} was waiting for me.",
		"How long since I was last in {zone}? Long enough to be worth seeing again.",
	},
	["mem.ret.often"] = {
		"How many times now in {zone}? I am starting to know every stone.",
	},
	["mem.ret.bad.death"] = {
		"The last time I set foot in {zone} I fell. It will not happen again.",
		"{zone} has asked its price of me once before. I remember well how much.",
	},
	["mem.ret.bad.flight"] = {
		"I left {zone} running, last time. Today I am in no hurry to flee.",
		"I remember the haste with which I left it. Now I come back calmer.",
	},
	["mem.ret.firstdeath"] = {
		"Since death first touched me, every return has tasted different.",
	},
})
