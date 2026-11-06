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
}, "base_spells")
