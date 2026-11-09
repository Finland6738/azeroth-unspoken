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
	["race.gnome.farewell.w09.001"] = {
		"Bye for now! Mind the tall folk; they don't always look down.",
		"Off you go! If anything breaks, send it to me. If it's you that breaks, send yourself to a priest.",
		"Farewell! Back to work. Something, somewhere, needs adjusting.",
	},
	["race.gnome.farewell.w09.002"] = {
		"Take care. We gnomes know how fast a home can be lost; don't go losing yourself.",
		"Goodbye, and soon. Come find me in Tinker Town when you can. I'll put the kettle on.",
		"Safe roads. Write if you can. I like letters; they're the one thing I'd never take apart.",
	},
	["race.gnome.greet.w09.001"] = {
		"Hello! Don't mind me, I'm just down here being delightful.",
		"Oh, hello! Is that a new buckle? It's a good buckle.",
		"Greetings! Quick question, unrelated: how tall are you, exactly? For science.",
	},
	["race.gnome.greet.w09.002"] = {
		"There you are! Excellent, now I've someone to explain my latest idea to.",
		"Hello, hello! Come, sit, tell me everything, especially the complicated parts.",
		"Well met! Gnomeregan sends its greetings. From a distance. A long distance, for now.",
	},
	["race.gnome.jest.w09.001"] = {
		"How many gnomes does it take to fix a lamp? One, but afterward the lamp also plays music and tells you the weather.",
		"Dwarves call us short. We call them 'pleasantly upholstered.' Everyone's happy.",
	},
	["race.gnome.pray.w09.001"] = {
		"Whoever runs this world: a little less breakage today, please, and a little more luck. I'll handle the rest.",
		"If anyone's listening up there: keep my friends in one piece and the troggs confused. That's the whole request. Thank you!",
	},
	["race.gnome.thanks.w09.001"] = {
		"Thank you! That was precisely the help I needed, to three decimal places.",
		"Oh, thanks! You've saved me a great deal of fretting, and gnomes fret very efficiently.",
		"Much obliged! I'll return the favor with interest. Compound interest, if you're patient.",
	},
	["race.gnome.thanks.w09.002"] = {
		"Thank you. Since the city fell, the kindness of others is what has kept my people going. I count every scrap of it.",
		"Thanks, truly. We gnomes lost a great deal, but not our manners. Nor our gratitude.",
	},
	["race.gnome.toast.w09.001"] = {
		"To Gnomeregan! May we see its halls again, cleaned up and humming!",
		"Raise your mugs! To clever hands, quick feet, and the day we go home.",
	},
	["race.orc.farewell.w09.001"] = {
		"Safe road. May your edge stay keen and your water last.",
		"Strength and honor on your road. Come back with stories.",
	},
	["race.orc.farewell.w09.002"] = {
		"Until the next fight. Don't start it without me.",
		"Off with you. The spirits watch the road, and so do bandits; mind both.",
	},
	["race.orc.greet.w09.001"] = {
		"Well met. Sit, if you like; the ground is free and the company is honest.",
		"Hail. Strong arm, clear eye? Good. Then we'll get along.",
	},
	["race.orc.greet.w09.002"] = {
		"There you are! I was getting bored of my own grunting.",
		"Ah, a face worth greeting. Come, tell me what you've been hitting lately.",
	},
	["race.orc.jest.w09.001"] = {
		"Why do orcs make terrible spies? We think whispering is something other people do.",
		"An orc's idea of subtle is breaking only one door.",
	},
	["race.orc.jest.w09.002"] = {
		"Durotar has two seasons: hot, and the one where you notice it's hot.",
		"The trolls say orcs laugh like rockslides: rarely, loudly, and nobody wants to be underneath.",
	},
	["race.orc.pray.w09.001"] = {
		"Spirits of earth and wind, I ask no favors. Only that I stand straight when it counts.",
		"Ancestors, the curse is gone from our blood. Help me keep it gone, in my own small way.",
	},
	["race.orc.thanks.w09.001"] = {
		"You helped an orc. The clans have sung about less. I'll just say thank you.",
		"Thanks. Fine words don't come easy to me, so take these plain ones and keep them.",
		"My thanks. If you ever need a wall between you and trouble, call me.",
	},
	["race.orc.thanks.w09.002"] = {
		"Thanks. When we tell it later, I didn't need the help.",
		"Much obliged. Don't make it a habit; my pride bruises easier than my hide.",
	},
	["race.scourge.farewell.w09.001"] = {
		"Farewell. Try to stay alive; coming back the way I did is more trouble than it's worth.",
		"Goodbye. Keep your flesh on your bones and your bones in order. Advice from an expert.",
	},
	["race.scourge.farewell.w09.002"] = {
		"Go well. The living have so little time; spend yours carefully, and spend a little of it coming back.",
		"Until next time. Keep a seat for me somewhere; I don't need it, but I like being expected.",
	},
	["race.scourge.greet.w09.001"] = {
		"Hello. Don't mind the smell; it comes with the freedom.",
		"Greetings. Yes, I'm talking. Yes, I'm dead. Both can be true.",
		"Pleased to meet you. I'd offer my hand, but you'd only count the fingers afterward.",
	},
	["race.scourge.greet.w09.002"] = {
		"Ah, a face that doesn't back away. Hello, and thank you for that.",
		"Hello, kindred spirit. Yes, kindred. The dead can still say it, and mean it.",
		"Good to see you. Truly. I don't say that to many.",
	},
	["race.scourge.jest.w09.001"] = {
		"The upside of being dead? Nobody asks me to help carry the coffin. Conflict of interest.",
		"A Forsaken walks into a healer's tent. 'How long have you had this?' 'Since the funeral.' They didn't even charge.",
	},
	["race.scourge.pray.w09.001"] = {
		"Light, if you're listening: you burn me now. I'm asking anyway. Make of that what you will.",
		"To whatever is up there, or down there, or nowhere: I'm still here. Take it as a prayer or a complaint.",
	},
	["race.scourge.thanks.w09.001"] = {
		"Thank you. You helped without first tallying what I am. I noticed.",
		"My thanks. Gratitude still works in this body, even if little else works properly.",
		"Thanks. I'll remember it, and the dead have all the time in the world to remember things.",
	},
	["race.scourge.thanks.w09.002"] = {
		"Thanks. I'd blush, but that takes blood moving somewhere.",
		"Much obliged. I'd buy you a drink, but I'd only sit and watch you enjoy it.",
	},
	["race.scourge.toast.w09.001"] = {
		"To the Dark Lady, who gave us back our own heads! And to whoever sews them back on afterward.",
		"To the living at this table: drink for me, I can't taste it. I'll enjoy watching.",
	},
	["race.troll.farewell.w09.001"] = {
		"Walk safe, and may the spirits keep the snakes out of your boots.",
		"Go well. If you're ever in Sen'jin, the fish is on me.",
		"Until next time. Keep your head down and your luck up.",
	},
	["race.troll.farewell.w09.002"] = {
		"The loa watch your road. I'll watch mine; it's longer.",
		"Off I go, mon. Try not to get eaten before we meet again.",
		"Stay sharp out there. The world bites.",
	},
	["race.troll.greet.w09.001"] = {
		"Hey there! The day is good and the spirits are loud. You hear them too?",
		"Ho, traveler! Come, sit, tell a troll something new.",
		"Hello. Mind the tusks; they mean hello too.",
	},
	["race.troll.greet.w09.002"] = {
		"There you are! Good. Now the day has someone to share the fish with.",
		"Ah, a friendly face. The loa did well today.",
		"Come close, come close. A Darkspear greeting needs both arms.",
	},
	["race.troll.jest.w09.001"] = {
		"Why do trolls have long arms? To grab the last fish before anyone else reaches the pot.",
		"A troll walks into an inn. Ducks. Hits the beam anyway. That's the whole story.",
	},
	["race.troll.jest.w09.002"] = {
		"Orcs ask why trolls laugh so much. Simple: we've seen orcs dance.",
		"Troll regeneration is a gift. It means you can make the same mistake twice in one fight.",
	},
	["race.troll.pray.w09.001"] = {
		"Loa, I don't ask for much: a clear road, a full belly, and enemies slower than me.",
		"Spirits of the tribe, watch over the Darkspear wherever we've scattered, and bring us home to the sea.",
	},
	["race.troll.thanks.w09.001"] = {
		"Thank you. I'll tell the spirits your name; they keep better accounts than I do.",
		"My thanks. A good deed is like a good catch: the whole tribe hears about it.",
		"Thanks. You did a troll a kindness, and trolls pay those back with interest.",
	},
	["race.troll.thanks.w09.002"] = {
		"Thanks, mon. The flesh would have closed up anyway, but help makes it quicker.",
		"Much obliged. Now I owe you, and trolls hate owing. Better hurry up and need something.",
	},
	["race.troll.toast.w09.001"] = {
		"To full nets, sharp spears, and the spirits who keep both coming!",
		"Raise it high: to the Darkspear, and to everyone who ever shared a fire with us!",
	},
	["faction.alliance.farewell.w10.001"] = {
		"Go well. Whatever banner you meet on the road, I hope it's ours.",
		"Farewell, and keep your back to an Alliance wall when you can.",
		"Until the next camp. The Alliance is big, but its roads keep crossing.",
	},
	["faction.alliance.greet.w10.001"] = {
		"Hello there! What news from your end of the Alliance?",
		"Hail! Whichever capital you call home, you're among friends.",
	},
	["faction.alliance.greet.w10.002"] = {
		"Greetings. One banner over us both, whatever the road.",
		"By the Light, by the moon or by the mountain, as you prefer: well met.",
	},
	["faction.alliance.jest.w10.001"] = {
		"How many Alliance leaders does it take to light a lantern? Four: one to command it, one to forge it, one to bless it, and a gnome to make it explode.",
		"The Alliance has a dwarf for strength, an elf for patience, a gnome for cleverness and a human for paperwork. Guess who's always late.",
	},
	["faction.alliance.pray.w10.001"] = {
		"Light, Elune, makers of stone, whoever keeps watch over the Alliance: hold our roads open and our gates shut against the dead.",
		"To whatever watches over all of us, by whatever name: let the peoples of the Alliance outlast their quarrels.",
	},
	["faction.alliance.thanks.w10.001"] = {
		"Thank you! Put it on the Alliance's tab; it's very long, but it's honest.",
		"Thanks. Between allies it's never a debt, only a turn. The next one's mine.",
	},
	["faction.alliance.thanks.w10.002"] = {
		"My thanks. That's the Alliance at its best: help given before anyone asked whose people you are.",
		"Thank you. Kindness from an ally always lands a little softer than kindness from a stranger.",
	},
	["faction.horde.farewell.w10.001"] = {
		"Go well. May the Horde's roads be kind to you, and its enemies slow.",
		"Strength and honor, until our roads cross again.",
		"Safe journey. Bring all your skin back with you; the Horde needs every pair of hands.",
	},
	["faction.horde.greet.w10.001"] = {
		"Throm-ka. Strength to you, and an easy road.",
		"Well met. Any word from the other end of the Horde?",
	},
	["faction.horde.greet.w10.002"] = {
		"Good to see a friendly face of the Horde. Come, stand a while.",
		"There you are. The Horde is wide, and it's always a pleasure when it lands us in the same spot.",
	},
	["faction.horde.jest.w10.001"] = {
		"How many Horde soldiers does it take to pitch a tent? An orc to swing the mallet, a tauren to hold the pole, a troll to laugh, and a Forsaken to point out it's upside down.",
		"Why does the Horde never lose at tug of war? The tauren pull, the orcs shout, the trolls cheat, and the Forsaken simply never let go.",
	},
	["faction.horde.pray.w10.001"] = {
		"Spirits, Earth Mother, loa, or anyone at all who listens: watch over the Horde's scattered camps, and bring its people home.",
		"To whatever keeps watch over the Horde, in whatever tongue it prefers: keep us whole a little longer.",
	},
	["faction.horde.thanks.w10.001"] = {
		"My thanks. Among the Horde, help is a debt, and I pay mine.",
		"Thank you. I'll return it the Horde's way: when you need it, without being asked.",
	},
	["faction.horde.thanks.w10.002"] = {
		"Thanks. I'd sing your praises, but the Horde is noisy enough already.",
		"Much obliged. Tell no one; I have a reputation for grumbling to keep up.",
	},
	["time.day.farewell.w10.001"] = {
		"Go well, and make good use of the light while it lasts.",
		"Farewell. There's plenty of road in a day like this; don't waste it on me.",
	},
	["time.day.greet.w10.001"] = {
		"Good day to you! And so far it is one.",
		"Hello! Fine hour to meet on the road, with all this light to see each other by.",
	},
	["time.day.thanks.w10.001"] = {
		"Thank you. You've saved me a good hour of daylight, and those don't grow on trees.",
		"My thanks. That's the day's work made lighter, and the day's long enough already.",
	},
	["time.night.thanks.w10.001"] = {
		"Thank you. Kindness in the dark counts double; it's harder to find.",
		"My thanks. At this hour I'd stopped expecting any help at all.",
	},
	["farewell.w15.light.001"] = {
		"Off with you. Try not to get into anything I'd have to hear about.",
		"Bye! Don't do anything I wouldn't. Which leaves you plenty.",
	},
	["farewell.w15.light.002"] = {
		"See you around! Try to keep all your fingers.",
		"Be seeing you. Keep your limbs where they belong.",
	},
	["farewell.w15.light.003"] = {
		"Go on, go. I'll pretend I'm not sorry to see you leave.",
		"Shoo. I'll be fine. Probably. Mostly.",
	},
	["farewell.w15.light.004"] = {
		"waves goodbye with far more enthusiasm than the occasion calls for.",
		"gives a cheerful, slightly overdone wave of farewell.",
	},
	["farewell.w15.light.005"] = {
		"Bye for now. It was good, this. Whatever this was.",
		"Goodbye, then. I liked this more than I expected to.",
		"Goodbye for now, and thanks for the company.",
	},
	["farewell.w15.road.001"] = {
		"Go well, and may every road you take be kind to your feet.",
		"Walk safely. May the miles be gentle with you.",
		"Fare you well, and may every turning treat you fairly.",
	},
	["farewell.w15.road.002"] = {
		"Take care of yourself out there. I mean it.",
		"Look after yourself. The world is careless; don't be.",
	},
	["farewell.w15.road.003"] = {
		"Off you go. Keep your wits sharp and your pack light.",
		"Mind the road, and let the road mind you.",
		"Go on, then. Wherever the way leads, keep your eyes open.",
	},
	["farewell.w15.road.004"] = {
		"touches two fingers to {g:his|her} brow in a parting salute, then turns away.",
		"gives a short wave over {g:his|her} shoulder, already on the move.",
	},
	["farewell.w15.road.005"] = {
		"Partings are only the space between two meetings. Go well.",
		"Every goodbye leaves a door open. Mind you find it again.",
	},
	["farewell.w15.road.006"] = {
		"Farewell, {target}. Mind how you go.",
		"Mind how you go, and don't let anything chew on you.",
	},
	["thanks.w15.plain.001"] = {
		"Appreciated.",
		"Much appreciated. I mean it.",
	},
	["thanks.w15.plain.002"] = {
		"Thanks. That's a kindness.",
		"Kind of you, that. Really.",
		"Thanks. That was kindly done.",
	},
	["thanks.w15.plain.003"] = {
		"Thanks. Try not to get used to hearing it.",
		"Thanks. Now let's never speak of it.",
	},
	["thanks.w15.plain.004"] = {
		"Let me at least shake your hand. You've earned that much.",
		"Give me your hand. That deserves a proper thanks.",
	},
	["thanks.w15.plain.005"] = {
		"Obliged to you.",
		"I'm obliged. Won't forget it.",
	},
	["thanks.w15.plain.006"] = {
		"Thanks. I'd tip you, but I've seen my purse and it's embarrassing.",
		"Thank you kindly. My purse would like to add something, but it's shy.",
	},
	["thanks.w15.plain.007"] = {
		"Good of you. I mean that.",
		"That was decent of you. I won't pretend otherwise.",
	},
	["thanks.w15.plain.008"] = {
		"You're a treasure. Thank you!",
		"You're a marvel, you know that? Thanks!",
	},
	["thanks.w15.plain.009"] = {
		"I thank you, and gladly.",
		"Accept my thanks, plainly given.",
	},
	["thanks.w15.plain.010"] = {
		"Thanks. I needed that more than I'd say.",
		"That helped. I won't make a speech, but it helped.",
	},
	["thanks.w15.plain.011"] = {
		"nods {g:his|her} thanks with a quick, crooked smile.",
		"offers a grateful nod and a small, lopsided grin.",
	},
	["thanks.w15.plain.012"] = {
		"Thanks, {target}. Truly.",
		"Cheers. You're good people.",
	},
	["thanks.w15.warm.001"] = {
		"You had every reason to walk past. Thank you for not doing it.",
		"You could have kept walking. I'm glad you didn't.",
	},
	["thanks.w15.warm.002"] = {
		"That meant more than you know. Thank you.",
		"You've no idea how much that helped. Truly.",
		"It mattered. More than I can easily say.",
	},
	["thanks.w15.warm.003"] = {
		"Whatever I make of myself, a piece of it will be yours.",
		"If I ever amount to something, remember you had a hand in it.",
	},
	["thanks.w15.warm.004"] = {
		"Consider me in your debt. I mean to settle it properly.",
		"My thanks, freely given, and a debt I mean to honor.",
	},
	["thanks.w15.warm.005"] = {
		"Kindness like that makes the whole world a little easier to bear.",
		"Small kindnesses like that are what keep a person going. Thanks.",
	},
	["thanks.w15.warm.006"] = {
		"lays a hand over {g:his|her} heart and bows {g:his|her} head in thanks.",
		"presses a hand to {g:his|her} chest and dips {g:his|her} head, grateful.",
	},
	["thanks.w15.warm.007"] = {
		"Thank you. You make it hard to stay cynical.",
		"Careful, or you'll ruin my low opinion of people. Thanks.",
	},
	["thanks.w15.warm.008"] = {
		"Some debts are heavy. This one I'm glad to carry.",
		"I'll carry this debt gladly. It weighs nothing at all.",
	},
	["thanks.w15.warm.009"] = {
		"Thanks! If you're ever near a tavern when I am, the first cup is mine.",
		"Cheers! I owe you a drink, and I'm good for it.",
	},
	["thanks.w15.warm.010"] = {
		"Thank you, truly. I'll try to be worth the trouble you took.",
		"I'll do my best to deserve that. Thank you.",
	},
	["thanks.w15.warm.011"] = {
		"bows, low and unhurried, the way one bows to settle a debt.",
		"bows deeply, holding it a moment longer than manners require.",
	},
	["thanks.w15.warm.012"] = {
		"{target}, thank you. I'll keep the name, and what goes with it.",
		"I'll remember who to be grateful to.",
	},
}, "base_social")
