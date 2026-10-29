-- English texts of the ambient dialogues (step S8). The rules are in Data/RegistryDialogues.lua, the structure of
-- nodes and answers in Data/Dialogues.lua. First-person lines of the NPC in an everyday register: the window labels
-- them "addon ambient dialogue" and they never go to chat. Each tag has its own character (neutral, of one who knows the
-- player or not, gruff, jovial, warm, formal, terse, of a specific NPC); the neutral ones hold for every temperament.
-- No prices, quests, news from Azeroth's chronicles or promises the game does not keep.
local ADDON, NS = ...

NS:AddTexts("enUS", {
	---------------------------------------------------------------------------
	-- INNKEEPER
	---------------------------------------------------------------------------
	["npcd.innkeeper.open.n1"] = {
		"Welcome, traveler. There's room by the fire, if the road has worn you down.",
		"Come in. The hearth is lit and nobody will ask where you're from.",
	},
	["npcd.innkeeper.open.n2"] = {
		"Make yourself at home. A table, a bed, or just a little quiet?",
		"There you are. The wind stays out and the talk comes in. What do you need?",
	},
	["npcd.innkeeper.open.n3"] = {
		"Another day on the road, by the look of those boots. Sit down, catch your breath.",
		"You've come to the right place to stop walking. For a while, at least.",
	},
	["npcd.innkeeper.open.known1"] = {
		"You again! The table by the hearth is just as you left it.",
		"I see you here often. A face that comes back does one good.",
		"Well met again. Your usual corner is free, if you like.",
	},
	["npcd.innkeeper.open.stranger1"] = {
		"I don't know you yet. But the fire warms everyone alike.",
		"New around here? Then let's get acquainted over a mug.",
	},
	["npcd.innkeeper.open.again1"] = {
		"Back for news? I've got some fresh news, or nearly.",
		"Last time I told you what was going round on the road. Today it's something else.",
	},
	["npcd.innkeeper.open.gruff1"] = {
		"Room, table or nothing. I'm not standing here guessing.",
		"The hearth warms, the mug costs. Sit or step aside.",
	},
	["npcd.innkeeper.open.gruff2"] = {
		"Wipe your boots. Then talk to me.",
		"If you want comfort, wrong door. If you want a bench, you've found one.",
	},
	["npcd.innkeeper.open.jovial1"] = {
		"Ah, a customer! I mean, a guest! I mean, a friend who hasn't paid yet!",
		"In, in! The stories are free and the soup nearly is.",
	},
	["npcd.innkeeper.open.jovial2"] = {
		"What a day for sitting down! Any day is, in here.",
		"You look like someone with a story to tell. I've the tankard, you've the story: deal.",
	},
	["npcd.innkeeper.open.warm1"] = {
		"It shows you've walked a long way. Sit down, nobody here is in a hurry.",
		"Good to see you arrive in one piece. Come, there's always room by the fire.",
	},
	["npcd.innkeeper.open.warm2"] = {
		"Whatever brings you here, pull up a chair. The rest sorts itself out.",
		"Hungry, sleepy, or just in need of a voice? All of it is welcome here.",
	},
	["npcd.innkeeper.open.farley1"] = {
		"An innkeeper's trade is simple: the happier they are, the more they order. So be happy, and order!",
		"This inn has seen more adventurers than I can count. Nearly all of them paid.",
	},
	["npcd.innkeeper.open.farley2"] = {
		"If you're looking for work, know that here we talk work only on a full stomach.",
		"A good mug is like good advice: best taken sitting down.",
	},
	["npcd.innkeeper.open.firebrew1"] = {
		"A full mug is the best advice I know, and the cheapest too!",
		"Every story is better with something to drink beside it. Shall I pour yours?",
	},
	["npcd.innkeeper.open.gryshka1"] = {
		"Speak. I've little time, and I sell it dear.",
		"If you want a bed, say so. If you want a chat, tell me what you pay.",
	},
	["npcd.innkeeper.news.n1"] = {
		"They say the road is quiet. I trust customers who come back, not rumors.",
		"A trader was talking about nervous horses yesterday. Could be the wind, could be something else.",
	},
	["npcd.innkeeper.news.n2"] = {
		"News? The usual: prices up, boots worn thin, someone leaving and someone coming back.",
		"Seems someone left a fire burning on the trail and walked away without looking back.",
	},
	["npcd.innkeeper.news.n3"] = {
		"Depends who you ask. To the caravan drivers the world's falling apart; to the children it's just begun.",
		"One thing I know: those who travel in company arrive more often. It's little, but it's true.",
	},
	["npcd.innkeeper.news.gruff1"] = {
		"News? It costs as much as wine. Order first, then maybe.",
		"I don't sell chatter. If you need some, the table at the back is full of it.",
	},
	["npcd.innkeeper.news.jovial1"] = {
		"Ah, the news! The best: the broth is good today! The second: yesterday it wasn't.",
		"They say a rooster woke half the village at two in the morning. Culprit never found.",
	},
	["npcd.innkeeper.news.warm1"] = {
		"Mostly good things: a wedding not far off, a harvest coming in well. The bad ones I save for after supper.",
		"I hear travelers have been seen smiling on the road again. Does the heart good.",
	},
	["npcd.innkeeper.news.known1"] = {
		"I'll tell you this: people are on edge and can't say why. Keep your eyes open, nothing more.",
		"With you I can speak plainly: rumors change, but one stays. Those who trust too much pay. Those who never trust pay more.",
	},
	["npcd.innkeeper.news.farley1"] = {
		"Half the world passes through here, and each leaves a rumor on the table along with the coins. I collect both.",
		"The best news comes from the hungry. One bowl of soup, and three tales come out.",
	},
	["npcd.innkeeper.more.n1"] = {
		"More than that I don't know, and what I don't know I don't make up.",
		"The rest is told by those who saw it. I hear from afar, and from afar everything looks bigger.",
	},
	["npcd.innkeeper.more.n2"] = {
		"If you want to know more, walk and ask around. True stories have legs.",
		"One rumor isn't worth a coin, but three alike begin to look like the truth.",
	},
	["npcd.innkeeper.more.gruff1"] = {
		"That's enough. The rest costs you a mug.",
		"I'm no town crier. Sit or go.",
	},
	["npcd.innkeeper.more.jovial1"] = {
		"The rest? The rest is so absurd I should charge admission!",
		"I'm out of rumors, but tomorrow brings new ones. An innkeeper's trade is waiting for talk.",
	},
	["npcd.innkeeper.more.known1"] = {
		"Trusting you: people talk of something on the road, but I think it's only evening coming early.",
		"You don't lie to someone who comes back: I know nothing more.",
	},
	["npcd.innkeeper.more.stranger1"] = {
		"I don't know you well enough to tell you the rest. Come back once I've seen you a few times.",
		"The rest I tell to those I've already served. It's not mistrust, it's the trade.",
	},
	["npcd.innkeeper.rest.n1"] = {
		"There are beds, and the sheets are changed more often than they say.",
		"A room, a fire, a door that closes: it's all you need to sleep in peace.",
	},
	["npcd.innkeeper.rest.n2"] = {
		"Sit where you like, rest as long as you like. The fire won't mind if you take hours.",
		"Rest is the cheapest thing I sell, and the dearest to those who don't take it.",
	},
	["npcd.innkeeper.rest.n3"] = {
		"To travelers I advise sleeping before deciding, not after. Decisions are kinder in the morning.",
		"The room at the end is quiet. The window faces the yard: no view, no noise.",
	},
	["npcd.innkeeper.rest.gruff1"] = {
		"The bed's hard, the door locks. You need nothing more to sleep.",
		"Snoring is free. Waking the others isn't.",
	},
	["npcd.innkeeper.rest.jovial1"] = {
		"The mattress is so soft someone forgot a dream in it. If you find it, it's yours!",
		"Sleep away: I'll wake you only if the house is on fire, and even then politely!",
	},
	["npcd.innkeeper.rest.warm1"] = {
		"Rest, truly. The world is waiting for you and can wait one more night.",
		"An extra blanket, if you like. I don't let the cold in here.",
	},
	["npcd.innkeeper.rest.known1"] = {
		"The room you like is free. I kept an eye on it.",
		"There's always a quiet corner for you. You know it.",
	},
	["npcd.innkeeper.rest.gryshka1"] = {
		"Bed, roof, door. The rest is luxury.",
		"Sleep. If there's a problem, you'll see it in the morning.",
	},
	["npcd.innkeeper.rest.firebrew1"] = {
		"The best rest? After a good mug and a fine song!",
		"The bed is comfortable, but the real secret is the fire: it rocks you to sleep without your noticing.",
	},
	["npcd.innkeeper.sit.n1"] = {
		"Good. Stay until the fire has warmed the strength back into you. Then the road will call again.",
		"Breathe. Time runs slower here, and nobody will remind you it's passing.",
	},
	["npcd.innkeeper.sit.n2"] = {
		"There, that's how it's done. A little stillness is worth a hundred steps.",
		"Make room on the bench. If someone talks too much, pretend to listen.",
	},
	["npcd.innkeeper.sit.gruff1"] = {
		"Sit, then. And leave my stool alone.",
		"Staying? Fine. Staying, but quiet.",
	},
	["npcd.innkeeper.sit.jovial1"] = {
		"Ah, a customer who stays! I'll light a candle in your honor!",
		"The fire greets you, the bench embraces you, the mug awaits you!",
	},
	["npcd.innkeeper.thanks.n1"] = {
		"Don't mention it. You'll be back, if the road allows.",
		"Think nothing of it. A sincere thank-you warms more than wine.",
	},
	["npcd.innkeeper.thanks.n2"] = {
		"No trouble at all. Here a thank-you is worth a seat.",
		"You're welcome. Kind things cost little and return much.",
	},
	["npcd.innkeeper.thanks.gruff1"] = {
		"Yes, yes. Go on, the fire won't light itself.",
		"Hm. If you must thank me, order something.",
	},
	["npcd.innkeeper.thanks.jovial1"] = {
		"I accept thanks in coins or smiles! I've had the smile already.",
		"Thanks to you for listening! Innkeepers live on attentive ears.",
	},
	["npcd.innkeeper.bye.n1"] = {
		"Safe travels. And if the road goes wrong, the door here is always the same one.",
		"May the wind be your friend. Drop in if you like.",
	},
	["npcd.innkeeper.bye.n2"] = {
		"Farewell. The fire stays lit, as a rule.",
		"See you soon, traveler. Eat, sleep, walk: in that order, if you can.",
	},
	["npcd.innkeeper.bye.gruff1"] = {
		"Go. Don't slam the door.",
		"Farewell. The door's suffered enough.",
	},
	["npcd.innkeeper.bye.jovial1"] = {
		"Farewell! And remember: if you lose the road, I always have a bed!",
		"Come back soon, and bring some stories! Mine ran out long ago!",
	},
	["npcd.innkeeper.bye.warm1"] = {
		"Come back soon, and take care. The world is large, but my door is small and knows you.",
		"Go gently, and don't forget to eat. We'll be waiting here.",
	},
	["npcd.innkeeper.bye.known1"] = {
		"Until next time, friend: your usual spot awaits you.",
		"Come back whenever you like. One always returns home, even if only for a mug.",
	},
	["npcd.innkeeper.bye.farley1"] = {
		"Farewell! If the road treats you well, speak well of this inn too!",
		"Safe journey! And if you reach another inn, remember: our soup was better.",
	},

	---------------------------------------------------------------------------
	-- MERCHANT
	---------------------------------------------------------------------------
	["npcd.merchant.open.n1"] = {
		"Browse freely. If you don't see what you want, ask: the best stock is out back.",
		"Welcome! Honest goods at honest prices, or what passes for them.",
	},
	["npcd.merchant.open.n2"] = {
		"The carts came in on time today. A rare event: make the most of it.",
		"Whoever buys calmly buys better. Whoever buys in a hurry buys me.",
	},
	["npcd.merchant.open.n3"] = {
		"Pick it up, check it, turn it over. Good things aren't afraid of inspection.",
		"A coin well spent is worth two wasted. Let's see what you need.",
	},
	["npcd.merchant.open.known1"] = {
		"My favorite customer! Well, one of the few who comes back.",
		"Welcome back. The stall is the same, but the goods change more often than you'd think.",
	},
	["npcd.merchant.open.stranger1"] = {
		"New around here? A word of advice: the stall is honest, the price less so. Kidding. Mostly.",
		"Never seen you before: good, new customers still have all their coins.",
	},
	["npcd.merchant.open.again1"] = {
		"Back to look again? The stall hasn't changed, but the hurry is yours.",
		"Here again with a question about the goods? You could sell them yourself by now.",
	},
	["npcd.merchant.open.gruff1"] = {
		"Buying or looking? Here we do one thing at a time.",
		"A price is a price. If you don't like it, there's always the road.",
	},
	["npcd.merchant.open.gruff2"] = {
		"Touching is free, breaking costs.",
		"Speak plainly: what do you want? I haven't all day.",
	},
	["npcd.merchant.open.jovial1"] = {
		"Ah, a customer! My best day begins now!",
		"Come, come! Every purchase comes with a free smile!",
	},
	["npcd.merchant.open.jovial2"] = {
		"If something catches your eye, say it out loud: the goods get touched and the price might, too.",
		"Today my discount is my charm. The price tag, mind you, stays the same!",
	},
	["npcd.merchant.open.warm1"] = {
		"Take the time you need. Buy or not, you brought good company.",
		"If you want advice, ask: I'd rather sell one right thing than ten wrong ones.",
	},
	["npcd.merchant.wares.n1"] = {
		"A bit of everything: what you need for the road, what you need after, and something nobody needs but everyone likes.",
		"The goods speak for themselves. I merely try not to interrupt.",
	},
	["npcd.merchant.wares.n2"] = {
		"Look on the top shelf, hardly anyone reaches it: the best things rest there in peace.",
		"Everything you see has passed through more hands than you'd believe. And it's all still here.",
	},
	["npcd.merchant.wares.n3"] = {
		"Depends what you want: survival, comfort or vanity. The first takes little, the others never enough.",
		"I won't tell you what to buy. I'll tell you well-made things are recognizable: they last and don't boast.",
	},
	["npcd.merchant.wares.gruff1"] = {
		"The goods are over there. Look at them, don't stare.",
		"More than you see I haven't got. And I don't apologize.",
	},
	["npcd.merchant.wares.jovial1"] = {
		"Everything's for sale! Except my good humor: that's exclusive!",
		"I've got everything, and if I haven't got the everything, I've a friend who has!",
	},
	["npcd.merchant.wares.known1"] = {
		"You know the stall better than I do. Go ahead, I'll leave you in peace.",
		"One returning customer to another: the best things go quickly.",
	},
	["npcd.merchant.haggle.n1"] = {
		"Haggle? I can listen, and the price listens with me. Then it stays as it is.",
		"Haggling is a dance: I step back, you step forward, and in the end we're where we started.",
	},
	["npcd.merchant.haggle.n2"] = {
		"I give no discounts, but I'll give you a smile. It's all I can cut.",
		"All I can offer is advice: buy only what you'll use. The best discount is not spending on nothing.",
	},
	["npcd.merchant.haggle.gruff1"] = {
		"No haggling. End of discussion.",
		"If the price doesn't suit, the fault isn't mine. Look elsewhere.",
	},
	["npcd.merchant.haggle.jovial1"] = {
		"Haggle with me? Brave! I'll lose, but with style!",
		"Come on, let's try: you offer a joke, I say no, and we all laugh!",
	},
	["npcd.merchant.haggle.known1"] = {
		"For a longtime customer I'd gladly make an exception. But the books, sadly, don't see who you are.",
		"You and I understand each other. The price stays, but the tone I say it in is kinder.",
	},
	["npcd.merchant.haggle.stranger1"] = {
		"With strangers the price is the price. Come back when we've seen each other a bit and we'll talk again.",
		"First you buy, then you get acquainted, then maybe you haggle. Usually it ends at the first step.",
	},
	["npcd.merchant.news.n1"] = {
		"News travels by cart: it arrives late, but it arrives. The latest: prices aren't coming down.",
		"Buyers talk, sellers listen. Lately everyone talks of long roads and short pockets.",
	},
	["npcd.merchant.news.n2"] = {
		"They say travelers are on the move again, more than usual. Good for me, less so for the stock.",
		"One true piece of news: those who sell well don't talk about it.",
	},
	["npcd.merchant.news.gruff1"] = {
		"This is a stall, not an inn. Buy or move along.",
		"I've no news. I have goods.",
	},
	["npcd.merchant.news.jovial1"] = {
		"The best news? You're here! The rest is dullness and prices.",
		"I hear a customer haggled for three hours and then bought what they wanted from the start. Happens.",
	},
	["npcd.merchant.news.known1"] = {
		"One rumor for you: don't trust anyone selling by lantern light. Don't say I didn't warn you.",
		"With you I can say it: life goes better if you trust few and are seen by many.",
	},
	["npcd.merchant.thanks.n1"] = {
		"You're welcome. And if you change your mind about the price, I'm here.",
		"A thank-you doesn't weigh and doesn't break. I'll gladly keep it.",
	},
	["npcd.merchant.thanks.n2"] = {
		"Think nothing of it. Kind customers are my favorite goods.",
		"No trouble at all. Come back if you need anything else.",
	},
	["npcd.merchant.thanks.gruff1"] = {
		"Yes. Next.",
		"Hm. Welcome.",
	},
	["npcd.merchant.thanks.jovial1"] = {
		"Thank you! Every thank-you is worth one smile and two coins... Kidding. One smile.",
		"Too kind! Keep it up and I'll be your customer.",
	},
	["npcd.merchant.bye.n1"] = {
		"Safe road, and carry useful things.",
		"Farewell. Good goods wait for good buyers.",
	},
	["npcd.merchant.bye.n2"] = {
		"Come back when you need something. Or even if you don't.",
		"Until next time. The stall stays here, and so do I.",
	},
	["npcd.merchant.bye.gruff1"] = {
		"Goodbye. The door's that way.",
		"Go on, then. The rest is my business.",
	},
	["npcd.merchant.bye.jovial1"] = {
		"See you soon! The stall waves, so do I, the purse I can't say.",
		"Farewell! And remember: every thing you buy is a memory that weighs!",
	},
	["npcd.merchant.bye.known1"] = {
		"Until next time, friend: good customers show themselves by coming back.",
		"Always a pleasure. The stall is yours, whenever you like.",
	},

	---------------------------------------------------------------------------
	-- GUARD
	---------------------------------------------------------------------------
	["npcd.guard.open.n1"] = {
		"Good day. Keep your hands off other people's weapons and all will be well.",
		"Quiet roads today. Let's keep it that way.",
	},
	["npcd.guard.open.n2"] = {
		"If you need something, ask. If you're looking for trouble, I warn you: they find it faster here than elsewhere.",
		"I'm here to keep things in order. As far as possible, people too.",
	},
	["npcd.guard.open.n3"] = {
		"Another traveler. Good: it means the road is still open.",
		"Speak. I've time as long as nobody's shouting.",
	},
	["npcd.guard.open.known1"] = {
		"I recognize you. So far you've bothered nobody, which suits me.",
		"You again. Good sign: trouble doesn't come back to say hello.",
	},
	["npcd.guard.open.stranger1"] = {
		"I don't know you. No trouble, as long as you bring none.",
		"New? Then a single rule: be kind and we'll get along.",
	},
	["npcd.guard.open.terse1"] = {
		"Say it quick.",
		"Go on, speak.",
	},
	["npcd.guard.open.terse2"] = {
		"No drawn weapons. No jokes.",
		"Respect the line and go your way.",
	},
	["npcd.guard.open.formal1"] = {
		"Greetings, wayfarer. In this land peace is everyone's duty, and I keep a part of it.",
		"My charge is simple: to watch. If you have questions, the watch can wait a moment.",
	},
	["npcd.guard.open.formal2"] = {
		"May your road be safe. My duty is to make it so, as far as I can.",
		"A good day to you. Order is made of small things, and you are a good one.",
	},
	["npcd.guard.open.gruff1"] = {
		"Speak. But if it's a complaint, write it down: my ears are tired.",
		"What now? I hope nothing's broken.",
	},
	["npcd.guard.open.dughan1"] = {
		"A quiet place is kept with few rules and much patience. I have the first, and I try to have the second.",
		"If you see anything wrong, tell me or someone who dresses like me. Keeping watch is a job of ears more than swords.",
	},
	["npcd.guard.danger.n1"] = {
		"Dangers are always there. The trick is not to seek them and not pretend they don't exist.",
		"Beyond the walls the road changes fast: the farther you go, the more company you need.",
	},
	["npcd.guard.danger.n2"] = {
		"The patrols do what they can, but cover little. Common sense does the rest.",
		"If you hear a silence too long, slow down. If you hear a noise too close, stop.",
	},
	["npcd.guard.danger.terse1"] = {
		"Outside, careful. Inside, calm.",
		"Long road, ready hands.",
	},
	["npcd.guard.danger.formal1"] = {
		"Risks depend on the road and the one who walks it. Prudence and order are the best armor.",
		"I won't say the world is safe: it would be a lie. I'll say those who travel wisely arrive more often.",
	},
	["npcd.guard.danger.gruff1"] = {
		"Dangers? Everywhere. The real ones are those you don't notice.",
		"I won't say where: if I do, you'll go.",
	},
	["npcd.guard.danger.known1"] = {
		"I'll tell you plainly: keep your eyes up and your back covered. I've seen enough of you to know you can look after yourself.",
		"With you I can be frank: I won't tell you to be careful, because you already are.",
	},
	["npcd.guard.danger.dughan1"] = {
		"Trouble always comes from somewhere. My task is that it doesn't come from here.",
		"Those who ask me about dangers have usually met them. To those who haven't, I wish it stays that way.",
	},
	["npcd.guard.directions.n1"] = {
		"Follow the main road and read the signs: every trade has its own, and all are clearer than I am.",
		"If you're lost, ask someone with work-stained hands. They always know where they're going.",
	},
	["npcd.guard.directions.n2"] = {
		"The sun rises on one side and sets on the other: the oldest map, and the most reliable.",
		"Watch where people go: those in a hurry go where it's needed, strollers where it's pleasant.",
	},
	["npcd.guard.directions.terse1"] = {
		"Main road. Signs. That's all.",
		"Follow the crowd. Somebody knows where they're going.",
	},
	["npcd.guard.directions.formal1"] = {
		"I suggest the main road: safest and best marked. For details, ask those who practice the trade you seek.",
		"Let those who seek their way begin from the widest road: from there every path can be reached.",
	},
	["npcd.guard.directions.gruff1"] = {
		"See the road? Follow it. It isn't hard.",
		"If you want a map, you've the wrong fellow. I've got a spear.",
	},
	["npcd.guard.thanks.n1"] = {
		"Duty. Be well.",
		"No need. Keep the road clean.",
	},
	["npcd.guard.thanks.n2"] = {
		"That's fine. Safe onward journey.",
		"Noted. Even guards appreciate a thank-you now and then.",
	},
	["npcd.guard.thanks.terse1"] = {
		"Understood. Go.",
		"Yes. Move on.",
	},
	["npcd.guard.thanks.formal1"] = {
		"Your thanks are accepted. Proceed safely.",
		"It was a duty and a pleasure. May the road be light for you.",
	},
	["npcd.guard.bye.n1"] = {
		"Safe road. Don't be late.",
		"Take care out there. In here, it's usually all under control.",
	},
	["npcd.guard.bye.n2"] = {
		"Farewell. And remember: the law protects those who respect it.",
		"Go in peace. I stay here, as always.",
	},
	["npcd.guard.bye.terse1"] = {
		"Go.",
		"Move along.",
	},
	["npcd.guard.bye.formal1"] = {
		"May your path be smooth.",
		"Farewell. May peace go with you, and await you on your return.",
	},
	["npcd.guard.bye.known1"] = {
		"Take care, friend. I hope we see you again.",
		"Until next time. A face that brings no trouble is always welcome.",
	},
	["npcd.guard.bye.dughan1"] = {
		"Go in peace. And if you meet someone in trouble, help them: it costs almost nothing.",
		"Farewell. A day without incident is a day well spent.",
	},

	---------------------------------------------------------------------------
	-- FLIGHT MASTER
	---------------------------------------------------------------------------
	["npcd.flightmaster.open.n1"] = {
		"Where are we flying today? I've a rested mount and a clear route.",
		"Keep the straps tight and your stomach calm: the wind does the rest.",
	},
	["npcd.flightmaster.open.n2"] = {
		"Ready to leave? The beast always is: it's you who must decide.",
		"A flight is the most honest way to arrive: you can't pretend to be there already.",
	},
	["npcd.flightmaster.open.n3"] = {
		"Looking from above changes proportions. Many big things become small, and vice versa.",
		"You've a bit of sky ahead. Use it well.",
	},
	["npcd.flightmaster.open.known1"] = {
		"I know you: the one who never looks down. Or always does, and pretends not.",
		"Welcome back up here. The beast has sniffed you and doesn't object.",
	},
	["npcd.flightmaster.open.jovial1"] = {
		"Up, up! The sky is free, the ticket a little less!",
		"Where you're going you arrive flying head up. If you land, head up too!",
	},
	["npcd.flightmaster.open.gruff1"] = {
		"Where to? I haven't the whole day, nor the sky.",
		"Climb up, sit, touch nothing.",
	},
	["npcd.flightmaster.open.terse1"] = {
		"Route?",
		"Say where.",
	},
	["npcd.flightmaster.route.n1"] = {
		"Long enough to regret not having eaten, short enough not to regret it too much.",
		"The landscape rolls under you like a story told too fast. Enjoy it anyway.",
	},
	["npcd.flightmaster.route.n2"] = {
		"Up, glide, down. The first times it feels the ground moves: it's the other way round.",
		"If the wind is against us, the beast knows and goes around. Don't worry about the wind: worry about your hat.",
	},
	["npcd.flightmaster.route.n3"] = {
		"We know the route well. There are stretches where the world shows all at once, and a moment is enough to want to remember it.",
		"From above, roads look like threads. If you like, imagine holding one.",
	},
	["npcd.flightmaster.route.gruff1"] = {
		"Journey? Loud, windy, short. That's it.",
		"If you're sick, be sick downward.",
	},
	["npcd.flightmaster.route.jovial1"] = {
		"The journey's all ups and downs, like my life! But with a better view!",
		"Fun! Some scream, others pray, others laugh. Which will you be?",
	},
	["npcd.flightmaster.thanks.n1"] = {
		"Don't mention it. The wind does the work, I only hold the reins.",
		"Be kind to the sky and it'll be kind to you.",
	},
	["npcd.flightmaster.thanks.n2"] = {
		"You're welcome. A thank-you at altitude is worth double.",
		"Think nothing of it. Those who thank usually land better.",
	},
	["npcd.flightmaster.bye.n1"] = {
		"Clear skies.",
		"May the wind carry you where you wish, and bring you back when you wish.",
	},
	["npcd.flightmaster.bye.n2"] = {
		"Good flight, and if you land badly, land with style.",
		"Farewell. Keep your feet on the ground, when you're on it.",
	},
	["npcd.flightmaster.bye.jovial1"] = {
		"Farewell! If you fall, remember it's a form of flying!",
		"See you soon! The sky's big, there's room for your returns too!",
	},
	["npcd.flightmaster.bye.gruff1"] = {
		"Go. The wind doesn't wait.",
		"Farewell. Leave nothing on the saddle.",
	},

	---------------------------------------------------------------------------
	-- TRAINER
	---------------------------------------------------------------------------
	["npcd.trainer.open.n1"] = {
		"If you're here to learn, sit. If you're here to show off, wait your turn.",
		"Every craft has a beginning, and nobody skips it. Whoever tries notices too late.",
	},
	["npcd.trainer.open.n2"] = {
		"Practice beats talent when talent doesn't practice. Shall we begin?",
		"Tell me what you know and I'll tell you what you lack. They're usually two different things.",
	},
	["npcd.trainer.open.n3"] = {
		"Learning isn't accumulating: it's removing what's in the way. Show me how you move.",
		"The teacher points, but you do the walking. Remember it each time you stumble.",
	},
	["npcd.trainer.open.known1"] = {
		"Here you are again. You've the look of someone who practiced, or at least thought about it.",
		"Have you brought progress or excuses? Both are welcome, but only the first is useful.",
	},
	["npcd.trainer.open.stranger1"] = {
		"I don't know you: good, I've no bad habits to correct. Yet.",
		"Show me everything from the start. A teacher who thinks they know already doesn't teach.",
	},
	["npcd.trainer.open.gruff1"] = {
		"Little talk. Show me one stroke, just one, done right.",
		"I want no excuses. I want repetitions.",
	},
	["npcd.trainer.open.gruff2"] = {
		"Tiredness is the easy part. The hard part is coming back tomorrow.",
		"If you think you're done, you've just begun.",
	},
	["npcd.trainer.open.warm1"] = {
		"Come, no hurry. Whoever learns calmly learns forever.",
		"Here, making mistakes isn't a fault: it's how one begins.",
	},
	["npcd.trainer.open.formal1"] = {
		"Welcome to discipline. Knowledge demands respect and, above all, regularity.",
		"Every art has its rules. The first step is to respect them; the second, to understand them.",
	},
	["npcd.trainer.advice.n1"] = {
		"My advice is dull: repeat. What you repeat well becomes yours.",
		"Don't compare yourself with those who know more. Compare yourself with who you were yesterday.",
	},
	["npcd.trainer.advice.n2"] = {
		"Listen to the body, then the mind, then the teachers. In that order, if you want to last.",
		"Whoever hurries to win learns late to lose. Whoever learns to lose wins less often, but better.",
	},
	["npcd.trainer.advice.n3"] = {
		"Pick a single flaw and mend it. Then another. All at once is too many.",
		"When you don't know what to do, do the smallest thing well. Often it's enough.",
	},
	["npcd.trainer.advice.gruff1"] = {
		"Advice? Less talking, more sweating.",
		"If you need advice, you haven't tried enough yet.",
	},
	["npcd.trainer.advice.warm1"] = {
		"Be as kind to yourself as you're strict with your work. It works better than it seems.",
		"Sleep, eat, breathe. The rest is detail.",
	},
	["npcd.trainer.advice.formal1"] = {
		"Mastery is a debt paid daily, in small sums. No honorable shortcuts exist.",
		"Respect the method and the method will respect you.",
	},
	["npcd.trainer.practice.n1"] = {
		"A little every day, with attention. An hour distracted is worth less than ten minutes present.",
		"Choose one gesture, do it a thousand times. On the thousandth you'll see what was wrong in the first.",
	},
	["npcd.trainer.practice.n2"] = {
		"Practice where nobody's watching: there you err better and learn more.",
		"Alternate effort and rest. The muscle grows in rest, and the mind too.",
	},
	["npcd.trainer.practice.n3"] = {
		"With patience. First slow and right, then fast and right. Never fast and wrong.",
		"Learn to stop before you learn to run. Whoever stops well starts well.",
	},
	["npcd.trainer.practice.gruff1"] = {
		"How? By doing it. There's nothing else.",
		"I have no tricks. Only repetitions.",
	},
	["npcd.trainer.practice.warm1"] = {
		"With joy, if you can. What's done with joy is better remembered.",
		"Ask for help when needed. Nobody truly learns alone.",
	},
	["npcd.trainer.thanks.n1"] = {
		"Don't thank me: thank your effort.",
		"You're welcome. The credit belongs to whoever shows up, every time.",
	},
	["npcd.trainer.thanks.n2"] = {
		"Come back when you've something to show me.",
		"That's fine. Now it's your turn.",
	},
	["npcd.trainer.thanks.gruff1"] = {
		"Hm. Train.",
		"Yes, yes. Now go and sweat.",
	},
	["npcd.trainer.bye.n1"] = {
		"Go calmly, and steadily.",
		"Farewell. Today's effort is tomorrow's ease.",
	},
	["npcd.trainer.bye.n2"] = {
		"Until the next lesson. Bring questions, not excuses.",
		"Safe road. Every step counts, even the small ones.",
	},
	["npcd.trainer.bye.gruff1"] = {
		"Go. And train.",
		"Farewell. Sweat, not complaints.",
	},
	["npcd.trainer.bye.known1"] = {
		"See you soon. I'll await you with something new to correct.",
		"Come back whenever you like: I know you by the way you walk, and by now it's a good way.",
	},
})
