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
}, "base_combat")
