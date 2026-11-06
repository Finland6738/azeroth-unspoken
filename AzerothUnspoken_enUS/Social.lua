-- Testi di base in inglese: saluti, brindisi, scherzi e preghiere. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySocial.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

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
		"Hey! The loa are smiling today. You can feel it in the air.",
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
		"Ho there! Coming down from the mountain or heading up? Either way, it's uphill.",
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
		"May your ancestors guard your back.",
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
		"May the stone hold firm under your feet and the forge keep your heart warm!",
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
		"For Ironforge, for our fathers' fathers, and for the second round!",
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
	["race.dwarf.farewell.w08.001"] = {
		"Go well, and may every road you take have solid rock beneath the mud.",
		"Safe travels. If you're ever in Ironforge, ask for me in any tavern; one of them will know.",
	},
	["race.dwarf.farewell.w08.002"] = {
		"Off with you, then. And don't go getting killed; I'll not drink to your memory alone.",
		"Right, that's me away. Mind your footing, and mind your purse in human towns.",
	},
	["race.dwarf.greet.w08.001"] = {
		"Hail, and well met. You look like you could use a sit and a drink, and I'm the dwarf to arrange both.",
		"Hail! Hands where I can shake them. That's how we greet under the mountain.",
		"Well met, well met. Khaz Modan says hello, loudly, as always.",
	},
	["race.dwarf.greet.w08.002"] = {
		"There you are! Good. Come stand by me as if we were at the Great Forge, and tell me the news.",
		"Ah, a friendly face! My day was dull as a slag heap until now.",
		"Hail! Sit, sit. Talk goes better with your boots off the road.",
	},
	["race.dwarf.jest.w08.001"] = {
		"A dwarf walks into a tavern. Then out, then in again: that's how we check the ale's still there.",
		"Somebody asked a dwarf how deep the mine went. 'Till the ale runs out,' says he, 'then a bit further, to find more.'",
	},
	["race.dwarf.jest.w08.002"] = {
		"Gnomes build things that explode. Dwarves build things that don't. Somehow we're the dull ones.",
		"A dwarf's idea of a light snack is anything you can lift with one hand.",
	},
	["race.dwarf.pray.w08.001"] = {
		"Light keep us, and the stone hold over us, and the deep places stay quiet a while longer.",
		"To the earth that bore us and the Light that finds us even down there: watch over the halls, and the folk in them.",
		"The old miners raise a cup to the rock before a long dig. No cup to hand, so take the words: hold, and let us pass.",
	},
	["race.dwarf.thanks.w08.001"] = {
		"My thanks. Give me your hand; where I come from, a debt is sealed with a grip, and mine's a strong one.",
		"Thank you kindly. That's a favor I'll repay in stone, not in words.",
		"Much obliged. I don't say it often, so mind you hear it properly.",
	},
	["race.dwarf.thanks.w08.002"] = {
		"Thanks. There, I said it. Don't make me say it twice; it's bad for a dwarf's reputation.",
		"Aye, thanks. Now let's both pretend I'd have managed alone.",
	},
	["race.human.farewell.w08.001"] = {
		"Take care of yourself. Lives are short enough without the road shortening them.",
		"Go safely, and come back. Every human has someone who didn't; don't be mine.",
		"Until our roads cross again. May it come sooner than these times usually allow.",
	},
	["race.human.farewell.w08.002"] = {
		"Off you go. If you pass the Lion's Pride, tell them I've paid my tab. They won't believe it, but tell them.",
		"Farewell! Mind the wolves in the forest and the nobles in the city, in that order. Or the other.",
		"Until next time. I'd say 'Light keep you', but you look like you can keep yourself.",
	},
	["race.human.greet.w08.001"] = {
		"Hello there! Any news from the road? Humans can't help asking; we've had too much of it lately.",
		"Hello! Where are you off to? Wherever it is, I've probably lost something on the way there.",
	},
	["race.human.greet.w08.002"] = {
		"Peace on you. Come, sit a while; the world can spare us for the length of a cup.",
		"Well met. Any friend of the road is a friend at my fire.",
	},
	["race.human.jest.w08.001"] = {
		"Stormwind has a regent, a lady at court, a missing king and a council. Somewhere in there is a person who decides things.",
		"Ask three nobles in Stormwind who's in charge and you'll get four answers and a bill.",
	},
	["race.human.jest.w08.002"] = {
		"Westfall farmers swear they grow the best bread in the kingdom. They say the same of turnips, so weigh it accordingly.",
		"Dwarves get two hundred years, elves ten thousand, and humans spend most of ours queuing in Stormwind.",
	},
	["race.human.pray.w08.001"] = {
		"Light, keep the fields green and the roads open, and bring the lost of Lordaeron somewhere warm.",
		"To whatever hears a human's prayer: we're not here long. Let what we build last a little longer than we do.",
		"Light above, let the bells ring for weddings this year and not for alarms.",
	},
	["race.human.thanks.w08.001"] = {
		"Thank you. Kindness like that is how villages get through bad winters, and people through bad years.",
		"Thanks. I owe you a hot meal at the first inn we both stumble into.",
		"Thank you, truly. My people haven't had many easy decades; we remember every hand held out.",
	},
	["race.human.thanks.w08.002"] = {
		"Thanks! If Stormwind ever pays its debts, I'll pay mine to you first.",
		"Much obliged. I'd knight you, but I'm told that's the king's job, and he isn't around.",
	},
	["race.human.toast.w08.001"] = {
		"To short lives and long friendships! We humans have to drink faster to fit it all in.",
		"Raise a cup: to the king's return, the regent's patience, and whoever's paying for this round!",
	},
	["race.nightelf.farewell.w08.001"] = {
		"Go in peace, and may the shadows hide you from whatever hunts.",
		"Elune keep watch over your road.",
	},
	["race.nightelf.farewell.w08.002"] = {
		"Farewell. We will meet again; my people are patient, and the roads are long.",
		"Until the next glade. I will keep an ear turned your way.",
	},
	["race.nightelf.greet.w08.001"] = {
		"Be well, traveler. May the forest step aside for you, and the moon find you when you need it.",
		"Greetings. Walk softly, and the woods will always welcome you.",
		"Well met. May the old trees remember you kindly.",
	},
	["race.nightelf.greet.w08.002"] = {
		"Hello. Forgive the stare; my people take a long look at new faces.",
		"Hello there. Did you hear me coming? No? Good. Hello, then.",
	},
	["race.nightelf.greet.w08.003"] = {
		"Greetings. Yes, the ears hear everything. Yes, including that.",
		"Hello, hello. Never mind the glow in my eyes; it is only my good mood.",
	},
	["race.nightelf.jest.w08.001"] = {
		"Night elves never sneak up on anyone. We simply arrive before you notice.",
		"Why are night elves so calm? You would be too, after ten thousand years of other people's problems.",
	},
	["race.nightelf.jest.w08.002"] = {
		"My ears are not long. Everyone else's are just very short.",
		"Never ask a night elf's age. Not because it is rude; because you will need a chair.",
	},
	["race.nightelf.pray.w08.001"] = {
		"Elune, keep the Sentinels on their watch and Malfurion in his long dream, and teach me the patience of your turning.",
		"Lady of the moon, I ask little: a quiet step, a clear eye, and the strength to stand where I am needed.",
	},
	["race.nightelf.thanks.w08.001"] = {
		"Thank you. Kindness is rarer than moonwells these days; I will not forget where I found this one.",
		"You have my gratitude. Elune saw it, and so did I.",
		"My thanks. If ever you walk in Ashenvale, the trees will know a friend is passing.",
	},
	["race.nightelf.thanks.w08.002"] = {
		"Thank you. Among my people this would earn you a very long, very slow bow. I will spare you the wait.",
		"Much obliged. I will owe you this for years, and for once I mean that literally.",
	},
	["race.nightelf.toast.w08.001"] = {
		"To the forests that still stand, and to those of us who keep them standing!",
		"Raise your cups to the moon, who drinks with us whether we invite her or not.",
	},
	["race.tauren.farewell.w08.001"] = {
		"Walk in balance, and let the Earth Mother set your pace.",
		"Go well. May the herds be fat wherever your road bends.",
	},
	["race.tauren.farewell.w08.002"] = {
		"Until the next fire. I will be the large shape on the horizon, if you need me.",
		"Safe roads. If you get lost, look for hoofprints the size of serving platters.",
	},
	["race.tauren.greet.w08.001"] = {
		"Well met. Mind my horns; they turn faster than I do.",
		"Greetings, fellow traveler. The grass is wide enough for both of us.",
	},
	["race.tauren.greet.w08.002"] = {
		"May An'she warm your road, and Mu'sha keep watch while you sleep.",
		"Peace to you, in the name of the Earth Mother and her two bright eyes.",
		"The Earth Mother walk beside you, traveler, and keep your hooves, or your boots, on firm ground.",
	},
	["race.tauren.greet.w08.003"] = {
		"Hello down there! No offense meant; from where I stand, everything is down there.",
		"Greetings. Yes, the horns are real. No, you may not hang your cloak on them.",
	},
	["race.tauren.jest.w08.001"] = {
		"Why do tauren never play hide and seek? The only place big enough to hide one is Mulgore, and everyone looks there first.",
		"People ask if the horns get in the way. Only of doorways, lanterns, low branches and everyone's patience.",
	},
	["race.tauren.jest.w08.002"] = {
		"A tauren in a rowboat is not a passenger. A tauren in a rowboat is the cargo.",
		"Sneaking is not a tauren art. The ground tells on us with every step.",
	},
	["race.tauren.pray.w08.001"] = {
		"Earth Mother, I walk on you every day and thank you too rarely. Hear me now, and keep the road beneath me honest.",
		"An'she, Mu'sha, eyes of the Mother: see me as I am, and guide me where I am needed.",
	},
	["race.tauren.thanks.w08.001"] = {
		"Thank you. My people say a gift given freely makes the grass grow greener wherever the giver walks.",
		"You have my thanks. I will remember it as long as a tauren remembers a good watering hole: always.",
		"Truly, thank you. That was a kindness worth a long, slow nod.",
	},
	["race.tauren.thanks.w08.002"] = {
		"Thank you. I would hug you, but I am told tauren hugs need a warning first.",
		"Much obliged. If you ever need something carried, lifted or sat on, ask for me.",
	},
	["race.tauren.toast.w08.001"] = {
		"To the Earth Mother, who feeds us, and to the cook, who does the hard part!",
		"To the herds, the hunt and the hands that cook it! May the Earth Mother take her share first.",
	},
}, "base_social")
