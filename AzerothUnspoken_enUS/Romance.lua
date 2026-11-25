-- English texts of active romance (ADR 0061, step R3). The rules are in Data/RegistryRomance.lua, the flirt answers in
-- Data/RomanceFlirts.lua. Tier 1 is courteous, tier 2 intimate and modest (it fades to black); nothing about a minor,
-- nothing the game does not keep, never public. The NPC's replies fit an NPC of either sex; {other} is the NPC's name.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- the NPC welcomes a flirt
	---------------------------------------------------------------------------
	["rom.welcome.t1.n1"] = {
		"Well. Now I have forgotten what I was about to say, and I do not mind at all.",
		"You will make me blush in front of everyone. Go on, then, I will allow it.",
		"That was kind, and unexpected, and I cannot seem to stop smiling.",
	},
	["rom.welcome.t1.n2"] = {
		"Careful. A day that goes like this could easily become my favorite.",
		"I had a long list of worries this morning. I cannot seem to find it now.",
		"Ha! You are bolder than most who pass this way. I like that more than I should.",
	},
	["rom.welcome.t1.n3"] = {
		"Mm. I will remember this when the day turns dull, and it will help.",
		"An ordinary hour, and suddenly it feels like a feast day.",
		"If you keep on like that, I shall start looking up every time I hear footsteps.",
	},
	["rom.welcome.t2.n1"] = {
		"Come closer. The hour is quiet, and for once I do not want to be anywhere else.",
		"Stay. Just like this, a little longer; the morning can find its own way here.",
		"Your hand is warm. Leave it where it is, and let me lower my voice for you alone.",
	},
	["rom.welcome.t2.n2"] = {
		"There is nothing I need to say tonight. Lean here, and let the silence speak.",
		"I was hoping for this. Leave the lamp low, and stay.",
		"Hush. One kiss, and then let me rest my head on your shoulder until the candle gutters.",
	},
	["rom.welcome.t1.cheerful"] = {
		"Ha! Now that has made my whole day brighter, and it was a fair day already.",
		"Oh, stop it, or I'll laugh out loud in front of everyone. ...No, wait. Don't stop.",
		"Careful, now I'll be grinning at nothing for the rest of the day, and people will ask why.",
	},
	["rom.welcome.t1.gruff"] = {
		"Hmph. Don't look at me like that. ...Well. Don't stop, either.",
		"Bah, flattery. Never works on me. ...Hardly ever, anyway.",
		"Fine. Fine! It was kind. There, I said it. Don't make me say it twice.",
	},
	["rom.welcome.t1.stoic"] = {
		"I noticed. I am glad of it.",
		"That was kind. I will keep it with me.",
		"Few things reach me these days. That one did.",
	},
	["rom.welcome.t1.melancholic"] = {
		"Oh. I had forgotten what this feels like, to be glad for no reason at all.",
		"Strange. The sky looked gray to me this morning, and now I am smiling.",
		"I don't trust moments like this to last. I think I'll enjoy this one anyway.",
	},
	["rom.welcome.t1.merciful"] = {
		"That is a gentle thing to offer. Thank you; it warms me more than you might think.",
		"That was gently done. I'm glad it came my way.",
		"I spend my days caring for others. It is a sweet thing, for once, to be cared for in turn.",
	},
	["rom.welcome.t1.fierce"] = {
		"Bold. I like bold. Don't lose your nerve now.",
		"Good. No dancing around it; that's how I'd have done it myself.",
		"You've got my attention. Let's see if you can keep it.",
	},
	["rom.welcome.t1.resolute"] = {
		"I'll be honest with you: that pleased me. More than I expected it to.",
		"I don't play games with these things. So, plainly: yes, I liked that.",
		"I won't pretend that didn't please me. It did, and I'm not ashamed to say so.",
	},
	["rom.welcome.t1.innkeeper"] = {
		"Careful, or I'll start pouring your mug before you even ask. Sit at the end of the bar, where I can see you.",
		"Half the room is calling for me, and here I stand, smiling at you like a fool. Go on, say that again.",
		"You'll have me spilling the ale. That's the sweetest thing anyone has said across this counter in days.",
	},
	["rom.welcome.t1.guard"] = {
		"I'm meant to be watching the road, you know. It gets harder with you standing right there.",
		"On duty I don't smile. Look what you've made me do.",
		"Stay a moment, then. The road can keep itself quiet for one breath.",
	},
	["rom.welcome.t1.merchant"] = {
		"I've weighed coin all day, and nothing has been worth as much as that. Lean on the counter a while.",
		"There, I've lost count of the stock. I'll blame you for it, and gladly.",
		"There's no price on that, and I wouldn't sell it if there were. Keep talking.",
	},
	["rom.welcome.t1.trainer"] = {
		"The next lesson can wait. I'd rather hear you say that again, slowly.",
		"I teach focus for a living, and you've just taken all of mine. Well struck.",
		"Between drills I don't usually blush. Take it as a mark of honor.",
	},
	["rom.welcome.t1.questgiver"] = {
		"I had a hundred worries on this table a moment ago. I can't seem to find a single one now.",
		"Work, always work. And then you say a thing like that, and all of it goes quiet.",
		"You're a welcome sort of trouble. Sit a while; the letters and lists aren't going anywhere.",
	},
	["rom.welcome.t2.cheerful"] = {
		"Come here, then. No, closer. There. Now I can't stop smiling, and I don't want to.",
		"Shh, my laughing will wake the whole inn. Kiss me quiet, then.",
		"The fire's low and the night's ours. Stay a while, and let me warm your hand in mine.",
	},
	["rom.welcome.t2.gruff"] = {
		"Hmph. Get over here, then. ...And don't tell anyone I said that so softly.",
		"Bah. You'll be the ruin of me. Stay. Just... stay.",
		"Quiet, now. Not another word. Just let me hold you a while.",
	},
	["rom.welcome.t2.stoic"] = {
		"Stay. That is all I want tonight.",
		"Come here. I have no words for this. Only this.",
		"The night is quiet. Let it be quiet with you beside me.",
	},
	["rom.welcome.t2.melancholic"] = {
		"I used to dread the nights. Not this one. Stay close, and let me believe it.",
		"Hold me a moment. I want to remember how this feels.",
		"Every happiness I've known slipped away before dawn. Tonight I'll hold on a little tighter.",
	},
	["rom.welcome.t2.merciful"] = {
		"Rest your head here. Nobody needs anything from you tonight.",
		"Let me take your hand, and keep it. The world can mend itself until morning.",
		"Come, sit close. I'll keep the cold away, and you keep me. That's fair, isn't it?",
	},
	["rom.welcome.t2.fierce"] = {
		"Enough talk. Come here and kiss me.",
		"I've waited all day for this. Don't make me wait any longer.",
		"Stay tonight. I'm asking plainly, because it's the only way I know how.",
	},
	["rom.welcome.t2.resolute"] = {
		"I meant every word I gave you. Tonight, let me say it simply: stay.",
		"No speeches. Just this: I'm glad it's you here, and I want you to stay.",
		"Hold me, and let tomorrow's duties wait their turn.",
	},
	["rom.welcome.t2.innkeeper"] = {
		"The last guest has gone up. Stay by the fire with me; I've nothing left to pour but time.",
		"Come here. I've waited all evening for this room to empty.",
		"Let me bank the fire first. Then hold me, and let the whole inn sleep.",
	},
	["rom.welcome.t1.glance"] = {
		"Oh. You were looking. I was too, I think, and now we are even.",
		"That look will cost me an hour of wondering. I do not mind the price.",
		"You can keep looking. I will pretend to be busy, and fail at it.",
	},
	["rom.welcome.t1.compliment"] = {
		"Say that again, slowly, so I can believe it this time.",
		"Nobody has said anything so nice to me in a long while. I will keep it somewhere safe.",
		"Flattery! And from you. Well, my ears are burning, so you have won.",
	},
	["rom.welcome.t1.gift"] = {
		"For me? Hm. I will find a place for it where I can see it every day.",
		"It is small, and that is exactly why I like it. Thank you.",
		"You carried this all the way here? Then I had better take good care of it.",
	},
	["rom.welcome.t1.walk"] = {
		"A walk? Yes. Slowly, though; I want it to last.",
		"Let me set this down. There, my hands are free, and so is the next hour.",
		"I was hoping someone would ask that. I did not expect it to be you, and I am glad it is.",
	},
	["rom.welcome.t1.invite"] = {
		"Sit, then. The chair beside mine has been empty long enough.",
		"When the work is done, there is nobody I would rather share the quiet with.",
		"Yes. Pull up a seat and never mind the clutter; it has been waiting for company too.",
	},
	["rom.welcome.t1.beloved"] = {
		"Ah, my heart. Everything else here just became a little less important.",
		"I was thinking of you a moment ago, and here you are, as if I had called.",
		"Come here, love. Let me look at you before the road takes you again.",
	},
	["rom.welcome.t2.beloved"] = {
		"Come to me, love. Tonight there is no one else in the world, and I like it that way.",
		"Close the door. Kiss me once, and then once more, and then let us not count.",
		"Stay beside me tonight. The dark is softer when I can hear you breathe.",
	},
	---------------------------------------------------------------------------
	-- the NPC stays cold
	---------------------------------------------------------------------------
	["rom.cold.t1.n1"] = {
		"That is kind of you. I have a great deal on my mind today, though.",
		"Hm? Oh. Forgive me, I was counting something, and now I have lost the number.",
		"A pleasant thought. Let us leave it there for now, shall we?",
	},
	["rom.cold.t1.n2"] = {
		"That is sweet. I am not sure what to do with it yet, so I will just say thank you.",
		"Perhaps. The day has been long, and my thoughts are elsewhere; forgive me.",
		"I will take that as a courtesy and nothing more, if that sits well with you.",
	},
	["rom.cold.t1.n3"] = {
		"Ah. I am flattered, truly, but there is work waiting, and it does not wait kindly.",
		"Friendship first, I think, and then we shall see what the seasons make of it.",
		"A nice thought. My heart is a slow creature, though; it does not run at the first call.",
	},
	["rom.cold.t2.n1"] = {
		"Not tonight, my heart. I am so weary the walls are swaying. Sit with me a little instead.",
		"The thought is lovely. But my head is full of the day; let me just lean on you and breathe.",
		"Later, perhaps, when this ache in my shoulders lets go. For now, your company is plenty.",
	},
	["rom.cold.t2.n2"] = {
		"I want to, and I cannot quite get there tonight. Hold my hand; that much I can give.",
		"You make it hard to say no. Not no, then; only not yet, and not tonight.",
		"My eyes are closing already. Tell me something gentle instead, and keep talking until I drift.",
	},
	["rom.cold.t1.cheerful"] = {
		"Ha! That's kind, truly. Now, what else can I do for you?",
		"Oh, you'll make me laugh at the wrong moment. Let's keep to the matter at hand, shall we?",
		"That's a nice thought to tuck away. Not today, though; today is a busy one!",
	},
	["rom.cold.t1.gruff"] = {
		"Hmph. Not the time for that, and not the place either.",
		"Mm. Noted. Anything else, or are we done here?",
		"Save the sweet talk. I've got enough on my plate as it is.",
	},
	["rom.cold.t1.stoic"] = {
		"I see. Let us leave it there, for now.",
		"A kind thought. My mind is on other things today.",
		"I would rather not answer that just now.",
	},
	["rom.cold.t1.melancholic"] = {
		"That's kind. I'm afraid my heart is too heavy today to answer it properly.",
		"Some days I can't take a kindness without it hurting a little. This is one of them.",
		"Ah... perhaps on a brighter day. This one feels gray to me.",
	},
	["rom.cold.t1.merciful"] = {
		"That's sweetly meant, and I thank you for it. Still, I'd rather we simply talk for now.",
		"I won't make light of it. But my thoughts are elsewhere today; forgive me.",
		"You're kind to offer. Let me hold it gently, and set it aside for a while.",
	},
	["rom.cold.t1.fierce"] = {
		"Not now. I'm not in the mood, and I won't pretend otherwise.",
		"Bold of you. Not today, though.",
		"It takes more than that to turn my head. Anything else?",
	},
	["rom.cold.t1.resolute"] = {
		"I'll be plain: this isn't the moment for it. Let's keep to what's in front of us.",
		"I appreciate it. But I have duties on my mind today, and they come first.",
		"No harm in it. I just don't have an answer for you yet.",
	},
	["rom.cold.t1.innkeeper"] = {
		"Kind of you. But the kitchen is calling, and the kitchen never waits.",
		"By the third mug, half the room tells me that. Still, thank you for the thought.",
		"I've a dozen tables to clear. Ask me for something warm to drink instead.",
	},
	["rom.cold.t1.guard"] = {
		"Not while I'm on watch. Move along, and mind the road.",
		"Flattering. But I'm paid to keep my eyes on the road, not on you.",
		"Hm. Noted. Now, unless there's trouble to report, I'm working.",
	},
	["rom.cold.t1.merchant"] = {
		"Sweet words won't sweep this counter clean, I'm afraid. Was there something you needed?",
		"You'd be surprised how many try that at this counter. What can I wrap for you?",
		"That's kind. The ledger, sadly, has no use for kindness. Let me finish this column.",
	},
	["rom.cold.t1.trainer"] = {
		"Save that charm for your footwork. It needs it more than I do.",
		"Pretty words. I'd rather see that same flair in your practice.",
		"Focus. Lessons first, and the lesson right now is not me.",
	},
	["rom.cold.t1.questgiver"] = {
		"Hm? Forgive me, my head is full of reports. What were you saying?",
		"That's kind, truly. But there's too much on this table for anything else today.",
		"I've no room in my thoughts for that, not with all this waiting on me. Don't take it ill.",
	},
	["rom.cold.t2.innkeeper"] = {
		"Not tonight. I'm worn to the bone, and I want you rested more than anything.",
		"Hush, there are still two at the corner table. Sit with me a little, and let that be all for now.",
		"Kiss my hand and let that be enough tonight. The stairs are long, and my day was longer.",
	},
	["rom.cold.t1.beloved"] = {
		"Forgive me, love, my head is somewhere else today. Stay near; I will come back to myself.",
		"I am glad you are here, truly. I am just so tired that even smiling feels like lifting stones.",
		"Not now, my heart. The day has been a crowd of small troubles. Talk to me of something plain.",
	},
	["rom.cold.t1.other"] = {
		"I hear someone already holds your heart. Then let us keep to kind words, and keep them light.",
		"Kind words. Save the warmest for the one who waits for you, though; I think there is one.",
		"Ha. You have someone, unless rumor lies. Let us keep this friendly, the two of us.",
	},
	---------------------------------------------------------------------------
	-- the NPC refuses, kindly
	---------------------------------------------------------------------------
	["rom.refuse.t1.n1"] = {
		"No, I am sorry. My heart is not there, and it would not be fair to pretend. Your friendship I would gladly keep.",
		"That is kind, but my answer is no. Otherwise nothing changes between us; come by whenever you like.",
		"I must say no, and say it plainly so there is no doubt. It is no fault of yours, and I would still call you a friend.",
	},
	["rom.refuse.t1.n2"] = {
		"Ah. No, not that. But sit, if you like, and we will talk of other things as friends do.",
		"I am not looking for anyone, and I would rather tell you now than let you hope. Friendship, though, gladly.",
		"That kind of door is closed for me. The other one, the friendly one, stays open.",
	},
	["rom.refuse.t1.n3"] = {
		"Thank you, truly. But no. I hope we can still share a smile across a crowded room.",
		"My answer is no, and it is a gentle no. Please do not carry it as a weight.",
		"That warms me, and still I must decline. A friend is worth more to me than a tangle.",
	},
	["rom.refuse.t2.n1"] = {
		"No, love, not tonight. It is not you; it is something in me that needs quiet. Stay close, but only close.",
		"I would rather not, and I would rather say so than pretend. Nothing between us is lessened by it.",
		"Not this, not tonight. Hold me as a friend would, and I will be glad of it.",
	},
	["rom.refuse.t2.n2"] = {
		"My heart says yes and the rest of me says no, and tonight I will listen to the rest. Forgive me.",
		"No. Not because of anything you did. Ask me for a story instead; that I can give.",
		"Let us not, tonight. Pull a chair to the fire instead, and let us watch it burn down together.",
	},
	["rom.refuse.t1.cheerful"] = {
		"Oh, you dear thing. No, not that way. But I'd hate to lose a friend who makes me smile, so don't you go anywhere.",
		"Ha, no, no. My heart doesn't lean that way, I'm afraid. Friends, though? Friends I'd gladly be.",
		"I'll laugh with you any day you like, but not like that. As a friend, though, my door's wide open.",
	},
	["rom.refuse.t1.gruff"] = {
		"No. Not like that. ...You're still welcome here, mind. Just not like that.",
		"Bah. Leave it. Courting's not for me. Doesn't mean I want you gone.",
		"No. Plain as I can say it. Still, a friend's a friend, and you're one if you want to be.",
	},
	["rom.refuse.t1.stoic"] = {
		"No. I hold you in good regard, and that will not change.",
		"I cannot return that. Your friendship, I would keep.",
		"My answer is no. It is not a door closing on everything.",
	},
	["rom.refuse.t1.melancholic"] = {
		"I'm sorry. There's no room in me for that, not anymore. But please, don't stop talking to me.",
		"You deserve a heart less tired than mine. Mine can offer friendship, if you'll have it.",
		"It would be unkind to say yes when I can't mean it. A friendship, though? I'd like that more than I can say.",
	},
	["rom.refuse.t1.merciful"] = {
		"I'm touched, truly. But I can't answer it the way it asks. Your company, as a friend, will always be dear to me.",
		"Let me say it gently, because gentleness is owed: no. And let me also say you are always welcome with me.",
		"My heart is turned to other things. That takes nothing from you, and nothing from the friendship we share.",
	},
	["rom.refuse.t1.fierce"] = {
		"No. Straight, so there's no doubt. But I'd still stand beside you in a fight, any day.",
		"Not a chance, not that way. As a friend, though, you've got me, and I don't give that lightly.",
		"No. I like you too well as a friend to lie to you about it.",
	},
	["rom.refuse.t1.resolute"] = {
		"I'll be honest, because honesty is owed: no. I value you as a friend, and that stands.",
		"No. I've thought about it, and the answer's no. It changes nothing else between us.",
		"I won't give you a maybe when I mean no. But my respect for you is whole.",
	},
	["rom.refuse.t1.innkeeper"] = {
		"I'll say it kindly and plainly: no. You're still welcome at my tables, as a friend.",
		"That's not something I can give you. A friendly ear across the counter, that I can.",
		"Let's leave that where it lies. I like having you here, and I'd like things to stay simple between us.",
	},
	["rom.refuse.t1.guard"] = {
		"No. It's not unkindly meant, but it's no. You'll still get a friendly nod from this post.",
		"I'd rather keep things as they are: you on the road, me on the wall, and a friendship in between.",
		"My answer is no, and I say it straight because you deserve straight. Otherwise, nothing changes between us.",
	},
	["rom.refuse.t1.merchant"] = {
		"That's not something I trade in, I'm afraid. But you're always welcome at this counter, as a friend.",
		"No, gently and truly no. I'd hate to lose a good friendship over a misunderstanding.",
		"Honesty is good business, so here it is: no. And I hope you'll still stop by to talk.",
	},
	["rom.refuse.t1.trainer"] = {
		"No. I'd rather teach you and be your friend, and leave it at that.",
		"That's a line I don't cross with those I train. Don't let it sour the lessons.",
		"Plainly, then: no. My friendship isn't going anywhere, and neither are the lessons.",
	},
	["rom.refuse.t1.questgiver"] = {
		"No, and I'd rather say it now than let it hang between us. I value you as a friend, truly.",
		"My heart isn't free for that, not with everything I carry. But I'm glad of your company all the same.",
		"I'm sorry, no. Don't let it keep you from my table; a friend is worth more than all these papers.",
	},
	["rom.refuse.t1.other"] = {
		"No. There is someone for you already, and I will not be the shadow over that. As a friend, though, I am here.",
		"I cannot say yes to that, not while another waits for you. Anything else, ask freely.",
		"Your heart is spoken for, I hear, and I will not borrow it. My friendship you may keep.",
	},
	---------------------------------------------------------------------------
	-- the beloved, jealous, opens the dialogue
	---------------------------------------------------------------------------
	["rom.jealous.n1"] = {
		"Word reached me that your smiles have been traveling. I won't ask where; it stings enough as it is.",
		"Someone told me you were charming another. I'm trying to laugh it off. Give me a moment.",
		"I heard a thing today I didn't care for. I'll be a little cool with you, and then it will pass.",
	},
	["rom.jealous.n2"] = {
		"So. Gossip found its way to me before you did.",
		"I've been told someone else had your attention. I'd rather have heard nothing at all.",
		"Don't mind me if I'm quiet. Something reached my ears, and it hasn't left them yet.",
	},
	["rom.jealous.n3"] = {
		"They say you were sweet with someone else. Perhaps they say wrong. It hurt to hear, all the same.",
		"I'm not angry. I've only a small bruise, and bruises fade.",
		"Hm. Forgive me if my welcome is a shade cooler today. Word travels, and it found me.",
	},
	["rom.jealous.n4"] = {
		"I know it's only talk. Still, talk can sting, and this did.",
		"A rumor came by today with your name in it. I sent it away, but it left something behind.",
		"Hello. No, nothing's wrong. I just heard something, that's all, and I'm still turning it over.",
	},
	["rom.jealous.cheerful"] = {
		"Ha! I hear that smile of yours has been going around. Keep a little of it for me, will you?",
		"Well! A little bird sang me a story about you today. I'm laughing, mostly. Mostly.",
		"I'm still glad to see you. Just a touch less glad than yesterday, thanks to the gossip.",
	},
	["rom.jealous.gruff"] = {
		"Heard talk. Didn't like it. That's all I'll say.",
		"Hmph. Folk talk, and today they talked about you. Let me grumble a while.",
		"I'm not one for scenes. But I heard what I heard, and it sits badly.",
	},
	["rom.jealous.stoic"] = {
		"I was told of a flirtation. I will not pretend it did not reach me.",
		"It is nothing I cannot bear. But it reached me, and you should know that it did.",
		"Some talk came my way. I am calm. It also hurts, and both are true.",
	},
	["rom.jealous.melancholic"] = {
		"I heard something today, and the evening has been grayer for it.",
		"Perhaps I hold things too tightly. Still, the rumor found me, and it weighs on me.",
		"Ah, there you are. I was sitting with a sad little piece of gossip. It will pass, I think.",
	},
	["rom.jealous.merciful"] = {
		"Word reached me of a flirtation elsewhere. I won't hold it against you, but I won't pretend it didn't sting.",
		"I forgive easily. I only wish there were less to forgive today.",
		"I heard, and I am choosing to be kind about it. Kind, but a little sore.",
	},
	["rom.jealous.fierce"] = {
		"I heard about it. I'm not pleased, and I won't pretend to be.",
		"Talk reached me, and my temper rose with it. It's cooling. Slowly.",
		"Let me speak first. I'm cross, and I'd rather be cross honestly than smile and lie.",
	},
	["rom.jealous.resolute"] = {
		"I heard what was said. It changes nothing in me, but it did hurt, and I'll say so.",
		"A rumor came to me today. I've decided it won't shake me, though it tried.",
		"I'm not one to sulk. You should still know that what I heard did not sit well.",
	},
	---------------------------------------------------------------------------
	-- the scenes of the romance popup (the narrator)
	---------------------------------------------------------------------------
	["rom.scene.declaration.open.n1"] = {
		"The others have gone their ways, and for once there is no work between you and {other}. The quiet stretches, comfortable and a little dangerous. If there is something to say, there will not be a better moment.",
		"{other} passes you a cup, and your fingers meet around it; neither lets go at once. A laugh follows, a little breathless, and does not quite end. Whatever comes next is yours to say, or to keep.",
		"{other} has been humming under the breath and stops, mid-note, on finding you there. The smile that follows is shy and wide at once. The air feels thin with things unspoken.",
	},
	["rom.scene.declaration.open.n2"] = {
		"\"No, you first,\" {other} says, after starting a sentence twice and abandoning it both times. The color in the cheeks gives away more than the words did. The floor, it seems, is yours.",
		"Your eyes meet over some small, ordinary task, and this time {other} does not make a joke of it. A faint flush, a breath held. It would be the easiest thing in the world to speak now, and the hardest.",
		"\"You look as if you are about to say something,\" {other} says softly, setting aside whatever was in hand. \"Are you?\" The question waits, patient, with no hurry in it.",
	},
	["rom.scene.declaration.welcome.n1"] = {
		"You say it plainly, without the fine words you might have chosen. For a moment {other} says nothing at all; then a smile comes, slow and certain, and a hand closes over yours. \"I hoped,\" comes the answer. \"I did not dare hope aloud.\"",
		"The words come out unsteady, and that is how {other} knows they are true. A soft laugh, half relief, and then the answer, given without a word: a step closer, a hand taken and held. The world does not change around you, but something between you settles into place.",
		"You have hardly finished before {other} is shaking their head, smiling. \"You took the words I was saving,\" comes the reply. \"Now I shall have to find others.\" Fingers find yours and stay there a while.",
	},
	["rom.scene.declaration.welcome.n2"] = {
		"You speak, and {other} listens all the way to the end, very still. Then, quietly, the answer: \"Yes. I have felt it too.\" Somewhere nearby a door bangs and a voice calls out, and neither of you hears a word of it.",
		"It is not graceful, what you say, but it is honest. {other} reaches up and, very lightly, touches your cheek with the back of a hand, as if to make sure the moment is real. \"Then we have both lost our heads,\" comes the murmur. \"I would not have it otherwise.\"",
		"The words are out before any second thought can stop them. {other} blushes to the ears and laughs, a little helplessly, then answers in so few words that it is almost a whisper: \"I hoped you would be the one to say it.\"",
	},
	["rom.scene.declaration.cold.n1"] = {
		"{other} listens, and the smile that comes is kind but careful. \"I am glad you told me,\" comes the answer. \"Give me a little time. I want to be sure before I say anything I cannot take back.\"",
		"For a long breath {other} looks down, turning the words over. \"Not no,\" comes the reply at last, gently. \"Only not yet. Ask me again, further down the road.\"",
		"There is warmth in {other}'s eyes, and something else too, something unready. A hand gives yours a brief, honest squeeze. \"You honor me. But my heart is slow, and I would rather give you the truth late than a guess now.\"",
	},
	["rom.scene.declaration.cold.n2"] = {
		"{other} does not answer at once, and when it comes the voice is soft. \"Something in me wants to say yes, and something else is not ready to. Will you let me find out which is louder?\" It is asked without any hurry, and without closing a door.",
		"A flush rises in {other}'s face, and a hand goes up to hide it, too late. \"You cannot say such things and expect me to think straight,\" comes a shaky laugh. \"Let me sleep on it. Let me be certain. I owe you that much.\"",
		"{other} takes a step back, not away from you, only toward breath. \"I like you more than I meant to,\" comes the confession. \"That frightens me a little. Will you be patient with me?\"",
	},
	["rom.scene.declaration.refuse.n1"] = {
		"{other} hears you out, and the silence afterward is gentle rather than cold. \"I cannot give you what you are asking for. Not in that way. But your friendship is dear to me, and that has not changed.\"",
		"There is real regret in {other}'s face, and no pity, which is a kindness of its own. \"My heart is not free to answer as you would wish,\" comes the soft reply. \"But do not let this cost us what we have. That part I would never want to lose.\"",
		"{other} takes your hand and squeezes it once, firmly, the way one does with a trusted companion of the road. \"No,\" comes the word, softly. \"But thank you for the courage of it. Nothing between us is spoiled.\"",
	},
	["rom.scene.declaration.refuse.n2"] = {
		"\"Ah,\" says {other}, very softly, and for a moment there is nothing else. Then a sad, kind smile. \"I am sorry. It is not in my heart, though for your sake I wish it were. The friendship, though, is yours for as long as you want it.\"",
		"{other} takes a slow breath and meets your eyes, which is braver than looking away. \"You are dear to me. But not like that, and it would be unkind to pretend.\" The words land gently, and the warmth in them stays.",
		"There is no laughter and no hurry to be gone. {other} simply shakes their head, gently, and says that some roads run side by side without ever meeting. \"Walk beside me anyway. I would like that.\"",
	},
	["rom.scene.vow.open.t1.n1"] = {
		"The noise of the world has fallen away, and {other} sits beside you, shoulder to shoulder. Nothing needs saying; and yet there is something that could be said now, once, and never unsaid.",
		"{other} turns your hand over and traces the lines of the palm, idly, as if reading a road. \"Some promises need no priest,\" comes the murmur. \"Only two people who mean them.\" The pause afterward is an open door.",
		"It is one of those moments that seem to wait to be noticed. {other} is looking at you with nothing guarded left in the look, and the air holds still, as if listening for a promise.",
	},
	["rom.scene.vow.welcome.t1.n1"] = {
		"You say the words quietly, and {other} says them back, a little unsteadily, holding both your hands. There is no priest, no witness, no ring; only the promise, and the two who made it. It weighs nothing, and it settles all the same.",
		"There are no grand words, in the end. {other} rests a forehead against yours, and the promise passes between you in a whisper, each saying it once. Whatever the road brings, this much is decided.",
		"\"Then it is said,\" {other} murmurs, smiling through something bright in the eyes. A thumb brushes your knuckles, sealing it the way some people seal a bargain, only gentler. No one else will ever know the words unless you tell them, and that, somehow, makes them stronger.",
	},
	["rom.scene.vow.open.t1.n2"] = {
		"\"Tell me something true,\" says {other}, and it is not a game this time. The words hang between you, simple and enormous. There is a promise you could make now, with no one to hear it but the two of you.",
		"Your fingers are laced with {other}'s, and neither hand seems in any hurry to let go. It would be easy to say nothing and let the moment pass. It would be easy, too, to bind it.",
		"{other} leans a head against your shoulder and lets out a long, contented breath. \"If I could keep one hour,\" comes the whisper, \"it would be this one.\" Perhaps it can be kept, after a fashion: with a word, freely given.",
	},
	["rom.scene.vow.welcome.t1.n2"] = {
		"You make the vow in a handful of plain words, and {other} answers it with the same, no more and no less. Then a long silence keeps you company, because nothing else needs saying.",
		"{other} listens to the whole of it with shining eyes, then laughs, very softly, and gives the same words back, one by one, as if afraid to lose a single one. The promise is small enough to carry anywhere. It will go wherever you go.",
		"It is done between one breath and the next: a promise offered, a promise returned, two hands holding on. No one watches, no one blesses it, and it does not need them. {other} smiles as if the world has just become a simpler place.",
	},
	["rom.scene.vow.open.t2"] = {
		"The common room has emptied and the last candle burns between you and {other}. A hand rests over yours and stays, warm, unhurried. \"Say it, if you mean to,\" comes the whisper. \"I am listening with all of me.\"",
		"Night has settled over the inn, and the room is quiet but for the two of you. {other} sits close, so close that a lowered voice is enough. There is a promise waiting in the dark, and only you can decide whether to make it tonight.",
	},
	["rom.scene.vow.welcome.t2"] = {
		"You speak the vow into the hush between you, and {other} answers it with a kiss, slow and sure, that says the words again without them. Arms close around you and hold, as if to keep the promise from slipping away. The candle burns low.",
		"The promise is made in whispers, foreheads touching, hands joined. When it is said, {other} draws you close and simply holds you, and for a long while the only sound is two hearts finding the same pace. Outside, the night goes on without you.",
	},
	["rom.scene.date.open.t1.n1"] = {
		"The day's work is done, and {other} lingers instead of leaving, glancing at you sidelong. \"The evening is free, and so am I,\" comes the remark, too casual to be casual. \"How would you like to spend it?\"",
		"{other} appears at your side with the air of someone who has been waiting for the right moment and decided it is now. \"Give me this evening,\" comes the request, half shy, half bold. \"You choose how.\"",
		"The hour is growing late, and {other} nudges your arm. \"Come, let us steal a few hours from the world, just this once. Name the way, and I will follow.\"",
	},
	["rom.scene.date.open.t1.n2"] = {
		"\"I have been thinking about you all day,\" {other} admits, with a laugh that does not quite hide the blush. \"Spend the evening with me? However you like. I only want the company.\"",
		"There is a moment, between one task and the next, when {other} catches your eye and holds it. Then, with a small shrug and a smile that is anything but small: \"Well? The evening is waiting. What shall we do with it?\"",
		"{other} sets down whatever was in hand with great finality, as if closing a book. \"Enough of the world for today. Stay a while with me, and let us make something of the hours left.\"",
	},
	["rom.scene.date.open.t2"] = {
		"It is late, and the inn has gone quiet around you. {other} takes your hand across the table and does not let it go, a thumb tracing slow circles. \"The night is ours,\" comes the murmur. \"Tell me what you would like.\"",
		"The fire has burned down to embers and the last guests have gone up. {other} leans in, voice lowered to something meant for you alone. \"Whatever you choose, I do not want this night to end just yet.\"",
	},
	["rom.scene.date.welcome.t1"] = {
		"The hours go by without asking leave. {other} laughs often, talks of small things and large ones, and somewhere along the way stops pretending not to watch you. When the evening ends, it ends too soon.",
		"It is a simple evening, and that is the best of it. A shared joke, a long quiet, a hand found and kept. At the end {other} says goodnight as if the word were a gift.",
		"Nothing remarkable happens, and all of it is worth keeping: the way {other} tilts their head to listen, a laugh caught halfway, the small warmth of a shoulder against yours. The world can wait.",
	},
	["rom.scene.date.walk.welcome"] = {
		"You walk without any aim, and {other} falls into step beside you as if the path were made for two. The talk wanders as freely as the road. At some point your hands brush, and the next time they do not part.",
		"The road unrolls slowly ahead, and {other} names every flower and stone along it, half of them wrongly, laughing at each mistake. You turn back only when the path runs out of excuses.",
		"It is a long, slow walk with no destination worth mentioning. Once {other} stops to show you something small and lovely by the wayside, and stands close while you look. On the way back no one is in any hurry.",
	},
	["rom.scene.date.supper.welcome"] = {
		"A quiet table, plain food, a cup shared between you when the second one goes missing. {other} talks with both hands and hardly touches the plate, since watching you is more interesting. The supper goes cold, and nobody minds.",
		"Supper is simple and the table is small, and every reach for the salt becomes an excuse for fingers to meet. {other} passes you the best piece of bread without a word, and smiles when you notice. It tastes better than it has any right to.",
		"Over the meal, {other} tells a story, badly, and laughs before the end, and the laughter is worth more than the story. Candlelight finds the smile and keeps it. When the plates are empty, no one moves to rise.",
	},
	["rom.scene.date.stargaze.welcome"] = {
		"You lie back in the grass and the whole sky opens above you. {other} points out the stars one by one, inventing names for those without any, and your laughter carries into the dark. A head comes to rest on your shoulder, and stays.",
		"The night is wide and the stars are many. {other} sits close and goes quiet, looking up, and after a while reaches over to take your hand without looking down. A falling star crosses the dark; no one says a word, and no word is needed.",
		"\"That one,\" says {other}, pointing at a small, stubborn star low over the horizon, \"is yours. I have decided.\" It is a foolish gift and a perfect one. You watch it together until sitting closer becomes the only sensible thing to do.",
	},
	["rom.scene.date.night.welcome"] = {
		"The room is small and the candle low, and {other} draws you close as the door shuts on the rest of the world. The first kiss is slow and careful; the next one lingers. A whisper against your cheek: \"Stay.\" The flame gutters out, and the night keeps its own counsel.",
		"There is no hurry, and that is the sweetest part. {other} takes your hands and kisses them one after the other, then your brow, and at last your mouth, as if each were a promise kept. Arms around you, a voice lowered almost to nothing. Then the dark, and the rest is yours alone.",
	},
	["rom.scene.date.cold.t1"] = {
		"{other} comes, and smiles, and says the right things, but the eyes keep drifting somewhere far off. The evening never quite catches. When it ends there is an apology in the goodbye, and a weariness that has nothing to do with you.",
		"It is a pleasant evening, and only pleasant. The talk runs out early and the silences are the wrong kind. {other} thanks you warmly at the end, and means it, but whatever spark there was stays hidden tonight.",
		"Halfway through, {other} sighs and admits to a long day and a heavy head. \"Forgive me. I am poor company tonight.\" You part early, kindly, with nothing broken and nothing much gained.",
	},
	["rom.scene.date.walk.cold"] = {
		"You walk, and {other} walks beside you, but a step apart, answering in a few words and watching the road instead of you. Somewhere along the way the talk dies out on its own. The walk back is shorter than the walk out.",
		"The path is lovely and {other} hardly sees it, plainly elsewhere, on some worry left unspoken. Twice you start a story and twice it trails away. At the parting there is a rueful smile and a quiet \"another time, perhaps.\"",
	},
	["rom.scene.date.supper.cold"] = {
		"The food is good and {other} barely touches it, turning the cup round and round and answering a beat too late. There is no unkindness in it, only absence. You finish the meal more or less alone, in polite company.",
		"Supper is pleasant enough, and that is all it is. {other} talks of the day's small troubles, then of nothing, then not at all, and the candle seems to burn faster than the conversation. At the end you part with a warm word and a cool table.",
	},
	["rom.scene.date.stargaze.cold"] = {
		"The stars are out in their thousands, and {other} glances up at them once, politely, and then mostly at the ground. A yawn is hidden, not quite in time. You linger a little while for the sky's sake, and then walk back.",
		"It is a fine night for it, and still the magic does not come. {other} names one star, forgets the next, and falls into a quiet that is more tired than tender. The sky is beautiful; between the two of you, tonight, there is only nearness.",
	},
	["rom.scene.date.night.cold"] = {
		"You stay, and {other} is glad of it, but the day has been long and the welcome is a tired one. An embrace, a murmured goodnight, and before long, slow and even breathing. You keep watch a while, listening to it, and the night passes quietly, gentle and a little flat.",
		"The room is warm and the hour is late, and yet something sits between you that the night cannot quite push aside. {other} holds your hand and talks of nothing much; the kiss at the end is soft and brief. It is a quiet night, kind enough, and no more than that.",
	},
	["rom.scene.date.refuse.t1"] = {
		"{other} hesitates, then shakes their head with a regretful smile. \"Not tonight. I would be poor company, and you deserve better than half of me.\" A hand rests on your arm a moment, warm and sorry, before letting go.",
		"\"I wish I could,\" {other} says, and it sounds true. \"But this evening is already spoken for, by weariness if nothing else.\" The refusal is gentle, and it closes nothing but this one evening.",
		"There is a long pause, and then {other} looks away, apologetic. \"Forgive me. Tonight I need to be alone with my own thoughts. It is nothing to do with you.\" The words are kind, and the door they leave stays open.",
	},
	["rom.scene.date.walk.refuse"] = {
		"{other} glances at the road and shakes their head, laughing ruefully. \"Not a walk, not tonight. It feels as if I have done nothing but walk all day.\" A brief squeeze of your hand softens it.",
		"\"Not tonight,\" says {other} gently. \"I would only drag behind, and you should have better company on the road than that.\" It is a refusal, but such a kind one that it hardly stings.",
	},
	["rom.scene.date.supper.refuse"] = {
		"{other} glances at the crowded room and makes a small, apologetic face. \"Not supper, not tonight. I could not eat a bite, and I would only sit there pushing food about.\" The smile that follows asks you not to take it to heart.",
		"\"Another time I would love to,\" {other} says, and there is real regret in it. \"Tonight my head is full and my appetite is gone. Forgive me?\" There is nothing to forgive, and the look that passes between you says so.",
	},
	["rom.scene.date.stargaze.refuse"] = {
		"{other} looks up at the sky, then back at you, and shakes their head with a soft laugh. \"The stars will keep. Tonight sleep has already half claimed me, and I would only nod off on your shoulder.\" It is kindly said, and the warmth stays even as the evening ends.",
		"\"Not tonight,\" says {other}, with an apologetic glance at the dark. \"I am too weary to look up, and the stars deserve better than a yawn.\" A rueful smile, a brief touch of fingers, and the moment passes without a sting.",
	},
	["rom.scene.date.night.refuse"] = {
		"{other} takes your hand and holds it a long moment before answering. \"Not tonight. I want the moment to be right, and tonight it is not.\" A kiss on your knuckles, gentle and unhurried, says the rest: nothing between you is lost.",
		"\"Stay a while, but not the night,\" says {other} softly, forehead resting against yours. \"I am tired to the bone, and you deserve more than someone already asleep.\" An embrace at the door, long and warm, and then a quiet goodnight that carries no hurt at all.",
	},
	---------------------------------------------------------------------------
	-- a private thought after a flirt
	---------------------------------------------------------------------------
	["rom.inner.welcome.t1.n1"] = {
		"A smile, given back without a moment's thought. I will be turning that over for the rest of the day.",
		"Well. That went better than my nerve had any right to expect.",
		"{other} did not look away. Neither did I, and now my ears are burning.",
	},
	["rom.inner.welcome.t1.n2"] = {
		"Something small just happened, and it does not feel small at all.",
		"I ought to carry on as if nothing changed. My step has gone light all on its own.",
		"There was warmth in that answer. I will not ask the road for more today.",
	},
	["rom.inner.welcome.t1.n3"] = {
		"Careful, heart. One kind word is a door left ajar, not a gate flung open.",
		"I keep catching myself smiling at nothing. It is not nothing, of course.",
		"{other} laughed, a real laugh. I would very much like to hear it again.",
	},
	["rom.inner.cold.t1.n1"] = {
		"Polite, pleasant, and closed as a shuttered window. Fair enough.",
		"Not a no. Not anything, really. I will take my courage back and keep it for another day.",
		"{other} smiled the way one smiles at the weather. I have been answered, and kindly.",
	},
	["rom.inner.cold.t1.n2"] = {
		"That answer was about as warm as yesterday's hearth. I will survive it.",
		"Perhaps I chose the wrong moment. Perhaps there is no right one. Either way, no harm done.",
		"A courteous nod and a glance elsewhere. I know a gentle change of subject when I meet one.",
	},
	["rom.inner.cold.t1.n3"] = {
		"My cheeks are warmer than the answer was. Time to find something very interesting to look at.",
		"I aimed for the heart and struck good manners instead. Lovely manners, at least.",
		"Nothing ventured, nothing lost, and here I stand having lost nothing. Mostly.",
	},
	["rom.inner.refuse.t1.n1"] = {
		"A kind no is still a no. I will hold on to the kind part.",
		"{other} said it gently and meant it. I can respect that, once my face cools down.",
		"So that door is closed. The one beside it, friendship, still seems to be open.",
	},
	["rom.inner.refuse.t1.n2"] = {
		"Clear, and not unkind. Better than a maybe to wait on for weeks.",
		"There goes a little hope, wandering off on its own. I will let it go without a fuss.",
		"Next time I will read the signs before I speak. There were signs; I simply wanted to miss them.",
	},
	["rom.inner.refuse.t1.n3"] = {
		"It stings, a little. Stings pass; brambles have done worse to me.",
		"Not everyone on this road is meant for me. That is no one's fault.",
		"When our paths cross again I will smile, and mean it. A refusal is not a quarrel.",
	},
	["rom.inner.welcome.t2"] = {
		"The fire is low and {other} is close, and for once I have nowhere else to be.",
		"\"Stay,\" so softly I almost missed it. I would not have missed it for the world.",
		"Whatever the road asks of me tomorrow, tonight it can ask someone else.",
	},
	["rom.inner.cold.t2"] = {
		"Tired, I think, rather than unwilling. A hand on the shoulder and a quiet night will do.",
		"Not tonight, then. The night is long and kind enough without asking more of it.",
		"{other} carries a weary day behind the eyes. I can keep the warmth for another evening.",
	},
	["rom.inner.welcome.glance"] = {
		"One look, held a heartbeat too long on purpose, and returned in kind. Who knew eyes could say so much?",
		"I meant to glance and look away. Somehow neither of us managed it.",
		"{other} caught me looking and smiled. So much for being discreet.",
	},
	["rom.inner.welcome.compliment"] = {
		"I said it plainly and it landed softly. Not every true thing is received so well.",
		"A compliment, and a blush to answer it. I suspect mine was the brighter.",
		"{other} laughed it off, then thanked me anyway, more quietly. That second part is the one I will keep.",
	},
	["rom.inner.welcome.gift"] = {
		"Such a small thing, picked up by the road, and held as though it weighed more. Perhaps it does.",
		"I nearly kept it in my pocket out of shyness. I am glad I did not.",
		"{other} turned the little gift over twice before tucking it away with care. That will warm me for a day or two.",
	},
	["rom.inner.welcome.walk"] = {
		"Side by side, not saying much. The road has never been this short.",
		"Our steps fell into the same pace without trying. I noticed; I think {other} did too.",
		"A walk is a modest thing to ask. A yes to it can be a great one.",
	},
	["rom.inner.welcome.invite"] = {
		"A place at the same table, once the work is done. I will try not to count the hours.",
		"Yes, without a pause. I had a whole speech ready in case of a no; I may save it for something else.",
		"I asked only for some company and a little talk. The yes came with a smile besides.",
	},
	["rom.inner.welcome.other"] = {
		"That smile felt good, and then it felt borrowed. Someone waits for me who deserves better than this.",
		"Harmless, I tell myself. My conscience does not look convinced.",
		"Nothing but kindness from {other}, and I enjoyed it, and still another face keeps coming to mind. This is no game for me.",
	},
	["rom.inner.cold.other"] = {
		"Cool as well water, that answer, and just as well. My heart already has somewhere to be.",
		"I am almost grateful for the chill. It reminded me whose smile I would rather be chasing.",
		"Lesson taken. My smiles have a home already; I should stop lending them out.",
	},
	["rom.inner.welcome.beloved"] = {
		"Even now a look from me can make {other} blush. Even now I blush right back.",
		"There is no one I would rather say sweet, foolish things to. Luckily, here they are always welcome.",
		"Home is not a place, I think. It is this: a small word, answered with a smile I know by heart.",
	},
	["rom.inner.refuse.courtship"] = {
		"I thought this was going somewhere. Perhaps it still is, only slower than I hoped.",
		"From a stranger a no would sting. From {other}, it aches. I will give it time, and some room.",
		"Courting is not owning. I knew that; now I have to live it.",
	},
}, "base_romance")
