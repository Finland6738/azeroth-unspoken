-- Testi di base in inglese: voci delle classi, su più eventi. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryClasses.lua.
local ADDON, NS = ...

NS:AddTexts("enUS", {
	["cls.war.battle.01"] = {
		"I made peace with death long ago. Now it is your turn.",
		"I left my fear on my first battlefield. You brought yours along, I see.",
	},
	["cls.war.battle.02"] = {
		"Shields up! We are the wall!",
		"Shoulder to shoulder! Anyone getting through goes over me first!",
		{ "Close up, everyone. Nobody stands uncovered.", depth = "natural" },
	},
	["cls.war.victory.01"] = {
		"Another notch on the hilt. I am running out of room.",
		"My arm only shakes now, once it's done. Good. It had the sense to wait.",
	},
	["cls.war.lowhp.01"] = {
		"I still have two hands and a blade. More than enough.",
		"I've been written off before. They were wrong then, too.",
	},
	["cls.war.muse.01"] = {
		"A weapon never asks why. That is why it weighs so much.",
		"I sharpen the blade every evening. It's easier than asking myself what for.",
	},
	["cls.war.lvl.01"] = {
		"Stronger arms, calmer rage. That is what war teaches.",
		"The blow lands a heartbeat before the thought now. I can't decide if I'm proud of that.",
		{ "Every scar taught me a word in the tongue of steel. Today I can speak one more.", depth = "elevated" },
	},
	["cls.pal.battle.01"] = {
		"Darkness has many faces. The Light has but one, and today it is mine.",
		"What is rotten never stands long before an honest light. Let us see how long you last.",
		{ "By the Light that keeps watch over the living: go back whence you came, and do not look back.", depth = "elevated" },
	},
	["cls.pal.battle.02"] = {
		"I do not fear the dark. I carry it away, one step at a time.",
		"The hammer is heavy. The hand that swings it must be steadier still.",
	},
	["cls.pal.victory.01"] = {
		"Justice is done. Let mercy do the rest.",
		"It's over. Now we tend the wounded. All of them, theirs too.",
	},
	["cls.pal.lowhp.01"] = {
		"The Light never promised me a long life. Only a righteous one.",
		"If I must fall, let it be in front of someone. Never behind.",
		{ "Light, I do not ask to be spared. Only to stand for as long as I am needed.", depth = "elevated" },
	},
	["cls.pal.muse.01"] = {
		"The hammer is easy to lift. It is faith that sometimes weighs like a mountain.",
		"They call me a champion of the Light. No one asks what I see at night, when the Light is silent.",
	},
	["cls.pal.heal.01"] = {
		"You are not alone. The Light walks with you, and I with it.",
		"Lean on me. The Light will carry the rest.",
	},
	["cls.hun.battle.01"] = {
		"I respect you, beast. That is why I will not miss.",
		"Fine animal. I promise you a clean shot, nothing more and nothing less.",
	},
	["cls.hun.battle.02"] = {
		"He bites, I shoot. We have an arrangement.",
		"You keep it busy. I'll pick the spot.",
	},
	["cls.hun.victory.01"] = {
		"Good work, friend. Tonight the best cut is yours.",
		"You did all the work, I know. We'll tell it differently at the inn.",
	},
	["cls.hun.lowhp.01"] = {
		"Fall back, friend! Hold them, I'll cover the retreat!",
		"Go, friend, go! Meet me at the water, same as always!",
	},
	["cls.hun.muse.01"] = {
		"Tracks tell more truth than kings. You only have to read them.",
		"A snapped twig, a tuft of fur on a bramble. The woods write small, but they never lie.",
		{ "Before words there were tracks. Learn to read them and you hear the oldest tongue in the world.", depth = "elevated" },
	},
	["cls.hun.zone.01"] = {
		"Game, water, shelter. And something large that does not wish to be seen.",
		"Wind from the west, smell of wet fur. Something here hunts better than I do. For now.",
	},
	["cls.rog.battle.01"] = {
		"It's nothing personal. Usually.",
		"Someone paid me for this. You didn't. Pity, for you.",
	},
	["cls.rog.battle.02"] = {
		"Nice purse. Shame you won't be needing it.",
		"Lovely boots. I've had my eye on those for a while.",
	},
	["cls.rog.victory.01"] = {
		"Clean, quiet, and nobody saw a thing. Just how I like it.",
		"Job done, nothing to tell. That's how this trade is done right.",
	},
	["cls.rog.lowhp.01"] = {
		"Perfect time to vanish. If only I could stand up.",
		"Remind me never to do that again. Preferably from a safe distance.",
	},
	["cls.rog.muse.01"] = {
		"Everyone has a secret. I sell theirs.",
		"Keys change hands faster than coins. I always know whose.",
	},
	["cls.rog.greet.01"] = {
		"Didn't see me coming? Good. That's my job.",
		"Hello. No, I wasn't following you. Just happened to be going your way.",
	},
	["cls.pri.battle.01"] = {
		"I have blessed many souls. Today I shall dismiss one.",
		"I will pray for you. Afterwards.",
	},
	["cls.pri.battle.02"] = {
		"The Light turned its back on me once. The Shadow never has.",
		"The cold in my veins asks for no prayers. Only to be put to use.",
	},
	["cls.pri.lowhp.01"] = {
		"I heal everyone. Who heals me? An old question, always the same answer.",
		"I've kept so many others standing. Now it's my turn, and my knees won't listen.",
	},
	["cls.pri.heal.01"] = {
		"Breathe. The Light is patient, and so am I.",
		"Easy. Let the Light do the hard part.",
	},
	["cls.pri.rezo.01"] = {
		"Light, send this soul back. It has not finished making mistakes.",
		"One more breath, Light. Just one, and it will manage the rest.",
	},
	["cls.pri.pray.01"] = {
		"Light, give me the strength to comfort even when I have no words left.",
		"Light, tonight I ask for no answers. Just steady hands come morning.",
	},
	["cls.sha.battle.01"] = {
		"The spirits are restless. You offended them, and now they answer.",
		"The ground beneath your feet doesn't want you. Feel it shudder.",
	},
	["cls.sha.victory.01"] = {
		"Balance has returned. For now.",
		"The wind has stopped howling. I thank it, quietly.",
	},
	["cls.sha.lowhp.01"] = {
		"Ancestors, lend me your bones. Mine are failing.",
		"Earth, hold me up. Not under you yet. Still upon you.",
	},
	["cls.sha.muse.01"] = {
		"Fire burns, water cleanses, earth endures, wind carries. And we learn from them all.",
		"Every stone has a voice. Most of them only ever say: wait.",
	},
	["cls.sha.zone.01"] = {
		"The elements here are sick. I hear them screaming beneath the skin of the earth.",
		"Fire gives no warmth here, and water quenches nothing. The spirits have forgotten their own names.",
	},
	["cls.sha.atk.01"] = {
		"Fire, ancient spirit, feed!",
		"Burn, spirit! This one is yours!",
	},
	["cls.mag.battle.01"] = {
		"Really? I won't even waste a difficult formula.",
		"This isn't even an apprentice's exercise. Let's be quick.",
	},
	["cls.mag.battle.02"] = {
		"At last, a problem worthy of an entire library.",
		"Fascinating. Truly. Someone take notes, if they survive.",
	},
	["cls.mag.victory.01"] = {
		"Note: fire solves nearly everything. The rest is solved by more fire.",
		"Result confirmed. The experiment is repeatable, unfortunately for the next subject.",
	},
	["cls.mag.lowhp.01"] = {
		"Silk robes were a terrible idea. I say so every time.",
		"No book covered this chapter. I'll write it myself, if I get out of it.",
	},
	["cls.mag.muse.01"] = {
		"Every spell is a question put to the world. Sometimes the world answers rudely.",
		"Magic isn't hard. What's hard is not wondering what happens if you pull one more thread.",
	},
	["cls.mag.travel.01"] = {
		"Roads are for people who didn't study.",
		"Walk? Two whole steps? Heavens, no.",
	},
	["cls.wlk.battle.01"] = {
		"Kneel, demon. I know your true name.",
		"I've bound bigger things than you with fewer words. Down.",
	},
	["cls.wlk.battle.02"] = {
		"Your soul smells delicious. A pity to waste it.",
		"There's an empty shard in my bag. Guess who it's for.",
	},
	["cls.wlk.lowhp.01"] = {
		"Minion, between me and death! Now!",
		"Minion, earn your keep! This is what I summoned you for!",
	},
	["cls.wlk.muse.01"] = {
		"At night the voices are kinder. That is what worries me.",
		"When the candle burns low, the minion stops pretending to sleep.",
	},
	["cls.wlk.lvl.01"] = {
		"Another pact, another invisible scar. Worth it. I think.",
		"The circle widens, and the voices grow more polite. I don't trust polite.",
	},
	["cls.wlk.greet.01"] = {
		"Don't mind my friend. He only bites when I ask.",
		"Hello. If my little friend stares, it's nothing. He's just sizing you up.",
	},
	["cls.dru.battle.01"] = {
		"You threatened the forest. The forest has claws.",
		"You trampled the seedlings. Now take a good look at who tends them.",
	},
	["cls.dru.victory.01"] = {
		"What falls feeds what is born. It is not cruelty: it is the cycle.",
		"Go back to the soil. It will care for you better than I did.",
	},
	["cls.dru.lowhp.01"] = {
		"Bear's hide, oaken heart. You will not break me.",
		"Oaks bend in a gale. They don't snap for so little.",
	},
	["cls.dru.muse.01"] = {
		"Once you have glimpsed the Dream, the waking world always seems a little too loud.",
		"In the Dream even silence has a colour. Out here it's only silence.",
	},
	["cls.dru.zone.01"] = {
		"The land suffers here. The roots call to me, and I do not know how to help them.",
		"Not even the mushrooms grow willingly here. It will take years, and someone who stays.",
	},
	["cls.dru.buff.01"] = {
		"May your skin turn to bark and your heart stay green.",
		"May the roots hold you when the ground gives way.",
	},
}, "base_classes")
