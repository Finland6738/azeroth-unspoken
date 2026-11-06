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
}, "base_combat")
