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
}, "base_context")
