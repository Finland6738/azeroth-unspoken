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
}, "base_spells")
