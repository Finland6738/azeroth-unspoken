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
}, "base_relations")
