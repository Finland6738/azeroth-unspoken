-- Testi di base in inglese: incantesimi, viaggi e resurrezioni. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistrySpells.lua.
local ADDON, NS = ...

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
}, "base_spells")
