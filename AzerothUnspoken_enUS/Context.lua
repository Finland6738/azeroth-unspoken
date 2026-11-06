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
}, "base_context")
