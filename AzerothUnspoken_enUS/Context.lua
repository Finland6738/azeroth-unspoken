-- English texts for the interlocutor and place phrases (step S6c, extended in S7). The rules live in
-- Data/RegistryContext.lua. Narrator lines are emotes: they start in lower case, because the game puts the
-- character's name first. NPC voice lines are spoken by the NPC in the first person and stay private.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	-- NPCs: role and character
	["ctx.npc.innkeeper"] = {
		"A fire, a bench, someone who only asks whether you're hungry. Sometimes that's all it takes.",
		"Inns are the only homes that open the door without asking where you come from.",
	},
	["ctx.npc.innkeeper.jovial"] = {
		"returns {other}'s grin: in some inns cheer is served before the ale.",
		"catches the good humor from behind the counter, and the first sip already tastes like a holiday.",
	},
	["ctx.npc.innkeeper.gruff"] = {
		"Few words, a tankard set down hard on the counter. Warmth here is measured in deeds.",
		"No smiles, no small talk. Still, the sheets are clean and the door bolts properly.",
	},
	["ctx.npc.merchant"] = {
		"The merchant weighs you with a glance before weighing a single coin.",
		"A ready smile, and scales readier still.",
	},
	["ctx.npc.merchant.profit"] = {
		"watches {other} weigh every coin, and suspects being weighed in turn.",
		"notices that {other} never takes an eye off a customer's purse, not even mid-smile.",
		"keeps the purse firmly shut until the choice is made.",
	},
	["ctx.npc.trainer"] = {
		"Every master was once a pupil. Listen well: one day it will be your turn to teach.",
		"Every move you learn here, a thousand hands have practiced before yours.",
	},
	["ctx.npc.flightmaster"] = {
		"Wings ready, straps tight. The sky is a road without mud.",
		"Down there, the roads you wore thin on foot. From up high they'll look like loose thread.",
	},
	["ctx.npc.banker"] = {
		"Safe behind an iron door lies everything you don't need today. A strange sort of treasure.",
		"All you own, cut in two: what you carry, and what you forget you left here.",
	},
	["ctx.npc.questgiver"] = {
		"Go on. If I can be of help, I will.",
		"I'm listening. Start from the beginning.",
	},
	["ctx.npc.questgiver.duty"] = {
		"They speak of duty like someone who never had the luxury of choosing it.",
		"Straight back, tired voice: a load nobody ever offered to carry in their place.",
	},
	["ctx.npc.formal"] = {
		"listens to {other}, who picks every word with care, like a coin not to be wasted.",
		"answers with a small bow, matching all that ceremony step for step.",
	},
	["ctx.npc.cryptic"] = {
		"Half an answer, then another. Either it's a test, or there's something they'd rather not say.",
		"Every sentence is a door left ajar. What's behind it is anyone's guess.",
	},
	["ctx.npc.melancholic"] = {
		"There's a weariness in those eyes that no polite smile quite manages to hide.",
		"They speak quietly, like someone who stopped expecting answers a long time ago.",
	},
	["ctx.npc.cheerful"] = {
		"Some people lighten the whole day just by being where they are.",
		"A laugh that shows up before the greeting does. Hard not to return it.",
	},
	-- NPC voice: what the NPC might say to us (private, labeled "NPC")
	["ctx.npcv.innkeeper"] = {
		"Come in, come in, there's a wind out there. Still a spot by the fire.",
		"Bed and hot soup, if you're after them. Boots by the door, if you please.",
	},
	["ctx.npcv.innkeeper.gruff"] = {
		"Room or a drink. Pick one.",
		"Mud stays outside. Everything else gets paid up front.",
		"Not clean. Warm, though. Take it or leave it.",
	},
	["ctx.npcv.innkeeper.jovial"] = {
		"Ha! A new face! Sit, sit, the first laugh of the night is always the best one.",
		"Raining out there? Then in here we'll call it a feast day.",
		"You look like you've walked half the world. The big tankard, then!",
	},
	["ctx.npcv.innkeeper.warm"] = {
		"You've the look of someone who hasn't slept in days. Sit down, I'll bring something hot.",
		"Stay as long as you need. Nobody hurries you here.",
	},
	["ctx.npcv.merchant"] = {
		"Look all you like, touching's free. Breaking costs a little more.",
		"Good stock, fresh in. If you want something you don't see, just ask.",
	},
	["ctx.npcv.merchant.gruff"] = {
		"Buying or browsing? Browsing doesn't buy my supper.",
		"Price is the price. I don't haggle.",
		"Don't like it? Road's right there.",
	},
	["ctx.npcv.merchant.jovial"] = {
		"Welcome, welcome! I'm in a generous mood today. More or less.",
		"For you, an imaginary discount! The price stays put, but the smile's genuine.",
	},
	["ctx.npcv.guard"] = {
		"Quiet road, for now. Keep that blade sheathed and it'll stay quiet.",
		"Looking for trouble? Wrong road. Anything else, just ask.",
	},
	["ctx.npcv.guard.terse"] = {
		"Keep walking.",
		"No brawls. No fires. On you go.",
		"I've got my eye on you. Nothing personal.",
	},
	["ctx.npcv.guard.formal"] = {
		"Good day to you. Travel with care, and mind the laws of these lands.",
		"You are welcome here, so long as the peace of this place is kept.",
	},
	["ctx.npcv.banker"] = {
		"Deposit or withdrawal? And count it twice before you leave.",
		"Your things are safe with us. Safer than you'll be out there.",
	},
	["ctx.npcv.trainer"] = {
		"Back again? Good. Let's see what the road has taught you.",
		"Every lesson costs sweat. The one you skip costs more.",
	},
	["ctx.npcv.trainer.gruff"] = {
		"Still standing? Then you learned something. Listen.",
		"Less talk. Show me what you can do.",
	},
	["ctx.npcv.flightmaster"] = {
		"Hold the straps tight and don't look down. Not the first few times, anyway.",
		"Fed not long ago, so in a fine mood. Up you get.",
		"Good wind today. You'll be there before you know it.",
	},
	["ctx.npcv.questgiver"] = {
		"You there! Yes, you. Have you a moment? I won't keep you long.",
		"I was hoping someone like you would come by. Please, hear me out.",
	},
	["ctx.npcv.questgiver.formal"] = {
		"Thank you for stopping. What I must ask of you is no small thing.",
		"Hear me, I beg you. I need someone I can trust.",
	},
	-- greetings by role, homeland and calling
	["ctx.greet.guard"] = {
		"Good watch to you. Are the roads quiet tonight?",
		"All in order here? If you need a hand, just say so.",
	},
	["ctx.greet.leader"] = {
		"With respect. It isn't often one stands before someone who carries the weight of a whole people.",
		"An honor. I'll speak little and listen much.",
	},
	["ctx.greet.enemy"] = {
		"You won't understand a word, I know. But a greeting is still a greeting.",
		"Different tongues, same mud on our boots. Greetings.",
	},
	["ctx.greet.human"] = {
		"Well met. A face from home, so far from home.",
		"Hail! I'd know that accent in the loudest market square.",
	},
	["ctx.greet.dwarf"] = {
		"Greetings. The mountains of Khaz Modan have sent you a long way.",
		"Well met! I'd wager you can tell good iron by eye alone.",
	},
	["ctx.greet.nightelf"] = {
		"May the moonlight keep you company along the road.",
		"Greetings. The northern woods taught you to walk without a sound, I see.",
	},
	["ctx.greet.gnome"] = {
		"Hello there! Explain how that contraption of yours works and the next round is on me.",
		"Hello! If you need a spare pair of hands to hold the bits, mine are free.",
	},
	["ctx.greet.orc"] = {
		"Greetings. Durotar's sun has left its mark on you, I see.",
		"Greetings. You walk like someone from red, dry country.",
	},
	["ctx.greet.tauren"] = {
		"May the Earth Mother walk at your side.",
		"Greetings. Mulgore's plains are far off, but the wind is the same.",
	},
	["ctx.greet.troll"] = {
		"Greetings, traveler from the islands. The sea has carried you a long way.",
		"Greetings. I'll bet this air feels far too cold to you.",
	},
	["ctx.greet.forsaken"] = {
		"Greetings. I won't ask what you left behind, if you don't ask me.",
		"Greetings. The roads are long for everyone, whoever you used to be.",
	},
	["ctx.greet.priest"] = {
		"One more blessing never hurts, does it?",
		"Greetings. If you've a kind word to spare tonight, I'll gladly take it.",
	},
	["ctx.greet.mage"] = {
		"Keep the sparks away from my cloak, will you?",
		"Greetings. I've always wanted to ask: do you carry every one of those books around?",
	},
	["ctx.greet.warrior"] = {
		"Fine blade. I hope I never see it pointed my way.",
		"Greetings. That steel has put in a few hard mornings, by the look of it.",
	},
	["ctx.greet.rogue"] = {
		"Footsteps without a sound. You only noticed them when they wanted to be noticed.",
		"Always keeps a wall at their back. A habit of the trade, maybe.",
	},
	["ctx.greet.hunter"] = {
		"Fine companion, that beast of yours. Sharper than half the people I know.",
		"Greetings. You clearly know tracks better than roads.",
	},
	["ctx.greet.paladin"] = {
		"Polished armor, steady gaze. May your cause be as sound as your steel.",
		"Greetings. May the Light keep your footing sure.",
	},
	["ctx.greet.druid"] = {
		"You smell of woods and rain. You've walked a long way from the roads.",
		"Greetings. You look like someone who talks to trees more often than to people.",
	},
	["ctx.greet.shaman"] = {
		"They say the elements listen to you. I hope they're in a good mood today.",
		"Greetings. They say shamans feel the rain coming before anyone else. True?",
	},
	["ctx.greet.warlock"] = {
		"Something in the air around them makes the hair on your arms stand up. Better not to ask.",
		"A faint whiff of brimstone. Some trades cling to you even when you stand still.",
	},
	-- recent actions
	["ctx.act.duel"] = {
		"A duel? Very well. But if I lose, blame the sun in my eyes.",
		"Accepted. Nothing below the belt, though, I've still got walking to do tomorrow.",
	},
	["ctx.act.duel.friend"] = {
		"A duel with you? Fine. I'll go easy on you, and you'll pretend you didn't notice.",
		"Ha! Name the stakes: the loser buys the next round.",
	},
	["ctx.act.duel.rival"] = {
		"At last. I have wanted to measure myself against you for a long time.",
		"Accepted. No tricks, no mercy; you would expect nothing less.",
	},
	["ctx.act.duel.enemy"] = {
		"A duel. I won't pretend I haven't been waiting for this.",
		"Draw your blade. There is nothing left between us that words could settle.",
	},
	["ctx.act.duel.wary"] = {
		"A challenge from someone I never trusted. Keep your eyes on the hands, not the face.",
		"Every instinct says it is a trap. And still, there is the blade in your hand, and the crowd watching.",
	},
	["ctx.act.duel.inner"] = {
		"A challenge thrown out like that, with no grudge behind it. Just to see who's quicker.",
		"Your pulse quickens before your hand has even found the hilt.",
	},
	["ctx.act.invite"] = {
		"An invitation? Gladly. Roads are shorter in company.",
		"Count me in. Tell me where we're headed and what I shouldn't hit.",
	},
	["ctx.act.emote"] = {
		"A gesture meant for you alone, in the middle of the crowd. Small things that stay with you.",
		"A nod from a stranger. Costs nothing, and still it warms.",
	},
	["ctx.act.emote.friend"] = {
		"returns {other}'s wave from afar, the way old friends do.",
		"answers the gesture with an open smile, no words needed.",
	},
	["ctx.act.trade"] = {
		"An honest trade is a small handshake between strangers.",
		"Goods for goods. People managed this long before anyone stamped a coin.",
	},
	["ctx.act.quest"] = {
		"Another task, another promise. The world is full of people waiting for someone like you.",
		"One more name on the list of people counting on you. It weighs, and it's a little pleasing too.",
	},
	["ctx.act.quest.gruff"] = {
		"Not even a thank-you in advance. Fine: maybe it'll come once the job is done.",
		"A grunt and an order. The thanks, if it ever comes, will be shorter still.",
	},
	["ctx.battle.ally"] = {
		"You're not alone! We hold the line together!",
		"Shoulder to shoulder! Don't give an inch!",
	},
	["ctx.battle.player"] = {
		"A person, not a beast. You will remember what happens now.",
		"A face, a voice, maybe someone waiting for them somewhere. Don't think about it now.",
	},
	["ctx.victory.ally"] = {
		"Thanks for the hand. Without you this would have ended worse.",
		"Good work, truly. I owe you a drink.",
	},
	-- places: arrival
	["ctx.zone.dungeon"] = {
		"The walls close in and the light grows thin. From here on, every step has a price.",
		"The air changes with your first step inside: colder, older, more watchful.",
	},
	["ctx.zone.dungeon.echo"] = {
		"leaves the noise of the world behind: in here there is only the echo of footsteps.",
		"lowers {g:his|her} voice without meaning to, as if the stones might be listening.",
	},
	["ctx.zone.dungeon.deep"] = {
		"Underground, time isn't counted in hours but in torches burned down.",
		"The deeper you go, the more sunlight sounds like a rumor.",
	},
	["ctx.zone.dungeon.undead"] = {
		"Someone lived here once. The silence they left still has the shape of their voices.",
		"A smell of turned earth and rotten cloth. Someone here didn't stay where they were buried.",
	},
	["ctx.zone.dungeon.fire"] = {
		"The air burns your throat. Whoever built this place wasn't thinking of guests.",
		"Sweat dries before it can even run. Lovely spot for an outing.",
	},
	["ctx.zone.dungeon.name"] = {
		"{instance}. We stay together and we all walk out, agreed?",
		"Torches lit, eyes open. In we go.",
	},
	["ctx.zone.dungeon.threshold"] = {
		"checks each buckle in turn, then stares down the first corridor.",
		"pauses on the threshold for a single breath before leaving the daylight behind.",
	},
	["ctx.zone.raid"] = {
		"takes a place among dozens of companions: many breaths, a single heartbeat.",
		"falls in with the long column of steel and cloaks advancing on the gate.",
	},
	["ctx.zone.raid.respect"] = {
		"You feel the weight of what awaits. It isn't fear: it's respect.",
		"So many voices around you, and your own breathing refuses to settle.",
	},
	["ctx.zone.raid.dragon"] = {
		"Vast wings, somewhere in the dark. The heat arrives before the roar.",
		"Scales shed on the rock, broad as shields. Best not to wonder how long ago.",
	},
	["ctx.zone.raid.count"] = {
		"Count off. I want to hear every name again on the way out.",
		"Potions, bandages, steady nerves. Short on any of those? Speak now.",
	},
	["ctx.zone.bg"] = {
		"Take positions. No lone heroes.",
		"Eyes open, voices up. Call everything.",
	},
	["ctx.zone.bg.rules"] = {
		"Banners, horns, shouting. Even war has rules here.",
		"Fighting over a flag. Come to think of it, it always was.",
	},
	["ctx.zone.bg.name"] = {
		"tightens every strap and looks out over {instance}.",
		"settles the helm and fixes {g:his|her} eyes on the distant enemy line.",
	},
	["ctx.zone.bg.horn"] = {
		"hears a distant horn and tightens {g:his|her} grip.",
		"watches the banners snap in the wind across the field.",
	},
	["ctx.zone.arena"] = {
		"Sand, stands, no way out. Only the next move.",
		"The crowd roars, but it sounds far away. Just you, and whoever's across.",
	},
	["ctx.zone.arena.few"] = {
		"Few against few. No excuses.",
		"Ready. Here we go.",
	},
	["ctx.zone.arena.sand"] = {
		"tests the sand with the toe of a boot.",
		"rolls {g:his|her} shoulders as the stands grow loud.",
	},
	["ctx.zone.hostile"] = {
		"Lands that don't want you. Walk as if you had every right to be here.",
		"Every glance you meet could be a question. Don't give answers.",
	},
	["ctx.zone.hostile.hood"] = {
		"pulls the hood lower: the sentries here wear other colors.",
		"leaves the main road for a narrower trail through the brambles.",
	},
	["ctx.zone.contested"] = {
		"No one's land, or everyone's. Which is usually worse.",
		"Banners change hands here more often than the seasons turn.",
	},
	["ctx.zone.capital.friendly"] = {
		"Friendly walls, familiar voices. For a while you can lower your guard.",
		"Market chatter, the smell of fresh bread. Some things wait for you without even knowing it.",
	},
	["ctx.zone.capital.bed"] = {
		"At last a real bed, and a meal I didn't have to hunt myself.",
		"A bath first, then supper, and then nobody wakes me.",
	},
	["ctx.zone.capital.enemy"] = {
		"The enemy's heart beats all around you. Don't let it hear yours.",
		"Walls you've only ever seen on maps. Up close they're taller, and they're watching.",
	},
	["ctx.zone.capital.banners"] = {
		"walks beneath foreign banners, feeling every bit the intruder.",
		"drops {g:his|her} gaze as a patrol goes by, counting the steps to the nearest alley.",
	},
	["ctx.zone.capital.enemy.guards"] = {
		"Every guard who doesn't stop you is a small victory. Don't count them out loud.",
		"Breathe quietly. Here even the children can spot a stranger.",
	},
	["ctx.zone.sanctuary"] = {
		"Here weapons rest. A truce nobody signed, and yet everyone keeps.",
		"Even enemies lower their voices here. Strange, how little it takes.",
	},
	["ctx.zone.sacred"] = {
		"slows down without noticing: there's a stillness here that has nothing to do with the wind.",
		"lowers the hood unbidden, the way one does on the threshold of another's home.",
	},
	["ctx.zone.neutral"] = {
		"A town where everyone is welcome, as long as they pay. Honest, in its way.",
		"Here it's the color of your coin that counts, not the color of your banner.",
	},
	["ctx.zone.port"] = {
		"The smell of salt and wet rope. From here ships sail toward places you haven't imagined yet.",
		"Gulls, barrels, sailors swearing in three languages. Sooner or later, the whole world comes through here.",
	},
	["ctx.zone.rest"] = {
		"A lit fire, a free chair. The road can wait until tomorrow.",
		"The clink of tankards, a laugh from the back of the room. Here nobody asks anything of you.",
	},
	["ctx.zone.rest.cloak"] = {
		"shakes the road dust off at the door, eyes searching for a free bench.",
		"hangs the cloak near the fire and lets the warmth do the rest.",
	},
	-- places: battle and victory
	["ctx.battle.bg"] = {
		"Forward, together!",
		"Push! Don't stop now!",
	},
	["ctx.battle.bg.cover"] = {
		"Cover me!",
		"Need a hand over here!",
	},
	["ctx.battle.arena"] = {
		"Now. No hesitation!",
		"First mistake's theirs. Go!",
	},
	["ctx.battle.tank"] = {
		"Eyes on me, not them!",
		"Behind me! I've got them!",
	},
	["ctx.battle.healer"] = {
		"Count your companions' breaths. No one falls while you're still standing.",
		"A wound here, another there. Your hands already know where to go.",
	},
	["ctx.battle.hostile"] = {
		"Far from home. And they know it.",
		"Every path here works for them. Not for you.",
	},
	["ctx.victory.bg"] = {
		"Held! On to the next.",
		"Nice! Stay tight.",
	},
	["ctx.victory.arena"] = {
		"Well played. The next one will be harder.",
		"Done. A sip of water, then again.",
	},
	["ctx.victory.dungeon"] = {
		"One step deeper. No one left behind.",
		"One corridor fewer. The legs complain, but they hold.",
	},
	["ctx.victory.raid"] = {
		"Another step. The hall ahead is still long.",
		"One down. Save your breath for whatever comes next.",
	},
	-- end of a boss encounter
	["ctx.boss.win"] = {
		"{encounter} is down! Breathe, you've earned it.",
		"Down! Everyone in one piece? Sound off!",
	},
	["ctx.boss.win.hands"] = {
		"It's over. Only now do your hands start to shake.",
		"Your heart takes a while to realize it's allowed to slow down.",
	},
	["ctx.boss.win.raid"] = {
		"stays silent for a moment: the silence of those who held together.",
		"stands quite still as the companions' cheering rolls beneath the vaulted roof.",
	},
	["ctx.boss.win.still"] = {
		"lowers the weapon only once nothing in the hall is moving any more.",
		"looks down at {encounter} and finally lets out a held breath.",
	},
	["ctx.boss.wipe"] = {
		"Not this time. We get up, understand the mistake, come back.",
		"You fail, you learn. It still stings, but you learn.",
	},
	["ctx.boss.wipe.again"] = {
		"All right, all right. Again, and calmer this time.",
		"No panic. Let's go over it and try again.",
	},
	["ctx.boss.wipe.still"] = {
		"stares at the spot where it all went wrong, as if committing it to memory.",
		"drags a hand down {g:his|her} face as silence settles back over the hall.",
	},
	["faction.alliance.npc_meet.01"] = {
		"A guard of the Alliance. Different post, different armor, the same look in the eye: one of ours until proven otherwise.",
		"Whatever people this guard comes from, the eyes give me the nod I know: the quick, tired courtesy of our side.",
	},
	["faction.alliance.npc_meet.02"] = {
		"Gryphon or hippogryph, I'm not fussy. Just give me one that's eaten recently.",
		"Whatever you've got with wings and a decent temper. I'll pay extra for the temper.",
	},
	["faction.alliance.other_action.01"] = {
		"A duel between allies? Fine. Better we find each other's weak spots than let the Horde find them.",
		"Accepted. Bruise me now, so the real fights find me harder to bruise.",
	},
	["faction.horde.npc_meet.01"] = {
		"Orc, tauren, troll or Forsaken, a guard of the Horde gives me the same look: one of ours, so behave.",
		"The guard's gaze passes over me and moves on. On our side, that's the warmest welcome a guard knows how to give.",
	},
	["faction.horde.npc_meet.02"] = {
		"Wind rider or bat, I don't mind which. I'll be holding on with both hands either way.",
		"Whatever's flying today, give it a calm temper and give my hands a strong grip.",
	},
	["faction.horde.other_action.01"] = {
		"An invitation? Good. The Horde was never much for walking alone.",
		"Count me in. However small the band, it's still a Horde war band.",
	},
	["race.dwarf.npc_meet.001"] = {
		"The first thing I check in any inn is the cellar door. A good cellar, and the rest forgives itself.",
		"An inn is only as good as its kegs. Let's see what this keeper keeps below.",
	},
	["race.dwarf.npc_meet.002"] = {
		"Workmanship first, prices after. A dwarf never buys the other way round.",
		"Let's have a look at the goods. Prices are talk; good work doesn't need any.",
	},
	["race.dwarf.other_action.001"] = {
		"A party? Count me in. Every expedition needs someone who can tell rock from rubbish.",
		"Aye, I'll come along. A dwarf in the group is like a good lamp in the mine.",
	},
	["race.gnome.npc_meet.001"] = {
		"A teacher! Splendid. I've a list of forty questions, and I'll try to keep it to twenty.",
		"Lessons. My favorite thing, right after taking things apart.",
	},
	["race.gnome.npc_meet.002"] = {
		"Flying beasts. Lovely creatures, but I keep thinking how much better they'd be with a rotor.",
		"No engine, no fuel gauge, just wings. Primitive. Charming, but primitive.",
	},
	["race.gnome.other_action.001"] = {
		"A duel? Splendid! I've been meaning to field-test a few theories.",
		"Accepted! If I lose, it was a controlled experiment.",
	},
	["race.human.npc_meet.001"] = {
		"A guard in good order. It still eases something in me, after the years of the Defias on the roads.",
		"A watchful eye and a well-kept post. Whoever pays this guard, I hope they pay on time.",
	},
	["race.human.npc_meet.002"] = {
		"An innkeeper. Every human village I've known was held together by one of these and a big pot of something.",
		"Inns are where my people do their real governing: over stew, with the door open.",
	},
	["race.human.other_action.001"] = {
		"A fair trade, then. Back home, the market square decided more than the council ever did.",
		"Let's trade, and let's each walk away thinking we got the better of it. That's a good bargain.",
	},
	["race.nightelf.npc_meet.001"] = {
		"Winged mounts, and a keeper who knows their tempers. My people never tamed the sky; we asked it politely.",
		"A flight master. I trust the creatures more than the straps, and the keeper most of all.",
	},
	["race.nightelf.npc_meet.002"] = {
		"A teacher. Shan'do, we say: honored teacher. The word asks for patience on both sides.",
		"Whatever their age, a teacher is a teacher. I listen with the respect my people give the old trees.",
	},
	["race.nightelf.other_action.001"] = {
		"A small courtesy from across the way. Short-lived peoples greet quickly; I try to answer at the same speed.",
		"A greeting from someone passing, brief as a firefly. And somehow it still lights something.",
	},
	["race.orc.npc_meet.001"] = {
		"Meat, a fire, and a corner where I can keep my back to the wall. That's all I ask.",
		"Something hot, and something strong to drink. I'll pay, and I won't break anything. Probably.",
	},
	["race.orc.npc_meet.002"] = {
		"{other} has something to teach me. The elders say a fighter who will not learn is only a stubborn corpse waiting its turn.",
		"Learning from {other}. Pride tells me I know enough. Pride has lied to orcs before.",
	},
	["race.orc.other_action.001"] = {
		"A duel! Good. Nothing settles the blood like an honest fight.",
		"You want to test me? Fine. No hard feelings after, whoever wins.",
	},
	["race.scourge.npc_meet.001"] = {
		"{other} asks whether I'll be eating. A kind question, and a brave one. I say no, to spare us both.",
		"A room? I'll take it. I don't sleep, but brooding is more comfortable with a door to close.",
	},
	["race.scourge.npc_meet.002"] = {
		"No need to worry, my coin is clean. Cleaner than my hands, anyway.",
		"I'll buy, if you can bring yourself to take money from a corpse.",
	},
	["race.scourge.other_action.001"] = {
		"An invitation? To me? The living are getting braver.",
		"A group. Fine. I won't eat your rations, and I don't need a turn to sleep.",
	},
	["race.tauren.npc_meet.001"] = {
		"{other} eyes the doorframe, then my horns, then the doorframe again. A look I know well.",
		"Inn beds are always a little short. I will sleep curled up like a calf. I have had worse.",
	},
	["race.tauren.npc_meet.002"] = {
		"On the plains we traded by the kodo-load. I will try to think smaller.",
		"Show me what is good. My people never haggled much; we simply walked away.",
	},
	["race.tauren.other_action.001"] = {
		"A duel? Where I come from we wrestle for fun. Mind the horns.",
		"Very well. If I win, you help me find a door I can walk through without ducking.",
	},
	["race.troll.npc_meet.001"] = {
		"Got anything from the islands? Dried fish, coconut, anything? No? Then show me the rest.",
		"What's good today, mon? And don't say everything; I can see your face.",
	},
	["race.troll.npc_meet.002"] = {
		"{other} has something to teach. The elders say a troll who stops learning starts to shrink.",
		"Every teacher I meet adds a bead to the string. {other} may be worth two.",
	},
	["race.troll.other_action.001"] = {
		"A group? Sure, mon. I bring the luck, you bring the snacks.",
		"Count me in. A Darkspear never says no to good company.",
	},
	["faction.alliance.npc_meet.w02.01"] = {
		"An innkeeper of the Alliance. Whatever the accent, the welcome sounds the same: sit, eat, pay later.",
		"Human, dwarf, gnome or elf, an Alliance innkeeper keeps one rule: no brawling indoors, and boots off the table.",
		"A friendly roof under a friendly banner. After the road, that's worth more than the bed.",
	},
	["faction.alliance.other_action.w02.01"] = {
		"An invitation from one of ours? Gladly. The roads are long, and the Alliance walks them better together.",
		"Glad to join you. Together we'll get further than either of us would alone.",
	},
	["faction.horde.npc_meet.w02.01"] = {
		"A Horde merchant. Haggling with one of your own is half the pleasure and none of the risk.",
		"Goods from Orgrimmar, Thunder Bluff, the Undercity... the Horde trades the way it fights: all together, and a little loudly.",
		"Coin passes from hand to hand and stays in the Horde. That's a bargain I can live with.",
	},
	["faction.horde.other_action.w02.01"] = {
		"A duel between comrades. Good. Better a bruise from a friend than a surprise from the Alliance.",
		"A friendly duel? Good. We sharpen each other now, and the Alliance gets a harder fight later.",
	},
	["race.dwarf.npc_meet.w02.01"] = {
		"A banker. My people trust two things: stone vaults and their own counting. Let's see how this one counts.",
		"Gold kept in someone else's vault. Every dwarf knows the itch: you want to go down and check on it yourself.",
		"A vault and a keeper for it. Good. I'll still count everything twice, as a dwarf should.",
	},
	["race.dwarf.other_action.w02.01"] = {
		"A duel? Gladly. Swing as hard as you like; stone takes a while to notice.",
		"A bout for sport? Aye, I'm in. Just don't go crying to the innkeeper after.",
	},
	["race.gnome.npc_meet.w02.01"] = {
		"Merchandise! I'm only looking. Mostly looking. Is that a spring-loaded hinge?",
		"I'd pay double for anything with gears in it. Best the merchant never finds out.",
		"Let's see the stock. I'll try not to take anything apart until it's paid for.",
	},
	["race.gnome.other_action.w02.01"] = {
		"An invitation! Wonderful. I'll bring the tools; somebody else can bring the muscle.",
		"A group! Excellent. Teamwork is just engineering with people in it.",
	},
	["race.human.npc_meet.w02.01"] = {
		"That look: someone with a problem, hoping I'm the answer. Humans have built whole kingdoms on less.",
		"Another errand on offer. Back home they'd call it neighborliness, and expect a pie in return.",
		"Someone needs a hand. Fine. I never did learn to walk past trouble without stopping.",
	},
	["race.human.other_action.w02.01"] = {
		"A duel, is it? All right. Loser buys the next round, and I'm thirsty already.",
		"A duel? Fair enough. Steel up, and may the better hand win.",
	},
	["race.nightelf.npc_meet.w02.01"] = {
		"An innkeeper, a roof, a bed with legs. I am still learning to sleep under a ceiling instead of leaves.",
		"A room? Gladly. I'll leave the shutters open, if the keeper allows; I sleep better with the sky in sight.",
		"Bread, a bed, a fire someone else keeps. Small comforts, but I have learned to honor them.",
	},
	["race.nightelf.other_action.w02.01"] = {
		"An invitation. I accept. Even the longest road grows shorter in good company.",
		"You ask me to walk with you. Then I will, for as long as our roads agree.",
	},
	["race.orc.npc_meet.w02.01"] = {
		"Show me steel. Not the pretty kind; the kind that's still good after the third fight.",
		"I'll pay a fair price. Name an unfair one and we'll talk about it, loudly.",
		"Leather, steel, rations. An orc buys what keeps the body going, and lets the trinkets be.",
	},
	["race.orc.other_action.w02.01"] = {
		"A war band? Good. Lead or follow, I don't mind, as long as we don't wander.",
		"You want me in your band? Done. Point me at whatever needs breaking.",
	},
	["race.scourge.npc_meet.w02.01"] = {
		"The guard's hand drifts toward the hilt as I pass. Fair. I'd do the same.",
		"A guard watches me a little longer than the others. I nod. It costs me nothing, and it confuses them.",
		"Hands in plain sight, pace unhurried. Guards and the dead get along best that way.",
	},
	["race.scourge.other_action.w02.01"] = {
		"A wave? At me? Well. I'll wave back, slowly, so nothing falls off.",
		"How friendly. Most people greet me with a torch in hand.",
	},
	["race.tauren.npc_meet.w02.01"] = {
		"{other} has knowledge to share. The elders say a wise tauren keeps one ear for the wind and one for the teacher.",
		"A teacher. I lower my head, partly out of respect and partly so my horns don't take the lamp down.",
		"Lessons are like grazing: a little each day, and the herd grows strong.",
	},
	["race.tauren.other_action.w02.01"] = {
		"answers the greeting with a slow, deep nod, the way the people of the plains do.",
		"lowers {g:his|her} great head in a gentle greeting, horns tilted aside so as not to seem a threat.",
	},
	["race.troll.npc_meet.w02.01"] = {
		"Hey, keeper. Something hot, something strong, and a bed that don't wobble. That's all, mon.",
		"Inn food. Not as good as fish on a fire by the water, but I don't complain. Much.",
		"Warm room, smiling keeper. Trolls know a good hut when they find one, mon.",
	},
	["race.troll.other_action.w02.01"] = {
		"A duel? Ha! Come on, then. I'll go easy on you. Maybe.",
		"You want to dance with a troll? Okay. Don't blame the spirits when you lose.",
	},
	["encounter_end.w04.001"] = {
		"{encounter}, done. Somebody check the floor for anything shiny.",
		"That's {encounter} dealt with. Nobody touch anything until we've caught our breath.",
	},
	["encounter_end.w04.002"] = {
		"Everyone down, and everything quiet again. Get up. Count heads. Think.",
		"Down, all of us. The pride hurts worse than the rest. We go again.",
	},
	["race.dwarf.npc_meet.w08.001"] = {
		"Whatever's on tap, and none of the thin stuff. I can tell, you know. A dwarf always can.",
		"Pour me the darkest you've got. If I can see the bottom of the mug, it isn't ale, it's a rumor.",
		"Something dark and heavy, in the biggest mug on the shelf. Road water has been thin as gossip.",
	},
	["race.dwarf.npc_meet.w08.002"] = {
		"Low beams, thick walls, a fire somebody has fed all day. Some inns are nearly a cave, and I mean that as praise.",
		"A bench by the hearth and my back to good stone. Away from Ironforge, that's as near home as the world gets.",
		"Warm, close and a little smoky. Put a forge in the corner and I'd never leave.",
	},
	["race.dwarf.npc_meet.w08.003"] = {
		"Three words and a mug set down hard. This keeper would fit right in at Kharanos.",
		"No smile, no chatter, honest measure. Half the innkeepers under the mountain talk exactly like this, and I like them all.",
	},
	["race.dwarf.npc_meet.w08.004"] = {
		"One of ours behind the bar! Then I needn't explain what I mean by a proper head on the ale.",
		"A dwarf keeping the house. Good. Pour as you'd pour at home, and I'll pay as I'd pay at home.",
		"Ah, a keeper from the mountain. Is there a cask from Dun Morogh hiding back there, by any chance?",
	},
	["race.dwarf.npc_meet.w08.005"] = {
		"First I tap it, then I weigh it in my hand, then I listen. Only after that do I ask the price.",
		"Rivets, seams, the temper of the metal. A merchant can talk all day; it's the goods that have to talk to me.",
		"Let me turn it over. My people can tell a bad weld by the sound it makes when you knock on it.",
	},
	["race.dwarf.npc_meet.w08.006"] = {
		"That might pass for a fair price among humans. Among dwarves it's where the haggling starts.",
		"I'll give you half, and a story about the mines. Trust me, the story's worth the other half.",
	},
	["race.dwarf.npc_meet.w08.007"] = {
		"A gnome's stall. Since Gnomeregan fell, they sell the way they build: fast, clever, and a touch too eager.",
		"Gnomish goods. Half of Ironforge runs on their tinkering these days, and the other half pretends it doesn't.",
		"The gnomes lost their city and kept their wits. I'll buy something, if only to keep a good stall standing.",
	},
	["race.dwarf.npc_meet.w08.008"] = {
		"Lesson time. The old masons say you learn a craft the way you cut stone: slowly, along the grain, never against it.",
		"Lessons. A dwarf learns stubbornly, which is to say once, and for good.",
		"Teach me well and I'll not need telling twice. Slow to learn and slower to forget: that's my people.",
	},
	["race.dwarf.npc_meet.w08.009"] = {
		"Bark away. Dwarves talk over anvils all day long; a loud teacher only sounds like home.",
		"Few words, plenty of hammer. That's how it's taught under the mountain, and it suits me fine.",
	},
	["race.dwarf.npc_meet.w08.010"] = {
		"Up there with nothing under my boots but wind. A dwarf belongs under the mountain, not above it. Still, it's quicker.",
		"Flying. My stomach and I have a pact: it keeps quiet until we land, and I feed it something heavy afterward.",
		"The Wildhammer take to the sky as if it were a hall they owned. The rest of us grip the saddle and count the peaks.",
	},
	["race.dwarf.npc_meet.w08.011"] = {
		"A gryphon, and a dwarf to handle it. Good. Tell the beast I'm heavier than I look and twice as stubborn.",
		"Mountain folk at the roost. Pick me a gryphon with a strong back and a short memory.",
	},
	["race.dwarf.npc_meet.w08.012"] = {
		"I'll be wanting to see the lock. Not open it, mind, just look at it. A dwarf likes to know who did the ironwork.",
		"Keep my things dry, and keep my ore apart from my gold. Those two don't get along.",
	},
	["race.dwarf.npc_meet.w08.013"] = {
		"Speak plainly and I'll answer plainly. A dwarf's word is short, but it carries weight.",
		"Out with it. If it wants strong arms and a thick skull, you've found the right folk.",
		"Trouble, is it? Lay it on the table. We'll look it over the way a miner looks over a crack.",
	},
	["race.dwarf.npc_meet.w08.014"] = {
		"One of ours, asking for help. You don't say no to that. Not if you mean to drink in Ironforge with your head up.",
		"When a dwarf asks for a hand, it's because both of theirs are already full. I'll listen.",
	},
	["race.dwarf.npc_meet.w08.015"] = {
		"Humans and their troubles, always in a hurry. I suppose that's what seventy-odd years does to a people.",
		"Humans ask for help as if the world might end by suppertime. To be fair, now and then it nearly has.",
	},
	["race.dwarf.npc_meet.w08.016"] = {
		"Cheerful, aren't we? Careful, laughter's catching, and I haggle better when I'm grumpy.",
		"Smile all you like. A dwarf can grin and count at the same time; we practice at weddings.",
	},
	["race.dwarf.npc_meet.w08.017"] = {
		"An elven inn. The rooms will be airy and the ale will be... well. Let's be polite about the ale.",
		"Night elf hospitality: soft voices, open windows, and not one decent keg in sight. I'll manage.",
		"Elves are gracious hosts. I only wish they'd build a ceiling a dwarf can't see the sky through.",
	},
	["race.dwarf.npc_meet.w08.018"] = {
		"laughs along with {other} and brings a broad fist down on the counter, hard enough to rattle the mugs.",
		"answers the grin behind the counter with a deep dwarven laugh that fills the room up to the rafters.",
	},
	["race.dwarf.npc_meet.w08.019"] = {
		"This one loves coin nearly as much as a dwarf does. Nearly. We'll see who blinks first.",
		"A merchant with a miser's eyes. Back under the mountain we'd call that a respectable trade.",
		"Sharp prices and a sharper smile. Fine by me: I can squint at a coin as long as any goblin.",
	},
	["race.dwarf.npc_meet.w08.020"] = {
		"No need for all the bowing. I'm a dwarf, not a duke. Tell me what's wrong.",
		"Fine words. I'd sooner have a plain map and a plain answer, if it's all the same to you.",
	},
	["race.dwarf.npc_meet.w08.021"] = {
		"Mountain folk at the vault. Good. Gold sleeps better when someone who understands stone is minding it.",
		"One of ours keeping the strongboxes. That's one less thing to lie awake over.",
	},
	["race.dwarf.npc_meet.w08.022"] = {
		"A teacher from the mountain. Show me how it's done in Ironforge, and I'll not shame it.",
		"Teach me the way they teach at home: hard, plain, and twice over if I'm thick about it.",
	},
	["race.dwarf.other_action.w08.001"] = {
		"A trade, is it? Let me see it in good light. I don't buy ore on its reputation.",
		"Aye, let's deal. Fair weight on both sides, and no sulking after.",
		"Trade? Gladly. Mind, a dwarf weighs coin with the eyes first and the scales second.",
	},
	["race.dwarf.other_action.w08.002"] = {
		"Taken on, then. Once a dwarf shoulders a load, setting it down halfway is a shame there's no living down.",
		"Another job. Good. Idle hands were never welcome under the mountain.",
		"Fine, it's mine now. I'll follow it like a seam of iron: to the end, or until the rock says otherwise.",
	},
	["race.dwarf.other_action.w08.003"] = {
		"answers the gesture by raising an imaginary mug, then drains it to the bottom with great ceremony.",
		"returns the gesture with a broad nod and a thumbs-up that could crack walnuts.",
		"lifts a broad hand in reply, palm out, like a miner signaling all clear down the tunnel.",
	},
	["race.dwarf.other_action.w08.004"] = {
		"A bout between friends! Swing hard, I'll take it as a compliment. Dwarves bruise; they don't crack.",
		"Ha! Done. And when it's over, I'll tell the whole tavern how close it was.",
		"Friends make the best sparring. Mind the knees; I'm built low for a reason.",
	},
	["race.dwarf.other_action.w08.005"] = {
		"Gnomes call, dwarves come. As it should be. You do the thinking, I'll stand in front of it.",
		"Aye, I'll come. Gnomes and dwarves: same mountain, same tram. Lead on.",
	},
	["race.human.npc_meet.w08.001"] = {
		"Stew, bread and a seat near the fire. If the bread's from a proper oven, I'll put in a good word for you in Goldshire.",
		"Whatever's hot, and plenty of it. And if there's a pie hiding in the kitchen, I won't tell a soul.",
		"A bowl of something, a heel of bread, a corner to sit in. Just like any village inn in Elwynn, and that's a compliment.",
	},
	["race.human.npc_meet.w08.002"] = {
		"Every inn I walk into, I listen for the bell of a village square. There's never one, and I listen anyway.",
		"Someone else's hearth, someone else's soup. Humans are good at turning strangers into neighbors; it's how we've lasted.",
	},
	["race.human.npc_meet.w08.003"] = {
		"A dwarf behind the bar. Ask for anything lighter than stout and watch the eyebrows climb.",
		"A dwarven house, dwarven pours. One mug of this and I'll be walking home along both sides of the street.",
		"When the dwarves run the inn, the ale is honest and the beds are short. A fair trade.",
	},
	["race.human.npc_meet.w08.004"] = {
		"Humans haggle in their sleep, you know. Start with the real price and we'll both get home sooner.",
		"Every market day in the kingdom starts with a shout and ends with a handshake. Let's skip to the handshake.",
	},
	["race.human.npc_meet.w08.005"] = {
		"Goods from everywhere, and nothing from Lordaeron. Nobody trades with a kingdom of the dead.",
		"I always look for northern wares on a merchant's table. Lordaeron cloth, Stromgarde steel. There's less of it every year.",
	},
	["race.human.npc_meet.w08.006"] = {
		"Dwarven work? Then I won't argue the price. I'll just weep quietly while I pay it.",
		"If a dwarf made it, it'll outlive me. Given how long humans last, that's a low bar for them and a steep price for me.",
	},
	["race.human.npc_meet.w08.007"] = {
		"Lesson time. Humans haven't got centuries to learn things; we have to learn them now and hold on hard.",
		"Another lesson. My people never had elven patience or dwarven years, only stubbornness and short lives. It's been enough so far.",
		"Learn it today, use it tomorrow. That's the human way, and the world hasn't left us much choice.",
	},
	["race.human.npc_meet.w08.008"] = {
		"Barked orders and no praise, like every drill yard in Stormwind. I'm listening.",
		"Go on. Westfall farmers shout worse at their mules, and the mules turn out fine.",
	},
	["race.human.npc_meet.w08.009"] = {
		"Most humans who ever lived never saw their own land from above. I get to, for a few coins. Strange times.",
		"Fields, roads, rooftops, all of it small enough to hide behind a thumb. From up there the kingdom looks like something you could mend.",
		"A flight costs less than a week on foot and gives that week back. For a human, that's a bargain worth every copper.",
	},
	["race.human.npc_meet.w08.010"] = {
		"You dwarves trust these gryphons with your lives. I'll trust you, and keep my eyes shut.",
		"Gryphon folk from Ironforge way? Then tell me honestly: does the beast like humans, or just put up with us?",
	},
	["race.human.npc_meet.w08.011"] = {
		"The masons who rebuilt Stormwind never saw their wages, people say. I count my deposit twice and keep the receipt.",
		"A bank. Somewhere a noble is borrowing against my savings. That's how kingdoms work, I'm told.",
		"Coin in the vault, coin in the purse. Humans spread their luck around; we've learned not to keep it all in one city.",
	},
	["race.human.npc_meet.w08.012"] = {
		"Trouble? Tell me. There's always a farm that needs mending before the harvest, and it may as well be me who mends it.",
		"Humans don't walk past a neighbor stuck in the mud. Tell me where the mud is.",
		"Say what you need. We're a short-lived lot, my people; we'd rather spend the time helping than wondering whether to.",
	},
	["race.human.npc_meet.w08.013"] = {
		"One of ours, with the tired look I know from every village with too few hands. Of course I'll listen.",
		"A human face asking for help. It could be any farmer, any widow, any reeve back home. That's why I always stop.",
	},
	["race.human.npc_meet.w08.014"] = {
		"Even the elves ask humans for help. They've lived ten of my lifetimes and still need someone to fetch things. Oddly comforting.",
		"Elves measure their troubles in centuries. Mine get measured in weeks. Let's see which kind this is.",
	},
	["race.human.npc_meet.w08.015"] = {
		"A sour face behind the counter. Every human town has one, and every human town would riot if it ever retired.",
		"A scowl, a grunt, a key slid across the counter. Funny how that tastes of home.",
	},
	["race.human.npc_meet.w08.016"] = {
		"You sound like every fair day in Goldshire rolled into one. All right, show me what you've got.",
		"That much cheer usually means a high price. I'm human; I know the trick. I've used it.",
	},
	["race.human.npc_meet.w08.017"] = {
		"A teacher from home. Good. Teach me the way they do in Stormwind: briskly, with a sermon at the end.",
		"One of our own teaching. Then you'll understand when I say I haven't the years to learn this slowly.",
	},
	["race.human.npc_meet.w08.018"] = {
		"rubs {g:his|her} hands at the hearth and asks after the stew, as if every inn on the road were a farmhouse kitchen.",
		"sets a few coins on the counter and asks for the news first and the room second, the way human travelers do.",
	},
	["race.human.npc_meet.w08.019"] = {
		"All this ceremony. They talk like a courtier at Bolvar's table, and I'd wager the job is still a sack of wolf pelts.",
		"Such careful words. In Stormwind, people only talk like that when they want something they can't pay for.",
	},
	["race.human.npc_meet.w08.020"] = {
		"Dwarves minding the vaults. My coin has never been safer, or more thoroughly judged.",
		"Dwarven bankers count the way they mine: down to the last flake. I almost feel rich.",
	},
	["race.human.npc_meet.w08.021"] = {
		"You've the look of someone holding a line with nobody beside them. Humans hold lines; it's what we do. Let me take a share.",
		"Duty weighs more when nobody's watching. I know the weight. Tell me what needs doing.",
		"Stormwind was rebuilt, they say, by people who kept working after the pay stopped. I can manage one errand for someone like you.",
	},
	["race.human.npc_meet.w08.022"] = {
		"Kindness at an inn always catches me off guard. Humans have had a hard few decades; we forget how it sounds.",
		"A warm word, freely given. Lordaeron's refugees would have wept for less. I nearly do.",
	},
	["race.human.npc_meet.w08.023"] = {
		"Put it somewhere safe. Safer than Westfall, anyway, which isn't asking much these days.",
		"Mind it well. A human saves for a farm, a roof and a quiet old age. Mostly the roof.",
	},
	["race.human.other_action.w08.001"] = {
		"A company? I'm in. Humans built a kingdom by saying yes to strangers on the road.",
		"Count me in. I've only the one life; may as well spend some of it in good company.",
		"Gladly. Nobody should turn down a spare pair of hands, or the chance to be one.",
	},
	["race.human.other_action.w08.002"] = {
		"A small gesture from a passerby. Like a nod across the square on market day: it costs nothing and settles something.",
		"Somebody spared me a gesture. After years of refugees and bad news, the kingdom's people learned to treasure small courtesies.",
		"A greeting out of nowhere. Humans need these more than we let on.",
	},
	["race.human.other_action.w08.003"] = {
		"Another promise made. A human life is mostly made of these, kept or broken. I'd like mine kept.",
		"One more task. Behind it there's a farm, a family, a frightened village. There usually is.",
		"Taken. My people don't get long; I'd rather be remembered for the errands I finished than the ones I meant to.",
	},
	["race.human.other_action.w08.004"] = {
		"Finally. Let's settle it properly, the way they did at the old tourneys of Lordaeron.",
		"Accepted. I've been looking forward to this for longer than I'd ever tell you.",
		"At last. No hard feelings, and no mercy either.",
	},
	["race.human.other_action.w08.005"] = {
		"A dwarf wants me along? Then I'm in, and afterward I'll try to keep up with the drinking. Try.",
		"Gladly. With a dwarf in front, I'll finally know what it's like to have a wall that talks back.",
	},
	["race.nightelf.npc_meet.w08.001"] = {
		"An inn. The Sentinels taught my people to rest lightly and wake at the first wrong sound. I will rest here the same way, and thank the walls.",
		"A room with a door that locks. A strange comfort. In the forests of my people, the trees were the only walls anyone needed.",
		"Ale and a stew pot. My people once ate what the forest gave, by the light of the moon; I am used to plates by now, if not to the noise around them.",
	},
	["race.nightelf.npc_meet.w08.002"] = {
		"A quiet room, far from the stairs, if you have one. Ears like mine hear every boot on every step.",
		"Something with herbs in it, please, and water rather than ale. My people have a long habit of clear heads.",
	},
	["race.nightelf.npc_meet.w08.003"] = {
		"Few words from {other}, and none of them wasted. The Sentinels would approve. I find that I do, too.",
		"A curt keeper. After the endless courtesies of Darnassus, it is almost restful.",
	},
	["race.nightelf.npc_meet.w08.004"] = {
		"One of my own keeps this inn. We exchange the hushed greeting of Teldrassil, and all at once the room is less loud.",
		"{other} is one of my people, and pours without asking. We share the same thirst for quiet.",
	},
	["race.nightelf.npc_meet.w08.005"] = {
		"My people had ten thousand years to learn patience, and not once did they learn to haggle.",
		"Coins changing hands so quickly. Among my people a trade was a slow courtesy, full of long silences; here it is over before I have finished my bow.",
		"I take my time over the goods. The merchant shifts from foot to foot; to a night elf, this is barely a glance.",
	},
	["race.nightelf.npc_meet.w08.006"] = {
		"Show me what was made with care. I can wait for the good things; waiting is what my people do best.",
		"Thread, oil, a good knife. And nothing that rattles or shines; night elves prefer to pass unseen.",
		"Herbs from the deep forest, if you have any. If not, I will take your plainest bread and miss the trees a little.",
	},
	["race.nightelf.npc_meet.w08.007"] = {
		"A smile quick and polished as a coin. My people have learned to mistrust anything that ripens that fast.",
		"{other} quotes a price meant for someone who will forget it within the year. I will remember it for a very long time, so I offer less.",
	},
	["race.nightelf.npc_meet.w08.008"] = {
		"A dwarf merchant, loud and honest. When the Alliance brought us together my people found the dwarves strange; the more I know them, the more restful I find them.",
		"{other} pounds the counter to make a point. Dwarves treat silence as a hole to be filled; I treat it as a guest. We manage.",
	},
	["race.nightelf.npc_meet.w08.009"] = {
		"A human merchant, talking fast because life is short. I try to listen fast too; it is only courteous.",
		"{other} has already sold me something, thanked me and is looking past me to the next customer. Humans live their whole lives at this speed.",
	},
	["race.nightelf.npc_meet.w08.010"] = {
		"Among my people even the eldest priestesses still take lessons. There is no age at which one stops being a student.",
		"Learning from {other}. The Sentinels say the arrow that thinks it knows the way is the one that misses.",
	},
	["race.nightelf.npc_meet.w08.011"] = {
		"I am listening. Speak as slowly as you like; my people have never once complained of that.",
		"Show me again, please. I would rather learn it well than soon; my people once had all the years in the world, and the habit has stayed.",
	},
	["race.nightelf.npc_meet.w08.012"] = {
		"A flight master, and winged mounts that smell of the high wind. My people have always asked the beasts first and their keepers second; old manners, but they serve.",
		"Winged mounts once more. I prefer the slow roads of the forest, but Kalimdor is wide and the Eastern Kingdoms wider still.",
	},
	["race.nightelf.npc_meet.w08.013"] = {
		"As long as there is a forest at the other end, any forest, I will find my way from there.",
		"Fly me low over the trees, if the beast allows. I like to watch the canopy breathe.",
	},
	["race.nightelf.npc_meet.w08.014"] = {
		"A banker and a vault. Night elves never trusted coin much: gold does not grow, and it remembers nothing.",
		"A banker. Strange, to hand what I own into a stranger's keeping. Then again, my people have trusted whole forests to the Sentinels, and the forests are still there.",
	},
	["race.nightelf.npc_meet.w08.015"] = {
		"Someone in trouble. My people kept to their forests for ten thousand years and left the world's troubles to others. I would rather not turn away again.",
		"{other} has a task and hopeful eyes. The priestesses teach that Elune's light falls on whoever stops to help. I will stop.",
		"A request, plainly made. The forests of my people were always kept by those who answered such things. I will answer.",
	},
	["race.nightelf.npc_meet.w08.016"] = {
		"Tell me what troubles you, and leave nothing out. A night elf has never been short of time for a whole story.",
		"Speak. I will listen the way the forest listens: to all of it, and without interrupting.",
	},
	["race.nightelf.npc_meet.w08.017"] = {
		"A guard of the Alliance. Whoever they are, they have the stillness of a Sentinel on a long watch. I give them the nod we give at the forest's edge.",
		"Alliance colors at the post. Once the world was wide and empty for my people. Now it has friends on its roads, and some of them carry spears for us.",
		"A guard of our side, spear upright. I feel my own shoulders straighten to match: an old habit of my people.",
	},
	["race.nightelf.npc_meet.w08.018"] = {
		"A guard of the Horde. Ashenvale bleeds under their axes, the Sentinels say. I keep my face still and my hands in plain sight.",
		"A Horde guard has marked my ears from afar. My people were made to vanish into shadow; today I will have to make do with walking calmly.",
		"The guard of the Horde marks me and does not look away. Fine. In ten thousand years my people have been watched by worse things.",
	},
	["race.nightelf.npc_meet.w08.019"] = {
		"goes still as a nightsaber in tall grass under the Horde guard's stare, ears tipped back, and lets the moment pass.",
		"keeps to the edge of the hostile guard's sight, moving with the soundless patience of {g:his|her} people.",
	},
	["race.nightelf.npc_meet.w08.020"] = {
		"{other} talks in riddles. The priestesses of Elune answer like this too, when they would rather the moon spoke for them.",
		"Riddles. My people grew up among dreams and omens; one more veiled answer does not trouble me.",
	},
	["race.nightelf.npc_meet.w08.021"] = {
		"Grief, there behind the eyes of {other}. My people have worn that look since the World Tree gave up its blessing at Hyjal. I know better than to hurry it.",
		"A heavy heart. Elune's light does not argue with the dark; it simply stays. For a while, I can do the same.",
	},
	["race.nightelf.npc_meet.w08.022"] = {
		"answers the cheerful greeting with the faint, slow smile of {g:his|her} people, the kind that lasts longer than it first appears.",
		"inclines {g:his|her} head, long ears lifting a little at the warmth in that voice.",
	},
	["race.nightelf.npc_meet.w08.023"] = {
		"Tyrande Whisperwind. The High Priestess has stood between my people and the dark for longer than most kingdoms have stood at all. I bow, and mean it.",
		"The High Priestess. Some say Elune smiles a little brighter near her. Standing here, I would not argue.",
		"Tyrande herself. My people have long memories, and every one of mine seems to have gathered here at once.",
	},
	["race.nightelf.other_action.w08.001"] = {
		"Company? I will walk with you. I make no noise, and I see well where others do not.",
		"Gladly. My people were never meant to wander alone; we only grew used to it.",
		"Count me in. Tell me where to stand, and I will be there before you notice.",
	},
	["race.nightelf.other_action.w08.002"] = {
		"A duel? Very well. Do not take it personally if you lose sight of me.",
		"Accepted. The Sentinels say one fair contest teaches more than a year of drills.",
		"A practice bout? I accept. Watch my feet; my people taught them how to lie.",
	},
	["race.nightelf.other_action.w08.003"] = {
		"Elune-adore, traveler. Walk softly.",
		"And to you. May your road be quiet and the shade kind.",
	},
	["race.nightelf.other_action.w08.004"] = {
		"A trade, then. Fairly, and slowly; my people dislike a bargain that is over before it is understood.",
		"Let us exchange. I will check everything twice; it is not mistrust, only the habit of a long-lived people.",
	},
	["race.nightelf.other_action.w08.005"] = {
		"A task accepted. The priestesses say every promise is made under the moon, whether or not anyone looks up.",
		"Another promise to keep. My people once had all the time in the world for keeping them. Now I would rather not waste any.",
	},
	["race.nightelf.other_action.w08.006"] = {
		"You and I? Good. My people fight best unseen; I will try to play fair.",
		"A friendly bout, then. The loser carries the packs to the next camp.",
	},
	["race.tauren.npc_meet.w08.001"] = {
		"A roof, and someone who keeps it. My people once folded their homes onto a kodo's back every season; a house that stays put still feels like a guest that never leaves.",
		"Walls that do not move. Among the plains clans, home went wherever the herd went. I will try to sleep in one that has stopped walking.",
		"Four walls and a door. In Mulgore I would know which way the wind was coming from; in here I will have to trust the keeper.",
	},
	["race.tauren.npc_meet.w08.002"] = {
		"Whatever is in the big pot, I will have a bowl. A big bowl. You will see why when I sit down.",
		"Feed me as you would feed two travelers. I promise to pay as one and a half.",
	},
	["race.tauren.npc_meet.w08.003"] = {
		"A keeper of few words. Good. On the plains they say the kodo that bellows least pulls longest.",
		"Short words and a nod toward the stairs. The kind of welcome a tauren understands; we were never ones for long speeches at the door.",
	},
	["race.tauren.npc_meet.w08.004"] = {
		"Thank you for the welcome. On the plains a guest is offered water first; I would gladly take that here too.",
		"A warm word at the door. My people would answer it with a gift, but all I carry is dust from the road.",
	},
	["race.tauren.npc_meet.w08.005"] = {
		"One of my own people keeps this hearth. We trade the long, slow nod of the plains, and something in my shoulders lets go.",
		"A tauren behind the counter, far from the grass or near it, it hardly matters. I will eat well, and no one will look twice at my horns.",
	},
	["race.tauren.npc_meet.w08.006"] = {
		"Small wares on a small counter. My hands were made for hides and heavy loads; I pick each trinket up as if it were a bird's egg.",
		"Everything on this counter fits in one of my palms, three at a time. I count my coin slowly, so as not to sweep the stock onto the floor.",
		"A merchant's shelf is a dangerous place for horns. I keep my head still and point with one careful finger.",
	},
	["race.tauren.npc_meet.w08.007"] = {
		"Hides, leather, a good waterskin. Show me what a long walk needs, and leave the shiny things for lighter folk.",
		"I need what keeps a traveler fed and dry. If it is only pretty, it can stay with you.",
		"Good rope, strong thread, salt for meat. The plains taught my people to buy what mends and what keeps.",
	},
	["race.tauren.npc_meet.w08.008"] = {
		"That smile measures my size and doubles the price. I will smile back, and halve it.",
		"{other} looks at me the way a hunter looks at a kodo: a great deal of hide to work with.",
	},
	["race.tauren.npc_meet.w08.009"] = {
		"One of the Forsaken behind the counter. My people spoke for them before the Horde, hoping a cure might be found. Looking at {other}, I still hope it.",
		"A merchant of the Forsaken. The Earth Mother turns no one out of her circle, the elders teach. Easy to say; harder to say to a face like that, and mean it.",
	},
	["race.tauren.npc_meet.w08.010"] = {
		"The elders of my people teach by walking beside you, not by talking at you. I will ask {other} to show me first and explain after.",
		"Some knowledge only comes to those who sit still long enough. I can stay still as a standing stone; ask any plainstrider that ever wandered past me.",
	},
	["race.tauren.npc_meet.w08.011"] = {
		"Teach me as you would teach anyone. Only leave a little more room around me when we practice.",
		"I am eager to learn. If anything breaks while I try, it was not on purpose; we tauren are simply wide.",
	},
	["race.tauren.npc_meet.w08.012"] = {
		"A wind rider, and a keeper who knows its moods. Tauren were never meant for the sky, but the sky does not seem to mind the extra weight.",
		"{other} sizes me up, then the wyvern, then me again. The beast sighs. I pretend not to hear it.",
		"The wyvern shifts its wings as I come near, as if weighing me. We have an understanding, that beast and I: neither of us enjoys the first leap.",
	},
	["race.tauren.npc_meet.w08.013"] = {
		"My hooves prefer the grass, but the road is long. Give me your strongest flier, and feed it well first.",
		"Hooves were made for the ground. Pick the sturdiest beast you have; it will be carrying a whole tauren's worth of trust.",
	},
	["race.tauren.npc_meet.w08.014"] = {
		"A banker. The plains clans kept their wealth on four legs and counted it at the watering hole. Coins in a locked box are a stranger kind of herd.",
		"My people once measured a family's wealth in kodo. I wonder how many coins make one good kodo. More than I have, most likely.",
	},
	["race.tauren.npc_meet.w08.015"] = {
		"Someone with a trouble, looking up at me. Being large means people bring you their heavy things. So be it; I was made to carry.",
		"On the plains a stranger asking for help was given water before a word was spoken. Let us hear what {other} needs.",
		"A tauren does not turn from a call for help; we only take our time to understand it. Go on, {other}.",
	},
	["race.tauren.npc_meet.w08.016"] = {
		"Speak, and take your time. A tauren listens to the end before deciding anything.",
		"Tell me the whole of it. My people follow a trouble the way they follow a track: all the way to where the beast lies down.",
	},
	["race.tauren.npc_meet.w08.017"] = {
		"The elders tell how the Horde's blades helped drive the centaur out of Mulgore. I nod to every guard of the Horde for that, whoever they are.",
		"Horde colors on a watchful post. Before them my people walked the plains without walls. Now there are walls, and it is strange how much safer they feel.",
		"A guard of the Horde, wearing the colors my people chose to stand beside. Chose: that is the word the elders always use.",
	},
	["race.tauren.npc_meet.w08.018"] = {
		"A guard of the Alliance, and I am the largest thing on this road. Hiding is not among my people's gifts. Slow steps, then, and open hands.",
		"Their guard reaches for steel the moment my horns come into sight. I do not blame them. At a distance, a tauren is hard to mistake for a friend.",
	},
	["race.tauren.npc_meet.w08.019"] = {
		"keeps both hands open and low, horns tipped aside, while the guard of the Alliance takes {g:his|her} measure.",
		"slows to a steady walk, hooves loud on the road, and gives the hostile guard no reason to worry but sheer size.",
	},
	["race.tauren.npc_meet.w08.020"] = {
		"Every word from {other} has a second meaning folded inside it. The seers of my people speak like this. I listen for the wind under the words.",
		"Riddles. The seers of Mulgore answer questions the same way, with a question and a long look. Patience, then.",
	},
	["race.tauren.npc_meet.w08.021"] = {
		"answers the cheerful welcome with a rumbling laugh that seems to start somewhere near {g:his|her} hooves.",
		"lets out a long, warm snort of amusement, the plains way of laughing along.",
	},
	["race.tauren.npc_meet.w08.022"] = {
		"A heavy heart behind that face. My people sit beside grief rather than talk at it. I will be quiet a while with {other}.",
		"Some sadness in this one. The elders would offer a pipe and silence. I have only the silence, but it is a good one.",
	},
	["race.tauren.npc_meet.w08.023"] = {
		"Cairne Bloodhoof. Every tauren knows the stories; none of them prepares you for the size of the silence around him.",
		"The High Chieftain. My people walked the plains under his word, and stopped wandering under it too. I lower my horns, slowly.",
		"Before the High Chieftain, even a tauren feels small. It is a good feeling, for once.",
	},
	["race.tauren.other_action.w08.001"] = {
		"A hunting party? Good. Point me at the trail and I will keep pace.",
		"I will join you. A herd moves safer together, and so do travelers.",
		"Count a tauren in. I eat a lot, but I carry more.",
	},
	["race.tauren.other_action.w08.002"] = {
		"And to you, traveler. May your waterskins stay full.",
		"Peace to you as well. May the Earth Mother keep an eye on your road.",
	},
	["race.tauren.other_action.w08.003"] = {
		"A trade, then. On the plains we sealed these with a shared bite of food. I will spare you the meal.",
		"Let us trade fairly. A tauren who cheats at a trade is talked about at every fire from Mulgore to the sea.",
	},
	["race.tauren.other_action.w08.004"] = {
		"A bout? Gladly. Keep your feet planted; I push like a kodo leaning on a fence.",
		"Very well. The calves of my people learn this before they learn to run. Ready when you are.",
		"Wrestle a tauren? You are braver than you look. Come on, then.",
	},
	["race.tauren.other_action.w08.005"] = {
		"A friendly bout? Ha! Whoever ends up in the dust cooks the next meal.",
		"You and me? Good. You mind the horns, and I will mind your pride.",
	},
	["race.tauren.other_action.w08.006"] = {
		"A task given, and taken. My people say a promise is a stake driven into the ground: you can walk away from it, but it stays where you left it.",
		"Another trouble on my shoulders. Fine. They are broad shoulders, and that is what they are for.",
	},
	["race.gnome.npc_meet.w09.001"] = {
		"A room, please, and a stool for the counter. The tall kind of stool. No, taller.",
		"Whatever's hot, and a cushion to sit on so I can see over the bowl. Thank you!",
		"One bed, one meal, one small gnome. You'll hardly notice I'm here, until I start asking how your chimney draws.",
	},
	["race.gnome.npc_meet.w09.002"] = {
		"A warm common room full of noise. The old tinkers say the inns of Gnomeregan hummed with machinery instead of songs. I miss a hum I barely remember. The songs are nice too.",
		"A bed upstairs, and not a gnome-sized door anywhere. Since we lost the city, every bed I sleep in was built for someone else.",
	},
	["race.gnome.npc_meet.w09.003"] = {
		"Dwarven hospitality! Your folk took us in when the city fell, and I've yet to stand a single round in return. Let me start now.",
		"Mountain folk at the tap. Then it's a proper pour, and I'll need both hands for the mug.",
	},
	["race.gnome.npc_meet.w09.004"] = {
		"Could you bring that down from the top shelf? Not the price. Well, that too, if you're offering.",
		"I'll take it. Do you have one about a third the size? No? Then I'll take it and adjust.",
		"Fair price. I checked it on the way in; I check everything on the way in. Habit of a small person in a big world.",
	},
	["race.gnome.npc_meet.w09.005"] = {
		"Look at the hinge on that chest. Somebody cared about it. Gnomes notice these things, whether or not we tinker ourselves.",
		"The merchant leans over the counter to find me. I wave. It happens a dozen times a week; I've learned to wave in advance.",
	},
	["race.gnome.npc_meet.w09.006"] = {
		"That price has a spring in it: it jumped the moment I walked up. Clever. I'd admire it more if I weren't the one paying.",
		"A merchant who loves coin. Fine. I love a good argument, and my head is full of numbers.",
	},
	["race.gnome.npc_meet.w09.007"] = {
		"Hello up there! Yes, down here. All quiet on your watch?",
		"Nice armor. Good straps. Whoever made those buckles knew what they were doing.",
		"Keep up the good work. Gnomes rest easier knowing tall people with spears are awake.",
	},
	["race.gnome.npc_meet.w09.008"] = {
		"A Horde guard. I am very small, and very quiet, and very much hoping that's enough.",
		"Horde steel, and me in plain view. Gnomes have a knack for slipping loose from any grip. I may need it presently.",
	},
	["race.gnome.npc_meet.w09.009"] = {
		"A dwarven guard. When the city fell, it was dwarves on the gates of Ironforge who let us in. I give this one a proper nod.",
		"Broad shoulders, a hammer like a door knocker, and the patience of the mountain. With that guard at my back I feel safer than behind most walls.",
	},
	["race.gnome.npc_meet.w09.010"] = {
		"The flying beast eyes me like a snack with a saddle. I tell it firmly that I'm a passenger. It does not look convinced.",
		"Is there a weight limit? No? Then I'll bring the extra pack and not mention it.",
		"Lovely beast. Strap me in twice, please. I'm light enough that a good gust has opinions about me.",
	},
	["race.gnome.npc_meet.w09.011"] = {
		"Wildhammer or Bronzebeard, mountain folk with a gryphon know the sky. Tell the beast I'm cargo, not lunch.",
		"Mountain folk at the roost. Good. Strong straps, firm knots, and no Wildhammer acrobatics on my account, please.",
	},
	["race.gnome.npc_meet.w09.012"] = {
		"Teach me everything. Then tell me why it works. Then tell me why the why works. I'll wait.",
		"Lesson time! I'll take notes. Small ones, in very small handwriting, on the back of my hand if I must.",
		"Show me once slowly, once at speed, and once upside down, if that's an option.",
	},
	["race.gnome.npc_meet.w09.013"] = {
		"A stern teacher. Fine. Someone in Tinker Town told me the old masters of Gnomeregan shouted at their apprentices too; it meant they cared about the result.",
		"Short manners, few words, no praise. I'll supply the praise myself: well done, me. Now again.",
	},
	["race.gnome.npc_meet.w09.014"] = {
		"A deposit, please. Mind that box: it's labeled, cross-labeled, and there's a note explaining the labels.",
		"Keep these safe. Everything our people left in Gnomeregan is down there with the troggs. This lot, I'd like to keep.",
		"The vault's sturdy? Dwarven work? Then I'll stop fretting. Mostly. I'll fret quietly.",
	},
	["race.gnome.npc_meet.w09.015"] = {
		"A problem! Lovely. Describe it in detail, please, and leave nothing out, especially the parts that sound silly.",
		"Need a hand? I've got two small ones and a very large head. Pick whichever you'd like.",
		"Tell me what's broken. People, beasts, bandits, plumbing: it's all just a puzzle with teeth.",
	},
	["race.gnome.npc_meet.w09.016"] = {
		"One of my own people, asking for help. Since the city fell, we've all been asking each other. And all answering.",
		"A fellow gnome with a problem. The exiles of Tinker Town look after their own; I don't even need to hear the details first.",
	},
	["race.gnome.npc_meet.w09.017"] = {
		"Humans always ask for help as if the sky were falling. Having lost a whole city, I take them seriously.",
		"A worried human face. Their people lost Lordaeron; mine lost Gnomeregan. Our faces understand each other.",
	},
	["race.gnome.npc_meet.w09.018"] = {
		"High Tinker Mekkatorque. He led our people out when the city was lost, and he still talks of taking it back. I'd follow him down the tunnels tomorrow.",
		"The High Tinker himself. Small, like all of us, and carrying the weight of a whole people. I stand a little straighter.",
		"Gelbin Mekkatorque. Our leader in exile, scribbling plans for the day we go home. I hope I'm there to see it.",
	},
	["race.gnome.npc_meet.w09.019"] = {
		"climbs onto the nearest stool without waiting to be asked and waits, patient and smiling, for {other} to notice.",
		"taps the counter twice from below, then once more, a little louder, until the innkeeper looks down.",
	},
	["race.gnome.npc_meet.w09.020"] = {
		"A gnome's stall! Prices in neat columns, a ledger for the ledger. I feel at home already.",
		"One of ours selling. We'll haggle like proper gnomes: fast, and with diagrams.",
	},
	["race.gnome.npc_meet.w09.021"] = {
		"One of my people teaching! Then we can skip the slow explanation and go straight to the interesting mistakes.",
		"One of our own at the lectern. Let's do it the Gnomeregan way: quick, curious, and with a small explosion only if necessary.",
	},
	["race.gnome.npc_meet.w09.022"] = {
		"Oh, you're cheerful too! Excellent. Between the two of us we could power a small lamp.",
		"A good mood! Catching, isn't it? Gnomes run on it, mostly. That and tea.",
	},
	["race.gnome.other_action.w09.001"] = {
		"A party! Splendid. Put me where I can see everything and nobody will step on me.",
		"Count me in. Small, quick, and full of suggestions, most of them good.",
		"Yes! I'll bring my wits, and I'll keep them pointed at whatever's trying to bite us.",
	},
	["race.gnome.other_action.w09.002"] = {
		"A friendly bout! Excellent. Rules: no aiming for the hat.",
		"You and me? Ha! Fine. Whoever wins buys the tea, whoever loses explains how it happened.",
		"Gladly! I've a new trick to try, and who better to try it on than a friend?",
	},
	["race.gnome.other_action.w09.003"] = {
		"waves back with both hands, bouncing a little on {g:his|her} toes to be seen.",
		"returns the gesture with a sweeping bow that very nearly reaches the ground, which for a gnome is not far.",
		"answers with a bright grin and a quick salute, two fingers to the brow.",
	},
	["race.gnome.other_action.w09.004"] = {
		"A trade? Wonderful. I'll draw up a list. A short list. Medium. Don't worry about the list.",
		"Let's swap. Everything I'm offering has been inspected, tested, and labeled in very tiny letters.",
	},
	["race.gnome.other_action.w09.005"] = {
		"A new task! Problem received, parameters noted, solution pending. Lovely.",
		"Another job. Every errand I finish is one step closer to the day we take the city back. That's how I count them, anyway.",
	},
	["race.orc.npc_meet.w09.001"] = {
		"Those who lived through the internment camps would call this luxury. I try to remember that when the stew is thin.",
		"Road dust in my boots, and someone at the counter waving me to a bench. Simple things. Orcs went without them long enough.",
	},
	["race.orc.npc_meet.w09.002"] = {
		"Meat, bones and all. I'll leave the bones. Most of them.",
		"Your thickest stew, keeper. Thick enough to stand a spoon in, the way they make it in Razor Hill.",
		"Fill the bowl and don't be shy with the pepper. Durotar trains the tongue as well as the hide.",
	},
	["race.orc.npc_meet.w09.003"] = {
		"A grunt and a bowl shoved across the counter. Finally, someone who speaks orc.",
		"No smile, no chatter, a fair measure. Some call bluntness a fault. Some of us call it honesty.",
	},
	["race.orc.npc_meet.w09.004"] = {
		"A warm welcome. Orcs were not always given those. The old ones remember doors that shut when a green face came near.",
		"Kind words from {other}. I nod and keep my voice low; kindness deserves a quiet answer.",
	},
	["race.orc.npc_meet.w09.005"] = {
		"A troll keeps this hearth. Orc and Darkspear have sat at the same fires since Thrall took the tribe in. Pass the fish.",
		"Tusks taller than mine behind the counter. The trolls of Sen'jin keep their word to the Horde and, it seems, a good pot.",
	},
	["race.orc.npc_meet.w09.006"] = {
		"I test the edge with my thumb before I look at the price. The old warriors say a price is forgotten long before an edge.",
		"Orc hands are rough on goods. I pick things up gently, and the merchant still flinches.",
	},
	["race.orc.npc_meet.w09.007"] = {
		"I need water carried and meat kept. Everything else is decoration.",
		"What lasts? Show me what lasts. That, I'll pay for.",
		"Straight answer, straight price. That's how orcs trade, and I'm in no mood to learn another way.",
	},
	["race.orc.npc_meet.w09.008"] = {
		"{other} sees green skin and adds a coin for the trouble. I see the coin and add a stare. We'll meet in the middle.",
		"That smile is sharpening the price. Lucky for me, orcs are better at staring than at counting.",
	},
	["race.orc.npc_meet.w09.009"] = {
		"Goods from the Forsaken. The Warchief let them into the Horde for reasons of his own. I count my change and keep my thoughts behind my tusks.",
		"Cold fingers, careful prices. The dead of Lordaeron fight for the Horde now. I'll trust the trade; trusting the trader takes longer.",
	},
	["race.orc.npc_meet.w09.010"] = {
		"Horns behind the counter. Cairne's people offered the orcs friendship when the Horde was new to these shores. I pay without haggling.",
		"Big hands, slow words, honest weight on the scale. Orcs could learn a thing or two from the tauren. I'd never say it to an orc.",
	},
	["race.orc.npc_meet.w09.011"] = {
		"{other} has something to teach. Thrall himself went back to learn from the shamans; there's no shame in being taught.",
		"I'll learn it properly. The old blademasters say a hasty student pays for every lesson twice.",
	},
	["race.orc.npc_meet.w09.012"] = {
		"Show me once. If I get it wrong, show me harder.",
		"Teach me like you'd teach a raw recruit. I don't need it gentle; I need it right.",
	},
	["race.orc.npc_meet.w09.013"] = {
		"A Horde flier, all teeth and leather wings. Nothing about it is gentle, and I respect that in a beast.",
		"{other} straps me in and slaps the beast's flank. Orcs were made to run on red earth, but I've come to like the long view.",
	},
	["race.orc.npc_meet.w09.014"] = {
		"The strongest beast you have. I'm heavier than I look, and I look heavy.",
		"Straight flight, soft landing, if you can arrange it. My stomach is braver on the ground.",
	},
	["race.orc.npc_meet.w09.015"] = {
		"A vault for coins. Orcs once carried everything they owned on their backs. A lighter back is a strange kind of freedom.",
		"Gold behind a locked door. I'd rather keep it in a pouch on my belt, where I can feel it. The old ones say walls make orcs soft.",
	},
	["race.orc.npc_meet.w09.016"] = {
		"A request for help. In the Horde, nobody should have to ask twice. I'll hear {other} out.",
		"Someone needs a strong arm. Strength that serves no one is only noise: the old warriors say so, and they were right about most things.",
	},
	["race.orc.npc_meet.w09.017"] = {
		"Speak plainly. What needs doing, and where is it?",
		"Tell me who's causing the trouble. I'll have a word with them. A short one.",
		"Point me at it. I'll ask my questions on the way.",
	},
	["race.orc.npc_meet.w09.018"] = {
		"A guard of the Horde at the post, planted like the ground owes them something. Lok'tar, I think, and walk on.",
		"Horde colors on the watch. The old ones remember when the only guards orcs knew stood outside the camps, facing in.",
	},
	["race.orc.npc_meet.w09.019"] = {
		"Good watch. The Horde stands because someone always stands at the gate.",
		"Hold the line. Orcs know what a wall of the Horde is worth.",
	},
	["race.orc.npc_meet.w09.020"] = {
		"An Alliance guard. The old ones would see a jailer. I try to see only a soldier. It takes effort.",
		"Steel comes half out of the guard's sheath as I approach. I keep my hands in sight. Not fear; I simply have no wish to start anything here.",
	},
	["race.orc.npc_meet.w09.021"] = {
		"walks past the Alliance guard at an even pace, jaw set, tusks forward, giving neither ground nor offense.",
		"lets {g:his|her} hands hang open and loose, and meets the guard's stare with the flat patience of an orc who has been stared at before.",
	},
	["race.orc.npc_meet.w09.022"] = {
		"Thrall. The Warchief who broke the camps open and gave the orcs back their spirits. Near him every orc stands taller, and I with them.",
		"The son of Durotan, they call him, though he grew up a slave. I bow my head. The orcs are free because he refused to stay one.",
	},
	["race.orc.npc_meet.w09.023"] = {
		"{other} speaks like the old shamans: half to me, half to something over my shoulder. I don't turn around.",
		"Riddles. Orcs prefer plain speech, but the spirits never did. I listen twice as hard.",
	},
	["race.orc.npc_meet.w09.024"] = {
		"lets out a short bark of a laugh, almost against {g:his|her} will, and the tusks show in something close to a grin.",
		"answers the good cheer with a heavy clap on the nearest shoulder, the orcish way of saying the joke landed.",
	},
	["race.orc.npc_meet.w09.025"] = {
		"{other} carries grief like a heavy pack. The old ones in the camps carried theirs for years. I say nothing foolish and stay close.",
		"Sorrow on that face. Orcs don't talk grief away. You sit beside it, sharpen something, and wait.",
	},
	["race.orc.other_action.w09.001"] = {
		"Joining up? Good. Tell me who we're angry at.",
		"Good. A pack hunts better than a lone wolf, and eats better too.",
		"Count me in. I'll walk at the front; I like to see it coming.",
	},
	["race.orc.other_action.w09.002"] = {
		"And to you. A greeting is honored, whoever gives it.",
		"Ha. I see you. That's how orcs say hello, when they're in a good mood.",
	},
	["race.orc.other_action.w09.003"] = {
		"Let's trade. Name it plain; I'll answer plain.",
		"An honest swap, then. Orcs remember a fair trader, and a cheat even longer.",
		"Fine. Let's swap, and keep the talk short.",
	},
	["race.orc.other_action.w09.004"] = {
		"A friendly fight? Good. Hit hard; I'll know you meant it kindly.",
		"You and me? Ha! Whoever goes down buys the grog.",
	},
	["race.orc.other_action.w09.005"] = {
		"You. Good. I've been waiting for this, and so have my fists.",
		"A rival's challenge. I accept, and I won't hold back. You'd be insulted if I did.",
	},
	["race.orc.other_action.w09.006"] = {
		"A task taken. A word given to someone in need is a debt, and orcs pay their debts.",
		"Another trouble to break. Good. Idle hands make an orc restless.",
	},
	["race.scourge.npc_meet.w09.001"] = {
		"Just a chair in the corner, please. I won't be eating, and I promise not to lower the mood any further than I already have.",
		"Don't trouble with fresh sheets. I lie down out of habit more than need, and I don't toss and turn.",
		"Something to drink? Pour whatever is cheapest. I can't taste the difference, and you can keep the good cask for the living.",
	},
	["race.scourge.npc_meet.w09.002"] = {
		"The hearth is the first thing I look for in an inn. Not for the warmth; I feel little of it. For the way the living gather around it.",
		"Mugs, steam off the stew, someone laughing too loud. I was alive once and sat at tables like these. The details won't come back, only the shape.",
	},
	["race.scourge.npc_meet.w09.003"] = {
		"{other} doesn't flinch and doesn't smile. Just sets down the mug and moves on. Honestly, the best welcome I've had all week.",
		"Few words, short manners, not the least bit impressed. No warding sign, no shriek. I could almost grow fond of this place.",
	},
	["race.scourge.npc_meet.w09.004"] = {
		"Yes, I'm buying. No, I won't be touching the fruit. Let's both be relieved about that.",
		"My coin spends like anyone's. It's been in a crypt, not a sewer. Mostly.",
		"You can stop gripping the counter like that. I'm here to shop, not to haunt your stall.",
	},
	["race.scourge.npc_meet.w09.005"] = {
		"Bread, cheese, dried meat. I buy some anyway. Chewing gives the jaw something to do, and the stitches seem to like the exercise.",
		"Thread, needles, a little embalming salt if the merchant has any. The shopping list of the dead is short and very practical.",
		"The merchant names a price and adds a little for the smell, I suspect. I let it pass. Arguing tires the living far more than it tires me.",
	},
	["race.scourge.npc_meet.w09.006"] = {
		"{other} is cheerful with me. Genuinely cheerful. Either business is very slow or this one has a stronger stomach than most.",
		"A smile, across the counter, aimed at a corpse. I don't quite know what to do with my face. It doesn't do much these days anyway.",
	},
	["race.scourge.npc_meet.w09.007"] = {
		"The guard's eyes go to my jaw, then my hands, then back to the jaw. Everyone checks the jaw.",
		"A guard sizes me up. I know that look well: not hatred, just a quiet tally of what would happen if I suddenly lost my mind.",
	},
	["race.scourge.npc_meet.w09.008"] = {
		"At ease. I'm on your side, whatever my face suggests.",
		"Same banner, guard. The Horde took us in; you may as well stop gripping that weapon.",
		"Easy. The Dark Lady struck the same pact your Warchief did. I'm in it too, rot and all.",
	},
	["race.scourge.npc_meet.w09.009"] = {
		"An Alliance guard. Some of us once stood at posts like that under Lordaeron's colors. Now we're what those posts were built against.",
		"Alliance steel, watching me. Lordaeron's children and its dead, eyeing each other across a road. Neither side likes the view.",
	},
	["race.scourge.npc_meet.w09.010"] = {
		"The flying beast sniffs at me longer than it should. Then it lowers its head. Whatever it smelled, it has decided I'm cargo.",
		"If I fall off, I'll likely survive the landing. In pieces, perhaps. The dead are very relaxed about heights.",
		"The flight master looks at me, then at the mount, then at the straps. Yes. Tie them tight. I'd rather not lose an arm over the hills.",
	},
	["race.scourge.npc_meet.w09.011"] = {
		"One of ours minding the roost. Good. Give me a mount that doesn't care what I smell like.",
		"Ah, someone of our own stitching. Pick me a steady mount, and we'll skip the part where everyone holds their nose.",
	},
	["race.scourge.npc_meet.w09.012"] = {
		"Lessons, again. The mind still learns, even if the flesh no longer grows. That was the first good news I had after I rose.",
		"Teach me. I've nothing but time and a will of my own, and I mean to spend both on getting better at this.",
		"Training. Strange, to improve a body that is slowly coming apart. Then again, it was the mind the Lich King wanted, and he won't have it.",
	},
	["race.scourge.npc_meet.w09.013"] = {
		"Shout if you like. I spent long enough with a voice in my head giving orders. Yours, at least, I can argue with.",
		"A hard teacher? Good. Pain barely reaches me anyway; you'll have to try patience instead.",
	},
	["race.scourge.npc_meet.w09.014"] = {
		"Store it well. I'm in no hurry to come back for it. I'm in no hurry for anything.",
		"Valuables to deposit. Before you ask: no, none of them came out of a grave. Recently.",
		"Keep these safe. It's not that I fear losing them. I just find it comforting that something of mine stays in one piece.",
	},
	["race.scourge.npc_meet.w09.015"] = {
		"{other} asks for help, and shudders only a little. Fair enough. I'll take the job; working for the living is how the dead earn a place among them.",
		"Someone needs a task done and chose the corpse in the room. Desperation, perhaps. Perhaps trust. I'll act as if it's trust.",
		"A request, freely made, and I'm free to refuse it. That freedom is still new enough to taste sweet. I'll say yes anyway.",
	},
	["race.scourge.npc_meet.w09.016"] = {
		"One of ours. No need for the speech about duty to the Dark Lady; just tell me where.",
		"We're both Forsaken, so skip the polite distance. What needs doing, and who needs burying?",
	},
	["race.scourge.npc_meet.w09.017"] = {
		"A tauren asking the Forsaken for help, and meaning it. The tauren spoke for us when the Horde might have turned us away. I don't forget that.",
		"Those big, patient eyes, looking at me without disgust. I'd do the task for that alone.",
	},
	["race.scourge.npc_meet.w09.018"] = {
		"Behind the counter, one green hand pours and the other stays near the cleaver. I'd be insulted, if it weren't such sensible service.",
		"Orcs keep this house. Honor and plain speech, they say. The plain speech, at least, I can read on that face: don't start anything.",
	},
	["race.scourge.npc_meet.w09.019"] = {
		"Make your sign against the dead if you need to. Then sell me something. Both can happen at once.",
		"Trolls and Forsaken, trading. Nobody trusts anybody, everybody's polite. The Horde in miniature.",
	},
	["race.scourge.npc_meet.w09.020"] = {
		"The Dark Lady. She broke the chain in our heads and asked only that we keep our wills sharp. I bow, as low as these old joints allow.",
		"Lady Sylvanas. Freedom has a face, and it is this pale and this cold. No one else would have dragged us out of the Lich King's grip.",
		"The Banshee Queen herself. Some of us follow her from love, some from fear, some from plain gratitude. I stand here and can't tell which is mine.",
	},
	["race.scourge.npc_meet.w09.021"] = {
		"sets the coins on the counter one at a time, slowly, so the merchant need not touch a dead hand.",
		"keeps {g:his|her} fingers clear of the merchant's and slides the payment across with the tips of the nails.",
	},
	["race.scourge.npc_meet.w09.022"] = {
		"Sorrow, plain on {other}'s face. The living grieve with their whole body. I remember that much, and envy it a little.",
		"{other} looks the way the ruins of Lordaeron look to me: something broken, still standing. I keep my voice low.",
	},
	["race.scourge.other_action.w09.001"] = {
		"Count me in. If something has to walk in first, let it be the one who's already dead.",
		"An invitation. I'll come, and I'll try not to drip on anyone.",
		"Fine. I fight well and complain little. The complaining stopped about when the breathing did.",
	},
	["race.scourge.other_action.w09.002"] = {
		"A duel? Very well. Don't be alarmed if something comes loose. It isn't a forfeit.",
		"Accepted. Pain reaches me late and lightly. You'll have to be convincing.",
		"A bout with the dead. Bold choice. I like bold.",
	},
	["race.scourge.other_action.w09.003"] = {
		"answers the gesture with a slow nod, careful of the jaw.",
		"lifts a gray hand in reply, the stitches at the wrist creaking faintly.",
		"returns the greeting with a stiff little bow, the kind that joints like these still allow.",
	},
	["race.scourge.other_action.w09.004"] = {
		"A trade? Fine. Everything I hand over has been cleaned. More or less.",
		"Let's deal. They say the dead drive hard bargains. We've little else to spend our wanting on.",
	},
	["race.scourge.other_action.w09.005"] = {
		"Another task taken on. My will, my choice, my errand. After the Scourge, even chores feel like freedom.",
		"A job accepted. Afterward I listen for any other voice that might have said yes for me. Silence. Good.",
	},
	["race.troll.npc_meet.w09.001"] = {
		"Every inn smells of smoke and old ale. I keep sniffing for salt and fish, the way Sen'jin smells. It never quite gets there.",
		"A keeper, a hearth, a bench too low for these legs. Good enough. A troll folds up small when the food is worth it.",
		"Inns are all walls and roof beams. A hut in Sen'jin lets the sea wind through, and nobody there calls that a draft.",
	},
	["race.troll.npc_meet.w09.002"] = {
		"Fish, if you have it. If not, whatever swam closest to the kitchen.",
		"Something with a bite to it, keeper. A troll tongue gets bored with bread alone.",
		"Feed me well, keeper. Troll flesh mends itself fast, but only if somebody fills the pot first.",
	},
	["race.troll.npc_meet.w09.003"] = {
		"Not one smile out of this keeper. A challenge, then. Trolls are patient about laughter; it always turns up in the end.",
		"Few words and a heavy hand on the counter. Some witch doctors talk like that too, and they are the ones worth hearing.",
	},
	["race.troll.npc_meet.w09.004"] = {
		"One of Thrall's people behind the counter. Orcs and Darkspear have shared fires since they crossed the sea together; this keeper pours like an old ally.",
		"Orcish hands on the ale tap. The elders of Sen'jin say the Darkspear owe the orcs a debt and a friendship, and that the two are not the same thing. I tip for both.",
	},
	["race.troll.npc_meet.w09.005"] = {
		"A troll behind the counter. We trade a look and a small tilt of the tusks; nobody here will need to explain why I want fish.",
		"One of my own people pouring. The bench will still be too low, but at least the cook will know what real pepper is.",
	},
	["race.troll.npc_meet.w09.006"] = {
		"Merchants count the coins twice when a troll pays. Long fingers make people nervous. I let them count.",
		"Prices climb a little when the customer has tusks. I smile wide, and they climb back down a little when the tusks smile.",
	},
	["race.troll.npc_meet.w09.007"] = {
		"I need what keeps a body moving: bandages, food, thread. Shiny things I find for free, along the road.",
		"Anything for a long walk and a short temper? No? Then just for the walk.",
		"Show me the useful stuff, mon. Pretty stuff, the jungle has plenty.",
	},
	["race.troll.npc_meet.w09.008"] = {
		"{other} has the eyes of a raptor watching a slow goat. Pity for {other}: this goat has tusks.",
		"That merchant's smile is all teeth and no warmth. I know the look. I wear it myself when the fish are running.",
	},
	["race.troll.npc_meet.w09.009"] = {
		"Buying from the Forsaken this time. Our witch doctors talk with the dead now and then, but they rarely haggle with them.",
		"Cold hands on the coins, a smell of herbs and grave dirt. Trolls know the spirits; this is something else. I buy quickly.",
	},
	["race.troll.npc_meet.w09.010"] = {
		"Long arms, long reach, quick learner. A troll takes a lesson the way it takes a wound: it closes fast and leaves something behind.",
		"{other} shows, I copy. The witch doctors teach the young the same way: watch the hands, not the mouth.",
	},
	["race.troll.npc_meet.w09.011"] = {
		"Teach me something new. If I get it wrong, don't worry: trolls heal quick and try again.",
		"Go on, show me. These limbs learn slow at first, and then all at once.",
	},
	["race.troll.npc_meet.w09.012"] = {
		"This teacher barks like a Darkspear headhunter on a bad day. Good. The barking ones never waste a lesson.",
		"No praise, only corrections. The elders of the tribe teach the same way: it stings, and it sticks.",
	},
	["race.troll.npc_meet.w09.013"] = {
		"Darkspear riders have flown on bats for as long as the tribe can remember. Any beast with wings is a cousin. Mostly.",
		"{other} points me to a saddle. Trolls were built for climbing trees, not clouds, but these long legs fold well enough.",
	},
	["race.troll.npc_meet.w09.014"] = {
		"Pick me a beast with a lot of patience. These legs need folding, and it takes a while.",
		"Something steady, please. A troll can climb anything, but falling is a different skill entirely.",
	},
	["race.troll.npc_meet.w09.015"] = {
		"Coin kept for a fee. Along the coast my people keep their wealth in good nets and sharp spears. A locked box feels lazy, but it never needs mending.",
		"Gold asleep in someone else's vault. The witch doctors would want a little hex on the lock, just in case.",
	},
	["race.troll.npc_meet.w09.016"] = {
		"Somebody needs help and looks up at a troll. Good choice. Long arms reach a lot of trouble.",
		"A trouble, offered across a table. The Darkspear remember who helped them when the tribe was hunted; I can help this one.",
	},
	["race.troll.npc_meet.w09.017"] = {
		"Tell me what's wrong. If it bites, I bite back. If it's cursed, I know people.",
		"Go on. Trolls are good at two things: listening, and making trouble go away. Sometimes loudly.",
	},
	["race.troll.npc_meet.w09.018"] = {
		"A guard of the Horde, watching the road. When the tribe had nowhere left to go, the Horde gave it a shore and a banner. I nod as I pass.",
		"Horde colors on a guard's shoulders. The elders of Sen'jin say an alliance freely given is the only kind worth keeping. This one we keep.",
	},
	["race.troll.npc_meet.w09.019"] = {
		"Good watch. The Darkspear sleep easier with a spear like yours on the road.",
		"Strong arm, sharp eye. The Horde is lucky in its guards, mon.",
	},
	["race.troll.npc_meet.w09.020"] = {
		"An Alliance guard, hand on steel, eyes on my tusks. In human stories the troll has been the monster for a long time. Slow steps.",
		"That guard sees a troll and thinks of Zul'Gurub, or of the Amani. Not my tribe. Explaining it here would only get me killed.",
	},
	["race.troll.npc_meet.w09.021"] = {
		"folds {g:his|her} long arms well away from any weapon and lopes past the Alliance guard, easy and unhurried.",
		"keeps {g:his|her} tusks lowered and both hands in plain sight, every inch of the long body careful not to look like a threat.",
	},
	["race.troll.npc_meet.w09.022"] = {
		"{other} speaks in circles, like a witch doctor reading smoke. I know how to listen to that: wait for the word that comes back.",
		"Riddles. In Sen'jin the old voodoo folk answer a question with a question and a shake of the rattle. I can be patient with this one.",
	},
	["race.troll.npc_meet.w09.023"] = {
		"answers the cheerful greeting with a wide, tusky grin and a laugh that bubbles up from somewhere deep.",
		"laughs along, a loose, rolling troll laugh, and sways a little on {g:his|her} long legs as if a drum had started up nearby.",
	},
	["race.troll.npc_meet.w09.024"] = {
		"Sadness on that face. The Darkspear know what it is to lose a home. I keep my voice soft with {other}.",
		"Some grief in this one. My people mourn loud and then laugh loud after. For {other}, the second part hasn't come yet.",
	},
	["race.troll.npc_meet.w09.025"] = {
		"Thrall. The Warchief who found the Darkspear cornered on a small island and would not sail on without them. Every troll of the tribe owes him that.",
		"The Warchief of the Horde. Vol'jin follows him, and so does every Darkspear spear. I stand a little straighter, tusks up.",
	},
	["race.troll.other_action.w09.001"] = {
		"A party? Good. Trolls hunt better in packs, like raptors, only with better jokes.",
		"Yes, yes, I'm coming. Long legs, quick healing, bad singing. You get all three.",
		"I'm in. The loa like a full camp better than an empty one.",
	},
	["race.troll.other_action.w09.002"] = {
		"And to you! A friendly gesture is good mojo, and I never waste good mojo.",
		"Ha! Right back at you. Trolls answer every greeting; the spirits are listening.",
	},
	["race.troll.other_action.w09.003"] = {
		"A trade, then. Fair for fair; the witch doctors say a cheat's luck rots like old fish.",
		"Let's see what you have. I count slow, you count slow, and nobody gets hexed.",
	},
	["race.troll.other_action.w09.004"] = {
		"A friendly fight? Good. The loser cooks the fish, and the winner pretends not to limp.",
		"You and me, eh? Go easy. Or don't; I heal fast either way.",
	},
	["race.troll.other_action.w09.005"] = {
		"You again? Good. The spirits are watching this time, so lose properly.",
		"A rematch, eh? Come on, then. My tusks have been itching for it.",
	},
	["race.troll.other_action.w09.006"] = {
		"Another job on my back. Fine. A troll's back is long; there's room.",
		"Words given, words kept. Thrall kept his to the Darkspear. I can keep mine to whoever asked.",
		"Tell me where and what. A troll's word goes as far as a troll's legs, and those go a long way.",
	},
	["faction.alliance.npc_meet.w10.001"] = {
		"The guest book on the counter: a dwarf's heavy scrawl, a gnome's tiny tidy print, an elf's long looping hand. The Alliance, signed in ink.",
		"Read down any Alliance inn's ledger and you'll find four peoples sleeping under one roof and complaining about the same draft.",
		"One inn, four kinds of snoring through the walls. Somebody once called it the Alliance's truest choir.",
	},
	["faction.alliance.npc_meet.w10.002"] = {
		"A room, a hot meal and the news from the fronts, in whatever order they come.",
		"Any word from Ashenvale or Arathi? I'll take the news with the stew, and the stew first.",
		"What's the talk among the soldiers? Who's winning, who's losing, who owes whom a drink?",
	},
	["faction.alliance.npc_meet.w10.003"] = {
		"A kaldorei keeping an inn for travelers of the whole Alliance. Ten thousand years of history, and here we all are, asking for more bread.",
		"The keeper moves without a sound and remembers every order. Beside {other}, humans, dwarves and gnomes all sound a little loud.",
	},
	["faction.alliance.npc_meet.w10.004"] = {
		"A gnomish house! Then the taps work, the chimney draws, and there's a device for everything. What does that one do?",
		"Something hot, please, and don't tell me how the oven works. I'd like to sleep easy.",
	},
	["faction.alliance.npc_meet.w10.005"] = {
		"A grunt, a key, a bowl slid across the counter. Gruff keepers are the same in every Alliance town, and I trust them more than the cheerful ones.",
		"No welcome, no small talk, just the bill. Alliance soldiers have been treated worse by their own generals.",
	},
	["faction.alliance.npc_meet.w10.006"] = {
		"Gnomish springs, dwarven steel, elven leather, human bread. An Alliance merchant's shelf is a map of who we are.",
		"Every crate on these shelves crossed half the Alliance to get here: by tram, by boat, by gryphon. Prices to match, naturally.",
		"Rations from Stormwind, rope from Ironforge, arrows fletched in Darnassus. Whoever says the Alliance agrees on nothing has never shopped here.",
	},
	["faction.alliance.npc_meet.w10.007"] = {
		"Is this the Alliance price or the goblin price? I can never tell, and I suspect that's the point.",
		"A discount for those who fight? No? Worth asking. The Alliance pays us in thanks, and thanks don't buy rope.",
	},
	["faction.alliance.npc_meet.w10.008"] = {
		"A gnomish stall with every item labeled in neat little letters, prices and all. The Alliance never had better clerks than the people it couldn't save a city for.",
		"Everything on this counter has a tag, and some tags have tags. The gnomes lost Gnomeregan and kept their bookkeeping; I know which I'd have saved too.",
	},
	["faction.alliance.npc_meet.w10.009"] = {
		"Quiet watch? Good. Keep it dull. Dull is what the rest of us are out there fighting for.",
		"All well on the wall? Then you're doing the hardest job in the Alliance: nothing, perfectly, for hours.",
		"Anything to report? No? Then the Alliance is winning, at least on this stretch of wall.",
	},
	["faction.alliance.npc_meet.w10.010"] = {
		"A dwarven guard, far from the mountain. Wherever the Alliance raises a wall, some dwarf has already tapped the mortar and grunted.",
		"Short, broad, armored to the eyebrows and going nowhere. If the Alliance had a crest for steadiness, this guard would be on it.",
	},
	["faction.alliance.npc_meet.w10.011"] = {
		"A Sentinel's eyes on me for exactly as long as it takes to decide. Then a nod. Allies, then; the elves don't waste a second look.",
		"The elven guard saw me long before I saw the guard. Among the Alliance's peoples, nobody keeps a watch quite like them.",
	},
	["faction.alliance.npc_meet.w10.012"] = {
		"Horde colors on that guard. I keep my hands where they can be seen and my feet ready to move.",
		"A guard of the Horde, and me in plain view. Words wouldn't help; we don't even share a language.",
	},
	["faction.alliance.npc_meet.w10.013"] = {
		"returns the guard's nod: the brief, unceremonious nod of two allies who will never learn each other's names.",
		"gives the guard an ally's nod, and gets one back, short and without fuss.",
	},
	["faction.alliance.npc_meet.w10.014"] = {
		"From up there the Alliance's lands look like patches on a cloak, with the Horde's in between. The beast doesn't care whose patch it crosses.",
		"Flight routes are the Alliance's real map: every roost a friend, every gap between them somebody else's country.",
		"Another roost, another tired beast, another keeper who has seen allies of every people turn green in the face.",
	},
	["faction.alliance.npc_meet.w10.015"] = {
		"A hippogryph, then. The elves swear they're gentler than gryphons; the dwarves swear the opposite. I'll swear at whichever one bucks.",
		"Elven roost, elven beast. Does it understand Common, or should I just smile at it?",
	},
	["faction.alliance.npc_meet.w10.016"] = {
		"The Alliance's teachers have been stealing from each other for years: a human drill, a dwarf's patience, an elf's old tricks. I'll take whatever ended up in this lesson.",
		"In every Alliance lesson there's something one people learned from another. Nobody admits it, and everybody's better for it.",
	},
	["faction.alliance.npc_meet.w10.017"] = {
		"Teach me what works against the Horde, and then whatever works against everything else.",
		"Whatever you've got. The Horde isn't waiting, and neither are the dead up north.",
	},
	["faction.alliance.npc_meet.w10.018"] = {
		"Another ally asking for a hand. The Alliance's real treaties are written like this: one favor at a time, between people who'll never meet a king.",
		"Kings sign the pacts. The rest of the Alliance is held together by errands like this one, done well by strangers.",
		"Someone of our side needs help. That's reason enough; the details are just directions.",
	},
	["faction.alliance.npc_meet.w10.019"] = {
		"If it helps our side, count me in. If it only helps you, count me in anyway, but tell me which it is.",
		"Trouble? Good. I mean, not good. I mean: tell me where, and we'll see what the Alliance can do about it.",
	},
	["faction.alliance.npc_meet.w10.020"] = {
		"Coin struck by dwarves, counted by gnomes, spent by humans, and watched by elves with polite amazement. The Alliance's whole economy in one vault.",
		"Every bank of the Alliance holds treasure from four peoples, and each of those peoples thinks the others count wrong.",
		"Savings sealed behind dwarven locks, recorded in a gnomish hand. If the Alliance ever falls, the vault will be the last thing standing.",
	},
	["faction.alliance.npc_meet.w10.021"] = {
		"Ordinary folk of the Alliance about their day: bread to buy, a child to scold, a roof to mend. This is what all the banners are for.",
		"Nobody here is a hero and nobody wants to be. Keeping it that way is most of what the Alliance's soldiers are for.",
	},
	["faction.alliance.npc_meet.w10.022"] = {
		"One of the Alliance's leaders, close enough to hear breathing. All the speeches I'd rehearsed, and not one word left.",
		"The one whose seal is on half the Alliance's orders, standing right there. Taller than the legend, or shorter; it's hard to tell with the knees shaking.",
	},
	["faction.alliance.other_action.w10.001"] = {
		"A trade between allies. Fair weight, no tricks; the goblins can keep the tricks.",
		"Coin stays in the Alliance, and so does the goodwill. Fair trade.",
		"Deal. If this goes badly, we'll blame the goblins, as is tradition.",
	},
	["faction.alliance.other_action.w10.002"] = {
		"Someone of the Horde gestures at me. Without a shared tongue, a bow and an insult look alarmingly alike.",
		"A sign in my direction from the Horde side. Greeting or challenge? Nobody in the Alliance ever taught me to read their hands.",
		"A gesture from the other side. I nod back, carefully, the way you'd nod at a bear that hasn't made up its mind.",
	},
	["faction.alliance.other_action.w10.003"] = {
		"returns {other}'s gesture with the easy warmth of allies nobody ever bothered to introduce.",
		"answers the gesture in kind: one ally to another, no names needed.",
	},
	["faction.alliance.other_action.w10.004"] = {
		"Another errand for the Alliance. Kings sign treaties; people like me run the errands that keep them standing.",
		"One more task under our banner. Small, probably. The Alliance is mostly small tasks done by people who didn't have to.",
		"A request from one of ours. I'll do it properly; somebody's opinion of the whole Alliance may hang on it.",
	},
	["faction.alliance.other_action.w10.005"] = {
		"A duel between friends of the Alliance. Loser carries the winner's pack to the next camp.",
		"Fine, but go easy. The Horde will want what's left of me later.",
	},
	["faction.horde.npc_meet.w10.001"] = {
		"Keep a sharp eye. The Alliance isn't the only thing that crosses a border uninvited.",
		"Hold steady. Half the Horde sleeps easier because of whoever stands where you stand.",
	},
	["faction.horde.npc_meet.w10.002"] = {
		"A Horde guard, spear grounded, eyes on the road. Whatever the people, the stance is the same: the Horde taught it to all of them.",
		"The guard's nod is curt and complete. Among the Horde that counts as a whole conversation.",
	},
	["faction.horde.npc_meet.w10.003"] = {
		"Yes, yes, I'm Horde. Stare any harder and you'll wear out your eyes.",
		"Same side. Save the scowl for whoever comes up the road next.",
	},
	["faction.horde.npc_meet.w10.004"] = {
		"An Alliance guard, and a long look across the gap between us. Neither of us is here to start the war again. Not today.",
		"Steel in Alliance colors, and eyes that already know which side I'm on. I keep walking; nothing else needs saying.",
	},
	["faction.horde.npc_meet.w10.005"] = {
		"Easy. I'm only passing through, and so is my temper.",
		"No need for the hand on the hilt. If the Horde wanted this place, it wouldn't send me alone.",
	},
	["faction.horde.npc_meet.w10.006"] = {
		"The Horde's sky roads run from the wind riders of Orgrimmar to the bats of Undercity. Whoever keeps the beasts fed keeps the Horde in one piece.",
		"A Horde flight master sorting riders with a glance. Every message, every wounded courier, every hurried order passes through hands like these.",
	},
	["faction.horde.npc_meet.w10.007"] = {
		"Fastest beast you've got. Somewhere the Horde needs one more pair of hands, and they're mine.",
		"Wherever the next Horde post is, take me there. I'll learn its name in the air.",
	},
	["faction.horde.npc_meet.w10.008"] = {
		"Good Horde goods? Then I'll pay a Horde price: fair, and without the speech.",
		"Show me what keeps a soldier on the road. The rest can stay on the shelf.",
		"Coin for goods, goods for the road, road for the Horde. Let's keep the chain short.",
	},
	["faction.horde.npc_meet.w10.009"] = {
		"Troll beads beside tauren leather beside Forsaken thread. A Horde merchant's shelf is the pact in miniature.",
		"The merchant prices everything in the same coin, whoever made it. In the Horde, that's what equality looks like.",
	},
	["faction.horde.npc_meet.w10.010"] = {
		"A Horde inn: the hearth is shared, the benches don't match, and somebody by the fire is always mending something.",
		"Whatever people keeps this inn, the rule is the same: anyone wearing the Horde's colors gets a place near the fire.",
		"Every Horde innkeeper seems to know which cups suit tusks, which stools hold a tauren and which corner the Forsaken prefer. Hospitality is a craft, and they've learned it four times over.",
	},
	["faction.horde.npc_meet.w10.011"] = {
		"Something hot and something strong, keeper. The Horde marches on both.",
		"A bed, a bowl, and news from the front, if you've got any. In that order or any other.",
	},
	["faction.horde.npc_meet.w10.012"] = {
		"Every Horde inn has a corner where the old soldiers sit. You learn more of the Horde's history there than from any chieftain.",
		"The innkeeper pours without asking where I'm from. In the Horde, my colors have already answered.",
	},
	["faction.horde.npc_meet.w10.013"] = {
		"A trainer of the Horde. Whatever I learn here, I'll use for people who aren't my own kin but are my own side. That still feels new.",
		"Every skill taught in a Horde hall is a little more strength for the pact. The trainer seems to know it, and teaches like it.",
	},
	["faction.horde.npc_meet.w10.014"] = {
		"Teach me something the Alliance won't see coming.",
		"I'm listening. The Horde needs me sharper, and so do I.",
	},
	["faction.horde.npc_meet.w10.015"] = {
		"Gold in a Horde vault. My valuables now sleep under the same roof as half the Horde's. That's one way to feel part of something.",
		"The banker counts without looking up. Whatever wars the Horde fights, somebody has to keep the ledgers straight.",
	},
	["faction.horde.npc_meet.w10.016"] = {
		"If it helps the Horde, I'll hear it. If it only helps you, I'll still hear it, but you're buying the next round.",
		"What does the Horde need? Say it straight and I'll carry it.",
		"Another job for the Horde? Good. Idle soldiers start quarrels; busy ones finish them.",
	},
	["faction.horde.npc_meet.w10.017"] = {
		"Someone of the Horde needs help and asks without ceremony. I like that about us: nobody begs, nobody is turned away.",
		"A Horde outpost always has more trouble than hands. {other} has just found a spare pair.",
	},
	["faction.horde.npc_meet.w10.018"] = {
		"Thrall. A Warchief who grew up among his enemies and still chose peace wherever he could find it. The Horde stands differently in his presence; so do I.",
		"The Warchief himself. Orcs, tauren, trolls and Forsaken all answer to this one voice. It must weigh more than any hammer.",
		"Thrall, son of Durotan. He carries the Doomhammer, and all four peoples of the Horde with it. I keep my words few.",
	},
	["faction.horde.npc_meet.w10.019"] = {
		"Cairne Bloodhoof. The Horde's oldest friend in Kalimdor, and its calmest voice. Standing before him I find I have nothing urgent to say.",
		"The High Chieftain of the tauren. When the Horde first came to these shores, it was his people who held out a hand. The Horde has never forgotten.",
	},
	["faction.horde.npc_meet.w10.020"] = {
		"Vol'jin. The Darkspear's shadow hunter, who kept the oath his father made to the Warchief. Few in the Horde honor a debt for as long as he has.",
		"Vol'jin of the Darkspear. Quiet, watchful and hard to read. The Horde is lucky to have him on its side, and the Horde knows it.",
	},
	["faction.horde.npc_meet.w10.021"] = {
		"Sylvanas Windrunner. The Horde's most uneasy ally, and perhaps its most determined. Whatever she wants, she wants it very much.",
		"The Banshee Queen. The Warchief welcomed her people; she welcomed the Warchief's protection. Nobody is quite sure which of them got the better bargain.",
		"Lady Sylvanas. Cold, sharp and impossible to ignore. The Horde keeps her close, the way you keep a blade you don't fully trust: within reach, edge turned away.",
	},
	["faction.horde.npc_meet.w10.022"] = {
		"steps aside to let one of the Horde's working folk pass under an enormous load, and answers the grunt of thanks with a nod.",
		"returns a tired nod from one of the Horde's working folk, the kind who never see a battlefield and keep every battlefield supplied.",
	},
	["faction.horde.npc_meet.w10.023"] = {
		"A cheerful face under Horde colors. The pact has hard days; somebody has to remember it has good ones too.",
		"{other} grins as if the Horde had just won something. Maybe it has, somewhere. I'll take the grin either way.",
	},
	["faction.horde.other_action.w10.001"] = {
		"A war band, then. The Horde is strongest when its peoples walk together, and so am I.",
		"I'll come. Small bands like this one are how the Horde was rebuilt, fight after fight.",
	},
	["faction.horde.other_action.w10.002"] = {
		"A trade between allies. Fair weights, no tricks; we save those for the Alliance.",
		"Let's swap. Whatever the Horde can't supply, we supply each other.",
	},
	["faction.horde.other_action.w10.003"] = {
		"And to you. A greeting between Horde folk is never wasted.",
		"Ha. Good to see you, under the same colors.",
	},
	["faction.horde.other_action.w10.004"] = {
		"answers the gesture with a closed fist raised to the chest, the salute every people of the Horde shares.",
		"returns the greeting with a short nod and a raised hand, Horde to Horde.",
	},
	["faction.horde.other_action.w10.005"] = {
		"A task taken. Somewhere down the line it'll make the Horde a little stronger, or a little less hungry.",
		"Another errand. The Horde was built out of errands like this one; I'll add mine to the pile.",
	},
	["faction.horde.other_action.w10.006"] = {
		"You want a bout? Good. Two allies trading blows, and the Horde comes out sharper for it.",
		"Gladly. Win or lose, we walk back to the fire together.",
	},
	["faction.horde.other_action.w10.007"] = {
		"A rival's challenge, under the same banner. I'll fight it fair and still beat you.",
		"You again. Fine. Same banner or not, I've been waiting for this.",
	},
	["npc_meet.w14.guide.001"] = {
		"Stand where I can see you. I teach better when I can watch your hands.",
		"Come closer. Half of teaching is watching, and I can't watch you properly from over there.",
		"In front of me, not beside. I need to see what you're doing wrong before you do.",
	},
	["npc_meet.w14.guide.002"] = {
		"Ask me anything. I may not answer, but I'll enjoy watching you work it out.",
		"Questions are welcome. Answers cost effort, and the effort is yours.",
		"Curious pupils are my favorite kind. Exhausting, but my favorite.",
	},
	["npc_meet.w14.guide.003"] = {
		"Make your mistakes here, in front of me. They're cheaper here than anywhere else.",
		"I'd rather see you get it wrong ten times here than once where it matters.",
		"Go ahead and fumble. That's what this corner of the world is for.",
	},
	["npc_meet.w14.guide.004"] = {
		"Teaching never wears thin. Every pupil gets stuck in a slightly different place.",
		"I learn something from every pupil. Usually patience.",
		"Teaching keeps a body honest. You can't fake a thing you have to explain.",
	},
	["npc_meet.w14.guide.005"] = {
		"Tell me what you're after, and I'll tell you whether you're ready for it.",
		"What'll it be? Name it, and I'll see if your hands agree with your ambitions.",
		"So. What's it to be? Say it out loud; it helps.",
	},
	["npc_meet.w14.guide.006"] = {
		"Knowing a thing and doing it are two different animals. I only teach the first; the second is on you.",
		"I can show you how it's done. The practicing is the part nobody can sell you.",
		"The lesson takes a moment. Making it yours takes as long as it takes.",
	},
	["npc_meet.w14.guide.007"] = {
		"What I know was handed to me, and I hand it on. That's the whole bargain, and it was old long before I was.",
		"Someone patient taught me this once. The least I can do is pass the patience along with it.",
		"Nobody owns what I teach. I only keep it safe for the next one who asks.",
	},
	["npc_meet.w14.guide.008"] = {
		"No rushing. A lesson swallowed whole comes back up at the worst moment.",
		"Slowly. Chew on it. Hurried learning sits badly.",
		"Small bites. I've seen too many pupils choke on the whole meal.",
	},
	["npc_meet.w14.guide.009"] = {
		"Lessons aren't free, I'm afraid. Ignorance is, but look where it gets people.",
		"Yes, there's a fee. Think of it as paying for the mistakes you won't make.",
		"Every coin you spend here, you'll earn back by not doing something foolish.",
	},
	["npc_meet.w14.guide.010"] = {
		"I watch how pupils stand before I watch what they do. You can tell a lot from how someone waits.",
		"Even the way you came over told me something. Don't worry: mostly good things.",
	},
	["npc_meet.w14.guide.011"] = {
		"Pupils come and go. There's always room for one more who means it.",
		"Plenty of people want to learn. Fewer want to practice. Which are you?",
		"I don't care how quickly you learn. I care whether you keep at it.",
	},
	["npc_meet.w14.guide.012"] = {
		"Past all the practice there's a moment when it simply comes to you. I can't give you that moment, only the way to it.",
		"Mastery isn't a gift I can hand over. It's a habit you build, and I'll show you where to lay the first stone.",
	},
	["npc_meet.w14.guide.013"] = {
		"If you forget something, come and ask. Pretending to remember costs far more.",
		"Asking twice is no shame. Guessing wrong in a hurry is.",
		"Write it down if you must. Memory makes a poor storeroom for a busy head.",
	},
	["npc_meet.w14.guide.014"] = {
		"Being watched by someone who knows better: the oldest kind of nerves there is.",
		"Funny how a teacher's eyes make my hands forget everything they knew a moment ago.",
		"A teacher's silence is worse than any scolding. I'd rather be told.",
	},
	["npc_meet.w14.guide.015"] = {
		"Listen, nod, repeat it in my head. Then hope some of it survives the walk out.",
		"I'll understand all of it while {other} talks, and about half once I try it myself.",
		"Every lesson sounds simple while someone else is doing it.",
	},
	["npc_meet.w14.guide.016"] = {
		"Whatever I think I know, there's someone who knows it better and doesn't mind saying so. Good.",
		"It does me good to be reminded that I'm unfinished. Everyone is, but it slips the mind.",
	},
	["npc_meet.w14.guide.017"] = {
		"Coin for knowledge. Of all the trades I make, this one never feels like a loss.",
		"Paying to be taught feels odd. Less odd than paying for my own mistakes later on.",
	},
	["npc_meet.w14.guide.018"] = {
		"Teachers stay put while pupils walk off into the world. I wonder how many {other} has watched leave and never heard from again.",
		"Every teacher must keep a quiet tally of the pupils who were never seen again. I'd rather not end up on it.",
	},
	["npc_meet.w14.guide.019"] = {
		"Pride wants to say I already know this. Pride also never learned anything.",
		"The hard part isn't the lesson. It's admitting I need one.",
		"Admitting I don't know is the real price of a lesson. The coin is the easy part.",
	},
	["npc_meet.w14.guide.020"] = {
		"Each thing learned is one less thing that can go wrong out there. That's reason enough.",
		"Sooner or later, something learned here will be the only thing between me and a bad end. I'll be grateful then.",
	},
	["npc_meet.w14.guide.021"] = {
		"{other} must have said these words a thousand times, and still says them as if they matter. They do.",
		"Same lesson, a thousand pupils, and no sign of boredom. That's its own kind of skill.",
	},
	["npc_meet.w14.guide.022"] = {
		"A good correction stings for a moment and helps for years.",
		"Being corrected is a gift with sharp edges. I'll take it anyway.",
	},
	["npc_meet.w14.guide.023"] = {
		"straightens a little under the trainer's gaze, the way pupils everywhere seem to.",
		"squares {g:his|her} shoulders before the lesson starts, as if about to be measured for it.",
	},
	["npc_meet.w14.guide.024"] = {
		"listens closely, nodding, and now and then repeats a point quietly to {g:himself|herself}.",
		"follows every word with a frown of concentration, as though the lesson might run off if left unwatched.",
	},
	["npc_meet.w14.guide.025"] = {
		"tries the movement once with empty hands, slowly, then looks up to see whether it was right.",
		"copies the gesture just shown, a little clumsily, and does it again before anyone can comment.",
	},
	["npc_meet.w14.guide.026"] = {
		"waits a respectful pace away until {other} looks up.",
		"lingers at a polite distance, hands clasped, until the lesson is offered.",
	},
	["npc_meet.w14.guide.027"] = {
		"counts out the fee carefully, and seems to weigh each coin against what it will buy.",
		"sets the coins down one by one, with the air of someone paying for something that will last.",
	},
	["npc_meet.w14.guide.028"] = {
		"Teach me whatever I'm ready for. I'll worry about the rest.",
		"Whatever you think I can handle. And maybe one thing I can't, quite.",
	},
	["npc_meet.w14.guide.029"] = {
		"Go on, then. Show me how it should look, and I'll show you how it actually does.",
		"Be honest with me. I'd rather hear it from you than learn it the hard way.",
		"Show me slowly. Then show me again, slower.",
	},
	["npc_meet.w14.guide.030"] = {
		"I'm here to learn. Teach me well, and I'll put it to good use.",
		"Your knowledge, my effort. I'd call that a fair trade.",
	},
	["npc_meet.w14.guide.031"] = {
		"Ah, good. You're exactly who I was hoping to see.",
		"There you are. I was starting to think nobody would stop by.",
		"Good, good. Just the person I needed.",
	},
	["npc_meet.w14.guide.032"] = {
		"Asking strangers for help never gets easier. Thanking them is the part I like.",
		"Needing help is humbling. Getting it is something else entirely.",
		"Help is hard to ask for and sweet to receive. Either way, it's good to see you.",
	},
	["npc_meet.w14.guide.033"] = {
		"My list of troubles grows faster than I can cross things off. Let's talk.",
		"Problems don't wait in line, I'm afraid. Can you spare me a moment?",
		"So much to see to, so few willing hands. You're a pleasant sight.",
	},
	["npc_meet.w14.guide.034"] = {
		"I've a nose for people who finish what they start. Mine's twitching.",
		"Some people make promises and some keep them. I can usually tell the two apart.",
	},
	["npc_meet.w14.guide.035"] = {
		"Words first, then deeds. That's how anything gets done around me.",
		"Talk is cheap, I know. But everything worth doing starts and ends with a little of it.",
	},
	["npc_meet.w14.guide.036"] = {
		"Every bit of help counts. You'd be surprised how far one pair of hands can carry things.",
		"One person willing to help is worth ten who only sympathize.",
		"Big troubles are just small ones that piled up. Every bit you take on helps.",
	},
	["npc_meet.w14.guide.037"] = {
		"Let me look at you. Hmm. Steady enough, I'd say.",
		"I size people up for a living, more or less. You'll pass.",
		"You have the air of someone who doesn't give up halfway. I hope I'm right.",
	},
	["npc_meet.w14.guide.038"] = {
		"Everyone who comes by wants something. It's nice to meet someone who might give instead of ask.",
		"Most folk stop by to ask me things. You're the sort who gets things done. Refreshing.",
	},
	["npc_meet.w14.guide.039"] = {
		"Small troubles grow when nobody tends them. You know that as well as I do.",
		"Leave a small trouble alone long enough and it stops being small. Few seem to understand that.",
	},
	["npc_meet.w14.guide.040"] = {
		"You'll always find me here. Some folk put down roots in one spot, and are glad of those who don't.",
		"Travel was never for me; my place is here. That's why I need people who move.",
	},
	["npc_meet.w14.guide.041"] = {
		"I'll speak plainly with you, and I'll expect the same.",
		"No tricks, no fine print. Just someone who needs a hand and someone who has two.",
		"I'll tell you what I know and nothing I don't. That's the best I can offer anyone.",
	},
	["npc_meet.w14.guide.042"] = {
		"Folk like you are what keeps everything else running. I mean that.",
		"Without people willing to lend a hand, most of my worries would never leave my head.",
		"People forget how much a little help means. I don't.",
	},
	["npc_meet.w14.guide.043"] = {
		"Easy things I handle myself. The other kind is what this talk is for.",
		"I don't bother people with the simple stuff. You can take that as a compliment.",
	},
	["npc_meet.w14.guide.044"] = {
		"It does me good to deal with someone who doesn't flinch at trouble.",
		"You've no idea how restful it is to talk to someone who listens.",
		"A steady listener is rarer than you'd think. Thank you for that much, at least.",
	},
	["npc_meet.w14.guide.045"] = {
		"{other} has the look of someone with more troubles than hands.",
		"More worries than hands to carry them. I know that look.",
	},
	["npc_meet.w14.guide.046"] = {
		"Somebody asks, somebody answers. The world runs on that more than on kings.",
		"Not every deed ends up in a song. Most of them end with a nod and a word of thanks.",
	},
	["npc_meet.w14.guide.047"] = {
		"Everyone who needs help thinks theirs is the most urgent. Sometimes they're even right.",
		"Urgent, of course. It's always urgent. Now and then it truly is.",
		"Every trouble looks small from outside. I'll try to see this one from inside.",
	},
	["npc_meet.w14.guide.048"] = {
		"Strange, to be trusted by someone who knows nothing about me but that I stopped.",
		"{other} trusts me on very little evidence. I'd like to deserve it.",
	},
	["npc_meet.w14.guide.049"] = {
		"Listen to the whole thing. The detail that matters is always the one mumbled at the end.",
		"People tell you the important part last, as if embarrassed by it. Pay attention.",
	},
	["npc_meet.w14.guide.050"] = {
		"Help given is never quite lost. It goes around and comes back in odd shapes.",
		"Every favor is a seed. I rarely see what grows, but something does.",
	},
	["npc_meet.w14.guide.051"] = {
		"Everyone has a little errand. Put them all end to end and they'd circle the world twice.",
		"Sometimes it feels as if half the world needs a hand, and the other half is me.",
	},
	["npc_meet.w14.guide.052"] = {
		"A promise weighs nothing when it's made and a great deal afterward. Best to remember that, either way.",
		"A word given is a kind of load. I try to pick up only what I can carry.",
	},
	["npc_meet.w14.guide.053"] = {
		"In a month I may not remember this face. The help will still have happened, though.",
		"These meetings are brief and easily forgotten. What gets done in between them isn't.",
	},
	["npc_meet.w14.guide.054"] = {
		"listens with head tilted, letting {other} come to the point unhurried.",
		"waits through the preamble without a sign of impatience.",
	},
	["npc_meet.w14.guide.055"] = {
		"nods slowly, as if filing every word somewhere safe.",
		"keeps quiet and attentive, the way people do when someone else's trouble is being laid out.",
	},
	["npc_meet.w14.guide.056"] = {
		"returns the look squarely, as one does when being sized up.",
		"bears the appraising look without fidgeting, and gives it back evenly.",
	},
	["npc_meet.w14.guide.057"] = {
		"listens politely to a story that begins much further back than strictly necessary.",
		"lets the long version run its course, saving questions for whenever the short one arrives.",
	},
	["npc_meet.w14.guide.058"] = {
		"Tell me plainly. I'll do the same.",
		"No need to dress it up. Just say it straight.",
		"Say what you need to say. I can take it.",
	},
	["npc_meet.w14.guide.059"] = {
		"Take your time. I'm in no hurry, whatever it is.",
		"Go at your own pace. I'm here.",
	},
	["npc_meet.w14.guide.060"] = {
		"You look like someone with a problem. Lucky for you, I'm someone with free hands.",
		"Something's on your mind. Out with it; I've got the time.",
	},
	["npc_meet.w14.guide.061"] = {
		"Mounts are rested and ready. Say the word.",
		"Rested, fed and impatient, every one of them. Much like their riders.",
		"Pick a route. The mounts are bored, and a bored mount is a grumpy one.",
	},
	["npc_meet.w14.guide.062"] = {
		"One rule up there: whatever you're holding, don't let go of it.",
		"Nobody's ever fallen off on my watch. Keep it that way for me, would you?",
		"Hands on the harness, eyes forward, and let the beast do the thinking.",
	},
	["npc_meet.w14.guide.063"] = {
		"Every route I keep is right here. Pick one: the mounts know the way better than you or I ever will.",
		"Point to where you're going and leave the rest to the beast. It's done this more often than you've laced your boots.",
	},
	["npc_meet.w14.guide.064"] = {
		"I spend my working life watching others leave. Somebody has to be the one who stays.",
		"Everyone who comes to me is on the way somewhere else. I'm the one place that never moves.",
		"Arrivals, departures, and me in the middle, forever waving.",
	},
	["npc_meet.w14.guide.065"] = {
		"Queasy? Fix your eyes ahead and think about something dull. Taxes work.",
		"Nervous flier? Count backward from a thousand. You'll land long before you reach one.",
		"If heights get to you, hum something. The mounts don't mind bad singing.",
	},
	["npc_meet.w14.guide.066"] = {
		"The fare's the fare. The mount doesn't care how important you are, and neither does the ledger.",
		"Pay up front, fly in comfort. Well, in something close to comfort.",
		"Coin first, then the saddle. No exceptions, not even for a charming smile.",
	},
	["npc_meet.w14.guide.067"] = {
		"Not everyone gets to see the world from above. Never stop counting yourself lucky for it.",
		"From up there the whole world fits in one look. It's worth the fare for that alone.",
	},
	["npc_meet.w14.guide.068"] = {
		"I check every harness myself. Twice. Then once more, because fussing is my trade.",
		"Every buckle's been checked by my own hands. You can trust the straps; that's my promise.",
	},
	["npc_meet.w14.guide.069"] = {
		"Busy, busy. Mounts in, mounts out, and everyone in a hurry.",
		"You'd think the whole world had somewhere urgent to be. Maybe it has.",
	},
	["npc_meet.w14.guide.070"] = {
		"They're good beasts. Bad conversation, but good beasts.",
		"Talk to your mount if you like. It won't answer, but it listens better than most riders.",
		"Mine are the best-tempered in the trade. Don't tell them I said so; they'll get ideas.",
	},
	["npc_meet.w14.guide.071"] = {
		"Safe flight, traveler. The ground will be waiting when you set foot on it.",
		"May your landing be gentle and your legs remember how to walk.",
		"Fly well. And if you can't fly well, at least land well.",
	},
	["npc_meet.w14.guide.072"] = {
		"Trusting a beast I barely know with my life, for a handful of coin. Travel is a strange business.",
		"My whole life, strapped to something with opinions of its own. And I'm paying for the privilege.",
	},
	["npc_meet.w14.guide.073"] = {
		"{other} must know every route by heart, and never travels any of them.",
		"Strange trade, sending others off and staying behind. I don't think I could do it.",
	},
	["npc_meet.w14.guide.074"] = {
		"Long roads on foot, traded for a short while in the saddle. Part of me feels like a cheat.",
		"Feet earn the road; wings only borrow it. Borrowing is faster, though.",
	},
	["npc_meet.w14.guide.075"] = {
		"A little fear of flying is healthy. It's what makes people grip properly.",
		"My knees have opinions about this part. I've decided not to consult them.",
	},
	["npc_meet.w14.guide.076"] = {
		"All those routes, each one a different version of what comes next.",
		"Every route on offer is a door. I only get to walk through one.",
	},
	["npc_meet.w14.guide.077"] = {
		"The mounts barely glance at me. Riders come and go; they've seen plenty.",
		"To the beasts I'm just one more load. There's something restful in mattering so little.",
	},
	["npc_meet.w14.guide.078"] = {
		"Whatever's been gnawing at me will stay down here for a while. It can't follow where I'm going.",
		"Some troubles can't fly. That's half the reason to pay the fare.",
	},
	["npc_meet.w14.guide.079"] = {
		"glances over the waiting mounts, as if trying to guess which one will give the gentlest ride.",
		"eyes the mounts one by one, though the choice was never {g:his|hers} to make.",
	},
	["npc_meet.w14.guide.080"] = {
		"tugs at a pack strap, then at another, making sure nothing will come loose in the air.",
		"pats down every pocket before going near the mounts, one last inventory on the ground.",
	},
	["npc_meet.w14.guide.081"] = {
		"counts out the fare and hands it over without haggling; there's no bargaining with distance.",
		"pays the fare quietly, eyes already on the mounts.",
	},
	["npc_meet.w14.guide.082"] = {
		"studies the routes for a long moment, finger hovering, like someone choosing between doors.",
		"traces one route with a finger, then another, weighing distances only {g:he|she} can see.",
	},
	["npc_meet.w14.guide.083"] = {
		"Whichever's least grumpy, please. I'm not picky beyond that.",
		"Something steady, if you have it. I'll take calm over fast.",
		"The calmest you've got, please. I'll bring my own panic.",
	},
	["npc_meet.w14.guide.084"] = {
		"Keep the landing soft and I'll recommend you to everyone I meet.",
		"Get me there in one piece and I'll say good things about you.",
	},
	["npc_meet.w14.guide.085"] = {
		"Is the beast in a good mood? Asking for my nerves.",
		"Does it bite? No? Then it and I will get along fine.",
	},
	["npc_meet.w14.guide.086"] = {
		"People who serve travelers see a thousand faces and remember the rude ones. Better to be among the others.",
		"Courtesy costs nothing with folk who serve the road, and somehow it buys more than coin.",
	},
	["npc_meet.w14.guide.087"] = {
		"Everyone in this line of work has heard every question. I try to ask mine quickly.",
		"They must answer the same three questions a hundred times over. Patience is part of the job.",
	},
	["npc_meet.w14.guide.088"] = {
		"offers a word of greeting before getting down to business, as courtesy asks.",
		"pauses long enough for a proper greeting; rushing someone at their work never helps.",
	},
	["npc_meet.w14.guide.089"] = {
		"Nobody writes songs about the people who keep travelers going. Somebody should.",
		"Heroes get the stories; the people behind them get a nod, if they're lucky. I'll make it a good nod.",
	},
	["npc_meet.w14.guide.090"] = {
		"steps up and waits for a sign of attention, patient as a guest.",
		"comes to a stop at a polite distance and leaves the first word to whoever stands there.",
	},
	["npc_meet.w14.shop.001"] = {
		"Buying, selling, or just warming the counter? All three are allowed. Only one pays.",
		"Browse as long as you like. The prices won't move, but the company is pleasant.",
		"Look, ask, buy or sell. I charge for two of those.",
	},
	["npc_meet.w14.shop.002"] = {
		"Put it all on the counter. I've bought stranger things than whatever's in that pack.",
		"Empty the bag, let's see. Odds, ends, a few surprises: that's how the best deals start.",
		"Whatever you're carrying, I've a price for it. Maybe not the price you hoped.",
	},
	["npc_meet.w14.shop.003"] = {
		"Anything that needs mending, set it here. Dents I can fix. Bad habits cost extra.",
		"If anything you wear has a crack in it, leave it with me a moment.",
		"Bring me the worn pieces. A little work now saves a lot of cursing later.",
	},
	["npc_meet.w14.shop.004"] = {
		"Go ahead, make an offer. I enjoy a good laugh as much as anyone.",
		"You can haggle, and I'll listen politely. The price stays where it is.",
		"An offer? Splendid. I'll write it down so I can enjoy it later.",
	},
	["npc_meet.w14.shop.005"] = {
		"One moment, let me find the right page. Every sale goes in the book, even the small ones.",
		"Your name? No, never mind. In the ledger I only write 'good customer'. Let's keep it true.",
		"Every sale gets written down. My ledger has a longer memory than I do.",
	},
	["npc_meet.w14.shop.006"] = {
		"Supplies for the road? Start with what you'll miss most when it runs out.",
		"The dull things sell best: thread, salt, a spare strap. Nobody misses a trinket on the road; everybody misses salt.",
		"Before anything shiny, buy the dull things. They're what get you home.",
	},
	["npc_meet.w14.shop.007"] = {
		"The scales are honest. Check them yourself if you like; everybody does, sooner or later.",
		"Weights on the left, coins on the right. Nothing up my sleeves but my arms.",
		"Mind the scales: they're older than some kingdoms and twice as honest.",
	},
	["npc_meet.w14.shop.008"] = {
		"Sold is sold, mind. If you want it back later, it'll cost you more than I paid.",
		"Before you sell it, be sure. Things come back across this counter at a different price.",
		"Think before you sell. Buying it back is possible, just never cheap.",
	},
	["npc_meet.w14.shop.009"] = {
		"I don't ask where things come from. I only ask whether they're still in one piece.",
		"Where you found it is your business. What it's worth is mine.",
		"Found it, won it, dug it up: it all sells the same.",
	},
	["npc_meet.w14.shop.010"] = {
		"Everything here has a price, friend, except the advice. The advice is free and worth about that.",
		"Free advice, while you look: never buy the first thing you like. Unless it's from me.",
		"Advice costs nothing here. Everything else costs a little something.",
	},
	["npc_meet.w14.shop.011"] = {
		"Quiet stretch. Glad of a face that isn't trying to sell me something.",
		"First customer in a while who didn't start by complaining. Take all the time you want.",
		"Nice to see someone. The counter gets lonely between customers.",
	},
	["npc_meet.w14.shop.012"] = {
		"That everything? Think twice. People always remember the one thing three steps out the door.",
		"Anything else? Check the pack once more. The forgotten thing always comes to mind halfway down the road.",
		"Got everything? Count your pockets before you go; the counter can't follow you.",
	},
	["npc_meet.w14.shop.013"] = {
		"A fair price leaves both sides grumbling a little. Let the grumbling begin.",
		"Haggle away. Somebody out-talked me once. Not lately.",
	},
	["npc_meet.w14.shop.014"] = {
		"This lot came a long way to sit on my shelf. Show it some respect, or at least some coin.",
		"Everything on these shelves traveled to get here. The price includes the journey.",
		"Some of this came farther than you'd guess. Don't ask me from where; I only buy it.",
	},
	["npc_meet.w14.shop.015"] = {
		"Don't mind the mess. Everything's where I can find it, which is all that counts.",
		"It looks like chaos, I know. Ask for anything and watch how fast I find it.",
		"Excuse the clutter. There's a system. Only I know it, which is the point.",
	},
	["npc_meet.w14.shop.016"] = {
		"Coin first, goods after. I gave credit once. I'm still waiting, and so is my patience.",
		"No credit, sorry. The last one who asked swore to come straight back. Never saw them since.",
		"Payment up front, if you please. My memory for debts is excellent; other people's is not.",
	},
	["npc_meet.w14.shop.017"] = {
		"Take your time. The goods aren't going anywhere, and neither am I.",
		"No rush. I've stood behind this counter long enough to know hurry costs money.",
		"Look around. Prices are on the tags, and the tags don't bite.",
	},
	["npc_meet.w14.shop.018"] = {
		"Here to lighten the load? Lay it out, I'll make you an offer.",
		"Got things to sell? Put them in a row. I buy faster when I can see it all.",
		"Selling? Show me. I pay fair for the useful and fairly little for the rest.",
	},
	["npc_meet.w14.shop.019"] = {
		"Whatever you buy here, use it well. Goods that sit unused are the only bad bargain.",
		"Buy what you'll use. Things that only ride in a pack are good coin thrown away.",
		"Spend wisely, friend. Coin is only patience you've already paid for.",
	},
	["npc_meet.w14.shop.020"] = {
		"Everything at a stall is arranged to make me want the thing on the left. I'll look right first.",
		"Shops have a way of making the useless glitter. Eyes on the list.",
		"First rule at any counter: decide what I need before the merchant decides for me.",
	},
	["npc_meet.w14.shop.021"] = {
		"Everything I picked up along the way, reduced to a few coins. It weighed far more than it's worth.",
		"I hauled all this here for a handful of coins. Next time I'll be choosier about what I pick up.",
		"All that weight, and it comes to this. Still, lighter is lighter.",
	},
	["npc_meet.w14.shop.022"] = {
		"The trick is to look a little disappointed by everything. Merchants know the trick too.",
		"I'll pretend not to want it. The merchant will pretend to believe me. A small, polite play.",
	},
	["npc_meet.w14.shop.023"] = {
		"Sold it a moment ago, and already I can think of three uses for it.",
		"The moment the coin's in my palm, the thing I sold starts to look useful.",
	},
	["npc_meet.w14.shop.024"] = {
		"Without people like this behind a counter, every road would end in an empty pack.",
		"Someone carried all this here so I wouldn't have to. A counter is a road that came to me.",
	},
	["npc_meet.w14.shop.025"] = {
		"Mending costs coin. Not mending costs more, and at a worse moment.",
		"Cheaper to find a crack here, at the counter, than out on the road at the wrong time.",
	},
	["npc_meet.w14.shop.026"] = {
		"The merchant writes something in the ledger after each sale. I'd give a silver coin to know what it says about me.",
		"A line in a ledger: that's all I'll be here. Price, item, a little mark. Not the worst way to be remembered.",
	},
	["npc_meet.w14.shop.027"] = {
		"One thing. I'm here for one thing. The shelves have other ideas.",
		"A list in my head, and a merchant who knows exactly how to make it longer.",
		"Food, then mending, then whatever's left. In that order. Probably.",
	},
	["npc_meet.w14.shop.028"] = {
		"Counting coins under someone's eyes always makes me lose track at seven.",
		"I count twice. The merchant counts once and is right. There's a lesson there I'd rather not learn.",
		"Coins on the counter, eyes on the coins. Mine and the merchant's, watching the same small pile.",
	},
	["npc_meet.w14.shop.029"] = {
		"A merchant sees a thousand faces and remembers the ones that paid. Fair enough.",
		"To the one behind the counter I'm another pair of hands across the wood. There's a kind of freedom in that.",
	},
	["npc_meet.w14.shop.030"] = {
		"Every trade is a small truce: one side wants coin, the other wants goods, and nobody has to win.",
		"Buying and selling: the one contest where both sides can walk away pleased.",
	},
	["npc_meet.w14.shop.031"] = {
		"Spend a little, keep a little. Whatever comes next will want its share.",
		"Not everything. Leave something in the purse for whatever I haven't thought of.",
	},
	["npc_meet.w14.shop.032"] = {
		"lays out a row of odds and ends on the counter and waits for the verdict.",
		"empties the pack onto the counter, piece by piece, like someone settling an old account.",
	},
	["npc_meet.w14.shop.033"] = {
		"turns an item over twice, checks the price, and puts it back with a sigh.",
		"picks something up, weighs it in one hand, and sets it down exactly where it was.",
	},
	["npc_meet.w14.shop.034"] = {
		"counts the coins out slowly onto the counter, under the merchant's patient eye.",
		"slides the coins across the counter and keeps a finger on the last one a moment too long.",
	},
	["npc_meet.w14.shop.035"] = {
		"nods to {other} and begins the slow business of choosing.",
		"exchanges a few pleasantries over the counter before the talk turns to prices.",
	},
	["npc_meet.w14.shop.036"] = {
		"haggles a while, loses gracefully, and pays the first price after all.",
		"makes an offer, hears the counteroffer, and pays without another word, half amused.",
		"argues the price down by a single copper and looks unreasonably pleased about it.",
	},
	["npc_meet.w14.shop.037"] = {
		"sets a worn piece of gear on the counter and waits while it's looked over.",
		"hands over a piece of gear for mending and follows the work with interest.",
	},
	["npc_meet.w14.shop.038"] = {
		"What would you give me for all of this? Be kind. I carried it here myself.",
		"Make me an offer for the lot. Go on, surprise me.",
	},
	["npc_meet.w14.shop.039"] = {
		"Is that your best price, or your first one?",
		"That's the price for anyone, or the price for me?",
		"Half that, and I'll pretend I'm doing you a favor.",
	},
	["npc_meet.w14.shop.040"] = {
		"Just looking. Honestly. Well, mostly.",
		"I'm only here to browse. Don't look at me like that.",
	},
	["npc_meet.w14.shop.041"] = {
		"Can you mend this? It's done more than its share and it's starting to tell me so.",
		"Can this be fixed, or should I start saying goodbye to it?",
	},
	["npc_meet.w14.shop.042"] = {
		"Keep the change. No, wait, I'll need that. Sorry.",
		"Here, exact coin. I counted it twice, so it's probably wrong.",
	},
	["npc_meet.w14.shop.043"] = {
		"Whatever you've left here is exactly where you put it. Nobody touches what isn't theirs.",
		"What's yours stays yours. It's kept as if it were mine. Better, actually.",
		"Not a thing has moved since you left it. The vault is boring that way, and proud of it.",
	},
	["npc_meet.w14.shop.044"] = {
		"Sign here, and here, and once more there. The vault likes its paperwork.",
		"Name, then your mark. The vault opens for paperwork, not for smiles.",
		"Your mark, if you please. The locks don't care who you are, but the ledger does.",
	},
	["npc_meet.w14.shop.045"] = {
		"Need more room? Another slot can be arranged. For a price, naturally.",
		"Running short of space? The vault has more. Space, sadly, isn't free.",
		"More space means a bigger box, and bigger boxes cost bigger coins.",
	},
	["npc_meet.w14.shop.046"] = {
		"Keep only what you need on you. The rest is safer behind this door than on any road.",
		"Leave the heavy things here. You'll walk farther with less on your back.",
		"Travel light. Whatever you leave here won't get lost, stolen, or sat on.",
	},
	["npc_meet.w14.shop.047"] = {
		"I keep the keys. You keep the memory of why you kept all this. Fair division of labor.",
		"People leave the strangest things in the vault. I never ask. You'd be surprised how much I don't ask.",
	},
	["npc_meet.w14.shop.048"] = {
		"Discretion is the whole job. What's in your box is between you and the lock.",
		"I don't look inside. I only make sure nobody else does.",
		"Your secrets are as safe as your things. I couldn't tell anyone if I tried; I never looked.",
	},
	["npc_meet.w14.shop.049"] = {
		"Take your time. A vault is patient. So am I, as long as there's no queue.",
		"No need to hurry. Locks don't get bored, and neither do I. Much.",
	},
	["npc_meet.w14.shop.050"] = {
		"Trust is the only thing I can't store for you. That one you bring each time.",
		"I keep things safe. Remembering what they are is your half of the bargain.",
	},
	["npc_meet.w14.shop.051"] = {
		"Strange, owning things I can't carry. Half of me lives in a vault.",
		"A box behind a locked door, full of maybes: maybe I'll need it, maybe I'll come for it.",
	},
	["npc_meet.w14.shop.052"] = {
		"Things go into the vault to be forgotten. That's half the point of a vault.",
		"What I can't bring myself to throw away, I bring here. A bank is a drawer for indecision.",
	},
	["npc_meet.w14.shop.053"] = {
		"Handing my things to someone I barely know and calling it safe. Trust is a strange habit.",
		"I leave my things with someone whose name I hardly know. And somehow it works.",
	},
	["npc_meet.w14.shop.054"] = {
		"The vault doesn't care whether I come back. That's the comfort of it: it simply waits.",
		"Behind a heavy door, a few things of mine sit in the dark and wait. I find that oddly kind.",
	},
	["npc_meet.w14.shop.055"] = {
		"A banker who smiles is either very honest or very good at the job. Possibly both.",
		"The banker's face gives nothing away. I suppose that's the point.",
	},
	["npc_meet.w14.shop.056"] = {
		"hands over a bundle for safekeeping and watches it disappear into the vault.",
		"passes a few things across the counter and watches them carried off toward the locks.",
	},
	["npc_meet.w14.shop.057"] = {
		"waits as {other} unlocks the box, and leans in a little to see what's inside.",
		"stands at the banker's counter, quietly sorting what to keep close and what to leave behind.",
	},
	["npc_meet.w14.shop.058"] = {
		"Just checking it's all still there. Not that I doubt you.",
		"Only a look. I like to see my things now and then, like old friends.",
	},
	["npc_meet.w14.shop.059"] = {
		"Keep this safe for me. Don't ask why I'm keeping it; I don't know either.",
		"Put this somewhere safe, would you? I can't bear to sell it and I can't bear to carry it.",
	},
	["npc_meet.w14.shop.060"] = {
		"Want to call this place home? Say the word and it's done. Coming back is easier when you know the way.",
		"I can mark this inn as yours. Wherever you wander, you'll find the way back here quick enough.",
		"Shall I set you down as one of mine? Then this is where the road brings you back.",
	},
	["npc_meet.w14.shop.061"] = {
		"There's a pot on the fire and bread that isn't too old. Sit, if you've a mind to.",
		"Something to eat? It's simple, but it's hot, and there's plenty.",
		"Hungry? Never mind, eat anyway. Nobody leaves this inn thinner.",
	},
	["npc_meet.w14.shop.062"] = {
		"A room's ready if you want it. Clean sheets, and nobody asks your business.",
		"A bed's free, if you need one. The floor creaks; the bed, I promise, doesn't.",
		"Need a bed? Pick a corner. They're all softer than the road.",
	},
	["npc_meet.w14.shop.063"] = {
		"Sit a while. Whatever brought you in can wait the length of a meal.",
		"Pull up a chair. The rest of the world is all hurry; these chairs never learned the word.",
		"Sit down, sit down. Just watching you stand makes my own feet ache.",
	},
	["npc_meet.w14.shop.064"] = {
		"Everyone who stops here has a story. Keep yours, if you like. I hear plenty.",
		"You'd be amazed what people tell an innkeeper. You'd be more amazed what an innkeeper forgets.",
	},
	["npc_meet.w14.shop.065"] = {
		"The trade is simple: keep a place ready for people who come back.",
		"Go where you must. There'll be a place by the hearth when you're done.",
		"However far you go, a bowl and a bench stay waiting.",
	},
	["npc_meet.w14.shop.066"] = {
		"Only rule of the house: settle up before the brawl, not after.",
		"Pay for what you break, and if you break nothing, I'll remember your face kindly.",
		"Coin on the counter, tempers at the door, and nobody gets thrown out.",
	},
	["npc_meet.w14.shop.067"] = {
		"Rest is the cheapest thing I sell, and the one people skimp on most.",
		"Food, drink, a bed. Of the three, folk always skimp on the bed. Don't.",
		"A full belly, a quiet room, a few hours with nothing to do. Cheapest medicine I know.",
	},
	["npc_meet.w14.shop.068"] = {
		"What'll it be? Water, milk, or something with a bit more bite?",
		"Something to drink? There's the sensible stuff, and there's the good stuff.",
		"Something to wet the throat? Name it. If I haven't got it, I'll swear the last barrel just ran dry.",
	},
	["npc_meet.w14.shop.069"] = {
		"Whatever's weighing on you, set it down a while. I'll keep an eye on it.",
		"Troubles don't get a room. They can wait by the door until you're ready for them.",
	},
	["npc_meet.w14.shop.070"] = {
		"Every guest gets the same here: a seat, a bowl, and peace if they ask for it.",
		"Talk if you want, keep quiet if you'd rather. Either way, the soup's the same.",
		"No one has to be good company here. Quiet company will do.",
	},
	["npc_meet.w14.shop.071"] = {
		"The stew's the same as ever. Take that as a recommendation, not a warning.",
		"Cook's in a good mood, so the stew is edible. You picked your moment well.",
	},
	["npc_meet.w14.shop.072"] = {
		"Inns all smell a little alike: smoke, bread, damp wool. My shoulders drop before I've even sat down.",
		"That mix of old smoke and bread every inn seems to share. It works on me without fail.",
	},
	["npc_meet.w14.shop.073"] = {
		"Calling a place home for a while costs one word with the innkeeper. Easier than most homes.",
		"Home, for now, is wherever I tell the innkeeper it is. A light sort of root.",
	},
	["npc_meet.w14.shop.074"] = {
		"A real chair. Small mercies are the best kind.",
		"Somewhere to sit that wasn't put there by chance. Small comforts count double.",
	},
	["npc_meet.w14.shop.075"] = {
		"Innkeepers hear everything and repeat nothing. Or so they'd like you to believe.",
		"The innkeeper's eyes go to the door each time it opens. A habit of the trade, I'd guess.",
		"An innkeeper knows everyone's order and nobody's business. A rare kind of tact.",
	},
	["npc_meet.w14.shop.076"] = {
		"Any inn, anywhere, has a way of feeling like a return.",
		"Every inn is a little bit the same inn. That's the whole comfort of them.",
	},
	["npc_meet.w14.shop.077"] = {
		"Everything else wants something from me. At an inn, only the bill does.",
		"For the price of a meal, nobody needs me for a while. A bargain.",
	},
	["npc_meet.w14.shop.078"] = {
		"sets the pack down by the counter and lets {g:his|her} shoulders sag at last.",
		"finds a bench near the hearth and sits as if it were a small victory.",
	},
	["npc_meet.w14.shop.079"] = {
		"has {other} keep a place ready, and feels the arrangement settle like an anchor.",
		"lets {other} mark the inn as home, the way one ties a knot to find a path back.",
	},
	["npc_meet.w14.shop.080"] = {
		"lingers by the counter, letting the small sounds of the inn settle around {g:him|her}.",
		"stands a moment at the counter, taking in the comfort of the place before saying a word.",
	},
	["npc_meet.w14.shop.081"] = {
		"orders whatever's in the pot, without asking what it is.",
		"nods at whatever the innkeeper suggests; arguing over a meal feels like a waste of good sitting.",
	},
	["npc_meet.w14.shop.082"] = {
		"Whatever's in the pot, I'll have it. Surprise me.",
		"A seat and something warm in a bowl. That's the whole of my wish list.",
	},
	["npc_meet.w14.shop.083"] = {
		"Mark me down as one of yours. Places like this are good to come back to.",
		"Make this my home for now. I'll try to come back with all my pieces.",
	},
	["npc_meet.w14.shop.084"] = {
		"People who serve travelers learn to read them fast. I wonder what I read like.",
		"Someone whose work is dealing with passersby sees me for a moment, then the next one. A small, honest sort of meeting.",
	},
	["npc_meet.w14.shop.085"] = {
		"Thousands pass by them, and they still find a word for each. That's a skill nobody teaches.",
		"They must say the same few things a hundred times over. They still make them sound meant.",
	},
	["npc_meet.w14.shop.086"] = {
		"Every road is held together by people who stay put so others can keep moving.",
		"Those who stay in one place so travelers needn't carry everything: the world leans on them more than it admits.",
	},
	["npc_meet.w14.shop.087"] = {
		"offers a short nod of greeting, the kind travelers and those who serve them trade without thinking.",
		"greets {other} with a plain courtesy, the kind that costs nothing and opens most doors.",
	},
}, "base_context")
