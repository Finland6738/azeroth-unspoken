-- Testi di base in inglese: combattimento (inizio, minaccia, vittoria, ferite gravi). Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryCombat.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	["battle.gen.01"] = {
		"{cry}",
		"With me! {cry}",
	},
	["battle.gen.02"] = {
		"Let the bards have something to sing of tonight!",
		"Forward! Let's give the taverns a story worth the ale.",
	},
	["battle.gen.03"] = {
		"I did not seek this battle. Nor will I flee it.",
		"I would have walked on by. You chose otherwise.",
	},
	["battle.gen.04"] = {
		"Come, then. My blade has thirsted too long.",
		"At last. My hands have been itching for days.",
	},
	["battle.gen.05"] = {
		"Another dawn, another battle. Perhaps one day we will learn other songs.",
		"The same dance again. Only the steps change, and the faces.",
	},
	["battle.gen.06"] = {
		"Stand fast! While one of us yet breathes, nothing is lost!",
		"Up, up! Nobody stays down while I'm standing!",
	},
	["battle.gen.07"] = {
		"Blood calls to blood. So it has ever been.",
		"One strikes, the other answers. Nobody remembers who began it.",
	},
	["battle.gen.08"] = {
		"I had hoped for a quiet day. I hoped poorly.",
		"And here I was, just out for a stroll.",
		"There it is. I knew all that quiet was suspicious.",
	},
	["battle.gen.09"] = {
		"Remember this moment: here is where fate chose its side.",
		{ "Let those who come after read it plainly: here, no one bowed their head.", depth = "elevated" },
	},
	["battle.gen.10"] = {
		"In the name {faith_of}, I stand.",
		"I hold here. The rest I leave in the hands {faith_of}.",
	},
	["battle.gen.11"] = {
		"Look well upon me. I will be the last thing you see.",
		"Take a good look at this face. You won't have time to forget it.",
	},
	["battle.gen.12"] = {
		"Not one step back. Not one!",
		"Feet planted. Nobody gets past this spot.",
		"Shoulder to shoulder, and let them come.",
	},
	["battle.gen.13"] = {
		"Let it be swift. The longest songs are always the saddest.",
		"Let it be quick. I'm tired of counting scrapes.",
	},
	["battle.gen.14"] = {
		"Ah, at last, someone who doesn't just want to talk.",
		"Good. All that chatter was starting to bore me.",
	},
	["battle.gen.15"] = {
		"I'm scared. Fine. Move anyway.",
		"Palms slick on the grip. Breathe.",
	},
	["battle.gen.16"] = {
		"Weak on the left. Watch the feet, not the blade.",
		"Three paces of room, solid footing. Here we go.",
	},
	["battle.tgt.01"] = {
		"{target}! Your road ends here.",
		"You. Yes, you. This is as far as you go.",
		"Last step, {target}. Make it a good one.",
	},
	["battle.tgt.02"] = {
		"I know you, {target}. Now you will know me.",
		"I learned your stride from afar. Now learn mine.",
	},
	["battle.tgt.03"] = {
		"{target}? I expected worse. Or at least more.",
		"That's it? I was promised an opponent.",
	},
	["battle.tgt.04"] = {
		"You are mighty, {target}. But even mountains fall, one stone at a time.",
		{ "Bigger than me, stronger than me. Fine. I'll just be more stubborn.", depth = "natural" },
		{ "Tall as a tower, then. Towers have foundations, and I will find yours.", depth = "elevated" },
	},
	["battle.tgt.05"] = {
		"Come, {foe}. I have been waiting.",
		"There you are, {foe}. You're late.",
	},
	["battle.undead.01"] = {
		"Return to the dust. Death has waited for you long enough.",
		"You've walked a long way for something that doesn't breathe. Down.",
	},
	["battle.undead.02"] = {
		"Once you were someone. I will give back the rest that was stolen from you.",
		"I wonder what your name was. Let me give you back the quiet, at least.",
	},
	["battle.undead.03"] = {
		"Slave of the Lich King... I broke my chains. You will burn in yours.",
		"Do you still hear his voice in your skull? I don't. That's the difference between us.",
	},
	["battle.demon.01"] = {
		"This world is not yours, demon. It never will be.",
		"Crawl back where you came from. This air isn't yours to breathe.",
	},
	["battle.demon.02"] = {
		"I have heard your name whispered in the dark. Tonight it will be forgotten.",
		"You reek of brimstone and promises. I'm buying neither.",
	},
	["battle.demon.03"] = {
		"Your blood poisoned my fathers. My blood will bury you.",
		"You put the chains on us once. Now you learn what they weigh.",
	},
	["battle.beast.01"] = {
		"Forgive me, brother of the fang. Only one of us will see the sunset.",
		"Nothing personal, old one. We're both just hungry.",
	},
	["battle.beast.02"] = {
		"Good beast. Nice beast. Stay, beast...",
		"Sit. Sit! Why does that never work?",
	},
	["battle.dragon.01"] = {
		"Your wings have darkened the sun for the last time, worm.",
		"Come down, dragon. Let's see what you're worth without the sky.",
	},
	["battle.dragon.02"] = {
		"You are ancient, dragon. But ancient things may also end.",
		"You have slept on gold for centuries. Today the sleeping stops.",
	},
	["battle.elemental.01"] = {
		"Faceless fury, return to the plane that spawned you!",
		"Screaming stone, walking flame. This is not your place.",
	},
	["battle.elemental.02"] = {
		"The spirits have spoken of you. They did not call you friend.",
		"Lost spirit, someone tore you out of balance. I will set you back where you belong.",
	},
	["battle.giant.01"] = {
		"That big? Good. Hard to miss.",
		"Anyone got a ladder? No? Ankles it is, then.",
	},
	["battle.mech.01"] = {
		"Someone forgot to install the off switch. I'll provide one.",
		"Something's creaking. I hope it's him and not my knees.",
	},
	["battle.pvp.01"] = {
		"The Alliance has sent another lamb. The Horde thanks them.",
		"Alliance, this far from home? You took a wrong turn.",
	},
	["battle.pvp.02"] = {
		"Your howling does not frighten us. We have heard it before, and we won all the same.",
		"Shout all you like. We'll keep our shields up and save our breath for later.",
	},
	["battle.pvp.03"] = {
		"There is no hatred in my hand. Only the weight of a long war.",
		"I don't hate you. That doesn't mean I'll lower my guard.",
	},
	["battle.elite.01"] = {
		"Close ranks! This is no foe to face alone!",
		{ "Careful, this one's tough. No heroics.", depth = "natural" },
		{ "This is no common quarry. Let every blow be weighed and every step measured.", depth = "elevated" },
	},
	["battle.boss.01"] = {
		"So this is the bottom of all this dark. If we fall, let it be said we did not falter.",
		{ "There it is. Breathe, check your straps, no funny business.", depth = "natural" },
		{ "Here the long road ends. Whatever comes, we walked it together.", depth = "elevated" },
	},
	["battle.boss.02"] = {
		"Every road has led us here. None will lead us back unchanged.",
		"We came this far one step at a time. One step left.",
	},
	["battle.orc.01"] = {
		"The blood of my fathers roars! Lok'tar!",
		"The war drum is pounding in my chest! Lok'tar!",
	},
	["battle.orc.02"] = {
		"We are no one's slaves now. I fight as a free orc.",
		"I wore chains once. Now I carry an axe, and I choose where it falls.",
	},
	["battle.scourge.01"] = {
		"I have already met death. It did not impress me.",
		"My heart doesn't race anymore. Handy, at times like these.",
	},
	["battle.scourge.02"] = {
		"Kill me? It has been done. Look how that turned out.",
		"Mind where you hit. Some bits don't grow back.",
	},
	["battle.tauren.01"] = {
		"The Earth Mother holds me up. And you, who holds you?",
		"I feel the earth beneath my hooves. She holds, and so do I.",
	},
	["battle.troll.01"] = {
		"The loa be watching, mon. Let's give them a good show.",
		"Hey, loa! Watch this. Here comes the good part.",
	},
	["battle.human.01"] = {
		"For every burned field of Elwynn, for every home no one came back to!",
		"For the farms, for the mills, for everyone watching the road tonight!",
	},
	["battle.dwarf.01"] = {
		"For my fathers' fathers! The mountain gives no ground, and neither do I.",
		"Hang on, let me fix my beard. There. Now we're talking.",
	},
	["battle.dwarf.02"] = {
		"The mountains do not yield, and neither do their sons and daughters!",
		"Stone and hammer! Let's see who chips first!",
	},
	["battle.nelf.01"] = {
		"Ten thousand years of vigil, and still the world breeds monsters.",
		"I have watched oaks rise from acorns, and never once watched a war end.",
	},
	["battle.nelf.02"] = {
		"The moon is high. Elune sees all things, and tonight she sees you.",
		"The silver moon bears witness. Let her judge who is left standing.",
	},
	["battle.gnome.01"] = {
		"Calculating the odds... no, better not to know. Charge!",
		"Interesting theory: if I run fast enough, it can't hit me. Let's test it!",
	},
	["battle.warrior.01"] = {
		"Steel and will. I need nothing more.",
		"Shield up, head down. The arm does the rest.",
	},
	["battle.warrior.02"] = {
		"Behind me! Let them strike me first!",
		"Stay back, I've got them. It's what I'm for.",
	},
	["battle.paladin.01"] = {
		"The Light does not ask for vengeance. It asks for justice. And today justice carries a hammer.",
		"The Light asks me to be just, not gentle. Today I will be just.",
	},
	["battle.paladin.02"] = {
		"Burn bright, O Light! Let the darkness remember your name!",
		"Light, give me a steady arm and clear eyes!",
	},
	["battle.hunter.01"] = {
		"I have tracked you over three hills. There is no wood left to hide in.",
		"I've been reading your tracks since dawn. These are the last you'll leave.",
	},
	["battle.rogue.01"] = {
		"Don't look at me. Look behind you. Ah, too late.",
		"Sorry, you dropped something. Oh, no, that was your guard.",
	},
	["battle.rogue.02"] = {
		"The shadows are my friends. They never cared for you.",
		"You didn't hear me come. You won't hear me leave.",
	},
	["battle.priest.01"] = {
		"I will pray for your soul. Afterward.",
		"I'll gladly bless you. First, I'll stop you.",
	},
	["battle.shaman.01"] = {
		"Earth, fire, water and wind: hear me now!",
		"Spirits, I am here. Lend me the thunder's voice.",
	},
	["battle.mage.01"] = {
		"I studied thirty years for this moment. Do try to make it interesting.",
		"Give me a moment to recall the incantation. Joking. Probably.",
	},
	["battle.mage.02"] = {
		"The lines of power draw taut as harp strings. Hear my song.",
		"The air smells of storm and parchment. Mind what you breathe.",
	},
	["battle.warlock.01"] = {
		"I have bargained with things that would drive you mad. You are a footnote.",
		"Something is watching you from over my shoulder. I wouldn't make it angry.",
	},
	["battle.druid.01"] = {
		"The forest has a thousand eyes, and all of them are on you.",
		"The roots know where you step. So do I.",
	},
	["battle.night.01"] = {
		"A poor night to die. But then, they all are.",
		"In the dark, every blow lands a heartbeat before you see it.",
	},
	["battle.dawn.01"] = {
		"Look, the sun is rising. At least one of us will see it set.",
		"First light. At least we'll see each other's faces clearly.",
	},
	["battle.plague.01"] = {
		"This land was green, once. I fight so it may be again.",
		"Even the grass smells sick here. One day we'll scrub it clean, clod by clod.",
	},
	["battle.e.01"] = {
		"tightens {g:his|her} grip until the leather of the hilt creaks.",
		"plants {g:his|her} feet and sinks low, breath short and even.",
	},
	["battle.e.02"] = {
		"sidesteps in a little puff of dust, eyes never leaving the foe.",
		"shrugs off the weariness of the road in one long breath.",
		"rolls {g:his|her} neck until it cracks, then raises a guard without hurry.",
	},
	["battle.e.03"] = {
		"moves through the dark guided more by sound than by sight.",
		"narrows {g:his|her} eyes against the dark, searching for the glint of a blade.",
	},
	["battle.e.04"] = {
		"wrinkles {g:his|her} nose: the air smells of turned earth and old meat.",
		"gives half a step before the cloying stench, then presses forward again.",
	},
	["battle.e.05"] = {
		"looks up, and then a little higher still, to take the measure of the foe.",
		"wets dry lips, eyes fixed on the bulk bearing down.",
		{ "holds still for a long moment, like someone hearing the first thunder of a storm that cannot be outrun.", depth = "elevated" },
	},
	["battle.e.06"] = {
		"glances around: the walls sweat damp, and every footstep comes back doubled.",
		"feels the low ceiling press down as the enemy comes out of the far end of the corridor.",
	},
	["battle.e.07"] = {
		"blows a snowflake off {g:his|her} lip and curls numb fingers around the weapon.",
		"sinks ankle-deep into the snow, hunting for footing that won't slide.",
	},
	["threat.01"] = {
		"Take one more step, and it will be the last you regret.",
		"One more step. Go on. Try it.",
	},
	["threat.02"] = {
		"I know a hundred ways to silence someone. I'd choose the slowest.",
		"I'm a patient sort. With very steady hands. Think on that.",
	},
	["threat.03"] = {
		"This is the only warning you will receive. Heed it well.",
		"I'll say it once, and quietly. Leave.",
	},
	["threat.04"] = {
		"I'm smiling because I'm polite. Don't make me stop.",
		"I'm still smiling. Make the most of it.",
	},
	["threat.05"] = {
		"{target}, I have buried better than you under smaller stones.",
		"I've dug graves for folk bigger than you. Didn't break a sweat.",
	},
	["threat.06"] = {
		"The wind is turning. Do you feel it? It carries your name, and no one will mourn it.",
		"Hear how quiet the woods just went? They already know how this ends.",
	},
	["threat.07"] = {
		"I keep a soul in my pocket that weighs less than yours. For now.",
		"My collection of souls has one empty slot. It looks about your size.",
	},
	["threat.08"] = {
		"Orcs do not threaten. Orcs promise.",
		"I don't raise my voice. I raise my axe.",
	},
	["threat.09"] = {
		"I have all the time in the world. You do not.",
		"I don't tire, I don't sleep, I don't forget. Do you?",
	},
	["victory.gen.01"] = {
		"There is no glory in blood. Only the silence that follows.",
		"The noise is over. The quiet afterward always weighs more than the blow.",
	},
	["victory.gen.02"] = {
		"Still standing. Always standing.",
		"Standing. A bit crooked, but standing.",
		"Still here. Who's next?",
		{ "Upright. That'll do.", depth = "natural" },
		{ "Once more the ground holds me, and I hold the blade. Whoever comes next must reckon with us both.", depth = "elevated" },
	},
	["victory.gen.03"] = {
		"Rest now. Whatever you were, your war is over.",
		"Go, and don't look back. Whatever drove you can let you go now.",
	},
	["victory.gen.04"] = {
		"Well. Better than I feared and worse than I promised.",
		"Right. Nobody saw the bit where I tripped, did they?",
		"Could've been worse. I always say that, and now and then it's true.",
	},
	["victory.gen.05"] = {
		"So fall those who defy the tide. Let all know it.",
		{ "Let the campfires tell it: whoever stood in our road did not rise again.", depth = "elevated" },
	},
	["victory.gen.06"] = {
		"Another name no one will sing. Perhaps not mine either.",
		"I don't even know who that was. Maybe they'd forgotten too.",
	},
	["victory.gen.07"] = {
		"It is done. Raise your shields: the road is long yet.",
		"Done. Wipe your weapons and back on the road.",
	},
	["victory.gen.08"] = {
		"The earth has drunk. It will be enough for today.",
		"The flies will come before nightfall. They always do.",
	},
	["victory.gen.09"] = {
		"The strength was a gift {faith_of}. The pain I keep for myself.",
		"I give thanks for the strength {faith_of}. The shaking hands are all my own.",
	},
	["victory.gen.10"] = {
		"Has anyone seen where my dignity went? It was here a moment ago.",
		"Note to self: next time, count them before charging.",
	},
	["victory.gen.11"] = {
		"I'll sit. Just for a moment. Just one.",
		"Now the legs start shaking. After it's over. Typical.",
	},
	["victory.long.01"] = {
		"Long was the battle and heavy the step. But the day is ours.",
		{ "What a slog. My arms feel like lead, but it's over.", depth = "natural" },
	},
	["victory.lowhp.01"] = {
		"Won. I think. Someone tell me how many pieces I'm missing.",
		"I won, yes. Now someone remind me how standing works.",
	},
	["victory.lowhp.02"] = {
		"By a breath. Death brushed my shoulder and chose to wait.",
		{ "That was close. Far too close.", depth = "natural" },
		{ "I felt the door ease open, and the cold slip through the gap. Then someone on the far side shut it again.", depth = "elevated" },
	},
	["victory.party.01"] = {
		"Well fought, friends. No blade is as strong as those that fight together.",
		{ "Good work, everyone. Anyone need bandages?", depth = "natural" },
	},
	["victory.orc.01"] = {
		"Lok'tar! Victory tastes of iron.",
		"Hah! This one I'll tell the young ones around the fire.",
	},
	["victory.tauren.01"] = {
		"Go back to the Earth Mother. She judges no one.",
		"Lie down in the tall grass. The Earth Mother has room for everyone.",
	},
	["victory.scourge.01"] = {
		"Another who will know the silence. They grow to like it, in time.",
		"Now you're like me, only quieter. Hard to say which of us got the better deal.",
	},
	["victory.troll.01"] = {
		"Hey mon, you was never a problem. Truly.",
		"Easy. Too easy. Now I'm bored.",
	},
	["victory.dwarf.01"] = {
		"Hah! A fine warm-up. Now someone buy me a drink.",
		"Fine work. Back in Khaz Modan they'd make a song of that.",
	},
	["victory.nelf.01"] = {
		"Let the roots take you. The forest forgets quickly, and that is a gift.",
		"Moss will cover you before the next moon. There are worse endings.",
	},
	["victory.human.01"] = {
		"One more day our children will not have to fight.",
		"One fewer on the roads home. Someone will sleep easy tonight.",
	},
	["victory.gnome.01"] = {
		"Exactly as calculated! More or less. Mostly less.",
		"Note: direct approach effective, but loud. Very loud.",
	},
	["victory.priest.01"] = {
		"Light, receive what remains. Even the lost were yours, once.",
		"May the Light find what I could not save.",
	},
	["victory.warlock.01"] = {
		"I won't waste this soul. That would be rude.",
		"One more shard for the bag. You can keep the rest.",
	},
	["victory.hunter.01"] = {
		"A clean hunt. May your flesh feed those who come after.",
		"Clean shot, no suffering. That's how you hunt.",
	},
	["victory.undead.01"] = {
		"Sleep, at last. This time for good.",
		"Down you go. And stay down this time.",
	},
	["victory.night.01"] = {
		"The stars saw nothing. It is better so.",
		"Deep night, quiet, and my breath smoking in the cold. That will do.",
	},
	["victory.e.01"] = {
		"lowers {g:his|her} weapon and lets the breath come back slow, one gulp of air at a time.",
		"drags the back of a hand across {g:his|her} brow and looks around, still wary.",
	},
	["victory.e.02"] = {
		"stares down at the fallen foe, shoulders rising and falling with every breath.",
		{ "lets out a short, hoarse laugh, more relief than triumph.", depth = "natural" },
		{ "raises {g:his|her} weapon to the sky, and for a moment the whole field seems to hold its breath.", depth = "elevated" },
	},
	["victory.e.03"] = {
		"leans against the cold stone of the hall and lets the din of the fight fade into the vaults.",
		"counts {g:his|her} companions with a glance, one by one, before lowering guard.",
	},
	["victory.e.04"] = {
		"kneels by the fallen animal and runs a hand along its still-warm flank.",
		"stays a moment beside the beast while the woods around begin to rustle again.",
	},
	["lowhp.01"] = {
		"Not yet... not today!",
		{ "No, no, no. A little longer. Hold on.", depth = "natural" },
		{ "This is not the ground I lie down on. Not yet.", depth = "elevated" },
	},
	["lowhp.02"] = {
		"If I must fall, I will fall with blade in hand!",
		"I've one good arm left. That's plenty!",
	},
	["lowhp.03"] = {
		"The blood is warm, and the ground is cold. Odd, I never noticed before.",
		{ "My head's spinning. My legs aren't mine anymore.", depth = "natural" },
		{ "Strange, how the world shrinks and recedes, as if seen from the bottom of a well.", depth = "elevated" },
	},
	["lowhp.04"] = {
		"Nothing serious. Just one more hole than I need.",
		"I'm fine. Ish. Let's say I'm still here.",
	},
	["lowhp.05"] = {
		"I have looked darkness closer in the eye than this, and I came back to tell of it.",
		{ "Breathe. You've had worse. Breathe.", depth = "natural" },
	},
	["lowhp.06"] = {
		"To me! Someone cover me, or you'll be singing my name tonight!",
		"I need help over here! Now, not later!",
	},
	["lowhp.07"] = {
		"Do you hear that? It's death clearing its throat.",
		"My fingers are going cold. Bad sign.",
	},
	["lowhp.08"] = {
		"A wounded orc is an angry orc. Come on, then!",
		"You hurt me. Now I'm actually having fun!",
	},
	["lowhp.09"] = {
		"I'm losing pieces. Again. Someone pick up that arm, please.",
		"No need to panic. I wasn't using that bit much anyway.",
	},
	["lowhp.10"] = {
		"Earth Mother... not yet. Let me finish the walk.",
		"I feel the grass calling me down. Wait, Mother. Wait a little longer.",
	},
	["lowhp.11"] = {
		"Elune, do not turn your gaze away. Not now.",
		"Lady of the moon, grant me one more breath. Only one.",
	},
	["lowhp.12"] = {
		"I've taken worse knocks at the forge. I think.",
		"Ow. Right, felt that one all the way into my beard.",
	},
	["lowhp.13"] = {
		"Light, if this is my last breath, let it be a worthy one.",
		{ "Light, help me. Now, please.", depth = "natural" },
	},
	["lowhp.14"] = {
		"My blood has a price. You will pay it.",
		"Pain is currency, and you just filled my purse.",
	},
	["lowhp.15"] = {
		"Pain keeps me awake. Thank you for the favor.",
		"Still got breath. And while I've breath, I swing.",
	},
	["lowhp.16"] = {
		"Too slow. I'm too slow.",
		"Don't look at the wound. Look at the enemy.",
	},
	["lowhp.e.01"] = {
		"falls to one knee, then rises again, slower but no less resolute.",
		"leans on {g:his|her} weapon like a walking stick, spits, and comes back on guard.",
	},
	["lowhp.e.02"] = {
		"sways; for a moment {g:his|her} gaze drifts far away, then returns to the foe.",
		"staggers, and for an instant the din of the fight seems to come from very far off.",
	},
	["lowhp.e.03"] = {
		"doubles over for an instant, breath broken, then straightens with an effort.",
		"clenches {g:his|her} teeth until the jaw creaks.",
	},
	["lowhp.e.04"] = {
		"gives ground under the blows, a step, then another, until there is no room left to give.",
		{ "stumbles back, panting, weapon raised more from habit than strength.", depth = "natural" },
		{ "holds like the last post in a flooding river, bent by the water but not yet torn loose.", depth = "elevated" },
	},
	["lowhp.e.05"] = {
		"searches for {g:his|her} companions with a look, voice too hoarse to call them.",
		"lifts an arm toward {g:his|her} companions with effort, more a signal than a plea.",
	},
	["lowhp.e.06"] = {
		"reels in the dark; for a moment the foe is just one more shape among shapes.",
		"feels the night's chill creep into the wounds.",
	},
	["race.dwarf.battle.001"] = {
		"Khaz Modan! Come and try your luck against the deep stone!",
		"Ironforge sends its regards. All of them, at once!",
		"Here's a dwarf for you! Mind, we hit higher than we stand.",
	},
	["race.dwarf.battle.002"] = {
		"Every stone has a grain. Every brute has a weak side. Find it.",
		"Look for the seam, as in rock. Strike there, and the rest splits on its own.",
	},
	["race.dwarf.battle.003"] = {
		"sets {g:his|her} feet wide and low, planted like a pillar of the old halls.",
		"lowers {g:his|her} head and squares up, broad and unmovable as a dwarven door.",
	},
	["race.dwarf.lowhp.001"] = {
		"Hold. Mountains crack and still stand for a thousand years.",
		"A cracked anvil still rings. Keep ringing.",
		"Leaking like a sprung barrel. Plug it and keep going, dwarf.",
	},
	["race.dwarf.threat.001"] = {
		"Walk away now. I've been told I'm hard to move, and harder to stop.",
		"You'd have better luck arguing with a mountain. Try me and see.",
	},
	["race.dwarf.victory.001"] = {
		"That's how it's done under the mountain, and above it too!",
		"Stubbornness and a strong arm. They've never failed the dwarves yet.",
		"Down it goes. In Ironforge some old-timer just grinned and doesn't know why.",
	},
	["race.dwarf.victory.002"] = {
		"Breathe. Check the gear. Count the bruises. The miners' rule after a cave-in serves just as well after a fight.",
		"Steady. Heart slowing, hands still sure. Stone teaches you to finish a thing, and then to rest.",
		"Like hauling ore: the weight is gone, and only the ache in the arms stays a while.",
	},
	["race.dwarf.victory.003"] = {
		"Is that it? I've had tougher arguments with a mine cart.",
		"Ha! My cousin's ram puts up more of a fight, and before breakfast.",
	},
	["race.gnome.battle.001"] = {
		"For Gnomeregan! And for the right to finish my lunch!",
		"Gnomeregan isn't lost while one gnome still fights for it!",
		"Remember Gnomeregan! Then stop remembering and duck!",
	},
	["race.gnome.battle.002"] = {
		"Size, speed, reach. Probably twice my weight. Fine. Weight is just a number.",
		"Angles, distance, the gap under its guard. Small people see the parts big people forget.",
		"Calm. Think. Every machine has a loose bolt somewhere, and so does every brute.",
	},
	["race.gnome.battle.003"] = {
		"darts sideways with a quick, hopping step: a small target, and far too fast to be an easy one.",
		"squares {g:his|her} narrow shoulders and glares upward with the full fury of a much larger person.",
		"bounces once on {g:his|her} toes, like a spring wound to the very last notch.",
	},
	["race.gnome.lowhp.001"] = {
		"Critical damage. Reroute everything to the legs. Or the arms. Somewhere useful!",
		"Structural integrity: alarming. Keep going anyway; there's no spare.",
		"Warning lights everywhere. Ignore the ones you can't fix.",
	},
	["race.gnome.lowhp.002"] = {
		"I'm fine! Mostly! Somebody, anybody, a hand, please!",
		"This was not in the plans. I would like to revise the plans!",
	},
	["race.gnome.threat.001"] = {
		"I know exactly which bits of you are load-bearing. Back off.",
		"Careful. Small doesn't mean harmless; ask anything that ever tried to step on me.",
	},
	["race.gnome.victory.001"] = {
		"Hypothesis confirmed! Mostly by hitting it until it stopped.",
		"Excellent field data. Very excellent. Somebody hold my notes, my hands are shaking.",
		"And that, ladies and gentlemen, is applied science.",
	},
	["race.gnome.victory.002"] = {
		"One less thing between us and the way home. It's a long list, but it's getting shorter.",
		"For Gnomeregan. Quietly, so nobody asks why my voice cracked.",
		"Small wins add up. That's how you build anything, cities included.",
	},
	["race.gnome.victory.003"] = {
		"The bigger they are, the more satisfying the math.",
		"Leverage, timing, and a pinch of malice. The three pillars of gnomish engineering.",
	},
	["race.human.battle.001"] = {
		"For Stormwind and the Alliance! Stand fast!",
		"For the Lion! Let's be quick about this!",
		"Stormwind never runs! Well, sometimes it marches briskly. Not today!",
	},
	["race.human.battle.002"] = {
		"Breathe. Feet apart, eyes on the hands. Every militia lad in Elwynn learns that much.",
		"My heart is pounding like a smith's hammer. Good. It means it still works.",
		"Not the first fight, and not the last. Just get through this one.",
	},
	["race.human.battle.003"] = {
		"squares {g:his|her} stance like a militia recruit who has finally learned what the drills were for.",
		"sets {g:his|her} jaw with the stubborn calm of farm folk who have seen raiders before.",
		"steps forward without flourish, in the plain way of people who fight because someone has to.",
	},
	["race.human.lowhp.001"] = {
		"Not like this. Not far from home, with nobody to tell them where.",
		"Hold on. There are still fields to walk and tables to sit at. Hold on.",
	},
	["race.human.lowhp.002"] = {
		"I've been hurt worse falling off a hay wagon! ...No, I haven't.",
		"Still standing! Somebody help me keep it that way!",
	},
	["race.human.threat.001"] = {
		"Stormwind has stood through two wars. I can stand through you.",
		"I'd walk away now. The farmers of Westfall weren't the only ones who learned to fight back.",
	},
	["race.human.victory.001"] = {
		"Stormwind stands, and so do I!",
		"That's one more the realm won't have to worry about.",
		"By the Lion of Stormwind! Who's next?",
	},
	["race.human.victory.002"] = {
		"Luck and a bit of training. Mostly luck. Don't tell anyone.",
		"Still breathing. Back home they always said I'd amount to something; nobody ever said what.",
		"Alive. That'll do. The rest can be sorted out later.",
	},
	["race.human.victory.003"] = {
		"lets {g:his|her} guard drop and glances back down the road, as though checking that the way home is still clear.",
		"breathes out and steadies, with the plain relief of someone who has kept trouble off a doorstep.",
	},
	["race.nightelf.battle.001"] = {
		"For Darnassus and the kaldorei!",
		"Come, then. My people have outlasted worse than you.",
		"Elune-adore. You will need her more than I.",
	},
	["race.nightelf.battle.002"] = {
		"Breathe slowly. Move like the wind through grass; strike like the owl.",
		"Silence first, then the blow. My people knew that long before the orcs came.",
	},
	["race.nightelf.battle.003"] = {
		"slips into a fighting stance without a sound, poised like a sentinel at the forest's edge.",
		"goes very still, with the stillness of a great cat a heartbeat before the spring.",
	},
	["race.nightelf.lowhp.001"] = {
		"Not yet. I have seen too many seasons to end in this one.",
		"The earth is patient. Let it wait a little longer for me.",
		"Mortal, yes. But not today.",
	},
	["race.nightelf.threat.001"] = {
		"I have been patient for longer than your people have kept records. Do not test the end of it.",
		"Walk away. The forest hides a great many graves, and none of them is mine.",
	},
	["race.nightelf.victory.001"] = {
		"Swift and clean. The Sentinels would approve.",
		"Done, and without waste. That is how the kaldorei make war.",
		"Quiet again. Good. The forest dislikes shouting.",
	},
	["race.nightelf.victory.002"] = {
		"I will remember this fight longer than anyone who saw it. That is the burden of a long memory.",
		"Another battle for the long ledger my people keep in their heads. It never seems to grow shorter.",
		"Over. I have stopped counting such things; my memory does it for me anyway.",
	},
	["race.nightelf.victory.003"] = {
		"lowers {g:his|her} guard as softly as a great cat settling, eyes still on the edges of things.",
		"straightens and breathes out, unhurried, as if the fight had been only a passing gust.",
	},
	["race.orc.battle.001"] = {
		"For the Horde, and for every orc who died in a cage!",
		"The ancestors of my clan want a story. Let's give them one!",
		"Feel the strength of free hands!",
	},
	["race.orc.battle.002"] = {
		"lets out a roar from deep in the chest, the kind the old clans used to open a battle.",
		"bares {g:his|her} tusks and pounds a fist against {g:his|her} chest, once, twice.",
	},
	["race.orc.lowhp.001"] = {
		"My ancestors bled more than this before breakfast. I'm not done.",
		"I did not leave the camps behind to fall in front of you.",
	},
	["race.orc.victory.001"] = {
		"You fought well. I will remember you that way.",
		"A good fight. There is no shame in losing one like that.",
		"Strong enough to make me sweat. That is a kind of honor too.",
	},
	["race.orc.victory.002"] = {
		"The rage is going out of me now, and I let it. My fathers could not put it down. I can.",
		"Calm returns. That is the part the old Horde never learned: how to stop.",
		"Breathe. The fury served, and now it goes back into its cage. I am the one holding the key.",
	},
	["race.orc.victory.003"] = {
		"Hah! That was a warm-up. Is there a real fight anywhere?",
		"Over already? I was only just getting angry.",
	},
	["race.scourge.battle.001"] = {
		"I have lost everything once already. What do you think you can take?",
		"My will is my own now. I'm not handing it to you either.",
		"Strike, then. I gave up flinching when I gave up breathing.",
	},
	["race.scourge.battle.002"] = {
		"turns toward the enemy with the unhurried calm of something that has nothing left to fear.",
		"lets {g:his|her} jaw hang in a silent grin the living rarely enjoy seeing.",
	},
	["race.scourge.lowhp.001"] = {
		"My will held when the Lich King pulled at it. It can hold now.",
		"Not yet. There are things to do that only the not-quite-dead can do.",
		"Hold together, old bones. Just a little longer.",
	},
	["race.scourge.victory.001"] = {
		"Down. Death is nothing special. I should know.",
		"So that is what dying looks like from the outside. I had forgotten.",
		"Lie there. No one is going to pull you back up and make you walk. You're luckier than I was.",
	},
	["race.scourge.victory.002"] = {
		"No racing heart, no shaking hands. The fight ends and nothing in me notices. Oddly, I miss the trembling.",
		"The living shake after a fight. I check for loose parts instead.",
		"Still standing, or the nearest thing to it I can manage.",
	},
	["race.scourge.victory.003"] = {
		"For the Dark Lady. She will hear of it, or she won't. I will know.",
		"Lordaeron was ours once. Every victory sets a stone back in its walls.",
	},
	["race.tauren.battle.001"] = {
		"Come, then. I am as patient as a mountain, and twice as hard to move.",
		"You will need more than that to shift a tauren. Ask the centaur.",
		"My hooves are planted. Push, if you think you can.",
	},
	["race.tauren.battle.002"] = {
		"Earth Mother, steady my arm. Ancestors, keep my eyes clear.",
		"Spirits of my fathers' fathers, stand behind me now.",
		"Old ones of my line, count the blows with me.",
	},
	["race.tauren.battle.003"] = {
		"lowers {g:his|her} horns and paws the ground once, like a bull of the plains about to charge.",
		"snorts, and the sound alone makes the dust jump around {g:his|her} hooves.",
		"draws up to full height, which takes a while, and lets the enemy watch every inch of it.",
	},
	["race.tauren.lowhp.001"] = {
		"Bleeding, yes. Falling, no. Not yet.",
		"On the plains, wounded means slower. It does not mean finished.",
		"I have taken worse gorings than this. And here I stand.",
	},
	["race.tauren.threat.001"] = {
		"I am very slow to anger. You have just used all of it up.",
		"Walk away. I will not say it twice, and I will not need to.",
	},
	["race.tauren.victory.001"] = {
		"Done. Give me a moment; big hearts take their time slowing down.",
		"It is over. A tauren cools like a stone in the sun: slowly.",
		"That's that. Let me catch my breath. There is a great deal of me to fill.",
	},
	["race.tauren.victory.002"] = {
		"Whatever it was, it fought for its life. That deserves a moment of quiet before I move on.",
		"The circle turns: something ends, the earth takes it, something else grows. I only stood where the turning happened.",
		"No pride in this, only the work. My elders taught me to keep the two apart.",
	},
	["race.tauren.victory.003"] = {
		"The plains have stronger winds than you. Next!",
		"Hah! I have been shoved harder by a kodo calf.",
	},
	["race.troll.battle.001"] = {
		"Darkspear! Come and see why they call us that!",
		"The Darkspear don't run. Let's dance, mon!",
		"Tusks out, eyes on you. You picked the wrong troll today.",
	},
	["race.troll.battle.002"] = {
		"Hit me as hard as you like. I heal faster than you get tired.",
		"Go on, cut me. The wound closes before you finish smiling.",
		"You think you can wear a troll down? Many have tried. Look at me, still here.",
	},
	["race.troll.battle.003"] = {
		"drops into a low crouch, long arms loose, the way the old headhunters once waited in the jungle.",
		"bares {g:his|her} tusks and hisses a few words in the old troll tongue.",
		"sways lightly from foot to foot, like someone who learned to fight on wet sand.",
	},
	["race.troll.lowhp.001"] = {
		"Hold on, hold on. Give me a breath; it all grows back.",
		"Bleeding a lot, mon. Good thing trolls have plenty of blood.",
	},
	["race.troll.lowhp.002"] = {
		"Not now, spirits. I still owe the loa too much to come to them now.",
		"The drums in my ears... no. Not my drums yet. Get up.",
	},
	["race.troll.threat.001"] = {
		"Keep talking. I know a hex that'll have you croaking like a frog for a week.",
		"I have a long memory and longer arms. Walk away.",
	},
	["race.troll.victory.001"] = {
		"That one goes in the story, mon. With a few improvements.",
		"Ha! The loa laughed at that one. I heard them.",
		"Not bad. I'd give it a six, maybe a seven for the fall.",
	},
	["race.troll.victory.002"] = {
		"Its spirit is loose now. Go on, find your way. Don't come looking for me.",
		"The old ones say a spirit lingers near the body for a while. I never stay long enough to find out.",
		"Dead and gone. I say a short word so it walks off in the right direction.",
	},
	["race.troll.victory.003"] = {
		"That's how the Darkspear do it. Remember it, if you can still remember anything.",
		"One more for the Darkspear. Who's next?",
	},
	["band.b10_20.battle.01"] = {
		"Easy, now. I've beaten worse than you this week.",
		"Come on, then. I've walked a long way to get here.",
	},
	["band.b10_20.battle.02"] = {
		"Watch how it shifts its weight. Everything warns you before it strikes, if you're paying attention.",
		"Breathe out. Wait for the opening. Don't swing at the first thing that moves.",
	},
	["band.b10_20.lowhp.01"] = {
		"Too much. Too fast. Back off, back off!",
		"This one's stronger than it looked. Much stronger.",
	},
	["band.b10_20.victory.01"] = {
		"That went better than the last one. I'm keeping count.",
		"Clean. Well, cleaner. My technique is improving, even if my boots aren't.",
		"Done, and I barely broke a sweat. Barely.",
	},
	["band.b1_10.battle.01"] = {
		"Right. Feet apart, eyes open, don't drop anything.",
		"Steady. Remember what they showed you. Mostly the part about not running.",
	},
	["band.b1_10.victory.01"] = {
		"It's down. My hands are shaking, but it's down.",
		"Won. I'll pretend that was the plan all along, and my hands can stop trembling whenever they like.",
	},
	["band.b20_30.battle.01"] = {
		"I know your kind. Let's not drag this out.",
		"Fine. I've still got a road to walk after you.",
		"You picked the wrong traveler today.",
	},
	["band.b20_30.battle.02"] = {
		"settles into a fighting stance that no longer needs thinking about.",
		"shifts {g:his|her} weight and waits, calmer about it than a season ago.",
	},
	["band.b20_30.lowhp.01"] = {
		"Should've seen that coming. Lesson noted. Now survive it.",
		"Too hasty. Stupid. Get out of this, get out.",
	},
	["band.b20_30.victory.01"] = {
		"Not a scratch worth mentioning. I remember when every fight left a mark.",
		"Over, and I'm hardly winded. In the early days I'd have dreamed of that.",
	},
	["band.b20_30.victory.02"] = {
		"Next. No, wait, let me catch my breath first. Then next.",
		"Good. Someone add that one to the list, once I've got my breath.",
	},
	["band.b30_40.battle.01"] = {
		"I've seen this dance before. I know where it ends.",
		"Fine. One more on the list, and the list is long.",
	},
	["band.b30_40.battle.02"] = {
		"Don't rush. Nothing here I haven't faced in some shape before.",
		"Read it, then move. The body knows the rest by now.",
	},
	["band.b30_40.battle.03"] = {
		"squares up to the fight with the unhurried economy of long practice.",
		"lets out a slow breath and steps forward, no wasted movement anywhere.",
	},
	["band.b30_40.lowhp.01"] = {
		"Not like this. I've come too far for it to end like this.",
		"Careful now. Panic is what kills, not the wound.",
		"Bad. Bad. All right, think. You know how to do this.",
	},
	["band.b30_40.victory.01"] = {
		"That's that. Another story I won't bother telling.",
		"Done. I'd call it close, but I've had closer.",
		"Down it goes. Same as the others.",
	},
	["band.b30_40.victory.02"] = {
		"Clean it, bind it, move on. Some habits are worth more than talent.",
		"Check the hands, check the gear, check the horizon. Then breathe.",
	},
	["band.b40_50.battle.01"] = {
		"Come on, then. I've no time for a long one.",
		"You're not the worst thing I've faced this month.",
		"I buried my fear in harder ground than this. Let's go.",
	},
	["band.b40_50.battle.02"] = {
		"Measure it. Strength, speed, how it guards. Then decide how much of yourself to spend.",
		"Spend nothing you don't need to. Not a breath, not a step.",
	},
	["band.b40_50.battle.03"] = {
		"draws a long breath and lets the world narrow down to the thing in front of {g:him|her}.",
		"goes very still for a heartbeat, and then moves with no hesitation at all.",
	},
	["band.b40_50.lowhp.01"] = {
		"Bad, but not the worst. Hold. Hold.",
		"I know this feeling. Don't let it win.",
		"Pain's just information. Read it later.",
	},
	["band.b40_50.victory.01"] = {
		"That's done. On to the next, and the next after that.",
		"Down. I'd celebrate, but there's always another.",
		"Finished. Let's not stand about admiring it.",
	},
	["band.b40_50.victory.02"] = {
		"Every fight takes away a little of the old fear and leaves a little more of the old aches.",
		"Won again. My body keeps the score more honestly than my pride does.",
		"I win more than I lose now. The losses just cost more.",
	},
	["band.b50_60.battle.01"] = {
		"Let's see if you're worth the trouble.",
		"I've stood against worse. Try to be interesting.",
		"Steady. I've done this more times than you've drawn breath.",
	},
	["band.b50_60.battle.02"] = {
		"No fear, just arithmetic. How hard, how fast, how long.",
		"Nothing in me rushes anymore. Good. Rushing is how veterans become stories.",
	},
	["band.b50_60.battle.03"] = {
		"meets the fight with the flat calm of someone who stopped counting such moments long ago.",
		"makes the opening move without a word, as if the outcome had been settled before the first blow.",
	},
	["band.b50_60.lowhp.01"] = {
		"Not now. Not this close to the end.",
		"I've climbed too long to fall here. Up. Up.",
		"All right, that hurt. Now it's my turn.",
	},
	["band.b50_60.victory.01"] = {
		"Done. Who's next, and are they any better?",
		"Settled. I'd hoped for more of a challenge.",
		"Down, and fast. Good. Let's not linger.",
	},
	["band.b50_60.victory.02"] = {
		"Another one. My hands don't shake afterward anymore. I'm not sure that's entirely good.",
		"It's over. The calm that follows used to surprise me. Now it just waits, and my hands are already still.",
		"I win these the way a mason lays bricks, with steady hands. Skill, yes. But also tiredness, and no joy left in it.",
	},
	["band.b60.battle.01"] = {
		"I've faced worse than you on better days. Let's be quick.",
		"Think carefully. I already have.",
	},
	["band.b60.battle.02"] = {
		"Weigh it. Worth the effort, worth the risk, worth the time? Yes. Go.",
		"Every fight is a choice now. This one I choose.",
	},
	["band.b60.battle.03"] = {
		"considers the foe for a long, measured moment before committing, like a judge weighing a verdict set in stone.",
		"lets the fight come, calm and heavy as a stone settling into a riverbed.",
	},
	["band.b60.lowhp.01"] = {
		"Hah. Nobody's pushed me this far in a long while. Good.",
		"So you're the real thing. I'll grant you that. Now watch.",
	},
	["band.b60.threat.01"] = {
		"I don't fight anything I haven't weighed first. I've weighed you. Walk away.",
		"Look closely at me, then decide whether this is worth your life.",
	},
	["band.b60.victory.01"] = {
		"As expected. No offense meant.",
		"That's the end of it. I'd hoped to learn something, at least.",
		"Over. Someone remind me why that was supposed to be dangerous.",
	},
	["band.b60.victory.02"] = {
		"Won, and weighed. It cost little. I'll still count it.",
		"Another fight ended. Not a triumph, just a thing done right by someone who knew how.",
	},
	["battle.humanoid.w02.01"] = {
		"You can think, at least. Let's see if you can think fast.",
		"Hands, a weapon, a plan. So have I. Come on.",
	},
	["battle.humanoid.w02.02"] = {
		"watches the foe's eyes rather than the weapon; a thinking enemy gives itself away with the eyes first.",
		"meets the enemy's stare and shifts {g:his|her} weight, reading the feint before it comes.",
	},
	["lowhp.beast.w02.01"] = {
		"staggers back from the beast, bleeding, and plants {g:his|her} feet again out of sheer stubbornness.",
		"keeps the weapon between {g:himself|herself} and the beast, breathing hard, refusing it the opening it keeps circling for.",
	},
	["lowhp.humanoid.w02.01"] = {
		"Clever. You found the gap. Don't get used to it.",
		"That one landed. Enjoy it; it's the last.",
	},
	["victory.beast.w02.01"] = {
		"Rest now. You fought for your life; so did I.",
		"Lie still. You were only doing what beasts do.",
	},
	["victory.humanoid.w02.01"] = {
		"They had a face, a voice, maybe someone waiting for them. I don't let myself linger on that. Not long, anyway.",
		"Done. Fighting beasts is hunger against hunger; this was choice against choice, and that weighs differently.",
		"It's over. Whoever they were, they won't be telling this story. I'll tell it plainly, if I tell it at all.",
	},
	["battle.w04.001"] = {
		"All right, all right. I'll fit you in.",
		"Is it too much to ask, getting from one place to the next without this?",
		"Fine. One more thing I didn't plan for today.",
	},
	["battle.w04.002"] = {
		"The first exchange tells you everything. Watch, don't guess.",
		"Let the first strike come. It'll tell me the rest.",
	},
	["battle.w04.003"] = {
		"settles {g:his|her} weight, loosens {g:his|her} shoulders, and waits for the first move.",
		"shifts half a pace sideways to put firmer footing under {g:him|her}.",
		"lets the world narrow down to the foe and the few steps between them.",
	},
	["battle.w04.004"] = {
		"You wanted my attention. You have all of it.",
		"Go on, then. You've got my full attention now.",
		"Look at that. Now you're the only thing on my mind.",
	},
	["battle.w04.005"] = {
		"Can't anyone sit down for five minutes in this world?",
		"I had plans. Small ones. Sitting down was one of them.",
	},
	["battle.w04.006"] = {
		"One of us walks away from this. Nothing anywhere says which.",
		"These always end the same way: one up, one not. I'd like to be the first kind.",
	},
	["battle.w04.007"] = {
		"Do we have to? ...Yes, I suppose we do.",
		"I'd ask you to reconsider, but you don't look the reconsidering sort.",
		"Any chance we both just walk away? No? I thought not.",
	},
	["battle.w04.008"] = {
		"Harder things than you have tried to grind me down. Here I am.",
		"I've been hammered on by worse. It only put a keener edge on me.",
	},
	["battle.w04.009"] = {
		"Heart's going like a drum. Good. It means I'm paying attention.",
		"There's the fear, right on time. It can sit at the back and keep quiet.",
		"Fear came along too. It can watch, but it doesn't get a say.",
	},
	["battle.w04.010"] = {
		"Let's be quick about this. I've somewhere to be.",
		"Short and tidy, if you don't mind. I'm expected elsewhere.",
	},
	["battle.w04.011"] = {
		"lets out a short, hard sound through clenched teeth and goes in.",
		"meets the foe with a grunt and a step forward instead of back.",
	},
	["battle.w04.012"] = {
		"I've a road to walk, and you're standing in the middle of it.",
		"You're between me and where I'm headed. That's the whole quarrel.",
		"Nothing personal. You're simply in the way.",
	},
	["battle.w04.013"] = {
		"Lovely. Exactly what I needed: more exercise.",
		"Another scuffle. My knees send their regards.",
	},
	["battle.w04.014"] = {
		"Whatever you are, you're about to learn what I am.",
		"I don't need to know what you are. You'll know what I am soon enough.",
	},
	["battle.w04.015"] = {
		"Shoulders down. Hands loose until they're needed. Then not loose at all.",
		"Weight forward, but not too far. Don't lean in yet.",
		"Light grip, open eyes, short steps. Same as ever.",
	},
	["battle.w04.016"] = {
		"Fair warning: I don't fight pretty, I fight to the finish.",
		"A fair fight is for people with time to spare.",
	},
	["battle.w04.017"] = {
		"Outmatched and still coming. I'll give you that much, {target}.",
		"Brave, at least. That's more than most your size can say.",
		"You know how this ends, {target}. Points for showing up anyway.",
	},
	["lowhp.w04.001"] = {
		"Oh, that's going to leave a mark. Several.",
		"That one I felt. Can't say I enjoyed it.",
		"Ow. Ow. Right. Noted.",
	},
	["lowhp.w04.002"] = {
		"Think. What do I still have? What haven't I tried?",
		"Options. Count them. Quickly.",
		"Bandage, potion, legs. Something. Pick something.",
	},
	["lowhp.w04.003"] = {
		"blinks hard, twice, as if trying to bring the world back into focus.",
		"takes a step back that {g:he|she} never meant to take.",
		"presses a hand to {g:his|her} side; it comes away wet.",
	},
	["lowhp.w04.004"] = {
		"You should have finished it. Now I'm properly angry.",
		"That was your chance, and you wasted it.",
		"Big mistake, leaving me standing. You'll see why.",
	},
	["lowhp.w04.005"] = {
		"If this is the end, it's quieter than I'd imagined.",
		"The end, maybe. It's smaller than the stories make it.",
		"Cold hands. Ringing ears. I know where this goes, and I'm not going.",
	},
	["lowhp.w04.006"] = {
		"I've got more in me than this. Let's go and find it.",
		"There's always something left at the bottom of the barrel.",
		"Dig deeper. There's always a little more down there.",
	},
	["lowhp.w04.007"] = {
		"Slow it down. Panic burns faster than any wound.",
		"Steady. Hurry gets you killed quicker than the enemy does.",
		"Easy. A clear head is worth more than whatever strength is left.",
	},
	["lowhp.w04.008"] = {
		"Ah. The part of the story where things look grim. I know this one.",
		"Don't write the ending yet. I'm still in it.",
	},
	["lowhp.w04.009"] = {
		"tightens a slipping grip and raises {g:his|her} guard again, a little lower than before.",
		"draws a ragged breath and plants {g:his|her} feet as if putting down roots.",
	},
	["lowhp.w04.010"] = {
		"There are still things I mean to do. This isn't on the list.",
		"Too much left half done. I'm not finished yet.",
		"Not here. I've unfinished business, and it's waiting for me.",
	},
	["threat.w04.001"] = {
		"I'm in a good mood today. It'd be a shame to waste it on you.",
		"Don't spoil my day. I'd hate to have to return the favor.",
		"I've been pleasant so far today. Don't be the one who ends that.",
	},
	["threat.w04.002"] = {
		"Count your steps from here. Every one of them is borrowed.",
		"You can still leave. In a moment, you won't be able to.",
		"Go now, and you go on your own legs.",
	},
	["victory.w04.001"] = {
		"Over. My ears are ringing with the quiet.",
		"Done. The world comes back in pieces: a sound here, a smell there.",
	},
	["victory.w04.002"] = {
		"I'd like to say I planned that. I really would.",
		"All according to plan. There was a plan. More or less.",
		"Nobody ask me how. I honestly couldn't tell you.",
	},
	["victory.w04.003"] = {
		"That's one matter settled. I've a long list of others.",
		"Settled, then. On to the next thing on the list.",
	},
	["victory.w04.004"] = {
		"checks {g:his|her} hands, one and then the other, as if counting fingers.",
		"rolls {g:his|her} shoulders until something pops, and lets out a long sigh.",
		"cleans {g:his|her} weapon with slow, careful strokes.",
	},
	["victory.w04.005"] = {
		"It'll be my turn one day, on some other ground, against some other hand. Not today.",
		"Someday this goes the other way. That's the bargain, and today it held.",
	},
	["victory.w04.006"] = {
		"Right. That's earned me a rest and something to drink.",
		"A sit and a long drink, at the very least. I'd say I've paid for both.",
	},
	["victory.w04.007"] = {
		"Too slow on the second step. Remember that for next time.",
		"Won, but sloppy. I let my guard drop twice.",
		"Good result, poor work. The footwork needs mending.",
	},
	["victory.w04.008"] = {
		"Mark it down. Another one for the tally.",
		"Another notch. The handle's getting crowded.",
		"One more for the count. I stopped keeping it a while back, but still.",
	},
	["victory.w04.009"] = {
		"I hope it was quick. I'm almost sure it was.",
		"Quick, at least. I saw to that much.",
	},
	["victory.w04.010"] = {
		"lets {g:his|her} arms drop and stands there a moment, taking stock of {g:himself|herself}.",
		"lets the guard come undone at last, one joint after another.",
	},
	["victory.w04.011"] = {
		"Should've stayed home, wherever home was.",
		"Next time, stay home. Oh. Right.",
	},
	["victory.w04.012"] = {
		"It gets easier. I'm not sure I like that it does.",
		"Easier every time. That ought to bother me more than it does.",
	},
	["victory.w04.013"] = {
		"That's one less thing waiting on the road for someone else.",
		"Whoever comes along after me will walk a little safer.",
	},
	["victory.w04.014"] = {
		"Ha! And I'd barely warmed up.",
		"Finished? And I'd only just found my rhythm.",
		"Ha! I never even had to catch my breath.",
	},
	["victory.w04.015"] = {
		"The world goes on as if nothing happened. For it, nothing did.",
		"Everything around me carries on, unbothered. From the outside, a fight is a very small thing.",
	},
	["victory.w04.016"] = {
		"You fought hard. That counts for something, even now.",
		"No shame in that. You held on longer than most.",
		"To the very end. I can respect that, whatever you were.",
	},
	["victory.w04.017"] = {
		"The body keeps the bill and sends it later. Tomorrow, most likely.",
		"It'll all hurt later. Later can wait its turn.",
	},
	["race.dwarf.battle.w08.001"] = {
		"Ironforge stands! Come and dent it if you can!",
		"For the halls under the mountain! Have at you!",
		"Dun Morogh stubbornness, coming straight at you!",
	},
	["race.dwarf.battle.w08.002"] = {
		"Right, let's get this over with. There's an ale going warm somewhere with my name on it.",
		"Quick now. Somewhere a perfectly good mug is waiting on me.",
		"Make it snappy. The tap room won't hold a seat forever, not even for a dwarf.",
	},
	["race.dwarf.battle.w08.003"] = {
		"Low and heavy. Let them come down to my height and see how they like it.",
		"Short folk fight from under the swing. Stay low, stay planted.",
	},
	["race.dwarf.battle.w08.004"] = {
		"plants {g:his|her} boots, rolls {g:his|her} shoulders once, and meets what comes with the patience of bedrock.",
		"hunches forward, all shoulders and weight, like a boulder that has decided it won't be moved.",
	},
	["race.dwarf.battle.w08.005"] = {
		"Fighting a dwarf? That's a mistake folk only make once.",
		"Wrong mountain to climb, friend. Wrong mountain entirely.",
		"Of all the folk to tangle with, you chose the one built like a keg. Bad choice.",
	},
	["race.dwarf.battle.w08.006"] = {
		"Breathe deep and low, as the mountain guards teach. The rest follows.",
		"The guards of Dun Morogh say a fight is won in the feet before it's won anywhere else. Feet, then.",
	},
	["race.dwarf.battle.w08.007"] = {
		"Go on, take a swing at the short one. Everybody does. Everybody regrets it.",
		"Aim low, if you can manage it. Most can't.",
		"Short? Aye. Light? Try lifting me.",
	},
	["race.dwarf.battle.w08.008"] = {
		"I've got the hold of the Stonewrought Dam! Come and push!",
		"Loch Modan's dam holds back a whole lake. I can hold you back for a minute or two.",
	},
	["race.dwarf.battle.w08.009"] = {
		"Whatever you are, you've the manners of a Dark Iron. Let's fix that.",
		"Dark Iron manners and twice the ugliness. Come on, then.",
	},
	["race.dwarf.battle.w08.010"] = {
		"tugs once at {g:his beard|her braids} and squares up to the fight.",
		"spits to one side, sets {g:his|her} jaw and gets to it, like a dwarf going into cold water: quickly, before thinking better of it.",
	},
	["race.dwarf.battle.w08.011"] = {
		"I've had worse from a Thunderbrew hangover. Come on!",
		"Bring it. I've survived dwarven cooking; you're nothing.",
	},
	["race.dwarf.battle.w08.012"] = {
		"The mountain was here before the first blow of any war and it'll be here after this one. Be a little like the mountain.",
		"Stone doesn't hurry and doesn't flinch. Neither, for the next minute, do I.",
		"Be slow the way stone is slow: not lazy, only certain.",
	},
	["race.dwarf.battle.w08.013"] = {
		"You'll be telling your kin you met a dwarf. If you're lucky enough to tell anyone.",
		"Time to learn what the mountain folk are made of!",
	},
	["race.dwarf.battle.w08.014"] = {
		"lets out a short, deep bark of a laugh, the kind that echoes off cavern walls, and steps in.",
		"grins and goes to meet the fight head-down, all shoulders and stubbornness.",
	},
	["race.dwarf.battle.w08.015"] = {
		"Fine. I was getting bored, and a bored dwarf ends up in trouble anyway.",
		"Good. Idle hands make a dwarf grumpy, and this'll keep them busy.",
	},
	["race.dwarf.battle.w08.016"] = {
		"Magni keeps the throne; the rest of us keep the roads. Here's my stretch of it.",
		"There's peace under the mountain because someone earns it elsewhere. My turn.",
	},
	["race.dwarf.battle.w08.017"] = {
		"Up the hill or down the hole, a dwarf fights the same: forward!",
		"Head down, shoulders in, and through! That's how dwarves go!",
	},
	["race.dwarf.battle.w08.018"] = {
		"Dwarven hands were made for heavy work. This is just heavy work that hits back.",
		"Like tunneling: one step, then the next, and never mind how much rock is left.",
	},
	["race.dwarf.battle.w08.019"] = {
		"growls something in the old dwarven tongue that no one nearby would care to have translated.",
		"mutters a dwarven oath through clenched teeth, low and rumbling as a rockslide far below.",
	},
	["race.dwarf.battle.w08.020"] = {
		"Don't move, I want to see if the Explorers' League has you catalogued.",
		"You'd make a fine exhibit in the Hall of Explorers. Stuffed, of course.",
	},
	["race.dwarf.battle.w08.021"] = {
		"I've got the patience of granite and the temper of a forge. You'll meet both.",
		"Granite patience, forge temper. Pick which one you'd like to meet first.",
	},
	["race.dwarf.lowhp.w08.001"] = {
		"Timbers groaning, roof still up. A miner knows the difference between bad and done for.",
		"A shored tunnel creaks a long while before it comes down. Creaking now. Not down.",
	},
	["race.dwarf.lowhp.w08.002"] = {
		"Is that the best you've got? I'm still on my feet, and that's a dwarf's whole argument!",
		"Bloody, aye, but upright! Ironforge stock doesn't topple that easy!",
	},
	["race.dwarf.lowhp.w08.003"] = {
		"sways, catches {g:himself|herself} on a stubborn heel, and stays upright out of sheer dwarven contrariness.",
		"staggers half a step back, then digs in, giving up not one inch more.",
	},
	["race.dwarf.lowhp.w08.004"] = {
		"Not here, not like this. The ale in Kharanos isn't going to drink itself.",
		"I am not dying before I've tasted the next Thunderbrew batch. Out of the question.",
		"Dying now would mean missing the next round in Ironforge. Unacceptable.",
	},
	["race.dwarf.lowhp.w08.005"] = {
		"Ow! That went through the stone and hit the dwarf underneath.",
		"That one got past the granite. Now you've made me cross.",
	},
	["race.dwarf.lowhp.w08.006"] = {
		"If the mountain wants me back, so be it. But it'll have to come and fetch me; I'm not walking in.",
		"Stone to stone, the old miners say. Not yet. Not this time.",
	},
	["race.dwarf.lowhp.w08.007"] = {
		"Dun Morogh's in me deeper than that! Try again!",
		"You'll have to dig a good deal deeper to find the bottom of a dwarf!",
	},
	["race.dwarf.lowhp.w08.008"] = {
		"spits red and bares {g:his|her} teeth, with the look of a dwarf whose patience has been sorely tried.",
		"presses a thick hand to the wound and growls, low and long, like stone grinding on stone.",
	},
	["race.dwarf.threat.w08.001"] = {
		"Walk on. I've got a short temper and a long memory, and you won't enjoy either.",
		"Clear off, before I decide you'd look better as a doorstop in Ironforge.",
		"Dwarves forget nothing and forgive slowly. Leave now and we'll call it forgotten.",
	},
	["race.dwarf.threat.w08.002"] = {
		"I'm short, I'm grumpy, and I haven't had a drink in hours. Think hard about what happens next.",
		"Look at me. Built low, built thick, and built to keep hitting. Still keen?",
	},
	["race.dwarf.victory.w08.001"] = {
		"Done. Let the dust settle before trusting the ground again.",
		"Over. Wait a breath, the way you would after a blast in the mine, and only then look around.",
	},
	["race.dwarf.victory.w08.002"] = {
		"Ha! Put that on the tally. I'm keeping count, even if nobody else is.",
		"One more for my tally. I'll round it up when I tell it, naturally.",
	},
	["race.dwarf.victory.w08.003"] = {
		"And that's what you get for testing dwarven stone!",
		"Tell the rest of your lot: the dwarves are out and about, and in a mood.",
	},
	["race.dwarf.victory.w08.004"] = {
		"wipes {g:his|her} brow with the back of a forearm and gives a grunt, the whole verdict on the matter.",
		"blows out {g:his|her} cheeks, checks that everything is still attached, and nods.",
	},
	["race.dwarf.victory.w08.005"] = {
		"That's worked up an appetite. A dwarf fights on an empty belly only once, and never by choice.",
		"Right. Now where's the nearest thing resembling a meal? Fighting's hungry work for short folk.",
	},
	["race.dwarf.victory.w08.006"] = {
		"Another one learns what Ironforge is made of.",
		"That's the mountain's answer. It's always the same one.",
		"Should've picked on a gnome. We're the sturdy ones.",
	},
	["race.dwarf.victory.w08.007"] = {
		"Down. No joy in it, really, only the plain satisfaction of a job that won't need doing twice.",
		"Finished. Some dwarves cheer. Others just check their gear and move on. I'm the second kind today.",
	},
	["race.dwarf.victory.w08.008"] = {
		"Hah! A locked keg puts up more of a fight than that.",
		"That's it? A gnome's clockwork toy would've given me more trouble.",
	},
	["race.dwarf.victory.w08.009"] = {
		"lets out a booming laugh that would carry clear across the forges of Ironforge.",
		"raises a fist with a hearty shout, the sort usually saved for a fresh cask being tapped.",
	},
	["race.dwarf.victory.w08.010"] = {
		"Every fight walked away from is a lesson hammered in. Let's hope this one took.",
		"The forge teaches with heat; the road teaches with fights like that. I'll take the lesson.",
	},
	["race.dwarf.victory.w08.011"] = {
		"Rest easy, whoever's watching. The dwarf has it in hand.",
		"There. Nobody tell the mountain guards I needed both hands for that.",
	},
	["race.dwarf.victory.w08.012"] = {
		"Knuckles throbbing, back complaining, and the ground still under me. A good outcome, as these go.",
		"Sore everywhere a dwarf can be sore, which is more places than you'd think.",
	},
	["race.dwarf.victory.w08.013"] = {
		"Raise one for Magni when I'm back home! He'd have liked that one.",
		"Hah! King Magni's beard would bristle with pride at that.",
	},
	["race.dwarf.victory.w08.014"] = {
		"Quiet comes back. In the deep places it always does, after; the world above takes a moment to remember how.",
		"Silence after a fight, like the hush in a tunnel once the last echo dies. I'll stand in it a moment.",
	},
	["race.dwarf.victory.w08.015"] = {
		"Hmph. Barely worth knocking the dust off my boots for.",
		"That'll do. Not a scratch worth bragging about at the bar.",
	},
	["race.dwarf.victory.w08.016"] = {
		"straightens a few disordered {g:beard braids|braids} with thick fingers, as though tidiness were the last step of any fight.",
		"brushes grit from {g:his|her} sleeves with slow, deliberate strokes, the way a mason dusts a fresh-cut block.",
	},
	["race.dwarf.victory.w08.017"] = {
		"If the Explorers' League ever digs up the bones of this fight, they'll find it was a dwarf who won it.",
		"Something for the Explorers' League to puzzle over in a thousand years: who won here. A dwarf did.",
	},
	["race.dwarf.victory.w08.018"] = {
		"Down, and staying down. Good.",
		"That one won't be getting up. Right, on we go.",
		"Settled. Stone over the top, as the miners say, and on to the next.",
	},
	["race.dwarf.victory.w08.019"] = {
		"When I'm back in Ironforge I'll say nothing of this, and drink twice. That's how a dwarf tells a story.",
		"No need to boast. In Ironforge they'll read it on my face, and in how fast I empty the first mug.",
	},
	["race.human.battle.w08.001"] = {
		"Stormwind steel and Elwynn stubbornness! Come on!",
		"Elwynn grit! Let's see what you're worth!",
	},
	["race.human.battle.w08.002"] = {
		"glances once over {g:his|her} shoulder, as the people of the realm learned to do after Lordaeron, then faces the fight.",
		"takes the measure of the foe with a quick, wary look, the habit of a people who lost one kingdom and mean to lose no more.",
	},
	["race.human.battle.w08.003"] = {
		"Of course. The one time I'm not looking for trouble, trouble comes looking. Very human of it.",
		"Trouble, again. Somebody in the kingdom must keep a list with my name at the top.",
	},
	["race.human.battle.w08.004"] = {
		"For Elwynn's fields and Stormwind's bells!",
		"For the plowed fields and the ringing bells! Come on!",
		"Bells of Stormwind, this one's for you!",
	},
	["race.human.battle.w08.005"] = {
		"Come on, then! Humans haven't got the time to be afraid!",
		"Short lives, short tempers. Let's have it!",
		"We don't live long enough to dither. Here I come!",
	},
	["race.human.battle.w08.006"] = {
		"Count the breaths. In for two, out for two, the way the Goldshire militia drills it.",
		"Steady breathing first. Every militia sergeant in Elwynn says the same, and they're right.",
	},
	["race.human.battle.w08.007"] = {
		"plants {g:his|her} feet as though the ground beneath were a Westfall field worth keeping.",
		"sets {g:himself|herself} square across the way like a farmer between a wolf and the fold.",
	},
	["race.human.battle.w08.008"] = {
		"I had other plans, you know. Better plans. With chairs.",
		"Oh, wonderful. And I'd almost found somewhere to sit.",
	},
	["race.human.battle.w08.009"] = {
		"You've picked a fight with the most stubborn folk south of Lordaeron!",
		"Wrong human, wrong moment! Stormwind breeds us mulish!",
	},
	["race.human.battle.w08.010"] = {
		"Hands are shaking. Fine. The veterans of the Second War say theirs shook too, and they held.",
		"A tremor in the fingers. The old soldiers in Stormwind swear every hand shakes before the first blow. Let it.",
	},
	["race.human.battle.w08.011"] = {
		"Lordaeron fell because too few stood up! I'm standing!",
		"The north was lost for want of people willing to stand. Here's one!",
	},
	["race.human.battle.w08.012"] = {
		"squares up with the plain, unshowy nerve of a people who raised their city out of its own ashes.",
		"meets the threat without a flourish, the way humans have met most things: stubbornly, and on foot.",
	},
	["race.human.battle.w08.013"] = {
		"Let's be quick. Humans don't live long enough for slow fights.",
		"Make it brisk, would you? Some of us have only the one lifetime.",
	},
	["race.human.battle.w08.014"] = {
		"Stromgarde still holds in the highlands against everything that comes, the soldiers say. I can hold against this.",
		"If Stromgarde can keep its gates shut against trolls and ogres and worse, I can keep my feet against this.",
	},
	["race.human.battle.w08.015"] = {
		"Off the road! The realm's taxes pay for these roads, and you're not on the list!",
		"Out of the way! Good honest folk use this road!",
	},
	["race.human.battle.w08.016"] = {
		"takes a breath and steps in, as practical about the fight as a farmer about a fox in the henhouse.",
		"rolls up to the fight with the brisk, unhappy efficiency of someone clearing a blocked drain.",
	},
	["race.human.battle.w08.017"] = {
		"Light's mercy, here we go!",
		"Light keep the rest of me in one piece! Come on!",
	},
	["race.human.battle.w08.018"] = {
		"Watch the feet, not the eyes. Any brawler from the Trade District knows that much.",
		"Eyes on the shoulders; the shoulders move first. Stormwind's tavern brawlers learn that before their letters.",
	},
	["race.human.battle.w08.019"] = {
		"The orcs burned Stormwind once. We built it back taller. Do your worst!",
		"Humankind has been knocked flat before and always got up. Your turn to learn it!",
	},
	["race.human.battle.w08.020"] = {
		"One short life, and here I am spending a piece of it on this. Well. Make it count.",
		"A human heart only has so many beats in it. A few more for this, then.",
	},
	["race.human.battle.w08.021"] = {
		"sighs like a Westfall farmer finding the fence down again, and gets on with it.",
		"mutters something unrepeatable about the state of the roads these days, and turns to face the trouble.",
	},
	["race.human.battle.w08.022"] = {
		"Redridge held, Westfall's holding, and so will I!",
		"Ask Redridge how humans give ground. They don't!",
	},
	["race.human.battle.w08.023"] = {
		"Somewhere people are going about their lives without a thought for fights like this one. Good. That's the point of them.",
		"Bread baking, children squabbling, some clerk in Stormwind yawning. All of it carries on while I do this. That's why I do it.",
	},
	["race.human.lowhp.w08.001"] = {
		"wipes the blood from {g:his|her} eyes with a sleeve and keeps going, too human to know when to quit.",
		"spits, steadies, and stays upright on nothing but stubbornness and the thought of home.",
	},
	["race.human.lowhp.w08.002"] = {
		"Not yet. The bells haven't been rung for me, and I'd like to keep it that way.",
		"No. Nobody's tolling a bell for me. Not here, not like this.",
	},
	["race.human.lowhp.w08.003"] = {
		"I'll have you know I'm a taxpayer of Stormwind!",
		"This is no way to treat a subject of the realm!",
		"Somebody write to the regent about this!",
	},
	["race.human.lowhp.w08.004"] = {
		"Breathe. A human body is stubborn if it's asked properly. I'm asking.",
		"In and out. This body has carried me this far; it can carry me through one more bad minute.",
	},
	["race.human.lowhp.w08.005"] = {
		"staggers, catches {g:himself|herself}, and keeps on with the bloody-minded patience of farm folk at the end of a bad season.",
		"sways, sets {g:his|her} jaw, and refuses to fall, like an Elwynn fencepost after a storm that took the barn.",
	},
	["race.human.lowhp.w08.006"] = {
		"Light's sake, not now!",
		"Light, give me another minute! Just one!",
	},
	["race.human.lowhp.w08.007"] = {
		"Elwynn is green and far away. I'd like to see it again. So, up.",
		"Goldshire's inn, the Stormwind canals, the bells. I'm not done with any of them. Hold on.",
	},
	["race.human.lowhp.w08.008"] = {
		"Bleeding, yes. Beaten, no. Ask Redridge how stubborn we are.",
		"Bloodied's not beaten! Humans are too pigheaded to know the difference!",
	},
	["race.human.lowhp.w08.009"] = {
		"Too short. A human life is too short to end in a ditch over this. Move.",
		"Seventy years, if you're lucky, and I'm not giving them up for this. Get up.",
	},
	["race.human.threat.w08.001"] = {
		"Walk away. Humans have short lives and shorter tempers.",
		"My life is short, and my patience is shorter. Go.",
		"We humans haven't the years to waste on fools. Off with you.",
	},
	["race.human.threat.w08.002"] = {
		"The orcs burned Stormwind to the ground, and we built it back. You think you frighten me?",
		"Our city has been ashes before. Whatever you are, you're a smaller fire than that.",
	},
	["race.human.victory.w08.001"] = {
		"Ha! Wait till they hear about that in Goldshire.",
		"That one's going in the Lion's Pride story pile.",
		"Somebody remind me to tell that one properly, with the boring parts left out.",
	},
	["race.human.victory.w08.002"] = {
		"Another fight behind me. A human life is a short row of them, and I mean to see the end of the row.",
		"Done. We only get so many years; I'd rather not spend the rest of mine in the ground.",
	},
	["race.human.victory.w08.003"] = {
		"straightens slowly, one hand pressed to the small of {g:his|her} back, as weary as any farmhand after the long field.",
		"lets out a breath and shakes the sting from {g:his|her} hands, plainly glad and plainly tired.",
	},
	["race.human.victory.w08.004"] = {
		"One more for the realm. Stormwind can sleep a little easier.",
		"That's the realm's road kept clear a while longer.",
	},
	["race.human.victory.w08.005"] = {
		"Won. If the clerks of Stormwind ever paid by the foe, I'd be rich and they'd be ruined.",
		"There. Someone ought to pay a bounty for that. Someone never does.",
	},
	["race.human.victory.w08.006"] = {
		"Right. Back to being a law-abiding citizen of the kingdom.",
		"And that's the end of that. Now, where was I?",
	},
	["race.human.victory.w08.007"] = {
		"Winning feels thinner since Lordaeron. A whole kingdom of people won fights like this, and the plague took them anyway.",
		"The north won a thousand small fights and lost the war. I'll take this one, and try not to read too much into it.",
	},
	["race.human.victory.w08.008"] = {
		"stands over the field a moment, the stubborn shape of a people that has been beaten before and never for good.",
		"holds still while the quiet comes back, upright the way humans stand after a near thing: a little shaky, entirely unbowed.",
	},
	["race.human.victory.w08.009"] = {
		"Not bad for a creature with a mere seventy years in it!",
		"Not bad, eh? And the elves think we're in too much of a hurry.",
	},
	["race.human.victory.w08.010"] = {
		"Thank the Light, or luck, or the drillmaster. One of them deserves it.",
		"Somebody up there was on my side. The Cathedral would say the Light; I'll just say thank you.",
	},
	["race.human.victory.w08.011"] = {
		"Next time, less charging, more thinking. Humans learn by doing things wrong first; it's tradition.",
		"That could have gone neater. Humans are a people of second tries; I'll get the next one right.",
	},
	["race.human.victory.w08.012"] = {
		"Down, and staying down! That's how it's done in the kingdom!",
		"Ha! Elwynn-bred and stubborn with it!",
	},
	["race.human.victory.w08.013"] = {
		"glances around for anyone else who might need a hand, a reflex as human as breathing.",
		"looks about to see whether anyone nearby was hurt, before giving a thought to {g:his|her} own scrapes.",
	},
	["race.human.victory.w08.014"] = {
		"Elwynn's woods are a long way off, but every fight like this keeps the road to them open.",
		"A little more of the world is quiet again. Stormwind's walls are only the start of what needs keeping.",
	},
	["race.human.victory.w08.015"] = {
		"All clear! Well, this bit's clear. The rest of the kingdom is somebody else's turn.",
		"That's this patch sorted. Somebody tell the rest of the realm I'm on my way.",
	},
	["race.human.victory.w08.016"] = {
		"My arms feel like I've been hauling stone for the walls of Stormwind. Worth it.",
		"Every muscle aches like after a week of haymaking. Small price.",
	},
	["race.human.victory.w08.017"] = {
		"Look at that. The regent couldn't have managed it better. Probably couldn't have managed it at all.",
		"Somebody tell the court. No, don't; they'd only find a way to tax it.",
	},
	["race.human.victory.w08.018"] = {
		"touches two fingers to {g:his|her} brow, the quick, half-thoughtless gesture of thanks common in the villages of Elwynn.",
		"lowers {g:his|her} head for a heartbeat, in the brief way humans give thanks after a near thing.",
	},
	["race.human.victory.w08.019"] = {
		"The ones who lost Stormwind to the orcs fought every bit as hard as this. Sometimes winning is only luck in a better coat.",
		"Better fighters than me fell at the gates of Stormwind, once. I won't pretend this was all skill.",
	},
	["race.human.victory.w08.020"] = {
		"That's how the kingdom keeps its roads open: one stubborn human after another.",
		"The realm stands on folk who refuse to fall over. This time I refused.",
	},
	["race.nightelf.battle.w08.001"] = {
		"Ten thousand years my people have guarded the forests. Come and test the guard.",
		"Ashenvale remembers every trespasser. So will I.",
		"A greeting from Darnassus, delivered by hand.",
	},
	["race.nightelf.battle.w08.002"] = {
		"Silence, then. A kaldorei fights with the mouth closed.",
		"No war cry. My people learned long ago that the loud die first.",
		"Hush. Let the blows do the talking; mine speak better.",
	},
	["race.nightelf.battle.w08.003"] = {
		"The Sentinels say every war since the Sundering has been the same war wearing a new face. Let's see this one's.",
		"My people have been at war in one form or another since before the sea swallowed the Well. Here is one more form.",
	},
	["race.nightelf.battle.w08.004"] = {
		"melts into a low crouch, quiet and ready as a held breath.",
		"narrows {g:his|her} glowing eyes, and {g:his|her} face goes as still as a forest pool.",
	},
	["race.nightelf.battle.w08.005"] = {
		"For the Sentinels who never came home!",
		"Teldrassil's roots run deep, and so do mine!",
		"For every grove you've ever trampled!",
	},
	["race.nightelf.battle.w08.006"] = {
		"Breathe as the forest breathes: slow, deep, unafraid. Then move.",
		"Feet light, breath low, eyes on the shoulders. The rest follows.",
		"Low and light, like the leaf before it falls. Now.",
	},
	["race.nightelf.battle.w08.007"] = {
		"You chose a quarrel with a people who've practiced for ten thousand years. Bold of you.",
		"Of all the folk to cross, you chose one with a very long memory. I'll remember you, too.",
		"A short life should teach caution. Yours didn't.",
	},
	["race.nightelf.battle.w08.008"] = {
		"Stand aside or stand against me. The forest gives no third choice.",
		"I'll give you the same answer the forest gives every intruder, sooner or later.",
	},
	["race.nightelf.battle.w08.009"] = {
		"rolls {g:his|her} shoulders once, long ears laid back like a nightsaber's.",
		"draws {g:himself|herself} up to full kaldorei height and lets the foe take a good look.",
	},
	["race.nightelf.battle.w08.010"] = {
		"Whatever you are, you are not the first thing to threaten my people, and you will not be the worst.",
		"Demons, dragons, the Scourge on Hyjal... you are a short chapter. Let's close it.",
	},
	["race.nightelf.battle.w08.011"] = {
		"Demon. My people have been killing your kind since the Well of Eternity was lost.",
		"The Legion again. Ten thousand years, and you still haven't learned to stay away from us.",
	},
	["race.nightelf.battle.w08.012"] = {
		"The Scourge came to Hyjal too. It did not leave the way it came.",
		"Dead thing. The forests of my people have no place for you; let me show you out.",
	},
	["race.nightelf.battle.w08.013"] = {
		"Ah, company. It was getting almost too quiet.",
		"Finally, something that isn't a tree. Not that I mind trees.",
		"Oh good, a visitor. I'd nearly started talking to the moss.",
	},
	["race.nightelf.battle.w08.014"] = {
		"Elune, I won't ask you for victory. Only clear eyes, and a steady heart.",
		"Mother Moon, keep my sight sharp. I'll see to the rest.",
	},
	["race.nightelf.battle.w08.015"] = {
		"Moonlight on my side and the dark at my back. You should have waited for day.",
		"This is our hour, the hour of the kaldorei. You chose the wrong time.",
	},
	["race.nightelf.battle.w08.016"] = {
		"Fine. Quickly, then. I'd rather spend my years on almost anything else.",
		"Not what I'd planned for the hour, but the forest teaches you to take what comes.",
		"If this must happen, let it happen cleanly. My people have little patience left for mess.",
	},
	["race.nightelf.battle.w08.017"] = {
		"lets out a low hiss through {g:his|her} teeth, the sound of a Darkshore thicket with something hunting in it.",
		"steps lightly to one side, the way a Sentinel moves along a moonlit trail, and waits for the first mistake.",
	},
	["race.nightelf.battle.w08.018"] = {
		"For Nordrassil, and for all it cost us!",
		"For the Moon and the trees!",
	},
	["race.nightelf.battle.w08.019"] = {
		"Since Hyjal a wound can end me like anyone. Strange how much better that makes me fight.",
		"Mortal now, all of us. The priestesses call it a burden; in a fight it feels more like a spur.",
	},
	["race.nightelf.battle.w08.020"] = {
		"Ashenvale has lost enough to axe and fire. You'll take nothing more from anyone today.",
		"The kaldorei have watched over the wild places since before your kind had names. Leave them be.",
	},
	["race.nightelf.lowhp.w08.001"] = {
		"The priestesses said it plainly after Hyjal: we can die now. I'd rather not test how easily.",
		"Since the World Tree's gift was spent, I can bleed out like anyone. I'd rather not prove it here.",
	},
	["race.nightelf.lowhp.w08.002"] = {
		"Breathe. Go still. Kaldorei have survived worse by vanishing for a moment.",
		"A wounded nightsaber goes quiet, not wild. Quiet, then.",
	},
	["race.nightelf.lowhp.w08.003"] = {
		"Is that all? Teldrassil's bark has given me worse splinters.",
		"Bloodied, not beaten. Kaldorei don't fall that easily.",
		"Ha. The roots of Teldrassil have tripped me harder than that.",
	},
	["race.nightelf.lowhp.w08.004"] = {
		"staggers, one hand pressed to the wound, the light in {g:his|her} eyes flickering like a candle near its end.",
		"sinks to one knee, breathing hard, then forces {g:himself|herself} up with the stubbornness of an old tree that refuses to fall.",
	},
	["race.nightelf.lowhp.w08.005"] = {
		"A kaldorei expects centuries. This fight seems to have other plans.",
		"Odd, how small the world gets with blood in your eyes. Ten thousand years of history, and all I can see is the next breath.",
		"Too soon. A short life is something my people are still learning; I refuse to learn all of it today.",
	},
	["race.nightelf.lowhp.w08.006"] = {
		"The moon is up. Elune, if you are looking, now would be a good time.",
		"Under the moon, at least. If I fall, I fall where she can see me.",
	},
	["race.nightelf.lowhp.w08.007"] = {
		"That one I'll remember. And I remember for a very long time.",
		"You've drawn kaldorei blood. My people do not forget a debt like that.",
		"Mark this: the kaldorei keep long accounts.",
	},
	["race.nightelf.threat.w08.001"] = {
		"A Sentinel would have loosed already. Be grateful it's only me, and leave.",
		"My people held Ashenvale for ten thousand years against worse than you. Turn around.",
		"I have a kaldorei's patience, which lasts for ages, and a kaldorei's anger, which takes a heartbeat. Choose which you meet.",
	},
	["race.nightelf.threat.w08.002"] = {
		"You won't see me coming. You never see us coming. That is the only warning you get.",
		"Remember my face. Next time, you won't get the chance to see it.",
		"The kaldorei vanish into the night when they choose. Hope I don't choose.",
	},
	["race.nightelf.victory.w08.001"] = {
		"That's over. My people have outlasted empires; you were hardly going to be the exception.",
		"Fallen. We outlived the Highborne's pride and the Legion's fire. You never stood a chance.",
		"There. My people have seen kings and dragons fall. Forgive me if I don't stay to marvel.",
	},
	["race.nightelf.victory.w08.002"] = {
		"Another life ended. Since Hyjal I understand better what that costs, even for the one lying here.",
		"Before the World Tree's gift was lost, my people could pretend death was for others. Not anymore. Not even for this one.",
	},
	["race.nightelf.victory.w08.003"] = {
		"tilts {g:his|her} head, listening past the fight for anything else that moves, and only then lowers {g:his|her} guard.",
		"straightens slowly, the glow still bright in {g:his|her} eyes, and lets the silence settle.",
	},
	["race.nightelf.victory.w08.004"] = {
		"Elune, my thanks. Let me earn the next one as well.",
		"Elune kept her eye on me. I hope I gave her no reason to look away.",
		"Elune, you were near. I felt it, or wanted to, and in a fight that is nearly the same.",
	},
	["race.nightelf.victory.w08.005"] = {
		"Hah! Tell the owls. They love gossip.",
		"Not bad for someone who'd rather be sitting under a tree.",
		"Done! Someone tell the hippogryphs; they never believe me.",
	},
	["race.nightelf.victory.w08.006"] = {
		"The forest will take it back, as it takes everything. That is not cruelty; it is housekeeping.",
		"Fallen leaves feed the next spring, the druids of Darnassus teach. Even this will feed something.",
		"Leaf to soil, soil to root. The old cycle, given a small push.",
	},
	["race.nightelf.victory.w08.007"] = {
		"One less threat to the groves. The Sentinels can sleep a little easier.",
		"Done. Tell Darnassus the world is a little safer than it was.",
		"Over. The groves are a little quieter for it, as they should be.",
	},
	["race.nightelf.victory.w08.008"] = {
		"shakes the fight out of {g:his|her} long hair and lets out a slow breath.",
		"flexes {g:his|her} long fingers one by one, as if counting them, and seems satisfied with the total.",
	},
	["race.nightelf.victory.w08.009"] = {
		"Humans would have a song about that by tomorrow. My people will simply remember it, which is worse.",
		"The short-lived boast after every fight. I'll just remember this one for a very long time, which is worse.",
		"Some races would carve this in stone. Mine will just never forget it.",
	},
	["race.nightelf.victory.w08.010"] = {
		"Rest. The fight is over, and I have no quarrel with what you leave behind.",
		"Ishnu-alah. Whatever you were, be at peace now.",
		"Go gently. I take no joy in this part, only in its being over.",
	},
	["race.nightelf.victory.w08.011"] = {
		"Back where you came from. Ten thousand years, and the kaldorei still finish what the Legion starts.",
		"Another demon unmade. The War of the Ancients never truly ended, the old sentinels say; it only grew smaller.",
	},
	["race.nightelf.victory.w08.012"] = {
		"lifts {g:his|her} face to the moon for a long moment, as if reporting to someone.",
		"turns toward the moon and inclines {g:his|her} head, a small thanks given without words.",
	},
	["race.nightelf.victory.w08.013"] = {
		"My heart is still racing. A kaldorei is supposed to be calm. A kaldorei is also allowed to breathe.",
		"Hands steady, heart loud. The Sentinels say the heart never quite learns to keep quiet.",
	},
	["race.nightelf.victory.w08.014"] = {
		"Next? Kaldorei don't tire quickly, and I've barely begun.",
		"That's one. My people count in thousands; there's room on the tally.",
		"Again, if you like. My people have ten thousand years of practice at starting over.",
	},
	["race.nightelf.victory.w08.015"] = {
		"The Sentinels speak of their fallen as if the forest still held them. No one will speak of this one at all.",
		"So many dead in my people's long story. I add one more to the margin, without a name.",
	},
	["race.nightelf.victory.w08.016"] = {
		"Lie still. The Scourge once climbed Mount Hyjal and found the kaldorei waiting, as you did.",
		"Back to rest. Whatever raised you will find nothing left of you to use.",
	},
	["race.tauren.battle.w08.001"] = {
		"For Mulgore, and for every tauren who walks far from it!",
		"By the plains that raised me, you picked the wrong road!",
	},
	["race.tauren.battle.w08.002"] = {
		"Size isn't everything. In my case, though, it's a fair start.",
		"Big, yes. Slow, no. Most learn the second part too late.",
		"Don't let the bulk fool you. Then again, everyone does.",
	},
	["race.tauren.battle.w08.003"] = {
		"stamps once, hard, and the ground answers with a dull thud that carries through the soles of everyone nearby.",
		"lets out a deep roar from the bottom of the chest, a challenge as old as the plains, and throws {g:his|her} weight forward.",
		"rolls {g:his|her} massive shoulders and comes on with the steady, unstoppable gait of a stampede that has made up its mind.",
	},
	["race.tauren.battle.w08.004"] = {
		"Breathe the way the elders of Mulgore teach: slow in through the nose, slow out. The fight comes no faster for hurrying.",
		"Easy. A stampede starts with one hoof. Choose where it lands.",
		"Patience first. The plains reward the one who waits for the charge, not the one who starts it.",
	},
	["race.tauren.battle.w08.005"] = {
		"Earth Mother, whoever falls here, take them gently. I'd rather it wasn't me.",
		"Earth Mother, watch this. I'd like to give you something to be proud of.",
		"Earth Mother, this ground is yours. Let me not shame it.",
	},
	["race.tauren.battle.w08.006"] = {
		"My people walked Mulgore end to end for generations. I can walk through you.",
		"The kodo don't stop for small things. Neither do I.",
		"Out of my path. A tauren on the move is a slow avalanche.",
	},
	["race.tauren.battle.w08.007"] = {
		"Ah, company. My hooves were starting to fall asleep.",
		"Good. My hooves were getting restless.",
		"Hunting season, then. Except I'm the one doing the choosing.",
	},
	["race.tauren.battle.w08.008"] = {
		"breathes out through flared nostrils, long and low, and goes very still before the first blow.",
		"snorts a short blast of breath, ears flat, the whole great body gathered like a bull at the gate.",
		"lowers {g:his|her} head and blows a long breath over the ground, like a bull deciding how the day will end.",
	},
	["race.tauren.battle.w08.009"] = {
		"My people outlasted the centaur for generations. I can outlast you for a minute.",
		"Quilboar, centaur, Grimtotem: they've all tried. Join the list.",
	},
	["race.tauren.battle.w08.010"] = {
		"Make myself a wall. Everything that wants to get past has to go through a tauren first.",
		"All this weight was made for something. Let it be for standing here.",
		"Big enough to block a doorway, big enough to block this. Plant and hold.",
	},
	["race.tauren.battle.w08.011"] = {
		"Hear that? That's my heart drumming. It drums louder than yours.",
		"My people have drums for this. I'll make do with my heartbeat.",
	},
	["race.tauren.battle.w08.012"] = {
		"tosses {g:his|her} head once, horns cutting the air, and every bit of the plains' patience goes out of {g:his|her} eyes.",
		"draws breath until the chest swells like a drumskin, then lets it out as a roar that rolls along the ground.",
	},
	["race.tauren.battle.w08.013"] = {
		"If this is my last hunt, the earth already knows where to find me.",
		"I don't fear the grass over me. I just don't want it yet.",
		"Every hunt might be the last. The elders say that's why you walk into each one with your eyes open.",
	},
	["race.tauren.battle.w08.014"] = {
		"Another one who thinks a tauren is a slow target. I'll let them enjoy that thought for a moment.",
		"They always aim for the middle. With a tauren, the middle is very large. Fair enough.",
	},
	["race.tauren.battle.w08.015"] = {
		"Thunder Bluff stands on high rock for a reason. So do I.",
		"You won't move me. I come from a city built on cliffs.",
		"Cliffs don't step aside. Neither do the people who live on them.",
	},
	["race.tauren.battle.w08.016"] = {
		"Something will die here. The hunt teaches you to thank it, whichever of us it turns out to be.",
		"Whatever falls, I'll give thanks for it afterward. That's the bargain my people keep with the hunt.",
	},
	["race.tauren.battle.w08.017"] = {
		"Hm. You're not a plainstrider, but you'll do.",
		"Not what I was hunting, but I'm not fussy.",
	},
	["race.tauren.battle.w08.018"] = {
		"settles into the ground as if putting down roots there, hooves wide, head low, waiting.",
		"sinks a little lower, weight spread over both hooves, solid as a standing stone of the plains.",
	},
	["race.tauren.lowhp.w08.001"] = {
		"A tauren falls like an old tree: slowly, and not today.",
		"It takes a lot to bring down something this size. You're not there yet.",
		"Wounded, yes. But there's a great deal of me left to get through.",
	},
	["race.tauren.lowhp.w08.002"] = {
		"The ground looks very soft from here. Don't lie down. Don't you dare lie down.",
		"My legs are asking to kneel. Tell them no. Kneeling comes afterward, with thanks, not now.",
	},
	["race.tauren.lowhp.w08.003"] = {
		"You've made me angry and dizzy at once. Only one of those will pass.",
		"Fine. I'm bleeding. Now you've made a tauren bleed, and that rarely ends well for anyone.",
		"This is the part where people expect a tauren to topple. I've never had much use for expectations.",
	},
	["race.tauren.lowhp.w08.004"] = {
		"sways like a great tree in a high wind, then sets {g:his|her} hooves and refuses to go down.",
		"breathes in ragged gusts, blood darkening the fur, but the head comes up again, horns and all.",
		"staggers half a step, catches the ground with all {g:his|her} weight, and stays upright out of sheer stubbornness.",
	},
	["race.tauren.lowhp.w08.005"] = {
		"Earth Mother, I'm not ready to lie down in you. Wait for me a while longer.",
		"Mother of us all, I hear you. Not now. I'll walk to you on my own hooves someday, not like this.",
	},
	["race.tauren.lowhp.w08.006"] = {
		"Bleed a tauren and you only teach it to charge harder!",
		"There's the blood. Now we're both serious.",
	},
	["race.tauren.lowhp.w08.007"] = {
		"Slow down inside. Panic is a stampede; it tramples the one who started it.",
		"The plains teach this much: when you bleed, don't run blind. Breathe. Look. Choose.",
	},
	["race.tauren.threat.w08.001"] = {
		"Stampedes part around a tauren who stands still. You are a great deal less than a stampede.",
		"Go. I'd rather leave you to the grass than put you under it.",
		"Walk away. A tauren gives one warning; the second is given by the hooves.",
	},
	["race.tauren.threat.w08.002"] = {
		"The Earth Mother takes everything back in the end. Don't ask me to hurry her.",
		"Turn around, and the earth won't have to make room for you today.",
	},
	["race.tauren.victory.w08.001"] = {
		"Thank you for the fight. That's how my people end a hunt, and I won't be the one to break the habit.",
		"A word of thanks for what fell. The hunt asks it of every tauren, even after a fight nobody wanted.",
	},
	["race.tauren.victory.w08.002"] = {
		"stands over the fallen a moment with one hand raised, palm open, in the quiet thanks of the plains.",
		"lowers {g:his|her} head over the stillness for the space of one breath, then turns away.",
	},
	["race.tauren.victory.w08.003"] = {
		"Hah. You fought like a quilboar with a grudge. I respect that.",
		"Good fight. I'll remember you when I'm old and boring.",
		"Phew. More work than chasing down a runaway kodo.",
	},
	["race.tauren.victory.w08.004"] = {
		"The heart slows the way a herd slows: the leaders first, then the rest. Give it time.",
		"Breath coming back to me in big slow pulls, like water filling a hoofprint.",
		"Slow breaths. In through the nose, out like a kodo at the top of the climb to the bluff.",
	},
	["race.tauren.victory.w08.005"] = {
		"Tell the others a tauren stands here. Let them think twice.",
		"Next one should bring friends. Lots of friends.",
		"Down, and staying down. The plains breed us tough.",
	},
	["race.tauren.victory.w08.006"] = {
		"It's over. On the plains you don't gloat; you check the wind, and you move on.",
		"Over. The elders would say: don't stand over it too long, or you start to think you're the reason the world turns.",
	},
	["race.tauren.victory.w08.007"] = {
		"And that's why you don't startle a tauren.",
		"Lesson for the next one: never get between a tauren and the road.",
		"Should have walked around me. Most things do.",
	},
	["race.tauren.victory.w08.008"] = {
		"shakes out {g:his|her} mane and lets the heat of the fight steam off {g:him|her} slowly.",
		"plants both hooves and stands there breathing like a bellows, enormous and unhurried.",
	},
	["race.tauren.victory.w08.009"] = {
		"Even a needed death sits heavy. My people don't pretend otherwise, and neither will I.",
		"Every life the earth takes back leaves a little weight on the one who sent it there. Fine. I can carry weight.",
		"Finished. I'll carry the weight of it a little while, the way the elders say a hunter should, and then set it down.",
	},
	["race.tauren.victory.w08.010"] = {
		"Cairne keeps the peace of his people. Here, I kept a little of it too.",
		"Another tale for the tellers at Thunder Bluff, if they want it. I'd rather they told it short.",
	},
	["race.tauren.victory.w08.011"] = {
		"That went well. I only tripped over my own hooves once, and nobody saw.",
		"Not bad. A little more grace and I'd be mistaken for a night elf. A very large night elf.",
	},
	["race.tauren.victory.w08.012"] = {
		"Earth Mother, it's done. Turn your eyes elsewhere; there's nothing more to see here.",
		"It's finished. May An'she and Mu'sha look kindly on whatever's left of this place.",
	},
	["race.tauren.victory.w08.013"] = {
		"Each fight leaves the hooves a little surer. That's how a calf learns the herd's pace, the herders say.",
		"One fight more, a little strength more. The plains are patient teachers, and they never let you skip a lesson.",
	},
	["race.tauren.victory.w08.014"] = {
		"Over. The herd doesn't stop because one wolf fell; neither do I.",
		"Good. Back to walking. A tauren is happiest with miles under the hooves.",
		"That's settled. Now, which way was I going? Ah. Forward.",
	},
	["race.tauren.victory.w08.015"] = {
		"flicks an ear, as if at a fly, and looks around for anything else that might want trouble.",
		"tilts {g:his|her} head at the fallen foe with mild curiosity, the way a kodo regards a fence it has just walked through.",
	},
	["race.tauren.victory.w08.016"] = {
		"The wind will move over this spot as if nothing happened. On the plains I learned to find that comforting.",
		"Soon there'll be no sign of this. The land forgets quarrels faster than any of us. My people call that mercy.",
	},
	["race.tauren.victory.w08.017"] = {
		"Hooves, horns and a bad temper. You met all three.",
		"That's what happens when you wake a tauren's temper. It takes a long time to wake, and longer to sleep.",
	},
	["race.gnome.battle.w09.001"] = {
		"For Tinker Town, and every gnome who walked out of the dark!",
		"Gnomeregan's exiles fight too! Come and find out how!",
		"For the High Tinker! Mind your shins!",
	},
	["race.gnome.battle.w09.002"] = {
		"You're very large. That just means more of you to hit.",
		"Big, slow and in my way. Two of those I can fix.",
		"My, you're tall. Tall things fall farther, you know.",
	},
	["race.gnome.battle.w09.003"] = {
		"Breathe, measure, move. Panic is only a calculation done too fast.",
		"Slow the thinking down, speed the feet up. That's the whole trick.",
		"Measure first. Fear can have whatever's left over.",
	},
	["race.gnome.battle.w09.004"] = {
		"ducks under the first swing with an inch to spare, which for a gnome is a generous margin.",
		"scampers into a gap no taller fighter would ever fit through.",
	},
	["race.gnome.battle.w09.005"] = {
		"Excellent! A practical test! I do love a practical test!",
		"Field trial number one, commencing now!",
	},
	["race.gnome.battle.w09.006"] = {
		"The survivors say the troggs came up from below without warning. This one at least had the manners to show itself.",
		"Gnomeregan fell to things that crawled up out of the deep. Whatever this is, it's standing in plain sight. Good.",
	},
	["race.gnome.battle.w09.007"] = {
		"Go on, underestimate me. Everybody does, once.",
		"Look down here. Yes, here. That's the last mistake you get to make.",
	},
	["race.gnome.battle.w09.008"] = {
		"plants {g:his|her} small boots wide and grins up at the foe, which is the only direction available.",
		"sets {g:his|her} feet, tilts {g:his|her} head all the way back to meet the foe's eyes, and refuses to look impressed.",
	},
	["race.gnome.battle.w09.009"] = {
		"Exits noted: left, right, and straight between its legs. Now let's not need them.",
		"Three ways out, counting the one under it. Gnomes always count the one under it.",
	},
	["race.gnome.battle.w09.010"] = {
		"Mekkatorque's people don't run! We relocate tactically, and today we're not even doing that!",
		"Gnomes don't retreat! We reposition! And right now we're not repositioning!",
	},
	["race.gnome.battle.w09.011"] = {
		"The odds look dreadful. Good. Dreadful odds are where the interesting results live.",
		"Bad numbers on paper. The paper never accounts for a stubborn gnome.",
	},
	["race.gnome.battle.w09.012"] = {
		"I had plans for the next hour. Detailed plans. You weren't in them.",
		"This wasn't on my schedule, and I keep a very thorough schedule.",
	},
	["race.gnome.battle.w09.013"] = {
		"shifts {g:his|her} stance by a careful inch, as if calibrating something delicate.",
		"flexes small fingers once, quick and precise, the way one tests a spring before setting it.",
	},
	["race.gnome.battle.w09.014"] = {
		"Let's be quick about this. I left a perfectly good thought half-finished.",
		"Make it brief, please. I was in the middle of an idea.",
	},
	["race.gnome.battle.w09.015"] = {
		"Fight as if the city were still down there, waiting for us. In a way, it is.",
		"Somewhere beneath the mountains Gnomeregan is still waiting. I'd like to be alive when we go back for it.",
	},
	["race.gnome.battle.w09.016"] = {
		"Ironforge didn't open its doors to us so I could lose to something like this. Focus.",
		"The dwarves gave my people a roof. The least I can do is not get flattened under the open sky.",
	},
	["race.gnome.battle.w09.017"] = {
		"Short, quick and very cross! Your move!",
		"Come on, then! Small and fast beats big and slow!",
		"I'm half your height and twice your nerve! Let's see!",
	},
	["race.gnome.battle.w09.018"] = {
		"Right! Elbows out, head down, brain on!",
		"Here we go! Wits first, everything else second!",
		"All hands to the problem! Well, both of mine!",
	},
	["race.gnome.battle.w09.019"] = {
		"Heart hammering like a loose piston. Fine. Loose pistons still drive the wheel.",
		"Scared. Good. Scared gnomes notice everything, and noticing is half of winning.",
	},
	["race.gnome.battle.w09.020"] = {
		"looks the foe up and down, which takes rather a while, and narrows {g:his|her} eyes at what {g:he|she} finds.",
		"studies the oncoming foe with bright, quick eyes, like a puzzle that has foolishly decided to fight back.",
	},
	["race.gnome.battle.w09.021"] = {
		"Oh, wonderful. Another enormous thing with no sense of personal space.",
		"Must everything out here be twice my size and in a bad mood?",
	},
	["race.gnome.lowhp.w09.001"] = {
		"Damage report: everywhere. Morale: somehow still online.",
		"Every gauge in the red. Well. Red is a cheerful color, at least.",
		"Too many leaks to count. Patch the big one and argue with the rest later.",
	},
	["race.gnome.lowhp.w09.002"] = {
		"Not now! I haven't tried half the things I meant to try!",
		"Absolutely not! I've got a list, and I'm nowhere near the end of it!",
	},
	["race.gnome.lowhp.w09.003"] = {
		"Not here. Gnomeregan has lost enough gnomes already.",
		"No. My people can't spare another one. Get up, think, get out.",
		"We left too many behind under the mountain. I'm not adding myself to that count.",
	},
	["race.gnome.lowhp.w09.004"] = {
		"wobbles, catches {g:himself|herself}, and blinks hard, like a lamp deciding whether to stay lit.",
		"sways on small feet and gives {g:his|her} head a quick shake, as if to knock something loose back into place.",
	},
	["race.gnome.lowhp.w09.005"] = {
		"Small target, getting smaller! Somebody tell me that's a good thing!",
		"I'm a hard target and getting harder! Mostly because there's less of me!",
	},
	["race.gnome.lowhp.w09.006"] = {
		"Think. A slip, a twist, a gap to squeeze through. Gnomes get out of tight places; it's what we do.",
		"There's always a way out for someone small enough to find it. Find it.",
	},
	["race.gnome.lowhp.w09.007"] = {
		"Not yet! I'm seeing Gnomeregan again first!",
		"I'm not done! There's a city under the mountains waiting for me!",
		"You don't get me! Somebody has to take Gnomeregan back, and I've volunteered!",
	},
	["race.gnome.threat.w09.001"] = {
		"Walk away. I'm small, I'm clever, and I have nothing better to do than ruin your day.",
		"Leave now. I'm short on height, not on ideas.",
		"Think carefully. Everything I lack in reach I make up for in spite.",
	},
	["race.gnome.threat.w09.002"] = {
		"The troggs took a whole city from us. You won't take one inch from me.",
		"My people lost Gnomeregan. We've grown very stubborn about losing anything else.",
	},
	["race.gnome.victory.w09.001"] = {
		"And down it goes. Physics remains undefeated.",
		"Gravity did most of that. I'll take the credit anyway.",
	},
	["race.gnome.victory.w09.002"] = {
		"There's the tremble, right on schedule and a full minute late. Nerves were never a gnome's best-calibrated part.",
		"Now the hands shake, once it's safe. Whoever designed nerves never tested them under load.",
	},
	["race.gnome.victory.w09.003"] = {
		"brushes off {g:his|her} sleeves and draws up to {g:his|her} full height, which takes no time at all.",
		"straightens {g:his|her} collar with great dignity, all of it concentrated in a very small person.",
	},
	["race.gnome.victory.w09.004"] = {
		"If only the troggs had gone down this easily. A whole city might still have its lamps lit.",
		"Easy enough, this one. The troggs weren't, and that's why I'm fighting up here instead of living down there.",
	},
	["race.gnome.victory.w09.005"] = {
		"Did you see that? Tell someone tall; they'll be believed.",
		"Somebody saw that, I hope. Tell it to a tall listener; it carries further.",
	},
	["race.gnome.victory.w09.006"] = {
		"Noted: it favored one side and dropped its guard on the turn. The next one goes quicker.",
		"Useful data. It telegraphed every big swing. I'll remember that pattern.",
	},
	["race.gnome.victory.w09.007"] = {
		"Next time, pick on someone your own size. Oh, wait. There isn't anyone my size. Lucky me.",
		"That's what comes of looking down on people. Literally, in this case.",
	},
	["race.gnome.victory.w09.008"] = {
		"peers at the fallen foe with frank scientific interest, then remembers {g:his|her} manners and looks away.",
		"crouches to study how the foe fell, purely for research, and straightens again before anyone can comment.",
	},
	["race.gnome.victory.w09.009"] = {
		"One more fight won. Gnomes are good at small victories; losing a city teaches you to collect them.",
		"A small win. My people have learned to stack those up carefully, like bricks for later.",
	},
	["race.gnome.victory.w09.010"] = {
		"Was that all? I'd prepared at least four more ideas.",
		"Oh. Over already? I had a whole second plan ready.",
	},
	["race.gnome.victory.w09.011"] = {
		"Quiet again. A moment to check what aches, and the rest gets logged for later.",
		"Over. Inventory: everything attached, a few new dents, nothing that won't buff out.",
	},
	["race.gnome.victory.w09.012"] = {
		"Another one for the exiles' tally! Tinker Town will want the number.",
		"Mark that one down for Gnomeregan! We're keeping count.",
	},
	["race.gnome.victory.w09.013"] = {
		"lets out a short, giddy laugh, half relief and half pure delight that the plan actually worked.",
		"gives a tiny hop of triumph, then pretends very hard that it didn't happen.",
	},
	["race.gnome.victory.w09.014"] = {
		"Small bodies break easily. That's why small people learn to think fast. This time the thinking won.",
		"Not much of me to spare in a fight. So I spend wits instead, and there's still plenty left.",
	},
	["race.gnome.victory.w09.015"] = {
		"For the record: outweighed, outreached, and not outwitted.",
		"Let the record show: smaller, lighter, and still the one standing.",
	},
	["race.gnome.victory.w09.016"] = {
		"The dwarves say a gnome in a fight is all elbows. Today the elbows did fine.",
		"Ironforge jokes that gnomes fight like startled clockwork. Startled clockwork just won.",
	},
	["race.gnome.victory.w09.017"] = {
		"Splendid! I'd do a lap of honor, but my legs would like a word first.",
		"Ha! Somebody fetch a crate; this deserves a speech from a proper height.",
	},
	["race.gnome.victory.w09.018"] = {
		"Won. In Tinker Town they'll be fiddling with some machine right now, never knowing. I like that, somehow.",
		"Over. Far off in Ironforge, the exiles go on tinkering and hoping. Fights like this keep the roads open for them.",
	},
	["race.gnome.victory.w09.019"] = {
		"lets {g:his|her} shoulders drop, takes three quick breaths, and checks small hands, arms and knees in a brisk inspection.",
		"pauses to catch {g:his|her} breath, then pats {g:himself|herself} down with care, like a mechanic counting the bolts after a test run.",
		"wipes {g:his|her} brow with the back of a sleeve and gives the fallen foe a short, businesslike nod.",
	},
	["race.orc.battle.w09.001"] = {
		"For Durotar, and for every orc who walks free!",
		"A gift from Durotar, hot and heavy!",
		"For Razor Hill and the red earth!",
	},
	["race.orc.battle.w09.002"] = {
		"Face me with honor, or don't face me at all.",
		"Stand and fight like you mean it. I'll do you the same honor.",
		"Fight me fair. I'll give you that and nothing else.",
	},
	["race.orc.battle.w09.003"] = {
		"throws back {g:his|her} head and lets loose a bellow that would carry across the Barrens.",
		"sets {g:his|her} tusks forward and stalks in, slow and certain as a wolf closing on prey.",
	},
	["race.orc.battle.w09.004"] = {
		"Calm first. Then strength. The rage can come later, if it's needed, and only if I call it.",
		"Breathe. Choose the first step. Orcs who charge blind belong to the tales of the bad years.",
	},
	["race.orc.battle.w09.005"] = {
		"Hah, a proper fight. My arms were starting to fall asleep.",
		"At last, something that isn't a crate to carry.",
		"Ah, there's my exercise for the day.",
	},
	["race.orc.battle.w09.006"] = {
		"Come on! Orgrimmar loves a fight story; earn your part in mine!",
		"Show me what you've got, and I'll show you what an orc has.",
	},
	["race.orc.battle.w09.007"] = {
		"The elders say the demon's blood once made every fight feel like hunger. This one feels like work. I'll take work.",
		"No demon fire behind my eyes, only my own anger, and I know where to point it. The curse is broken; the choosing is mine.",
	},
	["race.orc.battle.w09.008"] = {
		"Demon! Hellscream settled our debt with your kind in Ashenvale. I'm here for the interest!",
		"Your kind fed us poison and called it strength. Here's real strength, freely made!",
	},
	["race.orc.battle.w09.009"] = {
		"Right. Let's get this done before my food goes cold.",
		"Quick, then. I have places to be and you're in the way.",
		"Let's be quick about it. I've a long road and a short temper.",
	},
	["race.orc.battle.w09.010"] = {
		"grunts, plants {g:his|her} feet wide, and waits with heavy patience.",
		"lowers {g:his|her} head, tusks forward, and the broad frame goes still.",
		"spits to one side, rolls {g:his|her} thick neck, and comes on.",
	},
	["race.orc.battle.w09.011"] = {
		"Ancestors, watch this one. I won't shame you.",
		"Spirits of my people, I'll give you something worth watching.",
	},
	["race.orc.battle.w09.012"] = {
		"Orcs are made for this: the doing, not the thinking. Well, a little thinking.",
		"Some folk dread a fight. My shoulders cheer up the moment one starts.",
	},
	["race.orc.battle.w09.013"] = {
		"Green skin, red earth, and no fear. Come on!",
		"You picked a fight with an orc. Bold. Wrong, but bold.",
		"Tusks out, head down. Here I come!",
	},
	["race.orc.battle.w09.014"] = {
		"The Frostwolves fight for their valley, the Warsong for their name. I fight for whatever's behind me right now.",
		"Every clan has its reason to fight. Mine, today, is simple: whatever stands at my back.",
	},
	["race.orc.battle.w09.015"] = {
		"You look tough. I look tough too. One of us is lying.",
		"Hah! Another one who thinks orcs are all muscle. We are. Lucky you.",
	},
	["race.orc.battle.w09.016"] = {
		"grins around {g:his|her} tusks, an ugly, honest grin, and steps in.",
		"lets out a short, harsh cry, the kind wolves answer from far hills.",
	},
	["race.orc.battle.w09.017"] = {
		"I fight with a clear head and a clean heart. You'll find that's worse for you.",
		"No demon's fury in me. Only mine, and it's enough.",
		"Clear eyes, steady hands. That's what freedom fights like.",
	},
	["race.orc.battle.w09.018"] = {
		"If this is the fight that ends me, let whoever finds me say I faced it.",
		"No orc lives forever. The good ones are remembered for how they met days like this.",
	},
	["race.orc.battle.w09.019"] = {
		"I didn't come looking for trouble. But I won't walk around it either.",
		"You want this? Fine. Orcs never learned how to back down politely.",
	},
	["race.orc.battle.w09.020"] = {
		"Back in the ground! Orcs don't scare at a few bones.",
		"Rot and rattle all you like. I've seen fiercer things in a scorpid's nest.",
	},
	["race.orc.lowhp.w09.001"] = {
		"That's my blood on the ground. Now come and see what an orc does with the rest of it.",
		"You've drawn blood. Good. Orcs fight best with a debt to repay.",
		"Blood for blood, then. I still have plenty to trade.",
	},
	["race.orc.lowhp.w09.002"] = {
		"Breathe through it. Pain is just the body talking, and I've stopped listening.",
		"Hurts. Fine. Hurting means I'm still here to be hurt.",
		"Every breath is a small fight now. I've won plenty of those.",
	},
	["race.orc.lowhp.w09.003"] = {
		"sways, spits red, and plants {g:his|her} feet wider.",
		"staggers, tusks clenched, and refuses the ground its satisfaction.",
		"drops to one knee, then forces {g:himself|herself} up again with a growl.",
	},
	["race.orc.lowhp.w09.004"] = {
		"Is that all? I've had worse from a Razor Hill grog barrel.",
		"You hit like a Durotar sunburn: annoying, and not enough.",
		"Durotar's heat in high summer hurts more than you do.",
	},
	["race.orc.lowhp.w09.005"] = {
		"If the songs have it right, Hellscream went down on his feet. I can at least stay on mine a little longer.",
		"Grom Hellscream paid everything to free us, the warriors of Orgrimmar say. I won't spend that freedom face down in the dirt.",
	},
	["race.orc.lowhp.w09.006"] = {
		"Lok'tar! Not yet, not here, not to you!",
		"Not here. Not by your hand. An orc chooses where to fall, and it isn't here!",
	},
	["race.orc.lowhp.w09.007"] = {
		"Everything's going thin and far away. Stay. Stay in the fight, orc.",
		"Ears ringing, legs heavy. Plant your feet. Orcs are hard to move once they decide not to be.",
	},
	["race.orc.threat.w09.001"] = {
		"Walk away. An orc warns once, and only because honor asks it.",
		"Here's your one warning. Honor makes me give it. Nothing makes me give two.",
		"Turn around. I'll give you that much courtesy, and not one breath more.",
	},
	["race.orc.threat.w09.002"] = {
		"See these tusks? They're not for smiling.",
		"I'm showing you my tusks. Among orcs, that isn't a grin.",
	},
	["race.orc.victory.w09.001"] = {
		"Go to your ancestors, if you have any. Tell them an orc sent you, and fairly.",
		"That was a fair fight, and it's over. Lie easy.",
	},
	["race.orc.victory.w09.002"] = {
		"Over. I check my hands, my feet, my tusks. All there. That's a good day by anyone's count.",
		"A quick count: arms, legs, tusks. Nothing missing. I'll call that winning twice.",
	},
	["race.orc.victory.w09.003"] = {
		"Who's next? Line up, orderly, I'm not picky.",
		"Anyone else waiting? No? Pity.",
		"Who else wants a turn? Don't be shy.",
	},
	["race.orc.victory.w09.004"] = {
		"raises a fist and lets out a short, rough cry, the sound of an orc pleased with the day's work.",
		"wipes {g:his|her} brow with the back of a green wrist and grins around {g:his|her} tusks.",
	},
	["race.orc.victory.w09.005"] = {
		"It fought for its life, as I would. No gloating. Just the quiet after.",
		"Something died so I could keep walking. Orcs don't pretend that's nothing.",
	},
	["race.orc.victory.w09.006"] = {
		"Ha! Strength and honor, both intact!",
		"Victory, and not a drop of shame in it!",
		"Won, and won clean! Lok'tar!",
	},
	["race.orc.victory.w09.007"] = {
		"That's worked up an appetite. Somewhere in this world there's a boar with my name on it.",
		"Fighting makes an orc hungry. Winning makes an orc hungrier.",
		"A fight before eating is the best sauce, my belly says.",
	},
	["race.orc.victory.w09.008"] = {
		"Ancestors, that one was for you.",
		"Spirits, take note. That was done properly.",
	},
	["race.orc.victory.w09.009"] = {
		"Orgrimmar's heralds say the Warchief wants a Horde that fights to protect, not to conquer. I can stand behind this one.",
		"Not for conquest, just for the road ahead. That's the Horde the Warchief asks for, and the one I'll fight in.",
	},
	["race.orc.victory.w09.010"] = {
		"You'll want a bigger friend next time. Two, maybe.",
		"Tell your friends. Actually, don't. I like surprises.",
		"Pick someone smaller next time. There are plenty of them about.",
	},
	["race.orc.victory.w09.011"] = {
		"spits, wipes {g:his|her} mouth, and looks around for the next thing, unhurried.",
		"shakes the sting out of {g:his|her} arms and gives the fallen foe a curt nod of respect.",
	},
	["race.orc.victory.w09.012"] = {
		"Sweat stinging my eyes, arms heavy as stone. An orc's honest wages.",
		"Aching and alive. On the red earth they'd call that a good day.",
		"Bruised, scraped, and winning. Orcs are built for days like this.",
	},
	["race.orc.victory.w09.013"] = {
		"Back to the Nether with you. The orcs are done being your hounds.",
		"One less demon. Hellscream would have laughed, they say in Orgrimmar.",
	},
	["race.orc.victory.w09.014"] = {
		"If anyone saw that, I'd like it known I made it look easy. If not, I'll describe it generously.",
		"If nobody saw that, a shame. I'll tell it bigger later; that's allowed.",
	},
	["race.orc.victory.w09.015"] = {
		"Settled. Where was I going?",
		"Right. That's that. On to the road.",
		"Good. Now, where's the road gone?",
	},
	["race.orc.victory.w09.016"] = {
		"Orgrimmar's elders say the old Horde won battles and lost itself. I won this one and kept hold of who I am. That's the better trade.",
		"A win that leaves me still myself. The elders admit the Horde of their youth couldn't always say that.",
	},
	["race.orc.victory.w09.017"] = {
		"That's how an orc settles things: plainly, and for good.",
		"Plain, and finished. No other way is worth the name.",
	},
	["race.scourge.battle.w09.001"] = {
		"Come on, then! Better foes than you have killed me, and I got up!",
		"Try your luck! The last thing that killed me is still waiting for me to stay down!",
		"You want to kill me? Join the queue. It's a long queue, and none of them managed it properly.",
	},
	["race.scourge.battle.w09.002"] = {
		"Careful. Anything you break, I'll have to sew back on myself.",
		"Mind the stitches. I've only just had them done.",
		"Go on, aim for the heart. Let me know if you find it doing anything.",
	},
	["race.scourge.battle.w09.003"] = {
		"rolls {g:his|her} shoulders with a dry crackle of old joints and turns to face the fight without hurry.",
		"tilts {g:his|her} head, the loose jaw settling into a crooked line, and steps in.",
	},
	["race.scourge.battle.w09.004"] = {
		"Stay a moment and learn something: I've done the dying already, and you haven't.",
		"Dying is the easy part. It's the getting up afterward that takes practice.",
		"Afraid? Of you? I've seen the other side, and it was mostly quiet.",
	},
	["race.scourge.battle.w09.005"] = {
		"I spent too long as someone's weapon. Today I fight on no one's orders but my own!",
		"Nobody pulls my strings anymore. Every blow I strike is my own choice, and I choose you.",
		"My hands move because I tell them to. That alone should frighten you.",
	},
	["race.scourge.battle.w09.006"] = {
		"Fear used to arrive before the enemy did. Now it doesn't arrive at all. Just the work.",
		"The living get a rush of terror first. I get a clear head and cold hands. I'll take the trade.",
	},
	["race.scourge.battle.w09.007"] = {
		"For the Dark Lady, and for my own sour mood!",
		"This one's for Undercity. The rest is just for me.",
		"For Sylvanas! She bought us our freedom; let's spend some of it here!",
	},
	["race.scourge.battle.w09.008"] = {
		"Look at you, still on the leash. I chewed through mine.",
		"We came out of the same grave. Only one of us walked away with a will of its own.",
	},
	["race.scourge.battle.w09.009"] = {
		"There's a person in me who would have run. I keep them at the back, where they can't get in the way.",
		"The one I used to be would be shaking now. I remember the shaking better than I remember the face.",
	},
	["race.scourge.battle.w09.010"] = {
		"Stand back, this may get unpleasant. Unpleasant is my specialty.",
		"Brace yourself. I'm about to be the worst thing that's happened to you this week.",
		"Oh, good. I was hoping something would try me today.",
	},
	["race.scourge.battle.w09.011"] = {
		"fixes the foe with a flat, unblinking stare, a gaze that stopped flinching a long time ago.",
		"goes very still, with a stillness that has nothing living in it, and then moves all at once.",
	},
	["race.scourge.battle.w09.012"] = {
		"Lordaeron's dead have a long memory. Let's see if you're worth remembering!",
		"Come on! The dead of Lordaeron don't scare easily, and they don't quit at all!",
	},
	["race.scourge.battle.w09.013"] = {
		"Fair warning: I have odd appetites, and you're looking awfully fresh.",
		"Don't squirm. The dead aren't fussy eaters, but we do appreciate manners.",
	},
	["race.scourge.battle.w09.014"] = {
		"Pain comes to me muffled, like a voice through a closed door. Good. Let it knock.",
		"Whatever hurts, it hurts at a distance. I'll be through this before it finds the way in.",
	},
	["race.scourge.battle.w09.015"] = {
		"I crawled out of a grave for this second try. You'll not cut it short.",
		"This second existence was hard won. It won't end at your hands.",
	},
	["race.scourge.battle.w09.016"] = {
		"Fine. Let's get this over with; I've places to rot.",
		"Again? Very well. The dead have nothing but time, and I'll spend some on you.",
	},
	["race.scourge.battle.w09.017"] = {
		"For the Forsaken! Free, and furious about it!",
		"For the Forsaken! We answer to no master, and certainly not to you!",
	},
	["race.scourge.battle.w09.018"] = {
		"Fight first, check for missing pieces later. It's the Forsaken way.",
		"If I lose a finger here, I'll file it under the cost of doing business.",
		"Try not to lose anything you can't find again. Good rule, for something built like me.",
	},
	["race.scourge.battle.w09.019"] = {
		"lets out a harsh, rattling cry that sounds dragged up from a grave, and charges.",
		"gives a hollow rasp of a laugh, the kind that makes the living step back, and closes in.",
	},
	["race.scourge.battle.w09.020"] = {
		"I'm sorry for this, truly. Well, partly.",
		"Nothing personal. The dead don't hold grudges for long; we forget.",
	},
	["race.scourge.lowhp.w09.001"] = {
		"Ah. That bit was load-bearing.",
		"Something important just came loose. I'll find out what later.",
		"Hold on, I think that was the good arm.",
	},
	["race.scourge.lowhp.w09.002"] = {
		"Not like this. I didn't claw my way out of the Lich King's grip to come apart in a ditch.",
		"I fought a king inside my own skull and won. This is smaller. Hold.",
	},
	["race.scourge.lowhp.w09.003"] = {
		"staggers, something in {g:his|her} frame cracking audibly, and keeps coming anyway.",
		"lurches, half the stitching torn loose, and simply refuses to notice.",
	},
	["race.scourge.lowhp.w09.004"] = {
		"You'll need to do better than that. I've been deader than this!",
		"Is that all? I've been dead for years; you're barely an inconvenience.",
	},
	["race.scourge.lowhp.w09.005"] = {
		"The pain is far away, but the pieces are close. Too close to the ground. Up.",
		"Dying again would be such a waste of the first time. Move.",
	},
	["race.scourge.lowhp.w09.006"] = {
		"Fine! Take the arm! I'm keeping the rest!",
		"Somebody remember where that piece landed!",
	},
	["race.scourge.lowhp.w09.007"] = {
		"My will is all that holds me together. Good thing it's a stubborn one.",
		"Hold, will. You beat a Lich King once. Beat this.",
	},
	["race.scourge.lowhp.w09.008"] = {
		"sways like a scarecrow in a hard wind, held up by nothing visible, and does not fall.",
		"sags at the knees, then straightens with the jerky stubbornness of something that has already been dead once.",
	},
	["race.scourge.threat.w09.001"] = {
		"Walk away. I've no fear of dying, and you have every reason to.",
		"Leave now. The dead are patient, and I'd wait as long as it takes.",
		"Go. Your threats need someone who's afraid of graves.",
	},
	["race.scourge.threat.w09.002"] = {
		"Look at me closely. Do I seem like someone with much left to lose?",
		"Threaten a corpse? Bold. Pointless, but bold.",
		"Try frightening me. Others have; I'm told my face just stares back.",
	},
	["race.scourge.victory.w09.001"] = {
		"Lie still. I envy you a little, which is a strange thing to feel about a corpse.",
		"There goes the last of it. You'll rest now. I never quite managed that.",
	},
	["race.scourge.victory.w09.002"] = {
		"And that's why you don't pick fights with the already dead.",
		"Next time, pick on someone with a pulse. Better odds.",
		"Lesson learned, I hope: we don't stay down, and you do.",
	},
	["race.scourge.victory.w09.003"] = {
		"glances down at the fallen with an expression that says nothing at all, then straightens a sagging shoulder.",
		"brushes off {g:his|her} tattered sleeves, unhurried, as if the fight had been a minor delay on the way somewhere.",
	},
	["race.scourge.victory.w09.004"] = {
		"Another one for the Forsaken. Count it, Undercity.",
		"That's for the Dark Lady's people. We keep what we win.",
		"Count that one for Sylvanas. She likes a tidy tally.",
	},
	["race.scourge.victory.w09.005"] = {
		"The fight is over, and my body doesn't tell me so. I have to look around and decide it for myself.",
		"Afterward, nothing in me trembles or slows. I have to tell myself it's over, like reading a notice on a wall.",
	},
	["race.scourge.victory.w09.006"] = {
		"Was that it? I've had worse from a draft in Undercity.",
		"That's all? The damp in the sewers does more damage.",
		"That was the fight? I've had more trouble from a stiff knee.",
	},
	["race.scourge.victory.w09.007"] = {
		"Welcome to the quiet. I'll not be joining you just yet.",
		"Go on ahead. I've been, and I didn't care for it.",
	},
	["race.scourge.victory.w09.008"] = {
		"Over. I'll admit the thought of a snack crossed my mind. The thought can keep walking.",
		"Finished. Some of us would eat now. I'm considering it. I'm considering it less than I used to.",
	},
	["race.scourge.victory.w09.009"] = {
		"stands over the fallen for a long moment, as if trying to remember what one is supposed to feel at a moment like this.",
		"lingers by the body, head tilted, with the faint unease of someone who knows exactly how it feels to be on the ground.",
	},
	["race.scourge.victory.w09.010"] = {
		"Won by my own hand, at my own choosing. That's a victory twice over.",
		"My will, my fight, my win. Write that on my headstone, if I ever get one.",
		"I fought because I chose to and won because I'm stubborn. A Forsaken needs both.",
	},
	["race.scourge.victory.w09.011"] = {
		"Now to see what's useful. The dead don't waste; we've been wasted enough.",
		"Search the field, mend what's torn, move on. Death has made me tidy.",
	},
	["race.scourge.victory.w09.012"] = {
		"Ha! Even dead, I've still got it. Whatever it is.",
		"Not bad for someone who's been in the ground.",
	},
	["race.scourge.victory.w09.013"] = {
		"Each fight I win is a fight the Lich King doesn't get to win through me. I keep score.",
		"One more proof that I belong to myself. I collect them.",
	},
	["race.scourge.victory.w09.014"] = {
		"Done. Someone hand me a needle and thread; I've sprung a seam.",
		"Over. Nobody look at my left arm until I've had a moment with it.",
		"Finished. If anyone finds a fingernail, it's mine, and I want it back.",
	},
	["race.scourge.victory.w09.015"] = {
		"Rest. You've been given what I never was: a proper end.",
		"There. No master will wake you now. Consider it a kindness from one of your own kind.",
	},
	["race.scourge.victory.w09.016"] = {
		"picks a stray scrap of something off {g:his|her} shoulder, studies it, decides it isn't {g:his|hers}, and flicks it away.",
		"notices a loose thread hanging from a seam in {g:his|her} own arm and tucks it back in with mild annoyance.",
	},
	["race.scourge.victory.w09.017"] = {
		"Funny. The living fight to stay alive. I'm not sure what I fight for. To stay myself, perhaps. That will do.",
		"Won again. The living would call this survival. For me it's simpler: the will is still mine.",
	},
	["race.scourge.victory.w09.018"] = {
		"The grave sends its regards. It's expecting you.",
		"Off you go. Tell the dark I said hello; we're old acquaintances.",
	},
	["race.troll.battle.w09.001"] = {
		"For the Darkspear! Come find out what long arms are good for!",
		"You stepped into a troll's reach. Bad step.",
		"Sen'jin's people don't back away. Come on, then!",
	},
	["race.troll.battle.w09.002"] = {
		"Ha! Finally, something to do with my hands.",
		"Good, good. I was getting bored, and a bored troll is worse company than an angry one.",
		"Come, dance with me. I lead.",
	},
	["race.troll.battle.w09.003"] = {
		"Breathe slow. Let the other one make the first move; in the jungle, the one who hunts always waits.",
		"Calm. Anger is loud, and loud things get eaten in the jungle.",
	},
	["race.troll.battle.w09.004"] = {
		"bares {g:his|her} tusks and lets out a high, rattling war whoop that carries a long way.",
		"unfolds to full fighting height, long limbs loose and ready, eyes narrowed to slits.",
		"rolls {g:his|her} shoulders once and grins, the way a troll grins when the waiting is finally over.",
	},
	["race.troll.battle.w09.005"] = {
		"Darkspear! Heads high, tusks out!",
		"For Sen'jin, and for Vol'jin after him!",
		"Darkspear! Show them how the tribe of Vol'jin fights!",
	},
	["race.troll.battle.w09.006"] = {
		"You picked a fight with a troll. Somebody should have warned you.",
		"Lot of limbs on a troll. You won't see all of them coming.",
		"Arms this long, and you thought you were out of reach? Think again.",
	},
	["race.troll.battle.w09.007"] = {
		"Loa, I'm not asking for help. Just watch, and remember who it was.",
		"Spirits of my people, keep an eye on me. If I fall, at least let it be worth a story.",
		"A quick word to the loa before the first blow. They like to be asked first.",
	},
	["race.troll.battle.w09.008"] = {
		"Alright, mon, let's get this over with. The fish won't cook itself.",
		"Easy now. No need to rush. I've got all day and a great deal of reach.",
	},
	["race.troll.battle.w09.009"] = {
		"mutters a quick warding word under {g:his|her} breath, more habit than mojo, and steps in.",
		"spits once to the side, as if telling bad luck to wait its turn, and moves in.",
	},
	["race.troll.battle.w09.010"] = {
		"Pick a spot to fall. I'll help you get there.",
		"The jungle trolls of Stranglethorn are scarier than you, and they don't scare me either.",
		"Come closer. I promise it'll be quick.",
	},
	["race.troll.battle.w09.011"] = {
		"There it is, that heat under the skin. Trolls were made for this, the witch doctors say. Let it rise, but keep the reins.",
		"The blood runs fast and hot. Good. Fast and hot, but not stupid.",
	},
	["race.troll.battle.w09.012"] = {
		"I'll be honest, I was hoping you'd start it.",
		"Oh, you want trouble? Trouble is my favorite meal.",
		"Finally! I thought the whole day would go by without any fun.",
	},
	["race.troll.battle.w09.013"] = {
		"The Darkspear stand with the Horde. That means I stand right here.",
		"Thrall's orcs gave my people a way out. Every fight I take, I take for that.",
		"For the Horde that took us in! Come on!",
	},
	["race.troll.battle.w09.014"] = {
		"leans forward on long legs, loose as a reed in the wind, then goes very still.",
		"flexes long fingers one by one, never taking {g:his|her} eyes off the danger.",
	},
	["race.troll.battle.w09.015"] = {
		"Laugh. My people laugh going into a fight; it unsettles the other side, and it keeps the fear out of mine.",
		"A grin before the first blow. The witch doctors say the spirits favor the ones who laugh.",
		"Smile, then strike. That's how the Darkspear like it, and it confuses everybody.",
	},
	["race.troll.battle.w09.016"] = {
		"Fine. You wanted this, not me.",
		"Should've kept walking. Too late now.",
		"Right. I'll make this short; I have places to be.",
	},
	["race.troll.battle.w09.017"] = {
		"Any fight could be the one. The loa know which. I'd rather not.",
		"A drum somewhere is counting my fights. This isn't the last beat.",
	},
	["race.troll.battle.w09.018"] = {
		"The sea at Sen'jin hits harder than you, and we still go fishing every day.",
		"Waves have been trying to knock trolls over since before you were born. Go on, try.",
	},
	["race.troll.lowhp.w09.001"] = {
		"Ow. Alright, that one I felt.",
		"Ha... that's a lot of me on the ground. It'll grow back. Probably.",
		"Not finished yet, mon. Close, but trolls are bad at giving up.",
	},
	["race.troll.lowhp.w09.002"] = {
		"The loa are close. I can feel them leaning in. Not yet. Not yet.",
		"Cold at the edges. The spirits wait at the end of a long beach, and I'm not walking it today.",
	},
	["race.troll.lowhp.w09.003"] = {
		"Hold on. Give the flesh a moment and it will do what troll flesh does. Just hold on.",
		"Every breath buys a little more mending. Keep breathing. Keep buying.",
	},
	["race.troll.lowhp.w09.004"] = {
		"staggers, one long hand pressed to the wound, and somehow still grins.",
		"sinks to one knee, then pushes back up on long legs, tusks bared against the pain.",
		"sways badly, bleeding freely, and plants both feet as if the ground owed {g:him|her} something.",
	},
	["race.troll.lowhp.w09.005"] = {
		"Now you've done it. A wounded troll is the worst kind of troll!",
		"You think I'm finished? This is where trolls get dangerous!",
		"Bleed me, sure. Then watch what the blood does to my temper!",
	},
	["race.troll.lowhp.w09.006"] = {
		"Sen'jin didn't run from his end, the elders say. But he didn't go looking for it either. Get clear.",
		"Spirits, if you're counting, count slowly.",
		"Not on this ground, loa. Ask me again somewhere nicer.",
	},
	["race.troll.lowhp.w09.007"] = {
		"That hurt. Do it again and see what happens.",
		"Fine, you got some blood out of me. Want a bowl for it?",
	},
	["race.troll.threat.w09.001"] = {
		"Careful. Trolls laugh right up until they stop laughing.",
		"Walk away now, while I'm still smiling.",
		"I know a witch doctor who'd love a fresh shrunken head. Keep going.",
	},
	["race.troll.threat.w09.002"] = {
		"The Darkspear have survived worse than you. Back off.",
		"Look at these tusks. Now think again.",
		"One more step and you meet the troll the elders frighten children with.",
	},
	["race.troll.victory.w09.001"] = {
		"And that's how it's done. Anyone taking notes?",
		"Ha! Didn't even need my second wind.",
		"Next! Oh. There's no next. Shame.",
	},
	["race.troll.victory.w09.002"] = {
		"The loa can have that one. I hope they treat it more gently than I did.",
		"Done. I say nothing over it. The spirits don't need my words to find the way.",
		"Rest now. Whatever spirit you had, the fight doesn't hold it anymore.",
	},
	["race.troll.victory.w09.003"] = {
		"spins once on a heel, long arms flung wide, and lets out a whooping laugh.",
		"wipes {g:his|her} hands clean and gives the fallen a jaunty little bow.",
		"throws back {g:his|her} head and laughs, tusks gleaming.",
	},
	["race.troll.victory.w09.004"] = {
		"Darkspear victory! Somebody write it down!",
		"Another one for the tribe. Vol'jin would grin at that.",
		"For Sen'jin's people! That's how we settle things.",
	},
	["race.troll.victory.w09.005"] = {
		"Over. Whatever it took out of me is already creeping back.",
		"Done. The body hums a little, the way it does when it's busy mending itself.",
	},
	["race.troll.victory.w09.006"] = {
		"You should have picked on someone shorter.",
		"Lesson learned, I hope. Pity you won't get to use it.",
		"Should have stayed home. Wherever home is for something like you.",
	},
	["race.troll.victory.w09.007"] = {
		"A good fight. Jungle hunters thank the prey. I don't know if this counts as prey, but thank you anyway.",
		"The hunters of my people thank what they kill. A habit worth keeping, wherever the fight is.",
	},
	["race.troll.victory.w09.008"] = {
		"Fighting makes a troll hungry. Winning makes a troll hungrier.",
		"That's that. Anyone got a fish? I'll trade a story for it.",
		"Good work. Now, where does a troll find a fire and something to put on it?",
	},
	["race.troll.victory.w09.009"] = {
		"The blood's still singing. It takes a moment to learn there's nobody left to fight.",
		"Calm down, calm down. It's over. The wild part of me always takes longer to hear it.",
	},
	["race.troll.victory.w09.010"] = {
		"crouches by the fallen for a moment and murmurs a word too low to catch, then rises.",
		"draws a small sign on the ground with one finger, then rubs it out with a heel.",
	},
	["race.troll.victory.w09.011"] = {
		"The Darkspear keep their promises to the Horde. This was one of them.",
		"Thrall can rest easy. Well. A bit easier.",
		"Another debt to Thrall's Horde paid in full.",
	},
	["race.troll.victory.w09.012"] = {
		"The Gurubashi empire fought for blood and for Hakkar. I fight so I can go home and eat. I like my reasons better.",
		"My ancestors would have taken a trophy. I take a breath and walk on. Times change, even for trolls.",
	},
	["race.troll.victory.w09.013"] = {
		"Should've moved faster, mon.",
		"You fought well. Not well enough, but well.",
		"Nice try. Really. I mean it.",
	},
	["race.troll.victory.w09.014"] = {
		"Learned something there. Mostly about where not to stand.",
		"Each fight sharpens the next. A troll who stops learning ends up a trophy on somebody's wall.",
		"That one taught me something. I'll do it the honor of remembering.",
	},
	["race.troll.victory.w09.015"] = {
		"A scratch. Look closely: gone already.",
		"You left a mark. Give it a minute and you won't have left even that.",
	},
	["band.b60.battle.w10.001"] = {
		"Go on. I've had a long road to get ready for you.",
		"Take your time. I've got years of practice to spend on this.",
		"Let's begin. I'd rather not give you the whole road.",
	},
	["band.b60.battle.w10.002"] = {
		"Alright, then. Show me you were worth the repair bill.",
		"Fine. Try not to scuff anything; repairs are dear these days.",
		"You and me, then. One of us is about to regret it, and I've done my homework.",
	},
	["band.b60.battle.w10.003"] = {
		"Breathe. Read it. Every fight tells you how it ends if you listen early.",
		"Count its habits. Everything that fights has a few.",
		"Slow. Let the years do the work.",
	},
	["band.b60.battle.w10.004"] = {
		"settles into the fight with the economy of long practice, wasting nothing.",
		"meets the foe without a word, every motion pared down to what works.",
		"moves first, and moves well, like someone who stopped guessing long ago.",
	},
	["band.b60.battle.w10.005"] = {
		"Come on! I didn't climb this high to be stopped here!",
		"Bring everything. I'll know if you hold back.",
		"Hit as hard as you like. Better things than you have tried.",
	},
	["band.b60.battle.w10.006"] = {
		"Another one. There's always another one, and that's exactly why someone strong has to be here.",
		"Not for glory. Just so this thing never reaches anyone weaker.",
		"Better me than someone just starting out.",
	},
	["band.b60.battle.w10.007"] = {
		"Fine. But I'm charging you for the boots.",
		"Very well. Quickly, please; I have a list.",
		"Can we do this efficiently? The day is long and so is my list.",
	},
	["band.b60.lowhp.w10.001"] = {
		"Ha! Finally something that knows what it's doing!",
		"Good. I was starting to forget what this felt like.",
		"There you are. I wondered when the real fight would start.",
	},
	["band.b60.lowhp.w10.002"] = {
		"Bad. Not the worst. I've learned the difference, and right now it's everything.",
		"Steady. Panic is for people who've never been this deep in it.",
		"Hard hit. Fine. Think, don't flail.",
	},
	["band.b60.lowhp.w10.003"] = {
		"staggers, then plants {g:his|her} feet with the stubbornness of someone who has come too far to fall here.",
		"bleeds, breathes, and does not give an inch.",
	},
	["band.b60.threat.w10.001"] = {
		"Think about who you're picking a fight with. Then pick a smaller one.",
		"Look at the wear on this gear and ask yourself how it got there.",
		"You don't want this. I'm telling you as a courtesy.",
	},
	["band.b60.victory.w10.001"] = {
		"Settled. The long road isn't getting any shorter.",
		"That's that. On to the long list.",
		"Over. I'll mend the scratch and keep going.",
	},
	["band.b60.victory.w10.002"] = {
		"Clean. Years ago that would have taken everything I had.",
		"No contest. I remember when there would have been one.",
		"Easy, and I won't pretend it always was.",
	},
	["band.b60.victory.w10.003"] = {
		"lowers {g:his|her} guard only after a long look at the fallen, the caution of someone who has seen the dead get up.",
		"checks the body, the surroundings and {g:his|her} own gear, in that order, by long habit.",
		"steps away from the fallen foe and is already thinking about the next one.",
	},
	["band.b60.victory.w10.004"] = {
		"I'd ask for a real challenge, but in this world a dragon usually answers.",
		"Lovely. Can someone write down that it went well? It doesn't always.",
		"Done, and not a single new scratch. Mark the calendar.",
	},
	["band.b60.victory.w10.005"] = {
		"Another foe ended by these hands. The count stopped meaning anything long ago, and that worries me more than the count.",
		"It's over. I still try to notice each one; the day I don't, something in me will have died first.",
		"Over. Each one still gets a moment's silence from me.",
	},
	["band.b60.victory.w10.006"] = {
		"Next time, send something that's heard of me.",
		"Let that be told wherever your kind gathers.",
	},
	["ctype.beast.battle.w10.001"] = {
		"All teeth and no manners. Fine, I'm in the same mood.",
		"I'm not food. Let's get that cleared up early.",
		"Wrong meal. Very wrong meal.",
	},
	["ctype.beast.battle.w10.002"] = {
		"Your ground, I know. I'm crossing it anyway.",
		"Mark it, guard it, lose it. That's how the wild keeps its borders.",
	},
	["ctype.beast.battle.w10.003"] = {
		"It doesn't hate me. It just decided, quicker than any person could, that I'm a danger.",
		"No grudge in those eyes. Only the plain arithmetic of hunger.",
	},
	["ctype.beast.battle.w10.004"] = {
		"lowers {g:his|her} stance to the creature's height, eye to eye, waiting for the first lunge.",
		"keeps still a heartbeat longer than the beast does, and lets it come.",
	},
	["ctype.beast.battle.w10.005"] = {
		"Yes, yes, very big teeth. I've seen teeth before.",
		"Snarl, hiss, whatever it is you do. I've heard worse at a tavern door.",
	},
	["ctype.beast.battle.w10.006"] = {
		"Beasts don't bluff. When it comes, it comes straight and all at once. Be ready for all at once.",
		"No feints from this one. Watch how it shifts its weight.",
	},
	["ctype.beast.battle.w10.007"] = {
		"Come on, then! Show me what the wild built you for!",
		"Teeth out? Good. Let's not pretend this is a conversation.",
	},
	["ctype.beast.battle.w10.008"] = {
		"I'd have gone around you, if you'd let me.",
		"No hard feelings. There's no room for them in you anyway.",
	},
	["ctype.beast.battle.w10.009"] = {
		"Older than any road, this quarrel: something with teeth, something with a will, and one patch of ground.",
		"Tooth against wit. The oldest fight there is.",
	},
	["ctype.beast.battle.w10.010"] = {
		"You sniff at me, I sniff at you. Neither of us comes out of it well.",
		"Smell that? That's me, not lunch.",
	},
	["ctype.beast.battle.w10.011"] = {
		"You've got the speed, I've got the head. Let's see which one counts.",
		"Quick, are you? Quick isn't the same as clever.",
	},
	["ctype.beast.battle.w10.012"] = {
		"reads the beast's crouch, the coil before the spring, and steps away from where it means to land.",
		"meets the creature's flat, unblinking stare and does not look away.",
	},
	["ctype.beast.battle.w10.013"] = {
		"Every creature thinks the ground under its paws belongs to it. This one may even be right.",
		"It thinks this patch is its own. It may well be.",
	},
	["ctype.beast.lowhp.w10.001"] = {
		"That's my blood on your teeth. Rude.",
		"I'm not dinner yet! Stop setting the table!",
		"Chewed on, yes. Swallowed, no.",
	},
	["ctype.beast.lowhp.w10.002"] = {
		"It smells the blood now. It'll press harder. Don't give it your back.",
		"Never turn and run from a beast. That's when it truly starts.",
	},
	["ctype.beast.lowhp.w10.003"] = {
		"Bleeding isn't the same as beaten. Come and learn the difference!",
		"Torn up, not torn down!",
	},
	["ctype.beast.lowhp.w10.004"] = {
		"presses a hand to the bite and keeps {g:his|her} gaze level with the beast's.",
		"bleeds from more than one place, and still won't show the beast {g:his|her} back.",
	},
	["ctype.beast.threat.w10.001"] = {
		"Off with you, {target}. I'm more trouble than I'm worth to eat.",
		"Shoo. I'm tough to chew and in a foul temper.",
	},
	["ctype.beast.threat.w10.002"] = {
		"Look at me. Today I'm the bigger animal.",
		"Back down. Your instinct already knows I'm not prey.",
	},
	["ctype.beast.victory.w10.001"] = {
		"As quick as I could make it. That was all I had to offer.",
		"It's done. No more hunting for you.",
	},
	["ctype.beast.victory.w10.002"] = {
		"The wild won't mourn it. Something else will claim its ground before long.",
		"Its place won't stay empty. Nothing in the wild ever does.",
	},
	["ctype.beast.victory.w10.003"] = {
		"wipes {g:his|her} hands and steps back from the carcass, still breathing hard.",
		"checks for bites and scratches, finds a few, and decides they can wait.",
	},
	["ctype.beast.victory.w10.004"] = {
		"And who's the predator now? Don't answer, that was rhetorical.",
		"Not today, wild thing. Try someone slower.",
	},
	["ctype.beast.victory.w10.005"] = {
		"Beasts always open with the same move. The next one won't have learned from this one.",
		"Same lunge every time. Instinct is honest, and honest is easy to read.",
	},
	["ctype.beast.victory.w10.006"] = {
		"Look at this. Teeth marks. Wonderful.",
		"Something of mine got chewed. I'll find out what later.",
	},
	["ctype.beast.victory.w10.007"] = {
		"It fought as if there were nothing after this. For that beast, there wasn't.",
		"All that fury, and now just quiet. The wild spends its lives cheaply.",
	},
	["ctype.beast.victory.w10.008"] = {
		"Tooth against will, and I'm the one walking off.",
		"The wild sent its best. Its best wasn't enough.",
	},
	["ctype.beast.victory.w10.009"] = {
		"bows {g:his|her} head briefly over the beast, the way one acknowledges a rival who never lied.",
		"lets the beast's last breath pass in silence before moving on.",
	},
	["ctype.beast.victory.w10.010"] = {
		"My heart still runs as if something were chasing it. Strange, what a beast leaves behind in you.",
		"Still jumpy. For a while every rustle sounds like teeth.",
	},
	["ctype.beast.victory.w10.011"] = {
		"Hunger gave you courage. It took your caution in exchange.",
		"Should have kept your distance. Your instinct told you so.",
	},
	["ctype.demon.battle.w10.001"] = {
		"You feed on fear. You'll go hungry here.",
		"Hungry for fear, are you? You'll get none from me.",
	},
	["ctype.demon.lowhp.w10.001"] = {
		"You want my soul? Come and earn it.",
		"You get nothing from me. Not even this.",
	},
	["ctype.demon.victory.w10.001"] = {
		"Go home, demon. Nobody here wanted you.",
		"Whatever pact brought you here, it's void now.",
	},
	["ctype.demon.victory.w10.002"] = {
		"The smell will cling for hours. They always leave something behind.",
		"Gone, but the stench stays. Demons never leave clean.",
	},
	["ctype.dragon.victory.w10.001"] = {
		"Wings folded for good. The stories can stay stories.",
		"Dragonkin, and down. Someone ought to write that somewhere.",
		"Not so terrible from down here, are you?",
	},
	["ctype.elemental.battle.w10.001"] = {
		"No eyes to read, no face to fool. Just raw matter, and angry.",
		"All fury and no mind. Come on, then.",
		"Whatever binds you here, I'm here to cut it.",
	},
	["ctype.elemental.lowhp.w10.001"] = {
		"It doesn't tire and it doesn't bleed. I do both. End this fast.",
		"It won't tire. I will. Hurry.",
	},
	["ctype.elemental.victory.w10.001"] = {
		"Back to plain matter with you.",
		"There. Nothing left but what you were made of.",
		"Unmade. The world can have its pieces back.",
	},
	["ctype.elemental.victory.w10.002"] = {
		"watches the elemental's shape come apart into something plain and harmless again.",
		"waits until nothing of the creature moves at all, then lets out a breath.",
	},
	["ctype.giant.battle.w10.001"] = {
		"Right. Mind the feet, mind the hands, mind everything.",
		"Every step of yours is ten of mine. Good thing I'm quick.",
	},
	["ctype.giant.victory.w10.001"] = {
		"That's a lot of ground to fall on. Took its time, too.",
		"Down. Even the earth felt that one.",
		"Mind your heads! Sorry, I couldn't resist.",
	},
	["ctype.humanoid.battle.w10.001"] = {
		"You picked this road. You can still pick another.",
		"Last chance to put it down and walk away.",
	},
	["ctype.humanoid.battle.w10.002"] = {
		"You look like you've thought this through. You haven't.",
		"Bold plan. Let's see if it survives meeting me.",
	},
	["ctype.humanoid.battle.w10.003"] = {
		"A beast fights to eat. This one fights because someone, at some point, decided it should.",
		"Whatever brought them here, it's too late to ask now.",
	},
	["ctype.humanoid.battle.w10.004"] = {
		"notes how the foe holds the weapon, high and nervous, and drifts toward the open side.",
		"circles slowly, letting the foe be the one who decides too soon.",
	},
	["ctype.humanoid.battle.w10.005"] = {
		"You brought a plan. I brought a worse temper.",
		"Plan all you like. I'm already moving.",
	},
	["ctype.humanoid.battle.w10.006"] = {
		"Watch the hands, not the shouting. A thinking foe lies with everything but the hands.",
		"Feint coming. They nearly always feint first.",
	},
	["ctype.humanoid.battle.w10.007"] = {
		"Somebody won't be going home. Let's settle who.",
		"Only one of us walks away from this. I'd rather it were me.",
	},
	["ctype.humanoid.battle.w10.008"] = {
		"Oh good, a thinker. Beasts are so repetitive.",
		"At last, somebody who might surprise me.",
	},
	["ctype.humanoid.battle.w10.009"] = {
		"{target}. You knew what you were walking into.",
		"You knew what this road would cost. So did I.",
	},
	["ctype.humanoid.battle.w10.010"] = {
		"Worse than any beast: this one can hate me, and remember why.",
		"Beasts forget. People keep score. Careful.",
	},
	["ctype.humanoid.battle.w10.011"] = {
		"catches a flicker of doubt in the foe's face and gives it no time to grow.",
		"sets {g:his|her} jaw as the foe advances: no words are left that would change anything.",
	},
	["ctype.humanoid.battle.w10.012"] = {
		"Could we not? No? Fine.",
		"A nod in passing would have done. Your call.",
	},
	["ctype.humanoid.battle.w10.013"] = {
		"Guard up, then. Let's not waste each other's time.",
		"Enough staring. Come on.",
	},
	["ctype.humanoid.lowhp.w10.001"] = {
		"So you do know what you're doing. Annoying.",
		"Someone trained you properly. Shame.",
	},
	["ctype.humanoid.lowhp.w10.002"] = {
		"They saw that. They'll press now, the way I would. Don't be where they expect.",
		"They smell weakness as well as any beast. Hide it.",
	},
	["ctype.humanoid.lowhp.w10.003"] = {
		"Bleeding, yes. Yielding, no.",
		"You'll need a good deal more than that to put me down.",
		"Not yet. Not by your hand.",
	},
	["ctype.humanoid.lowhp.w10.004"] = {
		"spits blood and squares up to the foe again, eyes hard.",
		"backs off one careful step, buys a breath, and watches what the foe chooses next.",
	},
	["ctype.humanoid.threat.w10.001"] = {
		"You can still turn around. That door closes soon.",
		"Walk away. You've got the choice a beast never gets.",
	},
	["ctype.humanoid.threat.w10.002"] = {
		"Think it over, {target}. You're the kind that can.",
		"Use that head of yours. That's what it's for.",
	},
	["ctype.humanoid.victory.w10.001"] = {
		"Someone taught them to fight like that. Years of it, gone in a moment.",
		"Somebody taught them that. Wasted now.",
	},
	["ctype.humanoid.victory.w10.002"] = {
		"That's settled. I'd have preferred talking.",
		"Over. You could have walked away.",
	},
	["ctype.humanoid.victory.w10.003"] = {
		"lowers {g:his|her} guard slowly, as if the fallen foe might still change its mind.",
		"stands over the fallen foe a moment, breathing, saying nothing.",
	},
	["ctype.humanoid.victory.w10.004"] = {
		"Good tactics, poor timing. I'll keep the first part.",
		"A clever opening. I'm stealing it.",
	},
	["ctype.humanoid.victory.w10.005"] = {
		"Should've stayed home. Wherever that was.",
		"Next time, pick a quieter trade.",
	},
	["ctype.humanoid.victory.w10.006"] = {
		"No pleasure in it. Just the next step of the road, and a weight to carry for a while.",
		"No joy in that one. Just less noise.",
	},
	["ctype.humanoid.victory.w10.007"] = {
		"That was a real fight. Fair is fair: you knew your business.",
		"Credit where it's due. You made me work for it.",
	},
	["ctype.humanoid.victory.w10.008"] = {
		"kicks the fallen weapon out of reach before anything else, the habit of a careful fighter.",
		"nudges the foe's weapon away with a foot, just in case.",
	},
	["ctype.humanoid.victory.w10.009"] = {
		"A beast is forgotten by supper. People stay with me a little longer, whether I want them to or not.",
		"Beasts fade by supper. People don't.",
	},
	["ctype.humanoid.victory.w10.010"] = {
		"Well, that's one argument I won.",
		"I'll take that as a concession.",
	},
	["ctype.humanoid.victory.w10.011"] = {
		"If more of your kind are watching: that's how it goes.",
		"The next one can take note.",
	},
	["ctype.humanoid.victory.w10.012"] = {
		"Hands steady, at least. A thinking enemy wears you down more than claws ever do.",
		"Wits against wits. Draining.",
	},
	["ctype.mechanical.battle.w10.001"] = {
		"Somebody built you. Let's see how well.",
		"Gears and bad intentions. Let's find the loose bolt.",
	},
	["ctype.mechanical.victory.w10.001"] = {
		"Scrap. Somewhere an engineer is weeping.",
		"Stopped ticking. Good.",
		"All those parts, and not one of them for thinking.",
	},
	["ctype.undead.lowhp.w10.001"] = {
		"I'm not joining you. Not today, and not like this.",
		"I'm not one of yours yet!",
	},
	["ctype.undead.lowhp.w10.002"] = {
		"It has nothing left to lose. I do. Remember that, and move.",
		"Nothing to lose on its side. Everything on mine.",
	},
	["ctype.undead.threat.w10.001"] = {
		"Go back to your grave while there's still room in it.",
		"Lie down and stay there. Last offer.",
	},
	["ctype.undead.victory.w10.001"] = {
		"Back under, and no more walking this time.",
		"The earth wants you back. Go.",
	},
	["ctype.undead.victory.w10.002"] = {
		"Whoever raised it never asked. Nobody asks the dead.",
		"It never chose to walk. That's the worst of it.",
	},
	["ctype.undead.victory.w10.003"] = {
		"steps back from the remains and waits a moment, to be sure they stay still.",
		"watches the remains a breath longer than needed. With the dead, one learns to.",
	},
	["battle.w12.cries.001"] = {
		"I've planted my feet. You'll need a lever.",
		"Feet down, chin up. Bring a lever if you mean to shift me.",
		"Rooted. Go fetch a lever, I'll wait.",
	},
	["battle.w12.cries.002"] = {
		"Hear that? Does that sound like trembling to you?",
		"Listen close. Is that the voice of someone shaking?",
	},
	["battle.w12.cries.003"] = {
		"Meet me halfway! I've already walked my half!",
		"Halfway, then! My half's done, the rest is yours to cover!",
	},
	["battle.w12.cries.004"] = {
		"Step for step! Every one you take, I take one too!",
		"Match me step for step, if you've the nerve!",
		"You move, I move. Pace for pace, all the way!",
	},
	["battle.w12.cries.005"] = {
		"Stand and be counted! ...Just me? Then count me twice!",
		"All who'll stand, step up! ...Fine. I'll count as several.",
	},
	["battle.w12.cries.006"] = {
		"My answer is no! Whatever the question was, no!",
		"No! Whatever you came to ask, the answer's no!",
		"However you put it, the answer's the same: no!",
	},
	["battle.w12.cries.007"] = {
		"You want this ground? Pay for every inch of it!",
		"This ground isn't for sale. You'll pay for every inch anyway!",
	},
	["battle.w12.cries.008"] = {
		"Here! Over here! Yes, the one shouting!",
		"Over here! No, not there. Here, where all the noise is!",
		"This way! Follow the racket, it's me!",
	},
	["battle.w12.cries.009"] = {
		"Good! I've been saving this temper for someone!",
		"Finally, somewhere to put all this anger!",
		"At last! All this anger had nowhere to go!",
	},
	["battle.w12.cries.010"] = {
		"Somebody keep count! I want this one remembered properly!",
		"Is anyone watching? Good. Watch closely!",
	},
	["battle.w12.cries.011"] = {
		"Loud and plain, so there's no mistake: I'm not leaving!",
		"Let there be no misunderstanding: I stay, and you deal with it!",
	},
	["battle.w12.cries.012"] = {
		"I've got a voice and two hands, and you're about to meet all three!",
		"Two hands and one big mouth. You'll meet them all!",
	},
	["battle.w12.cries.013"] = {
		"If I fall, I'll fall shouting!",
		"Whatever happens, nobody will say I went quietly!",
		"Quietly? Never. Whatever comes, it comes loud!",
	},
	["battle.w12.cries.014"] = {
		"Nobody hands me this fight. I'm taking it!",
		"This fight wasn't given to me. I'm claiming it, loudly!",
	},
	["battle.w12.cries.015"] = {
		"I don't back down, I don't bargain, and I don't quit early!",
		"No backing down, no bargaining, no quitting!",
	},
	["battle.w12.cries.016"] = {
		"A challenge? Accepted before you'd finished making it!",
		"Accepted! Whatever that was, I accept!",
		"Challenge received, challenge taken, no take-backs!",
	},
	["battle.w12.cries.017"] = {
		"You've drawn a line. I'm standing right on it!",
		"There's your line. I've just stepped over it.",
	},
	["battle.w12.cries.018"] = {
		"Stand tall! Or don't. I'll meet you at whatever height you are!",
		"Tower or pebble, I'll face you just the same!",
	},
	["battle.w12.cries.019"] = {
		"One or many, any size, the answer's the same: no further!",
		"However many, however big, this is where it stops!",
	},
	["battle.w12.cries.020"] = {
		"Let the ground remember who held it!",
		"Let the earth keep the memory of who would not give way!",
	},
	["battle.w12.cries.021"] = {
		"To the last ounce of me!",
		"Down to the last ounce, and a little past it!",
		"Everything I am, to the last scrap!",
	},
	["battle.w12.cries.022"] = {
		"Fair warning, given once, out loud. That's all the courtesy left.",
		"Hear my one warning. After this, no more courtesy!",
	},
	["battle.w12.cries.023"] = {
		"Anyone nearby trying to sleep? Sorry! This will be loud!",
		"Apologies to every ear around! This won't be quiet!",
	},
	["battle.w12.cries.024"] = {
		"I didn't come all this way to stop for you!",
		"I've walked too far to be stopped here!",
		"All that road behind me, and you think this is where I halt?",
	},
	["battle.w12.cries.025"] = {
		"Every bruise you give me comes back with interest!",
		"Bruise me and I'll pay it back, with interest!",
	},
	["battle.w12.cries.026"] = {
		"One will, two hands, no retreat!",
		"Two hands, one will, and no way back!",
	},
	["battle.w12.cries.027"] = {
		"Courage, you fool! ...That was for me, not you.",
		"Be brave, idiot! ...I meant myself.",
		"Chin up, you coward! ...Talking to myself, sorry.",
	},
	["battle.w12.cries.028"] = {
		"Raise the alarm! Oh, wait. I'm the alarm.",
		"Someone sound the alarm! Never mind, I've got a voice.",
	},
	["battle.w12.cries.029"] = {
		"Plain as bread: you or me, and I'd rather it was me!",
		"Plain as bread and twice as honest: I'm here to fight you!",
	},
	["battle.w12.cries.030"] = {
		"Not here, not past me, not while I can lift a hand!",
		"Nothing gets past while I can still raise a hand!",
	},
	["battle.w12.cries.031"] = {
		"By my own word and nothing else, I stand against you!",
		"On nobody's word but my own, I set myself against you!",
	},
	["battle.w12.cries.032"] = {
		"I've too much left to do to stop here for you!",
		"Plenty left to do, and none of it waits on you!",
		"Busy life, this. You'll have to fit around it!",
	},
	["battle.w12.cries.033"] = {
		"Got a cry of your own? Let's hear it! Mine's louder!",
		"Shout back, growl, hiss, whatever you do! I'll do it louder!",
		"Make whatever noise you make. Then hear mine!",
	},
	["battle.w12.cries.034"] = {
		"Hold nothing back on my account! I'm certainly not!",
		"Give it everything. I'm keeping nothing for later either!",
	},
	["battle.w12.cries.035"] = {
		"Last chance to walk away! ...No? Good. I didn't want you to.",
		"Turn back now! ...No? I hoped you'd say that.",
	},
	["battle.w12.cries.036"] = {
		"Earn it! Whatever you want from me, earn every bit!",
		"Nothing's free here! You'll earn every scrap you take!",
	},
	["battle.w12.cries.037"] = {
		"First blow's mine! ...Or yours. I'm not fussy!",
		"First blow to whoever wants it! I'm not proud!",
	},
	["battle.w12.cries.038"] = {
		"My hands are steady and my temper isn't! Pick which you'd rather meet!",
		"Steady hands, short temper. You'll get both!",
	},
	["battle.w12.cries.039"] = {
		"Hear the racket of my gear? That's the sound of me not running!",
		"All this clatter? That's me, not taking to my heels!",
	},
	["battle.w12.cries.040"] = {
		"Whatever you came for, you'll take it through me!",
		"Anything you want past here goes through me first!",
		"You want past? The way goes through me!",
	},
	["battle.w12.cries.041"] = {
		"You've used up the last of my patience. All of it, just now!",
		"There goes my patience. You'll get what comes after!",
	},
	["battle.w12.cries.042"] = {
		"Mark the spot! Something worth remembering is about to happen!",
		"Remember this spot. I intend to make it famous!",
	},
	["battle.w12.cries.043"] = {
		"Get ready, because I already am!",
		"Ready or not, it doesn't matter. I am!",
		"Take your time getting set. I'm set already!",
	},
	["battle.w12.cries.044"] = {
		"Let anyone within earshot know: I did not flinch!",
		"Let it carry far: I didn't take one step back!",
	},
	["battle.w12.cries.045"] = {
		"Teeth bared and temper up! You asked for the noise!",
		"Grinning like a lunatic and twice as loud! There!",
	},
	["battle.w12.cries.046"] = {
		"Loudest one wins! ...That's not how it works? Too late, I've started!",
		"I've decided the loudest wins. Objections? Speak up!",
	},
	["battle.w12.cries.047"] = {
		"Somebody has to stand in the way. It's going to be me!",
		"Someone's got to say no. I volunteer, loudly!",
		"Somebody had to be the wall. Hello!",
	},
	["battle.w12.cries.048"] = {
		"Better a loud fool than a quiet coward! Here I am!",
		"Call me a fool if you like. At least I'm a loud one!",
	},
	["battle.w12.cries.049"] = {
		"That was your mistake! This is my answer!",
		"You've made your move. Here's my reply, loud and clear!",
	},
	["battle.w12.cries.050"] = {
		"Never learned to run away. Too late to start now!",
		"Running away was never my talent. Fighting, though!",
	},
	["battle.w12.cries.051"] = {
		"I'm awake, I'm angry, and I'm right here!",
		"Wide awake, foul-tempered, and standing right in front of you!",
	},
	["battle.w12.cries.052"] = {
		"I won't be the one who blinks first!",
		"Blink first? Not me. Never me!",
	},
	["battle.w12.cries.053"] = {
		"You've woken something you should have let lie!",
		"Bad idea, poking this! Very bad idea!",
		"Should've left this one alone! Too late now!",
	},
	["battle.w12.cries.054"] = {
		"Witness it, whoever's near: I was challenged, and I answered!",
		"Let it be known: a challenge came, and I came to meet it!",
	},
	["battle.w12.cries.055"] = {
		"First the cry, then the clash. That's how it was always done.",
		"Cry first, clash after. The oldest order there is.",
	},
	["battle.w12.cries.056"] = {
		"I had a better war cry ready. This one will have to do: HAH!",
		"I rehearsed something grand. It came out as 'HEY!'",
	},
	["battle.w12.cries.057"] = {
		"Wherever you're going, I'm in the way of it!",
		"Whatever your plan was, I'm the part you didn't count on!",
	},
	["battle.w12.cries.058"] = {
		"That's enough! Now you hear from me!",
		"Enough! My turn to be heard!",
		"Quiet's over! Listen to this!",
	},
	["battle.w12.cries.059"] = {
		"I'm afraid of plenty of things. You didn't make the list!",
		"Plenty frightens me. You'll have to try harder!",
	},
	["battle.w12.cries.060"] = {
		"Hear me, all who can: I stand, and I do not kneel!",
		"I will not kneel. Let that be heard by any who can hear!",
	},
	["battle.w12.cries.061"] = {
		"Head-on or sideways, try me any way you like!",
		"Any angle you like. I'll be facing it!",
		"From the front, from the side, I'm here either way!",
	},
	["battle.w12.cries.062"] = {
		"This moment needs a cry. Here's mine!",
		"A moment like this deserves a proper roar! There!",
	},
	["battle.w12.cries.063"] = {
		"Doubts are for later! Right now I'm all certainty and noise!",
		"No room for second thoughts! Only first ones, and they're loud!",
	},
	["battle.w12.cries.064"] = {
		"You wanted trouble? Trouble's here, and it's shouting!",
		"Looking for trouble? It just found you, and it's loud!",
	},
	["battle.w12.cries.065"] = {
		"Once, clearly, so it's said: I will not yield!",
		"Said aloud, so it binds me: no yielding!",
		"Out loud, so there's no taking it back: I hold!",
	},
	["battle.w12.cries.066"] = {
		"Interrupting my thoughts? Rude! Here's a loud one instead!",
		"I was thinking! Now I'm shouting! Your doing!",
	},
	["battle.w12.cries.067"] = {
		"No hiding, no running, no whispering! Here I am, at full voice!",
		"Out in the open and loud about it! Here!",
	},
	["battle.w12.cries.068"] = {
		"If this is the hard way, then the hard way it is!",
		"Hard way, then! I never trusted the easy one anyway!",
	},
	["battle.w12.cries.069"] = {
		"Make it a good one! I hate wasting a proper shout!",
		"Be worth the noise! I don't roar for just anything!",
	},
	["battle.w12.cries.070"] = {
		"You knocked! I'm answering! Loudly!",
		"Knock on this door and see who answers!",
		"Somebody knocked? Here's who opens!",
	},
	["battle.w12.cries.071"] = {
		"Ha! Finally, a conversation I'm good at!",
		"At last, something I don't have to say politely!",
	},
	["battle.w12.cries.072"] = {
		"Temper loose and hands ready! Let's see it!",
		"Off the leash, all of it! Have this!",
	},
	["battle.w12.cries.073"] = {
		"Look at the size of you! Good, harder to miss!",
		"Now that's a proper challenge! All the more to shout at!",
	},
	["battle.w12.cries.074"] = {
		"A worthy one at last! Let's make this loud!",
		"Finally, something that deserves a proper cry!",
	},
	["battle.w12.cries.075"] = {
		"Stronger than me? Then I'll be louder, and I won't let go!",
		"You outmatch me. You don't outshout me!",
	},
	["battle.w12.cries.076"] = {
		"Stronger than me? Good. I'd hate to waste a cry on less!",
		"Strength on your side, nerve on mine. Let's see!",
	},
	["battle.w12.cries.077"] = {
		"No shame in a small challenge. I'll answer it in full!",
		"Outmatched, and you came anyway? Then you get my whole cry!",
	},
	["battle.w12.cries.078"] = {
		"{target}! I'm talking to you! Face me!",
		"Hey! You! This way, and quickly!",
	},
	["battle.w12.cries.079"] = {
		"Hear me, {target}! Your quarrel is with me now!",
		"Leave the rest! Your quarrel's with me now!",
	},
	["battle.w12.cries.080"] = {
		"{target}! I'll remember that name, however this ends!",
		"However this ends, I'll remember this one!",
	},
	["battle.w12.cries.081"] = {
		"{target}, is it? Good. Now I know what to shout!",
		"There! Now I know who to shout at!",
	},
	["battle.w12.cries.082"] = {
		"On me! Make some noise, all of you!",
		"Everyone, your loudest! Let them hear us coming!",
	},
	["battle.w12.cries.083"] = {
		"Shout it with me! One voice, all of us!",
		"Together and loud! If we go in, we go in roaring!",
	},
	["battle.w12.cries.084"] = {
		"Shout. It isn't for the foe. It's for my legs, so they stay put.",
		"Make noise. The legs believe it even when I don't.",
	},
	["battle.w12.cries.085"] = {
		"A cry is just courage said out loud before it can change its mind.",
		"Say the brave thing first. The rest of me can catch up.",
	},
	["battle.w12.cries.086"] = {
		"Louder than I feel. That's the whole trick.",
		"Make the voice bigger than me. Old trick, and it works on me too.",
		"Sound braver than I am. The sound won't know the difference.",
	},
	["battle.w12.cries.087"] = {
		"Whatever comes out of my mouth now, let it at least sound brave.",
		"First sound out of me, make it a brave one. The rest can be whatever.",
	},
	["battle.w12.cries.088"] = {
		"No clever words. One loud one, and go.",
		"Forget speeches. One good shout, and in.",
	},
	["battle.w12.cries.089"] = {
		"There's a war cry in me somewhere. Now would be a good time for it.",
		"Wherever my war cry is hiding, it had better show up now.",
	},
	["battle.w12.cries.090"] = {
		"Shouting doesn't make me stronger. It makes me forget to be afraid, which is close.",
		"The yell won't hit any harder. It just keeps the fear busy.",
	},
	["battle.w12.cries.091"] = {
		"Loud enough that the doubt can't hear itself think.",
		"Drown the doubt. Roar right over it.",
	},
	["battle.w12.cries.092"] = {
		"My voice goes in first. The rest of me follows it.",
		"Send the shout ahead like a scout. Follow where it lands.",
		"The shout leads. All I have to do is keep up with it.",
	},
	["battle.w12.cries.093"] = {
		"If I'm going to be foolish, I'll be foolish at full volume.",
		"A fool, maybe. A loud one, certainly.",
		"Loud foolishness beats the quiet kind.",
	},
	["battle.w12.cries.094"] = {
		"Say it like I mean it, and maybe I will.",
		"Shout it as if I believe it. Belief can come along after.",
	},
	["battle.w12.cries.095"] = {
		"Too late for silence. Might as well roar.",
		"Quiet's gone. Better fill the space with something fierce.",
		"Silence had its chance. Now, noise.",
	},
	["battle.w12.cries.096"] = {
		"Name myself to it, even if it won't understand. I'll understand.",
		"It needn't know my name. I need to hear myself say it.",
	},
	["battle.w12.cries.097"] = {
		"One clean cry. If anything of this is remembered, let it be that.",
		"Make the cry a good one. It might be the part people recall.",
	},
	["battle.w12.cries.098"] = {
		"Let the anger out through the mouth, before it gets into the hands.",
		"Anger goes out as noise first. Better there than in my grip.",
	},
	["battle.w12.cries.099"] = {
		"Every war cry I know is too long or somebody else's. Improvise.",
		"No borrowed cries. Whatever comes out is mine.",
	},
	["battle.w12.cries.100"] = {
		"throws back {g:his|her} head and lets loose a cry that carries a long way.",
		"tips {g:his|her} head back and sends a long cry out ahead.",
	},
	["battle.w12.cries.101"] = {
		"thumps a fist against {g:his|her} chest and shouts something wordless and fierce.",
		"strikes {g:his|her} own chest twice and bellows.",
	},
	["battle.w12.cries.102"] = {
		"stamps once, hard, and roars a challenge.",
		"brings a foot down hard and yells for the foe to come.",
		"stamps the ground and lets out a short, defiant bark.",
	},
	["battle.w12.cries.103"] = {
		"spreads {g:his|her} arms wide, an open dare, and shouts for the foe to try.",
		"opens {g:his|her} arms as if to say 'here I am', then yells exactly that.",
	},
	["battle.w12.cries.104"] = {
		"bares {g:his|her} teeth in a grin that is mostly challenge.",
		"shows {g:his|her} teeth and growls back, louder.",
		"draws back {g:his|her} lips and snarls, low at first, then loud.",
	},
	["battle.w12.cries.105"] = {
		"lets out a whoop that's half laughter, half challenge.",
		"gives a wild, whooping yell, somewhere between a laugh and a dare.",
		"laughs out loud, and halfway through the laugh becomes a challenge.",
	},
	["battle.w12.cries.106"] = {
		"bellows a single word, and it sounds very much like 'no'.",
		"shouts one short word at the foe. It is not a polite one.",
	},
	["battle.w12.cries.107"] = {
		"beckons the foe on with two curled fingers and a shout.",
		"crooks a finger at the foe and calls out a cheerful insult.",
	},
	["battle.w12.cries.108"] = {
		"lifts {g:his|her} chin and calls the foe out, loud enough to carry.",
		"squares up, chin high, and shouts a challenge with no waver in it.",
	},
	["battle.w12.cries.109"] = {
		"gives a hoarse yell that leaves no doubt about what comes next.",
		"lets out a rough shout, and with it the fight has begun.",
	},
	["battle.w12.cries.110"] = {
		"raises an open hand, then closes it into a fist with a shout.",
		"holds a palm up toward the foe, then clenches it, yelling.",
	},
	["battle.w12.cries.111"] = {
		"draws {g:himself|herself} up to full height and announces {g:himself|herself} to the foe.",
		"stands as tall as {g:he|she} can and calls out in a clear, carrying voice.",
	},
	["battle.w12.cries.112"] = {
		"lets the challenge out in one ragged, furious cry.",
		"puts everything into a single furious shout.",
	},
	["battle.w12.cries.113"] = {
		"claps {g:his|her} hands once, sharp as a slammed door, and calls the foe on.",
		"claps once, loud, and shouts for the foe to get on with it.",
	},
	["battle.w12.cries.114"] = {
		"grins and shouts something unfit for polite company.",
		"yells a challenge that no one would repeat at a table.",
	},
	["battle.w12.cries.115"] = {
		"roars, louder than anyone nearby would have expected.",
		"lets loose a roar much bigger than the moment needs.",
	},
	["battle.w12.dread.001"] = {
		"I'm afraid, and I'm staying. Both of those are true.",
		"Scared, yes. Leaving, no.",
		"Frightened and not going anywhere. Funny how that works.",
	},
	["battle.w12.dread.002"] = {
		"You frighten me. It changes nothing.",
		"I'm frightened of you. And yet here I am, aren't I?",
		"Yes, you scare me. Doesn't move my feet an inch.",
	},
	["battle.w12.dread.003"] = {
		"My knees have voted to leave. Their vote is overruled.",
		"Legs, I hear you. Request denied.",
		"The knees want out. The knees don't get a say.",
	},
	["battle.w12.dread.004"] = {
		"Should this be my last fight, it won't be a quiet one.",
		"If I'm to end here, nobody will call it a whisper.",
	},
	["battle.w12.dread.005"] = {
		"Luck, stay close. Closer than that.",
		"Luck, if you're anywhere near, now would be lovely.",
		"Any luck going spare? I'd take it now, please.",
	},
	["battle.w12.dread.006"] = {
		"Whatever happens, somebody remember: I didn't run.",
		"Somebody mark this down. I stayed.",
	},
	["battle.w12.dread.007"] = {
		"Easy, now. Nobody panics. Least of all me.",
		"Calm. Calm. I did say calm, didn't I?",
		"No panicking. I'm the calm one here, apparently.",
	},
	["battle.w12.dread.008"] = {
		"I don't know if I walk away from you. Let's find out.",
		"Can't say whether I'll leave this on my own feet. Time to learn.",
	},
	["battle.w12.dread.009"] = {
		"Not fearless. Just here.",
		"No hero. Only someone who didn't leave.",
		"Fearless? Hardly. Present, though.",
	},
	["battle.w12.dread.010"] = {
		"Light, spirits, Earth Mother, whoever's listening: a little help.",
		"To whatever watches over fools like me: watch closely now.",
	},
	["battle.w12.dread.011"] = {
		"Any scream from me is a battle cry. Officially.",
		"Any screaming you hear is strictly tactical.",
	},
	["battle.w12.dread.012"] = {
		"Death can wait its turn. It's a long line.",
		"Death can queue like everybody else.",
		"Get in line, Death. You're not first.",
	},
	["battle.w12.dread.013"] = {
		"I could still walk away. Remember that I didn't.",
		"There's still time to turn back. I'm choosing not to.",
		"The way out is open. I'm not taking it.",
	},
	["battle.w12.dread.014"] = {
		"Fear, meet my stubbornness. You two won't get along.",
		"Fear, say hello to stubborn. You'll hate each other.",
	},
	["battle.w12.dread.015"] = {
		"I'd like to be bored again soon. Very soon.",
		"Here's to boredom, and may it hurry up.",
	},
	["battle.w12.dread.016"] = {
		"Quick question before this starts: who gets my things?",
		"If this goes badly, somebody do something kind with my pack.",
		"Before this starts: I never decided who inherits the socks.",
	},
	["battle.w12.dread.017"] = {
		"Feet, stay where I put you.",
		"Steady, feet. You're not going anywhere.",
		"Feet, you're staying. That's an order.",
	},
	["battle.w12.dread.018"] = {
		"All right, little voice that wants to run. Noted. Ignored.",
		"Yes, yes, the part of me that wants to flee. I heard you.",
	},
	["battle.w12.dread.019"] = {
		"If you're the one who ends me, you'll have earned it.",
		"Ending me will cost you. That much I promise.",
		"Finishing me won't come cheap. Count on it.",
	},
	["battle.w12.dread.020"] = {
		"Fear's the price of standing here. Paid in full.",
		"Being afraid is just the fee. Consider it paid.",
	},
	["battle.w12.dread.021"] = {
		"Not ready. Nobody ever is. Begin.",
		"No one is ever ready for this. Start anyway.",
		"Ready? No. Starting? Yes.",
	},
	["battle.w12.dread.022"] = {
		"There's a quiet hour waiting on the far side of this. I want it.",
		"Past this fight there's some peace and quiet. I mean to collect it.",
	},
	["battle.w12.dread.023"] = {
		"This might hurt. Me, I mean. Let's go.",
		"Fair to say this will sting. Mostly me. Begin.",
	},
	["battle.w12.dread.024"] = {
		"Whoever keeps the names of the fallen, leave mine off a while.",
		"To whoever counts the fallen: not me. Not yet.",
		"If someone tallies the dead, skip my name for now.",
	},
	["battle.w12.dread.025"] = {
		"I'm scared of you. I'm more scared of running.",
		"Facing you frightens me. Fleeing frightens me worse.",
		"Running scares me more than you do. So, here I am.",
	},
	["battle.w12.dread.026"] = {
		"Hold. Hold. The fear passes. You don't.",
		"Stay put. The fear will leave before you do.",
	},
	["battle.w12.dread.027"] = {
		"Let this be one of the easy ones. Please.",
		"Just once, let it be easier than it looks.",
		"Easy, please. Just this one time.",
	},
	["battle.w12.dread.028"] = {
		"You could end me. You'll still have to do it.",
		"Strong enough to finish me, maybe. Then earn it.",
		"Yes, you're stronger. Strength still has to do the work.",
	},
	["battle.w12.dread.029"] = {
		"You're out of my league. I know. I'm here anyway.",
		"Stronger than me by a mile. My feet didn't get the message.",
	},
	["battle.w12.dread.030"] = {
		"That one ends people. Eyes open.",
		"Careful. This is how stories stop.",
		"That's the sort that ends people. Watch it.",
	},
	["battle.w12.dread.031"] = {
		"If I go down, don't stop for me. Finish it.",
		"Should I fall, keep going. Don't you dare stop.",
	},
	["battle.w12.dread.032"] = {
		"Stay close. I'm braver with someone near.",
		"Keep near me. My courage likes company.",
	},
	["battle.w12.dread.033"] = {
		"{target}, is it? I'd hate for that to be the last name I learn.",
		"So that's what I'm facing. I'd rather it weren't the last thing I learn.",
	},
	["battle.w12.dread.034"] = {
		"Mortal, and knowing it. Then let it count.",
		"Only mortal. That's enough. Let it count for something.",
	},
	["battle.w12.dread.035"] = {
		"I'd faint, but the timing is terrible.",
		"Fainting would be so convenient. Not now, though.",
		"Bad moment for a swoon. I'll put it off.",
	},
	["battle.w12.dread.036"] = {
		"Brave isn't a feeling. It's this step. Watch.",
		"Courage? I don't have it. I'm doing it. Different thing.",
		"Courage isn't something I own. It's something I do. Like so.",
	},
	["battle.w12.dread.037"] = {
		"I won't be the story people tell as a warning.",
		"Don't let me end up as somebody's cautionary tale.",
	},
	["battle.w12.dread.038"] = {
		"One more ordinary day after this. That's all I ask.",
		"Grant me a dull, ordinary tomorrow. That's the whole wish.",
	},
	["battle.w12.dread.039"] = {
		"Everyone's last fight starts like any other. That's the trouble.",
		"Nobody is told which fight will be the final one.",
		"The last fight never announces itself. It just begins, like this.",
	},
	["battle.w12.dread.040"] = {
		"Fear is loud. Being loud doesn't make it right.",
		"The fear shouts. Shouting isn't the same as being right.",
		"Loud doesn't mean right. Fear never learned that.",
	},
	["battle.w12.dread.041"] = {
		"Brave people are frightened people who moved first.",
		"Courage is just fear that went ahead and took a step.",
	},
	["battle.w12.dread.042"] = {
		"There's a version of this where I don't get up. Don't look at it.",
		"Somewhere ahead is the way this ends badly. Eyes elsewhere.",
		"One way this goes, I stay down. Don't think about that way.",
	},
	["battle.w12.dread.043"] = {
		"All the things I meant to do are standing very close right now.",
		"Every plan I never finished just crowded in behind me.",
	},
	["battle.w12.dread.044"] = {
		"Being afraid only means I care how this ends.",
		"Scared. Of course. It'd be strange not to care.",
		"Afraid, because it matters. Fair enough.",
	},
	["battle.w12.dread.045"] = {
		"The Light, the spirits, the Earth Mother. Surely one of them is looking this way.",
		"So many powers in this world. One could glance over here.",
		"Elune, the loa, the Light. Somebody out there must be bored enough to watch.",
	},
	["battle.w12.dread.046"] = {
		"If this is where it stops, I'd have liked a better view.",
		"Not much of a spot to end in. So let's not.",
	},
	["battle.w12.dread.047"] = {
		"I could be somewhere quiet, doing nothing at all. One day I will be. Not like this.",
		"Someday I'll lie still for good. Not here. Not this way.",
	},
	["battle.w12.dread.048"] = {
		"Make the fear useful: let it keep my eyes open.",
		"Fine, fear. Make yourself useful and watch the edges.",
	},
	["battle.w12.dread.049"] = {
		"Whatever I'm made of, I'm about to find out.",
		"This is where I learn what's inside me. Let it be something good.",
	},
	["battle.w12.dread.050"] = {
		"Let me be someone I'm not ashamed of, for the next little while.",
		"Small wish: that I don't disappoint myself.",
		"Just this: let me look myself in the eye afterward.",
	},
	["battle.w12.dread.051"] = {
		"Everything that dies thought it had more time.",
		"Nothing that falls ever thinks its time is up.",
	},
	["battle.w12.dread.052"] = {
		"Someone might be waiting to see me walk in. Don't make them a fool.",
		"If anyone's expecting me, let them not wait for nothing.",
	},
	["battle.w12.dread.053"] = {
		"Fear tells the truth about the danger. It lies about me.",
		"Fear's right about the danger and wrong about what I'll do.",
	},
	["battle.w12.dread.054"] = {
		"Strange thought, right now: who would even notice?",
		"If it went wrong, how long before anyone knew?",
		"Odd, what comes to mind: would anyone hear of it?",
	},
	["battle.w12.dread.055"] = {
		"The fear is as old as people. So is stepping forward anyway.",
		"Mortals have quailed at this edge forever, and stepped over it.",
	},
	["battle.w12.dread.056"] = {
		"There goes my good sense, out the back door. My feet stayed.",
		"My good sense just slipped out the door. The rest of me didn't.",
	},
	["battle.w12.dread.057"] = {
		"Ah. There it is: the little voice asking if this is the one.",
		"And here's that quiet question: is this the fight?",
	},
	["battle.w12.dread.058"] = {
		"Nobody's promised me I walk away from this. Then I'll promise myself.",
		"No guarantees. Fine. I'll make my own.",
	},
	["battle.w12.dread.059"] = {
		"Afraid after. No room for it now.",
		"Later I can fall apart. Not yet.",
		"Fear goes on the list for later. Right now it doesn't fit.",
	},
	["battle.w12.dread.060"] = {
		"Funny how sharp the world gets right before.",
		"Everything goes very clear at the edge. Every small thing.",
	},
	["battle.w12.dread.061"] = {
		"I'd like a long, dull life. This is in the way of it.",
		"A long life, mostly boring. That's the plan. This isn't.",
	},
	["battle.w12.dread.062"] = {
		"The world won't stop for my fear. Neither will I.",
		"Nothing pauses because I'm scared. So I won't pause either.",
		"No one halts the world for a frightened person. Keep up.",
	},
	["battle.w12.dread.063"] = {
		"Falling here would at least stop my knees complaining.",
		"Upside of dying: no more aching back. Still, I'll pass.",
		"The one perk of an ending: no more sore feet. No, thank you.",
	},
	["battle.w12.dread.064"] = {
		"Death is patient. Let it practice.",
		"Death waits for everyone. It can wait for me a while longer.",
		"All the time there is belongs to death. It can spare me some.",
	},
	["battle.w12.dread.065"] = {
		"Fear makes everything faster except me. Move.",
		"Everything's racing but my feet. Move them.",
	},
	["battle.w12.dread.066"] = {
		"No shame in being scared. Only in letting it decide.",
		"Afraid is allowed. Letting it choose isn't.",
		"Fear may speak. Fear may not choose.",
	},
	["battle.w12.dread.067"] = {
		"Let the next moment be kind. Just the next one.",
		"One kind moment. Then I'll ask for another.",
		"A gentle next moment, that's all. I'll worry about the one after.",
	},
	["battle.w12.dread.068"] = {
		"Mortals fight because they can lose. That's what gives it weight.",
		"If I couldn't fall, none of this would mean a thing.",
	},
	["battle.w12.dread.069"] = {
		"Nobody sees the fear but me. It stays that way.",
		"My face can lie a little longer. The fear is my business.",
	},
	["battle.w12.dread.070"] = {
		"Whatever's after the end can keep waiting. I'm busy.",
		"Whatever lies beyond, it's going home empty-handed this time.",
	},
	["battle.w12.dread.071"] = {
		"Steady. The worst part is the moment before. This is it.",
		"This bit, right here, before it starts, is the worst of it.",
		"The moment before is always the heaviest. Here it is, then.",
	},
	["battle.w12.dread.072"] = {
		"Remember: I chose to be here. Nobody dragged me.",
		"My own feet brought me here. I'll trust them a bit longer.",
	},
	["battle.w12.dread.073"] = {
		"Ah, terror. You never knock.",
		"Terror walks in without knocking. Rude.",
	},
	["battle.w12.dread.074"] = {
		"Somebody walks away from every fight. Might as well be me.",
		"Someone always comes out of these. I like my odds of being someone.",
	},
	["battle.w12.dread.075"] = {
		"Too strong for me, maybe. I'll hang everything on that maybe.",
		"It's beyond me, probably. Probably isn't certainly.",
	},
	["battle.w12.dread.076"] = {
		"I can feel how outmatched I am. Feeling isn't losing.",
		"Outmatched. Felt it at once. Doesn't make it over.",
		"Too much for me, says every instinct. Instincts aren't the verdict.",
	},
	["battle.w12.dread.077"] = {
		"That's the kind of thing that ends people. I'm people. Careful.",
		"Foes like this one write short endings. Don't hand it the pen.",
	},
	["battle.w12.dread.078"] = {
		"If one of us falls here, let it not be because I froze.",
		"Whoever goes down, don't let it be my hesitation that did it.",
	},
	["battle.w12.dread.079"] = {
		"My name isn't carved on anything yet. Keep the stone clean.",
		"No stone with my name on it so far. I'd like it to stay blank.",
	},
	["battle.w12.dread.080"] = {
		"Panic is a door. Don't open it.",
		"Panic is right there, a door left ajar. Keep it shut.",
		"There's a door marked panic. Walk past it.",
	},
	["battle.w12.dread.081"] = {
		"Brave for one moment. Then the next. That's the whole trick.",
		"Courage only has to last a moment. Then one more.",
	},
	["battle.w12.dread.082"] = {
		"After this: something to eat, somewhere to sit. Hold on to that.",
		"Food and a place to sit, after. Keep that in mind.",
		"Bread and a bench on the far side of this. Think of the bread.",
	},
	["battle.w12.dread.083"] = {
		"Strange how small a life looks from here.",
		"A whole life, and it all fits into this moment.",
	},
	["battle.w12.dread.084"] = {
		"Fear can't fight for me. It can only get in the way. Move it.",
		"Fear doesn't help with any of this. Step around it.",
	},
	["battle.w12.dread.085"] = {
		"Whatever comes for me, let it find me facing it.",
		"If something means to take me, it will have to meet my eyes.",
	},
	["battle.w12.dread.086"] = {
		"Luck owes me nothing. I'll ask nicely anyway.",
		"Luck doesn't keep accounts. Still, a small loan, please.",
	},
	["battle.w12.dread.087"] = {
		"The heroes of the old tales were frightened right here too. The tales leave it out.",
		"Every brave tale skips this part, where the hero wants to run.",
	},
	["battle.w12.dread.088"] = {
		"If there's any mercy loose in the world, a little could land here.",
		"Of all the mercy going round, I'd take a crumb.",
	},
	["battle.w12.dread.089"] = {
		"I hate this part. I always will. Here it is.",
		"I'll never like this moment. It comes anyway.",
	},
	["battle.w12.dread.090"] = {
		"If I fall, I hope it's facing forward.",
		"Should I go down, let it be face to the front, not half turned.",
	},
	["battle.w12.dread.091"] = {
		"Too late to be sensible. Might as well be brave.",
		"Sensible would have been earlier. Now it's brave or nothing.",
	},
	["battle.w12.dread.092"] = {
		"There's too much I haven't done for this to be the end.",
		"Far too much left undone to stop here.",
	},
	["battle.w12.dread.093"] = {
		"Under the fear there's a quiet place. Stand in it.",
		"Beneath all the noise of fear, a still spot. Go there.",
		"The fear has a calm floor under it. Put your feet on that.",
	},
	["battle.w12.dread.094"] = {
		"glances once toward the way out, then not again.",
		"looks over {g:his|her} shoulder a single time, then keeps {g:his|her} eyes ahead.",
	},
	["battle.w12.dread.095"] = {
		"closes {g:his|her} eyes for a moment, opens them, and steps in.",
		"squeezes {g:his|her} eyes shut, just briefly, and opens them on the fight.",
	},
	["battle.w12.dread.096"] = {
		"takes half a step back, stops, and does not take another.",
		"gives ground by a hand's width, then claims it back.",
		"sways back a fraction, then leans forward into the fight.",
	},
	["battle.w12.dread.097"] = {
		"mutters a few words that could be a wish or a curse.",
		"says something under {g:his|her} voice, too low to tell a plea from an oath.",
	},
	["battle.w12.dread.098"] = {
		"touches a strap at {g:his|her} chest, as some do for luck.",
		"taps the nearest buckle once, the way people touch things for luck.",
	},
	["battle.w12.dread.099"] = {
		"lets out a short sound that might be a laugh, and might not.",
		"makes a small noise, half laugh, half something else.",
	},
	["battle.w12.dread.100"] = {
		"stands very still, then makes {g:himself|herself} move.",
		"goes rigid for an instant, then forces {g:his|her} feet forward.",
		"freezes, just for an instant, and then moves anyway.",
	},
	["battle.w12.dread.101"] = {
		"lifts {g:his|her} chin a fraction, the way people do before something hard.",
		"raises {g:his|her} chin and holds it there.",
	},
	["battle.w12.dread.102"] = {
		"touches two fingers to {g:his|her} brow, a small private sign, and steps in.",
		"presses a knuckle to {g:his|her} forehead for a moment, some private habit, and looks up.",
	},
	["battle.w12.dread.103"] = {
		"looks at the foe the way one looks at a steep drop, and steps forward anyway.",
		"eyes the foe like the lip of a cliff, then moves toward it.",
	},
	["battle.w12.dread.104"] = {
		"flexes {g:his|her} fingers until they stop curling, and squares up.",
		"opens and closes {g:his|her} hands until they obey.",
		"shakes out {g:his|her} hands as if to rid them of something, and squares up.",
	},
	["battle.w12.dread.105"] = {
		"shapes a single word without a sound, meant for no one at all.",
		"says one word to no one, so quietly it barely exists.",
	},
	["battle.w12.dread.106"] = {
		"glances down at the earth as if measuring it for something, and looks away fast.",
		"looks at the ground a moment longer than needed, then up.",
	},
	["battle.w12.dread.107"] = {
		"looks the foe up and down, and for one honest moment does not move at all.",
		"takes in the size of the thing ahead and, for a moment, simply stares.",
	},
	["battle.w12.dread.108"] = {
		"lets {g:his|her} shoulders drop, as if setting down a fear too heavy to fight with.",
		"lowers {g:his|her} shoulders, shrugging off something heavier than gear.",
	},
	["battle.w12.dread.109"] = {
		"glances at the others as if to fix their faces in mind, then turns to the foe.",
		"takes one quick look at each companion before facing front.",
	},
	["battle.w12.grit.001"] = {
		"Tired, yes. Tired isn't finished.",
		"My legs are tired. The rest of me hasn't been told.",
		"Worn down is one thing. Worn out is another, and I'm not that.",
	},
	["battle.w12.grit.002"] = {
		"Put me down and I get up. That's all there is to it.",
		"I'll stand up as often as I'm knocked down. Count them if you like.",
		"Flat on my back is only ever a pause.",
	},
	["battle.w12.grit.003"] = {
		"I'm not shouting. That should worry you.",
		"Hear how quiet I am? That's the angry part.",
		"Notice I've stopped talking. That's not a good sign for you.",
	},
	["battle.w12.grit.004"] = {
		"Someone has to deal with you. It may as well be me.",
		"This needs doing, and I'm the one standing here.",
		"Somebody's got to. Looks like the somebody is me.",
	},
	["battle.w12.grit.005"] = {
		"Every step you want, you'll have to take from me.",
		"This bit of footing is mine. Come and argue for it.",
	},
	["battle.w12.grit.006"] = {
		"I was about to sit down. Now I'm angry and on my feet.",
		"You cost me a rest. I intend to collect.",
		"I had a seat picked out. Now I've a temper instead.",
	},
	["battle.w12.grit.007"] = {
		"Enough. I've had my fill of being pushed.",
		"That's the last shove I take from anyone.",
		"Push, push, push. My turn now.",
	},
	["battle.w12.grit.008"] = {
		"Go ahead and try. I've stubbornness to spare.",
		"Try me. Stubborn is the one thing I never run short of.",
		"Stubborn is my best feature. You're about to meet it.",
	},
	["battle.w12.grit.009"] = {
		"Duty doesn't ask if I'm in the mood. Neither do you.",
		"Not my choice of moment. Doesn't matter. I'm here.",
		"Inconvenient, unwanted, and mine to do. In I go.",
	},
	["battle.w12.grit.010"] = {
		"You'll have to work for every inch.",
		"Nothing here comes cheap. Least of all me.",
		"Each handspan of this costs you. I'm setting the price.",
	},
	["battle.w12.grit.011"] = {
		"You started this. Don't expect me to let it go.",
		"Your idea, this fight. Now it's mine as well, every bit of it.",
		"You picked this up. I'm not putting it down.",
	},
	["battle.w12.grit.012"] = {
		"Knees hurt, back hurts, and I'm coming anyway.",
		"Everything aches. Good. It keeps me awake.",
		"Sore all over. Not sore enough to stop.",
	},
	["battle.w12.grit.013"] = {
		"Bend me if you can. Breaking isn't on my list.",
		"I bend. I don't snap. Learn the difference.",
		"Things that bend come back up. Watch.",
	},
	["battle.w12.grit.014"] = {
		"I don't stop halfway. Not for you, not for anyone.",
		"Half-done isn't something I leave behind me.",
		"Whatever I start, I see to the end. This included.",
	},
	["battle.w12.grit.015"] = {
		"Calm and angry at once. The worst of both, for you.",
		"Cold-headed and furious. Pick which one you'd rather meet.",
	},
	["battle.w12.grit.016"] = {
		"However long this takes, I've got longer.",
		"Take as long as you need. I'm not going anywhere.",
		"Drag it out if you like. Patience is cheaper than you think.",
	},
	["battle.w12.grit.017"] = {
		"I'm not leaving. You might as well start.",
		"Waiting won't make me go away. Get on with it.",
		"I'm staying put. Your move.",
	},
	["battle.w12.grit.018"] = {
		"Down is a direction I don't take kindly to.",
		"If you want me on the ground, you'll have to earn it.",
		"The ground can wait for me. It'll be waiting a while.",
	},
	["battle.w12.grit.019"] = {
		"Too stubborn to fall, too tired to run. That leaves forward.",
		"Running takes strength I haven't got. Fighting, it seems, I can manage.",
	},
	["battle.w12.grit.020"] = {
		"This is the work, and it doesn't wait for a good moment.",
		"Nobody asked if it was convenient. The job is the job.",
		"Grumble later. Do the job now.",
	},
	["battle.w12.grit.021"] = {
		"You just made this personal.",
		"Now it's personal. Remember that you chose that.",
		"Fine. From here on, this is between you and my temper.",
	},
	["battle.w12.grit.022"] = {
		"Every blow you land gets an answer. Every single one.",
		"Hit me. I'm keeping count, and I pay back in full.",
		"I return what I'm given, with interest.",
	},
	["battle.w12.grit.023"] = {
		"There's always a last bit of fight at the bottom. You found it.",
		"Scrape the barrel and there's still some grit in it. Here it is.",
	},
	["battle.w12.grit.024"] = {
		"Stronger, sure. Strength gets tired. Stubbornness doesn't.",
		"You've got the weight. I've got the will to stay. Let's see which counts.",
		"More muscle than me, granted. Muscle isn't the same thing as staying power.",
	},
	["battle.w12.grit.025"] = {
		"I know how much stronger you are. I'm going in anyway.",
		"Too much for me? Perhaps. My feet didn't get the message.",
		"Stronger than me. Noted. Ignored.",
	},
	["battle.w12.grit.026"] = {
		"This one's going to be heavy work. In I go regardless.",
		"Hard going ahead. Hard going is what I'm good for.",
		"Heavy lifting, this. Shoulders, you know the drill.",
	},
	["battle.w12.grit.027"] = {
		"Hold here with me. Nobody gives an inch.",
		"Dig in, all of you. We leave when it's done, not before.",
	},
	["battle.w12.grit.028"] = {
		"If you're worn out, lean on me. So am I, and I'm still going.",
		"Weary? So are we all. Keep your feet under you.",
	},
	["battle.w12.grit.029"] = {
		"Nobody steps back until I do, and I don't plan to.",
		"First one to give ground buys the round. It won't be me.",
	},
	["battle.w12.grit.030"] = {
		"My feet are set. Let the rest follow.",
		"Here I set my feet, and here they stay.",
		"Rooted here. Try moving a root.",
	},
	["battle.w12.grit.031"] = {
		"{target}. A long day, and you're the end of my patience.",
		"You're the last stone on a heavy load. Brace yourself.",
	},
	["battle.w12.grit.032"] = {
		"{target}, you'll get no ground from me.",
		"No ground for you, {target}. Not a handspan.",
		"Whatever you came for, none of it comes easy.",
	},
	["battle.w12.grit.033"] = {
		"Fine, {target}. You've woken the stubborn part of me.",
		"You've woken the stubborn part of me. It doesn't nod off easily.",
	},
	["battle.w12.grit.034"] = {
		"My patience just ran out. You happened to be nearest.",
		"That was the end of my patience. Bad luck, being closest.",
	},
	["battle.w12.grit.035"] = {
		"I'm not built for quitting.",
		"Quitting isn't something I know how to do.",
		"Give up? I never learned the trick of it.",
	},
	["battle.w12.grit.036"] = {
		"Bruises fade. Backing down stays with you.",
		"Knocks heal. Giving in doesn't.",
		"Pain passes. Yielding sticks.",
	},
	["battle.w12.grit.037"] = {
		"Somebody's expecting me. You won't keep me from that.",
		"There are people waiting on me. You're not one of them, so step aside.",
	},
	["battle.w12.grit.038"] = {
		"Whatever you've got, I'll meet it standing.",
		"All of it, then. You'll find me on my feet for every bit.",
		"Give me your worst. I'll take it upright.",
	},
	["battle.w12.grit.039"] = {
		"Push me and find out what pushes back.",
		"Shove me. I shove back.",
		"Lay a hand on me and see what it costs.",
	},
	["battle.w12.grit.040"] = {
		"I'd rather be resting. I'll rest after.",
		"Rest later. Later is such a lovely word.",
		"There's a nap with my name on it. Afterwards.",
	},
	["battle.w12.grit.041"] = {
		"Quick isn't what I need. Done is.",
		"Slow or fast, I'll see it through.",
	},
	["battle.w12.grit.042"] = {
		"Politeness is over. What's left isn't polite.",
		"I tried patience. Patience is spent.",
	},
	["battle.w12.grit.043"] = {
		"I'll not turn my back. Call it a promise to myself.",
		"My face stays toward you. That's a promise.",
	},
	["battle.w12.grit.044"] = {
		"Chin up. No retreat.",
		"Head high, heels dug in.",
		"Eyes front, heels down, no backing off.",
	},
	["battle.w12.grit.045"] = {
		"Worn thin, not worn out.",
		"Frayed at the edges. Sound in the middle.",
		"Threadbare, maybe. Holding together all the same.",
	},
	["battle.w12.grit.046"] = {
		"You want a fight. You'll get one with no quit in it.",
		"Fine. You'll find no give in me.",
	},
	["battle.w12.grit.047"] = {
		"If I fall, I fall forward.",
		"Should I go down, it'll be facing you.",
		"Whatever happens, nobody sees my back.",
	},
	["battle.w12.grit.048"] = {
		"This isn't about you. It's about not letting go.",
		"I hold nothing against you. I just don't let go of things.",
	},
	["battle.w12.grit.049"] = {
		"Weaker than me changes nothing. I don't do things by halves.",
		"Smaller fight, same effort. That's how I'm made.",
	},
	["battle.w12.grit.050"] = {
		"Long fight or short, I'm in it to the last.",
		"However it goes, I stay to the end of it.",
	},
	["battle.w12.grit.051"] = {
		"I hold grudges. This one I'll hold a long while.",
		"You've just earned a grudge. I keep mine well.",
		"Congratulations. You're on the list of things I don't forgive.",
	},
	["battle.w12.grit.052"] = {
		"Retreats aren't for me. Pauses, barely.",
		"Backing off isn't in me. Neither, sadly, is sitting still.",
	},
	["battle.w12.grit.053"] = {
		"I said I'd see this through. Saying it was the easy part.",
		"Words are cheap. Standing here is the payment.",
		"My word got me here. My feet will do the rest.",
	},
	["battle.w12.grit.054"] = {
		"You'll have to pry me loose. I don't let go.",
		"I grip and I keep gripping. That's the whole of my art.",
		"Shake all you like. I hang on.",
	},
	["battle.w12.grit.055"] = {
		"Legs like wet rope. Doesn't matter. They'll carry me.",
		"Heavy everywhere. Arms, eyes, the lot. Go regardless.",
		"Lead in the boots. Walk anyway.",
	},
	["battle.w12.grit.056"] = {
		"It doesn't get to see my back. Not this time.",
		"Whatever this is, it sees my face, not my heels.",
	},
	["battle.w12.grit.057"] = {
		"Keep the anger cold. Cold anger lasts.",
		"Let it burn slow, not bright. Slow outlasts bright.",
		"Hot anger spills. Hold it cold and steady.",
	},
	["battle.w12.grit.058"] = {
		"Nobody's going to do this for me.",
		"This one's mine to carry. Pick it up.",
		"My load. My lift. Nobody else's.",
	},
	["battle.w12.grit.059"] = {
		"Count nothing. Keep going until it stops.",
		"Don't think about the end of it. Think about the next bit.",
		"Next moment. Then the next. Nothing more.",
	},
	["battle.w12.grit.060"] = {
		"Scared and furious. Furious wins.",
		"Fear says go. Anger says stay. I listen to anger.",
	},
	["battle.w12.grit.061"] = {
		"If I'm going to be stubborn about anything, let it be this.",
		"Be stubborn now. Save the good sense for later.",
		"Stubborn has its uses. Here's one.",
	},
	["battle.w12.grit.062"] = {
		"There it is, the hot little knot behind the eyes. Use it.",
		"Anger, right where I left it. Good. Point it forward.",
	},
	["battle.w12.grit.063"] = {
		"My body's filing complaints. Noted. Denied.",
		"Every joint has something to say about this. Later.",
	},
	["battle.w12.grit.064"] = {
		"I don't want this. Wanting has nothing to do with it.",
		"Nobody asked what I wanted. Nobody usually does.",
	},
	["battle.w12.grit.065"] = {
		"Hold. Just hold. The rest can follow.",
		"Root yourself. Be the thing that doesn't move.",
		"Stay. Whatever pushes, stay.",
	},
	["battle.w12.grit.066"] = {
		"There's a little left. A little is enough to start.",
		"Scraps of strength. Scraps will do.",
		"Dregs are still something to drink.",
	},
	["battle.w12.grit.067"] = {
		"The angrier I get, the lower my voice goes. Keep it low.",
		"Rage that shouts burns out. Rage that waits keeps.",
	},
	["battle.w12.grit.068"] = {
		"So tired of this. All of it. And in I go, as ever.",
		"Weary to the bone, and going in regardless. Of course.",
	},
	["battle.w12.grit.069"] = {
		"Whatever comes, take it with the chin up.",
		"Take the first one standing. That's all I ask of myself.",
	},
	["battle.w12.grit.070"] = {
		"If not me, who? Fine. Me.",
		"I could walk away. I won't. That's the whole of it.",
	},
	["battle.w12.grit.071"] = {
		"Sleep later. Sleep is a prize for afterwards.",
		"Bed's a long way off. This is right here.",
	},
	["battle.w12.grit.072"] = {
		"Sick of fights I never chose. Then I'll do this one properly.",
		"If I must, then all the way.",
	},
	["battle.w12.grit.073"] = {
		"Something in me does not kneel. Let it lead.",
		"There's a stubborn root in me. Lean on it.",
	},
	["battle.w12.grit.074"] = {
		"Outlast it. Whatever else happens, outlast it.",
		"Endure first. Everything else after.",
	},
	["battle.w12.grit.075"] = {
		"Too annoyed to be scared. Lucky me.",
		"Irritation beats fear. And I'm full of irritation.",
		"No room for fear. Annoyance took all the space.",
	},
	["battle.w12.grit.076"] = {
		"Promises don't keep themselves.",
		"Every promise I've made is standing right behind me.",
	},
	["battle.w12.grit.077"] = {
		"Shaking hands, steady feet. That'll do.",
		"Let the hands shake. The feet stay put.",
		"Trembling's allowed. Stepping back isn't.",
	},
	["battle.w12.grit.078"] = {
		"Grit your teeth. That's what teeth are for.",
		"Jaw set. Mind set. Go.",
		"Bite down on it and go.",
	},
	["battle.w12.grit.079"] = {
		"Tired hands still close into fists.",
		"Tired doesn't mean empty.",
	},
	["battle.w12.grit.080"] = {
		"Let it come. I've decided not to be moved.",
		"The deciding is done. Now there's only the holding.",
	},
	["battle.w12.grit.081"] = {
		"More anger than I ought to have. Fine. Spend it here.",
		"Too much temper for one day. Here's somewhere to put it.",
	},
	["battle.w12.grit.082"] = {
		"Fair or not, this falls to me.",
		"Not fair, not easy, still mine.",
		"Mine, like it or not.",
	},
	["battle.w12.grit.083"] = {
		"Whatever it costs, pay it and keep walking.",
		"Pay the price, keep going. Haggle afterwards.",
	},
	["battle.w12.grit.084"] = {
		"Running is for when there's nothing left. There's plenty left.",
		"Nothing in the tank? Wrong. Look again, there's plenty.",
	},
	["battle.w12.grit.085"] = {
		"Every part of me wants to sit. The part that decides says no.",
		"The body votes to rest. The will has a veto.",
	},
	["battle.w12.grit.086"] = {
		"They're counting on me holding. So I hold.",
		"Someone behind me needs this to go right. Dig in.",
	},
	["battle.w12.grit.087"] = {
		"Be the rock the water argues with.",
		"Water pushes; rock stays. Be rock.",
	},
	["battle.w12.grit.088"] = {
		"I'll remember this. Every bit.",
		"Mark it down: I don't forget who started it.",
		"Every slight gets written down. In here.",
	},
	["battle.w12.grit.089"] = {
		"This is where I don't give up. Right here.",
		"If there's a line, it's this one, and I'm not crossing back over it.",
	},
	["battle.w12.grit.090"] = {
		"Hungry, sore and in no mood. Perfect.",
		"Empty stomach, short temper. Bad mix for whatever that is.",
	},
	["battle.w12.grit.091"] = {
		"Shoulders back. Show it nothing but resolve.",
		"Give it nothing to work with. No doubt, no wobble.",
	},
	["battle.w12.grit.092"] = {
		"squares {g:his|her} shoulders like someone taking up a load that is far from light.",
		"sets {g:his|her} jaw and does not step back.",
		"rolls {g:his|her} shoulders back as if shrugging off a heavy coat, and stays put.",
	},
	["battle.w12.grit.093"] = {
		"grinds {g:his|her} teeth once, slowly, and stops looking tired.",
		"lets the weariness drop from {g:his|her} face like a cloak set aside.",
	},
	["battle.w12.grit.094"] = {
		"straightens up slowly, every ache put aside for later.",
		"pushes off from a tired stance into a ready one.",
	},
	["battle.w12.grit.095"] = {
		"goes very still, and the stillness looks a lot like anger.",
		"says nothing at all; the set of {g:his|her} mouth says enough.",
	},
	["battle.w12.grit.096"] = {
		"digs in {g:his|her} heels and leans forward into whatever comes.",
		"lowers {g:his|her} head and goes in, stubborn as a mule.",
	},
	["battle.w12.grit.097"] = {
		"clenches and unclenches {g:his|her} fists, once, twice, and keeps them closed.",
		"closes both hands into fists and holds them there, unhurried.",
	},
	["battle.w12.grit.098"] = {
		"lets out a tired laugh and goes forward anyway.",
		"shakes {g:his|her} head at the timing, then lifts it to meet the fight.",
	},
	["battle.w12.grit.099"] = {
		"rubs a sore shoulder, then forgets it entirely.",
		"works a stiff shoulder loose and squares up.",
	},
	["battle.w12.grit.100"] = {
		"fixes the foe with a flat, unblinking stare and gives not an inch.",
		"meets the foe's approach with a look that has nothing left to bargain with.",
	},
	["battle.w12.grit.101"] = {
		"tucks the chin down and leans in, like someone shouldering a stuck door.",
		"drops a shoulder forward as if there were a jammed door to force.",
	},
	["battle.w12.grit.102"] = {
		"mutters something short and unrepeatable, then gets on with it.",
		"growls low, a sound with no give in it.",
	},
	["battle.w12.grit.103"] = {
		"stands a little straighter than tiredness should allow.",
		"pulls {g:himself|herself} upright by sheer refusal.",
	},
	["battle.w12.grit.104"] = {
		"turns to face the trouble squarely, with no hurry and no doubt.",
		"faces the trouble full on, as if stepping aside had never been invented.",
	},
	["battle.w12.grit.105"] = {
		"nods once, grimly, like someone accepting a chore.",
		"accepts the fight with a short nod, the way one takes on a heavy errand.",
	},
	["battle.w12.grit.106"] = {
		"narrows {g:his|her} eyes to slits; the face around them is very calm.",
		"takes on a hard, patient look that promises nothing kind.",
	},
	["battle.w12.grit.107"] = {
		"sets the tiredness down like a pack left by a door, and steps up.",
		"puts weariness aside the way one sheds a load, and comes forward.",
	},
	["battle.w12.measure.001"] = {
		"Slow is fine. Rushed is how people end up on the ground.",
		"Don't hurry the first move. Hurry is where mistakes are born.",
	},
	["battle.w12.measure.002"] = {
		"Check the ground once. Roots, stones, a slope. Then trust it.",
		"Soft spots, loose spots. Find them now, not halfway through.",
		"Know what's underfoot before it decides to have an opinion.",
	},
	["battle.w12.measure.003"] = {
		"Everything has a rhythm. Find this one's before it finds mine.",
		"There's a beat under every fight. Listen for it first.",
	},
	["battle.w12.measure.004"] = {
		"Patience is a move too. Possibly the best one I've got.",
		"Waiting counts. Waiting well counts double.",
	},
	["battle.w12.measure.005"] = {
		"Quiet in the head. The noise can stay outside.",
		"Let everything go quiet but this.",
		"Turn the rest of the world down. Just this, now.",
	},
	["battle.w12.measure.006"] = {
		"How many? Where? Which one moves first? Then go.",
		"Count, place, choose. In that order.",
	},
	["battle.w12.measure.007"] = {
		"Nothing stands perfectly balanced. Find which way this one leans.",
		"Everything favors one side. Find which.",
		"There's a lean somewhere. There always is.",
	},
	["battle.w12.measure.008"] = {
		"Not the first move. The second one tells the truth.",
		"Ignore the opener. It's the follow-up that shows what's real.",
		"Openers are for show. Wait for whatever comes after.",
	},
	["battle.w12.measure.009"] = {
		"Don't spend everything at the start. Keep a reserve.",
		"Hold a little back. Fights run longer than they look.",
	},
	["battle.w12.measure.010"] = {
		"Steady hands. Nothing else needs to be steady.",
		"Hands quiet. The rest can shake if it likes.",
		"Keep the hands calm. Everything else may do as it pleases.",
	},
	["battle.w12.measure.011"] = {
		"What's behind me? Good. Now forget it.",
		"One glance back. Clear. Eyes front.",
	},
	["battle.w12.measure.012"] = {
		"Not every opening is real. Some are left there on purpose.",
		"An open door can be a trap. Look at the hinges first.",
	},
	["battle.w12.measure.013"] = {
		"I don't need to win the first moment. Only not to lose it.",
		"The first moment isn't for winning. It's for not losing.",
	},
	["battle.w12.measure.014"] = {
		"Feet under me. Eyes open. Everything else is detail.",
		"Footing and eyes. The rest can wait its turn.",
	},
	["battle.w12.measure.015"] = {
		"The ones who rush are easy to read. Don't be easy to read.",
		"Hurry writes your next move all over you. Don't hand it out.",
	},
	["battle.w12.measure.016"] = {
		"Every part of me says now. Not yet. Not quite yet.",
		"Not yet. Not yet. ...There.",
	},
	["battle.w12.measure.017"] = {
		"Small steps keep the balance. Big ones are for later.",
		"Little steps for now. Long strides when it's decided.",
	},
	["battle.w12.measure.018"] = {
		"Whatever it does twice, it'll do a third time. Wait for the third.",
		"Habits show by the second try. Wait for them to show.",
	},
	["battle.w12.measure.019"] = {
		"Angry is fast. Calm is faster, in the end.",
		"Anger gets there first. Calm gets there right.",
		"Temper runs. Calm arrives.",
	},
	["battle.w12.measure.020"] = {
		"Unclench the jaw. Nobody thinks well through gritted teeth.",
		"Jaw soft. Shoulders soft. Head sharp.",
	},
	["battle.w12.measure.021"] = {
		"One job right now: see clearly. The rest comes after.",
		"Seeing comes first. Everything else waits in line.",
	},
	["battle.w12.measure.022"] = {
		"Every fight has a shape. Find the edges of this one.",
		"Find the edges first. The middle sorts itself out.",
	},
	["battle.w12.measure.023"] = {
		"Ground first. Whoever owns the footing owns the next moment.",
		"Good footing is half an answer. Find it.",
		"Get the ground right and the rest has somewhere to stand.",
	},
	["battle.w12.measure.024"] = {
		"Whatever happens, don't get boxed in. Keep a way to move.",
		"Leave myself room. Always leave myself room.",
		"Room to move is worth more than any clever idea.",
	},
	["battle.w12.measure.025"] = {
		"Count to three. Not out loud. Just enough to settle.",
		"One, two, three. There. Settled.",
		"A short count in the head, and the shaking finds somewhere else to be.",
	},
	["battle.w12.measure.026"] = {
		"Don't watch the noise. Watch what's quiet.",
		"The loud part is rarely the dangerous part.",
		"Whatever's making the racket, the trouble is usually elsewhere.",
	},
	["battle.w12.measure.027"] = {
		"Wider. See the whole field, not just the nearest thing.",
		"Don't stare. Staring narrows. Look wide.",
	},
	["battle.w12.measure.028"] = {
		"The plan lasts until it moves. Fine. Then I'll have the next one.",
		"Plan just far enough to be wrong usefully.",
		"Every plan meets the first move and loses. Make a cheap one.",
	},
	["battle.w12.measure.029"] = {
		"Learn something. However it goes, learn something from this.",
		"Pay attention. This one's a lesson, whatever else it is.",
	},
	["battle.w12.measure.030"] = {
		"Too eager. Pull it back a notch. There.",
		"Easy. Keen gets careless. Ease it off.",
	},
	["battle.w12.measure.031"] = {
		"Mind where it wants me to go. Then go somewhere else.",
		"If it wants me there, I want to be anywhere else.",
	},
	["battle.w12.measure.032"] = {
		"I'm not here to be brave. I'm here to be right.",
		"Courage is cheap. Being right costs more and pays better.",
	},
	["battle.w12.measure.033"] = {
		"The fight's already telling me things. Hush, and listen.",
		"Every fight starts with a little confession. Listen for it.",
	},
	["battle.w12.measure.034"] = {
		"Something always gives itself away. A favored side, a habit, a hurry.",
		"There's always a tell. Find it before it finds a way to hide.",
	},
	["battle.w12.measure.035"] = {
		"I don't have to be fast. I have to be on time.",
		"Fast is overrated. On time is everything.",
		"Speed is a boast. Timing is a craft.",
	},
	["battle.w12.measure.036"] = {
		"Let it show me its best. Then I'll know where the ceiling is.",
		"Its best effort first. Then I'll know how high the ceiling goes.",
	},
	["battle.w12.measure.037"] = {
		"Easy to start. Hard to stop well. Think about the ending now.",
		"Begin with the end in mind. Where do I want to be when it stops?",
	},
	["battle.w12.measure.038"] = {
		"Two things to know: how it moves, and how I'll answer. Nothing else.",
		"How it moves. How I'll answer. That's the whole list.",
	},
	["battle.w12.measure.039"] = {
		"Corner of the eye on everything else. There's always an everything else.",
		"Mind the sides. What's in front is rarely all there is.",
		"Front, yes. Sides too. Surprises like sides.",
	},
	["battle.w12.measure.040"] = {
		"I can be stubborn later. Right now I have to be clever.",
		"Clever first. Stubborn is for when clever runs out.",
	},
	["battle.w12.measure.041"] = {
		"The first thing it does is the thing it trusts most. Note it.",
		"Whatever it opens with, it trusts. Remember that.",
	},
	["battle.w12.measure.042"] = {
		"Set the pace, or have it set for me. I'd rather set it.",
		"Whoever sets the pace sets most of the rest.",
	},
	["battle.w12.measure.043"] = {
		"Quiet hands, quiet feet, loud eyes.",
		"Hands still, feet still, eyes busy.",
	},
	["battle.w12.measure.044"] = {
		"Don't flinch at the first sound. Sounds lie.",
		"The first noise of a fight means nothing. Don't jump at it.",
	},
	["battle.w12.measure.045"] = {
		"Think of the second move now, while the first is still cheap.",
		"Two moves ahead. The first is already late.",
	},
	["battle.w12.measure.046"] = {
		"Fear wants a fast answer. The fight wants a right one.",
		"Fright rushes. I don't have to rush with it.",
	},
	["battle.w12.measure.047"] = {
		"Whatever this costs, let it cost what I chose, not what I missed.",
		"Pay for what I decide, not for what I failed to see.",
	},
	["battle.w12.measure.048"] = {
		"Loose, loose. A tight body moves late.",
		"Stiff is slow. Shake it off and stay soft.",
	},
	["battle.w12.measure.049"] = {
		"Go on. Show me how you move.",
		"Let's see how you move first.",
		"Move. I want to watch you do it.",
	},
	["battle.w12.measure.050"] = {
		"No rush. I've got all the time this takes.",
		"Take your time. I'm taking mine.",
		"I'm not in a hurry. Are you?",
	},
	["battle.w12.measure.051"] = {
		"Steady. Steady... there.",
		"Easy. Easy now. Now.",
		"Hold it. Hold it... yes.",
	},
	["battle.w12.measure.052"] = {
		"You first. I want to see what you lead with.",
		"Go ahead and open. I'd like to know what you rely on.",
	},
	["battle.w12.measure.053"] = {
		"Mind the ground. I already have.",
		"Careful where you put yourself. I chose my spot.",
	},
	["battle.w12.measure.054"] = {
		"All right. I've taken your measure. Let's begin.",
		"Measure taken. Time to start.",
	},
	["battle.w12.measure.055"] = {
		"Patience costs me nothing. How about you?",
		"I can wait. Can you?",
		"Waiting's free. Let's see who can afford it.",
	},
	["battle.w12.measure.056"] = {
		"Hold. Hold it... hold.",
		"Wait for it. Wait for it.",
	},
	["battle.w12.measure.057"] = {
		"Calm down. Not you, me. You do whatever you like.",
		"Easy, easy. I was talking to myself, not you.",
	},
	["battle.w12.measure.058"] = {
		"Good ground here. I'll keep it.",
		"This spot will do. I'm keeping it.",
		"Decent footing. Mine now.",
	},
	["battle.w12.measure.059"] = {
		"Slow and careful. Let's see what you know.",
		"A careful start. I'd like to learn you before I trust anything.",
	},
	["battle.w12.measure.060"] = {
		"I see you. Every move of you.",
		"Oh, I see you. Down to the smallest twitch.",
	},
	["battle.w12.measure.061"] = {
		"One look, then the work.",
		"A look first. Then the work.",
		"Looking done. Working now.",
	},
	["battle.w12.measure.062"] = {
		"I'll take it as it comes. All of it, in order.",
		"One thing after the next. I can keep things in order.",
	},
	["battle.w12.measure.063"] = {
		"Fine. I know where I'm standing. Do you?",
		"I know my ground. Do you know yours?",
	},
	["battle.w12.measure.064"] = {
		"Hm. Let me look at you a moment.",
		"Hold still a moment. I'm looking.",
	},
	["battle.w12.measure.065"] = {
		"Ready when you are. Possibly before.",
		"Whenever you like. I'm set.",
	},
	["battle.w12.measure.066"] = {
		"I don't make the first move. I make the right one.",
		"First move's yours. The right one's mine.",
	},
	["battle.w12.measure.067"] = {
		"Careful. Careful is how people get to be old.",
		"Careful's not cowardly. Careful's how you live long enough to gray.",
	},
	["battle.w12.measure.068"] = {
		"Easy does it. Nothing's decided in the first moment.",
		"Slow down. Nothing gets settled in the first instant.",
		"No need to win the opening. It's only the opening.",
	},
	["battle.w12.measure.069"] = {
		"You've got a pattern. Everybody does. I'll find it.",
		"There's a pattern in there. Give me a moment.",
		"Patterns everywhere. Yours won't take long.",
	},
	["battle.w12.measure.070"] = {
		"Watch the edges, I'll watch the middle. Call what you see.",
		"Eyes everywhere. Call out what moves.",
	},
	["battle.w12.measure.071"] = {
		"Nobody rush in. Let it show us what it does.",
		"Hold back a moment. We learn it first, then we move.",
	},
	["battle.w12.measure.072"] = {
		"Spread out a little. One target is an easy target.",
		"Don't bunch up. Bunched up is easy.",
	},
	["battle.w12.measure.073"] = {
		"That's a big one. Learn its rhythm before you test it.",
		"Bigger than most. Watch a while before you trust a move.",
	},
	["battle.w12.measure.074"] = {
		"Stronger than me. Fine. Strength still has to land.",
		"You've got the strength. Let's see if you've got the timing.",
	},
	["battle.w12.measure.075"] = {
		"The odds say I'm ahead. Not a reason to get sloppy.",
		"Weaker or not, I'm not cutting corners.",
	},
	["battle.w12.measure.076"] = {
		"{target}. I'm watching how you carry yourself.",
		"I see how you carry yourself. That's plenty to go on.",
	},
	["battle.w12.measure.077"] = {
		"First I learn you. Then the rest.",
		"Learning first. Doing after.",
	},
	["battle.w12.measure.078"] = {
		"Fine. My ground, my pace. Your move.",
		"My pace, my ground. Go on.",
		"I've picked where and how fast. You pick the when.",
	},
	["battle.w12.measure.079"] = {
		"Not so fast. Let's both have a proper look first.",
		"Easy there. No sense rushing this.",
	},
	["battle.w12.measure.080"] = {
		"You're telling me plenty already. Keep it up.",
		"Every move you make tells me something. Thanks.",
	},
	["battle.w12.measure.081"] = {
		"Don't mind me. I'm just counting.",
		"Ignore me. Doing a little arithmetic.",
	},
	["battle.w12.measure.082"] = {
		"Hm. Interesting. Very well.",
		"Interesting. All right, then.",
	},
	["battle.w12.measure.083"] = {
		"Firm ground, firm hands.",
		"Ground's holding. So am I.",
	},
	["battle.w12.measure.084"] = {
		"Whatever you've got, show me. I'll sort it into piles.",
		"Bring it all out. I'll sort it as it comes.",
	},
	["battle.w12.measure.085"] = {
		"Ground beneath, eyes ahead, patience between.",
		"Earth below me, the foe before me, and time enough for both.",
	},
	["battle.w12.measure.086"] = {
		"Careful now. Nobody gets a second first move.",
		"There's only one beginning. Let's not waste it.",
	},
	["battle.w12.measure.087"] = {
		"Quiet, now. I need to hear myself think.",
		"Hush. Thinking.",
	},
	["battle.w12.measure.088"] = {
		"scuffs the ground once with a foot, testing what it will hold.",
		"tests the ground with one foot before trusting it with both.",
	},
	["battle.w12.measure.089"] = {
		"glances back once, then not again.",
		"takes a single look behind, and after that only ahead.",
		"checks what lies behind with one quick turn of the head, and is done with it.",
	},
	["battle.w12.measure.090"] = {
		"goes perfectly still, everything gathered into waiting.",
		"becomes very still and very attentive, like a held note.",
	},
	["battle.w12.measure.091"] = {
		"shakes out {g:his|her} hands, then lets them hang loose and ready.",
		"gives both hands a quick shake and lets them settle.",
		"opens and closes {g:his|her} hands a few times, then leaves them easy.",
	},
	["battle.w12.measure.092"] = {
		"tilts {g:his|her} head a fraction, watching how the foe moves.",
		"cocks {g:his|her} head and follows the foe's first motion with care.",
	},
	["battle.w12.measure.093"] = {
		"lowers {g:his|her} chin and turns a little sideways, offering less.",
		"turns half aside to the foe, chin down, giving away as little as possible.",
	},
	["battle.w12.measure.094"] = {
		"edges along a step or two, eyes down for a moment, choosing where to stand.",
		"picks a spot with a quick downward glance and claims it.",
	},
	["battle.w12.measure.095"] = {
		"moves {g:his|her} lips silently, counting something only {g:he|she} knows.",
		"mouths a silent count, eyes on the foe.",
	},
	["battle.w12.measure.096"] = {
		"waits without hurry for the foe to commit to something.",
		"lets the foe be the first to commit, and watches closely.",
		"holds back, unhurried, until the foe shows what it means to do.",
	},
	["battle.w12.measure.097"] = {
		"unclenches {g:his|her} jaw with an effort and lets {g:his|her} shoulders drop.",
		"lets {g:his|her} shoulders fall an inch, and the stiffness goes with them.",
	},
	["battle.w12.measure.098"] = {
		"looks the foe over from top to bottom, like someone pricing a horse.",
		"gives the foe a long, appraising look, the way a buyer looks at a mule.",
	},
	["battle.w12.measure.099"] = {
		"half-closes {g:his|her} eyes for an instant, then opens them, clear.",
		"blinks once, slowly, and the eyes that open again are calm.",
	},
	["battle.w12.measure.100"] = {
		"tightens a loose strap with one quick tug, without looking down.",
		"gives a strap a final tug, making sure nothing hangs loose.",
		"checks a buckle by touch alone, never looking away.",
	},
	["battle.w12.measure.101"] = {
		"takes in the ground, the foe and the space between in one long look.",
		"measures the space between {g:himself|herself} and the foe with a single look.",
	},
	["battle.w12.measure.102"] = {
		"bends {g:his|her} knees slightly, ready to go any way the fight goes.",
		"sinks an inch at the knees, ready to move in any direction.",
	},
	["battle.w12.measure.103"] = {
		"lets the first moment pass without moving, reading it.",
		"lets a moment go by untouched, studying the foe.",
	},
	["battle.w12.measure.104"] = {
		"rubs {g:his|her} hands together once, briskly, and gets to work.",
		"claps the dust from {g:his|her} hands and turns to face the foe.",
	},
	["battle.w12.measure.105"] = {
		"follows the foe with {g:his|her} eyes alone, the rest of {g:him|her} perfectly still.",
		"tracks the foe with nothing but {g:his|her} gaze, every other part at rest.",
	},
	["battle.w12.measure.106"] = {
		"frowns, not in anger, but the way one frowns at a sum.",
		"wrinkles {g:his|her} brow, working out the foe like a sum.",
		"purses {g:his|her} lips, as over a ledger that refuses to balance.",
	},
	["battle.w12.measure.107"] = {
		"nods slowly to {g:himself|herself}, as if something had been confirmed.",
		"gives a small nod, to no one in particular, and moves into position.",
	},
	["battle.w12.measure.108"] = {
		"glances left, glances right, and only then looks at the foe.",
		"checks both sides before giving the foe {g:his|her} full attention.",
	},
	["battle.w12.measure.109"] = {
		"gathers {g:himself|herself} without hurry, like a word chosen with care.",
		"takes a moment to gather {g:himself|herself}, in no visible haste.",
	},
	["battle.w12.measure.110"] = {
		"keeps {g:his|her} hands low and loose, giving nothing away.",
		"lets {g:his|her} hands rest low and quiet, betraying nothing.",
	},
	["battle.w12.measure.111"] = {
		"looks once past the foe, at whatever lies beyond, then back.",
		"spares a look for what lies beyond the foe, then returns to it.",
	},
	["battle.w12.measure.112"] = {
		"rocks once on {g:his|her} feet, testing the balance.",
		"sways a little, forward and back, feeling for the point of balance.",
		"finds {g:his|her} center with a small shift and holds it there.",
	},
	["battle.w12.measure.113"] = {
		"watches hard, catching each small movement before it finishes.",
		"squints, catching every small shift the foe makes.",
	},
	["battle.w12.measure.114"] = {
		"makes no first move, and makes no secret of it.",
		"stays where {g:he|she} is and lets the opening belong to the foe.",
	},
	["battle.w12.measure.115"] = {
		"sets {g:his|her} shoulders square and {g:his|her} gaze level.",
		"squares {g:his|her} shoulders and levels a steady gaze at the foe.",
	},
	["battle.w12.wit.001"] = {
		"Pardon the mess. I wasn't expecting company.",
		"Excuse the state of me. Nobody said there'd be visitors.",
		"Visitors? And nobody tidied up.",
	},
	["battle.w12.wit.002"] = {
		"Do you have an appointment? I don't see you in my book.",
		"Appointments only, I'm afraid. Nobody told you?",
	},
	["battle.w12.wit.003"] = {
		"Was it something I said? I haven't said anything yet.",
		"Did I say something wrong? I'm fairly sure I said nothing.",
	},
	["battle.w12.wit.004"] = {
		"I said 'what else could go wrong' out loud. That one's on me.",
		"Never wonder aloud whether things could get worse. Lesson taken.",
		"Somebody asked what could possibly happen. Me. I asked.",
	},
	["battle.w12.wit.005"] = {
		"rolls {g:his|her} eyes so thoroughly it nearly counts as limbering up.",
		"rolls {g:his|her} eyes at the interruption, then gets on with it.",
	},
	["battle.w12.wit.006"] = {
		"Do I owe you money? I feel I'd remember that.",
		"If this is about a debt, I'd like to see the paperwork first.",
		"Whatever I owe you, there's been a mistake somewhere.",
	},
	["battle.w12.wit.007"] = {
		"My luck took one look at this and left early.",
		"Luck's gone off for a walk. Never around when the bill arrives.",
	},
	["battle.w12.wit.008"] = {
		"Ah. A volunteer.",
		"Look at that, a volunteer. Nobody asked for one.",
		"Stepping forward so keenly. Touching, really.",
	},
	["battle.w12.wit.009"] = {
		"I was in the middle of a very important nothing.",
		"Busy doing nothing, and doing it beautifully. Ruined.",
		"Doing nothing was going so well, too.",
	},
	["battle.w12.wit.010"] = {
		"I'd say it's a pleasure. It isn't, but I'd say it.",
		"Delighted, I'm sure. Not really, but manners are manners.",
	},
	["battle.w12.wit.011"] = {
		"Every fight starts with a small 'oh no' in my head. Tradition.",
		"There it is, the little inner 'oh no'. Never misses.",
	},
	["battle.w12.wit.012"] = {
		"Robbery, feud or hobby? Asking for my records.",
		"Grudge, hunger or plain boredom? I like to keep track.",
		"Is this business or pleasure for you?",
	},
	["battle.w12.wit.013"] = {
		"holds up one finger, as if to raise an objection, then thinks better of it.",
		"opens {g:his|her} mouth to complain, shuts it, and squares up instead.",
	},
	["battle.w12.wit.014"] = {
		"Hang on, I wasn't ready. ...Fine. Ready. Ish.",
		"Wait, wait, I hadn't... no, never mind. Go on.",
	},
	["battle.w12.wit.015"] = {
		"Calm. Perfectly calm. The calmest anyone has ever been about this.",
		"All fine. Completely, suspiciously fine.",
	},
	["battle.w12.wit.016"] = {
		"I accept your invitation. With reservations. Many.",
		"Invitation accepted, under protest. Write that down.",
	},
	["battle.w12.wit.017"] = {
		"Brain, something useful, please. Brain? ...Improvising, then.",
		"Thoughts, line up. Thoughts? Gone. Instinct it is.",
	},
	["battle.w12.wit.018"] = {
		"There goes my good mood. It had a short life.",
		"So much for the good mood. I barely knew it.",
	},
	["battle.w12.wit.019"] = {
		"Small mercies: at least it isn't stairs.",
		"Could be worse. Could be a ladder.",
		"At least it isn't a locked door. Those always beat me.",
	},
	["battle.w12.wit.020"] = {
		"Introductions later. Grievances first.",
		"Names can wait. I've a list of complaints to get through.",
	},
	["battle.w12.wit.021"] = {
		"Now? Truly? Of all the moments there are?",
		"Every moment in the world to choose from, and it's this one.",
		"This minute? This exact one?",
	},
	["battle.w12.wit.022"] = {
		"gives the foe the look usually saved for a pebble in a boot.",
		"regards the trouble as one regards a stone in a shoe: with tired contempt.",
	},
	["battle.w12.wit.023"] = {
		"Is it too late to pretend I didn't see you?",
		"Could I just not have noticed you? Too late. Noticed.",
	},
	["battle.w12.wit.024"] = {
		"Whoever keeps count of my bad days, add one.",
		"The tally of my bad days just gained a line.",
	},
	["battle.w12.wit.025"] = {
		"My offer: you leave, I forget this happened. Refused? Noted.",
		"Generous terms: turn around now and I'll hold no grudge.",
		"Walk away and I'll tell everyone you won. Deal?",
	},
	["battle.w12.wit.026"] = {
		"I'll give you three coppers to go away. Four, if you hurry.",
		"Three coppers says you leave right now. No takers?",
	},
	["battle.w12.wit.027"] = {
		"Note to self: stop looking so approachable.",
		"I must have a friendly face. I'll work on that.",
	},
	["battle.w12.wit.028"] = {
		"Ever thought of a quieter hobby? Embroidery, say?",
		"Have you considered other interests? Pottery is very calming.",
	},
	["battle.w12.wit.029"] = {
		"You've got timing. Terrible timing, but timing.",
		"Impeccable timing. Impeccably awful.",
		"Your sense of timing is a gift. A cursed one.",
	},
	["battle.w12.wit.030"] = {
		"In the retelling I'll be taller and a great deal calmer.",
		"I'll tell this braver than it was. Might as well start now.",
	},
	["battle.w12.wit.031"] = {
		"I hope you're in shape for this. I'm not.",
		"Did you prepare for this? Because I didn't.",
	},
	["battle.w12.wit.032"] = {
		"Ow. In advance. Just so it's said.",
		"Getting the complaining done early: ow.",
	},
	["battle.w12.wit.033"] = {
		"Look confident. Look confident. Look... well, look something.",
		"Face, do something brave. That's... near enough.",
	},
	["battle.w12.wit.034"] = {
		"Don't mind my face. It's my thinking face. Also my worried one.",
		"This expression? Concentration. Mostly.",
	},
	["battle.w12.wit.035"] = {
		"Not in the mood. Evidently that changes nothing.",
		"Nobody asked if I was in the mood. Nobody ever does.",
		"Mood: absent. Fight: present. Typical.",
	},
	["battle.w12.wit.036"] = {
		"Every decent story starts with somebody's bad idea.",
		"Good stories begin with a poor decision. This one's off to a strong start.",
	},
	["battle.w12.wit.037"] = {
		"I'll get to you. There's a list, but I'll get to you.",
		"Join the list of this week's problems. Near the bottom, sorry.",
		"You're on the list now. It's not a good list.",
	},
	["battle.w12.wit.038"] = {
		"mutters a short, sincere complaint to nobody in particular.",
		"grumbles something about timing that nobody is meant to hear.",
	},
	["battle.w12.wit.039"] = {
		"Shall I yell first, or would you like to?",
		"Who screams first? I'm happy to go second.",
	},
	["battle.w12.wit.040"] = {
		"If I get out of this, I'm buying myself something nice.",
		"Live through this, then a treat. That's the deal.",
	},
	["battle.w12.wit.041"] = {
		"No warning at all? Not even a cough?",
		"A little notice would have been nice. A rustle, anything.",
	},
	["battle.w12.wit.042"] = {
		"Fine, have your fight. I'll be sulking through all of it.",
		"Very well. But know that I'm sulking.",
	},
	["battle.w12.wit.043"] = {
		"Why is it always me? Is there a sign on my back?",
		"There's a sign on my back, isn't there. 'Trouble, inquire here.'",
	},
	["battle.w12.wit.044"] = {
		"Civil, if possible. Brief, if not.",
		"A little courtesy would be nice. Brevity, nicer still.",
	},
	["battle.w12.wit.045"] = {
		"bows, very slightly and very sarcastically.",
		"offers the foe a small, crooked bow that means nothing kind.",
		"sketches a mocking little bow.",
	},
	["battle.w12.wit.046"] = {
		"Applause for the entrance. Very dramatic.",
		"Lovely entrance. A bit much, but lovely.",
	},
	["battle.w12.wit.047"] = {
		"Wonderful. The day was missing a disaster.",
		"Good. For a moment I feared things might go smoothly.",
		"Splendid. Things were going far too well.",
	},
	["battle.w12.wit.048"] = {
		"Let me guess: you've had a long day too.",
		"Rough day? Same here. Small world.",
	},
	["battle.w12.wit.049"] = {
		"If this is a misunderstanding, now's the moment.",
		"Any chance this is a mix-up? Speak now.",
	},
	["battle.w12.wit.050"] = {
		"I could run. I won't. But I'm keeping the thought in my pocket.",
		"Running is still an option. A shameful one. Filed for later.",
	},
	["battle.w12.wit.051"] = {
		"If you're selling something, I'm not buying.",
		"No thank you, I don't want any. Whatever it is.",
	},
	["battle.w12.wit.052"] = {
		"I'll need that interruption back, with interest.",
		"You owe me a quiet moment. I'm collecting it now.",
		"That was my peace and quiet you just broke.",
	},
	["battle.w12.wit.053"] = {
		"Whatever this is about, it isn't worth it. But fine.",
		"I doubt this is worth it for anyone. Still. Here it is.",
	},
	["battle.w12.wit.054"] = {
		"Don't make a face. ...Made a face.",
		"Keep a straight face. Straight. Oh, never mind.",
	},
	["battle.w12.wit.055"] = {
		"One idea in my head, and it's a bad one. Using it.",
		"My only plan is terrible. Excellent, at least there's a plan.",
	},
	["battle.w12.wit.056"] = {
		"Don't take it personally. Or do. Your choice.",
		"Personal, impersonal, take it however you like.",
	},
	["battle.w12.wit.057"] = {
		"I was promised a quiet walk. By me. I lied.",
		"Who said this would be a peaceful walk? Oh, right. Me.",
		"A gentle outing, I told myself. Gullible.",
	},
	["battle.w12.wit.058"] = {
		"Careful. I get bitey when interrupted. Figuratively. Mostly.",
		"Interrupt me and I get snappish. Consider yourself told.",
	},
	["battle.w12.wit.059"] = {
		"This is the part where you leave. You missed your cue.",
		"Here's where you turn and go. No? Not good with cues.",
	},
	["battle.w12.wit.060"] = {
		"Hold that pose. Actually, don't. It's alarming.",
		"Interesting stance. Unsettling, but interesting.",
	},
	["battle.w12.wit.061"] = {
		"Someone, somewhere, finds me hilarious.",
		"Whoever arranges my days has a cruel sense of humor.",
	},
	["battle.w12.wit.062"] = {
		"Lucky me. Lucky, lucky me.",
		"What luck. What tremendous luck.",
		"Fortune smiles on me. With all its teeth.",
	},
	["battle.w12.wit.063"] = {
		"Snack first, fight after, I said. Nobody listens.",
		"I had a snack halfway to my mouth. Halfway!",
	},
	["battle.w12.wit.064"] = {
		"Of course. Of course this happens now.",
		"Naturally. Naturally it's now.",
		"Obviously now. When else?",
	},
	["battle.w12.wit.065"] = {
		"pats {g:his|her} pockets as if looking for patience, and finds very little.",
		"checks a pocket for patience, comes up nearly empty, and makes do.",
	},
	["battle.w12.wit.066"] = {
		"shakes {g:his|her} head slowly, the picture of someone who had hoped for better.",
		"gives a slow shake of the head, like an innkeeper watching mud tracked across a clean floor.",
		"wears the long-suffering look of someone interrupted far too often.",
	},
	["battle.w12.wit.067"] = {
		"wrinkles {g:his|her} nose at the interruption, then gets down to business.",
		"makes the face of someone handed an unpaid bill, and turns to settle it.",
	},
	["battle.w12.wit.068"] = {
		"mouths a silent, rather rude remark at the foe.",
		"says something very impolite without making a sound.",
	},
	["battle.w12.wit.069"] = {
		"Yes, yes, I see you. Hard not to.",
		"I see you. No need to make such a fuss about it.",
	},
	["battle.w12.wit.070"] = {
		"Could you have picked a worse moment? Honestly, try.",
		"If a worse moment existed, you'd have found it.",
	},
	["battle.w12.wit.071"] = {
		"Stop narrating and do something.",
		"Less commentary, more doing. Says the commentary.",
	},
	["battle.w12.wit.072"] = {
		"Can this skip straight to the ending? I'd pay.",
		"Is there a short version of this? I'll take the short version.",
	},
	["battle.w12.wit.073"] = {
		"I'd like a word with whoever's in charge of you.",
		"Who sent you? I'd like to lodge a complaint.",
	},
	["battle.w12.wit.074"] = {
		"Let the record show I was minding my own business.",
		"For the record: I was here first, and quietly.",
	},
	["battle.w12.wit.075"] = {
		"Hear ye: I object. That is all.",
		"Let it be known that I object, loudly and for nothing.",
		"Formal objection lodged. By me. With me.",
	},
	["battle.w12.wit.076"] = {
		"Ah. A complication.",
		"Hm. A setback. A lively one.",
		"Mm. An obstacle. With opinions.",
	},
	["battle.w12.wit.077"] = {
		"This could have been a letter.",
		"Honestly, a stern note would have settled this.",
	},
	["battle.w12.wit.078"] = {
		"Must everything be a fight? Apparently, yes.",
		"Is there nothing in this world that just says hello?",
	},
	["battle.w12.wit.079"] = {
		"Should never have got up. Noted for next time.",
		"Getting up was the mistake. Everything since has followed from it.",
	},
	["battle.w12.wit.080"] = {
		"I'd like a refund on this whole outing.",
		"Can I return this trip? It arrived damaged.",
	},
	["battle.w12.wit.081"] = {
		"Heroic music would help. Heroic anything would help.",
		"This would go better with drums. Most things would.",
	},
	["battle.w12.wit.082"] = {
		"Patience is a virtue, they tell me. Mine just ran out.",
		"I had patience earlier. Spent it all on something smaller.",
	},
	["battle.w12.wit.083"] = {
		"Ah, it's you. Whoever you are.",
		"There you are. No idea who you are, but there you are.",
	},
	["battle.w12.wit.084"] = {
		"Courage, report to the front. Courage? Anyone?",
		"Bravery, front and center, please. ...It'll catch up.",
	},
	["battle.w12.wit.085"] = {
		"Interesting decision. I'd have made a different one.",
		"Not the choice I'd have made. But it's yours.",
	},
	["battle.w12.wit.086"] = {
		"After you. No, really, I insist.",
		"You first. I'd hate to be rude.",
		"Age before beauty. Go on, then.",
	},
	["battle.w12.wit.087"] = {
		"So much room in the world, and you chose right here.",
		"The world's a big place. Not big enough to miss you, apparently.",
		"Endless roads out there, and you picked mine.",
	},
	["battle.w12.wit.088"] = {
		"No. No, thank you. ...Oh, it wasn't a question.",
		"I decline. Politely. What, declining isn't allowed?",
	},
	["battle.w12.wit.089"] = {
		"I'll complain about this for days. Something to look forward to.",
		"Days of grumbling ahead. At least I'll have material.",
	},
	["battle.w12.wit.090"] = {
		"No panicking. That goes double for me.",
		"Steady. Nobody panic. Especially not me.",
	},
	["battle.w12.wit.091"] = {
		"You've been practicing that look, haven't you? It's good.",
		"Very menacing. Full marks for menace.",
	},
	["battle.w12.wit.092"] = {
		"Things wanting to hurt me: rising. Things offering me tea: none.",
		"Plenty of things want a fight with me. Nothing ever wants a chat.",
	},
	["battle.w12.wit.093"] = {
		"Too tired for this. And yet, here it is.",
		"Tired enough to sleep standing. Apparently not allowed.",
	},
	["battle.w12.wit.094"] = {
		"My feet filed a complaint. Overruled.",
		"Legs, I know. I know. Just this one.",
	},
	["battle.w12.wit.095"] = {
		"I'm braver than I look. I'd have to be.",
		"Looks can deceive. Mine certainly hope so.",
	},
	["battle.w12.wit.096"] = {
		"Ah, the welcome committee. Where's the cake?",
		"A welcome party. How thoughtful. No cake, though.",
		"A reception, just for me? You shouldn't have. Truly.",
	},
	["battle.w12.wit.097"] = {
		"I asked for something to happen. I should have been specific.",
		"Wished for a bit of excitement. Must word my wishes better.",
	},
	["battle.w12.wit.098"] = {
		"Think of a clever line. Nothing? Straight to business, then.",
		"Witty remark, witty remark... gone. Never mind.",
	},
	["battle.w12.wit.099"] = {
		"Give it time. People grow fond of me. Eventually. Some.",
		"I'm told I improve on acquaintance. Slowly.",
	},
	["battle.w12.wit.100"] = {
		"cracks {g:his|her} knuckles with a flourish that is mostly for show.",
		"cracks {g:his|her} knuckles, winces, and plainly regrets it.",
	},
	["battle.w12.wit.101"] = {
		"brushes a speck of dust from {g:his|her} sleeve, as if the fight should at least find {g:him|her} tidy.",
		"straightens a crooked strap with great care before looking up.",
	},
	["battle.w12.wit.102"] = {
		"lets out a short, unamused laugh.",
		"gives a dry little laugh with no joy in it at all.",
	},
	["battle.w12.wit.103"] = {
		"glances about for someone to complain to, then gives up and faces the foe.",
		"looks around for a witness to this injustice, finds none worth the bother, and turns back.",
	},
	["battle.w12.wit.104"] = {
		"raises both eyebrows at the foe, a whole speech in one look.",
		"lifts a single eyebrow, unimpressed by the welcome.",
	},
	["battle.w12.wit.105"] = {
		"Ah, {target}. I'd been hoping to miss you.",
		"You. Of everyone I might have met, you.",
	},
	["battle.w12.wit.106"] = {
		"{target}. I'll remember the name, for the complaint.",
		"A name would help. For the complaint, you understand.",
	},
	["battle.w12.wit.107"] = {
		"{target}, is it? I'd pictured something different.",
		"Funny. I'd pictured you quite differently.",
	},
	["battle.w12.wit.108"] = {
		"Stronger than me? Show-off.",
		"Oh, you're the tough sort. Wonderful. Truly wonderful.",
	},
	["battle.w12.wit.109"] = {
		"Fine, you're stronger. I'm far more annoying. That counts too.",
		"Strength is yours. Pure stubborn nuisance is mine.",
	},
	["battle.w12.wit.110"] = {
		"Admirable spirit. Questionable arithmetic.",
		"Love the enthusiasm. Less sure about the sums.",
	},
	["battle.w12.wit.111"] = {
		"Have you thought this through? Asking for your sake.",
		"Take a moment, think it over. ...That was the moment.",
	},
	["battle.w12.wit.112"] = {
		"Oh. Oh, that's a lot of trouble in one bundle.",
		"That's... rather more than I ordered.",
	},
	["battle.w12.wit.113"] = {
		"You're the large version, aren't you. Of course you are.",
		"Of all the sizes on offer, the biggest. Naturally.",
	},
	["battle.w12.wit.114"] = {
		"Who poked it? Somebody poked it.",
		"Own up, then. Whose idea was this?",
	},
	["battle.w12.wit.115"] = {
		"Don't look at me. I didn't start it.",
		"For once it wasn't me. Probably.",
	},
	["victory.w13.pride.001"] = {
		"Ha! Let that be heard as far as it carries.",
		"Let that ring out as far as it cares to go.",
		"Ha! Let the echo go wherever it pleases.",
	},
	["victory.w13.pride.002"] = {
		"Send the next. I'm not finished being stubborn.",
		"Whatever follows can come. I have stubbornness to spare.",
		"Stubborn as ever, and proud of it. Whoever's next, take note.",
	},
	["victory.w13.pride.003"] = {
		"Fallen or fled, you have my salute.",
		"A salute to you, gone whichever way you went. You met me, and that is something.",
		"Whichever way you left, I salute the meeting.",
	},
	["victory.w13.pride.004"] = {
		"That's going in the memoirs. Big letters.",
		"Put that in the memoirs, with a nice drawing beside it.",
		"Memoirs, page whatever: a triumph. Underline it twice.",
	},
	["victory.w13.pride.005"] = {
		"Send what you like, world. I'll meet it at the door.",
		"Whatever the world has in mind, send it. I'll be the one answering.",
		"Your move, world. Mine was that.",
	},
	["victory.w13.pride.006"] = {
		"I swore I'd walk away from this. Sworn and kept.",
		"A promise to myself: walk out of it on my own feet. Kept.",
		"My word to myself held firm. So did I.",
	},
	["victory.w13.pride.007"] = {
		"My trade. I know it.",
		"That is my trade, and I know my trade.",
		"This is the work I'm for, and it shows.",
	},
	["victory.w13.pride.008"] = {
		"Applause would be welcome. From anyone. From anything.",
		"I'd clap for myself, but it looks bad. I'm clapping on the inside.",
		"No cheering? Fine. I'll cheer, quietly, in my own honor.",
	},
	["victory.w13.pride.009"] = {
		"Next turn's open. Who wants it?",
		"Who wants the turn after this one? I'm in the mood.",
		"There's room for one more. Step up.",
	},
	["victory.w13.pride.010"] = {
		"Say what you like of me. Not that I ran.",
		"They can call me many things. Coward won't be one of them.",
		"Talk all you want. My back never showed.",
	},
	["victory.w13.pride.011"] = {
		"Let the record show: I gave no ground.",
		"For the record, my feet went forward, never back.",
		"Mark it plainly: forward, every step.",
	},
	["victory.w13.pride.012"] = {
		"Oh, that felt good. That felt very good.",
		"Now that is a feeling worth bottling.",
		"Oh, I needed that. More than I knew.",
	},
	["victory.w13.pride.013"] = {
		"Here's to me. Somebody has to say it.",
		"A toast to me, with no cup to raise. The thought counts.",
		"To me, then. The only one here to raise a toast.",
	},
	["victory.w13.pride.014"] = {
		"I'm getting better at this. The next one will see.",
		"Sharper than I was. The next fight gets the sharper version.",
		"Better with each fight, and this one is the proof.",
	},
	["victory.w13.pride.015"] = {
		"That earns a nod of approval. Two nods, even.",
		"Approved. By me, the only judge that matters.",
		"I'd frame that, if fights fit in frames.",
	},
	["victory.w13.pride.016"] = {
		"That's my answer to anything that tries me.",
		"Whoever tests me gets that same reply.",
		"Try me, and that's what comes back.",
	},
	["victory.w13.pride.017"] = {
		"The ground to me; to you, my respect.",
		"My respect goes with you. The ground stays with me.",
		"You leave with my respect. I stay with the ground.",
	},
	["victory.w13.pride.018"] = {
		"Let the next thing come. It'll find me ready.",
		"Ready for whatever's next. Let it hurry up.",
		"Bring the next. My feet are set.",
	},
	["victory.w13.pride.019"] = {
		"Look at that! I'm good at this.",
		"Would you look at that. Fine work.",
		"Look at me, being good at things.",
	},
	["victory.w13.pride.020"] = {
		"Let the horns sound, if anyone has one.",
		"Somebody blow a horn. I've earned a horn.",
		"A fanfare would suit this. Hum one, someone.",
	},
	["victory.w13.pride.021"] = {
		"And that, for the curious, is how it's done.",
		"Take notes, anyone listening. That's the method.",
		"Lesson over. There won't be a test.",
	},
	["victory.w13.pride.022"] = {
		"I am not done. I am never done.",
		"Finished? Not by a long way.",
		"Finished? Me? Ask again later.",
	},
	["victory.w13.pride.023"] = {
		"Honor to you for facing me. The rest of the honor is mine.",
		"Some honor for you. Most of it stays with me.",
		"The honor is split between you and me. I take the larger slice.",
	},
	["victory.w13.pride.024"] = {
		"Let it be known: that was my doing.",
		"Let it be known far and wide. My work, that.",
		"Spread the word. That was me.",
	},
	["victory.w13.pride.025"] = {
		"Good. That's how I like it.",
		"Good. Exactly as I wanted it.",
		"Yes. Like that. Precisely like that.",
	},
	["victory.w13.pride.026"] = {
		"Line them up. I've all the time in the world.",
		"Form a queue, whoever's next. I'm in no hurry.",
		"Singly or in a crowd, send them. I'll take either.",
	},
	["victory.w13.pride.027"] = {
		"Modesty forbids me to comment. Luckily I have none.",
		"I'd be modest about it, but why start now?",
	},
	["victory.w13.pride.028"] = {
		"Let it be written somewhere. Anywhere. A wall will do.",
		"Someone write that down. On anything at all.",
	},
	["victory.w13.pride.029"] = {
		"If Death wants me, it can book an appointment. Not before.",
		"Death can wait in line. My calendar is full.",
		"Not on Death's list yet. I checked.",
	},
	["victory.w13.pride.030"] = {
		"I said I'd win, and I won. Keep your doubts.",
		"Said I would. Did. Next question.",
	},
	["victory.w13.pride.031"] = {
		"There's no feeling quite like it. None at all.",
		"Nothing in this world compares. Nothing.",
		"Of all the feelings going, this one's the best.",
	},
	["victory.w13.pride.032"] = {
		"I raise my hand to you. Go well, wherever you are now.",
		"A hand raised to you, wherever you've gone.",
	},
	["victory.w13.pride.033"] = {
		"Whoever comes after, take a good look first.",
		"The next one would do well to remember how this went.",
		"Anything watching, learn from that.",
	},
	["victory.w13.pride.034"] = {
		"I'll take a bow. A small one. Fine, a big one.",
		"A bow for the winner. That's me. Thank you, thank you.",
	},
	["victory.w13.pride.035"] = {
		"I don't break. Pass it on.",
		"Nothing breaks me. Remember that, whatever you are.",
	},
	["victory.w13.pride.036"] = {
		"Now that's what I call a proper finish.",
		"A proper ending, that. Neat and square.",
	},
	["victory.w13.pride.037"] = {
		"That one's mine. Nobody takes it from me.",
		"Mine. That victory is mine, and it stays mine.",
	},
	["victory.w13.pride.038"] = {
		"Whoever saw that, tell it straight.",
		"If anyone saw that, tell it as it was. No need to embellish.",
	},
	["victory.w13.pride.039"] = {
		"Hah. That's what anger is for.",
		"That fire was useful. Let it stay lit.",
		"Good fury, that. It earned its keep.",
	},
	["victory.w13.pride.040"] = {
		"Hm. Satisfying.",
		"Hm. I'll allow myself a moment of smugness.",
		"Hm. Pleased with that. Genuinely pleased.",
	},
	["victory.w13.pride.041"] = {
		"A bit stronger than an hour ago. I can tell.",
		"Stronger than a moment back. I feel it in my hands.",
	},
	["victory.w13.pride.042"] = {
		"Victory. Say it slowly. Vic-to-ry.",
		"Victory. I like the taste of that word.",
	},
	["victory.w13.pride.043"] = {
		"No grudge. The win is mine, the grudge nobody's.",
		"I keep the win and leave the grudge behind.",
		"Grudges are heavy. I'll carry the win instead.",
	},
	["victory.w13.pride.044"] = {
		"And they'll say I was lucky. Let them.",
		"Luck? Call it what you like. I call it mine.",
		"Lucky? Maybe. Luck tends to stand beside the stubborn.",
	},
	["victory.w13.pride.045"] = {
		"Chin up. I've earned the right to strut.",
		"A little strutting is allowed. I looked it up.",
	},
	["victory.w13.pride.048"] = {
		"Close. But close goes in my column.",
		"Battered, yes. Beaten, no.",
		"It came near. Near is still on my side of the line.",
	},
	["victory.w13.pride.049"] = {
		"Hurt, and proud of every bit of it.",
		"Every bruise from this one, I'll wear like a medal.",
	},
	["victory.w13.pride.050"] = {
		"Won. Ow. But won.",
		"I win. I'd celebrate, if anything stopped hurting.",
	},
	["victory.w13.pride.051"] = {
		"Fine work, every one of you. That win is ours.",
		"That belongs to all of us. Heads high.",
		"Every one of us earned that. Wear it.",
	},
	["victory.w13.pride.052"] = {
		"Raise a fist, everyone. We earned this.",
		"Fists up. That one's ours for good.",
	},
	["victory.w13.pride.053"] = {
		"Not bad, us. Not bad at all.",
		"We're rather good together, aren't we?",
	},
	["victory.w13.pride.054"] = {
		"I did that. I want to remember the feel of it.",
		"Mine, that. I'll keep the feeling for later.",
		"My doing. Let me hold on to how this feels.",
	},
	["victory.w13.pride.055"] = {
		"Something out there just learned my name. Good.",
		"Word will get around. Let it.",
		"Somewhere, something is making a note of me. As it should.",
	},
	["victory.w13.pride.056"] = {
		"A small glow somewhere inside. Pride, I think. I'll allow it.",
		"That quiet glow inside has a name. Pride. Let it stay a while.",
	},
	["victory.w13.pride.057"] = {
		"Every win teaches the hands something. Mine are learning fast.",
		"My hands are learning. I can feel them getting surer.",
		"The hands know more than they did. Good hands.",
	},
	["victory.w13.pride.058"] = {
		"The anger can cool slowly. I want to enjoy it.",
		"The fury's ebbing. I'll miss it a little.",
	},
	["victory.w13.pride.059"] = {
		"I hope that looked as good as it felt.",
		"If anything was watching, I hope it caught my good side.",
	},
	["victory.w13.pride.060"] = {
		"Whatever's next will meet the version of me that just won.",
		"The rest can wait. For now, the win is mine.",
	},
	["victory.w13.pride.061"] = {
		"You tested me, and I passed. My thanks, in a strange way.",
		"I'll remember you as the one who made me prove it.",
		"A test, and a pass. I'll take the grade.",
	},
	["victory.w13.pride.062"] = {
		"There's a person I mean to become. That was a step toward them.",
		"Closer to who I mean to be. A little closer.",
	},
	["victory.w13.pride.063"] = {
		"Fear came, and I told it to wait outside. It did.",
		"Fear knocked. I didn't let it in.",
		"Fear asked for a word. I said later.",
	},
	["victory.w13.pride.064"] = {
		"No need to shout it. A nod to myself says enough.",
		"Quiet pride is pride all the same. I nod, once.",
	},
	["victory.w13.pride.065"] = {
		"The stories never say how sweet this moment is.",
		"This is the part they leave out of the tales: how good it feels.",
	},
	["victory.w13.pride.066"] = {
		"The world keeps sending things at me. I keep sending them back.",
		"It throws, I answer. That's the arrangement.",
	},
	["victory.w13.pride.067"] = {
		"I'm going to be insufferable about this. I can feel it coming.",
		"Fair warning to whoever I meet next: I'll be mentioning this.",
	},
	["victory.w13.pride.068"] = {
		"My knees didn't fold. My nerve didn't either.",
		"I held. Every part of me held.",
		"Nothing in me gave way. Not one piece.",
	},
	["victory.w13.pride.069"] = {
		"Pride, yes. But I'll keep the pride gentle.",
		"Pride's fine. Gloating isn't. I know the difference.",
		"Proud, but softly. There's no need to crow.",
	},
	["victory.w13.pride.070"] = {
		"Trouble has my address now. Let it call.",
		"Anything wanting trouble knows where to find it.",
	},
	["victory.w13.pride.071"] = {
		"No herald, no trumpet. The win counts just the same.",
		"Nobody announced it. The win is here regardless, and it's mine.",
	},
	["victory.w13.pride.072"] = {
		"That's the measure of me, for now. Not a bad measure.",
		"So that's what I'm worth just now. I can live with that number.",
	},
	["victory.w13.pride.073"] = {
		"The promise was not to give ground. Kept.",
		"Don't give ground, I told myself. I listened.",
		"Not an inch, I promised. Not an inch it was.",
	},
	["victory.w13.pride.074"] = {
		"I'd like a statue. Modest. Life-size. Maybe a little taller.",
		"A statue would be excessive. A plaque, then.",
	},
	["victory.w13.pride.075"] = {
		"It nearly had me. Nearly is the most beautiful word I know.",
		"Almost isn't enough to beat me. Remember that, world.",
	},
	["victory.w13.pride.076"] = {
		"Where I come from, they'd be proud. I'm proud for them.",
		"The people I left would nod at that. I'll nod for them.",
	},
	["victory.w13.pride.077"] = {
		"The whole fight, I was certain. I like being certain.",
		"There was no doubt in me. Not a flicker.",
	},
	["victory.w13.pride.078"] = {
		"I'll give this win a moment of its own before I move.",
		"A win deserves a pause in its honor. This is the pause.",
	},
	["victory.w13.pride.079"] = {
		"Good company. I'd stand beside these ones any time.",
		"Proud to be counted among them. Truly.",
	},
	["victory.w13.pride.081"] = {
		"Nothing in me wanted to quit. I'll remember that about myself.",
		"Learned something: I don't quit. Good to know.",
		"Quitting never crossed my mind. Good to learn that about myself.",
	},
	["victory.w13.pride.082"] = {
		"lifts {g:his|her} chin and lets a slow, satisfied grin spread.",
		"straightens up, a grin tugging at one corner of {g:his|her} mouth.",
		"grins, broad and unhurried, at nothing at all.",
	},
	["victory.w13.pride.083"] = {
		"raises a fist toward nothing in particular and holds it there a moment.",
		"punches the air once, short and sharp.",
		"pumps a fist, once, then lowers it with a satisfied nod.",
	},
	["victory.w13.pride.084"] = {
		"gives a small, formal bow toward the spot where it all happened.",
		"sketches a courteous bow toward where the foe last stood.",
	},
	["victory.w13.pride.085"] = {
		"plants {g:his|her} feet wide and looks around like the owner of everything in sight.",
		"stands with feet set wide, looking about as if daring anything else to try.",
	},
	["victory.w13.pride.086"] = {
		"nods once, firmly, the way one signs a finished letter.",
		"gives a single sharp nod of approval to no one in particular.",
		"nods to {g:himself|herself}, a small seal of approval.",
	},
	["victory.w13.pride.087"] = {
		"throws back {g:his|her} head and lets out a short, ringing laugh.",
		"laughs aloud, once, a clear and unashamed sound.",
	},
	["victory.w13.pride.088"] = {
		"squares {g:his|her} shoulders and looks around, as if waiting for whatever comes.",
		"rolls {g:his|her} shoulders back and turns to face whatever might come next.",
	},
	["victory.w13.pride.089"] = {
		"lays two fingers against {g:his|her} temple, a quick salute to the moment.",
		"offers a crisp salute to the spot where it ended.",
		"raises an open hand toward where it ended, palm out, a moment's salute.",
	},
	["victory.w13.pride.090"] = {
		"dusts off {g:his|her} gear with exaggerated care, as if for an audience.",
		"brushes {g:his|her} kit down with a showy flourish.",
	},
	["victory.w13.pride.091"] = {
		"stands tall a moment longer than needed before moving on.",
		"holds a proud stance for a long moment, then lets it go.",
	},
	["victory.w13.pride.093"] = {
		"turns to {g:his|her} companions with a fierce, approving grin.",
		"claps the nearest shoulder and nods to each companion in turn.",
	},
	["victory.w13.pride.094"] = {
		"draws {g:himself|herself} up to full height and takes in the moment.",
		"stretches tall, arms wide, then lets them fall.",
	},
	["victory.w13.pride.095"] = {
		"taps a fist twice against {g:his|her} chest, a small private salute.",
		"thumps {g:his|her} chest once with a closed hand.",
	},
	["victory.w13.pride.096"] = {
		"hums a few bars of something triumphant, badly.",
		"hums a handful of proud, tuneless notes.",
	},
	["victory.w13.still.001"] = {
		"The hands wait until it's finished to start trembling. Polite of them, really.",
		"Now they shake, these hands. Not one tremor while it mattered.",
	},
	["victory.w13.still.002"] = {
		"stands quite still, head tilted, listening to the small sounds come back one by one.",
		"holds still and listens, as if waiting for the quiet to say something.",
		"keeps very still, head cocked, like someone counting the noises as they return.",
	},
	["victory.w13.still.003"] = {
		"Quiet comes back in layers. First my own noise, then the world's.",
		"The ringing goes, and under it there's a whole quiet I hadn't heard.",
		"Sound returns slowly, the way feeling comes back to a numb hand.",
	},
	["victory.w13.still.004"] = {
		"Give me a moment. Let everything stop moving first.",
		"Hold on. The world needs a moment to stop tilting.",
		"Not a word for a while. Not even from me.",
	},
	["victory.w13.still.005"] = {
		"opens and closes {g:his|her} hands slowly, waiting for the tremor to pass.",
		"presses both palms flat against {g:his|her} knees until they stop shaking.",
		"rubs {g:his|her} palms together slowly until the trembling eases.",
	},
	["victory.w13.still.006"] = {
		"Somewhere close, something tiny starts chirring. It knows the fight's over.",
		"A small noise starts up nearby, an insect perhaps. The world's all-clear signal.",
	},
	["victory.w13.still.007"] = {
		"An itch on my neck, right now, of all moments. Ten seconds ago it wouldn't have dared.",
		"Now my nose itches. It waited politely through the whole fight.",
		"Of course my ear itches now. It had the decency to wait, at least.",
	},
	["victory.w13.still.008"] = {
		"sits down right where {g:he|she} stands, without ceremony, and stays there.",
		"lowers {g:himself|herself} to the ground and sits a while, doing nothing at all.",
		"settles onto the ground with a grunt and makes no move to rise.",
	},
	["victory.w13.still.009"] = {
		"Whatever happened, the quiet after belongs to me. Nobody else hears it the same.",
		"Everyone hears a different quiet after a fight. This one is mine.",
		"However it went, this hush afterwards is a private thing. I keep it.",
	},
	["victory.w13.still.010"] = {
		"Was that long or short? It felt like an age and a blink, both at once.",
		"I couldn't say how long that lasted. Time went somewhere and is only now coming back.",
		"Seconds or minutes, I couldn't tell you. The fight keeps its own clock.",
	},
	["victory.w13.still.011"] = {
		"tugs a twisted strap back into place, then stops and just looks at it.",
		"straightens a crooked strap with fingers that are not quite steady.",
		"fiddles with a buckle that needs no fixing, just to give the hands a task.",
	},
	["victory.w13.still.012"] = {
		"Shh. Listen. There. Everything's carrying on.",
		"Hear that? Nothing. Lovely, isn't it.",
		"Quiet now. Just for a little while, let it be quiet.",
	},
	["victory.w13.still.013"] = {
		"The aches turn up one by one, like guests who all knocked at the same door.",
		"First the shoulder, then the knee, then something in the back. They introduce themselves in turn.",
		"The aches arrive in order of importance. The knee insists it's first.",
	},
	["victory.w13.still.014"] = {
		"Everything is so ordinary again, so fast. The world doesn't keep the moment for me.",
		"A moment ago everything mattered. Now it's just a place, and I'm standing in it.",
		"So quickly it all turns plain again. Nobody marks the spot.",
	},
	["victory.w13.still.015"] = {
		"takes a first step, then a second, testing each as if the ground might have changed.",
		"walks a few slow paces, checking that the legs still agree to carry on.",
	},
	["victory.w13.still.016"] = {
		"This is the best part, if I'm honest. Not the winning. The stillness after.",
		"Funny. The bit I like most is this one, where nothing happens at all.",
		"Ask me what I'd keep from all this, and it's the minute where nothing moves.",
	},
	["victory.w13.still.017"] = {
		"There's a tune stuck in my head. Where did that come from, and why now?",
		"Some silly tune is going round my head. Apparently that's how my head recovers.",
		"My mind's humming something. Not a song I know. Just humming.",
	},
	["victory.w13.still.018"] = {
		"closes {g:his|her} eyes for a moment and simply listens to nothing.",
		"shuts {g:his|her} eyes and stands like that a while, letting the world tidy itself.",
		"lowers {g:his|her} eyelids and stays like that, taking in only sound.",
	},
	["victory.w13.still.019"] = {
		"Knees, you can stop now. It's finished. Really.",
		"All right, legs, the shaking is noted. Thank you.",
		"Hands, settle down. Nobody's asking anything more of you.",
	},
	["victory.w13.still.020"] = {
		"My ears still have the fight in them. Everything else has moved on.",
		"The noise left, but nobody has told my ears yet.",
		"The din is gone from everywhere except the inside of my head.",
	},
	["victory.w13.still.021"] = {
		"shakes {g:his|her} hands loose at the wrists, flicking the stiffness out of them.",
		"flexes each hand in turn until the fingers move the way they should.",
		"spreads {g:his|her} fingers wide, holds them there, and watches them settle.",
	},
	["victory.w13.still.022"] = {
		"Odd, what I notice now. A scuff on my sleeve. A loose thread. A color.",
		"All at once the small things jump out: a frayed edge, a new nick in my kit, a stain I can't place.",
		"My eyes are greedy for little things now. Every crease, every speck.",
	},
	["victory.w13.still.023"] = {
		"There. Quiet. I'll take it.",
		"And now the quiet. That's the part worth having.",
		"Quiet at last. Good.",
	},
	["victory.w13.still.024"] = {
		"Let it go quiet. Let all of it go quiet, me included.",
		"I want nothing for a moment. Not even to win. Just this.",
		"Nothing to do. Nothing to be. Just this minute, and me in it.",
	},
	["victory.w13.still.025"] = {
		"turns slowly in place, taking in everything around {g:him|her} as if seeing it fresh.",
		"looks around with a slow, almost puzzled care, like someone just woken.",
		"blinks a few times and looks about, as though the world had been moved slightly while {g:he|she} was busy.",
	},
	["victory.w13.still.026"] = {
		"That was close. Everything is too sharp, too loud, and wonderfully here.",
		"Too near the edge. Now every little thing looks painted on.",
		"Near thing. The world's gone so vivid it almost hurts to look at.",
	},
	["victory.w13.still.027"] = {
		"My hands won't stop. They know better than I do how near that came.",
		"The shaking isn't fear now. It's the rest of me catching up with the news.",
	},
	["victory.w13.still.028"] = {
		"sinks to one knee and stays there, eyes half closed, until the world stops lurching.",
		"bends over, hands on knees, and waits before trusting {g:his|her} legs.",
	},
	["victory.w13.still.029"] = {
		"Not yet, it seems. Not this time.",
		"So the world keeps me a while longer. Good to know.",
		"Slowly. Slowly. It's over, and I'm on the right side of it.",
	},
	["victory.w13.still.030"] = {
		"Everyone moving? Everyone. Then I can let the quiet in.",
		"I count the voices around me before I let myself go still.",
	},
	["victory.w13.still.031"] = {
		"catches the eye of someone nearby and shares a small, tired nod.",
		"sits among the others without a word, in the shared quiet.",
	},
	["victory.w13.still.032"] = {
		"Listen to that. Nothing. We earned a bit of nothing.",
		"Let's all just stand here a moment. Nobody say anything clever.",
	},
	["victory.w13.still.035"] = {
		"My first clear thought afterwards: this strap's been loose all along. Heroic.",
		"All that, and the first thing my mind offers is that my collar is twisted.",
		"First thing I notice, now it's over, is a crease in my sleeve. Priorities.",
	},
	["victory.w13.still.036"] = {
		"picks a speck of something off {g:his|her} sleeve with great seriousness.",
		"brushes at {g:his|her} shoulder, frowning at a mark that will not come off.",
		"tucks a loose end back in with fussy care, as if it mattered greatly.",
	},
	["victory.w13.still.037"] = {
		"Stillness isn't empty. It's full of small things waiting their turn to be heard.",
		"This isn't silence. It's a crowd of tiny noises the fight was talking over.",
		"Listen long enough and the stillness turns out to be busy.",
	},
	["victory.w13.still.038"] = {
		"Sit down before you fall down. Good advice. Taking it.",
		"Down I go. The ground's been patient; it can hold me a while.",
		"My legs have voted, and the vote is to sit.",
	},
	["victory.w13.still.039"] = {
		"The ground under me hasn't noticed a thing. It's held quieter moments and louder ones.",
		"Whatever happened on it, the ground took no side. It simply held.",
	},
	["victory.w13.still.040"] = {
		"lays a palm flat on the ground for a moment, as if to feel it settle too.",
		"rests a hand on the ground nearby, steadying, waiting.",
		"touches the ground with the tips of {g:his|her} fingers, lightly, as one touches a sleeper.",
	},
	["victory.w13.still.041"] = {
		"Everything was at stake a moment ago. Now it's just an ordinary minute.",
		"Strange how quickly a life-or-death moment becomes a minute like any other.",
		"From everything to nothing much, in the space of a moment.",
	},
	["victory.w13.still.042"] = {
		"Wherever you are now, I hope it's this quiet.",
		"Let it be quiet for you too, wherever that is.",
		"May your side of things be as still as mine.",
	},
	["victory.w13.still.043"] = {
		"The tiredness waited outside the fight. Now it's walking in, wiping its boots.",
		"Weariness was kept at the door the whole time. It's just let itself in.",
	},
	["victory.w13.still.044"] = {
		"smiles at nothing for a moment, then seems to notice and stops.",
		"gives a small, crooked smile to nobody in particular.",
		"chuckles quietly at some private thought.",
	},
	["victory.w13.still.045"] = {
		"Colors look louder after a fight. Or I'm only now looking at them.",
		"Everything has edges again. During the fight there was only the one thing.",
		"The world widens out. A moment ago it was the width of one foe.",
	},
	["victory.w13.still.046"] = {
		"Did everything go this quiet, or did I go a bit deaf?",
		"Either the world went very quiet, or my ears quit on me.",
	},
	["victory.w13.still.047"] = {
		"lifts {g:his|her} face a little, as if the air itself had changed.",
		"raises {g:his|her} head and stays like that, attentive to every small sound.",
		"turns {g:his|her} head slowly toward a small sound, then away.",
	},
	["victory.w13.still.048"] = {
		"I'm allowed this. A minute of nothing. Nobody's going to take it off me.",
		"This minute is mine, and it asks nothing of me. Rare enough to notice.",
		"Nobody needs anything from me for one whole minute. I'll treasure it.",
	},
	["victory.w13.still.049"] = {
		"Legs like wet rope. They held when it counted, so I'll forgive them.",
		"My knees have gone soft as bread. Loyal bread, though; they held.",
		"These legs are wobbling like a newborn's. Fine. They earned the wobble.",
	},
	["victory.w13.still.050"] = {
		"And that's all. A little quiet, and then the rest of the world.",
		"Funny how it ends. Not with anything. Just a gap where the noise was.",
	},
	["victory.w13.still.051"] = {
		"works the stiffness out of {g:his|her} neck, slow tilt by slow tilt.",
		"kneads the back of {g:his|her} neck with one hand, eyes on nothing.",
		"rolls {g:his|her} head in a slow circle, wincing at one stiff spot.",
	},
	["victory.w13.still.052"] = {
		"There is a hush that comes only after. Nothing else makes it.",
		"This kind of quiet can't be found. It has to be fought for, and then it simply arrives.",
	},
	["victory.w13.still.053"] = {
		"For a moment there, I was all teeth and nerves. Now I'm mostly knees.",
		"A moment ago I was pure edge. Now I'm a pile of loose joints.",
		"Moments ago I was wound tight. Now everything's come unspooled.",
	},
	["victory.w13.still.054"] = {
		"stays exactly where {g:he|she} is, as though moving might spoil something.",
		"holds still a long moment, as if reluctant to be the first to make a sound.",
		"goes on standing motionless for a long while, as though the quiet were fragile.",
	},
	["victory.w13.still.055"] = {
		"I don't remember half of it. Bits are missing, like pages torn from a book.",
		"The fight's already blurring. I'll never quite know what my hands did in there.",
		"Already it's going hazy at the edges, like a dream after waking.",
	},
	["victory.w13.still.056"] = {
		"Let the quiet have it now. It was always going to.",
		"Rest, all of it. Let the stillness take its turn.",
		"Come in, quiet. You've been patient long enough.",
	},
	["victory.w13.still.057"] = {
		"Wide awake, and every part of me tired. Odd pairing.",
		"My mind is still running long after my legs have sat down.",
		"Too tired to move, too awake to rest. So I'll just stand here being both.",
	},
	["victory.w13.still.058"] = {
		"plants both hands on {g:his|her} hips and surveys the stillness with a frown.",
		"scratches the back of {g:his|her} head, squints at nothing, and grunts.",
		"folds {g:his|her} arms and stands there, eyeing the quiet as if it owed {g:him|her} something.",
	},
	["victory.w13.still.059"] = {
		"Everything has slid back where it belongs. Near enough, anyway.",
		"The world clicks back into place like a joint that's been set.",
		"Slowly the world settles back into its proper shape.",
	},
	["victory.w13.still.060"] = {
		"Steady. It's finished. Let the hands go loose.",
		"Nothing left to do now but stand here. So I'll stand.",
	},
	["victory.w13.still.061"] = {
		"In the quiet afterwards I feel very small. Not in a bad way.",
		"The stillness makes everything bigger, and me smaller. It's oddly restful.",
	},
	["victory.w13.still.062"] = {
		"lets {g:his|her} head drop back and looks straight up for a long moment.",
		"tips {g:his|her} head back, eyes half closed, and waits for nothing in particular.",
	},
	["victory.w13.still.063"] = {
		"Something is digging into my side. It's been there the whole fight, apparently.",
		"A buckle's been biting into my ribs all along. Only now does it bother to hurt.",
	},
	["victory.w13.still.064"] = {
		"Oh. Oh, that's very quiet.",
		"How quiet it's gone. Almost rude.",
		"That's quiet. That's proper quiet.",
	},
	["victory.w13.still.065"] = {
		"Only in the quiet afterwards do I notice I'm alive. During, there's no room.",
		"Being alive is something I only hear once everything else stops.",
		"During, there's no time to be alive. Afterwards there's nothing else.",
	},
	["victory.w13.still.066"] = {
		"unclenches {g:his|her} jaw, which seems to take some effort.",
		"loosens {g:his|her} clenched jaw at last, working it side to side.",
	},
	["victory.w13.still.067"] = {
		"Count to ten. Then decide whether to move. No rush on either.",
		"Ten slow counts before anything else. The world can wait for ten.",
	},
	["victory.w13.still.068"] = {
		"Everything's so calm now. Suspiciously calm. I'll allow it.",
		"Calm. Very calm. I don't trust it, but I'll sit in it.",
	},
	["victory.w13.still.069"] = {
		"watches a tiny insect wander past, and lets it go about its business.",
		"notices a small insect close by and follows its progress with odd attention.",
		"bends to watch some small crawling thing go by, entirely absorbed.",
	},
	["victory.w13.still.070"] = {
		"Whatever lives around here is coming back out. It waited for the noise to end, same as me.",
		"Little lives nearby pick up where they left off. Braver than they look.",
	},
	["victory.w13.still.071"] = {
		"Whatever the fight was about, the quiet doesn't care. It forgives everyone equally.",
		"The quiet takes no side. It covers winner and loser the same.",
	},
	["victory.w13.still.072"] = {
		"pats {g:his|her} sides absently, then seems to forget what for.",
		"reaches for something, stops halfway, and lets the hand drop back.",
		"seems about to speak, then lets the quiet keep its place.",
	},
	["victory.w13.still.073"] = {
		"My shoulders are up around my ears. I didn't put them there. Down you go.",
		"Only now do I notice how hunched I am. Unwind, shoulders. Slowly.",
	},
	["victory.w13.still.074"] = {
		"Huh. Look at that. Everything's normal.",
		"Funny, isn't it, how quickly things go back to normal?",
	},
	["victory.w13.still.075"] = {
		"The quiet after a fight is old. Older than anyone who ever fought.",
		"Every fight in the world has ended in this same hush. Mine joins the line.",
	},
	["victory.w13.still.076"] = {
		"bows {g:his|her} head briefly toward where it all happened, then turns away.",
		"inclines {g:his|her} head once to the stillness, the way one greets an elder.",
		"stands for a moment with lowered eyes, as at the end of a ceremony.",
	},
	["victory.w13.still.077"] = {
		"Once it's over, the small things come back. They always have, so far.",
		"What stays with me won't be the fight. It'll be this quiet, and some sound I can't name.",
	},
	["victory.w13.still.078"] = {
		"Slowly. No sudden moves. Let it all catch up.",
		"Gently now. Let things find their places.",
		"Softly, softly. Nothing needs doing yet.",
	},
	["victory.w13.still.079"] = {
		"drops into a crouch, forearms on knees, and lets the moment stretch.",
		"squats down and stays there a while, gaze drifting from one thing to the next.",
	},
	["victory.w13.still.080"] = {
		"My head's gone blank as a fresh page. Not one thought. Restful, honestly.",
		"Nothing in my head at all. Empty as a swept floor. I could get used to it.",
	},
	["victory.w13.still.081"] = {
		"follows nothing with {g:his|her} eyes, the way one watches water move.",
		"gazes at nothing, unfocused, letting the eyes rest where they fall.",
	},
	["victory.w13.still.082"] = {
		"Everything kept happening the whole time. I just wasn't listening.",
		"Nothing paused for it, not really. Only my head stepped out for a moment.",
	},
	["victory.w13.still.083"] = {
		"Hm. And then nothing. Always surprises me, the nothing.",
		"All that noise, and it just stops. Every time, it just stops.",
	},
	["victory.w13.still.084"] = {
		"Too close. I'll sit here and be amazed for a bit before anything else.",
		"That came near. Everything looks precious and slightly ridiculous now.",
	},
	["victory.w13.still.085"] = {
		"lies back flat on the ground and stares upward, unmoving, for a long moment.",
		"lets {g:himself|herself} fall to sit, hard, and does not try to get up yet.",
	},
	["victory.w13.still.086"] = {
		"Nobody move. Especially not me.",
		"Ground, hold me a minute. Then I'll leave you be.",
	},
	["victory.w13.still.087"] = {
		"Someone's laughing nearby, shakily. I'd join in if my knees would let me.",
		"The others are talking already. I'll catch up once the world stops humming.",
	},
	["victory.w13.still.089"] = {
		"A smell comes back that I'd stopped noticing. Plain air, and whatever is in it.",
		"Smells first, oddly. Then sounds. Sight takes its time, as if it's sulking.",
		"The air smells ordinary again. I'd never noticed ordinary had a smell.",
	},
	["victory.w13.still.090"] = {
		"hums a few aimless notes, then trails off into the quiet.",
		"murmurs something to nobody, too low to make out, and lets it fade.",
		"clicks {g:his|her} tongue softly, a small sound to test the quiet with.",
	},
	["victory.w13.still.091"] = {
		"The stillness feels like a promise. Not a big one. Just that the next minute might be kind.",
		"This quiet is the world's way of saying: for now, that's enough.",
	},
	["victory.w13.still.092"] = {
		"Hush, now. It is ended, and the quiet is owed its due.",
		"Peace, for a little. Let the stillness speak first.",
	},
	["victory.w13.still.093"] = {
		"stretches both arms high until something in {g:his|her} back gives a satisfying click.",
		"stretches, slowly and thoroughly, like someone getting up from a long sleep.",
		"arches {g:his|her} back in a long, contented stretch.",
	},
	["victory.w13.still.094"] = {
		"I talk to myself more after a fight. Somebody has to say something.",
		"My own voice sounds strange afterwards, like someone else's in the next room.",
		"Saying anything at all feels strange. My voice comes out rusty.",
	},
	["victory.w13.still.095"] = {
		"Listen to me, all calm and talking to myself. Lovely.",
		"Here I am, chatting to nobody. The fight must be over.",
	},
	["victory.w13.tally.001"] = {
		"Hands, feet, pack. All accounted for.",
		"Quick count: both hands, both feet, one pack. That'll serve.",
		"Let me count what's left of me. Hands, yes. Wits, mostly.",
	},
	["victory.w13.tally.002"] = {
		"Let it run back once, slowly. Where did I lose the first second?",
		"Go over it while it's fresh: the opening, the middle, the moment it turned.",
		"Walk back through it piece by piece while the memory's still sharp.",
	},
	["victory.w13.tally.003"] = {
		"tugs at each strap of {g:his|her} gear in turn, testing which ones gave.",
		"runs a thumb along every buckle, one after another, looking for the loose one.",
		"checks the fastenings of {g:his|her} gear with quick, methodical fingers.",
	},
	["victory.w13.tally.004"] = {
		"Food. Then opinions.",
		"I'm not discussing anything until I've eaten something.",
		"Feed me first. I'll be pleasant afterward. Probably.",
	},
	["victory.w13.tally.005"] = {
		"Thirsty. That's the first honest thing I've felt in a while.",
		"My mouth is dry as old leather. Water first; the rest can queue.",
		"Water. I want water more than I want to think about anything.",
	},
	["victory.w13.tally.006"] = {
		"Lesson: my own footing first. Everything else comes after.",
		"Note for next time: plant the feet before anything clever.",
		"Settle the feet first. The rest follows from there.",
	},
	["victory.w13.tally.007"] = {
		"finds something solid to sit on and stays there a minute, elbows on knees.",
		"sits down where {g:he|she} stands and allows one plain minute, no more.",
	},
	["victory.w13.tally.008"] = {
		"Somebody ought to invent a fight that tidies up after itself.",
		"The fighting part's quick. It's the tidying after that takes all the time.",
	},
	["victory.w13.tally.009"] = {
		"Something in the pack rattled that shouldn't rattle. Check it before moving.",
		"That clink from the pack wasn't there before. Better look now than later.",
	},
	["victory.w13.tally.010"] = {
		"dabs at a fresh scrape with the corner of a cloth, frowning at it like a bad bill.",
		"inspects a new graze on one forearm, decides it can wait, and lets the sleeve fall back.",
		"licks a grazed knuckle and shakes the hand out, unimpressed.",
	},
	["victory.w13.tally.011"] = {
		"Let's see the damage. Elbows... knees... yes, that one's going to complain.",
		"Damage report: one knee, one elbow, and a shoulder that's sulking.",
		"Bruises in three places. Four, if you count my pride.",
	},
	["victory.w13.tally.012"] = {
		"The tiredness waits until it's safe. Polite of it, I suppose.",
		"Funny how the weariness holds off until the work is finished, then arrives all at once.",
		"Now that it's over, the tired arrives. It always knocks after the work.",
	},
	["victory.w13.tally.013"] = {
		"Which way was I headed before all that? Think.",
		"I've lost my bearings. Find them before taking a single step.",
		"First, which way I'm facing. Then, which way I was going.",
	},
	["victory.w13.tally.014"] = {
		"Won the fight. Lost a button. Fair trade, I suppose.",
		"One victory, minus a button and most of my composure.",
		"Tally: one fight won, one sleeve torn, one temper slightly frayed.",
	},
	["victory.w13.tally.015"] = {
		"makes one slow turn, checking each side in order, before allowing {g:himself|herself} to relax.",
		"looks left, right and behind, the way one checks that a door is locked.",
	},
	["victory.w13.tally.016"] = {
		"Kit first. Feelings later, if there's time.",
		"Gear before anything. I can have a thought or two once the straps are sorted.",
		"Gear, then water, then thoughts. Thoughts last.",
	},
	["victory.w13.tally.017"] = {
		"I waited too long to start. Next time, first move is mine.",
		"Hesitated at the start. That moment cost more than anything after it.",
		"Too much thinking before the first move. Decide faster.",
	},
	["victory.w13.tally.018"] = {
		"Bandages: some. Water: enough. Food: less than I'd like. Noted.",
		"Supplies check. Water fine, bandages fine, food running thin.",
		"Count the supplies before the next trouble finds me. Food's the short one.",
	},
	["victory.w13.tally.019"] = {
		"flexes one hand open and shut until the stiffness gives, then does the other.",
		"works a cramp out of {g:his|her} fingers, knuckle by knuckle.",
	},
	["victory.w13.tally.020"] = {
		"Water. Then more water. Then I'll consider being clever.",
		"First a drink. Cleverness can come after the drink.",
		"My mouth tastes like the whole fight. Water, please, anybody.",
	},
	["victory.w13.tally.021"] = {
		"No sense judging it while my hands still shake. Judge it in an hour.",
		"Too soon to say what I did wrong. Give it an hour and it'll be obvious.",
		"Lessons keep. Let them cool first, then pick them over.",
	},
	["victory.w13.tally.022"] = {
		"Nobody's coming to tidy this up for me. On with it.",
		"No squire, no servant, no one to fetch my things. Just me. Fine.",
	},
	["victory.w13.tally.023"] = {
		"Kept my distance well that time. Remember how that felt.",
		"The spacing was right. Whatever I did with my feet there, keep doing it.",
	},
	["victory.w13.tally.024"] = {
		"wraps a strip of cloth around a scraped knuckle, tying it off with {g:his|her} teeth.",
		"binds a small cut with plain, unhurried care and tucks the end in.",
		"ties off a bandage around one wrist and gives the knot a hard tug.",
	},
	["victory.w13.tally.025"] = {
		"Lesson learned, and I'd have preferred to learn it from a book.",
		"That's one I'll remember. I'd rather have read it somewhere, honestly.",
	},
	["victory.w13.tally.026"] = {
		"If anything worth keeping got left behind, I'll have it. If not, no loss.",
		"A quick look around for anything useful. Then away.",
	},
	["victory.w13.tally.027"] = {
		"Good. Where was I going? Ah. Yes. Onward.",
		"Back to what I was doing before this rude interruption.",
		"Where was I? Something about getting somewhere. Time to find out.",
	},
	["victory.w13.tally.028"] = {
		"Everything I carry feels heavier than it did a minute ago. Same pack. Different bearer.",
		"The pack has put on weight somehow. It hasn't; I've just spent something.",
	},
	["victory.w13.tally.029"] = {
		"rolls an ankle in slow circles, testing it, and grunts at the answer.",
		"puts weight on one leg, then the other, as if asking each for a report.",
		"stamps each foot once, testing for anything twisted.",
	},
	["victory.w13.tally.030"] = {
		"Fine. Someone write down that I won, and also that it was untidy.",
		"For the record: a win. Ugly, but a win.",
		"Put it in the ledger. A win, with notes.",
	},
	["victory.w13.tally.031"] = {
		"I turned my back too early once. Only once. Once is how it goes wrong.",
		"Turned away before it was really over. That habit has to go.",
		"Never turn away until it's truly finished. Write that somewhere.",
	},
	["victory.w13.tally.032"] = {
		"Next: somewhere to sit, something to eat, then decide.",
		"Plan: eat, mend, then pick a direction. In that order.",
		"Order of business: patch, eat, walk.",
	},
	["victory.w13.tally.033"] = {
		"gathers up whatever fell from {g:his|her} pack during the scuffle, item by item.",
		"stoops to collect a few things that spilled out in the fight and stows them where they belong.",
	},
	["victory.w13.tally.034"] = {
		"Fighting gives me an appetite. Most things give me an appetite, to be fair.",
		"Hungry. Fighting does that. So does walking. So does sitting, honestly.",
		"My stomach's made it very clear what comes next.",
	},
	["victory.w13.tally.035"] = {
		"Not perfect. Good enough to learn from, which is the useful kind.",
		"Some of that was right and some of it wasn't. Keep the first, drop the second.",
	},
	["victory.w13.tally.036"] = {
		"Straps. Buckles. Pack. Good. Moving.",
		"Tighten this, loosen that, and off I go.",
		"Everything fastened? Everything fastened. Off.",
	},
	["victory.w13.tally.037"] = {
		"Whatever's next won't wait for me to feel ready. Get ready anyway.",
		"The next thing comes when it likes. Better be patched up before it does.",
	},
	["victory.w13.tally.038"] = {
		"fishes something to eat out of {g:his|her} pack and chews it standing up.",
		"digs through the pack with the single-mindedness of someone suddenly very hungry.",
		"chews on something from {g:his|her} pack while still looking around.",
	},
	["victory.w13.tally.039"] = {
		"And now the glamorous part: picking things up off the ground.",
		"Heroics over. Time for housekeeping.",
		"Somebody has to pick all this up. That somebody is me.",
	},
	["victory.w13.tally.040"] = {
		"It set the pace and I followed. Next time, I set it.",
		"I fought to its rhythm instead of mine. Fix that.",
	},
	["victory.w13.tally.041"] = {
		"A shoulder that won't lift all the way. I'll have to work around it for a while.",
		"Something pulled in my side. Not torn, I think. Just pulled. Go gently.",
		"That wrist turned the wrong way for a moment. Keep it easy for a while.",
	},
	["victory.w13.tally.042"] = {
		"Sit, drink, stand. Two minutes. No more than that.",
		"Two minutes off my feet, a mouthful of water, and I'm moving.",
	},
	["victory.w13.tally.043"] = {
		"rinses a scrape with a splash from a waterskin and shakes the sting out of {g:his|her} hand.",
		"pours a little water over a cut, watches it, and decides it's clean enough.",
	},
	["victory.w13.tally.044"] = {
		"Slower start, cleaner finish. Remember that.",
		"Patience at the start paid off at the end. Worth repeating.",
		"Took my time and it paid. Keep that.",
	},
	["victory.w13.tally.045"] = {
		"Something in my kit will want mending. Something always does.",
		"Every fight costs a stitch or a strap. Find out which this time.",
		"Check the seams. Seams go first, always.",
	},
	["victory.w13.tally.046"] = {
		"Fight's done. Now it's me against the knot in this strap.",
		"Of course the buckle jammed. It waits for the fight to end, every time.",
		"The fight I can manage. This knot is beyond me.",
	},
	["victory.w13.tally.047"] = {
		"Nobody tells you how much of this life is cleaning up afterward.",
		"The stories skip this part. The sitting, the sorting, the small aches.",
	},
	["victory.w13.tally.048"] = {
		"shoulders the pack, settles it, and looks for the way {g:he|she} was going.",
		"hitches the pack higher, picks a direction, and sets off without ceremony.",
	},
	["victory.w13.tally.049"] = {
		"That's a thing I know now that I didn't know before. Useful.",
		"Learned something. Couldn't tell you what yet, but I felt it go in.",
		"Every fight's a lesson, people say. This one I actually paid attention to.",
	},
	["victory.w13.tally.050"] = {
		"Too eager. Went in before I'd seen enough. Cost nothing this time; it might next.",
		"I rushed it. It worked, which is the dangerous part of rushing.",
	},
	["victory.w13.tally.051"] = {
		"Handled. What's the next thing?",
		"Handled. Now, what else needs doing?",
		"Good. Next thing, then.",
	},
	["victory.w13.tally.052"] = {
		"Hands steady first. Then walk. Nobody ever gained anything by stumbling off early.",
		"Wait for the shake to leave the hands. It always does, if I let it.",
	},
	["victory.w13.tally.053"] = {
		"brushes off {g:his|her} gear with brisk, irritated swipes, as if the mess were a personal insult.",
		"slaps the grime from sleeves and knees, unimpressed by the result.",
	},
	["victory.w13.tally.054"] = {
		"Everything still bends the way it should. I checked twice, just to be sure.",
		"All joints present and bending in the correct directions. A good result.",
		"Counted the bits. All present.",
	},
	["victory.w13.tally.055"] = {
		"Before I trust this quiet, give it a long look all around.",
		"Trust the quiet only after looking at it from every side.",
	},
	["victory.w13.tally.056"] = {
		"My knee says no. My knee can file a complaint.",
		"That knee is going to talk to me for a while. I'll listen when I've time.",
		"Elbow's complaining. Noted. Ignored, for now.",
	},
	["victory.w13.tally.057"] = {
		"opens {g:his|her} pack and checks that nothing inside has broken.",
		"peers into the pack, shakes it gently, and listens for anything cracked.",
		"empties a side pocket into one palm, sorts it, and puts it all back.",
	},
	["victory.w13.tally.058"] = {
		"Watched the wrong thing for half of it. Eyes on what matters, next time.",
		"I kept looking at the obvious danger and missed the quiet one. Note it.",
	},
	["victory.w13.tally.059"] = {
		"Enough standing about. Things to do, ground to cover.",
		"No point lingering here. There's ground to cover.",
	},
	["victory.w13.tally.060"] = {
		"Hungry, thirsty, sore, and alive. Three problems and a blessing.",
		"Sore, hungry, and very much alive. The first two I can fix.",
	},
	["victory.w13.tally.061"] = {
		"takes a long pull of water and wipes {g:his|her} mouth on a sleeve.",
		"drinks deep from a waterskin, stops, and then drinks some more.",
		"uncorks a waterskin and drinks without bothering to sit.",
	},
	["victory.w13.tally.062"] = {
		"Good footing, good timing. One out of two would've done; I'll take both.",
		"Timing was right. Footing was right. Don't get used to it.",
	},
	["victory.w13.tally.063"] = {
		"Bandage it now, while it's small. Small things grow when ignored.",
		"A scratch left alone becomes a problem by the end of the week. Tend it now.",
		"Clean it, wrap it, and only then forget it.",
	},
	["victory.w13.tally.064"] = {
		"I'll be shaking bits of that fight out of my kit for days.",
		"Somehow half of that fight ended up inside my collar.",
		"My kit looks like it lost. I won, for the record.",
	},
	["victory.w13.tally.065"] = {
		"replays a moment of the fight with small movements of {g:his|her} hands, correcting the angle.",
		"mimes a step from the fight, adjusts it slightly, and nods as if taking a note.",
	},
	["victory.w13.tally.066"] = {
		"Whatever I was doing before, it still needs doing. Pick it back up.",
		"The errand doesn't care that I was interrupted. Back to it.",
	},
	["victory.w13.tally.067"] = {
		"Keep moving before it all stiffens up.",
		"If I sit too long, everything sets like glue. Better walk it off.",
	},
	["victory.w13.tally.068"] = {
		"A bit better than before. I can feel it in the hands. Small, but there.",
		"Something's getting smoother. Not much. Enough to notice.",
		"Better than I was. Not by much, but better.",
	},
	["victory.w13.tally.069"] = {
		"presses a palm to {g:his|her} side, waits, and decides nothing's broken.",
		"prods a sore rib, winces, prods it once more, and gives up on finding out more.",
	},
	["victory.w13.tally.070"] = {
		"One problem fewer, one bruise more. Fair enough.",
		"Lighter by a problem, heavier by a bruise. Even trade.",
	},
	["victory.w13.tally.071"] = {
		"Stopped thinking halfway and just reacted. Sometimes that's right.",
		"The part where I stopped planning went better than the part where I planned. Worth thinking about.",
	},
	["victory.w13.tally.072"] = {
		"No time to admire it. Pack up and go.",
		"Nothing to admire here. Gather up and get going.",
		"Pack up. Admiring things is for later.",
	},
	["victory.w13.tally.073"] = {
		"takes quick stock of the pack's contents, lips moving silently as the count goes on.",
		"lays a few supplies out on the ground, counts them, and packs them back.",
	},
	["victory.w13.tally.074"] = {
		"Every part of me wants a long sit. It can have a short one.",
		"Everything in me votes for lying down. The vote is noted and overruled.",
	},
	["victory.w13.tally.075"] = {
		"Survived the fight. Now to survive the walk to somewhere with food.",
		"Victory's fine, but I'd trade it for a hot meal right now.",
		"I won. Where's the food that's supposed to come with winning?",
	},
	["victory.w13.tally.076"] = {
		"Count what worked. Count what didn't. Don't lie to the count.",
		"Honest tally: two good moves, one poor one, and luck for the rest.",
	},
	["victory.w13.tally.077"] = {
		"scans the ground nearby for anything dropped, then straightens with a small nod.",
		"checks the spot where the fight began, as if something might have been left there.",
	},
	["victory.w13.tally.078"] = {
		"Rest when it's safe. It's safe enough. So: rest.",
		"Safe enough to sit. So I'm sitting.",
	},
	["victory.w13.tally.079"] = {
		"Torn stitching on the strap. Mend it at the first quiet stop, or it'll go for good.",
		"That seam's gone. Needle and thread at the next halt.",
		"A buckle's bent. It'll hold for now, and then it won't.",
	},
	["victory.w13.tally.080"] = {
		"Learn it once, properly, so it doesn't need teaching twice.",
		"Whatever that taught me, I'd rather not pay for the lesson twice.",
	},
	["victory.w13.tally.081"] = {
		"sits back on {g:his|her} heels and stares at nothing for a while, then gets on with it.",
		"pauses, hands on knees, then straightens up and gets on with things.",
	},
	["victory.w13.tally.082"] = {
		"Get up, gather up, go on. Most of life fits in those three.",
		"Most of this life is getting up and gathering one's things. The fights are the short bits between.",
	},
	["victory.w13.tally.083"] = {
		"Something to eat. Anything. I'm not choosy just now.",
		"I could eat anything just now. Preferably food.",
	},
	["victory.w13.tally.084"] = {
		"Spent too much too early. Keep something back for the end.",
		"Went all in at the start and had little left at the finish. Pace it.",
		"Measure it out next time. A fight has an end, and I'd like to reach it with something left.",
	},
	["victory.w13.tally.085"] = {
		"rebuckles a strap that came undone, muttering about whoever made the buckle.",
		"knots a frayed lace back together with more force than skill.",
	},
	["victory.w13.tally.086"] = {
		"Good. Pace back up, eyes ahead.",
		"Back to walking pace. Eyes open.",
		"Enough of that. Eyes up, feet moving.",
	},
	["victory.w13.tally.087"] = {
		"Bandage first. Thinking second. Walking a distant third.",
		"That needs binding before anything else. Everything else can wait.",
		"Sit before falling. Bind before walking.",
	},
	["victory.w13.tally.088"] = {
		"Too close. Sit, patch, eat, and don't go looking for more trouble until all three are done.",
		"Close call. The rule after a close call: no new trouble until I'm whole.",
	},
	["victory.w13.tally.089"] = {
		"lowers {g:himself|herself} carefully to the ground and starts sorting out which hurt to treat first.",
		"sinks down to sit, unrolls a bandage, and begins with the worst of it.",
	},
	["victory.w13.tally.090"] = {
		"That got far too close. Next time I step out sooner, not later.",
		"I stayed in too long. Back off sooner next time; pride heals slower than cuts.",
	},
	["victory.w13.tally.091"] = {
		"I'll need a moment. And a bandage. And possibly a new everything.",
		"Status: upright, leaking slightly, open to suggestions.",
	},
	["victory.w13.tally.092"] = {
		"Everyone check your kit. Speak up now if something's broken, not later.",
		"Gear check, all of you. Better to find the torn strap here than in the next fight.",
	},
	["victory.w13.tally.093"] = {
		"Water, bandages, a short sit. Then we move. Nobody wanders off.",
		"Patch up quick. We leave when the last one's ready.",
	},
	["victory.w13.tally.094"] = {
		"Before anything else, look at the others. Someone's hiding a limp; someone always is.",
		"Count the others, then count their scrapes. Mine can wait a minute.",
	},
	["victory.w13.tally.095"] = {
		"looks over each of the others in turn, checking for limps before saying a word.",
		"passes a waterskin to the nearest companion and waits to have it back.",
	},
	["victory.w13.weight.001"] = {
		"You wanted to live as much as I did. That's the whole of it.",
		"Same wish on both sides: to walk away from it. Only mine was granted.",
		"Two wishes for the same thing. Only one could come true.",
	},
	["victory.w13.weight.002"] = {
		"Nothing in me feels victorious. Only like what was left over.",
		"Winning is a big word for this. I'm what remained when the fighting stopped.",
		"Call it a win if you like. To me it feels like being the leftover.",
	},
	["victory.w13.weight.003"] = {
		"lowers {g:his|her} head toward the fallen and lets a moment pass without a word.",
		"goes quiet over the spot where the fight ended, chin down, before moving on.",
	},
	["victory.w13.weight.004"] = {
		"If you'd turned your back, I'd have let you go. I want you to know that.",
		"There was a way out of this for you. I'd have left it open.",
		"Running would have been fine by me. I'd not have followed.",
	},
	["victory.w13.weight.005"] = {
		"When my turn comes, I hope whoever's left standing pauses like this.",
		"Someday I'll be the one who doesn't get up. I hope the one who does is gentle about it.",
		"May whoever finishes me stop a moment after. That's all I'd ask.",
	},
	["victory.w13.weight.006"] = {
		"Don't let this turn ordinary. Don't you dare.",
		"The day this feels like nothing, I stop. That's the rule.",
		"If it ever stops weighing anything, something in me has gone bad.",
	},
	["victory.w13.weight.007"] = {
		"I'd rather it hadn't come to this. It came anyway, and I answered it.",
		"Not something I went looking for. But it found me, and I didn't turn away.",
	},
	["victory.w13.weight.008"] = {
		"May what comes next sit lightly on you. I'll speak no ill of you.",
		"Whatever waits past this, may it be gentler than I was.",
		"Let what lies beyond be kind to you. Kinder than this hour.",
	},
	["victory.w13.weight.009"] = {
		"A moment ago there were two lives in this. Now there's only mine, and it feels borrowed.",
		"Alive. I keep turning the word over as if it might be a mistake.",
	},
	["victory.w13.weight.010"] = {
		"looks back once at the fallen, then a second time, longer.",
		"throws the fallen one long look with no anger left in it.",
		"turns to go, stops, and looks back over {g:his|her} shoulder for a while.",
	},
	["victory.w13.weight.011"] = {
		"Nobody wins these. Somebody just loses less.",
		"Won? Lost less. Call it by its name.",
		"Victory. Fancy word for being the one who lost a little less.",
	},
	["victory.w13.weight.012"] = {
		"A single misstep would have turned it around. Mine or the other's. It wasn't mine.",
		"Not courage, not justice. A moment's luck decided it, and it fell my way.",
	},
	["victory.w13.weight.013"] = {
		"If the spirits gather what falls, let them gather this gently.",
		"Whoever keeps watch over the fallen, keep watch over this one too.",
		"If anything tends the fallen, the Light or the spirits, let it come here.",
	},
	["victory.w13.weight.014"] = {
		"Mercy wasn't on offer this time. I'd like to think I'd have given it.",
		"There was no moment for mercy in that. I looked for one.",
		"Mercy needs a moment to live in. That fight never offered one.",
	},
	["victory.w13.weight.015"] = {
		"Sorry. For what it's worth, which isn't much now.",
		"I'm sorry it went like that. I'd say it louder if it helped.",
		"For whatever comfort it brings, and it brings little: I'm sorry.",
	},
	["victory.w13.weight.016"] = {
		"Why does it always have to come to this? I never get an answer, only the next fight.",
		"Someone should ask why fights begin. Never anyone holding a weapon, it seems.",
		"Why always this? No answer. Only the next one.",
	},
	["victory.w13.weight.017"] = {
		"touches two fingers to {g:his|her} brow, a small, private salute to the fallen.",
		"lifts a hand, palm out, toward the fallen: a farewell without words.",
	},
	["victory.w13.weight.018"] = {
		"I don't fight because I like it. Let that be said, here.",
		"Not for the joy of it. Never for that.",
		"Whatever this was, it was never for the pleasure of it.",
	},
	["victory.w13.weight.019"] = {
		"Every fight I walk out of is one fewer between me and the last. I don't know the count.",
		"There's a last fight waiting somewhere. This wasn't it. That's all I ever get to know.",
		"One fewer between me and the last one. No telling how many remain.",
	},
	["victory.w13.weight.020"] = {
		"Alive. No congratulations, please. I'm not sure what I did to earn it.",
		"Got through. Ask me later whether I deserved to.",
	},
	["victory.w13.weight.021"] = {
		"The hush after a fight is the plainest reminder I know: this ends, for everyone.",
		"Everything that lives gets a last fight. I just watched one. Maybe more than one.",
		"All that lives comes to its last fight. Someone's came just now. Not mine.",
	},
	["victory.w13.weight.022"] = {
		"Go on ahead. One of these years I'll follow, and it'll be even.",
		"Lead the way. I'll come too, in time. Nobody stays.",
		"Save me a place. No hurry on my side.",
	},
	["victory.w13.weight.023"] = {
		"Something that wanted to go on living, now doesn't. And the reason is me.",
		"It wanted the next hour as much as I did. I took it.",
		"Somewhere in all that was a will to keep going. I'm the one who ended it.",
	},
	["victory.w13.weight.024"] = {
		"flexes {g:his|her} fingers one by one, looking at them as though they belonged to a stranger.",
		"crouches a moment, very still, as if listening for something that does not come.",
	},
	["victory.w13.weight.025"] = {
		"No anger left. There never is, after. Odd, that.",
		"All that fury, and afterward nothing. Not even dislike.",
		"Funny how the hate drains out first. What's left is just tired and sorry.",
	},
	["victory.w13.weight.026"] = {
		"I tell myself it was needed. Some days I even believe it.",
		"Necessary. I'll keep using that word until it stops sounding thin.",
		"It had to be done. Saying so doesn't make it lighter, only true.",
	},
	["victory.w13.weight.027"] = {
		"Not yet. Not me. Not this time.",
		"Not my turn. Someone's keeping a list, and I'm not on it. For now.",
		"Whoever's calling names, mine wasn't one of them. Not this round.",
	},
	["victory.w13.weight.028"] = {
		"All that lives is lent. Mine was not called in. Not this hour.",
		"Life is a loan, and the lender keeps no schedule I can read.",
		"Borrowed time, all of it. The lender let me keep mine a while longer.",
	},
	["victory.w13.weight.029"] = {
		"murmurs a few low words over the fallen, the kind anyone might say for anyone.",
		"speaks a short word for the fallen, too low to carry, and lets it go.",
	},
	["victory.w13.weight.030"] = {
		"Better if nobody had fallen at all. I mean that.",
		"Two ways a fight can end, and I'd have picked the one where no one falls.",
		"Best fight is the one where everybody walks off. This wasn't that one.",
	},
	["victory.w13.weight.031"] = {
		"Every fight is a coin tossed. This one came down my way, and that's all it was.",
		"Luck has a long memory and short patience. I try not to lean on it.",
		"Heads for me, this time. The coin doesn't care who's calling.",
	},
	["victory.w13.weight.032"] = {
		"Wrong place, wrong moment, on both sides. Only I get to regret it.",
		"Bad luck on both sides. Mine was a shade better.",
	},
	["victory.w13.weight.033"] = {
		"Maybe something waits for that one to come back. Maybe nothing does. I'll never know which.",
		"If anything was waiting on its return, it waits now for nothing.",
	},
	["victory.w13.weight.034"] = {
		"stays very still, as if listening to make sure the world has kept {g:him|her}.",
		"closes {g:his|her} eyes for a few slow counts, then opens them on the world.",
		"stands with eyes shut a moment, like someone checking a door is still locked.",
	},
	["victory.w13.weight.035"] = {
		"I'll remember. That's the most I can give you, and I'm giving it.",
		"I won't learn your name. The fight I'll keep. It's what I have to offer.",
		"Somebody ought to remember you. It may as well be me.",
	},
	["victory.w13.weight.036"] = {
		"It took so little for it to end. That's the part I can't stop looking at.",
		"How little it takes. A moment, a bad step, and a whole life is closed.",
		"So little stands between going on and not. A hair. Less.",
	},
	["victory.w13.weight.037"] = {
		"Walking away's a privilege. I try to remember that.",
		"Walking off afterward is a gift. Not everyone gets one.",
		"Leaving under my own power. Plenty never do. I'll not forget it.",
	},
	["victory.w13.weight.038"] = {
		"There's a part of me that wants to feel nothing after these. I keep it on a short leash.",
		"Some piece of me would like to stop caring. I won't give it the run of the place.",
		"Feeling nothing would be easier. Easier is how it starts.",
	},
	["victory.w13.weight.039"] = {
		"steps carefully around the fallen, as one would around something asleep.",
		"gives the fallen a wide berth, unwilling to tread too near.",
	},
	["victory.w13.weight.040"] = {
		"You'll have to wait for me, Death. I've errands left.",
		"Death, make an appointment. I'm busy.",
		"Not you, Death. Not yet. Go bother someone with less to do.",
	},
	["victory.w13.weight.041"] = {
		"Every life ends somewhere. Mine is still looking for the spot. I won't help it.",
		"My end is out there, choosing its ground. It didn't choose this one.",
	},
	["victory.w13.weight.042"] = {
		"Easy now. It's over. Nothing more's coming from me.",
		"Enough. I'm finished with you. Go wherever you're going.",
		"It's finished between you and me. Let it be finished.",
	},
	["victory.w13.weight.043"] = {
		"Somewhere in me a tally is kept, and it isn't of victories.",
		"What I'm counting isn't wins. I don't know what it is. Something heavier.",
	},
	["victory.w13.weight.044"] = {
		"lets a long moment pass before turning away, the way one leaves a graveside.",
		"takes one slow step back from the fallen, then another, before turning.",
	},
	["victory.w13.weight.045"] = {
		"It had to be someone. It was me. I'll carry it.",
		"Somebody had to. I wasn't going to hand it to anyone else.",
		"Mine to do, mine to carry. No one else's.",
	},
	["victory.w13.weight.046"] = {
		"The Light, the spirits, the Earth Mother: someone must be keeping account. I'd rather not see the ledger.",
		"Many believe something weighs each life. If so, may it weigh gently.",
	},
	["victory.w13.weight.047"] = {
		"Nearly went the other way. I felt it lean.",
		"So that's how close it can come. I didn't need to know.",
		"That was the edge. I've seen it now. I'd rather not have.",
	},
	["victory.w13.weight.048"] = {
		"I was nearly the one left behind. I don't think I'll forget how near.",
		"Half a moment more and someone else would be thinking this. Or no one at all.",
	},
	["victory.w13.weight.049"] = {
		"sinks to one knee and stays there, a hand pressed to the ground as if to hold on to it.",
		"stands on uncertain legs, waiting for the world to stop tilting.",
	},
	["victory.w13.weight.050"] = {
		"Count heads. All here? Then spare a word for the ones on the other side.",
		"All of us walking. Hold on to that. It isn't owed to anyone.",
	},
	["victory.w13.weight.051"] = {
		"Every face I know is still with us. I'll not pretend that's anything but luck.",
		"Nobody of ours missing. On the other side, the count runs different.",
	},
	["victory.w13.weight.052"] = {
		"We fought for each other. Let that be the reason, if anyone asks.",
		"If we had a reason, it was standing right next to us.",
	},
	["victory.w13.weight.053"] = {
		"Something that strong should be remembered by more than me.",
		"A great thing fell here. Whatever else, that's worth a moment's quiet.",
	},
	["victory.w13.weight.054"] = {
		"Something that strong didn't expect to fall. Neither will I, when my time comes.",
		"A greater foe, and a greater quiet after it. I don't know why one follows the other.",
	},
	["victory.w13.weight.055"] = {
		"stands a long while before what fell, as one stands before something that will not come again.",
		"inclines {g:his|her} head, slow and deep, toward the mighty thing that fell.",
	},
	["victory.w13.weight.056"] = {
		"Some bard will make this sound noble one day. It wasn't. It was only this.",
		"If anyone sings of this, they'll leave out the part where something stopped living.",
	},
	["victory.w13.weight.057"] = {
		"I didn't hate it. I want that clear, even if only to myself.",
		"No hatred in it, on my side. Just the fight, and then the end of it.",
		"No grudge on my side. Let the record show that much.",
	},
	["victory.w13.weight.058"] = {
		"Nobody's promised the next hour. I've got this one, and I'll spend it well.",
		"One more hour, unearned. Better make it count for something.",
		"An hour I wasn't owed. I'd best not waste it brooding.",
	},
	["victory.w13.weight.059"] = {
		"The oldest rule there is: one goes on, one stops. Nobody's found a kinder one.",
		"One walks on, one rests. The rule is older than anyone living, and no gentler.",
	},
	["victory.w13.weight.060"] = {
		"rubs {g:his|her} face with both hands, as if to wipe off something that will not come away.",
		"presses the heels of {g:his|her} hands against {g:his|her} eyes for a long moment.",
		"drags both hands down {g:his|her} face and holds them there, unmoving.",
	},
	["victory.w13.weight.061"] = {
		"This wasn't for glory. If it was for anything, let it be for something good.",
		"Let it have been for something. That's all I ask of it.",
		"Glory had nothing to do with it. I hope something better did.",
	},
	["victory.w13.weight.062"] = {
		"I'm alive because of things I didn't choose: a footing, a moment, a stroke of luck.",
		"Half of why I'm alive, I can't take credit for. The other half I'm not proud of.",
	},
	["victory.w13.weight.063"] = {
		"Let the ground take you gently.",
		"Nobody's chasing you anymore. Rest, if you can.",
		"No more hurry for you. Lie easy.",
	},
	["victory.w13.weight.064"] = {
		"Who decided this had to happen? Not me. Not the other side either, I think. Yet it did.",
		"Nobody chose this, not really. It just arrived, the way these things do.",
	},
	["victory.w13.weight.065"] = {
		"takes a moment before moving, eyes lowered, as if waiting for leave to go on.",
		"is slow to turn away, and slower still to take the first step.",
		"lingers, eyes down, longer than the moment strictly needs.",
	},
	["victory.w13.weight.066"] = {
		"I'll take being alive and not ask too many questions of it.",
		"Odd gift, to be handed life by a fight. I'll keep it all the same.",
	},
	["victory.w13.weight.067"] = {
		"If there's a next time, let it end with someone backing away. I'd let them.",
		"I'd always rather someone walked off. Fewer of these quiets to sit in.",
		"Next time, may one side think better of it. I'd not mind if it were the other.",
	},
	["victory.w13.weight.068"] = {
		"Whatever you answered to, the Light or the spirits or nothing at all, go to it now.",
		"Back to whatever made you, then. Whatever it was, it's waiting.",
	},
	["victory.w13.weight.069"] = {
		"There's an emptiness exactly the size of what fell. I can almost see its edges.",
		"The space it filled is still there. Just nothing in it now.",
	},
	["victory.w13.weight.070"] = {
		"lays a palm flat on the ground a moment, as if to feel whether it is still turning.",
		"crouches and presses a hand to the ground, briefly, then rises.",
	},
	["victory.w13.weight.071"] = {
		"Nobody comes out of one of these better than they went in. Out, is all.",
		"Out of it. Not better, not worse. Just out.",
	},
	["victory.w13.weight.072"] = {
		"Only when there's no other way: that's the rule I try to keep. Was there one?",
		"There's always the question: was there another way? I'll keep asking, even when the answer's no.",
		"Was there another way? There's always that question, after.",
	},
	["victory.w13.weight.073"] = {
		"One less in the world. I don't get to be glad about it.",
		"The world's a little emptier. I did that. I'll own it.",
	},
	["victory.w13.weight.074"] = {
		"Whether anyone marks this or not, something ended here, and it mattered.",
		"It mattered. Small, unsung, and it mattered all the same.",
		"No one keeps a record of fights like this one. Something ended in it anyway.",
	},
	["victory.w13.weight.075"] = {
		"stands without moving, with the stillness of one keeping a short vigil.",
		"keeps a brief vigil, unmoving, before letting the world back in.",
	},
	["victory.w13.weight.076"] = {
		"Glad to be alive. Sorry for what it cost. Both at once, somehow.",
		"Relief and regret, in the same mouthful. Odd taste.",
	},
	["victory.w13.weight.077"] = {
		"Every walk ends at the same door. Mine has a few more steps in it. That is all.",
		"There's a door at the end of everything. I passed close enough to read the latch.",
	},
	["victory.w13.weight.078"] = {
		"There. No more pain for you. That much I could give.",
		"It's over for you now. No more hurting.",
		"Whatever hurt you, it can't reach you anymore.",
	},
	["victory.w13.weight.079"] = {
		"Hunger, fear, ground, orders. Fights start for small reasons and end in big ones.",
		"Most fights begin over something small. They all end in something that isn't.",
	},
	["victory.w13.weight.080"] = {
		"Forgive me. Or don't. Either way, I'm sorry.",
		"I'm not asking your pardon. Only saying I'd have liked another way.",
		"If there's pardon to be had, I'll take it. If not, I understand.",
	},
	["victory.w13.weight.081"] = {
		"Some would say a prayer now. A moment of quiet will have to do for this one.",
		"Whatever the faithful say at times like this, let this quiet stand in for it.",
	},
	["victory.w13.weight.082"] = {
		"Let it be on me, not on anyone who comes after.",
		"Mine to bear. Better me than someone with less to spare.",
		"Put it on my account. Nobody else has to pay this one.",
	},
	["victory.w13.weight.083"] = {
		"sits down heavily where {g:he|she} stands and looks at the place of the fight for a long while.",
		"lowers {g:himself|herself} to the ground and stays there, elbows on knees, quiet.",
		"sits where {g:he|she} is, and for a while does nothing at all.",
	},
	["victory.w13.weight.084"] = {
		"Every life I see end makes my own look smaller and dearer at once.",
		"Funny how losing one makes the other worth more. Mine, I mean.",
	},
	["victory.w13.weight.085"] = {
		"Didn't want it. Finished it all the same. Both are mine to keep.",
		"Wanted it or not, it's finished, and it's mine to answer for.",
	},
	["victory.w13.weight.086"] = {
		"I'll forget this one. That's what bothers me most: how many I'll forget.",
		"In a week this will be one fight among many. It deserves better than that, and won't get it.",
	},
	["victory.w13.weight.087"] = {
		"What lives, ends. What ends is remembered, or is not. Go, either way.",
		"Living ends. That was never in question. Only the when.",
	},
	["victory.w13.weight.088"] = {
		"I won't make a story of this. It doesn't belong to me enough to tell.",
		"Some things aren't mine to boast of. This is one of them.",
		"Not a tale for the fireside, this. I'll keep it to myself.",
	},
	["victory.w13.weight.089"] = {
		"pauses, then gives a slight bow toward what fell, the kind one gives an equal.",
		"offers a small, stiff bow in the direction of the fallen, unhurried and plain.",
	},
	["victory.w13.weight.090"] = {
		"Too close. I could feel the end reaching for me.",
		"Something put a hand on my shoulder just then. I didn't turn to see what.",
		"That near to the end, and it let go. I'll not waste what it gave back.",
	},
	["victory.w13.weight.091"] = {
		"Whatever kept me standing, the Light or luck or plain stubbornness, I owe it something.",
		"A debt was run up just now. I don't know to whom, but I mean to pay it.",
	},
	["victory.w13.weight.092"] = {
		"Before we go: a moment for what fell. It's the least we owe.",
		"We go on. They don't. Take a moment on that before moving.",
	},
	["victory.w13.weight.093"] = {
		"My hands are steady. I'd almost rather they shook. It would seem more decent.",
		"Steady hands after that. I don't know what that says about me.",
	},
	["victory.w13.weight.094"] = {
		"Let that be the last one for a while. Please.",
		"Enough for a while. I mean it, whoever's listening.",
	},
	["victory.w13.weight.095"] = {
		"touches {g:his|her} own chest, then {g:his|her} face, as if making sure of {g:himself|herself}.",
		"runs a hand slowly along {g:his|her} arm, the way one checks that something is still there.",
		"lays a hand on {g:his|her} own shoulder, briefly, almost kindly.",
	},
	["victory.w13.wit.001"] = {
		"Let the record show I won. Let it not show how.",
		"Write it down: victory. Leave the details blank, please.",
		"For the chronicle: I prevailed. Method withheld.",
	},
	["victory.w13.wit.002"] = {
		"Thank you for coming. Please don't come back.",
		"Thanks for stopping by. The way out is anywhere but here.",
		"Lovely visit. Let's not repeat it.",
	},
	["victory.w13.wit.003"] = {
		"I'll be accepting compliments now. From anyone. Anything.",
		"Compliments may be left at my feet. Whenever suits.",
		"Admiration is welcome. I'm not fussy about the source.",
	},
	["victory.w13.wit.004"] = {
		"Very educational. For somebody, anyway.",
		"A lesson for both parties, there. I'm just not sure what it was.",
	},
	["victory.w13.wit.005"] = {
		"I'd like to file a complaint. With whom, I've no idea.",
		"Somebody owes me an apology. I'll accept it from anyone.",
		"Who's in charge of all this? I have notes.",
	},
	["victory.w13.wit.006"] = {
		"Farewell. No need to keep in touch.",
		"Goodbye, then. Let's not make a habit of this.",
		"Off you go, then. Don't bother writing.",
	},
	["victory.w13.wit.007"] = {
		"Is it over? It feels over. I'm calling it over.",
		"I hereby declare this concluded. Objections in writing.",
		"Over? Over. Good. It was starting to bore me.",
	},
	["victory.w13.wit.008"] = {
		"Lovely. Truly. I'll skip the second helping.",
		"A memorable experience. I'd prefer not to repeat it in full.",
		"Thank you, no. One serving was quite sufficient.",
	},
	["victory.w13.wit.009"] = {
		"Nobody needs to know how that went. Not even me.",
		"How it went is a private matter between me and my bruises.",
	},
	["victory.w13.wit.010"] = {
		"So. Anyone else? No? Wonderful.",
		"Any further business? None? Then this meeting is closed.",
		"Next, please. Nobody? How restful.",
	},
	["victory.w13.wit.011"] = {
		"Every move was deliberate. Some were deliberately bad.",
		"I meant all of that. Especially the bits that worked.",
		"Pure technique. Some of it mine.",
	},
	["victory.w13.wit.012"] = {
		"I'm fine. Parts of me are fine. Some parts.",
		"Fine, fine. I'll just lie down a moment and go on being fine.",
		"Don't fuss. Most of me is still here.",
	},
	["victory.w13.wit.013"] = {
		"Won. On points. Very few points.",
		"A victory, technically. And 'technically' is working very hard there.",
		"Won by a whisker. A thin, scruffy whisker.",
	},
	["victory.w13.wit.014"] = {
		"Well fought. Whoever was shrieking, that was not me.",
		"Good work, all. Nobody tell me what my face was doing.",
	},
	["victory.w13.wit.015"] = {
		"Excellent teamwork. I assume. I wasn't watching any of you.",
		"Lovely coordination, everyone. Mostly by accident, I suspect.",
	},
	["victory.w13.wit.017"] = {
		"No hard feelings. Well. Some. Small ones.",
		"I bear no grudge. A modest grievance, perhaps. Pocket-sized.",
		"Nothing personal. Fairly personal, actually. Moving on.",
	},
	["victory.w13.wit.018"] = {
		"Splendid. I was headed somewhere before all that. Somewhere.",
		"Excellent. I had a plan before all that. It's gone now.",
		"Lovely. What was I doing before the interruption?",
	},
	["victory.w13.wit.019"] = {
		"Steady now. You won. Act like it.",
		"Composure, please. You're the victor here. Look the part.",
		"Chin up. Victors don't slouch. Much.",
	},
	["victory.w13.wit.020"] = {
		"Somebody fetch a chronicler. A cheap one.",
		"Have it written up as a heroic deed. A short one.",
	},
	["victory.w13.wit.021"] = {
		"Thank you, thank you. Hold the applause.",
		"Please, no applause. Or some. A little would be nice.",
		"Too kind, too kind. Nobody's said anything, but too kind.",
	},
	["victory.w13.wit.022"] = {
		"Could have used more dignity and fewer elbows.",
		"Next time: same result, fewer elbows.",
	},
	["victory.w13.wit.023"] = {
		"I have won. Someone ring something.",
		"Victory! Ring a bell, somebody. Any bell. Fine, I'll hum.",
	},
	["victory.w13.wit.024"] = {
		"Not my finest work. Possibly not even work.",
		"A masterpiece it wasn't. A rough sketch, at best.",
		"Effective. Pretty, it was not.",
	},
	["victory.w13.wit.025"] = {
		"Enough of that, thank you. Truly, plenty.",
		"I've had my fill of that, thanks. No more for me.",
	},
	["victory.w13.wit.026"] = {
		"Call it even. You won't, but I will.",
		"Pleasure doing business. Mostly mine.",
		"Even, then. By my count, not yours.",
	},
	["victory.w13.wit.027"] = {
		"Ow. Victory. Ow.",
		"Victorious, certainly. Emotionally, I'm in several pieces.",
	},
	["victory.w13.wit.028"] = {
		"Who had money against me? Pay up. You lost.",
		"Anyone who bet I'd go down first owes the rest of us.",
	},
	["victory.w13.wit.029"] = {
		"Ha. Ha ha. Yes. I'll stop now.",
		"Heh. Sorry. It's the nerves. They find this hilarious.",
	},
	["victory.w13.wit.030"] = {
		"This will not be spoken of. By me, at least.",
		"Consider that unrecorded. Officially, I was elsewhere.",
		"That goes in the drawer of things I don't discuss.",
	},
	["victory.w13.wit.031"] = {
		"Ah, the glamour of adventure.",
		"This is the bit nobody puts in the recruiting speeches.",
		"Adventure and glamour. One of the two showed up.",
	},
	["victory.w13.wit.032"] = {
		"Anything else? I'm in the mood now.",
		"More, was it? I've warmed to the idea.",
	},
	["victory.w13.wit.033"] = {
		"And they said I'd never amount to anything. Nobody said it. Still.",
		"Who doubted me? Nobody? Fine. I'll gloat at nobody, then.",
	},
	["victory.w13.wit.034"] = {
		"Credit where due: you tried. Credit stops there.",
		"You were very persistent. I'll grant you that and nothing more.",
		"Points for effort. None for the outcome.",
	},
	["victory.w13.wit.035"] = {
		"I must look a fright. Don't tell me. I can feel it.",
		"Is my face on straight? It feels like it's on sideways.",
	},
	["victory.w13.wit.036"] = {
		"Sorry about the shouting. All of it was strictly necessary.",
		"Pardon the noise. I'm told it helps.",
		"The yelling was tactical. Most of it.",
	},
	["victory.w13.wit.037"] = {
		"You owe me a nap. I'll collect it myself.",
		"My nerves would like a word with you. Several words.",
	},
	["victory.w13.wit.038"] = {
		"Splendid work, me. I'll be thanking myself in person.",
		"Nicely done. Modesty forbids me to say more. Modesty is outvoted.",
		"My compliments to me. Sincerely meant.",
	},
	["victory.w13.wit.039"] = {
		"If that's heroism up close, the songs are very generous.",
		"The songs leave out the flailing. I can see why now.",
		"Nobody sings the part where you're just trying not to drop things.",
	},
	["victory.w13.wit.040"] = {
		"Victory achieved. Dignity pending.",
		"Won. Dignity to follow, at its own pace.",
	},
	["victory.w13.wit.041"] = {
		"At some point in there I made a noise I will never admit to.",
		"There was a sound in the middle of that. Not a brave sound. Mine.",
		"Something squeaked in there. It stays between me and the squeak.",
	},
	["victory.w13.wit.042"] = {
		"My plan was to win. Plan complete. I'm a tactician.",
		"Strategy: come out on top. Execution: flawless, if you squint.",
		"Tactics: keep at it until it stops. Genius, really.",
	},
	["victory.w13.wit.043"] = {
		"My kit looks like it lost. I'll explain otherwise.",
		"Everything I'm wearing sits a little crooked now. So does the wearer.",
	},
	["victory.w13.wit.044"] = {
		"I'd tell them about it back home, but I'd have to explain the middle.",
		"Worth a story, if I skip the part where it got untidy.",
	},
	["victory.w13.wit.045"] = {
		"My face is doing something. I'd rather not know what.",
		"There ought to be a word for the face I'm making. Not a kind one.",
		"I'm making the face. The one I'd rather not see.",
	},
	["victory.w13.wit.046"] = {
		"Something aches. My pride, however, is doing splendidly.",
		"A few sore spots. None of them on my ego.",
	},
	["victory.w13.wit.047"] = {
		"Verdict on fighting, after due thought: still not a fan.",
		"It's over, and my opinion of fights hasn't budged. Low, and holding.",
		"Fighting: still overrated.",
	},
	["victory.w13.wit.048"] = {
		"Passed, I think. The examiner left without comment.",
		"If that was a test, I'd like to see the marks before I celebrate.",
	},
	["victory.w13.wit.049"] = {
		"Rule one: win. Rule two: look as if I meant to. Halfway there.",
		"Winning, done. Looking effortless about it, still in progress.",
	},
	["victory.w13.wit.050"] = {
		"I'd celebrate, but I'd have to stand up straight first.",
		"Celebrations are postponed until my spine agrees to them.",
		"Triumph. Any moment now I'll look triumphant.",
	},
	["victory.w13.wit.051"] = {
		"Out there, people are sitting in chairs doing nothing. Lucky them.",
		"Someone, somewhere, is having a dull and peaceful moment. I envy them.",
	},
	["victory.w13.wit.052"] = {
		"Won by stubbornness. Not glamorous. Effective.",
		"My chief contribution was refusing to stop. It counts.",
		"Stubbornness: undefeated, if not admired.",
	},
	["victory.w13.wit.053"] = {
		"Whatever you were, your timing was terrible.",
		"Wrong moment, wrong person. Bad luck all round, mostly yours.",
		"Of all the moments to cross my path, you chose that one.",
	},
	["victory.w13.wit.054"] = {
		"Thrilling, they call it. I'd call it a strong case for chairs.",
		"I'm told this part should feel exhilarating. It feels like wanting a chair.",
	},
	["victory.w13.wit.055"] = {
		"Heroism: ninety parts nerve, ten parts not falling over.",
		"Half of bravery is simply staying upright. I managed that half.",
	},
	["victory.w13.wit.056"] = {
		"Everything seems to be attached. I'll do a proper count later.",
		"Close enough to read the small print. I didn't care for the small print.",
		"Inventory: me, mostly. Details to follow.",
	},
	["victory.w13.wit.057"] = {
		"Note: getting hit is less fun than the alternative.",
		"I've learned something about taking blows. Chiefly that I'm against it.",
	},
	["victory.w13.wit.058"] = {
		"We won. I'll let the others think it was their idea.",
		"My part: stand where I was told. Crucial, I'm sure.",
		"Victory by committee. I was on the committee.",
	},
	["victory.w13.wit.060"] = {
		"Special thanks to my knees, which mostly cooperated.",
		"Thanks to my left foot. My right foot knows what it did.",
		"My feet did their best. Their best was uneven.",
	},
	["victory.w13.wit.061"] = {
		"In the official version, I was magnificent.",
		"I'll be editing that one before I tell it. Heavily.",
		"When I tell it, there'll be more grace in it. A lot more.",
	},
	["victory.w13.wit.062"] = {
		"Of all the ways to spend a moment, not in my top ten.",
		"I've had better moments, and worse. I'd like a duller one next.",
	},
	["victory.w13.wit.063"] = {
		"Who decides these things happen to me? I'd like a word.",
		"There must be an office that arranges my fights. It's badly run.",
	},
	["victory.w13.wit.064"] = {
		"Courage, they say, is doing it anyway. Very courageous. Very reluctant.",
		"Brave, yes. Willing, not especially.",
	},
	["victory.w13.wit.065"] = {
		"Some warning would have been polite. I'll mention it to nobody.",
		"No notice, no introductions. Shocking manners all round.",
		"Not even a hello first. The manners on some things.",
	},
	["victory.w13.wit.066"] = {
		"And for my next trick: standing very still and complaining.",
		"Next on the program: a long sit and a short grumble.",
	},
	["victory.w13.wit.067"] = {
		"Victory tastes of embarrassment and a little relief.",
		"Triumph, they call it. Mine has a faintly sheepish flavor.",
	},
	["victory.w13.wit.068"] = {
		"That counts as a story, I suppose. Short, with no good lines.",
		"If it's a tale, it's a thin one. Nobody will ask for it twice.",
		"A story, yes. The kind listeners wander off from halfway.",
	},
	["victory.w13.wit.069"] = {
		"Hero, provisionally. Pending review.",
		"I'll call myself a hero until somebody corrects me.",
		"Hero, until further notice.",
	},
	["victory.w13.wit.070"] = {
		"If anyone asks, calm never left me for a moment.",
		"Cool and collected throughout. That's how I'll remember it, true or not.",
		"Unflappable. That's the word I'll use. Nobody can prove otherwise.",
	},
	["victory.w13.wit.071"] = {
		"There's something in my ear. I don't want to know what.",
		"Something got into my collar during all that. It's staying out of spite.",
	},
	["victory.w13.wit.072"] = {
		"On reflection, I'd have preferred a strongly worded letter.",
		"A firmly raised eyebrow would have been my first choice.",
		"A polite note would have done. Or a cough.",
	},
	["victory.w13.wit.073"] = {
		"I lost a perfectly good thought in all that. It was about food.",
		"I was thinking of something pleasant before that. Gone. Thanks so much.",
	},
	["victory.w13.wit.074"] = {
		"Now the tricky part: walking off as if it were nothing.",
		"Next challenge: a casual exit. Nobody saw anything. Least of all me.",
	},
	["victory.w13.wit.075"] = {
		"I should charge admission. Then again, who would pay?",
		"Quite a show. The ticket sales, sadly, were nil.",
	},
	["victory.w13.wit.076"] = {
		"My quota of excitement is full. Please send boredom.",
		"That's enough thrills to last me a while. I'll take some tedium now.",
		"Excitement: received in full. No more needed, thanks.",
	},
	["victory.w13.wit.077"] = {
		"Survived, with minor damage to my opinion of myself.",
		"All in one piece. My self-esteem took a small dent.",
	},
	["victory.w13.wit.078"] = {
		"bows to nobody in particular, and nobody bows back.",
		"offers a small bow to the empty air, then frowns at its poor manners.",
		"makes a small bow to the world at large, which takes no notice.",
	},
	["victory.w13.wit.079"] = {
		"checks every piece of gear, finds it all present, and seems faintly let down.",
		"pats down {g:his|her} kit and finds nothing missing, which seems to spoil a good complaint.",
	},
	["victory.w13.wit.080"] = {
		"straightens up with great dignity, which lasts until the next step.",
		"assumes a noble posture and holds it for almost a full moment.",
		"stands tall with great ceremony, then settles a little lower.",
	},
	["victory.w13.wit.081"] = {
		"glances around, as if hoping someone saw. Or hoping nobody did.",
		"checks for witnesses with an expression that could go either way.",
	},
	["victory.w13.wit.082"] = {
		"nods once at the empty space where trouble used to be.",
		"gives the spot where the trouble stood a curt little nod of dismissal.",
	},
	["victory.w13.wit.083"] = {
		"raises a hand in farewell to the fight, as to a guest who overstayed.",
		"waves the fight goodbye, politely, the way one sees off a tiresome visitor.",
	},
	["victory.w13.wit.084"] = {
		"fishes a small, unexplained object out of {g:his|her} gear and eyes it with suspicion.",
		"shakes out a sleeve, frowns at what falls from it, and decides not to ask.",
	},
	["victory.w13.wit.085"] = {
		"mutters a complaint to no one, in some detail.",
		"starts to grumble, thinks better of it, and grumbles anyway.",
		"lists a few grievances to nobody, counting them off on {g:his|her} fingers.",
	},
	["victory.w13.wit.086"] = {
		"tidies {g:his|her} gear with exaggerated care, like a host after unwelcome guests.",
		"straightens every strap with fussy precision, as if company might call.",
	},
	["victory.w13.wit.087"] = {
		"pats {g:himself|herself} down, counting, and the count comes out right.",
		"does a quick inventory of limbs and looks pleased with the total.",
	},
	["victory.w13.wit.088"] = {
		"regards {g:his|her} own hands like a prize handed over by mistake.",
		"looks at {g:his|her} hands with mild surprise, as if they had acted without asking.",
	},
	["victory.w13.wit.089"] = {
		"attempts a heroic pose, holds it, and lets it go with a shrug.",
		"strikes a triumphant stance, finds nobody admiring it, and gives it up.",
		"tries for a victorious look, gets about halfway, and settles for that.",
	},
	["victory.w13.wit.090"] = {
		"clears {g:his|her} throat as if for a speech, then thinks better of it.",
		"draws {g:himself|herself} up to say something memorable, and says nothing at all.",
	},
	["victory.w13.wit.091"] = {
		"inspects the damage sternly, as though it could be told off.",
		"gives each new bruise a disapproving look, one at a time and at length.",
		"lists the new aches aloud, in order of rudeness.",
	},
	["victory.w13.wit.092"] = {
		"gives the others a nod that means well done, and forget what you saw.",
		"shares a look with the others that says nobody mentions the middle part.",
	},
	["victory.w13.wit.094"] = {
		"brushes off {g:his|her} shoulders with ceremony, though there is nothing on them.",
		"flicks an imaginary speck off {g:his|her} sleeve with great formality.",
		"adjusts an imaginary crown, then remembers there isn't one.",
	},
	["victory.w13.wit.095"] = {
		"taps a foot, waiting for something else to happen. Nothing does.",
		"waits a moment for an encore that never comes, and seems relieved.",
		"glances about, half expecting applause, half expecting more trouble. Neither arrives.",
	},
	["victory.w13.wit.096"] = {
		"surveys the aftermath like someone reading an unexpected bill.",
		"considers the whole affair with the face of someone tasting a bad soup.",
		"takes in the scene with the patience of someone who will complain later.",
	},
	["lowhp.w14.fade.001"] = {
		"Everything past arm's reach has gone soft. Arm's reach will have to do.",
		"The edges blur. Whatever is right in front of me stays sharp. Keep it there.",
		"Past my reach, the world's gone to smudges. Inside it, I can still work.",
	},
	["lowhp.w14.fade.002"] = {
		"The noise of the fight has moved somewhere else. No. It hasn't. I have.",
		"Sounds are arriving late, like news from a long way off. Listen anyway.",
		"Muffled. All of it, muffled. Listen harder.",
	},
	["lowhp.w14.fade.003"] = {
		"Fear can sit in the corner. It doesn't get a vote.",
		"I'm afraid. Noted. Now give the hands something useful to do.",
		"Let the fear shout. I'm the one holding the reins.",
	},
	["lowhp.w14.fade.004"] = {
		"What's left: two legs, two hands, one head. Use the head first.",
		"Inventory. Legs work. Hands work. Eyes, mostly. Enough to choose with.",
		"What still answers? Feet, yes. Grip, yes. Head, sort of. Go.",
	},
	["lowhp.w14.fade.005"] = {
		"Footing first. A fall now costs more than any hit.",
		"Watch the ground. Don't trip over something stupid now, of all moments.",
		"Feet under me. Everything else comes after that.",
	},
	["lowhp.w14.fade.006"] = {
		"So this is the edge. No trumpets, no voices. Only a great deal of tiredness.",
		"Dying, if that's what this is, looks a lot like being very tired. Tired I can manage.",
		"Is this what the edge is? Just a long, heavy tiredness?",
	},
	["lowhp.w14.fade.007"] = {
		"There's a loose buckle on my gear. Of all things to notice right now.",
		"Something in my eye, on top of everything. Now. Naturally, now.",
		"My nose itches. Wonderful. That's the problem I needed.",
	},
	["lowhp.w14.fade.008"] = {
		"The fight has become very small: this patch of ground, this moment, the next move.",
		"Nothing exists past the next move. Good. Fewer things to get wrong.",
		"The whole world is three paces wide now. Mind those three paces.",
	},
	["lowhp.w14.fade.009"] = {
		"Strange how clear it gets. Every choice laid out, plain as tools on a bench.",
		"Clear-headed, suddenly. Danger does that. Use it before it wears off.",
		"Fear has swept the clutter out of my head. Good. Room to think.",
	},
	["lowhp.w14.fade.010"] = {
		"My hands are shaking. Let them. They can shake and still do the work.",
		"Shaking hands. Doesn't matter. A shaking hand still closes.",
	},
	["lowhp.w14.fade.011"] = {
		"Panic wants me to run in any direction. If I run, pick one, at least.",
		"If I go, I go somewhere. Not merely away.",
	},
	["lowhp.w14.fade.012"] = {
		"Every road has its last mile. I'd like to think this isn't mine.",
		"Everyone walks up to the same door eventually. I'm in no hurry to knock.",
		"That door opens for every mortal. It needn't open for me yet.",
	},
	["lowhp.w14.fade.013"] = {
		"My legs have stopped asking my opinion. Ask them nicely.",
		"Knees, listen. Not now. Later you can fold all you like.",
		"My feet have their own ideas about staying put. Overrule them.",
	},
	["lowhp.w14.fade.014"] = {
		"A high thin ringing, and everything else behind it. Watch, then. Eyes still work.",
		"Can't hear much past the ringing. Fine. Watch instead.",
		"My ears are full of a long, thin whine. Let it whine. Keep looking.",
	},
	["lowhp.w14.fade.015"] = {
		"Too many thoughts. Throw them all out but one. The useful one.",
		"One clear thought. Just one. Find it and keep it close.",
		"Quiet, all of you. I need to hear the one thought that matters.",
	},
	["lowhp.w14.fade.016"] = {
		"Everything's slowed down. Or I've sped up. Either way, there's time to think.",
		"Time has gone thick as honey. Use the extra moment.",
		"Every moment stretches long. Strange gift. Take it.",
	},
	["lowhp.w14.fade.017"] = {
		"Someone would want to know how this ended. Give them a better ending to hear.",
		"Somewhere, someone expects me back. That's worth one more effort.",
		"There are people who'd miss me. Odd thing to remember now. Useful, though.",
	},
	["lowhp.w14.fade.018"] = {
		"There's a small voice saying lie down. It is very convincing. It is wrong.",
		"Part of me wants to stop. That part doesn't get to steer.",
		"Something inside is whispering that it's fine to stop. It isn't fine.",
	},
	["lowhp.w14.fade.019"] = {
		"Health: very little. Options: a few. Dignity: long gone. Proceed.",
		"Status report: bad. Further report: still able to make reports.",
		"Assessment: alarming. Second assessment: still assessing, so not done.",
	},
	["lowhp.w14.fade.020"] = {
		"I could die here. There. Said it. It's smaller now.",
		"Death is close enough to name. Naming it doesn't bring it closer.",
		"It might end here. Fine. Now that's out of the way, work.",
	},
	["lowhp.w14.fade.021"] = {
		"Everything I am has come down to the next few moments. Spend them well.",
		"Whatever I have left fits in my two hands. Use both.",
		"All of me, down to a handful of moments. Don't waste a single one.",
	},
	["lowhp.w14.fade.022"] = {
		"Where's room to move? Where's cover? Look, quickly.",
		"Gaps. Ways out. Anything that isn't straight ahead. Look.",
		"Find the open side. There's always an open side.",
	},
	["lowhp.w14.fade.023"] = {
		"The ground keeps tilting. It isn't. I am. Lean against it.",
		"Everything leans to the left. Lean right, then.",
	},
	["lowhp.w14.fade.024"] = {
		"I'm frightened. Good. Frightened people pay attention.",
		"Fear's here. Let it sharpen me instead of hollowing me out.",
		"This fear has a use. It keeps me awake. Let it.",
	},
	["lowhp.w14.fade.025"] = {
		"My arms weigh twice what they did. Lift them anyway.",
		"Everything's heavy. Hands, head, eyelids. Carry it a little longer.",
		"Lead in the arms, sand in the eyes. Move regardless.",
	},
	["lowhp.w14.fade.026"] = {
		"Nobody writes songs about this part. The part where it simply hurts.",
		"In the tales, this is where someone says something fine. I've nothing fine. Only stubbornness.",
	},
	["lowhp.w14.fade.027"] = {
		"Distance. Get some distance, then think.",
		"Step out of reach. Everything is easier a few paces away.",
		"Too close to all of it. A few steps back, then decide.",
	},
	["lowhp.w14.fade.028"] = {
		"I can hear my own teeth grinding. Didn't know they did that.",
		"Funny, what you notice. There's a scratch on my sleeve I'd never noticed.",
		"There's a button on the ground. Why am I looking at a button?",
	},
	["lowhp.w14.fade.029"] = {
		"Don't count the hurts. Counting makes them louder.",
		"Know how bad it is. Then ignore how bad it is.",
		"Don't look down at it. It will still be there later. Look up.",
	},
	["lowhp.w14.fade.030"] = {
		"Down to the dregs. The dregs will do.",
		"Not much left in the cup. Drink what there is.",
		"Scraping the bottom of the pot. There's still a spoonful.",
	},
	["lowhp.w14.fade.031"] = {
		"How small a person gets, at the edge. Small enough to slip away, maybe.",
		"I'm a small thing right now. Small things are hard to catch.",
	},
	["lowhp.w14.fade.032"] = {
		"Gently. You can manage this. Or part of it. Part is a lot.",
		"Kind and quick, both at once. It can be done.",
		"It's all right to be scared. Just be scared and quick.",
	},
	["lowhp.w14.fade.033"] = {
		"The colors have gone thin, like old cloth. Squint. Keep going.",
		"Everything looks washed out. My eyes are giving up before I do.",
		"Gray creeping into everything. Eyes, stay with me.",
	},
	["lowhp.w14.fade.034"] = {
		"Survive first. Win if I can. Look good never.",
		"Stay alive. That's the whole plan. It's a good plan.",
		"Plan, in full: don't die. Details to follow.",
	},
	["lowhp.w14.fade.035"] = {
		"Every life is a small flame. Mine is guttering. Guttering is not out.",
		"A flame low on the wick still burns. Mind the wick.",
	},
	["lowhp.w14.fade.036"] = {
		"Sleep sounds wonderful. Sleep is a liar right now.",
		"A great soft tiredness, offering to take over. No, thank you.",
		"Lie down, says everything. Everything is wrong.",
	},
	["lowhp.w14.fade.037"] = {
		"My stomach's gone to water. The rest of me hasn't. Lead with the rest.",
		"Hollow inside. Doesn't matter. Hollow things still stand.",
		"My insides have turned to jelly. My outsides can still work.",
	},
	["lowhp.w14.fade.038"] = {
		"There are things I never said to people I won't name. Later. Survive first.",
		"Funny which faces come to mind. Put them away. Look at what's in front of me.",
	},
	["lowhp.w14.fade.039"] = {
		"Trade ground for time. Ground's cheap. Time isn't.",
		"Give a step, gain a moment. Fair bargain.",
		"Every step back buys a moment. Spend the moments wisely.",
	},
	["lowhp.w14.fade.040"] = {
		"Keep the pieces together a little longer. Then fall apart properly.",
		"Don't come undone here. Afterward, in private, as much as you like.",
		"Fall apart later. There'll be time. Not now.",
	},
	["lowhp.w14.fade.041"] = {
		"It would be such an ordinary way to go. That alone is reason enough not to.",
		"Too plain an ending. I'd like a better one, much further on.",
		"What a dull ending this would make. Refuse it on taste alone.",
	},
	["lowhp.w14.fade.042"] = {
		"It's like watching through a keyhole. Then pick from what's in the keyhole.",
		"My view's gone narrow as a slit. What I need is still inside it.",
	},
	["lowhp.w14.fade.043"] = {
		"Terror, it turns out, makes very clear lists. Item one: move.",
		"Fear is a terrible friend and an excellent clerk. Every danger, neatly listed.",
		"Fright makes a fine sergeant. Shouts, but always the right order.",
	},
	["lowhp.w14.fade.044"] = {
		"Last one more moment. And then the one after it. That's all enduring is.",
		"Last a little. Then last a little more. Stack them up.",
		"Endure this moment. The next one will ask the same. Answer it too.",
	},
	["lowhp.w14.fade.045"] = {
		"Everything hurts in one voice now. A choir is easier to ignore than a soloist.",
		"The pain has spread everywhere at once. At least it isn't pointing anywhere.",
		"Pain everywhere, so loud it's become a hum. Work over the hum.",
	},
	["lowhp.w14.fade.046"] = {
		"I haven't finished being myself. There's more of me to do.",
		"Too much of my life still lies ahead. That's not a feeling. It's a plan.",
	},
	["lowhp.w14.fade.047"] = {
		"That lurch in the gut. That's when it turned serious. Act like it.",
		"Ah. That's the real fear arriving. Thank it, and work.",
		"There it is, the moment it all turns real. Good. Real can be worked with.",
	},
	["lowhp.w14.fade.048"] = {
		"Forget the whole fight. What's the very next thing? Do that.",
		"Next move. Only the next move. The rest can wait in line.",
		"Small. Think small. One task, finished, then the next one.",
	},
	["lowhp.w14.fade.049"] = {
		"The ground waits for everyone, patient as stone. It can wait a while longer for me.",
		"Earth takes all things back in the end. It has no need to hurry.",
		"The ground is very patient. I'll ask it to be patient a while more.",
	},
	["lowhp.w14.fade.050"] = {
		"So that's what badly hurt feels like from the inside. Very educational.",
		"Lesson learned: this hurts. Lesson two pending.",
		"Found the limit. It's here. Interesting. Step back from it.",
	},
	["lowhp.w14.fade.051"] = {
		"Thoughts are coming slowly, one by one, like stragglers. Wait for the right one.",
		"My head's full of wool. Pull one thread. Follow it.",
		"Thinking through mud. Fine. Mud can be walked through.",
	},
	["lowhp.w14.fade.052"] = {
		"sways where {g:he|she} stands, then catches {g:himself|herself} on nothing.",
		"lists sideways like a badly loaded cart, and rights {g:himself|herself} with a jolt.",
	},
	["lowhp.w14.fade.053"] = {
		"squints, as though the fight had suddenly moved a long way off.",
		"narrows {g:his|her} eyes against a blur only {g:he|she} can see.",
		"peers ahead as if through smoked glass.",
	},
	["lowhp.w14.fade.054"] = {
		"looks down at {g:his|her} own hands for a moment, as if checking they are still there.",
		"flexes {g:his|her} fingers one by one, counting them.",
		"opens and closes one fist, slowly, testing whether it still answers.",
	},
	["lowhp.w14.fade.055"] = {
		"feels {g:his|her} knees start to fold, and locks them through sheer stubbornness.",
		"buckles at the knees, and somehow the buckle stops halfway.",
	},
	["lowhp.w14.fade.056"] = {
		"shakes {g:his|her} head hard, like someone trying to wake from a bad dream.",
		"gives {g:his|her} head a sharp shake, and the world settles back, slightly askew.",
		"jerks {g:his|her} head up, as though someone had called {g:his|her} name.",
	},
	["lowhp.w14.fade.057"] = {
		"tilts {g:his|her} head, as if the sounds of the fight had gone muffled behind a door.",
		"seems to hear the clamor late, as though it came from another room.",
	},
	["lowhp.w14.fade.058"] = {
		"staggers two steps, three, and on the fourth finds the ground again.",
		"reels, arms out for balance, and finds it at the last possible moment.",
		"lurches, sways, and somehow lands the next step squarely.",
	},
	["lowhp.w14.fade.059"] = {
		"sets {g:his|her} jaw and stops looking at the damage.",
		"grimaces once, then wipes the expression away like dust.",
		"presses {g:his|her} lips tight and puts the pain somewhere out of sight.",
	},
	["lowhp.w14.fade.060"] = {
		"stares at a fixed point until the world stops swimming around it.",
		"fixes {g:his|her} gaze on one spot and waits for everything else to stop drifting.",
	},
	["lowhp.w14.fade.061"] = {
		"glances left, right and behind in quick jerks, measuring the ways out.",
		"throws a quick look over {g:his|her} shoulder, counting the room left to give.",
	},
	["lowhp.w14.fade.062"] = {
		"folds an arm across {g:his|her} middle and keeps going, a little bent.",
		"moves on curled around the hurt, the way one shelters a candle.",
	},
	["lowhp.w14.fade.063"] = {
		"straightens by inches, as if lifting something very heavy, which in a way {g:he|she} is.",
		"pulls {g:himself|herself} upright slowly, the way a rusty gate opens.",
		"unbends with visible effort, and does not bend back.",
	},
	["lowhp.w14.fade.064"] = {
		"swallows hard and keeps {g:his|her} eyes on the fight.",
		"swallows something bitter and does not look away.",
		"gives one sharp shudder, then holds very still.",
	},
	["lowhp.w14.fade.065"] = {
		"goes very still in the face, the way people do when they refuse to show fear.",
		"wears an expression of great calm that fools no one, {g:himself|herself} least of all.",
	},
	["lowhp.w14.fade.066"] = {
		"tries to steady a trembling hand with the other, and both tremble together.",
		"watches {g:his|her} own hands shake with a kind of distant interest.",
		"holds up a trembling hand, regards it, and closes it into a fist.",
	},
	["lowhp.w14.fade.067"] = {
		"trips on nothing, catches the fall, and pretends it was a step.",
		"stumbles, and turns the stumble into a sidestep with more luck than grace.",
	},
	["lowhp.w14.fade.068"] = {
		"sags, then refuses to sag any further, as though a line had been drawn.",
		"slackens all at once like a loosened rope, then pulls taut once more.",
	},
	["lowhp.w14.fade.069"] = {
		"moves more slowly now, every gesture weighed before it is spent.",
		"spends each movement carefully, like the last coins in a purse.",
		"stops wasting motion entirely, each step chosen like a word in a short letter.",
	},
	["lowhp.w14.fade.070"] = {
		"stares for a moment at nothing; then the eyes find their mark once more.",
		"loses focus for the space of a blink, and drags it back.",
	},
	["lowhp.w14.fade.071"] = {
		"settles low on bent legs, like a stone deciding not to roll.",
		"sinks lower but not down, held there by plain obstinacy.",
	},
	["lowhp.w14.fade.072"] = {
		"murmurs something too low to hear, maybe a count, maybe a name.",
		"moves {g:his|her} lips silently, as if counting something.",
	},
	["lowhp.w14.fade.073"] = {
		"looks briefly offended by how much this hurts.",
		"gives the damage a look of mild reproach, as if it had turned up uninvited.",
	},
	["lowhp.w14.fade.074"] = {
		"puts out a hand for a support that isn't there, and does without.",
		"reaches for something to lean on, finds only air, and stands regardless.",
	},
	["lowhp.w14.fade.075"] = {
		"drags the back of a hand across {g:his|her} eyes and looks hard at the fight.",
		"rubs {g:his|her} eyes with a knuckle, impatient with them.",
		"squeezes {g:his|her} eyes shut and open again, as if wringing them clear.",
	},
	["lowhp.w14.fade.076"] = {
		"seems, for one moment, to be listening to something nobody else can hear.",
		"goes quiet in a way that has nothing to do with calm.",
		"wears a strange, faraway look, as if weighing something very large.",
	},
	["lowhp.w14.fade.077"] = {
		"plants one foot, then the other, slowly, like someone laying foundation stones.",
		"shifts {g:his|her} weight until the ground agrees to hold it.",
	},
	["lowhp.w14.fade.078"] = {
		"hunches {g:his|her} shoulders, making {g:himself|herself} a smaller, harder thing to hit.",
		"draws in tight, elbows close, giving the hurt as little room as possible.",
	},
	["lowhp.w14.fade.079"] = {
		"turns {g:his|her} head too quickly and has to wait for the world to catch up.",
		"moves, and the world lags half a step behind.",
	},
	["lowhp.w14.fade.080"] = {
		"wipes {g:his|her} mouth with the back of a wrist and squares up once more.",
		"drags a sleeve across {g:his|her} face and is ready, or close enough.",
	},
	["lowhp.w14.fade.081"] = {
		"stops dead for half a moment, as if the body had to be talked into continuing.",
		"freezes, briefly, then lurches back into motion like a stuck wheel coming free.",
	},
	["lowhp.w14.fade.082"] = {
		"doesn't seem to hear the din for a moment; then it comes rushing back.",
		"flinches as the noise of the fight returns all at once, like a door flung open.",
	},
	["lowhp.w14.fade.083"] = {
		"touches a fingertip to the wound, the way one checks fresh paint, and winces.",
		"probes the hurt with two fingers, briefly, and decides never to do that twice.",
	},
	["lowhp.w14.fade.084"] = {
		"stands the way the hurt and the stubborn have always stood: badly, and upright.",
		"holds on with the old, plain obstinacy of every mortal thing.",
	},
	["lowhp.w14.fade.085"] = {
		"weaves a little on {g:his|her} feet, a slow drunken sway without any of the fun.",
		"rocks back and forth like a pendulum running down.",
	},
	["lowhp.w14.fade.086"] = {
		"closes {g:his|her} eyes for an instant, and opens them harder.",
		"shuts {g:his|her} eyes, just briefly, and comes back from wherever that was.",
	},
	["lowhp.w14.fade.087"] = {
		"Eyes open. Feet down. Hands up. Good.",
		"Stay awake. Stay awake, thick head.",
	},
	["lowhp.w14.fade.088"] = {
		"Ah. That's... not ideal.",
		"Oh, that's bad. That's properly bad.",
	},
	["lowhp.w14.fade.089"] = {
		"Think, think, think.",
		"Don't panic. Don't panic. Fine, panic a little, but quietly.",
	},
	["lowhp.w14.fade.090"] = {
		"Huh. So this is how close it gets.",
		"Closer than I'd like. Much closer.",
	},
	["lowhp.w14.fade.091"] = {
		"Back. Back. Make room. Then think.",
		"Out of the thick of it. Now.",
	},
	["lowhp.w14.fade.092"] = {
		"Legs, please. Just a little longer.",
		"Hands, stop shaking. I need you.",
	},
	["lowhp.w14.fade.093"] = {
		"Everything's spinning. I'd like to get off now, please.",
		"I'd sit down, if sitting down weren't such a terrible idea.",
	},
	["lowhp.w14.fade.094"] = {
		"Head up. Whatever's coming, see it come.",
		"Eyes front. I want to see it, whatever it is.",
	},
	["lowhp.w14.fade.095"] = {
		"This isn't how I pictured it. I'd like to keep picturing.",
		"Too soon. Much too soon for this.",
	},
	["lowhp.w14.fade.096"] = {
		"Getting thin over here. Anyone with a spare hand?",
		"I'm fading. Someone keep an eye on me.",
	},
	["lowhp.w14.fade.097"] = {
		"I can't see straight. Somebody tell me where to go.",
		"Eyes are going. Call out where you are!",
	},
	["lowhp.w14.fade.098"] = {
		"drifts back toward the others without quite deciding to.",
		"ends up nearer the group than before, pulled by an instinct older than thought.",
	},
	["lowhp.w14.fade.099"] = {
		"The others are close. That helps more than it should.",
		"Someone near me is fighting too. Hold on to that.",
	},
	["lowhp.w14.fade.100"] = {
		"I'm in a bad way. Don't wait for me to say it twice.",
		"Low. Very low. If anyone's got something, now's the time.",
	},
	["lowhp.w14.fade.101"] = {
		"Don't make them carry me. Stay up so they don't have to.",
		"If I drop, someone has to stop and pick me up. Don't drop.",
	},
	["lowhp.w14.grit.001"] = {
		"You'll have to knock me down properly. Half measures won't do it.",
		"Knocked about, yes. Knocked flat, no. There's a gap between those, and I live in it.",
		"It takes more than this to put me on the floor. Keep trying, I suppose.",
	},
	["lowhp.w14.grit.002"] = {
		"Oh, good. Pain. I was starting to worry this would be easy.",
		"Splendid. And just when I'd begun to relax.",
		"Excellent. I was getting bored.",
	},
	["lowhp.w14.grit.003"] = {
		"That's it. Now you've made it personal.",
		"Fine. You wanted my full attention. You have it.",
		"Every hit you land, I'm keeping. Every single one.",
	},
	["lowhp.w14.grit.004"] = {
		"Knees, you do not bend. Hands, you do not open. That's the whole plan.",
		"Feet stay put. Fists stay shut. The rest of me can complain all it likes.",
	},
	["lowhp.w14.grit.005"] = {
		"If I die here, I'm haunting you. You've been warned.",
		"Finish me and I'll make the most tiresome ghost you ever met.",
		"Go on, kill me. I'll come back just to sigh at you for a hundred years.",
	},
	["lowhp.w14.grit.006"] = {
		"Good. Make it hard. The hard part is the only part worth telling.",
		"Make it hard, then. Nobody sings about the easy ones.",
		"Good. I'd hate for this to be forgettable.",
	},
	["lowhp.w14.grit.007"] = {
		"Luck, you and I haven't always got along. This would be a fine time to make up.",
		"Luck, if you were saving yourself for something, this is the something.",
		"Luck, I've never asked you for much. I'm asking now.",
	},
	["lowhp.w14.grit.008"] = {
		"Hit me again. I dare you. See what it buys you.",
		"Go on. Every blow just makes me harder to finish.",
		"That all? I've more in reserve than you have in hand.",
	},
	["lowhp.w14.grit.009"] = {
		"shakes {g:his|her} head hard, once, and turns back to the fight.",
		"squares {g:his|her} shoulders, as if the hurt were an insult that needs answering.",
	},
	["lowhp.w14.grit.010"] = {
		"Ow. Rude. Very rude.",
		"That was uncalled for, and I'll be returning it with interest.",
		"Hey! I was using that.",
	},
	["lowhp.w14.grit.011"] = {
		"If I go down, I go down facing it. That much is still mine to choose.",
		"Whatever comes next, it won't find my back turned.",
		"Facing front. If it ends, it ends facing front.",
	},
	["lowhp.w14.grit.012"] = {
		"That's your best? I've had splinters that argued harder.",
		"Was that meant to end it? Then you've some practice ahead of you.",
		"That's meant to frighten me? Try harder.",
	},
	["lowhp.w14.grit.013"] = {
		"Good. Hurt is fuel, and I've just been handed plenty.",
		"Anger, come up. I need you more than I need the calm right now.",
		"Feed the anger. It's the one thing in me that isn't tired.",
	},
	["lowhp.w14.grit.014"] = {
		"I want this written down somewhere: I did not agree to this part.",
		"Noted, and filed under 'things I'll be paying back'.",
	},
	["lowhp.w14.grit.015"] = {
		"I don't kneel. Not to pain, and certainly not to you.",
		"Kneel? I've a stubborn pair of knees, and they both say no.",
		"Kneeling is for those who've decided. I haven't.",
	},
	["lowhp.w14.grit.016"] = {
		"Dying would be terribly inconvenient right now. I have things to do.",
		"Death can make an appointment like everyone else. I'm busy.",
		"I've no time to die. Ask again in some other year.",
	},
	["lowhp.w14.grit.017"] = {
		"My turn. You had yours, and it wasn't enough.",
		"Enough taking. Time to give some back.",
		"My patience just ran out. Yours will follow.",
	},
	["lowhp.w14.grit.018"] = {
		"glares at the wound with deep personal offense, then back at whatever caused it.",
		"takes the hurt as a personal insult, and it shows in every line of {g:his|her} face.",
	},
	["lowhp.w14.grit.019"] = {
		"If this is how it ends, it ends with me on my feet.",
		"Whatever happens, I stay upright. That one thing I insist on.",
	},
	["lowhp.w14.grit.020"] = {
		"I've a stubborn streak a mile wide, and you just walked into it.",
		"Congratulations. You've found the stubborn part of me. It's most of me.",
		"Stubborn is the only thing I'm rich in. Let's spend it.",
	},
	["lowhp.w14.grit.021"] = {
		"Pain is a voice. Let it shout. I'm not obliged to listen.",
		"Let it hurt. A hurt is not a verdict.",
		"Pain is news, not orders. Read, and set aside.",
	},
	["lowhp.w14.grit.022"] = {
		"Ha! Missed my vitals. Mostly. I think.",
		"All the important bits are still here. Probably. Let's not check.",
		"Nothing vital. Well, nothing too vital. Moving on.",
	},
	["lowhp.w14.grit.023"] = {
		"Finish it, then. If you think you can.",
		"Here I am. Still in the way. Do something about it.",
		"I'm right here. What are you waiting for?",
	},
	["lowhp.w14.grit.024"] = {
		"sets {g:his|her} feet wider, as though daring the ground itself to take {g:him|her}.",
		"straightens slowly, and the slowness itself looks like a threat.",
	},
	["lowhp.w14.grit.025"] = {
		"Remind me to be proud of this later. Assuming there's a later.",
		"Someday I'll call this character-building. For now it just hurts.",
		"This will make a fine story. If I'm the one telling it.",
	},
	["lowhp.w14.grit.026"] = {
		"Mark this moment. This is where I stop giving ground.",
		"From here, not one more step back. Not one.",
		"This spot is mine. Come and take it, if you can.",
	},
	["lowhp.w14.grit.027"] = {
		"I refuse to die. The paperwork alone would kill me.",
		"Dying is off the table. I'd never live it down.",
		"Death? Not on my schedule. Not even pencilled in.",
	},
	["lowhp.w14.grit.028"] = {
		"Plenty of people have been hurt worse and kept going. I can be one of them.",
		"Others have stood up from worse than this. Join them.",
	},
	["lowhp.w14.grit.029"] = {
		"Good hit. Truly. I'll be sure to return the compliment.",
		"Nicely done. Now watch me be very ungracious about it.",
	},
	["lowhp.w14.grit.030"] = {
		"You want me down? Then you'll have to earn it. Every bit of it.",
		"I'm going nowhere. You'll have to drag me, and I bite.",
		"Down? Me? You'll need a lot more than that, and a lot more patience.",
	},
	["lowhp.w14.grit.031"] = {
		"laughs once, short and harsh, at nothing anyone else can see.",
		"grins, which is quite the wrong face to make at a moment like this.",
	},
	["lowhp.w14.grit.032"] = {
		"Death's close enough to touch. I'll spend the time hitting back instead.",
		"So it's close. Fine. Close isn't the same as here.",
	},
	["lowhp.w14.grit.033"] = {
		"Hurt? Yes. Beaten? That's a different word, and nobody's said it.",
		"Wounded is a long way from finished.",
		"Battered, yes. Beaten is another matter.",
	},
	["lowhp.w14.grit.034"] = {
		"That's going on the list. The long list. With you at the top.",
		"Into the ledger with that one. You're running up quite a debt.",
	},
	["lowhp.w14.grit.035"] = {
		"There it is. The anger. Took its time, but it's here now, and it's mine.",
		"Something sharp and stubborn is waking up in me. Let's see what it does.",
	},
	["lowhp.w14.grit.036"] = {
		"Nobody tells me when I'm done. Least of all you.",
		"I decide when I've had enough. And I haven't.",
		"My own say-so ends this. Not yours.",
	},
	["lowhp.w14.grit.037"] = {
		"Ouch. That's one for the collection.",
		"A fresh scar for the collection, then. Lucky me.",
	},
	["lowhp.w14.grit.038"] = {
		"lets out a low, furious sound and does not give a single step back.",
		"goes very still for a moment, and when {g:he|she} moves again, it is with intent.",
	},
	["lowhp.w14.grit.039"] = {
		"If I'm to fall, I'll make it cost you dearly.",
		"You'll take me, maybe. You won't take me cheap.",
		"Have me if you can. The price is everything you've got.",
	},
	["lowhp.w14.grit.040"] = {
		"I've had better moments. Staying alive is still an excellent idea, though.",
		"On the bright side, this can't last long. One way or the other.",
		"Things could be worse. I can't think how, but I'm sure they could.",
	},
	["lowhp.w14.grit.041"] = {
		"Stay upright. That's the only order that matters now.",
		"Upright. Whatever else happens, upright.",
	},
	["lowhp.w14.grit.042"] = {
		"Try to kill me, then. I've been told I'm very bad at dying.",
		"Dying takes a talent I simply don't have.",
		"Kill me? With whose luck, exactly?",
	},
	["lowhp.w14.grit.043"] = {
		"rolls {g:his|her} neck once, slowly, like someone about to start real work.",
		"draws {g:himself|herself} up to full height, as if height alone could hold the line.",
	},
	["lowhp.w14.grit.044"] = {
		"Push. And push. Leave the tally of hurts for afterwards.",
		"The wounds can wait their turn. The fight can't.",
		"Fight first. Hurt later. That's the order of things.",
	},
	["lowhp.w14.grit.045"] = {
		"Ha. Is this the part where I'm supposed to give up? Skipping it.",
		"Usually this is where people give up. I've never been good at usually.",
	},
	["lowhp.w14.grit.046"] = {
		"You've woken the worst of my temper. Good luck with it.",
		"Bad move. I fight better furious.",
		"There goes my temper. Nobody's ever caught it.",
	},
	["lowhp.w14.grit.047"] = {
		"Everyone falls someday. I'm only asking that it not be in this fight.",
		"Someday, perhaps. This time doesn't get the honor.",
	},
	["lowhp.w14.grit.048"] = {
		"Luck, I'll owe you. Name your price, just not right now.",
		"Any spare luck lying about? I'm buying. I'll pay later.",
		"Luck, put this one on my tab. I'm good for it. Mostly.",
	},
	["lowhp.w14.grit.049"] = {
		"I am not finished. Not by a long road.",
		"Done? I've only just started being serious about this.",
	},
	["lowhp.w14.grit.050"] = {
		"tuts at the damage as if at a ruined shirt, and gets on with it.",
		"gives the wound a look of pure disgust, then dismisses it entirely.",
	},
	["lowhp.w14.grit.051"] = {
		"Death, if you're listening: wrong address. Try down the road.",
		"Not in. Come back never.",
		"Death, take a number. A large one.",
	},
	["lowhp.w14.grit.052"] = {
		"Remember this. Whatever happens, remember I didn't back down.",
		"Let it be said I didn't make it easy.",
		"Tell it as it was: I didn't bend.",
	},
	["lowhp.w14.grit.053"] = {
		"Stubbornness is a kind of strength too. Use it. There's plenty of that left.",
		"When the strength runs thin, spite will do. Spite never runs out.",
	},
	["lowhp.w14.grit.054"] = {
		"All right, that one landed. The next one's mine.",
		"Fair hit. Good for you. Now duck.",
	},
	["lowhp.w14.grit.055"] = {
		"I've no intention of being the one who stops.",
		"Someone has to give up first here. It won't be me.",
		"There's no stopping in me. Look all you like.",
	},
	["lowhp.w14.grit.056"] = {
		"You know what I hate most? Being interrupted. And you keep doing it.",
		"I was in the middle of something. Several somethings. Go away.",
		"Can't a person get through a fight in peace?",
	},
	["lowhp.w14.grit.057"] = {
		"A small, very sensible voice in me suggests running. I'm ignoring it. For now.",
		"The sensible part of me has packed and left. The rest stays and argues.",
	},
	["lowhp.w14.grit.058"] = {
		"Pride's fine, but staying alive is better. If there's a way out, take it.",
		"Getting out is not losing. Getting out is choosing the next fight.",
		"Stand or go, but choose it. Nothing gets to choose for me.",
	},
	["lowhp.w14.grit.059"] = {
		"I mean to get out of this. Not for glory. Out of pure contrariness.",
		"I mean to walk away from this on my own legs. Limping, if I must.",
	},
	["lowhp.w14.grit.060"] = {
		"sways, catches {g:himself|herself}, and stays upright through what looks like pure obstinacy.",
		"staggers, and turns the stagger into a step forward.",
	},
	["lowhp.w14.grit.061"] = {
		"Good news: I can still feel my feet. Bad news: I can feel everything else, too.",
		"Upside: still feeling things. Downside: all of them hurt.",
		"I've still got all my fingers. That's the good news. That's all the news.",
	},
	["lowhp.w14.grit.062"] = {
		"You'll regret every one of those. I promise you that.",
		"That's the last free hit you get. The rest cost.",
		"Keep count of those. I'm going to want them all back.",
	},
	["lowhp.w14.grit.063"] = {
		"If I'm going, I want the last thing I do to be something rude.",
		"Should this be the end, let the last of me be a no.",
	},
	["lowhp.w14.grit.064"] = {
		"Let it be witnessed: I stood here, and I did not yield.",
		"Whoever hears this: I gave no ground I could keep.",
	},
	["lowhp.w14.grit.065"] = {
		"Stone does not hurry to break. Neither shall I.",
		"Worn I may be, like any stone. Moved, I am not.",
		"Roots hold when the trunk is struck. Hold, then.",
	},
	["lowhp.w14.grit.066"] = {
		"Should I survive this, I'll be insufferable about it. Fair warning.",
		"Live through this and I'll never stop talking about it. Motivation enough.",
		"Get me through this and the story grows every time I tell it.",
	},
	["lowhp.w14.grit.067"] = {
		"lets the pain show for one moment, and then turns it into a snarl.",
		"bares {g:his|her} teeth, and it is not a smile.",
	},
	["lowhp.w14.grit.068"] = {
		"Whatever you've got left, bring it. I've got more.",
		"Empty yourself out, then. I'll still have something left.",
		"You'll tire long before I quit.",
	},
	["lowhp.w14.grit.069"] = {
		"Here's where it's decided what I'm made of. Let it be something hard.",
		"Whatever I'm made of, this is where it shows. Let it be iron.",
	},
	["lowhp.w14.grit.070"] = {
		"Of course. Of course it's now. Why wouldn't it be now.",
		"Perfect timing, as usual. Brilliant.",
		"Naturally. When else would it be.",
	},
	["lowhp.w14.grit.071"] = {
		"You've hurt me. You haven't stopped me. Those are different things.",
		"Hurt and stopped aren't the same word. Look it up.",
	},
	["lowhp.w14.grit.072"] = {
		"Stop looking at how much is gone. Look at how much is left, and spend it well.",
		"What's left is what I've got. It'll have to be enough. It will be.",
	},
	["lowhp.w14.grit.073"] = {
		"Death keeps trying to introduce itself. I keep not shaking hands.",
		"No, thank you, death. I'm just looking.",
		"Death came calling. I'm pretending I'm not home.",
	},
	["lowhp.w14.grit.074"] = {
		"This is where it gets good. Watch.",
		"Pay attention now. This next part, I do well.",
		"Now you'll see what I'm like when it matters.",
	},
	["lowhp.w14.grit.075"] = {
		"says something unrepeatable through clenched teeth and keeps right on going.",
		"rolls {g:his|her} eyes at the size of the hurt, as one might at a bad joke.",
	},
	["lowhp.w14.grit.076"] = {
		"Every part of me says stop. Every part of me can be outvoted.",
		"My body's begging for a rest. Request denied.",
		"Legs, I know. Hush. A little more.",
	},
	["lowhp.w14.grit.077"] = {
		"In hindsight, this was perhaps not my finest idea. Still, it's mine, and I'm keeping it.",
		"Somewhere a wiser version of me is shaking its head. Ignore it.",
	},
	["lowhp.w14.grit.078"] = {
		"Enough! Enough of this!",
		"No more of this. My turn to set the pace.",
		"That's enough out of you!",
	},
	["lowhp.w14.grit.079"] = {
		"Pain, you're a terrible guest. You never knock and you never leave.",
		"Hello, pain. Sit down. Don't get comfortable.",
		"Oh, it's you, pain. Make yourself useful or go.",
	},
	["lowhp.w14.grit.080"] = {
		"Get angry later. Get clever now. Then get angry.",
		"Fury's good. Fury with a plan is better.",
	},
	["lowhp.w14.grit.081"] = {
		"I'll not beg. Not you, not luck, not anyone.",
		"No pleading. Whatever comes, it comes to someone standing straight.",
		"Mercy? I'll not ask. Keep it.",
	},
	["lowhp.w14.grit.082"] = {
		"presses on, each movement smaller and harder than the one before, but each one made.",
		"closes {g:his|her} hands into fists so tight they shake, and does not let go.",
	},
	["lowhp.w14.grit.083"] = {
		"On the list of bad ideas, hitting me twice is near the top.",
		"You've just met someone with a very long memory.",
		"That one I'll remember. In detail. At length.",
	},
	["lowhp.w14.grit.084"] = {
		"I swear it on my own two hands: they keep fighting.",
		"On whatever I hold dear: I don't stop here.",
		"By every hurt I carry: I am not done.",
	},
	["lowhp.w14.grit.085"] = {
		"Of all the ways to go, this one isn't even interesting. Refuse it on principle.",
		"If I'm to die, I'd like a better story than this. So, no.",
	},
	["lowhp.w14.grit.086"] = {
		"Something in me just went hard and quiet. You won't like it.",
		"I've stopped being afraid. There's only anger now. Much worse for you.",
	},
	["lowhp.w14.grit.087"] = {
		"Ow! What did I ever do to you? Besides that. And that.",
		"Yes, yes, I felt that. No need to show off.",
		"Ow! I'm going to be very cross about that in a moment.",
	},
	["lowhp.w14.grit.088"] = {
		"Staying up is a habit. Keep the habit.",
		"Stay in it. Whatever happens next happens to someone who stayed.",
	},
	["lowhp.w14.grit.089"] = {
		"Oh, I'm going to enjoy the rest of this.",
		"Now it's interesting. Now I'm awake.",
		"Ah. Here's where I start enjoying myself.",
	},
	["lowhp.w14.grit.090"] = {
		"refuses to look at the wound at all, as if it belonged to somebody else.",
		"keeps {g:his|her} eyes up, never down at the damage.",
	},
	["lowhp.w14.grit.091"] = {
		"Doing great. Never better. Ignore the swaying.",
		"Perfectly fine. That stagger was on purpose.",
		"I'm completely fine. Some of me is just less fine than the rest.",
	},
	["lowhp.w14.grit.092"] = {
		"I'm hurt. I'm furious. And I'm still in your way.",
		"What's left of me is small, mean and stubborn. Enjoy.",
	},
	["lowhp.w14.grit.093"] = {
		"A quiet part of me is very calm about all this. I'm letting the loud part drive.",
		"Some part of me is already making peace. The rest tells it to shut up.",
	},
	["lowhp.w14.grit.094"] = {
		"If you're trying to impress me, it's working. Stop.",
		"Very impressive. Truly. Please never do that a second time.",
		"You've made your point. Loudly. Now I'll make mine.",
	},
	["lowhp.w14.grit.095"] = {
		"Iron bends before it breaks, and I've not finished bending.",
		"What will not bend can still be broken. So bend, and stay whole.",
	},
	["lowhp.w14.grit.096"] = {
		"shakes out one hand as if the hurt were water to be flicked off, then closes it again.",
		"makes a small, annoyed sound, like someone interrupted mid-sentence.",
	},
	["lowhp.w14.grit.097"] = {
		"I'm low! Somebody mend me, I'll handle the rest!",
		"Need a hand here! I'm not done, just badly dented!",
	},
	["lowhp.w14.grit.098"] = {
		"Anyone feel like saving me? No pressure. Some pressure. Quite a lot, actually.",
		"Friends! Remember how fond you are of me? Now's the time!",
	},
	["lowhp.w14.grit.099"] = {
		"Hold your ground! I'm hurt, not out!",
		"Keep at it! Don't mind me, I'm too stubborn to drop!",
		"Don't you dare stop for me! Finish it!",
	},
	["lowhp.w14.grit.100"] = {
		"Cover me a moment! I need to pull myself together!",
		"Buy me a moment, someone! Just one!",
	},
	["lowhp.w14.grit.101"] = {
		"If anyone's got a trick up their sleeve, I'm accepting gifts!",
		"Help gladly accepted! Applause later!",
	},
	["lowhp.w14.grit.102"] = {
		"calls out over the noise, one sharp word, and keeps fighting without waiting for an answer.",
		"glances toward {g:his|her} companions, then back to the fight, jaw set.",
	},
	["threat.w15.cold.001"] = {
		"Lower your voice. I'm listening very closely now.",
		"Speak softly. I'm hearing every word, and weighing each one.",
		"Quietly, please. It's easier to decide what to do with you when it's quiet.",
	},
	["threat.w15.cold.002"] = {
		"No need to shout. You understood me the first time.",
		"I won't raise my voice. It was clear enough as it was.",
		"Whispering is how I warn. Shouting comes after.",
	},
	["threat.w15.cold.003"] = {
		"There's a line here nobody drew. Your toes are on it.",
		"See how little room there is between where you stand and where you'd regret standing?",
	},
	["threat.w15.cold.004"] = {
		"I'll remember your face. The next minute decides how.",
		"Your face is one I'll keep. Whether fondly is still up to you.",
		"{target}. I have the name now, and the face. Choose how I keep them.",
	},
	["threat.w15.cold.005"] = {
		"stops moving entirely; only {g:his|her} eyes go on following every move in front of {g:him|her}.",
		"freezes in place, and the stillness says more than a shout would.",
	},
	["threat.w15.cold.006"] = {
		"This is the part where you still get to choose. Choose well.",
		"The choice is still in your hands. Use it well, and use it soon.",
		"Make your choice while it's still yours to make.",
	},
	["threat.w15.cold.007"] = {
		"I'm not angry. Anger would be quicker for you.",
		"Anger would be over quickly. Pity I don't feel any.",
	},
	["threat.w15.cold.008"] = {
		"Whatever you're planning, I've already thought of it. Let it go.",
		"Whatever you're about to try, I've seen it coming. Don't.",
		"I can see the idea forming behind your eyes. Drop it.",
	},
	["threat.w15.cold.009"] = {
		"Think about the next thing you say. Really think.",
		"Pick your next words carefully. They may be the ones I remember you by.",
	},
	["threat.w15.cold.010"] = {
		"Everything that walks the world ends somewhere. Don't let it be here.",
		"All roads end. Yours doesn't have to end at my feet.",
		"Nothing that lives is promised a long road. Don't shorten yours here.",
	},
	["threat.w15.cold.011"] = {
		"My patience is spent. What's left isn't something you want to meet.",
		"Patience was the friendly part of me. It just left.",
		"I had patience a moment ago. You'll notice it's gone.",
	},
	["threat.w15.cold.012"] = {
		"Whatever you meant to do here, it goes through me first now.",
		"Your business here has gained one more step. Me.",
	},
	["threat.w15.cold.013"] = {
		"I'd rather not. Please don't make me.",
		"I don't want this. Don't be the reason I do it anyway.",
		"There's still a way out of this where nobody gets hurt. Take it.",
	},
	["threat.w15.cold.014"] = {
		"Hear me plainly: this is a warning, and warnings don't last forever.",
		"Count this as the warning. There is a limited supply.",
	},
	["threat.w15.cold.015"] = {
		"takes one slow step forward, then waits, as if that step were the whole argument.",
		"moves a pace closer, unhurried, and leaves the rest unsaid.",
	},
	["threat.w15.cold.016"] = {
		"Nobody will come looking for you. I'd think about that.",
		"Ask yourself who would notice if you didn't leave this on your own feet.",
		"Who misses you, if this goes badly? Think of them, and go.",
	},
	["threat.w15.cold.017"] = {
		"I'm counting. You don't get to know from what number.",
		"There's a count going on in my head. You won't like where it ends.",
	},
	["threat.w15.cold.018"] = {
		"You've mistaken quiet for weak. That mistake gets made with me exactly once.",
		"Quiet isn't the same as soft. Learn the difference somewhere else.",
		"I'm calm. People who confuse that with gentle tend to learn quickly.",
	},
	["threat.w15.cold.019"] = {
		"The world is patient with fools. I am only a small part of the world.",
		"The world forgives a great deal. I'm the part that doesn't.",
	},
	["threat.w15.cold.020"] = {
		"Keep looking at me like that and find out what it costs.",
		"That look has a price. You're about to be handed the bill.",
		"Stare all you like. Every second of it goes on your account.",
	},
	["threat.w15.cold.021"] = {
		"sets {g:his|her} feet and refuses to give an inch, not a word wasted.",
		"settles {g:his|her} weight and waits, plainly not going anywhere.",
	},
	["threat.w15.cold.022"] = {
		"I've no wish to add you to the things I try not to think about.",
		"Don't become one more memory I'd rather not keep.",
	},
	["threat.w15.cold.023"] = {
		"Last chance. I mean that in the plainest way.",
		"This is your last chance, and I don't hand out spares.",
		"There won't be a second offer. This one is already generous.",
	},
	["threat.w15.loud.001"] = {
		"Try it! I'd love to see you try!",
		"Go ahead, make your move! I'm right here!",
		"You want this? Then come and take it!",
	},
	["threat.w15.loud.002"] = {
		"I'm not moving. Not for you, not for anyone like you!",
		"Push all you like. I don't budge!",
		"Shove all you want! I'm rooted here!",
	},
	["threat.w15.loud.003"] = {
		"Was that supposed to scare me? You'll need more!",
		"Is that all? I expected far more noise from you!",
		"That's your worst? I've been frightened worse by my own reflection!",
	},
	["threat.w15.loud.004"] = {
		"Look at me! Look, and remember who told you no!",
		"Mark this well! I'm the one who wouldn't back down!",
	},
	["threat.w15.loud.005"] = {
		"Push someone else around! Not me!",
		"Of everyone you could have tried this on, you chose me. Poor choice!",
		"{target}, you've leaned on the wrong shoulder!",
	},
	["threat.w15.loud.006"] = {
		"Hear me! No further, by my word and by my will!",
		"By everything I hold to, you pass no further!",
	},
	["threat.w15.loud.007"] = {
		"Enough! I'm sick to the teeth of you!",
		"Not another peep from you! Done, finished, over!",
		"I've heard plenty! Not one word more!",
	},
	["threat.w15.loud.008"] = {
		"Shout all you like! It won't make you any bigger!",
		"Raise your voice all you want! Noise isn't the same as nerve!",
		"All that shouting, and still nothing behind it!",
	},
	["threat.w15.loud.009"] = {
		"Bring everything you've got! It won't be enough!",
		"Throw all of it at me! See how far it gets you!",
		"Hold nothing back! I want to see the whole of it fail!",
	},
	["threat.w15.loud.010"] = {
		"You were after my attention? Well, it's yours. Every scrap!",
		"Congratulations, you've got my full attention! You'll regret it!",
	},
	["threat.w15.loud.011"] = {
		"Nobody tells me where I can stand! Nobody!",
		"I'll stand where I please, and you won't be the one to move me!",
		"This patch of ground is mine as long as I'm on it! Shift me if you can!",
	},
	["threat.w15.loud.012"] = {
		"Step up, or shut up!",
		"Either come forward or close your mouth!",
		"{target}! Come forward, or hold your tongue!",
	},
	["threat.w15.loud.013"] = {
		"roars, loud enough to turn heads a good way off.",
		"throws back {g:his|her} head and bellows a challenge at the world in general.",
	},
	["threat.w15.loud.014"] = {
		"Knock me down and I'll get up angrier. Every time!",
		"Put me on the ground, and watch how fast I'm back on my feet, and how annoyed!",
	},
	["threat.w15.loud.015"] = {
		"If I drop, it'll be forwards, at you! Remember that!",
		"Whatever happens, I go down facing you!",
		"You'll never see my back! Not while I can stand!",
	},
	["threat.w15.loud.016"] = {
		"Fine! You want trouble? Here it is, right in front of you!",
		"Trouble? You found it. It's me!",
	},
	["threat.w15.loud.017"] = {
		"Let everyone within earshot hear it: I do not yield!",
		"Let anyone listening hear it: I will not give way!",
	},
	["threat.w15.loud.018"] = {
		"Don't you dare! Don't you even think it!",
		"Not one step nearer! I mean it!",
		"Stop right there! I won't say it twice!",
	},
	["threat.w15.loud.019"] = {
		"Pick on someone your own size! Pick on me!",
		"Want someone to bully? Try me instead!",
	},
	["threat.w15.loud.020"] = {
		"Of all the moments to cross me, you chose this one? Bad timing!",
		"I've got troubles enough without yours! Back away!",
		"Wrong moment! You really couldn't have picked a worse one!",
	},
	["threat.w15.loud.021"] = {
		"Whatever you are, I've decided I'm not afraid of you!",
		"Fear? Of you? Pick someone else to frighten.",
	},
	["threat.w15.loud.022"] = {
		"squares up and gestures, unmistakably: come and try.",
		"beckons with two fingers, a clear and rather rude invitation.",
	},
	["threat.w15.loud.023"] = {
		"You'll have to go through me, and I'm in no mood to be gone through!",
		"Get past me? You'd need a lot more than that!",
		"There's no way around me! Only through, and good luck with that!",
	},
	["threat.w15.wry.001"] = {
		"I'd hate for this to get unpleasant. Mostly for you.",
		"Let's keep things friendly. It's so much tidier.",
		"I'm being nice. It's a favor, and favors have a shelf life.",
	},
	["threat.w15.wry.002"] = {
		"You seem nice. It would be a pity to change that.",
		"You've got such a pleasant face. Shame if it had to rearrange itself.",
	},
	["threat.w15.wry.003"] = {
		"I'm told I have a lovely temper. Let's not test the claim.",
		"People say I'm easygoing. People can be wrong.",
	},
	["threat.w15.wry.004"] = {
		"That's a brave thing to try. Brave is a word people use at funerals.",
		"How brave. They say lovely things about the brave, afterwards.",
	},
	["threat.w15.wry.005"] = {
		"I'm in a generous mood. You may leave with all your pieces.",
		"Feeling generous. Go now and keep the full set of yourself.",
		"A rare offer: you walk off unbruised. It expires as I finish this sentence.",
	},
	["threat.w15.wry.006"] = {
		"Do carry on. I'm curious how you think this ends.",
		"Please, go on. I love a story where I know the ending.",
	},
	["threat.w15.wry.007"] = {
		"I'll count to three. I may skip two.",
		"On three, then. I'm not great with numbers, so maybe on two.",
		"Three. Oh, did you want one and two first?",
	},
	["threat.w15.wry.008"] = {
		"A small favor, if you would: leave. You'll thank me later.",
		"Do yourself a kindness and be somewhere else.",
	},
	["threat.w15.wry.009"] = {
		"You're very sure of yourself. It's almost sweet.",
		"Such confidence. I'd almost be sad to see it go.",
		"{target}, all that confidence. Almost touching.",
	},
	["threat.w15.wry.010"] = {
		"Shall I write down your last words for you? I have neat handwriting.",
		"If you've any last words, I'm a very good listener.",
	},
	["threat.w15.wry.011"] = {
		"Bold move. Let me know how it goes. Actually, I'll know.",
		"That's certainly a plan. Not a good one, but a plan.",
		"Interesting idea. I've seen worse ones. Not many.",
	},
	["threat.w15.wry.012"] = {
		"I'm a very forgiving sort. Usually afterwards.",
		"Oh, I'll forgive you. Eventually. Once it's over.",
		"Grudges? Never. I settle things on the spot.",
	},
	["threat.w15.wry.013"] = {
		"smiles politely, the way one smiles at something that hasn't understood yet.",
		"gives a small, courteous nod that manages to contain no courtesy at all.",
	},
	["threat.w15.wry.014"] = {
		"I'd offer you advice, but you've clearly got your heart set on this.",
		"Some advice, free of charge: don't.",
	},
	["threat.w15.wry.015"] = {
		"Really? You? Fine, but I want it known that I warned you.",
		"Let it be noted I gave fair warning. Politely, even.",
		"Nobody can say I wasn't courteous about this. Remember that later.",
	},
	["threat.w15.wry.016"] = {
		"I can be charming or I can be quick. Pick one.",
		"Two options: I stay charming, or I stop. Your call.",
	},
	["threat.w15.wry.017"] = {
		"I'm sure you'll make a lovely cautionary tale.",
		"You'd make an excellent example for others. Not the good kind.",
	},
	["threat.w15.wry.018"] = {
		"Oh good, someone volunteers.",
		"Splendid. I was hoping someone would offer.",
		"{target} steps forward. How thoughtful.",
	},
	["threat.w15.wry.019"] = {
		"Mind your manners. Mine are only on loan.",
		"Be polite. My good manners are borrowed, and the lender wants them back.",
	},
	["threat.w15.wry.020"] = {
		"I'd tell you to be careful, but it's a bit late for that.",
		"Caution would have been a fine idea about a minute ago.",
		"Second thoughts? Lovely. They'd have been even lovelier earlier.",
	},
	["threat.w15.wry.021"] = {
		"cracks {g:his|her} knuckles slowly, each one in turn, looking faintly bored.",
		"rolls up {g:his|her} sleeves with great care, humming.",
	},
	["threat.w15.wry.022"] = {
		"No hurry. I'll wait while you reconsider your life.",
		"Take your time. Reconsidering is healthy.",
	},
}, "base_combat")
