-- Testi di base in inglese: combattimento (inizio, minaccia, vittoria, ferite gravi). Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryCombat.lua.
local ADDON, NS = ...

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
}, "base_combat")
