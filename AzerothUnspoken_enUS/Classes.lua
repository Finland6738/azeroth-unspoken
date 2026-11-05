-- Testi di base in inglese: voci delle classi, su più eventi. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryClasses.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

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
		"Don't mind the company I keep. It only bites when I ask.",
		"Hello. If my companion stares, it's nothing. It's just sizing you up.",
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
		"In the Dream even silence has a color. Out here it's only silence.",
	},
	["cls.dru.zone.01"] = {
		"The land suffers here. The roots call to me, and I do not know how to help them.",
		"Not even the mushrooms grow willingly here. It will take years, and someone who stays.",
	},
	["cls.dru.buff.01"] = {
		"May your skin turn to bark and your heart stay green.",
		"May the roots hold you when the ground gives way.",
	},
	["cls.druid.attack.001"] = {
		"Silver fire, strike true.",
		"Starlight, fall here.",
	},
	["cls.druid.attack.002"] = {
		"The wild bites back!",
		"Thorn and sap, strike!",
	},
	["cls.druid.attack.003"] = {
		"Teeth and claws, and no apologies.",
		"Here's the bear you were warned about.",
	},
	["cls.druid.battle.001"] = {
		"Roots, take hold!",
		"The ground has hands. Let me show you.",
		"Stay right there. The roots insist.",
	},
	["cls.druid.battle.002"] = {
		"Wherever you stand, something living stands with me.",
		"Grass, bark, beast: all of it on my side today.",
	},
	["cls.druid.battle.003"] = {
		"Bear or cat? Decide now. Hesitation is the only wrong shape.",
		"Teeth, claws or thorns. Pick one and commit.",
	},
	["cls.druid.battle.004"] = {
		"drops low, and for a breath {g:his|her} outline blurs, as if the body were remembering another shape.",
		"rolls {g:his|her} shoulders in a slow animal motion, and the eyes take on a watchful, unblinking calm.",
		"goes very still in the way of a hunting creature, all of {g:his|her} weight gathered and waiting.",
	},
	["cls.druid.battle.005"] = {
		"Technically, I mend people. Don't let that comfort you.",
		"Some days I tend the wild. Today I'm the part of it that bites.",
		"Healers fight too. We just know exactly where it hurts.",
	},
	["cls.druid.battle.006"] = {
		"Cenarius, keep my sight clear and my claws clean.",
		"By leaf and claw, I stand.",
		"Wild, lend me your teeth.",
	},
	["cls.druid.battle.007"] = {
		"I would rather have let this one pass. It won't let me.",
		"Every creature defends what it has. So do I.",
	},
	["cls.druid.battle.008"] = {
		"Thorns out. Bark on. Come and find out.",
		"I've got bark for skin and thorns on top. Your move.",
	},
	["cls.druid.battle.009"] = {
		"Sharp teeth and a long memory. The wild has both.",
		"The wild has watched you a long while. Now it moves.",
		"Everything wild knows when to flee. You've left it late.",
	},
	["cls.druid.buff.001"] = {
		"There. The wild has wrapped you up; it keeps out more than the cold.",
		"Go on. You carry a little of the wild now, thorns and all.",
	},
	["cls.druid.heal.001"] = {
		"Grow back, skin. You know how.",
		"Close, as bark closes over a cut branch.",
	},
	["cls.druid.heal.002"] = {
		"Healing is just reminding the body of what it already knows.",
		"I make nothing new. I remind the flesh of its own green patience.",
	},
	["cls.druid.heal.003"] = {
		"{target}, breathe slow. Let it knit.",
		"Easy, {target}. Mending takes a moment.",
		"Hold on, {target}. Roots go deep, and so does this.",
	},
	["cls.druid.levelup.001"] = {
		"Another season's growth in me. The rings get wider.",
		"I feel the wild open another door. Older shapes are waiting further in.",
	},
	["cls.druid.lowhp.001"] = {
		"Not yet. Even a burnt stump puts out green.",
		"Cut me down and I'll sprout again. Try harder.",
	},
	["cls.druid.lowhp.002"] = {
		"Mend first, pride later. Shed the shape and heal.",
		"Drop the claws. Hands now, for healing. Quickly.",
	},
	["cls.druid.lowhp.003"] = {
		"falters, breathing hard through the teeth like a cornered animal.",
		"sinks to one knee, chest heaving, eyes still fixed on the threat.",
	},
	["cls.druid.lowhp.004"] = {
		"If I go down here, at least the soil will make good use of me.",
		"The wild keeps a place ready for everyone. Mine can stay empty a while longer.",
		"Not like this. Not as a meal for crows.",
	},
	["cls.druid.muse.001"] = {
		"In the bear's shape the world shrinks to smell and weight. It is restful, in its way. No one expects a bear to make speeches.",
		"As a bear I stop worrying about words. Everything worth knowing comes in through the nose.",
		"A bear never wonders whether it is welcome. I could learn from that, in either shape.",
	},
	["cls.druid.muse.002"] = {
		"The cat in me is patient and a little cruel. I let it out, and I always make sure to call it back.",
		"Every time I take the cat's shape, I come out of it hungrier and quieter.",
	},
	["cls.druid.muse.003"] = {
		"The Emerald Dream is the world as it was first imagined. Out here, we tend the rough copy.",
		"Beneath all this, the Dream keeps the first shape of every hill. I like to think we are mending our way toward it.",
	},
	["cls.druid.muse.004"] = {
		"Druids learn early that dignity is optional. The wild has never once been impressed by it.",
		"No, I can't talk to every bear. Most of them are terrible conversationalists.",
	},
	["cls.druid.muse.005"] = {
		"pauses beside a sapling and straightens it with two fingers, as one would fix a child's collar.",
		"stoops to pick a burr from a young plant's stem, then moves on without comment.",
	},
	["cls.druid.muse.006"] = {
		"The wild is not kind. It is fair, in its own hard way. People confuse the two and then feel betrayed.",
		"Nature loves no one. It feeds whoever is ready. Knowing that made me gentler, oddly.",
		"A wolf is not wicked and a deer is not good. They are hungry and afraid, like the rest of us.",
	},
	["cls.druid.muse.007"] = {
		"I think of Moonglade often. Not the paths or the lodges, just the stillness, like a breath held for a thousand years.",
		"Moonglade is the one place where the wild and the druids agree on everything. Out here, we argue.",
	},
	["cls.druid.muse.008"] = {
		"The Cenarion Circle asks one thing of us above all: to stay. To keep coming to the same grove for years and see what changes.",
		"Being of the Circle means watching one hillside for twenty years and still finding something new on it.",
	},
	["cls.druid.muse.009"] = {
		"Druids count time in seasons, not hours. It makes us terrible at keeping appointments.",
		"Ask a druid when something will happen and you'll hear 'after the thaw'. It is meant to be helpful.",
		"'In spring.' Not a date, a feeling. Among druids it is perfectly clear.",
	},
	["cls.druid.muse.010"] = {
		"On four fast legs the land unrolls like a cloth. I see less of it and feel more.",
		"In travel form I stop thinking in miles. There is only the next rise, and the next.",
	},
	["cls.druid.muse.011"] = {
		"Under every forest there is a second forest of roots, older and darker and far more talkative. I hear it best when I keep still.",
		"The roots remember droughts no one alive recalls. If I listen long enough, they tell me which ones.",
		"A tree does its real work where no one looks. I try to remember that about people too.",
	},
	["cls.druid.muse.012"] = {
		"breathes in deeply through the nose, reading the air the way others read a page.",
		"tilts {g:his|her} head toward a sound no one else seems to notice, then relaxes.",
		"stops mid-step, nostrils flaring, as if the air had just said something worth hearing.",
	},
	["cls.druid.muse.013"] = {
		"Sometimes, after a long time in another shape, my own hands look strange to me. Too many fingers, too few claws.",
		"There is always a moment, changing back, when I am neither one thing nor the other. I have learned to love that moment.",
	},
	["cls.druid.quest_complete.001"] = {
		"Done. The land won't thank me, but it will grow a little better for it.",
		"Finished. No one will write a song, and the hillside won't notice. That's how it should be.",
		"One more small knot untied. The wild is full of them, and it never stops tying more.",
	},
	["cls.druid.quest_complete.002"] = {
		"It's done. Whatever was out of balance, it is a little less so.",
		"Done. The wild breathes easier, and so do I.",
	},
	["cls.druid.quest_complete.003"] = {
		"hands over what was asked and lingers a moment, as though listening for whether the land approves.",
		"turns the reward over in {g:his|her} hand, weighing it against something that cannot be paid in coin.",
	},
	["cls.druid.quest_complete.004"] = {
		"If they pay me, fine. The forest would have paid in acorns, and I'd have been just as content.",
		"Whatever the reward is, I'd have done it for a quiet hillside and a long sleep.",
	},
	["cls.druid.quest_progress.001"] = {
		"One part done. The rest will come, like a slow spring.",
		"Halfway, more or less. Growth rarely runs in a straight line.",
	},
	["cls.druid.rezother.001"] = {
		"Wake. The wild isn't done with you.",
		"Breathe again. The green has not let go of you.",
	},
	["cls.druid.threat.001"] = {
		"Leave, while the brambles are still only brambles.",
		"Turn around. The wild has been patient with you long enough.",
		"Walk away. Even the thistles here are on my side.",
	},
	["cls.druid.threat.002"] = {
		"I can be a bear in a heartbeat. You'd prefer I stayed like this.",
		"One more word and you'll be arguing with a bear.",
	},
	["cls.druid.victory.001"] = {
		"Back into my own shape, slowly. The beast lets go of me muscle by muscle.",
		"The bear leaves my shoulders last. They will ache for an hour.",
	},
	["cls.druid.victory.002"] = {
		"Something will grow where you lie. It's the best I can offer.",
		"Lie still now. The grass will cover this soon enough.",
	},
	["cls.druid.victory.003"] = {
		"kneels by the fallen a moment, then rises and brushes the dirt from {g:his|her} knees.",
		"shakes {g:himself|herself} like an animal coming out of water, and the tension of the fight falls away.",
	},
	["cls.druid.victory.004"] = {
		"Well. That's one less thing eating the saplings.",
		"Nature is balance. I just tipped it a little.",
		"One fewer mouth in the meadow. The rabbits send their regards.",
	},
	["cls.druid.victory.005"] = {
		"A life for a life, the wild says. I never like being the one who collects.",
		"The forest wastes nothing. I'll try to make this mean something too.",
	},
	["cls.druid.victory.006"] = {
		"The wild defends itself. Today it used me.",
		"Claws away. The wild has had its say.",
		"The wild spoke through me, and now it goes quiet again.",
	},
	["cls.druid.victory.007"] = {
		"Check the wounds, eat something green, keep moving. The wild rewards whoever recovers fastest.",
		"A quick mending, a drink of water, and on. Bears don't sit and brood.",
	},
	["cls.druid.victory.008"] = {
		"Ha! The beast in me enjoyed that more than I'll admit.",
		"Good fight. Something wild in me wants to howl. I'll hold it in.",
	},
	["cls.druid.victory.009"] = {
		"I thank the shape that carried me through. Odd, perhaps, but the bear never complains when I do.",
		"A word of thanks to the claws. They did the work; I only steered.",
	},
	["cls.druid.victory.010"] = {
		"plucks a burr from {g:his|her} sleeve and flicks it away, the fight already fading from {g:his|her} face.",
		"draws a long breath and lets it out slowly; calm closes over {g:him|her} like a pond after a stone.",
	},
	["cls.hunter.attack.001"] = {
		"There. Right where I wanted it.",
		"Got you. And again.",
		"Straight and true. Another?",
	},
	["cls.hunter.attack.002"] = {
		"adjusts for the movement by a hair and lets fly.",
		"fires, and is already readying the next before the first has landed.",
	},
	["cls.hunter.battle.001"] = {
		"I have you in my sights. Running only makes it a better story.",
		"Seen, sighted, done. You just haven't fallen yet.",
		"You're already in range. You just don't know it yet.",
	},
	["cls.hunter.battle.002"] = {
		"Space. Get space first, and everything else is easy.",
		"Keep it far, keep it slow, keep it guessing. That's the whole plan.",
		"Too close is where my kind of fight goes wrong. Step back, then begin.",
	},
	["cls.hunter.battle.003"] = {
		"Go on, then. You've been itching for this.",
		"Off you go. Save me a piece.",
		"Go on. I'll be right behind you. Well, a good way behind you.",
	},
	["cls.hunter.battle.004"] = {
		"backs off three quick paces to open the range, weapon already rising.",
		"settles into a half crouch, one eye narrowed, utterly still.",
		"brings the weapon up, breathes out, and holds the aim as though time had agreed to wait.",
	},
	["cls.hunter.battle.005"] = {
		"I've tracked cleverer prey than you, and it had four legs.",
		"Two legs, one weapon, no sense of smell. You're the easiest quarry I've seen in a long while.",
		"People always think they're harder to hunt than deer. They never are.",
	},
	["cls.hunter.battle.006"] = {
		"There was a perfect spot for a trap back there. Naturally, I think of it now.",
		"Next time, traps first and introductions after. I keep promising myself that.",
		"A good hunter readies the ground before the fight. I'll be a good hunter next time.",
	},
	["cls.hunter.battle.007"] = {
		"Leave the runners to me. Nothing outruns what I shoot.",
		"You take the close work. Anything that tries to flee is mine.",
		"I've got the long end. If it bolts, it falls.",
	},
	["cls.hunter.buff.001"] = {
		"A little keener than a moment ago. Before a hunt, that's worth more than a full belly.",
		"Ready, and readier than I was. Small edges win long hunts.",
		"Something tightens in me, like a string drawn back. Now we start.",
	},
	["cls.hunter.buff.002"] = {
		"Right. Now let's see what's waiting for us.",
		"Set. Whatever comes, I'll see it first.",
		"Good. Now we go looking.",
	},
	["cls.hunter.heal.001"] = {
		"Tastes like a swamp. Smells like one too. Still, I'm standing.",
		"Not the worst thing I've swallowed on the road. Close, though.",
		"Down it goes. Remind me to buy the better kind.",
	},
	["cls.hunter.heal.002"] = {
		"A wounded animal goes to ground and heals. I've no burrow, so this will have to do.",
		"Mend, and move. A lingering hurt makes a slow hunter, and slow hunters go hungry.",
		"The pain loosens its grip. Now I can hear the world again over my own heartbeat.",
	},
	["cls.hunter.heal.003"] = {
		"flexes the fingers of {g:his|her} aiming hand one by one, making sure each still answers.",
		"lets out a breath and shifts {g:his|her} footing, steadier now.",
		"rubs a sore shoulder, tests the weight of the weapon, and nods.",
	},
	["cls.hunter.levelup.001"] = {
		"My eye's a little steadier, my hand a little quicker. The wild will notice before anyone else does.",
		"Sharper sight, surer aim. Something, somewhere, just became a little easier to catch.",
	},
	["cls.hunter.lowhp.001"] = {
		"I need room. Room, and one clear breath!",
		"Distance, give me distance! One clean shot is all I ask!",
		"Not like this. Back off, find the range, finish it properly.",
	},
	["cls.hunter.lowhp.002"] = {
		"So this is how the quarry feels. I'll remember it, if I get the chance.",
		"Hunted, for once. My heart's going like a hare's.",
		"Funny. All those chases, and only now do I know what running feels like from the other side.",
	},
	["cls.hunter.lowhp.003"] = {
		"stumbles back, the aim wavering for the first time, jaw set against the pain.",
		"drops to one knee, still shooting, because it is the only thing left to do.",
		"breathes in short, ragged pulls, the weapon held up by will more than by strength.",
	},
	["cls.hunter.muse.001"] = {
		"Fletching, powder, string, sight: whatever I shoot with gets looked after before I do.",
		"I clean the weapon before I eat. Hungry hunters live; careless ones don't.",
		"A ranged weapon is a promise kept at a distance. I keep mine oiled so it keeps its word.",
	},
	["cls.hunter.muse.002"] = {
		"When the small birds go quiet all at once, something larger has arrived. I learned to look up before I learned to aim.",
		"Silence in the wild is never empty. It means somebody is holding their breath, and it may be whatever is watching me.",
		"The wild warns you, if you know its voice: a sudden hush, a scatter of wings, a smell that doesn't belong.",
	},
	["cls.hunter.muse.003"] = {
		"Animals are honest. Hungry, scared or curious, and they show you which. People take longer to read.",
		"Give me a cornered boar over a smiling merchant. At least the boar tells you what it wants.",
		"I understand beasts. People I'm still working on.",
	},
	["cls.hunter.muse.004"] = {
		"Every aspect I take is borrowed from some creature. I wear it a while, and give it back a little more like them.",
		"Calling on a beast's nature is a loan, not a theft. I try to be a good borrower.",
		"You don't command a creature's nature. You ask to stand in it for a while, and you say thank you.",
	},
	["cls.hunter.muse.005"] = {
		"Days on a trail and I forget the sound of my own voice. It isn't loneliness, exactly. It's quiet with company in it.",
		"I talk less every year. The wild has no need of my opinions, and I've stopped offering them.",
		"On the trail no one needs me to explain myself. It's the closest thing to rest I know.",
	},
	["cls.hunter.muse.006"] = {
		"wets a finger and holds it up, reading the air before going on.",
		"stops mid-stride, head tilted, listening to something only {g:he|she} seems to hear.",
		"scans the surroundings in slow sweeps, the way someone else might reread a letter.",
	},
	["cls.hunter.muse.007"] = {
		"Hide, sinew, meat, bone. Take a life and you owe it the use of everything. Waste is the one thing I can't forgive.",
		"Nothing left to rot if I can help it. The animal gave all it had; the least I give back is care.",
		"A hunter who wastes the kill has learned only half the trade, and the uglier half.",
	},
	["cls.hunter.muse.008"] = {
		"I count my shots the way a miser counts coins. Run dry once far from any town and you never forget it.",
		"My ammunition goes faster than my money, and that's saying something.",
		"Rule one of this trade: buy more ammunition. Rule two: see rule one.",
	},
	["cls.hunter.muse.009"] = {
		"I like a little distance between me and the trouble. It gives me time to think, and the trouble less of it.",
		"Some people fight close so they can see the eyes. I'd rather see the whole field.",
	},
	["cls.hunter.muse.010"] = {
		"Predator and prey, and I'm both, depending on the moment. The wild keeps no permanent seats.",
		"I hunt, and something, somewhere, is hunting me. The wild is fair in that way, if in no other.",
	},
	["cls.hunter.pet_call.001"] = {
		"{pet} comes back to my side and looks me over, as if I'm the one who went missing.",
		"Here's {pet} again, checking me head to toe for whatever trouble I found without help.",
	},
	["cls.hunter.pet_call.002"] = {
		"{pet} takes its place without fuss. Some partnerships need no words, only a shared direction.",
		"With {pet} at my heel, the road stops being something I face alone.",
	},
	["cls.hunter.pet_dismiss.001"] = {
		"Off you go, {pet}. Rest where I can't see you; I'll find you when it matters.",
		"{pet} goes without looking back, and I choose to read that as trust.",
	},
	["cls.hunter.pet_mood.001"] = {
		"{pet} is content enough: not delighted, not sulking. Much like me, most days.",
		"{pet} has settled into a steady sort of mood. On that, we understand each other.",
	},
	["cls.hunter.quest_complete.001"] = {
		"Done. Patience and a good eye; that's all it ever takes.",
		"Finished. Mostly it was waiting for the right moment, as usual.",
		"There. Nothing to it but patience, and a little aim.",
	},
	["cls.hunter.quest_complete.002"] = {
		"Paid and sent on my way. The trail is waiting, and it never asks what I've been doing.",
		"That's that. My feet are already pointing back toward open ground.",
		"Finished. Back to where nobody needs a speech from me.",
	},
	["cls.hunter.quest_complete.003"] = {
		"nods once and is already checking {g:his|her} ammunition for whatever comes next.",
		"gives a short nod, eyes drifting toward the way out, restless to be moving.",
		"shifts {g:his|her} weight from foot to foot, like an animal that has stood still too long.",
	},
	["cls.hunter.quest_progress.001"] = {
		"One mark made. The trail goes on, and so do I.",
		"A step closer. I've followed thinner leads than this to the end.",
	},
	["cls.hunter.rezother.001"] = {
		"Come back. Breathe. We've still got roads to walk, you and I.",
		"Easy now, easy. I've got you. Breathe, and open your eyes.",
		"Not yet. I'm not done needing you. Breathe.",
	},
	["cls.hunter.threat.001"] = {
		"I can put a shot through a ring at a hundred paces. Your eye is bigger than a ring.",
		"Run if you like. I've caught faster things than you.",
		"Leave now. I'd hate to waste the ammunition, but I will.",
	},
	["cls.hunter.threat.002"] = {
		"My companion hasn't eaten yet. Keep talking.",
		"See the beast at my side? It's only waiting for me to say one word.",
	},
	["cls.hunter.victory.001"] = {
		"Good. Good! That's how we do it, you and I.",
		"Look at that swagger. You earned it.",
		"Not bad, partner. Not bad at all.",
	},
	["cls.hunter.victory.002"] = {
		"Quiet again. I wait and listen anyway; the second one is always the one you didn't see.",
		"Done. I don't lower the weapon yet. The wild has a habit of sending company.",
		"Still. Count to ten, ears open, then believe it's over.",
	},
	["cls.hunter.victory.003"] = {
		"lowers the weapon and lets out a long, slow breath through the nose.",
		"lets the aim fall at last and rolls the tension out of {g:his|her} shoulders.",
		"eases the weapon down and stands a moment, simply breathing.",
	},
	["cls.hunter.victory.004"] = {
		"Too many shots for that one. I'm getting sloppy.",
		"Should have ended with the first. I'll do better.",
		"Messy. A clean hunt needs fewer shots than that.",
	},
	["cls.hunter.victory.005"] = {
		"It fought for its life as hard as I fight for mine. I won't forget that, whatever ends up in the pot.",
		"Brave animal. I'll remember the way it stood its ground.",
		"It didn't run. I respect that more than I can say aloud.",
	},
	["cls.hunter.victory.006"] = {
		"And they said I couldn't hit the broad side of a barn.",
		"Not bad for someone who stands at the back.",
		"Still got it. Never doubted it. Well, briefly.",
	},
	["cls.hunter.victory.007"] = {
		"The birds start up again, one after another. That's how I know it's truly over.",
		"Little by little the wild finds its voice again. That's the real end of a fight.",
	},
	["cls.mage.attack.001"] = {
		"There. Warm yourself.",
		"Heat, focus, release. Simple.",
		"Let's see how you like it hot.",
	},
	["cls.mage.attack.002"] = {
		"Cool down. You're getting worked up.",
		"A little brittle now, aren't we?",
	},
	["cls.mage.attack.003"] = {
		"Shape it. Hold it. Let go. Again.",
		"Mind on the formula, not on the teeth.",
	},
	["cls.mage.battle.001"] = {
		"Stand back. I'd hate to get any of this on you.",
		"Let's see what the theory says about you.",
		"One moment. I'm choosing between hot and cold.",
	},
	["cls.mage.battle.002"] = {
		"You do realize I've read more books than you've had meals?",
		"I'd turn you into something less dangerous, but you'd only make a very confused sheep.",
		"Ah, a practical exam. I did so well on the written one.",
	},
	["cls.mage.battle.003"] = {
		"Distance first. A mage who lets them close has forgotten the first lesson.",
		"Keep the space between us. That space is my armor.",
		"Breathe, focus, count the steps between us. Then begin.",
	},
	["cls.mage.battle.004"] = {
		"raises both hands, and the air between them thickens and glitters like breath on a cold window.",
		"mutters a quick string of syllables, and the hair on everyone's arms stands up.",
		"steps back with sudden lightness, fingers already weaving, eyes fixed and calm.",
	},
	["cls.mage.battle.005"] = {
		"I didn't spend years studying to be interrupted by you.",
		"You've walked into a lesson, and I'm the only one teaching it.",
		"Last chance to walk away. After this, I stop explaining.",
	},
	["cls.mage.battle.006"] = {
		"Keep them off me for three heartbeats. I'll handle the rest.",
		"Give me room, friends. This next part gets warm. Or cold. I haven't decided.",
	},
	["cls.mage.battle.007"] = {
		"The power rises so willingly. That's what I must never get used to.",
		"Every fight, the arcane offers a little more than I asked for. I always hand the change back.",
	},
	["cls.mage.buff.001"] = {
		"A little extra clarity. Use it on something worthwhile; reading, perhaps.",
		"Now you'll think a little quicker. Please don't use it to argue with me.",
		"Sharper wits, on the house. No refunds.",
	},
	["cls.mage.buff.002"] = {
		"May your thoughts run clear and your mind stay your own.",
		"Clarity for the road. The world rewards those who notice things.",
	},
	["cls.mage.heal.001"] = {
		"Healing was never my subject. I make do, and I complain.",
		"No spell for this in my books. Fine. Whatever works.",
		"A mage mending a wound. Nobody write this down.",
	},
	["cls.mage.heal.002"] = {
		"I can set a field alight from fifty paces, and a scraped knee still beats me.",
		"Better. Not elegant, but better.",
		"There. The real healing, later, I'll gladly leave to someone else.",
	},
	["cls.mage.heal.003"] = {
		"Flesh doesn't obey formulas the way fire does. I envy those who understand it.",
		"The body is the one library I've never properly studied. Perhaps I should.",
		"Healing is a kind of magic I respect from a distance, like a cliff edge.",
	},
	["cls.mage.lowhp.001"] = {
		"This is not going the way the diagrams suggested.",
		"I'd like to lodge a complaint with whoever wrote my last textbook.",
		"Observation: being hit is unpleasant. Further research unnecessary.",
	},
	["cls.mage.lowhp.002"] = {
		"Too close. Far too close. Step away, breathe, think. Then live.",
		"So much still unread. Not like this. Not yet.",
		"My mind is the only armor I ever wore. Hold, mind. Hold.",
	},
	["cls.mage.lowhp.003"] = {
		"I'm not finished. I still have notes to write about you.",
		"Fragile, yes. Finished, no.",
		"Robes tear. Will doesn't.",
	},
	["cls.mage.muse.001"] = {
		"Every spell I know is a door someone else found. I want to find one of my own before I'm done.",
		"I read until the letters swim, then I read a little more. The good ideas live just past tired.",
		"The arcane doesn't reward talent. It rewards stubbornness, and it punishes the rest.",
	},
	["cls.mage.muse.002"] = {
		"Conjured water tastes of nothing at all. That's the whole trick, and nobody believes it's hard.",
		"Everyone loves a mage until the bread runs out. Then they want a baker who never gets tired.",
		"Ah, conjured food. Filling, flavorless, and somehow always my fault.",
	},
	["cls.mage.muse.003"] = {
		"Under every stone and leaf, the same hum. Most people never hear it. I can't stop hearing it.",
		"The world is held together by threads I can almost see. Pull the wrong one and it all frays.",
		"There is a pattern beneath the pattern. I've glimpsed its edge twice. I'll spend my life looking for the third time.",
	},
	["cls.mage.muse.004"] = {
		"I've turned enemies into sheep. Sheep, mind you. Nobody has ever once asked how the sheep feel about it.",
		"The secret to a portal is not thinking about the part in between.",
		"Frost in the morning, fire in the afternoon, and a headache by supper. A mage's day.",
	},
	["cls.mage.muse.005"] = {
		"Power is a lantern in a library. Useful, beautiful, and one careless moment from disaster.",
		"The temptation isn't wickedness. It's curiosity with no brakes. I know; I have it.",
		"Every mage I've seen go too far went reaching. Nobody falls standing still.",
	},
	["cls.mage.muse.006"] = {
		"snaps {g:his|her} fingers absently, and a small flame appears, considers the world, and goes out.",
		"traces a few lines in the air while thinking, leaving a faint shimmer that lingers longer than it should.",
		"frowns at a page of tiny, cramped notes, crosses something out, then writes it again exactly as before.",
	},
	["cls.mage.muse.007"] = {
		"The more I learn, the fewer people I can explain it to.",
		"Long hours over books make for short conversations. I've forgotten how to talk about anything else.",
	},
	["cls.mage.muse.008"] = {
		"Knowledge is the only thing I carry that gets lighter the more of it I have.",
		"Teach me something today, world. I'll pay attention, I promise.",
	},
	["cls.mage.muse.009"] = {
		"Fire wants to spread, frost wants to hold still. I spend my days keeping both from getting their way.",
		"Frost is the patient one. Fire never learned to wait. I like them both, which says something about me.",
		"Arcane is the strangest of the three. Fire and frost are things; the arcane is the reason things are.",
	},
	["cls.mage.muse.010"] = {
		"If I had a copper for every time someone asked me to light their pipe, I'd buy a tower.",
		"No, I can't conjure gold. If I could, do you think I'd be out here?",
		"Mages are terribly misunderstood. Mostly because we talk too fast.",
	},
	["cls.mage.quest_complete.001"] = {
		"Done, and I only set one thing on fire. By accident.",
		"Finished. I'd have preferred payment in books, but coin will do.",
		"Another errand done. Remind me why I didn't simply teleport here.",
	},
	["cls.mage.quest_complete.002"] = {
		"A task closed, and I learned two things nobody asked me to. The best kind of errand.",
		"They paid for the result. The curiosity I satisfied for free.",
		"Every errand teaches something, even the dull ones. This one taught me patience, mostly.",
	},
	["cls.mage.quest_complete.003"] = {
		"jots a short line in a small notebook, underlines it twice, and snaps the book shut.",
		"tucks the reward away and, absent-mindedly, conjures a cup of water to celebrate.",
		"makes a small, satisfied flourish with one hand, and a few sparks drift down and wink out.",
	},
	["cls.mage.quest_progress.001"] = {
		"Part one solved. The rest is just a longer equation.",
		"Progress. Slow, measurable and deeply satisfying, like a good experiment.",
	},
	["cls.mage.rezother.001"] = {
		"Not my art, this. Breathe anyway. Please.",
		"I'm no healer, and death is no lecture hall. Still: up you get.",
		"Wake up. I'd hate to explain to the others that I tried my best.",
	},
	["cls.mage.threat.001"] = {
		"I can make you a sheep faster than you can blink. Shall we test it?",
		"Careful. I've turned braver things than you into something with wool.",
		"Do go on. I'm deciding between the ice and the grill.",
	},
	["cls.mage.threat.002"] = {
		"I know words that unmake things. I'd rather not waste one on you.",
		"Leave. I'm told my temper and my fire share a room.",
	},
	["cls.mage.victory.001"] = {
		"Hypothesis confirmed. Please hold your applause; I'm still a little singed.",
		"And that, class, is why we don't interrupt a mage mid-sentence.",
		"Elegant? No. Effective? Very. I'll take it.",
	},
	["cls.mage.victory.002"] = {
		"Mana low, head buzzing. Sit, drink, think. In that order.",
		"Every victory costs a little focus. I'll be useless for a minute, and that's fine.",
		"Done. Now the quiet part, where I wait for my thoughts to stop ringing.",
	},
	["cls.mage.victory.003"] = {
		"pats out a small smoldering spot on {g:his|her} sleeve with great dignity.",
		"brushes a thin crust of rime from {g:his|her} gloves and straightens a crooked hem.",
		"blows on both fingertips as if they were a little too warm, then tucks them into the sleeves.",
	},
	["cls.mage.victory.004"] = {
		"Instructive. I'll write that one down before the details fade.",
		"I learned something just now. It cost the other side considerably more.",
		"Note to self: that worked. Try not to look surprised next time.",
	},
	["cls.mage.victory.005"] = {
		"Power is easy to admire from the inside. I try to remember how it looks from the other end.",
		"There's always a moment, after, when the craft feels too easy. I don't trust that moment.",
		"Ash and silence. The arcane doesn't care which side it served. I have to care for it.",
	},
	["cls.mage.victory.006"] = {
		"Was that it? I prepared three formulas and only needed one.",
		"I'd call that a demonstration rather than a fight.",
		"Well. That was shorter than my introduction.",
	},
	["cls.mage.victory.007"] = {
		"Quick, at least. I made sure of that. It's the only kindness this craft has in a fight.",
		"Such a waste. I'd have liked to understand it first, and now there's nothing left to ask.",
	},
	["cls.mage.victory.008"] = {
		"A few words, a steady will, and chaos sits down. I never tire of it.",
		"This is what the long hours were for. Every one of them.",
	},
	["cls.paladin.attack.001"] = {
		"The seal breaks. Take all of it!",
		"Here it comes. Every bit of it.",
	},
	["cls.paladin.attack.002"] = {
		"Into the dark with you, and stay there!",
		"The Light finds you, dead thing. It always will.",
	},
	["cls.paladin.attack.003"] = {
		"Hammer down!",
		"Steady... now!",
		"Feel the weight of it!",
	},
	["cls.paladin.battle.001"] = {
		"Behind me. Now.",
		"Stay behind me. I'm the one wearing the armor.",
		"Everyone behind me. I'll take the first blow.",
	},
	["cls.paladin.battle.002"] = {
		"Light, make me a wall they cannot climb.",
		"Light, burn in the armor and not in my temper.",
	},
	["cls.paladin.battle.003"] = {
		"Aura up. Seal set. Breathe once, then go.",
		"Seal, then strike. Don't rush it.",
		"Patience. The seal does the talking.",
	},
	["cls.paladin.battle.004"] = {
		"squares {g:his|her} shoulders, and a faint radiance seems to settle over the armor like a fine frost.",
		"raises {g:his|her} weapon in a short salute to the foe before stepping forward, a pale light along its edge.",
	},
	["cls.paladin.battle.005"] = {
		"I'd ask you to surrender, but I know that look.",
		"I was taught to offer mercy first. Consider it offered. And refused, I suppose.",
		"There's still time to walk away. No? Pity.",
	},
	["cls.paladin.battle.006"] = {
		"Hold! Nothing gets past while I'm standing!",
		"Not one step past me.",
	},
	["cls.paladin.battle.007"] = {
		"Every fight, I begin it hoping it will be the last one needed. It never is.",
		"I don't enjoy this. I simply do it well.",
	},
	["cls.paladin.battle.008"] = {
		"By the Light, you'll find me harder to move than you think.",
		"The Light stands here. So do I.",
	},
	["cls.paladin.buff.001"] = {
		"Go blessed. Try to deserve it.",
		"There. Carry this blessing lightly, and use it well.",
	},
	["cls.paladin.buff.002"] = {
		"There's your blessing. Don't make me regret it.",
		"One blessing, freshly made. No refunds.",
		"You're blessed now. Try to look the part.",
	},
	["cls.paladin.heal.001"] = {
		"Light, close this.",
		"Hold still. The Light is warmer than it looks.",
	},
	["cls.paladin.heal.002"] = {
		"The warmth leaves my hands and goes where it is needed. I never feel poorer for it.",
		"Healing feels like handing over the last coal of a fire and watching it catch somewhere else.",
	},
	["cls.paladin.heal.003"] = {
		"{target}, up. You're not done.",
		"Easy, {target}. I've got you.",
		"{target}, the Light isn't finished with you.",
	},
	["cls.paladin.lowhp.001"] = {
		"Is that all? I've taken worse kicks from a stubborn horse.",
		"I've sat through sermons that hurt more. Come on!",
	},
	["cls.paladin.lowhp.002"] = {
		"Breathe. The armor is still on, the arm still moves. That's enough to keep going.",
		"Knees, don't you dare. Not yet.",
	},
	["cls.paladin.lowhp.003"] = {
		"staggers, and the light about {g:him|her} flares brighter instead of fading.",
		"drops to one knee, then pushes up again on the haft of {g:his|her} weapon, jaw set, a dim light flickering at the edges of the armor.",
	},
	["cls.paladin.lowhp.004"] = {
		"The edge, then. I have seen it up close for others often enough. Strange to be the one leaning over.",
		"The last mercy is still there, if I need it. Not yet. Not yet.",
	},
	["cls.paladin.muse.001"] = {
		"The Light never speaks in words. It feels more like standing up straight.",
		"People expect the Light to shout. With me it mostly sighs, and nudges.",
		"When the Light comes, it is less like a voice and more like remembering where I left my courage.",
	},
	["cls.paladin.muse.002"] = {
		"Armor is heavy, and that is the point. Every step should cost something when you mean to stand between others and harm.",
		"I learned to march in mail. Comfort was the first thing I gave up.",
	},
	["cls.paladin.muse.003"] = {
		"A hammer does not cut and does not lie. It simply arrives.",
		"I like a hammer for its honesty. Everyone can see it coming.",
	},
	["cls.paladin.muse.004"] = {
		"Yes, the armor is polished. No, not for vanity. Mostly.",
		"Shining armor is a terrible idea for sneaking. Good thing I never sneak.",
		"I'm told I clank. I prefer to think of it as announcing myself.",
	},
	["cls.paladin.muse.005"] = {
		"pauses to tighten a strap on {g:his|her} gauntlet, testing the fit with a slow clench of the fist.",
		"rubs a thumb over a dent in {g:his|her} armor, as though remembering who put it there.",
	},
	["cls.paladin.muse.006"] = {
		"The Silver Hand was meant to outlive its founders. Some days I wonder what is left of it, beyond those who still carry the oath.",
		"The old order of the Silver Hand is scattered now. Some days the oath feels like a house with half its walls gone.",
	},
	["cls.paladin.muse.007"] = {
		"A blessing costs me nothing anyone can see. That's why I try never to give one carelessly.",
		"I bless strangers every day. It is the easiest generosity there is, and somehow still the one people remember.",
	},
	["cls.paladin.muse.008"] = {
		"An aura is a strange gift. Whoever stands near me holds up a little better, and none of them asked.",
		"I carry a small ring of protection with me wherever I go. Most people never notice it, which is just as well.",
	},
	["cls.paladin.muse.009"] = {
		"Somebody has to stand at the front. Better someone wearing armor.",
		"Courage has little to do with it. I simply have better armor.",
		"Front line, every time. Someone has to give the archers something to look at.",
	},
	["cls.paladin.muse.010"] = {
		"The Light does not make me right. It makes me responsible. Those are very different burdens.",
		"Some think the Light chooses sides. I think it only asks who will stand up, and waits.",
	},
	["cls.paladin.muse.011"] = {
		"lifts a hand, and a faint warmth seems to gather in the palm before {g:he|she} lets it fade, unused.",
		"bows {g:his|her} head briefly, lips moving, then squares {g:his|her} shoulders as if a weight had settled into place.",
	},
	["cls.paladin.muse.012"] = {
		"Every paladin keeps one last mercy for the worst moment. I hope I spend mine on someone else.",
		"The deepest healing I know empties me completely. I keep it like a coin sewn into a coat, for the day there is no other way.",
		"I could pour everything I have into one wounded body in a single breath. Knowing that changes how I look at people.",
	},
	["cls.paladin.muse.013"] = {
		"A seal is a promise made to the weapon. Striking with it is keeping the promise.",
		"First you set the seal, then you deliver it. Half the craft is knowing when to let go.",
	},
	["cls.paladin.quest_complete.001"] = {
		"A promise kept. That's the only kind of glory I trust.",
		"Done as I said I'd do it. The rest is just reward.",
	},
	["cls.paladin.quest_complete.002"] = {
		"It's done. If you need me again, follow the clank of the armor.",
		"Finished. Call on me if there's more.",
	},
	["cls.paladin.quest_complete.003"] = {
		"accepts the thanks with a small bow, as if it were owed to someone else.",
		"inclines {g:his|her} head to the one who asked, then sets a hand to {g:his|her} chest in a quiet, formal gesture.",
	},
	["cls.paladin.quest_complete.004"] = {
		"Most days an oath lives in small tasks, not on battlefields. In fetching, mending, carrying.",
		"Nobody sings of the errands. Still, an oath is mostly made of them.",
		"This is the part of the oath nobody sees, and the part I'm proudest of.",
	},
	["cls.paladin.quest_progress.001"] = {
		"That's all of it. Now to carry word back, as promised.",
		"Finished out here. A promise isn't kept until the one who asked hears of it.",
	},
	["cls.paladin.rezother.001"] = {
		"Breathe. Open your eyes. It was only a moment, as such things go.",
		"The Light has lent you another day. Spend it kindly.",
	},
	["cls.paladin.threat.001"] = {
		"Walk away. I'm offering this once, and I'm being generous.",
		"You can leave on your feet, or be carried. Choose quickly.",
		"I was asked to show mercy. I have, up to now.",
	},
	["cls.paladin.threat.002"] = {
		"The Light sees what you mean to do. So do I.",
		"Step back. The Light is patient. My arm, less so.",
	},
	["cls.paladin.victory.001"] = {
		"Stand down. It's finished.",
		"That's enough. No one else needs to fall here.",
	},
	["cls.paladin.victory.002"] = {
		"Breathe. Check the straps, then the weapon, then the bruises. In that order.",
		"Armor first, then the bruises. The order matters more than it seems.",
	},
	["cls.paladin.victory.003"] = {
		"lowers {g:his|her} weapon and stands a moment in silence, head bowed over the fallen.",
		"wipes the weapon clean and sets it at {g:his|her} side, the glow about {g:him|her} slowly dimming.",
	},
	["cls.paladin.victory.004"] = {
		"Another dent. The smith is going to adore me.",
		"I'll be scrubbing this armor for days.",
		"Somebody owes me a new strap. Probably me.",
	},
	["cls.paladin.victory.005"] = {
		"I take no pleasure in this part. The Light keeps me standing; it does not keep me from feeling.",
		"Victory has a weight too. I carry it the way I carry my arms: carefully.",
	},
	["cls.paladin.victory.006"] = {
		"The Light held. Thank it, not me.",
		"Give thanks to the Light. My arm only followed.",
		"Not my strength alone. Never my strength alone.",
	},
	["cls.paladin.victory.007"] = {
		"A clean fight, a quick end. That's the most mercy a battle allows.",
		"It ended quickly. Out here, that is what kindness looks like.",
	},
	["cls.paladin.victory.008"] = {
		"Still standing. The armor held, the arm held, the Light held.",
		"Feet planted, armor whole, and still here. Good.",
	},
	["cls.paladin.victory.009"] = {
		"Was that justice, or only the stronger arm? I ask every time. I hope I never stop asking.",
		"The Light gave me the strength. Whether I used it well is my question, not its.",
	},
	["cls.paladin.victory.010"] = {
		"plants the head of {g:his|her} weapon on the ground and leans on it, breathing slowly until the shaking stops.",
		"presses a gauntleted hand to {g:his|her} chest and takes a long, steadying breath.",
	},
	["cls.priest.attack.001"] = {
		"Feel that? That's what doubt tastes like, from the inside.",
		"This one doesn't heal. It lingers.",
		"Hush. Let it creep in slowly; it knows the way.",
	},
	["cls.priest.attack.002"] = {
		"Mercy later. This first.",
		"I'll heal the next one. Not you.",
	},
	["cls.priest.attack.003"] = {
		"curls {g:his|her} fingers slowly, as if closing them around something cold and unwilling.",
		"speaks a few soft words, and the air in front of {g:him|her} seems to darken by a shade.",
	},
	["cls.priest.battle.001"] = {
		"Come on, then. I've stood through worse and kept others standing besides.",
		"I put people back together for a living. A little damage doesn't scare me.",
		"You'll find I don't break easily. I know too much about breaking.",
	},
	["cls.priest.battle.002"] = {
		"I'm the one who heals. You're supposed to start with someone else.",
		"Ah. You've noticed who wears the robe. Sharp of you.",
		"Going for the healer. Bold. Not smart, but bold.",
	},
	["cls.priest.battle.003"] = {
		"Let the cold half of me speak first. The warm half can apologize later.",
		"There's a part of the craft that knows how to hurt. I let it off the leash, just a little.",
		"Mending and harming come from the same well. This time I draw from the dark end.",
	},
	["cls.priest.battle.004"] = {
		"raises one open hand, palm forward, calm as someone about to bless a meal.",
		"steps forward with lips already moving, the words low and steady.",
		"draws a slow breath and squares {g:his|her} shoulders, unhurried before the threat.",
	},
	["cls.priest.battle.005"] = {
		"I spend my days keeping people alive. You've caught me on a different errand.",
		"I keep the kind words for the wounded. You get the other sort.",
		"Every word I know can heal or harm. You've chosen which ones you'll hear.",
	},
	["cls.priest.battle.006"] = {
		"Here we go. I'll do what I must, and wash my hands of it after.",
		"I'd rather be binding wounds than making them. Nobody asked me.",
		"Another one who wants a fight. I never learn to want it back.",
	},
	["cls.priest.battle.007"] = {
		"Stay within reach! I can't mend what I can't get to!",
		"Fight and don't look back. I'll see to your backs.",
		"Go! Every wound you take, I'll be there to close it.",
	},
	["cls.priest.buff.001"] = {
		"Go on, with a little more strength than before. Spend it wisely.",
		"There. Something of mine walks with you now.",
	},
	["cls.priest.buff.002"] = {
		"Better to ward before than mend after. I learned that the expensive way.",
		"A little protection, laid on early. Cheaper than everything that comes later.",
	},
	["cls.priest.heal.001"] = {
		"Don't move. This part I'm good at.",
		"There. Breathe out. It's closing.",
		"Easy. You're not finished, and neither am I.",
	},
	["cls.priest.heal.002"] = {
		"Another wound closed. I feel each one in my own chest, a little.",
		"The warmth goes out of my hands and into the hurt. Every time, it leaves me a little emptier.",
		"Mend, mend, mend. Some days the word is all the prayer I have.",
	},
	["cls.priest.levelup.001"] = {
		"My hands are steadier than they were. The doubts aren't, but the hands are.",
		"More I can mend, more I can carry. I hope the back keeps pace with the heart.",
	},
	["cls.priest.lowhp.001"] = {
		"I've kept worse wounds than this closed. Mine can wait its turn.",
		"Not yet. There are people who still need these hands.",
		"On my feet. A healer on the ground helps no one.",
	},
	["cls.priest.lowhp.002"] = {
		"Breathe. Slowly. I've told a hundred people that. Now listen to it yourself.",
		"Strange, to feel the cold from this side. I always pictured it from the bedside.",
		"So this is what they see when I lean over them. A blur, and a voice that wants them to stay.",
	},
	["cls.priest.lowhp.003"] = {
		"Don't worry about me. I'm a professional. A bleeding professional, but still.",
		"If anyone has a spare healer, now would be lovely.",
	},
	["cls.priest.muse.001"] = {
		"My hands know the shape of a wound before my eyes do. I wish they could forget a few.",
		"I have closed so many cuts that I see them everywhere: in torn cloth, in cracked bread, in faces.",
		"Other people count their kills. I count the ones who walked away. It is a shorter list than I'd like.",
	},
	["cls.priest.muse.002"] = {
		"Prayer is mostly listening. The answer, when there is one, rarely uses words.",
		"I used to ask for signs. Now I ask for patience, and the signs seem to take care of themselves.",
		"Some days the prayer is only a breath held a little longer. That counts too. It has to.",
	},
	["cls.priest.muse.003"] = {
		"Everyone wants a blessing. Nobody wants the advice that comes along with it.",
		"Tell a stranger you tend to souls and they start confessing. I only asked for directions.",
		"A healer's first lesson: people bleed at the worst possible moment. The second: they apologize for it.",
	},
	["cls.priest.muse.004"] = {
		"The same hands that mend can unmake. I learned the second lesson more easily than the first, and that frightens me.",
		"Healing taught me where the body is weakest. I try not to think about what else that knowledge is good for.",
		"There is a darker half to this craft. Every one of us meets it, sooner or later. What you do afterward is the real vow.",
	},
	["cls.priest.muse.005"] = {
		"sits still for a moment, palms open on {g:his|her} knees, and lets the quiet settle like dust after a march.",
		"closes {g:his|her} eyes and breathes slowly, as if counting something no one else can see.",
		"rubs both tired hands together, then looks at them for a while, almost as at old companions.",
	},
	["cls.priest.muse.006"] = {
		"Nobody is too far gone on the first day. I have to keep believing that, or I should stop doing this.",
		"I have seen people mend who had no business mending. That is the only argument I need.",
		"Mercy is not softness. It's the heaviest thing I carry, and I carry it on purpose.",
	},
	["cls.priest.muse.007"] = {
		"Cuts, bruises, broken pride. I can fix two of those.",
		"Yes, I can mend that. No, I can't give you better judgment for next time.",
		"Bandages, patience and a strong stomach. That's the whole secret, and nobody believes me.",
	},
	["cls.priest.muse.008"] = {
		"Whatever answers me when I pray is older than my doubts. I find that a comfort on the bad days.",
		"I've known priests who never doubted. Their hands always convinced me less than the ones that shook a little.",
		"Belief is a small flame carried into the wind. You don't beat the wind. You just keep walking.",
	},
	["cls.priest.muse.009"] = {
		"I remember the ones I couldn't save better than the ones I could. That seems unfair to the living.",
		"Every healer keeps a quiet list of the ones who slipped through. Mine is not long. It is heavy enough.",
		"Anyone in this craft carries a small graveyard at the back of the mind. I visit mine less often than I used to.",
	},
	["cls.priest.muse.010"] = {
		"A shield of will holds better than a shield of steel. Ask anyone who has stood behind mine.",
		"I don't carry a sword. I carry the reason the sword-bearers get home.",
		"Stand where I can see you, and nothing reaches you without asking me first.",
	},
	["cls.priest.quest_complete.001"] = {
		"Someone sleeps easier for this. That's the only reward I'll remember.",
		"The coin's fine. The look on their face was better.",
		"A small kindness, finished. They add up, I tell myself.",
	},
	["cls.priest.quest_complete.002"] = {
		"Done, and nobody needed patching up afterward. A good day's work.",
		"There. I'd bless the reward, but I suspect I've already spent it in my head.",
		"All taken care of. Next time, maybe call the healer before something catches fire.",
	},
	["cls.priest.quest_complete.003"] = {
		"presses the reward into a pocket without counting it and murmurs a short word of thanks to no one in particular.",
		"touches two fingers to {g:his|her} brow as the matter closes, an old habit of long vigils.",
		"folds both hands for a moment, the way one does when a long errand finally ends.",
	},
	["cls.priest.quest_progress.001"] = {
		"Part of it done. Patience: I preach it to everyone else, so I can hardly complain.",
		"One step further. Healing taught me that most things mend in stages.",
	},
	["cls.priest.rezother.001"] = {
		"Wake up. Whatever you saw over there, it can wait.",
		"Come on, into the body again. It missed you.",
	},
	["cls.priest.threat.001"] = {
		"I know exactly how much a body can take. Want me to show you where the limit is?",
		"I heal people. I also know where it hurts most. Keep that in mind.",
		"I spend my days putting people back together. Don't make me curious about the reverse.",
	},
	["cls.priest.threat.002"] = {
		"There's a quiet part of me that heals no one. Don't wake it.",
		"Push me, and you'll meet the side of this craft nobody thanks me for.",
	},
	["cls.priest.victory.001"] = {
		"Rest now. Whatever you were, it's over.",
		"It's done. I'll say a word for you anyway; it costs me nothing.",
		"Lie still. Nobody will ask anything more of you.",
	},
	["cls.priest.victory.002"] = {
		"Steady hands, steady breath. Now see who's bleeding.",
		"Over. First the wounds, then the questions, then maybe sleep.",
		"The fight ends and my real work begins. It always does.",
	},
	["cls.priest.victory.003"] = {
		"Still standing, and not even winded. Don't tell anyone; they'll expect it every time.",
		"That went better than expected. I'll pretend I expected it.",
	},
	["cls.priest.victory.004"] = {
		"lowers one hand over the fallen foe for a moment, the way one closes a book.",
		"kneels briefly by the body and murmurs something too low to carry.",
		"stays bent over the still form a breath longer than needed, then rises.",
	},
	["cls.priest.victory.005"] = {
		"That was not healing. I knew exactly where it would hurt, and I put it there.",
		"The shadow in my hands answered quickly this time. Too quickly, maybe.",
		"I know the body well enough to mend it. This time I used that to end one. Both are true about me.",
	},
	["cls.priest.victory.006"] = {
		"That's one. Let the next one come; I'm not done.",
		"Still here, still on my feet. Send the next.",
		"The foe down, and me upright. That's the order I like.",
	},
	["cls.priest.victory.007"] = {
		"Whatever that was, it had its reasons for fighting. I'm always the one left wondering what they were.",
		"I'd rather have mended than ended. Nobody offered me the choice.",
	},
	["cls.priest.victory.008"] = {
		"Breath in me still. I give thanks for it, and ask for nothing more.",
		"Spared again. Gratitude first; pride can wait outside.",
		"Thanks, whoever was listening. I felt the hand on my shoulder.",
	},
	["cls.rogue.attack.001"] = {
		"Here, and there, and there again.",
		"Left. No, right. No, both.",
		"Too late. Try again. Still too late.",
	},
	["cls.rogue.attack.002"] = {
		"darts in, strikes, and is out again before the blow seems to have happened.",
		"finds the gap in the guard and slips the steel through it.",
	},
	["cls.rogue.battle.001"] = {
		"Ah. You noticed me. That's rare, and I'm a little offended.",
		"Saw me coming? Fine. You still won't see where I go next.",
		"Don't blink. Actually, blink. It makes no difference.",
	},
	["cls.rogue.battle.002"] = {
		"Small cuts first. Let them stack up, then cash them all in at once.",
		"Set it up, set it up, set it up. The finish is only as good as what comes before it.",
		"Patience inside the fight too: build, build, then end it.",
	},
	["cls.rogue.battle.003"] = {
		"is suddenly a great deal closer than a moment ago.",
		"drops low, weight on the balls of the feet, blades ready.",
		"slides sideways out of the line of attack, as though it had been politely asked.",
	},
	["cls.rogue.battle.004"] = {
		"You picked the wrong one to corner.",
		"Bad idea, coming at me head-on. It's the only direction I don't need.",
		"Mistake. I'm far more dangerous when I can't slip away.",
	},
	["cls.rogue.battle.005"] = {
		"Plan one was not being seen. This is plan two, and I like it a lot less.",
		"So much for slipping past unnoticed. Fine, the loud way.",
		"I'd hoped to avoid this. Hope is lovely; steel is more reliable.",
	},
	["cls.rogue.battle.006"] = {
		"I'll make it quick. It's the only kindness I carry.",
		"Hold still and this will be short. Struggle, and it'll still be short.",
	},
	["cls.rogue.battle.007"] = {
		"Keep its eyes on you. I'll be round the back.",
		"You hold the front. I'll find the soft side.",
	},
	["cls.rogue.buff.001"] = {
		"A small edge before the work begins. I never turn down a small edge.",
		"Readier than I was. In my line of work, a hair's difference is everything.",
		"Prepared. The fight hasn't started, and already I'm winning it a little.",
	},
	["cls.rogue.buff.002"] = {
		"Now I'm ready. I was ready before, naturally. Now I'm more ready.",
		"There. Faster, sharper, and every bit as charming.",
		"One more trick up the sleeve. The sleeves are getting crowded.",
	},
	["cls.rogue.heal.001"] = {
		"Cheers. To me, mostly.",
		"Ugh. Whoever brewed this hates their customers.",
		"Down the hatch, and back to the knife-work.",
	},
	["cls.rogue.heal.002"] = {
		"A little life back in the legs. Legs are what I need most; everything else follows them.",
		"Better. Not good, but better, and better is enough to move.",
		"The ache backs off a step. I'll take that step and run with it.",
	},
	["cls.rogue.heal.003"] = {
		"presses a hand to {g:his|her} side and lets out a slow, crooked breath as the pain eases.",
		"rolls {g:his|her} wrists, testing them, and seems satisfied enough.",
		"blinks a few times, and the hunted look fades a shade from {g:his|her} eyes.",
	},
	["cls.rogue.levelup.001"] = {
		"Quicker hands, quieter feet. The world just got a little easier to slip through.",
		"My hands move before I tell them now, and my feet land softer. The cracks in the world are wider than they were.",
	},
	["cls.rogue.lowhp.001"] = {
		"This is going badly. I'd like to file a complaint.",
		"Note to self: the plan had a hole in it. Roughly where I'm bleeding.",
		"Ow. Right. Fine. Rethinking.",
	},
	["cls.rogue.lowhp.002"] = {
		"Think. Where's the way out? There is always a way out.",
		"Stop bleeding, start thinking. An exit, a distraction, anything.",
		"Not here. I refuse to end somewhere this ordinary.",
	},
	["cls.rogue.lowhp.003"] = {
		"sways, and for a moment the quick, sure movements turn ragged.",
		"backs off a step, breathing hard, eyes darting for anything that might serve as an exit.",
		"presses a forearm to a fresh cut and keeps moving, because stopping would be worse.",
	},
	["cls.rogue.muse.001"] = {
		"A lock is just a small argument. Listen to it long enough and it comes round to your side.",
		"Pins, springs, a click you feel in the fingers more than hear. I find it restful, which probably says something about me.",
		"Give me a stubborn lock and a quiet corner and I'm happier than at any feast.",
	},
	["cls.rogue.muse.002"] = {
		"People think the trade is the knife. It's the waiting. The blade is only the last breath of a long stillness.",
		"I can keep still longer than most people can keep quiet. That's the whole secret, really.",
		"Patience is the sharpest thing I carry. The steel only finishes what it starts.",
	},
	["cls.rogue.muse.003"] = {
		"Not everyone who walks quietly is up to something. Just most of us.",
		"I pay for my drinks. People still count their spoons when I leave.",
		"Soft boots and dark clothes, and suddenly everyone's patting their pockets. Unfair. Mostly.",
	},
	["cls.rogue.muse.004"] = {
		"Watch the hands, not the face. Faces have been taught to lie; hands never quite learned.",
		"Where someone keeps their purse, which foot they favor, who they glance at before answering. You learn a lot by not talking.",
		"Everyone has a tell. Finding it is half the craft, and the cheaper half.",
	},
	["cls.rogue.muse.005"] = {
		"I mix my poisons as carefully as a cook does a sauce. It troubles me less than it probably should.",
		"A drop on the edge, wiped thin. Unkind work, done with a steady hand.",
		"The vials clink in my pack like little bells. Each one is a fight I won't have to finish the long way.",
	},
	["cls.rogue.muse.006"] = {
		"checks each blade at {g:his|her} belt by touch alone, without once looking down.",
		"drifts without a sound from one dim patch of ground to the next, out of pure habit.",
		"walks a coin across {g:his|her} knuckles and back, never quite letting it settle.",
	},
	["cls.rogue.muse.007"] = {
		"Speed comes in bursts. Spend it, catch your breath, spend it again. My whole life runs on that rhythm.",
		"I'm not strong. I'm quick for exactly as long as I need to be, and then I'm somewhere else.",
		"Short and sharp, that's my way. Long fights are for people with thicker armor.",
	},
	["cls.rogue.muse.008"] = {
		"Nobody says goodbye to someone they never saw arrive. It's the price of being good at this.",
		"I've made myself easy to forget. Now and then I wonder whether I overdid it.",
		"Being unseen is a skill. Being unmissed is the bill that comes with it.",
	},
	["cls.rogue.muse.009"] = {
		"Always know two ways out of a room. And never tell anyone which two.",
		"Soft soles, oiled hinges, and never the obvious door. Three rules. I keep the fourth to myself.",
		"If you can't see the exit, you've already stayed too long.",
	},
	["cls.rogue.muse.010"] = {
		"Every city has two maps: the one the guards know and the one I walk. They rarely agree.",
		"There's a second world folded inside the first: gutters, rooftops, the backs of things. I've always felt more at home there.",
		"Great halls have servants' passages. I've learned the whole world is built the same way.",
	},
	["cls.rogue.quest_complete.001"] = {
		"Done, and done quietly. I'll take my pay the same way.",
		"Finished. No fuss, and only the witnesses I chose.",
		"There. You'll find it all handled. How, you won't find out.",
	},
	["cls.rogue.quest_complete.002"] = {
		"Strange, being thanked for something. My best work usually goes unnoticed by design.",
		"A task done in plain sight, for once. It feels almost indecent.",
		"Someone will remember my face for this. I'm not sure what to make of that.",
	},
	["cls.rogue.quest_complete.003"] = {
		"inclines {g:his|her} head a fraction, already half turned to leave.",
		"allows {g:himself|herself} a small, private smile, gone almost before it arrives.",
		"makes the reward vanish with a flick of the fingers, as though it had never existed.",
	},
	["cls.rogue.quest_progress.001"] = {
		"One piece in place. Nobody's noticed yet, which is exactly how I like a plan to go.",
		"Part of it done, and no one the wiser. Onward.",
	},
	["cls.rogue.rezother.001"] = {
		"Up. Quietly, if you can manage it. We've drawn enough attention.",
		"Back with us? Good. Don't make a habit of it.",
		"Easy now. Open your eyes, nod, and we'll talk about what went wrong later.",
	},
	["cls.rogue.threat.001"] = {
		"I know where you sleep. Not yet, but I'll find out.",
		"Go on. Turn your back on me. I'd like that.",
		"Walk away, then, and at every dark corner you pass, wonder.",
	},
	["cls.rogue.threat.002"] = {
		"I'm quicker than you, and I've already picked three places for the knife. Still keen?",
		"Careful. I'm the friendliest thing in this conversation, and I'm armed.",
	},
	["cls.rogue.victory.001"] = {
		"Barely broke a sweat. Well. A modest sweat.",
		"Quick work. Nobody needs to know how close that last part was.",
		"And that's why you never turn your back on me. Or your front, honestly.",
	},
	["cls.rogue.victory.002"] = {
		"wipes the blade on a sleeve and makes it disappear somewhere about {g:his|her} person.",
		"steps back and glances around, as if the real danger were whoever might have been watching.",
		"flicks the blade clean with a single practiced snap of the wrist.",
	},
	["cls.rogue.victory.003"] = {
		"The heart slows back down to walking pace. I count the beats until it gets there.",
		"Breathe low and slow. Let the quick part of me go back to sleep.",
	},
	["cls.rogue.victory.004"] = {
		"Right. Let's see if that was worth the trouble.",
		"Over. Now for the part nobody sings about: checking what's left behind.",
		"Let me see what you were carrying. Professional curiosity.",
	},
	["cls.rogue.victory.005"] = {
		"Fast is merciful. I tell myself that, and most of the time it holds.",
		"It didn't last long. I keep my work short for both our sakes.",
		"No drawn-out ending. If I'm good at one thing, let it be that.",
	},
	["cls.rogue.victory.006"] = {
		"You were looking the wrong way the whole time.",
		"Never even saw where it came from. That's rather the point.",
	},
	["cls.rogue.victory.007"] = {
		"My legs say that's plenty. My pride says it was magnificent. The legs win.",
		"Everything I had, spent in a few heartbeats. That's the deal, and it's a fair one.",
		"Tired the way only a fast fight leaves you: all at once, everywhere.",
	},
	["cls.rogue.victory.008"] = {
		"Not a scratch. They swung at where I was, never at where I am.",
		"All that effort, and it only ever hit air.",
		"Keep moving and nothing lands. Usually.",
	},
	["cls.shaman.attack.001"] = {
		"Cold water, bite deep.",
		"Frost, hold it where it stands.",
		"Ice from the deep springs. Feel it.",
	},
	["cls.shaman.battle.001"] = {
		"The earth is with me. Try standing on it now.",
		"Plant your feet if you like. The ground answers to older friends.",
		"This ground knows me. It has never heard of you.",
	},
	["cls.shaman.battle.002"] = {
		"Spirits of the earth, stand here with me.",
		"Totem down. Spirits, this patch of ground is ours now.",
	},
	["cls.shaman.battle.003"] = {
		"Breathe. Set the totems. Then the rest.",
		"First the totems, then the lightning. Never the other way round.",
		"Ground first. Let the earth settle under me before I ask anything of the sky.",
	},
	["cls.shaman.battle.004"] = {
		"I'd apologize in advance, but the lightning doesn't.",
		"Fair warning: the spirits are in a mood today.",
		"The spirits are not angry with you. I am, a little.",
	},
	["cls.shaman.battle.005"] = {
		"sets {g:his|her} feet wide, and the dust around them begins to stir with no breeze to move it.",
		"draws a slow breath; the ground underfoot seems to settle, ready.",
	},
	["cls.shaman.battle.006"] = {
		"Earth to stand on, fire to strike with, water to mend, air for quickness. Come on, then.",
		"I have the spirits at my back. Who stands behind you?",
	},
	["cls.shaman.battle.007"] = {
		"If I fall here, the earth will take me kindly. That does not mean I intend to let it.",
		"The ground is patient. It will have me one day. Not this one.",
	},
	["cls.shaman.battle.008"] = {
		"Flame in my hand, stone at my back. Ancestors, watch this.",
		"Ancestors, turn your eyes this way. I would have you see this.",
	},
	["cls.shaman.battle.009"] = {
		"Hear that crackle? That's the air getting ready to hurt you.",
		"The air is charged. You'll feel it in a moment.",
	},
	["cls.shaman.buff.001"] = {
		"Breathe easy down there. The water spirits have agreed to look the other way.",
		"There. Go under as long as you like; the water will treat you as one of its own.",
	},
	["cls.shaman.buff.002"] = {
		"There. The spirits lend you something. Try to give it back unbroken.",
		"Carry a little of the elements with you for a while.",
	},
	["cls.shaman.buff.003"] = {
		"traces a quick sign in the air, and for a moment there is a smell of wet stone.",
		"murmurs a few low words, and a faint coolness passes, like the breath off a spring of water.",
	},
	["cls.shaman.heal.001"] = {
		"Let the water do its work. Hold still.",
		"Easy. The water knows where it hurts.",
	},
	["cls.shaman.heal.002"] = {
		"Healing always takes a little from the healer. The water flows out of me and leaves me drier.",
		"Every wound I close costs me a sip of something. I don't begrudge it.",
	},
	["cls.shaman.heal.003"] = {
		"{target}, the spirits want you on your feet. So do I.",
		"Stay with us, {target}. The water's got you.",
		"Breathe, {target}. Let it wash through.",
	},
	["cls.shaman.lowhp.001"] = {
		"Water, close this. Quickly, before there is nothing left of me to close.",
		"Healing water, now. I am leaking faster than I can think.",
	},
	["cls.shaman.lowhp.002"] = {
		"The earth has held me up all my life. It won't drop me now.",
		"Not yet! The ground still wants me standing!",
	},
	["cls.shaman.lowhp.003"] = {
		"The ancestors are this close, then. Closer than I thought. Not today, old ones.",
		"I can almost hear the ancestors from here. I would rather not get any nearer.",
	},
	["cls.shaman.lowhp.004"] = {
		"staggers, catching {g:himself|herself} with a hand on the ground, and the soil seems to push back against the palm.",
		"sways, one knee striking the earth, and stays there a heartbeat too long.",
		"presses a hand to the wound, lips moving around words meant for no living ear.",
	},
	["cls.shaman.muse.001"] = {
		"I set the earth totem down and wait. Half of this craft is planting a thing and having the patience to let it work.",
		"The totem goes into the ground first. Then I go quiet. The earth does not answer anyone who is still talking.",
		"Set the totem, step back, breathe. The earth takes its time, and so must I.",
	},
	["cls.shaman.muse.002"] = {
		"Water never argues with the stone. It goes around, and in a thousand years the stone is gone. I try to remember that when I lose my temper.",
		"The water spirits are the gentlest and the most stubborn. They never push. They simply never stop.",
	},
	["cls.shaman.muse.003"] = {
		"The ancestors speak less than people think. Mostly they listen. Some days I wish they would simply tell me what to do.",
		"I ask the ancestors for counsel and get silence. Silence is an answer too, the old shamans say. Some days it sounds like an excuse.",
	},
	["cls.shaman.muse.004"] = {
		"Yes, all of these totems go everywhere with me. No, you may not hold the fire one.",
		"A pack heavy with totems, and people still wonder why I walk the way I do.",
	},
	["cls.shaman.muse.005"] = {
		"kneels and lays a palm flat on the ground, as if listening for a heartbeat beneath it.",
		"crouches, rests one hand on the bare earth and keeps it there a long moment, head tilted.",
	},
	["cls.shaman.muse.006"] = {
		"Fire is the hardest spirit to keep. It gives everything at once and asks for more. A shaman who forgets that gets burned, and not only the hands.",
		"Of the four, fire is the one I trust least and need most. It never lies about what it wants.",
		"Fire makes a fine servant and a worse guest. I keep it close and never leave it unwatched.",
	},
	["cls.shaman.muse.007"] = {
		"The air spirits are restless gossips. They have been everywhere and stay nowhere, and they never bring the same story twice.",
		"Air is the last spirit a shaman learns to hear. It talks the fastest and forgets the quickest.",
	},
	["cls.shaman.muse.008"] = {
		"We do not command the elements. We ask, and they agree, and one day they may not. I would rather never find out which day.",
		"People think a shaman gives orders to the lightning. I only ask politely and stand where it can see me.",
	},
	["cls.shaman.muse.009"] = {
		"Smell that? The wind has turned. Something is coming, or something has left.",
		"The air just changed its mind. Pay attention, it rarely does that for nothing.",
	},
	["cls.shaman.muse.010"] = {
		"When I take the wolf's shape the road gets shorter and my thoughts get simpler. I am not sure which I like more.",
		"In the wolf's shape I think only in smells and distances. Standing up on two legs again, I always miss it a little.",
	},
	["cls.shaman.muse.011"] = {
		"Every hill is someone's grave if you go back far enough. The ancestors are not above us. They are underfoot, holding the ground together.",
		"The old dead are not in the sky. They are in the soil, in the roots, in the stone I stand on. That is why I walk carefully.",
	},
	["cls.shaman.muse.012"] = {
		"gives the earth totem in {g:his|her} pack two quick taps, the way some people knock on wood.",
		"checks {g:his|her} totems one by one, out of a habit older than any reason for it.",
	},
	["cls.shaman.muse.013"] = {
		"Some days the elements are louder than people. Those are the days I walk alone and call it practice.",
		"When the spirits are restless I hear them in everything: the creak of a branch, the hiss of a fire. Quiet company is hard to find.",
	},
	["cls.shaman.muse.014"] = {
		"Balance is not stillness. It is four things pulling, and none of them winning.",
		"Balance is no quiet thing. Four spirits tug at once, and not one of them may be allowed the upper hand.",
	},
	["cls.shaman.quest_complete.001"] = {
		"Done, and without troubling the spirits. Some things a shaman does with plain hands.",
		"Finished. Not every task needs the elements. Most need boots and stubbornness.",
	},
	["cls.shaman.quest_complete.002"] = {
		"It's done. Tell your people the earth is quieter for it.",
		"Finished. If the spirits had an opinion, I think they'd approve.",
	},
	["cls.shaman.quest_complete.003"] = {
		"sets down the proof of the task and murmurs a word of thanks, though not to anyone present.",
		"hands over what was asked for, then lowers {g:his|her} head briefly, settling an account of another kind.",
	},
	["cls.shaman.quest_complete.004"] = {
		"Another task set against the wrongs of the world. The scale barely moved, but it moved.",
		"One small thing put right. The elements keep count of those, I think, even when people forget.",
		"A wrong set straight, a debt paid. The world sits a hair closer to balance.",
	},
	["cls.shaman.quest_progress.001"] = {
		"That's the last of it. The spirits can wait; the one who asked cannot.",
		"All of it gathered. Time to carry it to whoever asked.",
	},
	["cls.shaman.rezother.001"] = {
		"Spirit, the body is mended. Step into it again.",
		"Your ancestors can spare you a while longer. Wake.",
	},
	["cls.shaman.threat.001"] = {
		"I could ask the fire to be gentle. I'm choosing not to.",
		"Keep talking. The lightning is choosing where to land.",
		"One more step and you'll learn what the earth does to those it dislikes.",
	},
	["cls.shaman.threat.002"] = {
		"The spirits have no quarrel with you. Give me a minute and they will.",
		"Go away. The elements are very touchy today, and so am I.",
	},
	["cls.shaman.victory.001"] = {
		"The elements go quiet when the fight ends. My hands take a little longer.",
		"The spirits settle like dust after a stampede. I wait for my own breath to do the same.",
		"Silence after lightning is the loudest kind.",
	},
	["cls.shaman.victory.002"] = {
		"Your spirit is loose now. Let the wind carry it where it belongs.",
		"Rest. The earth will take you in without asking what you were.",
	},
	["cls.shaman.victory.003"] = {
		"The spirits thank you for your contribution.",
		"Well, the fire spirit enjoyed that more than you did.",
		"Thank the fire. It did most of the work.",
	},
	["cls.shaman.victory.004"] = {
		"brushes the dust from {g:his|her} totems one by one, a small thanks to each.",
		"touches each totem in turn, the way one nods to companions after hard work.",
	},
	["cls.shaman.victory.005"] = {
		"I asked the lightning for help and it gave more than I needed. Next time I should ask more carefully.",
		"Too much fire again. The spirit was eager, and I let it be. A good shaman holds the reins.",
	},
	["cls.shaman.victory.006"] = {
		"Earth held, fire struck. That is how it is done.",
		"Stone under me, thunder in my hands. You never stood a chance.",
		"The earth stood with me. It always does, when I ask right.",
	},
	["cls.shaman.victory.007"] = {
		"A little water on the brow, a word to the spirits, and the fight is put away.",
		"I wash my hands and say thanks under my breath. The spirits like to be remembered when it is over, not only when it starts.",
	},
	["cls.shaman.victory.008"] = {
		"Balance restored. Mostly. Someone should check the grass, it may still be smoking.",
		"Done. The spirits are pleased, and I am hungry. Both good signs.",
	},
	["cls.shaman.victory.009"] = {
		"It fought for its life as hard as I fought for mine. The spirits take no sides in that, and I have no right to gloat.",
		"Another life given back to the earth. I take no joy in it. Only in the fact that I am still standing.",
	},
	["cls.shaman.victory.010"] = {
		"lets out a long breath, and the air around {g:him|her} stills, as if the wind too had been holding it.",
		"straightens; for a moment the air goes still around {g:him|her}, then the ordinary breeze resumes.",
	},
	["cls.warlock.attack.001"] = {
		"This fire doesn't come from any hearth. It won't go out politely either.",
		"Burn. Not cleanly; I don't do clean.",
		"Let it catch. It knows where to bite.",
	},
	["cls.warlock.attack.002"] = {
		"This won't hurt now. It'll hurt for a while.",
		"Take it with you. It'll keep working long after I've stopped watching.",
	},
	["cls.warlock.attack.003"] = {
		"One more thread pulled. Mind the cost.",
		"Spend, but count. Always count.",
	},
	["cls.warlock.battle.001"] = {
		"I'll curse you slowly. Fast curses are for amateurs.",
		"Let's see how you like rotting from the edges in.",
		"Run if you like. The curse doesn't mind a little exercise.",
	},
	["cls.warlock.battle.002"] = {
		"I'd introduce you to my friends, but they're from out of town. Very far out.",
		"You picked a fight with someone who haggles with demons for fun. What nerve.",
		"Careful. I bruise easily, and I hold grudges professionally.",
	},
	["cls.warlock.battle.003"] = {
		"A little blood for the fire. Not too much. I always say not too much.",
		"The craft wants feeding. I feed it carefully, and from my own plate.",
		"Here's where I start spending myself. Mind the purse.",
	},
	["cls.warlock.battle.004"] = {
		"lifts one hand, and the air around it begins to smoke and stain like old parchment held to a flame.",
		"speaks a word that seems to make the ground beneath {g:him|her} colder.",
		"draws a small glowing sign in the air, and the space around it puckers like a bruise.",
	},
	["cls.warlock.battle.005"] = {
		"Servant, forward. You know the terms.",
		"Go on, then. Show this one why I keep you.",
		"Up front, you. I'll handle the clever part.",
	},
	["cls.warlock.battle.006"] = {
		"I've stared into worse than you, and it looked away first.",
		"You're frightening. I've met frightening. It wanted to make me an offer.",
		"Fear is a tool. I know where you keep yours.",
	},
	["cls.warlock.battle.007"] = {
		"The voices get eager when the fighting starts. I keep my answers short.",
		"Something on the other side leans closer to watch. I don't give it a show.",
		"Fight with a cool head. The hot head is what they're waiting for.",
	},
	["cls.warlock.buff.001"] = {
		"A gift from me. No strings attached. Well. Almost none.",
		"Relax. It's a kindness. Even I'm allowed one now and then.",
		"Don't look at it like that. It won't follow you home.",
	},
	["cls.warlock.buff.002"] = {
		"Go on, breathe down there as long as you like. The water won't argue with me.",
		"Air for the deep places. Don't ask what I traded for it.",
		"Now you can stay under as long as you dare. The drowning part, I've cancelled.",
	},
	["cls.warlock.heal.001"] = {
		"Life is just one more thing that can be moved from here to there. I try not to think about it too hard.",
		"Healing, my way: no mercy in it, only arithmetic.",
		"It isn't gentle, what I do. But it closes the gap.",
	},
	["cls.warlock.heal.002"] = {
		"Don't ask where it came from. It works, that's what matters.",
		"No blessings here. Just a fair trade, and someone breathing easier.",
		"Patched up. Not prettily, but patched.",
	},
	["cls.warlock.heal.003"] = {
		"Nothing comes from nothing. Whatever mends here was paid for somewhere, by someone. Sometimes by me.",
		"The craft doesn't heal; it balances accounts. I hope I'm on the right side of the book.",
		"Warmth flows where I send it, and leaves a little cold behind. That's the law I live under.",
	},
	["cls.warlock.lowhp.001"] = {
		"You think I'm afraid of bleeding? I bleed on purpose every day.",
		"Hurt? I've seen worse, and some of it I went looking for.",
		"Pain and I have an arrangement. It shows up, I put it to work.",
	},
	["cls.warlock.lowhp.002"] = {
		"Not now. Not here. I know who's waiting to collect, and I'm in no hurry to meet them.",
		"If I go down, the things I've bargained with will be first at the door. Get up.",
	},
	["cls.warlock.lowhp.003"] = {
		"This is fine. I've signed worse contracts.",
		"Remind me to read the next deal more carefully.",
	},
	["cls.warlock.muse.001"] = {
		"The trick isn't summoning. Anyone can open a door. The trick is remembering who is holding it.",
		"Every bargain I strike, I read twice. The demons read it three times.",
		"They're always offering. That's the whole danger: never threats, always offers.",
	},
	["cls.warlock.muse.002"] = {
		"People cross the street when they see me. Saves time at the market, at least.",
		"Yes, the smell is brimstone. No, washing doesn't help. I've tried.",
		"Everyone wants to know what the voices say. Mostly they complain. You'd be amazed how much demons complain.",
	},
	["cls.warlock.muse.003"] = {
		"I pay in small coins: an hour of sleep, a little warmth, a sliver of me. It never feels like much on the day.",
		"I bleed a little to feed the craft. The body forgives it. What else might be keeping count, I prefer not to ask.",
		"There's a ledger with my name in it, wherever such things are kept. I don't look. I don't need to; I can feel the total.",
	},
	["cls.warlock.muse.004"] = {
		"The shards in my bag hum a little when I'm tired. I've learned not to answer.",
		"I keep my soul shards wrapped in cloth. Not for their sake. For mine; the glow gets into dreams.",
		"Counting shards before sleep. Some people count sheep. Mine never doze off.",
	},
	["cls.warlock.muse.005"] = {
		"Fire is honest. Shadow is patient. I use whichever the moment asks for.",
		"A curse is just a promise with a long memory.",
		"Nobody hands you power. You take it, and then you spend your life making sure it doesn't take you.",
	},
	["cls.warlock.muse.006"] = {
		"turns a dim violet stone over in {g:his|her} fingers, as if listening to it.",
		"traces a small circle in the dirt with one finger, studies it, then wipes it away.",
		"glances over one shoulder at nothing at all, then settles again, unhurried.",
	},
	["cls.warlock.muse.007"] = {
		"The first rule nobody teaches: want less. The ones who wanted everything are in the books as warnings.",
		"Discipline is the only thing standing between me and the stories they tell about us.",
		"I study harder than any scholar in a tower. The scholar just doesn't get eaten for skipping a line.",
	},
	["cls.warlock.muse.008"] = {
		"Yes, I deal in curses. No, I won't curse your neighbor. Not at that price.",
		"Being feared is overrated. Mostly it means nobody sits next to you at the inn.",
	},
	["cls.warlock.muse.009"] = {
		"When it's quiet, I can hear the other side breathing. It has never once sounded impatient.",
		"The things beyond the circle can wait forever. I can't. That is the whole of the problem.",
	},
	["cls.warlock.muse.010"] = {
		"They think the darkness made me. I chose it as a tool, and I'm still the one choosing.",
		"I keep a list of what I won't do. It's shorter than people assume and longer than the demons would like.",
		"A blade doesn't make a murderer. A pact doesn't make a monster. People do that, with their own hands.",
	},
	["cls.warlock.pet_call.001"] = {
		"{pet} answers the call the way a debt does: promptly, and with interest in its eyes.",
		"The circle flares and {pet} is here, looking around for something to break. Not yet.",
	},
	["cls.warlock.pet_call.002"] = {
		"There you are, {pet}. Mind the terms, and we'll get along.",
		"{pet} again. I'd call it company, if company didn't need watching quite so closely.",
	},
	["cls.warlock.pet_dismiss.001"] = {
		"{pet} goes back across. The air warms by a degree, and I breathe a little easier than I'd admit.",
		"Gone, {pet}, until I need you. The quiet afterward always feels borrowed.",
	},
	["cls.warlock.quest_complete.001"] = {
		"Done, and nobody had to sign anything. Refreshing.",
		"Paid in coin, for once. Do you know how rare that is in my line of work?",
		"A simple job, a simple reward, and nobody screamed when they saw me walk in.",
	},
	["cls.warlock.quest_complete.002"] = {
		"A promise kept, plainly. No price on it but the walk. I could get used to deals like this.",
		"They thanked me without looking at my hands. I noticed. I always notice.",
		"Some bargains are clean. I collect those too, for the days I need reminding that I can make them.",
	},
	["cls.warlock.quest_complete.003"] = {
		"weighs the reward in {g:his|her} palm and puts it away without a word, as one settles a debt.",
		"gives a short nod, the kind that closes a contract, and turns to go.",
		"pockets what was owed and, out of habit, checks that every finger is still where it should be.",
	},
	["cls.warlock.quest_progress.001"] = {
		"Part of the bargain met. I always finish my side; it's the one habit nobody can take from me.",
		"Halfway. Patience is a craft too, and I've had to learn harder ones.",
	},
	["cls.warlock.rezother.001"] = {
		"Keep this stone close. If you fall, it holds the door open.",
		"There. If death comes for you, it'll find the room already taken.",
		"A little insurance. Try not to need it.",
	},
	["cls.warlock.threat.001"] = {
		"I know a dozen names for pain. Shall I introduce you to one?",
		"I could curse you, but I'd rather you spent the next few days wondering whether I already have.",
		"Keep talking. I'm choosing which curse suits your voice.",
	},
	["cls.warlock.victory.001"] = {
		"Don't fret. Nothing of you goes to waste.",
		"There's warmth in it yet. I'll take what's useful and leave the rest in peace.",
	},
	["cls.warlock.victory.002"] = {
		"My hands are cold again. They always are, after.",
		"A little less blood, a little more weight behind the eyes. The usual bill.",
		"Over. Now the slow part: feeling the cost settle in.",
	},
	["cls.warlock.victory.003"] = {
		"That's what happens when you argue with someone who reads the fine print.",
		"You lasted longer than the curse expected. It's sulking now.",
		"Well. That went exactly as the pact promised. Suspicious.",
	},
	["cls.warlock.victory.004"] = {
		"The demon looks at the body, then at me. I know exactly what it's thinking, and the answer is still no.",
		"My servant is pleased. I make a point of never being pleased at the same moment.",
		"It enjoyed that far more than I did. That's how I know the balance still holds.",
	},
	["cls.warlock.victory.005"] = {
		"flexes {g:his|her} fingers, and the last violet sparks fade from them like embers dropped in water.",
		"exhales slowly, and the faint smell of sulfur around {g:him|her} begins to thin.",
		"steps back from the body, unhurried, and the ring of cold air around {g:him|her} melts away.",
	},
	["cls.warlock.victory.006"] = {
		"The warning was there. Not from me; from the cold in the air. You should have heeded it.",
		"That's the difference between us: I knew what I was bargaining with.",
		"Down you go. My pacts hold. Yours, it seems, did not.",
	},
	["cls.warlock.victory.007"] = {
		"I spent a little of my life to close that account. I'll earn it back. I usually do. Usually.",
		"Every fight costs me twice: once in blood, once in what I'm willing to call necessary.",
	},
	["cls.warlock.victory.008"] = {
		"The bindings held. The will held. Nothing else matters.",
		"Chains for the servant, curses for the foe, and a steady mind for me. There is no more to the art than that.",
		"Every bond held this time. I check them anyway.",
	},
	["cls.warrior.attack.001"] = {
		"Here's another. Don't thank me.",
		"And again! I've plenty more!",
		"That one was free. The next one costs extra.",
	},
	["cls.warrior.attack.002"] = {
		"puts {g:his|her} whole weight behind the blow.",
		"turns from the hips and drives the strike home with a grunt.",
	},
	["cls.warrior.attack.003"] = {
		"Rage is no use saved. Spend it, all of it.",
		"The fury's at the brim. Pour it out before it spills on its own.",
	},
	["cls.warrior.battle.001"] = {
		"Here I come! Plant your feet, if you think it'll help!",
		"Out of my way or under my boots: choose fast!",
		"I'm coming through, and I'm not going around!",
	},
	["cls.warrior.battle.002"] = {
		"Ah. Finally, something I'm actually good at.",
		"Good. I was getting bored of walking.",
		"Thank you. My arm was starting to stiffen up.",
	},
	["cls.warrior.battle.003"] = {
		"Let the first blow land. The anger needs something to start with.",
		"Take the hit, feel the heat rise, give it back doubled. Simple arithmetic.",
		"Pain first, then fury. I've never once known the order reversed.",
	},
	["cls.warrior.battle.004"] = {
		"sets {g:his|her} feet wide and lets out a roar from somewhere below the ribs.",
		"lowers {g:his|her} head and closes the distance at a run, armor clattering.",
		"rolls {g:his|her} neck once, settles the grip, and steps in without a word.",
	},
	["cls.warrior.battle.005"] = {
		"Hey! Over here! I'm the one you want!",
		"Look at me! Not them! Me!",
		"Over here, ugly! I'm far more interesting!",
	},
	["cls.warrior.battle.006"] = {
		"I bear you no grudge. I'm just standing where you want to go.",
		"No quarrel between us. But I'm not moving, so one of us will have to.",
	},
	["cls.warrior.battle.007"] = {
		"Stronger than me, are you? Good. The strong ones fall louder.",
		"Tougher than me. Fine: that just means more of you to hit.",
	},
	["cls.warrior.buff.001"] = {
		"A little extra strength in the arms. I don't ask where it comes from; I just use it.",
		"Every advantage counts before a fight. Pride is a poor substitute for preparation.",
		"A shade readier, a shade sturdier. That's all a careful warrior asks.",
	},
	["cls.warrior.buff.002"] = {
		"There. Now let whatever's next come and find me.",
		"Good. I feel about twice as hard to knock over.",
		"Better. Now point me at something.",
	},
	["cls.warrior.heal.001"] = {
		"Tastes like a boot. Works like a charm.",
		"Bitter as a defeat. Which is the point, I suppose.",
		"Down in one. Don't think, just swallow.",
	},
	["cls.warrior.heal.002"] = {
		"The flesh knits. The arm remembers the blow anyway, and that's the useful part.",
		"Mended enough to stand. Standing is all the job asks.",
		"A little strength comes back. I don't waste it on relief; I'll want it in a moment.",
	},
	["cls.warrior.heal.003"] = {
		"draws a long breath as the worst of the hurt eases, and squares {g:his|her} shoulders again.",
		"flexes the injured arm twice, testing it, and grunts something that may be approval.",
		"straightens slowly, the color coming back into {g:his|her} face.",
	},
	["cls.warrior.lowhp.001"] = {
		"Is that all? I've taken worse from a low door frame.",
		"Bleeding, yes. Beaten, not yet.",
		"Down on one knee is still not down.",
	},
	["cls.warrior.lowhp.002"] = {
		"Nothing left but the anger. Lucky, then, that it's what I fight with.",
		"The weaker I get, the hotter it burns. Let's see who gives out first.",
	},
	["cls.warrior.lowhp.003"] = {
		"staggers, catches {g:himself|herself} on the weapon, and stays up out of sheer stubbornness.",
		"spits, wipes {g:his|her} mouth with the back of a hand, and raises {g:his|her} guard again.",
	},
	["cls.warrior.muse.001"] = {
		"Buckles, straps, always the same order. By the last one the tiredness has gone somewhere else.",
		"Armor goes on piece by piece, and somewhere around the gauntlets I turn into someone useful.",
		"The same weight settles on my shoulders whenever I gear up. Walking without it would feel stranger.",
	},
	["cls.warrior.muse.002"] = {
		"Rage comes in with the first blow I take and leaves when the fight does. I've learned not to give it a room of its own.",
		"They think the anger is who I am. It's only fuel: I burn it and walk on.",
		"Every hit I take feeds the fire. Strange trade, being paid in pain.",
	},
	["cls.warrior.muse.003"] = {
		"A whetstone and an oily rag. Half my trade is just keeping things from rusting.",
		"People picture glory. Mostly it's mending straps and hammering dents out of a helmet.",
		"Want the secret of this trade? Look after your gear, and your gear looks after you.",
	},
	["cls.warrior.muse.004"] = {
		"Feet first, then the arm. How you stand decides the fight long before the weapon does.",
		"Everything starts in the stance. Plant yourself badly and the finest steel in the world won't save you.",
		"Whoever teaches you to stand teaches you everything. The rest is detail.",
	},
	["cls.warrior.muse.005"] = {
		"Standing in front is the easy part. The hard part is remembering the times I was a step too slow.",
		"You can hold a line for an hour and still lose someone in a heartbeat. A shield only covers so much.",
		"The blows I took for others I don't even count. It's the ones I failed to take that keep count of me.",
	},
	["cls.warrior.muse.006"] = {
		"rolls {g:his|her} shoulders until a joint cracks, then tests the weapon's edge with a thumbnail.",
		"works a stiff arm in slow circles, the way one warms an old hinge before trusting it.",
		"tightens a strap on {g:his|her} armor, frowns, and lets it out again by exactly one notch.",
	},
	["cls.warrior.muse.007"] = {
		"There's a moment in every charge when the ground stops mattering. I think I live for that moment, and I'm not proud of it.",
		"The run in is the best part. After that it's just work.",
		"Closing the distance: that's the whole of the art. The rest is what happens once you arrive.",
	},
	["cls.warrior.muse.008"] = {
		"Somebody has to be the first thing the enemy hits. I volunteered a long while back.",
		"Put me where it's worst. That isn't courage; it's just where I'm most use.",
		"I'm not brave. I'm simply the one built for standing in the way.",
	},
	["cls.warrior.muse.009"] = {
		"Every bruise has a story. Most of the stories end with 'and then I got up.'",
		"My body keeps a diary in bruises. Yellow for last week, purple for the latest.",
		"I can't remember which fight gave me this ache in the shoulder. There are too many candidates.",
	},
	["cls.warrior.muse.010"] = {
		"Before there were kingdoms there was someone at the gate with a weapon. That's the trade I joined: older than any banner.",
		"Banners change, songs change. The one standing between harm and the hearth stays the same.",
		"The first warrior was no hero. Just someone who didn't run when everyone else did.",
	},
	["cls.warrior.quest_complete.001"] = {
		"Done, as promised. I don't leave things half finished.",
		"There. Finished properly, nothing left standing that shouldn't be.",
		"Said I'd see it through. I did.",
	},
	["cls.warrior.quest_complete.002"] = {
		"They wanted a strong arm and a thick head. For once I matched the description perfectly.",
		"So many tasks handed to a warrior come down to 'go and hit that.' I'm not complaining.",
		"Somebody had a problem that needed dealing with, and dealing is what I do. Simple trade.",
	},
	["cls.warrior.quest_complete.003"] = {
		"nods once, the matter closed, and checks the edge of {g:his|her} weapon out of habit.",
		"tightens a buckle and rolls {g:his|her} shoulders, as if the work were only half over.",
		"lets {g:his|her} shoulders drop a finger's width, the closest {g:he|she} comes to celebrating.",
	},
	["cls.warrior.quest_progress.001"] = {
		"One part done. The rest will fall the same way: straight through it.",
		"That's a piece of it. Keep swinging.",
	},
	["cls.warrior.rezother.001"] = {
		"Up you come. Slowly. The fight can wait for you this once.",
		"Breathe. That's it. Nobody falls on my watch and stays down.",
		"Back on your feet. I kept your place in the line.",
	},
	["cls.warrior.threat.001"] = {
		"Turn around and walk. I don't make speeches; I make examples.",
		"See this arm? It has never lost an argument.",
		"Go now, while your legs still answer to you.",
	},
	["cls.warrior.threat.002"] = {
		"I'm tired, sore, and in a foul mood. Please, give me a reason.",
		"One more word and this stops being a polite conversation.",
	},
	["cls.warrior.victory.001"] = {
		"Right. Next one? No, give me a moment first.",
		"Done. Somebody remind me why I enjoy this.",
		"That's that. Now, where was I headed before it started?",
	},
	["cls.warrior.victory.002"] = {
		"The rage drains away and leaves me with what it was hiding: every blow I took.",
		"Now it ebbs, and the pain comes in behind it like a tide.",
		"While the fury lasts nothing hurts. The bill always arrives afterward.",
	},
	["cls.warrior.victory.003"] = {
		"lowers the weapon slowly, as though not yet ready to trust the quiet.",
		"plants the weapon on the ground and leans on it for one long breath.",
		"wipes the edge with a rag, checks it, and wipes it once more.",
	},
	["cls.warrior.victory.004"] = {
		"Not one step back. That's how it's done.",
		"Held my ground. The ground's still mine.",
		"They came hard. I held harder.",
	},
	["cls.warrior.victory.005"] = {
		"I'm standing and my foe isn't. Both facts true, and only one of them sits easy.",
		"Another one that won't get up. I used to think about that more. I'm not sure that's progress.",
	},
	["cls.warrior.victory.006"] = {
		"Let me count the dents. The armor's first, then mine.",
		"Not a scratch. Well. Not many scratches. Fewer than that fight deserved.",
	},
	["cls.warrior.victory.007"] = {
		"Good fight. Honest, hard, over. There are worse ways to spend my strength.",
		"Something in me sings after a fight like that, and I've stopped telling it to hush.",
		"Hard and fair. I'd take a fight like that over a soft bed any day.",
	},
	["cls.warrior.victory.008"] = {
		"Gear, then wounds, then the road. In that order.",
		"Edge first, straps second, me at the bottom of the list. Old habit.",
		"Clean it before you put it away. That's the first thing they teach you.",
	},
	["cls.druid.buff.w02.01"] = {
		"A little of the wild's own stubbornness, passed along. Bark doesn't argue with a blade; it just outlasts it.",
		"Thorns, bark and a slow green patience. The wild lends them freely; it has plenty.",
	},
	["cls.druid.heal.w02.01"] = {
		"murmurs to the wound as one might to a frightened animal, and the flesh settles and knits.",
		"closes {g:his|her} eyes for a breath, and the healing spreads slow and green, like moss across a stone.",
	},
	["cls.hunter.buff.w02.01"] = {
		"narrows {g:his|her} eyes toward the horizon, as if the world had just come a little more sharply into focus.",
		"draws a slow breath through the nose, testing the air like a hound at the start of the chase.",
	},
	["cls.hunter.heal.w02.01"] = {
		"Better. A limping hunter is just bait that brought its own weapon.",
		"Good enough. Stiff legs, sharp eyes; I've hunted with worse.",
	},
	["cls.hunter.pet_call.w02.01"] = {
		"{pet} shakes itself out and falls in beside me, already sniffing at whatever I missed.",
		"There's {pet}, ears up, nose busy. The day just gained a sharper set of senses.",
	},
	["cls.mage.buff.w02.01"] = {
		"A little extra wit, applied. Side effects may include noticing things and correcting people.",
		"There. Your thoughts should run a touch faster now. Try to point them somewhere useful.",
	},
	["cls.mage.heal.w02.01"] = {
		"eyes the closing wound with professional suspicion, as if it had skipped a step in the formula.",
		"inspects the mended skin, clearly unconvinced that it has followed proper procedure.",
	},
	["cls.paladin.buff.w02.01"] = {
		"A blessing laid on early is a wall built before the siege. I'd rather build walls.",
		"Given freely, and meant. A blessing handed out grudgingly weighs nothing at all.",
	},
	["cls.paladin.heal.w02.01"] = {
		"sets a steady hand on the hurt, and warm light gathers there until the pain has nowhere left to stand.",
		"speaks a short, plain word over the wound and keeps {g:his|her} hand there until the bleeding stops.",
	},
	["cls.priest.buff.w02.01"] = {
		"There. A small shelter to carry with you. Walk on.",
		"Done. It won't stop everything, but it will stand in front of the first blow.",
	},
	["cls.priest.heal.w02.01"] = {
		"keeps both hands steady until the color of the wound changes, and only then lets out a breath.",
		"speaks a few quiet words, and the hurt gives way under them like ice under a warm palm.",
	},
	["cls.rogue.buff.w02.01"] = {
		"Lighter on my feet, quicker in the fingers. I won't thank anyone out loud; that's not how my trade does it.",
		"An extra edge, quietly given and quietly taken. My favorite kind of gift.",
	},
	["cls.rogue.heal.w02.01"] = {
		"Back in one piece, more or less. Nobody saw me wince, and that's what counts.",
		"Better. Let's not make a habit of needing this.",
	},
	["cls.shaman.buff.w02.01"] = {
		"I ask, and the elements lend. A loan, not a gift. I'll remember whose it is.",
		"Earth under the feet, wind at the back. The spirits have opened their hands a little; I won't waste it.",
	},
	["cls.shaman.heal.w02.01"] = {
		"lays a hand on the hurt and waits, patient as a stream wearing down a stone, until it eases.",
		"breathes out slowly as the healing takes, and for a moment the air smells of wet earth.",
	},
	["cls.warlock.buff.w02.01"] = {
		"There. A little something from my side of the craft. It wears off long before it could want anything.",
		"Take it. It's clean enough, and it asks nothing of you.",
	},
	["cls.warlock.heal.w02.01"] = {
		"watches the wound close with an expression that is not quite relief, like someone checking the price on a receipt.",
		"flexes cold fingers after the mending, and does not look at what it cost.",
	},
	["cls.warlock.pet_call.w02.01"] = {
		"{pet} arrives the way smoke does: all at once, and smelling of somewhere else.",
		"And here is {pet}, punctual as a creditor. Stay close, and stay in line.",
	},
	["cls.warrior.buff.w02.01"] = {
		"rolls {g:his|her} shoulders once, as if settling a new weight onto them, and takes a firmer grip.",
		"shifts {g:his|her} stance a hand's width wider and tests the weapon's balance, readier than a moment ago.",
	},
	["cls.warrior.heal.w02.01"] = {
		"Patched. The new scar can join the others; they've got plenty to talk about.",
		"Good. Now I can go and earn the next one.",
	},
}, "base_classes")
