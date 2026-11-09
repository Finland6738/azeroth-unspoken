-- Testi di base in inglese: incantesimi, viaggi e resurrezioni. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySpells.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	["atk.fire.01"] = {
		"Burn! And may the ashes remember my name.",
		"Burn, and give my regards to whoever sent you!",
	},
	["atk.fire.02"] = {
		"Fire was here before the kings, and will be here after them.",
		"Before cities, before swords, there was flame. Bow to it.",
	},
	["atk.fire.03"] = {
		"Warm, isn't it? I can do better.",
		"You look a little pale. Let me fix that.",
	},
	["atk.fire.04"] = {
		"Flames hate no one. They simply devour.",
		"Fire picks no favorites. Today it just happens to be you.",
	},
	["atk.frost.01"] = {
		"Feel the cold of the northern seas. No one sings there.",
		"Ice is never in a hurry. It reaches the heart all the same.",
	},
	["atk.frost.02"] = {
		"Calm down. There. Perfectly still.",
		"A moment's patience. There: now you have no choice.",
	},
	["atk.frost.03"] = { "Winter comes for everyone. For you, sooner." },
	["atk.shadow.01"] = {
		"The shadow claims you. Don't resist: it only hurts more.",
		"Let go. The cold inside you knows the way.",
	},
	["atk.shadow.02"] = { "Listen to the whispers. They are calling your name." },
	["atk.shadow.03"] = {
		"Every light casts a shadow. That is where I come from.",
		"I wasn't born in the dark. I just moved in.",
	},
	["atk.holy.01"] = {
		"The Light judges you. And finds nothing to save.",
		"The Light has looked inside you. It did not like what it found.",
	},
	["atk.holy.02"] = {
		"Shine! Let the darkness recoil!",
		"Light, now! Everything you have!",
	},
	["atk.holy.03"] = {
		"This light burns you because you remember what you lost.",
		"Remember the sun? Here it is. It burns because you loved it once.",
	},
	["atk.nature.01"] = {
		"The storm answers those who know how to call it.",
		"Clouds, to me. You have work to do.",
	},
	["atk.nature.02"] = { "Root, thunder, rain: the whole world stands against you." },
	["atk.nature.03"] = {
		"Lightning, fall! The spirits are hungry!",
		"Thunder, answer! The spirits want their share!",
	},
	["atk.nature.04"] = {
		"Moon, look down. Show me the way.",
		"Silver light, be my blade.",
	},
	["atk.arcane.01"] = {
		"The stars themselves are made of this. Try counting them.",
		"Every star has a secret name. This is one of the short ones.",
	},
	["atk.arcane.02"] = {
		"Applied mathematics. Very applied.",
		"Theory, practice, and you right in between.",
	},
	["atk.phys.01"] = {
		"Steel! Only steel, and my fury!",
		"Iron and breath! Nothing else needed!",
	},
	["atk.phys.02"] = { "One blow for every friend I have lost!" },
	["atk.phys.03"] = {
		"My hand slipped. Between your ribs.",
		"Oops. Thought that was your pocket.",
	},
	["atk.phys.04"] = {
		"Breathe. Aim. Let go.",
		"Wind's dropping. Now.",
	},
	["atk.spell.01"] = {
		"{spell}! Hear its name, and tremble.",
		"Mark these words well: they're the last you'll hear today.",
	},
	["atk.spell.02"] = {
		"It's called {spell}. I'm telling you now because you won't be able to ask later.",
		"Don't ask what it's called. You won't get the chance to write it down.",
	},
	["atk.taunt.01"] = {
		"Here! Look at me! I am your problem!",
		"Hey! Yes, you! Try me instead!",
	},
	["atk.shout.01"] = {
		"Hear my voice, and remember who you are!",
		"On your feet, all of you! Let them hear you!",
	},
	["atk.stealth.01"] = {
		"I was never here.",
		"Did someone come through here? No. No one.",
	},
	["atk.e.01"] = {
		"moves {g:his|her} lips without a sound, and the air around {g:his|her} fingers grows thick, like the hour before a storm.",
		"raises a hand; for a heartbeat the dust on the ground lifts and hangs there, waiting.",
	},
	["atk.e.fire.01"] = {
		"opens {g:his|her} palm, and a tongue of flame dances on it before it leaps away.",
		"curls {g:his|her} fingers like claws; the air smells of sulfur and singed cloth.",
	},
	["heal.01"] = {
		"It is not your day yet. Rise.",
		"Come on, up. You've still got road ahead of you.",
	},
	["heal.02"] = {
		"Wounds close. Memories, less so.",
		"The cut closes. Whatever opened it stays with you.",
	},
	["heal.03"] = {
		"Try not to get yourself killed, please. I have other things to do.",
		"Putting you back together. Third time. Today.",
	},
	["heal.04"] = {
		"Up! The battle still needs you!",
		"Up, come on! You're not finished yet!",
	},
	["heal.05"] = {
		"{target}, stay with me. Follow my voice, not the dark.",
		"Stay with me. Listen to my voice, only that.",
	},
	["heal.holy.01"] = {
		"Light, flow through me like water through an ancient spring.",
		"Light, pass through me. I am only the doorway.",
	},
	["heal.holy.02"] = {
		"May the Light remember your name, even when you forget it.",
		"The Light forgets no one. Not even those who doubt it.",
	},
	["heal.nature.01"] = {
		"The forest is reborn every spring. So can you.",
		"Like grass after the rain. Just let it happen.",
	},
	["heal.nature.02"] = {
		"Running water, carry the pain away and give it back to the sea.",
		"Water, wash the sting away. Give back the calm.",
	},
	["heal.self.01"] = {
		"Healing myself. As always. Nobody thinks of the healers.",
		"I'll manage on my own. I'm used to it.",
	},
	["heal.combat.01"] = {
		"Hold the line! I'll hold you!",
		"Keep going! I'm counting the wounds!",
	},
	["heal.scourge.01"] = { "The Light still stings me a little. Take it, while it's warm." },
	["heal.e.01"] = {
		"joins {g:his|her} hands, and a gentle light settles on the wounds like melting snow.",
		"rests two fingers on the wound and murmurs something; the injured one's breathing slows.",
	},
	["heal.e.02"] = {
		"lowers {g:his|her} voice to a murmur, and the pain nearby seems to take a step back.",
		"leans in with warm, steady hands, unhurried, like someone who has done this a thousand times.",
	},
	["buff.01"] = {
		"Go, and carry a little of my strength with you.",
		"Here. I've enough for two.",
	},
	["buff.02"] = {
		"There. Now you are slightly less mortal. Don't waste it.",
		"That's one more hit you can take. One. Don't push it.",
	},
	["buff.03"] = {
		"May {spell} wrap you like a cloak on a cold night.",
		"Here's a blanket nobody can see. Hold it close when the cold comes.",
	},
	["buff.04"] = {
		"{target}, no road is too long for one who does not walk alone.",
		"Go on, and remember someone is watching your back.",
	},
	["buff.mage.01"] = { "A little extra intellect. I won't tell anyone you needed it." },
	["buff.priest.01"] = {
		"Be strong, and if you cannot, pretend. The Light will do the rest.",
		"May the Light keep you on your feet. If it falters, I'm here.",
	},
	["buff.paladin.01"] = { "May the Light bless you and make you steadfast as the stone of Ironforge." },
	["buff.druid.01"] = {
		"Nature knows you. Let it in.",
		"Feel the forest under your skin? It's on your side.",
	},
	["buff.e.01"] = {
		"traces an ancient sign in the air, and for a moment the runes linger like embers.",
		"sweeps an open palm through the air, and a warm breeze passes over those nearby.",
	},
	["buff.e.02"] = {
		"rests two fingers on the brow of the one before {g:him|her} and holds them there for the space of a breath.",
		"draws a small sign in the air before {g:his|her} companion, careful as someone sealing an important letter.",
	},
	["travel.home.01"] = {
		"Home. If such a word still exists for folk like me.",
		"Home. Or at least a bed that knows my shape.",
	},
	["travel.home.02"] = {
		"If anyone asks, I'm at the inn. If anyone asks about money, I'm nowhere.",
		"Back to the inn. If the innkeeper asks about my tab, you never saw me.",
	},
	["travel.home.03"] = { "Every road leads away. Tonight this one leads me back." },
	["travel.home.04"] = {
		"A lit fire, a dry bed. Sometimes that is all it takes not to give up.",
		"Hot soup and nobody to save, just for tonight. That will do.",
	},
	["travel.e.home.01"] = {
		"turns the hearthstone over in {g:his|her} fingers, breathes on it, and holds it until it grows warm.",
		"settles the strap of {g:his|her} pack, takes one last look down the road, and the stone begins to glow.",
	},
	["travel.portal.01"] = {
		"The world bends. Step through before it changes its mind.",
		"The way is open. No questions, and don't look down.",
	},
	["travel.portal.02"] = {
		"Portal open. Keep your arms inside and don't touch the stars.",
		"Move along, move along. The portal doesn't wait for stragglers.",
	},
	["travel.tele.01"] = {
		"One step, and a thousand leagues. The arcane knows no weariness.",
		"Leagues fold like paper. You only need to know where to crease them.",
	},
	["travel.astral.01"] = {
		"Spirits, carry me back to where the fire awaits.",
		"Wind, carry me home to the hearth.",
	},
	["travel.e.01"] = {
		"clutches the stone; the world around {g:him|her} fades like a memory at dawn.",
		"closes {g:his|her} eyes for a moment, and the edges of the world shimmer like air above a campfire.",
	},
	["rezo.01"] = {
		"Come back, {target}. Your road is not finished.",
		"Come back. You're still needed here.",
	},
	["rezo.02"] = {
		"{target}, this is the last time. I say that every time.",
		"Last time, mind. I swear it. Again.",
	},
	["rezo.03"] = {
		"Wandering soul, listen: there are still those who wait for you here.",
		"Follow my voice, lost one. Your body is still waiting.",
	},
	["rezo.04"] = { "Death has not finished writing this tale. I have." },
	["rezo.shaman.01"] = {
		"Ancestors, give me back this spirit. It still has battles to fight.",
		"Ancestors, open your hand. This spirit comes back with me.",
	},
	["rezo.druid.01"] = {
		"As the seed after winter: be reborn.",
		"Sprout again. Spring asks no one's leave.",
	},
	["rezo.paladin.01"] = {
		"The Light does not forsake those who served it. Arise.",
		"Rise, in the Light. Your service is not over.",
	},
	["rezo.e.01"] = {
		"rests {g:his|her} brow against the fallen one's and whispers a name until breath returns.",
		"lays a hand on the still chest and waits, until something beneath the palm begins to beat again.",
	},
	["rezo.e.02"] = {
		"kneels in the dust beside the body and brushes the hair back from the fallen one's face before beginning.",
		"spreads {g:his|her} arms over the fallen companion; for a long moment not even the wind can be heard.",
	},
	["race.dwarf.attack.001"] = {
		"From the mountain, with my compliments!",
		"Feel that? That's Khaz Modan knocking.",
		"Some dwarven craftsmanship, delivered to your door!",
	},
	["race.dwarf.buff.001"] = {
		"There, {target}. That'll put a bit of granite in your spine.",
		"Stand a little sturdier now. The mountain lends you some of itself.",
	},
	["race.dwarf.heal.001"] = {
		"Hold still, {target}. Patching folk is like mending a bellows: firm hands, no fuss.",
		"There. Sealed tight as a good keg. Off you go.",
	},
	["race.gnome.attack.001"] = {
		"Applying force at the optimal angle!",
		"Here's a little something I've been working on!",
		"Precision! Well, enthusiasm. Close enough!",
	},
	["race.gnome.buff.001"] = {
		"Boost applied, {target}! Side effects are rare and usually temporary.",
		"There. You're now running at a hundred and ten percent. Try not to overheat.",
	},
	["race.gnome.heal.001"] = {
		"Don't wriggle, {target}, it's only a quick repair. You'll hardly notice the rivets.",
		"Patched! Not factory condition, but you'll run.",
	},
	["race.human.attack.001"] = {
		"For the realm, and every road it keeps!",
		"Here's a lesson they teach in Stormwind!",
		"Taste the stubbornness of humankind!",
	},
	["race.human.buff.001"] = {
		"There, {target}. A little help never shamed anyone.",
		"Go on, head up. We look after each other; it's the only way we've lasted.",
	},
	["race.human.heal.001"] = {
		"Easy, {target}. I've stitched worse at harvest time, and they all walked off on their own legs.",
		"There you go, mended. Don't make me do it twice.",
	},
	["race.nightelf.attack.001"] = {
		"Swift as the owl!",
		"For the forest!",
		"Let the moon guide this one!",
	},
	["race.nightelf.buff.001"] = {
		"Elune's grace on you, {target}. Wear it lightly.",
		"There. Go with the patience of the forest and the speed of the stag.",
	},
	["race.nightelf.heal.001"] = {
		"Be easy, {target}. Flesh mends like bark, given a little help.",
		"There. It heals the way the forest heals: slowly, from within, and strongest at the scar.",
	},
	["race.orc.attack.001"] = {
		"Free hands strike hardest!",
		"For the clans, and for the fallen!",
		"This one is for the camps!",
	},
	["race.orc.buff.001"] = {
		"Here, a bit of orc stubbornness. It's the best gift I have.",
		"There. Fight as if the clans were watching.",
	},
	["race.orc.heal.001"] = {
		"Up. Orcs have walked out of worse than this.",
		"Grit your teeth and let it mend. A scar is only a story with the lid on.",
	},
	["race.scourge.attack.001"] = {
		"Feel the cold I carry!",
		"Something from the grave, for you!",
		"Here. A taste of what's waiting for you.",
	},
	["race.scourge.buff.001"] = {
		"Here. A gift from the dead, given freely. That makes it rarer than you know.",
		"Take it. I have no use for warmth, but you might.",
	},
	["race.scourge.heal.001"] = {
		"Keep still. It's strange, mending the living. I try to be gentle about it.",
		"There. Hold on to your heartbeat; you'd miss it if it went.",
	},
	["race.tauren.attack.001"] = {
		"Feel the weight of the plains!",
		"This one comes from Mulgore!",
		"Down you go, like grass under the herd!",
	},
	["race.tauren.buff.001"] = {
		"Go, with the strength of the Earth Mother under your feet.",
		"There. Now stand a little more like a mountain.",
	},
	["race.tauren.heal.001"] = {
		"Breathe. The earth heals slowly, but it always heals.",
		"Easy. Let the wound close the way grass closes over a trail.",
	},
	["race.troll.attack.001"] = {
		"From the islands, with love!",
		"Here, a little gift from the Darkspear!",
		"Catch, mon!",
	},
	["race.troll.buff.001"] = {
		"Take a little of the loa's luck. Give it back when you're done.",
		"Here, mon. A charm with no string. Wear it well.",
	},
	["race.troll.heal.001"] = {
		"Keep still. Trolls heal fast; you'll have to borrow some of it.",
		"There. Not as good as troll blood, but it'll close.",
	},
	["band.b20_30.attack.01"] = {
		"That move used to take all my concentration. Now it just happens.",
		"Practiced it a hundred times. This is the hundred and first.",
	},
	["band.b30_40.attack.01"] = {
		"Not the flashiest move I know. Just the one that works.",
		"Simple, sharp, and over before you notice.",
	},
	["band.b40_50.attack.01"] = {
		"Every move I make has a reason now. This one's reason is you.",
		"Practiced until it bored me. Now it's your turn to be bored.",
	},
	["band.b50_60.attack.01"] = {
		"Every motion I've ever learned, folded into this one.",
		"No flourish. Just the right thing, at the right moment.",
	},
	["band.b60.attack.01"] = {
		"Years of practice in one motion. Do take note.",
		"This is what patience looks like when it finally moves.",
	},
	["buff.w04.001"] = {
		"There you go, {target}. Free of charge, this once.",
		"On the house. The next one costs you a drink.",
		"That one's a gift. Don't tell the others.",
	},
	["buff.w04.002"] = {
		"A little extra between the world and the skin. It all adds up.",
		"Small edges win long days.",
		"Every scrap helps. A fight never asks whether you were ready.",
	},
	["buff.w04.003"] = {
		"squares {g:his|her} shoulders as something new settles into them, light as an empty pack.",
		"flexes {g:his|her} fingers, testing a strength that wasn't there a moment ago.",
		"stands a little straighter, as if a weight had been quietly lifted off {g:his|her} back.",
	},
	["buff.w04.004"] = {
		"Try to bring that back in one piece, {target}.",
		"It's on loan. I'd like it back without dents.",
	},
	["buff.w04.005"] = {
		"Stand a little taller, {target}. You've more holding you up now.",
		"That should keep you on your feet a while longer.",
		"One more layer between you and harm. Use it well.",
	},
	["buff.w04.006"] = {
		"Not armor, not quite. But I'll take it.",
		"It won't stop everything. It'll stop something, and that's enough.",
	},
	["buff.w04.007"] = {
		"Does it work? Probably. Does believing it help? Definitely.",
		"Half of it is the blessing. The other half is believing in it.",
		"Whether it's the blessing or just the thought of it, I feel sturdier.",
	},
	["heal.w04.001"] = {
		"Hold still, {target}. This works better without the flailing.",
		"Stop wriggling. You'll undo my work.",
		"Less moving, more mending. Thank you.",
	},
	["heal.w04.002"] = {
		"works quickly and without fuss, the way one mends a torn strap before setting off again.",
		"murmurs under {g:his|her} breath, attention fixed on the hurt and nothing else.",
	},
	["buff.w06.001"] = {
		"Something settles in under the skin and stays. Good. The road's long.",
		"One more margin in my favor. Margins are what bring people home.",
		"Not invincibility. Preparation, which is the honest version of it.",
	},
	["buff.w06.002"] = {
		"Go on, {target}. You're carrying a little extra now; spend it wisely.",
		"That's yours for a while. Don't waste it on the first thing that growls.",
		"Off you go, {target}, with a little more than you came with.",
	},
	["heal.w06.001"] = {
		"The wound closes. It will ache tomorrow, but tomorrow is a long way off.",
		"Closed, more or less. The ache can wait for the evening; it always does.",
	},
	["heal.w06.002"] = {
		"pauses for a moment while the worst of the hurt draws back, then looks up again.",
		"waits, quite still, as the hurt loosens its grip one finger after another.",
	},
	["heal.w06.003"] = {
		"Mending is the easy part. Not getting hurt again in the next five minutes, that's the art.",
		"Patching up is simple. The hard trick is staying patched past the next corner.",
		"Closing a wound takes a moment. Keeping it closed takes judgment.",
	},
	["heal.w06.004"] = {
		"It'll do. Admiring it won't make it hold any better.",
		"Good enough. Standing around won't make it any better.",
		"Done. Feet moving, please.",
	},
	["heal.w06.005"] = {
		"Every mending buys a little more time. Nobody ever says from whom.",
		"Time bought back in handfuls. I've never once seen the seller's face.",
	},
	["heal.w06.006"] = {
		"checks the mended hurt with a careful glance, as one checks a knot before trusting weight to it.",
		"gives the closing wound a long look, the kind a carpenter gives a joint before calling it done.",
	},
	["heal.w06.007"] = {
		"Whole enough. Whatever comes next won't wait for me to feel ready.",
		"Mended enough to go on. Going on was always the only plan.",
	},
	["heal.w06.008"] = {
		"Look at that. Almost presentable again.",
		"There. Nearly fit to be seen in company.",
		"Better. Nobody would guess, provided nobody looks too closely.",
	},
	["heal.w06.009"] = {
		"A wound is a lesson paid for in advance. I'd better learn this one, then.",
		"Somebody paid for that lesson in blood. Wasting it would be the real insult.",
	},
	["heal.w06.010"] = {
		"takes the quiet moment to let the mending finish, unhurried, in no mood to be interrupted.",
		"lets the stillness do its share of the work while the hurt fades.",
	},
	["heal.w06.011"] = {
		"Not done yet. Not even halfway.",
		"You'll have to hit a good deal harder than that.",
	},
	["heal.w06.012"] = {
		"I've stopped counting the wounds. Now I count the hours left before rest.",
		"The cuts have stopped being news. They're just part of the road now.",
		"Another hurt, another mending. The two of them keep each other in work.",
	},
	["heal.w06.013"] = {
		"There's a rhythm to mending: look, judge, close, move on. The rhythm is what keeps the hands steady.",
		"Look, judge, close, move on. Say it often enough and the hands stop shaking.",
	},
	["heal.w06.014"] = {
		"Better. Much better. Right, what did I miss?",
		"Ah, that's an improvement. Shall we?",
	},
	["heal.w06.015"] = {
		"Bodies are stubborn things. Give them half a chance and they'll insist on carrying on.",
		"Flesh wants to close. Most of the work is just not getting in its way.",
	},
	["heal.w06.016"] = {
		"inspects the result with the faint suspicion of someone who has been promised good as new before.",
		"regards the mended hurt the way one regards a cheap repair: grateful, and not entirely convinced.",
	},
	["heal.w06.017"] = {
		"Again, then. As many times as it takes.",
		"As often as it breaks, it gets mended. That's the bargain.",
		"Break, mend, break, mend. I can keep this up longer than they can.",
	},
	["heal.w06.018"] = {
		"Cheaper to mend now than to be carried later.",
		"A small fix now saves a much longer walk later.",
	},
	["heal.w06.019"] = {
		"pulls the cork with {g:his|her} teeth, drinks the vial down in two swallows and tucks the empty glass away.",
		"tips back a small vial, grimaces at the last drop, and stoppers the empty glass out of habit.",
		"drinks the potion off without ceremony, wipes {g:his|her} mouth on a sleeve, and gets on with things.",
	},
	["heal.w06.020"] = {
		"Red, thick, faintly fizzy. I've stopped asking what alchemists put in these. I'm happier not knowing.",
		"An alchemist out there is getting rich on my clumsiness. Good luck to them.",
	},
	["heal.w06.021"] = {
		"Here's to not needing the second one.",
		"One down. Let's keep it to one.",
		"To the next fight, and to walking away from it.",
	},
	["heal.w06.022"] = {
		"One vial lighter. I should count what's left before I need another.",
		"The pack is a little lighter now. Restock at the next merchant; future me will be grateful.",
	},
	["heal.w06.023"] = {
		"Sweet on the tongue and bitter all the way down. Like most good advice.",
		"Tastes of copper and regret, and I'd drink it again.",
	},
	["heal.w06.024"] = {
		"A green stone crumbles in the palm, and the life it held passes over. It was made for exactly this.",
		"The stone gives up what it was holding and goes dull in the hand. A fair trade, for once.",
		"No taste, no smell, just the hurt going quiet. Whoever first put life in a stone was onto something.",
	},
	["heal.w06.025"] = {
		"closes {g:his|her} fist around a pale green stone; when the hand opens again, there is nothing left but grit.",
		"crushes a small green stone in one hand, and stands a little steadier for it.",
	},
	["heal.w06.026"] = {
		"A stone that heals. Best not tell the miners.",
		"Most stones break your bones. This one does the opposite. No complaints here.",
	},
	["heal.w06.027"] = {
		"winds a strip of linen tight around the wound, holding one end in {g:his|her} teeth to pull the knot.",
		"binds the hurt with quick turns of cloth, tucks the loose end under, and tests the hold with a flex.",
	},
	["heal.w06.028"] = {
		"Over, under, pull. The knot comes easier every time I need it, which is not a good sign.",
		"Clean cloth, firm turns, a knot that won't slip. Simple things keep you alive longer than clever ones.",
		"Two turns, a tuck, a knot. The hands know this better than I'd like them to.",
	},
	["heal.w06.029"] = {
		"Linen and spite. Best medicine I can afford.",
		"It's a bandage, not a miracle. Still beats leaking.",
	},
	["heal.w06.030"] = {
		"The cloth goes red at the edges and stops there. Good. That's all I ask of it.",
		"Another wrapping over the last one's scar. My arms are turning into a map of bad days.",
	},
	["heal.w06.031"] = {
		"Easy, {target}. Let it work. You can be brave again in a minute.",
		"Give it a moment. Brave can wait until this closes.",
	},
	["heal.w06.032"] = {
		"{target}, I can fix holes. I can't fix your habit of collecting them.",
		"Mended. Now please stop standing where the sharp things go.",
		"There. For a while, try not to open any new ones.",
	},
	["heal.w06.033"] = {
		"Look at the eyes, not the wound. The eyes tell me if I'm in time.",
		"Watch the face, not the hurt. The face says whether I'm fast enough.",
	},
	["heal.w06.034"] = {
		"You fall when I say so, {target}, and I haven't said so.",
		"Nobody goes down while I'm still standing here. Nobody.",
		"Stay up, {target}. Falling isn't in the plan.",
	},
	["heal.w06.035"] = {
		"lays a steady hand on {target}'s shoulder and keeps it there until the worst has passed.",
		"bends over the one who is hurt without any hurry, as if there were all the time in the world.",
	},
	["heal.w06.036"] = {
		"There you are, {target}. Nearly as before, give or take a scar.",
		"All done. You owe me the story of how that happened.",
		"There, {target}. In an hour you'll hardly know it happened.",
	},
	["heal.w06.037"] = {
		"I can close the wound. The taste for risk that opened it was never mine to mend.",
		"Hands can mend flesh. No hands anywhere mend recklessness.",
	},
	["heal.w06.038"] = {
		"Don't look at it, {target}. Look at me. I'll do the rest.",
		"Eyes on me, not on that. I've got the rest.",
	},
	["heal.w06.039"] = {
		"Done, {target}. Back in, and keep your guard up this time.",
		"Go on. You're good for another round.",
	},
	["heal.w06.040"] = {
		"{target}, at this rate I should start charging by the wound.",
		"At this rate I'll need a ledger kept just for this one.",
	},
	["heal.w06.041"] = {
		"murmurs a few plain words of comfort, the sort that mean nothing and help anyway.",
		"keeps up a low, easy patter while working, as one does with a skittish horse.",
	},
	["heal.w06.042"] = {
		"Rest a moment, {target}. The road will keep. It always does.",
		"Sit. The road isn't leaving without you.",
	},
	["race.dwarf.heal.w06.001"] = {
		"The old miners say a wound is like a seam in the rock: it can look closed and still hide a crack. Best check twice.",
		"Down in the deeps they say you don't trust a mended thing until it's carried weight. Fair enough.",
	},
	["race.dwarf.heal.w06.002"] = {
		"Tastes worse than the cheapest ale in Ironforge, and does twice the good.",
		"Down the hatch. Not a patch on a proper stout, but it stops the bleeding.",
	},
	["race.human.heal.w06.001"] = {
		"Back home they say a wound you can laugh at is half healed already. Someone start laughing.",
		"Folk in Stormwind like to say pain is just the body sending a bill. Paid, then.",
	},
	["race.human.heal.w06.002"] = {
		"Bottled courage, the old soldiers call it. Mostly it tastes of tin.",
		"Stoppered, sealed, and priced like a week of bread. At least it works.",
	},
	["race.nightelf.heal.w06.001"] = {
		"The Sentinels have a saying: no hurt is older than the forest, and the forest is still standing.",
		"My people have outlived empires and a sundered sea. One more wound will not be the thing that ends us.",
	},
	["race.nightelf.heal.w06.002"] = {
		"Linen, tight, then a knot. The Sentinels bind their wounds in silence; I can at least try.",
		"Wrapped and tied off. Not the priestesses' blessing, but it will hold.",
	},
	["race.orc.heal.w06.001"] = {
		"Tie it off and keep moving. The old warriors say a wound you stop for is a wound that wins.",
		"Bandage, knot, done. Orcs have bled on worse ground than this.",
		"Cloth, teeth to pull the knot tight, and back on my feet. Good enough.",
	},
	["race.scourge.heal.w06.001"] = {
		"watches the torn flesh pull together with detached interest, as one might watch a stranger mend a coat.",
		"regards the mending without a flicker of relief; pain stopped having much to say a long while ago.",
	},
	["race.scourge.heal.w06.002"] = {
		"No taste, no warmth going down. It works anyway. Most things do, once you stop expecting to feel them.",
		"A healing draught, for a body that's technically past healing. The irony isn't lost on me.",
	},
	["race.tauren.heal.w06.001"] = {
		"Rest a moment. The Earth Mother is patient with the wounded, and so am I.",
		"Lean on me if you need to. These shoulders were made for carrying.",
		"Slowly. Even the kodo stop to rest after a long march.",
	},
	["race.troll.heal.w06.001"] = {
		"Hold still, mon. The loa don't like a fidgeting patient.",
		"Stay down a breath. You'll be up and grinnin' soon enough.",
	},
	["race.troll.heal.w06.002"] = {
		"Wrap it tight and forget about it. Troll flesh knows what to do from there.",
		"A bit of cloth to keep the dirt out. The regeneration does the real work.",
	},
	["rezother.w06.001"] = {
		"Come on. Find the way back. I've left the door open.",
		"Back you come. Slowly. The world's still here, more or less as you left it.",
	},
	["rezother.w06.002"] = {
		"waits beside the fallen, hands open and patient, as one waits for a traveler late on the road.",
		"keeps very still over the body, watching for the first small sign that someone is coming back.",
	},
	["buff.w07.001"] = {
		"As ready as anyone ever is, which is to say: enough.",
		"Prepared. Not for everything; nobody is. For the next thing, at least.",
		"Ready enough. The rest gets settled along the way.",
	},
	["buff.w07.002"] = {
		"Right. Now the road can do as it pleases.",
		"That's me sorted. Whatever's waiting ahead had better be worth it.",
		"Sorted. Let's see what's waiting further down the road.",
	},
	["buff.w07.003"] = {
		"waits for it to take hold, then rolls {g:his|her} neck once, like a smith before the first stroke.",
		"stands still a moment, letting the preparation take hold, then nods to no one in particular.",
	},
	["buff.w07.004"] = {
		"Nothing that's ever tried to kill me fought fair. No reason I should start.",
		"Call it cheating if you like. Where I'm going, they call it surviving.",
	},
	["buff.w07.005"] = {
		"Whatever comes next, it will find me waiting, and ready.",
		"Let it come, whatever it is. It won't catch me half-dressed for it.",
	},
	["heal.w07.001"] = {
		"The breath comes easier. I hadn't noticed how short it had gone.",
		"Air all the way down again. Funny how you only miss it once it runs short.",
		"One full breath, then another. My chest stops arguing with me.",
	},
	["heal.w07.002"] = {
		"Note to self: the pointy end is the dangerous one.",
		"Lesson learned: never stand in front of the thing with teeth.",
	},
	["heal.w07.003"] = {
		"Every hurt is a debt the body writes down. This one's crossed out. The page is still long.",
		"One debt struck off. The body never forgets the others; it just stops mentioning them for a while.",
	},
	["heal.w07.004"] = {
		"That'll hold. Let's finish what you started.",
		"Closed up. Your turn's over.",
		"Patched. Now I'm the one doing the hitting.",
	},
	["heal.w07.005"] = {
		"rolls {g:his|her} shoulders, tests the spot that hurt, and finds it willing to work again.",
		"presses a palm to the place that hurt, waits, and lets the hand fall when nothing protests.",
	},
	["heal.w07.006"] = {
		"The heart slows to its ordinary pace. A moment ago it was all I could hear.",
		"The pulse stops pounding in my ears, and the world gets its sound back.",
	},
	["heal.w07.007"] = {
		"That one came closer than I let myself admit. Mended now; admitting it can wait.",
		"Mended. I won't think about how near it was. Not yet, anyway.",
		"A little nearer the edge than I care for. The edge is farther off now, and there it stays.",
	},
	["heal.w07.008"] = {
		"Ah. That's the stuff.",
		"Ahh. Like a hot meal at the end of a long, cold march.",
	},
	["heal.w07.009"] = {
		"I walked into that with my guard down. The mending is cheap; the habit would be expensive.",
		"Careless, that. Mending it took a moment; unlearning the mistake will take longer.",
		"Dropped my guard for half a breath and paid for it in full. Noted.",
	},
	["heal.w07.010"] = {
		"eyes the mended spot with open resentment, as if it had picked the fight on its own.",
		"gives the closed wound a sour look, the way one looks at a dog that has just stolen supper.",
	},
	["heal.w07.011"] = {
		"The pain drains off slowly, like floodwater sinking out of a field.",
		"It ebbs, the hurt, the way a tide goes out: not all at once, but it goes.",
	},
	["heal.w07.012"] = {
		"Fine. I'm fine. Nobody fuss.",
		"It's nothing. A scratch with ambitions.",
		"No need to stare. It was barely a dent.",
	},
	["heal.w07.013"] = {
		"takes a few slow steps, as if asking the body's permission before going on.",
		"walks a small, slow circle until the body agrees it can carry on.",
	},
	["heal.w07.014"] = {
		"Good enough to be dangerous again.",
		"The day isn't done with me yet, and I'm not done with the day.",
		"Mended. Let the next one try its luck.",
	},
	["race.dwarf.buff.w07.001"] = {
		"Settled in and set, like good mortar. The old builders of Ironforge never hurried the setting.",
		"There, it's taken hold, like mortar between two good stones. Now let them try to shift me.",
	},
	["race.dwarf.heal.w07.001"] = {
		"Chipped, not cracked. The old stonecutters say there's a world of difference.",
		"A nick off the edge, nothing through the core. Any mason in Ironforge would call that sound.",
	},
	["race.human.heal.w07.001"] = {
		"Farmers in Elwynn say you mend a fence the day it breaks, not the day the cows find the gap. Mended, then.",
		"Mend the fence before the herd finds the gap: every Elwynn farmhand knows that much. Done.",
	},
	["race.nightelf.buff.w07.001"] = {
		"The Sentinels teach that readiness is a stillness waiting to move. Stillness I can do.",
		"The patience of an owl on its branch, and its quickness when it counts. So the Sentinels teach it.",
	},
	["race.nightelf.heal.w07.001"] = {
		"Elune watches over the wounded, the priestesses say. I'd rather not need her watching too often.",
		"The priestesses of Darnassus say Elune keeps count of every hurt. I'd like my count kept short.",
	},
	["race.tauren.buff.w07.001"] = {
		"Hooves planted. Whatever comes can come.",
		"Set like the great totems of Thunder Bluff. Push if you like.",
	},
	["race.tauren.heal.w07.001"] = {
		"The elders of Mulgore say a wound is only the land asking you to walk more slowly for a while.",
		"In Mulgore the elders teach that a hurt is the Earth Mother's way of slowing a hurried step. Slower, then.",
	},
	["race.troll.buff.w07.001"] = {
		"The loa like a troll who's ready. No sense disappointing them, mon.",
		"Set, sharp and smilin'. The loa won't find me wanting today, mon.",
	},
	["race.troll.heal.w07.001"] = {
		"The witch doctors of Sen'jin say a wound is a guest: feed it nothing and it leaves early.",
		"Old Darkspear wisdom, mon: pay a hurt no mind and it gets bored and goes.",
	},
	["race.dwarf.attack.w08.001"] = {
		"Here's a bit of Dun Morogh for you!",
		"Have that, straight from Ironforge!",
		"And another, for luck and for Loch Modan!",
	},
	["race.dwarf.attack.w08.002"] = {
		"Strike, and set the feet again. Strike, and the feet. Like a hammer at the anvil, never off the beat.",
		"Keep the rhythm. Any smith knows the work's in the rhythm, not the force.",
		"Steady work wins. Ask any dwarf who's ever cut through a mountain.",
	},
	["race.dwarf.attack.w08.003"] = {
		"Hold on, there's more where that came from, and a dwarf never runs short!",
		"Dwarven delivery, no charge! Mind the step!",
		"Here's the dwarven bill for your trouble, payable at once!",
	},
	["race.dwarf.attack.w08.004"] = {
		"grunts with the effort, every ounce of a stocky frame behind it.",
		"throws {g:his|her} whole squat weight into it, like a miner going at a stubborn rock face.",
	},
	["race.dwarf.buff.w08.001"] = {
		"Ready. Like a forge that's been banked for hours: give it air and it roars.",
		"Set and ready, like a charge packed into the rock before the foreman shouts.",
		"Prepared. The stone's been measured; now it's only a matter of the hammer.",
	},
	["race.dwarf.buff.w08.002"] = {
		"There. Dressed for trouble, as they say in Dun Morogh.",
		"That's better. A dwarf shouldn't leave the house half ready, and certainly not the mountain.",
		"All set. Let trouble knock; it'll find a dwarf behind the door, and that's never good news for trouble.",
	},
	["race.dwarf.buff.w08.003"] = {
		"Something's settled in, firm as a keystone. The road ahead can do its worst.",
		"Girded and ready. Whatever's out there, a dwarf meets it prepared or not at all.",
		"Ready for the road. Short legs, but they'll carry everything that's needed.",
	},
	["race.dwarf.buff.w08.004"] = {
		"There, {target}. Now you're harder to knock over than a Kharanos keg.",
		"Go on. You'll take a shove now the way a boulder of Dun Morogh takes one: without noticing.",
	},
	["race.dwarf.buff.w08.005"] = {
		"Sending someone out well armed is a dwarven courtesy. With the Light behind it, all the better.",
		"Nobody leaves a dwarf's side unready, if the dwarf can help it.",
	},
	["race.dwarf.heal.w08.001"] = {
		"Patched. Not pretty, but neither is a mine prop, and those hold up mountains.",
		"That'll hold. Rough work, but a pit prop is rough too, and it keeps the roof off your head.",
	},
	["race.dwarf.heal.w08.002"] = {
		"Better. Now, where was I? Ah, yes: being a dwarf about it.",
		"There we are. Back to being as hard to shift as anything in Dun Morogh.",
	},
	["race.dwarf.heal.w08.003"] = {
		"Should've kept my guard up. Stone forgives nothing, and neither does a body that's been handled carelessly.",
		"Carelessness costs, the miners of Dun Morogh say, and I've just paid the fee. Cheap, as these things go.",
	},
	["race.dwarf.heal.w08.004"] = {
		"flexes {g:his|her} hand, testing the mended flesh the way a smith tests a cooled weld.",
		"rolls a stiff shoulder, grunts at what it says, and seems to find the answer acceptable.",
	},
	["race.dwarf.heal.w08.005"] = {
		"Dwarves are made to last, the elders of Ironforge like to say. I mean to prove them right a good while longer.",
		"Built to last, folk say of dwarven work. That goes for the dwarves as well, if they're looked after.",
	},
	["race.dwarf.heal.w08.006"] = {
		"Good as new. Well, good as gently used. Dwarven goods age well.",
		"Mended. A few more scars and I'll look like a proper old mountain guard.",
	},
	["race.dwarf.heal.w08.007"] = {
		"Good enough to stand on. A dwarf doesn't need more than that.",
		"Closed up enough to keep going. Whatever's still sore can complain to me later, over an ale.",
		"It'll hold. The rest of the mending can wait until there's a bench and a mug.",
	},
	["race.dwarf.heal.w08.008"] = {
		"The ache drains off slowly, like water seeping out of a flooded gallery. Patience. It always goes in the end.",
		"Easing now. Like a mine after the pumps have run: still damp, but you can get back to work.",
	},
	["race.dwarf.heal.w08.009"] = {
		"Down it goes. If a brewer in Kharanos made this, they'd be run out of the village by supper.",
		"Brewed by someone who's never met a hop in their life. Still, it works.",
		"Gah. Medicine, they call it. Back home we'd call it grounds for a feud.",
	},
	["race.dwarf.heal.w08.010"] = {
		"Wrap it tight, the way you'd bind a cracked haft: snug, no slack, and don't trust your full weight to it yet.",
		"Linen and a firm knot. Not as handsome as a healer's work, but a dwarf knows a good knot when one's tied.",
	},
	["race.dwarf.heal.w08.011"] = {
		"A warlock's stone. Can't say I care where it comes from, but stone's stone, and this one's kind to a dwarf.",
		"A stone that heals. Every miner in Dun Morogh would want to know where the seam runs.",
	},
	["race.dwarf.heal.w08.012"] = {
		"Hmph. Closed. Next one that tries that pays for it.",
		"Sealed up. Whoever did this owes me a drink and an apology, in that order.",
	},
	["race.dwarf.heal.w08.013"] = {
		"Warmth spreading through the chest, like stepping in from the cold to the glow of a tavern hearth in Kharanos.",
		"There's the warmth back. Like coming in from the passes of Dun Morogh to a fire and a full mug.",
	},
	["race.dwarf.heal.w08.014"] = {
		"Hurt is the hammer and the body is the iron. Take the shaping well, and you come out harder.",
		"Each blow taken and mended makes the metal a shade tougher. So the smiths of Ironforge believe, and I'm in no position to argue.",
	},
	["race.dwarf.heal.w08.015"] = {
		"Stop squirming, {target}. The rams of Dun Morogh take mending better than you.",
		"Still, now. You'd think nobody had ever been mended by a dwarf before.",
	},
	["race.dwarf.heal.w08.016"] = {
		"The Light's as solid as any stone, {target}. Lean on it.",
		"There. The Light holds you up now, and the Light doesn't buckle.",
	},
	["race.dwarf.heal.w08.017"] = {
		"Mending others is like shoring a tunnel: you don't do it for thanks, you do it so nobody's buried.",
		"Keep the people standing and the work goes on. The same rule holds underground as anywhere.",
	},
	["race.dwarf.heal.w08.018"] = {
		"lays a broad hand on the wounded one's shoulder, firm as a mason checking a keystone.",
		"squints at the wound with professional disapproval, as if it had been badly built, and sets about fixing it.",
	},
	["race.dwarf.heal.w08.019"] = {
		"There you go, {target}. Mended and good for another round. The first one's on you.",
		"On your feet. A dwarf just patched you up, so the drinks are your treat later.",
	},
	["race.dwarf.heal.w08.020"] = {
		"Dwarves took to the Light the way we take to anything worth keeping: slowly, then for good. It doesn't fail me now.",
		"The Light keeps as steady a glow as the forges of Ironforge. Steady now, too.",
	},
	["race.dwarf.heal.w08.021"] = {
		"Stay behind me and stay upright, {target}. I'll keep you in one piece.",
		"Up you get. Nobody falls while I'm watching; with dwarves it's a point of pride.",
	},
	["race.dwarf.heal.w08.022"] = {
		"Healing's a craft like any other. Find the crack, clean it, fill it, and don't rush the work.",
		"Treat a wound like a flawed casting: find where it's weak, mend it properly, and don't skimp.",
	},
	["race.dwarf.heal.w08.023"] = {
		"Light, give this one back their strength. They've earned it.",
		"By the Light and a dwarf's stubbornness, you'll be fine.",
	},
	["race.dwarf.heal.w08.024"] = {
		"Hold still. I've a miner's steady hand; it's my patience that runs short.",
		"Done, {target}. Try not to need that again before I've had a drink.",
	},
	["race.dwarf.heal.w08.025"] = {
		"mutters a gruff word to the Light, the way a dwarf might speak to an old friend who's running late, and the wound begins to close.",
		"rests two thick fingers on the hurt and frowns hard until the glow takes hold.",
	},
	["race.dwarf.heal.w08.026"] = {
		"Easier to mend someone else than to sit still while you're mended. Dwarves make terrible patients and decent healers.",
		"Funny: a dwarf will take a hammer on the thumb without a word, but watching someone else bleed is another matter.",
		"Better them standing than me grieving. That's the whole of it.",
	},
	["race.dwarf.rezother.w08.001"] = {
		"Back you come. The mountain can keep its dead a while longer; this one's still needed.",
		"Up from the dark, like a miner hauled out of a collapse. Breathe. You're out.",
		"There. Whatever was down there, it's let you go. Don't look back at it.",
	},
	["race.dwarf.rezother.w08.002"] = {
		"Up. The Light's not done with you, and frankly, neither am I.",
		"On your feet. Dwarves don't leave anyone in the ground before their time.",
		"Welcome back. The next round's on you, for the trouble.",
	},
	["race.dwarf.travel.w08.001"] = {
		"A stone that always knows the way back. Of course it's a stone.",
		"Dwarves trust stone more than roads, and here's the proof sitting in my palm.",
		"Turn the stone and the road folds up behind me. Whoever thought of it must have been half dwarf.",
	},
	["race.human.attack.w08.001"] = {
		"Compliments of Stormwind!",
		"With the realm's regards!",
		"Elwynn sends its best!",
	},
	["race.human.attack.w08.002"] = {
		"That's for Lordaeron!",
		"For the north, and everyone it lost!",
	},
	["race.human.attack.w08.003"] = {
		"No flourish. Humans haven't the years to waste on flourish.",
		"Plain and quick. Fancy is for those who live a thousand years.",
	},
	["race.human.attack.w08.004"] = {
		"presses the attack with the brisk economy of someone who has better places to be.",
		"goes at it without ceremony, all plain human hurry and stubborn aim.",
	},
	["race.human.attack.w08.005"] = {
		"For Westfall's empty farms!",
		"That one's for every barn burned in Redridge!",
	},
	["race.human.buff.w08.001"] = {
		"Ready, like a Goldshire militiaman buckling up at the first clang of the alarm bell.",
		"Set. The militia in Elwynn can be dressed and out the door before the alarm bell stops; I'm no slower.",
	},
	["race.human.buff.w08.002"] = {
		"Right. Set. Whatever's next on the road can come.",
		"That's me ready. The road can do its worst now.",
		"Prepared. Humans don't wait for trouble to knock.",
	},
	["race.human.buff.w08.003"] = {
		"settles {g:his|her} shoulders as if something has just fitted into place.",
		"draws a slow breath, and stands a little straighter, like someone who has checked every buckle twice.",
	},
	["race.human.buff.w08.004"] = {
		"The drill sergeants in Stormwind say a minute of preparing saves a healer an hour. The healers would agree.",
		"A little readiness now, fewer bandages later. Every sergeant in the kingdom says so, and for once they're right.",
	},
	["race.human.buff.w08.005"] = {
		"There, {target}. That'll see you a good way down the road.",
		"Go on, then. You're better set for the road than you were.",
	},
	["race.human.buff.w08.006"] = {
		"Every hand made a little stronger is one more chance someone gets home. That's how the Alliance was built.",
		"A little more strength for someone on our side. Kingdoms have been kept with less.",
	},
	["race.human.heal.w08.001"] = {
		"Back together, more or less. A human hasn't the years to spend nursing a wound, so it'll have to mend on the move.",
		"Closed enough. No time to lie about; we only get the one short run, and I'm using mine.",
	},
	["race.human.heal.w08.002"] = {
		"Good enough. The Goldshire militia would call that fit for duty.",
		"There. Any sergeant in Elwynn would pass me fit to march.",
	},
	["race.human.heal.w08.003"] = {
		"tests the mended hurt with a cautious flex, like a farmer trying a repaired plow handle.",
		"flexes carefully where the wound was, frowning at it the way a carter frowns at a newly fixed wheel.",
	},
	["race.human.heal.w08.004"] = {
		"Short lives mend quickly or not at all. This one's mending.",
		"Humans heal fast because we have to. Nobody gave us the time to do it slowly.",
	},
	["race.human.heal.w08.005"] = {
		"Better. Don't tell the Cathedral healers I saw to it myself; they'll want their fee anyway.",
		"Patched up, and not a copper to the Cathedral. Don't spread it around.",
	},
	["race.human.heal.w08.006"] = {
		"Westfall farmers work through worse than this at harvest. Up, then.",
		"In Westfall they'd tie a rag round worse and go back to the threshing. Up.",
	},
	["race.human.heal.w08.007"] = {
		"A scrape like this in Elwynn would earn a warm cup by the hearth and a lecture. I'd settle for just the cup.",
		"Back home a hurt like this gets you a stool by the fire and a scolding. I'd take the stool and skip the scolding.",
	},
	["race.human.heal.w08.008"] = {
		"Closed. Back to it before trouble notices I stopped.",
		"That'll hold. No sense giving the world time to catch up.",
	},
	["race.human.heal.w08.009"] = {
		"Lesson noted. The scar will remind me if I forget.",
		"Humans learn by bruises. This one's written down now, in the skin.",
	},
	["race.human.heal.w08.010"] = {
		"breathes out slowly as the pain loosens its grip, shoulders coming down from around {g:his|her} ears.",
		"lets the hurt ebb with a long, careful breath, and some of the stiffness leaves {g:his|her} face.",
	},
	["race.human.heal.w08.011"] = {
		"The elves would let this heal over a century. I'd like it done by supper.",
		"A dwarf would call this a scratch, an elf would call it a lesson. I call it sorted, and quickly.",
	},
	["race.human.heal.w08.012"] = {
		"The soldiers who came back from the north say the ones who mended fastest lived longest. I believe them.",
		"Veterans of Lordaeron's last days say you heal on your feet or you don't heal. On my feet, then.",
	},
	["race.human.heal.w08.013"] = {
		"Every Elwynn cottage keeps clean linen in a chest for days like this. I keep mine in the pack.",
		"Tight turns, a firm knot. Half the grandmothers in Elwynn could do it better, and they'd tell me so.",
	},
	["race.human.heal.w08.014"] = {
		"Tastes like a Stormwind alchemist's idea of a joke. Works, though.",
		"Mage Quarter brewing: smells of cabbage, works like a charm.",
	},
	["race.human.heal.w08.015"] = {
		"Good Stormwind folk cross the street to avoid the people who make these stones. And here I am, grateful for one.",
		"The Cathedral frowns on whatever goes into a stone like this. My wound doesn't seem to mind.",
	},
	["race.human.heal.w08.016"] = {
		"Hold still, {target}. The Light keeps no one waiting long, and I won't either.",
		"Easy now. Let the Light do its work; it's in no hurry, and neither am I.",
	},
	["race.human.heal.w08.017"] = {
		"In Lordaeron they ran out of healers before they ran out of wounded. Not this time.",
		"The north lost its healers first, and then everyone else. I won't let it start here.",
	},
	["race.human.heal.w08.018"] = {
		"lays a palm flat over the hurt, steady as an Elwynn farmer gentling a frightened calf.",
		"keeps a calm hand on the wounded one, the way country folk calm a horse caught in wire.",
	},
	["race.human.heal.w08.019"] = {
		"Up you get, {target}. The realm can't spare you, and I can't carry you.",
		"On your feet. Nobody's carrying anybody back to Stormwind today.",
	},
	["race.human.heal.w08.020"] = {
		"Whoever they are, wherever they come from, they're one of ours. That's the Alliance, in one small act.",
		"Human, dwarf, gnome, elf: the wound looks the same on all of them, and so does the mending.",
	},
	["race.human.heal.w08.021"] = {
		"By the Light, {target}, be whole.",
		"Light, mend what was broken here.",
		"Be whole again, by the grace of the Light.",
	},
	["race.human.heal.w08.022"] = {
		"You're bleeding on my boots, {target}. Hold still and let me put a stop to it.",
		"Stop dripping on me and keep still. There. Better for both of us.",
	},
	["race.human.heal.w08.023"] = {
		"Everyone gets one short life. I'm not letting {target} spend the rest of it here.",
		"One life each, and short ones at that. This one isn't ending on my watch.",
	},
	["race.human.heal.w08.024"] = {
		"There, {target}. Now you owe me an ale, and I'll collect.",
		"Mended. The price is one ale at the next inn, and I never forget a debt.",
	},
	["race.human.heal.w08.025"] = {
		"bows {g:his|her} head over the wounded one, and a warm glow, like the windows of the Cathedral, settles on the hurt.",
		"murmurs a few words in the old manner of Northshire, and the hurt beneath {g:his|her} hands begins to close.",
	},
	["race.human.heal.w08.026"] = {
		"Back in, {target}! Stormwind teaches nobody to sit down halfway!",
		"Up and at them! Nobody quits halfway, not while I'm here!",
	},
	["race.human.heal.w08.027"] = {
		"Hold it together long enough and the body remembers how. Every novice at Northshire learns that first.",
		"Close the worst first, then the rest. The healers of the Cathedral teach it that way, and they've had practice.",
	},
	["race.human.rezother.w08.001"] = {
		"Back on your feet. Life's too short to spend it lying there.",
		"Up you come. A life is short enough without wasting any of it dead.",
	},
	["race.human.rezother.w08.002"] = {
		"The bells of Stormwind ring for the dead. Not for this one. Not yet.",
		"No bell tolls for this one. I won't have it.",
		"Somewhere a bell would have rung. It can stay silent; we're not finished.",
	},
	["race.human.rezother.w08.003"] = {
		"kneels and works without hurry, as Elwynn folk tend a newborn lamb that will not stir, until breath comes again.",
		"stays bent over the fallen with a farmer's stubborn patience, waiting for the first breath like the first green of spring.",
	},
	["race.human.travel.w08.001"] = {
		"The stone warms in my hand and the inn starts to pull. Humans always knew the way to the nearest tavern; now we've made a charm of it.",
		"Every human carries a little piece of some inn in a pocket. Mine is calling me toward a bed and a bowl of something hot.",
		"Hearthstone in hand. An innkeeper is about to see a familiar face and reach for the ledger.",
	},
	["race.nightelf.attack.w08.001"] = {
		"Ashenvale's anger, in one blow!",
		"From the dark between the trees!",
		"From the shadows of Teldrassil!",
	},
	["race.nightelf.attack.w08.002"] = {
		"Swift, silent, sure.",
		"Now, while you blink.",
	},
	["race.nightelf.attack.w08.003"] = {
		"Elune, steady my hand!",
		"By the moon's grace!",
	},
	["race.nightelf.attack.w08.004"] = {
		"Ten thousand years of practice. Here's a sample.",
		"Patience is over. Meet the other side of the kaldorei.",
	},
	["race.nightelf.attack.w08.005"] = {
		"moves in a blur, with the soundless speed of an owl's wing.",
		"strikes out of stillness, the way a nightsaber does: nothing, and then everything.",
	},
	["race.nightelf.buff.w08.001"] = {
		"Settled. Like a nightsaber's coat before the cold: you don't see it, but it's there.",
		"Something settles in, quiet and close, like the hush in Ashenvale before the wind arrives.",
		"There. Prepared, and without hurry. A kaldorei readies as the forest readies for winter: early, and without fuss.",
	},
	["race.nightelf.buff.w08.002"] = {
		"That will do. The kaldorei never set out unready, and neither will I.",
		"All set. Teldrassil didn't grow so tall by waiting to feel ready.",
		"Ready enough. Even an owl ruffles its feathers before it flies.",
	},
	["race.nightelf.buff.w08.003"] = {
		"rolls {g:his|her} shoulders and goes very still for a moment, like a Sentinel checking the line of the trees before a patrol.",
		"draws a slow breath, eyes half-closed, and lets something settle over {g:him|her} as softly as a leaf on still water.",
	},
	["race.nightelf.buff.w08.004"] = {
		"Take this with you, {target}. Elune's children look after one another.",
		"There, {target}. A little of the forest's patience goes with you.",
	},
	["race.nightelf.buff.w08.005"] = {
		"That should hold, {target}. Wear it the way a Sentinel wears her cloak: without thinking about it.",
		"Done. Now you're harder to hurt, {target}, and that makes my work easier.",
	},
	["race.nightelf.heal.w08.001"] = {
		"I'll remember this wound long after it's gone. A kaldorei forgets nothing, not even the small hurts.",
		"The scar will fade; the memory won't. That is how my people carry their wounds.",
	},
	["race.nightelf.heal.w08.002"] = {
		"Better. The ache drains off like dew at first light.",
		"There, the ache lets go, slowly, like a root releasing a stone.",
	},
	["race.nightelf.heal.w08.003"] = {
		"Better. I'd hate to have to explain a new hole to the priestesses.",
		"There. No need to trouble the Temple of the Moon over this one.",
	},
	["race.nightelf.heal.w08.004"] = {
		"Before Hyjal, they say, a wound like this was nothing to us. Now I watch it close and feel grateful.",
		"The priestesses say the immortal never learned to tend their hurts. We are learning now.",
	},
	["race.nightelf.heal.w08.005"] = {
		"Enough. A Sentinel would already be moving again; so will I.",
		"Good enough to go on. My people learned patience, but not the lying-about kind.",
	},
	["race.nightelf.heal.w08.006"] = {
		"presses a hand to the wound and closes {g:his|her} eyes, as still as a heron at the water's edge, until the worst has passed.",
		"breathes slowly while the hurt eases, ears lowered, the glow of {g:his|her} eyes dimming for a moment and then returning.",
	},
	["race.nightelf.heal.w08.007"] = {
		"Linen and patience. The Temple of the Moon would do better, but linen is what I have.",
		"Tied off neatly. Kaldorei hands are quick with a knot, even shaking ones.",
	},
	["race.nightelf.heal.w08.008"] = {
		"Bitter as Darkshore seaweed. Still, it's working.",
		"Tastes like something brewed by a goblin who has never seen a moonwell. It works, though.",
	},
	["race.nightelf.heal.w08.009"] = {
		"The pain recedes like the tide under the moon's pull. Elune, I suspect, has a hand in both.",
		"Easing, slowly, the way moonlight fills a glade: you don't notice it until it's there.",
	},
	["race.nightelf.heal.w08.010"] = {
		"Careless. A kaldorei should hear a blow coming. Lesson noted, wound closed.",
		"That one I should have caught. Long ears, and still I didn't hear it. Never again.",
	},
	["race.nightelf.heal.w08.011"] = {
		"A warlock's stone. My people have very old opinions about that sort of magic, but I'll have them later.",
		"Warlock-made or not, it mends. The priestesses would frown; the priestesses aren't bleeding.",
	},
	["race.nightelf.heal.w08.012"] = {
		"Hold together. Teldrassil wasn't grown in a day, and I won't fall in one.",
		"Closing up. Good. I have a long road, and fewer years to walk it than my ancestors had.",
	},
	["race.nightelf.heal.w08.013"] = {
		"Easy, {target}. Elune has mended worse than you, and so have I.",
		"Keep still. The moon's mercy works best once you stop squirming.",
	},
	["race.nightelf.heal.w08.014"] = {
		"There you are, {target}. Even the Temple of the Moon couldn't have done it faster.",
		"Better? Good. Even the wisps would be impressed, and they've seen a great deal.",
	},
	["race.nightelf.heal.w08.015"] = {
		"Every life I mend is a small debt paid to the forest that sheltered my people.",
		"Kaldorei healers learned their art over ten thousand years. I'm glad to spend a moment of it on someone in need.",
	},
	["race.nightelf.heal.w08.016"] = {
		"lays a hand lightly on the wounded one, and for a breath {g:his|her} eyes shine brighter, silver as moonlight on still water.",
		"bends over the hurt with the quiet care of a priestess at a moonwell, and does not hurry.",
	},
	["race.nightelf.heal.w08.017"] = {
		"Elune's light on you, {target}. Let it do its work.",
		"Rest under Elune's gaze a moment. The worst is past.",
		"May the moon keep watch over your mending, {target}.",
	},
	["race.nightelf.heal.w08.018"] = {
		"Less fuss. My people survived the end of a world; you can survive this.",
		"Stop grimacing. The Sentinels in Ashenvale patch up worse every week.",
	},
	["race.nightelf.heal.w08.019"] = {
		"Since Hyjal we all know how thin the thread is. I'll hold this one's thread a while longer.",
		"Mortality is new to my people; caring for the mortal is not. The priestesses have always done it.",
	},
	["race.nightelf.heal.w08.020"] = {
		"Breathe slowly, {target}. Slower. Like the forest does.",
		"Let the pain go out with your breath. In, and out. There.",
	},
	["race.nightelf.heal.w08.021"] = {
		"murmurs a few soft words in Darnassian over the wound, closer to a lullaby than to anything grand.",
		"kneels beside the hurt one, long fingers steady, and speaks low, as one speaks to a startled fawn.",
	},
	["race.nightelf.heal.w08.022"] = {
		"{target}, lucky for you the kaldorei are patient healers. Otherwise I'd be cross by now.",
		"Again, {target}? I have centuries of patience. Try not to use them all up.",
	},
	["race.nightelf.heal.w08.023"] = {
		"Let them walk on. The world is better with one more person in it who isn't bleeding.",
		"One more set back on their feet. The forest would approve; it always favors what grows.",
	},
	["race.nightelf.heal.w08.024"] = {
		"There, {target}. Go on, and may Elune keep you out of trouble. She rarely manages it with me.",
		"Better. Off you go, {target}, and try to come back without any new holes.",
	},
	["race.nightelf.rezother.w08.001"] = {
		"Come back. Elune has not finished with you.",
		"Wake. The moon still has a road for you to walk.",
		"Return. Even after Hyjal, not every ending has to be the last.",
	},
	["race.nightelf.rezother.w08.002"] = {
		"kneels and murmurs a long Darnassian phrase over the fallen, patient as the moon waiting on the tide.",
		"bows low over the fallen, silver light gathering in {g:his|her} eyes, and calls them back in the old tongue of the kaldorei.",
		"sits back on {g:his|her} heels beside the body and speaks to it softly, the way the priestesses speak to the very old and the very young.",
	},
	["race.nightelf.travel.w08.001"] = {
		"The hearthstone grows warm. My people distrust most magic, but a stone that only wants to go home is hard to dislike.",
		"A little stone that remembers one place and pulls toward it. My people, of all people, understand that.",
		"Home by way of a stone. Our elders would frown at the shortcut; my feet are grateful for it.",
	},
	["race.tauren.attack.w08.001"] = {
		"Here's a greeting from Mulgore!",
		"Take that back to whoever sent you, with a tauren's compliments!",
		"One more, and heavier!",
	},
	["race.tauren.attack.w08.002"] = {
		"puts the whole of {g:his|her} considerable weight behind the blow.",
		"drives forward with a snort, every bit of tauren bulk following through.",
		"strikes with the unhurried certainty of a falling tree.",
	},
	["race.tauren.attack.w08.003"] = {
		"Again. Patient as the herd, heavy as the herd.",
		"Strike, breathe, strike. Like hooves on hard ground, steady and without end.",
		"One blow, then the next. A stampede is only many small steps, all in the same direction.",
	},
	["race.tauren.attack.w08.004"] = {
		"Tauren are slow, you thought? Say that again.",
		"I'm big. That doesn't mean I miss.",
	},
	["race.tauren.buff.w08.001"] = {
		"Something settles in, deep as roots. Good. Now the road.",
		"Ready. The plains taught me to make ready before the stampede, not during it.",
		"There. A tauren prepares the way a herd prepares for the dry season: early, and without complaint.",
	},
	["race.tauren.buff.w08.002"] = {
		"Set. Whatever the road throws, it'll have to throw it at a tauren.",
		"There. All of this, ready at once. That's a lot of ready.",
	},
	["race.tauren.buff.w08.003"] = {
		"rolls {g:his|her} neck until it cracks, then waits a moment longer, letting the readiness settle into the bones.",
		"stamps each hoof once, left then right, testing the ground the way one does before a long walk.",
	},
	["race.tauren.buff.w08.004"] = {
		"Go with something of the wild in you, {target}. It'll keep you.",
		"There. Carry that with you; it's a gift the land makes through me.",
	},
	["race.tauren.buff.w08.005"] = {
		"One more ready for the road. A tauren likes a herd that's well prepared.",
		"That should hold a while. Like a good hide over a lodge pole: you forget it's there until the wind picks up.",
	},
	["race.tauren.heal.w08.001"] = {
		"Mending. Hide grows back thick on my people; we were made for thorns and long roads.",
		"Tauren skin is thick and tauren bones are thicker. This will knit.",
		"The body of a tauren is a stubborn thing. It mends out of spite, I think.",
	},
	["race.tauren.heal.w08.002"] = {
		"Better. That was a lot of tauren to patch up.",
		"There. Mending something my size takes patience, and I'm made of the stuff.",
		"Good. Big bodies need big repairs; luckily mine sits still for them.",
	},
	["race.tauren.heal.w08.003"] = {
		"Thank you, Earth Mother, for a body that heals. I'll try to give it fewer reasons.",
		"The Earth Mother made us to mend. I'm grateful, even when I make her work hard at it.",
		"Earth Mother, you gave my people thick hides for a reason. I keep finding out which.",
	},
	["race.tauren.heal.w08.004"] = {
		"Careless. A plainstrider that walks into a thorn bush learns; I should manage at least as much as a plainstrider.",
		"A hunter of the plains would laugh at that wound. Not at the wound: at how I got it.",
	},
	["race.tauren.heal.w08.005"] = {
		"That will do. The herd moves on, and so do I.",
		"Back on my hooves. There's still ground to cover.",
		"Good. Now the rest of me can catch up with the part that's still angry.",
	},
	["race.tauren.heal.w08.006"] = {
		"lets out a long, rumbling breath and rolls {g:his|her} great shoulders, testing that everything still turns the way it should.",
		"flexes one enormous hand, then the other, and grunts in quiet approval.",
		"shifts weight from hoof to hoof, slowly, as the hurt drains out of the big frame.",
	},
	["race.tauren.heal.w08.007"] = {
		"Linen enough for a sail, just to wrap one tauren arm. The cloth merchants must love us.",
		"A bandage made for a human barely goes round my wrist. I tie two together and call it craft.",
	},
	["race.tauren.heal.w08.008"] = {
		"Barely a mouthful for a tauren. They should sell these by the bucket.",
		"Tiny bottle, big tauren. The sums don't work, but the potion does.",
	},
	["race.tauren.heal.w08.009"] = {
		"Closed. The elders say every scar is a story the body keeps for you. Mine is getting talkative.",
		"Another mark to carry. In Mulgore the grizzled hunters wear theirs without fuss; I'll try to do the same.",
	},
	["race.tauren.heal.w08.010"] = {
		"Pain passes like a dry wind over Mulgore. It bends the grass; it never takes the roots.",
		"This will pass. The plains see a hundred hot winds a summer and stay green underneath.",
	},
	["race.tauren.heal.w08.011"] = {
		"Don't move, {target}. The Earth Mother is slow, but she misses nothing.",
		"Easy. Let the earth do its work; it has been mending things longer than any of us.",
		"There. You'll ache like a plainstrider that lost a race, but you'll walk.",
	},
	["race.tauren.heal.w08.012"] = {
		"Hold out your arm. No, I'm not going to sit on it.",
		"You're mended. Next time stand behind me; there's plenty of room back there.",
		"All patched. Try to get hit less; I can't make this out of nothing forever.",
	},
	["race.tauren.heal.w08.013"] = {
		"bows {g:his|her} great head toward the wounded one and murmurs to the Earth Mother in the low tongue of the plains.",
		"lays a huge, careful hand near the hurt and hums deep in the chest, a sound like hooves far off.",
		"speaks softly to the earth, then to the wounded, in the same patient voice.",
	},
	["race.tauren.heal.w08.014"] = {
		"In Mulgore, they say a healer is only someone who stops walking for another. I stopped.",
		"Mending someone is like sharing water on a dry road. Nobody keeps count, and everybody remembers.",
	},
	["race.tauren.heal.w08.015"] = {
		"Strong again. The herd is stronger with you in it.",
		"Go on, {target}. On the plains nobody gets left behind.",
		"Go. The Earth Mother didn't mend you so you could stand there watching.",
	},
	["race.tauren.heal.w08.016"] = {
		"The spirits were kind just now. I'll thank them when there's time, and there's never time.",
		"Another one mended. The Earth Mother lends; she never gives outright. Someday I'll owe a great deal.",
	},
	["race.tauren.rezother.w08.001"] = {
		"The Earth Mother gives you back, this once. Get up slowly.",
		"Not yet. The earth said not yet, and I agree with it.",
		"Breathe. The grass can wait for you a while longer.",
	},
	["race.tauren.rezother.w08.002"] = {
		"I think the spirit had already turned its face away. I called, and it looked back.",
		"My people say the dead walk the long road to the ancestors. This spirit I called from its first few steps.",
		"Life went back in like water into dry ground: slowly, then all at once. The Earth Mother allowed it.",
	},
	["race.tauren.travel.w08.001"] = {
		"My people walked for generations to get anywhere. I close my hand on a stone and skip the walking. The ancestors would have questions.",
		"A whole road folded into a pebble. Somewhere an elder of Mulgore is shaking a horned head at me.",
		"The stone warms, and a week of walking simply does not happen. The tauren who crossed Kalimdor on foot would call it cheating, and they would be right.",
	},
	["race.gnome.attack.w09.001"] = {
		"Measured twice, struck once!",
		"Calibrated, aimed, delivered!",
		"Right on the mark! I checked!",
	},
	["race.gnome.attack.w09.002"] = {
		"Gnomeregan sends this one!",
		"A small gift from the exiles!",
	},
	["race.gnome.attack.w09.003"] = {
		"Low and fast. Big things always forget to look down.",
		"Go for the knees. They're at eye level anyway.",
	},
	["race.gnome.attack.w09.004"] = {
		"darts in, strikes, and is already somewhere else before the foe has finished turning.",
		"lands the blow with a little hop of effort, small and startlingly precise.",
		"slips in under the foe's reach, strikes, and springs back out like a released catch.",
	},
	["race.gnome.buff.w09.001"] = {
		"Systems primed. Whatever comes next meets a gnome at full capacity.",
		"Upgrade installed. Feels nice, like a fresh drop of oil in every joint.",
		"There, settled in. Ready to run.",
	},
	["race.gnome.buff.w09.002"] = {
		"Optimized! Let's go and find something to test it on.",
		"All tuned up. The road can do its worst; I'll be taking notes.",
	},
	["race.gnome.buff.w09.003"] = {
		"rolls {g:his|her} shoulders and gives a short nod, as if something inside had just clicked into place.",
		"flexes small fingers one by one, like a tinker checking every joint of a delicate mechanism.",
		"straightens with a satisfied little hum, ready for whatever is next.",
	},
	["race.gnome.buff.w09.004"] = {
		"Upgrade installed, {target}! No refunds, but also no charge.",
		"There. You're running at better specs now, {target}.",
		"All set! Consider that a free improvement, gnome-certified.",
	},
	["race.gnome.heal.w09.001"] = {
		"Patch and proceed. Field repairs are never pretty, only fast.",
		"Seal the leak, check the pressure, keep going.",
		"Wound closed. Note to self: fewer wounds.",
	},
	["race.gnome.heal.w09.002"] = {
		"Repaired and running! A few scuffs, but the frame is sound.",
		"Back in working order! Warranty void, naturally.",
	},
	["race.gnome.heal.w09.003"] = {
		"inspects the closing hurt with the critical eye of someone grading a repair job.",
		"pokes gingerly at the mended spot and gives it a grudging passing mark.",
	},
	["race.gnome.heal.w09.004"] = {
		"Tastes like a laboratory accident, works like a small miracle. The best ones usually do.",
		"Bubbly, bitter, faintly glowing. Down it goes; gnomes trust any recipe that glows.",
	},
	["race.gnome.heal.w09.005"] = {
		"Topping up the demon from my own reserves. Even a furnace from the Nether needs feeding.",
		"My life, trickling into the demon. Maintenance is maintenance, whatever the machine.",
	},
	["race.gnome.heal.w09.006"] = {
		"goes a shade paler as {g:his|her} own strength drains into the demon, and keeps {g:his|her} chin up regardless.",
		"frowns up at the demon looming over {g:him|her} while feeding it from {g:his|her} own vigor, like someone refueling a very ungrateful engine.",
	},
	["race.gnome.travel.w09.001"] = {
		"A pebble that folds the whole road into a moment. I'd give a great deal to see the enchantment from the inside, and the stone would never forgive me.",
		"Stone in hand. It's the one gadget in my pocket I'm not tempted to take apart, mostly because it would never work again.",
		"The stone warms and tugs. I have no idea how it works, which for a gnome is the most irritating kind of magic there is.",
	},
	["race.orc.attack.w09.001"] = {
		"Red earth and green skin, all behind this one!",
		"Here's some of that orc strength you've heard about!",
		"Hit hard, hit first: that's how orcs do it!",
	},
	["race.orc.attack.w09.002"] = {
		"bares {g:his|her} tusks, and the attack goes out with a grunt from deep in the gut.",
		"narrows {g:his|her} eyes, tusks showing, and puts everything into it.",
		"snarls, low and short, like a Durotar wolf that warns once before it bites.",
	},
	["race.orc.attack.w09.003"] = {
		"Strength without rage. The elders say the Warchief taught us that, and it lands just as hard.",
		"No fury needed. Steady hands strike truer than a burning head.",
	},
	["race.orc.attack.w09.004"] = {
		"Too slow. Orcs don't wait for permission.",
		"You were still thinking about it. I wasn't.",
		"Hesitate in front of an orc once. Just once.",
	},
	["race.orc.buff.w09.001"] = {
		"Ready. Strength isn't something an orc hoards; it's for whoever needs it, and sometimes that's me.",
		"Set. Whatever comes now meets something prepared.",
	},
	["race.orc.buff.w09.002"] = {
		"rolls {g:his|her} shoulders and gives a low grunt, like a wolf settling before the hunt.",
		"squares up, tusks set, the readiness of {g:his|her} people plain in the stance.",
		"plants {g:his|her} feet and lets the readiness settle in, steady as red rock.",
	},
	["race.orc.buff.w09.003"] = {
		"There. Now the road can bring what it likes.",
		"Good. Whatever's waiting out there is in for an unpleasant surprise.",
		"Prepared. Durotar teaches you that much: nothing out there waits for you to be ready.",
	},
	["race.orc.buff.w09.004"] = {
		"Preparation is a kind of honor too. You owe it to whoever's counting on you.",
		"Thrall's orcs don't stumble in unready. That ended with the old Horde.",
	},
	["race.orc.heal.w09.001"] = {
		"Closing up. Orcs heal the way we argue: stubbornly, and with a lot of grumbling.",
		"Better. The body knows its job; it just complains about it, like any orc.",
		"Mending. Grumbling about it, too, but mending.",
	},
	["race.orc.heal.w09.002"] = {
		"Pain? I've heard of it. Not impressed.",
		"That's patched. Pain can wait outside with the rest of the complainers.",
		"Hurt? A little. Worried? Not at all.",
	},
	["race.orc.heal.w09.003"] = {
		"Teeth clenched round the sting, and then it's gone. Orcs don't make a ceremony of mending.",
		"No fuss. A wound is a debt the body pays off; I just stand there while it does.",
	},
	["race.orc.heal.w09.004"] = {
		"flexes a green hand, watches the torn skin pull closed, and grunts as if it were owed.",
		"rolls a shoulder until the stiffness gives, then nods at it, as at a stubborn wolf that finally obeyed.",
	},
	["race.orc.heal.w09.005"] = {
		"Patched up and needed. There's no time to be hurt with work still standing in front of me.",
		"Mend fast. Whatever's left out there won't wait while I lick my wounds.",
		"Good enough. The rest of the healing can happen on the move.",
	},
	["race.orc.heal.w09.006"] = {
		"That one would have made a fine scar. Orcs like scars. Pity.",
		"Almost a scar worth showing off. Almost.",
	},
	["race.orc.heal.w09.007"] = {
		"Careless. I walked straight into that one. The next foe gets more respect and less of my blood.",
		"My own fault, that. Pride swung first and thought second.",
	},
	["race.orc.heal.w09.008"] = {
		"Good. On my feet and twice as stubborn.",
		"There. Upright, and in a worse mood for whoever's next.",
		"Up again. Whatever knocked me down should have finished the job.",
	},
	["race.orc.heal.w09.009"] = {
		"Green hide, hard as a kodo's. The wound's already giving up.",
		"Orcs mend like the land in Durotar: slowly, harshly, and for good.",
	},
	["race.orc.heal.w09.010"] = {
		"Wrap it tight enough to make the eyes water. If it doesn't sting, it isn't tied.",
		"Cloth around it, pulled hard. Green skin under white linen; the linen won't stay white long.",
	},
	["race.orc.heal.w09.011"] = {
		"A green stone for a green orc. At least we match.",
		"Cold in the palm, warm in the gut. Strange little rock. Good little rock.",
	},
	["race.orc.heal.w09.012"] = {
		"Easy, {target}. The spirits of earth and water are listening. Let them work.",
		"Don't move. The elements owe me nothing, but they're generous today.",
		"Be still, {target}. The earth has mended worse than you.",
	},
	["race.orc.heal.w09.013"] = {
		"There, {target}. Try to bleed less; I'm not a well.",
		"All closed up. Next time, duck.",
		"Mended. You owe me a drink and an explanation.",
	},
	["race.orc.heal.w09.014"] = {
		"murmurs low words to the spirits, one green hand held over the wounded.",
		"speaks to the elements in a rough, quiet voice, the way an orc speaks to an old friend.",
	},
	["race.orc.heal.w09.015"] = {
		"The shamans' ways were nearly lost, the elders say, until the Warchief called the spirits again. Every wound I close, I owe him a little.",
		"Breaking is easy. Orcs got very good at it. Mending is the harder craft, and the better.",
	},
	["race.orc.heal.w09.016"] = {
		"Back in it, {target}. The Horde doesn't leave its own in the dirt.",
		"On your feet. Orcs carry their wounded, but I'd rather you walked.",
		"Stand, {target}. There's honor in getting up.",
	},
	["race.orc.heal.w09.017"] = {
		"Spirits, I asked and you answered. I'll thank you properly when this is over.",
		"The elements gave freely. An orc remembers a debt like that.",
	},
	["race.orc.heal.w09.018"] = {
		"A little of my own strength, fed to the demon. Bound and fed, and it serves; the other way round was the old Horde's mistake.",
		"Feed it from my own veins and keep the leash short. The old Horde let the demons hold the leash. Not me.",
	},
	["race.orc.rezother.w09.001"] = {
		"Not yet. The ancestors can keep your seat warm a while longer.",
		"Your road isn't done. The ancestors will have to be patient.",
		"Stay a while longer. There's still work for you on this side.",
	},
	["race.orc.rezother.w09.002"] = {
		"I called, and something answered from very far off. The spirits are kind, the shamans say, when the call is honest.",
		"Pulled back from the edge. Orcs have lost enough to death already; this one it doesn't get.",
	},
	["race.orc.rezother.w09.003"] = {
		"kneels, one fist pressed to the ground, and waits with grim patience for life to take hold.",
		"lowers {g:his|her} head and murmurs something rough and low, a plea to whatever spirits listen.",
	},
	["race.orc.travel.w09.001"] = {
		"A hearthstone: the one bit of magic every orc trusts. It knows only one word, and the word is home.",
		"I squeeze the stone and think of red dust. It is the closest thing an orc has to a prayer that always gets answered.",
		"The stone pulls. Some orcs grumble that walking builds character. Nobody grumbles on the way home.",
	},
	["race.scourge.attack.w09.001"] = {
		"Here's a chill for you, straight from Tirisfal!",
		"Brill sends its worst!",
		"A little Forsaken spite, delivered by hand!",
	},
	["race.scourge.attack.w09.002"] = {
		"strikes with a jerky, puppet-like snap of the arm, no strain on the dead face at all.",
		"lunges with the unnatural quickness of something that no longer feels its own joints.",
		"moves in with a rattle of loose bones and a blow that seems to come from nowhere.",
	},
	["race.scourge.attack.w09.003"] = {
		"No need to rest between blows. No lungs to fill, no heart to calm. Keep going.",
		"The dead don't tire in the arms. Again. And again.",
	},
	["race.scourge.attack.w09.004"] = {
		"And another! I've nowhere else to be.",
		"Patience is the one thing the grave gave me plenty of. Here's more.",
		"Don't wait for me to tire. You'll be waiting a long while.",
	},
	["race.scourge.buff.w09.001"] = {
		"Something settles over me, steady and cold. Good. I prefer my readiness cold.",
		"Prepared. The living get butterflies at a moment like this. I get a pleasant absence of them.",
		"Ready. No nerves to quiet. That's the one gift the grave gave freely.",
	},
	["race.scourge.buff.w09.002"] = {
		"There. Ready to go, or as ready as a corpse gets.",
		"All set. Don't tell me I look better; I know exactly how I look.",
		"Ready. The dead are always early; we have nothing else to do.",
	},
	["race.scourge.buff.w09.003"] = {
		"tightens a loose strap, rolls a stiff neck until it clicks, and turns toward whatever comes next.",
		"straightens up with a creak of dry sinew, every preparation made, and waits for nothing.",
	},
	["race.scourge.buff.w09.004"] = {
		"Here, {target}. Take a little of what keeps me going. I won't miss it.",
		"Take this. It will hold you longer than you'd think. Rather like me.",
		"Go on, {target}. You'll carry it better than I would.",
	},
	["race.scourge.buff.w09.005"] = {
		"Strengthening allies of my own choosing. The Lich King would be appalled; that alone makes it worth doing.",
		"I hand out protection now, freely, to whom I please. No one ordered it. That's the best part.",
		"Kindness from one of the dead. Let them make of it what they like; I'll make of it what I like.",
	},
	["race.scourge.heal.w09.001"] = {
		"Hold still, {target}. My hands are cold, but they know what they're doing.",
		"Easy now. Cold hands, steady work. You'll mend.",
		"Don't flinch at the chill, {target}. It's only me, putting you back together.",
	},
	["race.scourge.heal.w09.002"] = {
		"There. Mended by a corpse. Tell that one at the inn, {target}.",
		"Better? Good. Try not to think too hard about who fixed you.",
		"All patched. Yes, by one of the dead. You're welcome, and you may shudder later.",
	},
	["race.scourge.heal.w09.003"] = {
		"Strange work for one of the dead, this mending. I find I'm good at it, which is stranger still.",
		"I put others back together the way no one ever put me back together. Carefully. It seems the least I can do.",
		"Whatever I lost in the grave, the knack for mending came through. Funny, what survives.",
	},
	["race.scourge.heal.w09.004"] = {
		"bends over the wounded one with gray, careful hands, working in a silence that is oddly gentle.",
		"lays cold fingers on the wound with surprising tenderness, as though afraid of leaving frost behind.",
	},
	["race.scourge.heal.w09.005"] = {
		"The Light still answers me, {target}, though it stings going through. Worth it.",
		"There. The Light burns a little in my hands; it does its work on you all the same.",
	},
	["race.scourge.heal.w09.006"] = {
		"Stop squirming. I've mended worse, and some of the worst was me.",
		"Sit. Hold. There. And stop staring at my stitches; yours will be neater.",
		"Quit fidgeting, {target}. I'm faster when nobody watches my hands.",
	},
	["race.scourge.heal.w09.007"] = {
		"The Horde tolerates us because we are useful. Fine. Let them see how useful, one closed wound after another.",
		"Every ally I keep standing is an argument for the Forsaken. I intend to win the argument.",
	},
	["race.scourge.heal.w09.008"] = {
		"You'll live, {target}. Take it from an expert in the alternative.",
		"You'll be fine. I know a great deal about the other outcome, and this isn't it.",
	},
	["race.scourge.heal.w09.009"] = {
		"The dark has enough of us already. It's not getting you.",
		"Not yet, {target}. Trust me, there's no hurry to get where I've been.",
	},
	["race.scourge.heal.w09.010"] = {
		"The dead have little life to spare, and here I am pouring it into my demon. Someone should audit me.",
		"Whatever keeps me walking, I'm sharing with the thing at my heel. It had better be grateful. It won't be.",
	},
	["race.scourge.heal.w09.011"] = {
		"lets a thin, sickly thread of {g:his|her} own unlife flow into the demon, and turns a shade more gray for it.",
		"feeds the demon from {g:his|her} own stitched body, unmoved, as one might pour oil into a lamp.",
	},
	["race.scourge.heal.w09.012"] = {
		"The flesh pulls shut like a drawstring. No warmth comes with it. It never does.",
		"Torn edges creep back toward each other, slow and patient as roots. Not pretty, but it holds.",
		"The wound knits closed, cold and tidy. My body mends like furniture: without complaint, without comfort.",
	},
	["race.scourge.heal.w09.013"] = {
		"There. Held together for another day. That's all I ever ask.",
		"Patched. Not handsome, but nothing about me has been handsome for years.",
		"Mended enough. The rest can stay ugly; it's used to it.",
	},
	["race.scourge.heal.w09.014"] = {
		"The bones settle back where they belong. The rot steps back a pace. We'll argue again later, the rot and I.",
		"Decay held off a little longer. It's patient; so am I.",
		"The rot loses a little ground today. It will be back. It always comes back, and I always meet it.",
	},
	["race.scourge.heal.w09.015"] = {
		"watches a gash seal itself shut, then tugs at the edges as if testing a knot.",
		"presses the closing wound flat with two fingers, the way a tailor smooths down a fresh seam.",
	},
	["race.scourge.heal.w09.016"] = {
		"Enough of that. Back to it before anything else falls off.",
		"Closed up. Back in, before I lose interest.",
	},
	["race.scourge.heal.w09.017"] = {
		"Pain comes back to me faintly as the wound closes, like a word half-remembered. I almost miss it when it goes.",
		"The living feel relief when a wound closes. I feel a dull, distant quiet. It counts, I suppose.",
	},
	["race.scourge.heal.w09.018"] = {
		"That one was my own fault. The dead have no excuse for being careless; we've seen where it leads.",
		"I let that blow through. Careless. Being dead isn't the same as being invincible, however it feels.",
	},
	["race.scourge.heal.w09.019"] = {
		"Linen round the gash, pulled tight. The dead don't bleed much, but we do come apart. This keeps the pieces honest.",
		"A bandage for a body that barely bleeds. It's less a dressing than a bit of extra stitching.",
	},
	["race.scourge.heal.w09.020"] = {
		"A stone full of someone's stolen vigor. I won't ask whose. I'm in no position to judge.",
		"A warlock's stone, closed in the fist. Borrowed life for a body that runs entirely on borrowed time.",
	},
	["race.scourge.heal.w09.021"] = {
		"Closed. Now, where were we? Ah yes: you, losing.",
		"The stitches hold. Let's try that again, and this time I'm ready.",
		"That's mended. The Dark Lady didn't free me so I could fall over a scratch.",
	},
	["race.scourge.heal.w09.022"] = {
		"sits with the mending a moment, utterly still, no breath drawn and none needed, until the torn places have quietly gone away.",
		"flexes the newly closed hand once, twice, and studies it with the detached curiosity of an apothecary.",
	},
	["race.scourge.rezother.w09.001"] = {
		"Up you get. Trust me, it's better this way round; I've tried the other.",
		"Back with us. Count yourself lucky: when I came back, nobody asked me first.",
		"On your feet. You're getting the gentle version of what happened to me.",
	},
	["race.scourge.rezother.w09.002"] = {
		"I know what rising feels like. I'm making sure this one is kinder: whole, and still their own.",
		"Brought back with mind intact and will untouched. That's how it should be done. I would know.",
	},
	["race.scourge.rezother.w09.003"] = {
		"Keep this close. If you fall, you'll get up again. I know the way back; I've walked it.",
		"Insurance against the grave. Take it from someone who went without.",
	},
	["race.scourge.travel.w09.001"] = {
		"The hearthstone warms in my hand. Strange, to feel warmth coming from a stone and not from my own fingers.",
		"A stone that pulls me home. Death took me by the hand once, too; this grip is the gentler of the two.",
		"One squeeze of the stone and the miles vanish. For someone who once walked out of a grave, it's hardly the strangest trip.",
	},
	["race.troll.attack.w09.001"] = {
		"From Sen'jin, tusks and all!",
		"Take that, and take it home with you!",
		"Long reach, short temper!",
	},
	["race.troll.attack.w09.002"] = {
		"throws everything behind the attack, tusks bared, with a sharp hiss.",
		"lets out a short cackle as it hits home.",
		"grins wide as it lands, tusks first.",
	},
	["race.troll.attack.w09.003"] = {
		"Strike where it's soft. The jungle taught us that before anyone taught us anything.",
		"Quick and sure. A hunter's patience, then everything at once.",
		"Wait for it... now. Like stalking in the long grass.",
	},
	["race.troll.attack.w09.004"] = {
		"Try that one on for size!",
		"How about another, mon? I've got plenty.",
	},
	["race.troll.buff.w09.001"] = {
		"A tingle along the long bones, then quiet. Ready.",
		"Prepared. A hunter in the jungle readies before the hunt, never during.",
		"Set. Now whatever comes will find me awake and grinning.",
	},
	["race.troll.buff.w09.002"] = {
		"There. Now I'm a troll with a plan. Rare thing, mon.",
		"Everything in place, and I'm very pleased with myself.",
		"Good. Now I'm ready for trouble, and trouble had better be ready for me.",
	},
	["race.troll.buff.w09.003"] = {
		"shakes out {g:his|her} long arms one at a time, loose and ready for the road.",
		"taps one tusk twice with a fingertip, a small private habit before setting off.",
	},
	["race.troll.buff.w09.004"] = {
		"Here, {target}. A little something to see you through what's coming.",
		"Take this with you. The road is kinder to those who carry a little extra.",
		"There. Go well, and come back with all your limbs where they belong.",
	},
	["race.troll.buff.w09.005"] = {
		"Done. The Darkspear share what they have, and this is what I have.",
		"That'll hold a while. A small gift, and a troll gives gifts gladly.",
		"Shared. In Sen'jin nobody eats alone, and nobody sets off unready either.",
	},
	["race.troll.heal.w09.001"] = {
		"Closing up. Troll flesh never needed much encouragement, only a moment.",
		"There. Skin pulls together, knits, forgets. I wish my pride healed as fast.",
		"Mending. Trolls heal the way the jungle grows back over a path: fast, and without asking.",
	},
	["race.troll.heal.w09.002"] = {
		"Better. I'd have healed anyway, but I'm in a hurry today.",
		"Good as new. Well, good as yesterday, and yesterday was fine.",
	},
	["race.troll.heal.w09.003"] = {
		"Careless. A raptor that bleeds like that gets eaten by the next raptor. Learn, troll.",
		"That one was my own fault. The jungle doesn't forgive twice, the hunters say.",
	},
	["race.troll.heal.w09.004"] = {
		"Up and ready. Whoever did that, I'm coming back for them.",
		"Patched. Whatever comes next, it meets a whole troll.",
		"Back on my feet. Long legs, short memory for pain.",
	},
	["race.troll.heal.w09.005"] = {
		"runs a long thumb over the closing wound and gives a grunt of approval.",
		"flexes {g:his|her} long fingers, watching the torn skin draw itself back together.",
		"rolls one shoulder, then the other, testing the mended flesh with mild interest.",
	},
	["race.troll.heal.w09.006"] = {
		"Better. I thank the spirits for a body this stubborn, though they'd say I give it too much practice.",
		"The witch doctors say troll blood remembers the jungle. Right now it remembers how to close a wound.",
	},
	["race.troll.heal.w09.007"] = {
		"Cloth on a troll is mostly decoration. Still, it keeps the flies off while the skin gets busy.",
		"Long arms take a long bandage, and I always run short around the elbow.",
	},
	["race.troll.heal.w09.008"] = {
		"Tastes like swamp water and old coins. Works, though.",
		"Down in one gulp. A witch doctor's brew tastes worse and does less.",
	},
	["race.troll.heal.w09.009"] = {
		"Trolls hardly scar. Sometimes I wish we did; a few marks might remind me to be careful.",
		"By tomorrow the wound will be gone, and the lesson with it. That's the trouble with healing fast.",
		"Shut already. Troll flesh has a short memory; I try to keep a longer one for it.",
	},
	["race.troll.heal.w09.010"] = {
		"Enough fuss. It's closed. Let's go.",
		"That'll hold. Trolls don't sit around nursing scratches.",
	},
	["race.troll.heal.w09.011"] = {
		"Easy, {target}. The spirits are listening; let them work.",
		"Hold still a moment. This mends faster if you stop wriggling.",
		"Breathe. Whatever spirit is listening, it's on your side right now.",
	},
	["race.troll.heal.w09.012"] = {
		"There. You don't heal like a troll, so I'll do the healing for both of us.",
		"All better. Try ducking next time; ducking is cheaper than me.",
		"Patched up, {target}. Off you go, and keep your head lower.",
	},
	["race.troll.heal.w09.013"] = {
		"murmurs low over the wounded, long fingers spread wide, swaying a little as the healing takes hold.",
		"hums a rolling Darkspear tune under {g:his|her} breath while the wound draws closed.",
		"clicks {g:his|her} tongue against a tusk, intent, as the color comes back to the hurt one's face.",
	},
	["race.troll.heal.w09.014"] = {
		"Trolls heal on their own; most folk don't. Lending them a little of what my people have feels only fair.",
		"Someone else's wound, closing under my hands. It feels better than closing my own.",
	},
	["race.troll.heal.w09.015"] = {
		"The loa, the Light, the spirits: I don't ask which one answered. I just thank them all.",
		"Whatever spirit listens, it listened. I'll leave something by the fire for it later.",
	},
	["race.troll.heal.w09.016"] = {
		"Up, {target}. Nobody falls while a Darkspear healer is watching.",
		"You fight, I mend. That's the deal.",
	},
	["race.troll.heal.w09.017"] = {
		"Stop bleeding on my feet. There. Better.",
		"You'll live. Try not to make me regret it.",
		"Quit squirming. I'm good, but I'm not that good.",
	},
	["race.troll.heal.w09.018"] = {
		"So fragile, the ones who don't grow back. I keep them stitched together as best I can.",
		"Every heal I give is a small argument with death. This one I won.",
	},
	["race.troll.heal.w09.019"] = {
		"leans over the hurt one and blows softly across the wound, a gesture that looks older than any spell.",
		"spreads both hands and speaks a few rolling words in the trolls' own tongue, steady and unhurried.",
	},
	["race.troll.heal.w09.020"] = {
		"Stay with me, {target}. Eyes up here; the wound can manage without you watching it.",
		"There we go. Put back together. Mostly.",
	},
	["race.troll.rezother.w09.001"] = {
		"Come back. The loa can wait for you a little longer.",
		"Up you get. The spirits weren't ready for you, and neither was I.",
		"Not your time. I asked nicely, and the spirits agreed.",
	},
	["race.troll.rezother.w09.002"] = {
		"The witch doctors say the dead walk a long beach before they go. I just called someone back from it.",
		"A spirit turned around on its road and came back. It always feels like a small wonder, and like a debt.",
		"Back from the spirits. Breathe slow. The world is loud after the quiet.",
	},
	["race.troll.travel.w09.001"] = {
		"A turn of the stone and the road folds up behind me. The witch doctors would say the spirits carry me. I say thanks to whoever it is.",
		"The stone hums in my palm. Shortcut magic. The loa are probably laughing, watching a troll skip a week of walking.",
		"Close the fist, think of the hearth, and the world smears like wet paint. My people crossed a sea on crowded boats; I cross a continent in a breath.",
	},
	["band.b60.attack.w10.001"] = {
		"Here's where the long road pays off.",
		"Everything I learned, aimed at you.",
	},
	["band.b60.attack.w10.002"] = {
		"Right where it's weakest. I know where to look now.",
		"No wasted effort. Find the gap, strike it.",
	},
	["ctype.beast.attack.w10.001"] = {
		"Here's a bite of my own!",
		"Teeth aren't the only thing that hurts!",
		"Down, beast! Down!",
	},
	["ctype.beast.attack.w10.002"] = {
		"Strike when it gathers itself to spring. That's the opening.",
		"Hit it as it coils. Never after.",
	},
	["ctype.beast.attack.w10.003"] = {
		"times the blow to the beast's lunge and meets it halfway.",
		"strikes low as the creature rises, as quick as any predator.",
	},
	["ctype.elemental.attack.w10.001"] = {
		"Strike at the center, where it holds itself together.",
		"Hit where the shape is thickest. That's the knot.",
	},
	["ctype.humanoid.attack.w10.001"] = {
		"Saw that one coming? Didn't think so.",
		"Guess where the next one lands.",
	},
	["ctype.humanoid.attack.w10.002"] = {
		"Guarding high. Go low.",
		"The guard drops after every swing. There.",
	},
	["ctype.humanoid.attack.w10.003"] = {
		"feints once, waits for the foe to take the bait, and strikes into the opening.",
		"strikes the instant the foe commits, and not a moment sooner.",
		"answers the foe's move before it's finished.",
	},
	["mood.city.travel.w10.001"] = {
		"The stone warms in the middle of the crowd. Nobody here will notice one face fewer, and that makes leaving easy.",
		"Hearthstone in hand, somewhere between a stall and a guard post. The city goes on haggling while I fade out of it.",
	},
	["weather.clear.travel.w10.001"] = {
		"Fine weather to walk in, and here I am taking the shortcut. The road can keep its good mood without me.",
		"An empty sky, a dry road, and I'm folding it all away into a stone. Somebody apologize to the weather for me.",
	},
	["heal.w14.care.001"] = {
		"Let it knit, {target}. Moving now only makes it work twice as hard.",
		"No need to move. Give the mending a quiet minute.",
		"Patience. Mending hates to be hurried.",
	},
	["heal.w14.care.002"] = {
		"{target}, I'm staying beside you until this is done. Nobody leaves you here.",
		"I'm not going anywhere. Right beside you until it's over.",
		"You have company until the end of this.",
	},
	["heal.w14.care.003"] = {
		"It will hold. I've put everything I have into it, and it will hold.",
		"This will hold. You have my word on that.",
		"Mark me, it holds. I made sure of it.",
	},
	["heal.w14.care.004"] = {
		"A little longer. Feel it easing? That's the worst going out of it.",
		"Nearly done. The worst of it is already behind you.",
		"Almost. Let the last of the ache drain away.",
	},
	["heal.w14.care.005"] = {
		"Rest the weight on me for a moment. That is what I am here for.",
		"Set it down a while. Carrying it is my task now.",
		"That burden's mine a while. You rest.",
	},
	["heal.w14.care.006"] = {
		"Whatever comes, {target}, it comes through me first.",
		"Anything that wants you will have to get past me.",
		"Stay at my back. Nothing gets to you unless it gets to me.",
	},
	["heal.w14.care.007"] = {
		"I've got you. You can stop holding yourself together; that's my job now.",
		"I have you. Let go of it, I'll do the holding.",
		"Lean on me. Right now I'm the one holding.",
	},
	["heal.w14.care.008"] = {
		"Don't go anywhere, {target}. Not while I can still do something about it.",
		"Stay. As long as my hands can work, you stay.",
		"Stay, {target}. I'm asking you to stay.",
	},
	["heal.w14.care.009"] = {
		"Let what was broken here be mended, and let it stay mended.",
		"Closed and sound. May nothing open it soon.",
		"Mended, and mended well. Let it last.",
	},
	["heal.w14.care.010"] = {
		"Find something steady to look at. Let it be me.",
		"Fix your eyes on something that isn't moving. I'm not moving.",
		"Look here, at me. I'm the still point.",
	},
	["heal.w14.care.011"] = {
		"Feel it? Your strength is finding its way back to you.",
		"{target}, your strength is coming back. Let it settle first.",
		"There it is, your strength. I can feel it coming.",
	},
	["heal.w14.care.012"] = {
		"It looks worse than it is. I promise you, it only looks worse.",
		"Uglier than it is dangerous. You'll come through.",
		"Ugly, yes. Serious, no. Trust me on this.",
	},
	["heal.w14.care.013"] = {
		"While I stand here, no hurt of yours goes untended.",
		"No wound of yours goes unanswered while I'm near.",
		"Your hurts are answered here. Every one.",
	},
	["heal.w14.care.014"] = {
		"Shh. Quiet now. The mending knows its own way.",
		"Quiet, {target}. It's doing what it should.",
		"Hush now. Let it run its course.",
	},
	["heal.w14.care.015"] = {
		"Not you. I've no intention of losing you to this.",
		"I refuse to lose you here, {target}. I simply refuse.",
		"Not like this. You're not going like this.",
	},
	["heal.w14.care.016"] = {
		"Go on when you're ready, and not a moment sooner.",
		"No rush. I'll keep watch until you're ready to move.",
		"Take all the time it needs. I'll mind the rest.",
	},
	["heal.w14.care.017"] = {
		"It may leave a mark. A mark is all it will leave, I promise.",
		"A scar, at worst. Nothing more than that.",
		"A mark, maybe. Marks fade, or become stories.",
	},
	["heal.w14.care.018"] = {
		"I take this hurt in hand, {target}. It's mine to deal with now, not yours.",
		"Leave the hurt to me. It answers to me now.",
		"Give me the hurt. I'll hold it for you.",
	},
	["heal.w14.care.019"] = {
		"You'll walk away from this, {target}. On your own feet, too.",
		"You're walking away from this. I've decided.",
	},
	["heal.w14.care.020"] = {
		"Let me do the worrying. You only have to keep still.",
		"Worry is my part. Yours is to rest.",
	},
	["heal.w14.care.021"] = {
		"For a moment there is only this, and I am taking care of it.",
		"Just this, for now. I'm seeing to it.",
	},
	["heal.w14.care.022"] = {
		"You've given enough for one stretch. Let me give a little back.",
		"You've spent plenty. Here is some of it returned.",
	},
	["heal.w14.care.023"] = {
		"There's no shame in needing mending. It comes to everyone, sooner or later.",
		"No shame in it, {target}. Everyone gets hurt sometime.",
		"Hurt isn't failure. It's just hurt, and I'm here for it.",
	},
	["heal.w14.care.024"] = {
		"I can't undo what happened to you. I can make sure it ends here.",
		"The harm is done. Its staying is not.",
		"What's done is done. What comes next is mine.",
	},
	["heal.w14.care.025"] = {
		"Slowly. That's it, slowly. You're doing fine.",
		"Gently does it. You're doing well.",
		"Steady on. You're doing everything right.",
	},
	["heal.w14.care.026"] = {
		"Whatever tried to break you didn't manage it. I'll see that it never does.",
		"It tried to break you and failed. Now it fails for good.",
	},
	["heal.w14.care.027"] = {
		"Be at peace a moment, {target}. Nothing is asked of you.",
		"For now nothing is asked of you. Only rest.",
		"Rest. You've nothing to prove to anyone just now.",
	},
	["heal.w14.care.028"] = {
		"I see it. I know exactly where it hurts, and I'm on it.",
		"I see where it hurts. I'm already there.",
		"Found it. That's the trouble, and it's closing.",
	},
	["heal.w14.care.029"] = {
		"There's more to you than this hurt knows. It's about to find out.",
		"This hurt misjudged you badly. It's leaving now.",
		"It picked the wrong one to hurt.",
	},
	["heal.w14.care.030"] = {
		"The deep part is closed, {target}. What's left is only soreness.",
		"The deep hurt is sealed. Only the ache remains.",
	},
	["heal.w14.care.031"] = {
		"Forget this hurt, {target}. If anyone has to remember it, let it be me.",
		"Let it go from your mind. I'll keep the memory instead.",
	},
	["heal.w14.care.032"] = {
		"Every hurt within my reach gets closed. Yours is within my reach.",
		"You're within reach. That's all it takes.",
	},
	["heal.w14.care.033"] = {
		"You don't have to be brave right now. I'll be brave enough for two.",
		"Set the courage down a moment. I have enough for two.",
		"Fear's allowed. I've got courage enough to cover it.",
	},
	["heal.w14.care.034"] = {
		"Someone came for you, {target}. That matters more than you know.",
		"Somebody came. Remember that, whatever else you forget.",
		"You weren't forgotten. Hold onto that.",
	},
	["heal.w14.care.035"] = {
		"Go carefully now, {target}, and go mended.",
		"Walk on, whole and steady. That's all I ask.",
		"Onward, then, and go gently.",
	},
	["heal.w14.care.036"] = {
		"Right here, {target}. Close enough that you needn't wonder.",
		"I'm close. Close enough to count on.",
		"Close by, {target}. Always within arm's reach.",
	},
	["heal.w14.care.037"] = {
		"May this hold as long as you need it to, and a little longer.",
		"Let it hold, and hold longer than it has to.",
		"Hold fast, and keep holding.",
	},
	["heal.w14.care.038"] = {
		"You don't owe me anything for this. Not thanks, not an apology.",
		"Nothing owed. Not a word of thanks.",
		"This one's free. They all are.",
	},
	["heal.w14.care.039"] = {
		"It came looking for you and found me in the way. Unlucky.",
		"It reached for you and found me first.",
		"You were its target. I was its problem.",
	},
	["heal.w14.care.040"] = {
		"I'll stay until you're steady. However long that takes.",
		"However long steady takes, I'll wait it out with you.",
	},
	["heal.w14.care.041"] = {
		"This is what these hands are for. Let them work.",
		"These hands were made for exactly this.",
		"Let my hands do what they know.",
	},
	["heal.w14.care.042"] = {
		"Both of us walk away from this. That's the only ending I'll accept.",
		"You and I both see the end of this. I insist.",
	},
	["heal.w14.care.043"] = {
		"Let me see. Mm. Yes. This I can fix.",
		"Good, this one I know how to close.",
		"Ah. I know this one. It closes nicely.",
	},
	["heal.w14.care.044"] = {
		"I know it hurts. I know. It won't for much longer.",
		"It hurts, I know. Not for long now.",
		"Burns, doesn't it? It's passing. Feel it pass.",
	},
	["heal.w14.care.045"] = {
		"You're worth every bit of this, {target}. Never think otherwise.",
		"Worth it. You're worth it. Remember that.",
	},
	["heal.w14.care.046"] = {
		"Rest your head a moment. Nothing needs you this minute.",
		"Head down, eyes closed if you like. Nothing is waiting on you.",
		"Close your eyes if it helps. I'll keep mine open.",
	},
	["heal.w14.care.047"] = {
		"From this moment your wounds are mine to carry, {target}.",
		"Hand your hurts over to me. I'll see them out the door.",
	},
	["heal.w14.care.048"] = {
		"There's plenty of life left in you. I can feel it pushing back.",
		"Plenty left in you. It's struggling to stay, and so am I.",
		"Something in you wants to stay. I'm on its side.",
	},
	["heal.w14.care.049"] = {
		"moves slowly and keeps {g:his|her} hands where they can be seen, the way one approaches anything in pain.",
		"approaches the hurt one slowly: nothing sudden, nothing loud.",
		"comes near without haste, open hands in plain sight.",
	},
	["heal.w14.care.050"] = {
		"settles beside {target} and stays put, steady and quiet, until the hurt eases.",
		"stays close and patient, asking nothing, until the hurt eases off.",
	},
	["heal.w14.care.051"] = {
		"steadies the hurt one with a hand that does not shake, and does not let go too soon.",
		"keeps a firm hold, gentle and unshaking, until the mending is done.",
	},
	["heal.w14.care.052"] = {
		"clears the grime from around the wound first, with the care of someone cleaning a treasured thing.",
		"brushes the dirt from the edges of the hurt before anything else.",
	},
	["heal.w14.care.053"] = {
		"bends close to {target} and says something too softly for anyone else to catch.",
		"leans in and speaks low, meant for the hurt one's ears alone.",
	},
	["heal.w14.care.054"] = {
		"waits with one hand resting lightly near the hurt, patient as a held door.",
		"keeps still beside the hurt one, as patient as someone holding a door open.",
	},
	["heal.w14.care.055"] = {
		"shifts {g:his|her} footing to stand between the hurt one and whatever might come next.",
		"steps in front of the one being mended, as if to take the next blow.",
	},
	["heal.w14.care.056"] = {
		"stays close and unmoving, patient as stone, until the work on {target} is finished.",
		"keeps vigil over the mended one well after there is nothing left to mend.",
	},
	["heal.w14.care.057"] = {
		"gives the hurt one a slow nod, the kind that says all is in hand.",
		"nods, slow and certain, as if to say the worst is handled.",
	},
	["heal.w14.care.058"] = {
		"keeps every movement small and deliberate, so as not to jar the wound.",
		"works with small, careful motions, never once jarring the hurt.",
	},
	["heal.w14.care.059"] = {
		"lingers by {target} a moment longer than needed, just to be sure.",
		"lingers after the work is done, only to be certain it holds.",
	},
	["heal.w14.care.060"] = {
		"bows {g:his|her} head briefly over the hurt one, as if the task deserved some ceremony.",
		"pauses, head lowered, as one pauses at a threshold.",
	},
	["heal.w14.care.061"] = {
		"takes some of the hurt one's weight onto {g:his|her} own shoulder for a moment, without being asked.",
		"bears a little of the hurt one's weight, quietly, as if it were nothing.",
	},
	["heal.w14.care.062"] = {
		"works quickly but never hastily, as if speed and care had made their peace.",
		"moves fast without a single careless motion.",
	},
	["heal.w14.care.063"] = {
		"says {target}'s name once, softly, the way one calls someone back from far off.",
		"speaks to the hurt one low and even, like a hand held out.",
	},
	["heal.w14.care.064"] = {
		"sets everything else aside, and gives the hurt one {g:his|her} whole attention.",
		"lets the rest of the world drop away and attends to this one hurt.",
	},
	["heal.w14.care.065"] = {
		"stands over the one being mended like a wall that has decided not to fall.",
		"holds {g:his|her} ground over the hurt one, plain and unmovable as a doorpost.",
	},
	["heal.w14.care.066"] = {
		"doesn't let go of {target} until certain the footing is sure.",
		"keeps a hand ready until the hurt one stands steady without help.",
	},
	["heal.w14.care.067"] = {
		"treats the hurt with the gravity of someone keeping a promise.",
		"tends the wound solemnly, as one honors an old vow.",
	},
	["heal.w14.care.068"] = {
		"offers the hurt one a small, steady smile, meant to say there's nothing to fear.",
		"smiles, just slightly, as if this were the easiest thing in the world.",
	},
	["heal.w14.care.069"] = {
		"Gentle hands. Pain makes anyone skittish, and skittish things are hard to mend.",
		"Go softly. Hurt makes anyone wary.",
		"Softly. Pain sharpens every touch.",
	},
	["heal.w14.care.070"] = {
		"Let them feel someone is here. Half the mending is that.",
		"Being there counts for something. Maybe for nearly everything.",
	},
	["heal.w14.care.071"] = {
		"Steady voice, steady hands. Calm is catching; let them catch mine.",
		"If I stay calm, some of it will rub off.",
		"Calm spreads. Be the place it spreads from.",
	},
	["heal.w14.care.072"] = {
		"Whoever this is, right now nothing I could be doing matters more.",
		"For this moment, this one matters most. Simple as that.",
	},
	["heal.w14.care.073"] = {
		"Speak softly, move slowly, and promise only what I can keep.",
		"Soft words, slow hands, honest promises. That's all the art there is.",
	},
	["heal.w14.care.074"] = {
		"No speeches. What's wanted is to hear it will hold, so say it plainly.",
		"Keep it simple: it will hold. Nothing else needs saying.",
	},
	["heal.w14.care.075"] = {
		"Something broke, and it's being made right. Few things in the world go that way round.",
		"Broken, then mended. Not much goes in that direction.",
	},
	["heal.w14.care.076"] = {
		"Nobody ought to be hurt and alone at once. I can fix at least the second.",
		"Hurt and alone is too much for anyone. At least it isn't alone.",
	},
	["heal.w14.care.077"] = {
		"If it can be mended, it will be. I keep no other rule.",
		"What can be mended gets mended. That's my only law.",
	},
	["heal.w14.care.078"] = {
		"Keep the worry off my face. The hurt one will look there first.",
		"Not a flicker of doubt. My face is what gets read.",
	},
	["heal.w14.care.079"] = {
		"A kind word costs nothing here and does more than it has any right to.",
		"Kindness is the cheapest thing I carry, and never the least useful.",
	},
	["heal.w14.care.080"] = {
		"Whether anyone asked me to doesn't come into it.",
		"Asked or not, it's the same: the hurt gets tended.",
		"Mending isn't a favor. It's just what happens here.",
	},
	["heal.w14.grit.001"] = {
		"Closed. The part of me that wanted to quit can sit down and be quiet now.",
		"The wound shut before the doubt could finish its speech.",
	},
	["heal.w14.grit.002"] = {
		"On my feet, and staying there.",
		"Upright. I mean to keep it that way for a good while.",
		"The legs hold. They'll do as they're told.",
	},
	["heal.w14.grit.004"] = {
		"Remember where that came from. The wound closes; the lesson shouldn't.",
		"Shut the wound, keep the memory of how I earned it. That part stays.",
		"The flesh can forget. I'm not allowed to.",
	},
	["heal.w14.grit.005"] = {
		"Whole enough to keep my word. That is what this was for.",
		"The flesh is patched, so the promise holds. Onward.",
	},
	["heal.w14.grit.006"] = {
		"No one was coming to fix this. So I did. That's the whole of the secret.",
		"Nobody else was going to put me back together. Fine. Then it's mine to do.",
		"Self-mended. The one kind of help that never fails to turn up.",
	},
	["heal.w14.grit.007"] = {
		"straightens by degrees, squaring up to the place the hurt came from.",
		"rises to full height, unhurried, and sets {g:his|her} jaw.",
		"pulls {g:himself|herself} upright and turns to face what is left to do.",
	},
	["heal.w14.grit.008"] = {
		"Enough to go on with. Not a drop of strength more than I need; the rest stays in reserve.",
		"Spend it carefully. What came back has to last.",
		"Thrift. Strength is a purse, not a well.",
	},
	["heal.w14.grit.009"] = {
		"Closed. I'll be harder to put down this time around.",
		"Shut tight. It takes more than that to drop me.",
		"Sealed up. Whatever comes next finds less to work with.",
	},
	["heal.w14.grit.010"] = {
		"Every closed wound is a door I didn't walk through. I'll keep the latch on this one.",
		"There was a door there, for a moment. It's shut. I'm on this side of it.",
	},
	["heal.w14.grit.011"] = {
		"Lesson taken. I'd rather not need it twice.",
		"Understood. That one I keep.",
		"Noted, and kept.",
	},
	["heal.w14.grit.012"] = {
		"Stubbornness is cheap and it never runs out. Good: I'll need plenty of it.",
		"Of everything I carry, the stubbornness weighs least and lasts longest.",
		"Stubborn costs nothing. It's the one thing I'm rich in.",
	},
	["heal.w14.grit.013"] = {
		"tests the mended place with a little weight, then a little more, then all of it.",
		"puts weight on the hurt side, carefully, and finds that it holds.",
	},
	["heal.w14.grit.014"] = {
		"Fixed. There's work, and it won't wait while I feel sorry for myself.",
		"Mended. Self-pity can file a complaint later.",
		"Back in order. The sulking will have to be scheduled.",
	},
	["heal.w14.grit.015"] = {
		"A scar is a note the body writes. I'd rather take the note myself and spare it the ink.",
		"Learn it now, in the head, so the skin doesn't have to learn it for me.",
	},
	["heal.w14.grit.016"] = {
		"Closed already. Whatever opened it was too slow.",
		"It had its chance. It didn't take it.",
	},
	["heal.w14.grit.017"] = {
		"One day nothing will close it. That day is somewhere else, far from here.",
		"There will be a wound that doesn't shut. It isn't this one.",
		"Not this wound. Not this one.",
	},
	["heal.w14.grit.018"] = {
		"Get up, keep moving, finish it. Three things. I can manage three things.",
		"Up, onward, done. Short list. A short list fits in an aching head.",
	},
	["heal.w14.grit.019"] = {
		"Mark it down: hit, mended, moving.",
		"Write it in the ledger: struck, closed, carried on.",
	},
	["heal.w14.grit.020"] = {
		"Tired is not the same as finished. I know the difference, and so does the body.",
		"Weary, yes. Done, no. Two different words; I keep them apart.",
		"Worn down is a long way from done.",
	},
	["heal.w14.grit.021"] = {
		"widens {g:his|her} stance a little, as if it would take a good deal more to move {g:him|her} now.",
		"shifts into a firmer stance, with no intention of giving an inch.",
	},
	["heal.w14.grit.022"] = {
		"That's one I won't let land twice.",
		"Saw that one too late. It won't happen twice.",
		"The same trick won't work on me twice.",
	},
	["heal.w14.grit.023"] = {
		"Close only what slows me down. The rest can ache; aches have things to teach.",
		"Shut what matters, leave the bruises. Bruises are good at reminding.",
	},
	["heal.w14.grit.024"] = {
		"The body is a borrowed thing. I've just paid a little more of the rent.",
		"Nobody owns this flesh outright. I keep it in repair, and it lets me stay.",
	},
	["heal.w14.grit.025"] = {
		"Up, and in a worse temper than before.",
		"Mended. My mood, much less so.",
	},
	["heal.w14.grit.026"] = {
		"Fear did all the talking while it hurt. Now it can wait outside.",
		"Fear chattered the whole while. It's gone quiet. Good.",
		"The fear had the floor while the hurt lasted. The floor is mine now.",
	},
	["heal.w14.grit.027"] = {
		"looks at the closed wound a moment longer than needed, then deliberately looks away.",
		"studies the place where it nearly went wrong, and then turns {g:his|her} back on it.",
		"looks at the closed wound, then pointedly away.",
	},
	["heal.w14.grit.028"] = {
		"I've got more in me than that. Plenty more.",
		"Something's always left, if I go looking.",
	},
	["heal.w14.grit.029"] = {
		"Strength restored is a charge, not a gift. I'll answer for how it's spent.",
		"Given back, so it can be spent on something worth it.",
	},
	["heal.w14.grit.030"] = {
		"Stood where I shouldn't have. Next time, half a step farther over.",
		"Wrong place, wrong moment. My fault, and fixable.",
	},
	["heal.w14.grit.031"] = {
		"Down is a direction I'm not taking.",
		"I'll fall when I choose to, and I don't choose to.",
		"Not down. Not now.",
	},
	["heal.w14.grit.032"] = {
		"I'll carry the fright a while longer than the wound. The fright is the useful part.",
		"The wound's gone; the fright stays. The fright is what keeps me careful.",
		"Keep the fright, lose the wound. Fair trade.",
	},
	["heal.w14.grit.033"] = {
		"A fine try. Not good enough, but a fine try.",
		"Full marks for trying. No marks at all for finishing.",
	},
	["heal.w14.grit.034"] = {
		"Each mending leaves me a little harder to break. That's the trade, and I'll take it.",
		"Each hurt shows me a gap in my guard. This one's shown, and this one's shut.",
	},
	["heal.w14.grit.035"] = {
		"goes very still for a moment, like someone who has just stepped back from an edge without a rail.",
		"pauses, quite still, then shakes the moment off like water from a coat.",
	},
	["heal.w14.grit.036"] = {
		"Picking up where I left off.",
		"Where was I? Ah, yes. Winning.",
		"Back where I was.",
	},
	["heal.w14.grit.037"] = {
		"My hands stopped shaking before the wound finished closing. I'll count that as mine.",
		"The shaking stopped first, then the hurt. The first of those was my doing.",
	},
	["heal.w14.grit.038"] = {
		"If anyone is counting on me, they want me standing, not explaining.",
		"Excuses mend nothing. Getting up does.",
		"Standing explains itself.",
	},
	["heal.w14.grit.039"] = {
		"Pain had its turn. Mine now.",
		"The hurt spoke first. I'll be the one who finishes.",
	},
	["heal.w14.grit.040"] = {
		"For a moment there was nothing under my feet but luck. There's ground again.",
		"Luck held me up for a moment. Now my own legs can take over.",
	},
	["heal.w14.grit.041"] = {
		"Pride opened it. Good sense closed it. I know which one to listen to.",
		"Pride for the opening, judgment for the closing. Remember which is which.",
	},
	["heal.w14.grit.042"] = {
		"I stand. Let that be my answer.",
		"Upright, and that is the whole of my reply.",
	},
	["heal.w14.grit.043"] = {
		"draws {g:himself|herself} up slowly, with the gravity of someone taking back a duty set down only a moment ago.",
		"squares {g:his|her} shoulders as if settling a heavy mantle back in place.",
	},
	["heal.w14.grit.044"] = {
		"Pain always asks whether it's worth it. It is.",
		"Every wound asks if I mean it. Every time, I do.",
	},
	["heal.w14.grit.045"] = {
		"Slower next time. Smarter, too.",
		"Less haste. More looking. Got it.",
		"Lesson: look first.",
	},
	["heal.w14.grit.046"] = {
		"Nobody leaves this world whole. I just mean to leave a good deal later.",
		"Everyone runs out in the end. My end is nowhere within reach.",
		"Mortal, yes. Punctual, no.",
	},
	["heal.w14.grit.047"] = {
		"No sitting. Sitting turns into lying down, and lying down turns into staying.",
		"If I sit now I'll want to stay. So I won't sit.",
		"Keep standing. Standing is half of everything.",
	},
	["heal.w14.grit.048"] = {
		"Patched, and pointed forward.",
		"Mended, and facing the right way.",
		"Whole enough, and eyes front.",
	},
	["heal.w14.grit.049"] = {
		"Good thing the body is a patient teacher. I learn slowly.",
		"The body teaches, I forget, the body raises its voice. I'd rather it didn't have to.",
	},
	["heal.w14.grit.050"] = {
		"There's still a job half done. Half done jobs don't get finished lying about.",
		"Half a task waits. It won't finish itself while I nurse a scratch.",
		"Unfinished business doesn't care how I feel.",
	},
	["heal.w14.grit.051"] = {
		"works a crick out of {g:his|her} neck and squares up to whatever comes next.",
		"gives one short nod to nobody in particular, and moves on.",
	},
	["heal.w14.grit.052"] = {
		"It came close. Close was all it managed.",
		"Near. Near isn't the same as there.",
	},
	["heal.w14.grit.053"] = {
		"Don't spend it all at once. Strength comes back slower than it goes.",
		"Careful with what's returned. It leaves in a rush and comes home slowly.",
		"Strength is slow to come home. Don't send it out for nothing.",
	},
	["heal.w14.grit.054"] = {
		"There's a grave with no name on it yet. It'll stay that way a good while.",
		"The ground has a place set aside for me. It can stay empty for a long time.",
		"My grave stays unfinished a while longer. Let the digger rest.",
	},
	["heal.w14.grit.055"] = {
		"Steady. Steady. That's it.",
		"Easy does it. Every piece back where it belongs.",
		"Steady now. All of me's back.",
	},
	["heal.w14.grit.056"] = {
		"I could stop here. I could. I won't.",
		"Stopping would be easy. Easy never got anyone anywhere.",
		"Stop? No.",
	},
	["heal.w14.grit.057"] = {
		"Fragile. I knew that already. I'd only rather not be reminded so sharply.",
		"A reminder of how thin the skin is. Received, thank you, filed away.",
	},
	["heal.w14.grit.058"] = {
		"It holds. That's all the permission I need.",
		"It doesn't have to be pretty. It has to hold.",
		"Pretty is for later. Holding is for now.",
	},
	["heal.w14.grit.059"] = {
		"touches the place where the wound was, briefly, the way one touches wood for luck.",
		"glances once at the closed wound and does not look back at it.",
	},
	["heal.w14.grit.060"] = {
		"The pain lied. It said that was the end of it. It usually lies.",
		"Pain always swears it has the last word. It never does.",
	},
	["heal.w14.grit.061"] = {
		"My hurt, my mending, my road.",
		"Mine to break, mine to mend, mine to carry on with.",
	},
	["heal.w14.grit.062"] = {
		"Fear makes me careful. Too much makes me slow. Keep it to a pinch.",
		"A little fear is good seasoning. A fistful spoils the dish.",
	},
	["heal.w14.grit.063"] = {
		"I won't always get up. That's no reason to skip the times I can.",
		"Some day I won't rise. Every other day, I will.",
		"Not every time. This time.",
	},
	["heal.w14.grit.064"] = {
		"There's plenty of fight left in me.",
		"I've barely started.",
		"Plenty left. Plenty.",
	},
	["heal.w14.grit.065"] = {
		"flexes {g:his|her} fingers into a fist, then opens them, ready.",
		"lifts {g:his|her} chin and gets on with it.",
		"rolls {g:his|her} shoulders back and steps forward.",
	},
	["heal.w14.grit.066"] = {
		"Count what's left: legs, hands, eyes, nerve. Enough. More than enough.",
		"Legs, hands, eyes, will. All accounted for. Moving.",
	},
	["heal.w14.grit.067"] = {
		"Every scar marks a time I didn't give up. This one will be no different, if it scars at all.",
		"If it leaves a mark, let it mark this: I didn't quit.",
	},
	["heal.w14.grit.068"] = {
		"Mental note: watch that side.",
		"That side's weak. Remember it.",
		"Guard that side. Remember.",
	},
	["heal.w14.grit.069"] = {
		"Keep it at arm's length. Death has long arms, but mine are long enough for now.",
		"An arm's length from the end. Close enough to see it, far enough to turn away.",
	},
	["heal.w14.grit.070"] = {
		"Stubborn as a nail in an old boot, that's me.",
		"Too stubborn to stay hurt. A flaw, but a useful one.",
	},
	["heal.w14.grit.071"] = {
		"Look after the tool that does the work. The tool, in this case, is me.",
		"A dull edge does nobody any good. Honed, then.",
	},
	["heal.w14.grit.072"] = {
		"No more of that. Forward.",
		"Enough lying about. Forward it is.",
	},
	["heal.w14.grit.073"] = {
		"The wound didn't care who I was. Neither will the next. Best be ready anyway.",
		"Hurt doesn't ask names. Mended, at least I can face it on my feet.",
	},
	["heal.w14.grit.074"] = {
		"closes {g:his|her} eyes for a moment, opens them, and the wavering is gone from {g:his|her} face.",
		"lets the worst pass, then sets {g:his|her} mouth in a hard, level line.",
	},
	["heal.w14.grit.075"] = {
		"Anger's a poor healer but a fine crutch. Leaning on it a little longer.",
		"A bit of temper keeps the legs honest. I'll hold on to it.",
		"Temper's a crutch. I'll lean.",
	},
	["heal.w14.grit.076"] = {
		"Whatever was waiting for me can keep waiting.",
		"It can wait. It's good at waiting.",
	},
	["heal.w14.grit.077"] = {
		"Mistakes I can survive are the cheapest teachers there are.",
		"A mistake I walk away from costs little. The dear ones leave no room for notes.",
	},
	["heal.w14.grit.078"] = {
		"Bitten, not beaten.",
		"Hurt, yes. Beaten, no.",
		"Dented. Not done.",
	},
	["heal.w14.grit.079"] = {
		"Endure. Mend. Endure. The oldest rule of all, and the plainest.",
		"To bear it and rise: no grander rule than that, and none harder.",
	},
	["heal.w14.grit.080"] = {
		"regards the closed wound with grudging approval, as one regards a rival who has done something decent.",
		"gives the mended hurt a curt nod, the kind kept for work that is merely adequate.",
		"nods at the closed wound, grudgingly.",
	},
	["heal.w14.grit.081"] = {
		"Back to it. Whatever it is, it's mine to finish.",
		"I was in the middle of something before I got hurt. I'll go and finish it.",
		"Dropped a thread back there. Picking it up.",
	},
	["heal.w14.grit.082"] = {
		"Slower to trust my footing now. That's not fear. That's judgment, earned.",
		"I'll trust my feet a little less and my eyes a little more.",
	},
	["heal.w14.grit.084"] = {
		"Whatever I'm made of, it's the kind that comes back.",
		"Made of something that returns. I'll take that over being hard.",
		"I come back. That's my whole talent.",
	},
	["heal.w14.grit.085"] = {
		"Mending isn't the same as rest. I'll borrow against the rest and pay it back later.",
		"Whole is not the same as fresh. Carry on anyway.",
	},
	["heal.w14.grit.086"] = {
		"Let it come. I'll meet it on my feet.",
		"Bring on the rest. I'm standing.",
		"More, then. I'm ready.",
	},
	["heal.w14.grit.087"] = {
		"There's a small, steady voice that says go on. I mean to keep listening to it.",
		"Something quiet inside keeps saying: up. It hasn't been wrong yet.",
		"A quiet voice inside says go on. I listen.",
	},
	["heal.w14.grit.089"] = {
		"Fine. That's fine. Moving.",
		"That'll do. I don't need better.",
	},
	["heal.w14.grit.090"] = {
		"Learned two things: where it hurts, and that I can take it.",
		"Now I know the price of that mistake, and that I can pay it once.",
		"Two lessons from one wound. Fair price.",
	},
	["heal.w14.grit.091"] = {
		"Nobody else carries my share. So my share gets carried, hurt or not.",
		"My load stays my load. Mended, at least it's easier to lift.",
		"My share. My shoulders.",
	},
	["heal.w14.grit.092"] = {
		"I'll get up every time. Count on it.",
		"A hundred falls, a hundred risings. That's the bargain I keep.",
		"Every time. Without fail.",
	},
	["heal.w14.grit.093"] = {
		"If the world wants me gone, it'll have to be more thorough.",
		"Whatever tried to end me left the job half done. Its loss.",
	},
	["heal.w14.grit.094"] = {
		"checks {g:his|her} gear with quick, sure hands, ready to carry on.",
		"tugs a strap tight, settles {g:his|her} kit, and is ready.",
	},
	["heal.w14.grit.095"] = {
		"Next time I'll hear it coming. The ears learn as well as the skin.",
		"My eyes will be quicker next time. The wound made sure of that.",
	},
	["heal.w14.grit.096"] = {
		"I am not finished. Hear that, whoever's listening.",
		"Let it be known: I'm not done.",
		"Not finished. Not close.",
	},
	["heal.w14.grit.097"] = {
		"How many more of these does the body have in it? Enough. It has to be enough.",
		"There's a limit to how often flesh will close. I haven't found mine, and I'm not looking.",
	},
	["heal.w14.grit.098"] = {
		"Fall, rise. The rising is the part that counts.",
		"Anybody can go down. The trick is in what comes after.",
		"Down is easy. Getting up is where it means something.",
	},
	["heal.w14.grit.099"] = {
		"Mended. What needs doing?",
		"That's handled. What's waiting?",
		"Done. Next thing.",
	},
	["heal.w14.grit.100"] = {
		"glances at the closed wound as if memorizing exactly how it happened.",
		"frowns at the mended place, plainly turning the mistake over in {g:his|her} mind.",
	},
	["heal.w14.grit.101"] = {
		"The trick is to outlast the hurt. It tires before I do.",
		"Hurts get bored. I don't.",
		"Pain gives up first. It always does.",
	},
	["heal.w14.grit.103"] = {
		"There's no shame in needing mending. The shame would be in staying broken out of pride.",
		"Mending isn't weakness. Refusing it would be.",
		"Staying broken is a vanity. I can't afford it.",
	},
	["heal.w14.mend.001"] = {
		"The grip comes back first. Fingers that were only pretending now close for real.",
		"First the hand remembers how to close. The rest of me follows it.",
		"Before anything else, the fingers. They curl, they hold, they mean it.",
	},
	["heal.w14.mend.002"] = {
		"That itch. Flesh drawing itself shut always itches like a grudge.",
		"It itches now, which is good news dressed up as a nuisance.",
		"Closing flesh itches. I've learned to read that as a kindness.",
	},
	["heal.w14.mend.003"] = {
		"The edges of things sharpen. I hadn't noticed how blurred they'd gone.",
		"Outlines come back into the world, one by one, as the hurt pulls away.",
		"Lines firm up. The world stops smudging at the corners.",
	},
	["heal.w14.mend.004"] = {
		"It mends without telling me how many more times it means to.",
		"It closes, as it always has. Nobody says which time will be the last.",
		"Mended, without a word on how many more of these it has in it.",
	},
	["heal.w14.mend.005"] = {
		"Sharp, then dull, then just a hum somewhere in the bones. I can live with a hum.",
		"From a stab to a throb to a faint hum. The hum I can work with.",
		"The sting dulls, then mutes, then is barely a rumor.",
	},
	["heal.w14.mend.006"] = {
		"My hands stop shaking before I tell them to. They knew first.",
		"The tremor leaves the hands on its own. They always hear the news before I do.",
		"The shake goes out of my fingers. Quiet hands, at last.",
	},
	["heal.w14.mend.007"] = {
		"The wound shuts. The skin will keep a pale line, the only diary it writes.",
		"Closed. There'll be a mark, faint, for no one to read but me.",
		"Sealed over. The skin signs its name across it, small and permanent.",
	},
	["heal.w14.mend.008"] = {
		"Strength comes back up through the legs like something climbing home.",
		"I feel it return from the ground up: feet, knees, spine, and then the will.",
	},
	["heal.w14.mend.009"] = {
		"Relief hits harder than the blow did. For a moment the world swims.",
		"Strange: the easing makes my knees weaker than the wound ever did.",
		"The pain lets go so fast it leaves me dizzy, holding onto nothing.",
	},
	["heal.w14.mend.010"] = {
		"Shoulders I didn't know were raised come down by an inch.",
		"My brow had drawn tight somewhere along the way. It smooths out on its own.",
	},
	["heal.w14.mend.011"] = {
		"The bones take the mending without complaint. They've stopped expecting better treatment.",
		"Bones are patient. Whatever they don't say now, they'll say years from here.",
		"The bones take it in silence. Bones are good at silence.",
	},
	["heal.w14.mend.012"] = {
		"The ringing in my ears thins out to nothing, and small sounds come back to fill the space.",
		"Ears clear. Little noises I'd lost return, as if someone opened a door.",
		"The hiss in my ears fades, and the world's small chatter creeps back in.",
	},
	["heal.w14.mend.013"] = {
		"The body is a stubborn companion. It complains the whole way and never once leaves.",
		"Grumbling, aching, unreliable, and here. My body has never walked out on me.",
		"Sore, slow, complaining, and never once gone. My body sticks with me.",
	},
	["heal.w14.mend.014"] = {
		"A small, clean silence where the pain was. I could almost sit inside it.",
		"The hurt leaves a quiet room behind. I stay in it a moment longer than I need to.",
		"Where the ache was, a hush. I don't move, so as not to spoil it.",
	},
	["heal.w14.mend.015"] = {
		"The will comes back last, and it comes back loudest.",
		"Legs, then hands, then eyes. Then the part of me that refuses. That one arrives shouting.",
	},
	["heal.w14.mend.016"] = {
		"Something far and patient was waiting just past the pain. It steps back now. It isn't gone.",
		"Whatever stood waiting behind the hurt takes a step back. Only a step.",
		"The patient thing behind the pain withdraws a little. It has never been in a hurry.",
	},
	["heal.w14.mend.017"] = {
		"I can feel the exact shape of the wound as it closes. That shape will stay with me.",
		"Closing, it draws its own outline under the skin. Hard to forget a thing you felt shrink.",
		"I feel it shrink, edge by edge. I'll remember its shape.",
	},
	["heal.w14.mend.018"] = {
		"Everything that was clenched lets go: fists, jaw, the long muscles of the back.",
		"I was clenched from neck to knees. Piece by piece, it all unclenches.",
	},
	["heal.w14.mend.019"] = {
		"I owe these hands an apology. They held on through all of it.",
		"Thank you, hands. You were shaking, but you never let go.",
		"These hands deserve better than I give them. They held, the whole time.",
	},
	["heal.w14.mend.020"] = {
		"Pain is loud and mending is quiet. I should learn to listen for the quiet one.",
		"All that shouting from the hurt. The healing barely whispers. Both deserve hearing.",
		"Noise, all of it, from the hurt. The mending makes none at all.",
	},
	["heal.w14.mend.021"] = {
		"The flesh forgives quickly. It's the rest of me that keeps the list.",
		"Skin forgives in moments. Something deeper keeps the tally much longer.",
		"My body has already let it go. Some other part of me is still holding it.",
	},
	["heal.w14.mend.022"] = {
		"There's a moment, right as the pain lets go, where nothing at all is wrong. I try to stay in it.",
		"For the space of a blink, nothing hurts and nothing is needed. Then it passes.",
	},
	["heal.w14.mend.023"] = {
		"The frame of me remembers its proper shape and pulls itself back into it.",
		"Bone and sinew find their places, like soldiers falling back into rank.",
	},
	["heal.w14.mend.024"] = {
		"Mended, and still tired. Mending was never the same thing as rest.",
		"Repaired is not rested. I know it, and the bones know it better.",
		"The hurt's gone; the weariness stays. They never did keep the same hours.",
	},
	["heal.w14.mend.025"] = {
		"The wound closes from the deep end first. It's the surface that takes longest to agree.",
		"Deep down it's already knitted. The skin on top is the last to be convinced.",
		"Healed underneath already. The skin's still making up its mind.",
	},
	["heal.w14.mend.026"] = {
		"Nobody watches a body mend itself. It does the work alone, and so do I.",
		"No witnesses for this part. Just me and the slow shutting of a hurt.",
		"This part is never seen by anyone: the wound and I, settling a quarrel.",
	},
	["heal.w14.mend.027"] = {
		"My sight steadies. The world quits swaying and stands where it was put.",
		"The blur drains out of my eyes. Things hold still when I look at them.",
		"My eyes find their footing. Things stop drifting.",
	},
	["heal.w14.mend.028"] = {
		"The pain doesn't vanish. It packs up slowly, like a guest who wants to be asked to stay.",
		"It's leaving, this hurt, but in no hurry. It keeps finding one more thing to say.",
		"Going, going, and still lingering at the threshold, this ache.",
	},
	["heal.w14.mend.029"] = {
		"Something in me straightens before the rest of me does. A spine of a different kind.",
		"Before my back straightens, something else in me already has.",
	},
	["heal.w14.mend.030"] = {
		"Funny how fast I forget what it felt like. The body is generous that way.",
		"Already the hurt is hard to recall. Bodies forget on purpose, I think.",
		"I try to remember how bad it was, and can't quite. A mercy, of a sort.",
	},
	["heal.w14.mend.031"] = {
		"Feeling comes back into the fingertips in a rush of pins and needles. Rude, but welcome.",
		"Pins and needles in the fingers. The nerves waking up, cross at having been left out.",
		"Prickling in the fingertips: feeling, back at work.",
	},
	["heal.w14.mend.032"] = {
		"It's the quiet after that frightens me, not the wound. In the quiet I can measure how close it was.",
		"The pain kept me busy. Now that it's gone I have room to understand it.",
		"Now that it's quiet, I can count how close that was.",
	},
	["heal.w14.mend.033"] = {
		"Everything in me hums like a struck bell going still.",
		"A low hum runs through me as everything settles, the way a plucked string settles.",
	},
	["heal.w14.mend.034"] = {
		"New skin is tender skin. I'll favor this side for a while without meaning to.",
		"The fresh skin feels thin as paper. My body will guard it without asking me.",
		"Tender, the new skin. I'll be careful with it whether I mean to or not.",
	},
	["heal.w14.mend.035"] = {
		"Strength fills in where the hurt was, like water finding the shape of a cup.",
		"Strength pours back into the hollow the pain left, and fits it exactly.",
		"Strength seeps back into the hollows, slow and sure.",
	},
	["heal.w14.mend.036"] = {
		"My knees stop trembling. They feel like knees again, not like wet rope.",
		"The weakness drains from my legs. They're mine to stand on once more.",
		"Legs that were sand a moment ago are legs again. I lean on them, gratefully.",
	},
	["heal.w14.mend.037"] = {
		"This one's closed. The tiredness underneath, the long kind, nothing reaches that.",
		"Wounds close. The deep weariness under them stays exactly where it is.",
		"Shut, this one. The old tiredness under it, untouched.",
	},
	["heal.w14.mend.038"] = {
		"The hurt unhooks itself from me, catch by catch, like a stubborn buckle.",
		"It lets go in stages, the way a cramped fist opens.",
	},
	["heal.w14.mend.039"] = {
		"I listen to the body the way one listens to a house settling. A creak here. Nothing broken.",
		"A creak in the ribs, a tick in the shoulder. The frame settling, nothing more.",
		"Small sounds from inside, the joints finding their seats. No alarm in any of them.",
	},
	["heal.w14.mend.040"] = {
		"Torn things are rejoining under the skin. I feel them meet like hands clasping.",
		"Under the skin, torn ends find each other and hold, quietly, in the dark.",
	},
	["heal.w14.mend.041"] = {
		"The body never asks why I keep doing this to it. It just mends. I'm not sure I deserve that.",
		"Not a word of reproach from the body. It simply fixes what I broke.",
		"No blame, no sulking. The flesh just gets on with forgiving me.",
	},
	["heal.w14.mend.042"] = {
		"I could sleep, right here. Mending takes that much out of a body.",
		"Sleep comes knocking the instant the pain leaves. Later, I tell it.",
		"A heavy wish to lie down moves into the space the hurt left.",
	},
	["heal.w14.mend.043"] = {
		"Mended. And yet some small part of me had already begun saying goodbye.",
		"Part of me had started letting go before the rest decided to stay. It's slow to come back.",
		"The wound is shut. The part of me that had started packing takes longer to unpack.",
	},
	["heal.w14.mend.044"] = {
		"I make a fist, open it, make it once more. The hand answers each time. That's the whole test.",
		"Close, open, close. The fingers obey without a fuss.",
		"Fist, open, fist. Answered every time.",
	},
	["heal.w14.mend.045"] = {
		"Let this be a small rite of its own: the hurt leaving, and me standing still to see it go.",
		"I give the moment its due. A wound closing deserves a little stillness.",
		"Some things should be marked. I stand quiet while this one passes.",
	},
	["heal.w14.mend.046"] = {
		"The hurt has gone, but my body still braces for it. It'll take a while to unlearn.",
		"No more pain, and still I flinch around the spot. The flinch is slower to heal.",
		"Gone, the pain. The wince hasn't heard yet.",
	},
	["heal.w14.mend.047"] = {
		"Each time it mends, it mends a little tougher. I'm being made, slowly, out of what survived.",
		"Healed over, harder than before. Whatever I become, it's built from what held.",
		"Knit back thicker where it tore. The body builds its walls from its own breaches.",
	},
	["heal.w14.mend.048"] = {
		"I let my head drop for a moment and simply feel it: less, and less, and less.",
		"Eyes shut a moment. Less pain. Less. Less still.",
	},
	["heal.w14.mend.049"] = {
		"How easily the body comes undone, and how patiently it puts itself back. I'd trade some patience for less ease.",
		"Quick to break, slow and loyal to repair. Hardly a fair arrangement.",
	},
	["heal.w14.mend.050"] = {
		"The throbbing slows to a lazy beat and then forgets itself.",
		"The ache's rhythm slows, stutters, and finally loses count.",
	},
	["heal.w14.mend.051"] = {
		"I don't understand half of what's happening under the skin. It doesn't need me to.",
		"Flesh finding flesh, threads of me rejoining. I couldn't explain it, and it doesn't ask.",
		"Something knits under the skin. I couldn't explain it if asked.",
	},
	["heal.w14.mend.052"] = {
		"The world comes back in its right colors. I hadn't noticed it had gone dim.",
		"Colors return to their full weight. Everything had been fading and I'd let it.",
		"Things recover their color, like a view through a glass just wiped clean.",
	},
	["heal.w14.mend.053"] = {
		"Every part of me reports in, one after another, each with its small complaint, each present.",
		"Shoulder, ribs, knee: all answering the roll, sore but there.",
	},
	["heal.w14.mend.054"] = {
		"Nobody else will ever know how much that hurt. The body knows. That will do.",
		"Only the body knows how bad it was. It's not one for talking.",
		"The body knows what it cost. It keeps that to itself.",
	},
	["heal.w14.mend.055"] = {
		"Even my thoughts stop stumbling. They walk in a straight line once more.",
		"My thinking clears. Words line up in the right order, which they had stopped doing.",
		"The haze in my head lifts with the pain. I can hold a thought to its end.",
	},
	["heal.w14.mend.056"] = {
		"works each finger loose in turn, calling the whole hand back to duty.",
		"opens and closes one hand, slowly, watching it obey.",
		"counts {g:his|her} fingers by moving them, and finds the full number.",
	},
	["heal.w14.mend.057"] = {
		"lets {g:his|her} shoulders drop, and some of the stiffness goes out of {g:his|her} stance.",
		"eases out of a crouch held far too long.",
	},
	["heal.w14.mend.058"] = {
		"scratches absently at the closing wound, then stops {g:himself|herself}.",
		"rubs at the itch along the mending skin, frowning at it.",
		"reaches to scratch, thinks better of it, and lets the itch have its way.",
	},
	["heal.w14.mend.059"] = {
		"straightens by slow degrees until {g:he|she} is standing at full height.",
		"rises out of the hunch inch by inch, and squares {g:his|her} shoulders at the top of it.",
	},
	["heal.w14.mend.060"] = {
		"closes {g:his|her} eyes for a moment and waits for the hurt to finish leaving.",
		"shuts {g:his|her} eyes, listening inward, until whatever {g:he|she} hears there seems to satisfy.",
	},
	["heal.w14.mend.061"] = {
		"shifts {g:his|her} weight onto the side that hurt, testing it, and finds it holds.",
		"puts a careful measure of weight on the sore side, then a little more.",
	},
	["heal.w14.mend.062"] = {
		"stays very still for a long moment, as if afraid to startle the mending away.",
		"goes quite motionless, careful not to disturb whatever is happening beneath the skin.",
		"keeps very still and lets whatever is happening underneath happen.",
	},
	["heal.w14.mend.063"] = {
		"unclenches {g:his|her} jaw, and the face above it softens.",
		"lets go of a grimace {g:he|she} has been wearing for some time.",
		"loses the hard set of {g:his|her} mouth, little by little.",
	},
	["heal.w14.mend.064"] = {
		"rolls {g:his|her} neck once, and seems to grow by a hand's width.",
		"lifts {g:his|her} chin, and the whole frame seems to remember what it's for.",
		"seems, for a moment, a little taller than before.",
	},
	["heal.w14.mend.065"] = {
		"runs a thumb along the line where the hurt was, feeling it seal.",
		"traces the closing wound with a fingertip, the way one checks a seam.",
		"feels along the closing wound as one feels for a crack in a pot.",
	},
	["heal.w14.mend.066"] = {
		"looks down at the mended place for a long while, with an expression hard to name.",
		"studies the healed hurt in silence, as if it had just said something worth hearing.",
		"regards the healed place a long time, saying nothing.",
	},
	["heal.w14.mend.067"] = {
		"gives a low sound of relief, half a laugh, half something else.",
		"makes a small, wordless noise as the pain lets go, the kind no one means to make.",
	},
	["heal.w14.mend.068"] = {
		"tries a few small movements, one after another, like a craftsman testing a returned tool.",
		"tests a reach, a turn, a half-crouch, and seems content with the answers.",
	},
	["heal.w14.mend.069"] = {
		"sags for a moment as the pain leaves, as if it had been holding {g:him|her} up.",
		"goes briefly slack once the hurt lets go, as though the pain had been the only thing standing.",
	},
	["heal.w14.mend.070"] = {
		"tilts {g:his|her} head, as if the ringing in {g:his|her} ears had just stopped.",
		"squints, then stops squinting, as the world steadies in front of {g:him|her}.",
	},
	["heal.w14.mend.071"] = {
		"bows {g:his|her} head briefly, a private nod to having been spared.",
		"inclines {g:his|her} head to no one in particular, as if thanking the body for its trouble.",
	},
	["heal.w14.mend.072"] = {
		"plants both legs and waits for them to stop trembling before trusting them.",
		"stands square and still, letting the shake work its way out of the knees.",
	},
	["heal.w14.mend.073"] = {
		"glances at the fresh mark, away, then back, as one does with bad news.",
		"keeps looking at the new pale line on the skin, and then very deliberately stops.",
	},
	["heal.w14.mend.074"] = {
		"draws {g:himself|herself} together, piece by piece, like someone gathering scattered things.",
		"collects {g:himself|herself} slowly, the hurt leaving {g:his|her} face last.",
	},
	["heal.w14.mend.075"] = {
		"seems to settle deeper into {g:his|her} own frame, steadier with each moment.",
		"takes up more room, somehow, as the strength comes back into {g:him|her}.",
	},
	["heal.w14.mend.076"] = {
		"rubs one eye with a knuckle, the tiredness arriving now that the pain has left.",
		"presses the heels of both hands against {g:his|her} eyes for a moment, then lets them fall.",
	},
	["heal.w14.mend.077"] = {
		"tests the healed spot with a cautious prod, winces from habit, and finds no reason to.",
		"prods the mended place warily, flinches in advance, and then looks almost disappointed.",
		"pokes the mended spot, braced for pain that doesn't come.",
	},
	["heal.w14.mend.078"] = {
		"goes quiet, the kind of quiet that comes after a long ache stops.",
		"lets the tension run out of {g:his|her} back like water from a tipped bucket.",
	},
	["heal.w14.mend.079"] = {
		"lifts {g:his|her} gaze from the wound to the world, mended enough to face it.",
		"raises {g:his|her} eyes from {g:his|her} own hurt, as if remembering the world is bigger than one wound.",
	},
	["heal.w14.mend.080"] = {
		"touches the mended place with odd tenderness, as if it belonged to someone else.",
		"regards {g:his|her} own healing with a strange, distant gentleness.",
	},
	["heal.w14.mend.081"] = {
		"digs {g:his|her} fingers into a sore spot and kneads until it gives.",
		"works the last soreness out of a muscle with slow, absent-minded fingers.",
	},
	["heal.w14.mend.082"] = {
		"smiles, faintly and without meaning to, as the pain recedes.",
		"lets a small, tired smile through, there and gone.",
	},
	["heal.w14.mend.083"] = {
		"stretches carefully, joint by joint, like reassembling something.",
		"stretches with great care, a little further with each try, listening for any protest.",
	},
	["heal.w14.mend.084"] = {
		"finds {g:his|her} footing once more, and the ground seems to agree to it.",
		"settles {g:his|her} stance, solid and square, as the last of the weakness leaves.",
	},
	["heal.w14.mend.085"] = {
		"pauses as one pauses at a door that almost opened, then turns from it.",
		"stands a moment in silence, as if some threshold had been near and is now far.",
	},
	["heal.w14.mend.086"] = {
		"Ah. It's letting go of me.",
		"Mm. Feel that ease off.",
	},
	["heal.w14.mend.087"] = {
		"Hands, steady. Good. Good.",
		"Steady hands. That's what I wanted back first.",
	},
	["heal.w14.mend.088"] = {
		"Whole. Or whole enough to stand on.",
		"On my feet, and meaning it this time.",
	},
	["heal.w14.mend.090"] = {
		"I can see straight. Small mercies.",
		"Eyes are working. Good. Everything else can follow.",
	},
	["heal.w14.mend.091"] = {
		"Oh, that's the ache going. Finally.",
		"Mm, it's fading. Thank goodness for that.",
	},
	["heal.w14.mend.092"] = {
		"Thank you, stubborn bones.",
		"My thanks, body of mine. You did the hard part.",
	},
	["heal.w14.mend.093"] = {
		"It's closing. I can feel it pull.",
		"Feel that tug? That's it shutting.",
	},
	["heal.w14.mend.094"] = {
		"Strength's back. I can feel it in the grip.",
		"There's the strength. Right where I left it.",
	},
	["heal.w14.mend.095"] = {
		"That one will leave a mark. Fine. I'll remember it.",
		"It'll scar. Let it. Some things should.",
	},
	["heal.w14.mend.096"] = {
		"Easy now. Let it finish.",
		"Slowly. No rushing this part.",
	},
	["heal.w14.mend.097"] = {
		"Ugh. The itching's the worst of it.",
		"Itches like mad. That means it's working, I suppose.",
	},
	["heal.w14.mend.098"] = {
		"Back together. Every piece accounted for.",
		"Every bit of me where it belongs.",
	},
	["heal.w14.mend.099"] = {
		"Hm. Not bad. The body knows its business.",
		"Look at it knit. Strange thing to watch.",
	},
	["heal.w14.mend.100"] = {
		"Hush. The worst of it's gone.",
		"Shh. That was the worst, and it's leaving.",
	},
	["heal.w14.watch.001"] = {
		"For the length of one mending, a life that isn't mine rests in my keeping. I never get used to the weight.",
		"A life not my own, held for a moment. Easy to carry, terrible to drop.",
		"Someone else's whole life, resting on how well I do the next few moments.",
	},
	["heal.w14.watch.002"] = {
		"Between too late and just in time there's half a moment. My whole craft lives inside it.",
		"In time, or half a moment after. Nothing else counts, and nothing else keeps me awake.",
		"Half a moment. That's the width of the ground I work on.",
	},
	["heal.w14.watch.003"] = {
		"My hands always feel slower than they are. Better that than the other way round.",
		"Never as quick as I'd like. Quick enough, mostly. It's the 'mostly' that follows me around.",
		"Too slow, says the fear. The hands ignore it and get on with things.",
	},
	["heal.w14.watch.004"] = {
		"Worst first. A simple rule, and it has never once felt simple.",
		"Whoever is nearest the edge comes first. Everyone else has to wait, and I have to let them.",
		"Triage: a cold word for a choice made with unsteady hands.",
	},
	["heal.w14.watch.005"] = {
		"I know the exact shape of this hurt, and nothing else about whoever carries it. An odd sort of closeness.",
		"Nearer than kin for one moment, then each back to their own road. Mending is strange that way.",
		"I know this wound by heart, and its owner not at all.",
	},
	["heal.w14.watch.006"] = {
		"There's a version of this moment where I hesitated. I try never to visit it.",
		"Every mending has a twin in the shadows: the one that came too late. I don't look it in the eye.",
	},
	["heal.w14.watch.007"] = {
		"Nobody sees the tiredness of the one who mends. It sits behind the eyes and waits for a quiet moment.",
		"The weariness comes later, when nobody needs anything. It has good manners, at least.",
		"A kind of tired that sleep never quite reaches.",
	},
	["heal.w14.watch.008"] = {
		"To mend is to step between a life and the dark, and say so without a word.",
		"Every mending is a small refusal, made without opening my mouth.",
		"Mending says no to the dark without raising its voice.",
	},
	["heal.w14.watch.009"] = {
		"Nobody claps for a wound that simply closes. Fine. I'll clap for it privately.",
		"No cheering for a mending that works. Cheers are kept for things that go wrong loudly.",
		"A wound closing makes no noise. Nobody notices but me, and that suits me.",
	},
	["heal.w14.watch.010"] = {
		"That pause before the hurt gives way is the longest moment I know.",
		"Between the first touch and the moment it takes, there's a gap. I spend more time there than I'd like.",
		"No wait stretches like the one before a mending takes hold.",
	},
	["heal.w14.watch.011"] = {
		"Battles are won by others. My trade is making sure someone is left to celebrate.",
		"My part in any fight is a narrow one: turning hurt back into whole.",
		"Somebody wins. Somebody else makes sure the winner is still upright to enjoy it.",
	},
	["heal.w14.watch.012"] = {
		"Everything mended stays breakable. All I do is push the breaking a little further off.",
		"I don't cancel the end. I move it along, and hope it gets lost on the way.",
		"Mended is not unbreakable. It only means later.",
	},
	["heal.w14.watch.013"] = {
		"I may never see this one again. The mending goes along with them anyway, wherever that leads.",
		"Whoever this is, they'll carry a piece of my work off to places I'll never go.",
		"Perhaps never met again. Mended all the same.",
	},
	["heal.w14.watch.014"] = {
		"Once I begin mending someone, that life is my concern until it's whole. No other oath needed.",
		"A mending begun is a debt owed until it's finished.",
		"Once begun, a mending has a claim on me until it's done.",
	},
	["heal.w14.watch.015"] = {
		"Never let the fear reach the hands. Right now the hands are the only part of me that matters to anyone.",
		"Fear stays in the chest. The hands get calm, whatever it costs.",
		"Shaking is for later. Right now the hands belong to someone else.",
	},
	["heal.w14.watch.016"] = {
		"It costs something, mending someone else. Never much at once. It adds up somewhere I can't see.",
		"Small payments, every single time. One day I'll ask to see the ledger.",
		"Every mending is paid for. I just never see the bill arrive.",
	},
	["heal.w14.watch.017"] = {
		"It takes. Something in me unknots that I didn't know was tied.",
		"It holds. Only now do my shoulders come down from around my ears.",
		"The mending catches, and a knot in me I hadn't noticed lets go.",
	},
	["heal.w14.watch.018"] = {
		"Anyone within my reach stays up. Big words, and I mean every one of them.",
		"Nobody in my reach goes down unanswered.",
		"This is my ground. On it, nobody is left to the hurt.",
	},
	["heal.w14.watch.019"] = {
		"Every wound I close teaches me a little about the next. I'd rather learn some other way.",
		"Each hurt I mend is a lesson in the one after. Expensive school, this.",
		"I get better at this by needing to. Not the way I'd have chosen.",
	},
	["heal.w14.watch.020"] = {
		"Mending another shows me how little holds anyone together. A thread, a moment, someone paying attention.",
		"So little keeps a life in place. Mostly, someone paying attention.",
	},
	["heal.w14.watch.021"] = {
		"How someone stands tells me more than any wound. If the stance holds, I can look elsewhere.",
		"I read the stance before the wound. A steady one lets my eyes move on.",
		"The way a body settles after mending says more than the mending itself.",
	},
	["heal.w14.watch.022"] = {
		"Nobody raises a statue to a mender. Statues are for those who open wounds, not those who close them.",
		"No statues for menders. No loss: statues never get to go anywhere.",
	},
	["heal.w14.watch.023"] = {
		"Mending is a lonely sort of company: two lives, and only one of them knows how close it came.",
		"Two lives in one moment, and only the mender keeping count.",
		"Only one of the two will remember how near it came, and it's the mender.",
	},
	["heal.w14.watch.024"] = {
		"Nobody asked whether I wanted this trust. It was handed over the moment the hurt began.",
		"Trust given without a word. The least I can do is deserve it.",
		"Nobody signs anything. The hurt alone strikes the bargain.",
	},
	["heal.w14.watch.025"] = {
		"Sometimes the hurt carries on after I've done my part. Not this time. I let myself notice the difference.",
		"It took. It doesn't always, and I never forget that it might not.",
	},
	["heal.w14.watch.026"] = {
		"For a moment the whole world is one hurt and the one carrying it. Then it widens again, a little reluctantly.",
		"The world narrows to a single wound, then slowly opens back up.",
	},
	["heal.w14.watch.027"] = {
		"Never spend all of it on one wound. Close by, the next hurt is probably already happening.",
		"Keep something back for the next. It's surely on its way.",
		"Spend wisely. Mending is a purse that empties faster than it fills.",
	},
	["heal.w14.watch.028"] = {
		"Someone is walking around whole because I didn't hesitate. That's pride enough for me.",
		"Upright, because I didn't flinch. I'll allow myself that much pride.",
		"No banner, no song. Just someone on their feet who might not have been.",
	},
	["heal.w14.watch.029"] = {
		"My hands are steady now. They'll shake later, when it's safe to. They've learned the order.",
		"Steady now, shaking later. The hands keep their own schedule.",
		"The trembling waits its turn, and turns up later without fail.",
	},
	["heal.w14.watch.030"] = {
		"Whatever I feel stays off my face. The one being mended has enough to carry.",
		"Calm face, busy hands. The worry can wait its turn.",
		"Let the fright show anywhere but on me. Someone may be watching me to know how bad it is.",
	},
	["heal.w14.watch.031"] = {
		"The hurt goes from shouting to muttering. That's the moment I wait for.",
		"From a shout to a mutter: that's what a good mending sounds like.",
		"The pain lowers its voice. That's the sign I listen for.",
	},
	["heal.w14.watch.032"] = {
		"I don't ask where anyone stood before the hurt found them. A wound carries no banner.",
		"Hurt carries no banner. Neither does mending.",
	},
	["heal.w14.watch.033"] = {
		"Too slow is a debt that can't be paid back. So I'm not too slow. That's the whole plan.",
		"Late is the one mistake a mending never forgives.",
		"Slowness is a luxury for those with nothing to mend.",
	},
	["heal.w14.watch.034"] = {
		"Just once I'd like to be the one sitting down while somebody else does the fretting.",
		"Some day it'll be my turn to be fussed over. I'll hate every minute.",
	},
	["heal.w14.watch.035"] = {
		"Mending others, I keep forgetting I'm made of the same soft stuff. Then I remember, and carry on.",
		"Same breakable stuff, the one who mends and the one mended.",
		"Whoever mends breaks just as easily. Worth remembering, now and then.",
	},
	["heal.w14.watch.036"] = {
		"A mender's eyes are never all in one place. Part of me is always hunting for the next hurt.",
		"Even halfway through a mending, half an eye goes looking for the next one.",
	},
	["heal.w14.watch.037"] = {
		"To hand someone back their own strength is a small, good thing. I'll take small and good.",
		"Strength returned to its owner. Small, and good.",
		"Nothing grand in it: only giving back what the hurt tried to take.",
	},
	["heal.w14.watch.038"] = {
		"Everyone notices a mender who's late. Nobody notices one who's in time. I'll gladly go unnoticed.",
		"In time means invisible. Good.",
	},
	["heal.w14.watch.039"] = {
		"Some wounds I close knowing they'll open again before long. I close them anyway. That's the job, not the hope.",
		"It'll likely open again. I close it as if it won't.",
		"Close it regardless. Whatever comes after is another mending.",
	},
	["heal.w14.watch.040"] = {
		"I feel the hurt let go under my hands, the way a knot gives once it finds the right pull.",
		"It gives under my hands like a knot pulled the right way.",
	},
	["heal.w14.watch.041"] = {
		"As long as I'm on my feet, hurt is something that gets answered.",
		"Hurt asks. While I can stand, it gets its answer.",
		"Pain may call as loud as it likes. Someone here is listening.",
	},
	["heal.w14.watch.042"] = {
		"A little of my own steadiness goes out with each mending. It comes back. Slower than it leaves.",
		"Steadiness lent out. It comes home slowly.",
		"I lend out a little calm each time. It finds its way back, eventually.",
	},
	["heal.w14.watch.043"] = {
		"When two need mending at once, whichever I choose, the other stays with me a long while.",
		"Two needs, one pair of hands. I choose, and carry the choice.",
	},
	["heal.w14.watch.044"] = {
		"I'll never know how this one's story goes on. Only that it does, and that I wrote one line of it.",
		"One line in someone else's story. A good one, I hope.",
		"That road goes on past where I can see. My part is already in it.",
	},
	["heal.w14.watch.045"] = {
		"The wound and I are in a race, and the prize is someone else. That's what makes it frightening.",
		"A race against the wound, and the prize isn't mine.",
		"Me against the hurt, and the stakes belong to someone else.",
	},
	["heal.w14.watch.046"] = {
		"My eyes move on before my hands are done. A habit of the trade.",
		"The hands finish here while the eyes have already gone ahead.",
	},
	["heal.w14.watch.047"] = {
		"Whatever happens after, for one moment no one stood nearer this hurt than I did. That counts for something.",
		"For a moment, no one was closer to that pain than me. A bond of sorts.",
	},
	["heal.w14.watch.048"] = {
		"Mending is mostly waiting while trying not to look as if I'm waiting.",
		"Half of mending is looking calm. The other half is the mending.",
		"Most of the work is seeming calm while the mending does its part.",
	},
	["heal.w14.watch.049"] = {
		"gives the mended hurt one last look, then a second, just to be sure.",
		"looks twice at the closed wound, then once more for good measure.",
	},
	["heal.w14.watch.050"] = {
		"goes very still while the mending takes, the way one stops moving beside something easily startled.",
		"holds perfectly still until the hurt gives way.",
	},
	["heal.w14.watch.051"] = {
		"rolls a stiff wrist once the work is done, as if the mending had been heavy to lift.",
		"flexes stiff fingers when it's over, as though the mending weighed something.",
		"works a cramp out of one hand, as if mending were heavy labor.",
	},
	["heal.w14.watch.052"] = {
		"watches {target} the way a sentry watches a gate: patiently, missing nothing.",
		"keeps a sentry's watch on {target}, patient, letting nothing slip by.",
		"goes on watching the one just mended long after there is anything left to see.",
	},
	["heal.w14.watch.053"] = {
		"keeps a silent count while working, lips barely moving, like someone who knows this must not be rushed.",
		"counts without a sound as the work goes on, unhurried.",
	},
	["heal.w14.watch.054"] = {
		"frowns at the hurt as at a puzzle that must be solved before anyone else notices it's there.",
		"frowns at the wound like a riddle with a short fuse.",
	},
	["heal.w14.watch.055"] = {
		"glances up from the mending to see what else is coming, then bends back to it.",
		"looks up once, sharp, then back down to the work.",
		"breaks off a moment to scan the surroundings, then returns to the hurt.",
	},
	["heal.w14.watch.056"] = {
		"sets {g:his|her} jaw and keeps at it, refusing to hurry and refusing to slow.",
		"works with a set jaw, neither hurrying nor slowing.",
	},
	["heal.w14.watch.057"] = {
		"takes a half step back from {target} only once the hurt has plainly given up.",
		"does not turn away until the worst has clearly let go.",
	},
	["heal.w14.watch.058"] = {
		"seems to grow a little older and a little calmer in the space of one mending.",
		"looks, for a moment, both more tired and more content.",
		"lets the strain out of {g:his|her} shoulders only when it's done.",
	},
	["heal.w14.watch.059"] = {
		"divides {g:his|her} attention between the hurt and the world around it, giving neither less than it needs.",
		"keeps one eye on the wound and one on everything else.",
	},
	["heal.w14.watch.060"] = {
		"sways once, very slightly, as the mending is spent, then plants {g:his|her} feet and stays upright.",
		"sways a fraction once it's done, then steadies.",
	},
	["heal.w14.watch.061"] = {
		"bends so close to the hurt that for a moment nothing else seems to exist.",
		"bends over the wound, and for a moment it is the whole world.",
	},
	["heal.w14.watch.062"] = {
		"studies {target} as one studies a bridge just repaired, waiting to see whether it bears weight.",
		"eyes {target} like a newly mended bridge: will it hold?",
	},
	["heal.w14.watch.063"] = {
		"lets {g:his|her} hands fall only when there is truly nothing left to mend.",
		"doesn't lower {g:his|her} hands while anything is left to close.",
	},
	["heal.w14.watch.064"] = {
		"works with a frown that softens, bit by bit, as the hurt gives way.",
		"frowns, then eases, the frown loosening as the wound shuts.",
	},
	["heal.w14.watch.065"] = {
		"gives a small, private nod when the mending holds.",
		"nods once to {g:him|her}self, barely, as the hurt subsides.",
		"lets one corner of {g:his|her} mouth lift as the hurt settles.",
	},
	["heal.w14.watch.066"] = {
		"never once takes {g:his|her} eyes off {target} until it's done.",
		"keeps {g:his|her} gaze fixed and unblinking on the one in need until the mending is finished.",
	},
	["heal.w14.watch.067"] = {
		"rubs tired eyes with the back of a wrist once the mending is done, then looks around.",
		"passes a wrist across {g:his|her} eyes, briefly, then looks about.",
	},
	["heal.w14.watch.068"] = {
		"keeps watch over the one just mended, like a candle left burning in a window.",
		"stands over the mended one like a guard over a sleeping house.",
	},
	["heal.w14.watch.069"] = {
		"flinches a little, as if a share of the hurt had passed the other way.",
		"winces faintly, as if some of the pain had crossed over to {g:him|her}.",
	},
	["heal.w14.watch.070"] = {
		"speaks {target}'s name quietly, once, as though to tie it to the world.",
		"says {target}'s name once, low, like a mooring line.",
	},
	["heal.w14.watch.071"] = {
		"moves with unhurried care, as if haste were the one thing that could still go wrong.",
		"works slowly on purpose; haste is the only enemy left in reach.",
		"takes {g:his|her} time on purpose, as one does with a lock that jams if forced.",
	},
	["heal.w14.watch.072"] = {
		"straightens slowly once it is done, with the stiff care of someone who spent more than was wise.",
		"straightens with care, a little emptier than before.",
	},
	["heal.w14.watch.073"] = {
		"You're in my keeping now, {target}. What I keep, I don't lose.",
		"In my keeping now. I don't drop what's in my keeping.",
	},
	["heal.w14.watch.074"] = {
		"Faster than the hurt. That's all it takes, faster than the hurt.",
		"Quicker than the wound. Just be quicker than the wound.",
		"Ahead of it. Stay ahead of it.",
	},
	["heal.w14.watch.075"] = {
		"Steady hands. Steady hands. The rest will follow.",
		"Hands steady, head clear. Nothing else needed.",
	},
	["heal.w14.watch.076"] = {
		"I'm watching, {target}. If it opens again, I'll know before you do.",
		"My eyes stay on you. Nothing reopens without my noticing.",
	},
	["heal.w14.watch.077"] = {
		"Plenty left in me. Plenty. Almost certainly.",
		"Enough left for one more. Probably two.",
		"Fine. Fine. I'm fine. Who's next?",
	},
	["heal.w14.watch.078"] = {
		"Until you're whole, {target}, you're my concern. That's how this works.",
		"Until you're whole, you're mine to mind.",
	},
	["heal.w14.watch.079"] = {
		"In time. Only just, but in time.",
		"That was in time. I'll take in time.",
		"Made it. By a hair, but made it.",
	},
	["heal.w14.watch.080"] = {
		"Go on, {target}. I'll be watching your back for the next one.",
		"Go. From here on I'm watching every step you take.",
	},
	["heal.w14.wit.001"] = {
		"Workmanship rough, speed decent. Three marks out of five, and I'm the one grading.",
		"Rough work, quick work. I'd give it three out of five.",
		"Repair rated: functional, unlovely, done in a hurry. Passes.",
	},
	["heal.w14.wit.002"] = {
		"Hardly a masterpiece of a mend. It holds, though, and holding is the whole job.",
		"This mend won't win any prizes. It only has to hold.",
	},
	["heal.w14.wit.003"] = {
		"All right, wound, you've made your point. Now close.",
		"Point taken, wound. Kindly shut.",
		"Wound, I've heard your argument. It's been overruled.",
	},
	["heal.w14.wit.004"] = {
		"Add this to what I owe luck. One of these days luck will want paying.",
		"Luck covered that one. I should start keeping receipts.",
		"Luck has bailed me out. I'd tip luck, if luck took coin.",
	},
	["heal.w14.wit.005"] = {
		"That was a small inconvenience. Now it's a smaller one.",
		"Inconvenience reduced. Carry on.",
		"A nuisance, now downgraded to a mild nuisance.",
	},
	["heal.w14.wit.006"] = {
		"The wound's closed. My pride is still out there somewhere, lying in the dirt.",
		"Flesh mends fast. Pride takes the slow road.",
		"Everything closed but my pride, which remains wide open.",
	},
	["heal.w14.wit.007"] = {
		"Next time I'll try the radical idea of not being there when it lands.",
		"Bold new plan: be somewhere else when the hit arrives.",
		"Revised approach: stand where the trouble isn't.",
	},
	["heal.w14.wit.008"] = {
		"Let the record show: a wound, a mending, and not one complaint. Well, hardly one.",
		"Let it be written that I bore it nobly. Mostly nobly.",
	},
	["heal.w14.wit.009"] = {
		"inspects the mended spot, then glances around as if to make sure nobody saw how it happened.",
		"looks around, hoping nobody saw the part before the mending.",
	},
	["heal.w14.wit.010"] = {
		"My body files its complaints in triplicate. This one is now marked resolved.",
		"Complaint received, complaint closed. The body keeps a very busy clerk.",
	},
	["heal.w14.wit.011"] = {
		"Ow. Less ow. Almost no ow. Lovely.",
		"From ow to mostly fine in one go. I'll take it.",
		"Ow, ow, and then, mercifully, no ow.",
	},
	["heal.w14.wit.012"] = {
		"My knees asked for time off. They got a quick mend and a firm no.",
		"The knees wanted a holiday. They got patched instead.",
	},
	["heal.w14.wit.013"] = {
		"Who let that through? Ah, right. Me.",
		"Whoever left that gap in my guard should be ashamed. Oh. It was me.",
		"My guard had a gap. Guess who left it there.",
	},
	["heal.w14.wit.014"] = {
		"I talk to my wounds more than to most people. They listen about as well.",
		"Wounds are poor company. All they talk about is themselves.",
	},
	["heal.w14.wit.015"] = {
		"Fixed, mostly. Whatever's left over counts as character.",
		"What didn't mend, I'm calling character.",
		"Some damage remains. I'll wear it as personality.",
	},
	["heal.w14.wit.016"] = {
		"Quick count: arms, two. Legs, two. Dignity, open to debate.",
		"Inventory after the mending: limbs all present, dignity missing.",
		"Head: attached. Limbs: accounted for. Pride: under review.",
	},
	["heal.w14.wit.017"] = {
		"What a sight: someone who was coming apart a moment ago, and isn't now.",
		"Glory to me, who just stopped falling apart.",
	},
	["heal.w14.wit.018"] = {
		"The pain packs up and leaves, muttering, like a creditor paid in full.",
		"Off goes the pain, grumbling, paid to the last copper.",
	},
	["heal.w14.wit.019"] = {
		"If this scars, the story behind it is going to improve a great deal.",
		"Scar or no scar, the tale will be grander than the truth.",
		"Should this scar, I'll say it came from something terrifying.",
	},
	["heal.w14.wit.020"] = {
		"There's no dignified way to be hurt. There's a slightly dignified way to recover, and I'm attempting it.",
		"Getting hurt is never graceful. Recovering, I can at least do with some style.",
	},
	["heal.w14.wit.021"] = {
		"Hear that? That's the sound of me not dying. Very quiet. Very nice.",
		"Lovely, the silence of not dying.",
		"Not dying makes almost no sound. I could get used to it.",
	},
	["heal.w14.wit.022"] = {
		"My body and I have an arrangement: it gets hurt, I fix it, and neither party mentions who started it.",
		"The body breaks, I mend it, and the subject is never raised.",
	},
	["heal.w14.wit.023"] = {
		"Body, behave. I've only just fixed you.",
		"Enough sulking, body. You've been seen to.",
		"Now then, carcass. No more fuss from you.",
	},
	["heal.w14.wit.024"] = {
		"As patients go, I'm a disaster: no patience, no gratitude, and I keep getting hurt.",
		"Thankless work, tending to me. The patient never sits still.",
	},
	["heal.w14.wit.025"] = {
		"One piece. Somewhat dented, but one piece.",
		"All in one piece, if a slightly bent one.",
		"Dented, not broken. Like a good old kettle.",
	},
	["heal.w14.wit.026"] = {
		"Somewhere there's a version of me that saw that coming. I'd like a word with them.",
		"The me of a moment ago should have seen that coming. Noted, and forgiven.",
		"Past me made a mistake. Present me has fixed it. Future me had better pay attention.",
	},
	["heal.w14.wit.027"] = {
		"pats the freshly mended spot twice, like someone sealing a bargain.",
		"gives the mended place a satisfied little pat, as if the hurt had finally learned some manners.",
	},
	["heal.w14.wit.028"] = {
		"Score it: wound, nil. Me, one.",
		"Whoever's keeping score, mark that one down to me.",
	},
	["heal.w14.wit.029"] = {
		"Pain is a terrible teacher. Shouts a lot, explains nothing.",
		"Pain teaches like a drill sergeant: loud, brief, and never once clear.",
		"Pain gives lessons at full volume and never writes them down.",
	},
	["heal.w14.wit.030"] = {
		"On a scale of one to disaster, I'm now a comfortable four.",
		"From disaster to a few scuffs. Progress.",
		"Ruin, averted. Mild scuffing, accepted.",
	},
	["heal.w14.wit.031"] = {
		"Mending myself is a quiet sort of vanity: I'd rather nobody saw me need it.",
		"I'd rather do it myself, and quickly, before anyone sees there was anything to do.",
	},
	["heal.w14.wit.032"] = {
		"I want it known that it hurt. A lot. Now it doesn't, but still.",
		"It doesn't hurt now. It did, though, and someone should know.",
		"Mended. I'd still like some sympathy for the earlier part.",
	},
	["heal.w14.wit.033"] = {
		"Every scrape gets its little ceremony: a wince, a curse, a mending. Very traditional.",
		"Wince, curse, mend. The rite is observed.",
	},
	["heal.w14.wit.034"] = {
		"Briefly closed for repairs. Now open for business.",
		"Shop's open. Repairs were done on the premises.",
		"The establishment has reopened under the same stubborn management.",
	},
	["heal.w14.wit.035"] = {
		"The good part of being my own healer: no lecture from anyone. The bad part: I give one.",
		"Nobody scolds me for this but me, and I'm relentless.",
	},
	["heal.w14.wit.036"] = {
		"Oh, good, the rest of me has caught up.",
		"The missing parts of me report for duty.",
		"Everything that wandered off has reported back.",
	},
	["heal.w14.wit.037"] = {
		"One day the mending will arrive too late. That day, it seems, is running late as well.",
		"Some hurt will be quicker than my mending, one day. That day is in no hurry.",
	},
	["heal.w14.wit.038"] = {
		"Patched up. Somewhere, someone is very disappointed.",
		"Mended. Whatever did this will be terribly let down.",
		"Whatever wanted me in pieces goes home empty-handed.",
	},
	["heal.w14.wit.039"] = {
		"Built like a cracked jug, stubborn as a goat. The jug's been glued; the goat carries on.",
		"Cracked jug, glued. Stubborn goat, unchanged.",
	},
	["heal.w14.wit.040"] = {
		"Thank you, me. Don't mention it, me.",
		"Much obliged to myself. Lovely work.",
		"Credit where due: to me, entirely.",
	},
	["heal.w14.wit.041"] = {
		"nods at the mended spot like a foreman approving a wall that will probably stand.",
		"gives the mended spot a long, doubtful look, then decides to trust it.",
	},
	["heal.w14.wit.042"] = {
		"The body is a rented room and I treat it terribly. At least I do my own repairs.",
		"This body's a rented room. I break things, I fix them, the landlord never knows.",
	},
	["heal.w14.wit.043"] = {
		"Much improved. I'd almost recommend getting hurt, just for this part.",
		"Getting hurt: terrible. Getting mended: almost worth it.",
		"Being mended is so pleasant it almost justifies the rest.",
	},
	["heal.w14.wit.044"] = {
		"If I charged myself for this, my purse would be full and empty at the same time.",
		"My fee for this repair: nothing. Worth every copper.",
		"Free repairs, and worth exactly what I paid.",
	},
	["heal.w14.wit.045"] = {
		"Pain, you're dismissed. Mind the door on the way out.",
		"You're excused, pain. Off you go.",
		"Out, pain. Go and bother someone who deserves it.",
	},
	["heal.w14.wit.046"] = {
		"Half the art of mending is pretending it never hurt. I excel at that art.",
		"Mended, and already pretending it was nothing. A fine performance.",
	},
	["heal.w14.wit.047"] = {
		"Look at you, patching yourself up like someone with sense.",
		"Good work, me. Very sensible.",
		"Look who's taking care of {g:himself|herself}. Proud of me.",
	},
	["heal.w14.wit.048"] = {
		"The wound and I had a disagreement. I settled it.",
		"Wound versus me. A narrow decision, in my favor.",
	},
	["heal.w14.wit.049"] = {
		"Nothing to see here. Not any more, anyway.",
		"Nothing to look at now. A moment ago, plenty.",
		"Show's over. The interesting bit has closed up.",
	},
	["heal.w14.wit.050"] = {
		"I'm held together by stubbornness and quick repairs, which is how most things are held together.",
		"Stubbornness and quick fixes: the mortar of me, and of half the world.",
	},
	["heal.w14.wit.051"] = {
		"Hear it, all the world: the wound is no more!",
		"Rejoice! The hole has been closed!",
		"Sound the horns: one wound, vanquished!",
	},
	["heal.w14.wit.052"] = {
		"Pain likes to make speeches. I prefer to interrupt early.",
		"Cut the pain off mid-sentence. Rude, but effective.",
	},
	["heal.w14.wit.054"] = {
		"Mended things don't count. House rules.",
		"If it closes, it never happened. That's my rule, and I'm sticking to it.",
		"What's mended didn't happen. I make the rules here.",
	},
	["heal.w14.wit.055"] = {
		"straightens up with exaggerated dignity, as though nothing at all had happened.",
		"draws {g:himself|herself} up very straight: all dignity, no explanation.",
	},
	["heal.w14.wit.056"] = {
		"My next appointment with pain is cancelled. Indefinitely.",
		"Pain's booked for later. Much later. Never, ideally.",
		"Pain may leave word. I won't be answering.",
	},
	["heal.w14.wit.057"] = {
		"Not an elegant body, mine, but a punctual one. Hurt arrives, mending follows.",
		"Elegant, no. Punctual, yes. The mend turned up right on time.",
	},
	["heal.w14.wit.058"] = {
		"I won't say it didn't hurt. I'll say my pride won't let me admit it.",
		"Hurt? Me? Only my feelings, and those mend slower.",
	},
	["heal.w14.wit.059"] = {
		"I mend faster than I learn. One of those ought to catch up with the other.",
		"Healing quick, learning slow. A dangerous pairing.",
	},
	["heal.w14.wit.060"] = {
		"Patched myself up with no help at all. I'll accept a medal now.",
		"No assistance required. Medals may be left at my feet.",
		"Solo repair, no witnesses, flawless result. Practically legendary.",
	},
	["heal.w14.wit.061"] = {
		"I'd write the wound a strongly worded letter if I thought it could read.",
		"Dear wound: closed, as requested. Do not write back.",
	},
	["heal.w14.wit.062"] = {
		"My compliments to whatever did this. Fine work. Undone now, sorry.",
		"Nice try, whatever that was. Undone.",
		"Whatever did this: good effort. Shame it didn't take.",
	},
	["heal.w14.wit.063"] = {
		"There's a special satisfaction in cleaning up your own mess. I'm enjoying every bit of it.",
		"Smug is the right word. Mended, and smug about it.",
	},
	["heal.w14.wit.064"] = {
		"mutters something to the wound that is not a compliment, and the wound, being closed now, says nothing back.",
		"has a few sharp words for the hurt, which, now mended, takes them in silence.",
	},
	["heal.w14.wit.065"] = {
		"And lo, the injured party rose, mended by none other than the injured party.",
		"Injured party and repairer, one and the same. Very economical.",
		"The victim, the healer and the witness are all one person, and all three are satisfied.",
	},
	["heal.w14.wit.066"] = {
		"With a little attention, this mending wouldn't have been needed. But then how would I pass the time?",
		"Paying attention would have spared me this. Where's the fun in that?",
	},
	["heal.w14.wit.067"] = {
		"Shh, shh. All mended. Who's a sturdy one, then?",
		"There, there. All right now. Yes, I'm talking to myself.",
		"Hush now. All patched. Nothing to make a face about.",
	},
	["heal.w14.wit.068"] = {
		"I can never judge how hurt I am. Either dying or fine, nothing in between.",
		"Dying or fine: my two moods. Currently, fine.",
	},
	["heal.w14.wit.069"] = {
		"I had that under control. The whole time. More or less.",
		"Totally under control. Mostly. In the end.",
	},
	["heal.w14.wit.070"] = {
		"Mending's the easy part. Explaining to myself why I needed it takes longer.",
		"The wound took a moment. The excuse is taking much longer.",
	},
	["heal.w14.wit.071"] = {
		"inspects the repair from several angles, the way a buyer inspects a horse of doubtful history.",
		"turns this way and that, checking the mend as if hunting for a maker's mark.",
	},
	["heal.w14.wit.072"] = {
		"Prognosis: I'll live. Getting likelier by the moment.",
		"Odds of survival: improving nicely.",
	},
	["heal.w14.wit.073"] = {
		"Luck and I settle accounts like two sly merchants: grudgingly, and with a lot of rounding.",
		"Luck rounds down, I round up. The books never quite balance.",
	},
	["heal.w14.wit.074"] = {
		"Sturdier than I look. Not by much, but sturdier.",
		"Tougher than I look. A low bar, but cleared.",
		"Flimsier than I'd like, tougher than I feared.",
	},
	["heal.w14.wit.075"] = {
		"The wound closed so politely you'd think it was apologizing. It should be.",
		"Closing up, all manners now. A bit late for courtesy.",
	},
	["heal.w14.wit.076"] = {
		"Top marks for not dying. Keep the streak going.",
		"Gold star for staying alive. Stick it somewhere visible.",
		"Survival: achieved. Applause: optional.",
	},
	["heal.w14.wit.077"] = {
		"Each mend is a small loan against the end. The interest is steep, but I'm in no position to haggle.",
		"Interest on these mends is steep. I keep signing anyway.",
	},
	["heal.w14.wit.078"] = {
		"That'll teach me. It won't, of course, but it ought to.",
		"Lesson learned. Lesson soon forgotten, I expect.",
		"Lesson given. Whether it was learned remains doubtful.",
	},
	["heal.w14.wit.079"] = {
		"This body is a creaking cart: patched, it creaks a little less and rolls a little more.",
		"Creaky cart, freshly oiled. Rolling.",
	},
	["heal.w14.wit.080"] = {
		"That's fixed. The annoyance isn't.",
		"The hurt's gone. The grudge stays.",
		"Mended and still grumpy. Only one of those was urgent.",
	},
	["heal.w14.wit.081"] = {
		"The tales always skip the part where the hero stops to patch a hole. Just as well. It isn't pretty.",
		"Heroes in stories never stop to mend. Lucky them.",
	},
	["heal.w14.wit.082"] = {
		"Whoever designed bodies left far too many soft bits in them. Patched, though.",
		"Too many soft bits in a body. Poor design, decent repairs.",
	},
	["heal.w14.wit.084"] = {
		"Remind me to be careful. Actually, don't bother. I wouldn't listen.",
		"Be careful, I tell myself. I'm a terrible listener.",
		"Advice to self: look where the trouble is. Advice probably ignored.",
	},
	["heal.w14.wit.085"] = {
		"gives a little bow to no one in particular, as if a tricky piece of work had just earned applause.",
		"bows slightly to nobody, a craftsman's bow over a finished job.",
	},
	["heal.w14.wit.086"] = {
		"Say what they like about me, nobody can say I don't clean up after myself.",
		"I make my own messes and I mend my own holes. Fair's fair.",
	},
	["heal.w14.wit.087"] = {
		"Holes in me tend to make holes in my plans. Both patched.",
		"One hole closed in me, one in the schedule. Efficient.",
	},
	["heal.w14.wit.088"] = {
		"I'm fond of this body. It's the only one I've got, and it keeps forgiving me.",
		"Only body I have, and it keeps forgiving me. Generous of it.",
	},
	["heal.w14.wit.089"] = {
		"Ahh. Nothing sweeter than an ache that's given up.",
		"An ache that no longer aches. What a lovely idea.",
		"The ache surrenders. Generous terms, I'd say.",
	},
	["heal.w14.wit.090"] = {
		"Some collect coins. I seem to collect close calls. I'd swap the lot for coins.",
		"Close calls make a poor collection. Nobody will buy them.",
	},
	["heal.w14.wit.091"] = {
		"Done on time and under budget. My kind of repair.",
		"Cheap, fast and nearly tidy. Best offer around.",
		"Quick, cheap and adequate. I'd hire me any day.",
	},
	["heal.w14.wit.092"] = {
		"The pain has left, promising to drop by sometime. I've changed the locks.",
		"Pain left a note: it'll visit. Locks changed.",
	},
	["heal.w14.wit.093"] = {
		"Pull yourself together, I said. And look: done.",
		"Pull yourself together. Literally, as it turns out.",
	},
	["heal.w14.wit.094"] = {
		"Every mending feels like winning an argument with the world. A small, petty argument, but mine.",
		"Small victory in a petty quarrel with the world. I'll take petty.",
	},
	["heal.w14.wit.095"] = {
		"pokes the mended spot carefully, winces on reflex, then looks faintly sheepish.",
		"winces at a pain that has already gone, and pretends it was a yawn.",
	},
	["heal.w14.wit.096"] = {
		"All sorted. Whatever's next will have to start from scratch.",
		"Slate wiped clean. The next one starts from nothing.",
	},
	["heal.w14.wit.097"] = {
		"The indestructible one, freshly reassembled. Mind the joins.",
		"Indestructible, after some assembly.",
		"Unbreakable, give or take a few repairs.",
	},
	["heal.w14.wit.098"] = {
		"Pain is just the body being dramatic. I've talked it down.",
		"The body overreacted. I've calmed it with a quick repair and a stern look.",
		"A tantrum from the body. Tantrum over.",
	},
	["heal.w14.wit.099"] = {
		"I'm going to pretend that went exactly as planned.",
		"As planned, all of it. What the plan was is another matter.",
	},
	["heal.w14.wit.100"] = {
		"Between 'ouch' and 'fine' runs a long corridor. I just crossed it in a blink.",
		"Ouch to fine in a blink. Shortest trip I'll make.",
	},
	["heal.w14.wit.101"] = {
		"regards the mended place with mild suspicion, as if it might reopen just to make a point.",
		"keeps half an eye on the mend, plainly not trusting it yet.",
	},
	["heal.w14.wit.102"] = {
		"dusts off {g:his|her} gear, as if the whole affair had been only a bit of dust.",
		"brushes {g:himself|herself} down with great ceremony, as though nothing worse than dust had happened.",
	},
	["heal.w14.wry.001"] = {
		"Excuses later. Mending first, then the excuses, and they'd better be good.",
		"What were you even trying to do? No, don't explain. I'm busy fixing it.",
		"Explain it to me afterward. Slowly. With diagrams.",
	},
	["heal.w14.wry.002"] = {
		"This one's free. I'm told generosity builds character; mine is getting enormous.",
		"No charge. Call it an investment in you staying upright.",
		"On the house. The house is now reviewing its policies.",
	},
	["heal.w14.wry.003"] = {
		"Careful with that. It's brand new, and I'd like it to stay that way for a bit.",
		"Mind the repair. It hasn't even settled yet.",
		"Fresh work, {target}. Give it a minute before you test it.",
	},
	["heal.w14.wry.004"] = {
		"Deal: I keep you on your feet, you keep the trouble off mine. Fair?",
		"Here's the bargain. You stay in one piece, I stop shouting. Everyone wins.",
	},
	["heal.w14.wry.005"] = {
		"You looked dreadful. Now you look slightly less dreadful. That's progress.",
		"From terrible to merely worrying. I'll take it.",
	},
	["heal.w14.wry.006"] = {
		"Don't you dare fall over now. I'd take it very personally.",
		"Falling down is forbidden. I've decided, and I'm in charge of this bit.",
		"Fall over and I'll mend you just to scold you properly.",
	},
	["heal.w14.wry.007"] = {
		"My work, your hide. Look after both, would you?",
		"The work is mine. The skin it's on is yours. Treat them both kindly.",
		"Your hide, {target}, but my stitches. Mind them.",
	},
	["heal.w14.wry.008"] = {
		"I had plans, {target}. None of them involved this.",
		"I was busy with something. It was going nicely. And then, you.",
	},
	["heal.w14.wry.009"] = {
		"Next time, get hurt closer to me. The running is the worst part.",
		"If you must bleed, do it within arm's reach. My knees will thank you.",
	},
	["heal.w14.wry.010"] = {
		"Fine. It's fine. You can stop looking at me like that.",
		"Closed. Yes, properly. No, I don't need you to check.",
		"It's shut. It'll stay shut. Stop eyeing me as if I'd lie about it.",
	},
	["heal.w14.wry.011"] = {
		"Less heroics, {target}. More standing somewhere sensible.",
		"Fewer heroics, more common sense. I'd settle for either.",
	},
	["heal.w14.wry.012"] = {
		"I'm not angry. I'm mending. Angry is scheduled for afterward.",
		"The scolding comes later. Right now, all you get is the careful part.",
		"Calm now, furious later. I've made room for both.",
	},
	["heal.w14.wry.013"] = {
		"I hereby declare this hole closed. Applause is optional, but encouraged.",
		"Let it be known: the wound is shut, and I am owed a chair.",
	},
	["heal.w14.wry.014"] = {
		"Splendid timing. Truly, you picked the perfect moment for that.",
		"Of all the moments to do that. Well chosen. Really.",
		"Exquisite timing, {target}. Honestly, a gift.",
	},
	["heal.w14.wry.015"] = {
		"That's mended. The bruise on your pride is yours to deal with.",
		"Flesh I can fix. Dented pride, you tend on your own.",
	},
	["heal.w14.wry.016"] = {
		"Mending is free. Watching that cost me a year of my life.",
		"The hole costs nothing. The fright you gave me, I'm billing.",
		"No charge for the mending. The worry I'll keep, as a souvenir.",
	},
	["heal.w14.wry.017"] = {
		"For a moment there I was nearly worried. Don't let it go to your head.",
		"Nearly frightened me. Nearly. No need to look pleased.",
	},
	["heal.w14.wry.018"] = {
		"Next time you want attention, just ask. It's cheaper for everyone.",
		"Wanting company is fine. Bleeding for it is a little much.",
		"If you're bored, there are less painful hobbies.",
	},
	["heal.w14.wry.019"] = {
		"Was that a plan, {target}? Tell me that wasn't the plan.",
		"Please say there was a plan. Please say that wasn't it.",
	},
	["heal.w14.wry.020"] = {
		"I'm keeping the credit for this, {target}. You can keep the scar.",
		"Fair split: I take the glory, you take the mark it leaves.",
		"The scar is yours. The bragging rights are mine.",
	},
	["heal.w14.wry.021"] = {
		"Next round of madness, warn me first. I like to be ready.",
		"Planning more of that? Some notice would be lovely.",
	},
	["heal.w14.wry.022"] = {
		"What a mess. I've seen tidier butcher's counters.",
		"Look at all this. A butcher would be ashamed of it.",
	},
	["heal.w14.wry.023"] = {
		"You're lucky I'm in a generous mood. I'm not, but you're lucky anyway.",
		"Count yourself lucky: I'm in a foul mood and did it properly regardless.",
	},
	["heal.w14.wry.024"] = {
		"There's a fee for this. I'll think of one. It will be unpleasant.",
		"I'm not charging coin. I'm charging a favor, and I get to pick it.",
		"Payment terms: be more careful. Late fees apply.",
	},
	["heal.w14.wry.025"] = {
		"Keep it shut at least until I've sat down. Is that so much to ask?",
		"Could it stay closed long enough for me to sit? Just that long.",
	},
	["heal.w14.wry.026"] = {
		"If anyone asks, that was a scratch. Spare my nerves the true story.",
		"Officially, it was nothing. Unofficially, never do that near me.",
		"Tell nobody. My reputation for calm couldn't survive it.",
	},
	["heal.w14.wry.027"] = {
		"Dying is not permitted while I'm here. I'd never hear the end of it.",
		"No dying near me. It would ruin my whole mood.",
		"Dying in my company is strictly forbidden. Ask around. Actually, don't.",
	},
	["heal.w14.wry.028"] = {
		"I'll be cross later. For now, stay right there.",
		"Cross later. Right now, don't move a muscle.",
		"Scolding postponed. Stay where you are, {target}.",
	},
	["heal.w14.wry.029"] = {
		"There. I've put back everything I could find.",
		"All the pieces I could find are back where they go. Don't go looking for the rest.",
		"Reassembled. Some assembly may still be required.",
	},
	["heal.w14.wry.030"] = {
		"Bones where bones belong, skin where skin belongs. Kindly leave them there.",
		"Everything's back where it goes. Don't rearrange the furniture.",
	},
	["heal.w14.wry.031"] = {
		"I have exactly enough patience for one of these. You've just had it.",
		"My whole supply of patience, gone on you. Spend it wisely.",
	},
	["heal.w14.wry.032"] = {
		"Go and be useful. Carefully. Usefully and carefully, in that order.",
		"Off you go. Be useful, be careful, be back in one piece.",
		"Useful and careful, {target}. Both. It isn't a choice.",
	},
	["heal.w14.wry.033"] = {
		"That was close enough to make me cross.",
		"Too close. Close enough that I'm now in a temper.",
	},
	["heal.w14.wry.034"] = {
		"Do that once more and I'll mend you very, very slowly.",
		"One more stunt like that and the next repair comes with a long lecture attached.",
	},
	["heal.w14.wry.035"] = {
		"I didn't do all that work so you could come apart at the first shove.",
		"All that effort, and you're already eyeing the next disaster.",
	},
	["heal.w14.wry.036"] = {
		"I'd shake you, but I've only just finished putting you together.",
		"Part of me wants to rattle some sense into you. The rest of me just fixed you.",
	},
	["heal.w14.wry.037"] = {
		"Next time, shout sooner. I'm much quicker when someone tells me.",
		"A yell would have helped. A little warning, that's all I ask.",
	},
	["heal.w14.wry.038"] = {
		"That's done. And I was having such a quiet moment, too.",
		"Mended. There goes my one peaceful minute.",
	},
	["heal.w14.wry.039"] = {
		"You'll be the end of me, {target}. Not this time, but you'll manage it.",
		"One of these days you'll finish me off. Not with this one, though.",
	},
	["heal.w14.wry.040"] = {
		"My hands are steady. My temper isn't. Hope the hands win.",
		"Steady hands, ragged temper. Lucky for you, the hands are doing the work.",
	},
	["heal.w14.wry.041"] = {
		"Sorted. The fuss is coming later, in full and with interest.",
		"That's the mending. The telling-off arrives separately.",
	},
	["heal.w14.wry.042"] = {
		"The wound's closed. The thick head that earned it is beyond my skill.",
		"I can shut a gash. A hard head is another matter entirely.",
		"Skin knits. Stubbornness, sadly, never unknits.",
	},
	["heal.w14.wry.043"] = {
		"Make it worth it. Whatever you do with this, make it worth my trouble.",
		"Go spend it on something good. I didn't do that for nothing.",
		"A gift, that. Don't waste it on something foolish.",
	},
	["heal.w14.wry.044"] = {
		"Mended, not immortal. Learn the difference before I have to teach it.",
		"A patch isn't armor. Try to remember which one you've got.",
	},
	["heal.w14.wry.045"] = {
		"Whatever you were thinking just then, think it a little less next time.",
		"That idea you had? Leave it here. It's not coming with you.",
	},
	["heal.w14.wry.046"] = {
		"If you go down, I'll be furious. At length. Over your grave.",
		"Fall and I'll spend a year shouting at your headstone. Don't test me.",
	},
	["heal.w14.wry.047"] = {
		"Don't die on me. I've no words ready for that, and I refuse to look for any.",
		"Stay among the living. I haven't the patience for the other thing.",
		"I refuse to lose you to something that stupid.",
	},
	["heal.w14.wry.048"] = {
		"Hurts less? Good. That's the last kind thing I'm doing for a while.",
		"That was kindness. Enjoy it; the supply is running low.",
	},
	["heal.w14.wry.049"] = {
		"{target}, I patched that so neatly I'm almost sorry it's on you.",
		"Lovely work, if I say so myself. Wasted on anyone this careless.",
	},
	["heal.w14.wry.050"] = {
		"Remember how that felt. Memory's the one thing I can't put back.",
		"Keep the sting of it. That part I'm leaving in on purpose.",
	},
	["heal.w14.wry.051"] = {
		"I'll forgive you once I've stopped being frightened. Give it a minute.",
		"Forgiveness is on its way. It's stuck behind the fright.",
		"Let me stop being scared first. Then I'll stop being cross.",
	},
	["heal.w14.wry.052"] = {
		"Let it be written: I saved you, and complained the entire time.",
		"Note it somewhere: rescued, grudgingly, with remarks.",
	},
	["heal.w14.wry.053"] = {
		"Mended. Now go and annoy whatever did that instead of me.",
		"Off you go. Bother the thing that hurt you; I'm finished being bothered.",
	},
	["heal.w14.wry.054"] = {
		"Keep this up and I'll be the one needing mending.",
		"At this pace, the next one on the ground will be me.",
	},
	["heal.w14.wry.055"] = {
		"{target}, you are a full-time job. I don't remember applying.",
		"Looking after you is honest work. I just don't recall signing up for it.",
	},
	["heal.w14.wry.056"] = {
		"Choose your disasters more carefully, {target}. Preferably far from me.",
		"Smaller catastrophes, please. I've only got the one pair of hands.",
	},
	["heal.w14.wry.057"] = {
		"Quiet. I'm counting, and you're making me lose my place.",
		"Shush. Concentrating. You can complain once it's shut.",
	},
	["heal.w14.wry.058"] = {
		"There. Now go and be magnificent somewhere I can see you.",
		"Go on, be brilliant. Within sight, please.",
		"Go and shine, {target}. Not too far off.",
	},
	["heal.w14.wry.059"] = {
		"No, it won't fall off. Probably. Stop prodding it.",
		"Leave it alone. Prodding won't make it heal faster; it only annoys me.",
		"It'll hold. Unless you keep poking it, in which case I'm not responsible.",
	},
	["heal.w14.wry.060"] = {
		"{target}, you gave me a fright. That's all. Don't make me say it twice.",
		"You frightened me. There, I said it. I won't be repeating it.",
	},
	["heal.w14.wry.061"] = {
		"That's my best work you're walking around in, {target}. Respect it.",
		"You're wearing my finest effort. Try not to tear it.",
	},
	["heal.w14.wry.062"] = {
		"Thank the luck that put me nearby. It's earned a reward; you haven't.",
		"Luck put me close by. Luck gets the gratitude. You get the bill.",
	},
	["heal.w14.wry.063"] = {
		"Scold first, worry after. The other way round, the hands slow down.",
		"Grumbling keeps the hands quick. Fretting would only make them clumsy.",
	},
	["heal.w14.wry.064"] = {
		"If I sound cross, it's because cross is easier to carry than frightened.",
		"Anger is quick and useful. Fear would clog the hands, so anger gets the job.",
	},
	["heal.w14.wry.065"] = {
		"The wound is shut. My temper will take a good while longer.",
		"Flesh closes quickly. My mood, on the other hand, is going to need time.",
	},
	["heal.w14.wry.066"] = {
		"Closed, and I'll grumble about it for a while. Grumbling is how the fright gets out.",
		"Mutter, mutter. It's not ill temper; it's the scare finding the door.",
	},
	["heal.w14.wry.067"] = {
		"Easier to scold than to admit how badly that frightened me.",
		"A sharp word costs less than admitting the scare. So: sharp words.",
	},
	["heal.w14.wry.068"] = {
		"Nobody needs to know my hands were shaking until it closed.",
		"The hands shook the whole way through. They can stop now; nobody saw.",
	},
	["heal.w14.wry.069"] = {
		"Gruff words, steady hands. If the soft words ever come out, it'll mean things went badly.",
		"The kind words stay locked up. They're kept for the bad endings.",
	},
	["heal.w14.wry.070"] = {
		"Worry leaves my mouth dressed as complaint. It travels better that way.",
		"Translated from grumbling: I was frightened, and now I'm not.",
	},
	["heal.w14.wry.071"] = {
		"Some mend with gentle words. Mine come out sideways, but the mending's the same.",
		"The words are prickly. The work isn't. That's the arrangement.",
	},
	["heal.w14.wry.072"] = {
		"If anyone ever pays me for these, I'll retire somewhere with no sharp edges at all.",
		"One coin per mended hole and I'd own a fortress. With padded walls.",
	},
	["heal.w14.wry.073"] = {
		"Mend, scold, repeat. It's a living. Not a good one.",
		"Patch them up, tell them off, send them back. Somehow this is my calling.",
	},
	["heal.w14.wry.074"] = {
		"Too close. The scolding can wait until the hands stop being so careful.",
		"That one nearly slipped away. I'll be sharp about it later, once the hands are steady.",
	},
	["heal.w14.wry.075"] = {
		"Whoever made bodies this easy to break owes me an apology.",
		"Such soft things, bodies. Whoever designed them never had to mend one.",
	},
	["heal.w14.wry.076"] = {
		"Mended. Now they'll go and do the exact same thing. I'd bet good coin on it.",
		"Closed. And off they go, straight back toward the same trouble. Naturally.",
	},
	["heal.w14.wry.077"] = {
		"I'd rather be angry at the living than polite to the dead.",
		"Scolding is a luxury. It needs someone alive to hear it.",
	},
	["heal.w14.wry.078"] = {
		"Somewhere, somebody mends only careful people. I hope they know how lucky they are.",
		"There must be someone out there who only patches up the cautious. Lucky soul.",
	},
	["heal.w14.wry.079"] = {
		"mutters something unkind about carelessness the whole time, and does not stop until the job is done properly.",
		"grumbles steadily through the work; the work, for all that, is careful.",
	},
	["heal.w14.wry.080"] = {
		"clicks {g:his|her} tongue in disapproval, then mends the damage anyway, thoroughly and well.",
		"tuts at the damage, then undoes it with great care.",
	},
	["heal.w14.wry.081"] = {
		"glares at {target}, then closes the wound as gently as if the glare had never happened.",
		"scowls at the hurt like a personal insult, and mends it with soft hands.",
	},
	["heal.w14.wry.082"] = {
		"mends the hurt with the expression of someone adding up a very long bill.",
		"works with the sour face of a shopkeeper totting up a debt that will never be paid.",
	},
	["heal.w14.wry.083"] = {
		"shakes {g:his|her} head slowly at the damage, the way one looks at a pot left to boil over.",
		"regards the damage with weary disbelief, then gets on with it.",
	},
	["heal.w14.wry.084"] = {
		"once the wound has closed, raises one warning finger: a whole lecture, without a word.",
		"lifts a stern finger when it's done, and lets the silence do the scolding.",
	},
	["heal.w14.wry.085"] = {
		"mends {target} with brisk, impatient care, muttering the whole time.",
		"patches up the damage at speed, impatient and exact, muttering darkly all the while.",
	},
	["heal.w14.wry.086"] = {
		"squints at {target} once the hurt has gone, like someone deciding whether to scold now or save it.",
		"eyes the finished work narrowly, plainly saving the scolding for later.",
	},
	["heal.w14.wry.087"] = {
		"finishes the mending and dusts off {g:his|her} hands with the air of someone who will be mentioning this later.",
		"closes the wound, then folds {g:his|her} arms: a word or two is coming.",
	},
	["heal.w14.wry.088"] = {
		"takes one look at the damage and makes a small, pained noise, like a craftsman finding a scratch on finished work.",
		"winces at the damage like a cobbler at a split seam, and starts in on it.",
	},
	["heal.w14.wry.089"] = {
		"says {target}'s name once, sharply, like a reprimand, and the wound begins to close.",
		"snaps out a single word of reproach, and goes on mending without another.",
	},
	["heal.w14.wry.090"] = {
		"keeps scowling until the danger has passed, and only then lets it slip.",
		"frowns hard through every moment of it, and the frown eases only once the wound has closed.",
	},
}, "base_spells")
