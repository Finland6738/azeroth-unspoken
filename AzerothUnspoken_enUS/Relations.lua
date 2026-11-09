-- English texts for the relationship lines (steps S6b and S7). The rules are in Data/RegistryRelations.lua.
-- {relation} is the name of the bond (friend, respected rival... or the user's own text): it is quoted like a label.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- greetings
	---------------------------------------------------------------------------
	["rel.greet.unknown"] = {
		"May the road be kind to you, {target}. I don't believe we have met.",
		"Well met. Our paths have not crossed before; you will learn my name soon enough.",
		{ "Hello. We haven't met, have we?", depth = "natural" },
		{ "I offer you the greeting owed to those who come by unknown roads: peace to you, and sweet water along the way.", depth = "elevated" },
	},
	["rel.greet.acquaintance"] = {
		"Ah, you. The face I remember; the name will take me a moment.",
		"We have met before, I think. How do things stand around here?",
	},
	["rel.greet.friend"] = {
		"Hey, {target}! Let me look at you. No new holes, I see.",
		"Good to see you. The road felt longer with nobody to complain to.",
		{ "There you are! Come here.", depth = "natural" },
		{ "Every time I find you again, the day sets itself a little straighter. A greeting is not enough: stay a while.", depth = "elevated" },
	},
	["rel.greet.friend.old"] = {
		"With you there is no need for formalities. Sit down, stay a while.",
		"How long have we known each other? Long enough to skip the pleasantries.",
	},
	["rel.greet.friend.f"] = {
		"There she is! I was afraid the road had swallowed you whole.",
		"My favorite friend, right there. Don't tell the others.",
	},
	["rel.greet.friend.m"] = {
		"There he is! I was afraid the road had swallowed you whole.",
		"My favorite friend, right there. Don't tell the others.",
	},
	["rel.greet.comrade"] = {
		"Side by side, as ever. Tell me where we are headed.",
		"You and I have seen worse. This will be a stroll.",
		{ "You're here. Good, let's go.", depth = "natural" },
		{ "Here we are again, two blades and one stride. Whoever sees us coming together would do well to remember it.", depth = "elevated" },
	},
	["rel.greet.rival"] = {
		"There you are. I wish I could dislike you with a little more conviction.",
		"I bow, rival. You are the only one who makes me give my best.",
	},
	["rel.greet.lover"] = {
		"There you are. The rest of the world can wait a moment.",
		"Time, without you, walks slowly.",
	},
	["rel.greet.wary"] = {
		"I greet you. Do not mistake it: courtesy, not trust.",
		"Good day. Let us keep our hands where they can be seen, shall we?",
	},
	["rel.greet.enemy"] = {
		"We meet again. I hope at least one of us has learned something.",
		"Say what you came to say, and do not linger.",
		{ "You again. Make it quick.", depth = "natural" },
		{ "Chance sets us face to face once more. I expect no peace, but I will have straight words at least.", depth = "elevated" },
	},
	["rel.greet.feared"] = {
		"My pulse quickens every time. I will not let it show.",
		"Breathe. Greet them. Do not be the first to look away.",
	},
	["rel.greet.indifferent"] = {
		"Hello.",
		"Oh. Good day, I suppose.",
	},
	["rel.greet.player"] = {
		"Good to run into you again, {target}.",
		"Hey, fancy meeting you here! The world is smaller than they say.",
	},
	["rel.greet.label"] = {
		"Next to this face, in my journal, it says \"{relation}\". Let us see if it still holds.",
		"\"{relation}\": that is how I wrote this name down. Words on a page change more slowly than people.",
	},
	["rel.greet.innkeeper"] = {
		"Still standing behind that counter? Keep me a spot by the fire?",
		"Back again. The usual, if the usual is still warm.",
	},
	["rel.greet.attraction"] = {
		"Why does every word come out of my mouth in the wrong order whenever they are near?",
		"Just say hello. Normally. How does one say hello normally?",
	},

	---------------------------------------------------------------------------
	-- farewells
	---------------------------------------------------------------------------
	["rel.bye.unknown"] = {
		"Go in peace, and may the path lead you somewhere kinder.",
		{ "Safe travels.", depth = "natural" },
		{ "Go, and may your road be short where it is hard and long where it is fair.", depth = "elevated" },
	},
	["rel.bye.acquaintance"] = {
		"See you around, then. Roads have a habit of crossing again.",
		"Until next time. Maybe next time we will even swap names.",
	},
	["rel.bye.friend"] = {
		"Take it slow, and send word if you do not return. Do not keep me waiting too long.",
		"Be careful, all right? The world has enough empty chairs at table.",
		{ "Bye. Don't do anything stupid without me.", depth = "natural" },
		{ "Go, and take the best part of this day with you. You already took mine.", depth = "elevated" },
	},
	["rel.bye.comrade"] = {
		"May your blade stay keen and your guard high. Until the next front.",
		{ "Until the next fight, then.", depth = "natural" },
		{ "We part here, but the place at my side stays yours for as long as I have breath to hold it.", depth = "elevated" },
	},
	["rel.bye.rival"] = {
		"Do not die before you have lost to me. It would be unsporting.",
		"Off you go. We will meet again, and the next one is mine.",
	},
	["rel.bye.lover"] = {
		"Come back soon. I will leave a candle in the window.",
		"Go. But look back once, before the bend.",
	},
	["rel.bye.hostile"] = {
		"Go. May the next time find us wiser, or at least further apart.",
		"The road is wide. Take your half.",
	},
	["rel.bye.indifferent"] = {
		"Goodbye.",
		"Right. Good day, I suppose.",
	},
	["rel.bye.feared"] = {
		"The weight on my chest has gone. Only now do I notice how heavy it was.",
		"There. It is over. My hands stopped shaking just in time.",
	},
	["rel.bye.player"] = {
		"Safe roads, {target}. We will cross paths again, sooner or later.",
		"See you! Say hello to the road for me.",
	},
	["rel.bye.close"] = {
		"watches until the departing figure is only a speck, and then a little longer.",
		"raises a hand in a farewell that lasts longer than it needs to.",
	},

	---------------------------------------------------------------------------
	-- thanks
	---------------------------------------------------------------------------
	["rel.thanks.unknown"] = {
		"I am grateful. One day I shall remember your name.",
		"Thank you, whoever you are. You did not have to.",
	},
	["rel.thanks.acquaintance"] = {
		"Thank you, truly. We are little more than two familiar faces, and still.",
		"I owe you one. I will remember you, and this time your name too.",
	},
	["rel.thanks.indifferent"] = {
		"Thanks.",
		"Ah. Thank you, then.",
	},
	["rel.thanks.friend"] = {
		"Thanks. Friends do not keep count, but I will keep it anyway.",
		"I don't know what I'd do without you. Don't spread it around.",
	},
	["rel.thanks.comrade"] = {
		"You covered my back. Next time it is my turn, and I will not take no for an answer.",
		"I owe you my hide. As usual.",
	},
	["rel.thanks.rival"] = {
		"Thank you. Tell no one; it would ruin both our reputations.",
		"A favor from you... I will repay it with interest. As with everything.",
	},
	["rel.thanks.lover"] = {
		"Thank you. And not only for this.",
		"Thank you. You know it is not the right word, but it is the one I have.",
	},
	["rel.thanks.wary"] = {
		"Noted. I will stay on my guard, but it is noted.",
		"Thank you. I wonder what this will cost me.",
	},
	["rel.thanks.feared"] = {
		"A kindness, from the last person I expected it from. I am not sure whether I feel better or worse.",
		"I said thank you and my voice held. That is something.",
	},

	---------------------------------------------------------------------------
	-- healing
	---------------------------------------------------------------------------
	["rel.heal.friend"] = {
		"Hold still, I will patch you up. Do not look at the wound; it is ugly.",
		"Easy now, the light is coming. And next time, duck.",
	},
	["rel.heal.comrade"] = {
		"While I have breath, you will not fall.",
		"Hang on. I have seen worse, and we fixed that together.",
	},
	["rel.heal.lover"] = {
		"My hands tremble more for you than for the fight.",
		"Breathe with me. Like that. Don't leave me all the fear to carry alone.",
	},
	["rel.heal.rival"] = {
		"I am healing you because I want to beat you at full strength. Do not let it go to your head.",
		"There. Now you have no excuse for losing.",
	},
	["rel.heal.enemy"] = {
		"Healing someone who wronged me. I wonder which of us ought to be ashamed.",
		"My hands do their work. My heart waits outside the door, for now.",
	},
	["rel.heal.unknown"] = {
		"I do not know you, but a wound does not ask for a name.",
		{ "Stay down, I've got you.", depth = "natural" },
	},
	["rel.heal.acquaintance"] = {
		"Stop a moment, let me see to that cut.",
		"We barely know each other, but you bleed the same as anyone.",
	},
	["rel.heal.wary"] = {
		"I will heal this, yes. Not out of trust: a wounded ally at my back is worse than one in front.",
		"Strange work, mending someone who keeps my hand near my knife.",
	},
	["rel.heal.indifferent"] = {
		"Hold on. Two minutes and you're fine.",
		"There. No need for thanks.",
	},
	["rel.heal.feared"] = {
		"My hands on that wound, and my heart going like a drum. They must not notice.",
		"Healing someone I am afraid of. It may be the bravest thing I do today.",
	},

	---------------------------------------------------------------------------
	-- battle and victory beside someone
	---------------------------------------------------------------------------
	["rel.battle.friend"] = {
		"With a friend beside me, even this weighs less.",
		"If I fall, shout. If you fall, I will catch you.",
	},
	["rel.battle.comrade"] = {
		"Shield to shield. They will remember us as a wall.",
		"You take the right, I take the left. Like always.",
	},
	["rel.battle.lover"] = {
		"Do not look at me, look at them. I need a clear head, and you are not helping.",
		"Eyes on the enemy. Not on where they are standing. On the enemy.",
	},
	["rel.battle.rival"] = {
		"I hope to do better than you today. For once I would like to win while on the same side.",
		"Keeping score? Keeping score.",
	},
	["rel.battle.enemy"] = {
		"Fighting beside someone I swore never to forgive. The field makes no such distinctions.",
		"Same side, for today. Tomorrow we'll see.",
	},
	["rel.battle.known"] = {
		"grips the hilt and hears, close by, a familiar breath.",
		"shifts half a step without thinking, to leave room for someone long used to fighting at {g:his|her} side.",
	},
	["rel.battle.acquaintance"] = {
		"We hardly know each other, but today we watch each other's backs. That's all.",
		"Eyes open, you! If we live through this, we'll introduce ourselves properly.",
	},
	["rel.battle.wary"] = {
		"I keep an eye on the enemy ahead, and half an eye on the ally beside me.",
		"I don't trust the one fighting at my side. Lucky for us, today we want the same thing dead.",
	},
	["rel.battle.feared"] = {
		"Fighting next to someone I fear. I cannot tell if it makes me safer or not.",
		"Better to have that fury on my side. Much better.",
	},
	["rel.victory.friend"] = {
		"We did it. The first round is mine, and that is not a suggestion.",
		"See? Together we are not half bad.",
	},
	["rel.victory.comrade"] = {
		"The field is ours. Remember the name of whoever stood beside you.",
		"Still standing, both of us. As promised.",
	},
	["rel.victory.lover"] = {
		"Unharmed, both of us. I will keep telling myself until I believe it.",
		"It's over. Now I can breathe again.",
	},
	["rel.victory.rival"] = {
		"I admit you fought well. Do not expect me to say it twice.",
		"A draw, I'd say. This time.",
	},
	["rel.victory.acquaintance"] = {
		"Good work. I needed a hand, and you were there.",
		"Not bad, for people who barely know each other!",
	},
	["rel.victory.wary"] = {
		"We won together. It changes nothing I think; it only means I am alive to think it.",
		"The enemy is down. The doubt is still standing.",
	},
	["rel.victory.feared"] = {
		"We won, and I saw up close how they fight. The fear has not gone; it has only grown sharper.",
		"Good thing they were on my side. I will tell myself so tonight, before I sleep.",
	},
	["rel.victory.known"] = {
		"turns first toward the one who fought at {g:his|her} side, and only then lowers {g:his|her} weapon.",
		"trades a look with a friendly face: no words needed to count the scratches.",
	},

	---------------------------------------------------------------------------
	-- meeting known NPCs
	---------------------------------------------------------------------------
	["rel.npc.acquaintance"] = {
		"A face I have seen before. We have not said much, but enough to know each other.",
		"We know each other by sight. That is something, in a world this big.",
	},
	["rel.npc.indifferent"] = {
		"We have known each other a while and I feel nothing either way. Even that is a bond, of a sort.",
		"Always there, always the same. Neither of us ever tried any harder.",
	},
	["rel.npc.friend"] = {
		"Seeing a friendly face again always helps, even when there is nothing to ask.",
		"A friendly face, here. I feel a little less far from home.",
		{ "Oh, look who it is. Good.", depth = "natural" },
		{ "In all this wandering, some doors open before you even knock. This is one of them.", depth = "elevated" },
	},
	["rel.npc.friend.f"] = {
		"A friend, here. The road feels lighter.",
		"She has always treated me well. I am smiling before I notice.",
	},
	["rel.npc.friend.m"] = {
		"A friend, here. The road feels lighter.",
		"He has always treated me well. I am smiling before I notice.",
	},
	["rel.npc.friend.old"] = {
		"How many times have we crossed paths by now? Enough that words are no longer needed.",
		"We have known each other so long that a nod will do.",
	},
	["rel.npc.comrade"] = {
		"If I ever needed one more arm, here is one that would not ask why.",
		{ "Someone I trust. I just know it.", depth = "natural" },
		{ "Some bonds are forged without oaths, in mud and weariness: this is one of them, and it does not break.", depth = "elevated" },
	},
	["rel.npc.rival"] = {
		"\"{relation}\": that is what my journal says. It is rare for esteem to be this loud.",
		"Every time we cross paths, I want to do better. Annoying.",
	},
	["rel.npc.enemy"] = {
		"Every word here is a step on thin ice. I remember what happened; I suspect no one on the other side has forgotten.",
		"Easy. Old rust does not polish off with words.",
	},
	["rel.npc.wary"] = {
		"The smile is polite; my hand stays near my purse. Old habits, and good reasons.",
		"Smiles on both sides. Neither of us believes them.",
	},
	["rel.npc.feared"] = {
		"Speaking here takes a courage I would never admit to. I choose my words well.",
		"Steady voice, straight back. What I feel inside stays inside.",
	},
	["rel.npc.lover"] = {
		"Smiling now costs nothing. Hiding it does.",
		"Ridiculous thing, the heart. One face, and it forgets everything else.",
	},
	["rel.npc.bond"] = {
		"some bonds no longer need a name; they simply remain.",
		"comes closer without hurry, like someone returning to a room where {g:he|she} has always been welcome.",
	},
	["rel.npc.known"] = {
		"This is not the first time we have talked, you and I. In the end you start to recognize each other.",
		"Familiar faces. They make the world a little smaller, and a little more mine.",
	},
	["rel.npc.label"] = {
		"In my journal, next to this name, it says \"{relation}\". Let us see if it is still the right word.",
		"\"{relation}\". Labels are convenient; people, less so.",
	},
	["rel.npc.hated"] = {
		"Not every account gets settled. This one stays open for now, and it burns.",
		"I am talking to someone I cannot stand, and my voice is almost calm. Almost.",
	},
	["rel.npc.close"] = {
		"lingers longer than needed, and the talk loosens the way it does between people who know each other well.",
		"is half smiling before a word is said: some meetings begin like that.",
	},
	-- N2 (#214): the first meeting remembered
	["rel.npc.met.novice"] = {
		"The first time I stood here I was still a novice. They have watched me grow, a little at a time.",
		{ "I was barely more than a beginner when we first met.", depth = "natural" },
		{ "This face knew me before the road had taught me anything; every season since has been written over that first, clumsy page.", depth = "elevated" },
	},
	["rel.npc.met.night"] = {
		"Our first meeting was by night. In daylight this face still seems a little new to me.",
		"I first knew this voice in the dark, before I knew the face that goes with it.",
	},
	["rel.npc.met.rain"] = {
		"It was raining the first time I found this door. Strange, the things one keeps.",
		{ "I remember the rain that first day, more than the words.", depth = "natural" },
	},
	["rel.npc.met.snow"] = {
		"Snow was falling at our first meeting; I remember the cold better than what was said.",
		"Whenever I come back, some part of me still shakes the snow of that first day from my cloak.",
	},
	["rel.npc.met.long"] = {
		"Months now since our first meeting. Long enough for a face to become part of the road.",
		{ "We go back a while, this one and I.", depth = "natural" },
	},
	-- N4 (#216): the word given to an NPC
	["rel.npc.promise.waiting"] = {
		"I still owe this one a task. The days have a way of piling up between a promise and its keeping.",
		{ "I said I would see to it. I have not, yet.", depth = "natural" },
	},
	["rel.npc.oath.broken"] = {
		"I swore, and did not keep it. Every greeting here now has that oath standing between us.",
		{ "They remember. So do I.", depth = "natural" },
		{ "An oath broken is a door that does not close again; I feel the draught of it each time I stand here.", depth = "elevated" },
	},
	["rel.npc.oath.here"] = {
		"Word travels in a place like this. I wonder how many here know about the oath I broke.",
		{ "People talk. I would rather they talked about something else.", depth = "natural" },
	},
	-- N6 (#218): local reputation
	["rel.npc.town.title"] = {
		"{title}, they call me here. I have not decided yet whether the name fits me, or I it.",
		{ "{title}. Strange, how a place decides who you are.", depth = "natural" },
	},
	["rel.npc.town.word.good"] = {
		"A face I barely know, and already a smile for me. Someone here has been speaking kindly.",
		{ "They have heard of me. Good things, it seems.", depth = "natural" },
	},
	["rel.npc.town.word.bad"] = {
		"A stranger, and still that guarded look. Whatever they heard about me, it walked in before I did.",
		{ "They have heard of me. Not the good part.", depth = "natural" },
	},
	["rel.npc.rival.noticed"] = {
		"I can feel it in the greeting: they know exactly whose door I have been knocking on.",
		{ "They know where else I spend my time. Of course they do.", depth = "natural" },
	},
	-- N3 (#215): romance with an NPC
	["rel.npc.attraction"] = {
		"Nothing to see here. Only a pulse that has forgotten its own pace.",
		{ "Breathe. It is only a conversation. It is only a conversation.", depth = "natural" },
	},
	["rel.npc.vowed"] = {
		"The vow is still there, unspoken, and it has not grown any lighter.",
		"I promised in silence. Silence keeps its promises better than words do.",
	},
	-- N5 (#217): the nickname an NPC gave, and a favour still open
	["rel.npc.nickname"] = {
		"\"{nickname}.\" Only this one calls me that, and somehow I answer to it.",
		{ "{nickname}. It started as a joke. It is not one any more.", depth = "natural" },
	},
	["rel.npc.favour.open"] = {
		"There was a small thing I said I would do for this one. Small things are the easiest to let slip.",
		{ "I still owe a favor here. A little one. Still owed.", depth = "natural" },
	},
	["rel.npc.innkeeper"] = {
		"Here I am again. Is there still some of that stew, or do I settle for bread?",
		"Always a pleasure. Got a room for someone who walked too far?",
	},
	["rel.npc.merchant"] = {
		"This shop and I know each other well. It knows the bottom of my purse, too.",
		"A merchant who knows me. I hope that means a discount; I fear it means the opposite.",
	},
	---------------------------------------------------------------------------
	-- a known player recognised (#106), by feeling (#109) and by what the addon observed (#110)
	---------------------------------------------------------------------------
	["rel.player.trust"] = {
		"{other}. One of the few I would turn my back on without looking.",
		"There is {other}. Some people you check twice; with this one I stopped checking a while ago.",
		{ "{other}. Good. I can breathe.", depth = "natural" },
		{ "Trust is not given; it is found already built when you need it. With {other} it was standing there before I went looking.", depth = "elevated" },
	},
	["rel.player.liking"] = {
		"{other} again, and I notice I am already smiling. Hard to say why; some people are simply easy to like.",
		"Ha, {other}. The road weighs less with certain faces on it.",
		{ "Oh, {other}! Good.", depth = "natural" },
		{ "Some meetings need no reason. {other} walks into view and the day arranges itself a little better.", depth = "elevated" },
	},
	["rel.player.gratitude"] = {
		"{other}. I have not forgotten what they did for me, and I will not, however little I say about it.",
		"There goes someone I owe more than I have ever said. One day I will find the right words, or the right moment.",
		{ "{other}. I still owe them one.", depth = "natural" },
		{ "A debt of gratitude does not shrink with the years; it only learns to wait quietly. {other} is on the road, and mine is still open.", depth = "elevated" },
	},
	["rel.player.wariness"] = {
		"{other}. A nod, a smile, and eyes kept open. Old habit, newer reasons.",
		"A name I know, and not one I leave near my purse. Courtesy costs nothing; trust costs a great deal.",
		{ "{other}. Careful now.", depth = "natural" },
		{ "I do not think {other} means harm, exactly. I only know how often \"exactly\" is the word that gives way.", depth = "elevated" },
	},
	["rel.player.fear"] = {
		"{other} again. My pulse notices before I do. I keep my face still and my pace even.",
		"I know that walk. I will not be the first to look at {other}, and I will not be the last to look away.",
		{ "{other}. Steady.", depth = "natural" },
		{ "Fear is only attention with nowhere to go. All of mine has turned toward {other}, and it will not be talked out of it.", depth = "elevated" },
	},
	["rel.player.resentment"] = {
		"{other}. I have not forgotten, and I have not forgiven. I will be civil for now: civility is cheaper than a fight.",
		"There is {other}. Some debts are not paid in coin, and this one is still open.",
		{ "{other}. Of course.", depth = "natural" },
		{ "Resentment keeps a very good memory and a very poor sense of time. Every detail of {other} is exactly where I left it.", depth = "elevated" },
	},
	["rel.player.ally"] = {
		"{other}. We want the same thing, and that counts for more than a long friendship. Let us see what we can do with it.",
		"An alliance by choice: no one forced it, and no one can undo it but us.",
		{ "{other}: on my side, as agreed.", depth = "natural" },
	},
	["rel.player.friend"] = {
		"{other}! Reassuring, to find a friend in the middle of a crowd.",
		"Some meetings you do not plan; they simply turn out right.",
		{ "Hey, {other}.", depth = "natural" },
	},
	["rel.player.rival"] = {
		"{other}. I would never say it aloud, but I try harder when they are around.",
		"A rival worth the name, on the same road. It was bound to happen.",
		{ "{other}. Round two, then.", depth = "natural" },
	},
	["rel.player.enemy"] = {
		"{other}. Our roads cross again, and neither of us has changed our mind.",
		"There is no one I would rather avoid. And yet here we are.",
		{ "{other}. Of all people.", depth = "natural" },
	},
	["rel.player.wary"] = {
		"I know the name, and the name does not reassure me.",
		"{other}. I nod, and I keep my distance.",
		{ "{other}. Hm.", depth = "natural" },
	},
	["rel.player.feared"] = {
		"{other} is here. I find myself taking a step back without admitting it.",
		"Whatever I feel for {other}, it is not comfort. I keep walking.",
	},
	["rel.player.known"] = {
		"I know that name: {other}. We have crossed paths before.",
		"{other}. A face from the road; the details will come back in a moment.",
		{ "Ah, {other}.", depth = "natural" },
	},
	["rel.player.absent.long"] = {
		"{other}. It has been a long while: long enough to forget where we left things, not long enough to forget that we did.",
		"A long time since the last meeting with {other}. Roads rarely bring the same people back at the same distance.",
		{ "{other}. It has been ages.", depth = "natural" },
	},
	["rel.player.absent.weeks"] = {
		"Some weeks since the last time. Long enough to wonder what {other} has been up to.",
		"{other} again, after a few weeks. Not long; just long enough to notice the gap.",
	},
	["rel.player.recent"] = {
		"{other} again, and so soon. Today the road feels small.",
		"We keep meeting today, {other} and I. Either a coincidence or a very patient road.",
	},
	["rel.player.met_here"] = {
		"The last time I saw {other}, it was right here. Places remember us a little too.",
		"Same spot as before, {other}. Some places collect meetings the way others collect dust.",
	},
	["rel.player.shared.combat"] = {
		"We have fought side by side, {other} and I. That does not wash off with a single parting.",
		"A shared fight leaves a mark that a handshake never does.",
		{ "{other}. We have bled in the same fight.", depth = "natural" },
		{ "Two people who have stood in the same line, facing the same thing, carry a small country between them. Mine includes {other}.", depth = "elevated" },
	},
	["rel.player.shared.duel"] = {
		"We faced each other in a duel, {other} and I: the wrist remembers better than the mind.",
		"I have measured myself against {other}. It is a kind of introduction.",
		{ "{other}. Our duel is still in my wrist.", depth = "natural" },
	},
	["rel.greet.ally"] = {
		"{target}, well met. We stand on the same side of this, and that is worth a greeting.",
		"Ally. A small word, but I mean it whole.",
		{ "Good, you are here. Let us go.", depth = "natural" },
	},
	["rel.bye.ally"] = {
		"Until the next time we need each other. It will not be long.",
		"Walk well. We meet again wherever the cause calls us.",
		{ "Until then. You know where to find me.", depth = "natural" },
	},
	-- N9 (#221): the NPC relationships milestone, by role and disposition
	["rel.npc.attraction.early"] = {
		"I have caught myself choosing this road on purpose. That is all. That is all it is.",
		{ "Why do I always end up on this road? Never mind. Do not answer that.", depth = "natural" },
	},
	["rel.npc.attraction.guard"] = {
		"So much to keep an eye on, and still a glance to spare for me. I am reading too much into it. Probably.",
		{ "On duty, and still that look. Do not be foolish.", depth = "natural" },
	},
	["rel.npc.attraction.innkeeper"] = {
		"I tell myself it is the hearth that makes this inn so warm.",
		{ "A good hearth, a good inn. That is why I stay. Mostly.", depth = "natural" },
	},
	["rel.npc.attraction.near"] = {
		"My hands do not know what to do while we talk. They used to know.",
		{ "Hands still. Say something ordinary. Anything ordinary.", depth = "natural" },
	},
	["rel.npc.attraction.trainer"] = {
		"I came here to learn. Halfway through the lesson, I always forget what.",
		{ "Focus. The lesson. Only the lesson.", depth = "natural" },
	},
	["rel.npc.favour.close"] = {
		"When someone this close asks for so little, the little matters more.",
		{ "Small, what they asked. I mean to keep it.", depth = "natural" },
	},
	["rel.npc.favour.innkeeper"] = {
		"Something was asked of me behind this door, and is not yet done. The welcome feels a little like a reminder.",
		{ "I still owe this door a small thing.", depth = "natural" },
	},
	["rel.npc.favour.merchant"] = {
		"A small favor, asked over the counter between one coin and the next. I keep meaning to see to it.",
		{ "Right. That favor. Soon. Before I count another coin here.", depth = "natural" },
	},
	["rel.npc.met.close"] = {
		"A month ago or more, this was a face like any other at a door like any other. I could not say on which day that stopped being true.",
		{ "A stranger at a door, once. Hard to believe now.", depth = "natural" },
		{ "There was a day when I walked past this door without a thought; I could not find that day again if I searched the whole road for it.", depth = "elevated" },
	},
	["rel.npc.met.cold"] = {
		"Weeks I have known these eyes, and each week has made them harder to meet. Knowing someone long is not the same as being welcome.",
		{ "A long acquaintance. Not one kind look in it.", depth = "natural" },
	},
	["rel.npc.met.dawn"] = {
		"Our first meeting was at dawn, with sleep still in both our eyes. Some acquaintances start honest like that.",
		{ "It was dawn, the first time. To me this is still a morning face.", depth = "natural" },
	},
	["rel.npc.met.dusk"] = {
		"The first time I heard this voice, it was dusk and the day was letting go. Some faces arrive with the evening and keep it.",
		{ "Dusk, the first time. Every meeting since has felt a little earlier in the day.", depth = "natural" },
	},
	["rel.npc.met.fog"] = {
		"Fog, the day we met. I walked straight past before I knew anyone was there, and had to turn back.",
		{ "We met in the fog. Half a face, at first. The rest came later.", depth = "natural" },
	},
	["rel.npc.met.guard"] = {
		"This guard knew me when I was green enough to ask the way twice. Now I get a nod, and no directions.",
		{ "This one knew me when I was nobody worth stopping.", depth = "natural" },
	},
	["rel.npc.met.merchant"] = {
		"I used to count my coins twice at this counter before every purchase. The merchant pretended not to notice. I have not forgotten that.",
		{ "My coins were fewer the first time I came here.", depth = "natural" },
	},
	["rel.npc.met.questgiver"] = {
		"When we first met I would have been glad of the smallest task. The tasks have grown since; so, I hope, have I.",
		{ "Back then, any errand would have done. Not now.", depth = "natural" },
	},
	["rel.npc.met.sand"] = {
		"Sand in the air at our first meeting; I spent half of it squinting. I like to think I have made a better impression since.",
		{ "A sandstorm, the first time. We have both seen clearer days.", depth = "natural" },
	},
	["rel.npc.met.trainer"] = {
		"The first time I stood before this teacher I could barely hold a stance. They still look at my feet before my face.",
		{ "This one taught me when I knew nothing. I hope it shows.", depth = "natural" },
		{ "All this teacher gave me I have spent on the road and earned back twice; still, in their eyes, I am measured against the novice who first stood here.", depth = "elevated" },
	},
	["rel.npc.nickname.bond"] = {
		"There are people who know my name, and one who gave me another. I know which I would keep.",
		{ "{nickname}. Said like that, it is almost a home.", depth = "natural" },
	},
	["rel.npc.nickname.guard"] = {
		"\"{nickname}\", in a guard's voice, in front of everyone. I pretend to mind.",
		{ "{nickname}. The watch has a voice for everyone. Mine could be worse.", depth = "natural" },
	},
	["rel.npc.nickname.innkeeper"] = {
		"Called across a common room, \"{nickname}\" sounds less like a name than like being expected.",
		{ "{nickname}. At this inn it might as well be carved on my chair.", depth = "natural" },
	},
	["rel.npc.nickname.merchant"] = {
		"\"{nickname}\", across the counter, and the coins feel lighter in my hand, or so I like to think.",
		{ "{nickname}. It costs them less than a coin off the price. It is worth more to me.", depth = "natural" },
	},
	["rel.npc.nickname.trainer"] = {
		"When my teacher says \"{nickname}\", it is half a compliment and half a warning. I have learned to hear both.",
		{ "{nickname}, they call me. Usually right before a correction.", depth = "natural" },
	},
	["rel.npc.oath.close"] = {
		"The bond holds, somehow, after the oath I broke. Kindness can be harder to stand in front of than anger.",
		{ "A smile, still. I have not earned it, not again.", depth = "natural" },
		{ "I broke my word to someone who still greets me warmly; that warmth is a debt no coin settles, and I carry it in at every visit.", depth = "elevated" },
	},
	["rel.npc.oath.cold"] = {
		"An oath was broken here, and this is what grows in its place: a cold greeting, and colder silences.",
		{ "I broke it. This is the price, and it is fair.", depth = "natural" },
	},
	["rel.npc.oath.guard"] = {
		"A guard remembers faces for a living. This one remembers mine, and the oath that went with it.",
		{ "The eye of a watch that knows what I did.", depth = "natural" },
	},
	["rel.npc.oath.here.guard"] = {
		"At the change of the watch they hand everything on. My broken oath must have done the rounds by now.",
		{ "The guards talk. I am sure of it.", depth = "natural" },
	},
	["rel.npc.oath.here.innkeeper"] = {
		"Inns are where voices carry farthest. I wonder what this house has heard over the counter about the oath I broke.",
		{ "Every voice in town passes through an inn. That one too.", depth = "natural" },
	},
	["rel.npc.promise.again"] = {
		"Another promise, here, where I broke one before. They must be wondering whether this one will hold. So am I.",
		{ "My word again. It is worth less here than it was.", depth = "natural" },
	},
	["rel.npc.promise.friend"] = {
		"A stranger I could keep waiting. A friend waiting on my word is a different weight.",
		{ "They trust me to see it done. I had better.", depth = "natural" },
	},
	["rel.npc.promise.long"] = {
		"A month, near enough, since I gave my word here. At some point a delay becomes an answer.",
		{ "Thirty days. If they stop asking, that will be worse.", depth = "natural" },
	},
	["rel.npc.promise.questgiver"] = {
		"The task I took from this one is still with me, folded small, as if that made it lighter.",
		{ "They will ask. I will have to say: not yet.", depth = "natural" },
	},
	["rel.npc.rival.innkeeper"] = {
		"Two inns, one traveler. I should have known the ale here would taste of comparison.",
		{ "They know which other hearth I sit at. Innkeepers always know.", depth = "natural" },
	},
	["rel.npc.rival.ironic"] = {
		"A smile with a question folded into it: and how is the competition treating you? I let it pass.",
		{ "Teasing, not angry. I will take it.", depth = "natural" },
	},
	["rel.npc.rival.jealous"] = {
		"There is an edge to the welcome. Friendship at one door is noticed at the next.",
		{ "Someone at this door has been counting my visits to another.", depth = "natural" },
	},
	["rel.npc.town.champion"] = {
		"{title}. They say it as if it had always been so. I remember when nobody here knew my name.",
		{ "{title}. A big name to carry. I am still growing into it.", depth = "natural" },
	},
	["rel.npc.town.title.guard"] = {
		"Even the watch knows me here as {title}. Guards are slow to trust; that is why it counts.",
		{ "{title}. Even the guards say it. Mostly with a straight face.", depth = "natural" },
	},
	["rel.npc.town.title.innkeeper"] = {
		"At this inn, {title} pays for the ale like everyone else, and is reminded of it loudly. Fair enough.",
		{ "{title}, and still paying for my ale. As it should be.", depth = "natural" },
	},
	["rel.npc.town.word.bad.guard"] = {
		"A guard I have never spoken to, and already that measuring eye. Whatever they heard of me came through the gate before I did.",
		{ "Never met this one. Their eye says they have heard of me anyway.", depth = "natural" },
	},
	["rel.npc.town.word.bad.innkeeper"] = {
		"The welcome here is careful, and careful is not how inns greet people. The talk of me has not been kind.",
		{ "Even the inn has heard. Of course it has.", depth = "natural" },
	},
	["rel.npc.town.word.good.innkeeper"] = {
		"The smile here came before my name did. Someone in this town has been telling stories about me, and kind ones.",
		{ "Word of me got here first. Good word, by that smile.", depth = "natural" },
	},
	["rel.npc.town.word.good.merchant"] = {
		"A new counter, and already the look kept for regular customers. My good name has been doing my shopping for me.",
		{ "My name walked in ahead of me. It seems to have been well spent.", depth = "natural" },
	},
	["rel.npc.vowed.bond"] = {
		"No one knows what I promised in silence, this one least of all. Some secrets are a kind of shelter.",
		{ "Still here. Still keeping it.", depth = "natural" },
	},
	["rel.npc.vowed.guard"] = {
		"They keep the watch, and never guess that someone, in silence, keeps one too.",
		{ "Take care of yourself. I will not say it aloud.", depth = "natural" },
	},
	["rel.npc.vowed.innkeeper"] = {
		"A candle in the window here, and I let myself pretend it is lit for me. A small pretense. I keep it.",
		{ "A candle in the window. Of all the inns on the road, this one.", depth = "natural" },
	},
	["rel.home.cold"] = {
		"Home, they call it. The fire burns as it always did; it is the welcome that went out.",
		{ "Same inn. A colder room.", depth = "natural" },
	},
	["rel.home.return"] = {
		"Long roads, and at the end of them this same fire. Home is a smaller word than it sounds, and a better one.",
		{ "Home. The chair by the fire is still mine.", depth = "natural" },
	},
	["rel.npc.foe.attacked"] = {
		"They have not forgotten the day I struck first. Neither have I.",
		{ "They remember. Of course they do.", depth = "natural" },
	},
	["rel.npc.foe.host"] = {
		"This hearth took me in. I answered with steel, and the fire here has been cold ever since.",
		{ "No door shuts harder than the one you broke.", depth = "natural" },
	},
	["rel.npc.foe.killed"] = {
		"I ended them once. Whoever stands here now looks at me as if they remember.",
		{ "Some faces should not look at you twice.", depth = "natural" },
	},
	["rel.npc.town.betrayed"] = {
		"Word of what I did has gone round this place. Even the kind ones measure me now.",
		{ "They talk more quietly when I pass.", depth = "natural" },
	},
	["rel.town.foe"] = {
		"They have not forgotten me here, and I gave them reasons.",
		{ "Every guard here knows my face.", depth = "natural" },
	},
	-- N8 (#220, #125): the companion pet ({pet}), grief for the pet, an NPC ({other}) and a group member ({other})
	["rel.ally.fall"] = {
		"{other} is down. I mark the place and keep going: the dead are owed that much, the living more.",
		{ "{other}, down. Keep moving.", depth = "natural" },
	},
	["rel.ally.fall.deep"] = {
		"One of us fell in the dark of this place. These stones keep a long count.",
		"Another name for these halls to keep. I will carry it out of here, at least.",
	},
	["rel.ally.fall.friend"] = {
		"Not {other}. We swore to watch each other's backs, and I looked away.",
		"{other}, no. Get up. Please, get up.",
	},
	["rel.ally.fall.stranger"] = {
		"I barely knew the sound of {other}'s name. The road will not let me forget it now.",
		"{other} fought beside me for an hour, and fell beside me. That is a kind of kinship.",
	},
	["rel.grief.npc"] = {
		"{other}. I knew that voice, that face. Now there is only stillness, and what I remember.",
		{ "{other}... no.", depth = "natural" },
	},
	["rel.grief.npc.close"] = {
		"Not {other}. Of all the faces on this road, not that one.",
		"{other}. I kept meaning to come back sooner.",
	},
	["rel.grief.npc.innkeeper"] = {
		"The hearth of {other} will burn for someone else now. I owe that fire more nights than I can count.",
		"No more warm welcomes from {other}. The road just grew colder.",
	},
	["rel.grief.pet.beast"] = {
		"{pet} lies still. I kneel, and the world goes on around us as if nothing had happened.",
		{ "No. Not {pet}.", depth = "natural" },
	},
	["rel.grief.pet.bonded"] = {
		"So many roads with {pet} at my heel. The silence where those steps were is the loudest thing here.",
		"{pet} walked every road with me. This is the first I will walk alone.",
	},
	["rel.grief.pet.demon"] = {
		"{pet} is gone, torn back into the dark. I should not miss a bound thing. I do, a little.",
		"Bound or not, {pet} stood between me and harm. That counts for something.",
	},
	["rel.pet.bond.bonded"] = {
		"{pet} and I. Two names, one road. I could no longer say which of us follows the other.",
		"There is no word for what {pet} is to me now. Companion falls short.",
	},
	["rel.pet.bond.demon"] = {
		"Even {pet} hesitates before mocking me now. From a demon, that is almost affection.",
		"{pet} still calls me master with a curl of the lip. The curl is smaller lately.",
	},
	["rel.pet.bond.familiar"] = {
		"{pet} no longer waits for the command. It already knows where I am going.",
		"{pet} and I have found a rhythm. Neither of us needs to look back any more.",
	},
	["rel.pet.bond.trusted"] = {
		"I sleep easier with {pet} on watch. When did that happen?",
		"If {pet} stops, I stop. I have learned to trust what it hears before I do.",
	},
	["rel.pet.call.beast"] = {
		"A whistle, and {pet} is at my side. Some things in this world still answer when called.",
		{ "There you are, {pet}.", depth = "natural" },
	},
	["rel.pet.call.bonded"] = {
		"{pet} again, and the road feels shorter. We have walked too far together to call it service.",
		"{pet} falls in beside me without a sound, as if we had never parted.",
	},
	["rel.pet.call.demon"] = {
		"The circle opens and {pet} steps out, already bored with me. A bargain is a bargain.",
		{ "{pet}. A bond neither of us enjoys.", depth = "natural" },
	},
	["rel.pet.call.new"] = {
		"{pet} watches me the way I watch {pet}. We are still learning each other's ways.",
		"A new name to learn, {pet}. A new pace to match.",
	},
	["rel.pet.dismiss.beast"] = {
		"{pet} slips off into the brush. The quiet it leaves behind is a little too wide.",
		{ "Rest, {pet}.", depth = "natural" },
	},
	["rel.pet.dismiss.demon"] = {
		"{pet} fades back to wherever it waits between summonings. I do not ask where.",
		"{pet} goes with a last sneer. The air is lighter, and somehow emptier.",
	},
	["rel.pet.mood.content"] = {
		"{pet} settles, calmer now. A full belly mends more than people think.",
		"{pet} has stopped grumbling. Peace returns, one meal at a time.",
	},
	["rel.pet.mood.happy"] = {
		"{pet} is in fine spirits. Hard to stay grim with that bounding along beside me.",
		"{pet} seems almost proud of itself today. Fair enough: so am I.",
	},
	["rel.pet.mood.unhappy"] = {
		"{pet} has gone sullen. Fed late and worked hard: I would sulk too.",
		"{pet} gives me a look I know too well. I owe it something, and it knows.",
	},
	-- N9 (#221), second part: hostility (N1: grudge, hatred, betrayal, the other faction's town, guest-right, coming home),
	-- the companion pet and grief (N8), by role and disposition where the engine reads them. The inner voice only.
	["rel.ally.fall.devout"] = {
		"Whatever watches over the fallen, let it find {other} quickly. I keep the prayer short, and mean all of it.",
		{ "Go gently, {other}. Be found.", depth = "natural" },
	},
	["rel.ally.fall.night"] = {
		"{other} fell, and the night did not even pause. I will remember it, since the night will not.",
		{ "{other}. A dark night, darker now.", depth = "natural" },
	},
	["rel.ally.fall.rival"] = {
		"{other}, down. We argued over every kill. I would give this one up gladly to hear the argument again.",
		{ "Get up, {other}. You still owe me an argument.", depth = "natural" },
	},
	["rel.ally.fall.stoic"] = {
		"{other} fell well. I will say so later, to whoever asks. Now there is work.",
		{ "{other}. Later. Now, the work.", depth = "natural" },
	},
	["rel.grief.npc.friend"] = {
		"{other} was one of the faces that made this town feel known. It just became a little stranger.",
		{ "{other}. One friend fewer on this road.", depth = "natural" },
	},
	["rel.grief.npc.guard"] = {
		"{other} stood at this post every time I passed. The post is still here.",
		{ "{other}'s post, empty.", depth = "natural" },
	},
	["rel.grief.npc.merchant"] = {
		"{other} always had a word for me across the counter, and some news I had not asked for. The counter is very quiet.",
		{ "{other}. The counter is quiet.", depth = "natural" },
	},
	["rel.grief.npc.questgiver"] = {
		"{other} sent me down so many roads. This is the one I did not expect at the end of them.",
		{ "{other}. No more errands. No more anything.", depth = "natural" },
	},
	["rel.grief.npc.trainer"] = {
		"Everything {other} taught me is still in my hands. That will have to be how I keep the memory.",
		{ "{other}. I still have the lessons.", depth = "natural" },
	},
	["rel.grief.npc.vowed"] = {
		"I gave {other} my word, in silence, and never said it aloud. Now there is no one to say it to.",
		{ "{other}. I never told you.", depth = "natural" },
	},
	["rel.grief.pet.new"] = {
		"I had barely learned the name of {pet}. It deserved more roads than I gave it.",
		{ "Too soon, {pet}. Far too soon.", depth = "natural" },
	},
	["rel.grief.pet.stoic"] = {
		"I lay {pet} where the ground is soft and say nothing. There is nothing to say that it did not already know.",
		{ "Rest, {pet}. That is all.", depth = "natural" },
	},
	["rel.grief.pet.trusted"] = {
		"{pet} kept watch so I could sleep. Now there is no one to keep it, and I doubt I will sleep much.",
		{ "{pet}. Who keeps watch now?", depth = "natural" },
	},
	["rel.home.cold.stoic"] = {
		"I bound myself to this place, and then I broke faith with it. The door still opens. That is all it does now.",
		{ "The door opens. Nothing more.", depth = "natural" },
	},
	["rel.home.return.night"] = {
		"Late, and the house asleep. Someone left a candle on the stair all the same, the way you do for one who is expected.",
		{ "A candle on the stair. Expected, then.", depth = "natural" },
	},
	["rel.home.return.rain"] = {
		"Rain on the roads all the way here, and now rain on the shutters instead. That is the whole difference, and it is everything.",
		{ "Rain outside. A fire inside. Home.", depth = "natural" },
	},
	["rel.home.return.weary"] = {
		"However long the road was, my boots knew this doorstep before I did.",
		{ "My boots found the way. They always do.", depth = "natural" },
	},
	["rel.npc.foe.attacked.guard"] = {
		"That guard watches my hands, not my face. I taught them to, the day I drew on them.",
		{ "Eyes on my hands. Fair enough.", depth = "natural" },
	},
	["rel.npc.foe.attacked.merchant"] = {
		"They count my coins twice now, as if a blade might be hiding among them.",
		{ "Every coin counted twice. I earned that.", depth = "natural" },
	},
	["rel.npc.foe.attacked.questgiver"] = {
		"They still have work that needs doing. They would just rather it were done by anyone but me.",
		{ "Anyone but me, says that face. Anyone at all.", depth = "natural" },
	},
	["rel.npc.foe.attacked.trainer"] = {
		"The one who taught me my craft. I turned that craft on them once, and they remember whose lesson it was.",
		"Every lesson I had here, I paid back with a blow. Some teachers keep better accounts than others.",
	},
	["rel.npc.foe.feared"] = {
		"They flinch when I reach for my purse. Hatred I could stand. This is worse.",
		{ "They flinch. I did that.", depth = "natural" },
	},
	["rel.npc.foe.hated"] = {
		"No warmth left to win back here. Only that look, steady as a drawn blade, and I would not wager on it softening.",
		{ "Pure hatred. I earned all of it.", depth = "natural" },
	},
	["rel.npc.foe.host.stoic"] = {
		"Guest-right is older than any town. I broke it under this roof, and no coin buys back a threshold.",
		{ "A broken threshold stays broken.", depth = "natural" },
	},
	["rel.npc.foe.killed.ironic"] = {
		"On their feet, and still looking at me like a debt collector. Death clearly did not take.",
		{ "Up and about. Still sore about it.", depth = "natural" },
	},
	["rel.npc.town.betrayed.friend"] = {
		"They still greet me, and they mean it. But they lower their voice to do it, as if being my friend here were something to hide.",
		{ "A friend still. A quieter one.", depth = "natural" },
	},
	["rel.npc.town.betrayed.guard"] = {
		"The guards here have heard what I did. Every nod comes a heartbeat late.",
		{ "A late nod. They know.", depth = "natural" },
	},
	["rel.npc.town.betrayed.innkeeper"] = {
		"The innkeeper still pours. The talk that came with the cup has stopped, and the whole room hears it stop.",
		{ "Same ale. No talk with it.", depth = "natural" },
	},
	["rel.npc.town.betrayed.merchant"] = {
		"My coin is still good here. My word, it seems, is not: they watch me as if I might walk off with the counter.",
		{ "My coin, yes. My word, no.", depth = "natural" },
	},
	["rel.pet.bond.familiar.demon"] = {
		"{pet} has stopped testing the edges of the binding every hour. Every other hour now. Progress.",
		{ "Less sulking from {pet}. Barely.", depth = "natural" },
	},
	["rel.pet.call.rain"] = {
		"{pet} shakes off the rain all over me, which I suspect is the whole greeting.",
		{ "Rain on {pet}, and now on me.", depth = "natural" },
	},
	["rel.pet.call.trusted"] = {
		"{pet} comes at the first call and takes the flank without being told. We have done this enough.",
		{ "{pet}. The flank. Good.", depth = "natural" },
	},
	["rel.pet.call.unhappy"] = {
		"{pet} comes, but slowly, with a look at my pack that says exactly where the food is.",
		{ "Yes, {pet}. Food first.", depth = "natural" },
	},
	["rel.pet.dismiss.bonded"] = {
		"I send {pet} off, and for a few steps I still keep a pace that is no longer beside me.",
		{ "Go on, {pet}. I'll manage. Mostly.", depth = "natural" },
	},
	["rel.pet.dismiss.night"] = {
		"{pet} melts into the dark, and the night around me feels a size larger.",
		{ "Rest, {pet}. The night watch is mine.", depth = "natural" },
	},
	["rel.pet.mood.happy.bonded"] = {
		"{pet} leans its whole weight against my leg. After all these roads, that is still how it says it.",
		{ "{pet}, leaning on me. I don't mind.", depth = "natural" },
	},
	["rel.pet.mood.unhappy.new"] = {
		"{pet} and I are off to a poor start. A full meal and a little patience: that is how trust begins.",
		{ "A poor start, {pet}. We will mend it.", depth = "natural" },
	},
	["rel.town.foe.ironic"] = {
		"Ah, this place. I left an impression here. Several, mostly on their guards.",
		{ "They remember me fondly. With spears.", depth = "natural" },
	},
	["rel.town.foe.night"] = {
		"Their torches burn along the walls tonight, and I know at least one of them is lit with me in mind.",
		{ "Torches on the walls. Some of them for me.", depth = "natural" },
	},
	["faction.alliance.relation_player.01"] = {
		"{other}, under the same banner as me. Out here that's half a friendship already, and we earned the other half.",
		"A friend, and one who marches under our banner too. Two good reasons to be glad, and I'm counting both.",
		"{other}. Same banner, same roads. Good to see a friendly face.",
	},
	["faction.horde.relation_player.01"] = {
		"{other}. The Horde is big and not all of it is friendly to my eye. This one is.",
		"Among so many faces of the Horde, only a few I'd trust at my back without an eye on them. {other} is one.",
		"{other}. Good. One less pair of eyes to watch.",
	},
	["race.dwarf.relation_player.001"] = {
		"{other}. A debt is cut into a dwarf's memory like a rune into stone. This one's still there, sharp as the day it was made.",
		"There goes {other}. I owe them, and a dwarf keeps that kind of tally longer than any ledger.",
		"{other}. Owed, and not forgotten. The mountain doesn't forget its debts either.",
	},
	["race.dwarf.thanks.001"] = {
		"My thanks. Look me up in Ironforge some day and the first round's on me.",
		"Much obliged. Dwarves keep long accounts, and you've just gone into the good column.",
	},
	["race.gnome.relation_player.001"] = {
		"{other}. Someone I'd hand the wrench to while my fingers are inside the machine.",
		"There's {other}. In my trade we'd call that a load-bearing part: take it away and everything sags.",
		"{other}. Reliable parts are rare. Reliable people, rarer still.",
	},
	["race.gnome.thanks.001"] = {
		"Thank you! If you ever need anything built, fixed, or mildly exploded, ask for me.",
		"Much appreciated! I'd make you a medal, but I'm out of brass.",
	},
	["race.human.relation_player.001"] = {
		"{other}! A friendly face, like a lit window on a long road.",
		"There's {other}. Some people make any town feel like a village where you know everyone.",
		"{other}. Good. The day just got a little more like home.",
	},
	["race.human.thanks.001"] = {
		"Thank you. Where I come from, we'd have you over for supper for that.",
		"Thank you, truly. That's a kindness I'll pass along to the next one who needs it.",
	},
	["race.nightelf.relation_player.001"] = {
		"{other}. Friendships used to feel like forests to me. Now I know they are more like seasons, and I mean to enjoy this one.",
		"There is {other}. I have learned to look at friends carefully; time is shorter for all of us than it used to be.",
		"{other}. A dear face is worth learning by heart, even for one whose memory is as long as mine.",
	},
	["race.nightelf.thanks.001"] = {
		"Thank you. My people have long memories; this will stay in mine.",
		"My thanks. May the forest repay you where I cannot.",
	},
	["race.orc.relation_player.001"] = {
		"{other}. I would stand shoulder to shoulder with that one, any day, in any fight.",
		"There is {other}. Among my people a friend is someone you would share your last water with. I would share it.",
		"{other}. Good. One more blade at the fire I would trust with my back.",
	},
	["race.orc.thanks.001"] = {
		"My thanks. An orc does not forget a debt like this.",
		"You have my thanks, and my arm, whenever you need it.",
	},
	["race.scourge.relation_player.001"] = {
		"{other}. One of the few who never took a step back when I came close.",
		"There's {other}. They look at me and see a person. I don't forget that.",
		"{other}. Good. Someone who doesn't need me to be alive.",
	},
	["race.scourge.thanks.001"] = {
		"Thank you. It has been a long time since anyone helped me without holding their breath.",
		"My thanks. Not many would lend a hand to the dead.",
	},
	["race.tauren.relation_player.001"] = {
		"{other}. Some people are like a good watering hole: you always remember where they are.",
		"There is {other}. Among my people, a friend like that finds a bowl set by the fire before asking.",
		"{other}. My shoulders settle, the way they do near a familiar hearth.",
	},
	["race.tauren.thanks.001"] = {
		"Thank you. My people would say you have walked a little way in my hoofprints.",
		"You have my thanks, and the Earth Mother saw it too.",
	},
	["race.troll.relation_player.001"] = {
		"{other}. That one I'd let watch my things while I sleep.",
		"Ah, {other}. The old ones have a word for people like that: the ones you share the fire with.",
		"{other}. The loa sent me a good one there.",
	},
	["race.troll.thanks.001"] = {
		"Thanks, mon. You have a troll's gratitude; it lasts longer than most.",
		"I won't forget that. Trolls remember who helped and who laughed.",
	},
	["faction.alliance.relation_player.w02.01"] = {
		"{other}. If the Alliance ever asked what it's made of, I'd point at people like that.",
		"There's {other}. Kings and councils make the Alliance on paper; people like that make it on the road.",
	},
	["faction.horde.relation_player.w02.01"] = {
		"{other}. One of the Horde I'd call by name in any camp, and be glad to.",
		"There's {other}. The Horde is many peoples; friendship is how they become one.",
	},
	["race.dwarf.relation_player.w02.01"] = {
		"{other}! I'd share my last keg with someone like that, and a dwarf doesn't say such things lightly.",
		"There's {other}. Some friendships are like good masonry: no mortar showing, and they hold.",
	},
	["race.gnome.relation_player.w02.01"] = {
		"{other}! My day just got a pleasant little upgrade.",
		"There's {other}. Some people are like a well-oiled hinge: everything moves easier around them.",
	},
	["race.human.relation_player.w02.01"] = {
		"{other}. I still owe that one, and I mean to pay it properly, not with a nod in passing.",
		"There's {other}. Some debts you're glad to carry, because they remind you someone stopped for you.",
	},
	["race.nightelf.relation_player.w02.01"] = {
		"{other}. Some trust grows like a tree: slowly, and then nothing moves it.",
		"There is {other}. I would let that one keep watch while I slept, and sleep well.",
	},
	["race.orc.relation_player.w02.01"] = {
		"{other}. I owe that one, and an orc does not let a debt go cold.",
		"There is {other}. Someone who stood by me. I remember who stands and who runs.",
	},
	["race.scourge.relation_player.w02.01"] = {
		"{other}. Someone I'm glad to see. I'd forgotten that feeling had a taste.",
		"There's {other}. Whatever I lost when I died, this kind of gladness wasn't in the pile.",
	},
	["race.tauren.relation_player.w02.01"] = {
		"{other}! There's someone I'd walk a long way to share a fire with.",
		"There is {other}. Some bonds are like the oldest trails: worn deep, and easy to follow.",
	},
	["race.troll.relation_player.w02.01"] = {
		"{other}! There's a friend, mon. The day just got lighter.",
		"Ah, {other}. Good people are rare as fresh water on a long sea crossing.",
	},
	["ally_death.w04.001"] = {
		"{other} is down. The grieving gets done on the way out, not before.",
		"{other}. I saw it, and I was too far. Eyes front.",
		"There's no room for it right now. I'll make room afterward, {other}. I promise.",
	},
	["ally_death.w04.002"] = {
		"There's a gap where {other} was standing. Everyone feels it at once.",
		"One fewer of us. The others close up without a word being said.",
		"{other}'s place is empty. My eyes keep going back to it.",
	},
	["ally_death.w04.003"] = {
		"Down isn't gone. Not always. Not yet, {other}.",
		"In this world the fallen sometimes get up again. I'm counting on it, {other}.",
		"Hold on, {other}, wherever you've gone. There are ways back.",
	},
	["ally_death.w04.004"] = {
		"That could have been me. Next time it might be.",
		"{other} today. Who tomorrow? Better not to finish that thought.",
		"It picks without looking. {other} this time. Anyone, the next.",
	},
	["ally_death.w04.005"] = {
		"I should have been closer. I'll be closer for the rest of them.",
		"Couldn't cover {other}. I can cover whoever's left.",
		"Too late for {other}. Not too late for the others. Move.",
	},
	["ally_death.w04.006"] = {
		"Whatever did that to {other} is mine.",
		"That was {other}. Somebody is going to answer for it.",
		"I'll settle this for you, {other}. Right now.",
	},
	["pet_call.w04.001"] = {
		"{pet} shakes itself awake and comes to me.",
		"Here's {pet}, looking me over as if I were the one back from who knows where.",
		"{pet} turns up with that look: so, where are we going?",
	},
	["pet_call.w04.002"] = {
		"{pet} again. We both pretend this is a partnership.",
		"{pet} eyes the world like someone waiting for an apology. Hard to argue.",
		"{pet} answers the call the way a debt collector does: on time, and unwelcome.",
	},
	["pet_call.w04.003"] = {
		"{pet} is in high spirits. Hard not to catch some of it.",
		"Good mood, {pet}? Then at least one of us is in one.",
		"{pet} comes over pleased with everything. I could learn something there.",
	},
	["pet_dismiss.w04.001"] = {
		"Off with you, {pet}. I'll call when I need you.",
		"That'll do, {pet}. The next stretch is mine alone.",
		"Dismissed, {pet}. Don't go far, wherever it is you go.",
	},
	["race.dwarf.relation_npc.w08.001"] = {
		"A merchant I know. A dwarf remembers honest weights longer than names, and I remember these.",
		"Ah, this one. I keep a tally of every trader who ever short-weighted me. This name isn't on it.",
		"A known counter. Good. I'll still bite the coins, but only out of habit.",
	},
	["race.dwarf.relation_player.w08.001"] = {
		"{other}. I'd go down a dark shaft with that one holding the rope, and not look up once.",
		"There's {other}. Some people you test like a tunnel roof, tapping as you go. With that one I stopped tapping long ago.",
		"{other}. Sound as bedrock.",
	},
	["race.dwarf.relation_player.w08.002"] = {
		"{other}! Now there's someone I'd let choose the next round. That's high praise from a dwarf.",
		"Ha, {other}. Some company goes down like a good stout: smooth, and you want another.",
		"{other}! There, the day's mended.",
	},
	["race.dwarf.relation_player.w08.003"] = {
		"{other}. Dwarves forgive slowly, if at all. I'm still somewhere around the 'if at all'.",
		"There's {other}. Even a mountain wears down in the end, they say. My grudge is cut from better stone.",
		"{other}. Hmph.",
	},
	["race.dwarf.relation_player.w08.004"] = {
		"{other}. I'll be polite, and I'll keep a hand on my pack the way miners keep an ear on the timbers.",
		"There's {other}. A dwarf can smell bad air in a tunnel. I'm smelling something now.",
	},
	["race.dwarf.relation_player.w08.005"] = {
		"{other}. Whatever that one does, I'll do it heavier, longer and with less complaining.",
		"There's {other}. A rival is a whetstone: hard on you, and good for the edge.",
		"{other}. Right. Sleeves up.",
	},
	["race.dwarf.relation_player.w08.006"] = {
		"{other}. We've stood in the same line with trouble coming at us. Among dwarves, that makes you near enough to kin.",
		"There's {other}, who fought at my side. A dwarf needs no second introduction after that.",
	},
	["race.dwarf.relation_player.w08.007"] = {
		"{other}! A long while, that. Long enough to work out a vein and find a new one.",
		"There's {other}, after all this time. Dwarves are patient with absences. Mostly.",
	},
	["race.dwarf.relation_player.w08.008"] = {
		"{other}! Mountain blood, and a friend besides. We'll want a table; there's catching up to do.",
		"There's {other}. Two dwarves meeting far from Ironforge: that's a homecoming, whatever the distance.",
		"{other}. Same mountain, same stubbornness. Good to see.",
	},
	["race.dwarf.relation_player.w08.009"] = {
		"{other}. We've traded before. I remember the weight of every coin, as any dwarf would.",
		"There's {other}. Fair dealer, as I recall. I've checked those sums since, and they still add up.",
	},
	["race.dwarf.relation_player.w08.010"] = {
		"{other}. Some quarrels set like mortar. This one set long ago, and nothing short of a hammer will shift it.",
		"There's {other}. The War of the Three Hammers ended, the old ones say. Not every feud heard the news.",
		"{other}. Steady, now.",
	},
	["race.human.relation_npc.w08.001"] = {
		"A friend in this place. Humans get so few years; the ones spent among friends are the ones we count.",
		"That face makes any town feel like a village where the bell rings for you too.",
		"A friend. My people live short and remember kindness long. This kindness I'll remember.",
	},
	["race.human.relation_player.w08.001"] = {
		"{other}. In the villages you'd leave the door on the latch for someone like that. I still would.",
		"There's {other}. I'd leave my purse, my pack and my back in those hands, in that order of worry.",
		"{other}. Good. I can stop counting the exits.",
	},
	["race.human.relation_player.w08.002"] = {
		"{other}! If we were in Goldshire I'd already have two mugs in my hands. Consider them poured.",
		"There's {other}. Life's short, my people say, so you keep the good ones close. That one I keep close.",
	},
	["race.human.relation_player.w08.003"] = {
		"{other}. The priests say forgiveness is a road you walk a little each day. I've barely left the gate.",
		"There's {other}. Humans don't live long enough to nurse a grudge properly. I'm doing my best anyway.",
		"{other}. Forgiveness can wait.",
	},
	["race.human.relation_player.w08.004"] = {
		"{other}. Charming, quick with a smile. So were half the Defias before the masks came out.",
		"There's {other}. Stormwind teaches you to keep one hand on your purse and the other ready to wave. I'm doing both.",
		"{other}. Eyes open.",
	},
	["race.human.relation_player.w08.005"] = {
		"{other}. I haven't the centuries an elf would spend on a rivalry, so I'll have to win this one quickly.",
		"There's {other}. Nothing sharpens a human like someone a step ahead. Not for long, mind.",
	},
	["race.human.relation_player.w08.006"] = {
		"{other}. We've fought in the same knot of people, back to back. The old soldiers from Lordaeron say that makes you kin. I believe them.",
		"There's {other}. One fight together and a human remembers you for life. It isn't a long life; it's a firm memory.",
	},
	["race.human.relation_player.w08.007"] = {
		"{other}! A few weeks, is it? For a human that's a season's worth of news. Where to start?",
		"There's {other}, some weeks on. Long enough to have missed a wedding, a funeral and a war, the way things go.",
	},
	["race.human.relation_player.w08.008"] = {
		"{other}, after so long. Every time humans part, I half wonder if it's the last. Not this time. Good.",
		"There's {other}. A month and more without a word. Long enough to start rehearsing the worst; I'm glad to forget my lines.",
	},
	["race.human.relation_player.w08.009"] = {
		"{other}. We've dueled before. I still tell it as a draw, and I'll go on telling it that way.",
		"There's {other}. The duel was fair, and so were the bruises. A human remembers who fights clean.",
	},
	["race.human.relation_player.w08.010"] = {
		"{other}. Life's too short to hate anyone, my people say. They hadn't met this one.",
		"There's {other}. I'll pass in silence. Humans have spilled enough blood over old quarrels; I won't be first to spill it here.",
		"{other}. Not today.",
	},
	["race.human.relation_player.w08.011"] = {
		"{other}, my chosen ally. Kingdoms make alliances on one parchment and break them on the next. Ours is better kept.",
		"There's {other}. An ally I picked myself. The Alliance could learn a thing or two from how we shook on it.",
	},
	["race.nightelf.relation_npc.w08.001"] = {
		"A face I know. My memory keeps such faces the way moss keeps a footprint: gently, but for a long time.",
		"{other}. I have met so many people in so few years, by my people's reckoning; this one has stayed with me.",
		"I know this one. Night elves do not forget a face; we only pretend to, when that is kinder.",
	},
	["race.nightelf.relation_player.w08.001"] = {
		"Among my people some trust takes a century to grow. With {other} it took far less, and runs just as deep.",
		"If {other} told me a path was safe, I would walk it without slipping into shadow even once. For me, that is a great deal.",
		"Here comes {other}. I would turn my back on that one in the dark of any forest, and I do not turn my back easily.",
	},
	["race.nightelf.relation_player.w08.002"] = {
		"{other}! The years run quicker for my people now than they once did. All the more reason to spend a few of them like this.",
		"My heart lifts at the sight of {other}, the way an owl leaves a branch: quietly, suddenly, and without a doubt.",
		"Here is {other}. Friendships among my people once lasted as long as the forests. I mean to make this one try.",
	},
	["race.nightelf.relation_player.w08.003"] = {
		"Among my people a debt is counted neither in coin nor in days, but in how long it is remembered. What I owe {other} will be remembered a very long time.",
		"I owe {other}. Elune sees such debts, the priestesses say, and keeps her light on them until they are paid.",
	},
	["race.nightelf.relation_player.w08.004"] = {
		"Ah, {other}. My ears give me away; they always lift a little when someone I like comes near.",
		"Some people make the long years feel lighter, and {other} is one of them.",
	},
	["race.nightelf.relation_player.w08.005"] = {
		"A nightsaber does not growl at what it distrusts; it simply never turns its back. With {other}, neither will I.",
		"I know {other}, and my ears have already turned to listen. A night elf's wariness makes no sound at all.",
	},
	["race.nightelf.relation_player.w08.006"] = {
		"My people still remember the betrayal of the Highborne after ten thousand years. I can remember what {other} did for a few.",
		"There goes {other}. Forgiveness grows slowly among my people, like an oak. Nothing has sprouted yet.",
	},
	["race.nightelf.relation_player.w08.007"] = {
		"{other}. A worthy rival is a whetstone, the Sentinels say. I have been sharpened enough to notice.",
		"Ah, {other}. I hope we have years enough left for this rivalry. I intend to enjoy every one of them.",
	},
	["race.nightelf.relation_player.w08.008"] = {
		"{other} and I have fought side by side. My people carve such things into memory the way old roots grip stone.",
		"We stood in the same fight, {other} and I. Long after it is over and forgotten by everyone else, I will still know its shape.",
	},
	["race.nightelf.relation_player.w08.009"] = {
		"We met in a duel once, {other} and I. My people remember a fair contest as a kind of kinship.",
		"{other}. We have already measured our strength. The Sentinels say you only truly know someone after a challenge.",
	},
	["race.nightelf.relation_player.w08.010"] = {
		"{other}, after a long absence. My people once measured time in centuries, and still this one felt long.",
		"So much time since I last saw {other}. Strange: a night elf should not count the days. I counted them.",
	},
	["race.nightelf.relation_player.w08.011"] = {
		"At the sight of {other} my breath goes shallow and quiet, as it does in the deep forest when something larger is moving. I do not let it show.",
		"{other} wakes the old instinct in me: go still, go dark, wait. I stay on the road and keep my face calm.",
	},
	["race.nightelf.relation_player.w08.012"] = {
		"{other}. I know that step; a night elf learns footfalls before faces.",
		"A familiar figure: {other}. My memory is long, and it keeps people more carefully than places.",
	},
	["race.tauren.relation_npc.w08.001"] = {
		"A face I know. On the long roads of my people, a known face at a camp meant water was near and the ground was safe.",
		"{other}, once more. Tauren have always returned to the same watering holes; it seems I do the same with people.",
		"I know this one. A tauren learns a face slowly, and then keeps it for good.",
	},
	["race.tauren.relation_player.w08.001"] = {
		"On a hunt I would give {other} the far side of the herd and never look back to check.",
		"If {other} said the ground ahead was firm, I would put my full weight on it. And I am a great deal of weight.",
		"Some people I watch with one eye. With {other} I close both, the way a kodo dozes beside its herd.",
	},
	["race.tauren.relation_player.w08.002"] = {
		"My heart lifts like smoke from a good fire: {other} is here. The Earth Mother sends friends the way she sends spring, never quite on the day you expect.",
		"Friends are the only herd a wanderer keeps, and with {other} in sight mine has just drawn a little closer.",
		"Ha! Sit by me at the next fire, {other}; there is always room on a tauren's side of the circle.",
	},
	["race.tauren.relation_player.w08.003"] = {
		"My people say a debt of kindness is carried like water across dry country: carefully, and all the way home. Mine to {other} is still in my hands.",
		"I owe {other}, and among the tauren that kind of debt is not paid back in coin. It is paid with a long road walked together, when the time comes.",
	},
	["race.tauren.relation_player.w08.004"] = {
		"Look at that: {other}. I catch myself snorting a little, which for a tauren is very nearly a song.",
		"The sight of {other} sets my tail swishing, I think. Good thing nobody reads tauren tails anymore.",
	},
	["race.tauren.relation_player.w08.005"] = {
		"A plainstrider does not run from every shadow, but it never stops watching the grass. With {other} near, neither will I.",
		"I know {other}, and I keep my weight on my back hooves: enough to stay, enough to step aside.",
	},
	["race.tauren.relation_player.w08.006"] = {
		"Anger in a tauren is slow to rise, the elders warn, and slower still to lie back down. Seeing {other}, I feel mine still on its feet.",
		"There goes {other}. I remember, the way the earth remembers a deep hoofprint long after the herd has passed.",
	},
	["race.tauren.relation_player.w08.007"] = {
		"Two kodo on the same ridge, {other} and I. Nobody needs to charge; we will both just stand a little taller.",
		"Ah, {other}. In Mulgore, rivals race to the far stone and back, and the loser cooks. I would still like to run that race.",
	},
	["race.tauren.relation_player.w08.008"] = {
		"{other} and I have stood in the same fight. On the plains, those who hunt together share the hide and the story. I still owe my half of the story.",
		"We fought in one line, {other} and I. The drummers of my people have a beat for that: two hearts, one hunt.",
	},
	["race.tauren.relation_player.w08.009"] = {
		"{other} and I have tested each other once. My shoulder still remembers; tauren wrestle for sport, and that felt like the real thing.",
		"We fought a duel, {other} and I. Among my people that counts as a kind of handshake, only louder.",
	},
	["race.tauren.relation_player.w08.010"] = {
		"{other}, after so long. Grass grows back over any trail, but a tauren knows where to look for the old one.",
		"A long while since I last saw {other}. The herds would have moved on to new grass by now.",
	},
	["race.tauren.relation_player.w08.011"] = {
		"Even a tauren can feel small. At the sight of {other} my hooves want to back away; I keep them planted, and breathe slowly through my nose.",
		"My ears go flat when {other} comes near. I am built large, and it helps less than people think.",
	},
	["race.tauren.relation_player.w08.012"] = {
		"I know that walk: {other}. The plains teach you to name a creature by its gait long before you see its face.",
		"That shape is {other}, I think. Tauren eyes are made for distance; faces reach me later than outlines.",
	},
	["race.gnome.relation_npc.w09.001"] = {
		"A face I know! I keep a mental file on everyone I've met. This one's file is thick and pleasant.",
		"{other} again. Familiar faces are like familiar tools: you reach for them without thinking.",
		"Ah, this one. Since the city was lost, every friendly face in a strange place is a small piece of home.",
	},
	["race.gnome.relation_player.w09.001"] = {
		"{other}. If that one said a bridge would hold, I'd cross without checking the rivets. That is an enormous compliment.",
		"There's {other}. I've tested my trust in that one under load, twice. It holds.",
		"{other}. Calibrated, reliable, true.",
	},
	["race.gnome.relation_player.w09.002"] = {
		"{other}! My ears twitch. That's a gnome's version of throwing a party.",
		"Oh, {other}. Some people are like finding the missing piece at the bottom of the box: a small, happy click.",
	},
	["race.gnome.relation_player.w09.003"] = {
		"I owe {other}. I've written it down, and gnomes don't lose notes. We misplace them, then find them at the worst moment.",
		"{other}. A favor I haven't repaid yet. I'm working on a suitable thank-you. It's taking some design.",
	},
	["race.gnome.relation_player.w09.004"] = {
		"{other}. Smiles, nods, says all the right things. So did Thermaplugg, the old tinkers say.",
		"There's {other}. I'll be friendly and keep my pockets buttoned. Being small teaches you where the hands go.",
		"{other}. Eyes up, pockets shut.",
	},
	["race.gnome.relation_player.w09.005"] = {
		"{other}. I have a long memory for faulty parts and the people who sold them to me.",
		"There's {other}. Gnomes are cheerful, they say. Mostly. There's a small, precise corner of me that isn't, and that one lives there.",
	},
	["race.gnome.relation_player.w09.006"] = {
		"{other}. Every rival is a benchmark. I intend to exceed this one by a measurable margin.",
		"Ah, {other}. Fine. Whatever you've got, I'll match it and add a feature.",
	},
	["race.gnome.relation_player.w09.007"] = {
		"{other}. We fought side by side. That one watched the ground around me, which at my height is where all the trouble starts.",
		"There's {other}, who stood in the same fight. Gnomes remember who covered them. We have to; we're easy to step on.",
	},
	["race.gnome.relation_player.w09.008"] = {
		"{other}! A long gap. I've had three new ideas and abandoned two since then. Let me tell you about the third.",
		"There's {other}, after a good while. I'd started to wonder. Gnomes worry quickly and quietly, like a ticking clock.",
	},
	["race.gnome.relation_player.w09.009"] = {
		"{other}! A fellow exile and a friend. Some day we'll walk the halls of Gnomeregan together. Until then, Tinker Town will do.",
		"There's {other}. Two gnomes who've found each other far from home: instant committee.",
	},
	["race.gnome.relation_player.w09.010"] = {
		"{other}. I've worked out seventeen ways this could go. I don't like any of them, so I'll keep walking.",
		"There's {other}. My people know what betrayal costs; it cost us a city. I won't pay that price twice.",
		"{other}. Not worth it.",
	},
	["race.gnome.relation_player.w09.011"] = {
		"{other}. We've dueled. I kept notes. I'm still revising my approach.",
		"There's {other}. A fine duel, that. I lost on height and won on cheek, by my count.",
	},
	["race.gnome.relation_player.w09.012"] = {
		"{other}. Small creatures learn early when to freeze. My knees have decided it's now.",
		"There's {other}. I'm calculating exits. There are two, and both are behind me.",
	},
	["race.orc.relation_npc.w09.001"] = {
		"{other}. A face I know. On the road, a known face is half a camp.",
		"Ah, {other}. Orcs keep their acquaintances like their weapons: few, and well looked after.",
		"I know {other}. On a long road, familiar faces are worth more than gold.",
	},
	["race.orc.relation_player.w09.001"] = {
		"{other} I'd let stand behind me in a fight I couldn't see the end of. That is the whole of trust, for an orc.",
		"If {other} said the bridge would hold, I'd cross it at a run.",
	},
	["race.orc.relation_player.w09.002"] = {
		"{other}! Good. The day just got a war drum louder.",
		"There's {other}. Some friendships are forged like steel: hot, hard, and better for it.",
		"{other}. A friendly face on the road loosens my jaw. I very nearly smile.",
	},
	["race.orc.relation_player.w09.003"] = {
		"There goes {other}. I catch myself grinning around my tusks. Nobody needs to know.",
		"{other}. Good company is rare as shade in Durotar. I'll take it.",
	},
	["race.orc.relation_player.w09.004"] = {
		"{other}. I don't turn my back, and my hand never drifts far from my belt.",
		"I know {other}. The old ones say a wolf that smiles is still a wolf. I'll keep watching.",
	},
	["race.orc.relation_player.w09.005"] = {
		"{other}. My blood rises. The curse is broken, the elders say, but the temper was ours all along.",
		"There goes {other}. An orc forgives slowly, and I haven't started yet.",
	},
	["race.orc.relation_player.w09.006"] = {
		"{other}. Whatever you manage today, I'll manage better tomorrow. That's how rivals keep each other sharp.",
		"Ah, {other}. A rival is a whetstone. Nothing hones an orc like someone almost as good.",
	},
	["race.orc.relation_player.w09.007"] = {
		"{other} and I have bled on the same ground. Among orcs, that counts for more than any oath.",
		"We've fought together, {other} and I. My hands remember the rhythm of it, like a war drum heard once and never forgotten.",
	},
	["race.orc.relation_player.w09.008"] = {
		"{other} and I have tested our strength once. An honest fight leaves respect behind, whoever walked away from it.",
		"There's been a duel between {other} and me. An orc learns more from one honest bout than from ten speeches.",
	},
	["race.orc.relation_player.w09.009"] = {
		"{other}, after so long. The seasons have turned. Let's see what the road made of you.",
		"A long time without {other}. Orcs don't count days; we count scars. Let's compare.",
	},
	["race.orc.relation_player.w09.010"] = {
		"{other}. Something old in me wants to run. I plant my feet. Orcs don't run from people; at least, not where anyone can see.",
		"My hand tightens at the sight of {other}. Fear is no shame, the shamans say. Letting it lead is.",
	},
	["race.orc.relation_player.w09.011"] = {
		"{other}. My blood remembers. I'll keep the peace for now, and only for now.",
		"There is {other}. Some debts are paid in coin; this one was never that kind.",
	},
	["race.orc.relation_player.w09.012"] = {
		"{other}. I know that name. An orc keeps names the way the clans keep their banners: close, and not lightly.",
		"Ah, {other}. Faces stay with me longer than names. That one stays with both.",
	},
	["race.scourge.relation_npc.w09.001"] = {
		"A face I know. The living who get used to me are rare; I keep a careful count of them.",
		"{other} again. The first time, a step back. Now, barely a glance. Familiarity: the only cure I've found for being dead.",
		"Ah, this one. Knows me, and still talks to me. Small things matter more now than they did when I breathed.",
	},
	["race.scourge.relation_player.w09.001"] = {
		"{other}. Few of the living let me walk behind them. That one never even glances back.",
		"There's {other}. Trust is slow for the dead; our own prince betrayed us. That one has mine anyway.",
		"{other}. Someone I don't keep even half an eye on.",
	},
	["race.scourge.relation_player.w09.002"] = {
		"{other}! Something in this cold chest lifts a little. I'll call it gladness; nothing else moves in there.",
		"Ah, {other}. Company I'd choose. For a corpse, I'm surprisingly particular.",
	},
	["race.scourge.relation_player.w09.003"] = {
		"I owe {other}. Debts are one of the few things I still feel the full weight of.",
		"{other}. Helped me when helping the dead earns nobody any thanks. I keep a short list of such people. It is very short.",
	},
	["race.scourge.relation_player.w09.004"] = {
		"{other}. I've learned to read the living: the hand that strays, the smile that waits. I'm reading now.",
		"There's {other}. I don't need to sleep, so I never need to turn my back. Useful, around certain people.",
		"{other}. Watch, and say nothing.",
	},
	["race.scourge.relation_player.w09.005"] = {
		"{other}. The rot takes my flesh slowly. My grudges, it leaves alone.",
		"There's {other}. I died once and forgave nothing on the way back. No reason to start now.",
	},
	["race.scourge.relation_player.w09.006"] = {
		"{other}. A rival keeps the mind sharp, and the mind is the part of me that's still mine. I'll take the exercise.",
		"Ah, {other}. Whatever you're winning at, I can be patient about it. Patience is all I have now.",
	},
	["race.scourge.relation_player.w09.007"] = {
		"{other}. We fought in the same knot. I took a wound no living body would shrug off, and that one never flinched at the sight.",
		"There's {other}, who fought beside me. It takes a stomach to stand shoulder to shoulder with the dead. That one had it.",
	},
	["race.scourge.relation_player.w09.008"] = {
		"{other}, after a long while. Time runs strangely for the dead. I noticed this absence anyway.",
		"There's {other}. A month and more. I've stopped counting most things, but I counted that.",
	},
	["race.scourge.relation_player.w09.009"] = {
		"{other}! Another of the Dark Lady's free dead, and a friend besides. We can stop pretending to be comfortable around the living.",
		"There's {other}. Two Forsaken who chose each other's company. In Undercity they'd call it unusual. I call it lucky.",
	},
	["race.scourge.relation_player.w09.010"] = {
		"{other}. If I still had a pulse, it would be racing. Instead there's only this cold, and the cold is patient.",
		"There's {other}. I've been to the grave and back. A grudge like this I'd carry down there twice.",
		"{other}. Not here.",
	},
	["race.scourge.relation_player.w09.011"] = {
		"{other}. I know that face. My memory drops a great deal these days, but it held on to this.",
		"A familiar figure: {other}. The dead forget their own names sometimes. Not that one's.",
	},
	["race.scourge.relation_player.w09.012"] = {
		"{other}. Fear without a heartbeat is a strange thing: no racing, no sweat, only a cold that sharpens. I keep very still.",
		"There's {other}. Part of me wants to vanish into the crowd. The old Forsaken habit: hide first, ask later.",
	},
	["race.troll.relation_npc.w09.001"] = {
		"{other}, a face I know. On the coast you greet the same fishers every tide; a known face means safe water.",
		"Ah, {other}. Known faces are like known reefs: you stop scraping your knees on them.",
		"{other}. The spirits like it when a troll keeps track of the people met along the road.",
	},
	["race.troll.relation_player.w09.001"] = {
		"{other} I would take out past the reef in a little boat, and never once check who was holding the oars.",
		"With {other} nearby I can rest with both eyes shut. For a troll on the road, that is no small gift.",
	},
	["race.troll.relation_player.w09.002"] = {
		"{other}! Now the road has someone to laugh with. Trolls laugh alone too, but it sounds sillier.",
		"There is {other}. Friendship is saving the best piece of fish for someone, even when you're hungry.",
		"Ha, {other}! Good. The spirits keep their promises after all.",
	},
	["race.troll.relation_player.w09.003"] = {
		"I owe {other}. The witch doctors tie a knot in a cord for every debt of the heart. The one for {other} is still tied.",
		"{other} was there when it mattered. A Darkspear remembers that the way the tribe remembers Thrall's ships: a debt that doesn't fade.",
	},
	["race.troll.relation_player.w09.004"] = {
		"There's {other}, and my tusks are already grinning. Can't help it. They have their own opinions.",
		"Look who it is: {other}. I start humming before I notice. That's the mojo of good company.",
	},
	["race.troll.relation_player.w09.005"] = {
		"{other}. A raptor in the tall grass looks friendly too, until it's close enough. I keep my distance.",
		"I know {other}. I'll be polite, and I'll keep one long arm free while I'm at it.",
	},
	["race.troll.relation_player.w09.006"] = {
		"{other}. The witch doctors say a grudge is a curse you cast on yourself. I'm keeping this one anyway.",
		"There goes {other}. Troll flesh closes over any wound. Some of the other kind, it seems, stay open.",
	},
	["race.troll.relation_player.w09.007"] = {
		"{other}. In Sen'jin, they say, the young ones race up the tallest palm and the loser climbs down carrying the coconuts. I'd race {other} up any tree.",
		"Ah, {other}. Two raptors, one trail. Neither of us gives way, and both of us enjoy it.",
	},
	["race.troll.relation_player.w09.008"] = {
		"{other} and I have fought in the same line. Blood spilled on one ground binds tighter than any trade, the elders say.",
		"We've held one fight together, {other} and I. My wounds closed fast, as troll wounds do. The memory hasn't.",
	},
	["race.troll.relation_player.w09.009"] = {
		"{other} and I have dueled once. Trolls fight for fun more than most people, and that one was fun.",
		"We've measured each other, {other} and I. A troll remembers a good sparring partner longer than a good meal. Almost.",
	},
	["race.troll.relation_player.w09.010"] = {
		"{other} and I have traded before. Trolls bargain like they dance: loud, long, and happy to go another round.",
		"We've done business once, {other} and I. A troll remembers who counts out loud and who counts quietly.",
	},
	["race.troll.relation_player.w09.011"] = {
		"{other}, after so long. The tide has gone out and come back a great many times since we last crossed paths.",
		"A long while without {other}. On the coast they say everyone you know comes back like driftwood: battered, but whole.",
	},
	["race.troll.relation_player.w09.012"] = {
		"{other}. My mouth goes dry. Trolls heal from almost anything, the elders say; it is the almost I'm thinking about.",
		"Seeing {other}, these long legs want to take me somewhere else, very fast. I let them think about it.",
	},
	["race.troll.relation_player.w09.013"] = {
		"{other}. I know that name the way I know the first beat of a drum. The rest comes back on its own.",
		"Ah, {other}. A face I've filed somewhere between the good fish and the bad days. Let's see which pile.",
	},
	["faction.alliance.relation_npc.w10.001"] = {
		"Alliance colors and a familiar face. The banner's huge; it's faces like this that make it feel like ours.",
		"{other}. Kings and councils are far away. Known people along the way are what the Alliance means from day to day.",
		"I know this one. Far from home, a known ally is worth a fort.",
	},
	["faction.alliance.relation_player.w10.001"] = {
		"Allies by banner, and by choice besides: {other} is the rarer second kind.",
		"The Alliance gave {other} and me the same colors. The trust we had to build ourselves.",
		"{other}. One ally I never need to double-check.",
	},
	["faction.alliance.relation_player.w10.002"] = {
		"Of all the people under our banner, {other} is one of the few who make a long road shorter.",
		"So many strangers in the Alliance, and then {other}, glad to see me. The day improves.",
		"{other}! Good company, and our colors. Can't ask for more.",
	},
	["faction.alliance.relation_player.w10.003"] = {
		"I owe {other}, and in the Alliance we settle debts between ourselves, even when the nobles never do.",
		"Some allies are allies on paper. With {other} I saw the real thing, in the mud, when it counted.",
	},
	["faction.alliance.relation_player.w10.004"] = {
		"{other}! The elves kept apart from everyone for ten thousand years. This one needed only a few good roads to become a friend.",
		"Darnassus feels a great deal closer with a friend like {other} in it.",
	},
	["faction.alliance.relation_player.w10.005"] = {
		"{other}! A gnome friend is worth three tents: always a spare part, always a plan, always an opinion.",
		"Gnomeregan lost a city, and the rest of the Alliance gained people like {other}. Not a fair trade for them; a lucky one for us.",
	},
	["faction.alliance.relation_player.w10.006"] = {
		"We've held a line together under Alliance colors, {other} and I. Better than any herald's introduction.",
		"In the Alliance, having fought beside {other} counts for more than coming from the same people.",
		"{other}. Near enough to kin, after that fight.",
	},
	["faction.alliance.relation_player.w10.007"] = {
		"Same side, same banner, and I'd still like to finish ahead of {other}. The Horde can wait its turn.",
		"A rival in our own ranks keeps me sharper than any enemy across the field, and {other} keeps me very sharp.",
		"{other}. Friendly rivals, mostly.",
	},
	["faction.alliance.relation_player.w10.008"] = {
		"Same colors as mine on {other}, which proves nothing. The Defias were all Stormwind folk once.",
		"An ally, officially. I'll be polite to {other} and keep my purse on the far side.",
	},
	["faction.alliance.relation_player.w10.009"] = {
		"{other}, of the Horde. We've met before, and neither of us has forgotten how it went.",
		"Some names on the Horde side I'd know anywhere. {other} is one.",
		"{other} again. Hands ready.",
	},
	["faction.alliance.relation_player.w10.010"] = {
		"{other}! A month and more. The whole Alliance could have changed its mind three times since.",
		"A long while without {other}. I wonder what news that corner of the Alliance has been keeping.",
	},
	["faction.horde.relation_npc.w10.001"] = {
		"{other}. A familiar face in Horde colors. The pact is huge; faces like this one make it small enough to live in.",
		"Ah, {other} again. The Horde is a great many strangers. It helps to know a few of them by name.",
		"{other}. I know this one. In a Horde of four peoples, being remembered is its own kind of welcome.",
	},
	["faction.horde.relation_player.w10.001"] = {
		"{other}. The Horde makes allies of strangers by decree; this trust I chose myself.",
		"{other}. The pact says we're allies. Experience says a good deal more.",
		"{other}. If the Horde were made only of people like this, the Warchief could sleep easy.",
	},
	["faction.horde.relation_player.w10.002"] = {
		"{other}! A bright spot in the Horde's long, loud day.",
		"There goes {other}. Some faces make the whole Horde feel a little more like home.",
		"{other}. Good company, under the right colors.",
	},
	["faction.horde.relation_player.w10.003"] = {
		"I owe {other}, and in the Horde a debt between allies is paid in kind when the need comes.",
		"There's {other}, whom I still owe. The Horde runs on debts like that, honestly kept.",
	},
	["faction.horde.relation_player.w10.004"] = {
		"{other}. Different roads into the Horde, the same fire at the end of them.",
		"There's {other}. The pact gave us a banner; the road gave us a friendship. The second took longer and counts for more.",
	},
	["faction.horde.relation_player.w10.005"] = {
		"{other}. Same banner. That doesn't mean the same intentions.",
		"There's {other}. The Horde asks me to stand beside every ally. It doesn't ask me to turn my back.",
		"{other}. On my side, yes. Watched, also yes.",
	},
	["faction.horde.relation_player.w10.006"] = {
		"{other}. The Horde needs us both, which is the only reason I'm keeping my mouth shut.",
		"There's {other}. In the old Horde this would have been settled with axes. The new one asks me to swallow it. I'm swallowing.",
	},
	["faction.horde.relation_player.w10.007"] = {
		"{other}. A rival inside the Horde is a gift: someone to outdo, who will still guard my flank.",
		"There's {other}. We'll contest every honor going, and stand shoulder to shoulder the moment the Alliance turns up.",
	},
	["faction.horde.relation_player.w10.008"] = {
		"{other}. We've bled for the same banner. That's a bond the Horde understands better than words.",
		"There's {other}, who fought beside me in the same press. The Horde keeps no list of those names. I do.",
		"{other}. Same fight, same side, the same mud on our boots afterward. The Horde in a single memory.",
	},
	["faction.horde.relation_player.w10.009"] = {
		"{other}! A long while. Wherever the Horde sent you, you found your way back from it.",
		"There's {other}, after many weeks. The Horde is wide; it's good when it brings the same faces round again.",
	},
	["faction.horde.relation_player.w10.010"] = {
		"{other}. Horde colors on a face I'd rather not see. The banner protects that one from me. Barely.",
		"There's {other}. Under any other flag, this would end differently.",
	},
	["faction.horde.relation_player.w10.011"] = {
		"{other}. A duel, the Horde way: hard, fair, and no grudges after. Mostly.",
		"There's {other}. Our duel settled nothing, which is exactly what a duel between allies should settle.",
	},
	["ally_death.w15.mourn.001"] = {
		"{other} is down, and the noise of everything else goes on as if nothing happened.",
		"The world didn't even pause. I did.",
		"Everything else keeps moving. I'm the only thing that stopped.",
	},
	["ally_death.w15.mourn.002"] = {
		"I keep listening for a voice that has nothing left to say.",
		"That voice was part of the noise of this group. The quiet it leaves is louder.",
		"Half of what I knew of {other} was a voice. Now there's a hole in the sound.",
	},
	["ally_death.w15.mourn.003"] = {
		"For a moment I thought someone had called my name. Nobody had. It was only the silence.",
		"I stopped without deciding to. My feet knew before I did.",
		"Something in me went still, the way it does when a count comes up short.",
	},
	["ally_death.w15.mourn.004"] = {
		"{other}. Just the name, for now. The rest of the thought won't come.",
		"Just a name in my head, and nothing after it.",
	},
	["ally_death.w15.mourn.005"] = {
		"Funny how fast a group learns the shape of each person in it. And how fast it notices a hole.",
		"A group learns its own shape quickly. It notices a missing piece quicker.",
		"Everyone fits together without noticing. Until one piece goes.",
	},
	["ally_death.w15.mourn.006"] = {
		"I want everyone to stop and leave a space for {other}. Just for a moment.",
		"Someone's missing. The least we can do is notice.",
		"Give it a moment. Only one.",
	},
	["ally_death.w15.mourn.007"] = {
		"It takes so little. A moment ago the group was whole.",
		"One moment everyone is accounted for. The next, no. Nothing in between.",
		"Not even a moment between before and after. That's the cruel part.",
	},
	["ally_death.w15.mourn.008"] = {
		"Head down, for a moment. It's the least I can give, and all I have right now.",
		"A bowed head. Small, but it's what there is.",
		"I lower my head toward {other} and let it stay lowered a while.",
	},
	["ally_death.w15.mourn.009"] = {
		"Whatever {other} last said, I wasn't really listening. Nobody ever is.",
		"The last words are always ordinary ones, and never kept.",
		"Can't recall the last words. Probably something about the work.",
	},
	["ally_death.w15.mourn.010"] = {
		"Grief always arrives a beat late. I can feel it on its way.",
		"It hasn't arrived yet. It will, all of it, when I stop.",
		"It's on its way. It always comes, just late.",
	},
	["ally_death.w15.mourn.011"] = {
		"My hand keeps opening and closing on nothing, as if it had been holding something.",
		"My hands don't know what to do with themselves.",
		"Empty hands. I keep looking at them as if they owed me an answer.",
	},
	["ally_death.w15.mourn.012"] = {
		"Every life gets cut off mid-sentence. {other}'s just was.",
		"Nobody gets to the end. Everyone stops somewhere in the middle.",
	},
	["ally_death.w15.mourn.013"] = {
		"Oh, {other}.",
		"Oh, no. No.",
		"That's not... no.",
	},
	["ally_death.w15.mourn.014"] = {
		"I'll think of something fitting to say later. Right now there's only a dull, heavy nothing.",
		"Words later. Right now just a heaviness with no shape.",
		"There are no right words. I'll look for some afterward.",
	},
	["ally_death.w15.mourn.015"] = {
		"Let the quiet stand for a moment. It's earned that much.",
		"No words. The silence says it better than I would.",
		"I'll let the hush last a little. Nobody needs to fill it.",
	},
	["ally_death.w15.mourn.016"] = {
		"Everything {other} knew how to do, all of it, stopped at once.",
		"All that skill, all those habits, halted in a single moment.",
	},
	["ally_death.w15.mourn.017"] = {
		"There's never a good moment for this. This one is worse than most.",
		"Bad timing. Death doesn't come in any other kind.",
		"Death keeps a terrible calendar. Never once asks if we're free.",
	},
	["ally_death.w15.mourn.018"] = {
		"We've lost someone. Somebody should say it out loud. I can't, not just now.",
		"We've lost {other}. Moving on can wait a moment.",
		"Someone's down. Say it plainly, at least inside.",
	},
	["ally_death.w15.mourn.019"] = {
		"Everyone carries their death around with them. {other} just set theirs down before the rest of us.",
		"We all walk about with our end folded up in a pocket somewhere.",
	},
	["ally_death.w15.mourn.020"] = {
		"I glance at the spot where {other} stood and look away fast, like touching something hot.",
		"There's one spot I won't look at. I know exactly where it is.",
		"Don't look there. Look anywhere else.",
	},
	["ally_death.w15.mourn.021"] = {
		"I don't even know what I'm supposed to feel. Something is missing, and that's all I've got.",
		"Hard to name what this is. Only that something's gone missing.",
	},
	["ally_death.w15.mourn.022"] = {
		"A group is a quiet promise that everyone walks out together. That promise just broke.",
		"Everybody walks out together. That was the deal, even if nobody said it.",
		"Nobody says it, but every group sets out meaning to come back whole.",
	},
	["ally_death.w15.mourn.023"] = {
		"I'm sorry, {other}. I'm so sorry.",
		"Sorry. I'm sorry.",
		"Sorry. That's all I've got, and it's not enough.",
	},
	["ally_death.w15.mourn.024"] = {
		"Brow, then chest. A small gesture for the dead. My hand made it before I thought.",
		"My hand moves toward {other} on its own, the way hands do for the dead.",
	},
	["ally_death.w15.mourn.025"] = {
		"This is the part nobody gets used to. Good. Nobody should.",
		"You never get used to this. Better that way.",
		"Let it hurt. It should.",
	},
	["ally_death.w15.mourn.026"] = {
		"{other} was right there. That's the whole thought. It keeps going round.",
		"Right there, a moment ago. My head won't get past it.",
	},
	["ally_death.w15.small.001"] = {
		"Strange, what the eye catches. A loose buckle on {other}'s gear. Nobody fixed it.",
		"A strap left undone. That's where my eyes keep landing.",
	},
	["ally_death.w15.small.002"] = {
		"A step to the left and it would be me lying there. I'm not going to think about which step.",
		"A step the other way, and someone would be grieving me.",
		"A few steps. That's all the distance between the ones who stay and the one who doesn't.",
	},
	["ally_death.w15.small.003"] = {
		"Somewhere, an errand {other} meant to run is still waiting.",
		"Every death leaves some small errand undone.",
	},
	["ally_death.w15.small.004"] = {
		"Known for years or for an hour, it lands the same. That surprises me.",
		"An hour or a lifetime. The weight comes out about the same.",
		"Strange. The weight doesn't check how long you've known someone.",
	},
	["ally_death.w15.small.005"] = {
		"{other}'s bag has come open. I close it. The one thing here I can fix.",
		"Something small has come undone. I reach to straighten it and stop halfway.",
	},
	["ally_death.w15.small.006"] = {
		"Somebody owes {other} a drink now. I'll volunteer, and drink it on their behalf if I must.",
		"There's a drink owed here. I'll hold it until it can be paid.",
	},
	["ally_death.w15.small.007"] = {
		"It doesn't care how good you are. That's the thought I'd rather not have.",
		"Skill doesn't buy you out of it. Nothing does.",
		"Skill, care, luck. None of them count for as much as you'd hope.",
	},
	["ally_death.w15.small.008"] = {
		"I catch myself patting my own arms, like someone checking that nothing's gone missing.",
		"Fingers, one by one. All there. Why am I counting?",
	},
	["ally_death.w15.small.009"] = {
		"I'm not sure I ever heard {other} laugh. Now I wonder what it sounded like.",
		"Strange to wonder, only now, what their laugh sounded like.",
	},
	["ally_death.w15.small.010"] = {
		"Death never knocks. Rude, but consistent.",
		"No knock, no warning. Death's manners haven't improved.",
		"Death, as usual, didn't bother to ask.",
	},
	["ally_death.w15.small.011"] = {
		"Not the way anyone wants to leave a group.",
		"{other}, that's a rotten way to leave.",
	},
	["ally_death.w15.small.012"] = {
		"If it were me down there, would anyone stop? I'd like to think so.",
		"Would they pause for me like this? I hope I'd be worth it.",
		"I wonder who'd stop for me. Best not to count.",
	},
	["ally_death.w15.small.013"] = {
		"My eyes have caught on some meaningless little detail and won't let go.",
		"Staring at nothing. I should stop. In a moment.",
	},
	["ally_death.w15.small.014"] = {
		"I notice a scuff on my gear I'd never seen before. What a stupid thing to see right now.",
		"My mind goes looking for trivial things. A scratch, a loose thread. Anything else.",
		"Of all the things to notice: a frayed cuff on my own sleeve.",
	},
	["ally_death.w15.small.015"] = {
		"Names come and go in a group like this. I want this one to stay a little.",
		"So many names pass through. Let this one stick.",
	},
	["ally_death.w15.small.016"] = {
		"I wonder if {other} had someone waiting, somewhere.",
		"Who would want to hear about this? Someone, surely.",
	},
	["ally_death.w15.small.017"] = {
		"If {other} gets back up, someone will have to explain what happened. Not me.",
		"First thing anyone asks after getting up: what happened? I won't have a good answer.",
	},
	["ally_death.w15.small.018"] = {
		"I look from face to face, quickly, counting who's still up.",
		"Check the living. Each of them. Quickly.",
	},
	["ally_death.w15.small.019"] = {
		"Some part of me is relieved it wasn't me. I'm not proud of that part.",
		"Relief that it wasn't me. Shame right behind it.",
		"Glad it wasn't me. Ashamed to be glad. Both at once.",
	},
	["ally_death.w15.small.020"] = {
		"The living are practical. Already the work is being shared out again.",
		"Already the rest of us are dividing up the work. The living don't waste time.",
	},
	["ally_death.w15.small.021"] = {
		"I never said thanks, {other}. I should have.",
		"Thank you. Should've said it sooner.",
	},
	["ally_death.w15.small.022"] = {
		"Everyone who has ever traveled in company has stood like this once. I'm in old company.",
		"Countless people have stood just like this. It doesn't make it lighter.",
	},
	["ally_death.w15.small.023"] = {
		"I wipe my face with the back of a hand and don't ask myself why.",
		"Rubbing my eyes. Just tired. That's what I'll say.",
	},
	["ally_death.w15.small.024"] = {
		"My first thought was practical, and I'm ashamed of how fast it came.",
		"The mind is a heartless little clerk. It's already doing the sums.",
		"Part of me is already counting what we're short. I don't like that part.",
	},
	["ally_death.w15.small.025"] = {
		"I'm suddenly aware of every ache I've got. As if my body wanted a word.",
		"Every ache I own speaks up at once, as if to say: you, too.",
	},
	["ally_death.w15.small.026"] = {
		"Somebody must have made up a word for this. I don't know it.",
		"There should be a word for this.",
		"Say something, anything, even if only to myself.",
	},
	["ally_death.w15.small.027"] = {
		"I've stopped mid-step. Finish the step. Then the next.",
		"One foot raised, and for a moment I forget where to put it.",
	},
	["ally_death.w15.steel.001"] = {
		"Later. I'll feel this properly later, when whoever's left is safe.",
		"Grief can queue behind the living.",
	},
	["ally_death.w15.steel.002"] = {
		"Shoulders back. Whoever's left needs me steady more than sorry.",
		"Steady first. Sorry later.",
		"Keep it together. Fall apart afterward, if it comes to that.",
	},
	["ally_death.w15.steel.003"] = {
		"Jaw set. Back to what still needs doing.",
		"Swallow it. Find the others. Go.",
		"One hard blink and I'm moving. Nobody needs to see the pause.",
	},
	["ally_death.w15.steel.004"] = {
		"We stay together now. We mourn {other} when it's done.",
		"Stay close to the others. Grief can come when it's over.",
	},
	["ally_death.w15.steel.005"] = {
		"There's a list of things to do, and grief isn't on it yet. I'll add it at the bottom.",
		"Grief goes at the bottom of the list. It'll still be there when I get to it.",
	},
	["ally_death.w15.steel.006"] = {
		"If I stop now I won't start again. So I don't stop.",
		"Stopping is a luxury. I'll take it when there's room.",
		"Keep moving. Grief is quicker to catch the ones who stand still.",
	},
	["ally_death.w15.steel.007"] = {
		"Wait for me, {other}. I'll come and sit with you when this is done.",
		"I'll come back to you. Just let me finish this.",
	},
	["ally_death.w15.steel.008"] = {
		"The dead are patient. The living aren't. Tend the living.",
		"Those who are gone can wait. Those who are here can't. See to them first.",
	},
	["ally_death.w15.steel.009"] = {
		"One look. That's all I allow myself. Then back to it.",
		"Look once. Only once. Then the work.",
		"A moment for {other}. One. Then the task.",
	},
	["ally_death.w15.steel.010"] = {
		"Feel it later. Use it now.",
		"Put it somewhere. Use it to keep the others standing.",
	},
	["ally_death.w15.steel.011"] = {
		"Count who's left. See how they are. Then, and only then, {other}.",
		"Count heads. Check on them. Then think.",
	},
	["ally_death.w15.steel.012"] = {
		"Head up. Grief keeps; it always has.",
		"Look sharp. It'll keep.",
	},
	["ally_death.w15.steel.013"] = {
		"My hands are shaking. Fine. They can shake and work at the same time.",
		"Shaking hands still work. Use them.",
		"Hands, keep working. You can shake after.",
	},
	["ally_death.w15.steel.014"] = {
		"A fist to the chest, once. That will have to stand for everything I'd say.",
		"Fist to chest. Enough for now.",
	},
	["ally_death.w15.steel.015"] = {
		"Mourning is for people who are safe. I'm not there yet.",
		"Grief is for safe places. Get somewhere safe first.",
		"Safe first. Sad after.",
	},
	["ally_death.w15.steel.016"] = {
		"{other} would hate us standing around moping. Probably. Let's go with probably.",
		"The dead never ask anyone to mope. Convenient, but I'll take it.",
	},
	["ally_death.w15.steel.017"] = {
		"Someone has to see to {other}. If nobody does, I will.",
		"Someone should stay close to them. Maybe me.",
	},
	["ally_death.w15.steel.018"] = {
		"One fewer pair of hands. Mine will have to do the work of two.",
		"Two people's work, one pair of hands. Fine.",
	},
	["ally_death.w15.steel.019"] = {
		"Shoulders square. The load's heavier now, and it's mine to carry.",
		"Something just got added to what I'm carrying. I can feel exactly where it sits.",
		"A stiff shoulder, a new weight on it. Settle it and walk.",
	},
	["ally_death.w15.steel.020"] = {
		"Mourner or useful. Not both at once. Useful first.",
		"I'll mourn properly once there's nothing left for me to do.",
	},
	["ally_death.w15.steel.021"] = {
		"Push it down. Not forever. Just past this.",
		"Fold it up small and keep moving. It'll open later on its own.",
		"Lock it away for now. I know where I'm leaving the key.",
	},
	["ally_death.w15.steel.022"] = {
		"This doesn't happen twice. Nobody else goes down.",
		"That's enough. Nobody else.",
		"Not one more. Not one.",
	},
	["ally_death.w15.steel.023"] = {
		"The oldest rule of any company: grief waits outside until the work is done.",
		"Grief waits by the door. It always has. Let it.",
	},
	["ally_death.w15.steel.024"] = {
		"Eyes on the way ahead. If I look back now, I'll stay there.",
		"Face forward. Keep facing forward.",
	},
	["ally_death.w15.steel.025"] = {
		"If {other} gets back up, good. Until then the job is the same: keep the others alive.",
		"Maybe they'll be back on their feet soon. Either way, the job hasn't changed.",
	},
	["ally_death.w15.steel.026"] = {
		"Rest, {other}. We'll finish it.",
		"Rest. We'll see it through.",
		"Rest now. Leave the rest to us.",
	},
	["ally_death.w15.vow.001"] = {
		"I'll remember the name {other}. That much I can promise.",
		"A name is a small thing to carry. I'll carry it.",
		"Some names deserve to outlast the moment. This one will, if I've any say.",
	},
	["ally_death.w15.vow.002"] = {
		"You won't be left behind, {other}. Not by me.",
		"Nobody gets left behind.",
		"We don't leave our own.",
	},
	["ally_death.w15.vow.003"] = {
		"Whatever brought {other} here, I'll see it finished.",
		"Their reason for being here doesn't stop now. I'll take it up.",
	},
	["ally_death.w15.vow.004"] = {
		"I want to remember something true about {other}, not just the end. I'll find it.",
		"Not the end. I'll keep something from before the end.",
	},
	["ally_death.w15.vow.005"] = {
		"I say {other}'s name once, very low, to put it somewhere safe.",
		"Say the name once, quietly. Put it away where it can't get lost.",
		"A name, said softly twice. That's me keeping it.",
	},
	["ally_death.w15.vow.006"] = {
		"I'll get better at this. That's the only apology that means anything.",
		"Next time I'll be quicker. That's the promise.",
		"This won't go the same way twice. I'll see to it.",
	},
	["ally_death.w15.vow.007"] = {
		"For {other}. I want that name remembered.",
		"This should not be forgotten. I won't let it be.",
	},
	["ally_death.w15.vow.008"] = {
		"The world forgets quickly. I can be slower than the world.",
		"Forgetting is the world's habit. It needn't be mine.",
		"I'll keep it long after the world has moved past.",
	},
	["ally_death.w15.vow.009"] = {
		"If {other} gets back up, I'll make sure they know someone noticed.",
		"If they get up again, I'll say it plainly: you were missed.",
	},
	["ally_death.w15.vow.010"] = {
		"I look at {other} a long while. I want to be able to find this face again later.",
		"Look properly. Learn it. Memory won't do the work for me.",
	},
	["ally_death.w15.vow.011"] = {
		"No candle here to light. I'll keep one lit somewhere inside instead.",
		"No candle to light. Memory will have to do.",
		"There ought to be a candle lit for this. I'll owe one.",
	},
	["ally_death.w15.vow.012"] = {
		"I've got you, {other}. I'm not going anywhere.",
		"I'm here. I'm not leaving.",
		"Staying. Right here.",
	},
	["ally_death.w15.vow.013"] = {
		"From here on, some of what I do is done for {other}.",
		"Some of every fight from now on belongs to them.",
		"I'll fight a little harder now. Part of it is theirs.",
	},
	["ally_death.w15.vow.014"] = {
		"Later I'll write it down somewhere: the name, and that it happened. Someone should.",
		"Somebody should keep a record. It might as well be me.",
		"A line in my private ledger. It deserves a whole page.",
	},
	["ally_death.w15.vow.015"] = {
		"An open hand, raised toward {other}. Goodbye, or until later. I don't get to choose which.",
		"Hand up, palm open. A farewell, quietly.",
		"Two fingers to my brow. The smallest salute I know.",
	},
	["ally_death.w15.vow.016"] = {
		"I'll tell it right, if anyone asks. No dressing it up, no leaving it out.",
		"If someone asks how it went, they'll get the truth from me.",
	},
	["ally_death.w15.vow.017"] = {
		"Your place stays yours, {other}.",
		"Your place is kept. Come back to it if you can.",
	},
	["ally_death.w15.vow.018"] = {
		"People go on a while in what others repeat about them. I'll keep repeating {other}.",
		"You last as long as someone keeps saying your name. I can say it.",
	},
	["ally_death.w15.vow.019"] = {
		"Call it a debt. I'll see it settled before I rest.",
		"A debt, then. Paid in full before I stop.",
	},
	["ally_death.w15.vow.020"] = {
		"My stride's changed. Harder. Like there's a promise at the end of it.",
		"Walk like you mean it. You do now.",
		"A quieter step, and a harder one. I'll keep it.",
	},
	["ally_death.w15.vow.021"] = {
		"Whatever {other} was to everyone else, here they stood with me. I'll keep that.",
		"They stood beside me. That's what I'll keep.",
	},
	["ally_death.w15.vow.022"] = {
		"You did your share, {other}. Let the rest of us do ours.",
		"Your share is done. We'll do ours.",
	},
	["ally_death.w15.vow.023"] = {
		"I'll keep this moment exactly as it is. Not prettier, not worse.",
		"Remember it as it was. Don't polish it.",
	},
	["ally_death.w15.vow.024"] = {
		"Whatever comes next, I'll meet it for two.",
		"I'll face what's left on behalf of someone who can't.",
		"For two, then. Fine.",
	},
	["ally_death.w15.vow.025"] = {
		"I tie a small knot in a strap of my gear. Some people keep count that way. Now I do.",
		"A knot in a loose strap. I'll leave it there.",
	},
	["ally_death.w15.vow.026"] = {
		"Go well, wherever the dead go. I'll catch up one day, but not soon.",
		"Wherever it is you've gone, save me a seat. Just not too soon.",
	},
	["relation_player.w15.bond.001"] = {
		"{other}, here. Whatever I was about to grumble about can wait.",
		"A friend's name turning up unannounced. Few things mend a mood so quickly.",
		"One familiar person, and everywhere feels a little less borrowed.",
	},
	["relation_player.w15.bond.002"] = {
		"My shoulders drop half an inch before I've even placed the name. The body knows a friend first.",
		"Some greetings I hand out to everyone. The one ready in my hand now is kept for a single person.",
	},
	["relation_player.w15.bond.003"] = {
		"Some people I would follow into a bad idea just to keep them company. {other} is one.",
		"If this turns into trouble, at least it will be trouble in good company.",
		"A friend in sight. My judgment gets worse and my mood gets better; a fair trade.",
	},
	["relation_player.w15.bond.004"] = {
		"Some names make me stand up straighter, and some let me slouch. {other} lets me slouch.",
		"With some people I have to weigh every word. Not with this one, and that is the whole gift.",
		"Some company is work and some is rest. This is the resting kind.",
	},
	["relation_player.w15.bond.005"] = {
		"Friendship asks so little out loud. Mostly it just wants to be noticed, so: I see you, {other}.",
		"A friend. I keep forgetting how much lighter everything weighs with one in reach.",
	},
	["relation_player.w15.bond.006"] = {
		"Someone found me, and it's the right someone. Good.",
		"There you are, {other}. I'll stay close a while.",
	},
	["relation_player.w15.bond.007"] = {
		"{other} in sight. Whatever comes next, I would rather meet it with this one at my side.",
		"Some trust is built in words. This one was built in the moments nobody had time to talk.",
		"Shoulder to shoulder is a habit, and this is someone I have the habit with.",
	},
	["relation_player.w15.bond.008"] = {
		"Without deciding to, I've left room at my side for {other}. Some habits come before thought.",
		"A short nod is all it takes between people used to covering each other. Anything longer would be fuss.",
	},
	["relation_player.w15.bond.009"] = {
		"If {other} is here, then so is trouble, and I am glad of both.",
		"A comrade turns up and my first thought is relief. My second is to check what they brought along.",
		"Good to see this one. Slightly less good to think about what usually follows.",
	},
	["relation_player.w15.bond.010"] = {
		"{other}. Everything else in sight goes a little out of focus, as it should.",
		"That name, and suddenly I am less tired than I was a moment ago.",
		"Some faces I look at. This one I look for, even when I have no reason to expect it.",
	},
	["relation_player.w15.bond.011"] = {
		"Everything in me goes quiet and glad at once. {other} has that effect, and I've stopped arguing with it.",
		"A greeting would do. I'd rather let the moment run a little long.",
	},
	["relation_player.w15.bond.012"] = {
		"Someone on my side by decision, not by habit. Decisions can be unmade, which is why this one is worth something.",
		"{other}, who picked my side when there was no need to. I keep a careful tally of people like that.",
		"A shared purpose is a strong rope. I'll keep my end of it taut.",
	},
	["relation_player.w15.bond.013"] = {
		"Good timing, {other}. Same cause, same side.",
		"The agreement stands, I trust. It had better.",
	},
	["relation_player.w15.bond.014"] = {
		"With {other} near, I stop counting the ways out. I only notice it afterward.",
		"Trust is quiet. It shows up as the things I no longer bother to check.",
		"Here is someone whose word I would take without looking for the catch.",
	},
	["relation_player.w15.bond.015"] = {
		"I'd hand {other} my pack and walk off without a second look. That is about the highest praise I have.",
		"Some people I'd lend coin to. Fewer I'd lend my back to. This one gets both.",
		"If I had to leave something precious in someone's keeping, this name would be near the top.",
	},
	["relation_player.w15.bond.016"] = {
		"My guard drops a notch, the way it does for {other} and almost nobody else.",
		"Turning my back here wouldn't cost me a thought. That's rarer than it sounds.",
	},
	["relation_player.w15.bond.017"] = {
		"No particular reason. I just like {other}, and I've stopped asking it to explain itself.",
		"Some company improves everything a little without doing anything special. This is that company.",
		"A face I'm glad to see. It needs no better excuse than that.",
	},
	["relation_player.w15.bond.018"] = {
		"Even my bad mood recognizes {other}, and quietly steps aside.",
		"There are people I put up with and people I'm glad of. This one sits firmly in the second pile.",
	},
	["relation_player.w15.bond.019"] = {
		"Oh, good. It's you.",
		"{other}! Things just got more bearable.",
	},
	["relation_player.w15.bond.020"] = {
		"Somewhere there's a kindness I never paid back. {other} has likely forgotten it; I haven't.",
		"Gratitude is an odd load: it weighs nothing, and still I feel it every time this name comes round.",
		"A good turn done for me, once, without being asked. That is not the kind of thing that wears off.",
	},
	["relation_player.w15.bond.021"] = {
		"There's a thank-you I've been saving up, and no idea how to say it without making it awkward.",
		"Someone I'm in debt to, the pleasant kind of debt. I'd rather pay it in deeds than in speeches.",
	},
	["relation_player.w15.bond.022"] = {
		"I'll bow my head to {other} a little lower than a greeting asks. Only I need know why.",
		"An old debt, weighed once more and found still there. I don't mind carrying it.",
	},
	["relation_player.w15.edge.001"] = {
		"{other}. Somewhere in my head a scoreboard I pretend not to keep just woke up.",
		"Nothing keeps me sharp like a rival at the edge of my sight. I resent how well it works.",
		"A rival. Good. I was getting comfortable, and comfortable is how people fall behind.",
	},
	["relation_player.w15.edge.002"] = {
		"Next to {other} I never quite know where I stand, and I mean to find out.",
		"Respect and rivalry walk closer together than people admit. This one has both from me.",
	},
	["relation_player.w15.edge.003"] = {
		"Oh, it's you. I'll make sure to stay a step ahead.",
		"{other}. I was hoping you'd show; I needed a reason to try harder.",
		"Finally. Winning was getting dull.",
	},
	["relation_player.w15.edge.004"] = {
		"I stand up a little straighter for {other}. Someone has started counting, and it might as well be me.",
		"If eyes meet, I'll hold the look one moment longer than politeness asks. Petty, and I don't care.",
	},
	["relation_player.w15.edge.005"] = {
		"I'd never wish {other} harm. Just a slightly worse day than mine, now and then.",
		"If this rivalry ever ended, I'd miss it more than I'd admit. It's useful, having someone to beat.",
	},
	["relation_player.w15.edge.006"] = {
		"{other}. Every muscle I own remembers why, even before I do.",
		"The one name I'd least like to meet, in plain sight. My face stays calm; the rest of me is already measuring distances.",
		"Hatred is tiring. Seeing this name, I find I still have the strength for it.",
	},
	["relation_player.w15.edge.007"] = {
		"{other}. The world is large, and still it keeps finding ways to put this one in my path.",
		"Out of everyone there is to run into. The world has a sense of humor, and I don't share it.",
	},
	["relation_player.w15.edge.008"] = {
		"I go still at the sight of {other}. Not afraid, not ready: just still, deciding nothing yet.",
		"Hands quiet, eyes steady, mouth shut. Whatever this turns into, it won't start with me.",
	},
	["relation_player.w15.edge.009"] = {
		"I could pretend {other} is just a face like any other. I won't; pretending is how people get careless.",
		"Enmity is honest in its way. With this one, at least, I know exactly where I stand.",
		"Hate is a costly thing to carry. I've decided this name is worth the expense.",
	},
	["relation_player.w15.edge.010"] = {
		"{other}. I'll be polite, and I'll keep my belongings where I can see them.",
		"Distrust isn't rude if it stays quiet. Mine is staying very quiet, and very awake.",
	},
	["relation_player.w15.edge.011"] = {
		"My pack drifts to the far shoulder all on its own. Habit knows this name.",
		"Civil, then. Civil costs nothing and promises less.",
	},
	["relation_player.w15.edge.012"] = {
		"{other}. I'm sure somebody somewhere finds this one charming. I'll take their word for it.",
		"Some names sour a moment just by arriving. This is one of them.",
		"I don't wish this person ill. I just wish them somewhere else, at some length.",
	},
	["relation_player.w15.edge.013"] = {
		"That name. My patience shrinks by a size.",
		"{other}. Courtesy, then, the thin kind that's mostly teeth.",
		"I'll nod. That's the whole budget.",
	},
	["relation_player.w15.edge.014"] = {
		"{other}. Fancy that.",
		"Ah. You.",
	},
	["relation_player.w15.edge.015"] = {
		"Without meaning to, I make myself smaller. Then I make myself stop.",
		"Fear is a poor advisor and a loud one. Right now it is telling me exactly where this one is standing.",
		"I keep my voice level and my distance generous. Neither is an accident.",
	},
	["relation_player.w15.edge.016"] = {
		"With {other} about, I'd rather go quiet and leave the space between as wide as it is.",
		"I keep this one at the edge of my sight, and I never quite turn my back.",
	},
	["relation_player.w15.edge.017"] = {
		"{other}. Pleasant enough. So were plenty of people, right up until they weren't.",
		"I listen to this one the way I'd count change from a stranger: twice, and politely.",
		"No accusation, nothing I could say out loud. Just a small hand on my shoulder saying: careful.",
	},
	["relation_player.w15.edge.018"] = {
		"I'd trust {other} with a message. Not with the reply.",
		"Wariness is cheap insurance. I'll keep paying it with this one.",
		"This one smiles easily. I've learned to count what easy smiles cost.",
	},
	["relation_player.w15.edge.019"] = {
		"A glance at {other}, a glance at my belongings, and back. No hurry; no accusation either.",
		"I can smile and keep watching at the same time. It's one of my better skills.",
	},
	["relation_player.w15.edge.020"] = {
		"{other}. My hands want something to do. I give them nothing, and wait.",
		"Some fears shout. This one only whispers the same name, over and over.",
		"I know this tightness in my shoulders. It always turns up a moment ahead of this name.",
	},
	["relation_player.w15.edge.021"] = {
		"Nothing has happened. Nothing has to. Having this one near is enough to set every nerve on edge.",
		"I could leave. I won't, but knowing I could helps more than it should.",
	},
	["relation_player.w15.edge.022"] = {
		"{other}. The old wrong sits up and looks around, wide awake.",
		"I've tried to set it down, this grudge. It keeps finding its way back into my hands.",
		"Forgiveness is a door I keep meaning to open. Not for this name. Not so far.",
	},
	["relation_player.w15.edge.023"] = {
		"Look at {other}, carrying on as if nothing happened. Must be restful.",
		"I've rehearsed what I'd say to this one so often the words have worn smooth. I still won't say them.",
		"Some wrongs heal. This one has only learned to keep quiet.",
	},
	["relation_player.w15.edge.024"] = {
		"I look at {other} a moment too long, then away. My jaw stays set a while after.",
		"I'll let this one pass without a word. The silence won't be an empty one.",
	},
	["relation_player.w15.tie.001"] = {
		"{other} and I have stood in the same fight. Whatever else is true, that stays true.",
		"Once you've seen how someone moves when things go wrong, you don't forget it. I've seen this one.",
		"I don't remember much of that fight clearly. I remember who was in it.",
	},
	["relation_player.w15.tie.002"] = {
		"Shared danger leaves something behind, small and stubborn. It stirs at this name.",
		"I've trusted {other} with my life once, whether I meant to or not. That's harder to undo than people think.",
		"Fighting alongside someone isn't friendship. It's something stranger, and harder to shake off.",
	},
	["relation_player.w15.tie.003"] = {
		"{other} gets the nod I keep for people I've been in a fight with.",
		"My hands flex at the sight of this one, as if the memory of that fight lived in my fingers.",
	},
	["relation_player.w15.tie.004"] = {
		"Last time {other} and I were in the same place, something was trying very hard to kill everyone. Let's hope that isn't a tradition.",
		"Nothing ties two people together like almost dying at the same moment.",
	},
	["relation_player.w15.tie.005"] = {
		"I know how this one fights. That's more than I know about most people I've shared a meal with.",
		"A name from a fight I was in. The details have blurred; the feeling of having someone there hasn't.",
	},
	["relation_player.w15.tie.006"] = {
		"I still remember how that duel ended, and I'm choosing not to say which way.",
		"Facing someone in a duel teaches you their habits faster than any friendship would.",
		"A duel is a conversation with fewer words and more footwork. This one and I have had it.",
	},
	["relation_player.w15.tie.007"] = {
		"{other}: one duel, once. Some questions don't stay closed for long.",
		"There's a respect that only comes from having tried your best against someone. I have some for this one.",
	},
	["relation_player.w15.tie.008"] = {
		"I'm already sizing {other} up, the way you do with someone faced once in a duel.",
		"My shoulder gives a small twinge at the sight of this one. The old exchange still has some ache left in it.",
	},
	["relation_player.w15.tie.009"] = {
		"{other}. Some part of me is already eyeing a rematch.",
		"I remember you. And that duel.",
	},
	["relation_player.w15.tie.010"] = {
		"{other}, someone I've traded with. Goods changed hands; a little trust did too, or didn't.",
		"Trading shows you how someone counts. I remember how this one counts.",
		"A trade is a small test with coin on the table. This name passed it or failed it; I remember which.",
	},
	["relation_player.w15.tie.011"] = {
		"Last time I dealt with this one, coin moved. I'm still deciding if it moved in the right direction.",
		"A name I've done business with. My purse remembers it, in its own way.",
	},
	["relation_player.w15.tie.012"] = {
		"My hand goes to my purse at the sight of {other}. A trader's reflex, nothing more.",
		"The brisk nod I keep for people I've done business with. Earned, one way or another.",
	},
	["relation_player.w15.tie.013"] = {
		"An invitation went between {other} and me once. Who asked whom, I'd have to think about.",
		"Being asked to join someone, or asking them, is a small risk. This name was part of one.",
		"Joining up, even once, leaves a mark. A small one, but I can find it.",
	},
	["relation_player.w15.tie.014"] = {
		"Someone who once wanted me along, or whom I wanted along. Either way, a door was opened.",
		"{other}. There was an offer of company once. I remember it more than I'd have guessed.",
	},
	["relation_player.w15.tie.015"] = {
		"My hand half rises toward {other}, remembering an invitation from some time ago.",
		"This is someone who once asked, or was asked, to come along. That counts for something.",
	},
	["relation_player.w15.tie.016"] = {
		"A gesture from this one, once. I remember it better than what it meant.",
		"A wave, a bow, something rude? Whatever it was, it was enough to make this name stick.",
	},
	["relation_player.w15.tie.017"] = {
		"People who bother to make a gesture at someone are rarer than you'd think. This one did, once.",
		"One small gesture, and the name stayed with me. Memory keeps odd receipts.",
	},
	["relation_player.w15.tie.018"] = {
		"An old gesture from {other} deserves a small one back. I have one ready.",
		"A tilt of the head for this one: repaying a gesture from some time back.",
	},
	["relation_player.w15.tie.019"] = {
		"{other}. One of the names I keep, for reasons of my own.",
		"Recognition comes before the reason for it. First the name, then why it matters.",
		"I know this one. What I feel about it can wait a moment; knowing comes first.",
	},
	["relation_player.w15.tie.020"] = {
		"One brief look at {other}, the look I keep for people already known.",
		"Noted, and filed away. No hurry to decide what it means.",
	},
	["relation_player.w15.tie.021"] = {
		"A known name in a world full of unknown ones. Whatever it means, it means something.",
		"Every name I keep is a small promise to pay attention. Here's one coming due.",
		"Out of all the people passing, this one I know. It changes the shape of the moment.",
	},
	["relation_player.w15.tie.022"] = {
		"{other}. Good news or bad, I'd know that name anywhere.",
		"Familiar. Whether that's a comfort or a warning, I'll find out shortly.",
	},
	["relation_player.w15.tie.023"] = {
		"Most passers-by are blank to me. This one isn't, and the difference is enough to slow my step.",
		"The mind sorts people faster than the eyes do. It has already put this one somewhere.",
	},
	["relation_player.w15.tie.024"] = {
		"An acquaintance. Not close, not a stranger: one of those names that sit in the middle.",
		"{other}. Met before; that's about all I could swear to.",
	},
	["relation_player.w15.tie.025"] = {
		"A polite nod for {other}, the passing kind, kept for faces that aren't quite friends.",
		"The ordinary courtesy owed to someone half remembered. I can manage that much.",
	},
	["relation_player.w15.tie.026"] = {
		"Familiar name, no strong feelings attached, and I'm not looking for any.",
		"Neither liking nor dislike, for this one. Some people simply don't take up much room.",
	},
	["relation_player.w15.tie.027"] = {
		"A name I recognize and can't make myself care about. That's allowed.",
		"Not every familiar person needs a feeling attached. This one comes without.",
	},
	["relation_player.w15.time.001"] = {
		"{other}, and hardly any time since last. Either luck or a pattern.",
		"Twice in so short a span. At this rate I'll learn the way this one walks.",
		"The last meeting is barely behind me, and here comes the next one.",
	},
	["relation_player.w15.time.002"] = {
		"In sight already. Whatever was left unsaid last time is still fresh enough to say.",
		"So little time since the last meeting that I barely had a chance to think about it. Now I'll have to.",
	},
	["relation_player.w15.time.003"] = {
		"This one, back already? That was quick.",
		"{other}, so soon. I'd have bet on a longer wait.",
	},
	["relation_player.w15.time.004"] = {
		"A second look at {other}, just to check how little time has gone by. Hardly any.",
		"I squint, doing the sum: almost nothing since the last meeting.",
	},
	["relation_player.w15.time.005"] = {
		"Meeting the same person twice in a short while feels like being told something. I haven't worked out what.",
		"{other}, close on the heels of last time. Some acquaintances refuse to go stale.",
	},
	["relation_player.w15.time.006"] = {
		"If this keeps up, people will think I'm being followed. Or that I'm the one following.",
		"Hardly enough time apart to miss anyone, or to stop minding them.",
	},
	["relation_player.w15.time.007"] = {
		"A short nod for {other} will do. No need to start from the beginning after so little time.",
		"This soon, the briefest greeting is the right size. Anything bigger would feel like a reunion.",
	},
	["relation_player.w15.time.008"] = {
		"It's been weeks since {other} and I last crossed paths. Long enough for news, too short to lose track.",
		"Weeks, not months. Enough time for something to have changed, not enough to know what.",
		"The gap is just wide enough to wonder what I've missed.",
	},
	["relation_player.w15.time.009"] = {
		"Some weeks have passed. I find I remember the last meeting better than I expected.",
		"Weeks apart shift a face slightly in the memory. Seeing {other} puts it back in order.",
	},
	["relation_player.w15.time.010"] = {
		"I take a moment to look {other} over, the way you do after a few weeks apart.",
		"A memory some weeks old against the real thing: I check what's moved.",
		"A small pause, to catch up on a few weeks at a glance.",
	},
	["relation_player.w15.time.011"] = {
		"Weeks. Long enough for this one to have done something foolish. Or me. Possibly both.",
		"A few weeks out of sight. I wonder whose version of the last meeting has grown more flattering.",
	},
	["relation_player.w15.time.012"] = {
		"That name, after some weeks of not hearing it. It fits back into place with a small click.",
		"The last time feels near and far at once. That's what a few weeks will do.",
	},
	["relation_player.w15.time.013"] = {
		"Weeks have a way of sanding the edges off a memory. Here's {other}, edges and all.",
		"Not long enough to forget, just long enough to wonder if I'd remembered it right.",
	},
	["relation_player.w15.time.014"] = {
		"People don't stand still for a month. I wonder which road {other} has taken.",
		"Long enough that I had nearly filed this name away. Nearly.",
		"The last meeting is so far back it feels like it happened to someone else.",
	},
	["relation_player.w15.time.015"] = {
		"A long gap. I'll have to relearn this one a little, the way you relearn a tune you used to hum.",
		"After more than a month, the name came back quicker than the details.",
		"After this long, half of what I remember is probably wrong. Let's find out which half.",
	},
	["relation_player.w15.time.016"] = {
		"The sight of {other} stops me for a moment, as it does when a long while has passed.",
		"I set this one beside an older memory to see how well they match. Not perfectly; nothing does after so long.",
	},
	["relation_player.w15.time.017"] = {
		"Long absences make every meeting a small reckoning. Let's see what this one adds up to.",
		"A month or more. Enough for a whole life to tilt a little, mine included.",
	},
	["relation_player.w15.time.018"] = {
		"A long stretch since the last time. I hope I've changed for the better; I'd settle for sideways.",
		"After so long, I can't swear this one hasn't become insufferable. Or that I haven't.",
	},
	["relation_player.w15.time.019"] = {
		"{other}, after a long while. I nearly said it aloud.",
		"Look at that: a long time, and the proof is right in front of me.",
	},
	["relation_player.w15.time.020"] = {
		"Last time it was here, too. I'm starting to suspect this spot of arranging things.",
		"{other}, right where the last meeting happened. As if the place had kept the appointment on its own.",
	},
	["relation_player.w15.time.021"] = {
		"Same ground, same name. I'd have bet against it.",
		"It was here, last time. I remember because I remember almost nothing else about it.",
		"If I come by this spot often enough, I suppose I'll always find {other} on it.",
	},
	["relation_player.w15.time.022"] = {
		"I look around the spot, then at {other}, as if the place itself had remembered.",
		"Here, where the last meeting happened, the familiar figure finishes the picture.",
	},
	["relation_player.w15.time.023"] = {
		"Same place, same person. Either this spot is lucky or it simply has no imagination.",
		"Back where the last meeting was. I half expect to pick the conversation up mid-sentence.",
	},
}, "base_relations")
