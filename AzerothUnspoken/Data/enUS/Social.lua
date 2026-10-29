-- Testi di base in inglese: saluti, brindisi, scherzi e preghiere. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySocial.lua.
local ADDON, NS = ...

NS:AddTexts("enUS", {
	["greet.01"] = {
		"Well met, traveler. May your road have been kinder than mine.",
		"Good day, wanderer. Sit, if the road has worn you as thin as it has me.",
	},
	["greet.02"] = {
		"Ah, a friendly face. Or at least a face that isn't attacking me.",
		"Hello. You haven't attacked me yet, so we're off to a fine start.",
	},
	["greet.03"] = {
		"{target}! The fire is warmer with old friends around it.",
		"There you are! Now the fire's properly warm.",
	},
	["greet.04"] = {
		"Greetings, {target}. May the stars be kind to you.",
		"I greet you, and the road that brought you here.",
	},
	["greet.05"] = {
		"Good evening, if there are still good ones left.",
		"Evening. Can't sleep either?",
	},
	["greet.06"] = {
		"Good morning. We are still alive: a fine start.",
		"Up already? Then that's two of us with no sense.",
	},
	["greet.07"] = {
		"Hey. All right?",
		"Hail. Passing through?",
	},
	["greet.08"] = {
		"So good to see you! Come, tell me everything.",
		"There you are at last. I was missing a kind face.",
	},
	["greet.e.01"] = {
		"raises a hand in greeting, unhurried.",
		"touches two fingers to {g:his|her} brow in a brief salute.",
	},
	["greet.e.02"] = {
		"lays a hand over {g:his|her} heart and inclines {g:his|her} head, as travelers do.",
		"sketches a bow; {g:his|her} cloak brushes the dust of the road.",
	},
	["greet.orc.01"] = {
		"Throm-ka. May your blood stay hot and your blade keen.",
		"Throm-ka. Sit by the fire, the meat's nearly done.",
	},
	["greet.orc.02"] = {
		"Lok'tar, friend. Fought anything worth fighting lately?",
		"Lok'tar. New scars, I see. Tell me.",
	},
	["greet.tauren.01"] = {
		"May the Earth Mother guide your steps.",
		"The plains wind has carried you here. Be welcome.",
	},
	["greet.troll.01"] = {
		"Hey mon! Good day for you? Good for me, long as nobody throws a spear.",
		"Hey, you! Good day for fishin', bad day for workin', mon.",
	},
	["greet.scourge.01"] = {
		"Alive? How fortunate. Enjoy it while it lasts.",
		"Don't stare at my jaw. I'm still attached to it.",
	},
	["greet.human.01"] = {
		"Light be with you, friend.",
		"May the Light keep your hand steady and your table full.",
	},
	["greet.dwarf.01"] = {
		"Hail! Thirsty? I am. I always am.",
		"Ho there! Dry beard, eh? We'll fix that.",
	},
	["greet.nelf.01"] = {
		"Ishnu-alah. May Elune light your path.",
		"Ishnu-alah. The forest saw you coming long before I did.",
	},
	["greet.gnome.01"] = {
		"Hello hello! Seen a three-quarter cogged screw, by chance? No? Pity.",
		"Hi there! Don't touch that gadget. No, not that one either.",
	},
	["bye.01"] = {
		"May the stars watch over your road, until our paths cross again.",
		"May your road run easy, and water never be far.",
	},
	["bye.02"] = {
		"Farewell. Or until next time. In times like these, it's hard to know which.",
		"See you. I hope. Yes... see you.",
	},
	["bye.03"] = {
		"I'm off. If I'm not back in three days, wait a little longer.",
		"I'm leaving before anyone asks me to deliver a parcel.",
	},
	["bye.04"] = {
		"We'll meet again. In an inn or on a battlefield: my money is on the inn.",
		"Until next time. Keep your blade clean and your back covered.",
	},
	["bye.05"] = {
		"Go in peace, {target}. And if you find no peace, at least find a good fire.",
		"Go gently, and come back. The rest will sort itself out.",
	},
	["bye.06"] = {
		"I'm off.",
		"Right. See you around.",
	},
	["bye.07"] = {
		"Look after yourself, all right? I need someone to drink with.",
		"I'll miss you. Don't tell anyone.",
	},
	["bye.e.01"] = {
		"nods once and moves off without looking back.",
		"lifts a hand in brief farewell, then draws {g:his|her} cloak close and takes to the road again.",
	},
	["bye.e.02"] = {
		"turns one last time before the bend in the path, and raises a hand.",
		"walks slowly away; for a while {g:his|her} steps can still be heard on the gravel, then nothing.",
	},
	["bye.orc.01"] = {
		"Strength and honor.",
		"Lok'tar. See you where the fighting is.",
	},
	["bye.tauren.01"] = {
		"Walk with the wind, friend.",
		"May the rain always find your road, and the grass your herd.",
	},
	["bye.nelf.01"] = {
		"May the forest befriend you and the moon be your lantern.",
		"Go lightly, like a stag through the ferns.",
	},
	["bye.scourge.01"] = {
		"We will meet again. I, at least, will still be around.",
		"Goodbye. No rush on my end: time is one thing I have plenty of.",
	},
	["bye.dwarf.01"] = {
		"May your beard grow thick and your tankard never run dry!",
		"Come back soon! And next time, the drinks are on you.",
	},
	["toast.01"] = {
		"To the living, their health. To the fallen, their memory.",
		"One sip for those here. One for those who aren't.",
	},
	["toast.02"] = {
		"To the next battle! May it be far off, and may we win it anyway!",
		"To tomorrow's victory! And to yesterday's, which is paying for this round!",
	},
	["toast.03"] = {
		"To our innkeeper, who serves watered ale with such dignity!",
		"To the innkeeper! May the stew be kinder than the bill.",
	},
	["toast.04"] = {
		"To the roads that brought us here, and the ones that will take us away.",
		"To those who walked these roads before us, and those who'll walk them after.",
	},
	["toast.05"] = {
		"To us, still alive against all good sense!",
		"To us! Nobody's stopped us yet, and not for lack of trying.",
	},
	["toast.06"] = {
		"To this company! May the songs forget none of us!",
		"To the company! Whoever falls, we pick up. Whoever drinks too much, we carry to bed!",
	},
	["toast.dwarf.01"] = {
		"For Ironforge, for the beards of our fathers, and for the second round!",
		"To the mountain that made us, and the brewer who puts us back together every night!",
	},
	["toast.orc.01"] = {
		"To blood and thunder! And to whoever holds their grog best!",
		"To thunder! And to whoever's still standing after the third mug!",
	},
	["thanks.01"] = {
		"I owe you a debt. I will not forget it.",
		"I won't forget this. When you need me, call.",
	},
	["thanks.02"] = {
		"Thank you. I'd buy you a drink, but I spent it all on bandages.",
		"Truly, thanks. I'd pay you, but my purse is emptier than my stomach.",
	},
	["thanks.03"] = {
		"{target}, when the songs tell of today, your name will come before mine.",
		"If anyone ever tells the tale of today, let them start with you.",
	},
	["thanks.04"] = {
		"Thank you. I'm not used to anyone coming back for me.",
		"Thank you. I didn't think anyone would stop.",
	},
	["thanks.05"] = {
		"Thanks. I owe you one.",
		"Good. Thanks.",
	},
	["jest.01"] = {
		"I have a plan. It's a terrible plan, but it's the only one we have.",
		"I've got a plan. I've also got a backup plan, and it's worse.",
	},
	["jest.02"] = {
		"Heroes know no fear. I'm only here for the rewards.",
		"Bravery? Oh, no. I'm here for the loot and the stew.",
	},
	["jest.03"] = {
		"Ten bears asked me the same question: why exactly ten pelts?",
		"The farmer wanted eight spider legs. Not seven. Not nine. Eight.",
	},
	["jest.04"] = {
		"I saved the kingdom three times this week. The kingdom never wrote back.",
		"I slew a dragon, the way I tell it. The way the bard tells it, it was a lizard.",
	},
	["jest.05"] = {
		"Does anyone know why every farmer in Azeroth has lost something in the woods?",
		"Every village has a well, an innkeeper, and somebody who's lost a sheep.",
	},
	["jest.06"] = {
		"Next time someone tells me 'it's just a small errand', I'm running.",
		"'Quick job,' they said. Three days, two swamps and one bear later...",
	},
	["jest.mage.01"] = {
		"No, I'm not conjuring more water. Yes, even if you ask nicely.",
		"Next one to ask for conjured bread gets turned into a sheep.",
	},
	["jest.rogue.01"] = {
		"That purse? It was already open when I found it. In your pocket.",
		"I don't steal. I rearrange other people's property.",
	},
	["jest.warrior.01"] = {
		"My strategy is simple: I hit it until it stops moving.",
		"Tactics? I have a shield. That's the tactic.",
	},
	["jest.hunter.01"] = {
		"My pet is better loved than I am. And honestly, people are right.",
		"My pet eats better than I do. Sleeps more, too.",
	},
	["jest.gnome.01"] = {
		"I'm not short. I'm vertically efficient.",
		"Height? Overrated. Arrows sail right over me.",
	},
	["jest.scourge.01"] = {
		"The best part of being dead? No more colds.",
		"Eat? I try, to be polite. It all ends up on the floor.",
	},
	["pray.light.01"] = {
		"Light, I do not ask you to lift the burden. I ask for shoulders to bear it.",
		"Light, steady my hand when it shakes.",
	},
	["pray.light.02"] = {
		"Light, take in those I have lost. I will carry them with me as long as I can.",
		"Light, keep them warm, the ones I could not protect.",
	},
	["pray.elune.01"] = {
		"Mother Moon, your light is cold, but it has never betrayed me.",
		"Elune, watch over me while I sleep, and over whoever keeps watch in my place.",
	},
	["pray.earth.01"] = {
		"Earth Mother, teach me the patience of stone and the strength of water.",
		"Earth Mother, let my steps lie lightly upon you.",
	},
	["pray.ancestors.01"] = {
		"Ancestors, watch me. I will not bring you shame.",
		"Ancestors, lend me your patience. Mine has run out.",
	},
	["pray.loa.01"] = {
		"Loa of the jungle, take this offering and leave me my luck.",
		"Loa, here be fruit and feathers. The rest, you know already.",
	},
	["pray.scourge.01"] = {
		"Pray? I stopped when I stopped breathing. But for you I'll make an exception, Dark Lady.",
		"No one listens down there. I say it anyway, out of habit.",
	},
	["pray.gnome.01"] = {
		"O great Cog of the universe, let nothing explode today. Except the enemy.",
		"If there's a god of gears, all I ask today is a drop of oil.",
	},
	["pray.shaman.01"] = {
		"Spirits of earth, fire, water and wind: be in balance, and I will be with you.",
		"Earth below, sky above, fire within, water around. Stay with me.",
	},
	["pray.gen.01"] = {
		"To whoever listens: protect those I left at home.",
		"I don't know who I'm talking to. But if anyone's there, keep them safe.",
	},
	["pray.gen.02"] = {
		"I never stopped believing, not even on the worst nights. I won't stop tonight.",
		"My faith is a small lantern. It's enough to see the next step.",
	},
	["pray.gen.03"] = {
		"I pray without knowing if anyone hears. Maybe that's all praying is.",
		"The words used to come on their own. Now I go looking for them, and don't always find them.",
	},
	["pray.gen.04"] = {
		"If anyone's up there, I'd take a bit less rain and a bit more gold.",
		"Here's my prayer: may the next chest not be empty.",
	},
	["pray.gen.05"] = {
		"I don't pray. I sharpen my blade. More useful.",
		"Prayers? I'd rather count on my own hands and a good pair of boots.",
	},
	["pray.e.01"] = {
		"bows {g:his|her} head and stays silent for a few breaths.",
		"laces {g:his|her} fingers together, lips moving without a sound.",
	},
}, "base_social")
