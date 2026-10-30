-- Example texts in English for the phrases with personality affinity (step S5). The rules are in Data/RegistrySoul.lua.
local ADDON, NS = ...

NS:AddTexts("enUS", {
	["soul.zone.veteran"] = {
		"Every road leads home, but none brings back what we have lost.",
		"Same signs, same voices at the market. I'm the one who never comes back whole.",
	},
	["soul.zone.hopeful"] = {
		"Its gates still stand open. Sometimes that is enough to find courage again.",
		"Warm bread, bells, someone laughing. The world isn't lost yet.",
	},
	["soul.battle.merciful"] = {
		"You, too, once watched the stars. May the night grant you rest at last.",
		"My quarrel isn't with you. Only with whatever keeps you walking.",
	},
	["soul.battle.resolute"] = {
		"I will not let your torment drag the living down with you.",
		"You've had your life. This road belongs to those still breathing.",
	},
	["soul.pray.devout"] = {
		"May the strength {faith_of} steady my hand when my faith trembles.",
		"May the voice {faith_of} speak through mine when mine is not enough.",
	},
	["soul.pray.skeptic"] = {
		"I do not know if anyone is listening. But speaking to the silence helps, sometimes.",
		"If anyone's up there, they have a dreadful sense of humor. Thanks for today, anyway.",
	},
	["soul.muse.vengeance"] = {
		"Every step brings me closer to the one who took everything. I remember it at every dawn.",
		"I've learned to smile at the right people. The name I'm after, though, I never forget.",
	},
	["soul.muse.knowledge"] = {
		"Behind every ruin there is a page no one has read yet.",
		"A forgotten tongue carved into a stone, and no one who can read it. Yet.",
	},
	["soul.victory.glory"] = {
		"Let the bards learn my name. Let them mangle it, as long as they sing it.",
		"Tell it at the inn. And make it bigger this time.",
	},
	["soul.muse.family"] = {
		"I wonder if someone at home still lights a candle for me.",
		"The smell of bread takes me back to a faraway kitchen, and voices I haven't heard in too long.",
	},
	["soul.lowhp.blood"] = {
		"Blood runs between my fingers. It is not the first time, and it will not be the last.",
		"My own blood on my hands again. Nasty habit.",
	},
	["soul.death.wry"] = {
		"There. Again. Someone will have to explain the trick to me, sooner or later.",
		"Right. Someone mark the spot: the floor here is very hard.",
	},
	["soul.death.sober"] = {
		"Not yet. I have something left to finish.",
		"I'll get up. Maybe not today. But I'll get up.",
	},
	["soul.thanks.gruff"] = {
		"Don't get used to it.",
		"Fine, fine. That's enough now.",
	},
	["soul.greet.cheerful"] = {
		"Well met! The road was long, but company shortens it.",
		"There you are! I could use a friendly face.",
	},
	["soul.muse.melancholic"] = {
		"The wind carries off even names, if no one repeats them.",
		"Seasons pass even when nobody is watching. I count them, meanwhile.",
	},
	["soul.zone.curious"] = {
		"A valley I don't know. What's behind that ridge, I wonder, and who put up that wall?",
		{ "New place. First I look at everything, then I touch everything. Then, if need be, I run.", depth = "natural" },
		{ "Every unknown land is a letter still sealed. My hands itch to open it.", depth = "elevated" },
	},
	["soul.zone.freedom"] = {
		"No walls, no masters, no bells to answer. Only the horizon, and the itch to reach it.",
		{ "Open sky. Finally, room to breathe.", depth = "natural" },
	},
	["soul.battle.fierce"] = {
		"Come on, then! I've been waiting all day!",
		"I can snarl too, you know. Just louder.",
	},
	["soul.battle.protect"] = {
		"Stay behind me. While I'm standing, no one touches you.",
		"You worry about hitting. I'll worry about getting hit.",
	},
	["soul.victory.pragmatic"] = {
		"It was them or us. I won't lose sleep over it: there'll be more to do tomorrow.",
		"Wipe the blade, check the straps, move on. Everything else is talk.",
	},
	["soul.victory.conflicted"] = {
		"I won. So why do I feel like I walked through the wrong door?",
		{ "Each time I lower my weapon I ask which side I was truly on. The answer shifts with the daylight.", depth = "elevated" },
	},
	["soul.rez.duty"] = {
		"Up again. There's still a task to finish, and it won't get done lying down.",
		"Enough rest. People are counting on me.",
	},
	["soul.rez.spiritual"] = {
		"The spirits sent me back. They never do that for nothing.",
		{ "I felt the wind on the other side. It pushed me back here, a light hand between my shoulder blades.", depth = "elevated" },
	},
	["soul.muse.redemption"] = {
		"Every wrong I set right takes a stone out of the pack. It's still heavy, but I keep walking.",
		{ "I'm not after forgiveness. I'm trying to become someone who might deserve it, one day.", depth = "elevated" },
	},
	["soul.muse.doubting"] = {
		"I used to pray without thinking. Now I think, and the words stick in my throat.",
		"I still say the words at night. I know them by heart. It's the rest I've forgotten.",
	},
}, "base_soul")
