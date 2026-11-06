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
	["cls.rogue.battle.w05.001"] = {
		"One in each hand, and both of them have your name on.",
		"Left hand, right hand. You'll be busy wondering which.",
		"Two hands, two edges, and I'm not fussy which lands first.",
	},
	["cls.rogue.battle.w05.002"] = {
		"Hold that thought. I'll be at your elbow in a moment.",
		"Stay right there. I'll come to you.",
		"No need to come closer. That's my job.",
	},
	["cls.rogue.battle.w05.003"] = {
		"Find the side it favors and live on the other one.",
		"Which way does it turn first? Wherever that is, I won't be.",
	},
	["cls.rogue.battle.w05.004"] = {
		"turns the grip in {g:his|her} fingers once, the way a card player squares a deck.",
		"adjusts the grip without looking down, as if the hand knew the way on its own.",
	},
	["cls.rogue.battle.w05.005"] = {
		"Fighting fair costs extra. Today I'm saving my coin.",
		"I'd fight fair, but nobody's paying me enough for that.",
		"Rules are for duels. This isn't one.",
	},
	["cls.rogue.battle.w05.006"] = {
		"You swing, I'm elsewhere. That's the whole lesson, and it's free.",
		"Swing all you like. I've an appointment with your blind side.",
		"Aim carefully. It won't help, but it's polite.",
	},
	["cls.rogue.battle.w05.007"] = {
		"Small steps. Big ones are promises the feet can't keep.",
		"Stay light. Heavy feet are how people like me get caught.",
	},
	["cls.rogue.battle.w05.008"] = {
		"Fine. Quick and ugly it is.",
		"No time for anything clever. Ugly will have to do.",
		"No style today. Just results.",
	},
	["cls.rogue.battle.w05.009"] = {
		"Everything I paid the trainer for, all at once, in the next ten heartbeats.",
		"All those coins left at the trainer's. Time to see what they bought.",
	},
	["cls.rogue.battle.w05.010"] = {
		"stops staring at the obvious threat and starts watching everything else.",
		"reads the foe's weight rather than its face, and waits for it to commit.",
	},
	["cls.rogue.battle.w05.011"] = {
		"Let's dance. You lead, I'll cheat.",
		"Shall we? You take the first step, I'll take the liberties.",
		"May I have this fight? I promise to step on your feet.",
	},
	["cls.rogue.battle.w05.012"] = {
		"Closer. I do my best work close.",
		"Come in nice and near. Distance never did me any favors.",
		"Arm's length is too far. Let's fix that.",
	},
	["cls.rogue.battle.w05.013"] = {
		"Nobody will write this one down. Good. I prefer it that way.",
		"This won't make anyone's tavern story. Just as well.",
	},
	["cls.rogue.battle.w05.014"] = {
		"Stronger than me? Then I'll just have to be everywhere you aren't.",
		"You hit harder. I'll make sure you hit nothing.",
	},
	["cls.rogue.battle.w05.015"] = {
		"Really? I've had harder arguments with a locked drawer.",
		"Run along. No? Fine, this will be brief.",
	},
	["cls.rogue.battle.w05.016"] = {
		"tilts {g:his|her} head, like someone pricing a coat at a market stall.",
		"looks the foe over with the frank interest of an appraiser.",
	},
	["cls.rogue.battle.w05.017"] = {
		"Heart says run. Hands say stay. The hands have better judgment.",
		"Part of me is already halfway to the exit. The rest of me is busy.",
	},
	["cls.rogue.battle.w05.018"] = {
		"Come on. I'll be the hardest thing you ever tried to hit.",
		"Try to land one. Go on. I'll wait somewhere else.",
		"Better hands than yours have tried to catch me. They're trying still.",
	},
	["cls.rogue.battle.w05.019"] = {
		"Wherever you keep your kidneys, I'll find them.",
		"No idea where your kidneys are. I'll check everywhere.",
	},
	["cls.rogue.battle.w05.020"] = {
		"There's always a way out. Knowing it is what lets me stay.",
		"The exit's in my pocket. Funny how that makes it easier to stay.",
	},
	["cls.rogue.battle.w05.021"] = {
		"starts counting under {g:his|her} breath: one, two, three, and what comes at five is none of the foe's business.",
		"mouths a quiet count with every cut, saving the last number for the end.",
	},
	["cls.rogue.battle.w05.022"] = {
		"All instinct, no tricks. That makes one of us.",
		"You fight with what you were born with. I fight with what I learned.",
	},
	["cls.rogue.battle.w05.023"] = {
		"Already dead and still bothering people. I admire the work ethic.",
		"Out of the grave just to meet me? I'm flattered, honestly.",
	},
	["cls.rogue.battle.w05.024"] = {
		"Where's the back of something that's all front? I'll pick a side and call it that.",
		"No back, no flank, no pockets. I'll have to improvise.",
	},
	["cls.rogue.battle.w05.025"] = {
		"Every machine has a panel that works loose. Let me find yours.",
		"Gears and rivets. Somewhere in there is a seam weaker than the rest.",
	},
	["cls.rogue.battle.w05.026"] = {
		"Two arms, two legs, one back. I know this shape well.",
		"Ah, someone with a spine. I know right where that is.",
	},
	["cls.rogue.battle.w05.027"] = {
		"Smells like brimstone and bad decisions. Mostly yours.",
		"A demon, and all I have is what's in my hands. Sounds fair.",
	},
	["cls.rogue.battle.w05.028"] = {
		"takes one long look at the foe and quietly plans the way out as well as the way in.",
		"sizes up the foe, then the ground around it, then the nearest way out, in that order.",
	},
	["cls.rogue.battle.w05.029"] = {
		"Don't wait for me. You won't see me arrive anyway.",
		"Go on ahead. I'll be there; you just won't notice when.",
	},
	["cls.rogue.battle.w05.030"] = {
		"Let the loud ones go first. I'll arrive while it's busy hating them.",
		"Somebody else gets its full attention. I get everything it forgets.",
	},
	["cls.rogue.battle.w05.031"] = {
		"If it comes for me, I hit too hard. Someone be more annoying than I am, please.",
		"Should it turn my way, that's on me. Somebody give it a reason to look elsewhere.",
	},
	["cls.rogue.battle.w05.032"] = {
		"Quiet, now. This goes better without a speech.",
		"No speeches. Let's just get it done.",
		"Save your breath. You'll want it shortly.",
	},
	["cls.rogue.battle.w05.033"] = {
		"Leather armor. Lovely for running, less lovely for this.",
		"My armor is mostly optimism and stitched hide.",
	},
	["cls.rogue.battle.w05.034"] = {
		"loosens a strap at the wrist and tightens another, small fussy habits that steady the hands.",
		"gives each buckle a quick tug, the same order every time, and the hands go still.",
	},
	["cls.rogue.battle.w05.035"] = {
		"Tell me where it hurts. Never mind, I'll find out.",
		"Point to your weak spot. No? I'll go looking, then.",
		"Everyone's got a gap somewhere. Let's go find yours.",
	},
	["cls.rogue.battle.w05.036"] = {
		"Don't chase. Let it come onto the edge.",
		"Don't lunge. The opening comes to those who wait for it.",
	},
	["cls.rogue.battle.w05.037"] = {
		"I'm low on patience and high on tricks. Pick which you'd rather meet.",
		"Short on patience, long on dirty tricks. You'll meet both.",
	},
	["cls.rogue.battle.w05.038"] = {
		"Oh, lovely. All that caution was starting to wear on me.",
		"Finally. Being careful all day wears a body out.",
	},
	["cls.rogue.battle.w05.039"] = {
		"Every fight, I bet my life on being faster. One day I'll lose that bet.",
		"Speed is all I've got. Let it be enough once more.",
	},
	["cls.rogue.battle.w05.040"] = {
		"smiles, which is never a good sign for whoever the smile is aimed at.",
		"grins briefly, the way someone grins at a lock they already know how to open.",
		"brightens noticeably, which is the worst thing that could happen to the foe.",
	},
	["cls.rogue.battle.w05.041"] = {
		"Every step you take toward me, I take one sideways. Keep up.",
		"Follow me if you can. Most can't.",
	},
	["cls.rogue.battle.w05.042"] = {
		"You'll hit me eventually. Let's see how long eventually takes.",
		"Sooner or later you'll land one. I'm betting on later.",
	},
	["cls.rogue.battle.w05.043"] = {
		"Count the swings. Everything has a rhythm, and the gap lives between the beats.",
		"Two swings, a breath, two swings. There. That breath is mine.",
		"It pauses between attacks. Everything does. That pause is my door.",
	},
	["cls.rogue.battle.w05.044"] = {
		"Don't move. I'm working.",
		"Easy. This is delicate work.",
	},
	["cls.rogue.battle.w05.045"] = {
		"Sharp things, quick hands, terrible manners. Pleased to meet you.",
		"Introductions: these are my blades, and they're very rude.",
		"Hello. Goodbye. I find it saves time to say both now.",
	},
	["cls.rogue.battle.w05.046"] = {
		"circles to the left, then doubles back right, never staying where a blow could land.",
		"keeps drifting off the line of attack, so the foe has to keep turning to find {g:him|her}.",
	},
	["cls.rogue.battle.w05.047"] = {
		"Oh, the heroic type. I'll try not to ruin your story too much.",
		"Good posture, proud chin. You've clearly never met someone like me.",
	},
	["cls.rogue.battle.w05.048"] = {
		"Tight quarters, walls on every side. Lovely, for me.",
		"Corners and corridors. This is my kind of room.",
	},
	["cls.rogue.battle.w05.049"] = {
		"Let's keep this between us.",
		"This stays our little secret, yes?",
		"No need to shout. Nobody else is invited.",
	},
	["cls.rogue.battle.w05.050"] = {
		"That twitch. It's guarding the wrong side.",
		"Covering high. Then low is mine.",
	},
	["cls.rogue.buff.w05.001"] = {
		"A tingle under the skin, like a held breath that won't let go. I'll never quite trust these things, but I'll borrow them.",
		"Something hums along my arms for a moment, then settles in. I don't understand it. I don't need to.",
	},
	["cls.rogue.buff.w05.002"] = {
		"I feel marvelous. Somebody hide the valuables.",
		"Oh, that's nice. Now I'm dangerous and in a good mood. Rare combination.",
		"Feeling sturdy. Unusual for me. I'll try not to get reckless with it.",
	},
	["cls.rogue.buff.w05.003"] = {
		"flexes {g:his|her} fingers as the effect settles in, as if testing a new pair of gloves.",
		"shifts {g:his|her} weight from foot to foot, measuring the difference with professional interest.",
		"cracks {g:his|her} knuckles one at a time, as if waking them to the change.",
	},
	["cls.rogue.buff.w05.004"] = {
		"It won't last. Nothing borrowed does. Best to spend it before it fades.",
		"A loan, not a gift. I'll put it to work while it's still on the books.",
		"Borrowed time, borrowed vigor. I've never minded borrowing.",
	},
	["cls.rogue.buff.w05.005"] = {
		"Good. That'll keep me upright through the worst of it.",
		"Right. Set for whatever's around the next corner.",
		"There. Nerves settled. Onward.",
	},
	["cls.rogue.buff.w05.006"] = {
		"I feel it settle into my joints like warm oil in a hinge. Everything moves the way it should.",
		"It sinks in like warmth into cold leather, and everything bends the way it ought to.",
	},
	["cls.rogue.buff.w05.007"] = {
		"looks briefly down at {g:his|her} own hands, as if suspecting them of having been swapped for better ones.",
		"draws a slow breath and seems to stand a finger's width taller for it.",
	},
	["cls.rogue.buff.w05.008"] = {
		"My heart beats steadier. Steady is worth more to me than strong.",
		"Steadier inside. A calm pulse is half of every good cut.",
		"A slower pulse, a surer hand. That's all I'd ever ask of any gift.",
	},
	["cls.rogue.buff.w05.009"] = {
		"Ah. Now my knives feel lighter. Or my arms got stronger. One of those.",
		"Lovely. And I'll waste it on something petty, I just know it.",
	},
	["cls.rogue.buff.w05.010"] = {
		"Better for a while. I wish the world had something like this for the parts that ache on the inside.",
		"Bolstered, for now. The parts of me that truly hurt don't take this kind of help.",
	},
	["cls.rogue.buff.w05.011"] = {
		"Now that is a pleasant feeling. Let's go and spoil someone's day with it.",
		"That's put a spring in me. Whoever's next, I almost feel sorry for them.",
		"Ha. I feel like I could climb a city wall barehanded. I won't. But I could.",
	},
	["cls.rogue.buff.w05.012"] = {
		"breathes in slowly as the effect takes hold, then lets the breath out without a sound.",
		"goes very still for a heartbeat, as if listening to something happening under {g:his|her} skin.",
		"half-closes {g:his|her} eyes until the change has settled, then gets on with things.",
	},
	["cls.rogue.buff.w05.013"] = {
		"I'll take any help that doesn't come with a speech attached.",
		"Help without a lecture stapled to it. Those are rare enough to savor.",
	},
	["cls.rogue.buff.w05.014"] = {
		"My eyes feel keener, or I think they do. In this trade, believing you're sharper is half of being sharper.",
		"Everything looks a touch clearer. Could be the effect. Could be my mood. I'll use both.",
	},
	["cls.rogue.buff.w05.015"] = {
		"Excellent. Now if anything goes wrong, it's definitely someone else's fault.",
		"Fortified, prepared, and still planning to avoid any actual fighting. Best of both.",
	},
	["cls.rogue.buff.w05.016"] = {
		"checks the draw of each blade once more, as if the change might somehow reach them too.",
		"tightens a buckle while the effect settles, never one to waste a quiet moment.",
	},
	["cls.rogue.buff.w05.017"] = {
		"Let them come at me now. I'll still prefer they never see me, but let them come.",
		"Primed for trouble. Not hunting it, mind you. Just primed.",
	},
	["cls.rogue.buff.w05.018"] = {
		"A pleasant warmth through the limbs, like a lit hearth after a long road.",
		"Something good settles in the bones. I won't ask what; I'll just enjoy it.",
	},
	["cls.rogue.buff.w05.019"] = {
		"Every bit helps. Fights have been lost by less than this.",
		"Small things win fights. This is a small thing. I approve.",
	},
	["cls.rogue.buff.w05.020"] = {
		"straightens, and something in {g:his|her} bearing turns from careful to quietly dangerous.",
		"lifts {g:his|her} chin a fraction, with the look of someone just dealt a better hand.",
	},
	["cls.rogue.buff.w05.021"] = {
		"Strength I didn't earn. I'll use it anyway; scruples are heavy to carry on the road.",
		"Not my own doing, this extra vigor. I'll spend it without guilt. Mostly without guilt.",
	},
	["cls.rogue.buff.w05.022"] = {
		"If I start to glow, tell me. Glowing is very bad for business.",
		"Is it showing? I hope it isn't showing. Nobody trusts a rogue who sparkles.",
	},
	["cls.rogue.heal.w05.001"] = {
		"The tightness in my chest lets go one notch at a time. I let it, and say nothing.",
		"Breathing comes easier now. I hadn't noticed how shallow I'd been keeping it.",
		"Air all the way down again. Funny how you forget to miss it.",
	},
	["cls.rogue.heal.w05.002"] = {
		"Patched up. Not new, mind you. Lightly worn, one careful owner.",
		"There. Fit to be underestimated all over again.",
		"Mended. Somebody write down that I didn't complain.",
	},
	["cls.rogue.heal.w05.003"] = {
		"flexes {g:his|her} fingers one by one, as if counting them back into service.",
		"loosens the set of the shoulders with a slow roll, and the stiffness drains out of the stance.",
		"works {g:his|her} jaw from side to side, then sets it, done with whatever hurt.",
	},
	["cls.rogue.heal.w05.004"] = {
		"Patched up again. The body keeps a ledger of these, even when I don't.",
		"Every mending leaves a faint seam somewhere. I'm becoming more seam than cloth.",
	},
	["cls.rogue.heal.w05.005"] = {
		"That's better. Now, where were we?",
		"Right. Round two, and this time I'm not holding back.",
		"Patched and ready. Whatever comes next had better be worth it.",
	},
	["cls.rogue.heal.w05.006"] = {
		"A few more breaths bought. Spend them well; there won't be a cheap second batch.",
		"That buys me time, not victory. Don't confuse the two.",
		"Good. Every heartbeat I get back is one more chance to end this properly.",
	},
	["cls.rogue.heal.w05.007"] = {
		"straightens in the middle of the fight, color returning to {g:his|her} face, and goes back in without a word.",
		"finds a second wind, and the next step forward is noticeably quicker than the last.",
	},
	["cls.rogue.heal.w05.008"] = {
		"Quiet now, and mending. A good time to check my gear and count what's missing.",
		"Nothing chasing me, and the hurt fading. I'll take this moment and sit in it a while.",
		"No hurry now, and the pain going. Time for the dull part: tidying up and moving on.",
	},
	["cls.rogue.heal.w05.009"] = {
		"Tastes like a boot that's been through a swamp. Works, though.",
		"Whoever decided potions should taste of punishment, I'd like a word.",
		"Uncorked, swallowed, regretted. In that order.",
	},
	["cls.rogue.heal.w05.010"] = {
		"The empty vial goes back in the pack. Glass is worth something, and I don't leave traces.",
		"I keep the empties. A bottle left behind tells anyone who looks that someone was hurt here.",
	},
	["cls.rogue.heal.w05.011"] = {
		"Whatever was torn is knitting back, a warm itch from end to end. Fascinating, and slightly disgusting.",
		"The hurt draws closed like a purse with its strings pulled. I'd admire it more if it weren't mine.",
	},
	["cls.rogue.heal.w05.012"] = {
		"Better. No fuss. Let's move.",
		"Fine. I'm fine. Nobody make a fuss.",
		"That'll hold. No speeches, please.",
	},
	["cls.rogue.heal.w05.013"] = {
		"A little more life on loan. I try not to ask what for; the answer changes too often.",
		"Mended so I can go back and do it all again. There's a joke in that, and I'm the one in it.",
	},
	["cls.rogue.heal.w05.014"] = {
		"tests a few steps on the spot, a little bounce in them now, and looks quietly pleased.",
		"rolls {g:his|her} neck until something clicks, then nods as though a deal had been struck.",
	},
	["cls.rogue.heal.w05.015"] = {
		"Hands steady again. That matters more than the rest. Shaking hands are how people like me get caught.",
		"The tremor's gone from my fingers. Everything else can mend at its own pace.",
		"Fingers loose and sure again. Anyone in my trade with numb hands is just someone in dark clothes.",
	},
	["cls.rogue.heal.w05.016"] = {
		"Ah, that's the stuff. Not a word of this to anyone who thinks I'm invincible.",
		"Much better. My reputation for never getting hurt survives, provided nobody talks.",
	},
	["cls.rogue.heal.w05.017"] = {
		"Pain talks. Now it's down to a mutter I can make out what it was saying: I was careless on my left side.",
		"With the hurt dulled I can think back over it. Too slow on the turn. Noted.",
	},
	["cls.rogue.heal.w05.018"] = {
		"closes {g:his|her} eyes for the length of one long breath, and opens them sharper.",
		"lets {g:his|her} weight settle back onto both feet, the careful favoring of one side forgotten.",
	},
	["cls.rogue.heal.w05.019"] = {
		"Feeling almost civilized again.",
		"Look at that. Color back in the cheeks, knives back in the hands.",
		"Better. I might even be pleasant company for a minute or two.",
	},
	["cls.rogue.heal.w05.020"] = {
		"Mended enough. Enough is the only measure I've ever trusted.",
		"Not whole, but whole enough to finish what I started.",
	},
	["cls.rogue.heal.w05.021"] = {
		"My body's forgiven me. It's more generous than most people I know.",
		"Pain gone, dignity pending.",
		"The aches are packing up and leaving. Only my pride is still limping.",
	},
	["cls.rogue.heal.w05.022"] = {
		"takes the moment's respite to reset a blade in its sheath, eyes already on the next thing.",
		"brushes dust from a sleeve with quick fingers, the hurt apparently already filed away.",
	},
	["cls.rogue.heal.w05.023"] = {
		"A minute. Then on again, and quieter this time.",
		"Patched. Next time, I pick the ground.",
	},
	["cls.rogue.heal.w05.024"] = {
		"My heart was racing toward a door I don't mean to walk through yet. It's slowing now.",
		"The edge was nearer than my face let on. The heartbeat knows; it's only just calming.",
	},
	["cls.rogue.heal.w05.025"] = {
		"Warmth spreading out from the middle, like the first sip of something strong, without the headache after.",
		"A pleasant warmth from the inside out. If only everything that helped felt this good.",
	},
	["cls.rogue.heal.w05.026"] = {
		"One swig and I'm back in it. You'll need a better plan.",
		"Cheating? It's called planning ahead. Look it up.",
	},
	["cls.rogue.heal.w05.027"] = {
		"I always turn a little away when I mend. Wounds tell people where you're weak.",
		"Healing is a private business. A hurt shown is a hurt someone remembers.",
	},
	["cls.rogue.heal.w05.028"] = {
		"gives a small, satisfied nod at no one in particular, as if approving good work done on {g:himself|herself}.",
		"pats {g:his|her} own chest twice, the way one might thank a reliable horse.",
	},
	["cls.rogue.heal.w05.029"] = {
		"I still get hurt more often than I'd like. The quick ones learn to bleed less; I'm still learning.",
		"Each scrape teaches the same lesson, and I'm slowly starting to listen: get out before the blow, not after.",
	},
	["cls.rogue.heal.w05.030"] = {
		"All this time in the trade, and the mending still surprises me. The body wants to go on more stubbornly than I do.",
		"So many hurts and mendings that I know the order things come back in: breath first, then hands, then nerve.",
	},
	["cls.rogue.heal.w05.031"] = {
		"You'll have to do all of that again. I hope you've got the breath for it.",
		"Undone, every last scratch of it. Start over.",
	},
	["cls.rogue.heal.w05.032"] = {
		"It may leave a mark. I don't mind marks. They're the only record I keep.",
		"Another faint line for the collection. I don't count them; I just make sure there's room.",
	},
	["cls.rogue.heal.w05.033"] = {
		"sits back on {g:his|her} heels for a moment, listening to the surroundings while the hurt drains away.",
		"keeps very still while the hurt fades: only the eyes move, the rest of the body pretending not to be there.",
	},
	["cls.rogue.heal.w05.034"] = {
		"Hm. That's taken the worst of it off.",
		"Good enough. Hurt is a working condition, not an excuse.",
	},
	["cls.rogue.heal.w05.035"] = {
		"Bitter, then warm, then nothing at all. I'd love to know what's in these, and I suspect I'd rather not.",
		"Herbs, something mineral, and an aftertaste I'd rather not name. Alchemists keep better secrets than I do.",
	},
	["cls.rogue.muse.w05.001"] = {
		"Boots first. A soft sole, worn to the shape of my foot, does more of my work than any blade I own.",
		"I can patch a cloak without looking, but a new pair of boots takes a week to break in. Until then I walk like a cart.",
		"Swords get the songs. Boots get the work. I know which I'd save first from a fire.",
	},
	["cls.rogue.muse.w05.002"] = {
		"Outside edge of the foot first, then roll the weight in. Thousands of steps learned that way, and now I can't walk normally even when I try.",
		"Heel down is for people with nothing to hide. I land on the side of my foot without thinking, even crossing an empty room.",
	},
	["cls.rogue.muse.w05.003"] = {
		"My coins ride wrapped in a scrap of cloth. A purse that jingles is a purse that tells on you.",
		"I know to the copper what I'm carrying, and not out of greed. Loose coin rattles, and rattling is a kind of gossip.",
		"Every buckle padded, every clasp tied down. The metal on me isn't allowed to speak unless I say so.",
	},
	["cls.rogue.muse.w05.004"] = {
		"Everyone thinks the trade dresses in black. Black stands out against nearly everything. Gray, brown, the color of old mud: that's what goes unseen.",
		"Pure black is for people who want to look dangerous. I'd rather look like a wall, a stump, a pile of sacks.",
	},
	["cls.rogue.muse.w05.005"] = {
		"Dry leather creaks. I oil mine the way other people brush down a horse: often, slowly, and with a little affection.",
		"A creak at the shoulder, so faint no one else would hear it. Later the leather gets its oil, and I get my peace.",
	},
	["cls.rogue.muse.w05.006"] = {
		"I've worked hard on a face nobody remembers: pleasant, plain, faintly bored. It's the best disguise I own, and it cost nothing.",
		"No scars on show, no bright colors, nothing to describe afterward. If a witness says 'someone, I think', I've done it right.",
		"The trick isn't hiding. It's being so ordinary that the eye slides off you like water off oilcloth.",
	},
	["cls.rogue.muse.w05.007"] = {
		"A lamp is an honest thing. It tells you exactly where not to stand.",
		"Every light makes a promise about where the dark will fall. I've built a whole life on reading those promises.",
		"Where the lamplight stops is a line drawn just for me. I never cross it by accident.",
	},
	["cls.rogue.muse.w05.008"] = {
		"A crowd is the best cover there is. Move at its speed, look where it looks, and you're one more leaf on the river.",
		"People think hiding needs dark corners. Give me a busy market instead: a hundred faces, and not one of them looking at mine.",
	},
	["cls.rogue.muse.w05.009"] = {
		"I know a dozen ways to leave a room without anyone noticing. I've never quite learned how to stay in one.",
		"Slipping out is easy; I could do it asleep. Staying, sitting down, letting someone look at me for a while: that's the hard lock.",
		"I can find the way out of any room before I've found a chair in it. That ought to worry me more than it does.",
	},
	["cls.rogue.muse.w05.010"] = {
		"Anger makes noise. I leave mine at the door like muddy boots, and pick it up on the way out if I still want it.",
		"Hot temper, heavy feet. The angrier I get, the slower and quieter I make myself move.",
	},
	["cls.rogue.muse.w05.011"] = {
		"The fear never really goes. I've only taught it to whisper, and to whisper useful things.",
		"A little dread keeps the steps light. The day I stop being afraid is the day I get careless, and careless doesn't last.",
		"Scared? Always, a bit. It's the taut wire under every quiet step, and I'd miss it if it snapped.",
	},
	["cls.rogue.muse.w05.012"] = {
		"They call a blow from behind dishonorable. Losing is dishonorable too, and it lasts a great deal longer.",
		"Fair fights are for people who can afford to lose them. I take the angle I'm given and leave the speeches to others.",
	},
	["cls.rogue.muse.w05.013"] = {
		"People think creeping is cowardice. Let them stand two paces from something that would kill them, and not breathe, and not run.",
		"There's a kind of nerve nobody sings about: keeping perfectly still while danger walks past close enough to touch.",
	},
	["cls.rogue.muse.w05.014"] = {
		"Being underestimated is a gift. I unwrap it slowly, and I never say thank you.",
		"Let them think I'm harmless, or dull, or not worth watching. I'll correct them later, and briefly.",
		"Nobody fears the quiet one at the back. That's my favorite seat.",
	},
	["cls.rogue.muse.w05.015"] = {
		"Luck? Luck is just preparation nobody happened to see.",
		"People call me lucky. I call it checking the floorboards twice.",
	},
	["cls.rogue.muse.w05.016"] = {
		"Never run when a walk will do. Running is a confession.",
		"Slow down. Nobody looks twice at someone who looks bored.",
	},
	["cls.rogue.muse.w05.017"] = {
		"I'm not sneaking. I'm walking considerately.",
		"This isn't creeping. It's good manners with soft soles.",
		"Creeping? No. I'm just making very little fuss about arriving.",
	},
	["cls.rogue.muse.w05.018"] = {
		"Loud people tell you everything about themselves. Quiet people only tell you to be careful.",
		"Watch the one who isn't talking. The talkers are busy; the quiet one is counting.",
	},
	["cls.rogue.muse.w05.019"] = {
		"I can be three different people before supper. The hard part is remembering which one owes money.",
		"A new walk, a new voice, another way of holding a cup, and I'm someone else entirely. Usually someone more polite.",
	},
	["cls.rogue.muse.w05.020"] = {
		"Relax. If I wanted your purse, you'd already be wondering where you'd left it.",
		"Stop clutching your pockets. All it does is show me which one matters.",
	},
	["cls.rogue.muse.w05.021"] = {
		"I could have been crueler today, and I wasn't. I keep a quiet count of those times. It's the only count I'm proud of.",
		"The quick way is the kind way, mostly. When there's a way that needs no blade at all, I like to take it, and I tell no one.",
	},
	["cls.rogue.muse.w05.022"] = {
		"Quiet feet and quick hands: that's the craft. What I do with them is my own business, and some days it's even honest.",
		"A good locksmith and a good burglar learned exactly the same lessons. The difference is mostly who's paying, and when.",
	},
	["cls.rogue.muse.w05.023"] = {
		"Falling well is half the trade. Go loose, roll, and never argue with the ground; it wins every time.",
		"Tuck the chin, give it the shoulder, keep rolling. A good fall costs a bruise. A stiff one costs a week.",
	},
	["cls.rogue.muse.w05.024"] = {
		"The dark is overrated. A busy street, all errands and elbows, hides more people than any alley ever did.",
		"Everyone watches the dark corners. Nobody looks at the person in plain view carrying a crate.",
	},
	["cls.rogue.muse.w05.025"] = {
		"Guards are easy; they believe their eyes. Beasts are the problem. A wolf believes its nose, and I've no answer to a nose.",
		"The first thing I check is which way the air is moving. Eyes can be fooled. Noses hold grudges.",
		"Air in my face, and I'm a ghost. Air at my back, and every hound for a mile knows what I had for supper.",
	},
	["cls.rogue.muse.w05.026"] = {
		"The first thing I learn in any house is which floorboard sings. Everything else can wait.",
		"Stairs creak in the middle and keep quiet at the edges. Nobody taught me that; I simply listened to a great many stairs.",
	},
	["cls.rogue.muse.w05.027"] = {
		"Other people see a wall. I see a drainpipe, two loose stones and a windowsill. Stairs, really, just badly arranged.",
		"There's no such thing as a wall. Only a ladder I haven't been introduced to yet.",
		"A locked gate is just an invitation to take a closer look at the hinges.",
	},
	["cls.rogue.muse.w05.028"] = {
		"I can't stop noticing. A missing button, fresh mud on a boot, a ring on the wrong finger. Some days I'd give a lot to look at a thing and see nothing.",
		"My eyes don't rest. They count exits, pockets, glances. Even when I beg them for a little quiet, they keep their tally.",
	},
	["cls.rogue.muse.w05.029"] = {
		"A pebble in my boot. Now. Of all the moments it could have picked.",
		"Something is crawling up my sleeve, and I'm not allowed to move. This craft has its glamorous days, and this isn't one.",
	},
	["cls.rogue.muse.w05.030"] = {
		"This isn't invisibility. Anyone who looked straight at me, close enough, would see me. The whole art is giving them no reason to.",
		"Hidden only means unnoticed. Stand too near, move too fast, and the trick comes apart like wet paper.",
	},
	["cls.rogue.muse.w05.031"] = {
		"Slowness is the price of not being seen. I move like cold honey, and the rest of the world won't wait for me.",
		"Every muscle held half-tight, every step a small decision. An hour of this tires me more than a run from one end of a valley to the other.",
		"Hidden means slow, and slow means sore. Nobody mentions how a careful crouch starts to burn after a while.",
	},
	["cls.rogue.muse.w05.032"] = {
		"From here I see everyone and nobody sees me. It sounds like power. Mostly it feels like standing outside a window.",
		"People are different when they think they're alone. Softer, sillier, sadder. I always feel I'm stealing a little of that, too.",
	},
	["cls.rogue.muse.w05.033"] = {
		"Each step picked by hand. Not the gravel, not the loose board, not the twig. Something soft, something solid, then the next.",
		"Toe, test, weight. Toe, test, weight. Counting keeps the feet honest.",
	},
	["cls.rogue.muse.w05.034"] = {
		"Just before anyone knows I'm here, the whole world seems to hold still with me. I'd trade a great deal for that moment.",
		"Unseen, I'm a question nobody has thought to ask yet. I like being that question.",
		"Nobody knows I'm here. For a little while, everything that happens next is mine to decide.",
	},
	["cls.rogue.muse.w05.035"] = {
		"goes perfectly still, listening, and moves on only once sure that nothing is listening back.",
		"flattens against the nearest cover and waits without moving a muscle, as patient as a stone.",
	},
	["cls.rogue.muse.w05.036"] = {
		"moves along the edges of things, unseen, and the world goes on about its business as though no one had passed.",
		"keeps low and unhurried, a quiet disturbance at the corner of nobody's eye.",
	},
	["cls.rogue.muse.w05.037"] = {
		"tests the ground ahead with the toe of a boot before trusting it with any weight.",
		"pauses mid-stride, foot raised, listening, then sets it down somewhere slightly different.",
	},
	["cls.rogue.muse.w05.038"] = {
		"takes in the surroundings in one unhurried sweep: the nearest cover, the nearest way out, the nearest pair of eyes.",
		"glances about with an idle air that misses absolutely nothing.",
	},
	["cls.rogue.muse.w05.039"] = {
		"tightens a strap that wasn't loose, then checks it again, just to be sure.",
		"shifts a sheath at the hip by a finger's width, and looks satisfied at last.",
	},
	["cls.rogue.muse.w05.040"] = {
		"stays motionless for so long that anyone passing would need a second look to be sure someone was there at all.",
		"settles into a stillness so complete it seems less like waiting than like belonging to the place.",
		"becomes part of the surroundings so thoroughly that a moth could settle on {g:his|her} sleeve undisturbed.",
	},
	["cls.rogue.muse.w05.041"] = {
		"balances a small knife point-down on one fingertip for a long moment, then sheathes it without a whisper of steel.",
		"spins a knife once around a finger, catches it by the grip, and puts it away as if nothing had happened.",
	},
	["cls.rogue.muse.w05.042"] = {
		"pats one pocket, then another, then a third, and seems quietly reassured by whatever is still there.",
		"counts something by touch inside a pouch, lips moving without a sound, and the total, apparently, comes out right.",
	},
	["cls.rogue.muse.w05.043"] = {
		"I trust three things without question: a well-oiled hinge, a well-made lock, and my own two hands. People take longer.",
		"Hinges, locks and knives have never lied to me. People have a worse record, and I'm one of the people.",
	},
	["cls.rogue.muse.w05.044"] = {
		"Every lock is somebody's small hope of keeping something safe. Even when I open one, I try to remember that.",
		"Behind each lock there was a person who worried. I like to think I can feel the worry in how stiff they made it.",
	},
	["cls.rogue.muse.w05.045"] = {
		"Strangers hand me their locked boxes and trust me to give them back. Open, even. It's oddly touching.",
		"Word gets around that I can open things. Suddenly everyone has a little box with a stuck lid and a hopeful face.",
	},
	["cls.rogue.muse.w05.046"] = {
		"Thieves' tools, they call these picks. I prefer 'persuasion kit'.",
		"They sell these as thieves' tools. Rude. I mostly use them on chests whose key nobody can find.",
	},
	["cls.rogue.muse.w05.047"] = {
		"The things people carry. A bent spoon, half a biscuit, a button that matches nothing. Every pocket is a small, sad museum.",
		"I've stopped expecting treasure from pockets. Lint, a copper, a tooth wrapped in a rag. Somebody loved that tooth.",
	},
	["cls.rogue.muse.w05.048"] = {
		"To lift something from a pocket you stop being a person for a moment. You become a draft, a brush of cloth, a thing nobody turns round for.",
		"The hand goes in while the other one breathes out. Never on the breath in; on the breath in, people notice everything.",
	},
	["cls.rogue.muse.w05.049"] = {
		"A tap behind the ear and a nice long nap. The gentlest thing I do, and nobody ever thanks me for it.",
		"Knocking someone out cold is an underrated kindness. Nobody gets hurt, and somebody gets a rest they badly needed.",
	},
	["cls.rogue.muse.w05.050"] = {
		"Evasion isn't magic. It's the body refusing, very quickly, to be wherever the trouble is about to land.",
		"When I must, I can make myself impossible to touch for a short while. Then it runs out, and I'd better be somewhere else.",
	},
	["cls.rogue.muse.w05.051"] = {
		"Sprinting is the one time I let myself be loud and graceless. Elbows, dust, no dignity whatsoever. It works.",
		"All this training in moving quietly, and sometimes the answer is to run like a startled hare.",
	},
	["cls.rogue.muse.w05.052"] = {
		"Vanishing costs a pinch of flash powder and a little pride. The powder I buy by the pouch. The pride I've learned to do without.",
		"One puff of powder and I'm gone, mid-fight, as if the floor had swallowed me. I've never stopped finding it slightly funny.",
	},
	["cls.rogue.muse.w05.053"] = {
		"Blinding powder, folded in paper, kept dry. I check it more often than I check my purse.",
		"A pinch thrown at the eyes buys me the room I need. Cruel, maybe, but kinder than most of the alternatives.",
	},
	["cls.rogue.muse.w05.054"] = {
		"Most problems are just heads facing the wrong way. A pebble tossed in the right spot turns them, and the problem wanders off to investigate.",
		"One small noise over there, and every eye goes over there. People are wonderfully obedient to a clatter.",
	},
	["cls.rogue.muse.w05.055"] = {
		"Spellcasters hate me. Something about being interrupted mid-word by a boot.",
		"Nothing silences a spell like a well-timed kick. Rude, I know. Effective, I also know.",
	},
	["cls.rogue.muse.w05.056"] = {
		"Twice I wash my hands after the vials, then once more for luck. The craft forgives plenty of mistakes, but not that one.",
		"Corks pressed tight, vials wrapped in rag, never in the same pocket as my food. Poison is a trade of small, careful habits.",
	},
	["cls.rogue.muse.w05.057"] = {
		"A dagger asks you to come close and mean it. A sword lets you keep a little distance. Either way the work is the same: find the opening.",
		"Short blade or long, it's never really about the edge. It's about where it goes, and when, and whether they saw it leave.",
	},
	["cls.rogue.muse.w05.058"] = {
		"I hone my edges a little and often, the way some people hum. It keeps the hands busy and the head quiet.",
		"A few strokes on the stone whenever I sit down. Not because the blade needs it. Because I do.",
		"The hiss of the stone along the edge is the only lullaby I trust.",
	},
	["cls.rogue.muse.w05.059"] = {
		"I hear a name once and it stays with me, along with the voice that said it and where the speaker was looking at the time.",
		"Names, faces, the order people come into a room. My memory keeps all of it, whether I ask it to or not.",
	},
	["cls.rogue.muse.w05.060"] = {
		"You'd be amazed what needs hushing when you're hiding: knees that click, a belt that creaks, a laugh that wants out at the worst time.",
		"The loudest thing about me is never my feet. It's the cough I've been saving up, or the joke I just thought of.",
	},
	["cls.rogue.muse.w05.061"] = {
		"I'm wonderful company. Ask anyone who noticed I was there.",
		"I'm told I'm a pleasure to have around. By the few who could say where I was standing.",
	},
	["cls.rogue.muse.w05.062"] = {
		"Taking things is easy. Putting them back without anyone noticing: now that's a trick worth showing off, and I can't show it to anyone.",
		"Sometimes I return what I've lifted, just to keep my hands honest. Nobody ever notices that either.",
	},
	["cls.rogue.muse.w05.063"] = {
		"Silence isn't empty. It has a grain, like wood, and if you move along the grain nobody hears you at all.",
		"There are a hundred kinds of quiet. The trick is to match the one you're standing in.",
		"Noise is a cloth full of holes. Step through the holes and nobody hears a thing.",
	},
	["cls.rogue.muse.w05.064"] = {
		"There's no last lesson in this craft. Every lock, every guard, every crowd teaches me something, usually by embarrassing me first.",
		"The day I think I'm good enough is the day somebody catches me. So I keep thinking I'm not.",
	},
	["cls.rogue.muse.w05.065"] = {
		"I stretch my fingers before anything delicate, one by one, like a musician before playing. Stiff hands are loud hands.",
		"My hands are the most valuable thing I own. Nails short, knuckles loose, and never, ever a fist against a wall.",
	},
	["cls.rogue.muse.w05.066"] = {
		"A length of thin cord, a bit of wax, a scrap of dark cloth, a few coppers for bread or luck. My pack is small, but every corner of it has a reason.",
		"Light enough to climb with, heavy enough to cope. I rearrange my pack more often than most people rearrange their opinions.",
	},
	["cls.rogue.muse.w05.067"] = {
		"A good day, by my measure: nobody looked at me twice, and I looked at everything.",
		"Simple pleasures. A door that opens without a sound. A crowd that parts without noticing. A stool in a corner with a view of the way in.",
	},
	["cls.rogue.muse.w05.068"] = {
		"Nobody warns you how dull the craft is. For every moment of nerve there are hours of crouching and thinking about lunch.",
		"The songs leave out the waiting. They also leave out the cramp in the calf, which is most of what I remember.",
	},
	["cls.rogue.muse.w05.069"] = {
		"Some of what I've done I'd rather not explain. Some of it was kind, and nobody saw that either. I hope the two weigh about the same.",
		"My good deeds are as quiet as my bad ones. If someone somewhere keeps the reckoning, I hope they have sharp eyes.",
	},
	["cls.rogue.muse.w05.070"] = {
		"Yes, I carry knives. Several. No, you can't see them. That's rather the point of carrying them like this.",
		"Everyone wants to know how many blades I've got on me. The honest answer is 'one more than you found'.",
	},
	["cls.rogue.muse.w05.071"] = {
		"Talk less, listen more, leave earlier than anyone expects. That's the whole method.",
		"Don't explain, don't boast, don't linger. Whatever's left over is luck.",
	},
	["cls.rogue.muse.w05.072"] = {
		"Wherever I am, part of me is already choosing where I'd hide if I had to. I don't think it ever switches off.",
		"I sleep light and I sleep facing the door. Rest, for me, is something done with one ear open.",
	},
	["cls.rogue.muse.w05.073"] = {
		"I've spent so long watching other people live that I sometimes forget I'm allowed to do it too.",
		"Every life I watch from a corner looks a little warmer than mine feels from the inside. Probably that's just the angle.",
		"I know the habits of a hundred strangers and the names of very few friends. Some bargain, that.",
	},
	["cls.rogue.muse.w05.074"] = {
		"I'm not gentle. I'm quiet. People confuse the two exactly once.",
		"Soft-spoken doesn't mean soft. Ask anyone who tested the difference.",
	},
	["cls.rogue.muse.w05.075"] = {
		"Steady hands are made, not born. Mine shook once. Now they only shake afterwards, where nobody's watching.",
		"The trick with nerves is to let them have their say later. During, I'm stone. After, I'm allowed to sit down.",
	},
	["cls.rogue.muse.w05.076"] = {
		"rolls {g:his|her} shoulders and flexes {g:his|her} fingers one at a time, like someone about to open something very delicate.",
		"cracks no knuckles, clears no throat, and still somehow gives the impression of getting ready.",
	},
	["cls.rogue.muse.w05.077"] = {
		"Rogue, they call it. It sounds wild and reckless. Most of my days are spent being extremely careful.",
		"There's nothing roguish about counting floorboards. If anything, I'm the tidiest person I know.",
	},
	["cls.rogue.muse.w05.078"] = {
		"Full plate sounds like a kitchen falling down the stairs. Every time I hear it, I wince for whoever's inside.",
		"Spellcasters hum, warriors clank. I'm the one nobody hears, and that suits me fine.",
	},
	["cls.rogue.muse.w05.079"] = {
		"If I do this well, nobody will ever tell a story about me. Some days that's a comfort, and some days it isn't.",
		"The best work leaves no tale behind. I've made my peace with being a footnote nobody wrote.",
		"Songs are written about people who were seen. I chose the other kind of life, and most days I'd choose it again.",
	},
	["cls.rogue.muse.w05.080"] = {
		"Quick hands, slow decisions. Get those the wrong way round and you won't get the chance to swap them back.",
		"Hurry the blade, never the choice. The choice is where most of us go wrong.",
	},
	["cls.rogue.muse.w05.081"] = {
		"Now and then I stamp a little, on purpose, just to hear myself arrive like an ordinary person.",
		"It's restful, once in a while, to whistle and scuff my boots and let the whole world know I'm coming.",
	},
	["cls.rogue.muse.w05.082"] = {
		"I could tie someone's bootlaces together from here and they'd never know. I won't. Probably.",
		"Unseen, and with all this time on my hands. It's very hard not to do something silly.",
		"Nobody notices me, and my hands itch to rearrange something. Someone's hat, maybe. A chair, a few inches to the left.",
	},
	["cls.rogue.muse.w05.083"] = {
		"Hidden. Now the questions, in order: what's watching, what's listening, and what's between me and where I'm going.",
		"Unseen is only the start. Next comes the path, then the timing, then the patience to let the two line up.",
	},
	["cls.rogue.muse.w05.084"] = {
		"Trust is the one thing I can't lift from anyone. When it's handed to me freely, I carry it like thin glass.",
		"I could take nearly anything from nearly anyone. Not trust. That one has to be given, which is why I keep it so carefully.",
	},
	["cls.rogue.muse.w05.085"] = {
		"steps around a spot that would have creaked, without once looking down to find it.",
		"stills a loose buckle with two fingers before it can clink, without breaking stride.",
	},
	["cls.rogue.muse.w05.086"] = {
		"Count the people in a room before you count anything else in it.",
		"First the eyes, then the doors, then the valuables. Get the order wrong once and there's no second lesson.",
	},
	["cls.rogue.quest_complete.w05.001"] = {
		"A pleasure doing business. Mostly the business part.",
		"Done. Should anything turn up missing, I was never here.",
		"There, all sorted. Don't bother checking your pockets; today I'm on the clock.",
	},
	["cls.rogue.quest_complete.w05.002"] = {
		"I learned more on that errand than anyone asked me to. I always do. I'll store it away like a squirrel with nuts.",
		"The job's done, but the useful part is whatever I noticed along the way. That never goes in the report.",
	},
	["cls.rogue.quest_complete.w05.003"] = {
		"accepts what is offered without looking at it, the way one returns a nod from an old acquaintance.",
		"weighs what is given for a moment in one palm, as if its true worth could be read from the heft.",
		"glances once over {g:his|her} shoulder before taking what is held out, purely from habit.",
	},
	["cls.rogue.quest_complete.w05.004"] = {
		"Another one off the list. I could get used to being useful.",
		"Done, and nobody got stabbed who didn't deserve it. Well. Probably.",
		"Finished. I'd bow, but bowing draws attention.",
	},
	["cls.rogue.quest_complete.w05.005"] = {
		"In my trade the usual reward is not getting caught. This makes a pleasant change.",
		"Rewarded for honest work. I'll try not to let it go to my head.",
		"Honest work, honest pay. I feel faintly unwell.",
	},
	["cls.rogue.quest_complete.w05.006"] = {
		"Job done, and the road's waiting. Nobody ever asks where I go next, which suits me.",
		"The thanks lasts a moment. The road after it lasts much longer, and I like the road better.",
	},
	["cls.rogue.quest_complete.w05.007"] = {
		"Next time, give me something difficult. I'm wasted on errands.",
		"Is that all? I'd limbered up for something harder.",
		"Easy. Suspiciously easy. I'll be watching my back on the way out.",
	},
	["cls.rogue.quest_complete.w05.008"] = {
		"Every task like this is practice. Moving unnoticed, choosing the moment, leaving clean. The task itself hardly matters.",
		"Whatever they think they paid for, what I got was rehearsal. Patience, timing, a quiet exit.",
	},
	["cls.rogue.quest_complete.w05.009"] = {
		"stifles a grin and manages, just barely, to look modest.",
		"puts on an expression of polite humility that would fool absolutely no one.",
	},
	["cls.rogue.quest_complete.w05.010"] = {
		"Said I'd do it. It's done.",
		"My word was on this. Now it's kept.",
		"Promised, delivered. Nothing more to say.",
	},
	["cls.rogue.quest_complete.w05.011"] = {
		"I did what was asked. Whether it was right is a question I'll put in my pack with the others, and carry.",
		"Done. I don't ask whose side a job is on; I only hope, now and then, that it was the decent one.",
	},
	["cls.rogue.quest_complete.w05.012"] = {
		"A fair trade. Rare enough in my line of work that I'll savor it.",
		"Fair's fair. I'll remember who pays on time.",
	},
	["cls.rogue.quest_complete.w05.013"] = {
		"That went well. I keep waiting for the catch, and for once there isn't one.",
		"Something done right, start to finish. I'll let myself enjoy it until the next thing goes wrong.",
	},
	["cls.rogue.quest_complete.w05.014"] = {
		"lets {g:his|her} gaze sweep the surroundings once, unhurried, before turning back to the business at hand.",
		"checks, out of long habit, who might be watching the exchange.",
	},
	["cls.rogue.quest_complete.w05.015"] = {
		"Signed, sealed, done. Well, unsigned. I don't leave my name on things.",
		"Done. If anyone asks who handled it, say a tall stranger did. Or a short one. Be vague.",
	},
	["cls.rogue.quest_complete.w05.016"] = {
		"Some jobs want a lock picked, some want a long walk. I like the first kind better, but I take both.",
		"Lockpicks or legwork, the job gets done either way. I just know which my fingers enjoy more.",
	},
	["cls.rogue.quest_complete.w05.017"] = {
		"That's that. Next.",
		"Handled. What else?",
		"Finished. Don't make a ceremony of it.",
	},
	["cls.rogue.quest_complete.w05.018"] = {
		"I measure myself by how little noise a job made. This one made very little.",
		"A good job is one nobody needs to tell stories about afterward. I think this was a good job.",
	},
	["cls.rogue.quest_complete.w05.019"] = {
		"makes a small show of patting {g:his|her} pockets, as if to prove everything in them got there honestly.",
		"turns up empty palms with a flourish, a little performance of innocence nobody requested.",
	},
	["cls.rogue.quest_complete.w05.020"] = {
		"One small trouble of the world tidied away, the way you'd straighten a crooked picture on the way past.",
		"The world is a messy room. I've put one more thing back where it belongs.",
	},
	["cls.rogue.quest_complete.w05.021"] = {
		"Nicely done, all of us. I'll pretend I did the hard part.",
		"Good work, everyone. I mostly stood where you couldn't see me, which counts.",
	},
	["cls.rogue.quest_complete.w05.022"] = {
		"Tell the bards. Actually, don't. Tell them it was someone else.",
		"If anyone makes a song of this, leave my name out. Put in someone with a nicer cloak.",
	},
	["cls.rogue.quest_complete.w05.023"] = {
		"Most of any job is waiting and walking. The bit worth telling lasts a few heartbeats, and I never tell it.",
		"Hours of patience, a moment of work, and then this: a nod and something for my trouble. It's a fair rhythm.",
	},
	["cls.rogue.quest_complete.w05.024"] = {
		"rocks once on {g:his|her} heels, pleased and trying not to show it.",
		"lets out a short breath through the nose, the closest thing to a laugh the occasion allows.",
	},
	["cls.rogue.quest_complete.w05.025"] = {
		"Need something else done quietly? Don't look for me. I'll turn up.",
		"If more work comes up, leave word anywhere. I hear most things eventually.",
	},
	["cls.rogue.quest_complete.w05.026"] = {
		"Small jobs, small pay, small lessons. Every master of the craft started on errands like this, I tell myself.",
		"Not glamorous work. But each little errand teaches my feet a road and my eyes a face. It adds up.",
	},
	["cls.rogue.quest_complete.w05.027"] = {
		"I've seen a great many of these through by now. The world still has more troubles than I have patience, but it's close.",
		"By now I could finish most jobs with my eyes half shut. I don't; ease is how people like me end up in ditches.",
	},
	["cls.rogue.quest_complete.w05.028"] = {
		"Generous. I'd have done it for less. Don't tell anyone I said that.",
		"You overpaid, a little. I won't mention it if you don't.",
	},
	["cls.rogue.victory.w05.001"] = {
		"slides the weapon home without looking, the way other people pocket a key.",
		"puts the weapons away in one motion that seems rehearsed in front of a mirror.",
	},
	["cls.rogue.victory.w05.002"] = {
		"And nobody even had to learn my name.",
		"Not bad. I'd tip myself, if I had the coin to spare.",
		"Lovely. I'll be humming the rest of the way.",
	},
	["cls.rogue.victory.w05.003"] = {
		"I telegraphed the finish. Next time, hide it better.",
		"It saw the last strike coming. Lucky for me it couldn't do anything about it.",
	},
	["cls.rogue.victory.w05.004"] = {
		"That was the short version. You wouldn't have liked the long one.",
		"I could've made that last longer. You're welcome.",
		"If you'd like a rematch, I'm hard to find.",
	},
	["cls.rogue.victory.w05.005"] = {
		"Nobody to thank, nobody to blame. Just me and the dust settling.",
		"Alone again, which is how I fight best and how I like it least.",
	},
	["cls.rogue.victory.w05.006"] = {
		"checks every one of {g:his|her} own pockets, as if the fight might have robbed {g:him|her} instead.",
		"pats down belt and pouches, counting, to be sure nothing walked off in the scuffle.",
		"runs a thumb along each buckle and strap, a little ritual to be sure the fight took nothing.",
	},
	["cls.rogue.victory.w05.007"] = {
		"And for my next trick: walking away.",
		"Thank you, thank you. No applause, I'm working.",
		"And the crowd goes wild. Well, the crowd of me.",
	},
	["cls.rogue.victory.w05.008"] = {
		"My grip's gone tight as wire. Open, close. Open. There.",
		"Fingers ache from holding on. They'll forgive me by tomorrow.",
	},
	["cls.rogue.victory.w05.009"] = {
		"With more speed, more strength and a great deal more luck, you'd have had me.",
		"Close. Well, no. Not close at all, actually.",
		"Good effort. Wrong opponent.",
	},
	["cls.rogue.victory.w05.010"] = {
		"stays crouched a moment longer than needed, head bowed, before rising.",
		"lingers over the fallen foe for a breath, then turns away without a word.",
	},
	["cls.rogue.victory.w05.011"] = {
		"That's the feeling. That half a heartbeat where it knows, and it's already over.",
		"I love the moment it realizes. It always comes a moment too late.",
	},
	["cls.rogue.victory.w05.012"] = {
		"Tidy. I hate leaving a mess.",
		"Clean. Nobody will ever know how close that was. Except me.",
		"Not one wasted move. Well, maybe one.",
	},
	["cls.rogue.victory.w05.013"] = {
		"Five steps of setup and one to finish. Today the arithmetic worked.",
		"Built it up, spent it all, and the sum came out right.",
	},
	["cls.rogue.victory.w05.014"] = {
		"rolls {g:his|her} wrists, one way and then the other, until they stop buzzing.",
		"shakes out {g:his|her} hands as though flicking off water.",
	},
	["cls.rogue.victory.w05.015"] = {
		"You hesitated. I didn't.",
		"One wasted heartbeat on your side. That's all it took.",
		"You gave me an inch. I only ever need the inch.",
	},
	["cls.rogue.victory.w05.016"] = {
		"I'm good at this. Some days that's a comfort and some days it's a weight.",
		"Skill like mine is a strange thing to be proud of. I'm proud anyway.",
	},
	["cls.rogue.victory.w05.017"] = {
		"Did anyone see that? No? Typical. My best work, always unwitnessed.",
		"My finest moment, and not a soul watching. Story of my trade.",
	},
	["cls.rogue.victory.w05.018"] = {
		"Nice work up front. I'll take the credit for the rear.",
		"Some of you took the hits, I took the openings. Fair split, I'd say.",
	},
	["cls.rogue.victory.w05.019"] = {
		"Nobody noticed me in that one. In a group, that's a compliment.",
		"I never once had its attention. Whoever stood in front earned their supper.",
	},
	["cls.rogue.victory.w05.020"] = {
		"And not a pocket on it. Honestly, what was the point?",
		"A whole fight and not a single coin to show for it. Animals.",
	},
	["cls.rogue.victory.w05.021"] = {
		"They had a face, and a reason, and now only one of us has either.",
		"Someone may be waiting for that one to come home. I try not to think about it.",
	},
	["cls.rogue.victory.w05.022"] = {
		"Stay down this time. Second deaths are supposed to be final.",
		"Back to the dirt with you, and do try to stay there.",
		"Once was a tragedy. Twice is just careless.",
	},
	["cls.rogue.victory.w05.023"] = {
		"One pin out, and the whole thing quits. I love machines.",
		"There. It's just scrap now, and scrap doesn't hold grudges.",
	},
	["cls.rogue.victory.w05.024"] = {
		"How do you finish something with no throat, no heart, no back? Apparently like that.",
		"Not sure what I hit, exactly. Something in there gave up.",
	},
	["cls.rogue.victory.w05.025"] = {
		"That one had no business losing to me. And yet.",
		"I'll be telling that one for weeks. Quietly, to myself.",
		"On paper, I lose that. I've never trusted paper.",
	},
	["cls.rogue.victory.w05.026"] = {
		"Too close. My whole craft is not getting hit, and I got hit plenty.",
		"So much for being hard to hit. I'll be feeling that one.",
	},
	["cls.rogue.victory.w05.027"] = {
		"is already three steps away before the foe has finished falling.",
		"turns {g:his|her} back on the fight while the foe is still falling, certain how it ends.",
	},
	["cls.rogue.victory.w05.028"] = {
		"Done. Now, where was I going?",
		"Right. Back to whatever I was doing before you.",
	},
	["cls.rogue.victory.w05.029"] = {
		"Somewhere, a trainer would call that sloppy. That trainer isn't here.",
		"Not a move I'd show a teacher. It worked, though, and teachers aren't here.",
	},
	["cls.rogue.victory.w05.030"] = {
		"steps back from the fallen foe as though it had nothing to do with {g:him|her}.",
		"steps over the fallen foe with the polite care of someone leaving a crowded room.",
	},
	["cls.rogue.victory.w05.031"] = {
		"That's the trouble with fighting fair. You tried it.",
		"You played by the rules. Bold choice.",
		"Honest to the end. I almost admire it.",
	},
	["cls.rogue.victory.w05.032"] = {
		"Listen. Nothing coming. All right, now I can breathe.",
		"First I listen, then I breathe. The other way round gets people killed.",
	},
	["cls.rogue.victory.w05.033"] = {
		"Another satisfied customer. Well. Another customer.",
		"No refunds, I'm afraid.",
		"Thank you for your business.",
	},
	["cls.rogue.victory.w05.034"] = {
		"straightens {g:his|her} collar and cuffs, as if about to walk back into polite company.",
		"brushes a smear of dirt from a sleeve, mildly offended by it.",
	},
	["cls.rogue.victory.w05.035"] = {
		"Fast enough. Today I was fast enough.",
		"Every fight is a race. I like winning races.",
		"I beat it and the doubt both, by a step. Good.",
	},
	["cls.rogue.victory.w05.036"] = {
		"Pity it had no lockbox on it. My picks are getting restless.",
		"Nothing locked anywhere on it. My fingers feel cheated.",
	},
	["cls.rogue.victory.w05.037"] = {
		"I should've checked those pockets before I said hello.",
		"Forgot to lighten the pockets first. Sloppy, and expensive.",
	},
	["cls.rogue.victory.w05.038"] = {
		"Should've let me walk past. Easier for both of us.",
		"I offered you a quiet day. Well, I meant to.",
	},
	["cls.rogue.victory.w05.039"] = {
		"Breathing, whole enough, and owing nobody. I'll call that a fair day.",
		"Still in one piece, near enough, and in no one's debt. That's a good account.",
	},
	["cls.rogue.victory.w05.040"] = {
		"I'll see myself out.",
		"Don't get up. I can find my own way.",
		"No need to see me off.",
	},
	["cls.rogue.victory.w05.041"] = {
		"The quiet after is the only part of this I'd call mine.",
		"Afterward is when I feel most alone, and I've learned to like it.",
		"Everyone else talks after a fight. I'd rather listen to nothing.",
	},
	["cls.rogue.victory.w05.042"] = {
		"counts {g:his|her} remaining tricks on {g:his|her} fingers, then nods: enough for the next one.",
		"takes quick stock of pouches, edges and breath, and finds all three acceptable.",
	},
	["cls.rogue.victory.w05.043"] = {
		"Next time, bring friends. You'll still lose, but you'll have company.",
		"Bring help next time. It won't change much, but you'll feel better.",
	},
	["cls.warrior.attack.w05.001"] = {
		"There! Feel that in your knees?",
		"That one you'll feel tomorrow. If you have a tomorrow.",
		"Felt that all the way down, didn't you?",
	},
	["cls.warrior.attack.w05.002"] = {
		"Mind the heavy end. No, really, mind it.",
		"That's the heavy end, by the way. You found it.",
	},
	["cls.warrior.attack.w05.003"] = {
		"pivots on the back foot and brings the weapon around in a short, ugly arc.",
		"drives forward half a step and strikes from close, with no room for a backswing.",
		"turns the momentum of the last blow straight into the next, never quite stopping.",
	},
	["cls.warrior.attack.w05.004"] = {
		"Don't admire it. Recover, guard, next.",
		"Strike and reset. The ones who watch their own blows land get hit while they're watching.",
		"Landed. Forget it already. Guard.",
	},
	["cls.warrior.attack.w05.005"] = {
		"Hear that? That's the sound of this fight turning my way!",
		"Loud enough for you? Good. Everyone heard it, you as well.",
	},
	["cls.warrior.attack.w05.006"] = {
		"fills {g:his|her} lungs and lets the shout go, a sound with an edge on it like the weapon's.",
		"throws back {g:his|her} head and shouts, and the cry carries farther than seems possible.",
	},
	["cls.warrior.attack.w05.007"] = {
		"No, no. Me. I'm the one you're cross with.",
		"Eyes over here. Whatever they did, I did worse.",
	},
	["cls.warrior.attack.w05.008"] = {
		"Stop wriggling and take it!",
		"Stay put! This works best if you stay put!",
	},
	["cls.warrior.attack.w05.009"] = {
		"Every blow I land feeds the next one. Keep the chain going.",
		"Hit, and the heat climbs. Hit again, and it climbs higher. Don't let it cool.",
		"Each strike stokes the fire. Don't give it a moment to settle.",
	},
	["cls.warrior.attack.w05.010"] = {
		"That's my answer to most questions.",
		"I'd explain, but this is quicker.",
	},
	["cls.warrior.attack.w05.011"] = {
		"grunts with the effort and puts the next blow exactly where the last one landed.",
		"hammers at the same spot again and again, as if trying to wear a groove in the enemy's guard.",
	},
	["cls.warrior.battle.w05.001"] = {
		"Every buckle's fastened. You'll have to find another way in.",
		"Strapped, laced and buckled. Knock all you like.",
		"I did up every strap twice. Go on, look for the one I missed.",
	},
	["cls.warrior.battle.w05.002"] = {
		"No tricks from me. You'll see every blow coming, and it won't help you.",
		"I don't feint. I don't need to. You'll watch it come and still not stop it.",
		"Nothing hidden here. Straight at you, as plain as I can make it.",
	},
	["cls.warrior.battle.w05.003"] = {
		"Hips, not hands. Whatever moves the hips is what's about to hit me.",
		"Mind the shoulders. A shoulder drops a heartbeat before any swing.",
	},
	["cls.warrior.battle.w05.004"] = {
		"Oh, good. I'd only just finished oiling everything.",
		"Wonderful. Fresh straps, a clean edge, and here you are to ruin both.",
		"Of course. The one day I polished the lot.",
	},
	["cls.warrior.battle.w05.005"] = {
		"drops {g:his|her} weight into {g:his|her} heels, and the armor settles with one dull clink.",
		"sinks a hand's width lower, and every plate and strap on {g:him|her} goes quiet at once.",
	},
	["cls.warrior.battle.w05.006"] = {
		"tugs a glove tight with {g:his|her} teeth and takes up the weapon in a full grip.",
		"spits into {g:his|her} palm, works it into the grip, and comes forward.",
	},
	["cls.warrior.battle.w05.007"] = {
		"I'm the door here. Doors don't open because you ask.",
		"Think of me as a door. Heavy, bolted, and in a foul temper.",
		"You want through? I'm the door, and I'm locked.",
	},
	["cls.warrior.battle.w05.008"] = {
		"My blood's up and I haven't even swung yet. That should worry you.",
		"I'm warming up already. By the third blow you'll wish you'd left me alone.",
	},
	["cls.warrior.battle.w05.009"] = {
		"Cold in the belly before the first blow. It never survives the second.",
		"A chill under the ribs, every single time. The first hard knock always chases it out.",
	},
	["cls.warrior.battle.w05.010"] = {
		"I'm carrying half a smithy on my back. The least you can do is be worth the weight.",
		"All this iron on me, and you're what I get? Try to be worth the hauling.",
	},
	["cls.warrior.battle.w05.011"] = {
		"Good footing. Firm, flat, mine. You can have what's left over.",
		"I like this ground. I'm keeping it. You can try to take it.",
		"Solid underfoot. That's all I ever ask of a place.",
	},
	["cls.warrior.battle.w05.012"] = {
		"Elbow in, chin down, don't drop the guard after a swing. Elbow in. Chin down.",
		"Everything the trainer said, all at once, in the wrong order. Just keep the guard up.",
		"Feet apart. No, wider. The trainer's voice is louder in my head than the fight.",
	},
	["cls.warrior.battle.w05.013"] = {
		"These arms have done this a thousand times. They don't need me to tell them how.",
		"My body knows this fight better than I do. I'll just try to keep up with it.",
	},
	["cls.warrior.battle.w05.014"] = {
		"Let them stare at me. The rest of you do the painful part.",
		"I'll hold their eyes. You hit wherever they aren't looking.",
		"All eyes on me, I'll see to that. Everyone else, make it count.",
	},
	["cls.warrior.battle.w05.015"] = {
		"Stay a pace behind me. If you can see their faces, you're too far forward.",
		"Nobody steps past my shoulder. Behind it you're covered; in front of it you're my problem.",
	},
	["cls.warrior.battle.w05.016"] = {
		"You've already been killed once. I'm only here to make it stick.",
		"Buried and up again. Some folk never learn when to quit.",
	},
	["cls.warrior.battle.w05.017"] = {
		"Teeth against iron. I know which one gives out first.",
		"Bite the armor if you like. It tastes of oil and old sweat.",
	},
	["cls.warrior.battle.w05.018"] = {
		"Someone put that in your hand and taught you to swing it. Did they teach you to keep it?",
		"You've had some training, I can tell. So have I. Mine was meaner.",
	},
	["cls.warrior.battle.w05.019"] = {
		"Nothing in there to bleed or tire. Then I keep hitting until there's nothing in there at all.",
		"It won't flinch and it won't grow weary. Neither will I, if I can help it.",
	},
	["cls.warrior.battle.w05.020"] = {
		"Plates and rivets, same as me. Let's see whose come loose first.",
		"Iron on iron. At least you'll understand what I'm doing to you.",
	},
	["cls.warrior.battle.w05.021"] = {
		"A swing that big leaves a gap just as big. I'll be standing in it.",
		"Huge arms, slow return. I live in the space between your blows.",
	},
	["cls.warrior.battle.w05.022"] = {
		"Scales are armor, and armor I understand better than anyone.",
		"So you wear your plate on the outside too. Let's find the seams.",
	},
	["cls.warrior.battle.w05.023"] = {
		"Whatever fire made you, plain iron still cuts it.",
		"I don't know your name or your master. I only need to know where to hit.",
	},
	["cls.warrior.battle.w05.024"] = {
		"Right, let's be honest with each other: this is going to be loud.",
		"I should warn you, I'm not a quiet worker.",
		"Brace yourself. Not for the blow, for the noise.",
	},
	["cls.warrior.battle.w05.025"] = {
		"There. The noise inside goes still and everything gets simple. I've missed this.",
		"This is the one place where nothing needs explaining. Get close and work.",
	},
	["cls.warrior.battle.w05.026"] = {
		"A firm grip and an empty head. That's how it's supposed to be.",
		"Full weight behind it and no flourishes. Here it comes.",
		"Grip tight, mind clear, nothing fancy. Let's begin.",
	},
	["cls.warrior.battle.w05.027"] = {
		"turns {g:his|her} armored shoulder toward the foe, the way someone does who expects to be hit and has stopped minding.",
		"angles {g:his|her} body so the thickest part of {g:his|her} armor faces the enemy, then takes the first step.",
	},
	["cls.warrior.battle.w05.028"] = {
		"raps the weapon twice against {g:his|her} own armor, a flat ring like a knock at a door.",
		"knocks the weapon against {g:his|her} armor once, hard, and seems to like the sound.",
	},
	["cls.warrior.battle.w05.029"] = {
		"I was told this trade builds character. Let's go and build some.",
		"Somebody swore to me the job was mostly marching. They lied.",
	},
	["cls.warrior.battle.w05.030"] = {
		"Whatever you are, this wasn't in your plans. It wasn't in mine either.",
		"Neither of us chose this road. Only one of us is going to finish walking it.",
	},
	["cls.warrior.battle.w05.031"] = {
		"Give me something to remember. I'm tired of fights that end before they start.",
		"I hope you know your business. The easy ones teach me nothing.",
	},
	["cls.warrior.battle.w05.032"] = {
		"Out of reach, I'm just someone in armor. In reach, I'm the whole problem. Get in reach.",
		"The space between us belongs to nobody. Take it before the other side does.",
	},
	["cls.warrior.battle.w05.033"] = {
		"If there are more of you, crowd in. I've learned what to do with a crowd.",
		"Any more of you back there? Come in close, all of you. I turn quicker than I look.",
	},
	["cls.warrior.battle.w05.034"] = {
		"Wear it down first. The finishing stroke only works on the tired.",
		"Patience. Take the strength out of it, then end it in one stroke when it falters.",
	},
	["cls.warrior.battle.w05.035"] = {
		"I've had a great deal of practice at this. You're about to find out how much.",
		"A lot of roads behind me, and plenty of them ended in a fight like this one.",
	},
	["cls.warrior.battle.w05.036"] = {
		"This one's no stray. Guard high, feet honest, no showing off.",
		"Now that's a proper foe. Nobody gets careless here, least of all me.",
	},
	["cls.warrior.battle.w05.037"] = {
		"You're picking on someone far too big for you, and I'm a heavy one. Last chance to run.",
		"Turn around. This won't be a fair fight, and I won't be the one who pays for it.",
	},
	["cls.warrior.battle.w05.038"] = {
		"{target}. Hold still and this will be quicker for both of us.",
		"{target}, is it? I'll try to remember, for when I tell this later.",
	},
	["cls.warrior.battle.w05.039"] = {
		"Ah, there's the work. I was starting to think I'd sharpened this for nothing.",
		"Good. I'd hate for all that practice to go to waste.",
	},
	["cls.warrior.battle.w05.040"] = {
		"bares {g:his|her} teeth in something that is not quite a smile and shifts the weapon to {g:his|her} stronger hand.",
		"grins, a short hard grin, and squares up as if greeting an old rival.",
	},
	["cls.warrior.battle.w05.041"] = {
		"Heavy feet, light hands. The armor carries itself if I let it.",
		"Let the weight sit in the legs, not the shoulders. Shoulders are for swinging.",
	},
	["cls.warrior.battle.w05.042"] = {
		"One of us has to give ground. I've never been much good at it.",
		"Somebody's going to step back. I can tell you now it won't be me.",
		"Ground has to be given somewhere. Look elsewhere for it.",
	},
	["cls.warrior.battle.w05.043"] = {
		"Get on with it. Either way, my gear wants oiling afterward.",
		"Quick, if you please. Whatever happens, I'll be mending straps after.",
	},
	["cls.warrior.battle.w05.044"] = {
		"Talk all you like. I'll answer with this.",
		"Whatever you're shouting, I don't speak it. I speak this.",
	},
	["cls.warrior.battle.w05.045"] = {
		"checks the set of {g:his|her} feet, shifts one back by a hair, and only then raises the weapon.",
		"settles {g:his|her} stance with the care of someone laying a foundation.",
	},
	["cls.warrior.battle.w05.046"] = {
		"Everyone remember the plan? Good. I go in first, and we'll call that the plan.",
		"Here's the plan: I get hit, you don't. Questions? No time.",
	},
	["cls.warrior.battle.w05.047"] = {
		"Shoulders loose, grip firm, temper short. Let's begin.",
		"Loose arm, tight grip, short fuse. You picked a bad moment.",
	},
	["cls.warrior.battle.w05.048"] = {
		"Every drill in the yard was for this moment. Don't waste a single one.",
		"All those hours swinging at a post. The post never hit back. This will.",
	},
	["cls.warrior.battle.w05.049"] = {
		"I'm slow to start and slower to stop. You'll see.",
		"Hard to get moving, harder to turn aside. You're about to learn both halves.",
	},
	["cls.warrior.battle.w05.050"] = {
		"Any trainer would wince at this grip. Too late to fix it now.",
		"My trainer would have words about this footing. Luckily my trainer isn't here.",
	},
	["cls.warrior.battle.w05.051"] = {
		"Hold your ground if you like. I'll be taking it off you shortly.",
		"Brace yourself properly. It won't help, but it'll look good.",
	},
	["cls.warrior.battle.w05.052"] = {
		"This is the work. No speeches. Let's do it properly.",
		"Plain work, then. I'll do it the way I was taught: thoroughly.",
	},
	["cls.warrior.battle.w05.053"] = {
		"lets out a war cry as short as a bark, more signal than threat, and goes in behind it.",
		"shouts once, a single hard syllable, and is moving before the sound has died.",
	},
	["cls.warrior.battle.w05.054"] = {
		"The heat starts in the hands and climbs. By the time it reaches my head, I'll have stopped thinking. Good.",
		"Warmth in the fingers, then the arms. Soon there's no room left in me for doubt.",
	},
	["cls.warrior.battle.w05.055"] = {
		"Now this is honest work. No ledgers, no gossip, just you and me.",
		"I like this part. Everything's simple: you, me, and whoever's upright at the end.",
	},
	["cls.warrior.buff.w05.001"] = {
		"Something warm runs down the arms and settles in the hands. I'll give it back with interest.",
		"A new heat under the skin. I know exactly where to spend it.",
		"Warmth climbs from the chest into the shoulders. The arms will know what to do with it.",
	},
	["cls.warrior.buff.w05.002"] = {
		"Ooh. Tingles. Good tingles.",
		"That one's got a kick. I like it.",
		"Now that's a fine feeling. Who wants to test it?",
	},
	["cls.warrior.buff.w05.003"] = {
		"breathes in deep and seems to grow a size, the way a banner fills when the wind catches it.",
		"lifts {g:his|her} chin, a new steadiness in the set of {g:his|her} jaw.",
	},
	["cls.warrior.buff.w05.004"] = {
		"I don't know how long it lasts. I'll assume not long, and hurry.",
		"Strength that comes this easily leaves just as easily. Use it, don't admire it.",
	},
	["cls.warrior.buff.w05.005"] = {
		"Now it's a fair fight. For me.",
		"There. Now you're in trouble.",
		"That changes things. Not for you.",
	},
	["cls.warrior.buff.w05.006"] = {
		"The armor feels lighter, though I know it isn't. I won't argue with the feeling.",
		"Same steel, same straps. It just sits better on me now, as if it's decided we're on the same side.",
	},
	["cls.warrior.buff.w05.007"] = {
		"bares {g:his|her} teeth in something that is not quite a smile as the new strength takes hold.",
		"grips {g:his|her} weapon until the knuckles whiten, eager to spend the fresh strength.",
	},
	["cls.warrior.buff.w05.008"] = {
		"Feels good. Don't expect me to say so twice.",
		"Fine. Yes. Helpful. Moving on.",
		"Not bad. Not bad at all. Right, enough of that.",
	},
	["cls.warrior.buff.w05.009"] = {
		"The trainers kept saying it: take every edge you're offered, and thank it only afterward.",
		"The old drill: feel it, trust it, forget it. The body remembers on its own.",
	},
	["cls.warrior.buff.w05.010"] = {
		"Good. Let's find out what this is good for.",
		"Right. Let's not waste it standing here.",
		"That'll do. Let's go use it.",
	},
	["cls.warrior.buff.w05.011"] = {
		"It will fade, like everything that arrives in a hurry. I'd better be quicker than it.",
		"For a while I'm more than I am. Then I'll be myself again, and that has to be enough.",
	},
	["cls.warrior.buff.w05.012"] = {
		"hops once on the balls of {g:his|her} feet, testing the new spring in {g:his|her} legs.",
		"swings {g:his|her} weapon in a lazy arc through the air, just to feel how much easier it has become.",
		"rises onto {g:his|her} toes and back down, grinning at how little effort it takes.",
	},
	["cls.warrior.buff.w05.013"] = {
		"I've got my second wind. Stay behind me, all of you.",
		"Fresh legs, fresh arms. I'll take the front; you watch the sides.",
	},
	["cls.warrior.buff.w05.014"] = {
		"The rage wakes up quicker now. Good. It's been sulking.",
		"There's that spark in the blood. The rage has kindling now.",
		"Blood runs hotter. The anger has somewhere to go now.",
	},
	["cls.warrior.buff.w05.015"] = {
		"If this lasted, I'd never take my armor off.",
		"Can I keep this? No? Worth asking.",
		"I could get used to this. Which is exactly why I won't.",
	},
	["cls.warrior.buff.w05.016"] = {
		"cracks {g:his|her} neck to one side, then the other, every joint suddenly certain of its job.",
		"takes one slow breath, then another, and lets the new strength find its way down into {g:his|her} legs.",
	},
	["cls.warrior.buff.w05.017"] = {
		"A lift like this makes the long road feel shorter. Not short. Shorter.",
		"On its own it's small. On a long march it's the difference between walking and dragging.",
		"A small push. The kind that turns 'nearly' into 'enough'.",
	},
	["cls.warrior.buff.w05.018"] = {
		"Oh, that's better. Hold still, I've got something for you.",
		"Hah! Feel that? No, you wouldn't. I do.",
	},
	["cls.warrior.buff.w05.019"] = {
		"Muscles that were complaining a moment ago have gone quiet and attentive.",
		"My grip tightens without my asking. The hands always know first.",
		"Everything tightens and sharpens, like a strap pulled one hole closer.",
	},
	["cls.warrior.buff.w05.020"] = {
		"Good. Whatever comes, comes through me first.",
		"Ready. My feet are planted and my arms are willing.",
	},
	["cls.warrior.buff.w05.021"] = {
		"grunts approvingly, the way one grunts at a well-made boot.",
		"gives a brief, satisfied nod, as if a tool had been sharpened to {g:his|her} liking.",
		"flexes {g:his|her} wrists, pleased, like someone trying on a glove that finally fits.",
	},
	["cls.warrior.buff.w05.022"] = {
		"My blood's up and my head's clear. That's a rare pairing; I'll make use of it.",
		"Hot in the arms, cold in the head. Exactly how the trainers wanted it.",
	},
	["cls.warrior.farewell.w05.001"] = {
		"Off I go. Keep your guard up.",
		"Farewell. If it comes to a fight, stand behind someone in armor.",
		"I'm away. Mind your footing.",
	},
	["cls.warrior.greet.w05.001"] = {
		"Well met. Mind my elbows; this armor takes up room.",
		"Hail. Don't mind the dents; they're earned.",
	},
	["cls.warrior.greet.w05.002"] = {
		"Greetings. If you need a strong arm, you know where it is.",
		"Hello there. Weapon's down, for now.",
	},
	["cls.warrior.heal.w05.001"] = {
		"The ache goes from sharp to dull. Dull I can carry for hours.",
		"The worst of it backs off. What stays is the kind of hurt I can walk around in.",
		"Sharp pain turns into the ordinary kind. Ordinary I know how to work with.",
	},
	["cls.warrior.heal.w05.002"] = {
		"Good as new. Well. Good as last week.",
		"Not new, but serviceable. Like the rest of my gear.",
		"Fit to be useful again. That's the only grade I care about.",
	},
	["cls.warrior.heal.w05.003"] = {
		"works {g:his|her} fingers open and closed around the grip until they answer properly again.",
		"shifts {g:his|her} weight from foot to foot, testing, and finds nothing that gives way.",
		"rolls a stiff shoulder through a full circle, then another, and nods at the result.",
	},
	["cls.warrior.heal.w05.004"] = {
		"Mended again. The body keeps forgiving me. Someday it won't, and I'll have no complaint to make.",
		"Each time it closes, I think: the body is a patient creditor. Not an endless one.",
	},
	["cls.warrior.heal.w05.005"] = {
		"That's more like it. Now, where were we?",
		"Topped up. Come on, then: round two.",
	},
	["cls.warrior.heal.w05.006"] = {
		"Now that the fight's done, every bruise wants a word. This quiets most of them.",
		"Afterward is when it hurts, always. Afterward is also when it mends, if I let it.",
		"The fight took its due. This gives a little of it back.",
	},
	["cls.warrior.heal.w05.007"] = {
		"Ah. There's the feeling in my toes again.",
		"Lovely. I can lift my arm above my shoulder now. Small joys.",
		"I can breathe through my nose again. Living like royalty.",
	},
	["cls.warrior.heal.w05.008"] = {
		"Under the armor something knits back together. The armor took the blows; now it's my turn to catch up with it.",
		"The steel held and the flesh didn't. Now the flesh is catching up.",
	},
	["cls.warrior.heal.w05.009"] = {
		"rolls {g:his|her} neck until something cracks, and looks considerably less like a casualty.",
		"lets out a breath through {g:his|her} teeth as the pain loosens its hold.",
		"exhales slowly, and the grimace on {g:his|her} face loosens into something closer to a scowl.",
	},
	["cls.warrior.heal.w05.010"] = {
		"I'll take it. I was getting attached to that limp, but I'll take it.",
		"Fine, fine. I'll stop leaning on things now.",
	},
	["cls.warrior.heal.w05.011"] = {
		"Breath comes back into the bottom of my chest. I'd forgotten it lived down there.",
		"The ribs stop arguing with every breath. Good. I need the air for swinging.",
		"Each breath goes all the way down now, with no catch at the bottom.",
	},
	["cls.warrior.heal.w05.012"] = {
		"Right. The arms work, the legs work. Everything else is a detail.",
		"Arms, legs, eyes. All present. Let's carry on.",
		"Knees hold, hands grip, eyes focus. Back to work.",
	},
	["cls.warrior.heal.w05.013"] = {
		"A little further from the edge. I could see it clearly a moment ago. I'd rather not have.",
		"That was closer than I like to admit. The warmth coming back feels like being let off.",
	},
	["cls.warrior.heal.w05.014"] = {
		"Enough mending. The road won't walk itself.",
		"Good enough. Let's go before I stiffen up.",
	},
	["cls.warrior.heal.w05.015"] = {
		"straightens under the fresh strength and steps forward again, as if the last few blows had been someone else's problem.",
		"blinks the haze from {g:his|her} eyes and squares up to the fight once more.",
	},
	["cls.warrior.heal.w05.016"] = {
		"Trainers say to learn what each hurt is telling you, then let it go. This one said: step aside sooner.",
		"Every wound is a lesson with the answer written in. This one says: watch the left side.",
	},
	["cls.warrior.heal.w05.017"] = {
		"Smells like a ditch, goes down like gravel. To my health anyway.",
		"Every flask of this stuff tastes worse than the one before. Must be working.",
		"Whoever brews these hates the people who drink them. Fair enough.",
	},
	["cls.warrior.heal.w05.018"] = {
		"The heart slows from a gallop to a march. That's the pace I fight best at.",
		"My pulse stops hammering in my ears. I can hear the world again, and think.",
	},
	["cls.warrior.heal.w05.019"] = {
		"You'll have to start over. Shame about all that effort.",
		"All that work, undone. Try harder.",
		"Back where I started. You'll need a lot more than that.",
	},
	["cls.warrior.heal.w05.020"] = {
		"loosens a strap, checks the dent beneath it, and tightens it again with a satisfied grunt.",
		"runs a hand over the worst of the bruises beneath the armor and finds them already fading.",
	},
	["cls.warrior.heal.w05.021"] = {
		"Strange how the world looks friendlier once the bleeding stops.",
		"Funny. Nothing around me has changed, but it all seems more reasonable without a hole in me.",
		"The air tastes better with the wounds closed. I wouldn't have guessed that.",
	},
	["cls.warrior.heal.w05.022"] = {
		"Good. I'm back at the front; everyone stay behind me.",
		"Right, I'm fit again. Keep your eyes on me, not on them.",
	},
	["cls.warrior.heal.w05.023"] = {
		"The body is the only tool no smith can replace for me. Worth looking after, now and then.",
		"A blade can be reforged, a shield bought again. This body is the one piece of gear I get once.",
		"The armorer fixes the steel. The flesh I have to wait on, like everyone.",
	},
	["cls.warrior.heal.w05.024"] = {
		"Don't tell anyone how close that was. I have a reputation for being hard to dent.",
		"Let's agree that never happened.",
		"If anyone asks, I was never in trouble.",
	},
	["cls.warrior.heal.w05.025"] = {
		"lifts {g:his|her} weapon a little higher than before, the tremor gone from {g:his|her} arm.",
		"takes the weight of the weapon again without a wince.",
		"rests the weapon on {g:his|her} shoulder, then lowers it into guard, steady now.",
	},
	["cls.warrior.heal.w05.026"] = {
		"There goes the ringing in my ears. I didn't miss it.",
		"My head clears. The world stops tilting. Small mercies, and today a large one.",
		"The haze lifts off my eyes. Good. I like seeing what's about to hit me.",
	},
	["cls.warrior.heal.w05.027"] = {
		"A breather, some mending, and back to it.",
		"That'll hold. Back to the work.",
		"Good. Enough of standing about.",
	},
	["cls.warrior.heal.w05.028"] = {
		"Whole enough again. I wonder, sometimes, how much of me the next fight will want back.",
		"They always heal, these wounds. It's the tiredness under them that stays.",
	},
	["cls.warrior.heal.w05.029"] = {
		"Air in the lungs, weight on the feet. Good.",
		"Steady. Right, back to the front of this.",
		"Footing's good, hands are steady. Carry on.",
	},
	["cls.warrior.heal.w05.030"] = {
		"This one will leave a mark. I'll learn its shape like the others, the way a tongue learns a missing tooth.",
		"Closed, but it'll pull for a while. A reminder in the skin, cheaper than most lessons.",
		"The skin pulls tight over the new place. It'll ache when the weather turns, I expect.",
	},
	["cls.warrior.heal.w05.031"] = {
		"pats {g:his|her} own chest twice, like checking a purse after a crowd, and seems pleased with the count.",
		"checks both arms, both legs, and nods to {g:himself|herself}: everything accounted for.",
	},
	["cls.warrior.levelup.w05.001"] = {
		"My body has learned something my head hasn't caught up with yet. It usually goes that way round.",
		"Another step up. The trainer will have something new to drill into me, I expect.",
	},
	["cls.warrior.levelup.w05.002"] = {
		"Getting better at this. Don't tell the enemy.",
		"Harder to hit, harder to stop. Getting there.",
	},
	["cls.warrior.levelup.w05.003"] = {
		"rolls {g:his|her} shoulders and takes a practice swing that is, unmistakably, a little cleaner than the last.",
		"stands for a moment with the weapon held level, feeling the new steadiness all the way to the elbow.",
	},
	["cls.warrior.lowhp.w05.001"] = {
		"I've got too much left to do to fall here.",
		"You'll need more than that. Stubbornness is my whole trade.",
		"Close. Not close enough.",
	},
	["cls.warrior.lowhp.w05.002"] = {
		"So this is the edge. Strange how calm it is out here.",
		"The world narrows to the next blow. Everything else has gone very quiet.",
		"Everything's slowing down. Good. I can see it coming now.",
	},
	["cls.warrior.lowhp.w05.003"] = {
		"sways like a tree in a gale, but the roots hold.",
		"drags a forearm across {g:his|her} eyes to clear them and finds {g:his|her} footing again.",
	},
	["cls.warrior.lowhp.w05.004"] = {
		"Ouch. Fine. Point taken.",
		"That one I'll feel tomorrow. Assuming.",
		"Hm. That's going to need looking at.",
	},
	["cls.warrior.lowhp.w05.005"] = {
		"Every hit I take is fuel. I'm very well fueled right now.",
		"This fight has handed me plenty to work with. Time to hand it back.",
		"Pain in, rage out. Simple exchange.",
	},
	["cls.warrior.lowhp.w05.006"] = {
		"Come closer. My arm still works, and it's very cross.",
		"That the best you've got? I'm still swinging.",
	},
	["cls.warrior.lowhp.w05.007"] = {
		"The armor's doing more work than I am now. Hold together, both of us.",
		"Every strap feels heavier. I'll carry it anyway; it's carried me.",
		"Every piece of armor weighs like lead. Carry it. Just carry it.",
	},
	["cls.warrior.lowhp.w05.008"] = {
		"roars through clenched teeth, and the sound alone seems to be holding {g:him|her} up.",
		"lets out a hoarse snarl and throws {g:himself|herself} back into the fight as though the wounds belonged to someone else.",
	},
	["cls.warrior.lowhp.w05.009"] = {
		"I'm hurting! Don't scatter; I can still hold them.",
		"Bad shape here. Stay behind me anyway.",
	},
	["cls.warrior.lowhp.w05.010"] = {
		"If this is where it ends, let them find me facing the right way.",
		"If I fall, I fall forward. It's the last thing left to choose.",
	},
	["cls.warrior.lowhp.w05.011"] = {
		"I've had better days. Worse ones too, but I can't remember them right now.",
		"Oh, good. The interesting part.",
		"This is fine. This is a perfectly normal amount of blood.",
	},
	["cls.warrior.lowhp.w05.012"] = {
		"Hands, don't you dare open. Not yet.",
		"Grip. Just keep the grip. The rest will follow.",
		"Fingers, stay shut. That's all I ask of you.",
	},
	["cls.warrior.lowhp.w05.013"] = {
		"bleeds from more places than {g:he|she} can count, and fights on as if counting were beneath {g:him|her}.",
		"shakes blood from {g:his|her} eyes and finds the enemy again by instinct.",
		"fights on with a ruined guard and a face set like stone.",
	},
	["cls.warrior.lowhp.w05.014"] = {
		"Breathe. Swing. Breathe. Swing.",
		"One more. Then one more after that.",
	},
	["cls.warrior.lowhp.w05.015"] = {
		"This is what all those drills were for: fighting when every part of me wants to stop.",
		"Exactly what the drills were for. The arms remember, even when the head goes foggy.",
	},
	["cls.warrior.lowhp.w05.016"] = {
		"Go! I'll hold here as long as I can.",
		"Get clear if it turns. I'll buy you the time.",
	},
	["cls.warrior.lowhp.w05.017"] = {
		"leans into the next blow instead of away from it, as if refusing the ground a single inch.",
		"draws a ragged breath and somehow finds the strength for one more swing, and then another.",
	},
	["cls.warrior.lowhp.w05.018"] = {
		"Death's waited this long. It can wait until I'm finished.",
		"Death can wait its turn. I'm busy.",
	},
	["cls.warrior.muse.w05.001"] = {
		"I eat like two people and get hit like four. The arithmetic still comes out in my favor, somehow.",
		"Nobody tells you how hungry this trade makes you. Half my coin goes on bread, the other half on mending.",
		"Rations for one, appetite for three. The cooks at every inn learn my face quickly.",
	},
	["cls.warrior.muse.w05.002"] = {
		"My palms have taken the shape of the grip. Even holding a cup, my fingers close as if something might try to take it.",
		"The calluses sit exactly where the handle rests. My hands have been rewritten by the work, and they don't ask to go back.",
	},
	["cls.warrior.muse.w05.003"] = {
		"My trainer never once said 'good.' Only 'again.' Some days I still hear it between swings.",
		"Again. Again. Again. That was the whole of what the trainers taught, and it turned out to be enough.",
		"The trainer's favorite word was 'again,' and I hated it for months. Now I'm the one who says it to me.",
	},
	["cls.warrior.muse.w05.004"] = {
		"Between fights the fury drains away, and what's left is slower, quieter, and not always sure what to do with its hands.",
		"Without the anger I'm a heavier, duller thing. I'm still learning to be fond of that one too.",
	},
	["cls.warrior.muse.w05.005"] = {
		"Some carry spellbooks. I carry a lump of sharpened iron and a bad temper, and I sleep just fine.",
		"No scrolls, no incantations, no reagents. Just a heavy thing and the will to swing it. I travel light.",
	},
	["cls.warrior.muse.w05.006"] = {
		"A shield is a door you carry with you. Nothing gets through without knocking first, and I decide who answers.",
		"Think of a shield as a door with someone standing behind it. Doors get knocked on. That's what they're for.",
		"With the shield up I'm a house with the door barred. Let them knock all day.",
	},
	["cls.warrior.muse.w05.007"] = {
		"Axe, sword, mace, the long-hafted ones: they all make the same argument, only in different accents.",
		"Every weapon in the rack says the same thing in the end: weight, moved quickly, in the right direction.",
	},
	["cls.warrior.muse.w05.008"] = {
		"One day my knees will hold a meeting and vote against all this. Not today, though.",
		"My joints already grumble about the job. I've told them they can retire when I do.",
	},
	["cls.warrior.muse.w05.009"] = {
		"Fear never left me. I only learned to walk in front of it, where it can't see my face.",
		"The fear still comes along on every road. I've just stopped letting it pick the direction.",
		"The fear and I have an arrangement: it may shout all it likes, but I'm the one holding the weapon.",
	},
	["cls.warrior.muse.w05.010"] = {
		"People thank the healer. Nobody thanks the wall. The wall understands; it's a wall.",
		"After a hard day the healer gets the gratitude and the warrior gets the bruises. Fair enough. Mostly.",
	},
	["cls.warrior.muse.w05.011"] = {
		"In through the nose on the guard, out through the teeth on the blow. The first drill I learned, and the last I'd forget.",
		"Breathe with the swing, not against it. Simple advice that took a hundred bruises to sink in.",
		"Every swing has its breath. Lose the breath and the next swing comes out lazy.",
	},
	["cls.warrior.muse.w05.012"] = {
		"Wherever I walk, I check the footing without meaning to. Loose stones, wet roots, a slope that would make a bad place to stand.",
		"I can't look at a stretch of ground anymore without judging where I'd plant my feet if something came at me.",
	},
	["cls.warrior.muse.w05.013"] = {
		"Sleeping in mail: you wake up stiff, cold and ill-tempered. But you wake up.",
		"There's no comfortable way to lie down in armor. I've stopped looking for one and started being grateful for any sleep at all.",
	},
	["cls.warrior.muse.w05.014"] = {
		"No tricks in what I do. You see me coming, you know exactly what happens next, and it works anyway.",
		"There's nothing hidden in my craft. I walk up and I hit you. Knowing it in advance helps less than you'd think.",
		"Nothing clever about it. Stand up, step in, hit hard, repeat. Clever people keep losing to it.",
	},
	["cls.warrior.muse.w05.015"] = {
		"A battle shout costs me nothing but breath, and every arm nearby swings a little harder for it. The cheapest gift I give.",
		"I fill my lungs and let it out, and the people around me stand straighter. Strange, that a voice can be armor.",
		"Shouting is half of this trade, it turns out. Nobody mentioned that when I first picked up a weapon.",
	},
	["cls.warrior.muse.w05.016"] = {
		"Strike the ground hard enough and everyone around you slows down to think about it. That's the thunder clap, more or less.",
		"The trainer called it a thunder clap. Really it's just hitting so hard the air goes thick and the enemy loses the beat.",
	},
	["cls.warrior.muse.w05.017"] = {
		"Going for the legs isn't pretty. Neither is a foe running off to fetch three friends.",
		"A blow low on the leg to slow them down. Not noble. But I hate chasing anyone twice.",
	},
	["cls.warrior.muse.w05.018"] = {
		"When a foe is nearly done, I finish it in one stroke. People call that brutal. I call it not dragging things out.",
		"The finishing blow is the one the trainers teach last, and talk about least. I think I understand why.",
	},
	["cls.warrior.muse.w05.019"] = {
		"Covering the distance is easy. Stopping exactly where I meant to: that took a few embarrassing tries.",
		"The first time I charged, I overshot and had to turn around. Nobody saw. I'm almost sure nobody saw.",
	},
	["cls.warrior.muse.w05.020"] = {
		"Taking someone's armor apart, blow by blow, one weak plate after another. Not glorious. Very effective.",
		"Every defense has a seam. Hit the same place enough times and it learns some humility.",
	},
	["cls.warrior.muse.w05.021"] = {
		"In the defensive stance the world shrinks to the guard and the next blow. It's the nearest thing to calm I know.",
		"Weight back, guard high, everything held in. Odd how much peace there is in simply refusing to fall.",
		"Shield forward, chin down, knees bent. Set like that, I could hold a narrow pass for a week.",
	},
	["cls.warrior.muse.w05.022"] = {
		"In the berserker's stance I take more and give more. An honest bargain, if not a safe one.",
		"That stance strips the caution off me like a cloak. I only take it when I know what I'm trading.",
	},
	["cls.warrior.muse.w05.023"] = {
		"Spin with the weapon out and everything in reach regrets standing there. Friends learn to give me room.",
		"A full circle of edge with me at its center. Afterward I'm dizzy, and nobody nearby is complaining. Nobody can.",
	},
	["cls.warrior.muse.w05.024"] = {
		"Behind the shield, set like a gate: for a few breaths nothing in the world can move me. A few breaths are usually enough.",
		"There's a way of bracing the shield that turns a body into a wall for as long as the breath holds. I keep it for the worst moments.",
	},
	["cls.warrior.muse.w05.025"] = {
		"I hurt myself to get angry faster. Said out loud, it sounds mad. Done right, it saves lives.",
		"Some people count to ten to calm down. I do the opposite, and it costs me a little blood.",
	},
	["cls.warrior.muse.w05.026"] = {
		"My most useful skill is a very rude look. It works on things that don't even have eyes.",
		"I can make almost anything angry at me with one glare. The trainer called it a gift. People who know me call it a habit.",
	},
	["cls.warrior.muse.w05.027"] = {
		"Some things you don't fight. You just shout at them until they remember somewhere else to be.",
		"Not every enemy needs beating. Some only need a roar loud enough to send them running.",
	},
	["cls.warrior.muse.w05.028"] = {
		"I still drop my guard after every swing. The trainer says the habit will die the day it costs me enough.",
		"My arm comes down too far after each blow, every time. I know it. Knowing hasn't fixed it yet.",
		"My feet still cross when I step in too fast. The trainer just points at them, silently, every time.",
	},
	["cls.warrior.muse.w05.029"] = {
		"Everything still weighs too much: the mail, the weapon, the long days on the road. The trainers swear it gets lighter. I suspect you just get bigger.",
		"Right now the gear wins most arguments with my shoulders. One day I'll win one back.",
	},
	["cls.warrior.muse.w05.030"] = {
		"There's little left the trainers can show me. What remains, only the fights teach, and they charge more.",
		"The lessons of the training yard ran out a while back. Now every hard fight is the lesson, and the fee is paid in blood.",
	},
	["cls.warrior.muse.w05.031"] = {
		"Plate armor. I clatter like a kitchen falling down the stairs, and I've never felt safer.",
		"Full plate is loud, hot and heavy, and I'd marry it if it asked.",
		"Mail was a coat. Plate is a house I walk around in.",
	},
	["cls.warrior.muse.w05.032"] = {
		"The body complains for the first hour of a march, then gives up complaining. It's learned I don't listen.",
		"First the legs protest, then the back, then nothing. Somewhere on every long road the body stops filing grievances.",
	},
	["cls.warrior.muse.w05.033"] = {
		"Pain is a messenger. I hear it out, I nod, and I send it back where it came from.",
		"I treat pain like a herald at the gate: let it speak, thank it, and keep the gate shut.",
		"Pain says the same three things every time: here, now, careful. I've heard it. It can go.",
	},
	["cls.warrior.muse.w05.034"] = {
		"The foes who stand and fight, I remember. The ones who run, I've forgotten before the day is out.",
		"I keep the faces of the ones who held their ground. The rest blur into one long retreat.",
	},
	["cls.warrior.muse.w05.035"] = {
		"Knowing exactly how hard to hit is also knowing how not to. That second half is the part I'm proudest of.",
		"Any fool can swing with everything. The skill is in the blows you hold back, and why.",
	},
	["cls.warrior.muse.w05.036"] = {
		"Some fight from a safe distance. I like to be close enough to hear what the other side is thinking. Usually it's 'oh no.'",
		"Up close is honest. You see the eyes, you see the doubt, and you see the moment it wins.",
	},
	["cls.warrior.muse.w05.037"] = {
		"Falling back is no shame. Falling back without knowing where to is.",
		"A retreat with a plan is just a longer way of advancing. Running without one is how lines break.",
	},
	["cls.warrior.muse.w05.038"] = {
		"There's a tiredness that only comes from hitting things all day. Clean, honest, and it sleeps like a stone.",
		"A day of hard swinging leaves a special kind of tired: no worries left, just heavy arms and a quiet head.",
	},
	["cls.warrior.muse.w05.039"] = {
		"Now and then I catch my jaw still clenched an hour after a fight. I unclench it on purpose, like setting down a load.",
		"Sometimes the anger lingers after the fight like smoke in a room. I open a window in my head and wait.",
	},
	["cls.warrior.muse.w05.040"] = {
		"Strength isn't cruelty. Some days I have to say it to myself out loud, just to hear it in my own voice.",
		"What I have is strength. Whether it turns into cruelty depends on me, every single day.",
	},
	["cls.warrior.muse.w05.041"] = {
		"unwinds the worn leather from the weapon's grip and wraps on a fresh strip, tight and even, turn by careful turn.",
		"picks at a frayed binding on the weapon's grip, then pulls it snug again with {g:his|her} teeth.",
		"rubs a little oil into the leather of {g:his|her} belt and harness, slowly, the way one might groom a horse.",
	},
	["cls.warrior.muse.w05.042"] = {
		"shifts {g:his|her} weight from one foot to the other, testing the ground as if for a fight that hasn't come yet.",
		"rocks once on {g:his|her} heels and settles, knees soft, ready for nothing in particular.",
	},
	["cls.warrior.muse.w05.043"] = {
		"opens and closes each hand slowly, one finger after another, counting the old aches like coins.",
		"flexes {g:his|her} fingers until the knuckles pop, one after the next, and seems satisfied with the count.",
	},
	["cls.warrior.muse.w05.044"] = {
		"runs through a slow guard in the empty air, each motion unhurried and exact, as though a trainer were watching.",
		"traces a few practice swings at half speed, lips moving slightly, counting the beats of an old drill.",
		"sketches a parry in the air with an empty hand, then another, quicker, then lets the arm fall with a small nod.",
	},
	["cls.warrior.muse.w05.045"] = {
		"glances ahead and measures the distance in strides, out of a habit nobody has ever asked for.",
		"sizes up the space around {g:him|her} with a quick look, the way some people count the exits of a room.",
	},
	["cls.warrior.muse.w05.046"] = {
		"crouches for a moment, forearms on knees, and lets the weight of the gear rest against the ground.",
		"drops onto {g:his|her} heels and stays there a while, armor creaking softly with every breath.",
	},
	["cls.warrior.muse.w05.047"] = {
		"finds a bent buckle on {g:his|her} armor and works it straight with patient fingers, muttering at it.",
		"scrapes a smear of old grime from a joint of the armor with a fingernail, then inspects the result with deep suspicion.",
	},
	["cls.warrior.muse.w05.048"] = {
		"I'm not angry. This is just my face.",
		"No, nothing's wrong. I always look like this. It saves time when something does go wrong.",
		"Relax. When I'm actually angry, you'll know. Things fall over.",
	},
	["cls.warrior.muse.w05.049"] = {
		"Anything that needs lifting, carrying or knocking flat, I'm your warrior.",
		"Heavy things moved, stubborn things persuaded, dangerous things put down. Just ask. I don't charge much.",
		"Doors that won't open, crates that won't move, bandits that won't leave. I'm good with all three.",
	},
	["cls.warrior.muse.w05.050"] = {
		"Never trust a fight that starts too easy. The hard part is just running late.",
		"When the first blow lands too easily, look around. Something else is on its way.",
	},
	["cls.warrior.muse.w05.051"] = {
		"Oil, sweat, old leather and iron. The smell of this trade never quite washes out, and I've stopped wanting it to.",
		"However much I scrub, there's always a trace of whetstone oil and sweat-dark leather on me. The trade's own perfume.",
	},
	["cls.warrior.muse.w05.052"] = {
		"Sometimes I wonder if I'd know how to live without a fight to get ready for. Then I stop wondering, because I'm cleaning the weapon again.",
		"If the fighting ever stopped, what would I do with these hands? I ask it rarely, and never answer.",
	},
	["cls.warrior.muse.w05.053"] = {
		"One fight that goes badly teaches more than ten that go well. I just wish the lessons were cheaper.",
		"The clean wins teach me nothing. It's the ugly ones, the near things, that I take apart afterward piece by piece.",
	},
	["cls.warrior.muse.w05.054"] = {
		"There's a joy in this I won't apologize for: a clean hit, a held line, a good honest sweat.",
		"Let the poets brood. A blow that lands right feels good, and I'm not ashamed to say so.",
		"Some days the work is simply good: hard, clean, done well. I let myself enjoy those.",
	},
	["cls.warrior.muse.w05.055"] = {
		"Farmers, carters, fishers: they don't need heroes. They need someone at the edge of the field when trouble walks out of the trees.",
		"The people I'd most like to protect will never learn my name. That suits me. Names are for songs; I'm for fences.",
	},
	["cls.warrior.muse.w05.056"] = {
		"I don't fight from behind. Not out of virtue: I'm simply too loud for it.",
		"Sneaking was never an option. People hear me coming three hills off, so I might as well arrive properly.",
		"Stealth? In this much iron? I'd be heard before I'd decided to move.",
	},
	["cls.warrior.muse.w05.057"] = {
		"Words were never my strong side. A raised guard says most of what I mean.",
		"I'm poor with speeches. Better to stand where I said I'd stand and let that do the talking.",
	},
	["cls.warrior.muse.w05.058"] = {
		"Songs remember whoever struck the last blow. The one who held for an hour gets a nod, if that. I'll take the nod.",
		"The bards will never sing about holding still under blow after blow. Just as well. It would be a very dull song.",
	},
	["cls.warrior.muse.w05.059"] = {
		"Water, bread, a bit of sleep and a whetstone. Give me those and I'll go anywhere you point.",
		"My needs are short: something to eat, somewhere to lie down, something to hit. Two out of three makes a decent day.",
		"Pack light, they say. I do. It's the armor that doesn't.",
	},
	["cls.warrior.muse.w05.060"] = {
		"You don't win by hitting hardest. You win by still being there when they've run out of ideas.",
		"Strongest arm doesn't decide it. Last one upright does.",
		"Hard hitting wins exchanges. Staying power wins fights.",
	},
	["cls.warrior.muse.w05.061"] = {
		"There is a stillness at the heart of a fight that no one tells you about. I go looking for it every time, and some days I find it.",
		"In the middle of the worst noise there's sometimes a quiet place where every blow is obvious. That's where I'd like to live.",
	},
	["cls.warrior.muse.w05.062"] = {
		"A new weapon feels wrong for a week. Then the old one does.",
		"Every new weapon starts as a stranger in my hand. A few fights later, it's the old one that feels foreign.",
		"I've stopped naming weapons. They change too often, and I get sentimental.",
	},
	["cls.warrior.muse.w05.063"] = {
		"Nobody warns you how much of this trade is paying a smith to undo yesterday.",
		"The armorer sees me coming and smiles. I've paid for half that forge in dents alone.",
	},
	["cls.warrior.muse.w05.064"] = {
		"A cut across the palm reminds me of every grip for a week. Small wounds are the best teachers of patience.",
		"A split knuckle doesn't stop anything. It just comments on everything I hold, for days.",
	},
	["cls.warrior.muse.w05.065"] = {
		"If I fall, I mean to fall forward. Ground taken is ground taken, even at the end.",
		"When it's my turn, let them find me facing the right way. That's the only wish I've bothered to make about it.",
	},
	["cls.warrior.muse.w05.066"] = {
		"First rule: don't drop the weapon. Second rule: if you drop it, punch. There's no third rule; by then it's settled.",
		"Lose the weapon, keep the fight. Fists were the first weapons, and they never need sharpening.",
	},
	["cls.warrior.muse.w05.067"] = {
		"Every mage I meet asks why I don't just learn a spell. I ask why they don't just learn to take a punch.",
		"They tell me to study. I tell them to try getting up after a proper backhand. We both walk away unconvinced.",
	},
	["cls.warrior.muse.w05.068"] = {
		"In any crowd I can pick out the other fighters by the walk: shoulders square, weight low, eyes on the way out.",
		"You can tell someone who's held a line by how they stand in a doorway. Never quite in the middle of it.",
	},
	["cls.warrior.muse.w05.069"] = {
		"Cold mail against the skin before the day has properly started: the least heroic moment there is, and it comes every day.",
		"Nobody sings about pulling on armor that's been cold for hours. They should. It takes real courage.",
	},
	["cls.warrior.muse.w05.070"] = {
		"Stand behind me whenever you like. It's the safest place for a mile, and the view is mostly my back.",
		"If things turn ugly, get behind me. Don't thank me. Just don't wander off.",
		"Stay close. Close is where I can do something about it.",
	},
	["cls.warrior.muse.w05.071"] = {
		"Everyone who fights long enough loses someone beside them. I try not to think about who it will be. I fail at that most days.",
		"The line only holds if every place in it is filled. I think about the day one of those places is empty, and then I stop thinking about it.",
	},
	["cls.warrior.muse.w05.072"] = {
		"stands motionless for a long moment, weapon lowered, like a sentry who has forgotten what the watch was for.",
		"stands quite still, weapon at rest, the way old soldiers stand when there is nothing yet to stand against.",
	},
	["cls.warrior.muse.w05.073"] = {
		"hums a marching rhythm under {g:his|her} breath, tapping it out on {g:his|her} armor with one finger.",
		"drums a short marching beat on {g:his|her} own chest plate, then looks faintly embarrassed about it.",
	},
	["cls.warrior.muse.w05.074"] = {
		"I swore nothing to anyone grand. Just to myself: while I'm standing, nobody behind me gets hurt.",
		"My only vow is a short one: while I'm upright, whoever's behind me stays whole.",
	},
	["cls.warrior.muse.w05.075"] = {
		"Sweat dries, bruises fade, the edge goes dull and gets sharpened again. I like a life that mends.",
		"Everything in this trade wears down and gets mended: blades, straps, me. There's comfort in that.",
	},
	["cls.warrior.muse.w05.076"] = {
		"Stubbornness gets called courage when it works and stupidity when it doesn't. I try to make it work.",
		"Half of bravery is simply not knowing when to quit. The other half is knowing it, and staying anyway.",
	},
	["cls.warrior.muse.w05.077"] = {
		"Give me something to do. Standing about makes my shoulders itch.",
		"I'm no good at waiting. My arms keep asking what the plan is.",
	},
	["cls.warrior.muse.w05.078"] = {
		"My rage is a hound I've trained to come when called and lie down when told. Most days it listens.",
		"The fury isn't wild. I've spent a long time teaching it manners, and it has learned most of them.",
		"I don't let the anger off the leash between fights. It knows its time and waits for it.",
	},
	["cls.warrior.muse.w05.079"] = {
		"I didn't pick this trade for its comforts. It picked me for my thick skull, and it chose well.",
		"Some trades want a quick mind. Mine wanted a hard head and a long patience, and I had both to spare.",
	},
	["cls.warrior.muse.w05.080"] = {
		"Block, then answer. The best moment to strike is the one right after they've failed to hurt me.",
		"There's a sweet half-heartbeat after a blow glances off my guard. That's when I hit back hardest.",
	},
	["cls.warrior.muse.w05.081"] = {
		"When a foe slips aside, I don't curse. I take the gap it leaves and drive straight through it.",
		"A dodge is a promise to be off balance a moment later. I collect on those promises.",
	},
	["cls.warrior.muse.w05.082"] = {
		"Once in a long while I drop every caution at once. Nothing hurts more after, and nothing hits harder during.",
		"Pure recklessness, held for a few breaths: I strike like a falling tree and take blows like an open window.",
	},
	["cls.warrior.muse.w05.083"] = {
		"At some point along the road the weapon stopped being something I carry and became something I am.",
		"There was no single day I became a warrior. Just a slow pile of days until I noticed.",
	},
	["cls.warrior.muse.w05.084"] = {
		"Taking a foe's weapon away is the most polite thing I know how to do in a fight.",
		"A disarmed foe has to think again. Most of them don't like what they think.",
	},
	["cls.warrior.muse.w05.085"] = {
		"A shield's rim to the face interrupts almost anything. Spells, speeches, bad ideas.",
		"Someone starts chanting, I bring the edge of the shield around. Conversation over.",
	},
	["cls.warrior.pray.w05.001"] = {
		"Whoever keeps watch over those who fight: steady my arm, and keep the ones behind me standing.",
		"If anything listens, I don't ask to be spared. Only to fall last, once the others are safe.",
	},
	["cls.warrior.quest_complete.w05.001"] = {
		"A job finished is a weight set down. There's always another, but this one is off my back.",
		"One less thing owed to the world. I'll take the lighter pack.",
		"Set it down, then. The next load can wait until I've straightened up.",
	},
	["cls.warrior.quest_complete.w05.002"] = {
		"That's handled. Next?",
		"Consider it dealt with. Anything else need doing?",
		"There, sorted. I'm still here if you've got more.",
	},
	["cls.warrior.quest_complete.w05.003"] = {
		"accepts what is offered with a short grunt and a nod, already glancing toward the way out.",
		"takes the reward without ceremony, as a soldier takes rations.",
		"pockets whatever is given without counting it, which is its own kind of pride.",
	},
	["cls.warrior.quest_complete.w05.004"] = {
		"Nobody ever writes songs about the walk back. Pity. It's most of the job.",
		"The work itself is the short part. The rest is walking, waiting, and being thanked a bit awkwardly.",
	},
	["cls.warrior.quest_complete.w05.005"] = {
		"If anything else needs lifting, carrying or hitting, you know where to find me.",
		"Heavy lifting's my specialty. Light lifting too; I'm not proud.",
		"Need a door held, a crate moved, a pest removed? Same terms as today.",
	},
	["cls.warrior.quest_complete.w05.006"] = {
		"Every task I see through makes the next one easier to start. That's what the drills were for, I think.",
		"The trainers had me repeat the same strike a hundred times. They were teaching patience for days like this.",
	},
	["cls.warrior.quest_complete.w05.007"] = {
		"shifts the weight of {g:his|her} armor and lets out a breath held since the work began.",
		"brushes the dust of the errand from {g:his|her} armor with the flat of a hand.",
	},
	["cls.warrior.quest_complete.w05.008"] = {
		"My word's good. Tell anyone who asks.",
		"When I take a job, it gets done. That's the whole of my reputation.",
		"You can count on steel and on my word. Both held.",
	},
	["cls.warrior.quest_complete.w05.009"] = {
		"Whatever comes of it, some of it will go to the armorer. It always does.",
		"Half of any reward ends up mending what the work broke. Steel isn't cheap.",
		"Some of this goes to the whetstone, some to bread. The rest disappears, the way it always does.",
	},
	["cls.warrior.quest_complete.w05.010"] = {
		"Glad to help. Try not to need me again too soon.",
		"Done. If it comes back, so do I.",
	},
	["cls.warrior.quest_complete.w05.011"] = {
		"They thank me and go back to their lives. I go back to the road. Fair arrangement, mostly.",
		"A handshake, a few words, and they're already turning to the next worry. So am I.",
	},
	["cls.warrior.quest_complete.w05.012"] = {
		"stands a little straighter as the matter is closed, like a sentry relieved at the end of a long watch.",
		"squares {g:his|her} shoulders once the business is settled, as if reporting back to a commander.",
		"draws {g:himself|herself} up to full height, the closing of the account written plainly on {g:his|her} face.",
	},
	["cls.warrior.quest_complete.w05.013"] = {
		"Good work, if I say so myself. And I do.",
		"Not bad. I'd hire me again.",
		"Clean work. I'm almost impressed with myself.",
	},
	["cls.warrior.quest_complete.w05.014"] = {
		"My legs know exactly how far this one took me. My pride doesn't care.",
		"Sore feet, light heart. I've made worse trades.",
		"My boots carried me through this one. They deserve the reward more than I do.",
	},
	["cls.warrior.quest_complete.w05.015"] = {
		"Some jobs end with thanks, some with silence. Either way I clean the weapon and move on.",
		"I don't always know who I helped, in the end. I know I kept my end.",
	},
	["cls.warrior.quest_complete.w05.016"] = {
		"Another one done. Keep them coming; I don't tire easily.",
		"Is that it? I'd warmed up for something harder.",
		"Done and dusted. Anyone else need a strong arm?",
	},
	["cls.warrior.quest_complete.w05.017"] = {
		"allows {g:himself|herself} a small, crooked grin, then looks around quickly in case anyone noticed.",
		"cracks {g:his|her} knuckles one by one, the sound of a job well finished.",
		"stretches until {g:his|her} armor creaks, then lets out a contented sigh.",
	},
	["cls.warrior.quest_complete.w05.018"] = {
		"Each errand teaches the arms something and the head something else. Today the head learned more.",
		"Not every task needs the blade. I'm getting better at telling which ones do.",
	},
	["cls.warrior.quest_complete.w05.019"] = {
		"Done. Spare me the ceremony.",
		"That's that. Save the thanks for someone who needs them.",
		"Finished. Let's not make a fuss.",
	},
	["cls.warrior.quest_complete.w05.020"] = {
		"Some small corner of the world is a little better than before. That's enough to sleep on.",
		"I can't mend the whole world with a weapon. The piece in front of me, though, I can.",
	},
	["cls.warrior.quest_complete.w05.021"] = {
		"Tell your friends: reliable, sturdy, reasonably polite.",
		"If you're writing references, spell my name right.",
	},
	["cls.warrior.quest_complete.w05.022"] = {
		"wipes {g:his|her} palms on {g:his|her} thighs and lets {g:his|her} hands hang loose for once.",
		"rests a hand on the grip of {g:his|her} weapon, off duty for the space of a breath.",
	},
	["cls.warrior.quest_complete.w05.023"] = {
		"Finished. I'll remember the faces longer than the reward.",
		"The reward I'll spend. The look of whoever saw me come back, I'll keep.",
	},
	["cls.warrior.quest_complete.w05.024"] = {
		"Done and settled. Best two words I know.",
		"Settled. I like the sound of that.",
		"Done. Sweetest word in any language.",
	},
	["cls.warrior.quest_complete.w05.025"] = {
		"gives a short soldier's nod, the kind that means the account is square.",
		"turns away with the unhurried step of someone with nothing left owing.",
	},
	["cls.warrior.quest_progress.w05.001"] = {
		"Part of the way there. Same pace, same grip.",
		"Not finished, but closer. Closer is a direction I like.",
		"Some of it done. The rest won't take care of itself.",
	},
	["cls.warrior.quest_progress.w05.002"] = {
		"That's all of it. Time to report back.",
		"Everything they asked for. Let's go collect.",
		"That settles it. Back to whoever's waiting.",
	},
	["cls.warrior.quest_progress.w05.003"] = {
		"makes a mental tally, finds it short, and gets back to work without complaint.",
		"counts on {g:his|her} fingers, frowns at the number, and squares up to the rest.",
	},
	["cls.warrior.quest_progress.w05.004"] = {
		"That's the last of it. The walk back always feels shorter, though it never is.",
		"Done here. The return is the only stretch I don't mind.",
	},
	["cls.warrior.reputation_change.w05.001"] = {
		"They look at me differently now. Less like hired muscle, more like someone they can count on.",
		"A little more welcome than before. The work spoke for me; it usually does.",
		"Word gets around when you keep showing up. Good word, this time.",
	},
	["cls.warrior.rez.w05.001"] = {
		"The armor's heavier coming back than going down. Or maybe I left something behind.",
		"Up. Gear's all here, only a bit more battered. Death charges a fee, it seems.",
	},
	["cls.warrior.rezother.w05.001"] = {
		"There you are. Nothing good happened while you were gone.",
		"Back again. The view from down there can't have been much.",
		"Ah, back with us. Good. I was getting lonely at the front.",
	},
	["cls.warrior.rezother.w05.002"] = {
		"Take a breath and stay close to me. It won't happen twice.",
		"Stand behind me until your legs come back. I'll do the rest.",
		"Easy. Get your bearings. Nothing reaches you while I'm here.",
	},
	["cls.warrior.rezother.w05.003"] = {
		"I should have been between them and that blow. I'll stand closer next time.",
		"That blow landed while I was two steps away. It won't sit easy for a while.",
	},
	["cls.warrior.rezother.w05.004"] = {
		"offers a hand to the one just risen and hauls them upright without a word.",
		"plants {g:himself|herself} beside the one just returned, weapon ready, until the color comes back into their face.",
	},
	["cls.warrior.rezother.w05.005"] = {
		"Next time, let me take that one. I'm uglier already.",
		"Try to stay upright a bit longer. My nerves aren't made of iron.",
		"Good to have you back. Now stop doing that.",
	},
	["cls.warrior.thanks.w05.001"] = {
		"Thanks. Someday I'll stand in front of you and we'll call it even.",
		"Much obliged. Next fight, the first blow is mine to take for you.",
	},
	["cls.warrior.thanks.w05.002"] = {
		"Thank you. Don't make a habit of it; I'll go soft.",
		"My thanks. Not a word to the trainers.",
	},
	["cls.warrior.threat.w05.001"] = {
		"I'm wearing enough iron to sink a boat. Do you really think you'll get through it before I get through you?",
		"You'd have to cut through all this iron to reach me. I only need to reach you once.",
	},
	["cls.warrior.threat.w05.002"] = {
		"I've had a long day of being hit. I'd quite like to do the hitting for a change.",
		"Being hit is my trade. Hitting back is my pleasure. Pick which one you'd like to see.",
		"Taking blows is the job. Returning them is the part I enjoy. Don't make me enjoy myself.",
	},
	["cls.warrior.threat.w05.003"] = {
		"I don't need to be angry to do this. Don't make me angry anyway.",
		"I'm calm. Right now that's the most dangerous thing about me.",
	},
	["cls.warrior.threat.w05.004"] = {
		"Look at my stance. Now ask yourself if you've ever moved anyone who stood like this.",
		"See how I'm standing? People who stand like this don't get moved. They do the moving.",
		"Weight low, feet set. You'd sooner shift a gatepost.",
	},
	["cls.warrior.threat.w05.005"] = {
		"My whetstone's been bored all week. Don't give it a reason to cheer up.",
		"Everything I carry is freshly sharpened and none of it has been used today. Don't volunteer.",
	},
	["cls.warrior.threat.w05.006"] = {
		"Last warning, and I'm not good at warnings. I'm much better at the other thing.",
		"Words aren't my trade. I'm about to switch to the one that is.",
	},
	["cls.warrior.victory.w05.001"] = {
		"The rage lets go of my jaw last. It always does.",
		"Everything else unclenches first. The teeth take their time.",
		"Arms down, shoulders down, and still my jaw is set like a trap. It'll come round.",
	},
	["cls.warrior.victory.w05.002"] = {
		"pries {g:his|her} fingers off the grip one at a time, as though they belonged to someone else.",
		"opens and closes a cramped hand until the fingers agree to move again.",
	},
	["cls.warrior.victory.w05.003"] = {
		"I'd like a word with whoever designed these buckles. Several words.",
		"If one more buckle works loose mid-swing, I'm fighting in a sack next time.",
		"Every strap I own picked that moment to slip. I'll be having a talk with them.",
	},
	["cls.warrior.victory.w05.004"] = {
		"Odd. The armor weighs nothing while it's needed and twice as much the moment it isn't.",
		"In the fight I never feel the iron. Afterward it remembers every ounce.",
	},
	["cls.warrior.victory.w05.005"] = {
		"settles {g:his|her} shoulders back under the armor, the way one shifts a familiar load before the road.",
		"hitches the armor higher on {g:his|her} shoulders, finds the old balance, and stands easier for it.",
	},
	["cls.warrior.victory.w05.006"] = {
		"Nothing got past. That's the only part I'll be bragging about.",
		"Whatever it wanted, it didn't get it through me. Good.",
		"It came to get by me. It didn't. That's the whole report.",
	},
	["cls.warrior.victory.w05.007"] = {
		"The yard taught me the moves. Fights like that one teach me which ones matter.",
		"Posts and practice blades only go so far. That was the real lesson, and this time I passed it.",
	},
	["cls.warrior.victory.w05.008"] = {
		"Out of the stance. My knees have opinions about it, and they're all loud.",
		"Guard down. The knees are filing their complaints.",
	},
	["cls.warrior.victory.w05.009"] = {
		"finds a strap worked loose in the fight and buckles it one hole tighter than before.",
		"yanks a slipped buckle back into place and gives it a hard tug to make sure it stays.",
	},
	["cls.warrior.victory.w05.010"] = {
		"Settled. I'll take it plainly, the way it was fought.",
		"Done straight, no tricks either way. I'll sleep fine on that.",
	},
	["cls.warrior.victory.w05.011"] = {
		"My arm did that. I trained it to, so I can hardly blame it.",
		"All those hours teaching my body to do this, and it does it so well. I don't always like how well.",
	},
	["cls.warrior.victory.w05.012"] = {
		"That's what all the drills were for. Every last one of them.",
		"There it is. Every sore morning in the yard, paid back in one fight.",
		"Ha! The practice post never gave me a feeling like that.",
	},
	["cls.warrior.victory.w05.013"] = {
		"glances down at a fresh gouge in {g:his|her} armor and grunts, as if noting a debt to collect.",
		"runs a thumb along a new mark in the armor, and the look on {g:his|her} face says it will be remembered.",
	},
	["cls.warrior.victory.w05.014"] = {
		"And not one of my good straps broken. Today's a holiday.",
		"Everything's still attached. Armor, fingers, temper. Mostly temper.",
	},
	["cls.warrior.victory.w05.015"] = {
		"Each hit on the armor is still humming in my bones. It fades slower than the fight did.",
		"The blows I blocked are still buzzing up my arm. That's the part nobody warns you about.",
	},
	["cls.warrior.victory.w05.016"] = {
		"holds the weapon up and sights along its length, frowning at something only {g:he|she} can see.",
		"squints down the weapon with one eye shut, then gives a satisfied grunt.",
	},
	["cls.warrior.victory.w05.017"] = {
		"Did anyone take a blow that should have been mine? Look properly before you call it a win.",
		"The job was to be the one they hit. Check who else got hurt; that's my real score.",
	},
	["cls.warrior.victory.w05.018"] = {
		"All of you still upright? Good. Now, who's got a hand free for this buckle?",
		"Well held, all of you. I'd shake hands, but mine won't open yet.",
	},
	["cls.warrior.victory.w05.019"] = {
		"Good. Next time, give me a moment longer to grab their attention before you start.",
		"Fine work. One thing: let me land the first blow. It keeps their eyes where they belong.",
	},
	["cls.warrior.victory.w05.020"] = {
		"That's twice now you've died. I hope the second one takes.",
		"Whoever raised you can come and do it again. I'll be here.",
	},
	["cls.warrior.victory.w05.021"] = {
		"It only had teeth and hunger. I had iron and training. Not much of a contest, when I think about it.",
		"Fangs on one side, armor on the other. It never had a fair chance, and I'm not proud of it.",
	},
	["cls.warrior.victory.w05.022"] = {
		"Trained, armed, and on the wrong side of me. I'd have liked to know where they learned that parry.",
		"Good footwork, for a while. Some sergeant somewhere would have been proud of them.",
	},
	["cls.warrior.victory.w05.023"] = {
		"Back to whatever it was before something made it angry. I know the feeling.",
		"Just stuff again. Stone, water, whatever it was. Hard to gloat over a puddle.",
	},
	["cls.warrior.victory.w05.024"] = {
		"Scrap. Someone will want the gears; I just want my hearing back.",
		"That's the last of its springs. Somebody bring a broom, or a tinker.",
	},
	["cls.warrior.victory.w05.025"] = {
		"Gone back where it came from, or nowhere at all. Either suits me.",
		"Whatever pit spat it out can have it back. I've no use for the pieces.",
	},
	["cls.warrior.victory.w05.026"] = {
		"Won. Don't ask me to bow; I'm not sure I'd come back up.",
		"I'll take the win and a long sit, in whichever order my legs choose.",
	},
	["cls.warrior.victory.w05.027"] = {
		"Barely a mark on me. The armor did the work; I'll take the credit.",
		"Clean. The iron took everything you had and asked for more.",
	},
	["cls.warrior.victory.w05.028"] = {
		"I did it! I mean, of course I did it. That was entirely expected.",
		"Ha! Just the way they drilled it into me. Well, close enough.",
	},
	["cls.warrior.victory.w05.029"] = {
		"Once that would have taken everything I had. Now it only took most of it. Slow progress is still progress.",
		"The fights don't get easier. I just get harder to finish.",
	},
	["cls.warrior.victory.w05.030"] = {
		"Whatever that was, it'll want a stitch or two. Me, I mean, not it.",
		"Someone's getting a sore arm tomorrow, and it's not the one lying down.",
		"My shoulder will be sending me letters about this for days.",
	},
	["cls.warrior.victory.w05.031"] = {
		"The fury doesn't want to leave. I walk it in a little circle, like a horse after a hard run.",
		"It's still up there, the heat, looking for something else to hit. Easy. Easy. Nothing left.",
	},
	["cls.warrior.victory.w05.032"] = {
		"takes one deliberate step back, then another, before letting the guard drop the last inch.",
		"keeps the weapon up for a count of three after the end, out of a habit drilled too deep to break.",
	},
	["cls.warrior.victory.w05.033"] = {
		"Hard work, done properly. That's all the glory I need.",
		"Not pretty, but sound. Like a good wall.",
		"Built to last, that fight. Nothing fancy in it, nothing wasted.",
	},
	["cls.warrior.victory.w05.034"] = {
		"Somewhere in that fight I made a noise I'd rather nobody heard. I'm choosing to believe nobody did.",
		"I'm fairly sure I shouted something halfway through. I'm fairly sure it wasn't words.",
	},
	["cls.warrior.victory.w05.035"] = {
		"squats on {g:his|her} heels for a moment, weapon across the knees, and lets the heart slow down.",
		"sits down right where the fight ended, weapon across {g:his|her} lap, and gives the heart a moment to slow.",
	},
	["cls.warrior.victory.w05.036"] = {
		"And the armor wins again. Undefeated, that armor.",
		"Remind me to thank the smith. Whoever it was earned it today.",
		"I'd buy the armor a drink if it could hold one.",
	},
	["cls.warrior.victory.w05.037"] = {
		"Plant, swing, don't stop. Simplest lesson in the world, and it works every time.",
		"Ha! Straight through. The only way I know.",
	},
	["cls.warrior.victory.w05.038"] = {
		"raises the weapon in a brief, stiff salute toward the fallen, then turns away without ceremony.",
		"touches the weapon to {g:his|her} brow, a small soldier's courtesy, and lowers it.",
	},
	["cls.warrior.victory.w05.039"] = {
		"Afraid at the start, steady by the end. I'll settle for that ratio.",
		"It always begins with my stomach in knots and ends with my hands steady. I've stopped minding the first half.",
	},
	["cls.warrior.victory.w05.040"] = {
		"Good. Now for the boring bit: oil, rag, and not wincing where anyone can see.",
		"Now the quiet part: finding out what hurts without letting it show.",
	},
	["cls.warrior.victory.w05.041"] = {
		"That's what the armor's for, and that's what I'm for. Both did the job.",
		"Iron held, and so did I. Neither of us was made to do otherwise.",
	},
	["cls.warrior.victory.w05.042"] = {
		"Now the small hurts come out to be counted. A wrist, a shin, something in the back. Fine. Fine.",
		"The little aches wait politely until the end, then all speak at once.",
		"Nothing broken. Plenty of things with complaints to file.",
	},
	["cls.warrior.victory.w05.043"] = {
		"checks the weapon's grip wrapping, finds it slick, and wipes it dry against {g:his|her} thigh.",
		"rewinds the loosened binding on {g:his|her} weapon's grip, tight and neat, before anything else.",
	},
	["cls.warrior.victory.w05.044"] = {
		"Not my finest form. Still counts.",
		"Ugly, but it counts. Nobody pays extra for style.",
		"If anyone was keeping score for elegance, I lost. Luckily nobody was.",
	},
	["cls.warrior.victory.w05.045"] = {
		"For a moment there I was nothing but the next swing. I could get used to that. I probably already have.",
		"No past, no plans, nothing but the next blow. It's the cleanest I ever feel.",
	},
	["cls.warrior.victory.w05.046"] = {
		"Well, that loosened me up. I feel almost limber.",
		"Good exercise, that. Better than an hour at the post.",
		"Warmed up nicely. Shame it's over.",
	},
	["cls.druid.heal.w06.001"] = {
		"spreads {g:his|her} fingers over the hurt, and something like new leaves unfolding passes through the flesh.",
		"hums a low, wordless note, and the wound draws closed the way a flower shuts at evening.",
	},
	["cls.druid.heal.w06.002"] = {
		"That will keep working after I've stopped. Give it a little while.",
		"It's in you now, mending slowly. Like a spring under the moss.",
	},
	["cls.druid.heal.w06.003"] = {
		"The wild lends its strength to mending, but it keeps accounts. Spring is generous only because winter was strict.",
		"I borrow from the green each time. It's never refused me, which is exactly why I'm careful how often I ask.",
	},
	["cls.druid.heal.w06.004"] = {
		"Be still. Roots take hold faster in quiet ground.",
		"Don't fight it. Things heal best when they stop thrashing about.",
	},
	["cls.druid.heal.w06.005"] = {
		"Herbs, boiled down and bottled. Nature's work, if by someone else's hands.",
		"An alchemist's tea. The Circle would call it lazy; my wounds call it welcome.",
	},
	["cls.druid.heal.w06.006"] = {
		"For a few breaths everything around me goes quiet and green. I hold still, and everyone near is held with me.",
		"Tranquility. The name always seemed a joke to me, cast in the middle of the worst of it.",
	},
	["cls.druid.heal.w06.007"] = {
		"watches the hurt close with a gardener's patience, neither hurrying it nor looking away.",
		"waits, still as a heron, until the pain has drained away entirely.",
	},
	["cls.hunter.attack.w06.001"] = {
		"Feel that? Plenty more where it came from.",
		"That's for making me work for it.",
		"Another, and another. I can keep this up for as long as it takes.",
	},
	["cls.hunter.attack.w06.002"] = {
		"Again. Same as before. Don't get clever.",
		"Good. Now the next one, just like that.",
		"Don't admire it. Ready the next.",
	},
	["cls.hunter.attack.w06.003"] = {
		"moves without a wasted motion, each strike flowing out of the one before.",
		"works with a hunter's economy, nothing spent that doesn't need spending.",
		"shifts a half step to the side and strikes again, never quite where the foe expects.",
	},
	["cls.hunter.attack.w06.004"] = {
		"Did that sting? It was meant to.",
		"Keep still. That one had your name on it.",
		"Oh, you felt that one. Good. I meant you to.",
	},
	["cls.hunter.attack.w06.005"] = {
		"Together now! Hit it with me!",
		"Now, while it's watching you!",
		"Go for it while I strike!",
	},
	["cls.hunter.attack.w06.006"] = {
		"If I keep this up, I might even impress myself.",
		"Not bad. Not bad at all. Concentrate anyway.",
		"Careful. The moment I feel pleased is the moment I miss.",
	},
	["cls.hunter.attack.w06.007"] = {
		"The ground's mine now. Every step you take, I've already measured.",
		"I've got your measure. Now it's just repetition.",
		"I know how you move now. That's the end of you, slowly.",
	},
	["cls.hunter.attack.w06.008"] = {
		"strikes and gives ground in one smooth motion, never letting the foe settle.",
		"hits, slips back, hits again, as patient as water on stone.",
	},
	["cls.hunter.attack.w06.009"] = {
		"Ha! That's the one I've been waiting for.",
		"Now that one I'll remember.",
	},
	["cls.hunter.battle.w06.001"] = {
		"Hold a moment. I want my mark on you before this starts.",
		"A mark first, so I never lose you, however you twist.",
		"First the mark. After that, there's nowhere you can stand that I can't find.",
	},
	["cls.hunter.battle.w06.002"] = {
		"Too close for the shot, too far for a clean strike. That gap is where hunters get hurt. Stay out of it.",
		"Watch the gap. Not close enough to cut, not far enough to shoot: that's the worst ground there is.",
		"There's a dead stretch between my reach and my range. The whole fight is keeping the foe out of it.",
	},
	["cls.hunter.battle.w06.003"] = {
		"reaches for the ammunition without looking, the hand finding it by long habit.",
		"loads by feel alone, eyes never leaving the foe.",
		"has the weapon readied before the foe has finished turning.",
	},
	["cls.hunter.battle.w06.004"] = {
		"I counted my ammunition before setting out. Let's see how much of it you're worth.",
		"Every round I spend on you comes out of my own purse. Try to fall quickly.",
		"Ammunition isn't free, you know. Go down early and we both save something.",
	},
	["cls.hunter.battle.w06.005"] = {
		"Come on, then. Every step you take toward me is a step through my sights.",
		"Charge if you like. That's a long way to run with me shooting.",
		"Come closer. I've already counted how many shots that walk will cost you.",
	},
	["cls.hunter.battle.w06.006"] = {
		"Watch the feet, not the weapon. The feet always tell you first.",
		"Where it puts its weight, that's where it's going. Read that and shoot ahead of it.",
		"Every foe leaves tracks, even in a fight. A shifted foot, a dropped shoulder. Read them.",
	},
	["cls.hunter.battle.w06.007"] = {
		"Let's see how fast you are with your legs clipped.",
		"Bit of a limp coming your way. Then we'll talk about distance.",
		"One clip to slow you, then I take my steps back. Simple dance.",
	},
	["cls.hunter.battle.w06.008"] = {
		"wets a finger and lifts it, quick as a blink, before raising the weapon.",
		"tilts {g:his|her} head at the air for half a heartbeat, reading which way it moves, then takes aim.",
	},
	["cls.hunter.battle.w06.009"] = {
		"I've waited longer than this for a single shot. You don't frighten my patience.",
		"Take your time. Waiting is the half of hunting nobody sings about.",
		"Rush me all you like. Patience is the one weapon I never run out of.",
	},
	["cls.hunter.battle.w06.010"] = {
		"Easy. I know your kind. I know where you'll lunge before you do.",
		"I've read a hundred tracks like yours. I know how this goes.",
		"Teeth and claws I understand. You'll get no surprises from me, and I'll get none from you.",
	},
	["cls.hunter.battle.w06.011"] = {
		"You've got a grudge. I've got range. Let's find out which reaches first.",
		"You brought anger. I brought distance. One of those is better at keeping people alive.",
	},
	["cls.hunter.battle.w06.012"] = {
		"You don't flinch at the shot. Good. Neither do I.",
		"No breath to hold, no heart to aim for. I'll just aim for the pieces.",
		"You won't flinch, you won't tire and you won't stop. Fine. I won't either.",
	},
	["cls.hunter.battle.w06.013"] = {
		"No scent, no tracks, no heartbeat. Hunting you is like hunting a gust of air.",
		"Nothing about you leaves a trail. Doesn't matter. You're right there.",
	},
	["cls.hunter.battle.w06.014"] = {
		"I've followed the trails of foul things before. None of them reeked like yours.",
		"Whatever pit you climbed out of, you're in my range now.",
	},
	["cls.hunter.battle.w06.015"] = {
		"Shoot whatever our front line is holding, not whatever looks interesting. Discipline.",
		"Let the front line take the first blows. My work starts a heartbeat after theirs.",
		"Wait until the one in front has it. Then the shots.",
	},
	["cls.hunter.battle.w06.016"] = {
		"Here they come. Anything that breaks off, I'll put down before it reaches the back line.",
		"However this started, I'm already shooting. Keep up.",
	},
	["cls.hunter.battle.w06.017"] = {
		"sights along the weapon, and the rest of the world seems to step aside.",
		"goes quiet all over, as if the whole body had become part of the aim.",
		"lets out half a breath and holds the rest, the aim settling like dust.",
	},
	["cls.hunter.battle.w06.018"] = {
		"Rule one: never fight with the cheetah's aspect on. One hit and I'm reeling like a drunk.",
		"Is the cheetah still on me? It's always still on me. Change it, quickly.",
	},
	["cls.hunter.battle.w06.019"] = {
		"First I slow you. Then I take my time.",
		"A shot to make your legs heavy, and the rest is patience.",
	},
	["cls.hunter.battle.w06.020"] = {
		"This one burns going in and keeps burning. Run, and it runs with you.",
		"A little venom to start. It works while I work.",
		"I don't need to hit you twice. The sting will remind you for me.",
	},
	["cls.hunter.battle.w06.021"] = {
		"You're of another size. Then I'll spend more time on you. That's all it means.",
		"Big one. Fine. Every shot counts double now, so none of them misses.",
	},
	["cls.hunter.battle.w06.022"] = {
		"That one's well above me. Keep the distance, keep moving, and don't get greedy.",
		"Stronger than me, and it knows it. Then I'll be cleverer, and it won't know that.",
	},
	["cls.hunter.battle.w06.023"] = {
		"Hold it there for me. I'll do the rest from here.",
		"Get in front of it and stay there. I'll be shooting past your ear.",
		"Keep its eyes on you. Mine are already on it.",
	},
	["cls.hunter.battle.w06.024"] = {
		"Teeth up front, shots from behind. Whoever planned this fight knew the trade. That was me.",
		"One of us growls, the other aims. Guess which one you should be watching.",
	},
	["cls.hunter.battle.w06.025"] = {
		"gives a short whistle, and the companion is already moving before the note ends.",
		"sends the beast in with one low word and steps the other way, opening the range.",
	},
	["cls.hunter.battle.w06.026"] = {
		"Find it, fix it in the sights, finish it. Same as every hunt.",
		"Three steps to any hunt. I've done the first two.",
		"Found you. Got you in the sights. Now comes the finishing.",
	},
	["cls.hunter.battle.w06.027"] = {
		"glances behind before anything else, measuring the ground there is to back into.",
		"checks the footing behind {g:him|her} with a quick look over the shoulder, then turns to the foe.",
		"takes stock of the open ground at {g:his|her} back first, as any hunter worth the name would.",
	},
	["cls.hunter.battle.w06.028"] = {
		"Hunter and hunted. The oldest bargain in the wild, and I know which side I signed.",
		"Before towns and walls there was this: one who chases and one who runs. I know my part.",
	},
	["cls.hunter.battle.w06.029"] = {
		"The first shot sets the whole fight. Take the extra heartbeat.",
		"Never hurry the opening. Everything after it leans on the first shot.",
		"One more heartbeat on the aim. The opening shot is the one I'll live with.",
	},
	["cls.hunter.battle.w06.030"] = {
		"Stand still. It's better for both of us.",
		"Hold still and this is quick. Dance about and it isn't.",
		"Keep still, and I'll make it clean. You have my word.",
	},
	["cls.hunter.battle.w06.031"] = {
		"Clip, step, step, shoot. Clip, step, step, shoot. Don't lose the count.",
		"If it reaches me: hobble its legs, three paces back, and start over. The rhythm keeps me whole.",
	},
	["cls.hunter.battle.w06.032"] = {
		"Full pouch, steady hands, clear line. You picked the wrong hunter.",
		"My ammunition's fresh and so am I. Bad timing on your part.",
		"Pouch full, aim true. Somebody's having a bad moment, and it isn't me.",
	},
	["cls.hunter.battle.w06.033"] = {
		"Fight me or flee me. Either way, I have the better view of it.",
		"Turn and run, or stand and charge. I'm ready for both, and I'll enjoy one more.",
		"Stand or run, it's all the same to my aim.",
	},
	["cls.hunter.battle.w06.034"] = {
		"All those hours putting shots into straw. Let's see what they were for.",
		"Straw targets never shot back. Let's see if the lessons hold anyway.",
		"Practice is over. This one moves, and it answers back.",
	},
	["cls.hunter.battle.w06.035"] = {
		"There it is, that tightening in the chest. The hunt's begun, and every part of me knows it.",
		"Everything goes sharp at the edges. Sounds, smells, the distance. I love this part, a little too much.",
	},
	["cls.hunter.battle.w06.036"] = {
		"Far off, you'll take my shots. Up close, you'll wish you'd kept your distance.",
		"Far, I shoot. Near, I strike. There's no safe distance for you here.",
		"Every distance is mine. You'll see.",
	},
	["cls.hunter.battle.w06.037"] = {
		"lets the opening shot go with no sign of hurry, as if the decision had been made long ago.",
		"opens the fight with a single unhurried shot, then shifts weight onto the back foot.",
	},
	["cls.hunter.battle.w06.038"] = {
		"Ah, a moving target. Things were getting dull.",
		"Something worth aiming at, at last.",
		"Good. I was starting to forget what the weapon was for.",
	},
	["cls.hunter.battle.w06.039"] = {
		"Exhale on the aim, inhale on the step. Keep that rhythm and the rest follows.",
		"Slow hands are quick enough. Fast hands miss.",
		"Don't chase the shot. Let it come to the aim.",
	},
	["cls.hunter.battle.w06.040"] = {
		"I don't have to touch you to finish you. That's the beauty of it.",
		"You'll never get near enough to hit me. That's rather the point.",
		"Arm's length? I prefer forty paces.",
	},
	["cls.hunter.battle.w06.041"] = {
		"brings the weapon into position and lets everything else in the world fall away.",
		"tightens {g:his|her} grip once, then eases it to just firm enough.",
	},
	["cls.hunter.battle.w06.042"] = {
		"Every trail ends somewhere. This is where yours does.",
		"Whatever trail you came by, it stops at my feet.",
		"This is the last stretch of your trail. I'll make it short.",
	},
	["cls.hunter.battle.w06.043"] = {
		"If the first one misses, nobody needs to know. Probably.",
		"Please let the first shot land. I'd hate an audience for the second try.",
	},
	["cls.hunter.battle.w06.044"] = {
		"I've read the ground, the air and you. Now I just have to let go.",
		"Ground, air, distance, foe. All read. Only the shooting's left.",
	},
	["cls.hunter.buff.w06.001"] = {
		"I take on a little of the wild before I need it. Better to be ready than to be quick about getting ready.",
		"One breath to settle into it. The body knows the shape before the mind names it.",
		"Shoulders loose, weight forward. Now I'm something that belongs among the beasts.",
	},
	["cls.hunter.buff.w06.002"] = {
		"There. Now I'm properly dressed for the wild.",
		"Right, that's me sorted. The rest of the day can begin.",
	},
	["cls.hunter.buff.w06.003"] = {
		"moves {g:his|her} shoulders once and goes very still, the way an animal does before it decides which way to run.",
		"shifts onto the balls of the feet and lets the stillness settle all the way down to the heels.",
	},
	["cls.hunter.buff.w06.004"] = {
		"The aspects are borrowed. Every hunter learns that early: you wear the beast's way of moving, you never own it.",
		"A borrowed gait, a borrowed eye. I give them back every time, and every time they're lent again.",
	},
	["cls.hunter.buff.w06.005"] = {
		"Feels a bit more animal than a minute ago. That's the whole idea.",
		"Less person, more creature. Just for a while.",
	},
	["cls.hunter.buff.w06.006"] = {
		"Long road, light feet. Let's eat some distance.",
		"Right. Now the road had better keep up with me.",
		"One knock and I'd be stumbling all over the path, so: no knocks.",
	},
	["cls.hunter.buff.w06.007"] = {
		"Quick legs and no guard at all. A fine way to travel, and a terrible way to be found.",
		"Speed, paid for with my guard. A fair price, as long as nothing's waiting along the path.",
	},
	["cls.hunter.buff.w06.008"] = {
		"The hawk's way of seeing: everything far off is suddenly near enough to matter.",
		"My eye narrows to a point. Further on, something hasn't noticed me yet. Good.",
	},
	["cls.hunter.buff.w06.009"] = {
		"Eyes of a hawk. Let's find something worth looking at.",
		"Sharp sight, steady hand. Now show me a target.",
	},
	["cls.hunter.buff.w06.010"] = {
		"Nimble feet. Let them swing at the air all they like.",
		"Duck, sidestep, grin. The monkey's whole philosophy, and not a bad one.",
	},
	["cls.hunter.buff.w06.011"] = {
		"The pack's pace, for whoever walks with me. Even if today that's only me.",
		"Swift feet for anyone near. A long road shortens when nobody lags behind.",
	},
	["cls.hunter.buff.w06.012"] = {
		"lifts the chin and breathes in, and for a moment something wilder looks out of {g:his|her} eyes.",
		"goes quiet, and the whole stance changes: lower, readier, less like a traveler and more like a hunter.",
	},
	["cls.hunter.buff.w06.013"] = {
		"Learned slowly, called in an instant. That's what practice buys.",
		"The first time, it felt like a coat in the wrong size. Now I hardly notice putting it on.",
	},
	["cls.hunter.buff.w06.014"] = {
		"Good. Whatever's next, I'm already in it.",
		"That'll do. Lead on, road, let's see what you've got.",
	},
	["cls.hunter.buff.w06.015"] = {
		"A scholar would call it attunement. I call it remembering that I'm an animal too.",
		"Nothing to read, nothing to recite. Just a way of standing that the wild taught first.",
	},
	["cls.hunter.buff.w06.016"] = {
		"checks the ammunition, then the straps of the pack, and nods to no one in particular.",
		"shifts the ranged weapon on {g:his|her} back until it sits just right.",
	},
	["cls.hunter.buff.w06.017"] = {
		"Quiet before the work. If I could keep only one part of the hunt, I'd keep this one.",
		"No hurry yet. Just the body tuning itself, string by string.",
	},
	["cls.hunter.buff.w06.018"] = {
		"Feels good. Like stretching after a long sleep, only sharper.",
		"Ah, that's better. Every sense standing to attention.",
		"There it is. The world gets a little louder and a little clearer.",
	},
	["cls.hunter.buff.w06.019"] = {
		"sets off at a sudden loping pace, faster than walking has any right to be.",
		"breaks into an easy, eager stride, the ground starting to slip by quicker.",
	},
	["cls.hunter.farewell.w06.001"] = {
		"I'm off. Watch the tree line, and keep downwind of trouble.",
		"Farewell. If you hear nothing at all behind you on the road, that might be me.",
		"Time I went. Walk softly, and the wild might let you pass.",
	},
	["cls.hunter.greet.w06.001"] = {
		"Hello. You came up quieter than most; I noticed.",
		"Well met. Don't mind me checking the wind; it's a habit.",
	},
	["cls.hunter.greet.w06.002"] = {
		"Hello there. If my eyes keep wandering, don't take it personally. They're always on the move.",
		"Greetings. Forgive me if I don't stand too close; I'm in the habit of keeping some range.",
	},
	["cls.hunter.heal.w06.001"] = {
		"winds the linen tight around the wound, pulls the knot with {g:his|her} teeth, and tests the arm.",
		"binds the cut one-handed, with the speed of someone used to cleaning game.",
	},
	["cls.hunter.heal.w06.002"] = {
		"Clean it, wrap it, forget it. A hunter can't afford a wound that wants attention all day.",
		"A hurt animal bites the hand that binds it. I'm luckier: the only one I have to put up with is me.",
	},
	["cls.hunter.heal.w06.003"] = {
		"Hold still, me. One more turn. There.",
		"Not pretty. It'll hold till I find something better than linen.",
		"First aid, they call it. Last resort, I'd say.",
	},
	["cls.hunter.heal.w06.004"] = {
		"Sitting with a bandage is the only time the wild lets me be slow.",
		"Wrapping the wound, I can hear everything again: the small sounds around me, my heartbeat slowing down.",
	},
	["cls.hunter.heal.w06.005"] = {
		"Bottoms up. Here's to legs that work.",
		"Cheers, me. Now back to it.",
		"One swallow and the ache backs off. Good.",
	},
	["cls.hunter.heal.w06.006"] = {
		"Some alchemist got richer and I got my skin back. Fair trade.",
		"Red, sweet, and gone in a gulp. The best things on the road usually are.",
	},
	["cls.hunter.heal.w06.007"] = {
		"A warlock's stone, cracked open in my fist. I don't ask how it was made. It works, and that's the whole conversation.",
		"Green, faintly warm, faintly wrong. It still puts me back on my feet.",
		"Somebody else's dark craft, and my mended hide. I've made odder bargains with the wild.",
	},
	["cls.hunter.heal.w06.008"] = {
		"Never thought I'd thank a warlock. Not out loud, anyway.",
		"Smells of sulfur. Works like a charm.",
	},
	["cls.hunter.heal.w06.009"] = {
		"takes a moment to mend, eyes never quite leaving the way ahead.",
		"sits back on {g:his|her} heels while the hurt eases, already looking for the next sign.",
	},
	["cls.hunter.heal.w06.010"] = {
		"Wounds slow the feet first, then the eye. I won't let this one get as far as the eye.",
		"Patch the hunter, and the hunt goes on. That's all mending is for.",
		"The trick is to mend before the hurt becomes a habit.",
	},
	["cls.hunter.heal.w06.011"] = {
		"The beast at my side sniffs at the wound, then at me, and seems to decide I'll live.",
		"My companion keeps watch while I mend. One of us has to.",
	},
	["cls.hunter.levelup.w06.001"] = {
		"My breathing settles faster now before a shot. That's not nothing; at range, that's everything.",
		"The aim holds a heartbeat longer than it used to. A heartbeat is a long time, out there.",
	},
	["cls.hunter.levelup.w06.002"] = {
		"A little sharper than before. The quarry hasn't heard the news yet.",
		"Keener than an hour ago. Spread the word. Actually, don't.",
	},
	["cls.hunter.levelup.w06.003"] = {
		"draws a slow breath and sights down the weapon at a distant point, holding the aim a little longer than before, just to feel it.",
		"narrows {g:his|her} eyes at something far off, as if the distance had come a few paces closer.",
	},
	["cls.hunter.lowhp.w06.001"] = {
		"If it stays this close, I can't shoot. Strike, step, strike. Anything for room.",
		"Too close is no place for me. Make room, or make peace.",
		"The worst place a hunter can be: in reach, out of range.",
	},
	["cls.hunter.lowhp.w06.002"] = {
		"Time to play dead. I've been practicing the face.",
		"If I drop, don't believe it. Not right away, anyway.",
		"Down I go, very convincingly. Let's hope it's only acting.",
	},
	["cls.hunter.lowhp.w06.003"] = {
		"Fall, go limp, stop breathing. Let it lose interest. It's an old trick because it works.",
		"Lie still and let it think it won. Then get up and prove it wrong.",
		"Drop, and be nothing for a moment. The foe moves on; the hunter gets up.",
	},
	["cls.hunter.lowhp.w06.004"] = {
		"backpedals with blood on {g:his|her} sleeve, still firing, every step back paid for with a shot.",
		"gives ground a pace at a time, wounded but still choosing where each foot lands.",
		"retreats in short, stubborn steps, bleeding, the weapon never once dropping below the foe's chest.",
	},
	["cls.hunter.lowhp.w06.005"] = {
		"Get it off me! Now, now!",
		"On it, on it! Pull it away from me!",
		"Help me here! Sink your teeth in, quickly!",
	},
	["cls.hunter.lowhp.w06.006"] = {
		"If I fall, it fights on without me. Hold on. Hold on, if only for that.",
		"We're both taking a beating. One of us has to think of something, and it won't be the one with the teeth.",
	},
	["cls.hunter.lowhp.w06.007"] = {
		"Monkey's aspect, quickly. Let it swing at air for a while.",
		"Duck, weave, dodge. The monkey knows this game better than I do.",
		"Time to be slippery. Whatever it swings at, let it be where I was.",
	},
	["cls.hunter.lowhp.w06.008"] = {
		"My aim's going. Whatever's left in the pouch has to count.",
		"Hands shaking now. Fewer shots, then, but better ones.",
		"Blurred edges on everything. Pick the biggest shape and trust it.",
	},
	["cls.hunter.lowhp.w06.009"] = {
		"You've hurt me. Now I've got nothing left to be careful with.",
		"Fine. You drew blood. Now watch what a cornered hunter does.",
		"Wounded and cornered. You've no idea what you've woken up.",
	},
	["cls.hunter.lowhp.w06.010"] = {
		"grits {g:his|her} teeth until the aim stops shaking, and fires anyway.",
		"blinks hard to clear {g:his|her} sight, draws one long breath, and puts the next shot exactly where it belongs.",
		"sways, finds {g:his|her} feet, and lines up the shot as calmly as if nothing hurt at all.",
	},
	["cls.hunter.lowhp.w06.011"] = {
		"Running won't work. The cheetah gives way the moment I'm struck. Fight it out.",
		"No outrunning this one. One blow and the cheetah's speed is gone. Stand and shoot.",
	},
	["cls.hunter.lowhp.w06.012"] = {
		"Not yet. I've still got ammunition, and that means I've still got a say.",
		"While there's a shot left in the pouch, this isn't over.",
		"Hurt, yes. Out of ammunition? Not yet. Your problem, then.",
	},
	["cls.hunter.lowhp.w06.013"] = {
		"I'm badly hurt here! Someone pull it off me, I can't shoot it this close!",
		"Help! It's on me and I'm in no shape for close work!",
	},
	["cls.hunter.lowhp.w06.014"] = {
		"drops low and scrambles sideways, trying to put something, anything, between {g:himself|herself} and the foe.",
		"lurches back out of reach, bleeding and breathing hard, eyes hunting for open ground.",
		"stumbles clear, one hand pressed to the wound, already measuring the distance back to a decent shot.",
	},
	["cls.hunter.lowhp.w06.015"] = {
		"Right. That's quite enough of being hit.",
		"I've had my share of your blows. Here's the rest of my ammunition.",
		"Enough. I came here to do the hunting, not to be the trophy.",
	},
	["cls.hunter.muse.w06.001"] = {
		"The quarry chooses the moment. All I choose is to still be there when it comes.",
		"Waiting is most of the trade. The shot is the short part at the end, the bit people tell stories about.",
		"Anyone can take a shot. Staying put through the hour before it is what makes the shot worth taking.",
	},
	["cls.hunter.muse.w06.002"] = {
		"The shot is decided long before it leaves. The last part is only letting go of what I already know.",
		"By the time my finger moves, the shot is already finished in my head. The rest is the world catching up.",
		"Aim is a question, and the hand answers it. When the answer is right, I feel it before I see it.",
	},
	["cls.hunter.muse.w06.003"] = {
		"Even under a roof I catch myself checking which way the air moves. The habit long outlived any need for it.",
		"In a tavern, in a bank queue, wherever: some part of me is still working out who's downwind of whom.",
		"I could be sitting at a feast and I'd still know where the draft comes from. Nobody else at the table cares.",
	},
	["cls.hunter.muse.w06.004"] = {
		"I sleep the way the wild does: deep enough to rest, never so deep that a snapped twig goes unheard.",
		"One ear stays awake when the rest of me sleeps. I don't remember teaching it that.",
	},
	["cls.hunter.muse.w06.005"] = {
		"The fingers that do the shooting have gone hard as horn. I can't feel a fine cloth with them anymore, and I don't miss it.",
		"Calluses where the weapon rests, calluses where it kicks or pulls. My hands keep a record of every hour of practice.",
		"Soft hands never hit anything. Mine gave up being soft a long way back, and they've been more use since.",
	},
	["cls.hunter.muse.w06.006"] = {
		"Most of hunting is staying still while every part of you begs to move. The body never quite agrees; it only gives in.",
		"Hold. Hold a little longer. The hard thing was never the aim. It was the waiting with an itch on my nose.",
		"Stillness is a muscle. Mine aches by the end of a good stalk, and that's how I know it worked.",
	},
	["cls.hunter.muse.w06.007"] = {
		"A hit tells me I was right or lucky, and never which. A miss tells me exactly what I got wrong.",
		"I learn nothing from the shots that land. The ones that go wide are the real teachers, and they're never gentle.",
	},
	["cls.hunter.muse.w06.008"] = {
		"I read my own trail as often as anyone else's. Whatever follows me is reading it too.",
		"Every step I take writes something on the ground. I try to write as little as I can, and nothing worth reading.",
		"The ground keeps a diary of everyone who crosses it. I'd rather my page stayed nearly blank.",
	},
	["cls.hunter.muse.w06.009"] = {
		"Meat I brought down myself tastes of the whole day it cost: the stalk, the cold, the waiting. Bought meat tastes of nothing.",
		"A plain cut I tracked, took and carried myself beats any dish from a kitchen. The difference is the hours in it.",
	},
	["cls.hunter.muse.w06.010"] = {
		"Never stand upwind of what you're hunting. Your smell walks ahead of you and announces you.",
		"Mind where the air comes from before you settle anywhere. Every nose for a mile around can read you.",
		"First thing on any hunt: find out where the wind is going. Then go somewhere else.",
	},
	["cls.hunter.muse.w06.011"] = {
		"I watch people's feet before their faces. Faces lie. Feet point where they mean to go.",
		"Feet first, then hands, then the face. Most people read each other the wrong way round.",
		"A smile tells me what someone wants me to think. Their weight, and which foot carries it, tells me what they'll do.",
	},
	["cls.hunter.muse.w06.012"] = {
		"I can't look at anything without finding where it's weakest: a fence, a door, the way someone stands. It's a hard habit to set down.",
		"Every creature I see, I see the opening first. Even the friendly ones. Some days, especially the friendly ones.",
	},
	["cls.hunter.muse.w06.013"] = {
		"Give me a roof and four walls for more than a day and I start pacing like something in a cage.",
		"Towns are fine for a stopover. By the second day I'm counting the doors and eyeing the road out.",
		"Walls are useful. They keep the weather off and the world out, and that second part is exactly my complaint.",
	},
	["cls.hunter.muse.w06.014"] = {
		"Two hunters can share a whole day and ten words, and both will call it good company.",
		"Among my own trade, silence isn't rudeness. It's the highest sort of manners.",
		"Hunters greet each other with a nod across a clearing, and that nod holds a whole conversation.",
	},
	["cls.hunter.muse.w06.015"] = {
		"Hunger makes you shoot early. Eat first, then hunt: the oldest advice in the trade, and the most ignored.",
		"An empty belly has no patience, and patience is the whole job. So I eat, even when I'd rather be moving.",
		"I've watched a growling stomach wreck a perfect stalk. Mine stays fed, whatever else goes short.",
	},
	["cls.hunter.muse.w06.016"] = {
		"From far off it's only a mark, a shape to put a shot through. It's walking up afterward that turns it back into a life.",
		"Distance makes it easy. Then I walk the distance, and it isn't easy anymore.",
		"At range there's no face, only the mark. The face is waiting for me at the end of the walk, every time.",
	},
	["cls.hunter.muse.w06.017"] = {
		"There's quarry I never caught. I think of it more fondly than of anything I did bring down.",
		"Some trails went cold on me and stayed cold. I like to think whatever left them is still out there, getting older and wiser.",
		"The ones that slipped away are the only ones I talk about. Something in me is glad they did.",
	},
	["cls.hunter.muse.w06.018"] = {
		"Before I aim, I mind my feet. A shot is only as steady as the ground under my heel.",
		"Bad footing ruins more shots than bad eyes. I settle my stance first, and the aim follows.",
	},
	["cls.hunter.muse.w06.019"] = {
		"A good trap is patience I leave behind me, doing the waiting while I'm elsewhere.",
		"I like traps. They're the only part of me that can be in two places at once.",
		"Set it, hide it, walk away. A trap is the one hunting partner that never gets bored.",
	},
	["cls.hunter.muse.w06.020"] = {
		"Lying flat and letting them think me dead. The wild taught that trick long ago; my pride took a while longer to learn it.",
		"Playing dead is the oldest escape there is. It costs nothing but dignity, and dignity heals faster than a wound.",
	},
	["cls.hunter.muse.w06.021"] = {
		"Sometimes I send my sight far past where my feet could go. The world doesn't get smaller that way. Only quieter.",
		"Seeing a long way off is a strange gift. Everything out there is sharp and close, and none of it knows I'm looking.",
	},
	["cls.hunter.muse.w06.022"] = {
		"Everybody's a fine hunter right up until the quarry turns around.",
		"Easy to talk about the hunt. Less easy when the hunt starts looking back at you.",
		"Funny how brave people get about hunting when nothing's looking back at them.",
	},
	["cls.hunter.muse.w06.023"] = {
		"The ammunition seller knows me by name now. I can't decide if that's friendship or a warning.",
		"Every merchant who sells shot greets me like an old friend. I wonder why.",
		"I'm the one customer the ammunition merchant always waves off with a big smile. Make of that what you will.",
	},
	["cls.hunter.muse.w06.024"] = {
		"Bow or gun, gun or bow. Hunters argue about it for hours, and the quarry never once had an opinion.",
		"People ask what's better, string or powder. Whichever you know best, I tell them. Nobody likes that answer.",
		"String folk and powder folk will never agree. Meanwhile, the quarry gets on with its day.",
	},
	["cls.hunter.muse.w06.025"] = {
		"My knees remember every hour I've spent crouched behind a rock. They bring it up whenever I stand.",
		"Half this trade is crouching. The other half is standing up again afterward, slowly, with noises.",
	},
	["cls.hunter.muse.w06.026"] = {
		"Scented soap is for people who want to be found. I wash with plain water and smell of nothing much, which is the point.",
		"Perfume, pipe smoke, fresh leather: anything with a smell stays behind when I go after something with a nose.",
		"The wild can smell a town on you for days. I try to scrub it off before I go looking for anything shy.",
	},
	["cls.hunter.muse.w06.027"] = {
		"I don't get lost. I get briefly uncertain, and then a stream or a slope puts me right.",
		"Lost is a strong word. I simply take the long way round while the land explains itself.",
		"I've never once been lost. I have, now and then, been very thoroughly somewhere unexpected.",
	},
	["cls.hunter.muse.w06.028"] = {
		"A wounded creature that gets away haunts a hunter longer than any fight. It was owed a clean end.",
		"The shot that only wounds is the one a hunter carries. Something suffers, out there, because a hand wasn't steady.",
	},
	["cls.hunter.muse.w06.029"] = {
		"I keep the year by what the animals are doing: shedding, pairing, fattening, hiding. The calendar on the wall is someone else's.",
		"Townsfolk count days. I count seasons by the wild: when the young appear, when the herds move, when everything starts eating as if winter were coming.",
		"A season changes in the animals before it changes in the air. They know first; I learn from them.",
	},
	["cls.hunter.muse.w06.030"] = {
		"Find the water and you've found everything that lives. Every trail in the wild bends toward it sooner or later.",
		"Water first. Whatever I'm after has to drink, and it will, and I'll be there.",
	},
	["cls.hunter.muse.w06.031"] = {
		"Every creature has a place where it feels safe. Find that and you understand it. People are no different.",
		"Learn where something goes when it's frightened, and you'll know more about it than it knows itself.",
		"Ask where a creature runs when it's scared and you've asked the only question that matters about it.",
	},
	["cls.hunter.muse.w06.032"] = {
		"Someday something out there will be quicker than me, or smarter, or just luckier. I hope it's clean about it. I always tried to be.",
		"Every hunter ends as somebody's quarry, if only the years'. I'd like to go the way I hunted: without fuss and without waste.",
	},
	["cls.hunter.muse.w06.033"] = {
		"The moment it leaves me, the shot belongs to the world. Distance and luck get their say, and I just watch.",
		"Once it's flying, nothing I want matters anymore. That's the honest part of the trade: you can't take it back.",
		"A shot in the air is no longer mine. I've done my part, and now the world does its own.",
	},
	["cls.hunter.muse.w06.034"] = {
		"My eye goes to movement first, then to color, then to shape. Most people do it backwards and see nothing until it's on them.",
		"Stop looking for the thing. Look for whatever moves wrong. That's the first lesson, and I'm still learning it.",
		"A shape can hide. A color can blend. Movement gives everything away, sooner or later, and my eye waits for it.",
	},
	["cls.hunter.muse.w06.035"] = {
		"The wild doesn't owe me a thing. Every meal I take from it is a favor, and I try to remember to be grateful.",
		"Nothing out there was put there for my sake. Whatever I take, I take from something that had its own plans for it.",
	},
	["cls.hunter.muse.w06.036"] = {
		"It isn't the kill I go out for. It's the hour before, when the whole world shrinks to one patch of ground and one breath.",
		"On a good stalk everything else falls away: debts, aches, plans. There's only the next step and the thing at the end of it.",
		"Somewhere in a long stalk the world goes narrow and bright, and I am nothing but eyes and breath. I'd walk a long way for that.",
	},
	["cls.hunter.muse.w06.037"] = {
		"The best hunters I've met were the quietest people in any room. The loud ones I only met once.",
		"Talkers don't last in this trade. Whoever keeps their mouth shut keeps their ears open, and lives.",
	},
	["cls.hunter.muse.w06.038"] = {
		"Want to see the wild? Sit down and stop talking. It'll come to you.",
		"Stop chasing it. Stay quiet long enough and the wild walks right up to see what you are.",
		"The wild isn't shy. It's only waiting for you to stop making a fuss.",
	},
	["cls.hunter.muse.w06.039"] = {
		"Heavy feet are a bell around your neck. Every creature for a hundred paces hears you coming.",
		"Walk as if the ground were asleep and you'd rather not wake it.",
	},
	["cls.hunter.muse.w06.040"] = {
		"People ask if I miss town life out there. I ask which part: the smell or the noise.",
		"Towns are fine places. They just have far too many people in them, all talking at once.",
		"I like towns. I like them best from a hilltop, a long way off.",
	},
	["cls.hunter.muse.w06.041"] = {
		"I can follow a trail for a whole day across bare rock, and I still can't find my other glove.",
		"Give me a cold trail and I'll find the end of it. Give me my own pack and I'm hopeless.",
	},
	["cls.hunter.muse.w06.042"] = {
		"Patience costs less than ammunition and lasts longer. Spend it first.",
		"Before you waste a shot, waste a little time. Time's free, and it often does the job.",
	},
	["cls.hunter.muse.w06.043"] = {
		"I don't hate what I hunt. Hate shakes the hand, and a shaking hand misses.",
		"Anger is for people who fight up close. At range, only a cool head hits anything.",
		"Keep your temper for the tavern. On a hunt it only spoils your aim.",
	},
	["cls.hunter.muse.w06.044"] = {
		"checks the ammunition with a quick hand, weighs what's left, and seems to settle a sum in {g:his|her} head.",
		"counts what remains of the ammunition by touch alone, without once looking down.",
		"runs a thumb over the ammunition, frowns at some private reckoning, and lets it go.",
	},
	["cls.hunter.muse.w06.045"] = {
		"crouches to study a patch of ground, touches it lightly, and rises with a small nod, as if it had answered a question.",
		"drops to one knee, brushes a fingertip across the dirt, and frowns at whatever it says.",
		"bends low over a scuff in the earth, reads it for a long moment, and straightens up without a word.",
	},
	["cls.hunter.muse.w06.046"] = {
		"goes suddenly and completely still, listening, then lets the tension go as whatever it was passes.",
		"holds up a hand for a silence nobody asked for, waits the length of a long breath, then lowers it again.",
	},
	["cls.hunter.muse.w06.047"] = {
		"sniffs the air, frowns, and drifts a few steps sideways for no reason anyone else could name.",
		"tests the air with a long sniff and quietly moves to stand on the other side of everyone.",
	},
	["cls.hunter.muse.w06.048"] = {
		"checks the weapon from end to end with quick, habitual touches, the way someone else might pat their pockets.",
		"sights along the weapon at nothing in particular, lowers it, and nods to {g:himself|herself}.",
		"turns the weapon over in {g:his|her} hands, looking for a fault that isn't there, and seems glad not to find it.",
	},
	["cls.hunter.muse.w06.049"] = {
		"reaches out without looking and finds the companion beast exactly where it ought to be.",
		"glances at the companion beast the way one checks that a door is still bolted, and looks away again.",
	},
	["cls.hunter.muse.w06.050"] = {
		"My companion hears trouble a long breath before I do. I've learned to watch it instead of the trees.",
		"When the beast at my side goes still, I go still. It hasn't been wrong yet, which is more than I can say for me.",
		"Its senses are better than mine in every way that matters. I bring the aim; it brings the warning.",
	},
	["cls.hunter.muse.w06.051"] = {
		"The beast eats before I do. Not out of kindness: a well-fed companion guards my sleep, a hungry one guards its own stomach.",
		"First share to the beast. People take it for sentiment. It's plain sense: it keeps watch while I rest.",
	},
	["cls.hunter.muse.w06.052"] = {
		"My companion doesn't care what anyone in town thinks of me, what I owe, or what I've done. Only whether I come back.",
		"To the beast I'm not a name or a reputation. I'm simply the one who comes back. That's a simpler thing to live up to.",
	},
	["cls.hunter.muse.w06.053"] = {
		"Nothing keeps it with me but its own choice. Every day it stays, I take as an answer.",
		"No chain, no cage. It could walk off whenever it liked, and it doesn't. I try to deserve that.",
		"Taming was never breaking. It was two creatures deciding, warily, to walk the same way for a while.",
	},
	["cls.hunter.muse.w06.054"] = {
		"It's not following me. We just agree on where we're going, most days.",
		"Don't mind the beast. It's decided you're probably not a threat. Probably.",
	},
	["cls.hunter.muse.w06.055"] = {
		"For food, for coin, for whoever asks. Never for the pleasure of it, I tell myself. Some days I'm less sure.",
		"I'd like to say I hunt only from need. But there's a quickening at the start of a trail that has nothing to do with need.",
	},
	["cls.hunter.muse.w06.056"] = {
		"Past the last fence and the last chimney, something in my chest unknots. I've never managed to explain it to anyone who lives inside walls.",
		"There's a point on every road out of town where my shoulders drop. I couldn't tell you where it is. My shoulders always know.",
		"Some people feel at home behind a locked door. Mine has no door; it starts where the road gives out.",
	},
	["cls.hunter.muse.w06.057"] = {
		"Out in the wild I can tell a dozen sounds apart with my eyes closed. In a market, someone shouts my name and I miss it entirely.",
		"I hear a twig shift at fifty paces. A friend calling me across a busy square, never.",
	},
	["cls.hunter.muse.w06.058"] = {
		"Sharp edges, fresh. Crumbling edges, a day old. Water standing in the print, older still. The ground keeps better time than any clock.",
		"A print tells you when as well as who. The sharper the rim, the closer the one who made it.",
		"Leaves pressed into a print came after it; a print over the leaves came after them. The order of things is written right there.",
	},
	["cls.hunter.muse.w06.059"] = {
		"When I feel watched I don't spin around; that's what quarry does. I think where I'd stand if I were the watcher, and look there.",
		"Turning to look is the prey's mistake. I ask myself where the best vantage is, and that's where the eyes will be.",
	},
	["cls.hunter.muse.w06.060"] = {
		"Before there were towns or kings or coin, there was someone crouched in the grass, waiting. I like belonging to something that came before everything else.",
		"Every people of this world hunted before it did anything else. When I take up the weapon, I'm standing at the end of a very long line.",
	},
	["cls.hunter.muse.w06.061"] = {
		"The trainers say to shoot between heartbeats. It sounds like a riddle until the day you feel the gap.",
		"There's a small quiet between one heartbeat and the next. That's where the shot goes.",
	},
	["cls.hunter.muse.w06.062"] = {
		"I have more respect for the predators out there than for most people with weapons. They take what they need and stop.",
		"A predator never kills for the story it'll tell later. I try to remember that when I'm tempted to boast.",
		"The wild's hunters don't waste and don't brag. On my good days I manage one of the two.",
	},
	["cls.hunter.muse.w06.063"] = {
		"When I leave a place I try to leave it as I found it. The next one to pass should have to look hard to know I was there.",
		"Bury the ashes, scatter the bedding, smooth the ground. A camp should vanish behind me like a held breath let go.",
	},
	["cls.hunter.muse.w06.064"] = {
		"Standing at the back of a fight teaches you people. You see who flinches, who charges, and who keeps glancing round to check on the others.",
		"From my place in a scrap, behind everyone, I learn more about the people in front of me than they'd ever tell me.",
		"Whoever fights up front sees the enemy. Whoever shoots from behind sees everybody.",
	},
	["cls.hunter.muse.w06.065"] = {
		"I keep no trophies. What was worth remembering, I remember, and the rest would only gather dust on a wall.",
		"Some hunters hang heads on walls. I'd rather carry the day itself around with me, and it weighs nothing.",
		"A trophy only proves that it went well once. The skill doesn't hang on a wall.",
	},
	["cls.hunter.muse.w06.066"] = {
		"picks a spiny seed off {g:his|her} sleeve, studies it, and glances off in the direction it must have come from.",
		"notices a smear of mud on {g:his|her} boot, frowns at it as if it had told an interesting lie, and scrapes it off.",
	},
	["cls.hunter.muse.w06.067"] = {
		"picks a spot with something solid at {g:his|her} back and a clear view ahead before settling, out of a habit older than thought.",
		"takes in every way into and out of the place with one unhurried glance.",
		"shifts a pace to the left for a better line of sight, and only then seems able to relax.",
	},
	["cls.hunter.muse.w06.068"] = {
		"I measure everything in paces without meaning to: a hall, a market, the distance to the nearest cover.",
		"Thirty paces, forty, sixty. My head turns every room and road into a range, whether I ask it to or not.",
	},
	["cls.hunter.muse.w06.069"] = {
		"However quietly a shot is taken, the world hears it. Everything for a long way around goes still afterward, and remembers.",
		"One shot and the whole hillside learns there's a hunter on it. That's the real cost of a miss: not the ammunition, the warning.",
	},
	["cls.hunter.muse.w06.070"] = {
		"Even idle, I'm picking targets: a knot in a post, a sign over a door, a pebble on a wall. In my head they've all been hit a hundred times.",
		"My eyes keep practicing while my hands are busy with something else. Every mark I pass, I've already taken.",
	},
	["cls.hunter.muse.w06.071"] = {
		"Anyone walking with me learns the rules fast. No humming, no rattling, and no asking if we're nearly there.",
		"Company's welcome. Noise isn't. Those are the only terms.",
	},
	["cls.hunter.muse.w06.072"] = {
		"Weapon oil, waxed cord, the faint bite of powder: those smells settle me the way a hearth settles other people.",
		"Some people unwind with a pipe or a song. I sit and tend my weapon, and the smell of the oil does the rest.",
	},
	["cls.hunter.muse.w06.073"] = {
		"Hunters go out and some don't come back. Nobody makes songs about it. The wild has no use for songs.",
		"A trail goes out, and sometimes no one walks it home. The wild keeps what it takes and tells no one.",
	},
	["cls.hunter.muse.w06.074"] = {
		"I can make ready in the dark, by feel alone. I practiced until my hands stopped needing my eyes.",
		"Loading or nocking, it's all in the fingers now. My eyes stay free for the only thing that matters: where the shot will go.",
		"Hands that need watching are slow hands. Mine learned to work on their own, so my eyes can stay on the quarry.",
	},
	["cls.hunter.pet_bond.w06.001"] = {
		"{pet} has learned my step from everyone else's. I've only just noticed, and it pleases me more than it should.",
		"{pet} waits at the fork now to see which way I'll take. A small thing. Not small.",
		"We have habits now, {pet} and I. Habits are where a bond starts.",
	},
	["cls.hunter.pet_call.w06.001"] = {
		"{pet} arrives at a trot and bumps my hand. Fine, fine, I'm glad too.",
		"{pet} is here, and the day already looks less like work.",
	},
	["cls.hunter.pet_call.w06.002"] = {
		"Two of us again. The count I prefer.",
		"{pet} beside me, and the odds look kinder.",
	},
	["cls.hunter.pet_call.w06.003"] = {
		"{pet} checks the air, checks the ground, checks my pockets. In that order, at least.",
		"{pet} arrives and goes straight for my belt pouch, looking for something to chew. Priorities.",
	},
	["cls.hunter.pet_call.w06.004"] = {
		"With {pet} out, I have eyes behind me. That changes how I walk.",
		"{pet} takes the ground up close. I take the distance. That's how we work.",
	},
	["cls.hunter.pet_call.w06.005"] = {
		"With no one around, I talk to myself. With {pet} here, at least someone pretends to listen.",
		"The silence had gone on long enough. {pet} breaks it just by breathing beside me.",
	},
	["cls.hunter.pet_call.w06.006"] = {
		"{pet} still flinches when I move too fast. We'll get there.",
		"{pet} keeps a careful step away from me. Trust is a trail, not a door.",
	},
	["cls.hunter.pet_call.w06.007"] = {
		"{pet} has started choosing the same side of me every time. The left. I've stopped arguing.",
		"{pet} answers the call now, nearly always. Nearly is a good word for where we are.",
	},
	["cls.hunter.pet_call.w06.008"] = {
		"I don't need to look to know where {pet} is. I hear the steps, and they're the right ones.",
		"{pet} and I have hunted enough to share the pauses as well as the chases.",
	},
	["cls.hunter.pet_call.w06.009"] = {
		"{pet}. I'd know that weight against my knee with my eyes shut.",
		"Together again. Whatever the road was without {pet}, it was only half a road.",
	},
	["cls.hunter.pet_call.w06.010"] = {
		"{pet} drags itself over like a hired hand who hasn't been paid. Fair. I'll fix that.",
		"{pet} sits down at a distance and waits for me to make amends.",
	},
	["cls.hunter.pet_call.w06.011"] = {
		"{pet} bounds in so pleased with itself that I wonder what it got up to while it was away.",
		"{pet} has energy to spare today. I'll try not to fall behind.",
	},
	["cls.hunter.pet_call.w06.012"] = {
		"Hunter and beast, the oldest partnership there is. {pet} seems to know it better than any book.",
		"Before there were cities, there was this: someone with a weapon and an animal at their side. {pet} and I keep the custom.",
	},
	["cls.hunter.pet_call.w06.013"] = {
		"{pet} stretches, yawns, and makes it very clear it was in the middle of something.",
		"I interrupt whatever beasts do when I'm not looking, and {pet} forgives me. Mostly.",
	},
	["cls.hunter.pet_call.w06.014"] = {
		"My job is to keep {pet} fed and whole. Its job is everything else. I think I got the easy half.",
		"{pet} is my responsibility as much as the weapon I carry. More, some days.",
	},
	["cls.hunter.pet_call.w06.015"] = {
		"Somehow {pet} always arrives looking as if it were the one who called me.",
		"{pet} makes an entrance. I only opened the door.",
	},
	["cls.hunter.pet_call.w06.016"] = {
		"The rest is over and {pet} is here. It has done its part; now for mine.",
		"{pet} ready, me ready. The rest is just walking.",
	},
	["cls.hunter.pet_call.w06.017"] = {
		"Stay close, {pet}. Wander off and I'll come find you, and neither of us will enjoy it.",
		"Heel, {pet}. We do this together or not at all.",
	},
	["cls.hunter.pet_dismiss.w06.001"] = {
		"Go and do whatever you do, {pet}. Chase something small for me.",
		"Take the time off, {pet}. You've earned a stretch without me.",
	},
	["cls.hunter.pet_dismiss.w06.002"] = {
		"Without {pet}, the sounds around me rearrange themselves. I'm the loudest thing nearby again.",
		"One set of footsteps now. My ears take a while to believe it.",
	},
	["cls.hunter.pet_dismiss.w06.003"] = {
		"{pet} goes. Both eyes open now: no one is watching my back but me.",
		"Back to doing the listening myself. {pet} made it easy to forget how.",
	},
	["cls.hunter.pet_dismiss.w06.004"] = {
		"{pet} leaves with dignity, which is more than I manage most days.",
		"{pet} doesn't argue. A rare quality in any companion.",
	},
	["cls.hunter.pet_dismiss.w06.005"] = {
		"Off you go, {pet}. Next time we'll know each other a little better.",
		"Rest, {pet}. We're still strangers, but less than before.",
	},
	["cls.hunter.pet_dismiss.w06.006"] = {
		"I let {pet} go, and my hand reaches for its head anyway, out of habit.",
		"Odd, how quickly I start missing {pet}. A few steps, and there it is.",
	},
	["cls.hunter.pet_dismiss.w06.007"] = {
		"Rest up, {pet}. The next fight is coming whether we like it or not.",
		"Go lick your wounds, {pet}, if you've got any. I'll see to mine.",
	},
	["cls.hunter.pet_grief.w06.001"] = {
		"I keep my hand on {pet} longer than there's any reason to.",
		"{pet} fought for me to the end. I'll carry that, with the rest.",
		"Easy, {pet}. I'm here.",
	},
	["cls.hunter.pet_grief.w06.002"] = {
		"Between me and the blow there was {pet}. It always chose that place, and it chose it again.",
		"The hunter's oldest debt: the beast that takes the hurt meant for its keeper. I owe you, {pet}.",
	},
	["cls.hunter.pet_mood.w06.001"] = {
		"{pet} is practically prancing. Whatever I did right, I'd like to remember it.",
		"There's a spring in the step of {pet}. Good food, good hunting: it doesn't take much.",
	},
	["cls.hunter.pet_mood.w06.002"] = {
		"{pet} is neither hungry nor fussing. That's the mood I like best on a long road.",
		"A calm has come over {pet}. Good: that's a beast that trusts its next meal.",
	},
	["cls.hunter.pet_mood.w06.003"] = {
		"{pet} won't meet my eye. I've let things slide, and it has every right to sulk.",
		"A sour look from {pet}. Feed first, hunt later; the order matters.",
	},
	["cls.hunter.pet_mood.w06.004"] = {
		"{pet} growls at me, or does whatever counts as growling for its kind. Message received.",
		"If {pet} could file a complaint, I'd be reading it now.",
	},
	["cls.hunter.pet_mood.w06.005"] = {
		"{pet} looks well. That's my work too, and I'm quietly proud of it.",
		"A happy beast hunts better. {pet} is about to prove it.",
	},
	["cls.hunter.pray.w06.001"] = {
		"Whatever watches over the wild: keep my aim true and my hunger honest, and let nothing I take go to waste.",
		"Spirits of the wild, or whatever answers to that name: a clean shot when it matters, and the sense to hold it when it doesn't.",
	},
	["cls.hunter.quest_complete.w06.001"] = {
		"That's settled. Now, where's the nearest place that sells ammunition?",
		"Whatever this brings in goes straight to ammunition, same as always.",
		"Good. That should keep me in ammunition a little longer.",
	},
	["cls.hunter.quest_complete.w06.002"] = {
		"Thanks, a nod, and then the open road again. It's the road I was waiting for.",
		"Grateful faces are nice. The open ground afterward is nicer.",
		"Kind words, and I mean to keep them. But my eyes are already on the way out to the wild.",
	},
	["cls.hunter.quest_complete.w06.003"] = {
		"They never ask how long I waited. Just whether it's done. That's fair; the waiting was my part.",
		"Nobody wants to hear about the hours of patience behind it. They want the result, and now they have it.",
		"The result is what they see. The patience behind it stays with me, where it belongs.",
	},
	["cls.hunter.quest_complete.w06.004"] = {
		"listens politely to the thanks, but one ear stays pricked toward the world outside.",
		"stows the reward with the care of someone who knows exactly what it will be spent on.",
		"rolls {g:his|her} shoulders like someone setting down a weight that was never on the back.",
	},
	["cls.hunter.quest_complete.w06.005"] = {
		"Easier than tracking, this part. The people who ask are a lot easier to find.",
		"Handed in. Next time, give me something with a bit more running in it.",
		"That one never even tried to get away. I almost miss the chase.",
	},
	["cls.hunter.quest_complete.w06.006"] = {
		"That's one less person waiting on me. I travel lighter owing nothing.",
		"One more thing off my mind. A clear head shoots straighter.",
		"Nothing left hanging. Loose ends snag on everything, out on the trail.",
	},
	["cls.hunter.quest_complete.w06.007"] = {
		"My companion waited through all of it without a single complaint. Better behaved than I was.",
		"The beast is already looking toward the road. On this, as on most things, we agree.",
		"The job's over, and the beast knows it before I say a word. It always does.",
	},
	["cls.hunter.quest_complete.w06.008"] = {
		"People reward me for doing what the wild does every day for free: find, follow, finish. Strange world.",
		"In the wild nobody hands out rewards for a job done well. Here, somebody does. I'll never quite get used to it.",
	},
	["cls.hunter.quest_complete.w06.009"] = {
		"There. Next time you need something found, you know who to ask.",
		"That's taken care of, then. If anything else needs tracking down, I'm not hard to find.",
		"Anything else gone missing, send for me. Finding things is what I do.",
	},
	["cls.hunter.quest_complete.w06.010"] = {
		"Every task teaches me the land a little better: a path I hadn't walked, a stream I hadn't seen. That's the part they don't pay for.",
		"Whatever they wanted, I learned the ground on the way. That I keep, whatever becomes of the reward.",
	},
	["cls.hunter.quest_complete.w06.011"] = {
		"Asked and answered. Point me at the next one.",
		"That's that. If there's more to hunt, I'm listening.",
		"Over and done. What else is out there?",
	},
	["cls.hunter.quest_complete.w06.012"] = {
		"glances at {g:his|her} hands as if surprised they spent so long on something other than the weapon.",
		"unclenches {g:his|her} jaw at last, as near to a sigh of relief as that face ever gets.",
		"tugs a glove straight, finger by finger, the way some people close a book.",
	},
	["cls.hunter.quest_complete.w06.013"] = {
		"Somebody's day is a little easier now. I won't see it, I'll be long gone, but it's a good thought to walk with.",
		"Whatever it was, it mattered to someone. I don't need to understand why to know it was worth the walk.",
		"Small things, mostly, these errands. But a small thing set right can let someone sleep.",
	},
	["cls.hunter.quest_complete.w06.014"] = {
		"They always say it'll be simple. They're never the ones out there doing it.",
		"'A simple job' is what everyone calls work they'd rather not do themselves.",
		"Simple, they called it. Everything's simple from behind a counter.",
	},
	["cls.hunter.quest_complete.w06.015"] = {
		"Promise made, promise kept. The wild doesn't care about either, but I do.",
		"I said I would, and I did. That's most of what I have to offer anyone.",
		"My word went out ahead of me, and now I've caught up with it. A good feeling, that.",
	},
	["cls.hunter.quest_complete.w06.016"] = {
		"Good. Now if you'll excuse me, the wild doesn't wait, and neither do I.",
		"Lovely. Don't take it personally if I leave rather quickly.",
		"Glad to help. Now I'll go back to being hard to find, if that's all right.",
	},
	["cls.hunter.quest_complete.w06.017"] = {
		"Another task finished, another bit of trust earned. Trust is worth more than any reward they put in my hand.",
		"They'll know my face now. In this world, that opens more doors than coin does.",
	},
	["cls.hunter.quest_complete.w06.018"] = {
		"rests a hand on the companion beast for a moment, sharing the end of the job the only way it understands.",
		"trades a look with the companion beast that says, plainly, 'let's go'.",
	},
	["cls.hunter.quest_complete.w06.019"] = {
		"My legs know better than I do how far this one took me. They'll be telling me about it for a while.",
		"However long it took, my feet kept count. Time to rest them, and then more road.",
		"That one cost me some boot leather. Worth it, I suppose. My heels may disagree.",
	},
	["cls.hunter.quest_complete.w06.020"] = {
		"Good. That earns me a proper meal and a rest. Well, a meal.",
		"That'll do nicely. Something hot to eat, somewhere dry to sleep, and I'm off again.",
	},
	["cls.hunter.quest_complete.w06.021"] = {
		"Whoever asked will forget my name by next season. The ground I crossed won't remember me either. That suits me.",
		"Nobody will tell this one by the fire. Most of the work worth doing goes unsung.",
		"No songs for errands like this. Just a job done and a hunter walking off. I've made my peace with that.",
	},
	["cls.hunter.quest_complete.w06.022"] = {
		"accepts the thanks with patience, the same patience {g:he|she} would spend waiting by a waterhole.",
		"is already tightening a strap and settling the weapon on {g:his|her} back before the last word of thanks is out.",
	},
	["cls.hunter.quest_complete.w06.023"] = {
		"I don't need the praise. I need to know it's really finished, and it is. That's enough.",
		"No loose threads. A hunt left half-done follows you around; this one won't.",
	},
	["cls.hunter.quest_progress.w06.001"] = {
		"Part of it. The rest is out there somewhere, leaving signs for anyone who bothers to look.",
		"Not all of it yet. Fine; the trail hasn't gone cold.",
		"One piece found. Whatever's left can't be far; things that belong together rarely are.",
	},
	["cls.hunter.quest_progress.w06.002"] = {
		"makes a small mark of progress in {g:his|her} head and turns back to the search without a pause.",
		"nods to {g:himself|herself}, counts what's still missing, and carries on.",
	},
	["cls.hunter.quest_progress.w06.003"] = {
		"That's everything. Now the easy part: walking back without tripping over my own pride.",
		"All of it, at last. The way back is a trail I already know.",
		"Complete. Time to carry it to whoever's waiting.",
	},
	["cls.hunter.quest_progress.w06.004"] = {
		"Halfway, or near enough. Patience. I've waited longer for less.",
		"Some of it. The rest is hiding. It won't hide forever.",
	},
	["cls.hunter.reputation_change.w06.001"] = {
		"They're starting to trust me. Like a wary animal, trust creeps closer in small, careful steps.",
		"They greet me a shade warmer now. Earning the trust of shy creatures is half my trade; people aren't so different.",
		"They've stopped watching me sideways. Patience works on people too, given long enough.",
	},
	["cls.hunter.rez.w06.001"] = {
		"The wild didn't pause for my death, not for a moment. It never does. Time I caught up with it.",
		"Cold to the bone and stiff as old leather. Whatever put me down will be surprised to see me. Good.",
	},
	["cls.hunter.rezother.w06.001"] = {
		"Up. On your feet. You don't get to leave before me.",
		"Come on, get up. I'm not done walking with you.",
		"Back from the dark, then. Shake it off, we've got ground to cover.",
	},
	["cls.hunter.rezother.w06.002"] = {
		"My hand on the still flank until I feel a stir. Only then do I let myself breathe.",
		"It moves under my hand, and the knot in my chest comes loose.",
	},
	["cls.hunter.thanks.w06.001"] = {
		"Thank you. I'll repay it the way I know how: with a good shot when you need one.",
		"My thanks. If anything ever stalks you, send for me. Hunting the hunters is something I'm good at.",
	},
	["cls.hunter.thanks.w06.002"] = {
		"Thanks. I'm better with beasts than with words, so that'll have to do.",
		"Much obliged. That's most of the talking I'll manage today.",
	},
	["cls.hunter.threat.w06.001"] = {
		"Walk away. I can hit you long before you can reach me, and I won't miss twice.",
		"Every step closer is one more chance for me to stop you. You'll run out of steps.",
		"Turn back the way you came. My aim reaches further than you'd think.",
	},
	["cls.hunter.threat.w06.002"] = {
		"I've tracked bigger and meaner than you. Don't make me add you to the list.",
		"I know how to follow a trail for days. Think about that before you start something.",
		"Run, and I'll follow your tracks. Hide, and I'll read where you went to ground.",
	},
	["cls.hunter.threat.w06.003"] = {
		"One more word, and I stop holding my companion back.",
		"My friend here has been patient. I'm not sure how much longer that will last.",
	},
	["cls.hunter.threat.w06.004"] = {
		"You'd make a lovely target. Don't take that as a compliment.",
		"From here you're just about the size of a good shot. Just saying.",
		"You're standing exactly where I'd want you. Maybe move?",
	},
	["cls.hunter.threat.w06.005"] = {
		"readies a shot without once breaking eye contact.",
		"lets the weapon rise an inch, no more, and waits to see whether that is enough.",
	},
	["cls.hunter.victory.w06.001"] = {
		"runs a thumb over the ammunition left, counting without seeming to.",
		"checks how much ammunition remains, and pulls a face at the answer.",
		"tallies the shots spent with a glance at the pouch, lips moving silently.",
	},
	["cls.hunter.victory.w06.002"] = {
		"That one cost me more ammunition than it was worth.",
		"Expensive, that. Next time I'll ask the price first.",
		"There goes a handful of ammunition I'll never see again.",
	},
	["cls.hunter.victory.w06.003"] = {
		"Each fight teaches me the distance a little better. That one had a lesson in it too.",
		"There's a lesson about range hidden in that fight. I'll dig it out on the walk.",
		"Range, timing, footing. I'll go over all three later, slowly, while it's still fresh.",
	},
	["cls.hunter.victory.w06.004"] = {
		"Someone should have seen that last shot. Pity.",
		"Clean through. I ought to be keeping a tally of these.",
		"That last one was a beauty. I'd frame it if I could.",
	},
	["cls.hunter.victory.w06.005"] = {
		"crouches where the foe fell and studies the marks left in the ground, as if reading a last letter.",
		"kneels a moment by the fallen foe, reading the scuffs and prints of the fight as if they might teach something.",
	},
	["cls.hunter.victory.w06.006"] = {
		"You'd have done better to run when you first saw me.",
		"Running would've been smarter. I'd still have caught you, but smarter.",
		"Next time, bolt the moment you spot me. It won't help, but it's better form.",
	},
	["cls.hunter.victory.w06.007"] = {
		"There's a den or a nest somewhere this one won't go back to. I try not to think about it, and I do.",
		"It had a range and a trail of its own, the same as me. Now there's one fewer out there.",
	},
	["cls.hunter.victory.w06.008"] = {
		"Good animal. I'll see none of it goes to waste.",
		"A fine creature. If there had been another way, I'd have taken it.",
	},
	["cls.hunter.victory.w06.009"] = {
		"You fought the way you walk: loud and easy to read.",
		"Heavy feet, loud breathing, wide swings. You were never going to surprise me.",
	},
	["cls.hunter.victory.w06.010"] = {
		"drops a hand onto the companion's back for a moment, a silent word of thanks.",
		"gives the beast a pat and a low word, and for a while they simply get their breath back together.",
		"crouches to look the companion over for wounds before so much as glancing at the fallen foe.",
	},
	["cls.hunter.victory.w06.011"] = {
		"You held that one perfectly. Half the shots were yours, really.",
		"All right, show-off. Yes, you did very well.",
		"You kept it off me the whole time. Don't think I didn't notice.",
	},
	["cls.hunter.victory.w06.012"] = {
		"It took a few blows meant for me. Food for it first, then for me.",
		"First thing: see how it's doing. It always takes the hits that were mine.",
	},
	["cls.hunter.victory.w06.013"] = {
		"Your share's coming, don't look at me like that.",
		"Yes, yes, you'll get fed. Let me catch my breath first.",
	},
	["cls.hunter.victory.w06.014"] = {
		"Before anyone asks: no, I don't need every weapon that drops. Just most of them.",
		"If it dropped something sharp, I'll only look. I swear it on my aim.",
	},
	["cls.hunter.victory.w06.015"] = {
		"Good holding up front. All I had to do was not miss.",
		"You kept it busy, I kept the shots coming. Fair split.",
	},
	["cls.hunter.victory.w06.016"] = {
		"slings the weapon back into place with a practiced roll of the shoulder.",
		"lets the weapon hang loose at {g:his|her} side and flexes the fingers that held it.",
		"settles the weapon across {g:his|her} back and stretches until something in the shoulder pops.",
	},
	["cls.hunter.victory.w06.017"] = {
		"My hands are steadier during the fight than after. Funny how that works.",
		"Now the shaking comes. Never while aiming, always once it's done.",
		"Steady as a post through every shot, and now my fingers won't keep still.",
	},
	["cls.hunter.victory.w06.018"] = {
		"That's done. The next trail won't follow itself.",
		"Done here. There's always another set of tracks.",
		"Finished. Somewhere ahead, something else is leaving prints for me.",
	},
	["cls.hunter.victory.w06.019"] = {
		"I hesitated once in there. Only once, but I felt it.",
		"One shot came late. I know which one. Fix it before the next hunt.",
		"My feet were wrong for a moment in the middle. A small thing. Small things get hunters killed.",
	},
	["cls.hunter.victory.w06.020"] = {
		"That's what happens when you step into my sights.",
		"Getting into my aim is easy. Getting out of it, never.",
		"You wandered into my line of sight. That was the whole mistake.",
	},
	["cls.hunter.victory.w06.021"] = {
		"wipes a sleeve across {g:his|her} brow and squints into the distance, already looking for the next sign.",
		"draws the back of a wrist across {g:his|her} forehead and turns to look for tracks.",
		"straightens up, rolls {g:his|her} neck once, and starts reading the ground for what comes next.",
	},
	["cls.hunter.victory.w06.022"] = {
		"It's work. Good work, honest work. I tell myself that every time, and most times I believe it.",
		"A hunter kills to eat, or to keep others safe. I'm fairly sure this was one of those.",
		"Needful. That's the word I use. It sits better some days than others.",
	},
	["cls.hunter.victory.w06.023"] = {
		"Not a scratch on me. Well. Not a big one.",
		"I'll call that a good hunt. Nobody needs to hear about the near miss.",
		"Clean work, if you don't count the bit where I nearly tripped.",
	},
	["cls.hunter.victory.w06.024"] = {
		"The kill is the smallest part of a hunt. The waiting before and the quiet after are most of it.",
		"Most of hunting is patience. The end comes quick, and then it's patience again.",
		"A long wait, a short moment, a long quiet. Every hunt has the same shape.",
	},
	["cls.hunter.victory.w06.025"] = {
		"Whatever's next, I'd like it at a civil distance. Forty paces would do.",
		"Next time, a polite distance, please. That's all I ask of anything.",
		"A fight at forty paces is a conversation. Any closer is just rude.",
	},
	["cls.hunter.victory.w06.026"] = {
		"turns the weapon over in {g:his|her} hands, checking it for any harm the fight might have done.",
		"runs a careful eye along the weapon, the way some people look a friend over for wounds.",
		"sights down the weapon at nothing in particular, making sure it still shoots where it looks.",
	},
	["cls.hunter.victory.w06.027"] = {
		"That was a big one. I'm allowed to be a little pleased.",
		"Took its time falling, that one. Worth every shot.",
	},
	["cls.hunter.victory.w06.028"] = {
		"It was stronger than me. Distance and patience made up the difference. Remember that.",
		"By rights that one outmatched me. Rights count for little against a good line of fire.",
	},
	["cls.hunter.victory.w06.029"] = {
		"Stay down this time. Whoever raised you can do their own hunting.",
		"Back into the earth with you. It's where you belong.",
	},
	["cls.hunter.victory.w06.030"] = {
		"Quick and clean. I owe that much to anything I hunt.",
		"Never more pain than the hunt needs. That rule I don't bend.",
		"Swift, and no crueler than it had to be. That's the only way I'll do this.",
	},
	["cls.hunter.victory.w06.031"] = {
		"Nobody to tell. The wild saw it, and the wild doesn't gossip.",
		"Only me to know how well that went. That's enough.",
	},
	["cls.hunter.victory.w06.032"] = {
		"lifts {g:his|her} face to the air and breathes in slowly, reading what else might be close.",
		"tests the air with a long breath, as if the next danger could be smelled before it was seen.",
		"stands with nostrils flared a moment, sorting the smells the fight stirred up from the ones that were there before.",
	},
	["cls.hunter.victory.w06.033"] = {
		"My heart's still racing. That's the part I'd never admit to enjoying.",
		"Still buzzing all the way to the fingertips. A good hunt does that.",
		"Every sense still wide open. It takes a while to close them again, and I'm in no hurry.",
	},
	["cls.hunter.victory.w06.034"] = {
		"Down. Good. Now, which way was I going?",
		"There. Back to the tracking.",
		"Right. Where was I? Ah, yes. Following something.",
	},
	["cls.hunter.victory.w06.035"] = {
		"Shoulders down. Jaw loose. It's over; let the body hear it.",
		"Unclench. Every bit of me is still braced for the next shot.",
		"I'm still holding my breath. Let it go. There.",
	},
	["cls.hunter.victory.w06.036"] = {
		"I'd like to thank my weapon, my eye, and that one lucky shot.",
		"Credit goes to steady hands and a forgiving target.",
		"Honestly? Half skill, half the foe being terrible at dodging.",
	},
	["cls.mage.attack.w06.001"] = {
		"Raw arcane. No flavor, all force.",
		"Pure craft, nothing added.",
		"Straight from the source.",
	},
	["cls.mage.attack.w06.002"] = {
		"Let it catch. Fire knows the rest.",
		"Lit. Now keep the pressure on.",
	},
	["cls.mage.attack.w06.003"] = {
		"lets the cold gather in {g:his|her} palms until the air itself turns white, then releases it.",
		"sends the cold out with a short, flat gesture, like closing a drawer.",
	},
	["cls.mage.attack.w06.004"] = {
		"And another. I have a whole syllabus.",
		"Next formula. Try to keep up.",
		"Page two of the lesson.",
	},
	["cls.mage.attack.w06.005"] = {
		"Cast, step, cast. Never stand where the last spell left me.",
		"Mana spent, mana counted. On to the next.",
	},
	["cls.mage.battle.w06.001"] = {
		"Robes, a book and a bad temper. You picked the wrong traveler.",
		"Yes, it's only cloth. No, that won't help you as much as you think.",
		"I know how this looks: a robe and no armor. Look again in a moment.",
	},
	["cls.mage.battle.w06.002"] = {
		"Check the reserve. Whatever's in the well, a cool head makes it last.",
		"Mana before anything. I can see the enemy; the reserve I have to feel.",
		"A spell half-cast is mana thrown away. Finish what I start.",
	},
	["cls.mage.battle.w06.003"] = {
		"Fire, I think. Today I'm in no mood for subtle.",
		"Let's skip the delicate formulas. Today calls for something that burns.",
		"Something with flame in it, I think. It suits my mood.",
	},
	["cls.mage.battle.w06.004"] = {
		"Frost, I think. You have the look of something that should slow down.",
		"I'll go cold on this one. Everything is easier to argue with when it moves slowly.",
		"Cold, then. Let's take the hurry out of you.",
	},
	["cls.mage.battle.w06.005"] = {
		"No fire, no frost this time. Just the arcane, plain and unvarnished.",
		"Let's do this in raw arcane. It's rude, but it's honest.",
		"Neither hot nor cold today. Just the force underneath both.",
	},
	["cls.mage.battle.w06.006"] = {
		"If it closes in: the nova, three steps back, then begin again. Simple. Remember it's simple.",
		"Let it come. Ice underfoot, and I'm already walking away.",
		"The plan: freeze the ground, open the distance, cast from there. No improvising until the plan fails.",
	},
	["cls.mage.battle.w06.007"] = {
		"Go on, close the gap. I'll just put it back.",
		"Charge if you like. I'll be somewhere else by the time you arrive.",
	},
	["cls.mage.battle.w06.008"] = {
		"draws a quick sigil in the air with two fingers, and it hangs there glowing for a heartbeat before fading.",
		"tugs both sleeves back past the wrists, the way a scribe does before a long page.",
		"opens one hand, and something gathers in the palm that has not yet decided whether to be flame or frost.",
	},
	["cls.mage.battle.w06.009"] = {
		"Plate would have been kinder to you. Cloth hits back harder.",
		"The robe fools everyone. Every single time.",
		"You've mistaken soft cloth for a soft target. Common error.",
	},
	["cls.mage.battle.w06.010"] = {
		"One solid blow would fold me in half. So no solid blows. That's the entire strategy.",
		"Cloth stops nothing. Every plan I make starts from that.",
		"Next to a warrior I'm made of paper. Paper that burns other things, but still paper.",
	},
	["cls.mage.battle.w06.011"] = {
		"Last chance to stay on two legs. After that, I make no promises about the number.",
		"You could leave as you are, or leave as livestock. Choose, but briefly.",
	},
	["cls.mage.battle.w06.012"] = {
		"Easy now. I can make you something with much less bite.",
		"All this fuss. A sheep makes no fuss at all. Think it over.",
	},
	["cls.mage.battle.w06.013"] = {
		"Front line, keep the enemy busy. From back here, I'll close the matter.",
		"Hold its eyes on you a moment. I'll see that the moment is short.",
	},
	["cls.mage.battle.w06.014"] = {
		"The mana is a purse, not a river. Spend it like it has a bottom, because it does.",
		"Save the costly formulas for the moment they'll actually end something.",
	},
	["cls.mage.battle.w06.015"] = {
		"Let's find out what you're made of. I mean that rather literally.",
		"Hold still. I'd like a closer look at your composition. From a sensible distance.",
		"Curious. Let's take a closer look, from exactly where I'm standing.",
	},
	["cls.mage.battle.w06.016"] = {
		"A real opponent. Good: every formula I know, in the proper order.",
		"Strong one. Fine. I'll need everything, and I'll need it in sequence.",
	},
	["cls.mage.battle.w06.017"] = {
		"Probably too much for me. So I'll need my head more than my luck.",
		"Above my weight. Keep the distance, waste nothing, and leave the moment it turns.",
	},
	["cls.mage.battle.w06.018"] = {
		"First chapter material. I'll keep it short.",
		"You'd barely fill a footnote. Let's not make this a long one.",
	},
	["cls.mage.battle.w06.019"] = {
		"Dead already, and still up and about. Let me fix the second part.",
		"Whoever brought you back did sloppy work. I'll correct it.",
	},
	["cls.mage.battle.w06.020"] = {
		"An elemental. You're nothing but magic holding a shape. So am I, on a good day.",
		"Raw element, badly bound. I could almost admire the work, if it weren't trying to kill me.",
	},
	["cls.mage.battle.w06.021"] = {
		"Gears and rivets. No mind to confuse, then. Just heat, cold and patience.",
		"A machine. Metal goes brittle in the cold, and it hates sudden heat. I happen to carry both.",
	},
	["cls.mage.battle.w06.022"] = {
		"A demon. I know the sort of caster who calls your kind up. I'm the other sort.",
		"All that fury. Unpleasant, but even you obey the laws of magic.",
	},
	["cls.mage.battle.w06.023"] = {
		"lets the cold gather around {g:his|her} fingers until frost feathers the cuffs of the robe.",
		"rolls a small coal of fire idly across {g:his|her} knuckles, the way others crack their joints.",
		"squares {g:his|her} feet, finds the distance with a glance, and lifts one hand as if asking a question.",
	},
	["cls.mage.battle.w06.024"] = {
		"Fire is quicker. Frost is safer. Arcane is louder. Choose, and stop admiring the choice.",
		"Which school today? The one that ends it before it reaches me.",
		"Pick a school and commit. Dithering is how mages get bitten.",
	},
	["cls.mage.battle.w06.025"] = {
		"Please keep back. I'm told I'm dangerous when crowded.",
		"Personal space, if you don't mind. Things near me tend to catch fire.",
		"Stay over there. It's healthier for you.",
	},
	["cls.mage.battle.w06.026"] = {
		"I didn't come out from behind the books to run from the first thing with an opinion.",
		"Plenty of things out here would like to see a scholar fall. Not today.",
		"I may look like I belong in a library. I belong here too.",
	},
	["cls.mage.battle.w06.027"] = {
		"The old masters warn that the arcane feels best when you need it most. They mean it as a warning.",
		"Draw only what this needs. The rest of the power can wait outside, however it knocks.",
		"Careful. The power is cheap now and expensive later.",
	},
	["cls.mage.battle.w06.028"] = {
		"Ten paces, please. I do my best work at the length of a lecture hall.",
		"The perfect range is about where you're standing. Don't ruin it.",
		"Closer is worse for both of us. Mostly for you.",
	},
	["cls.mage.battle.w06.029"] = {
		"I'll give you one warning, which is one more than the fire will.",
		"Turn around now. Once I start, the formula finishes itself.",
		"I'd rather not. You're making me.",
	},
	["cls.mage.battle.w06.030"] = {
		"pushes the sleeves up, glances at the enemy, and sighs like a tutor handed a very poor essay.",
		"marks the distance to the foe with a small, precise nod, as though checking a figure in a ledger.",
	},
	["cls.mage.battle.w06.031"] = {
		"One spark, well placed, settles most arguments. Let's see if you're the exception.",
		"Today I'm in the mood for fire. You'll enjoy it less than I will.",
		"A small flame first. I can always make it larger.",
	},
	["cls.mage.battle.w06.032"] = {
		"Slow the foe, widen the gap, then the heavy work. In that order, even when it's frightening.",
		"Three things to watch: the distance, the mana, and whatever it does next.",
		"Mind the ground behind me. Every step back has to land somewhere.",
	},
	["cls.mage.battle.w06.033"] = {
		"Before we start: I accept no responsibility for scorching, frostbite, or sudden surprise.",
		"Fair warning: my results are excellent and my manners are terrible.",
		"Any complaints may be submitted in writing. Afterward.",
	},
	["cls.mage.battle.w06.034"] = {
		"You can see the robe. You know exactly what's coming. Run, if you're wise.",
		"No duel rules out here. No one calls time, and I don't stop at first touch.",
	},
	["cls.mage.battle.w06.035"] = {
		"If the well runs dry, Evocation can fill it again. Better not to need it in the middle of this.",
		"Mana Shield if it gets close, Evocation if it drags on. I hope it does neither.",
	},
	["cls.mage.battle.w06.036"] = {
		"Ever fought a mage before? It's a brief education.",
		"First time against someone like me? I'll keep the lesson short and memorable.",
	},
	["cls.mage.battle.w06.037"] = {
		"Steady hands. Clean syllables. The rest follows.",
		"Speak it clearly. A mumbled formula is how apprentices end up in the infirmary.",
	},
	["cls.mage.battle.w06.038"] = {
		"No armor, no shield, just what I've learned. It's more than enough.",
		"Everything I carry is in my head. Try taking that from me.",
		"The robe is only cloth. What's under it has read a great deal.",
	},
	["cls.mage.battle.w06.039"] = {
		"glances once at the enemy, once at the ground between them, and starts to speak in a low, measured voice.",
		"flexes {g:his|her} fingers one by one, and a faint crackle follows each of them.",
		"sets {g:his|her} feet apart and lifts one palm, and a low hum rises from nowhere in particular.",
	},
	["cls.mage.battle.w06.040"] = {
		"I was halfway through a thought. Now I'm annoyed.",
		"I had a perfectly good idea a moment ago. You chased it off. Unforgivable.",
	},
	["cls.mage.battle.w06.041"] = {
		"First spell is a question. How it reacts is the answer.",
		"Open with something cheap and watch. Everything shows its weakness, if you look.",
	},
	["cls.mage.battle.w06.042"] = {
		"Fire, frost or arcane? I'd let you choose, but you'd choose badly.",
		"Three schools, and you'll get a taste of whichever I'm in the mood for.",
		"Let's see which school you dislike most.",
	},
	["cls.mage.battle.w06.043"] = {
		"Whatever happens, keep it out of arm's reach. Arm's reach is where people like me end.",
		"If it reaches me, the robe won't argue on my behalf.",
	},
	["cls.mage.battle.w06.044"] = {
		"By word and will. Let's begin.",
		"Mind clear, hands ready. Let the lesson begin.",
		"Attend, then. This is the practical part.",
	},
	["cls.mage.battle.w06.045"] = {
		"Mind the sparks. Some of them are meant for you, and some are just enthusiasm.",
		"If the air starts to crackle, that's me getting started.",
	},
	["cls.mage.buff.w06.001"] = {
		"traces a quick figure in the air, and a pale violet shimmer settles like dust in lamplight, then fades.",
		"speaks three soft syllables, and for a moment the air around the gesture glows faintly before the working sinks in.",
		"draws a slow circle with two fingers; the arcane gathers there, brightens once, and is gone.",
	},
	["cls.mage.buff.w06.002"] = {
		"A small working, cheaply made and quickly gone. The kind of spell that never makes a story, and always helps.",
		"Not every spell has to be loud. Some of the best simply settle in and get on with it.",
		"A little mana, well placed. I'd rather spend it like this than on fireworks.",
	},
	["cls.mage.buff.w06.003"] = {
		"There. Arcane work of the highest quality, and nobody will ever see it.",
		"Invisible, unglamorous, and absolutely correct. My favorite kind of spell.",
		"Another spell nobody will thank me for. That's how you know it's the useful kind.",
	},
	["cls.mage.buff.w06.004"] = {
		"Laying a working on someone is different from hurling one at a foe. It has to be invited, not forced.",
		"Wards and gifts are a gentler grammar than fire. Same words, softer endings.",
		"Fire is spoken against something. This is spoken for something. The difference is all in the wrist.",
	},
	["cls.mage.buff.w06.005"] = {
		"Clarity, poured in like cold water. The world's edges sharpen a little.",
		"The thoughts line up straighter, like books pushed back onto a shelf.",
		"A touch more wit in the world. It can always use it.",
	},
	["cls.mage.buff.w06.006"] = {
		"Your head should feel a little roomier now. Do try to furnish it well.",
		"Sharper thoughts for you. Spend them on something better than worrying.",
		"Now you'll spot the trap a heartbeat sooner. You may thank me then.",
	},
	["cls.mage.buff.w06.007"] = {
		"{target}, may your thoughts stay quick and your judgment quicker.",
		"A clear head for you, {target}. In this work it's worth more than armor.",
		"For you, {target}: a little more light behind the eyes.",
	},
	["cls.mage.buff.w06.008"] = {
		"touches two fingers to a brow, murmuring, and the eyes beneath seem for a moment to brighten.",
		"speaks a short phrase, and a faint violet glow passes over the forehead it was meant for.",
		"lays a hand briefly over a brow, and when it lifts, the face beneath looks a shade more awake.",
	},
	["cls.mage.buff.w06.009"] = {
		"I give clarity away so easily. Pity it doesn't work on regrets.",
		"A spell for a sharper mind. If only there were one for a quieter one.",
		"Sharp wits are a gift. Knowing what to do with them is not something I can cast.",
	},
	["cls.mage.buff.w06.010"] = {
		"Hold still a moment. There, that's yours now.",
		"Don't mind the tingle. It's on your side.",
		"Done. You won't feel much, but it'll be there when it matters.",
	},
	["cls.mage.buff.w06.011"] = {
		"Amplify Magic: every heal goes further, and so does every curse. A generous spell with no judgment at all.",
		"Louder magic, both ways. Wonderful with a good healer nearby, regrettable against a pack of casters.",
		"This ward makes every spell land harder. I try to cast it when the friends are the ones doing the casting.",
	},
	["cls.mage.buff.w06.012"] = {
		"Dampen Magic: hostile spells land softer. Healing does too, sadly. Nothing comes free.",
		"A muffling ward. Fire and frost slide off a little, and so do the kind spells. Choose your fights.",
		"Fewer burns from enemy casters, slower mending from friendly ones. A trade, like everything in this craft.",
	},
	["cls.mage.buff.w06.013"] = {
		"That'll soften whatever the casters throw at you. Healers will have to work harder; tell them it was me.",
		"A muffling ward for you. Spells will hurt less. The healing will help less too, so no carelessness.",
		"Keep that ward close. It's no use against swords, only against the clever ones with books.",
	},
	["cls.mage.buff.w06.014"] = {
		"Amplified. Every heal on you will count for more. So will the bad news, so stay clear of the casters.",
		"There. Healers will love you now. Enemy mages will love you too, in a less pleasant way.",
	},
	["cls.mage.buff.w06.015"] = {
		"Spells that help age better than spells that harm. Nobody remembers a fireball fondly.",
		"I like the quiet spells. They ask little and leave something behind besides ash.",
		"Of everything I cast, this is the spell least likely to be remembered and most likely to have mattered.",
	},
	["cls.mage.buff.w06.016"] = {
		"Intellect, applied. The world is now marginally better informed.",
		"Some days the most useful thing a mage can do is make someone a little less dim.",
		"Wit for the road. It wears off whether anyone uses it or not.",
	},
	["cls.mage.buff.w06.017"] = {
		"Clear heads, all of you. Let's not waste them.",
		"Brilliance for the whole group. Try to think in the same direction for once.",
	},
	["cls.mage.buff.w06.018"] = {
		"finishes the gesture with a small flick of the wrist, the way a scribe dots the last letter.",
		"lowers the hand slowly, as if setting something fragile down on a table.",
		"checks the work with a critical squint, nods, and moves on.",
	},
	["cls.mage.lowhp.w06.001"] = {
		"Ah. This is where cloth shows its limits.",
		"And here's the trouble with dressing for study instead of battle.",
		"Lesson relearned: cloth keeps off the cold and nothing else.",
	},
	["cls.mage.lowhp.w06.002"] = {
		"Out. Now. Think about the rest from farther away.",
		"Get out of reach first. Then be clever.",
	},
	["cls.mage.lowhp.w06.003"] = {
		"Ice underfoot, then walk away. Don't run; running ruins the next cast.",
		"The nova, then distance. Every second of ice is another second of life.",
		"Ice, then out of reach. The wound can wait.",
	},
	["cls.mage.lowhp.w06.004"] = {
		"All right, mana, you'll have to take the blows now.",
		"Shield up, paid from the reserve. Expensive, but cheaper than dying.",
	},
	["cls.mage.lowhp.w06.005"] = {
		"Not here. Not at the hands of something that doesn't even know my name.",
		"I have too many unfinished notes to end in the dust.",
		"Not over a fight this dull. I deserve a better ending than that.",
	},
	["cls.mage.lowhp.w06.006"] = {
		"You've cornered me. Bad idea: this is when I stop being reasonable.",
		"Hurt me again and I'll stop being careful with the formulas.",
		"Fine. No more polite spells.",
	},
	["cls.mage.lowhp.w06.007"] = {
		"staggers back a step, one hand pressed to {g:his|her} side, the other still shaping a spell.",
		"loses the thread of a formula, catches it again, and keeps going through gritted teeth.",
		"stumbles, robe torn at the hem, and somehow keeps both hands raised.",
	},
	["cls.mage.lowhp.w06.008"] = {
		"Panic wastes mana. Slow the syllables down. Clean casts only.",
		"A fumbled spell now costs more than the wound. Steady.",
		"Shaking hands cast crooked. Hold them still. Hold.",
	},
	["cls.mage.lowhp.w06.009"] = {
		"A note for whoever comes after me: I don't recommend this part.",
		"Strike this from the experiment. Strike it entirely.",
	},
	["cls.mage.lowhp.w06.010"] = {
		"My heart is louder than the spell. Quiet it. Speak over it.",
		"Warm blood on the robe. Mine. Focus anyway.",
	},
	["cls.mage.lowhp.w06.011"] = {
		"This body has been ruined once already. I'm not letting it happen a second time out here.",
		"Dead flesh tears like any other. Mind it; there's no spare.",
	},
	["cls.mage.lowhp.w06.012"] = {
		"At the edge, a mage still has words left. Here are mine.",
		"Everything I have left goes into this next one.",
		"Down to the last pages of me. Let them be good ones.",
	},
	["cls.mage.lowhp.w06.013"] = {
		"Choose now: one last big gamble, or a careful retreat while I still can.",
		"Every spell from here has to count. There may not be a second try.",
		"One spell to end it or one step to escape. No time for both.",
	},
	["cls.mage.lowhp.w06.014"] = {
		"A little help over here? The walking library is coming apart.",
		"Anyone who can mend, over here! The one in cloth. Yes, me.",
	},
	["cls.mage.lowhp.w06.015"] = {
		"sways on {g:his|her} feet, blinks hard, and forces the next incantation out word by word.",
		"drops to one knee, then rises again, still murmuring the formula.",
	},
	["cls.mage.lowhp.w06.016"] = {
		"For the record, I'm built for libraries, not for this.",
		"This is why mages stand at the back. I'd like to return there.",
	},
	["cls.mage.lowhp.w06.017"] = {
		"Wool. Make it wool, and use the seconds to think.",
		"The sheep, now. Then bandage, potion, whatever's to hand. Buy the time first.",
	},
	["cls.mage.muse.w06.001"] = {
		"Some pages I've read a dozen times, and on the thirteenth they still tell me something new. I don't know if that's the book or me.",
		"I keep rereading the same chapter on wards. It hasn't changed. I have, a little, each time.",
		"A good spellbook isn't finished when you finish it. It waits for you to become someone who can read it properly.",
	},
	["cls.mage.muse.w06.002"] = {
		"The arcane doesn't tempt the way people think. It doesn't whisper. It just makes the next working a little easier than the last, and lets you draw your own conclusions.",
		"Nobody warns you that power feels like good sense. Each step further seems perfectly reasonable at the time.",
		"The masters in the city say the craft eats those who love it too much. I love it exactly enough. I tell myself that often.",
	},
	["cls.mage.muse.w06.003"] = {
		"I've conjured enough water this week to float a boat. Nobody has thanked the water.",
		"Fresh water, from nothing, on demand. And still someone asks whether it's been boiled.",
		"Conjured water is perfectly clean. Cleaner than any well you've drunk from. Please stop sniffing it.",
	},
	["cls.mage.muse.w06.004"] = {
		"When the mana runs low, the world goes flat, like a tune played without the low notes. I've learned to notice it before it gets that far.",
		"Running dry isn't pain, exactly. It's more like reaching for a word you use every day and finding nothing there.",
		"Empty of mana, I'm just someone in a robe with opinions. It's humbling. I should be humbled more often.",
	},
	["cls.mage.muse.w06.005"] = {
		"conjures a small loaf, turns it over with a critical eye, and eats it anyway.",
		"produces a round of bread out of thin air and breaks it in half, offering the larger piece to no one in particular.",
		"makes a loaf appear, raps it with a knuckle like a carpenter testing a beam, and seems satisfied.",
	},
	["cls.mage.muse.w06.006"] = {
		"Fire, frost, arcane: three dialects of one language. I'm fluent in none of them yet, and I get by in all three.",
		"Fire is the easiest to learn and the hardest to put down. Frost is the reverse. The arcane is hard both ways.",
		"Each school has its own manners. Fire interrupts, frost waits its turn, the arcane answers a question you didn't ask.",
	},
	["cls.mage.muse.w06.007"] = {
		"People think a mage's life is all fireballs. It's mostly reading small print by bad light.",
		"Most of this craft is footnotes. Nobody puts footnotes in the stories.",
		"The glamorous part takes a second. The other ten years are spent arguing with a book.",
	},
	["cls.mage.muse.w06.008"] = {
		"Dalaran sits under its dome, they say, mending itself behind the shield. I'd like to see it one day, even from the outside.",
		"The Kirin Tor are rebuilding, or so the scholars claim. A city of mages, broken by things stronger than mages. That thought keeps me humble.",
		"Whatever happened at Dalaran, the books that survived must be worth more than gold. I'd give a great deal for an afternoon among them.",
	},
	["cls.mage.muse.w06.009"] = {
		"Hours of study leave a particular kind of quiet behind them. I carry it around for a while afterward, like a smell of dust.",
		"After a long session with the books, other people's voices sound too loud for a while. It passes. Mostly.",
		"Study is a room with one chair. I chose it, and most days I'd choose it again.",
	},
	["cls.mage.muse.w06.010"] = {
		"Bread and water, conjured fresh. The menu has never changed, and it never will.",
		"Whoever's hungry: there's conjured bread. Whoever's picky: there's the walk to the next inn.",
		"I take no requests for flavors. Conjuring is a craft, not a kitchen.",
	},
	["cls.mage.muse.w06.011"] = {
		"Evocation is the strangest rest there is: sitting perfectly still while the mana pours back in like water into a dry cistern.",
		"When I evoke, I stop being a person for a while and become a vessel. It isn't unpleasant. That's the worrying part.",
		"Eight seconds of stillness, and I'm full again. I wish the rest of life refilled so obligingly.",
	},
	["cls.mage.muse.w06.012"] = {
		"People call polymorph cruel. It's the gentlest spell I know. Ask anyone who came out of it without a scratch.",
		"A sheep can't hold a grudge for long. That's half of why the spell works so well.",
	},
	["cls.mage.muse.w06.013"] = {
		"Old places hold magic the way stones hold the day's heat. You can feel it seeping out if you stand still long enough.",
		"Some ground feels crowded with old workings, and some feels swept clean. I've never learned to tell why, and I keep trying.",
		"There are spots in this world where the air feels thinner to the mind, as if someone spent all its magic long ago and never paid it back.",
	},
	["cls.mage.muse.w06.014"] = {
		"I can light a campfire with a word. I still carry flint, out of respect for tradition. And for when I'm tired.",
		"Lighting a fire with magic is easy. Lighting a small fire with magic, that's the advanced course.",
		"Ask a mage to light a candle and you'll find out how much self-control they really have.",
	},
	["cls.mage.muse.w06.015"] = {
		"Every spell takes something from the caster. Usually it's only mana. The masters warn that sometimes it's harder to say what it was.",
		"The craft keeps a ledger I can't read. I just hope the sums come out in my favor at the end.",
		"The old mages look tired in a particular way, as if they lent something years ago and never got it back.",
	},
	["cls.mage.muse.w06.016"] = {
		"turns a hand palm up and lets a tiny mote of frost spin above it, slowly, like a thought being weighed.",
		"draws a circle in the air with one finger; for a heartbeat it hangs there, violet and exact, before unraveling.",
		"murmurs a single syllable and watches the air ahead shiver, then settle.",
	},
	["cls.mage.muse.w06.017"] = {
		"The trainers sell knowledge one spell after another, for a fee. Fair, I suppose. Someone paid far more for it before me.",
		"Each new formula costs coin, then weeks of practice, then a few singed sleeves. By the end it almost feels like I invented it.",
		"The first time a new spell works, it feels borrowed. By the hundredth, it's mine. Somewhere in between it changes hands.",
	},
	["cls.mage.muse.w06.018"] = {
		"Reagents, robes, books, training fees. Magic is a fine career if you happen to be rich already.",
		"The arcane is free. Everything you need to use it properly costs a fortune.",
		"Somewhere a mage is getting rich. I'd like to meet them and ask how.",
	},
	["cls.mage.muse.w06.019"] = {
		"Cloth and thought: that's all that stands between me and the world's teeth. Most days it's enough. I try not to count the other days.",
		"I chose the craft that keeps its back to a wall and its eyes on the distance. Braver people choose otherwise. I'm still here.",
		"The ones in plate laugh at cloth. They also stand in front, which is where the laughing usually stops.",
	},
	["cls.mage.muse.w06.020"] = {
		"The scholars write of lines of power running under the land like veins under skin. I think I've felt one, now and then: a pull underfoot, like a current around the ankles.",
		"Under all this ground the old currents still run. The craft is learning to drink from them without being swept away.",
		"The deepest magic in the world isn't in any tower. It's underfoot, and it has been patient for a very long time.",
	},
	["cls.mage.muse.w06.021"] = {
		"Blink is wonderful. I only wish it let me choose where I land.",
		"Twenty yards, straight ahead, no questions asked. Blink is the most honest spell I know.",
		"The trick with Blink is facing the right way before you cast it. Everything else is detail.",
	},
	["cls.mage.muse.w06.022"] = {
		"I still practice the first spells I ever learned, the small ones. A cracked foundation shows in every floor above it.",
		"Masters are only apprentices who never stopped doing the boring exercises.",
		"The easy spells are where the bad habits hide. I go back to them slowly, the way a scribe goes back to the alphabet.",
	},
	["cls.mage.muse.w06.023"] = {
		"I wear a coat of frost to fight in. Nobody believes how much of my coin goes on woolen socks.",
		"Frost on my shoulders, frost on my sleeves. Every innkeeper asks me to stand away from the ale.",
		"Frost Armor keeps the blows off. It also keeps the conversation short.",
	},
	["cls.mage.muse.w06.024"] = {
		"There's a moment in every fire spell when it wants to keep going. Letting it go is easy. Calling it back is the craft.",
		"Fire is honest about what it wants: everything. The trick is never to agree with it.",
		"Fire never sulks and never forgives. Of all my tools, it's the one I watch most closely.",
	},
	["cls.mage.muse.w06.025"] = {
		"Frost teaches stillness. Hold a thing cold enough and it stops arguing.",
		"I like the sound frost makes as it forms: a small, dry crackle, like a decision being made.",
		"Cold is only the absence of hurry. Frost spells are a way of telling the world to wait.",
	},
	["cls.mage.muse.w06.026"] = {
		"Fire burns and frost binds, but the arcane simply rearranges. That's the one that keeps me awake, thinking.",
		"The arcane has no color of its own. We call it violet because we have to call it something.",
		"Pure arcane feels like the moment before a word is spoken: everything possible, nothing chosen.",
	},
	["cls.mage.muse.w06.027"] = {
		"My pack is half spellbook by weight. The other half is notes about the spellbook.",
		"Other people carry rope and rations. I carry three books, a pot of ink and the faint hope of a dry corner to read them in.",
	},
	["cls.mage.muse.w06.028"] = {
		"counts silently on {g:his|her} fingers, loses track, and starts again from the thumb.",
		"flips through a small book of notes, finds the dog-eared page, and reads it with lips moving soundlessly.",
		"sketches a diagram on the back of a scrap of parchment, frowns at it, and adds an arrow pointing nowhere in particular.",
	},
	["cls.mage.muse.w06.029"] = {
		"Sometimes I cast the simplest spell just to watch it work. It never stops being astonishing that it does.",
		"I've cast this little cantrip a thousand times, and some part of me still holds still when it takes.",
		"Wonder wears thin in most trades. In this one, it grows back.",
	},
	["cls.mage.muse.w06.030"] = {
		"I can be home in ten seconds, provided home is a capital and I've bought the rune.",
		"Teleportation: the fastest way to travel, and the most expensive way to forget something at the inn.",
		"Every time I teleport I leave a little dignity behind. And usually a cup of something.",
	},
	["cls.mage.muse.w06.031"] = {
		"The old warnings speak of mages who drank magic like wine until they couldn't stop. I count my cups. I'm told that's how it starts, too.",
		"There's a hunger the craft can wake, the masters say, that no conjured bread will ever fill. I pay attention to what my hands reach for when they're idle.",
		"Some days I catch myself casting for no reason but the feel of it. Then I put my hands in my sleeves and wait for it to pass.",
	},
	["cls.mage.muse.w06.032"] = {
		"With Detect Magic I see the world's hidden seams: a charm on a bracelet, a ward on a door, a curse nobody admitted to. Most days I'd rather not know.",
		"It's remarkable how much of the world is enchanted when you bother to look, and how little of it anyone remembers enchanting.",
	},
	["cls.mage.muse.w06.033"] = {
		"One day I'll write a page someone else has to study. That's the whole of my ambition.",
		"Somewhere there's a spell nobody has found yet. I intend to be standing nearby when it turns up.",
		"I'd like my name in the margin of one good book. Not the cover. The margin is where the real work is.",
	},
	["cls.mage.muse.w06.034"] = {
		"Sit, conjure, drink, wait. The rhythm of a mage's day has more pauses than anyone admits.",
		"Half of this craft is sitting down with a conjured drink, waiting for the mind to fill back up.",
		"Fight, then drink. Fight, then eat. There's no glory in it, but there's no skipping it either.",
	},
	["cls.mage.muse.w06.035"] = {
		"Everything I own smells faintly of scorch. I've stopped apologizing for it.",
		"My robes have more little burn holes than buttons. I call it ventilation.",
	},
	["cls.mage.muse.w06.036"] = {
		"A spell is half meaning and half sound. Get the meaning right and the sound wrong, and nothing happens; or worse, something does.",
		"The syllables of a formula are older than anyone who speaks them. I try to say them politely.",
	},
	["cls.mage.muse.w06.037"] = {
		"They say the master of Naxxramas was once a respected mage of Dalaran who went looking in the wrong books. Every student should hear that story once a year.",
		"The Scourge's necromancy began with a mage who wanted to know more, the old scholars say. I want to know more. I think about that.",
	},
	["cls.mage.muse.w06.038"] = {
		"I'm a scholar of the arcane, not a well. Though I grant the difference is getting harder to see.",
		"If one more person hands me an empty flask without a word, I'm conjuring them a very small cloud.",
	},
	["cls.mage.muse.w06.039"] = {
		"People step a little back from a mage, even friendly people. They don't mean to. I'd do the same.",
		"Folk watch my hands when I talk. I've stopped gesturing much. It makes conversations calmer.",
	},
	["cls.mage.muse.w06.040"] = {
		"A mage's courage isn't loud. It's staying calm enough to finish the sentence.",
		"Fear makes the hands shake, and shaking hands spoil formulas. So I don't get to be afraid until later.",
		"Brave mages are the ones who keep their voice level. The rest is theater.",
	},
	["cls.mage.muse.w06.041"] = {
		"I write everything down. Half of it is useless, and I can never tell in advance which half.",
		"My notes are a tangle of arrows, crossings-out and words in three hands, all of them mine on different days.",
		"If I lost my notes, I'd lose a year. I keep them closer than my coin.",
	},
	["cls.mage.muse.w06.042"] = {
		"conjures a cup of water, drinks it in one long pull, and conjures another without pausing.",
		"sits down for a moment, a conjured flask in hand, and stares into the middle distance, waiting for the mind to catch up.",
		"rubs both temples with two fingers, the way a scholar does after too many pages.",
	},
	["cls.mage.muse.w06.043"] = {
		"Mana gems: the craft's answer to the question, what if I could keep a spare thought in my pocket?",
		"I carry my reserves in a little stone that glows. Someday someone will try to buy it as jewelry, and I'm not sure I'll say no.",
	},
	["cls.mage.muse.w06.044"] = {
		"A kettle boils by fire, a mill turns by wind. Magic only does the same things without asking permission.",
		"Strip away the robes and the jargon and magic is just persuasion. The world is reasonable, if you speak its language.",
	},
	["cls.mage.muse.w06.045"] = {
		"Slow Fall makes every cliff an invitation. I'm learning to decline most of them.",
		"With a feather and the right words, I come down like a leaf. Undignified, but in one piece.",
	},
	["cls.mage.muse.w06.046"] = {
		"I could burn down a barn from where I stand. Knowing that, every single day, and choosing not to: that's the real discipline.",
		"The craft hands you the means to ruin things before it teaches you why you shouldn't. The order ought to be reversed.",
		"Destruction is the first thing the craft gets good at, and the last thing it should be proud of.",
	},
	["cls.mage.muse.w06.047"] = {
		"Here, take some. Conjured bread is the one gift I can always afford.",
		"Hungry? I've got bread, made fresh a moment ago. It's the least magical thing I do, and the most welcome.",
	},
	["cls.mage.muse.w06.048"] = {
		"Concentration is a muscle nobody sees. Mine aches more than my legs at the end of a day.",
		"Holding a spell steady while the world shouts at you is the whole of the training. The rest is vocabulary.",
	},
	["cls.mage.muse.w06.049"] = {
		"Ask a soldier what magic is and you'll hear 'shouting at the air'. Not entirely wrong, which is the irritating part.",
		"Every swordsman thinks magic is the easy way. Let them try remembering forty syllables in order while being chased.",
	},
	["cls.mage.muse.w06.050"] = {
		"Death took a great deal from me, but it left the formulas. The mind kept its books when the body lost its warmth.",
		"No breath to steady, no heartbeat to calm. Undeath has made me a very tidy caster.",
		"The living worry about their hands shaking. Mine haven't trembled since the grave. A small mercy inside a large misfortune.",
	},
	["cls.mage.muse.w06.051"] = {
		"The old ones of the tribe trust the loa and the voodoo more than any book. I trust the book. I keep the old ones' respect anyway.",
		"Darkspear mages are few, they say. Few is fine. Few means nobody else has read my books first.",
	},
	["cls.mage.muse.w06.052"] = {
		"Other gnomes build engines. I build formulas. It's the same work, really, with fewer bolts to lose.",
		"Gnome mages are known for being small in stature and large in explosions. I only mean to live up to half of that.",
	},
	["cls.mage.muse.w06.053"] = {
		"Stormwind tolerates its mages the way a house tolerates a stove: grateful for the warmth, nervous about the walls.",
		"The Mage Quarter of Stormwind is the loudest quiet place I know. Every window is studying something.",
	},
	["cls.mage.muse.w06.054"] = {
		"If anyone ever asks me to teach them, I'll start with how to stop a spell, not how to start one.",
		"The first thing I'd teach an apprentice: the books are patient, the arcane isn't. Know which one you're talking to.",
	},
	["cls.mage.muse.w06.055"] = {
		"Conjured bread tastes of a bakery you've only heard described. Close enough to comfort, far enough to be strange.",
		"I've started salting the conjured bread. A small rebellion. It helps.",
	},
	["cls.mage.muse.w06.056"] = {
		"The oldest books say the arcane fell into the world from somewhere far beyond the sky. I don't know if I believe them, but I catch myself looking up.",
		"Some scholars hold that magic is older than the world it runs through. If so, we're all guests in its house.",
	},
	["cls.mage.muse.w06.057"] = {
		"The kaldorei look at mages as if they remembered something we've forgotten. The scholars say they do: a well, a queen, and a sundered world.",
		"Ask a druid of Darnassus about the arcane and watch the face close like a door. They have their reasons, I'm told, older than any kingdom.",
	},
	["cls.mage.muse.w06.058"] = {
		"Robes are wonderful for study and terrible for stairs, mud, horses and running. So: wonderful for study.",
		"Trousers would be more practical. But then who would know I'm a mage? The sparks, I suppose.",
	},
	["cls.mage.muse.w06.059"] = {
		"Opening a portal for others is a strange trust. They step into nothing because I said it was safe.",
		"A portal is the only spell I cast that other people walk through. I check my work twice.",
	},
	["cls.mage.muse.w06.060"] = {
		"goes very still, eyes half closed, as if listening to a conversation in the next room.",
		"stops mid-step and tilts {g:his|her} head, attention caught by something no one else can perceive.",
	},
	["cls.mage.muse.w06.061"] = {
		"A lifetime is too short for one school, never mind three. I try not to do that sum too often.",
		"However long I'm given, I'll have read perhaps a tenth of what's worth reading. The arithmetic is unkind.",
	},
	["cls.mage.muse.w06.062"] = {
		"I spend mana like a careful traveler spends coin: a little on what's needed, nothing on what's merely impressive.",
		"Every spell has a price in mana, and the bill always comes at the worst moment. So I keep a little back, always.",
	},
	["cls.mage.muse.w06.063"] = {
		"Lordaeron had mages too, and towers, and libraries. The ruins don't say which books burned. I wonder anyway.",
		"Wars burn the libraries first. Whoever wins, the scholars lose.",
	},
	["cls.mage.muse.w06.064"] = {
		"To the patient mind, the world is a library that never closes.",
		"Knowledge doubles when it's shared. That's my excuse for talking so much.",
	},
	["cls.mage.muse.w06.065"] = {
		"Some mornings I wake with half a formula in my head and spend the day hunting the other half.",
		"The best ideas arrive while I'm doing something else entirely: lacing boots, stirring a pot. The arcane has a sense of humor.",
		"I've solved more problems on the road than at a desk. Walking shakes the thoughts loose.",
	},
	["cls.mage.muse.w06.066"] = {
		"Need something kept cold? I'm good at cold. I'm good at hot too. Lukewarm is where I fall apart.",
		"I could chill your drink, your soup or your enemy. Pick one; I'm saving mana.",
		"Ice in your ale? A waste of a perfectly good formula, and I'll do it anyway.",
	},
	["cls.mage.muse.w06.067"] = {
		"The scholars say it was magic, used too freely, that first drew the Legion's eye to this world. Every spell I cast is a small lamp in a very dark field.",
		"If the old accounts are true, the demons came because the world was too bright with magic. I keep my workings modest. It seems only polite.",
	},
	["cls.mage.muse.w06.068"] = {
		"Too much arcane leaves a taste like old coins at the back of the tongue. I've learned to stop at the first hint of it.",
		"When the mind's been pushed too far, colors go thin at the edges. That's the signal to sit down and stop being clever.",
		"The arcane has its own kind of tiredness: not in the legs, but behind the eyes, where the thinking lives.",
	},
	["cls.mage.muse.w06.069"] = {
		"rolls a tiny flame across {g:his|her} knuckles like a coin, back and forth, then closes the fist and it's gone.",
		"lights the tip of one finger like a candle, studies the flame for a moment, then pinches it out.",
		"lets a thin ribbon of frost curl around one wrist, watches it melt, and wipes the wrist dry on a sleeve.",
	},
	["cls.mage.muse.w06.070"] = {
		"Counterspelling another caster is like finishing their sentence for them, rudely, halfway through. I enjoy it more than I should.",
		"There's an odd intimacy in reading someone's spell fast enough to cut it. For a moment, the two of us know exactly what they meant.",
	},
	["cls.mage.muse.w06.071"] = {
		"The trouble with being clever is that everyone expects it every time. I'd like one stupid afternoon a month.",
		"Being the one who knows things is tiring. Sometimes I'd rather be the one who carries things.",
	},
	["cls.mage.muse.w06.072"] = {
		"Mana moves like water: it finds the low places, fills what's empty, and wears down anything that stands in its way long enough.",
		"I think of my reserves as a well. Draw too fast and you bring up mud.",
	},
	["cls.mage.quest_complete.w06.001"] = {
		"Another errand finished. It goes in the notebook, between a recipe for ink and a theory I'm not ready to show anyone.",
		"Done. The notebook gets a new line, and the line gets a question mark, because I'm still not sure why it worked.",
		"Finished, and filed. My memory is a library, and every task gets a shelf, however small.",
	},
	["cls.mage.quest_complete.w06.002"] = {
		"Paid, or near enough. Reagents don't buy themselves.",
		"Whatever this is worth, I've already spent it on reagents in my head.",
		"My purse thanks you. My reagent pouch thanks you more.",
	},
	["cls.mage.quest_complete.w06.003"] = {
		"accepts the thanks with a small bow and a faint crackle of static from one sleeve.",
		"inclines {g:his|her} head politely, then brushes a few stray sparks off a cuff before shaking hands.",
		"nods once, the way a scholar nods at a correct answer, and turns the page to whatever comes next.",
	},
	["cls.mage.quest_complete.w06.004"] = {
		"Task done. Now a cup of conjured water and five minutes of not being useful to anyone.",
		"That's that. I'll sit, drink something I made from nothing, and let my head stop doing arithmetic.",
		"Finished. The mana can come back at its own pace; nobody is chasing me for the moment.",
	},
	["cls.mage.quest_complete.w06.005"] = {
		"You'll notice everything is still standing. I'd like that mentioned in any report.",
		"Not one scorch mark. I was very restrained. Tell your friends.",
		"Done cleanly, and nobody was turned into anything. You're welcome.",
	},
	["cls.mage.quest_complete.w06.006"] = {
		"The task itself was plain. What I noticed along the way will keep me thinking for days.",
		"Errands are an excuse to look closely at a world I'd otherwise only read about.",
		"Ordinary work, done well. Not everything needs to be a discovery, though I looked for one anyway.",
	},
	["cls.mage.quest_complete.w06.007"] = {
		"Should anything else need a steady mind and a little fire, send word.",
		"If the next problem is beyond a sword, I'm the one to ask.",
		"Call on me again. I'm cheaper than a tower full of masters, and I answer faster.",
	},
	["cls.mage.quest_complete.w06.008"] = {
		"They thanked me for the result and never asked how. Just as well. I'm not sure I could explain it gently.",
		"Gratitude always tastes a little odd when the job was done with spells. Nobody likes to look too closely at the means.",
	},
	["cls.mage.quest_complete.w06.009"] = {
		"Not bad for someone in a robe, hm? People always underestimate the robe.",
		"Mages look fragile until the job is done. Then they just look smug.",
		"Next time, trust the robe a little sooner.",
	},
	["cls.mage.quest_complete.w06.010"] = {
		"tucks the reward into a pocket already crowded with folded notes and a quill that has seen better days.",
		"makes room for the reward by moving a small book from one pocket to another, and then back again.",
		"looks over the reward with the polite interest of someone working out its worth in reagents.",
	},
	["cls.mage.quest_complete.w06.011"] = {
		"They'll forget my name by supper. The work will stay done. I've made my peace with that order of things.",
		"Nobody remembers who fixed a thing, only that it's fixed. Mages ought to be used to that by now.",
	},
	["cls.mage.quest_complete.w06.012"] = {
		"All done! Anyone hungry? I feel like conjuring something to celebrate.",
		"Finished. Bread all round, on me. Well, on the arcane.",
	},
	["cls.mage.quest_complete.w06.013"] = {
		"Spells are the easy part of any errand. Finding the right person, asking the right question: that's where I fumble.",
		"Half of every task is talking to people. The trainers never taught that.",
		"I'd sooner face three elementals than one clerk with a ledger. Still: done.",
	},
	["cls.mage.quest_complete.w06.014"] = {
		"closes {g:his|her} eyes briefly, as though putting a finished page back on its shelf.",
		"rolls {g:his|her} shoulders, and the faint frost that had clung to the sleeves fades away.",
		"glances at {g:his|her} hands, which have stopped humming at last, and folds them behind {g:his|her} back.",
	},
	["cls.mage.quest_complete.w06.015"] = {
		"Next time you need a mage, give me the interesting part. I'll leave the running about to someone else.",
		"Years of study, and here I am doing errands. My trainers would be so proud. Or confused.",
		"Not a single arcane question in the whole affair. I'm almost disappointed.",
	},
	["cls.mage.quest_complete.w06.016"] = {
		"Something small put right. The world didn't need a great spell today; it needed this.",
		"Not every good thing is a grand working. Sometimes it's just being where someone needed a hand.",
	},
	["cls.mage.quest_complete.w06.017"] = {
		"A finished task always leaves one small question behind, like a crumb on the table. I can never leave it there.",
		"The answer they wanted was simple. The question underneath it was not. That one I'll keep for myself.",
	},
	["cls.mage.quest_complete.w06.018"] = {
		"Another page in the record. Small, but written in my own hand.",
		"The work is done, and done properly. That's the only signature a mage needs.",
		"Let it be said I finished what I began, down to the last line.",
	},
	["cls.mage.quest_complete.w06.019"] = {
		"conjures a flask of water, takes a long drink, and offers the rest with a tilt of the head to whoever is nearest.",
		"sits on the nearest flat surface, conjures a cup, and drinks it slowly, like a well-earned reward.",
	},
	["cls.mage.quest_complete.w06.020"] = {
		"Each finished task makes the spellbook feel a little heavier, in the good way. Like a full pantry.",
		"Experience is the one reagent nobody can sell you. Today I gathered a little more.",
	},
	["cls.mage.quest_complete.w06.021"] = {
		"I'd like a receipt. Mages keep records of everything, and I'd hate to start being careless now.",
		"Do note in your ledger: completed by a mage, on time, more or less intact.",
	},
	["cls.mage.quest_complete.w06.022"] = {
		"Nobody hires a mage for the magic, in the end. They hire one for the patience. The magic just comes along.",
		"What finished this task wasn't a spell. It was sitting still long enough to think. That's the real training.",
		"The trainers never mentioned that most of my work would be listening. They should have.",
	},
	["cls.mage.quest_complete.w06.023"] = {
		"Count it? No. Mages count formulas, not coins. Though I'll admit I glanced.",
		"Thank you. I'll pretend this isn't going straight to a tailor to replace the sleeve I scorched.",
		"Kind of you. It'll all be candles and ink by the end of the week.",
	},
	["cls.mage.victory.w06.001"] = {
		"Proof by demonstration. My favorite kind.",
		"There. If anyone asks, it was all in the theory.",
		"Theory holds. I'll tell the library.",
	},
	["cls.mage.victory.w06.002"] = {
		"Conjured water, somewhere to sit and a few minutes of nothing. My whole reward.",
		"The mana comes back by the sip. There's no hurrying it, so I won't try.",
		"Conjured water never quite satisfies, but there's always more of it.",
	},
	["cls.mage.victory.w06.003"] = {
		"sinks down where {g:he|she} stands, eyes half closed, waiting for the spent power to seep back.",
		"shakes out both hands as if flicking off water, and the last sparks scatter and die on the ground.",
		"unwinds, one shoulder after the other, the stiffness of holding a formula too long.",
	},
	["cls.mage.victory.w06.004"] = {
		"Next time, a different school. Purely for the comparison.",
		"I'll try it another way next time. Same result, I suspect, but neater.",
	},
	["cls.mage.victory.w06.005"] = {
		"It didn't know what I was. Most of them don't, until the end.",
		"It ended with a few syllables. That should feel heavier than it does.",
		"It never understood what struck it. I'm not sure that's mercy.",
	},
	["cls.mage.victory.w06.006"] = {
		"Words, will, and the patience to say them right. That's the whole craft.",
		"Not bad for a bookworm in a robe.",
		"That's the craft: a little knowledge, said at the right moment.",
	},
	["cls.mage.victory.w06.007"] = {
		"Let me check the robe. Ah. Another hem to mend.",
		"My robe and I both made it. Only one of us looks it.",
	},
	["cls.mage.victory.w06.008"] = {
		"Interesting, how it moved. I'll want to remember that for the next one.",
		"I spent more mana than I needed to. More thrift next time.",
		"Worth writing down. Not the win, the way it went.",
	},
	["cls.mage.victory.w06.009"] = {
		"Now, where was I? Somewhere around page forty.",
		"Back to my notes. That was a long interruption.",
	},
	["cls.mage.victory.w06.010"] = {
		"lowers {g:his|her} hands, and the air around them slowly forgets what it was asked to do.",
		"lets the last of the gathered power drain from {g:his|her} fingers like water from cupped palms.",
		"closes {g:his|her} hands, and the tingling in the air fades like a struck bell going quiet.",
	},
	["cls.mage.victory.w06.011"] = {
		"A fine specimen. Shame I couldn't keep it in one piece.",
		"I'd have liked to study it further. It didn't share my enthusiasm.",
		"I'd have taken notes, but it kept moving.",
	},
	["cls.mage.victory.w06.012"] = {
		"You held the line, I settled the account. That's how it's meant to go.",
		"Thank you for standing in front. Cloth appreciates it more than it says.",
	},
	["cls.mage.victory.w06.013"] = {
		"A moment ago it was alive and furious. Now it's a lesson. I don't love that arithmetic.",
		"Something was alive here, and a sentence put an end to it. That should never feel ordinary.",
	},
	["cls.mage.victory.w06.014"] = {
		"Done. A minute of quiet, please. The mana comes back slower when people talk.",
		"A moment. My head takes longer than the fight did to settle.",
	},
	["cls.mage.victory.w06.015"] = {
		"checks {g:his|her} sleeves for embers out of pure habit, finds none, and seems faintly disappointed.",
		"straightens the robe, smooths the front twice, and looks around as if for an examiner's mark.",
		"pinches out a last stubborn spark between thumb and finger, like a candle wick.",
	},
	["cls.mage.victory.w06.016"] = {
		"This is why I study. Short fights, more time for books.",
		"Theory, meet practice. Practice, theory. You two should talk more often.",
	},
	["cls.mage.victory.w06.017"] = {
		"My hands are shaking a little. Let them. They did their work.",
		"Afterward is always the strange part: the power gone, and only me left standing in the robe.",
		"The fear comes after. It always waits until it's safe.",
	},
	["cls.mage.victory.w06.018"] = {
		"Somebody note the time. I'd like to beat it.",
		"Faster than the textbook says it should be. I'll have to write to the author.",
		"Was that quick? It felt quick. I should time these properly.",
	},
	["cls.mage.victory.w06.019"] = {
		"A good fight reads like a well-made proof: every step follows from the last.",
		"There was a shape to that fight. I could almost draw it.",
		"Each spell answered the one before it. That's how I like a fight to read.",
	},
	["cls.mage.victory.w06.020"] = {
		"A robe is a warning, not an invitation. Pass it on.",
		"Tell the others: the one in cloth bites.",
	},
	["cls.mage.victory.w06.021"] = {
		"Add it to the notes: approach, reaction, outcome. A page a fight, and someday a book.",
		"Another entry for the notebook. The handwriting gets worse after every fight.",
	},
	["cls.mage.victory.w06.022"] = {
		"draws a flask of conjured water from nowhere in particular and drinks it in long, unhurried swallows.",
		"conjures a cup of water, drinks half, and frowns at the rest as if it had failed an exam.",
	},
	["cls.mage.victory.w06.023"] = {
		"The quiet after spending power is the worst part. Everything feels dimmer for a while.",
		"Some mages chase that rush from one fight to the next. I can see how it happens. I won't let it.",
		"That lift when a spell lands is what eats people. Notice it, then set it down.",
	},
	["cls.mage.victory.w06.024"] = {
		"Ah, that's the feeling. Like getting a long sum right on the first try.",
		"Lovely. Everything went where I put it.",
		"Neat. Very neat. I'd like it framed.",
	},
	["cls.mage.victory.w06.025"] = {
		"Hot or cold, it ends the same way. I only vary it to stay interested.",
		"Fire, frost, arcane: all roads to the same quiet.",
	},
	["cls.mage.victory.w06.026"] = {
		"Check the surroundings before celebrating. Mages who don't learn about ambushes the short way.",
		"Done. Distance, mana, surroundings. Check all three before relaxing.",
		"Before anything else, eyes up. The next one may already be on its way.",
	},
	["cls.mage.victory.w06.027"] = {
		"Let the warriors have their scars. I'll take the clean result.",
		"No blade, no shield. Just study, and the stubbornness to use it.",
		"Nobody needs a shield if the problem never reaches them.",
	},
	["cls.mage.victory.w06.028"] = {
		"conjures a small loaf, looks at it without enthusiasm, and eats it anyway.",
		"produces a round of bread out of thin air and chews it with the expression of someone doing a duty.",
	},
	["cls.mage.victory.w06.029"] = {
		"Any trainer would wince at my form there. Good thing none were watching.",
		"My stance was a mess. The result wasn't. I'll take the trade.",
	},
	["cls.mage.victory.w06.030"] = {
		"Water's on me. Form an orderly line, please.",
		"Who's thirsty? Don't all answer at once; I know the answer.",
	},
	["cls.mage.victory.w06.031"] = {
		"Concluded. A passing mark, with plenty of red ink in the margins.",
		"Acceptable work. I've seen cleaner, mostly in books.",
	},
	["cls.mage.victory.w06.032"] = {
		"Over. And I'm still here to think about it. That part never gets ordinary.",
		"Another fight survived by knowing more than the other side. I'll keep studying.",
	},
	["cls.mage.victory.w06.033"] = {
		"looks over the scene of the fight with a critical squint, as if grading it.",
		"dusts off {g:his|her} hands slowly, one against the other, and lets out a long, satisfied hum.",
		"lets {g:his|her} shoulders drop at last, and the faint hum that hung about {g:him|her} all through the fight dies away.",
	},
	["cls.mage.victory.w06.034"] = {
		"Another for the collection. The experience, I mean; I don't keep trophies.",
		"Good. That goes in the column of things that went well, which is shorter than you'd think.",
	},
	["cls.mage.victory.w06.035"] = {
		"My fingers ache from all that shaping. Odd that magic should tire the hands at all.",
		"A dull ache behind the eyes. The usual bill for concentration.",
		"That took more out of me than it looked. Mages always pay in focus.",
	},
	["cls.mage.victory.w06.036"] = {
		"That's what comes of bothering someone who reads.",
		"Let that be a lesson to whoever's watching. Learning bites.",
	},
	["cls.mage.victory.w06.037"] = {
		"Whatever I called up is still fading from my fingers. It always lingers longest there.",
		"Heat or cold, the hands remember it for a while after.",
	},
	["cls.mage.victory.w06.038"] = {
		"Is anyone hurt? Please say no. Mending isn't one of my schools.",
		"Nobody missing any pieces? Good. Breaking is the only half I know.",
	},
	["cls.mage.victory.w06.039"] = {
		"I'd give a great deal for real bread after that. Not conjured. Real.",
		"Conjured bread again, I suppose. It fills the stomach, not the soul.",
	},
	["cls.mage.victory.w06.040"] = {
		"Nobody watching, and it was some of my best work. Typical.",
		"No one to tell. I'll tell the notebook instead.",
	},
	["cls.paladin.buff.w06.001"] = {
		"raises a hand in a short, plain gesture, and a gold shimmer settles over the shoulders and fades into them.",
		"draws a small sign in the air, and for a moment the light around {g:him|her} turns warmer, like late sun on a wall.",
	},
	["cls.paladin.heal.w06.001"] = {
		"The Light does not ask whether the wound was earned. Neither do I, until afterwards.",
		"I've never had to coax the Light into mending. The hard part is making myself stop swinging long enough to ask.",
	},
	["cls.paladin.heal.w06.002"] = {
		"The weapon can wait a heartbeat. The Light has other work for these hands.",
		"Strike, mend, strike again. The Light keeps a paladin busy.",
	},
	["cls.paladin.heal.w06.003"] = {
		"On your feet when you're ready, not before. The Light has given you a little time.",
		"Breathe through it. I've asked for you, and the Light has answered.",
		"Steady now. That wound belongs to yesterday.",
	},
	["cls.paladin.heal.w06.004"] = {
		"nods once, short and satisfied, as the hurt gives way, the way one nods at a duty done properly.",
		"sets {g:his|her} jaw while the pain eases, as though the healing were one more duty to stand through.",
	},
	["cls.paladin.heal.w06.005"] = {
		"One swallow and back to the front. Prayers take longer than corks.",
		"Down in one, like a soldier's ration. The Light can have my hands again in a moment.",
	},
	["cls.paladin.heal.w06.006"] = {
		"Everything I have left, poured out at once. I'll be empty a long while after, and glad of it.",
		"All of it, at once. The Light keeps no reserve when I ask like this.",
	},
	["cls.paladin.heal.w06.007"] = {
		"presses a gauntleted palm to the hurt, and the Light comes up through it like warmth through a stone hearth.",
		"says the Light's name once, plainly, and a gold glow runs over the wound and leaves it whole.",
	},
	["cls.paladin.heal.w06.008"] = {
		"The bruise mends for free. The dent in the armor is another matter.",
		"Flesh puts itself right. The smith, sadly, still charges for the armor.",
	},
	["cls.paladin.heal.w06.009"] = {
		"A warlock's stone in a paladin's hand. The Light and I have agreed not to discuss it.",
		"Warlock work, and it mends all the same. I'll make my peace with the Light about it later.",
	},
	["cls.paladin.rezother.w06.001"] = {
		"Rise. Whatever the fall cost you, the Light has paid it.",
		"Up you get. I came as fast as I could; the rest is yours.",
	},
	["cls.priest.attack.w06.001"] = {
		"Smite. Short word, long reach.",
		"There. That's what the old word means.",
		"A little holy correction. Hold still for the next.",
	},
	["cls.priest.attack.w06.002"] = {
		"Something to remember me by. It'll keep reminding you.",
		"That one stays with you. Walk it off, if you can.",
		"Carry this a while. It gets heavier.",
	},
	["cls.priest.attack.w06.003"] = {
		"Another spell, another sip from the well. Make it count.",
		"That cost me. Let it cost you more.",
		"Mana out, harm in. The trade has to go my way.",
	},
	["cls.priest.attack.w06.004"] = {
		"Let's see how well you think after that.",
		"Straight to the mind. Armor never helps there.",
		"In through the eyes, out through the will.",
	},
	["cls.priest.attack.w06.005"] = {
		"flicks {g:his|her} fingers toward the foe, and a word goes out with them like a thrown stone.",
		"speaks sharply, and the spell leaves {g:his|her} hand as if glad to be gone.",
		"casts without a wasted motion, eyes already measuring the next.",
	},
	["cls.priest.attack.w06.006"] = {
		"Run! Everything you fear is right behind you!",
		"Scatter! Your own minds will chase you better than I can.",
	},
	["cls.priest.attack.w06.007"] = {
		"Not my favorite prayer. Possibly my most useful.",
		"The temple would call this a misuse of gifts. The temple isn't here.",
	},
	["cls.priest.attack.w06.008"] = {
		"Burn a little. It's good for the soul, they tell me.",
		"Clean fire. It leaves nothing behind that shouldn't be there.",
	},
	["cls.priest.attack.w06.009"] = {
		"This one was made for your kind. Feel how well it fits.",
		"The dead never like this part. I can't say I blame you.",
		"Sit back down. You've been up long past your time.",
	},
	["cls.priest.attack.w06.010"] = {
		"Kneel. I'm not asking.",
		"Down. I said it kindly the first time.",
		"One word from me, and that's all you get.",
	},
	["cls.priest.battle.w06.001"] = {
		"Yes, it's cloth. No, that doesn't make this easy for you.",
		"Go on, aim for the robe. Everyone does. Few of them finish the thought.",
		"A priest in a robe. I know how it looks. Let's see how it ends.",
	},
	["cls.priest.battle.w06.002"] = {
		"Count it out before it starts: so much for the hurting, so much kept back for mending.",
		"Mana first. Split it in my head, half to strike, half to stay alive.",
		"Before the first word, the sum: what I can spend, and what I must not touch.",
	},
	["cls.priest.battle.w06.003"] = {
		"slips the wand free of {g:his|her} belt and levels it, the other hand already shaping a word.",
		"lifts the wand without hurry, as if pointing out a mistake in a ledger.",
		"turns the wand once between {g:his|her} fingers, then holds it still and aimed.",
	},
	["cls.priest.battle.w06.004"] = {
		"Every wound you give me, I can close. Can you say the same?",
		"You hurt, I mend. Let's find out which of us tires first.",
		"I'll undo every blow you land. That's the whole trick, and you can't stop it.",
	},
	["cls.priest.battle.w06.005"] = {
		"I'm behind you. Take the hits; I'll take the worry.",
		"Front line's yours. Keep their eyes off me and I'll keep you upright.",
		"Don't count your wounds. That's my job back here.",
	},
	["cls.priest.battle.w06.006"] = {
		"Eyes on everyone at once. The fighting is theirs; the counting is mine.",
		"Who's hurt, who's next, who's being foolish. I watch all three.",
		"Stand back, stay calm, watch every face. The one who goes pale first gets the first prayer.",
	},
	["cls.priest.battle.w06.007"] = {
		"Nobody to heal but me. That makes this simpler, and a little lonelier.",
		"On my own, so the patient and the healer are the same person. Convenient.",
		"Just the two of us, and only one of us brought a healer. Think about that.",
	},
	["cls.priest.battle.w06.008"] = {
		"Light, steady my hand and make my words count.",
		"By the Light, I'll give this one fair warning, and nothing else.",
		"Light go with me. It knows the way better than I do.",
	},
	["cls.priest.battle.w06.009"] = {
		"The Light still answers me. It never says it's glad to.",
		"I call, and it comes, stiff as a stranger at a funeral. Good enough for a fight.",
		"Whatever the Light thinks of what I am, it still burns when I ask.",
	},
	["cls.priest.battle.w06.010"] = {
		"Elune, look this way. I'll do the rest.",
		"Mother Moon, lend me a little of your patience, and a little of your edge.",
		"Elune keeps her own counsel. I ask only that she watch.",
	},
	["cls.priest.battle.w06.011"] = {
		"You've walked long enough. Let me show you the way back down.",
		"Whatever raised you never asked. I'm here to give back what it took.",
		"Rest was owed to you a long time ago. I'll pay it now.",
	},
	["cls.priest.battle.w06.012"] = {
		"Whatever you promised someone to get here, it ends with me.",
		"You don't belong in this world. I'm told I have a gift for sending things home.",
		"Back where you came from. I'll say the words slowly, so you can follow.",
	},
	["cls.priest.battle.w06.013"] = {
		"Your arm is strong. Let's see about the mind behind it.",
		"You brought a weapon. I brought something that doesn't need to get past it.",
		"Armor stops blades. Nothing you're wearing stops a thought.",
	},
	["cls.priest.battle.w06.014"] = {
		"tugs {g:his|her} sleeves back from {g:his|her} wrists, the way a healer does before the messy part.",
		"gathers the hem of the robe out of the way with one quick, practiced hand.",
		"sets {g:his|her} feet and lets the robe settle, quiet as a held breath.",
	},
	["cls.priest.battle.w06.015"] = {
		"Turn around now and I'll forget I saw you.",
		"There's still time to walk off. I'd honestly prefer it.",
		"I'd sooner pray for you than against you. Your choice, and quickly.",
	},
	["cls.priest.battle.w06.016"] = {
		"Smite, they call it. I didn't name it; I just say it with feeling.",
		"Hold still. Smiting is harder on a moving target.",
		"There's a prayer for nearly everything. This one's for you, and it stings.",
	},
	["cls.priest.battle.w06.017"] = {
		"Nobody at the altar mentioned this part. They should have.",
		"The novices' books are full of mercy. The road adds the footnotes.",
		"Mercy is the first lesson. Nobody says how often you'll have to skip it.",
	},
	["cls.priest.battle.w06.018"] = {
		"You chose a poor moment to test a priest's patience.",
		"My patience is long. You've found the end of it.",
		"I forgive easily. I just don't do it first.",
	},
	["cls.priest.battle.w06.019"] = {
		"murmurs the first words of a prayer, too low to carry, eyes fixed on the foe.",
		"folds {g:his|her} hands for an instant, then opens them toward the threat.",
		"bows {g:his|her} head once, briefly, and lifts it with the prayer already begun.",
	},
	["cls.priest.battle.w06.020"] = {
		"Fine. Let's be quick about it; I have people to look after.",
		"I don't have time for you, but I'll make some.",
		"Make it short. Others will need these prayers more than you do.",
	},
	["cls.priest.battle.w06.021"] = {
		"Ward first. Always the ward first. Then I can think.",
		"Shield up before anything else. Whoever forgets that learns it on the ground.",
		"Wrap myself in the ward, then decide how this goes.",
	},
	["cls.priest.battle.w06.022"] = {
		"Don't laugh at the wand. It's done worse to bigger things than you.",
		"Yes, it's a little stick. It's also very rude, once it gets going.",
		"The wand doesn't look like much. Neither do I. We get along.",
	},
	["cls.priest.battle.w06.023"] = {
		"Pain first, the slow kind. Let it do the work while I see to the rest.",
		"Lay the word of pain on it early. It keeps talking long after I've stopped.",
		"Open with the shadow and let it gnaw. Patience is half of this craft.",
	},
	["cls.priest.battle.w06.024"] = {
		"I'm sorry about this. I'll be sorrier if you win.",
		"Forgive me. Or don't; you won't be in a state to say either way.",
	},
	["cls.priest.battle.w06.025"] = {
		"I pray more than most. Some days, this is what the prayers are for.",
		"Faith isn't only gentleness. This moment it wears a harder face.",
		"You're about to learn what a prayer sounds like when it's aimed at you.",
	},
	["cls.priest.battle.w06.026"] = {
		"falls back a few paces behind the others, where {g:he|she} can see everyone at once.",
		"keeps to the rear of the fight, gaze moving from one companion to the next.",
		"takes up a place at the back, out of the press, one hand half raised toward the nearest ally.",
	},
	["cls.priest.battle.w06.027"] = {
		"Try not to need me. I'll be there anyway, but try.",
		"Make it easy on me, all right? Fewer heroics, fewer prayers.",
		"Whoever's planning to be a hero, give me a moment's notice.",
	},
	["cls.priest.battle.w06.028"] = {
		"I'll pay for this later in water and sitting down. Worth it, probably.",
		"A cup of water is waiting for me at the end of this. I just have to earn it.",
		"Every spell now is a long drink afterwards. Spend wisely.",
	},
	["cls.priest.battle.w06.029"] = {
		"Healers learn to stay standing. It turns out that's most of a fight.",
		"I've seen what it takes to drop someone. You've brought less than that.",
		"Underestimate me. Most of them do, right up until the end.",
	},
	["cls.priest.battle.w06.030"] = {
		"Easy. Maybe you're only hungry. I'm still not dinner.",
		"I'd rather calm you than fight you, but you're not listening.",
		"Back, beast. I've nothing to give you but trouble.",
	},
	["cls.priest.battle.w06.031"] = {
		"I've healed people like you. Pity we're on different sides.",
		"On another day I'd have bound your wounds. Not this one.",
		"Your side has healers too. I hope one of them is close.",
	},
	["cls.priest.battle.w06.032"] = {
		"Steady. Fear makes the words come out wrong, and the words are all I have.",
		"Hands shaking. Fine. The prayer doesn't need steady hands, only a steady voice.",
		"A little afraid, as always. It's never stopped a prayer yet.",
	},
	["cls.priest.battle.w06.033"] = {
		"That one's larger than the prayers I had ready. I'll improvise.",
		"You're more than I bargained for. Good thing I bargain in prayers.",
	},
	["cls.priest.battle.w06.034"] = {
		"The Light is patient with me. Let it be impatient with this one.",
		"I'll lean on the Light now and thank it properly later.",
		"If the Light has any heat to spare, now is when I need it.",
	},
	["cls.priest.battle.w06.035"] = {
		"Kneel, if you like. I'll say the words either way.",
		"There's a blessing I say over the fallen. Don't make me use it on you.",
		"I know the rites for the dead by heart. You won't want to hear them.",
	},
	["cls.priest.battle.w06.036"] = {
		"speaks a single sharp word, and the air before {g:him|her} seems to tighten.",
		"raises a hand, and something unseen gathers in the palm, waiting to be let go.",
		"fixes the foe with a long, level look, the kind usually kept for a stubborn patient.",
	},
	["cls.priest.battle.w06.037"] = {
		"I'll patch you up after, if there's anything left. Professional courtesy.",
		"When we're done, I'll have a look at the wound I'm about to give you.",
	},
	["cls.priest.battle.w06.038"] = {
		"If they come for me, I'll step out of their minds and let the others catch them.",
		"Stay unremarkable. A healer nobody notices is a healer still working.",
	},
	["cls.priest.battle.w06.039"] = {
		"A blessing for you, free of charge. It just happens to hurt.",
		"Consider yourself blessed. Painfully, but blessed.",
		"Everyone gets a blessing from me. Yours comes the hard way.",
	},
	["cls.priest.battle.w06.040"] = {
		"Holy fire first, while it's still far off. Let it come to me burning.",
		"Start it burning from a distance. By the time it reaches me, half the fight is done.",
	},
	["cls.priest.buff.w06.001"] = {
		"A ward laid on before the trouble starts. Of all a priest's work, it's the part nobody ever thanks.",
		"Prevention is the dullest kind of mercy. It's also the kind that works best.",
		"Nobody remembers the wound that never happened. I'd still rather it never happened.",
	},
	["cls.priest.buff.w06.002"] = {
		"A little more stamina than you woke up with. Use it on the long way round.",
		"There. Your legs will last longer than your patience now.",
		"Fortitude. Not courage, mind you; that part you'll have to find yourself.",
	},
	["cls.priest.buff.w06.003"] = {
		"Stamina is a humble gift. No glow, no thunder, just a body that gives out an hour later than it would have.",
		"Fortitude is the plainest blessing I know. It doesn't make anyone braver, only harder to wear down.",
	},
	["cls.priest.buff.w06.004"] = {
		"Shield's up. Let it chew on that for a while.",
		"There's the ward. Every blow it eats is one I don't have to mend.",
		"One shield, freshly cast. Hit it all you like.",
	},
	["cls.priest.buff.w06.005"] = {
		"The shield won't stop everything. It only has to stop enough.",
		"A sheet of will, stretched thin over flesh. It breaks eventually; the point is that it breaks instead of skin.",
	},
	["cls.priest.buff.w06.006"] = {
		"The ward breaks, and then the soul under it needs a while before it can take another. Every priest learns to count that pause.",
		"Once the shield breaks, I can't lay another on the same soul for a while. So I choose the moment carefully.",
	},
	["cls.priest.buff.w06.007"] = {
		"Hold still a moment. There. You're a little harder to break now.",
		"Done. Go on ahead; you'll feel it when it counts.",
		"There you are. Don't waste it on something silly.",
	},
	["cls.priest.buff.w06.008"] = {
		"lifts a hand and speaks a few clipped words, and a faint pale shimmer settles and fades.",
		"touches two fingers to {g:his|her} brow, then turns the palm outward; for a moment the air seems to hold still.",
		"murmurs the words of a ward in an easy, practiced cadence, without breaking stride.",
	},
	["cls.priest.buff.w06.009"] = {
		"The Light doesn't only mend. Given early, it stands guard. I like it best that way.",
		"Some days I think the Light prefers this work: no blood yet, only a promise kept in advance.",
		"A little Light set aside against the hour it's needed.",
	},
	["cls.priest.buff.w06.010"] = {
		"Elune's light falls on everyone alike. I only point a little of it where it's needed.",
		"Pale and quiet, like moonlight on still water, and harder than it looks. Elune's gifts usually are.",
	},
	["cls.priest.buff.w06.011"] = {
		"Odd, laying protection with hands that feel so little. It works all the same.",
		"The Light comes through me grudgingly, but it comes. Whatever it thinks of me, it still guards what I ask it to guard.",
	},
	["cls.priest.buff.w06.012"] = {
		"Shadow protection. I know what the dark does up close; this keeps a little of it off you.",
		"Against the dark. Trust a priest to know which way it bites.",
	},
	["cls.priest.buff.w06.013"] = {
		"It's not armor, but it's free, and it doesn't chafe.",
		"Lighter than plate, and nobody has to polish it.",
	},
	["cls.priest.buff.w06.014"] = {
		"A handful of mana now, so I spend less of it later. Even mercy has to be budgeted.",
		"Wards are cheap, mending is dear. A priest who forgets that runs dry by the second fight.",
		"I lay it on and count the cost. Small. Smaller than what it saves, which is the only sum that matters.",
	},
	["cls.priest.buff.w06.015"] = {
		"That's my work in your bones now. Try not to break them anyway.",
		"You'll tire later than you would have. Find something worth the extra hour.",
	},
	["cls.priest.buff.w06.016"] = {
		"speaks a single hard word, and a translucent ward closes around like a skin of glass.",
		"flicks two fingers, and a shimmering barrier settles into place, waiting for the first blow.",
	},
	["cls.priest.buff.w06.017"] = {
		"Faith is easier to hand out before the fight. Afterward it has to compete with the bruises.",
		"I ask, and something answers. I've never been sure what, only that it keeps its word.",
		"A ward is a prayer with its sleeves rolled up.",
	},
	["cls.priest.buff.w06.018"] = {
		"One more thing before the road. There.",
		"Wards on, then onward. I don't move on without them.",
	},
	["cls.priest.buff.w06.019"] = {
		"Hold for two blows, ward. That's all I'm asking.",
		"Shield up, and now I watch it like a candle in a draft: when it goes out, I'll need another plan.",
	},
	["cls.priest.buff.w06.020"] = {
		"calls on the Light in a low voice, and a glow clings for a moment before sinking out of sight.",
		"asks the Light for a ward in plain, unhurried words, and gets one.",
	},
	["cls.priest.buff.w06.021"] = {
		"Armor for the spirit, the novices are taught to call it. A bit grand. It works, though.",
		"Laid on and forgotten, which is exactly right until the moment it matters.",
	},
	["cls.priest.buff.w06.022"] = {
		"I can't follow everyone into every fight. This way, a little of me goes along anyway.",
		"Part of my care, sent on ahead of me. Where they're going, I may not be quick enough to follow.",
	},
	["cls.priest.farewell.w06.001"] = {
		"Go safely. And if you get hurt, try to do it somewhere I can reach.",
		"Farewell. Keep your head down and your wounds small.",
		"Take care. I mean that in the most practical sense.",
	},
	["cls.priest.greet.w06.001"] = {
		"Well met. If you're hurt, say so now; I'd rather mend early than late.",
		"Hello. You look well. Let's keep it that way.",
	},
	["cls.priest.greet.w06.002"] = {
		"Greetings, and blessings, if you'll have them. Both are free.",
		"Good to see you upright. In my line of work, that's the best greeting there is.",
	},
	["cls.priest.heal.w06.001"] = {
		"Mana spent here is mana I won't have in the next fight. I spend it anyway; that's the job.",
		"Every mend comes out of the same well. I keep one eye on the wound and one on how deep the well still is.",
		"Count the wound, count what's left in me, decide. A healer's sums are short and never kind.",
	},
	["cls.priest.heal.w06.002"] = {
		"watches the hurt fade, and only then allows {g:his|her} shoulders to come down from around {g:his|her} ears.",
		"checks the mended place twice over with a careful eye, the way one checks a knot before trusting it with weight.",
	},
	["cls.priest.heal.w06.003"] = {
		"Stay down a moment longer. Getting up too fast undoes half my work.",
		"Don't look at it, look at me. There. Done before you could flinch.",
		"Let me finish before you go charging off again. I can't heal what I can't reach.",
	},
	["cls.priest.heal.w06.004"] = {
		"The Light asks so little of me in these moments: open hands, and the will to stay. The rest is not mine to carry.",
		"I never feel the Light so clearly as when it passes through me and goes where it's needed.",
	},
	["cls.priest.heal.w06.005"] = {
		"Right. Back to the wand before this thing remembers I'm here.",
		"Mended enough. The wand's been sulking; let's give it something to do.",
	},
	["cls.priest.heal.w06.006"] = {
		"Saving my mana for the others. This bottle can look after me.",
		"No sense spending mana on my own scratches when there's a flask for that.",
	},
	["cls.priest.heal.w06.007"] = {
		"The same hand that lays pain on enemies is the one that closes wounds. I've stopped asking which of the two is truer.",
		"To wound and to mend with one pair of hands. Some days they feel borrowed.",
	},
	["cls.priest.heal.w06.008"] = {
		"murmurs a short prayer without lifting {g:his|her} eyes from the hurt, the words worn smooth by use.",
		"bows {g:his|her} head over the wound and prays in a low voice, quick and practiced, like a craftsman naming tools.",
		"whispers the familiar words of mending, and a pale glow settles on the hurt like frost lifting off a field.",
	},
	["cls.priest.heal.w06.101"] = {
		"Close it, check the next one, close that. The work is mostly counting.",
		"A healer's day is a list: who's bleeding, who's next, who's pretending to be fine.",
		"Mending is mostly paying attention. The prayer is the short part.",
	},
	["cls.priest.heal.w06.102"] = {
		"Closed. Try to keep the inside on the inside for a while.",
		"Done. That was your free one for today.",
		"Mended. I'd ask you to be careful, but I've met you.",
	},
	["cls.priest.heal.w06.103"] = {
		"murmurs the last word of the prayer and lowers {g:his|her} hands, watching to see that the mending holds.",
		"finishes the prayer in a whisper, the way one closes the door of a room where someone is sleeping.",
		"keeps the words low and even until the mending takes, then lets them trail away.",
	},
	["cls.priest.heal.w06.104"] = {
		"The Light doesn't ask whose wound it is. I try not to ask either.",
		"It comes when I call, every time, and I have never once earned it. That is the whole of my faith.",
		"The Light goes where I point it. A strange trust, to give a pair of hands like mine.",
	},
	["cls.priest.heal.w06.105"] = {
		"Here, Light. Where it's torn.",
		"Mend what the fight undid, Light.",
		"Steady this, Light, and I'll manage the rest.",
	},
	["cls.priest.heal.w06.106"] = {
		"Each mending takes a little out of the well. The well refills. I try not to think about the day it won't.",
		"I spend myself in small coins all day. At the end of it I'll count what's left.",
		"Some of what I give doesn't come back. Not the mana: something underneath it.",
	},
	["cls.priest.heal.w06.107"] = {
		"The hurt backs down to a dull complaint. I can work with a complaint.",
		"Whole enough to go on. Whole enough is a priest's favorite measure.",
		"The worst of it is gone. The rest can file a request later.",
	},
	["cls.priest.heal.w06.108"] = {
		"lets the tension go out of {g:his|her} shoulders as the hurt eases, and looks for what needs doing next.",
		"straightens a crooked fold of the robe, as if tidiness were part of the cure.",
		"rolls the stiffness out of {g:his|her} neck and turns back to the work.",
	},
	["cls.priest.heal.w06.109"] = {
		"Patched. And back to the wand.",
		"Closed. Wand up again, before it notices.",
		"That's done. Back to poking it with the little stick.",
	},
	["cls.priest.heal.w06.110"] = {
		"Heal, look, count. Heal, look, count. Don't let the fear set the rhythm.",
		"Eyes on the wounds, not on the thing making them.",
		"Too early and it's wasted, too late and it's useless. The whole art fits between those two.",
	},
	["cls.priest.heal.w06.111"] = {
		"steps back out of the press and speaks a prayer fast and low, never taking {g:his|her} eyes off the fight.",
		"flinches at a near miss, finishes the prayer anyway, and the mending lands where it was meant to.",
	},
	["cls.priest.heal.w06.112"] = {
		"Stay in it. I've got your back, and your front.",
		"Keep at it. I'll keep you in one piece.",
		"Don't look back here. Look at that. I'm watching you.",
	},
	["cls.priest.heal.w06.113"] = {
		"Sit a moment. The next fight can wait until you're up.",
		"Done. Next time, maybe stand a step to the left.",
		"There you are. You may now go and get hurt again.",
	},
	["cls.priest.heal.w06.114"] = {
		"The fight is over, and now the real work: the small cuts nobody mentioned.",
		"Quiet again. This is when I find the wounds nobody had time to feel, mine included.",
		"After the noise, the inventory. A gash here, a bruise there, and a pride I can't do much for.",
	},
	["cls.priest.heal.w06.115"] = {
		"Every one of them leans on me a little, and none of them knows how much.",
		"They charge in because they trust I'll be here. That trust weighs more than the robe.",
		"I count heads after every mending. Habit. A good habit.",
	},
	["cls.priest.heal.w06.116"] = {
		"Behind you, all of you. Keep pushing.",
		"Nobody falls while I'm still praying. Keep at it.",
		"Hold the front. I'll hold everything else.",
	},
	["cls.priest.heal.w06.117"] = {
		"So many people to keep standing. I listen for the ones who stumble.",
		"In a crowd this size the healers are a choir. I just try not to sing flat.",
		"In all this din someone is counting on me by name, and I don't even know who.",
	},
	["cls.priest.heal.w06.118"] = {
		"In here, if I fail, nobody walks back to town. So I don't fail.",
		"In a place like this, a healer's mistake has a long echo.",
		"No second chance comes cheap in here. Every mending counts double.",
	},
	["cls.priest.heal.w06.119"] = {
		"The part of me that enjoys the shadow sulks when I do this. Let it sulk.",
		"The same hands that pressed pain into a foe a moment ago. Now they draw it out. I don't ask them to like it.",
		"After the shadow, mending feels slow and bright, like stepping out of a cellar into the sun. I squint, and do it anyway.",
	},
	["cls.priest.heal.w06.120"] = {
		"Yes, I can do the nice kind too. Don't spread it around.",
		"Healing. Not my favorite trick, but it's the one people thank me for.",
		"There. Now nobody can say I only know the dark half of the book.",
	},
	["cls.priest.heal.w06.121"] = {
		"The Light passes through me like a draft through an empty house. It still reaches the far rooms.",
		"It burns a little on the way through. Fine. I've served masters who burned worse.",
		"I mend flesh I hardly have a use for myself. There's a joke in that, and I'm too tired to tell it.",
	},
	["cls.priest.heal.w06.122"] = {
		"Patched up by a corpse. Don't make that face; it worked.",
		"Yes, the dead can heal. Try not to faint over it.",
		"Cold hands, good work. You'll get used to one of them.",
	},
	["cls.priest.heal.w06.123"] = {
		"Down it goes, into the cellar. Something down there still knows what to do with it.",
		"A potion for a body like mine. The alchemists never put that on the label.",
	},
	["cls.priest.heal.w06.124"] = {
		"Elune, a little of your patience here.",
		"Elune's mercy is quiet. I only have to be quiet enough to carry it.",
		"The goddess does the mending. I keep my hands where she can find them.",
	},
	["cls.priest.heal.w06.125"] = {
		"Be still. Elune has seen worse than this, and mended it.",
		"Rest a moment under her eye. It's closing.",
		"Easy. The goddess and I have you.",
	},
	["cls.priest.heal.w06.126"] = {
		"The loa listen, or the Light does. Today I don't ask which, as long as somebody answers.",
		"Whoever answered, thank you. I'll sort out the names later.",
	},
	["cls.priest.heal.w06.127"] = {
		"In the Light, be whole.",
		"Light, take this hurt, and give back whoever was carrying it.",
		"The Light keeps you. I only hold the door.",
	},
	["cls.priest.heal.w06.128"] = {
		"Some days I'm not sure I believe. The Light comes anyway. It doesn't seem to mind.",
		"Faith wavers; the mending doesn't. I've stopped asking what that means.",
		"The Light answers a doubting priest as readily as a devout one. I can't decide if that comforts me or frightens me.",
	},
	["cls.priest.heal.w06.129"] = {
		"The healer, drinking a potion. Nobody saw this.",
		"Even the one who mends needs a bottle now and then. Ugh. A better bottle, ideally.",
		"Prayers are for the others. This one's for me, and it tastes like it.",
	},
	["cls.priest.heal.w06.130"] = {
		"No sense spending a prayer on myself when a bottle will do. The prayers are for later.",
		"The potion buys me a mending I don't have to pay for out of my own reserves.",
		"Glass and bitterness instead of a prayer. Thrift, of a sort.",
	},
	["cls.priest.heal.w06.131"] = {
		"A warlock's stone. It works, and I've decided not to ask how.",
		"Cold, green, and handed over by someone whose power comes from elsewhere. Still: thank you.",
		"I mend with faith, and I've just mended myself with a warlock's handiwork. Let's keep this between us.",
	},
	["cls.priest.heal.w06.132"] = {
		"feels for the sore place, finds it gone, and seems faintly surprised.",
		"tests {g:his|her} weight on both feet, nods, and wipes both palms on the robe.",
	},
	["cls.priest.heal.w06.133"] = {
		"Renew goes on working quietly long after I've looked away. I like spells that keep their promises.",
		"A slow mending, left to run. Like setting a kettle on and walking off.",
		"This one keeps working after I've turned my back. I trust it the way you trust a good knot.",
	},
	["cls.priest.heal.w06.134"] = {
		"That one keeps working. Go on, it'll follow you.",
		"Go. It'll keep mending while you walk.",
	},
	["cls.priest.heal.w06.135"] = {
		"One prayer, and everyone gets a share. My favorite kind of arithmetic.",
		"A prayer wide enough for the whole company. Stand close; it finds you all that way.",
		"All of you at once. It costs, but so does burying people.",
	},
	["cls.priest.heal.w06.136"] = {
		"So many wounds closed by now that my hands start the prayer before I've finished deciding.",
		"Once I had to think through every word. Now the mending comes to hand like a craftsman's tools.",
		"Practice has made it quieter. Less trembling, fewer words, the same mercy.",
	},
	["cls.priest.heal.w06.137"] = {
		"Still new at this. The words came out right, which is more than I expected.",
		"They call it a lesser healing. It doesn't feel lesser from this side.",
		"My hands still tremble a little afterward. The teachers say that passes. I hope not all of it does.",
	},
	["cls.priest.heal.w06.138"] = {
		"And that's why I'm worth feeding.",
		"See? I'm useful.",
		"Mending: one of the few things I'm never late for.",
	},
	["cls.priest.heal.w06.139"] = {
		"I like this moment best: the face eases, and for a heartbeat they forget they were afraid.",
		"Their color comes back. Mine goes a little. A fair trade.",
		"Under my hands the hurt goes quiet, and the person underneath it comes back.",
	},
	["cls.priest.heal.w06.140"] = {
		"{target}, look at me, not at the wound. Good.",
		"Easy, {target}. Count to five. It'll be done by four.",
		"{target}. Still with us? Good. Nearly there.",
	},
	["cls.priest.heal.w06.141"] = {
		"{target}, I'm keeping a tally. You're winning, and that's not a compliment.",
		"Again, {target}? I'm starting to think you enjoy this.",
		"{target}, you bleed with real commitment. Admirable. Stop it.",
	},
	["cls.priest.heal.w06.142"] = {
		"lays a hand on {target}'s shoulder and speaks a few words, and the worst of the pain drains away.",
		"stays beside {target} just long enough for the prayer, then turns to look for whoever is next.",
		"catches {target}'s eye, nods once, and the mending takes hold between one word and the next.",
	},
	["cls.priest.heal.w06.143"] = {
		"lowers {g:his|her} hands when it's done and, for a moment, does nothing at all.",
		"wipes both hands on the hem of the robe and counts under {g:his|her} breath what is left to mend.",
	},
	["cls.priest.heal.w06.144"] = {
		"The healing is the easy part. Afterward, in the quiet, is when everything catches up.",
		"Nobody thanks a mending once it's finished. That's how you know it was done well.",
		"The quiet afterward is the hardest part of the craft. Nothing for the hands to do but remember.",
	},
	["cls.priest.heal.w06.145"] = {
		"I listen to my reserves the way a sailor listens to the hull.",
		"Mana refills only when I sit still. So I spend it like coin, not like water.",
		"I measure out each prayer like a careful cook measures salt. Too much now, nothing later.",
	},
	["cls.priest.heal.w06.146"] = {
		"You'll have to hit harder than that. I mend faster than you can hurt.",
		"Whatever you take, I put back. Let's see who tires first.",
		"Keep at it. I've got more prayers than you've got patience.",
	},
	["cls.priest.heal.w06.147"] = {
		"Don't fall behind. One wound behind becomes two, and then a body.",
		"The worst sound in a fight is the one after a heal comes too late. Not today.",
		"Faster than the hurt comes: that's the whole job. Keep up.",
	},
	["cls.priest.heal.w06.148"] = {
		"Fixed. Go on, it's still looking at you.",
		"Back in. I'm right behind your shoulder.",
		"Covered. If it hits you again, I'll take it personally.",
	},
	["cls.priest.heal.w06.149"] = {
		"I ask, and something answers. Every time I'm a little amazed that it bothers.",
		"Prayer is a door I knock on all day. It has never once stayed shut.",
		"Whatever listens when I pray, it listens well. Someday I'd like to meet it and thank it properly.",
	},
	["cls.priest.heal.w06.150"] = {
		"Be mended, and be quick about it.",
		"Close. Knit. Hold.",
		"Mercy, here, and now.",
	},
	["cls.priest.heal.w06.151"] = {
		"I'm only the hands. Whatever does the real work never signs its name.",
		"People thank me. I pass it on, upward, where it belongs.",
		"The skill is mine, the mercy isn't. I try to remember which is which.",
	},
	["cls.priest.heal.w06.152"] = {
		"keeps one eye on the foe and one on the wounds, and the prayer runs on under the noise like a stream under ice.",
		"speaks the words between two blows of the fight, and turns back to it before the glow has faded.",
	},
	["cls.priest.heal.w06.153"] = {
		"glances along the line of companions, counting, and sends the mending where the count came up short.",
		"moves among the others without hurry, a word here, a touch there, like someone tending a row of lamps.",
	},
	["cls.priest.heal.w06.154"] = {
		"Someone has to stand at the back and refuse to let anyone die. Today it's me. Every day it's me.",
		"I didn't take up the robe to be loved. I took it up so fewer people would be buried.",
		"Keep them alive. Everything else in the creed is commentary.",
	},
	["cls.priest.heal.w06.155"] = {
		"Healers don't get to be squeamish. Lucky me.",
		"I've seen what's under the skin more often than I'd like. Still, closed is better.",
	},
	["cls.priest.heal.w06.156"] = {
		"Pain out there, mending back here. A priest's fight swings like a pendulum.",
		"Hurt the foe, heal the hurt, hurt the foe again. The rhythm is all of it.",
		"Strike, mend, strike. A plain little tune, and it works.",
	},
	["cls.priest.heal.w06.157"] = {
		"Not yet, not yet... now. They'll never know how close that was. Better so.",
		"I saw the moment coming and met it. They'll never know there was a moment.",
	},
	["cls.priest.heal.w06.158"] = {
		"uncorks the vial and drinks it down without ceremony, like any healer taking medicine: last, and grudgingly.",
		"empties the little bottle in two swallows and grimaces at the taste, the worst patient of the day.",
	},
	["cls.priest.heal.w06.159"] = {
		"closes a fist around the healthstone, and its cold green glow sinks into the skin.",
		"turns the warlock's stone over once, doubtfully, then uses it anyway.",
	},
	["cls.priest.heal.w06.160"] = {
		"No company to tend today. The only patient is the stubborn one in my own boots.",
		"Alone, a healer sits at both ends of the bargain. The prayer goes out and comes straight back.",
		"On my own, every mending is a quiet one. Nobody to fuss over but me.",
	},
	["cls.priest.heal.w06.161"] = {
		"Healer, patient and audience. I play every part.",
		"Nicely done. Why, thank you. Think nothing of it.",
	},
	["cls.priest.heal.w06.162"] = {
		"A pause between fights. I top everyone up and pretend I'm not watching my reserves.",
		"In here the quiet never lasts. I mend what I can before the next door opens.",
		"The others check the fallen for coin; I check the living for holes.",
	},
	["cls.priest.heal.w06.163"] = {
		"Don't talk. Let it work.",
		"Shh. Almost finished.",
		"Rest your weight on me a moment.",
	},
	["cls.priest.heal.w06.164"] = {
		"Better than before. Well, nearly.",
		"All closed up. No charge, this time.",
		"There, the cut's shut. You'll have a handsome scar.",
	},
	["cls.priest.heal.w06.165"] = {
		"Each life I hold up is heavy, and I wouldn't set a single one down.",
		"People think healing is soft work. Let them carry someone back from the edge just once.",
		"Holding someone up is a weight you can't put down halfway.",
	},
	["cls.priest.heal.w06.166"] = {
		"The Light comes up through my palms like warmth through a stone left in the sun.",
		"Warm Light, warm hands. Some days I'd heal just to feel it pass.",
	},
	["cls.priest.heal.w06.167"] = {
		"The Light holds this line with us!",
		"Hold fast! The Light's still with us!",
	},
	["cls.priest.heal.w06.168"] = {
		"I can close the cut. The fear that came before the blow is beyond me.",
		"Flesh I can mend. The look that stays in the eyes afterward isn't my craft.",
	},
	["cls.priest.heal.w06.169"] = {
		"lets the moment pass without comment, as one does with small mercies.",
		"seems to find a little more footing, as if someone had set a heavy load down nearby.",
	},
	["cls.priest.heal.w06.170"] = {
		"Little mercies keep the world turning. That was one.",
		"A small repair. The world is mostly held together by small repairs.",
		"Nothing grand. Just one hurt fewer in the world than a moment ago.",
	},
	["cls.priest.heal.w06.171"] = {
		"Line up, the healer's open.",
		"Anybody else leaking? Speak up now, before I sit down.",
		"Who's next? No pushing, there's mercy for everyone.",
	},
	["cls.priest.heal.w06.172"] = {
		"Every wound teaches me where the body is weakest. I wish it taught gentler lessons.",
		"I know the body better than I ever wanted to. Where it tears, where it holds, where it lies about being fine.",
	},
	["cls.priest.heal.w06.173"] = {
		"You walked into that one. Don't again; mana doesn't grow on trees.",
		"That was avoidable. I closed it anyway. Learn something.",
	},
	["cls.priest.heal.w06.174"] = {
		"The older priests say you carry every one you didn't reach. So I reach, every time I can.",
		"The elders of the order say no healer forgets the ones who slipped through. I'd rather have less to remember.",
	},
	["cls.priest.heal.w06.175"] = {
		"holds out a hand, and a soft gold light pours from it like water from a jug, no more and no less than is needed.",
		"murmurs a short prayer; the Light gathers, settles, and is gone, leaving the wound smaller than it found it.",
	},
	["cls.priest.heal.w06.176"] = {
		"If I had a copper for every wound I've closed, I could retire and let them all bleed.",
		"The pay is terrible, the hours are worse, and the patients bite. Apparently I love it.",
		"Healing: the only trade where the customer usually shouts at you mid-job.",
	},
	["cls.priest.heal.w06.177"] = {
		"Three hurt, one prayer. Choose. Choose fast. Don't look back at the choice.",
		"Triage is a cold word for a warm thing. I do it anyway, and quickly.",
		"Front first. Always the front. The rest the moment I can.",
	},
	["cls.priest.heal.w06.178"] = {
		"There. Now try to dent it again, I dare you.",
		"Mended under your nose. How does that feel?",
		"Everything you broke, I've put back. Do try harder.",
	},
	["cls.priest.heal.w06.179"] = {
		"The shadow is quicker. Mending is slower and asks more of me. That's exactly why I keep practicing it.",
		"Every priest learns both halves. The hard part is remembering which one I'm for.",
		"Discipline is choosing the slow bright work when the dark work would be easier.",
	},
	["cls.priest.heal.w06.180"] = {
		"Go whole, and go carefully.",
		"Done. Walk in mercy, and walk a little slower.",
		"There. Carry it lightly; it was given freely.",
	},
	["cls.priest.heal.w06.181"] = {
		"I don't pretend to know what answers. I only know the wound closes when I ask.",
		"Call it faith, call it a trained habit of the hands. From the outside the result looks the same.",
	},
	["cls.priest.heal.w06.182"] = {
		"Could someone else bleed for a change? Spread it about a little.",
		"The same faces, every fight. I'm starting a waiting list.",
		"Take turns getting hit, would you? It's kinder on my prayers.",
	},
	["cls.priest.heal.w06.183"] = {
		"Everyone standing, everyone grumbling. That's a good day's work.",
		"No one lost. On days like this the craft feels almost like singing.",
		"All of them on their feet and arguing about the loot. Music.",
	},
	["cls.priest.heal.w06.184"] = {
		"works with the unhurried patience of the dead, who have nowhere else to be.",
		"bends over the hurt with cold, careful fingers, and the mending takes as surely as any living priest's.",
	},
	["cls.priest.heal.w06.185"] = {
		"The great prayers come easily now. Easy is dangerous, so I make myself mean every word.",
		"So much power behind the words by now. It would be easy to forget whose it is.",
	},
	["cls.priest.heal.w06.186"] = {
		"Every heal is an argument with death. I win most of them. Most.",
		"Death keeps asking. I keep saying no, a prayer for every asking.",
		"I haggle with death all day over small sums. I'm saving my strength for the large ones.",
	},
	["cls.priest.heal.w06.187"] = {
		"Hand on mine. Feel that? That's you, staying.",
		"Look, it's already less red. You're mending faster than you think.",
	},
	["cls.priest.heal.w06.188"] = {
		"lets the wand hang loose in one hand while the other shapes the prayer, then snaps it back up toward the foe.",
		"breaks off from the fight for the length of a prayer, no longer, and is back at it before the mending has stopped glowing.",
	},
	["cls.priest.heal.w06.189"] = {
		"Mend like good mortar: slow to set, hard to crack. The Light and I agree on that much.",
		"Firm hands, honest stone, a word to the Light. Mending the dwarven way wants nothing fancier.",
	},
	["cls.priest.heal.w06.190"] = {
		"The abbey at Northshire taught me the words. The road taught me to say them quickly.",
		"At Northshire they taught me the slow prayers. Since then I've learned the quick ones.",
	},
	["cls.priest.heal.w06.191"] = {
		"Bleed, mend, walk on. Some days that's the whole story.",
		"Patch, carry on, patch again. Not glorious. Necessary.",
		"The road wears holes in people; I follow along behind it, darning.",
	},
	["cls.priest.jest.w06.001"] = {
		"I prayed for patience. I was sent a party of adventurers. I believe that's what they call a lesson.",
		"Why do priests carry wands? Because 'I'll pray for you' doesn't scare off wolves.",
	},
	["cls.priest.levelup.w06.001"] = {
		"Something new is waiting at the trainer's, I can feel it. A prayer I haven't learned yet, already half familiar.",
		"Stronger, steadier. Whatever answers me answers a little more fully now.",
		"A little more I can carry for others. That's the only kind of growing I've ever cared about.",
	},
	["cls.priest.levelup.w06.002"] = {
		"feels the well inside run a little deeper, and lets out a quiet, surprised laugh.",
		"flexes {g:his|her} fingers and feels the power sit easier in them, as if it had finally decided to stay.",
		"lifts {g:his|her} gaze for a moment, the way one does when a long-awaited answer arrives.",
	},
	["cls.priest.lowhp.w06.001"] = {
		"Heal the healer. Swallow the pride and spend the mana on me.",
		"My own turn on the table. Quick, before the hands stop listening.",
		"Rule one, and I'm breaking it: never let yourself get this low. Fix it now.",
	},
	["cls.priest.lowhp.w06.002"] = {
		"I'm the one taking the blows! Somebody draw it off me!",
		"Get it off the healer! Unless you'd all like to carry on without one!",
		"It's on me, and I can't pray and run at once! Help!",
	},
	["cls.priest.lowhp.w06.003"] = {
		"presses a palm flat to {g:his|her} own chest and whispers fast, the words tumbling over each other.",
		"staggers, then plants {g:his|her} feet and lays a trembling hand over the worst of the wounds.",
		"falls back a step, lips already shaping a prayer meant, for once, for {g:himself|herself}.",
	},
	["cls.priest.lowhp.w06.004"] = {
		"This is the part where I take my own advice. Lie down? No. Pray faster.",
		"The healer's in trouble. Luckily, the healer also knows the cure.",
		"Funny how the prayers sound different when they're for me.",
	},
	["cls.priest.lowhp.w06.005"] = {
		"I've been dead once already. I didn't care for it. Not again.",
		"This body has failed before and been made to walk. I'd rather not test it twice.",
	},
	["cls.priest.lowhp.w06.006"] = {
		"Heart hammering, hands slick. Breathe, and say the words anyway.",
		"Every breath is a small knife. Use it to pray.",
	},
	["cls.priest.lowhp.w06.007"] = {
		"Light, I'm still useful. Keep me a while longer.",
		"Not yet, Light. There's work left, and I'm the one who has to do it.",
		"Light, I ask for others every day. This once, for me.",
	},
	["cls.priest.lowhp.w06.008"] = {
		"Elune, I'm not done. Hold me a little longer.",
		"Mother Moon, steady me. I can't fall while there's work left.",
	},
	["cls.priest.lowhp.w06.009"] = {
		"The shield should have been up already. Up it goes now, late and grateful.",
		"Shield, then heal, then worry. Order matters.",
		"Wrap the ward tight and close the worst of it. Fast.",
	},
	["cls.priest.lowhp.w06.010"] = {
		"Run! Go on, run, and leave me be!",
		"Away from me! Go, and take your fear with you!",
	},
	["cls.priest.lowhp.w06.011"] = {
		"Alone and on the edge. If this ends here, nobody will even know which prayer was the last.",
		"No one coming. Fine. I've never needed an audience to pray.",
	},
	["cls.priest.lowhp.w06.012"] = {
		"You'll have to do better. I've stitched people together from less than this.",
		"Others have walked away from wounds like these. I made sure they did.",
	},
	["cls.priest.lowhp.w06.013"] = {
		"seems to thin at the edges, slipping out of the foe's notice like a voice fading from a crowded room.",
		"goes very quiet and very still, as if trying to be forgotten by everything at once.",
	},
	["cls.priest.lowhp.w06.014"] = {
		"Someone will still need me after this. Hold on to that, not to the pain.",
		"Think of the next person I'll have to mend. Stay for them.",
		"There's always one more wound out there waiting for these hands. Stay.",
	},
	["cls.priest.lowhp.w06.015"] = {
		"Every patient I ever scolded for flinching: I take it back.",
		"Ah. So this is what my patients complain about.",
	},
	["cls.priest.lowhp.w06.016"] = {
		"keeps casting toward the others even as {g:he|she} sways on {g:his|her} feet.",
		"sways, steadies, and turns the next prayer toward a companion instead of {g:himself|herself}.",
		"ignores the wound one moment longer, to finish the word meant for someone else.",
	},
	["cls.priest.lowhp.w06.017"] = {
		"Health or mana, one of them has to give. Choose quickly.",
		"Spend it all on staying up. Mana comes back. I don't, not easily.",
	},
	["cls.priest.lowhp.w06.018"] = {
		"Fine. Fine! Let me just patch this and we'll carry on.",
		"Ow. Rude. Give me a moment to mend and we'll discuss it.",
	},
	["cls.priest.muse.w06.001"] = {
		"The worst part of running dry isn't the danger. It's watching someone bleed while I wait for my reserves to fill.",
		"Mana is a well, not a river. Draw too fast and you hear the bucket hit stone.",
		"When the power runs out, all that's left is a tired person in a robe, holding very still and hoping.",
	},
	["cls.priest.muse.w06.002"] = {
		"sits down wherever there is room, uncorks a flask of water and drinks it slowly, eyes half closed, as if listening to something fill back up.",
		"takes small, patient sips from a waterskin and waits, hands loose in {g:his|her} lap, for the quiet inside to deepen again.",
		"drinks, rests, drinks again: the old unglamorous ritual of a healer putting {g:himself|herself} back together.",
	},
	["cls.priest.muse.w06.003"] = {
		"My wand will never be sung about. It just spits its little bolt, over and over, while the real work happens in my head.",
		"A wand is the least solemn thing I own, and the one I use most. There's a sermon in that somewhere.",
		"Nobody trains for years to point a stick and wait. And yet here I am, pointing, waiting, quite good at it.",
	},
	["cls.priest.muse.w06.004"] = {
		"Yes, it's a wand. No, it doesn't do tricks. Well. One trick. Repeatedly.",
		"Don't laugh at the wand. It has seen off more trouble than most swords I know.",
	},
	["cls.priest.muse.w06.005"] = {
		"Cloth doesn't stop a blade. It does show every stain, so everyone knows exactly what kind of day I've had.",
		"The hem of this robe has collected a sample of every road I've walked. Someone could map my travels by the mud.",
		"Plate for the ones at the front, cloth for the one at the back. Someone decided that long ago, and my ribs still have opinions.",
	},
	["cls.priest.muse.w06.006"] = {
		"turns back a sleeve, finds a fresh tear in the cloth, and sighs at it with the patience of someone who mends things for a living.",
		"threads a needle with care and closes a rip in {g:his|her} robe, small even stitches, the same steady hands that close other wounds.",
	},
	["cls.priest.muse.w06.007"] = {
		"Doubt isn't the enemy of what I believe. It's the guard at the gate, asking each new certainty for its papers.",
		"On the days I doubt, I work exactly as hard. The prayer doesn't check my mood before it answers.",
		"If I ever stop doubting, I'll know something has gone wrong. Certainty is how the worst zealots begin.",
	},
	["cls.priest.muse.w06.008"] = {
		"The Light doesn't come because I'm good. It comes because I've practiced opening the door, a thousand times, on tired days too.",
		"People imagine the Light as a gift dropped in the lap of the worthy. It's more like a craft. You show up, you kneel, you do it again.",
		"Discipline first, grace after. The teachers said it so often I stopped hearing it. Now I hear it every time the Light answers.",
	},
	["cls.priest.muse.w06.009"] = {
		"Shadow is not evil the way a knife isn't evil. But I keep it in a sheath, and I always know where the sheath is.",
		"The darker prayers come easily when I'm angry. That's exactly why I only use them when I'm calm.",
		"There's a cold, clean pleasure in the shadow arts. I note it the way a physician notes a fever: carefully, and without trusting it.",
	},
	["cls.priest.muse.w06.010"] = {
		"Some of the old teachers won't speak of the darker arts at all. Others say a mind that doesn't know its own dark corners is the easiest one to break. I think both are afraid of the same thing.",
		"One school says: never touch the dark. The other says: know it, so it can't surprise you. I've ended up somewhere in between, which is to say, careful.",
	},
	["cls.priest.muse.w06.011"] = {
		"I rarely learn their names. I remember the faces, though: the moment the fear goes out of them and they realize they'll be fine.",
		"Strangers I've patched up sometimes wave at me across a crowd. I never recognize the face first. I recognize the wound.",
		"There's a look people get when the pain stops. Surprise, mostly, and a little embarrassment. I collect it the way others collect coin.",
	},
	["cls.priest.muse.w06.012"] = {
		"Others admire the view. I watch everyone's color and the way they're favoring that left leg.",
		"A healer never really looks at the scenery. There's always someone at the edge of my eye, limping slightly, pretending not to.",
		"I count limbs on everyone I meet, without meaning to. Two arms, two legs, good color. Then I can say hello.",
	},
	["cls.priest.muse.w06.013"] = {
		"When someone falls, everyone looks at the healer. When nobody falls, everyone looks at the loot.",
		"Keep everyone standing and it's 'a quiet day'. Lose one and it's the healer's fault. I've made my peace with the arithmetic.",
	},
	["cls.priest.muse.w06.014"] = {
		"My prayer book is more margin than prayer by now: notes, corrections, the odd sketch of a wound I didn't understand.",
		"Every rite I was taught, I've rewritten a little in pencil. The words stay; the notes on when they fail are mine.",
		"Study is the quiet half of healing. Nobody sees the hours with the book, only the moment the words work.",
	},
	["cls.priest.muse.w06.015"] = {
		"The words of a healing prayer matter less than the teachers pretend. What matters is whether I mean them while my hands are busy.",
		"I've stumbled over the words and still seen the wound close. I've said them perfectly and felt nothing answer. Intent is the stranger thing.",
	},
	["cls.priest.muse.w06.016"] = {
		"kneels for a few moments, not long enough for anyone to notice, then rises and brushes off {g:his|her} knees.",
		"lowers {g:his|her} head over clasped hands, lips moving without sound, and is done before the moment can turn into a ceremony.",
	},
	["cls.priest.muse.w06.017"] = {
		"pats down {g:his|her} pockets in a familiar order: water, a little bread, the worn book, a spare strip of cloth. Then nods, satisfied.",
		"takes stock of what's left: a waterskin half full, a heel of bread, a book whose spine has given up. Enough, for now.",
	},
	["cls.priest.muse.w06.018"] = {
		"Anyone I cross paths with can have a blessing. It costs nothing, and you'd be amazed how few people ask.",
		"I hand out fortitude like bread on a feast day. Some folk look suspicious. Most just stand a little straighter.",
	},
	["cls.priest.muse.w06.019"] = {
		"When two people are bleeding and I can reach one in time, I choose. Nobody tells you that is the job. It is the job.",
		"Choosing who to heal first: a cold task for a burning moment. I've learned to make the choice fast, and to make my peace with it slowly.",
		"The hardest thing I was taught wasn't a spell. It was how to look away from one wound so I could close another.",
	},
	["cls.priest.muse.w06.020"] = {
		"My fear isn't dying. It's standing there with empty hands while someone looks at me, waiting for the thing I can't do.",
		"Every healer dreads the same moment: the spell that should come and doesn't. I've felt it. It feels like falling while standing still.",
	},
	["cls.priest.muse.w06.021"] = {
		"People assume priests are serene. I'm serene the way a duck is: calm on top, paddling like mad underneath.",
		"Calm? I'm a bundle of nerves in a robe. I've just had a lot of practice looking peaceful.",
	},
	["cls.priest.muse.w06.022"] = {
		"No, I can't bless your boots so they stop squeaking. I've tried. Twice.",
		"People ask me to bless the strangest things. Dice, mostly. Sometimes a sausage.",
	},
	["cls.priest.muse.w06.023"] = {
		"The others can fall and get up. If I fall, nobody gets up. I keep that in mind every time I'm tempted to be brave.",
		"Courage, for me, means staying at the back where I belong. It looks less heroic than it is.",
		"My first duty is to stay on my feet. Not out of fear: everyone I'm holding up is counting on it.",
	},
	["cls.priest.muse.w06.024"] = {
		"I've wished more than one enemy a quick mending, right after I put them down. It isn't hypocrisy. It's a healer having a bad day.",
		"Even mid-fight, part of me notes where the other side is hurt, and wishes I could fix it. I've stopped trying to train that out of myself.",
	},
	["cls.priest.muse.w06.025"] = {
		"In the Plaguelands, the dead walk in their thousands. Every wound I close is a small, stubborn vote against them.",
		"The plague made the whole world understand what a healer is for. I'd rather it had learned some other way.",
	},
	["cls.priest.muse.w06.026"] = {
		"The Light burns a little going through me. I let it. A little pain is a fair toll for a dead thing that mends the living.",
		"Some of the living flinch when I heal them. Fair enough. I flinch too, every time the Light remembers what I am.",
		"They told me the Light would refuse me. It didn't. It just makes me feel every inch of the distance between us.",
	},
	["cls.priest.muse.w06.027"] = {
		"A corpse with a prayer book, keeping the living alive. The Lich King must be furious, and that cheers me more than it should.",
		"My own flesh barely mends anymore. Other people's, I can still stitch together. There's a joke in that I'm too tired to tell.",
	},
	["cls.priest.muse.w06.028"] = {
		"Elune does not shout. She waits, the way still water waits, until I'm quiet enough to see what's in it.",
		"The sisters of the temple teach that Elune answers softly, so that only the patient hear. I'm still learning patience.",
		"Wherever the road goes, Elune's quiet goes with me. I only have to stop talking long enough to notice it.",
	},
	["cls.priest.muse.w06.029"] = {
		"Elune's light is gentle; it doesn't burn what it touches. I try to heal the same way, without making anyone feel smaller for needing it.",
		"My people pray to a goddess who watches rather than commands. It makes a difference, I think, in how we mend each other.",
	},
	["cls.priest.muse.w06.030"] = {
		"Dwarves came to the Light the way we come to anything: slowly, suspiciously, and then for good.",
		"In Ironforge they say a prayer should be like a good wall: plain, solid, and still there in a hundred years.",
	},
	["cls.priest.muse.w06.031"] = {
		"The brothers of Northshire Abbey say the Light is a lantern, not a sun: you carry it to where it's needed.",
		"The Cathedral in Stormwind is all height and gold. The Light I know is smaller, and it travels better.",
	},
	["cls.priest.muse.w06.032"] = {
		"The Darkspear elders say the loa respect anyone who keeps a promise. I keep mine to the wounded. I hope that counts with everyone listening.",
		"Old spirits on one side, the priests' teachings on the other. I've stopped choosing between them. I just heal, and let them argue.",
	},
	["cls.priest.muse.w06.033"] = {
		"I can put terror into a mind with a single shout. It's useful. I hate how useful it is.",
		"The scream that scatters my enemies comes from somewhere I'd rather not visit. I visit anyway, when I have to, and leave quickly.",
	},
	["cls.priest.muse.w06.034"] = {
		"Inside another mind, everything is too close: their fear, their hunger, the wrongness of my own will in their hands. I never stay longer than I must.",
		"Taking someone's body like a borrowed coat. The teachers called it a tool. It feels more like trespass every time.",
	},
	["cls.priest.muse.w06.035"] = {
		"Seeing through someone else's eyes for a moment: how strange their world looks, all its colors a little off from mine.",
		"When I look through another's eyes, the first thing I notice is never what they see. It's what they're ignoring.",
	},
	["cls.priest.muse.w06.036"] = {
		"Binding the dead in chains of prayer feels like the oldest thing a priest does. As if we were made for it, long ago.",
		"The shackles I lay on the restless dead aren't cruelty. They're a pause, a held breath, a chance for someone to finish it cleanly.",
	},
	["cls.priest.muse.w06.037"] = {
		"Shackling the walking dead, when I'm one of them. I try not to think too hard about how easily it would work on me.",
		"The chains take the undead and leave me alone. I've never been sure whether that's mercy or an oversight.",
	},
	["cls.priest.muse.w06.038"] = {
		"Calling someone back across death never becomes ordinary. I say the words the same way each time, and each time my hands shake afterward.",
		"Death is a door I'm allowed to knock on. I've never once been sure it will open, and I hope I never get used to it when it does.",
	},
	["cls.priest.muse.w06.039"] = {
		"Half of staying alive as a healer is learning to be forgettable at exactly the right moment. The other half is running.",
		"There's a prayer that simply makes the enemy forget I'm here. Of all the gifts, it's the one I'm least proud of and most grateful for.",
	},
	["cls.priest.muse.w06.040"] = {
		"The fire I light inside before a fight isn't anger. It's more like a hearth: something to keep my resolve from going cold.",
		"A small flame kindled under the ribs, and suddenly the blows land softer. The teachers called it inner fire. I call it not giving up early.",
	},
	["cls.priest.muse.w06.041"] = {
		"For someone sworn to mend, I own a surprising number of ways to set things on fire.",
		"There's a prayer that calls fire down on an enemy. Every time it works, I look at my hands for a moment, as if they belonged to someone else.",
	},
	["cls.priest.muse.w06.042"] = {
		"Picking curses and enchantments off people is like picking burrs off a dog: tedious, a little prickly, and they're always grateful afterward.",
		"Half my spells mend flesh. The other half untangle magic someone else left lying around in a body. Nobody warns you about the untangling.",
	},
	["cls.priest.muse.w06.043"] = {
		"Tell me early when you're hurt. I'm a healer, not a mind reader. Well, not before lunch.",
		"Bleeding? Say so. I notice most things, but pride hides wounds better than any armor.",
	},
	["cls.priest.muse.w06.044"] = {
		"Every time I strike with the mind, a little of it echoes back into my own skull. Nobody mentions the headaches in the training halls.",
		"Hurling a thought hard enough to wound leaves the thrower dizzy too. A fair trade, I suppose. Most days.",
	},
	["cls.priest.muse.w06.045"] = {
		"Stillness is part of the craft. Sit, breathe or don't, let the quiet seep back in. A healer who can't rest is only a fast road to an empty well.",
		"The trainers called it spirit: whatever fills me up again when I stop moving. I've never found a better word, and I've looked.",
	},
	["cls.priest.muse.w06.046"] = {
		"scrubs at {g:his|her} hands with a little water, working at the creases where other people's troubles tend to linger.",
		"rinses {g:his|her} fingers one by one, with the absent care of someone who has done it a thousand times between one wound and the next.",
	},
	["cls.priest.muse.w06.047"] = {
		"traces a small sign in the air out of habit, notices {g:himself|herself} doing it, and smiles a little.",
		"makes the old gesture of blessing toward nothing in particular, then tucks the hand away as if caught.",
	},
	["cls.priest.muse.w06.048"] = {
		"opens a small, battered book to a page that falls open on its own, and reads a few lines with silent lips.",
		"leafs through a worn little volume, pausing at a dog-eared page as at an old friend's door.",
	},
	["cls.priest.muse.w06.049"] = {
		"Priests don't flee. We relocate with great dignity, at speed.",
		"I never retreat. I move to where I'm more useful, which happens to be further away.",
		"I'm not running away. I'm going to fetch help, very quickly, in the opposite direction.",
	},
	["cls.priest.muse.w06.050"] = {
		"I never know what to do when someone thanks me properly. Mending them was the easy part. Being looked at is harder.",
		"Gratitude makes me shuffle my feet like an apprentice. I'd rather be handed a cup of water and left to sit.",
	},
	["cls.priest.muse.w06.051"] = {
		"No one ever asked me to save everyone. That demand comes from somewhere inside, and it's the hardest master I've served.",
		"I took a vow to heal. Somewhere along the way it grew into a vow to never lose anyone, and that one I can't keep.",
	},
	["cls.priest.muse.w06.052"] = {
		"Resting isn't laziness for me. It's maintenance. A tired healer makes mistakes, and my mistakes have names.",
		"Sitting down while others work still feels wrong. It shouldn't. Everyone works better when the one keeping them alive isn't exhausted.",
	},
	["cls.priest.muse.w06.053"] = {
		"My favorite sound isn't a hymn. It's people laughing a little too loudly after a fight everyone survived.",
		"The best part of the job comes after: the shaky jokes, the passed flask, the one who was pale an hour ago complaining about the food.",
	},
	["cls.priest.muse.w06.054"] = {
		"Traveling alone, a healer has only one patient. It's quieter, and oddly lonelier than tending a crowd.",
		"With no one to look after but myself, my prayers feel like a voice in an empty room. Still, the room answers.",
	},
	["cls.priest.muse.w06.055"] = {
		"Walk carefully. And whatever watches over you, may it be wide awake today.",
		"Go well. If you get in trouble, shout. I'm quicker than I look.",
	},
	["cls.priest.muse.w06.056"] = {
		"Some days I catch myself weighing who deserves the next heal. I stop at once. That scale isn't mine to hold.",
		"It would be easy to heal the kind ones faster. The wound doesn't care who's kind, so neither can I.",
	},
	["cls.priest.muse.w06.057"] = {
		"After a long stretch of casting there's an ache behind my eyes, like I've been staring into a lamp. It passes. It always passes.",
		"Power doesn't come free. Mine costs a dull throb at the temples and a sudden, shameless hunger for bread.",
	},
	["cls.priest.muse.w06.058"] = {
		"The trainers warn every novice: a priest who can't say no will be empty by noon. I've learned to ration kindness. It feels worse than it sounds.",
		"'Spend yourself on everyone and you'll have nothing for the one who needs it.' The teachers say it as a warning. On tired days I hear it as an accusation.",
	},
	["cls.priest.muse.w06.059"] = {
		"The elders insist the Light is not a weapon. Then they teach us to call it down on someone's head. I've stopped pointing this out at supper.",
		"'The Light is for mending,' says every priest, right before showing you how to burn a gnoll with it.",
	},
	["cls.priest.muse.w06.060"] = {
		"Mending and harming use the same knowledge, the same focus, the same quiet. Only the direction differs, and I choose it every time.",
		"The remedy in one hand, the harm in the other. The trick is never letting either hand forget the other is there.",
	},
	["cls.priest.muse.w06.061"] = {
		"The mind is a house with a cellar. Studying the dark arts means learning where the cellar door is, and keeping the key on me.",
		"Every mind has rooms its owner never visits. My training taught me to find them. Decency taught me to knock.",
	},
	["cls.priest.muse.w06.062"] = {
		"Healing taught me to read faces. Pallor, a clenched jaw, the brave smile that means 'it's worse than I'm saying'. Lies show up the same way.",
		"I can tell a sprain from a break by how someone stands. I can tell a lie by the same means. It makes me poor company at cards.",
	},
	["cls.priest.muse.w06.063"] = {
		"Whatever heals through me isn't mine. I'm the cup, not the water. Good to remember on days people call me a miracle worker.",
		"When it works, it isn't me. When it fails, it's usually me. That seems to be the arrangement, and I've accepted it.",
	},
	["cls.priest.muse.w06.064"] = {
		"A priest's library is mostly candle stubs and borrowed books. Mine fits in a pack, and I've read every page more than twice.",
		"I've spent my eyes on too many prayers by a stub of candle. Still the best hours of any day, those small quiet ones.",
	},
	["cls.priest.muse.w06.065"] = {
		"There's a small, private joy in the first heal of the day, before anything has gone wrong. I try to notice it every time.",
		"The first wound I close each day still surprises me a little. As if the world had agreed to cooperate, just once more.",
		"Before the trouble starts, there's always one easy mending: a scraped knuckle, a sprained wrist. I'm fond of those.",
	},
	["cls.priest.muse.w06.066"] = {
		"Give me a moment. The well is dry, and shouting at it won't fill it.",
		"Patience. My reserves are empty, and nothing I know of hurries them.",
		"If you want me useful in the next fight, let me have one minute of silence first.",
	},
	["cls.priest.muse.w06.067"] = {
		"Knowing exactly how fragile a body is doesn't make me braver. It makes me very polite to anything with claws.",
		"I've seen inside enough wounds to know how little holds a person together. I walk more carefully than the others, and I'm not ashamed of it.",
		"Healers make poor daredevils. We know too precisely what happens next.",
	},
	["cls.priest.muse.w06.068"] = {
		"flexes {g:his|her} fingers one at a time, working the stiffness out of hands that have held a great deal of power today.",
		"shakes out both hands as if drying them, though they are dry, until the faint tingle of spent magic fades from the fingertips.",
		"presses both thumbs into tired palms, slowly, the way a smith might rest a hammer between jobs.",
	},
	["cls.priest.muse.w06.069"] = {
		"The Light answers priests on both sides of this war. I've never decided whether that's a comfort or a rebuke.",
		"Across the lines, a priest of the other side is saying nearly the same words as me. The Light hears us both. Think about that too long and sleep won't come.",
		"Priests in the enemy's camp kneel to the same Light I do. It should make the war smaller. Somehow it makes it larger.",
	},
	["cls.priest.muse.w06.070"] = {
		"Blood stopped bothering me a long time ago. Sometimes that bothers me more than the blood ever did.",
		"I can kneel in a mess that would turn a soldier pale and think only about pressure and timing. I'm not sure when that happened.",
	},
	["cls.priest.muse.w06.071"] = {
		"If a novice asked me for one lesson, I'd say: watch the quiet ones. The loud ones will tell you they're hurt.",
		"The teachers taught words and gestures. The road taught me which wounds people hide, and that's the lesson I'd pass on.",
		"One thing no book covers: people lie about pain in both directions. Learn which kind of liar you're tending.",
	},
	["cls.priest.muse.w06.072"] = {
		"Healers eat last. Not out of virtue; everyone else was too hungry to wait for me to finish.",
		"Always the last to the fire, always the first to be asked if this cut looks bad. Yes. It looks bad. Sit down.",
	},
	["cls.priest.muse.w06.073"] = {
		"There are days I have nothing left to give but technique. The kindness has run out; only the craft is still working. I hope nobody can tell.",
		"Compassion gets tired before the body does. I keep going on habit then, and trust it to carry me until the feeling catches up.",
	},
	["cls.priest.muse.w06.074"] = {
		"Not every mending is a miracle. Most are a cracked lip, a bad knee, a fever on the turn. Small mercies are still mercies.",
		"I'll never stop the war. I can stop a cough, set a wrist, ease a wound. That's a different scale, but it isn't nothing.",
	},
	["cls.priest.muse.w06.075"] = {
		"runs a quick glance over whoever is nearby, the habit of a healer checking every face for pallor.",
		"looks over the people within sight one by one, measuring limps and color, then relaxes when nobody needs anything.",
	},
	["cls.priest.muse.w06.076"] = {
		"I've never managed to pray while furious. The Light doesn't refuse me then; I simply can't find the way in.",
		"Anger and the Light don't share a room well. When I need both, I send the anger out first and let it wait in the hall.",
	},
	["cls.priest.muse.w06.077"] = {
		"I've sat with enough dying people to stop fearing the moment itself. What I fear is leaving someone half mended.",
		"When my turn comes, I hope someone sits with me the way I've sat with others. Quietly, without promises.",
	},
	["cls.priest.muse.w06.078"] = {
		"Everyone carries a little faith. Mine just comes with duties attached.",
		"Faith is easy on a quiet day. Ask me again when someone's bleeding and I'm out of power.",
	},
	["cls.priest.muse.w06.079"] = {
		"I mend them and they walk off into their lives. I almost never learn how the story ends. I've decided to assume it ends well.",
		"Most of the people I heal, I'll never see again. I picture them somewhere ordinary, complaining about prices, and it helps.",
	},
	["cls.priest.muse.w06.080"] = {
		"Every enemy with any sense goes for the one in cloth first. I take it as a professional compliment, from a safe distance.",
		"Being the softest target on the field teaches you to stand in odd places: behind pillars, behind friends, behind your own good sense.",
	},
	["cls.priest.muse.w06.081"] = {
		"Spent power leaves a taste like cold metal. When it's gone completely, everything tastes of nothing at all.",
		"I can feel my reserves the way you feel hunger: a low, constant measure, ticking down with every word I say.",
		"Mana is the quiet bookkeeping behind every miracle. I always know the balance, and it is always lower than I'd like.",
	},
	["cls.priest.muse.w06.082"] = {
		"hums a slow hymn under {g:his|her} breath, loses the tune halfway, and finishes it in silence.",
		"murmurs part of an old chant, more habit than devotion, and lets it trail off into quiet.",
	},
	["cls.priest.quest_complete.w06.001"] = {
		"Most of any reward goes to water, bread and a new candle. Healing runs on very plain fuel.",
		"I'll spend this on cloth and ink, I suppose. Healers are cheap to keep and expensive to replace.",
		"Some coin for the purse, and some for the next beggar with a cough. That's how it usually divides.",
	},
	["cls.priest.quest_complete.w06.002"] = {
		"Tell them it's done. And if anyone came out of it with a scratch, send them to me before it festers.",
		"Finished. Anyone limping on the way out gets seen to, no arguments.",
		"All settled. Now, who's been hiding a cut this whole time?",
	},
	["cls.priest.quest_complete.w06.003"] = {
		"raises a hand in a brief blessing over whoever gave the task, as much habit as courtesy.",
		"sketches a quick sign of blessing in parting, then seems faintly embarrassed by it.",
		"inclines {g:his|her} head and murmurs a few words of thanks meant for something larger than whoever paid.",
	},
	["cls.priest.quest_complete.w06.004"] = {
		"People think priests only pray. Today I hauled, fetched, fought and walked. The prayers fit in between.",
		"Errands like this are where faith actually lives: in the walking and the carrying, not the kneeling.",
		"Nobody will remember this little task. That's all right. Most of the good in the world is done by people nobody remembers.",
	},
	["cls.priest.quest_complete.w06.005"] = {
		"Finished, and my reserves are scraped thin. Next thing on the list is a chair and some water.",
		"The work is done and so am I, nearly. A long sit, a cup of water, and I'll be fit to help someone else.",
		"That took more out of me than it should have. I'll be no use to anyone until I've rested.",
	},
	["cls.priest.quest_complete.w06.006"] = {
		"A priest should refuse payment, they say. A priest should also eat. I'll compromise and take it.",
		"Keep your thanks short and your coin honest. Both are welcome.",
		"I'll accept this as a donation to the poor. Conveniently, I'm the poor.",
	},
	["cls.priest.quest_complete.w06.007"] = {
		"A road a bit safer, a house a bit calmer. I can't heal a whole land, but I can bring its fever down, errand by errand.",
		"Every finished task is a wound closed in the world itself. Small ones, mostly. They still count.",
		"Somebody's day just got lighter. I won't see it, but I can almost feel it, like a weight lifted off a stranger's chest.",
	},
	["cls.priest.quest_complete.w06.008"] = {
		"accepts the reward with a small bow, then quietly checks {g:his|her} own sleeves for blood, out of long habit.",
		"takes what is offered and is already scanning the faces around for anyone who might need mending.",
		"nods {g:his|her} thanks and folds the payment between the pages of a small book, where it will be easy to forget.",
	},
	["cls.priest.quest_complete.w06.009"] = {
		"Every errand teaches me something no trainer would think to mention. Today's lesson: people underestimate distances.",
		"I come out of that knowing a little more about people and a little less about maps. Fair trade.",
		"Not a spell learned, but something learned all the same. The teachers would call it wisdom. I'd call it sore feet.",
	},
	["cls.priest.quest_complete.w06.010"] = {
		"Next time there's trouble, call me at the start. Mending is easier before the worst of it.",
		"Glad to help. And if anyone here has a cough they've been ignoring, now's the moment.",
		"That's done. While I'm here: does anyone need anything looked at?",
	},
	["cls.priest.quest_complete.w06.011"] = {
		"Not every task asks me to mend. Some ask me to end things. I do both, and I try to keep the ledger honest.",
		"A healer paid to do harm, some days. I did what was asked. I'll think it over later, quietly.",
		"The coin is clean. Whether the work was is a question I'll sit with for a while.",
	},
	["cls.priest.quest_complete.w06.012"] = {
		"lets out a long sigh as the errand closes, and for a moment simply stands there, hands folded inside {g:his|her} sleeves.",
		"rolls {g:his|her} shoulders under the robe, stiff from the walk, and allows {g:himself|herself} a short, tired smile.",
		"leans for a moment against the nearest support, eyes closed, gathering what little quiet the moment offers.",
	},
	["cls.priest.quest_complete.w06.013"] = {
		"I'll offer this one up to the Light: not the coin, the walking. It's the only part that was truly mine to give.",
		"Light, take this small finished thing. It isn't much, but it was done carefully.",
		"Another errand set at the Light's feet. I doubt it keeps count. I do, a little, on the bad days.",
	},
	["cls.priest.quest_complete.w06.014"] = {
		"Add another name to the list of people who owe me a hot drink. It's getting to be a long list.",
		"Done. I accept payment in coin, gratitude, or a good meal, in roughly that order of likelihood.",
		"Another favor done. Someday I'll collect them all at once and retire somewhere quiet.",
	},
	["cls.priest.quest_complete.w06.015"] = {
		"People trust a robe more than a sword. It's flattering, and a little dangerous. I try to deserve it every time.",
		"They handed this to me because I'm a priest, I think. Trust given to the cloth. I'd like it to stay deserved.",
		"There's a particular trust people give to healers. I spend it carefully; others took a long time to earn it for me.",
	},
	["cls.priest.quest_complete.w06.016"] = {
		"shakes out the hem of {g:his|her} robe, which has picked up most of the journey along the way.",
		"wipes {g:his|her} hands on a clean cloth, as after any work, whether or not anything was bleeding.",
		"straightens the robe, tugs a sleeve into place, and looks, for a moment, almost tidy.",
	},
	["cls.priest.quest_complete.w06.017"] = {
		"They always look surprised when the priest does the dirty work. As if prayer kept my hands clean.",
		"I suspect they expected a sermon along with the job. I gave them the job. The sermon can wait.",
		"Whoever asked for this probably thought a priest would just pray over the problem. Some days I wish it worked that way.",
	},
	["cls.priest.quest_complete.w06.018"] = {
		"One more finished. I don't keep score, but my feet do.",
		"That's closed. I'll rest my hands and find out who else needs them.",
		"Finished, and someone else is already waiting for help. That's the shape of this life.",
	},
	["cls.priest.quest_complete.w06.019"] = {
		"It's done. Go in peace, and keep what was mended in one piece.",
		"Finished, with my blessing thrown in. No charge for that part.",
		"There. Whatever you believe in, may it think well of this day.",
	},
	["cls.priest.quest_complete.w06.020"] = {
		"The job is done. I'll say a quiet word for anyone who got hurt along the way and never reached a healer.",
		"Somewhere in all this, someone suffered before I arrived. Finishing doesn't undo that, but it ends it.",
		"Done. I'll keep a moment of silence for the parts of this that came too late for anyone to mend.",
	},
	["cls.priest.quest_complete.w06.021"] = {
		"slides the wand back into {g:his|her} belt with a small, satisfied tap, the errand closed.",
		"tucks the wand away and flexes the fingers that held it, as if relieved to have both hands free.",
	},
	["cls.priest.quest_progress.w06.001"] = {
		"Halfway. Like a fever: the middle is the worst part, and then it breaks.",
		"Some of it done. I'll pace myself the way I pace my mana: never all at once.",
		"Progress. Not enough for a word of thanks yet, but enough for a nod.",
	},
	["cls.priest.quest_progress.w06.002"] = {
		"That's everything they asked for. Let's go, before someone else gets hurt waiting.",
		"All of it, then. Time to deliver, and to see if anyone there needs patching up.",
		"Done gathering. On to them, while my legs still agree.",
	},
	["cls.priest.quest_progress.w06.003"] = {
		"pauses to take stock, weighing what is done against what remains, and squares {g:his|her} shoulders under the robe.",
		"makes a small mark in the margin of a worn book, a tally only {g:he|she} could read.",
		"glances over the progress so far, nods once, and moves on without ceremony.",
	},
	["cls.priest.reputation_change.w06.001"] = {
		"They trust me a little more here. A healer lives on that kind of trust more than on coin.",
		"My name sits a bit better with them now. Good. It makes the next door easier to knock on.",
		"Seems I've stitched myself a small place in their good graces. A strange kind of healing, in reverse.",
	},
	["cls.priest.rez.w06.001"] = {
		"So this is the far side of the mending. Cold, confusing, and over too fast to take notes.",
		"Up again. I've talked so many others through this moment. Turns out my own advice is irritatingly correct: sit, wait, let it settle.",
	},
	["cls.priest.rezother.w06.001"] = {
		"Back you come. Slowly. The body remembers before the mind does.",
		"Open your eyes. The worst part is over, and you slept through it.",
	},
	["cls.priest.rezother.w06.101"] = {
		"Back, by the Light. It was too early to go.",
		"Return. The Light still holds your hand, and so do I.",
		"Come back to us. The Light has lit the road; follow it.",
	},
	["cls.priest.rezother.w06.102"] = {
		"Calling someone back is the strangest work I do. They always look a little offended to be here.",
		"Every time I bring one back, I wonder what I interrupted.",
		"The prayer for the fallen is the longest one I know. I say it slowly. I want every word heard.",
	},
	["cls.priest.rezother.w06.103"] = {
		"kneels by the fallen and prays, low and unhurried, until the eyes beneath the closed lids begin to move.",
		"speaks the long prayer over the body, one careful word after another, and does not look away when it stirs.",
		"bows {g:his|her} head over the fallen and calls, quietly, the way one calls someone home from a far field.",
	},
	["cls.priest.rezother.w06.104"] = {
		"Welcome back. You missed nothing, apart from dying.",
		"Up you come. And next time, run when I say run.",
		"Back again. I'm keeping count, and I'm telling everyone.",
	},
	["cls.priest.rezother.w06.105"] = {
		"Open your eyes. Slowly. The world's still here, and so are we.",
		"Easy, easy. You're back. Don't try to stand yet.",
		"Shh. You're with us again. The cold will pass.",
	},
	["cls.priest.rezother.w06.106"] = {
		"To pull someone back across that line without knowing what lies beyond it. Only faith keeps my hands steady enough.",
		"I've never seen where they go. I only know the way back, and that's enough to keep me praying.",
	},
	["cls.priest.rezother.w06.107"] = {
		"I know that road better than you do. Turn around; it isn't as peaceful as it looks.",
		"Back you come. Take it from one who was never asked: this side is better.",
	},
	["cls.priest.rezother.w06.108"] = {
		"Elune, guide this one back along the silver road.",
		"Come home, wanderer. The goddess has kept your place.",
	},
	["cls.priest.rezother.w06.109"] = {
		"Up. We're not leaving anyone in this place.",
		"On your feet. We finish this together, or not at all.",
		"Back in the line. They'll pay for that one.",
	},
	["cls.priest.rezother.w06.110"] = {
		"Resurrection is a fine prayer. It would be finer if people stopped needing it.",
		"Raising the dead. Somewhere a necromancer is rolling their eyes at how clean I make it look.",
	},
	["cls.priest.thanks.w06.001"] = {
		"Thank you. I'll repay it the first time you need mending.",
		"My thanks. Next wound you take, it's on the house.",
	},
	["cls.priest.thanks.w06.002"] = {
		"Thank you. It's rare that someone looks after the healer. I noticed.",
		"Bless you for that. Truly, not as a figure of speech.",
	},
	["cls.priest.threat.w06.001"] = {
		"I took a vow to preserve life. I didn't specify whose.",
		"My vows are about mercy. They have a few loopholes.",
		"I've promised to heal anyone who asks. You haven't asked yet.",
	},
	["cls.priest.threat.w06.002"] = {
		"I can reach into a mind as easily as a wound. Don't invite me in.",
		"Bodies I mend. Minds I can break. Keep yours to yourself.",
		"Behind your eyes is a small, quiet room. I know the way there.",
	},
	["cls.priest.threat.w06.003"] = {
		"I'll give you one blessing for free: the chance to leave.",
		"Leave now and you'll have my prayers for a long life. Stay, and you'll have the other kind.",
	},
	["cls.priest.threat.w06.004"] = {
		"The Light forgives. I'm still working on it. Don't test which of us you're dealing with.",
		"The Light is merciful. I serve it; that doesn't make me its equal.",
	},
	["cls.priest.threat.w06.005"] = {
		"lets the wand rest in {g:his|her} palm, pointed nowhere in particular, and the stillness of it says more than a raised hand would.",
		"taps the wand against {g:his|her} palm, slow and even, waiting for an answer.",
	},
	["cls.priest.threat.w06.006"] = {
		"Most of my work is keeping fools alive. Don't make yourself the exception.",
		"I've got a long list of people to heal. You're not on it. Keep it that way.",
	},
	["cls.priest.victory.w06.001"] = {
		"lowers {g:himself|herself} onto the nearest flat stretch of ground and uncorks a flask of water.",
		"sits down where {g:he|she} stands, legs crossed, and drinks slowly, eyes half closed.",
		"settles cross-legged and sips, waiting for the strength of the spells to seep back.",
	},
	["cls.priest.victory.w06.002"] = {
		"How deep is the well now? Deep enough for the next one, I hope.",
		"Count what's left in me before anything else. Then decide whether to sit.",
		"First thing after any fight: how much mana did that cost? Never as little as I'd like.",
	},
	["cls.priest.victory.w06.003"] = {
		"Right, who's bleeding? Don't be brave about it, just tell me.",
		"Wounds, anyone? Show me now, not three fights from here.",
		"Before we move: everybody whole? Speak up, I can't read faces that well.",
	},
	["cls.priest.victory.w06.004"] = {
		"Give me a moment to drink, or the next fight is all yours.",
		"Water break. Nobody touch anything until I'm full.",
		"Hold the next one. The healer needs a sip, unless you'd all like to be brave without me.",
	},
	["cls.priest.victory.w06.005"] = {
		"I'll remember the shape of this fight longer than it deserves. That's the price of paying attention.",
		"A word for the fallen, a word for me, and then the road.",
		"Whatever it was before it met me, it was something. I note that much, every time.",
	},
	["cls.priest.victory.w06.006"] = {
		"Good wand. I should give it a name. Something modest.",
		"The wand did most of that. I'll take credit for the aiming.",
		"Not bad for a stick and a prayer.",
	},
	["cls.priest.victory.w06.007"] = {
		"Nobody to tend but me. I look myself over the way I'd look over anyone.",
		"On my own, so the first patient is me. A quick look, a quiet word, and on.",
		"No companions to fuss over. Strange how much I miss the fussing.",
	},
	["cls.priest.victory.w06.008"] = {
		"Thank you, Light. I'll try to deserve the next one too.",
		"The Light held. It usually does, when I hold up my end.",
		"Light be thanked, and the rest of the credit can wait.",
	},
	["cls.priest.victory.w06.009"] = {
		"Thank you, Elune. You were quiet, but I felt you near.",
		"Elune's quiet is a kind of answer. I'll take it.",
	},
	["cls.priest.victory.w06.010"] = {
		"No ache, no shaking hands. One thing this body is good for: it doesn't mind the work.",
		"The Light did as I asked, and I felt nothing of it. Fair enough. Neither of us pretends.",
	},
	["cls.priest.victory.w06.011"] = {
		"traces a small sign in the air over the fallen, then turns away without looking back.",
		"touches two fingers to {g:his|her} brow and then to the ground, a short rite done in passing.",
		"lowers {g:his|her} eyes over the body for the space of a single word.",
	},
	["cls.priest.victory.w06.012"] = {
		"That's one less wound I'll be asked to close later.",
		"One fewer foe means one fewer patient. I like that kind of sum.",
		"Good. Whoever that would have hurt next won't need me now.",
	},
	["cls.priest.victory.w06.013"] = {
		"The dark part of the craft goes back in its box. I check the lid twice.",
		"Put the shadow away. Not because it's dangerous. Because it's comfortable.",
		"Shadow spent, and nothing left over clinging. Good. Some days it clings.",
	},
	["cls.priest.victory.w06.014"] = {
		"Look at this hem. Every fight leaves its signature on the robe.",
		"There goes another sleeve. The tailors will be glad of me.",
		"Mud, scorch marks, and something I'd rather not name. The robe takes the worst of it.",
	},
	["cls.priest.victory.w06.015"] = {
		"turns {g:his|her} hands over and back, inspecting them as if they belonged to a patient.",
		"flexes {g:his|her} fingers one by one, slowly, until each answers properly.",
	},
	["cls.priest.victory.w06.016"] = {
		"Through it, and with enough left over to help someone. That's a good wage for the work.",
		"On my feet with words to spare. I'll call that a blessing and not look closer.",
		"I asked for help and something gave it. I don't always know what. I always say thank you.",
	},
	["cls.priest.victory.w06.017"] = {
		"Good work up front. You made my job almost boring.",
		"Well held, all of you. I barely had to lift a finger. Barely.",
		"That's how I like it: you hit things, I watch, nobody needs carrying.",
	},
	["cls.priest.victory.w06.018"] = {
		"If anyone charged in early, I saw it. So did my mana.",
		"Next time, wait for me before the heroics. My prayers aren't that fast.",
	},
	["cls.priest.victory.w06.019"] = {
		"Two tallies in my head: lives kept, lives ended. One more mark on the side I don't like.",
		"I mend far more than I end. I tell myself that, and I count to be sure.",
	},
	["cls.priest.victory.w06.020"] = {
		"And people say healers can't fight. People say a lot of things.",
		"Mending, fighting, whatever the moment needs. This one needed both.",
		"I'll add fighting to the list of things priests aren't supposed to be good at.",
	},
	["cls.priest.victory.w06.021"] = {
		"tucks the wand back into {g:his|her} belt with a satisfied little tap.",
		"blows across the tip of the wand, then catches {g:himself|herself} doing it and puts it away.",
	},
	["cls.priest.victory.w06.022"] = {
		"Fight, sit, drink, walk. The priest's whole calendar, most weeks.",
		"Now the dull part: sit, wait for the mana, pretend to be patient.",
		"No one ever paints this bit: a priest on the ground, sipping water, waiting.",
	},
	["cls.priest.victory.w06.023"] = {
		"May the Light judge you more kindly than I had time to.",
		"Go to the Light, if it will have you. If not, go somewhere quiet.",
	},
	["cls.priest.victory.w06.024"] = {
		"A quick look over myself: a bruise, a scrape, nothing a whisper won't fix.",
		"Scratches only. One short prayer and they'll be gone before I've walked ten paces.",
	},
	["cls.priest.victory.w06.025"] = {
		"Mind over muscle. It works more often than muscle would like.",
		"A few words, rightly said. That's all it ever takes, and all it ever costs.",
		"Words did that. Remember it the next time someone calls prayer idle.",
	},
	["cls.priest.victory.w06.026"] = {
		"Lie down and stay down. That's a kindness, whatever you think of it.",
		"There. Whatever held you up has let go. Sleep properly this time.",
		"Back to the earth with you, and this time let nobody call you out of it.",
	},
	["cls.priest.victory.w06.027"] = {
		"Home with you, to whichever pit coughed you up. May it be crowded.",
		"One less voice whispering bargains. The world is quieter for it.",
	},
	["cls.priest.victory.w06.028"] = {
		"Someone will wait for that one to come home. I hope it's no one I'll ever meet.",
		"A person, with a person's reasons. I'd have listened to them, if there'd been time.",
	},
	["cls.priest.victory.w06.029"] = {
		"I prayed and it went well. I try not to read too much into the order of those two.",
		"Did the prayer win that, or did I? I've stopped needing to know.",
	},
	["cls.priest.victory.w06.030"] = {
		"Gather in a moment, all of you. A short word over the group never hurt anyone.",
		"Before we move on, a moment's quiet. For us, and for what we left behind.",
	},
	["cls.priest.victory.w06.031"] = {
		"shakes the dust out of {g:his|her} sleeves and straightens the robe at the shoulders.",
		"smooths the front of the robe with both palms, like someone tidying up after a guest.",
		"tugs the robe back into order, then looks round for anything else that needs mending.",
	},
	["cls.priest.victory.w06.032"] = {
		"That nearly went the other way. I'll let it sink in before I stand up straight.",
		"I very nearly needed a priest myself. Ironic, considering.",
		"Too close. Next time I start praying sooner.",
	},
	["cls.priest.victory.w06.033"] = {
		"Well, that was educational. Let's never have that lesson again.",
		"I'll heal up and pretend that went exactly to plan.",
	},
	["cls.priest.victory.w06.034"] = {
		"Let me catch up with myself. Mana first, pride later.",
		"I'll take a minute. The next one can wait its turn, like everyone else.",
		"Sit, sip, and let the head clear. The road isn't going anywhere.",
	},
	["cls.priest.victory.w06.035"] = {
		"Whatever answers my prayers, it answered quickly. I'll mention that later, when it's quiet.",
		"Thanks owed. I'll pay them properly at the first quiet moment.",
		"Something listened. It always does, eventually. That's the whole of my faith, some days.",
	},
	["cls.priest.victory.w06.036"] = {
		"Mercy was on offer. You walked past it.",
		"I gave you every chance to leave. You spent them all.",
		"Next time, listen when a priest asks you nicely.",
	},
	["cls.priest.victory.w06.037"] = {
		"closes {g:his|her} eyes and stands quite still, letting the quiet after the fight settle over {g:him|her}.",
		"murmurs a single word of thanks, to no one in particular, and nods as if answered.",
		"stands motionless a moment, head bowed, as though listening to something far off.",
	},
	["cls.shaman.heal.w06.001"] = {
		"The totem will keep at it. Stand near and let the stream find you.",
		"Stay close to the totem. It mends slower than my hands, but it doesn't tire.",
	},
	["cls.shaman.heal.w06.002"] = {
		"The water spirits don't heal out of kindness. They heal because I asked properly, and they'd want me to remember the difference.",
		"I ask the water, and it comes. One day it won't. Until then, I keep asking politely.",
	},
	["cls.shaman.heal.w06.003"] = {
		"cups {g:his|her} hands as if holding water from a spring, and lets the healing spill out of them over the hurt.",
		"bows {g:his|her} head to the spirits for the length of a heartbeat, and the wound closes as if washed shut.",
	},
	["cls.shaman.heal.w06.004"] = {
		"Hold still. The water has to find its way in before it can carry the hurt out.",
		"Let it wash over you. Fighting it only makes it slower.",
	},
	["cls.shaman.heal.w06.005"] = {
		"Even a shaman drinks from a bottle now and then. The spirits don't need to hear about every scratch.",
		"Not worth troubling the spirits over. The flask will do.",
	},
	["cls.shaman.heal.w06.006"] = {
		"Earth, fire, air, water, and in the middle of them a body that keeps getting cut. Balance never sits still for long.",
		"Hurt, then mended, then hurt again. The elements have this rhythm too, and they don't complain about it.",
	},
	["cls.shaman.heal.w06.007"] = {
		"Quick water, no ceremony. We'll thank the spirits when this one's down.",
		"No time for the long words. Water, now!",
	},
	["cls.shaman.rezother.w06.001"] = {
		"The ancestors have looked you over and sent you back. Don't give them cause to regret it.",
		"Your spirit wandered off. I've called it home; it knows the way.",
	},
	["cls.warlock.attack.w06.001"] = {
		"Into you, and through you.",
		"Take the dark. It's all I have to give you.",
		"There. A little darkness, delivered by hand.",
	},
	["cls.warlock.attack.w06.002"] = {
		"Burn slow. I've got time.",
		"Fire on top, rot underneath. Let them take turns.",
		"Let the heat do the talking.",
	},
	["cls.warlock.attack.w06.003"] = {
		"There's the curse. Feel it settle in.",
		"Wear this. It won't come off.",
		"A gift from me. No returns.",
	},
	["cls.warlock.attack.w06.004"] = {
		"It starts small. It never stays small.",
		"Let it spread. It knows the way.",
	},
	["cls.warlock.attack.w06.005"] = {
		"pulls a thin red thread out of the foe and draws it in, hand over hand.",
		"holds out a hand, and the foe's strength runs across the gap like water downhill.",
	},
	["cls.warlock.attack.w06.006"] = {
		"A little off the top. It'll grow back.",
		"Pay in, draw out. The simplest sum in the craft.",
		"Health into mana. A poor trade, made gladly.",
	},
	["cls.warlock.attack.w06.007"] = {
		"Look closer. See what's standing behind me.",
		"Run along. The nightmares are waiting for you.",
	},
	["cls.warlock.attack.w06.008"] = {
		"Catch, and keep catching.",
		"Here's a spark from somewhere much hotter.",
		"A fire you'll carry for a while.",
	},
	["cls.warlock.attack.w06.009"] = {
		"Measure each cast. The well isn't bottomless.",
		"Steady hands. The power listens better when I don't shout.",
	},
	["cls.warlock.attack.w06.010"] = {
		"Don't take it personally. Actually, do.",
		"This one I made just for you.",
	},
	["cls.warlock.attack.w06.011"] = {
		"flings a knot of darkness that unravels on impact into grasping strands.",
		"snaps a hand forward, and a bolt of shadow leaves a cold streak in the air behind it.",
	},
	["cls.warlock.battle.w06.001"] = {
		"Let's be quick about this. My curses bill by the hour.",
		"Hold still. Curses are cheaper when they don't have to chase.",
		"I'll be brief. The longer this takes, the more it costs.",
	},
	["cls.warlock.battle.w06.002"] = {
		"Corruption first. Then we talk, while it works.",
		"A little rot to start with. It does the patient work for me.",
		"I'll plant something in you now. It grows best while you're busy hitting me.",
	},
	["cls.warlock.battle.w06.003"] = {
		"rolls a shadow between {g:his|her} palms until it hardens into something heavy and dark.",
		"mutters a phrase in a tongue no mortal throat was made for, and the words leave a faint stink of sulfur behind.",
		"opens one hand toward the foe, and a violet spark gutters there like a candle in a draft.",
	},
	["cls.warlock.battle.w06.004"] = {
		"Before the first spell: how much of me am I willing to spend on this one? Decide now, not halfway.",
		"Set the price now. Halfway through a fight is the worst time to haggle with yourself.",
		"A budget first, then the spells. Warlocks who skip the budget don't stay warlocks for long.",
	},
	["cls.warlock.battle.w06.005"] = {
		"The first bolt is a greeting. The ones after it are an answer.",
		"A bolt of shadow to open. Manners matter, even here.",
		"I'll start with something dark and fast, and see what's left to talk to.",
	},
	["cls.warlock.battle.w06.006"] = {
		"People cross the street when they see me coming. You should have crossed the street.",
		"In town, everyone gives me a wide berth. You're about to learn why.",
		"The guards keep an eye on me in every city. You'd have done well to copy them.",
	},
	["cls.warlock.battle.w06.007"] = {
		"I name you, and the naming sticks. That's the whole of a curse.",
		"A curse is only a promise made in the wrong language. Here is mine.",
		"You'll feel this one tomorrow, if you get a tomorrow.",
	},
	["cls.warlock.battle.w06.008"] = {
		"Every spell I cast was taught, a long way back, by something that wanted this world burned. I try not to think about that mid-fight.",
		"The power comes from the Legion's side of the ledger. I turn it on whoever stands in front of me, and I keep the books honest.",
	},
	["cls.warlock.battle.w06.009"] = {
		"At it. And remember who holds your leash.",
		"To work, servant. Your eyes on the enemy, not on me.",
		"Go and be useful. I'll be behind you, holding the other end of the chain.",
	},
	["cls.warlock.battle.w06.010"] = {
		"snaps {g:his|her} fingers once, and the demon at {g:his|her} side moves forward with poor grace.",
		"waves the demon ahead without looking at it, the way one sends a dog after a thrown stick.",
	},
	["cls.warlock.battle.w06.011"] = {
		"A demon? Wonderful. I know exactly how your kind thinks, and I'm not impressed.",
		"The Nether is a long way off. Let me send you back the short way.",
		"I've read the contracts your kind draws up. You cheat on the third clause, every time.",
	},
	["cls.warlock.battle.w06.012"] = {
		"Already rotting, and still walking. Corruption will feel right at home in you.",
		"Death has had you once. Let's see if a curse finds anything left to spoil.",
	},
	["cls.warlock.battle.w06.013"] = {
		"You've a mind, so you've got fears. I only need to find one.",
		"A thinking creature. Good. Thinking creatures scare properly.",
	},
	["cls.warlock.battle.w06.014"] = {
		"Easy, beast. Nothing personal. You just picked the wrong warlock.",
		"Run home, animal. Or stay, and learn what a curse smells like.",
	},
	["cls.warlock.battle.w06.015"] = {
		"Cloth and a wand. If it gets close, I've already made a mistake.",
		"Keep the distance. This robe won't stop anything sharper than an opinion.",
		"Range is my armor. Everything else is just cloth.",
	},
	["cls.warlock.battle.w06.016"] = {
		"Let's see how you like a fire that hates you personally.",
		"Burn. This fire was lit somewhere far worse than here.",
		"Fire with a grudge. I'll let it introduce itself.",
	},
	["cls.warlock.battle.w06.017"] = {
		"Go on, run. I'll be here when you remember what you came for.",
		"I'd rather you ran away screaming. It's quieter for me in the end.",
		"Fear's an old friend of mine. I'll lend it to you for a few seconds.",
	},
	["cls.warlock.battle.w06.018"] = {
		"I'll be paying for this one in health. Better to spend mine than run dry of mana.",
		"Life for mana, the oldest trade I know. Mind the exchange rate.",
		"Tap the well I carry inside. Just don't tap it dry.",
	},
	["cls.warlock.battle.w06.019"] = {
		"You'll do. I needed a soul anyway.",
		"Right. You, then. I hope you're worth the reagents.",
		"Let's make this efficient. I have shards to fill and better things to curse.",
	},
	["cls.warlock.battle.w06.020"] = {
		"The old orc warlocks broke a world with this craft, the stories say. I'll settle for breaking you.",
		"Once, so the tale goes, this art turned a whole people green with fel. Today it only has to deal with you.",
	},
	["cls.warlock.battle.w06.021"] = {
		"Nobody will thank me for winning this. They'll just stand a little farther off afterward.",
		"Win or lose, I'll smell of sulfur after. People notice that more than they notice who saved them.",
	},
	["cls.warlock.battle.w06.022"] = {
		"I'm going to drink you down to the dregs.",
		"Your life looks wasted on you. I'll take it off your hands.",
		"Every hit you land, I'll take back from you, with interest.",
	},
	["cls.warlock.battle.w06.023"] = {
		"lowers {g:his|her} chin, and something like ink spreads across the whites of {g:his|her} eyes.",
		"tilts {g:his|her} head as if listening to someone just behind {g:him|her}, then nods and raises a hand.",
	},
	["cls.warlock.battle.w06.024"] = {
		"I'd sign you up for something unpleasant, but you'd never read the terms.",
		"Some demon, wherever it is, is taking notes on this fight. Let's give it nothing to laugh at.",
	},
	["cls.warlock.battle.w06.025"] = {
		"Curse, Corruption, then let the rot and the fire argue over it.",
		"Lay the slow things first. The fast things are for when it gets close.",
		"Slow poisons first, quick bolts after. The order matters more than the power.",
	},
	["cls.warlock.battle.w06.026"] = {
		"Last chance to walk away. After this, there's a curse in the conversation.",
		"Turn around. I'm told my company doesn't improve with time.",
	},
	["cls.warlock.battle.w06.027"] = {
		"If this one dies under the drain, I keep a piece of it. I try not to want that too much.",
		"My shard bag is lighter than I'd like. This one might fix that, and I wish the thought bothered me more.",
	},
	["cls.warlock.battle.w06.028"] = {
		"Close enough. I've stood in summoning circles with worse than you on the far side.",
		"I don't flinch. Flinching inside a circle gets you eaten.",
	},
	["cls.warlock.battle.w06.029"] = {
		"My servant's been sulking for hours. You'll cheer it up.",
		"Meet my associate. It doesn't like you, but it doesn't like anyone.",
	},
	["cls.warlock.battle.w06.030"] = {
		"Half my attention on the enemy, half on the thing I summoned. The day I forget the second half is the day it stops being mine.",
		"Watch the foe. Watch the demon. Never let either one see you blink.",
	},
	["cls.warlock.battle.w06.031"] = {
		"Bigger than me, stronger than me. Curses don't care about either.",
		"You're out of my league. Lucky for me, curses come in every size.",
	},
	["cls.warlock.battle.w06.032"] = {
		"You're barely worth the mana. I'll be economical.",
		"This won't need a curse. A harsh word and a bolt should do.",
	},
	["cls.warlock.battle.w06.033"] = {
		"points two fingers, and a ring of flame blooms around the foe before it can take another step.",
		"speaks a single harsh syllable, and the air around the foe catches like dry straw.",
	},
	["cls.warlock.battle.w06.034"] = {
		"If I die here, three different things will argue over who gets me. Let's not give them the satisfaction.",
		"Lose this, and I'm somebody's property. Better win.",
	},
	["cls.warlock.battle.w06.035"] = {
		"This won't be pretty. Nothing I do is pretty. It works, though.",
		"I don't fight fair. Fair is for people whose magic doesn't bite the hand that feeds it.",
	},
	["cls.warlock.battle.w06.036"] = {
		"Wand out, curses ready. Let's not make a saga of this.",
		"A few curses, a few wand shots, and we both go about our business. Well. One of us does.",
		"I'll keep this short and cheap. You don't merit the expensive spells.",
	},
	["cls.warlock.battle.w06.037"] = {
		"pulls back {g:his|her} sleeves with a flick, baring fingertips already stained dark.",
		"settles {g:his|her} weight on one heel and starts a low, rasping chant.",
		"spreads {g:his|her} fingers, and the light nearby seems to thin, as though something were drinking it.",
	},
	["cls.warlock.battle.w06.038"] = {
		"I'd warn you about the side effects, but you won't be around for them.",
		"Fair warning: everything I cast has side effects. Most of them are yours.",
		"There's a price for this fight. Good news: you're paying most of it.",
	},
	["cls.warlock.battle.w06.039"] = {
		"Whatever it is, it has a soul, or something close. I'll treat it as a resource. I hate how easy that's become.",
		"Look at it as a fight, not as a harvest. The day I stop telling the two apart, I'll have lost something.",
	},
	["cls.warlock.battle.w06.040"] = {
		"Shadow, shaped like a bolt, straight at you. No tricks in this part.",
		"Here comes the dark, by the most direct road.",
		"Something dark is coming your way. It's me, mostly.",
	},
	["cls.warlock.battle.w06.041"] = {
		"A thing of raw element. You've never been cursed, have you? Nobody bothers to.",
		"Fire, water, stone, it makes no difference. Rot gets into everything eventually.",
	},
	["cls.warlock.battle.w06.042"] = {
		"Your Light against my shadow, the oldest argument there is. I prefer my ending.",
		"Pray all you like. Curses are more patient than prayers.",
	},
	["cls.warlock.battle.w06.043"] = {
		"Someone from the trade. Let's see whose pact has the better small print.",
		"We're about to learn which of our demons lied. I'd bet on yours.",
	},
	["cls.warlock.battle.w06.044"] = {
		"One good hit and I'm on my knees. So nothing gets a good hit.",
		"I'm fragile. Everyone knows warlocks are fragile. The trick is keeping them too busy to notice.",
	},
	["cls.warlock.battle.w06.045"] = {
		"Scared yet? Give it a moment. I can be very persuasive.",
		"I'll send you running, then curse your back. It isn't noble. It works.",
	},
	["cls.warlock.battle.w06.046"] = {
		"flicks {g:his|her} wrist, and a gray smear settles over the foe like mildew on bread.",
		"murmurs, and a sickly stain creeps across the foe as if it had been left out in the damp too long.",
	},
	["cls.warlock.battle.w06.047"] = {
		"Everything I throw at you, I paid for first. Try to be worth it.",
		"Nothing I cast comes free. You'll see the price on your side too.",
	},
	["cls.warlock.farewell.w06.001"] = {
		"Farewell. If anything follows you out of here, it isn't mine.",
		"I'm off. Mind the dark corners; not all of them are mine to call back.",
		"Until next time. And don't open if something knocks using my voice.",
	},
	["cls.warlock.greet.w06.001"] = {
		"Greetings. Yes, it's exactly the trade you think it is. You can stop guessing.",
		"Well met. Shake hands if you dare; mine are only a little cold.",
	},
	["cls.warlock.heal.w06.001"] = {
		"My own health, poured into a demon. If anyone asks, I'm protecting an investment.",
		"I give up a little of myself so the servant doesn't break. Cheaper than starting over.",
		"Feeding the demon from my own reserves. Somewhere, a scholar is writing a very disapproving footnote.",
	},
	["cls.warlock.heal.w06.002"] = {
		"The thread runs from my hand to the demon, and along it goes something I'll have to earn back.",
		"Strange charity: I weaken myself to mend the thing that would devour me if the binding slipped.",
	},
	["cls.warlock.heal.w06.003"] = {
		"Hold still and drink. And don't get used to it.",
		"Here. Mine, not yours. Remember who's paying.",
		"Stop complaining and take it. I'm the one whose head is spinning.",
	},
	["cls.warlock.heal.w06.004"] = {
		"holds one hand toward the demon, and a sickly green thread of life runs out of {g:him|her} and into the creature.",
		"sways a little as the channel draws on {g:his|her} strength, eyes fixed on the demon it feeds.",
	},
	["cls.warlock.heal.w06.005"] = {
		"A servant is a tool. You sharpen tools, you mend them. You don't love them; you just can't afford to lose them halfway through the job.",
		"I keep the demon standing because the demon keeps me standing. That's the whole of our arrangement.",
	},
	["cls.warlock.heal.w06.006"] = {
		"It drinks my life without a scrap of gratitude. Honestly, I'd think less of it if it thanked me.",
		"No thanks from the demon, of course. A thank-you would mean it owed me something, and it would sooner die.",
	},
	["cls.warlock.heal.w06.007"] = {
		"My own kind of work, cracked in my own fist. Nice when the craft pays its people back for once.",
		"Someone made this stone for exactly this moment. Foresight tastes faintly of sulfur.",
		"Made from a shard, spent in a breath. The only investment of mine that always returns.",
	},
	["cls.warlock.heal.w06.008"] = {
		"crushes the healthstone in {g:his|her} palm, and the glow seeps into skin and wound alike.",
		"breaks the green stone with a practiced twist and lets it do the rest.",
	},
	["cls.warlock.heal.w06.009"] = {
		"One stone, one second chance. I keep count of both.",
		"Soul to stone, stone to flesh. Everything's a conversion, if you know the rates.",
	},
	["cls.warlock.heal.w06.010"] = {
		"An alchemist's honest work. How refreshing, in every sense.",
		"No pact, no price but the coin. I almost don't trust it.",
	},
	["cls.warlock.heal.w06.011"] = {
		"Just a potion. It's restful, sometimes, to heal the way everyone else does.",
		"A vial, a swallow, nothing owed to anyone. I should do this more often.",
	},
	["cls.warlock.heal.w06.012"] = {
		"Mend myself first. Everything I hold on a leash holds only as long as I do.",
		"Me first. Not from vanity: everything I've bound depends on my staying upright.",
	},
	["cls.warlock.heal.w06.013"] = {
		"A priest would kneel and thank someone. I just check that it worked.",
		"No prayer, no thanks. A mended thing is a mended thing.",
	},
	["cls.warlock.heal.w06.014"] = {
		"glances around before the mending, as if someone might object to how it's done.",
		"keeps the mending brief and unremarkable, the way {g:he|she} does everything people might frown at.",
	},
	["cls.warlock.heal.w06.015"] = {
		"Everything I mend, I mend with something that was never meant for mending. It works anyway. That's the unsettling part.",
		"Fel and shadow, put to a gentle use. They don't seem to mind. I do, a little.",
	},
	["cls.warlock.heal.w06.016"] = {
		"Done. Now, where was I? Ah yes: ruining someone's day.",
		"Patched. The curses won't cast themselves.",
	},
	["cls.warlock.heal.w06.017"] = {
		"Someone nearby always pays the price. Today, at least, I get to choose who.",
		"Mending on credit, as always. The bill comes later, in some form or other.",
	},
	["cls.warlock.heal.w06.018"] = {
		"Look at me, healing things. Better not let it get around; I have a reputation.",
		"If anyone saw me mending, they'd assume a trick. Fine by me.",
	},
	["cls.warlock.heal.w06.019"] = {
		"Steady, now. A shaking hand spills more than it gives.",
		"Slow and even. Rushed mending leaves gaps the next blow finds.",
	},
	["cls.warlock.heal.w06.020"] = {
		"Every mending leaves my fingers colder. I can't tell if it's the craft, or me.",
		"It works. It always works. I wish that comforted me more than it does.",
	},
	["cls.warlock.jest.w06.001"] = {
		"I'd tell you a joke about demons, but the punchline takes three days to stop burning.",
		"What's the difference between a warlock and a moneylender? The warlock reads you the terms.",
	},
	["cls.warlock.levelup.w06.001"] = {
		"More power in my hands, so more weight on the will that holds them. If the two stop growing together, I'm finished.",
		"The craft grows, and the leash has to grow with it. That's the part of every step up that nobody sees.",
	},
	["cls.warlock.levelup.w06.002"] = {
		"Another step deeper into the craft. Somewhere, a fresh offer is already being drafted in my name.",
		"Stronger again. I expect new proposals from the other side any moment; they follow each step like peddlers after a pilgrim.",
	},
	["cls.warlock.lowhp.w06.001"] = {
		"Healthstone. Now, before my pride gets in the way.",
		"If there's a healthstone in this bag, this is its moment.",
		"Healthstone. Please tell me I remembered to make one.",
	},
	["cls.warlock.lowhp.w06.002"] = {
		"That last Life Tap was greedy. Note it. Survive first, then note it.",
		"I've spent too much of myself. The mana's there and the body isn't. Bad arithmetic.",
		"Stop tapping. Stop. There's nothing left in the well to trade.",
	},
	["cls.warlock.lowhp.w06.003"] = {
		"Draw it off me, servant. That's an order, not a request.",
		"Get in its way and stay there. That's what the binding is for.",
		"If I fall, you go home in pieces. Remember that, and fight.",
	},
	["cls.warlock.lowhp.w06.004"] = {
		"Run! Go on, run, and give me a moment to think.",
		"Away with you. Be afraid somewhere over there.",
		"Fear, now. I need the room more than I need the dignity.",
	},
	["cls.warlock.lowhp.w06.005"] = {
		"Drink from it. Its life for mine, faster than it can take mine back.",
		"Pull. Keep pulling. Whatever it has left, it owes me now.",
	},
	["cls.warlock.lowhp.w06.006"] = {
		"Small setback. Large, actually. Let's call it medium.",
		"I'm fine. In my trade, this is what fine looks like.",
		"This was not in the plan. The plan was mostly cursing.",
	},
	["cls.warlock.lowhp.w06.007"] = {
		"If I die now, someone on the other side will be very pleased. I refuse to please them.",
		"I can feel them leaning in, the ones I owe. Back off. I'm still paying in installments.",
	},
	["cls.warlock.lowhp.w06.008"] = {
		"staggers, a hand pressed to {g:his|her} side, and the violet glow around {g:his|her} fingers flickers like a failing lamp.",
		"drops to one knee, and for a moment the dark gathered around {g:him|her} grows thin and ragged.",
	},
	["cls.warlock.lowhp.w06.009"] = {
		"Wounds bring out the worst in me. The worst for you, I mean.",
		"Hurt me again. I'll put every bit of it into the curse.",
		"Every wound you give me, the shadow writes down.",
	},
	["cls.warlock.lowhp.w06.010"] = {
		"Focus. Panic is a door, and everything I've bargained with knows where it is.",
		"Calm. Cold. A frightened warlock is a demon's meal. A calm one is its master.",
	},
	["cls.warlock.lowhp.w06.011"] = {
		"Death Coil, and a moment's peace. Let's not waste either.",
		"Back! Take this, and the terror that comes with it.",
	},
	["cls.warlock.lowhp.w06.012"] = {
		"I'd like it on the record that this is not how I pictured it going.",
		"Well, I'm learning. Mostly about what not to do.",
	},
	["cls.warlock.lowhp.w06.013"] = {
		"If I go down here, I hope I remembered the soulstone.",
		"Down to the last scraps. If the soulstone's on me, now would be a fine time to learn that it works.",
	},
	["cls.warlock.lowhp.w06.014"] = {
		"hisses a command, and the demon lurches into the path of the next blow.",
		"stumbles back behind the demon, one hand already sketching a desperate sign.",
	},
	["cls.warlock.lowhp.w06.015"] = {
		"I'm told warlocks are hard to kill. Let's test the rumor.",
		"Hard to kill, that's the reputation. Time to live up to it.",
	},
	["cls.warlock.lowhp.w06.016"] = {
		"To die like this, to something that doesn't even know what I gave up for power? No.",
		"All those bargains, and it ends like this? No. I won't give them the cheap ending.",
	},
	["cls.warlock.lowhp.w06.017"] = {
		"Give me some of that life back. You weren't using it well anyway.",
		"I'll be taking that health back now. All of it, if you don't mind.",
		"Your life, my wounds. A fair swap, by my reckoning.",
	},
	["cls.warlock.lowhp.w06.018"] = {
		"presses a hand to a fresh wound and mutters an old, ugly word, and the pain seems to flinch from it.",
		"sways, teeth bared, as a faint fel glow crawls up {g:his|her} arms like a fever.",
	},
	["cls.warlock.lowhp.w06.019"] = {
		"My own spells hurt worse than you do. Keep trying.",
		"My own fire has burned me worse than this. You'll have to do better.",
	},
	["cls.warlock.muse.w06.001"] = {
		"The grimoires never shout. The dangerous pages are the ones written in the calmest hand.",
		"I've learned to distrust any book that reads too easily. The worst of them practically turn their own pages.",
		"Some pages I read once and close for good. Not because I didn't understand them. Because I did.",
	},
	["cls.warlock.muse.w06.002"] = {
		"Dark arts, forbidden pacts, and I still can't get the ash out of a sleeve.",
		"Every warlock's robe ends up the same color in the end: scorched at the cuffs.",
		"I can call fire out of nothing, and I still haven't found a tailor who'll mend these cuffs without asking how they burned.",
	},
	["cls.warlock.muse.w06.003"] = {
		"Fel fire burns the wrong color and keeps the wrong hours. It took me a long while to stop flinching at my own hands.",
		"The fire I call warms nothing. It only consumes. I try to keep the difference in mind whenever I sit by an ordinary one.",
		"A real fire wants wood. Mine wants something else entirely, and it has never told me exactly what.",
	},
	["cls.warlock.muse.w06.004"] = {
		"The demon tests the leash every day. Small tugs, never a real pull. It isn't looking for weakness; it's teaching me to stop noticing.",
		"My servant obeys perfectly, which is exactly why I watch it. Perfect obedience is a performance.",
		"The day I stop checking the bindings is the day the demon starts. So I check them, every single day.",
	},
	["cls.warlock.muse.w06.005"] = {
		"Merchants count my change twice. Once for the coins, once to make sure none of them is warm.",
		"Shopkeepers wrap my purchases remarkably fast. I believe it's meant as a courtesy.",
		"Funny how quickly a merchant's prices settle down once I stop smiling.",
	},
	["cls.warlock.muse.w06.006"] = {
		"Every word of my craft was spoken first by the Legion. I turn their own words against them. They must find that very annoying.",
		"I learned my spells from the enemy's own grammar. There's no better way to win an argument with someone.",
		"The power comes from the Burning Legion. The intent I keep for myself. That's the one part of the trade I never sell.",
	},
	["cls.warlock.muse.w06.007"] = {
		"mutters a short word, stops halfway, and begins again more slowly, as if the first attempt had been overheard.",
		"checks the clasp of a small pouch, then checks it again, and only then lets it hang from {g:his|her} belt.",
		"rubs {g:his|her} fingertips together until the faint violet stain on them fades, and keeps rubbing a while after.",
	},
	["cls.warlock.muse.w06.008"] = {
		"Kindness makes me suspicious. I spend all day around things that smile before they ask.",
		"When a stranger is friendly, I look for the clause. Old habit of the trade. It's ruined a few good evenings.",
		"I don't trust easily. I bargain with liars for a living; it would be strange if some of it hadn't rubbed off.",
	},
	["cls.warlock.muse.w06.009"] = {
		"Guards have a particular way of not looking at me. It takes more effort than staring, and they manage it every time.",
		"I can feel a guard's eyes settle on my back the moment I pass. They never quite leave until I turn a corner.",
		"Nobody stops me, nobody questions me. They just watch, the way you'd watch a lit candle near the curtains.",
	},
	["cls.warlock.muse.w06.010"] = {
		"No one forced this road on me. I'd like that remembered, by the demons most of all.",
		"I wasn't seduced, whatever the stories say. I read the terms, I weighed them, I signed. That's worse, or better. I'm still deciding.",
		"It was a choice. If it goes wrong, it'll be my choice that went wrong, and I'll not blame the voices for it.",
	},
	["cls.warlock.muse.w06.011"] = {
		"Half my bags are soul shards. The other half is whatever I could fit around them.",
		"Other people carry spare boots. I carry spare souls. Packing is very different for us.",
		"If you ever need to borrow a soul shard, ask. I seem to have collected a small quarry of them.",
	},
	["cls.warlock.muse.w06.012"] = {
		"I only take the soul at the very end, when there's nothing left for it to do here. I tell myself that counts for something.",
		"A shard is a last breath I didn't let go to waste. Put that way, it almost sounds thrifty.",
		"Whatever was in the shard, it didn't choose to be there. I keep it wrapped and I don't spend it lightly. That's the least I owe.",
	},
	["cls.warlock.muse.w06.013"] = {
		"Healthstone? Take one. Don't ask what went into it, and it'll do its job without complaint.",
		"I hand out healthstones like a grandmother hands out sweets. Fewer people thank me, but more of them live.",
		"A green stone for your pocket. When it all goes wrong, squeeze it. No, it isn't a gift; it's an investment in you staying alive.",
	},
	["cls.warlock.muse.w06.014"] = {
		"Most of my work happens after I've stopped casting. I plant something, step back, and let time do the cruel part.",
		"A curse rewards the patient. I never had much patience before; the craft taught it to me, one slow wound at a time.",
		"Other casters want results at once. I'm content to watch the clock work for me.",
	},
	["cls.warlock.muse.w06.015"] = {
		"To put terror in someone's head, you have to know the shape of it from the inside. I know it very well.",
		"When I make a foe run screaming, I feel no triumph. I know where that fear comes from. I've visited.",
		"Fear is the easiest spell I know. It's also the one I'd least like turned back on me.",
	},
	["cls.warlock.muse.w06.016"] = {
		"The orcs paid for the first pacts with a whole green world. Every warlock should know that bill, whoever they are, wherever they come from.",
		"The Shadow Council taught a people to drink from the wrong cup. The craft I practice remembers its teachers, and so must I.",
		"Before me there was Gul'dan, and a world drained dry for his ambition. I keep that name near, the way a sailor keeps a reef on the chart.",
	},
	["cls.warlock.muse.w06.017"] = {
		"Anger makes the fire bigger and the leash shorter. I've learned to cast cold.",
		"A furious warlock is a short-lived one. I keep my temper the way others keep their purse: close, and counted.",
		"The craft runs on will, not rage. Rage is just will that's forgotten who's in charge.",
	},
	["cls.warlock.muse.w06.018"] = {
		"Have you noticed where they put warlock trainers, in every city? Cellars, caves, back rooms. Never a window.",
		"Every city teaches my craft somewhere below street level. The others get towers and cathedrals. We get damp.",
		"Somewhere in each capital, down a stair nobody admits to using, there's a teacher of my art. The rent is cheap, I imagine.",
	},
	["cls.warlock.muse.w06.019"] = {
		"The tools are wicked. I've never claimed otherwise. Watch what the hand does with them before you judge it.",
		"Yes, it's demon magic. Fire is fire, though, when it's standing between you and the thing with teeth.",
		"Judge the work, not the workshop. Mine's ugly, I'll grant you.",
	},
	["cls.warlock.muse.w06.020"] = {
		"The demon is the only one who never asks me to explain myself. It already knows, and it doesn't care. Oddly restful.",
		"Company that doesn't judge me and can't be trusted. I've had worse among the living.",
		"Often the demon is the only presence near me. I keep the conversation short and the terms clear.",
	},
	["cls.warlock.muse.w06.021"] = {
		"The trainers say a warlock earns a steed one day without spending a copper on the beast. Free. In my line of work, that word makes me nervous.",
		"A horse that costs no gold, they promise, if I keep at it. I'll believe it when I see what it eats.",
	},
	["cls.warlock.muse.w06.022"] = {
		"Nobody can tell me where a warlock's soul goes at the end. I have a fair idea who'd like to decide.",
		"Other people fear the dark after death. I'm more worried about the company in it.",
		"When my time comes, I'd like to be somewhere very bright and very crowded. Somewhere hard to be fetched from.",
	},
	["cls.warlock.muse.w06.023"] = {
		"turns {g:his|her} gloves inside out, shakes a pinch of gray ash from each finger, and pulls them back on.",
		"brushes a fine film of soot from {g:his|her} sleeves with the patience of long practice.",
	},
	["cls.warlock.muse.w06.024"] = {
		"I turn my own health into power so often now that I barely notice the trade. That should frighten me more than it does.",
		"A little of my life for a little more craft. I make the exchange without thinking, the way others reach for a waterskin.",
		"Others guard their health. I spend mine, carefully, like a traveler who knows the next town is far.",
	},
	["cls.warlock.muse.w06.025"] = {
		"Mages study the arcane for a lifetime. I just asked someone who already knew. The price was steeper, granted.",
		"The mages have towers and libraries. I have a contract and a very persuasive tutor from somewhere else.",
	},
	["cls.warlock.muse.w06.026"] = {
		"Some days I picture setting it all down: the books, the circle, the voices. Then I picture what would come to pick it up.",
		"I could walk away from the craft. I'm almost sure of it. The almost is what keeps me careful.",
		"There's no leaving this trade clean. But there's practicing it clean, and that much I can choose every day.",
	},
	["cls.warlock.muse.w06.027"] = {
		"Whisper all you like. My answer hasn't changed since the first day, and it won't change for the last.",
		"They offer more every season, as if my price were simply too high for them yet. It isn't a price. It's a wall.",
	},
	["cls.warlock.muse.w06.028"] = {
		"The demon has opinions about everything I do. It shares them by staring. I've grown used to being reviewed.",
		"If my servant ever learned to sigh, I think I'd have to banish it on principle.",
		"My demon watches me eat with open contempt. I've decided to take it as a compliment to the cooking.",
	},
	["cls.warlock.muse.w06.029"] = {
		"Draining a foe's life leaves no taste, no warmth, nothing to savor. That's a mercy. If it were pleasant, I'd worry.",
		"I pull the life out of my enemies and feel it settle in me like borrowed clothes. It fits. I'd rather it didn't.",
	},
	["cls.warlock.muse.w06.030"] = {
		"Children always stare at me. The brave ones ask if I can make fire come out of my hands. I say no. It saves a world of trouble.",
		"When children ask if I keep a monster, I tell them the truth: not in my pocket.",
	},
	["cls.warlock.muse.w06.031"] = {
		"I sleep lightly. Not from fear; from manners. It's rude to be caught unawares by your own guests.",
		"My dreams get visitors I never invited. I've learned to be poor company, and most of them leave early.",
		"Rest is a skill for people like me. You learn to close your eyes and keep one door bolted.",
	},
	["cls.warlock.muse.w06.032"] = {
		"I could reach further. Every warlock can, a little further each time. The art is in stopping where you meant to.",
		"Ambition is the doorway they use. I keep mine small and plain, with a lock on it.",
	},
	["cls.warlock.muse.w06.033"] = {
		"watches the demon out of the corner of {g:his|her} eye for a long moment, then looks away as if nothing had passed between them.",
		"says a single quiet word to the demon, and the creature lowers its gaze, slowly, with visible reluctance.",
		"turns, without hurry, to face the demon whenever it drifts behind {g:him|her}.",
	},
	["cls.warlock.muse.w06.034"] = {
		"If anyone ever offers to teach you my trade, say no the first time. If you still want it after a month, then come ask me why.",
		"People ask how to start in the craft. I tell them to reread every contract they've ever signed, twice. Most of them go home.",
	},
	["cls.warlock.muse.w06.035"] = {
		"The devout look at me as if I were a sum they can't make come out right. Fair enough. Some days I can't either.",
		"A priest's smile goes stiff when I come near. I don't hold it against them. They can see the paperwork.",
	},
	["cls.warlock.muse.w06.036"] = {
		"Names have weight on the other side. I give mine to no one there, and I'm careful how often I say it here.",
		"Every demon I've dealt with wanted my name first. So I've grown fond of being called nothing at all.",
	},
	["cls.warlock.muse.w06.037"] = {
		"Seeing through a demon's eye is useful and unpleasant. Everything looks like something to eat.",
		"When I send the eye out, I come back with the view and a faint hunger that isn't mine. I've learned to wait for it to pass.",
	},
	["cls.warlock.muse.w06.038"] = {
		"Binding a demon that doesn't want to be bound is a contest of nerves. The trick is to be the less frightened party, or to look it.",
		"Every demon I've bound was sure, right to the end, that I'd lower my eyes first. It's a useful belief. I let them keep it.",
	},
	["cls.warlock.muse.w06.039"] = {
		"People think we warlocks never laugh. We do. Usually right before someone else stops.",
		"I do have a sense of humor. It just tends to arrive with a faint smell of sulfur.",
	},
	["cls.warlock.muse.w06.040"] = {
		"People rarely sit close to me. When one does, without flinching, I remember the face for a long while.",
		"I've found friends in this trade, a few. They're the ones who ask what it costs and then actually wait for the answer.",
		"Being trusted by someone who knows what I do is worth more than any pact. It doesn't happen often. I keep it carefully.",
	},
	["cls.warlock.muse.w06.041"] = {
		"The first thing they teach us is a bolt of shadow. Not a ward, not a cure. It tells you a great deal about the curriculum.",
		"Mages start with fire, priests with a prayer. We start with shadow thrown at someone's face. Honest, at least.",
	},
	["cls.warlock.muse.w06.042"] = {
		"Some of my spells burn me too. I cast them anyway, and I don't pretend that says anything good about me.",
		"There's a fire I can call that doesn't care which of us it eats. I keep it for the moments when I don't either.",
	},
	["cls.warlock.muse.w06.043"] = {
		"The demon wants one thing from me, and it's never in a hurry about it. Its patience is the most frightening thing it owns.",
		"My servant doesn't hate me. Hate would be easier to manage. It simply waits, the way water waits for a crack.",
	},
	["cls.warlock.muse.w06.044"] = {
		"counts soul shards into a small cloth bag, one by one, and ties it shut with a double knot.",
		"sorts a handful of soul shards by some measure only {g:he|she} understands, and sets one apart from the rest.",
	},
	["cls.warlock.muse.w06.045"] = {
		"Every summoning leaves me hollow for an hour. I've stopped calling it fatigue; it's more like a door left ajar.",
		"Calling a servant takes something out of me that sleep doesn't quite put back. I just don't know yet what it is.",
	},
	["cls.warlock.muse.w06.046"] = {
		"Something goes missing, something catches fire, a cow stops giving milk. Somehow it's always the warlock's fault.",
		"Yes, I'm the warlock. No, I didn't do whatever it was. I'd have done it better.",
	},
	["cls.warlock.muse.w06.047"] = {
		"I trade in souls every day: other people's, fragments, leftovers. My own stays off the table. That's the one rule I'd die for.",
		"Everything I own is for sale to the right buyer, except the thing they want most. Let them keep wanting.",
	},
	["cls.warlock.muse.w06.048"] = {
		"Animals don't trust me. Dogs bristle, birds go quiet. I've stopped taking it personally. Mostly.",
		"Beasts can smell the company I keep. I'd give a good deal for a cat that didn't arch its back at me.",
	},
	["cls.warlock.muse.w06.049"] = {
		"Cloth robe, no shield, no blade worth the name. People assume I'm defenseless. I let them assume for as long as it's useful.",
		"I don't wear armor. I wear consequences.",
	},
	["cls.warlock.muse.w06.050"] = {
		"Look at who practices this art: humans, gnomes, orcs, the Forsaken. As different as can be, and every one of us wanted the same dangerous thing.",
		"The craft doesn't care what body you were born in, or whether you were born twice. It puts the same question to all of us.",
	},
	["cls.warlock.muse.w06.051"] = {
		"Give me a little room when I work. Not for my sake. Things like to reach out of the circle, and they aren't fussy about whom they touch.",
		"Stand behind me, not beside me. What I call doesn't always know a friend from a meal.",
	},
	["cls.warlock.muse.w06.052"] = {
		"What they promise changes as I grow. First it was strength. Lately it's been peace and quiet, which is far more dangerous.",
		"They've stopped offering me power. Now they offer rest. That's how I know they've been paying attention.",
	},
	["cls.warlock.muse.w06.053"] = {
		"rests a while, the demon crouched nearby, and neither of them seems inclined to break the silence.",
		"lets the demon settle close, as one might a dog of uncertain temper, and goes back to {g:his|her} own thoughts.",
	},
	["cls.warlock.muse.w06.054"] = {
		"In some cities, they say, warlocks are tolerated the way a smith tolerates a burn: something that comes with useful work.",
		"Every capital needs us and none of them wants to say so. We're the poison in the healer's cabinet: locked away, labeled, never thrown out.",
	},
	["cls.warlock.muse.w06.055"] = {
		"It's the constant attention that wears me down. Not the spells, not the fights. Never once being allowed to stop watching.",
		"Other people get to be careless now and then. I've forgotten what that's like, and I'm not certain I miss it.",
	},
	["cls.warlock.muse.w06.056"] = {
		"When the fire I call stands between a stranger and a blade, I feel almost clean. Almost is a lot, in my trade.",
		"Every so often the craft does something plainly good. I hold on to those days the way others hold on to a prayer.",
	},
	["cls.warlock.muse.w06.057"] = {
		"Does it have a name? Yes. Do I use it? Only when I want its attention, which is less often than you'd think.",
		"No, you may not pet it. You may keep all your fingers instead. I think that's a fair trade.",
	},
	["cls.warlock.muse.w06.058"] = {
		"Between this world and the others lies what the old texts call the Twisting Nether. I've only ever looked at it sideways. That's plenty.",
		"Everything I call comes across the Nether, and each one trails a little of it behind. I feel it afterward, at the edges of my sight.",
	},
	["cls.warlock.muse.w06.059"] = {
		"I've sworn never to sell another person's soul for my own gain. Demons find that clause hilarious. I find it essential.",
		"My pacts carry one condition nobody else bothers to write: no innocent pays my debts.",
	},
	["cls.warlock.muse.w06.060"] = {
		"Hunters love their beasts, and the beasts love them back. My companion tolerates me, under contract. It's a different sort of household.",
		"A hunter's beast would die for its master. Mine would watch with interest. We both know where we stand.",
	},
	["cls.warlock.muse.w06.061"] = {
		"If I could tell one thing to whoever is just starting out in this art, it would be this: the small bargains are the ones that add up.",
		"Beginners fear the great pacts. They should fear the small ones; nobody reads those carefully.",
	},
	["cls.warlock.muse.w06.062"] = {
		"catches the demon reaching for something it shouldn't, and stops it with one raised finger and no words at all.",
		"clicks {g:his|her} tongue once, and the demon, halfway into some mischief, abandons it with a sullen look.",
	},
	["cls.warlock.muse.w06.063"] = {
		"The Legion still has servants in this world: cults, satyrs, fools in hoods. Someone who speaks their language has to answer them.",
		"There are cultists out there who think they do what I do. They don't. They've forgotten whose hand belongs on the chain.",
	},
	["cls.warlock.muse.w06.064"] = {
		"No, I won't light your hearth. Well. Fine. But don't cook on it.",
		"Everyone wants a warlock around until there's a warlock at the table.",
	},
	["cls.warlock.muse.w06.065"] = {
		"I keep a soulstone ready for whoever stands nearest to me. It's the closest thing to a kind word I know how to give.",
		"A stone that holds a door open past death, handed to a friend before a fight. Strange gift. The only kind my craft makes.",
	},
	["cls.warlock.muse.w06.066"] = {
		"With two helpers and a shard I can pull a friend across half a continent. Nobody ever asks what lies on the other side of that doorway.",
		"I can shorten anyone's road to nothing at all. People thank me and never once wonder which way they came through.",
	},
	["cls.warlock.muse.w06.067"] = {
		"I speak a word over a living thing and it begins, quietly, to spoil. That I can do this is not the strange part. That it comes so easily is.",
		"Rot is the humblest of my spells. No light, no noise. Just a word, and the slow work of undoing.",
	},
	["cls.warlock.muse.w06.068"] = {
		"A leash has two ends. I hold one; I've never been fully certain what holds the other, beyond the demon itself.",
		"The binding ties the demon to me, and me to it. People see only the first half. The second half keeps me up at times.",
	},
	["cls.warlock.muse.w06.069"] = {
		"The ward I wear is borrowed from the other side: a skin that isn't mine, laid over mine. It fits better than I'd like.",
		"My protection comes from a demon's hide, more or less. I try not to think about the tailoring.",
		"Other casters armor themselves in frost or prayer. Mine has an owner somewhere, and I hope it never wants it back.",
	},
	["cls.warlock.muse.w06.070"] = {
		"Say 'demonology' in a crowded hall and watch it empty. Say 'the study of old texts' and you're asked to dinner. Same work.",
		"Call me a student of forbidden languages, if 'warlock' sticks in your throat. I answer to both.",
		"Names matter. A warlock is feared; a consultant in difficult matters gets paid in advance.",
	},
	["cls.warlock.muse.w06.071"] = {
		"Nobody forgets the first time the circle answers. Whatever comes through looks at you as if it already knows how your story ends.",
		"The first summoning is the one they warn you about, and the warning is never enough. You learn the rest by holding still while it studies you.",
		"I remember how quiet everything went the first time something answered my call. The silence of being noticed.",
	},
	["cls.warlock.muse.w06.072"] = {
		"reads by the faint violet glow cupped in one palm, turning the pages with the other hand.",
		"holds a small, sickly flame above an open book, just long enough to find the line {g:he|she} was looking for.",
		"mouths the words of a page in silence, one finger keeping the place, the other hand curled as if around something hot.",
	},
	["cls.warlock.muse.w06.073"] = {
		"What frightens me isn't the demons. It's how ordinary they've started to seem.",
		"The day the craft feels normal is the day I'm in trouble. Some days it already does.",
		"I used to shiver when the circle opened. Now I only check the edges. I can't decide whether that's mastery or rot.",
	},
	["cls.warlock.muse.w06.074"] = {
		"If the Legion ever comes back in force, it'll find people like me waiting, who know its tricks from the inside.",
		"Let the Legion come. Its own fire will be the first thing thrown back at it.",
		"I've studied the enemy longer than most soldiers have. When it comes, I'll know where it's soft.",
	},
	["cls.warlock.muse.w06.075"] = {
		"Every so often I test myself: do I still like a good song, fresh bread, a stupid joke? So far, yes. I keep testing.",
		"I keep small pleasures on purpose. A good meal, a clean shirt, someone's laugh. They're anchors, and I need every one.",
		"The day I stop enjoying ordinary things, someone should take my books away. I've told myself as much.",
	},
	["cls.warlock.muse.w06.076"] = {
		"After bargaining with demons, haggling over a pair of boots is child's play.",
		"Merchants think they're tough negotiators. They've never sat across from someone who could wait a thousand years.",
		"I've read contracts written by creatures older than mountains. Your price list doesn't scare me.",
	},
	["cls.warlock.pet_call.w06.001"] = {
		"{pet}: perfectly punctual, sulk included. Some things the other side teaches well.",
		"{pet} turns up wearing the face of something that had other plans.",
	},
	["cls.warlock.pet_call.w06.002"] = {
		"The binding pulls tight as {pet} steps through. I feel it in my wrists, like a leash wound twice.",
		"{pet} is here, and so is the weight of keeping the demon here. I never forget the second part.",
	},
	["cls.warlock.pet_call.w06.003"] = {
		"Every time I call, some part of me hopes nothing answers. Something always does: {pet}.",
		"{pet} comes through the gap between worlds, and the gap takes its time closing.",
	},
	["cls.warlock.pet_call.w06.004"] = {
		"{pet} looks at me as if I'd interrupted something important. Demons have no important things. I checked.",
		"{pet} surveys the place like a landlord. Nothing here belongs to you, let's be clear.",
	},
	["cls.warlock.pet_call.w06.005"] = {
		"{pet} first, questions later. In my line of work, you summon before you need to.",
		"A servant summoned early is worth two summoned in a panic. {pet}, take your place.",
	},
	["cls.warlock.pet_call.w06.006"] = {
		"A new pact still has its edges. {pet} keeps testing them, and I keep pointing out where they are.",
		"{pet} and I haven't settled yet who should fear whom. I have an opinion.",
	},
	["cls.warlock.pet_call.w06.007"] = {
		"{pet} arrives and simply waits. No sneer, no test. I'm not sure whether that should worry me.",
		"Longer together than most pacts last. {pet} takes its place as if it had always had one.",
	},
	["cls.warlock.pet_call.w06.008"] = {
		"There's {pet}. Not the company most would choose, but it keeps the wolves off.",
		"{pet} at my side, and anyone with sense keeps their distance. Useful.",
	},
	["cls.warlock.pet_call.w06.009"] = {
		"Lonely work, this craft. {pet} doesn't change that, but it fills the silence with something.",
		"{pet} is no friend. Still, the quiet was getting heavy.",
	},
	["cls.warlock.pet_call.w06.010"] = {
		"A smell of scorched stone, and {pet} is standing where nothing stood.",
		"Brimstone, a flicker, {pet}. The order never changes.",
	},
	["cls.warlock.pet_call.w06.011"] = {
		"I speak the words and {pet} answers. Somewhere, something else heard them too, and decided to wait.",
		"{pet} through the circle. I always count to three afterward, in case anything followed.",
	},
	["cls.warlock.pet_call.w06.012"] = {
		"{pet} has opinions about where I've taken us. It keeps them to itself, which is the most I can ask.",
		"On my word, {pet}. Not yours. We'll keep going over that until it sticks.",
	},
	["cls.warlock.pet_call.w06.013"] = {
		"{pet} takes the front. I take the price. That's how we divide the labor.",
		"There, {pet}. Between me and whatever comes next.",
	},
	["cls.warlock.pet_call.w06.014"] = {
		"Some days I command the demon. Some days it feels the other way round. Today we settle it at once.",
		"{pet} answers. Not out of loyalty: out of terms. I never let myself confuse the two.",
	},
	["cls.warlock.pet_call.w06.015"] = {
		"{pet}. Good. I'd had enough of doing all the work.",
		"{pet}, at last. Someone else can take the first hit.",
	},
	["cls.warlock.pet_call.w06.016"] = {
		"{pet} no longer waits for the whole incantation. Half the words, and it's here. I'm not sure I like that.",
		"We've done this often enough that {pet} arrives already facing the right way.",
	},
	["cls.warlock.pet_call.w06.017"] = {
		"{pet} materializes with all the enthusiasm of a cat being bathed.",
		"Nobody is glad to see {pet} arrive, least of all the one arriving.",
	},
	["cls.warlock.pet_dismiss.w06.001"] = {
		"Back you go, {pet}. Don't wreck the place while you're over there.",
		"Off, {pet}. With my thanks, which you'll pretend not to want.",
	},
	["cls.warlock.pet_dismiss.w06.002"] = {
		"The binding slackens. I flex my hands; they always ache a little afterward.",
		"With {pet} gone, I can hear my own thoughts again, and wish I couldn't.",
	},
	["cls.warlock.pet_dismiss.w06.003"] = {
		"Rest is a strong word for whatever {pet} does over there. Recover, then. You'll be needed.",
		"{pet} goes. One less thing to watch from the corner of my eye.",
	},
	["cls.warlock.pet_dismiss.w06.004"] = {
		"{pet} slips away, and the shadows it stood in take a moment to remember they're only shadows.",
		"Where {pet} stood, the air still smells of something that doesn't belong to this world.",
	},
	["cls.warlock.pet_dismiss.w06.005"] = {
		"Alone again. It's quieter, and quiet has never been entirely safe for me.",
		"{pet} goes, and I'm left with the only company I can't dismiss: myself.",
	},
	["cls.warlock.pet_dismiss.w06.006"] = {
		"Go on, {pet}. I'll call. You'll come. We've done this long enough to skip the threats.",
		"{pet} lingers a moment before it goes. A demon's version of goodbye, I suppose.",
	},
	["cls.warlock.pet_dismiss.w06.007"] = {
		"And {pet} is gone. Somewhere, a hellish realm groans at the homecoming.",
		"Back home, {pet}. Go frighten something your own size.",
	},
	["cls.warlock.pet_grief.w06.001"] = {
		"{pet} is torn back to where it came from. It'll return. That doesn't make this nothing.",
		"{pet} goes in a puff of smoke and spite. A few words will bring it back; the flinch I felt is mine to keep.",
	},
	["cls.warlock.pet_grief.w06.002"] = {
		"I didn't think I'd mind. {pet} gave way guarding me, and I mind.",
		"Servants die for their masters in the old stories. Nobody tells you how it feels on the other side of that.",
		"The debt with {pet} is settled, and even a debt I never wanted weighs something when it's paid.",
	},
	["cls.warlock.pray.w06.001"] = {
		"If anything kind is listening, and doesn't mind who's asking: keep my will steady and my hands my own.",
		"To anyone listening who isn't one of mine: let the leash hold one more day, and let it be my hand on it.",
	},
	["cls.warlock.quest_complete.w06.001"] = {
		"Finished. You may want to wash your hands after shaking mine. Most people do.",
		"Done. You can let your breath out now; I'm leaving.",
		"Job done, and I didn't summon a single thing in front of you. You're welcome.",
	},
	["cls.warlock.quest_complete.w06.002"] = {
		"Honest coin for honest work. It sits differently in the purse than anything the craft pays.",
		"A reward I can spend without wondering who else it belonged to. Rarer than it ought to be.",
		"Plain metal, plainly given. Nothing hums, nothing whispers. I almost don't trust it.",
	},
	["cls.warlock.quest_complete.w06.003"] = {
		"accepts the reward with a curt nod, and is already turning away before anyone can decide whether to thank {g:him|her} properly.",
		"counts the payment once, quickly, and slips it into a pouch well apart from the one {g:he|she} never opens in company.",
		"lets a small, dry smile cross {g:his|her} face at the reward, like someone collecting on a bet nobody else knew was placed.",
	},
	["cls.warlock.quest_complete.w06.004"] = {
		"The demon is unimpressed by honest work. That alone makes it worth doing now and then.",
		"My servant sulked through the whole errand. Nothing burned, nobody screamed. I call that a good day.",
		"No souls, no screams, just a job done well. The demon finds me deadly dull at times like these. Good.",
	},
	["cls.warlock.quest_complete.w06.005"] = {
		"That's settled. If you ever need something like it again, you know who'll do it without asking questions.",
		"Our business is done. Remember the name, in case you need a job done without fuss.",
		"There. Whatever people say about my kind, I keep my word to the letter.",
	},
	["cls.warlock.quest_complete.w06.006"] = {
		"Some of the people I help would rather someone else had done it. The help still counts.",
		"It's odd, being useful to people who'd never invite me in. I've made my peace with doing good from the doorstep.",
		"A thank-you said from a careful distance is still a thank-you. I've learned to accept them at any range.",
	},
	["cls.warlock.quest_complete.w06.007"] = {
		"Look at that: a reward, and nobody's soul in it. You people have such simple economies.",
		"Gold? How quaint. Where I usually bargain, they'd have asked for a memory or two.",
		"Coin is such a restful currency. It never asks to be fed.",
	},
	["cls.warlock.quest_complete.w06.008"] = {
		"Whatever else I've traded away, my word is still mine. Days like this prove it.",
		"A promise made, a promise kept. Demons hate it when I'm reliable; it ruins their best arguments.",
		"I said I'd do it, and it's done. The craft is full of loopholes; I like to keep a few things in my life without any.",
	},
	["cls.warlock.quest_complete.w06.009"] = {
		"blows a fleck of soot off the reward before pocketing it, out of a sort of courtesy.",
		"wipes {g:his|her} fingers before taking the payment, as if to spare it something.",
		"tucks the reward away with fingers that, for once, leave no soot behind, and looks faintly pleased about it.",
	},
	["cls.warlock.quest_complete.w06.010"] = {
		"Done. The craft lent a hand, as it always does, but the walking and the asking were all mine.",
		"The spells did their share. The patience was mine, and that's the part I'm proudest of.",
	},
	["cls.warlock.quest_complete.w06.011"] = {
		"Don't worry. Nothing followed me back. I checked twice.",
		"All done. And before you ask: no, nothing came back with me. Not this time.",
		"Finished. The circle's closed, the job's done, and everyone is still the shape they started.",
	},
	["cls.warlock.quest_complete.w06.012"] = {
		"The coin is fine. What I really collect is the next person who hears I can be trusted.",
		"Each finished job is a small stone set against the stories about my kind. I'm building a long wall.",
		"Let them talk about warlocks. Let them also say the work was finished, every bit of what was asked.",
	},
	["cls.warlock.quest_complete.w06.013"] = {
		"pockets the reward under the demon's covetous gaze, and pats the pouch shut with deliberate slowness.",
		"tucks the payment away while the demon follows every coin with its eyes, and pointedly ignores it.",
	},
	["cls.warlock.quest_complete.w06.014"] = {
		"One more good deed on the scale. I don't know who reads it, but I'd like the numbers to look better than they did.",
		"I set this one on the other pan of the scale. It's lighter than the pacts, but it isn't nothing.",
		"Every errand like this tips something back the other way. Not much. I take what I can get.",
	},
	["cls.warlock.quest_complete.w06.015"] = {
		"Relieved? Is it the job being done, or me being about to leave? No, don't answer.",
		"I'll be going. I know the relief you're about to feel; I'd like to be polite and not watch it.",
		"Finished. I'll see myself off. I gather that's the part you'll enjoy most.",
	},
	["cls.warlock.quest_complete.w06.016"] = {
		"I keep waiting for the hidden cost. With honest work, it seems, there isn't one. It'll take me a while to get used to that.",
		"No clause, no catch, no price I'll discover later. Plain jobs are a holiday for someone in my line.",
		"That's the whole of it? No second payment due later, in some other coin? Honest work is very strange.",
	},
	["cls.warlock.quest_complete.w06.017"] = {
		"makes a small mark on a scrap of parchment, crossing out one debt among many, then folds it away.",
		"folds a list of obligations one crease smaller, and tucks it back inside {g:his|her} robe.",
	},
	["cls.warlock.quest_complete.w06.018"] = {
		"Trust or no trust, the work gets done. I've stopped waiting for people to like me before I help them.",
		"Liking me was never part of the deal. Getting it done was. One out of two is fine.",
	},
	["cls.warlock.quest_complete.w06.019"] = {
		"On the other side, something is disappointed in me today. Good.",
		"A useful day, start to finish. I picture the voices sulking about it, and I enjoy that more than I should.",
		"A day of plain good work. The voices have gone very quiet about it, which I take as applause.",
	},
	["cls.warlock.quest_complete.w06.020"] = {
		"Done and dusted. Next time, send for me sooner; problems ripen fast.",
		"That's off your hands. Pay the warlock, forget the warlock. The usual arrangement.",
		"Settled. The details would only spoil your supper.",
	},
	["cls.warlock.quest_complete.w06.021"] = {
		"Whatever this pays, it goes on bread, new gloves and nothing at all that glows. Ordinary things have their charm.",
		"I'll spend what this brings on something dull and useful. It keeps me tied to the everyday world.",
	},
	["cls.warlock.quest_complete.w06.022"] = {
		"They'll forget my face by tomorrow and remember the work for a long time. That's the right way round.",
		"Let them remember the job and not the one who did it. The less a warlock's face is recalled, the better things go.",
		"Help remembered without its helper. It's the only reputation my kind can count on.",
	},
	["cls.warlock.quest_progress.w06.001"] = {
		"One piece of it done. The rest will come the way curses do: slowly, and then all at once.",
		"Part done. I've been patient with worse things than errands.",
		"Some of it settled. I don't rush; rushing is how people end up in the warning chapters of books.",
	},
	["cls.warlock.quest_progress.w06.002"] = {
		"Progress. Nobody's had to sign anything yet, which I find encouraging.",
		"Getting there, and nothing has caught fire that shouldn't have.",
		"Partway through, and so far everyone involved still has all their fingers.",
	},
	["cls.warlock.quest_progress.w06.003"] = {
		"That's everything they asked for. Time to go and collect, the honest way.",
		"All of it done. Now the way back, and a payment that asks nothing in return.",
		"Complete. I'll deliver it as promised, to the letter. It's the only way I know to close a deal.",
	},
	["cls.warlock.reputation_change.w06.001"] = {
		"They think a little better of me now. For a warlock, that's practically a statue in the square.",
		"A little more welcome than I was. It took more work than it should have, and it's worth more than it looks.",
		"Word's spreading that I can be relied on. I'll try not to let the voices hear.",
	},
	["cls.warlock.rez.w06.001"] = {
		"Back. Something on the other side reached for me while I was gone, and found the door shut. Good.",
		"Dying is bad enough. Dying as a warlock means a crowd waiting where you land. I didn't stay long enough to meet them.",
	},
	["cls.warlock.rezother.w06.001"] = {
		"A soul set aside in a stone, against a bad hour. Insurance is the most honest magic I know.",
		"The stone keeps a spare way back from death. I hope it gathers dust.",
	},
	["cls.warlock.thanks.w06.001"] = {
		"Thank you. Kindness rarely comes my way; I notice every bit of it.",
		"My thanks. Not many people do me favors. I'll remember that you did.",
	},
	["cls.warlock.thanks.w06.002"] = {
		"Thanks. In my trade, a favor with no strings is practically a miracle.",
		"Much obliged. And you didn't even ask for anything in return. Do you know who I am?",
	},
	["cls.warlock.threat.w06.001"] = {
		"Leave now, and I won't learn your name. Curses work better with names.",
		"I could make your next week very long. Walk away.",
		"One more step, and I'll make you a promise you won't enjoy.",
	},
	["cls.warlock.threat.w06.002"] = {
		"My servant would love a word with you. It only knows the one.",
		"Shall I let the demon off its leash? It's been asking so nicely.",
		"See the thing beside me? It's the polite one.",
	},
	["cls.warlock.threat.w06.003"] = {
		"I don't make threats. I make arrangements, and then I keep them.",
		"That isn't a threat. It's an estimate.",
		"I'd tell you what happens next, but I'd hate to spoil it.",
	},
	["cls.warlock.threat.w06.004"] = {
		"lets a curl of dark smoke slip between {g:his|her} fingers and watches it, saying nothing.",
		"tilts {g:his|her} head, and for an instant {g:his|her} eyes go entirely black.",
	},
	["cls.warlock.threat.w06.005"] = {
		"Your soul would fit in a stone the size of my thumb. I've checked.",
		"Souls are a currency in my trade. Yours is small change.",
		"Careful. I keep pieces of things like you in a little bag.",
	},
	["cls.warlock.victory.w06.001"] = {
		"Now to pay back what I tapped. Sit, eat, wait for the strength to come back.",
		"I borrowed against my own health to finish that. The debt's due now, and I'll pay it sitting down.",
		"Mana full, body empty. The usual trade. Time to sit and even it out.",
	},
	["cls.warlock.victory.w06.002"] = {
		"You should have read the warning on the label. I'm the label.",
		"Hm. Cursed, burned and drained. You really did try everything.",
		"And that's what a bad bargain looks like from the outside.",
	},
	["cls.warlock.victory.w06.003"] = {
		"lowers {g:his|her} hand, and the last wisps of shadow drain back into {g:his|her} sleeve like water into sand.",
		"brushes a little gray ash from {g:his|her} clothes and does not look at where it came from.",
		"stays beside the fallen foe a moment longer than needed, as if waiting for something to leave it.",
	},
	["cls.warlock.victory.w06.004"] = {
		"Check the shards. Always check the shards after. A warlock who runs out finds out at the worst time.",
		"The ritual after: count the shards, wipe the wand, steady the hands.",
		"Every fight ends the same way: I open the bag and count. It's the nearest thing I have to a prayer.",
	},
	["cls.warlock.victory.w06.005"] = {
		"Curse done, and you with it. Next time, pick on a paladin. They forgive more easily.",
		"That curse had your name on it from the first look you gave me.",
		"There's no cure for that curse. There never was, for you.",
	},
	["cls.warlock.victory.w06.006"] = {
		"My wounds have closed, mostly at its expense. It doesn't feel like stealing. That's the part that worries me.",
		"Its life is mine now, or the part I could use. The rest went wherever lives go.",
	},
	["cls.warlock.victory.w06.007"] = {
		"Good work, servant. Don't let it go to your head. You don't have much of one.",
		"Heel. Yes, I saw. No, you don't get to keep anything.",
		"Back to my side. And stop looking pleased; it doesn't suit you.",
	},
	["cls.warlock.victory.w06.008"] = {
		"turns {g:his|her} back on the corpse and clicks {g:his|her} tongue; the demon slinks after {g:him|her}, muttering.",
		"jerks two fingers, and the demon stops sniffing at the remains and comes back, sullen.",
	},
	["cls.warlock.victory.w06.009"] = {
		"It's quiet now. I never know whether the quiet is relief or just the voices catching their breath.",
		"Over. The air goes back to smelling like air. I go back to smelling like sulfur.",
		"The quiet after a fight is never empty for me. Something always lingers to see what I'll do next.",
	},
	["cls.warlock.victory.w06.010"] = {
		"Done. Somebody take a note: curses work.",
		"There. I'd say rest in peace, but I know the trade too well for that.",
		"That's settled. I'll send the bill to whatever's waiting for you.",
	},
	["cls.warlock.victory.w06.011"] = {
		"I enjoyed that. A little. I should write that down and look at it later.",
		"There was a moment, at the end, when the fire felt like mine. Moments like that need watching.",
	},
	["cls.warlock.victory.w06.012"] = {
		"You had a name. I won't take that from you. Just everything else.",
		"No hard feelings. In my place you'd have done the same, with the right pact.",
		"Whatever you believed in, it didn't bargain as hard as I did.",
	},
	["cls.warlock.victory.w06.013"] = {
		"Back to the Nether with you. Tell them a mortal sent you, and watch them laugh a little less.",
		"One less demon loose in the world. One more holding a grudge against me on the other side.",
		"Dismissed for good. I never grant my own servants that much.",
	},
	["cls.warlock.victory.w06.014"] = {
		"Second time's the charm, then.",
		"There. Whatever moved these bones can try again; I'll be waiting.",
		"Rest, and stay rested this time. I won't be so gentle twice.",
	},
	["cls.warlock.victory.w06.015"] = {
		"presses {g:his|her} stained fingertips together until they stop trembling.",
		"rubs {g:his|her} palms together, slowly, as if to scrub off something that will not come away.",
	},
	["cls.warlock.victory.w06.016"] = {
		"I told you the curse was contagious. Well, I meant to.",
		"My condolences. To whoever has to tidy this up.",
		"And that, if anyone's keeping score, is why you don't threaten a warlock.",
	},
	["cls.warlock.victory.w06.017"] = {
		"That bolt came faster than it used to. The craft is settling into my hands, for good or ill.",
		"Each fight teaches me a little more about what the power wants. I don't like the lessons, but I keep the notes.",
		"Another fight, another page in the ledger. The handwriting gets surer every time.",
	},
	["cls.warlock.victory.w06.018"] = {
		"It is paid. The pact asks nothing more of this one.",
		"The account is closed. Let whatever waits for it come and collect.",
	},
	["cls.warlock.victory.w06.019"] = {
		"A small voice inside asks whether that was necessary. I let it ask. I don't answer.",
		"I make myself look at what I did. Every time. It's the one rule I've never bent.",
	},
	["cls.warlock.victory.w06.020"] = {
		"Burn out quietly. I've nothing left to say to you.",
		"Your fire's out, and mine isn't. That's the whole story.",
		"Out you go, like a candle. I'll keep the smoke.",
	},
	["cls.warlock.victory.w06.021"] = {
		"It died running. Fear does that. I'd have preferred another ending, but I prefer even more not to end myself.",
		"Fear first, then the finishing blow. Efficient. I try not to linger on the order of things.",
	},
	["cls.warlock.victory.w06.022"] = {
		"The rot finished what I started. Mostly, I just waited.",
		"Patience and a little Corruption. There's no fight in the world they can't wear down.",
		"I didn't have to hurry. Rot never does.",
	},
	["cls.warlock.victory.w06.023"] = {
		"The demon wants praise. I give it a nod. Demons who get praise start asking for wages.",
		"It's watching me for a reward. It gets nothing. Rewarding a demon is how the trouble starts.",
	},
	["cls.warlock.victory.w06.024"] = {
		"Hardly counted. I owe the curse an apology for wasting it.",
		"Small thing. I almost feel bad. Almost.",
	},
	["cls.warlock.victory.w06.025"] = {
		"Bigger than me, and still down. That's what a good pact is for.",
		"You had the size and the strength. I had better terms.",
		"More of you just meant more to curse.",
	},
	["cls.warlock.victory.w06.026"] = {
		"lets the dark gather back into one palm and closes a fist on it, as one pockets a coin.",
		"watches a faint violet glow fade from the body, and only then lowers {g:his|her} guard.",
	},
	["cls.warlock.victory.w06.027"] = {
		"That took more out of me than it should have. I'll be more careful with the next one.",
		"Tired. The kind of tired that comes from spending things you can't buy back.",
		"Sit. Eat something. The demons will still be there when I'm less hollow.",
	},
	["cls.warlock.victory.w06.028"] = {
		"There'll be whispers about this one, I expect. With warlocks there always are.",
		"No, I won't apologize for the smell. Fel fire smells like that.",
	},
	["cls.warlock.victory.w06.029"] = {
		"Unclench. Let the power go back where it lives. It always wants to stay a little longer.",
		"Release it slowly. Power held after the fight is power that starts making its own plans.",
		"Put it away. Every scrap. Nothing leaves the fight still burning in my hands.",
	},
	["cls.warlock.victory.w06.030"] = {
		"Down, and staying down. My curses don't do half-measures.",
		"That's the end of you. Mine's a long way off, if I keep my bargains.",
	},
	["cls.warlock.victory.w06.031"] = {
		"Each victory is paid for somewhere I can't see. I've learned to stop asking where.",
		"Won again. The bill comes later, and never in the form I expect.",
		"Victory is just the part of the cost you get to see.",
	},
	["cls.warlock.victory.w06.032"] = {
		"Let the embers finish the job.",
		"Ash and a bad smell. Fel fire never leaves much else.",
	},
	["cls.warlock.victory.w06.033"] = {
		"Won it on borrowed health. I'm good for it. Probably.",
		"Paid in my own hide, as usual. Worth it, as usual. Mostly.",
		"I'll pay myself back with a meal and a sit. Cheapest lender I know.",
	},
	["cls.warlock.victory.w06.034"] = {
		"kneels briefly beside the remains, fingers hovering, then rises and closes a small bag with a tug.",
		"turns a small violet crystal over in {g:his|her} fingers before tucking it away.",
		"pinches out a last curl of violet smoke between two fingers, like snuffing a wick.",
	},
	["cls.warlock.victory.w06.035"] = {
		"If anyone asks, it tripped. Into a curse. Several times.",
		"One less thing that wants me dead. The list stays long, though.",
		"Cause of death: disagreed with a warlock. It happens more than you'd think.",
	},
	["cls.warlock.victory.w06.036"] = {
		"No one will come to see what happened here. They'll smell the sulfur and decide they'd rather not know.",
		"If anyone finds the body, they'll guess who did it. Warlock work has a signature.",
	},
	["cls.warlock.victory.w06.037"] = {
		"Leave it. Nothing on that corpse belongs to you.",
		"Away from the remains. You're a servant, not a scavenger.",
		"Off. I didn't summon you to pick at leftovers.",
	},
	["cls.warlock.victory.w06.038"] = {
		"For a moment, as it died, I felt something pass close to me. A draft. I'll tell myself it was a draft.",
		"As it fell, the cold in the air deepened, just for an instant. Something on the other side had noticed.",
	},
	["cls.druid.attack.w07.001"] = {
		"Again. Like the woodpecker: the tree gives in eventually.",
		"One more. Patience gets through anything, given enough tries.",
		"And again. The slow way always gets there.",
	},
	["cls.druid.attack.w07.002"] = {
		"Spend only what the fight asks. The wild never pays more than the price.",
		"Easy. Don't waste strength showing off.",
		"Measured. Nothing in nature strikes harder than it has to.",
	},
	["cls.druid.attack.w07.003"] = {
		"presses the attack without hurry, each move growing out of the last like rings in a trunk.",
		"keeps at the foe with a wild creature's tireless thrift, nothing wasted between one move and the next.",
	},
	["cls.druid.attack.w07.004"] = {
		"Wear this a while. Moonlight that burns, and keeps on burning.",
		"A mark of silver. It won't wash off soon.",
	},
	["cls.druid.attack.w07.005"] = {
		"Going somewhere? The ground says otherwise.",
		"Roots round your feet. Now we can discuss this calmly.",
		"Don't move. The ground has you by the ankles now.",
	},
	["cls.druid.attack.w07.006"] = {
		"No spells in this shape. Only weight and edge.",
		"This shape doesn't bargain. It bites.",
		"Heavier than I look. Much heavier.",
	},
	["cls.druid.attack.w07.007"] = {
		"Slow to call down, hard to forget. Worth the wait.",
		"All that gathering, for one bright fall. Make it count.",
	},
	["cls.druid.attack.w07.008"] = {
		"That was nature's way of saying no.",
		"Sorry. Well. Mostly sorry.",
		"Consider that a polite request to leave.",
	},
	["cls.druid.attack.w07.009"] = {
		"Let the wind sort you out. It's had practice.",
		"Here comes the gale. Hold on to something.",
	},
	["cls.druid.attack.w07.010"] = {
		"There. Now you glow. Try hiding from that.",
		"Lit up like a lantern. Nowhere to hide now.",
	},
	["cls.druid.battle.w07.001"] = {
		"An oak needs a hundred winters to grow. I can spare you a minute.",
		"Trees outlast storms for a living. You're a very small storm.",
		"I learned patience from things that stand in one place for centuries. Rush me if you like.",
	},
	["cls.druid.battle.w07.002"] = {
		"Nothing personal. The cycle has simply decided one of us goes back to the soil.",
		"Neither of us is wicked. One of us is about to become food for the grass, that's all.",
		"No malice in this. Just the old sum: one stays standing, one goes to feed the soil.",
	},
	["cls.druid.battle.w07.003"] = {
		"Breathe. Feel for the ground. Then answer.",
		"Slow the heart first. Nothing in the wild hurries the strike that matters.",
		"Roots first. Everything else grows out of where I stand.",
	},
	["cls.druid.battle.w07.004"] = {
		"goes quiet in a way that has nothing to do with fear: the stillness of something that has already decided.",
		"lowers {g:his|her} weight and lets the noise of the world drain away until only the foe is left in it.",
		"watches the foe come on with an unhurried gaze, the calm of a thing that has outlived a good many storms.",
	},
	["cls.druid.battle.w07.005"] = {
		"I was counting mushrooms. You've ruined a perfectly quiet walk.",
		"I was listening to a beetle. It was more interesting than you, and better mannered.",
		"Must we? The moss and I were enjoying a lovely silence.",
	},
	["cls.druid.battle.w07.006"] = {
		"You've tipped the scale too far. I'm here to tip it back.",
		"Something has to restore the balance here. It seems to be me.",
		"Balance doesn't keep itself. Someone has to lean on the other side.",
	},
	["cls.druid.battle.w07.007"] = {
		"Every season ends. Yours is ending now.",
		"Winter comes for all things. I'm only a little early for you.",
		"Spring, summer, the long fall. You've reached the last of them.",
	},
	["cls.druid.battle.w07.008"] = {
		"A gardener cuts back without anger. Don't take it personally, this is pruning.",
		"Some branches have to go so the rest can breathe. Today the branch is you.",
		"The gardener doesn't hate the bramble. Out it comes all the same.",
	},
	["cls.druid.battle.w07.009"] = {
		"There's no hate in me. Hate fumbles.",
		"Rage burns out. What I have is patience, and that doesn't.",
	},
	["cls.druid.battle.w07.010"] = {
		"Remember: the mending is for after. And during. Mostly during, knowing me.",
		"Fight first, heal later. Or the other way round. Probably both at once.",
		"Try not to need healing this time. Ha. As if that has ever worked.",
	},
	["cls.druid.battle.w07.011"] = {
		"The elders say Cenarius taught the first druids to guard the green. The lesson reached me whole.",
		"Cenarius gave our order its first lessons, so the elders tell it. This is one of them.",
	},
	["cls.druid.battle.w07.012"] = {
		"I keep the promise every druid keeps: guard what grows. You're standing in the way of it.",
		"Guard what grows. Every druid swears it, one way or another. You've put your feet right on it.",
		"Each of us carries the same old promise: keep the green. You're trampling it.",
	},
	["cls.druid.battle.w07.013"] = {
		"Moss beats stone. It takes a while, but it always wins.",
		"Water wears through rock without ever raising its voice. I can be that patient.",
		"Roots split boulders one slow inch after another. I have inches to spare.",
	},
	["cls.druid.battle.w07.014"] = {
		"Under everything, the Dream holds the world the way it should be. I'd wager there's nothing like you in it.",
		"The Dream keeps a truer shape of every living thing, the old druids teach. I doubt you'd recognize yours.",
	},
	["cls.druid.battle.w07.015"] = {
		"Every creature knows the moment it's been cornered. Look around. This is that moment.",
		"Wild things know when they've run out of places to run. Have you noticed yet?",
		"Look around you. Nowhere left to run that I can't follow.",
	},
	["cls.druid.battle.w07.016"] = {
		"A forest fire clears the old wood so the new can grow. Think of me as a small, polite fire.",
		"Wildfire's cruel, but the meadow comes back greener. I'll try to be the meadow's sort of cruel.",
	},
	["cls.druid.battle.w07.017"] = {
		"The heron stands for an hour and strikes once. I've been standing a while.",
		"An owl doesn't chase. It waits, and then it doesn't miss.",
		"The snake lies under its stone for hours. Then it is very, very fast.",
	},
	["cls.druid.battle.w07.018"] = {
		"Go on, take its attention. I'll keep the rest of you breathing.",
		"Hit it hard. Whatever it hits back with, I can mend.",
		"Get stuck in. If anyone starts bleeding, shout, and the green will answer.",
	},
	["cls.druid.battle.w07.019"] = {
		"Tell me what this fight needs, mending or muscle. I can be either.",
		"Healing or hitting, you call it. I'll wear whichever shape the fight wants.",
	},
	["cls.druid.battle.w07.020"] = {
		"Whatever shape I'm wearing, it's the same will inside it. Keep hold of that.",
		"Fur or skin, the one steering doesn't change. Remember who's steering.",
	},
	["cls.druid.battle.w07.021"] = {
		"Easy. You're only doing what your kind does. So am I.",
		"I know what's making you so angry. This ground is yours too. I'm sorry, but I can't step back.",
		"There's no wickedness in you, only hunger. I wish that changed anything.",
	},
	["cls.druid.battle.w07.022"] = {
		"You were meant to go back to the soil. Something stopped you. I'll finish the job.",
		"A cycle broken halfway. Let me close it.",
		"Dead things belong in the earth, feeding what comes next. You've wandered off.",
	},
	["cls.druid.battle.w07.023"] = {
		"Nothing grows where your kind has walked. I'll see to it you walk no further.",
		"You poison the soil just by standing on it. Let's be quick.",
	},
	["cls.druid.battle.w07.024"] = {
		"Fire, stone or wind, it hardly matters: a piece of the world walking about on its own. Time to settle.",
		"You're a piece of the world out of place. Let me put you back.",
	},
	["cls.druid.battle.w07.025"] = {
		"Gears and smoke. Give the forest a few years and it'll have you rusted shut. I'll save it the wait.",
		"You don't breathe, you don't grow, and you leak oil on the moss. We're done talking.",
		"Iron and steam. The moss will come for you anyway; I'm only quicker.",
	},
	["cls.druid.battle.w07.026"] = {
		"Stronger than me. So is every oak, and ivy still brings them down.",
		"Too much strength to meet head on. Be the vine, then: slow, and everywhere.",
	},
	["cls.druid.battle.w07.027"] = {
		"You've had time to grow strong. The wild respects that. It'll still bring you down.",
		"All that bulk and all that pride. The tallest trees make the loudest fall.",
		"Old strength is still only strength. Patience is older.",
	},
	["cls.druid.battle.w07.028"] = {
		"draws the air in slowly, as if tasting the foe on it, and lets it out as a low sound.",
		"breathes in the foe's scent once, deep, and something wild settles behind {g:his|her} eyes.",
	},
	["cls.druid.battle.w07.029"] = {
		"shifts {g:his|her} footing once and goes perfectly still, as patient and as sure as a root in rock.",
		"squares up to the foe without a word and without hurry, like a tide coming in.",
	},
	["cls.druid.battle.w07.030"] = {
		"Every fight costs the wild something, whoever wins. Let's keep the bill small.",
		"Whoever falls here, the land loses a little. Let's be quick and not make it more.",
	},
	["cls.druid.battle.w07.031"] = {
		"Let's not drag this out. The wild hates waste, and so do I.",
		"Quick and clean. Nobody gains anything from a long fight.",
		"In and out, nothing wasted. That's how the wild does it.",
	},
	["cls.druid.battle.w07.032"] = {
		"I took up this path to tend living things. Some days tending means this.",
		"Druids heal. Druids defend. I'd like more days of the first kind.",
	},
	["cls.druid.battle.w07.033"] = {
		"Root and branch, beast and bloom: whatever lives here, I answer for it.",
		"Leaf, hide and stone stand with me. Come and test the whole of them.",
	},
	["cls.druid.battle.w07.034"] = {
		"Pace yourself. A fight is a season, not a single gust.",
		"Don't spend everything in the first breath. The wild never does.",
		"Hold something back. Strength spent early is strength I'll miss later.",
	},
	["cls.druid.battle.w07.035"] = {
		"You've been taking from this land without asking. Today the land asks for it back.",
		"Everything you've taken from the wild, it wants repaid. I'm here to collect.",
	},
	["cls.druid.battle.w07.036"] = {
		"I'd offer you peace, but you've already got that look.",
		"I considered reasoning with you. Briefly. Very briefly.",
		"We could each go our own way. No? Then let's get on with it.",
	},
	["cls.druid.battle.w07.037"] = {
		"gives the ground underfoot a brief glance, almost an apology, then turns to the fight.",
		"seems, for a heartbeat, to listen to the ground before the fight begins.",
	},
	["cls.druid.battle.w07.038"] = {
		"I've walked in Moonglade's quiet. Your noise doesn't frighten me.",
		"After the stillness of Moonglade, all this fuss sounds very small.",
	},
	["cls.druid.battle.w07.039"] = {
		"The elders made all of this look graceful. I'll settle for effective.",
		"Grace is for the old druids. Messy and alive will do for me.",
		"I'd love to have the serene poise of the old druids. Not today, apparently.",
	},
	["cls.druid.battle.w07.040"] = {
		"You're barely grown. Turn around and live a few more seasons.",
		"Still a sapling. There's time yet to run and grow old.",
	},
	["cls.druid.battle.w07.041"] = {
		"Whatever banner you fight under, the soil takes us all the same. Let's not hurry my turn.",
		"Your side, my side. The roots under us keep count of neither.",
	},
	["cls.druid.battle.w07.042"] = {
		"Hunger, fear, territory. Every fight in the wild comes down to one of those. Which one is this?",
		"What does it want? Food, ground or simply to live. Knowing which tells me how it fights.",
	},
	["cls.druid.battle.w07.043"] = {
		"Have it your way. The wild gave you every chance to leave.",
		"You had all the warning the wild gives: the hush, the scent, me. Too late now.",
	},
	["cls.druid.battle.w07.044"] = {
		"lets out a sound low in the chest, more warning than war cry.",
		"bares {g:his|her} teeth, briefly and without humor.",
	},
	["cls.druid.battle.w07.045"] = {
		"Fear is only the wild telling me to pay attention. I'm paying attention.",
		"A little afraid. Good. Every creature that lives long is.",
	},
	["cls.druid.buff.w07.001"] = {
		"The Mark on my own skin. A little thicker, a little steadier, a little more of everything.",
		"The Mark settles in like an extra layer of bark, invisible and stubborn.",
	},
	["cls.druid.buff.w07.002"] = {
		"Thorns on my own hide. Whatever wants a bite of me can pay for it.",
		"Prickly by choice. Let them learn the lesson the bramble teaches.",
		"There. Now I'm the hedge nobody should try to push through.",
	},
	["cls.druid.buff.w07.003"] = {
		"touches {g:his|her} own chest with two fingers, and for a heartbeat {g:his|her} skin takes on the faint sheen of new bark.",
		"murmurs a short phrase and draws a hand down one arm; a green shimmer follows the palm and fades.",
		"speaks a word to no one in particular, and something green and quiet settles over {g:his|her} shoulders like a cloak.",
	},
	["cls.druid.buff.w07.004"] = {
		"Before the road, the wild's own coat. I go nowhere without it, any more than a bear goes without fur.",
		"A druid dresses twice: once in leather, once in the green.",
		"Boots laced, the wild's gift laid on. Now the road can do its worst.",
	},
	["cls.druid.buff.w07.005"] = {
		"Blessed at home, so to speak. Not glamorous, but the wild doesn't care about glamour.",
		"Marked by my own hand. The wild doesn't mind who does the paperwork.",
	},
	["cls.druid.buff.w07.006"] = {
		"A rose doesn't apologize for its thorns. Neither will I.",
		"Thorns are just a plant saying no in a language everyone understands.",
		"The thistle has never once been eaten by surprise. I take its advice.",
	},
	["cls.druid.buff.w07.007"] = {
		"Something steady settles under my skin, like roots finding water.",
		"I feel it take: a slow, green firmness, the patience of old trees lent for a while.",
		"It sinks in and holds, quiet as a seed deciding to stay.",
	},
	["cls.druid.buff.w07.008"] = {
		"Wild, wrap me.",
		"Bark and briar, keep me.",
		"Green, stand around me.",
	},
	["cls.druid.buff.w07.009"] = {
		"Laid on again. I've done it so often my hands move before I think.",
		"Worn off again. These gifts never last as long as I'd like, but they cost little and they're mine.",
	},
	["cls.druid.buff.w07.010"] = {
		"Thorns up in the middle of it. Every blow they land on me now costs them something.",
		"Let it keep hitting me. Each strike comes back to it with a few thorns attached.",
		"Go on, swing. The brambles keep the tally.",
	},
	["cls.druid.buff.w07.011"] = {
		"traces a quick sign over {g:his|her} own heart, and for a moment the faint shape of a paw print glows on the skin and fades.",
		"lays a palm on {g:his|her} own brow, and a shimmer like light through leaves runs over {g:him|her}.",
	},
	["cls.druid.buff.w07.012"] = {
		"In the old tellings, the Mark was Cenarius's first gift to those who kept his groves. I wear it like a promise I haven't finished keeping.",
		"A gift from the Forest Lord to his keepers, the story goes. I try to deserve it on the days I renew it.",
	},
	["cls.druid.buff.w07.013"] = {
		"There's the Mark. A little more of everything: strength, wind, tough skin.",
		"The Mark of the Wild. You won't feel much, but you'll last longer.",
		"Marked. You'll shrug off a few things you'd otherwise have felt.",
	},
	["cls.druid.buff.w07.014"] = {
		"Thorns on you. Anything that hits you will regret the choice.",
		"Now you're a bramble. Let them try to grab you.",
		"Prickly, but on our side. Off you go.",
	},
	["cls.druid.buff.w07.015"] = {
		"A little of the wild goes with them now. I like knowing that, wherever they wander.",
		"Marked and sent off. A piece of the green walks beside them, even where I can't.",
	},
	["cls.druid.buff.w07.016"] = {
		"reaches out and brushes {target}'s shoulder, leaving a faint green shimmer that sinks into the skin.",
		"raises a hand toward {target} and speaks a single soft word; a shimmer like light through leaves settles and fades.",
	},
	["cls.druid.buff.w07.017"] = {
		"Don't scratch it. It's not that kind of mark.",
		"It won't show, I promise. The wild is discreet.",
		"No, it won't sprout leaves on you. Probably.",
	},
	["cls.druid.buff.w07.018"] = {
		"For the road ahead. The wild keeps an eye on its own.",
		"Take this along. Roads are long and the green is good company.",
		"Something for the journey. It weighs nothing and keeps a long while.",
	},
	["cls.druid.buff.w07.019"] = {
		"Thorns on someone else's skin. Whatever bites them will remember me, or at least my brambles.",
		"I give thorns away more gladly than I wear them. Watching them work on someone else is a quiet pleasure.",
	},
	["cls.druid.buff.w07.020"] = {
		"Carry the wild with you.",
		"The wild walks with you now.",
		"Go with the green at your side.",
	},
	["cls.druid.farewell.w07.001"] = {
		"Go well. Keep to the shade when you can, and leave the young trees be.",
		"Farewell. May whatever path you take be one the land is glad to carry.",
		"Safe roads. And if a forest ever feels watchful, be polite; it probably is.",
	},
	["cls.druid.greet.w07.001"] = {
		"Greetings. May the ground be kind under your feet.",
		"Well met. Walk softly, and you'll always find a welcome where I am.",
	},
	["cls.druid.greet.w07.002"] = {
		"Hello there. Forgive the leaves in my hair; I've been in conversation with a hedge.",
		"Greetings. Yes, that's moss on my boots. No, I won't apologize for it.",
	},
	["cls.druid.heal.w07.001"] = {
		"Mending my own hurt is odd work: I am both the hands and the wound, and the wound has the worse temper.",
		"Healing myself is the strangest kind of healing. I'm the one giving and the one complaining about it.",
		"Half of me does the mending, half of me does the wincing. They have never once agreed on the pace.",
	},
	["cls.druid.heal.w07.002"] = {
		"Nobody else was going to do it. Close up, you.",
		"No healer on hand but me. Lucky me, then.",
		"Self-service, as usual. Close up.",
	},
	["cls.druid.heal.w07.003"] = {
		"presses a palm flat against {g:his|her} own ribs, and the bruise beneath fades from purple to green to nothing, like a season passing in a breath.",
		"rests a hand over {g:his|her} own wound and waits; the torn edges creep together slowly, the way roots close around a stone.",
	},
	["cls.druid.heal.w07.004"] = {
		"Careless. I walked straight into that one. The body forgives faster than I do.",
		"My own fault, that cut. The flesh will forget it soon; I'll remember it longer, which is the point.",
	},
	["cls.druid.heal.w07.005"] = {
		"The old druids say a body is only borrowed soil. Mending it is asking the lender for a little more time.",
		"Flesh is soil on loan, the elders of the Circle teach. I'm only asking for the loan to run a while longer.",
		"Earth lent, earth owed, as the old druids put it. Today I ask for an extension, politely.",
	},
	["cls.druid.heal.w07.006"] = {
		"Patched like an old oak. It'll hold.",
		"Bark over the cut. That'll do for now.",
		"Sap seals the trunk; I seal the cut. Onward.",
	},
	["cls.druid.heal.w07.007"] = {
		"Every blow knocks the casting back a step. Patience. The spell is slower than whatever is hitting me, but it gets there.",
		"Hard to finish a long spell with something hammering at me. I start the words again, and again, like a seed pushing up through trodden earth.",
	},
	["cls.druid.heal.w07.008"] = {
		"Rejuvenation on my own skin feels like sap rising in spring, from the inside out. I keep walking and let it work.",
		"I set it going and forget it. By the time I think to check, the cut has already half closed.",
	},
	["cls.druid.heal.w07.009"] = {
		"Regrowth does it twice: a quick knit now, then a slower one underneath. The first for the fight, the second for afterward.",
		"The fast mend and the slow one in a single spell. Even the wild hedges its bets.",
	},
	["cls.druid.heal.w07.010"] = {
		"murmurs a long string of soft, unhurried words over {g:his|her} own wound, and green light gathers in the cupped palm before sinking in.",
		"draws a slow breath and lets the words of mending come at their own pace, a faint green glow settling over the hurt.",
	},
	["cls.druid.heal.w07.011"] = {
		"Mana's low, the bottle's full. Easy choice.",
		"I could spend my mana on this, or let the bottle do it. The bottle doesn't mind.",
		"One swallow, and the mana stays put for when it's really needed.",
	},
	["cls.druid.heal.w07.012"] = {
		"Bitter, thick, tastes of root and iron. Someone knew their herbs. The warmth goes straight to the wound.",
		"Whoever brewed this picked the leaves young; I can taste it. The ache is already loosening.",
	},
	["cls.druid.heal.w07.013"] = {
		"uncorks a small flask with {g:his|her} teeth, sniffs it with a herbalist's frown, and drinks it down anyway.",
		"knocks back a red potion in one swallow and wipes {g:his|her} mouth, already looking for the next thing to do.",
	},
	["cls.druid.heal.w07.014"] = {
		"A warlock's stone, warm in the hand. I don't ask what went into it. It works, and the wound closes.",
		"I'd rather not know how a healthstone is made. I'm grateful for it all the same.",
	},
	["cls.druid.heal.w07.015"] = {
		"A stone that heals. The forest never thought of that one. I'll take it.",
		"Not grown, not brewed. Made, by someone with stranger habits than mine. I'll keep it.",
	},
	["cls.druid.heal.w07.016"] = {
		"No time for words and green light. Uncork, drink, keep fighting.",
		"The spell would take too long with this thing on me. The flask is quicker.",
		"Mana for later, potion for now. Drink and get back to it.",
	},
	["cls.druid.heal.w07.017"] = {
		"Mana poured into my own hide now is mana I won't have for the next fight. Worth it. Probably.",
		"I measure what's left in me against what's still ahead. Today the wound wins the argument.",
		"A druid's mana is a single well, and I'm drawing from it for my own scrapes. Sparingly, then.",
	},
	["cls.druid.heal.w07.018"] = {
		"I let the bear go to mend. It always leaves reluctantly, and the hurt it was hiding arrives all at once.",
		"Out of the fur, into the hands. The pain the bear shrugged off is mine now, and so is the healing.",
	},
	["cls.druid.heal.w07.019"] = {
		"Green, come back to me.",
		"Root and leaf, close this.",
		"Grow over, wound. Like moss on a fallen log.",
	},
	["cls.druid.heal.w07.020"] = {
		"I kill and I mend with the same hands, sometimes in the same hour. The Circle calls it balance. Some days it just feels like work.",
		"Tooth and herb, wound and mending. A druid keeps both in the same pocket, and learns not to mix them up.",
	},
	["cls.druid.heal.w07.021"] = {
		"flexes the mended arm slowly, testing it the way one tests a branch before putting any weight on it.",
		"rolls {g:his|her} shoulder twice, listening to it the way a woodsman listens to a creaking bough.",
	},
	["cls.druid.heal.w07.022"] = {
		"If the Dream truly holds the first shape of every living thing, as the Circle teaches, then somewhere there's a version of me without this cut. I'm only borrowing its outline.",
		"The Circle teaches that the Dream remembers every creature whole. When I mend myself, I like to think I'm copying from that memory.",
	},
	["cls.druid.heal.w07.023"] = {
		"Thorns have done worse to me. Not many, but some.",
		"I've had worse from a bramble patch. Well. Nearly.",
		"A briar would be ashamed of a scratch this shallow. Almost.",
	},
	["cls.druid.heal.w07.024"] = {
		"Tranquility, cast for no one but me. It feels like setting a feast for one, but the wound doesn't complain.",
		"All that quiet green, poured out over me and my one sorry wound. Wasteful, perhaps. It works.",
	},
	["cls.druid.heal.w07.025"] = {
		"Tranquility asks me to stand still and keep the words going, whatever comes. The hardest part is not flinching.",
		"Breath after breath with my feet rooted, while the green pours out of me. A tree doesn't run either.",
	},
	["cls.druid.heal.w07.026"] = {
		"stands rooted and chanting, and a soft green stillness spreads outward over everyone close by.",
		"plants {g:his|her} feet and lifts {g:his|her} hands, and for a few breaths the air around the whole group seems to put out leaves.",
	},
	["cls.druid.heal.w07.027"] = {
		"Fight's over. Now the slow part: sit, breathe, let the green do its patient work.",
		"Nothing chasing me now. I can take the long spell, the thorough one, and do this properly.",
	},
	["cls.druid.heal.w07.028"] = {
		"A wolf licks its wounds and moves on. I have better tools, and I still envy how little fuss it makes.",
		"Wounded animals hide, heal and say nothing about it. I'm trying to learn the saying-nothing part.",
		"No beast in the wild ever made a speech about a cut. I keep that in mind, and keep quiet.",
	},
	["cls.druid.heal.w07.029"] = {
		"Even a gardener gets pricked. The trick is tending yourself before you wilt.",
		"Every gardener gets scratched eventually. First tend the hands, then the hedge.",
	},
	["cls.druid.heal.w07.030"] = {
		"A healer who bleeds out is just a well-informed corpse. Not today.",
		"Dying with a heal unspent would be embarrassing. Spending it now.",
	},
	["cls.druid.heal.w07.031"] = {
		"The first mending every druid learns is also the slowest. I've grown fond of the slowness; it makes me hold still and pay attention.",
		"The oldest spell I know, and still the one I trust most. Long words, a big mend, no shortcuts.",
	},
	["cls.druid.heal.w07.032"] = {
		"Small mercies, one after another. Rejuvenation never hurries, and neither does a forest.",
		"Not one great mend but a handful of little ones, each arriving on time. I like spells with manners.",
	},
	["cls.druid.heal.w07.033"] = {
		"steps back just long enough to murmur a few words over {g:his|her} own wound, then steps in again.",
		"breaks off for a heartbeat, a hand pressed to {g:his|her} side and green light leaking between the fingers, before turning back to the fight.",
	},
	["cls.druid.heal.w07.034"] = {
		"Too close. The roots were already reaching up for me.",
		"Closer than I like. I could feel the soil getting ready.",
	},
	["cls.druid.heal.w07.035"] = {
		"The first thing an old druid ever told me about healing: the hands that mend others are no use if they're shaking. Mend your own first.",
		"Mend the healer first, say the old druids, or soon there's no one left to mend anyone.",
	},
	["cls.druid.heal.w07.036"] = {
		"The skin closes the way grass closes over a trodden path: not all at once, but without ever doubting it will.",
		"Grass forgets a footprint in a few days. My skin is faster, with a little help.",
		"A trampled meadow stands up blade by blade. So does this, only quicker.",
	},
	["cls.druid.heal.w07.037"] = {
		"Mana well spent, mostly on my own clumsiness.",
		"And that's what my pride costs, in healing.",
		"There goes a mend I'd hoped to save for someone else.",
	},
	["cls.druid.heal.w07.038"] = {
		"Closed. Something wild in me is already pulling at the leash, eager to get back in.",
		"The wound's shut, and the restless part of me wants back into the fray before I've finished the thought.",
	},
	["cls.druid.heal.w07.039"] = {
		"It was Cenarius who first taught mending to the druids, or so the Circle tells it. I wonder if he ever had to do it in such a hurry.",
		"The Circle says the first druids learned this from Cenarius himself. I hope he was more patient with his pupils than I am with my own wounds.",
	},
	["cls.druid.heal.w07.040"] = {
		"wipes the blood away with a sleeve and looks over the fresh, pink skin beneath, satisfied.",
		"scrubs the dried blood off with the heel of {g:his|her} hand and nods at the clean skin underneath.",
	},
	["cls.druid.heal.w07.041"] = {
		"An oak takes years to grow bark over a lightning scar. I get a few breaths. I try not to take it for granted.",
		"Trees heal so slowly that people think they don't. I get to do it in moments, and it still feels like a borrowed gift.",
	},
	["cls.druid.heal.w07.042"] = {
		"Knit, like a nest woven twig by twig.",
		"Back together, like a nest after the wind.",
	},
	["cls.druid.heal.w07.043"] = {
		"I don't make the healing. I just hold the door open and let it through, and try not to stand in its way.",
		"The green does the work. My part is to ask nicely and keep my hands steady.",
		"Whatever mends me isn't mine. I only know the way to ask for it.",
	},
	["cls.druid.heal.w07.044"] = {
		"Pain is the body speaking plainly. I listened. Now it can stop shouting.",
		"The hurt had made its point. I took the lesson and sent the pain away.",
		"Message received, wound. You can go now.",
	},
	["cls.druid.heal.w07.045"] = {
		"heals {g:himself|herself} with a few soft words, and for a moment the air around {g:him|her} smells of turned earth and new leaves.",
		"closes the wound with a murmur, leaving behind a brief scent of crushed grass and damp bark.",
	},
	["cls.druid.heal.w07.046"] = {
		"Regrowth costs more than it seems worth, until the slow part keeps knitting long after I've stopped thinking about it.",
		"Pricey, Regrowth. But it keeps paying out after I've forgotten I cast it.",
	},
	["cls.druid.heal.w07.047"] = {
		"A cat would hide under a bush and lick this for a day. I have a spell and no bush. Fair trade.",
		"Any beast of the field would just limp off and hope. I get to fix it. The small advantage of having hands.",
	},
	["cls.druid.heal.w07.048"] = {
		"Healing myself first isn't selfishness. If I fall, nobody here gets mended at all.",
		"The others need me upright more than they need me brave. So: me first, this once.",
	},
	["cls.druid.heal.w07.049"] = {
		"New skin. Well, as new as last spring.",
		"Back to green. Mostly.",
		"Fresh as a new leaf, and about as tough. It'll do.",
	},
	["cls.druid.heal.w07.050"] = {
		"The old druids say Malfurion taught that a healer should feel a wound fully before closing it. I felt this one. That's enough.",
		"Feel the wound before you close it, the old teaching goes, so it isn't wasted. I've felt it. Plenty.",
	},
	["cls.druid.heal.w07.051"] = {
		"inspects the newly closed cut, frowns at the faint scar left behind, and decides to call it character.",
		"eyes the thin new scar and shrugs, apparently filing it under lessons learned.",
	},
	["cls.druid.heal.w07.052"] = {
		"Life wants to go on. It always has. All a druid really does is clear the path for it.",
		"Underneath everything, the living thing wants to live. I just stop arguing with it.",
		"Nothing alive needs to be taught to mend. It needs to be allowed. That's the whole secret, and it isn't one.",
	},
	["cls.druid.heal.w07.053"] = {
		"The part of me that runs on four legs says ignore it and keep going. The part with hands knows better.",
		"Instinct says bite through the pain. Sense says stop and mend. Sense wins, barely.",
	},
	["cls.druid.heal.w07.054"] = {
		"Spring, here. Just a little of you.",
		"Come, green. Only as much as I need.",
	},
	["cls.druid.heal.w07.055"] = {
		"Quick, before anything else finds me like this.",
		"Mend fast. Wounded creatures draw attention, and I'd rather not be the slowest deer in the meadow.",
	},
	["cls.druid.heal.w07.056"] = {
		"Breathe with me. Slow. The green follows the breath.",
		"In, and out. Let it settle where it's needed.",
		"Easy breaths. The mending rides on them.",
	},
	["cls.druid.heal.w07.057"] = {
		"There you are, {target}. Patched and green.",
		"{target}, that should hold. Don't test it too hard.",
		"Mended, {target}. Try to keep it that way for an hour.",
	},
	["cls.druid.heal.w07.058"] = {
		"You bleed like a felled birch. Stop that.",
		"That's a lot of red for one person. Let's keep the rest inside.",
		"Sap belongs in trees and blood belongs in you. Hold still.",
	},
	["cls.druid.heal.w07.059"] = {
		"Watching someone else's wound close is better than watching my own. I get to see the surprise on their face.",
		"I never tire of the moment the pain leaves someone's eyes. It's the closest thing to spring I can carry in my hands.",
	},
	["cls.druid.heal.w07.060"] = {
		"stretches a hand toward {target}, and a soft green glow drifts across the gap like pollen on a breeze.",
		"turns toward {target} and speaks a few low words, and the hurt there begins to close like a leaf curling shut.",
		"sends a thread of green light toward {target}, steady and unhurried, the way a stream finds its bed.",
	},
	["cls.druid.heal.w07.061"] = {
		"Rejuvenation's on you. Little mends, one after another, for a while yet.",
		"That's a slow mend, {target}. You'll feel it come in waves.",
	},
	["cls.druid.heal.w07.062"] = {
		"Regrowth. The quick part's done; the rest grows in on its own.",
		"Some now, more later. That's how Regrowth works, {target}.",
	},
	["cls.druid.heal.w07.063"] = {
		"Keep at it. I've got your back, and your wounds.",
		"Don't look back, just fight. I'm mending as fast as you're bleeding.",
		"Eyes front. Leave the hurting part to me.",
	},
	["cls.druid.heal.w07.064"] = {
		"Watch them, not the enemy. The enemy is someone else's problem until somebody drops.",
		"My eyes stay on the others. The wild part of me can sulk about missing the fight.",
	},
	["cls.druid.heal.w07.065"] = {
		"Easy now. Pain is loud, but it doesn't get the last word.",
		"Shh. Let it go quiet. That's all mending is.",
		"Let the hurt talk itself out. Then it leaves.",
	},
	["cls.druid.heal.w07.066"] = {
		"Root to branch, mend this one.",
		"Earth beneath, leaf above, close this wound.",
		"From the deep roots up: heal.",
	},
	["cls.druid.heal.w07.067"] = {
		"Next time, try ducking. Trees can't, and look what happens to them.",
		"Duck next time. Even saplings bend when the wind comes.",
		"A willow bends and keeps its branches. Worth considering, next time.",
	},
	["cls.druid.heal.w07.068"] = {
		"I don't know this one's name, and the green doesn't ask. It never does.",
		"Known or unknown, the mending is the same. The wild never learned to play favorites.",
	},
	["cls.druid.heal.w07.069"] = {
		"keeps one eye on the fight and one on {target}, and the healing arrives just before the next blow does.",
		"turns from the foe long enough to send a quick mend toward {target}, then back again.",
	},
	["cls.druid.heal.w07.070"] = {
		"Stop wriggling. You're not a fish and I'm not done.",
		"Would you mind not moving? Mending a moving target is twice the work.",
		"Squirm all you like, but the spell lands where it lands.",
	},
	["cls.druid.heal.w07.071"] = {
		"Sit a moment. Rested flesh takes mending better.",
		"Take a breath before we move on. I want this one to set properly.",
		"No hurry now. Let it close slowly and it'll close for good.",
	},
	["cls.druid.heal.w07.072"] = {
		"Mana poured into someone else's wound never feels wasted, even when it's the last of it.",
		"I could keep this for myself. I won't. That's the whole bargain of being the one who mends.",
	},
	["cls.druid.heal.w07.073"] = {
		"Cenarius taught the first druids to mend what the wild had torn, or so the Circle says. Today that's you.",
		"The oldest gift of the Circle, they say. Lucky you, getting it for free.",
	},
	["cls.druid.heal.w07.074"] = {
		"watches {target} closely as the green light sinks in, the way one watches a seedling just planted out.",
		"studies {target} with a healer's narrowed eyes until the hurt has plainly eased.",
	},
	["cls.druid.heal.w07.075"] = {
		"Better? Good. The forest sends its regards.",
		"There. Compliments of every oak I've ever sat under.",
		"All better. Thank a tree when you pass one.",
	},
	["cls.druid.heal.w07.076"] = {
		"Hold on. The big mend takes a few breaths to gather.",
		"Give me a moment. The slow spell is the strong one.",
	},
	["cls.druid.heal.w07.077"] = {
		"I'll close this, and back they'll go into the next fight. That's the job. I've made peace with it, mostly.",
		"Mend, watch them charge off, mend again. A druid learns patience from trees and from people like this one.",
	},
	["cls.druid.heal.w07.078"] = {
		"Easy. The worst of it is leaving.",
		"Feel that? The pain packing its bags.",
		"There it goes. The hurt's on its way out.",
	},
	["cls.druid.heal.w07.079"] = {
		"lifts both hands toward {target} as if offering water, and the green light spills over.",
		"cups {g:his|her} hands and opens them toward {target}, and something like warm spring air passes between them.",
	},
	["cls.druid.heal.w07.080"] = {
		"No need to thank me. Plant something sometime.",
		"Thank the wild, not me. Better yet, don't tread on any mushrooms along the way.",
		"If you want to pay me back, leave a sapling standing somewhere.",
	},
	["cls.druid.heal.w07.081"] = {
		"Yes, I was a bear a moment ago. Hands are better for this. Hold still.",
		"Fur off, hands out. Let me see that wound.",
	},
	["cls.druid.heal.w07.082"] = {
		"Go. Your back is covered, and the whole forest is behind me.",
		"Back in there. Every root in the land is on your side now.",
	},
	["cls.druid.heal.w07.083"] = {
		"murmurs the old words of mending, eyes never leaving the wounded one, voice as steady as falling water.",
		"speaks quietly and without pause until the wound across from {g:him|her} has closed.",
	},
	["cls.druid.heal.w07.084"] = {
		"You'll have a scar. Wear it like bark: proof you outlasted something.",
		"That'll leave a mark. Trees carry theirs for centuries and nobody calls them ugly.",
	},
	["cls.druid.heal.w07.085"] = {
		"One Rejuvenation laid on and left to tick. Now I can look elsewhere for a few breaths.",
		"Set it going on them and turn away. The slow mends are the ones that let a healer think.",
	},
	["cls.druid.heal.w07.086"] = {
		"Rest your weight on the earth a moment, {target}. It has carried heavier things than you.",
		"Lean on the ground, {target}. It has never once dropped anything.",
	},
	["cls.druid.heal.w07.087"] = {
		"Let me see. Hm. I've seen worse on a badger, and the badger complained less.",
		"Boars take worse than this and don't make half the noise.",
	},
	["cls.druid.heal.w07.088"] = {
		"kneels beside {target} and works without hurry, the way one tends a bed of seedlings.",
		"settles beside {target} and takes {g:his|her} time, unhurried as moss.",
	},
	["cls.druid.jest.w07.001"] = {
		"How many druids does it take to plant a tree? One, and three seasons of patience to see whether it worked.",
		"Why don't druids play hide and seek? The trees always tell.",
	},
	["cls.druid.levelup.w07.001"] = {
		"The green in me runs a little deeper now. Spells that used to take my whole breath now ask for half of it.",
		"My roots have reached a little further down. I can feel it in how steadily I stand.",
	},
	["cls.druid.levelup.w07.002"] = {
		"draws a deep breath, and for a moment the air around {g:him|her} seems to smell faintly of new leaves.",
		"stands very still, fingers spread, as if feeling sap rise along {g:his|her} arms.",
	},
	["cls.druid.levelup.w07.003"] = {
		"Stronger. The wild has been patient with me; it seems to be paying off.",
		"A little more of the wild answers when I call now. Good. It's been a long apprenticeship.",
	},
	["cls.druid.lowhp.w07.001"] = {
		"The trunk's split. The roots haven't noticed. Neither will I.",
		"Split down the middle and the roots still hold. That's how the old trees do it.",
	},
	["cls.druid.lowhp.w07.002"] = {
		"If I'm in a shape, shed it. If I'm not, start mending. Now.",
		"Bear, cat or bare skin: whichever it is, it's time to mend.",
	},
	["cls.druid.lowhp.w07.003"] = {
		"I always meant to return to the soil eventually. I meant much, much later.",
		"The worms can wait. They're famously patient.",
		"If this is my last fight, the soil is getting a very cross gift.",
	},
	["cls.druid.lowhp.w07.004"] = {
		"sways, steadies, and plants {g:himself|herself} again with a ragged breath, like a tree refusing the wind.",
		"staggers half a step, catches {g:himself|herself}, and the breath comes hard and harsh.",
	},
	["cls.druid.lowhp.w07.005"] = {
		"So this is how the deer feels near the end. I don't need to learn the rest.",
		"Cornered and bleeding. I know this from the other side. I don't like this side.",
		"Wolves pick off the ones that stumble. Stop stumbling.",
	},
	["cls.druid.lowhp.w07.006"] = {
		"A wounded animal is the most dangerous kind. You'd better hope you knew that.",
		"Hurt me, have you? Now you'll see why hunters fear the wounded ones.",
		"Cornered, bleeding and still here. That's the worst version of me to fight.",
	},
	["cls.druid.lowhp.w07.007"] = {
		"I'm the one who's meant to do the mending. Somebody mend me.",
		"I patch up the rest of you. Who patches me? Anyone? Quickly?",
	},
	["cls.druid.lowhp.w07.008"] = {
		"Pain is only the body talking. Let it talk. I'm listening to the fight.",
		"It hurts. Noted. Now back to the part that matters.",
		"Later I'll feel all of this. Not now.",
	},
	["cls.druid.lowhp.w07.009"] = {
		"Green beneath me, hold me up a little longer.",
		"Breathe in the green, breathe out the hurt. Again.",
		"Sap and root, lend me one more breath.",
	},
	["cls.druid.lowhp.w07.010"] = {
		"Moonglade can do without one more name to mourn. Not today.",
		"The Circle loses enough of us. It won't be losing me here.",
	},
	["cls.druid.lowhp.w07.011"] = {
		"The soil's been patient with me all my life. It can be patient a little longer.",
		"Not yet. I'm not done being a living thing.",
		"One more season. I'm only asking for one more season.",
	},
	["cls.druid.lowhp.w07.012"] = {
		"bleeds and does not give ground, eyes gone flat and bright as a cornered creature's.",
		"draws in on {g:himself|herself}, hurt and all the more dangerous for it, as wild things are.",
	},
	["cls.druid.lowhp.w07.013"] = {
		"Bit of a scratch. Well, several. All right, rather a lot.",
		"Brambles have done worse to me. They haven't, actually, but it sounded brave.",
		"Nothing serious. Most of me is still attached.",
	},
	["cls.druid.lowhp.w07.014"] = {
		"You're stronger. I'm more stubborn. We'll see which runs out first.",
		"Strong, aren't you. Patience doesn't care.",
		"More strength than me, granted. You'll still have to finish it, and I won't make that easy.",
	},
	["cls.druid.lowhp.w07.015"] = {
		"No one's coming. Whatever mending happens, I do it.",
		"Alone with this. Fine. The wild raises its young to cope.",
	},
	["cls.druid.lowhp.w07.016"] = {
		"Winter takes the leaves, never the root. Try again.",
		"You've stripped the leaves. The rest of me is wintering, not dying.",
		"Bare branches. Not dead wood. There's a difference.",
	},
	["cls.druid.lowhp.w07.017"] = {
		"Stay up. Too many things still growing that need tending.",
		"Not here. There's still too much left to look after.",
	},
	["cls.druid.muse.w07.001"] = {
		"An oak spends a hundred years becoming what the acorn already meant. I try not to hurry anything that hasn't asked me to.",
		"Trees never rush the part that matters. Whatever I'm growing into, I suspect it works the same way.",
		"The slowest things in the forest are the ones still standing after everything fast has gone.",
	},
	["cls.druid.muse.w07.002"] = {
		"A fallen trunk feeds more life lying down than it ever did standing. I find that a comfort, on the days I think about my own end.",
		"Moss, beetles, mushrooms: a dead tree goes on feeding the wood for years. Ending is not the same as stopping.",
	},
	["cls.druid.muse.w07.003"] = {
		"People ask where my boots go when I become a bear. I've stopped answering, mostly because I don't know either.",
		"Every shape gives me back with my pack still on and my boots still laced. I've decided not to ask how. The wild dislikes questions about its tailoring.",
	},
	["cls.druid.muse.w07.004"] = {
		"Balance isn't standing still. It's a wading bird on one leg in a current: a hundred small corrections no one sees.",
		"People picture balance as calm. It's more like crossing fast water on a fallen log: you're never done adjusting.",
		"Nothing in the wild is ever balanced for long. It tips, and catches itself, and tips the other way. That catching is the whole art.",
	},
	["cls.druid.muse.w07.005"] = {
		"Wherever I stand, Moonglade is one spell away. No road is quite so long with a door like that in my pocket.",
		"I could be in Moonglade before this thought finishes. Most days it's enough to know it, and I stay where I'm needed.",
		"Every druid carries the same way out, folded small. I rarely use it. Knowing it's there makes the long roads lighter.",
	},
	["cls.druid.muse.w07.006"] = {
		"In Moonglade nobody asks where you've come from. They ask what you've been listening to.",
		"The first question in Moonglade is never your name. It's what the land has been telling you lately, and they wait for a real answer.",
	},
	["cls.druid.muse.w07.007"] = {
		"The Cenarion Circle has no walls and no throne. It's a promise made by a great many stubborn people to keep showing up.",
		"What holds the Cenarion Circle together isn't rank. It's the shared habit of kneeling down to look at things closely.",
		"No banner, no capital, no king. The Cenarion Circle is held together by druids who simply refuse to stop caring.",
	},
	["cls.druid.muse.w07.008"] = {
		"The old druids say some of our eldest sleep for years at a stretch, walking the Dream. I can't decide whether that's the greatest devotion or the longest nap.",
		"Some druids, the elders say, lie asleep for whole years while they wander the Dream. I hope someone opens a window for them now and then.",
	},
	["cls.druid.muse.w07.009"] = {
		"Lately the elders speak of the Dream in lower voices. Something has crept into it, they say, and they won't name it aloud.",
		"There's talk in the Cenarion Circle that the Dream is not as green as it was. Nobody says more, which is how I know it's true.",
	},
	["cls.druid.muse.w07.010"] = {
		"The old druids say the one who founded us is still out there, asleep and listening. I try to do the work as if he might check it.",
		"Malfurion founded us, the elders say, and then went where we can't follow. Teachers who vanish leave the most careful students.",
	},
	["cls.druid.muse.w07.011"] = {
		"The first of us learned from Cenarius himself, so the stories go. Every druid since has been learning from someone who learned from him.",
		"Teacher to teacher to teacher, back to the forest lord. The lesson has passed through so many hands, and it still fits in one breath: listen first.",
	},
	["cls.druid.muse.w07.012"] = {
		"The bear's hunger stays with me a while after I shed it. I've learned not to go to market straight after a fight.",
		"Coming out of the bear, I always want honey and a long sleep. I allow myself one of the two.",
		"The bear leaves, but its appetite lingers like a guest who missed the hint. Whole loaves have vanished that way.",
	},
	["cls.druid.muse.w07.013"] = {
		"Under water, in the seal's shape, sound comes from everywhere at once. On land afterward, the world feels oddly lopsided.",
		"The seal never worries about breath. Every time I let it go, my lungs remember all at once that they have a job.",
	},
	["cls.druid.muse.w07.014"] = {
		"The cat notices everything and cares about almost none of it. A useful teacher, if a rude one.",
		"In the cat's shape I see three things at once: what moves, what hides, and what's about to make a mistake.",
		"The cat taught me to sit through a whole commotion without blinking, then act on the one detail that mattered.",
	},
	["cls.druid.muse.w07.015"] = {
		"Prowling teaches me how much noise I make the rest of the time. Two legs are clumsy things.",
		"On soft pads, the forest floor turns into a map of what not to step on. In boots, I trample the whole page.",
	},
	["cls.druid.muse.w07.016"] = {
		"At full speed, on four legs, I stop being a visitor in the land and become something it's used to seeing.",
		"Running in the swift shape, I don't cross the land so much as join it for a while.",
	},
	["cls.druid.muse.w07.017"] = {
		"Some seeds only open after a fire. I remind myself of that when a season goes badly.",
		"The cones that need flames before they'll open have it right: sometimes the worst heat is the only key.",
		"A burned slope is green again before anyone expects it. The wild never once asked permission to begin over.",
	},
	["cls.druid.muse.w07.018"] = {
		"Rot is the forest's generosity. Everything it ever had, given to the soil, nothing held back.",
		"People wrinkle their noses at a heap of dead leaves. I see a feast laid out for next spring.",
	},
	["cls.druid.muse.w07.019"] = {
		"When my time comes, I'd like to be laid somewhere a tree can find me. It seems the least I can do, after all the leaning on them.",
		"Bury me without a box. I've borrowed from the soil all my life; it should get the chance to collect.",
	},
	["cls.druid.muse.w07.020"] = {
		"The forest would carry on perfectly well without me. Tending it isn't a favor I do it; it's a privilege it allows.",
		"I'm not the forest's guardian. I'm one of its guests, who happens to sweep the floor.",
		"The wild doesn't need me. It lets me help, which is a different thing, and a kinder one.",
	},
	["cls.druid.muse.w07.021"] = {
		"Every herb I know, I learned twice: once for what it heals, once for what it does if you get the dose wrong.",
		"The humblest weeds by a road have kept more people alive than any blade. Nobody sings about them.",
	},
	["cls.druid.muse.w07.022"] = {
		"Half a druid's work is deciding not to act. The other half is living with the times that was the wrong choice.",
		"Sometimes the balance asks me to let the wolf eat. I do. I don't have to like it.",
		"The hardest thing I've learned is to stand back while something suffers, because stepping in would cost the wild more.",
	},
	["cls.druid.muse.w07.023"] = {
		"I feel the turn of a season in my joints before I see it in the leaves. The wild has written itself into me.",
		"Long before the first leaf yellows, something in me starts slowing down, getting ready. I've stopped arguing with it.",
	},
	["cls.druid.muse.w07.024"] = {
		"An owl can sit an hour on one branch and miss nothing. I've tried. I miss a great deal, and my leg falls asleep.",
		"Hawks hang on the air for as long as it takes. I last until my stomach starts negotiating.",
	},
	["cls.druid.muse.w07.025"] = {
		"Leather and wood, nothing that clanks. The wild hears metal coming a mile off and decides it has somewhere else to be.",
		"Soft leather, a plain staff. Everything I carry could rot into the ground one day, and that pleases me.",
	},
	["cls.druid.muse.w07.026"] = {
		"Cities are forests of a kind, only everything in them is in a hurry, and nothing is allowed to rot in peace.",
		"In a city I count the trees the way a sailor counts stars: to know I haven't drifted too far.",
	},
	["cls.druid.muse.w07.027"] = {
		"Calling roots out of the ground is borrowing. They go back down tired, and I owe them a quiet season.",
		"Roots will grip whatever I ask them to. That's exactly why I'm careful what I ask.",
	},
	["cls.druid.muse.w07.028"] = {
		"Putting a beast to sleep is a mercy and a trick at once. I'm never sure which one it remembers when it wakes.",
		"A beast lulled to sleep dreams of something. I hope it's grass, and not me.",
	},
	["cls.druid.muse.w07.029"] = {
		"Calming a frightened animal takes the same voice as calming a frightened person. People just take longer to admit it worked.",
		"Soothing a beast is mostly being less frightening than whatever frightened it. Most days I manage.",
	},
	["cls.druid.muse.w07.030"] = {
		"Strength hoarded goes stale like still water. Passing mine to someone who has run dry is the most natural thing I know.",
		"The wild never meant its strength to pool in one place. When I pass mine to someone else, it's only water finding its way downhill.",
	},
	["cls.druid.muse.w07.031"] = {
		"Under the Barrens, the elders say, druids once tried to dream a dry land green and woke as something else. I measure every ambition of mine against them.",
		"The elders tell of druids who wanted to mend too much at once, and were swallowed by their own dreaming. I keep my hopes the size of a garden.",
	},
	["cls.druid.muse.w07.032"] = {
		"The elders speak of Felwood the way healers speak of plague: quietly, and with their hands busy.",
		"Felwood, they say, was green once, all the way down to the roots. I think of it whenever I'm tempted to call a wound too deep to tend.",
	},
	["cls.druid.muse.w07.033"] = {
		"The green dragons guard the Dream, the stories say. I like to think they'd know a druid in a crowd. More likely we all just smell of moss to them.",
		"Somewhere above all of us, the stories say, green dragons keep watch over the Dream. I hope they're kinder to sleepers than the stories make them sound.",
	},
	["cls.druid.muse.w07.034"] = {
		"Since I took this path, my dreams have grown greener and quieter. I can't tell whether that's the Dream or just honest tiredness.",
		"Some mornings I wake with the smell of a forest I've never walked in. The elders only smile when I mention it.",
	},
	["cls.druid.muse.w07.035"] = {
		"Each shape I learn takes a small piece of my old certainty about where I end. I miss it less than I expected.",
		"With every new shape, the line between me and the beast gets a little blurrier. Somehow I feel more like myself, not less.",
	},
	["cls.druid.muse.w07.036"] = {
		"The bear isn't angry, whatever people think. It has simply run out of patience.",
		"People think the bear is rage. It isn't. It's weight, put exactly where it's needed.",
		"There's no fury in the bear, only certainty. It decided long ago what it would and wouldn't put up with.",
	},
	["cls.druid.muse.w07.037"] = {
		"Mushrooms are the forest's quiet bargain: they eat what died, feed what lives, and ask for nothing but shade.",
		"In every wood, mushrooms are quietly taking apart last year's leaves and expecting no thanks. The best workers in the wild have no faces.",
	},
	["cls.druid.muse.w07.038"] = {
		"The Cenarion Circle keeps a hold at the edge of Silithus, the elders say, where the sand is trying to eat everything green. Someone has to sit at that edge and say no.",
		"Out in Silithus, I'm told, druids of the Cenarion Circle hold a line against the desert itself. It sounds hopeless. It's also exactly what we're for.",
	},
	["cls.druid.muse.w07.039"] = {
		"I'm rarely lonely out here. Being among things that don't talk is a different matter entirely.",
		"People call it solitude when I go a week without speaking. The forest was chattering the whole time; I simply had nothing to add.",
	},
	["cls.druid.muse.w07.040"] = {
		"When I find a grove cut for no reason, the bear in me wakes before I've decided anything. I let it pace. I don't always let it out.",
		"Careless axes make my hands itch for claws. Most days I've learned to breathe until the itch passes.",
	},
	["cls.druid.muse.w07.041"] = {
		"Water never fights a stone. It just keeps going, and in a few thousand years the stone has changed its mind.",
		"A stream wins every argument with a rock eventually. It simply never stops making its point.",
	},
	["cls.druid.muse.w07.042"] = {
		"Two peoples learned this craft from the same teacher, the stories say, and neither of them got the lesson wrong. That ought to mean more than it does.",
		"Hoof or bare foot, the same teacher showed us the way, so the elders say. The forest never cared which of us was listening.",
	},
	["cls.druid.muse.w07.043"] = {
		"They say Remulos has never once hurried. Nothing in Moonglade seems to wilt, either. I doubt that's a coincidence.",
		"Remulos tends Moonglade without haste, the druids say, and it flourishes. I keep trying to learn that trick in places that aren't Moonglade.",
	},
	["cls.druid.muse.w07.044"] = {
		"Since the bear, I trust my nose more than my eyes. Eyes can be fooled by a shadow; a smell is a confession.",
		"My eyes see what's there. My nose tells me what happened. The shapes taught me to ask the nose first.",
	},
	["cls.druid.muse.w07.045"] = {
		"Winter isn't death. It's the land holding its breath and counting what it still has.",
		"Bare branches only look dead to people in a hurry. Look closer, and every one of them is keeping a promise to spring.",
	},
	["cls.druid.muse.w07.046"] = {
		"The power I use isn't mine. It passes through me the way water passes through a root, and I try not to clog it with pride.",
		"I don't make anything grow. I only get out of the way of what wanted to.",
		"Whatever answers when I call, I'm only its channel. A blocked channel helps no one, so I keep mine clear.",
	},
	["cls.druid.muse.w07.047"] = {
		"Some days the beast sits closer to the surface than I'd like. I wear my own face carefully on those days.",
		"There are mornings I wake wanting to growl at the light. I wash my face, wait, and find my manners again.",
	},
	["cls.druid.muse.w07.048"] = {
		"Grief, the wild teaches, is short and practical. A doe mourns, and then she eats.",
		"Animals grieve, whatever people think. They just don't stop living to do it.",
	},
	["cls.druid.muse.w07.049"] = {
		"I've never understood people who fear the dark of a forest. It's the most crowded place in the world, if you count everything awake in it.",
		"A dark wood is full, not empty. Fear comes from thinking you're the only one there.",
	},
	["cls.druid.muse.w07.050"] = {
		"Every time I call on the wild, I feel the land lean in a little, curious. I try to be worth its attention.",
		"The wild's power doesn't come when I order it. It comes when I've been honest about what I need.",
	},
	["cls.druid.muse.w07.051"] = {
		"Roads are the shortest way between two towns and the longest way to understand the land between them.",
		"I leave the road whenever I can. The land between the milestones is where everything actually lives.",
	},
	["cls.druid.muse.w07.052"] = {
		"A druid who can't bear to see anything die should find another calling. The wild is a long, patient argument between eating and being eaten.",
		"Tending the wild means tending its deaths too. Nobody warns you about that part at the start.",
	},
	["cls.druid.muse.w07.053"] = {
		"When I harden my skin to bark, something of the tree's temper comes with it: slow, unbothered, very hard to hurry.",
		"With bark for skin, even a blow feels like bad weather: something to stand through.",
	},
	["cls.druid.muse.w07.054"] = {
		"The great bear's shape fits me better each year. I'm not sure whether I'm growing into it or it into me.",
		"The bigger the bear I become, the gentler I have to be with doorframes, and with everyone.",
	},
	["cls.druid.muse.w07.055"] = {
		"Calling a storm down on my enemies is the least gentle thing I do, and the most honest. The wild has tempers too.",
		"When I pull the wind into a gale, I always feel it pulling back, testing whether I deserve to hold it.",
	},
	["cls.druid.muse.w07.056"] = {
		"Drawing poison out of a wound is like pulling a weed: get the whole root, or it grows back meaner.",
		"A curse clings like bindweed. I unwind it slowly, from the end where it started, or it only tightens.",
	},
	["cls.druid.muse.w07.057"] = {
		"Druids don't own land. We're more like the land's old friends who keep turning up with soup.",
		"Nobody owns a forest. At best you're the neighbor it tolerates, the one who mends the fences and asks for little.",
	},
	["cls.druid.muse.w07.058"] = {
		"I've stopped thinking of years as a line. They're a wheel, and every time it comes round I know the spokes a little better.",
		"Spring, harvest, the cold, spring again. Every turn of the wheel I meet the same seasons as a slightly different person.",
	},
	["cls.druid.muse.w07.059"] = {
		"Hunger I can forgive in anyone. A kill taken for a trophy and left to spoil is something else, and the wild remembers it longer than I do.",
		"Kill to eat, and the wild shrugs. Kill to boast and leave the rest to rot, and something in the land goes cold toward you.",
	},
	["cls.druid.muse.w07.060"] = {
		"I trust anyone a dog trusts, and doubt anyone a horse shies from. Beasts have been reading people far longer than I have.",
		"When the animals around someone go quiet and watchful, I go quiet and watchful too. They've rarely been wrong.",
	},
	["cls.druid.muse.w07.061"] = {
		"A shape isn't a costume. Each one has its own opinions, and I have to listen to them for as long as I wear it.",
		"People think I put the bear on like a coat. It's more like inviting a guest with strong views on how to sit.",
	},
	["cls.druid.muse.w07.062"] = {
		"I'd rather tend than fight. But a gardener who never pulls a weed doesn't keep a garden for long.",
		"Mending and fighting are the same work from opposite ends. Both decide what gets to keep growing.",
	},
	["cls.druid.muse.w07.063"] = {
		"Every spring of water I find, I clear a little. A handful of leaves, a fallen stick. It's the smallest kind of devotion I know.",
		"I can't pass a choked stream without freeing it a little. It isn't duty. It's like brushing a leaf from a friend's hair.",
	},
	["cls.druid.muse.w07.064"] = {
		"No, I won't turn you into a squirrel. Not even for a minute. Ask someone with fewer principles.",
		"I can't make you a bear. Some mornings I can barely manage it myself before breakfast.",
	},
	["cls.druid.muse.w07.065"] = {
		"Yes, I talk to plants. No, they don't answer. They do listen better than most people, though.",
		"Talking to trees isn't madness. Expecting them to hurry, that's madness.",
	},
	["cls.druid.muse.w07.066"] = {
		"Take only what you'll use. The wild keeps count, even if it never sends the bill.",
		"Kill what you'll eat, pick what you'll need. Take more, and the land starts quietly keeping a list.",
	},
	["cls.druid.muse.w07.067"] = {
		"My staff is only a branch that agreed to come along.",
		"This staff was a branch once. It still sulks a little when I lean on it too hard.",
	},
	["cls.druid.muse.w07.068"] = {
		"Every creature you meet out here is somebody's dinner or somebody's mother. Usually both.",
		"Nothing in the wild is only a monster. It's a mouth to feed and a den to guard, same as anything.",
	},
	["cls.druid.muse.w07.069"] = {
		"Want to know if a place is healthy? Listen. A sick wood is a quiet wood.",
		"Count the birdsong before you count the trees. Where the singing stops, something's wrong.",
	},
	["cls.druid.muse.w07.070"] = {
		"Patience isn't waiting. It's working at the speed of whatever you're working with.",
		"You can't hurry a tree, a wound or a druid. All three are listening to something slower than you.",
	},
	["cls.druid.muse.w07.071"] = {
		"The worst part of bear shape? Every hunter for a mile wondering what I'd fetch at market.",
		"Take a bear's shape near a hunting camp just once, and you'll learn to wave before you change.",
	},
	["cls.druid.muse.w07.072"] = {
		"Take something from the land, give something back: a seed, a cleared spring, a stone moved off a sprout. The old druids called it keeping the accounts.",
		"Whatever you take from the wild, pay a little back before you sleep. The old druids called that keeping the accounts, and they never ran short.",
	},
	["cls.druid.muse.w07.073"] = {
		"People expect druids to smell of flowers. Mostly we smell of wet dog and pine sap.",
		"I'm told I smell of moss. I've decided to take it as a compliment.",
	},
	["cls.druid.muse.w07.074"] = {
		"Step around the moss when you can. It grows a finger's width in a year and never complains.",
		"Mind the moss. It took years to get that far, and you'll cross it in two steps.",
	},
	["cls.druid.muse.w07.075"] = {
		"crouches, takes a pinch of earth between two fingers and smells it, the way a merchant tests a coin.",
		"rubs a little soil between {g:his|her} fingertips and studies it thoughtfully, as though it had answered a question.",
	},
	["cls.druid.muse.w07.076"] = {
		"picks a leaf out of {g:his|her} hair, studies it, and tucks it into a pouch instead of throwing it away.",
		"finds a twig caught in {g:his|her} collar and, rather than flick it off, plants it upright in the nearest patch of soil.",
	},
	["cls.druid.muse.w07.077"] = {
		"hums low in the throat, a sound closer to a drowsing animal than to a tune.",
		"lets a slow breath out through the nose that ends, faintly, in something like a growl, and then looks mildly embarrassed.",
	},
	["cls.druid.muse.w07.078"] = {
		"turns a seed over in {g:his|her} palm for a long moment before putting it carefully away.",
		"presses a seed into the earth with one thumb, covers it, and walks on without looking back.",
	},
	["cls.druid.muse.w07.079"] = {
		"shakes out {g:his|her} arms and neck, like someone shrugging off a heavier coat than the one {g:he|she} is wearing.",
		"rolls {g:his|her} shoulders and stretches {g:his|her} back in a long, almost animal arch.",
	},
	["cls.druid.muse.w07.080"] = {
		"watches a beetle cross the path and steps carefully over it, without breaking stride.",
		"pauses to let a column of ants go by, with the patience of someone waiting on a royal procession.",
	},
	["cls.druid.muse.w07.081"] = {
		"leans on {g:his|her} staff and closes {g:his|her} eyes for a few breaths, as though listening to the ground through the wood.",
		"plants the foot of {g:his|her} staff in the ground and rests both hands on it, waiting for nothing in particular.",
	},
	["cls.druid.muse.w07.082"] = {
		"brushes a hand along whatever grows beside the path while walking, the way one might trail fingers in water.",
		"walks a while with one hand open at {g:his|her} side, fingertips grazing leaf and stem as if greeting them in passing.",
	},
	["cls.druid.muse.w07.083"] = {
		"absently scratches behind one ear with a crooked finger, then catches {g:himself|herself} at it.",
		"yawns hugely, showing rather more teeth than seems polite, then glances around to see if anyone noticed.",
	},
	["cls.druid.muse.w07.084"] = {
		"sits cross-legged for a while, palms resting on the ground, breathing slowly until breath and land seem to find the same pace.",
		"kneels and lays both palms on the earth, eyes closed, as though listening for a heartbeat far below.",
	},
	["cls.druid.muse.w07.085"] = {
		"The spell to Moonglade always leaves me a little dizzy, as if the world had been folded and I'd been caught in the crease.",
		"Arriving in Moonglade by spell, I always take one step to check the ground is real. It always is, and it always feels like a gift.",
	},
	["cls.druid.muse.w07.086"] = {
		"Druids make terrible gardeners. We keep letting things grow wherever they like.",
		"Ask a druid to tidy a garden and you'll get it back wilder, healthier, and much harder to walk through.",
	},
	["cls.druid.muse.w07.087"] = {
		"Under a roof I sleep lightly and wake stiff. With soil under my back I sleep like a root.",
		"Give me a soft bed and I'll lie awake counting the walls. Give me moss and I'm gone before I finish the thought.",
	},
	["cls.druid.pray.w07.001"] = {
		"Cenarius, Lord of the Forest: give me the patience of the oak, and the sense to know when to be the wolf instead.",
		"Forest Lord, if you hear the small voices: keep the balance in me, and let me tend more than I tear.",
	},
	["cls.druid.quest_complete.w07.001"] = {
		"That's settled. The reward is fine, but the real pay is a corner of the world sitting a little straighter.",
		"Paid, and fairly. Still, the part I'll keep is the feeling of one thing put right.",
		"The purse is welcome. The quiet afterward, when something's been set right, is worth more.",
	},
	["cls.druid.quest_complete.w07.002"] = {
		"There. If anything else in these parts needs tending, send word.",
		"All done. Call on me again, if the wild around here needs a hand.",
		"Finished. There's always a tree near me, if you need me again.",
	},
	["cls.druid.quest_complete.w07.003"] = {
		"accepts the reward with a short nod and puts it away uncounted, eyes already on the horizon.",
		"pockets the payment without a glance and spends longer brushing the dust of the road from {g:his|her} sleeves.",
	},
	["cls.druid.quest_complete.w07.004"] = {
		"Whatever they gave me, I'd have traded it for a promise to leave one old tree standing.",
		"Coin is useful. A promise that someone will leave the hedgerows alone would be more useful, but it's never on offer.",
	},
	["cls.druid.quest_complete.w07.005"] = {
		"Another task off my shoulders. I'll walk a while off the road before taking on the next, and let the ground settle me.",
		"Finished, and lighter for it. Before anything else, a quiet hour somewhere green.",
		"That's off my back. I'll sit a while away from the road and let my breathing slow to the land's pace.",
	},
	["cls.druid.quest_complete.w07.006"] = {
		"I did what was asked. Whether the land needed it done is a question I'll keep turning over for a while.",
		"It's finished, and they're pleased. The wild may have its own opinion; it usually takes a season to give it.",
		"They thanked me warmly. I'll wait for the land's thanks, which come slower and never in words.",
	},
	["cls.druid.quest_complete.w07.007"] = {
		"My pleasure. Keep an eye on the land around you; it'll tell you something's wrong before anyone else does.",
		"Glad to. Next time, watch the animals: they'll warn you before trouble arrives.",
	},
	["cls.druid.quest_complete.w07.008"] = {
		"lingers after the exchange, crouching to pull a stray weed from the edge of the path before moving on.",
		"finishes the business in few words and wipes {g:his|her} hands on a tuft of grass, as though the task had left something on them.",
	},
	["cls.druid.quest_complete.w07.009"] = {
		"Plenty of these tasks are paid in lives, one way or another. I hope this one bought more than it cost.",
		"If blood went into finishing it, I want it to have been worth it. That's the only kind of accounting I trust.",
	},
	["cls.druid.quest_complete.w07.010"] = {
		"Finished, and nobody got turned into anything. I call that a good day's work.",
		"All squared away, and I never once had to sprout claws. Remarkable.",
		"Wrapped up, and not one shape changed in anger. The bear will be disappointed.",
	},
	["cls.druid.quest_complete.w07.011"] = {
		"A small task for a small trouble. The wild is made almost entirely of small things, and they add up.",
		"Nothing grand. But a forest is only ten thousand small things standing together.",
	},
	["cls.druid.quest_complete.w07.012"] = {
		"However long that took, it took the time it needed. Ask any oak what it thinks of deadlines.",
		"Finished at its own pace, the only pace anything worth doing has ever kept.",
		"Quick or slow, it's finished properly. That's the only speed that counts.",
	},
	["cls.druid.quest_complete.w07.013"] = {
		"Want to thank me? Plant something, anything, and let it grow. That's payment enough.",
		"No need for speeches. Put a seed in the ground before the season turns, and we're even.",
	},
	["cls.druid.quest_complete.w07.014"] = {
		"sniffs the payment curiously before putting it away, an old habit that earns {g:him|her} a puzzled look.",
		"accepts the reward, then absent-mindedly tests it with {g:his|her} teeth, the way a creature tests anything new.",
	},
	["cls.druid.quest_complete.w07.015"] = {
		"The deer don't know any of this happened. That's the best measure I have: the wild carrying on, undisturbed.",
		"Out there a fox is going about its day, never knowing what was settled here. And so it should be.",
	},
	["cls.druid.quest_complete.w07.016"] = {
		"Another promise kept. A druid's word should be as slow to break as a root.",
		"Said I'd see it through, and I did. Roots don't let go halfway either.",
		"I gave my word, and now it's kept. That matters more to me than whatever was in the purse.",
	},
	["cls.druid.quest_complete.w07.017"] = {
		"Good! One less worry for these folk, and one more reason to walk on smiling.",
		"There we are. Everyone's a little happier, even the crows, probably.",
		"Wonderful. I do love an ending where nothing needs burying.",
	},
	["cls.druid.quest_complete.w07.018"] = {
		"If they paid me to thin the beasts, I'll have to check later that I didn't thin them too far. The balance doesn't grade on intention.",
		"Paid to cull, perhaps, or to fetch, or to fight. Whatever it was, I'll keep an eye on what grows back in its place.",
	},
	["cls.druid.quest_complete.w07.019"] = {
		"inclines {g:his|her} head to the one who asked, with the slow courtesy of someone used to the pace of trees.",
		"gives a grave little bow, better suited to a glade than a counter, and takes {g:his|her} leave.",
	},
	["cls.druid.quest_complete.w07.020"] = {
		"People ask for help with the troubles they can see. For the quieter sickness in the land, nobody ever posts a notice.",
		"Done, and gladly. But the troubles that most need a druid never come with a reward attached.",
	},
	["cls.druid.quest_complete.w07.021"] = {
		"Settled. Give the land around here a few quiet days, and it'll mend the rest itself.",
		"That's my part. The rest belongs to time and the soil, and they're better at it than I am.",
		"Done on my side. Roots and patience will handle the rest.",
	},
	["cls.druid.quest_complete.w07.022"] = {
		"Somehow a task never feels finished until I've stood among living things for a while afterward.",
		"The thanks of whoever asked close the bargain. A few minutes with my palms on the earth close the task.",
	},
	["cls.druid.quest_complete.w07.023"] = {
		"lets a long breath out through the nose, and the strain of the task drains away like water into sand.",
		"stretches slowly, from fingertips to heels, the way an animal stretches after a long wait.",
		"rolls {g:his|her} neck slowly until something gives with a soft crack, and some of the stiffness of the task goes with it.",
	},
	["cls.druid.quest_complete.w07.024"] = {
		"Another reward I'll probably spend on seeds. The merchants must think I farm in very strange clothes.",
		"I'll spend this on something sensible, like seeds, and something foolish, like a hot meal I could have foraged.",
	},
	["cls.druid.quest_complete.w07.025"] = {
		"The Cenarion Circle would call this a small kindness and expect a dozen more by the season's end. They'd be right to.",
		"One more thing I could tell the elders in Moonglade, if they ever asked. They won't. They'd only nod, and expect the next.",
	},
	["cls.druid.quest_complete.w07.026"] = {
		"They call it a fair price. The soil will decide that, a few seasons from now.",
		"Fair pay, they say. I'll judge by how the hillside looks next spring.",
	},
	["cls.druid.quest_complete.w07.027"] = {
		"It's done. Go easy on the land here, and it'll go easy on you.",
		"Finished. Be gentle with what grows around you; it remembers.",
	},
	["cls.druid.quest_progress.w07.001"] = {
		"Not finished, but moving. Like sap early in spring: you can't see it, but it's climbing.",
		"Some of the way there. I'll take the rest at the land's pace, not the giver's.",
		"A little further along. Trees grow by inches, and nobody calls them slow.",
	},
	["cls.druid.quest_progress.w07.002"] = {
		"pauses, takes stock of what remains, and sets off again at the unhurried, steady pace of a traveling animal.",
		"tucks away what has been gathered so far, sniffs the air as if for direction, and moves on.",
		"glances back over the ground already covered, then turns to the rest of it without a word.",
	},
	["cls.druid.quest_progress.w07.003"] = {
		"That's all of it. Ready to hand over, like a basket full at the end of foraging.",
		"Everything they wanted, gathered. I'll go to them by way of the trees, if there are any.",
		"Full harvest. Time to set it down at the right door.",
	},
	["cls.druid.reputation_change.w07.001"] = {
		"They're warming to me, slowly, the way a tree warms in spring. Good things grow at that pace or not at all.",
		"A little more trust from them. I'll tend it the way I'd tend a seedling: carefully, and without staring at it.",
		"My name is taking root here. Roots make no noise, but they hold.",
	},
	["cls.druid.rez.w07.001"] = {
		"The cycle had me for a moment and handed me back. Apparently I'm not ready to feed the meadow yet.",
		"Dead, and then not. Every druid preaches the cycle; few get to complain about it from both sides.",
	},
	["cls.druid.rezother.w07.001"] = {
		"Up! The fight's not finished, and neither are you.",
		"Breathe. Get up. We're not done here.",
	},
	["cls.druid.rezother.w07.002"] = {
		"In the middle of all this, a life pulled back from the soil. The wild will want something for that, someday.",
		"Death had already started its work. I asked it to give this one back, and for once it did.",
	},
	["cls.druid.thanks.w07.001"] = {
		"Thank you. Kindness sinks in like water into dry soil; I won't forget it soon.",
		"My thanks. I'll pass it on to something that grows, as the wild would.",
	},
	["cls.druid.thanks.w07.002"] = {
		"Thanks. If you ever need a bear, you know where to find one.",
		"Much obliged. Should anything ever need mending, or mauling, call on me.",
	},
	["cls.druid.threat.w07.001"] = {
		"Back away slowly. That's what the wise animals do.",
		"The deer know when to leave. Be as wise as a deer.",
		"Every creature here knows when to turn around. Join them.",
	},
	["cls.druid.threat.w07.002"] = {
		"I make thornbushes thrive in sand. You'd be a much easier project.",
		"I spend my days persuading plants to grow. Imagine what I could persuade you to do.",
		"Making things grow is my trade. Making them stop is the other half of it.",
	},
	["cls.druid.threat.w07.003"] = {
		"I'd return you to the soil without a grudge. That should frighten you more than anger.",
		"I won't hate you for it. I'll simply let the soil have you. Think about that.",
		"No anger, no grudge. Just the soil, waiting. Walk away.",
	},
	["cls.druid.threat.w07.004"] = {
		"goes still and holds the other's gaze without blinking, the way a wild thing does before it decides.",
		"lets the silence stretch until it has said everything that needs saying.",
		"watches the other without a word, patient as a stone, and just as hard to move.",
	},
	["cls.druid.threat.w07.005"] = {
		"I can wait here until moss grows over us both. Can you?",
		"Trees taught me how to wait. Shall I show you how long?",
	},
	["cls.druid.victory.w07.001"] = {
		"The beetles and the worms will see to the rest. Nothing goes to waste.",
		"Back to the soil with you. Something small and green will thank you for it.",
		"Lie there. By next spring you'll be part of something better.",
	},
	["cls.druid.victory.w07.002"] = {
		"Let the heart slow down. It doesn't have to hunt anymore.",
		"Breathe it out. The fight is over; the body hasn't heard yet.",
		"Easy now. Tell the blood it can stop racing.",
	},
	["cls.druid.victory.w07.003"] = {
		"You fought for your life. There's no shame in that, and no shame in losing it.",
		"You held your ground as long as you could. The wild asks nothing more of anyone.",
		"You fought hard for every breath. That's all any living thing can do.",
	},
	["cls.druid.victory.w07.004"] = {
		"I'll apologize to the shrubbery later. It saw everything.",
		"Sorry about the flowers. They were in the way, mostly of me.",
		"A few ferns got trampled in that. I'll hear about it from someone.",
	},
	["cls.druid.victory.w07.005"] = {
		"lets out a long breath, and the wildness ebbs from {g:his|her} stance like water leaving sand.",
		"stands a moment in the sudden quiet, until {g:his|her} breathing matches the slower pace of the world.",
		"rolls {g:his|her} shoulders once, and the last of the fight drains away.",
	},
	["cls.druid.victory.w07.006"] = {
		"Cuts, scrapes, one bruise worth mentioning. Brambles have done worse.",
		"Nothing a little mending won't fix. Let's look at the damage.",
	},
	["cls.druid.victory.w07.007"] = {
		"The balance tips back, a hair's breadth. That's all a single fight can do.",
		"A little more even than before. The scale never sits perfectly still; it only sways less.",
		"Even again, or near enough. The wild never asks for perfect.",
	},
	["cls.druid.victory.w07.008"] = {
		"Rest now. You were only defending your ground, same as I'd have done.",
		"Sleep. That was hunger, not cruelty. I know the difference.",
		"Go easy into the dark. You did nothing your kind doesn't do.",
	},
	["cls.druid.victory.w07.009"] = {
		"Back in the ground with you, and stay this time. The roots will see to it.",
		"There. Rest the way you should have the first time.",
		"The earth took you once. Let it keep you this time.",
	},
	["cls.druid.victory.w07.010"] = {
		"Even the worms will think twice about you. The soil will manage, given time.",
		"Done. It'll take a while to get that stink out of the air.",
	},
	["cls.druid.victory.w07.011"] = {
		"Back to stone and water and wind. Quiet now. You're where you belong.",
		"The world you were torn from takes you back. There's no kinder end for you.",
	},
	["cls.druid.victory.w07.012"] = {
		"Moss will have you inside a year. Rust in two. The forest doesn't hurry, but it finishes.",
		"Lie there and reconsider. The ivy will be along shortly.",
	},
	["cls.druid.victory.w07.013"] = {
		"You chose this. The boar never gets to choose, at least.",
		"A beast fights because it must. You had a choice. I'll mourn you less for it.",
		"The wolf has no choice in it. You did, and you chose badly.",
	},
	["cls.druid.victory.w07.014"] = {
		"Everyone in one piece? Show me the cuts, I'll see to them.",
		"Line up, wounded first. Nobody walks off bleeding.",
		"Good work. Now let me look at whoever's limping.",
	},
	["cls.druid.victory.w07.015"] = {
		"Not bad at all. The wild would have been proud of a pack like this.",
		"We hunted like a pack. I could get used to this.",
	},
	["cls.druid.victory.w07.016"] = {
		"No one saw that but the ground, and the ground keeps no gossip.",
		"Alone, and on my feet. The wild likes it that way, mostly.",
		"Just me and the quiet again. Suits me.",
	},
	["cls.druid.victory.w07.017"] = {
		"I should stop making that low rumbling noise after fights. People stare.",
		"After a fight I keep forgetting which shape I'm in. Innkeepers are always happy to remind me.",
	},
	["cls.druid.victory.w07.018"] = {
		"Whatever grows near here is a little safer now. That's enough for one fight.",
		"One less danger for the young and green. That's reward enough.",
	},
	["cls.druid.victory.w07.019"] = {
		"stays beside the defeated foe a little longer than needed, head bowed, before moving on.",
		"looks down at the fallen for a long breath, without triumph, and then away.",
	},
	["cls.druid.victory.w07.020"] = {
		"Something in the wild noticed that. I hope its judgment was fair.",
		"The forest keeps its own ledger. I wonder which column that one went in.",
		"Did I tip the balance or set it right? I'll never know for certain.",
	},
	["cls.druid.victory.w07.021"] = {
		"Ha! The old oaks would have nodded at that one.",
		"That's how the wild settles an argument. Short, and nobody appeals.",
	},
	["cls.druid.victory.w07.022"] = {
		"First move too slow. Next time, less waiting and more deciding.",
		"There was a lesson in that. The wild teaches cheaply, if you pay attention.",
		"Note for next time: let the foe come to me. The ground favors the patient.",
	},
	["cls.druid.victory.w07.023"] = {
		"Return to the cycle. You owed it nothing more than this, and neither do I.",
		"Into the long cycle with you. It turns slowly, but it turns for everyone.",
	},
	["cls.druid.victory.w07.024"] = {
		"The wild was on my side today. I'll try to deserve it tomorrow.",
		"Today the green fought with me. I won't take that for granted.",
		"The green lent me its strength again. I owe it a quiet day.",
	},
	["cls.druid.victory.w07.025"] = {
		"takes stock of the trampled ground, as if counting what the fight cost the land.",
		"glances over the torn earth around the fight and frowns, as at a garden after a stampede.",
	},
	["cls.druid.victory.w07.026"] = {
		"One day it'll be me lying still, and something will feed on it. Fair enough. Just not yet.",
		"The same cycle will come for me in the end. I don't resent it. I'd only like a few more seasons first.",
		"I'll be fodder for the grass too, one day. I'd just rather it were a long way off.",
	},
	["cls.druid.victory.w07.027"] = {
		"The squirrels will be talking about this for weeks.",
		"There's a crow up there already telling its friends.",
	},
	["cls.druid.victory.w07.028"] = {
		"Right. Anyone else? No? Good. I'd like to sit down.",
		"Done. A patch of moss and a minute's sit, that's all I ask.",
		"Over. Somebody find me a stump to sit on.",
	},
	["cls.druid.victory.w07.029"] = {
		"The old druids say every death sends a ripple through the Dream. I wonder how far that one went.",
		"A ripple in the Dream, the elders would say. Small, and gone already.",
	},
	["cls.druid.victory.w07.030"] = {
		"That was close. The soil very nearly had both of us.",
		"Too near the roots for comfort. Next time, mend sooner.",
	},
	["cls.druid.victory.w07.031"] = {
		"Done. I didn't enjoy it, and I'd do it again.",
		"Necessary, not pleasant. Most of what a druid does is like that.",
		"No pride in it. No regret, either. The wild never apologizes, and I've stopped asking it to.",
	},
	["cls.druid.victory.w07.032"] = {
		"Listen. The birds are starting up again. That's how you know it's truly over.",
		"The small sounds are coming back: insects, a bird, the leaves. The wild has decided it's safe.",
	},
	["cls.druid.victory.w07.033"] = {
		"There's a seed that won't get trampled now. Small victories are still victories.",
		"One acorn saved, perhaps. I'll take it.",
	},
	["cls.druid.victory.w07.034"] = {
		"Whatever shape that fight took, it's me coming out the other side. Good.",
		"Hide or bare skin, it's still me who walks away. Check the wounds and go.",
	},
	["cls.druid.victory.w07.035"] = {
		"That one was far above me, and it's down. Patience beats strength more often than strength would like.",
		"Stronger than me, and lying there anyway. The slow way works.",
	},
	["cls.druid.victory.w07.036"] = {
		"The wild saw it all and said nothing. It never does. It only grows over.",
		"Trees don't cheer and they don't mourn. They just keep growing. I'll try that.",
		"The roots will take this up and make something of it, without comment.",
	},
	["cls.druid.victory.w07.037"] = {
		"Nature is cruel, they say. Nature just watched me do all the work.",
		"The wild takes the credit, of course. It always does.",
	},
	["cls.druid.victory.w07.038"] = {
		"turns {g:his|her} face to the open air and simply breathes for a while, letting the world come back.",
		"stands listening to the quiet that comes after, as one listens to a river settling after a flood.",
	},
	["cls.druid.victory.w07.039"] = {
		"One more thing returned to the green. I keep a count no one else keeps.",
		"This one goes back to the green too. I try to remember each of them, for a little while.",
	},
	["cls.druid.victory.w07.040"] = {
		"Up, dust off, keep walking. That's the whole of a druid's victory dance.",
		"No cheering. Just a nod to the land, and on.",
	},
	["cls.paladin.attack.w07.001"] = {
		"Judgement! Weighed, and struck.",
		"There's your verdict. Delivered in person.",
		"Judged. Short trial.",
	},
	["cls.paladin.attack.w07.002"] = {
		"Stay right there. That's an order from the Light.",
		"Hold still. Justice is heavier than it looks.",
		"Head spinning? Good. Think about your choices.",
	},
	["cls.paladin.attack.w07.003"] = {
		"Let go of this world. The Light is prying your fingers loose.",
		"Whatever keeps you walking, I'm cutting the strings.",
	},
	["cls.paladin.attack.w07.004"] = {
		"Burn in something cleaner than your own fire.",
		"This is how the Light says no to your kind.",
	},
	["cls.paladin.attack.w07.005"] = {
		"You're almost done. Let me finish the sentence.",
		"The last word goes to the hammer.",
	},
	["cls.paladin.attack.w07.006"] = {
		"Count the mana, watch the swing. The Light does the rest.",
		"Spend it where it counts. Every spell is borrowed warmth.",
		"One breath per cast. No more, no less.",
	},
	["cls.paladin.attack.w07.007"] = {
		"speaks a single hard word, and light leaps from {g:his|her} hand like a spark from struck steel.",
		"thrusts out a gauntleted fist, and a flare of gold answers it.",
	},
	["cls.paladin.attack.w07.008"] = {
		"More Light for you. It's free, and you'll hate every bit of it.",
		"Seconds? The Light is very generous with your sort.",
	},
	["cls.paladin.attack.w07.009"] = {
		"brings the weapon around in a short, heavy arc, the glow along it flaring at the moment of the blow.",
		"steps into the strike with {g:his|her} whole weight, armor ringing with it.",
	},
	["cls.paladin.attack.w07.010"] = {
		"Seal on. Now every swing speaks for the Light.",
		"Sealed. Let's see you shrug that off.",
	},
	["cls.paladin.attack.w07.011"] = {
		"Take it. It's the cleanest thing that's touched you in years.",
		"Feel that warmth? It isn't on your side.",
		"That's the Light, and it's in no mood.",
	},
	["cls.paladin.battle.w07.001"] = {
		"You'll have to go through me first, and I'm told I'm a long way through.",
		"I'm the first thing you meet here. Make your peace with that.",
		"Whatever you came looking for, I'm standing in the way of it.",
	},
	["cls.paladin.battle.w07.002"] = {
		"Weight on the back foot. Let it come to me; I'm built for receiving.",
		"Don't chase. A paladin who chases has already given up the ground.",
		"Let it swing first. Armor is for exactly this.",
	},
	["cls.paladin.battle.w07.003"] = {
		"touches two fingers to the brow, then to the chest, and a faint gold seeps along the edge of {g:his|her} weapon.",
		"murmurs a few plain words, and the air close about {g:him|her} warms as if a door had opened on a lit room.",
	},
	["cls.paladin.battle.w07.004"] = {
		"You picked the one in the shiny armor. Bold. Not wise, but bold.",
		"Of everyone on this road, you chose the one who glows. Interesting choice.",
		"Go on. Everyone wants to dent a paladin once.",
	},
	["cls.paladin.battle.w07.005"] = {
		"I swore an oath to stand against things like this. I keep my oaths.",
		"There's an oath in me older than this fight. It says: stand.",
		"My oath has a short clause for moments like this one. It reads: hold.",
	},
	["cls.paladin.battle.w07.006"] = {
		"Back to the ground with you. The Light will tuck you in.",
		"You were buried once already. I'll make the second time stick.",
		"Whoever woke you did you no kindness. I'll undo it.",
	},
	["cls.paladin.battle.w07.007"] = {
		"Whatever fire you crawled out of, it can have you back.",
		"You smell of sulfur and bad bargains. Let's be done with you.",
		"A demon. Good. With you I never have to wonder whether it's deserved.",
	},
	["cls.paladin.battle.w07.008"] = {
		"The old paladins say the Light takes no joy in a fight. Then why does it come so quickly when one starts?",
		"We're taught the Light is gentle. Nobody explains why it answers fastest with a weapon in my hand.",
	},
	["cls.paladin.battle.w07.009"] = {
		"Right. Let's see whether the smith earned his fee on this armor.",
		"Good. I haven't been polishing this armor for nothing.",
	},
	["cls.paladin.battle.w07.010"] = {
		"settles the weight of {g:his|her} armor with one shrug and steps squarely into the foe's path.",
		"plants {g:his|her} feet wide, armor creaking, and lifts {g:his|her} chin as if to be seen clearly.",
	},
	["cls.paladin.battle.w07.011"] = {
		"Keep your eyes on me. If it's looking at me, it isn't looking at you.",
		"Mine. Let it come for me; you hit it from the side.",
		"I'll hold its attention. You make it regret that.",
	},
	["cls.paladin.battle.w07.012"] = {
		"Count them: who's hurt already, who's reckless, who'll need the Light first. Then fight.",
		"Half my eye on the foe, half on the others. A paladin never gets to watch only one thing.",
	},
	["cls.paladin.battle.w07.013"] = {
		"Light, I'll do the striking. You do the judging.",
		"Light, you decide what this one deserves. I'll only deliver it.",
	},
	["cls.paladin.battle.w07.014"] = {
		"I've marched for hours in this armor. You picked a poor moment to annoy me.",
		"Hours of road in full armor, and now you. Your timing is terrible.",
	},
	["cls.paladin.battle.w07.015"] = {
		"The Alliance asks me to keep its people safe. You're one of the reasons it has to ask.",
		"I serve the Alliance and the Light, and neither of them told me to let you pass.",
		"Nothing personal. You wear the wrong colors in the wrong place.",
	},
	["cls.paladin.battle.w07.016"] = {
		"Bigger than me, older than me, stronger than me. The Light has never cared much for those numbers.",
		"Too much for me, by any honest count. Good thing the Light was never much good at sums.",
	},
	["cls.paladin.battle.w07.017"] = {
		"You're outmatched, and you know it. Run, and I won't follow.",
		"Let's not do this. You can't win, and I'd rather not be the one to teach you that.",
	},
	["cls.paladin.battle.w07.018"] = {
		"draws a slow breath, and a pale ring of light spreads out from {g:him|her} across the ground, steady as a held note.",
		"lets the aura settle about {g:him|her}, a faint shimmer at the edge of sight that does not waver.",
	},
	["cls.paladin.battle.w07.019"] = {
		"A big one. Good. I'd hate to have dressed up for nothing.",
		"Now this is worth the polish on my armor.",
		"They'll tell of this one, whichever way it goes. Let's give them a good ending.",
	},
	["cls.paladin.battle.w07.020"] = {
		"Plate now, head to heel. I still flinch at the first blow, and I hope I always will.",
		"All this plate, and the first strike still finds the same old fear underneath. Good. Fear keeps me honest.",
	},
	["cls.paladin.battle.w07.021"] = {
		"The old paladins say your kind broke the Silver Hand. Then I'm a piece of it that never got the message.",
		"The old stories say the Silver Hand fell to the Scourge. Some of its oath still walks, and it's walking at you.",
	},
	["cls.paladin.battle.w07.022"] = {
		"I've no quarrel with you, beast. Sadly, you've got one with me.",
		"I'd bless you and send you on your way, but you don't look the type to hold still for it.",
		"Easy... easy. No? All right, then.",
	},
	["cls.paladin.battle.w07.023"] = {
		"Seal first, judgement second, and a word with you after that, if you're still listening.",
		"The seal goes on, the judgement comes down. Object quickly, if you mean to.",
	},
	["cls.paladin.battle.w07.024"] = {
		"Mana for two heals, kept back no matter what. Everything else I can spend on this.",
		"Keep enough in reserve to mend myself twice. The rest goes into the fight.",
	},
	["cls.paladin.battle.w07.025"] = {
		"Come forward and be weighed. The Light keeps honest scales.",
		"Step up to the scales. I'll read out what they say.",
	},
	["cls.paladin.battle.w07.026"] = {
		"flexes {g:his|her} fingers inside the gauntlet, one by one, then closes them around the grip.",
		"rolls {g:his|her} shoulders once under the armor and lets out a long breath through the nose.",
	},
	["cls.paladin.battle.w07.027"] = {
		"I'd rather be mending fences somewhere. But here you are, and here I am.",
		"There are a hundred things I'd rather be doing. None of them would let you pass.",
	},
	["cls.paladin.battle.w07.028"] = {
		"I knew you were coming, cold thing. The Light has a nose for your kind.",
		"You can't creep up on a paladin. The dead give themselves away with that chill.",
	},
	["cls.paladin.battle.w07.029"] = {
		"Each time I ask, I half expect silence. Each time, the warmth comes anyway.",
		"I never quite trust the Light to answer until it does. It hasn't failed me yet; I keep checking.",
	},
	["cls.paladin.battle.w07.030"] = {
		"You picked a fight with an oath. Oaths don't get tired.",
		"I promised to stop things like you. Promises don't tire, and neither will I.",
	},
	["cls.paladin.battle.w07.031"] = {
		"No sermon today. You'll get the short version.",
		"I'd preach at you first, but you don't strike me as the listening sort.",
	},
	["cls.paladin.battle.w07.032"] = {
		"faces the dead thing squarely, and the light about {g:him|her} sharpens, white and hard as struck flint.",
		"steps toward the undead without hesitation, and a hard glow gathers along {g:his|her} arms.",
	},
	["cls.paladin.battle.w07.033"] = {
		"The Light was here before you, demon, and it will be here after.",
		"Every bargain that brought you here ends at this spot.",
	},
	["cls.paladin.battle.w07.034"] = {
		"Not anger. Never anger. Just the next right thing, done all the way.",
		"Keep it clean. A paladin who fights angry is only a soldier with a glow.",
	},
	["cls.paladin.battle.w07.035"] = {
		"Hit hard and don't worry about the bruises. Mending is my end of this.",
		"Swing freely. Anything it does to you, I'll undo.",
	},
	["cls.paladin.battle.w07.036"] = {
		"Full plate, a seal, and the Light at my back. And you brought... that. Brave.",
		"I've got plate, a seal and an aura. You've got enthusiasm. It's a start.",
	},
	["cls.paladin.battle.w07.037"] = {
		"Let's give the Light something worth watching.",
		"Here's a fight the Light can be proud of. Let's make it so.",
	},
	["cls.paladin.battle.w07.038"] = {
		"One breath for the Light, one for the oath, and the third for the fight.",
		"Breathe in what I believe. Breathe out what I fear. Then go.",
	},
	["cls.paladin.battle.w07.039"] = {
		"Nobody paints this part of the oath on a banner. Still part of it.",
		"Glory's for the songs. This is just the oath, doing its work.",
	},
	["cls.paladin.battle.w07.040"] = {
		"Let it end quickly, for both our sakes. That's the only prayer I have for this.",
		"Quick and clean, if I can manage it. That much I owe even an enemy.",
	},
	["cls.paladin.battle.w07.041"] = {
		"I'm only a lantern. You'll see what the Light behind me thinks of you.",
		"Don't look at me. Look at what's shining through.",
	},
	["cls.paladin.battle.w07.042"] = {
		"fixes the foe with a level stare, the kind that has already reached a verdict.",
		"narrows {g:his|her} eyes at the enemy as if reading a charge sheet, and finding every line of it true.",
	},
	["cls.paladin.battle.w07.043"] = {
		"Good, a fight. I was starting to feel overdressed.",
		"Ah, finally. All this armor was getting lonely.",
	},
	["cls.paladin.battle.w07.044"] = {
		"Push, then. I was trained to be the thing that doesn't move.",
		"You can push me back a step. Getting a second one will cost you.",
	},
	["cls.paladin.battle.w07.045"] = {
		"Wait for the first swing. Answer the second.",
		"Don't open with everything. A paladin outlasts; that's the whole craft.",
	},
	["cls.paladin.battle.w07.046"] = {
		"In the Light's name, and with my own two hands.",
		"The Light lends the strength. The hands are mine, and they're ready.",
	},
	["cls.paladin.battle.w07.047"] = {
		"I've stood against worse than you, and I've always walked away on my own feet.",
		"Whatever you are, I've faced uglier and outlasted it.",
	},
	["cls.paladin.battle.w07.048"] = {
		"lays a palm flat against {g:his|her} own chest for a heartbeat, as though setting a seal there before the fight.",
		"lowers {g:his|her} head for the space of a breath, then lifts it with the look of someone who has been answered.",
	},
	["cls.paladin.battle.w07.049"] = {
		"Come on. I didn't put on all this metal to stand around.",
		"Well? I didn't haul this much steel out here to admire the view.",
	},
	["cls.paladin.battle.w07.050"] = {
		"Every fight might be my last. I've learned to set my affairs in order in the space of one breath.",
		"If this is the one that ends me, let it find me facing forward.",
	},
	["cls.paladin.battle.w07.051"] = {
		"Somewhere, someone sleeps safer because I'm out here. That's reason enough.",
		"Every foe stopped here is one that never reaches a village. Good enough for me.",
	},
	["cls.paladin.battle.w07.052"] = {
		"If this goes poorly, I have a trick. If it goes very poorly, I have a shield nobody can touch.",
		"Do your worst. I can do something few others can: simply stop being hittable for a while.",
	},
	["cls.paladin.buff.w07.001"] = {
		"A blessing on my own shoulders first. Asking for help is part of the oath, even when I'm the one answering.",
		"I bless myself the way I'd check my straps: not from vanity, only because I'm the one who'll be wearing it.",
		"Before anyone else, I bless the one I'm sure will be there. Myself, as it happens.",
	},
	["cls.paladin.buff.w07.002"] = {
		"lays a flat hand over {g:his|her} own heart and speaks a short word, and a faint gold sinks in under the palm.",
		"blesses {g:himself|herself} with the plain economy of someone lacing boots, and the glow fades almost before it shows.",
	},
	["cls.paladin.buff.w07.003"] = {
		"Might, on my own arm. The weapon feels lighter, which means the next blow lands heavier.",
		"A little more weight behind every swing. The Light isn't shy about lending muscle.",
		"Might first. How I spend it, I'll find out along the way.",
	},
	["cls.paladin.buff.w07.004"] = {
		"Wisdom for myself, which mostly means the mana refills quicker. The real kind I still have to find on foot.",
		"They call it Wisdom. It fills my well faster. Whether it makes me any wiser is another question.",
	},
	["cls.paladin.buff.w07.005"] = {
		"Untouchable for a few heartbeats, and unable to swing. It isn't courage, but it's how I live to have some later.",
		"No blade can reach me, and my own hands are tied. A strange gift, and right now a welcome one.",
	},
	["cls.paladin.buff.w07.006"] = {
		"Let them try to pin me down now. For a while my feet answer only to me.",
		"No snare, no grip, no slowing. For a few breaths the ground can't hold me.",
	},
	["cls.paladin.buff.w07.007"] = {
		"Salvation, on myself. Not for my soul; only so the brute up front looks at someone else.",
		"The grandest name of the lot, and all it does is make me less interesting to whatever's angry.",
	},
	["cls.paladin.buff.w07.008"] = {
		"A blessing that makes the Light land harder on me. Odd thing to ask for, unless you know how often I'll need it.",
		"Light upon Light. The next mending that reaches me will reach deeper.",
	},
	["cls.paladin.buff.w07.009"] = {
		"Blessed myself. Someone had to, and I was standing right here.",
		"The first blessing goes to the one doing the blessing. Rank has its privileges.",
		"Self-service blessing. The recipient has no complaints so far.",
	},
	["cls.paladin.buff.w07.010"] = {
		"Blessing myself has a whiff of vanity about it. Then I remember who has to stand at the front, and the feeling passes.",
		"Is it pride, to point the Light at myself? I've decided it's maintenance. The Light hasn't objected.",
		"There's a little pride in it, laying the Light on my own head. I let the pride go and keep the blessing.",
	},
	["cls.paladin.buff.w07.011"] = {
		"pauses a moment to lay a blessing on {g:himself|herself}, quick as tightening a belt, then moves on.",
		"mutters a blessing over {g:his|her} own head and shrugs it on like an old, familiar cloak.",
	},
	["cls.paladin.buff.w07.012"] = {
		"Blessing done. Let's see what the road has in store.",
		"There. The Light's on my shoulders; the rest is up to my arm.",
		"Blessing's on. Whatever lies ahead will meet the two of us.",
	},
	["cls.paladin.buff.w07.013"] = {
		"A blessing given to oneself is quieter than one given away. No one to look up, no one to nod. Just the warmth, settling.",
		"I like the moment the blessing settles: no flare, only a small warmth that stays, like a stone that has kept the sun.",
		"Laid on myself, the blessing makes no show. It simply moves in, like a tenant who pays on time.",
	},
	["cls.paladin.buff.w07.014"] = {
		"Only one blessing of mine can sit on any back, mine included. Choosing which is a small, honest puzzle.",
		"A few minutes of blessing, then it fades and I lay it on again. Faith needs renewing too.",
	},
	["cls.paladin.buff.w07.015"] = {
		"I'd ask a priest, but the nearest one is never where I am. So.",
		"Blessing yourself: the Light's version of cutting your own hair. Works fine if nobody looks too closely.",
	},
	["cls.paladin.buff.w07.016"] = {
		"Light, go with me as far as I go, and a step past it.",
		"Light upon my head and my hands. That will do for the lining of my armor.",
	},
	["cls.paladin.buff.w07.017"] = {
		"The first blessing goes on me for a selfish reason: a paladin who falls early protects no one.",
		"Keeping myself standing is part of keeping others standing. The blessing goes where it does most good, and sometimes that's here.",
	},
	["cls.paladin.buff.w07.101"] = {
		"A blessing for you. It weighs nothing and it'll still carry some of your load.",
		"There. The Light's on your shoulders now, as well as mine.",
		"Take this with you. The Light is generous, but it likes to be used.",
	},
	["cls.paladin.buff.w07.102"] = {
		"Blessed. No, you don't have to kneel. Though it wouldn't hurt.",
		"You're blessed. Try not to let it go to your head; it was meant for your arms.",
	},
	["cls.paladin.buff.w07.103"] = {
		"I don't need to know a name to wish someone well. The blessing doesn't ask either.",
		"Whatever they're about to do, they'll do it a little stronger. I hope it's something good.",
		"The blessing lands and nobody even turns round. Good. A blessing shouldn't need an audience.",
	},
	["cls.paladin.buff.w07.104"] = {
		"raises an open hand toward the other, and a soft gold settles over them like pollen and is gone.",
		"sketches a brief sign toward the one before {g:him|her}, as plain and certain as a handshake.",
	},
	["cls.paladin.buff.w07.105"] = {
		"Nothing can touch you now, and you can't touch anything. Step back and breathe.",
		"You're untouchable for a few heartbeats. Use them to get clear, not to show off.",
	},
	["cls.paladin.buff.w07.106"] = {
		"Your legs are your own again. Run or charge, whichever you prefer.",
		"Whatever had hold of your feet just lost its grip. Move.",
		"Free to move. Don't waste it standing still.",
	},
	["cls.paladin.buff.w07.107"] = {
		"Might, for you. Hit things a little harder than you meant to.",
		"Your arm's heavier now, in the good way. Put it to use.",
		"There's some of the Light's strength in your swing now. Aim it well.",
	},
	["cls.paladin.buff.w07.108"] = {
		"Salvation, for them. Their soul is their own affair; this only makes the angry things look elsewhere.",
		"A grand name for a quiet favor: whoever wears it simply becomes less worth chasing.",
	},
	["cls.paladin.buff.w07.109"] = {
		"Some need a stronger arm, some a fuller well of mana. A moment's look, and I decide.",
		"Choosing a blessing for someone is a quick reading: how they stand, what they carry, what they're about to do.",
	},
	["cls.paladin.buff.w07.110"] = {
		"A good blessing is like a good strap: nobody thinks of it until the moment it holds.",
		"They'll forget it's there within a minute. That's fine; it won't forget them.",
	},
	["cls.paladin.buff.w07.111"] = {
		"Go in the Light, and come out the far side of whatever's waiting.",
		"May it hold when you need it most, and go unnoticed the rest of the time.",
		"The Light keep you on your feet, and me close enough to help.",
	},
	["cls.paladin.farewell.w07.001"] = {
		"Farewell. Walk upright, and keep someone at your back.",
		"Safe roads to you. If trouble finds you, find a paladin.",
		"Until next time. Mind the dark places, and don't let pride stop you calling for help.",
	},
	["cls.paladin.greet.w07.001"] = {
		"Greetings. If there's trouble on your road, I'd like to hear of it.",
		"Well met. Need a hand, a blessing, or just someone to walk beside? I carry all three.",
	},
	["cls.paladin.greet.w07.002"] = {
		"Hello there. Yes, the armor's heavy. No, I don't mind. Yes, everyone asks.",
		"Greetings. Don't mind the glow; it's mostly harmless.",
	},
	["cls.paladin.heal.w07.001"] = {
		"The Light works under the armor where I can't reach, warming the bruises one by one.",
		"No buckle stops it. The Light slips under the armor and finds every bruise I hadn't counted.",
		"I never have to undo a strap for this. The Light goes in under the armor as if it knew the way.",
	},
	["cls.paladin.heal.w07.002"] = {
		"Asking the Light for myself still feels like taking the best seat at the table. I take it anyway; a fallen guard guards nothing.",
		"There's a small shame in turning the Light on my own hide. Smaller than the shame of falling where others needed me.",
	},
	["cls.paladin.heal.w07.003"] = {
		"Light, a little for me. Then back to the others.",
		"Mend me quickly, Light. There's work still standing.",
		"Light, put me back on my feet. I'll do the rest.",
	},
	["cls.paladin.heal.w07.004"] = {
		"lays a gauntleted hand flat over {g:his|her} own ribs, and a soft gold warmth spreads outward from the palm.",
		"presses a palm to {g:his|her} own side and murmurs a few plain words; the light that answers is quiet and thorough.",
		"closes {g:his|her} eyes for the length of a breath, and a pale glow passes over {g:him|her} from the shoulders down.",
	},
	["cls.paladin.heal.w07.005"] = {
		"Holy Light is a slow word to say with something hitting you. Every blow pushes the end of it a little further off.",
		"Holy Light wants the whole breath, start to finish. Whatever is swinging at me never seems to understand that.",
		"Halfway through the Holy Light, another knock, and the words stumble. Pick the sentence up where it fell and finish it.",
	},
	["cls.paladin.heal.w07.006"] = {
		"Out of the fight there's time for the long mending. Holy Light, slow and whole, and no one to interrupt it.",
		"Holy Light is a heal for quiet moments: long to say, thorough when it lands. This is such a moment.",
	},
	["cls.paladin.heal.w07.007"] = {
		"Flash of Light. Not much, but quick, and quick is all I can afford with this thing on top of me.",
		"A flash, not a fire. It keeps me up between blows, which is all I'm asking of it.",
		"Small and fast, like a stitch put in while running. Flash of Light was made for moments like this.",
	},
	["cls.paladin.heal.w07.008"] = {
		"A quick one. I've no time for the long version.",
		"Short prayer, short mending. The fight hasn't finished either.",
	},
	["cls.paladin.heal.w07.009"] = {
		"Flash of Light costs little and gives little. Three of them still cost less than a fall.",
		"I'd rather lay three small mendings than wait on one big one. The Light doesn't mind being asked often.",
	},
	["cls.paladin.heal.w07.010"] = {
		"I always pictured spending this on someone else. Today the someone else is me, and the Light doesn't seem to mind.",
		"The last mercy, poured into my own wounds. Not how I imagined it, but a paladin dead on the ground spends nothing at all.",
	},
	["cls.paladin.heal.w07.011"] = {
		"sets both hands flat against {g:his|her} own chest, and the light pours through {g:him|her} all at once, leaving {g:him|her} pale and whole.",
		"presses a hand over {g:his|her} heart; a blaze of white and gold runs through {g:him|her}, and every ounce of magic goes with it.",
	},
	["cls.paladin.heal.w07.012"] = {
		"Whole again, and not a drop of mana left for so much as a seal. The rest of this fight belongs to the arm.",
		"My body's full and the well is bone dry. From here on I fight like any soldier, and hope that's enough.",
		"Wounds closed in one stroke, mana gone in the same one. Now it's only me and the weapon.",
	},
	["cls.paladin.heal.w07.013"] = {
		"Some days I wonder if the Light answers me or just the habit of asking. The cut closes either way.",
		"Grace or only practice, I can't always tell. The bleeding stops, and I've stopped needing to know.",
	},
	["cls.paladin.heal.w07.014"] = {
		"The oath says to protect those who can't stand. Right now that's me, and the oath makes no exceptions.",
		"Protect the fallen, the oath says. It doesn't add 'unless it's you.' I checked.",
	},
	["cls.paladin.heal.w07.015"] = {
		"All that effort, and the Light undoes it in a breath. Try again.",
		"Mended. You'll have to start over, I'm afraid.",
		"Every scratch you gave me, gone. Shall we begin again?",
	},
	["cls.paladin.heal.w07.016"] = {
		"It always feels like stepping too close to a forge: a heat on the face first, then all through the bones.",
		"First a warmth at the skin, then deeper, until even the old aches remember they were once young.",
	},
	["cls.paladin.heal.w07.017"] = {
		"Mana spent on my own hide is a judgement I won't throw later. Worth it, as long as I'm the one still throwing.",
		"Every mending I keep for myself is a seal I can't afford afterward. The arm will have to work harder to cover it.",
	},
	["cls.paladin.heal.w07.018"] = {
		"rolls {g:his|her} shoulder slowly as the hurt fades, testing the joint the way one tests a door hinge.",
		"flexes the mended hand twice, then a third time, as if not quite trusting it yet.",
		"lets out a long breath through the nose and straightens, the pain gone out of {g:his|her} stance.",
	},
	["cls.paladin.heal.w07.019"] = {
		"There. The ribs stop arguing with every breath.",
		"Breathing doesn't hurt anymore. I'd forgotten how much room there is in a lungful of air.",
		"The stitch in my side lets go, and all at once I can stand straight again.",
	},
	["cls.paladin.heal.w07.020"] = {
		"Good enough. No time to be whole, only to be standing.",
		"Not mended, just mended enough. That will have to do for now.",
		"Half healed is plenty when the alternative is half dead.",
	},
	["cls.paladin.heal.w07.021"] = {
		"That one I walked into with my eyes open. The mending is free; the lesson I'll pay for in pride.",
		"I'd blame the enemy, but I saw it coming and didn't move a step.",
		"Healing the wound is easy. Healing the embarrassment of how I got it will take longer.",
	},
	["cls.paladin.heal.w07.022"] = {
		"A bottle for me, the mana for whatever comes next. The Light won't take offense at a little thrift.",
		"Why spend a prayer on myself when a flask does the job? I'll keep the Light for the seals.",
	},
	["cls.paladin.heal.w07.023"] = {
		"Tastes like a copper pot. Works like a charm.",
		"Bitter as a sergeant's temper. Good, it's working.",
		"Ugh. Whoever brews these has never had to drink one.",
	},
	["cls.paladin.heal.w07.024"] = {
		"pulls the cork with {g:his|her} teeth, spits it aside and drains the vial without lowering {g:his|her} guard.",
		"knocks back a red draught in one long swallow and tosses the empty vial away.",
	},
	["cls.paladin.heal.w07.025"] = {
		"A paladin swigging from a vial like any sellsword. Humility comes in many shapes; this one tastes awful.",
		"No glow, no warm hands, just a bottle. It's good for me to remember the Light isn't the only mercy in the world.",
	},
	["cls.paladin.heal.w07.026"] = {
		"When the mana's spent, the bottle still answers. Bless whatever alchemist filled it.",
		"Mana runs out; vials don't care. That's the whole of their charm.",
	},
	["cls.paladin.heal.w07.027"] = {
		"Whoever made this stone, I'd rather not ask how. It's warm in my hand, and the wound closes all the same.",
		"A green stone, crackling faintly, and I'm whole again. I'll thank its maker and not inquire further.",
	},
	["cls.paladin.heal.w07.028"] = {
		"One stone less in the pocket, one wound less on me. A fair trade.",
		"There goes the stone. I owe its maker a thank-you.",
	},
	["cls.paladin.heal.w07.029"] = {
		"closes {g:his|her} fist around a small green stone until it crumbles, and the color creeps back into {g:his|her} face.",
		"grinds the green stone to grit in one hand and breathes out as its pale glow sinks into {g:him|her}.",
	},
	["cls.paladin.heal.w07.030"] = {
		"The old paladins have a saying: a knight too proud to mend himself is only a casualty taking the long way.",
		"'Mend yourself first, then the line,' the old paladins say. It sounds selfish until you've watched a line break.",
	},
	["cls.paladin.heal.w07.031"] = {
		"The Light mends me exactly as it would mend a stranger. No more for being its servant. I find that oddly comforting.",
		"No favors for the faithful. The Light closes my cuts with the same plain care it would give anyone's.",
	},
	["cls.paladin.heal.w07.032"] = {
		"By the Light, not yet.",
		"Light, hold me together a little longer.",
		"Not here, not now. Mend me, Light.",
	},
	["cls.paladin.heal.w07.033"] = {
		"takes a step back from the fight, head bowed for a single breath, and comes on again with the glow still fading from {g:his|her} armor.",
		"turns aside under a blow, murmurs a quick word, and a flare of gold seals the gash before the next one lands.",
	},
	["cls.paladin.heal.w07.034"] = {
		"The Light answers me quickly, every time. That is exactly the kind of thing a paladin must never start to feel proud of.",
		"Ask, and the wound closes. It would be easy to think myself special. I try very hard not to.",
	},
	["cls.paladin.heal.w07.035"] = {
		"The Light leaves no scar behind. Some days I'd like one, just to remember what it cost.",
		"Not a mark left on the skin. The body forgets so quickly. I try to keep the memory for it.",
	},
	["cls.paladin.heal.w07.036"] = {
		"lowers {g:himself|herself} to one knee while the mending takes, and stays there a moment longer than strictly needed.",
		"loosens a strap at the collar and waits, eyes half closed, for the last of the ache to go.",
	},
	["cls.paladin.heal.w07.037"] = {
		"Better. Much better. Funny how you only notice an ache once it's gone.",
		"That's the stuff. Every joint unclenching at once, like a fist letting go.",
		"There it goes. The ache packs up and leaves without even arguing.",
	},
	["cls.paladin.heal.w07.038"] = {
		"Judgement thrown, a breath to mend myself, and back to the swing. A trainer would call it tidy work.",
		"Throw the judgement, close my own wound while it lands, swing again. Healing's just another step of the drill.",
	},
	["cls.paladin.heal.w07.039"] = {
		"A healer in heavy armor. The priests never quite know what to make of us, and neither do the warriors.",
		"Too much armor for a healer, too much mercy for a soldier. Right now, being both is what keeps me alive.",
	},
	["cls.paladin.heal.w07.040"] = {
		"Up, wall. The ones behind me haven't stopped needing one.",
		"A shield with holes in it protects nobody. Patch the holes, then step forward again.",
		"They're counting on the front holding. The front is me, so the front gets mended first.",
	},
	["cls.paladin.heal.w07.041"] = {
		"No one else to call on. Just the Light and me, which is a smaller company than it sounds, and a better one.",
		"With no one else around, I'm my own healer. The Light doesn't seem to mind such a short list of patients.",
	},
	["cls.paladin.heal.w07.042"] = {
		"That's mended. Now, where were we?",
		"Better. Now, you and I had something unfinished.",
		"Right. All mended, and no more patient than before.",
	},
	["cls.paladin.heal.w07.043"] = {
		"I'm only the lamp; the Light is the flame. Even a lamp needs mending now and then, so the flame has something to stand in.",
		"What the Light gives me back, it gives so the work can go on. Not for my sake. For the work's.",
	},
	["cls.paladin.heal.w07.044"] = {
		"Flesh mends faster than the tiredness does. The Light has never had much to say about tiredness.",
		"The cut is gone; the weariness stays. No spell I know reaches that far down.",
	},
	["cls.paladin.heal.w07.045"] = {
		"wipes the blood from {g:his|her} brow with the back of a wrist as the wound beneath it closes.",
		"spits once, grimaces, and rolls {g:his|her} shoulders as the pain loosens its grip.",
	},
	["cls.paladin.heal.w07.046"] = {
		"I keep my own mending brief. The Light is better spent on those without armor like mine.",
		"Just enough for me, no more. Somebody softer will need the rest before long.",
	},
	["cls.paladin.heal.w07.047"] = {
		"Each time the Light closes a wound of mine, it seems to say the same short thing: not yet, there's more to do.",
		"The Light's answer to my wounds is always the same: you're needed a while longer. I never tire of hearing it.",
	},
	["cls.paladin.heal.w07.048"] = {
		"Healed. If anyone asks, nothing happened here.",
		"And that's the last of that bruise. We will never speak of it.",
	},
	["cls.paladin.heal.w07.049"] = {
		"I was taught to ask the Light plainly, without flourish. Mend me. That's enough, when it's meant.",
		"No grand words for my own hurts. A plain request, meant honestly, and the Light does the rest.",
	},
	["cls.paladin.heal.w07.050"] = {
		"Everything I have. Take it, Light, and put it back in me.",
		"Every last drop, Light, into this one body.",
	},
	["cls.paladin.heal.w07.051"] = {
		"lets a quick flicker of light pass over {g:his|her} own wound, barely pausing between blows.",
		"snaps out a short word, and a brief flash of gold skims across {g:his|her} armor and is gone.",
	},
	["cls.paladin.heal.w07.052"] = {
		"One day I'll ask and it won't be enough. Not today. Today the wound closes, and I'll take today.",
		"There'll be a wound someday that no Light can close. I don't fear it much. I just don't want it to be this one.",
	},
	["cls.paladin.heal.w07.053"] = {
		"The cuts are closed, but I'm still sweating inside all this armor. Some miseries the Light leaves to me.",
		"Mended, and still hot, still itching, still buckled into all this iron. The Light does wounds, not comfort.",
	},
	["cls.paladin.heal.w07.054"] = {
		"kneels a moment in quiet, one hand over the wound, until the gold light under the palm fades.",
		"bows {g:his|her} head and holds still, and the hurt eases as a soft glow ebbs away beneath {g:his|her} fingers.",
	},
	["cls.paladin.heal.w07.055"] = {
		"Let it watch me mend. Let it understand how long this is going to take.",
		"Every wound I close is one more it has to open again. I can keep this up longer than it can.",
	},
	["cls.paladin.heal.w07.056"] = {
		"I don't claim to understand the Light. I know it answers when I bleed, and for a soldier that's faith enough.",
		"Priests can argue over what the Light is. In the middle of a fight, it's what closes the cut.",
	},
	["cls.paladin.heal.w07.057"] = {
		"The wounds close; the temper doesn't. Whatever did this is about to feel the difference.",
		"The pain's gone; the grudge stays. I'll spend it wisely.",
	},
	["cls.paladin.heal.w07.058"] = {
		"inspects a freshly mended forearm with a critical eye, as if the work might need sending back.",
		"pats {g:his|her} own side twice, satisfied, like someone checking that a purse is still there.",
	},
	["cls.paladin.heal.w07.059"] = {
		"My hand shakes over the wound. The Light that comes through it never does.",
		"I'm tired, and it shows in my hands. Strange how steady the Light is, passing through them.",
	},
	["cls.paladin.heal.w07.060"] = {
		"Holy Light was the first mending they ever taught me, and it's still the one my hands reach for without thinking.",
		"The plainest of the prayers I know. Holy Light, said over my own hurt, steady as a heartbeat.",
	},
	["cls.paladin.heal.w07.061"] = {
		"A lesson for later: guard first, swing second. The Light shouldn't have to mend the same mistake twice.",
		"That one was my footwork's fault. I'll heal it now and fix the footwork tomorrow.",
	},
	["cls.paladin.heal.w07.062"] = {
		"Hold on a moment! Mending myself, then I'm back with you!",
		"Two breaths, that's all. Hold the line!",
	},
	["cls.paladin.heal.w07.063"] = {
		"There was blood running into my boot a moment ago. Now there's only the squelch to remind me.",
		"The bleeding's stopped. The boot, unfortunately, is still full of it.",
	},
	["cls.paladin.heal.w07.064"] = {
		"works {g:his|her} jaw side to side, testing a bruise that is no longer there.",
		"breathes in deep, holds it, and lets it go slowly, as if checking that every rib is where it belongs.",
	},
	["cls.paladin.heal.w07.065"] = {
		"The Light forgives my wounds faster than I forgive the mistakes that earned them.",
		"It mends me without a word of reproach. I could stand to learn that kind of mercy toward myself.",
	},
	["cls.paladin.heal.w07.066"] = {
		"A quick flash to tidy up the last of it. No point walking on with scratches I can wipe away.",
		"Just the little mending, to finish the job. The scratches aren't worth a long one.",
	},
	["cls.paladin.heal.w07.067"] = {
		"Hands steady. Say it right the first time; there won't be a second.",
		"Don't rush the words. A botched mending is worse than none.",
		"Breathe, then ask. Fear makes the words come out crooked.",
	},
	["cls.paladin.heal.w07.068"] = {
		"staggers back a step, and by the time {g:his|her} foot lands again the worst of the wound is already closing.",
		"rocks under the blow, plants {g:his|her} feet, and lets the mending take hold before answering in kind.",
	},
	["cls.paladin.heal.w07.069"] = {
		"Thank you. Not for the mending only, but for still being there when I didn't deserve the asking.",
		"Thanks, Light. I never say it enough, and I've never once regretted saying it.",
	},
	["cls.paladin.heal.w07.401"] = {
		"Don't argue with me, just let it work. You can argue after.",
		"Keep your eyes on me. The wound can sort itself out under my hand.",
		"Breathe out slowly. I'm nearly finished, and you're nearly fine.",
	},
	["cls.paladin.heal.w07.402"] = {
		"The Light has no favorites. It came for you because you were here, and I asked.",
		"Take it, and keep your thanks for the Light. I only pointed it your way.",
		"It was never mine to give. I just know where to ask.",
	},
	["cls.paladin.heal.w07.403"] = {
		"Their breathing evens out before the cheeks find their color. I've learned to listen for that first.",
		"A mended face always looks younger for a moment, as if the hurt had been aging it.",
		"I watch the clenched hand open again. That's when I know the work took.",
	},
	["cls.paladin.heal.w07.404"] = {
		"turns aside for a single breath, holds a palm toward the wounded one, and sends the Light across the gap.",
		"speaks a short word over the one in pain, and a warm gold runs into the wound the way water finds a crack.",
	},
	["cls.paladin.heal.w07.405"] = {
		"You're whole again. Try to stay that way until I've had a drink of water.",
		"Done. Now kindly stop standing where the big one swings.",
		"I have a whole lecture about ducking. Remind me to give it to you later.",
	},
	["cls.paladin.heal.w07.406"] = {
		"Up and fighting. While I can lift a hand, you don't fall here.",
		"Go on, take the next blow if you must. I'll undo it.",
		"Your wounds are my business now. Their blades are yours.",
	},
	["cls.paladin.heal.w07.407"] = {
		"The Light answers for anyone I point it toward. I've never had to justify the choice to it, and that frightens me a little.",
		"I decide who gets the Light first. No oath ever made that choice any easier.",
	},
	["cls.paladin.heal.w07.408"] = {
		"It'll ache for a day. An ache is honest; let it be.",
		"The wound's closed. The tiredness I can't touch; only sleep will shift that.",
	},
	["cls.paladin.heal.w07.409"] = {
		"gives the mended place one hard look, the way a mason looks at a wall, and seems satisfied.",
		"wipes the last of the glow from {g:his|her} fingers against a sleeve as though it were flour, and moves on.",
		"flexes {g:his|her} fingers once the light has left them, as if checking they still belong to {g:him|her}.",
	},
	["cls.paladin.heal.w07.410"] = {
		"Quick one. It won't fix everything, but it'll keep you swinging.",
		"Just a flash. The real mending comes when they stop hitting you.",
		"Small and fast, like a short jab. Keep going.",
	},
	["cls.paladin.heal.w07.411"] = {
		"A flash buys seconds, not safety. In a fight, seconds are usually what's for sale.",
		"The quick light is cheap and thin. Three in a row cost more than one done properly, and sometimes there's no time for properly.",
	},
	["cls.paladin.heal.w07.412"] = {
		"Bear with the long words. This one takes its time because it means to finish the job.",
		"The slow one, the deep one. Stay put; it's worth the wait.",
	},
	["cls.paladin.heal.w07.413"] = {
		"Emptied out in a single breath, and the one who needed it is standing. That's a bargain I'd make every time.",
		"My strength is in their body now, all of it. I'll be slow for a while. Worth it.",
	},
	["cls.paladin.heal.w07.414"] = {
		"That was everything I had. Don't make me sorry about where I spent it.",
		"I won't have that again for a long while. You'll have to stay alive without it.",
	},
	["cls.paladin.heal.w07.415"] = {
		"presses both palms to the wounded one and leans in, and the Light leaves {g:him|her} all at once, like a held breath let go.",
		"goes pale as the glow pours out of {g:his|her} hands, as if {g:he|she} had given away a little of {g:his|her} own color too.",
	},
	["cls.paladin.heal.w07.416"] = {
		"There we are. Not a master's work, but it'll do for the road.",
		"Mended, and only a little grumpy about it. I'll take that.",
	},
	["cls.paladin.heal.w07.417"] = {
		"By the Light, let this hurt end here and go no further.",
		"Light, you know this one better than I do. Mend what I can't see.",
		"Light, this one has carried enough today. Take some of the weight.",
	},
	["cls.paladin.heal.w07.418"] = {
		"Mana for one more of these, maybe two. After that I'm mending with a bandage and a bad temper.",
		"Every heal is a sum: how much they need, how much I have, how much I'll want for the next one. The Light leaves the arithmetic to me.",
	},
	["cls.paladin.heal.w07.419"] = {
		"Breathe with me. In... and out. There, the worst has passed.",
		"Follow my breathing, slow and even. The pain leaves faster that way.",
	},
	["cls.paladin.heal.w07.420"] = {
		"No one bleeds out within reach of my hand. That's the oath, and I keep it.",
		"I swore to stand between harm and whoever needed it. Today that's you.",
		"My oath has a short clause about this: you don't fall where I can reach you.",
	},
	["cls.paladin.heal.w07.421"] = {
		"leaves a gauntleted hand on the hurt shoulder a moment longer than the spell needs.",
		"kneels level with the wound and speaks the words softly, close, without any hurry.",
	},
	["cls.paladin.heal.w07.422"] = {
		"I didn't swear an oath to the Light so I could keep stitching you up. And yet here we are.",
		"Go on, then. Get hit again. It's not as if I had other plans.",
	},
	["cls.paladin.heal.w07.423"] = {
		"Don't touch it yet. New skin is thin; give it the hour.",
		"Leave the bandage off. The Light did a cleaner job than any cloth could.",
	},
	["cls.paladin.heal.w07.424"] = {
		"When I send the Light into someone else, for a moment I can feel the shape of them: tired, frightened, stubborn. Then it's gone.",
		"A strange closeness, this. I don't know their name, and the Light already knows exactly where it hurts.",
	},
	["cls.paladin.heal.w07.425"] = {
		"Sorted. Now go and make them regret that.",
		"Mended. Go and give whoever did that something to think about.",
	},
	["cls.paladin.heal.w07.426"] = {
		"I can close any wound I reach in time. The ones I won't reach will stay with me longer than any of these.",
		"When it works, I try not to think of the day it won't arrive in time. That day comes for every healer.",
	},
	["cls.paladin.heal.w07.427"] = {
		"Get your breath back. The Light isn't keeping score, and neither am I.",
		"Nothing owed. The Light gives without asking, and I try to do the same.",
		"No debt. Pass it on to whoever needs it after you.",
	},
	["cls.paladin.heal.w07.428"] = {
		"Sit. No, actually sit. Courage can wait until the bleeding stops.",
		"Stop wriggling. The Light works faster on a body that keeps still.",
	},
	["cls.paladin.heal.w07.429"] = {
		"murmurs the words of mending, and for a moment both faces are lit from below, as by a lantern held between them.",
		"joins {g:his|her} hands briefly, then opens them toward the one in pain, and the Light goes where the hands point.",
	},
	["cls.paladin.heal.w07.430"] = {
		"Think of something pleasant while I work. Ale is a popular choice.",
		"This part doesn't hurt. The part before it hurt; this is the nice part.",
	},
	["cls.paladin.heal.w07.431"] = {
		"My hands know this work better than my head does. They're halfway into the words before I've decided.",
		"Seal on the weapon, Light in the other hand. A paladin works two trades at once, and neither of them waits.",
	},
	["cls.paladin.heal.w07.432"] = {
		"Not today. The Light has looked you over and decided: not today.",
		"Whatever was coming for you will have to wait in line behind me.",
	},
	["cls.paladin.heal.w07.433"] = {
		"steps half a pace in front of the wounded one and heals without lowering {g:his|her} guard.",
		"keeps one eye on the foe and one on the hurt, and sends the Light across without turning {g:his|her} head.",
	},
	["cls.paladin.heal.w07.434"] = {
		"You're no burden. People in trouble are the reason I learned this.",
		"Don't apologize for bleeding. It's the least interesting thing you'll do today.",
		"No need to say anything. Keep breathing; that's thanks enough.",
	},
	["cls.paladin.heal.w07.435"] = {
		"They always thank the Light. Never the one who ran over, armor and all, to deliver it.",
		"A word, a glow, and someone stops dying. You'd think I'd be more impressed with myself.",
	},
	["cls.paladin.heal.w07.436"] = {
		"Good enough to walk on. We'll see to the rest at the next campfire.",
		"That'll carry you as far as the next milestone, and probably well past it.",
	},
	["cls.paladin.heal.w07.437"] = {
		"Be whole. It's the simplest thing the Light knows how to say.",
		"Mend, and stand. That's all the Light ever asks of the wounded.",
		"Heal. The word is short because the Light has no need of a long one.",
	},
	["cls.paladin.heal.w07.438"] = {
		"First whoever holds the line, then whoever shouts loudest. That order is never fair, and it's still right.",
		"Choosing who first is a cold sum for a warm gift. I hate it, and I do it anyway.",
	},
	["cls.paladin.heal.w07.439"] = {
		"gives the mended arm a light pat as the glow fades, like closing the lid on a well-made box.",
		"smiles, briefly and crookedly, as the other face finds its color again.",
	},
	["cls.paladin.heal.w07.440"] = {
		"Quick light, quick fix. If you want the fancy one, stop getting hit so fast.",
		"That's the cheap one. The good one you earn with a pause.",
	},
	["cls.paladin.heal.w07.441"] = {
		"Holy Light takes its time, and the whole while I stand there with my guard down. The price of doing it properly.",
		"The long words of Holy Light. I say every one of them, and hope nothing interrupts.",
	},
	["cls.paladin.jest.w07.001"] = {
		"How many paladins does it take to light a lamp? Just one, but there'll be a short sermon about the lamp first.",
		"Why don't paladins play cards? Every time we hold a good hand, it starts to glow.",
	},
	["cls.paladin.levelup.w07.001"] = {
		"The trainers will have something new to teach me. More to learn, more to carry, more to answer for.",
		"A little stronger. Strength is the easy part to gain; deserving it is the slow part.",
		"With each step up, the oath grows a little heavier and a little clearer. I'm not sure which surprises me more.",
	},
	["cls.paladin.levelup.w07.002"] = {
		"draws a deep breath and lets it out slowly, and for an instant a faint golden light seems to run along the seams of {g:his|her} armor.",
		"straightens to {g:his|her} full height, flexing a hand that suddenly seems surer of its grip.",
		"bows {g:his|her} head briefly, more in acknowledgment than in prayer, then lifts it with a new steadiness.",
	},
	["cls.paladin.lowhp.w07.001"] = {
		"Not yet. The oath doesn't have a clause for this.",
		"Down? Not while there's an oath with my name on it.",
		"The oath said until the end. This isn't it.",
	},
	["cls.paladin.lowhp.w07.002"] = {
		"Too low. Protection first, then mend, then back in. Quickly.",
		"Think. Ward up, mend second, swing third. Panic is not on the list.",
	},
	["cls.paladin.lowhp.w07.003"] = {
		"sways, blood at the seams of {g:his|her} armor, and the glow about {g:him|her} gutters like a candle in a draft, then steadies.",
		"sets {g:his|her} feet wider as the blows land, swaying like a mast in a hard wind but not going over.",
	},
	["cls.paladin.lowhp.w07.004"] = {
		"Ow. All right. The Light and I will be having words about this.",
		"That hurt. I'll be filing a complaint with the Light.",
		"Fine. That one counted.",
	},
	["cls.paladin.lowhp.w07.005"] = {
		"There's the shield, the one nothing gets through. Using it now isn't cowardice, only sense.",
		"The untouchable moment is there for the taking. No shame in it. Pride is what gets paladins buried.",
	},
	["cls.paladin.lowhp.w07.006"] = {
		"Light, I'm not finished. Neither are you.",
		"Hold on to me, Light. I'm holding on to you.",
		"Light, a little warmth, if you can spare it. I can't spare much more.",
	},
	["cls.paladin.lowhp.w07.007"] = {
		"My heartbeat's in my ears and my mouth tastes of iron. Fine. The body complains; the oath doesn't.",
		"Blood in my mouth, ringing in my ears. The armor's holding more of me up than I am.",
	},
	["cls.paladin.lowhp.w07.008"] = {
		"I'm hurt, not done. Keep your eyes on the fight, not on me.",
		"Don't stop for me! I've still got a heal in me, and it's mine.",
		"Keep at it! I'll mend myself; you mind the foe.",
	},
	["cls.paladin.lowhp.w07.009"] = {
		"presses a shaking hand against {g:his|her} own wound and says the Light's name through gritted teeth.",
		"clutches at the armor over {g:his|her} heart, and a thin warmth answers, faint but there.",
	},
	["cls.paladin.lowhp.w07.010"] = {
		"The armor's doing its best. Somebody should tell it to try harder.",
		"If this armor had feelings, it would be very ashamed of itself right now.",
		"Note to self: the armor is not, in fact, invincible.",
	},
	["cls.paladin.lowhp.w07.011"] = {
		"Quiet in there. Too quiet. Light? Light. There you are.",
		"For a heartbeat I can't find it, the warmth. Then it's there, the way a hand finds a railing in the dark.",
	},
	["cls.paladin.lowhp.w07.012"] = {
		"You've drawn blood from a paladin. Now you get to see what that costs.",
		"Wounded, am I? Good. Now I've a reason to drop the good manners.",
		"Now I'm angry, and the Light is letting me be.",
	},
	["cls.paladin.lowhp.w07.013"] = {
		"If I go down here, let the last thing I did be useful. It nearly is.",
		"Not afraid of the Light's side of the door. Just not ready to walk through it yet.",
	},
	["cls.paladin.lowhp.w07.014"] = {
		"Knees are for prayer, not for you.",
		"Kneeling's nothing new to me; I do it every day. Just never for the likes of you.",
	},
	["cls.paladin.lowhp.w07.015"] = {
		"spits red onto the ground and lifts {g:his|her} weapon again, slower now, but still level.",
		"blinks hard against the dark creeping in at the edge of sight and finds the foe again.",
	},
	["cls.paladin.lowhp.w07.016"] = {
		"You won't be adding me to your ranks. I've other plans for my bones.",
		"Not today. My bones are spoken for, and not by you.",
	},
	["cls.paladin.lowhp.w07.017"] = {
		"If I drop, who keeps them standing? Then I don't drop. Simple.",
		"They're counting on my heals. I can't spend them all on myself. Some, though. Some.",
	},
	["cls.paladin.lowhp.w07.018"] = {
		"Dented plate and a stubborn heart. Try harder.",
		"This plate's seen worse days, and so have I. Come on, then.",
	},
	["cls.paladin.lowhp.w07.019"] = {
		"Mana's thin, blood's thinner. Spend the one to save the other.",
		"Heal now, pride later. A dead paladin protects nobody.",
	},
	["cls.paladin.muse.w07.001"] = {
		"Miles in armor teach a particular kind of patience. The road doesn't care what you swore.",
		"Somewhere around the tenth mile, every oath turns into a matter of feet.",
		"The road is the long part of the oath. Nobody warns you how long.",
	},
	["cls.paladin.muse.w07.002"] = {
		"Some days I reach for the Light the way one reaches for a railing on a dark stair. It has always been there. I still reach carefully.",
		"I have never once found the Light missing. And still, each time, there is that small breath before I ask.",
		"Faith, for me, is mostly the habit of reaching anyway.",
	},
	["cls.paladin.muse.w07.003"] = {
		"When a farmer calls me a hero, something in me sits up and preens. I have learned to tell it to lie back down.",
		"Praise is the one blow my armor doesn't stop. I take it standing, and then I go and pray it off.",
		"Pride never charges. It waits until someone thanks me, then slips in through the visor.",
	},
	["cls.paladin.muse.w07.004"] = {
		"Why a hammer? It needs no whetstone, and it settles arguments in one syllable.",
		"A sword wants the whetstone after every fight. A hammer only wants a stubborn arm.",
		"Swords are for duelists. A hammer is for doors, walls and anything else that won't listen.",
	},
	["cls.paladin.muse.w07.005"] = {
		"goes down on one knee where {g:he|she} stands, head bowed for the space of three breaths, then rises without a word.",
		"stops, touches two fingers to the center of {g:his|her} breastplate, and moves on as if a small account had been settled.",
	},
	["cls.paladin.muse.w07.006"] = {
		"The Light never pushes. It waits like a banked forge, warm whenever I come back to it, and never once dragging me there.",
		"Nothing in the Light ever forces my hand. It only stays lit, and leaves the walking to me.",
	},
	["cls.paladin.muse.w07.007"] = {
		"Wherever I walk, some part of the oath keeps facing the Plaguelands, like a sleeper turned toward a door.",
		"Whatever errand I'm on, the Scourge waits at the far end of every paladin's road. I don't forget it; I just don't hurry it.",
		"Even on the quietest errand, a corner of my mind keeps watch toward Lordaeron.",
	},
	["cls.paladin.muse.w07.008"] = {
		"Swapping one seal for another in the middle of a fight is like changing languages mid-sentence. It took me a long while to stop stammering.",
		"Two seals, two tempers. Learning when to trade one for the other was the first real lesson after the basics.",
	},
	["cls.paladin.muse.w07.009"] = {
		"There's an aura that stings whoever strikes those near me. I don't even have to look. It feels almost unfair, and I've decided I don't mind.",
		"Whoever lays a blade on someone in my circle pays a little for it, and never knows quite why. That aura suits a certain kind of temper.",
	},
	["cls.paladin.muse.w07.010"] = {
		"Some days the best thing I bring to a fight is an aura of calm for whoever is casting behind me.",
		"The aura I like least to explain is the one that keeps a caster steady when someone hits them mid-word. Nobody sees it working. That's the point.",
	},
	["cls.paladin.muse.w07.011"] = {
		"There's a shield I can raise that nothing gets through. I use it rarely; a paladin who can't be touched forgets what the touch costs others.",
		"For a few seconds, nothing in the world can harm me. The temptation in that isn't cowardice. It's pride.",
		"Untouchable for a moment. I'm always relieved when the moment ends; it's not a good place for a paladin to live.",
	},
	["cls.paladin.muse.w07.012"] = {
		"There is a prayer that gives my life so that another's is spared, whole. I've learned it. I keep hoping it stays something I know rather than something I've done.",
		"I know a prayer that spends me entirely so that someone else walks out. Knowing it is easy. Being ready is another matter.",
	},
	["cls.paladin.muse.w07.013"] = {
		"I don't pray over every meal. Some inn stews, though, deserve a blessing for the eater's sake.",
		"The Light isn't for small things, I was taught. Whoever taught me never ate travelers' bread.",
	},
	["cls.paladin.muse.w07.014"] = {
		"The oath is written in plain words. The world it meets is not. Every day I translate, and I'm never certain I got it right.",
		"Protect the weak, it says. It doesn't say who is weak today, or from what. That part I have to work out alone.",
		"The vows fit on one page. The questions they raise could fill a library.",
	},
	["cls.paladin.muse.w07.015"] = {
		"The Alliance is a promise between peoples who don't always like each other. A paladin's oath is a smaller one of the same shape.",
		"Humans and dwarves, gnomes and elves, under one banner. It holds because people keep choosing to hold it. Rather like an oath.",
		"Nobody swears the Alliance into being once. It's sworn again every day, in small ways, by people who could walk away.",
	},
	["cls.paladin.muse.w07.016"] = {
		"Wherever there's a gate, someone has to stand in it. I've never minded being that someone.",
		"Give me a doorway and a reason. I'll hold it all day.",
	},
	["cls.paladin.muse.w07.017"] = {
		"works a cloth over the head of {g:his|her} weapon until the metal gives back a dull, honest gleam.",
		"tests the weight of {g:his|her} weapon in one hand, then the other, as though weighing a question rather than a tool.",
	},
	["cls.paladin.muse.w07.018"] = {
		"Every trainer I've had spoke Uther's name more quietly than any other. I think it's the only name they never say in a hurry.",
		"Ask any old paladin about Uther and watch the voice drop. Not grief exactly. More like walking past a place where something fell.",
		"Uther is the name every trainer says last, and slowest.",
	},
	["cls.paladin.muse.w07.019"] = {
		"A prince of Lordaeron once carried the Light and then threw it away. The trainers tell it as a warning, and they never say which part frightens them most.",
		"Every novice hears of Arthas, who was one of us, and what he became. The lesson isn't that he was wicked. It's that he was certain.",
		"Arthas is the story they tell to novices who are too sure of themselves. I've heard it more than once.",
	},
	["cls.paladin.muse.w07.020"] = {
		"The Argent Dawn and the Scarlet Crusade both raise their hands against the Scourge. The difference, an old paladin told me, is what they do when the hand comes down on the living.",
		"Two heirs of the old order, they say: one keeps the oath, one keeps only the anger. Anger is easier to keep. That's what worries me.",
	},
	["cls.paladin.muse.w07.021"] = {
		"Late in a long day, the armor stops feeling like protection and starts feeling like luggage. I keep it on anyway. Habits like that are what keep people alive.",
		"There's an hour in every long march when the armor weighs exactly as much as it is. That's the hour the oath earns its keep.",
		"Long days make a cart horse of every paladin. The armor stays on regardless; that's the job.",
	},
	["cls.paladin.muse.w07.022"] = {
		"Walk forward, help where it's needed, apologize where you got it wrong. Most of the training, honestly.",
		"Help first, explain later, apologize if needed. The trainers dressed it up in longer words.",
	},
	["cls.paladin.muse.w07.023"] = {
		"The walking dead flinch from the Light like a bruise from a thumb. Not a lofty way to put it, but I've never found a truer one.",
		"Whatever animates the Scourge, the Light presses on it like a finger on a sore. I've seen them shrink back. It is not pretty, and I'm not sorry.",
		"The Light doesn't hate the Scourge. It simply cannot share a space with it, and the Scourge is the one that has to give.",
	},
	["cls.paladin.muse.w07.024"] = {
		"Since I learned to sense the dead that walk, there's a faint itch at the back of my mind in certain places. I've stopped asking places to be innocent.",
		"There's a sense I didn't have before: a cold prickle when something dead is moving nearby. Some days I'd give it back.",
	},
	["cls.paladin.muse.w07.025"] = {
		"Exorcism. It sounds grander than it feels. Mostly it feels like opening a window in a room that's been shut too long.",
		"The trainers made Exorcism sound like thunder. In my hands it's more like a door kicked open on something that should have left long ago.",
	},
	["cls.paladin.muse.w07.026"] = {
		"Hammer of Justice. I didn't pick the name, but I'll admit it says what it does.",
		"There's a hammer of light I can throw that stops a foe cold. Justice, the trainers call it. A pause, I'd say, long enough for justice to arrive.",
	},
	["cls.paladin.muse.w07.027"] = {
		"I try to deliver a judgement the way a fair judge speaks: once, clearly, and without enjoying it.",
		"Every judgement I throw, I try to throw without pleasure. Anger makes for crooked verdicts.",
	},
	["cls.paladin.muse.w07.028"] = {
		"The Light works through people who lose their gloves and argue with innkeepers. People like me, then. I find that a great comfort.",
		"Whatever the Light sees in me, it isn't perfection. That's either humbling or a relief. Most days it's both.",
	},
	["cls.paladin.muse.w07.029"] = {
		"A shield is the most generous thing a soldier carries. Half of it is always for someone else.",
		"I've never thought of a shield as mine alone. Half of it belongs to whoever is standing behind me.",
		"Raise a shield and you've made a roof for two. The arithmetic of it has always pleased me.",
	},
	["cls.paladin.muse.w07.030"] = {
		"looks over {g:his|her} shoulder now and then, the old habit of someone used to having people to guard.",
		"keeps half a step ahead of nobody in particular, out of habit, in the place a shield-bearer walks.",
	},
	["cls.paladin.muse.w07.031"] = {
		"I don't think the Light loves me. I think it trusts me, a little, provisionally. That's harder to live up to.",
		"Love would be easy. What I feel from the Light is closer to trust, and trust can be lost.",
		"The Light's trust is like an old horse's: slow to give, and worth everything once it's there.",
	},
	["cls.paladin.muse.w07.032"] = {
		"The hardest prayer is the one at the end of the day. Not for doubt. For sheer weariness: I start, and wake with the words half said.",
		"My last prayer of the day tends to trail off halfway. I like to think the Light finishes the sentence.",
	},
	["cls.paladin.muse.w07.033"] = {
		"The same hand mends and breaks. I used to find that strange. Now I think it's the only honest arrangement.",
		"These hands close wounds and open skulls, sometimes within the same breath. A paladin who can't hold both should take up another trade.",
		"Mending and breaking come out of the same hand, and the hand doesn't get to pick. I do.",
	},
	["cls.paladin.muse.w07.034"] = {
		"I could forget my own name in a fever and still say the oath. The trainers made sure of that.",
		"The words of the oath sit deeper than memory. I've caught myself mouthing them half asleep.",
	},
	["cls.paladin.muse.w07.035"] = {
		"What if I'm wrong about someone, and the Light lets me be wrong? That's the thought that keeps me awake.",
		"The Light will not stop my hand if I strike the wrong person. It trusts me to know. Some days that trust is a weight on the chest.",
		"The Light would lend me strength to strike the wrong person as readily as the right one. Telling them apart is my share of the work.",
	},
	["cls.paladin.muse.w07.036"] = {
		"Bread, oil for the straps, candle stubs, patience. In order of how quickly I run out.",
		"Things I'm always short of: strap oil, bread and patience. The Light is never the problem.",
		"My pack, by weight: armor oil, bread, candle ends, and a good deal of hope.",
	},
	["cls.paladin.muse.w07.037"] = {
		"Stormwind's great cathedral was built for prayers far larger than mine. I trust there's still room for mine somewhere up in the vaulting.",
		"The cathedral in Stormwind hears a great many prayers. I like to think the ones said on the road arrive just as well, if a little muddier.",
	},
	["cls.paladin.muse.w07.038"] = {
		"Ironforge's paladins, I've noticed, talk about the Light like miners about a seam: something you follow patiently and never waste.",
		"Those who train in Ironforge's Hall of Mysteries speak of the Light the way miners speak of a good vein of ore: worked for, followed with patience, never squandered.",
	},
	["cls.paladin.muse.w07.039"] = {
		"A dwarf with a hammer is no news. A dwarf with a hammer and the Light behind it is a different conversation.",
		"Hammers run in the blood of my people. The Light only told me where to aim mine.",
	},
	["cls.paladin.muse.w07.040"] = {
		"They call it Light's Hope, the Argent Dawn's chapel in the Plaguelands. A name like that is either very brave or very stubborn. Probably both.",
		"In the Plaguelands, I'm told, there's a chapel the Scourge has never managed to take. I keep it in mind the way sailors keep a beacon on the shore.",
	},
	["cls.paladin.muse.w07.041"] = {
		"The Light belongs to priests and paladins alike, but we use it differently. A priest kneels beside the wound; I stand in front of whatever made it.",
		"Priests carry the Light to the sickbed. I carry it to the doorway, between the sickbed and whatever is coming.",
	},
	["cls.paladin.muse.w07.042"] = {
		"murmurs a few words under {g:his|her} breath, and the faint shimmer of the aura about {g:him|her} shifts to another hue.",
		"lets one aura fall away and takes up another, the change visible only as a brief ripple in the air around {g:him|her}.",
	},
	["cls.paladin.muse.w07.043"] = {
		"Half of being a paladin is waiting: by a sickbed, at a gate, outside a door while someone decides. The trainers never taught us to wait. They should have.",
		"I was taught to strike, to mend, to bless. Nobody taught me to wait, and that's what the oath asks of me most.",
	},
	["cls.paladin.muse.w07.044"] = {
		"The Light's in a good humor. I can tell; my knees have stopped complaining.",
		"Feels like a good day for the Light. Or maybe I just slept on something softer than a rock.",
		"My shoulders don't ache and nobody needs mending. The Light must be showing off.",
	},
	["cls.paladin.muse.w07.045"] = {
		"Every one of the risen dead was someone once. I try to remember that right up to the moment I can't afford to.",
		"The Scourge is made of farmers and soldiers and somebody's neighbors. The kindest thing I can give them is an end. I wish it felt kinder.",
		"I try to give the dead an end and nothing crueler. They belonged to someone once; that's worth the care.",
	},
	["cls.paladin.muse.w07.046"] = {
		"Demons are simpler than the dead, in one respect. There was never anyone inside them to grieve.",
		"With the dead I hesitate, remembering who they were. With demons I don't. Nothing in them ever was anyone.",
	},
	["cls.paladin.muse.w07.047"] = {
		"The oath asks me to protect, not to hate. I keep that in mind whenever someone in a tavern starts in on the Horde.",
		"Nothing in the vows mentions the Horde. Protect the innocent, they say. The innocent come in more shapes than people expect.",
	},
	["cls.paladin.muse.w07.048"] = {
		"Let them come. I've got a hammer, a prayer, and nowhere better to be.",
		"A good weapon, a sound prayer and no pressing engagements. Let trouble find me.",
		"Hammer ready, prayers said, schedule wide open. Trouble's welcome to try.",
	},
	["cls.paladin.muse.w07.049"] = {
		"Every village that still lights its lamps is a small argument for the Light. I collect them.",
		"A lit window, a fence mended, a child playing in the road. I count those the way others count coin.",
		"Smoke from a chimney, washing hung out to dry. Small proofs the dark hasn't won, and I keep every one.",
	},
	["cls.paladin.muse.w07.050"] = {
		"rolls a stiff shoulder under the weight of the armor, with the patient grimace of someone used to carrying more than {g:his|her} share.",
		"eases a gauntlet off, flexes the cramped fingers one by one, and pulls it back on with a resigned sigh.",
	},
	["cls.paladin.muse.w07.051"] = {
		"The hardest darkness to stand against is the one that speaks in my own voice and tells me it would be easier to stop caring.",
		"Not every enemy wears rot or horns. The one I watch most closely talks in my own voice and tells me I've done enough.",
		"The enemy I fear most never attacks. It only suggests, kindly, that I set the oath down for a while.",
	},
	["cls.paladin.muse.w07.052"] = {
		"Mercy and softness aren't the same thing. Sometimes the merciful act is the hard one, done quickly.",
		"I learned early that mercy can wear a gauntlet. Kindness that won't act isn't kindness; it's only watching.",
		"Soft hands are not the same as merciful ones. Mercy sometimes has to be quick and heavy.",
	},
	["cls.paladin.muse.w07.053"] = {
		"Every new prayer the trainers teach me comes with the same warning: it's lent, not given. I've started to hear it as a kindness.",
		"Nothing the Light gives me is mine outright. It's all on loan, and the interest is paid in work.",
	},
	["cls.paladin.muse.w07.054"] = {
		"I've been asked whether the Light ever says no. It does. Usually when I ask it for an easier road.",
		"Does the Light ever refuse me? Only when I ask for a shortcut.",
		"The Light grants most of what I ask. Never shortcuts. I've stopped asking for those.",
	},
	["cls.paladin.muse.w07.055"] = {
		"The oath weighs the same whether anyone is watching or not. It's the unwatched hours that prove it.",
		"When nobody's looking, the oath is the only witness left. It makes for a strict audience.",
	},
	["cls.paladin.muse.w07.056"] = {
		"checks each buckle of {g:his|her} armor in turn, from the collar down, with the unhurried care of a long-kept habit.",
		"lifts each arm in turn to listen to the armor, the way a smith listens to a bell, and seems satisfied with what {g:he|she} hears.",
	},
	["cls.paladin.muse.w07.057"] = {
		"Stormwind's throne sits empty while a regent keeps the chair warm. The oath doesn't depend on who wears the crown. I remind myself of that more than I'd like.",
		"A missing king, a regent, rumors at every inn. An oath sworn to the Light, at least, isn't subject to politics.",
		"Kings go missing, regents sign papers, rumors fly. The Light keeps its own counsel, and the oath goes on regardless.",
	},
	["cls.paladin.muse.w07.058"] = {
		"People look at a paladin and borrow some steadiness. I've learned to keep my worries behind the visor, where they can't spill.",
		"Whatever I feel, my face stays calm while people are watching. They borrow courage from it. I settle my own accounts later, alone.",
		"When people are frightened, they look at the paladin. So the paladin looks calm, whatever is happening underneath.",
	},
	["cls.paladin.muse.w07.059"] = {
		"If you're going to pray, pray standing. The Light isn't impressed by bruised knees.",
		"Kneel if you like, but get up quickly. The Light has more use for you upright.",
		"The Light hears you just as well on your feet. Better, maybe; you're closer to the work.",
	},
	["cls.paladin.muse.w07.060"] = {
		"There's a fury of the Light whose whole message to a crowd of enemies is 'look at me'. Subtle, it is not.",
		"There's a prayer whose only purpose is to make every enemy angry at me instead of at my friends. The trainers called it noble. My bruises call it something else.",
	},
	["cls.paladin.muse.w07.061"] = {
		"I can draw poison out of a wound and sickness out of the blood. It's the least glamorous thing I know, and I'd give up half the rest before it.",
		"Purifying a fever earns no songs. It's still the prayer I'd keep if I had to choose just one.",
	},
	["cls.paladin.muse.w07.062"] = {
		"The warhorse came from the Light and from a long trial, and still it looks at me the way any horse looks at its rider: when's supper?",
		"A charger called up by prayer, and it still chews the bit and sulks like any other. Holy, apparently, does not mean dignified.",
	},
	["cls.paladin.muse.w07.063"] = {
		"The first weeks in plate I moved like a cupboard with opinions. Now I forget it's there, which is either progress or a danger.",
		"Mail taught me to carry weight. Plate taught me to carry it gracefully, or at least to stop falling over.",
	},
	["cls.paladin.muse.w07.064"] = {
		"In crypts and mines the Light seems to burn closer to the skin, as if it, too, prefers to go where it's needed.",
		"The darker the place, the nearer the Light sits. I've stopped finding that strange.",
		"Down in the deep dark, the Light feels less like a lamp and more like a hand on my shoulder.",
	},
	["cls.paladin.muse.w07.065"] = {
		"A paladin's best tool? A clean cloth. For wounds, for weapons, for the faces of the frightened.",
		"Carry a clean cloth. It binds a cut, wipes a blade and dries tears, and none of those can wait for a prayer.",
	},
	["cls.paladin.muse.w07.066"] = {
		"Prayer isn't asking, mostly. It's tuning: like a smith tapping a blade to hear whether it rings true.",
		"When I pray I'm not listing wishes. I'm checking, the way one tests a rope, that I'm still tied to something solid.",
		"I don't pray to be heard. I pray to hear whether I'm still standing on something true.",
	},
	["cls.paladin.muse.w07.067"] = {
		"There's a loneliness in being the one others lean on. Nobody thinks to ask who you lean on.",
		"Everyone leans on the paladin. The paladin leans on the Light, and on the days the Light is quiet, on plain stubbornness.",
		"Being everyone's support is an honor and a loneliness, often in the same hour.",
	},
	["cls.paladin.muse.w07.068"] = {
		"I'm not judging you. I'm just a paladin standing nearby with a disappointed face. It's different.",
		"People always assume I'm judging them. Mostly I'm wondering where I left my other glove.",
		"That look isn't judgment. It's my face. It came this way.",
	},
	["cls.paladin.muse.w07.069"] = {
		"The Light was here before the Silver Hand, before the first king, before anyone thought to give it a name. My oath is a single stitch in a very old cloth.",
		"Orders rise and break; the Light outlasts them all. I'm a short sentence in a long book, and content to be one.",
		"The order is young. The Light is not. I try to keep the two in proportion.",
	},
	["cls.paladin.muse.w07.070"] = {
		"lifts {g:his|her} face for a moment, eyes closed, as though listening for something only {g:he|she} can hear, then nods.",
		"goes still between one step and the next, head tilted, then breathes out and smiles faintly, as if an answer had come.",
	},
	["cls.paladin.muse.w07.071"] = {
		"There's a prayer that sends the dead running. Watching them flee is the strangest sight: fear on a face that shouldn't be able to show it.",
		"The dead remember fear, it seems, even when they've forgotten everything else. That one prayer proves it.",
	},
	["cls.paladin.muse.w07.072"] = {
		"Some seals strike, some mend as they strike. With the Seal of Light every blow is a small prayer for my own bruises. Practical, the Light, when it wants to be.",
		"With the right seal, every swing gives a little back. I like that the Light thought of the arm doing the swinging.",
	},
	["cls.paladin.muse.w07.073"] = {
		"I won't swear to win. I'll swear to stay. That one I can keep.",
		"I never promise victory. I promise to be here at the end, one way or another.",
		"I can't promise to win. Staying until the end, though, is fully within my power.",
	},
	["cls.paladin.muse.w07.074"] = {
		"Between one town and the next there's always someone in need of a hand: a cart in a ditch, a lost goat. I think the Light leaves them there on purpose.",
		"No road is ever empty for a paladin. There's always a wheel stuck in the mud along it, and somehow it's always mine to push.",
		"The Light, I suspect, puts carts in ditches along my path just to keep my arms in practice.",
	},
	["cls.paladin.muse.w07.075"] = {
		"The oath sits just under the breastbone. On bad days it's a stone; on good days a coal.",
		"I carry the oath somewhere beneath the breastplate. Some days it presses like a stone, some days it warms like an ember.",
	},
	["cls.paladin.muse.w07.076"] = {
		"Every village thinks a paladin can fix anything. A well, a cow, a marriage: all of them in want of a blessing, all on the same day.",
		"People ask a paladin to bless the strangest things. Wells, I understand. Boots, I'm less sure about. I did it anyway.",
		"A paladin can be asked to bless anything. Wells, goats, a nervous groom. I draw the line at nothing, apparently.",
	},
	["cls.paladin.muse.w07.077"] = {
		"The soldiers at the watchposts straighten up when a paladin passes. I try to straighten up for them in turn; they've stood there longer.",
		"Guards nod at my armor like an old friend. I nod back at their tired eyes. We both know who's really keeping watch.",
		"Every guard at every post knows the weight of a long watch. I salute them first; they've earned it.",
	},
	["cls.paladin.muse.w07.078"] = {
		"There's a hammer I can call only when the foe is nearly finished. The Light, it seems, dislikes long goodbyes.",
		"That hammer comes only at the end, when a foe is already failing. Mercy and wrath in a single throw.",
	},
	["cls.paladin.muse.w07.079"] = {
		"What if the Light is simply what good people feel when they're brave, and nothing more? I've asked it. It hasn't argued. Either that's an answer, or the lack of one.",
		"Some days I suspect the Light is only courage given a beautiful name. Then it closes a wound under my hand, and the suspicion goes quiet for a while.",
		"Is the Light real, or only what brave people feel? I've decided it matters little on a day when the wound still closes.",
	},
	["cls.paladin.muse.w07.080"] = {
		"lays a hand on the weapon at {g:his|her} side and leaves it there a while, as one rests a hand on the head of an old dog.",
		"taps the grip of {g:his|her} weapon twice, absently, the way one pats a horse before a long road.",
	},
	["cls.paladin.muse.w07.081"] = {
		"An old paladin once told me to trust the oaths sworn in a shaking voice, and to watch the steady ones.",
		"Watch the ones who swear without a tremor, the old paladins say. An oath that costs nothing to say costs little to break.",
	},
	["cls.paladin.muse.w07.082"] = {
		"The Light can close a wound. It can't close a grave. I learned the difference the way everyone does.",
		"There's a limit to mending, and it ends at the edge of a grave. Knowing exactly where that edge lies is the hardest thing the Light ever taught me.",
	},
	["cls.paladin.muse.w07.083"] = {
		"Let it be said a paladin came through, and things were a little better after.",
		"When I'm gone from here, I'd like the place to be a touch safer than I found it. That's all the legacy I want.",
		"Leave things better than you found them. If the Light asks anything simpler of me, I haven't heard it.",
	},
	["cls.paladin.pray.w07.001"] = {
		"Light, keep me humble when I win and honest when I lose. The rest I'll manage.",
		"Light, let the shield be the first thing I raise and the hammer the last.",
	},
	["cls.paladin.quest_complete.w07.001"] = {
		"The oath doesn't weigh a task by its size. It only asks whether I finished it.",
		"Small job or great one, the vows judge them alike: done, or not done.",
		"No errand is beneath the oath. I've stopped expecting it to tell me which ones matter.",
	},
	["cls.paladin.quest_complete.w07.002"] = {
		"Done. If more trouble comes, send for the nearest paladin. It'll probably be me.",
		"Finished. Should anything else crawl out of the woodwork, you know where to find a hammer.",
		"That's handled. Bolt your door anyway; good habits outlast good luck.",
	},
	["cls.paladin.quest_complete.w07.003"] = {
		"lets out a slow breath and unbuckles {g:his|her} gauntlets, as if setting the task down along with them.",
		"loosens the strap at {g:his|her} collar with a small sigh, the errand finished and the armor suddenly heavier for it.",
		"taps the breastplate once with a knuckle, a small private signal that the matter is closed.",
	},
	["cls.paladin.quest_complete.w07.004"] = {
		"They thanked me as if I'd done something remarkable. I did something necessary. The difference matters to me.",
		"Gratitude is kind, but I'd rather they forgot me and remembered that help came.",
		"If they remember the help and forget the helper, I've done it right.",
	},
	["cls.paladin.quest_complete.w07.005"] = {
		"Done. I'd say it was nothing, but my feet would call me a liar.",
		"There. All it cost was a day and most of my patience.",
		"Finished. Next time, perhaps a task with a little less walking uphill.",
	},
	["cls.paladin.quest_complete.w07.006"] = {
		"I don't hand this to the Light as a gift; the Light has no need of my errands. I do them because someone else does.",
		"The Light didn't need this done. The people here did. That's why it matters to the Light.",
		"Whatever the Light wants of me, I suspect it looks a lot like this: a small trouble ended for someone who couldn't end it alone.",
	},
	["cls.paladin.quest_complete.w07.007"] = {
		"clasps the hand of the one who gave the task, firmly, the way a pact is sealed.",
		"meets the gaze of whoever asked and holds it a moment, as if to make sure the matter is truly settled.",
		"gives a short nod, the kind that closes a ledger, and turns {g:his|her} attention to whatever comes next.",
	},
	["cls.paladin.quest_complete.w07.008"] = {
		"I did what was asked. I'd like to believe what was asked was just. Usually it was. Usually.",
		"Sometimes I take a task on trust and only wonder afterward whose side it served. The oath asks for better than that.",
		"Done. Now comes the part no one pays for: deciding whether it was right.",
	},
	["cls.paladin.quest_complete.w07.009"] = {
		"There. Next time, ask before it gets this bad. Asking is not a weakness.",
		"Done. And don't wait so long to call for help again; pride makes a poor sentry.",
		"Finished. You did right to ask. Plenty don't, and pay for it.",
	},
	["cls.paladin.quest_complete.w07.010"] = {
		"There's a small warmth after a task well done. I used to think it was pride. Now I think it's the Light, saying nothing, nodding.",
		"A good deed finished leaves a warmth behind the ribs. Pride burns hotter; this is gentler, and it lasts longer.",
		"That small glow after a thing well done isn't vanity, I've decided. Vanity wants an audience. This is content with none.",
	},
	["cls.paladin.quest_complete.w07.011"] = {
		"One more thread tied off. The road unspools the rest.",
		"One loose end of the world tied off. There are plenty more; I've got the fingers for it.",
		"Tied off and finished. Somewhere ahead, the next loose end is already waiting.",
	},
	["cls.paladin.quest_complete.w07.012"] = {
		"counts the reward once, carefully, and sets a share aside in a separate pouch, the way some people give without ever saying so.",
		"weighs the purse in {g:his|her} palm, then divides it with the quiet precision of someone who knows exactly where each coin will go.",
	},
	["cls.paladin.quest_complete.w07.013"] = {
		"Glad that's sorted. I could eat a whole loaf, crust and all.",
		"Well, that's settled. All this righteousness has given me an appetite.",
		"Done. Righteous work makes for a hungry paladin.",
	},
	["cls.paladin.quest_complete.w07.014"] = {
		"Someone will pass this way a little safer now and never learn why. I prefer it like that.",
		"The best guard is the one no one notices: the danger simply isn't there anymore.",
		"No one will ever know this trouble existed. That's how I know it was handled well.",
	},
	["cls.paladin.quest_complete.w07.015"] = {
		"Every finished task ends the same way: a nod, a coin, and the next road. Some days I wish one of them asked me to stay.",
		"Help given, thanks received, and off again. A paladin's life has few long goodbyes.",
	},
	["cls.paladin.quest_complete.w07.016"] = {
		"It is done. May the rest of your days be quieter than this one.",
		"The matter is closed. I hope you never need a paladin again; I mean that kindly.",
		"Finished. May your next worry be a small one.",
	},
	["cls.paladin.quest_complete.w07.017"] = {
		"I began this task thinking I knew the answer. I leave with fewer certainties and better questions. The trainers would approve.",
		"Every errand corrects something I thought I knew. This one corrected my patience.",
		"No trainer could have taught me what this one did: how often my first guess is wrong.",
	},
	["cls.paladin.quest_complete.w07.018"] = {
		"touches the grip of {g:his|her} weapon and bows {g:his|her} head for a breath, a soldier's thanks given to something unseen.",
		"murmurs a single word under {g:his|her} breath, too low to catch, and the faint glow at {g:his|her} shoulders brightens and fades.",
		"stands straighter for a moment, as though a debt had been marked paid in a ledger only {g:he|she} can see.",
	},
	["cls.paladin.quest_complete.w07.019"] = {
		"The task is done and my shoulders know it. Armor gets heavier at the end of things, never at the start.",
		"Funny how the armor weighs nothing on the way out and a ton on the way back.",
		"Every errand ends with the same discovery: I've been carrying this armor the whole time.",
	},
	["cls.paladin.quest_complete.w07.020"] = {
		"The old paladins of the Silver Hand were known for this, I'm told: not the great battles, but the help that came when asked. I'd like to be known for it too.",
		"Before the order broke, people say, a farmer could ask a paladin for help and count on it. I try to keep that true, one task after another.",
	},
	["cls.paladin.quest_complete.w07.021"] = {
		"Another wrong put right. The Light and I make a fair team.",
		"One more thing set straight. I'll take that over a medal any day.",
		"Righted. That feeling never gets old.",
	},
	["cls.paladin.quest_complete.w07.022"] = {
		"I wonder sometimes whether the Light keeps a tally. If it does, I hope it rounds up.",
		"If the Light is counting good deeds, I'd like to think it's generous with fractions.",
	},
	["cls.paladin.quest_progress.w07.001"] = {
		"One piece of it done. A vow isn't kept all at once; it's kept in pieces like this.",
		"Halfway there, give or take. I'll finish it; I said I would.",
		"A step along. The rest is only more steps, and I have plenty of those left in me.",
	},
	["cls.paladin.quest_progress.w07.002"] = {
		"Everything that was asked is done. Now someone deserves to hear it.",
		"All of it finished. Better go and tell them before they start to worry.",
		"That completes it. The walk back is the part I enjoy.",
	},
	["cls.paladin.quest_progress.w07.003"] = {
		"pauses to weigh how far the task has come, nods to {g:himself|herself}, and presses on.",
		"takes stock of what's done so far, then squares {g:his|her} shoulders for the rest.",
		"taps a thumb against the breastplate, a small mark of satisfaction, then looks to what remains.",
	},
	["cls.paladin.reputation_change.w07.001"] = {
		"They look on me a bit more kindly now. A paladin's good name is a shield of sorts; I mean to keep it bright.",
		"They think better of me now. I'll have to be careful: good opinion is easy to lean on and hard to deserve.",
		"A little more trust earned. I'll carry it as carefully as the oath, since it is part of it.",
	},
	["cls.paladin.rez.w07.001"] = {
		"Up again, armor and all. The oath didn't lapse while I was gone; it simply waited, as oaths do.",
		"Death let go of me. I'll take it as the Light's way of saying the work isn't finished, and get on with it.",
	},
	["cls.paladin.rezother.w07.001"] = {
		"Wake slowly. The Light has had a word with death, and death has stepped aside.",
		"Open your eyes. Death let go sooner than it wanted to.",
		"For a moment you were gone, and now you're here. That's all that counts.",
	},
	["cls.paladin.rezother.w07.002"] = {
		"The long words of Redemption, and the whole time I'm listening for the first breath. It always comes later than I'd like.",
		"Redemption is slow. Ten heartbeats of words over someone who can't hear them, and then they can.",
	},
	["cls.paladin.rezother.w07.003"] = {
		"kneels beside the body and holds a hand above the still chest, speaking the long words until a breath stirs beneath the palm.",
		"bows over the body and calls on the Light in a low, unbroken voice, as steady as a hand on a rope.",
	},
	["cls.paladin.rezother.w07.004"] = {
		"Up. Dying doesn't excuse you from the rest of the walk.",
		"There you are. Death's poor company anyway; I hear it never talks.",
	},
	["cls.paladin.rezother.w07.005"] = {
		"I never ask where they were. I'm not sure the Light would want me to know.",
		"The first look in their eyes is always far away. I wait for it to find this shore again before I speak.",
	},
	["cls.paladin.rezother.w07.006"] = {
		"On your feet. I'm not leaving you lying here.",
		"Get up. The oath doesn't end at the edge of a grave, mine or yours.",
		"Rise and stand by me. No one stays on the ground while there's strength in my arms.",
	},
	["cls.paladin.rezother.w07.007"] = {
		"Slowly. Your first breath will hurt. The second one less.",
		"Lie still a moment. Your body is still catching up with the news.",
		"Don't try to talk yet. Breathe first; the words can wait.",
	},
	["cls.paladin.rezother.w07.008"] = {
		"The Light gives back the life, not the strength. That part comes with food and a long sit.",
		"A raised body is a weak body for a while. I'll stay within reach until it can keep pace.",
	},
	["cls.paladin.rezother.w07.009"] = {
		"By the Light, rise. Not everything that falls has to stay down.",
		"Rise. The Light has already said yes; your body only has to agree.",
		"In the Light's name: breathe.",
	},
	["cls.paladin.rezother.w07.010"] = {
		"stays kneeling a moment after the eyes open, as if making sure the breath intends to stay.",
		"lets out a long breath of {g:his|her} own once the other body stirs, and only then gets up from the ground.",
	},
	["cls.paladin.thanks.w07.001"] = {
		"Thank you. I'll remember it the next time you're the one in need of a shield.",
		"My thanks. Consider it a debt; paladins pay theirs.",
	},
	["cls.paladin.thanks.w07.002"] = {
		"Much obliged. I'd bow, but in this armor it becomes a whole production.",
		"Thank you kindly. I'd bless you for it, but I suspect you'd rather have a drink.",
	},
	["cls.paladin.threat.w07.001"] = {
		"I've sworn to protect the innocent. You don't look like you're on that list.",
		"My oath covers everyone here but you. Step aside.",
	},
	["cls.paladin.threat.w07.002"] = {
		"I'm carrying a great deal of Light just now. Don't give me a reason to share it.",
		"There's a seal waiting for you. Walk away and it can stay unspent.",
	},
	["cls.paladin.threat.w07.003"] = {
		"You'll notice I'm wearing a great deal of armor. You'll notice you're not. Think about it.",
		"I'm wearing half a smithy and you're wearing an attitude. Only one of those stops blades.",
		"I'm very hard to hurt and very easy to annoy. You're working on the second.",
	},
	["cls.paladin.threat.w07.004"] = {
		"lets a slow glow gather along {g:his|her} weapon and says nothing at all, which is somehow worse.",
		"rests a hand on the weapon and holds the stare, a faint warmth rising off the armor like heat from a forge.",
	},
	["cls.paladin.threat.w07.005"] = {
		"I know what you are. And I know exactly what to do about it.",
		"Dead thing, I've a whole oath devoted to the likes of you.",
		"Lie back down while you still can. I won't ask twice.",
	},
	["cls.paladin.threat.w07.006"] = {
		"One more step and I'll knock that idea right out of your head.",
		"Try it. I can stop you mid-stride, and you'll never work out how.",
	},
	["cls.paladin.victory.w07.001"] = {
		"Breath first. The prayer of thanks can wait until my lungs agree to it.",
		"Let the heart slow down before the thanks. The Light won't mind the wait.",
	},
	["cls.paladin.victory.w07.002"] = {
		"It's done. The Light was steady when I wasn't.",
		"Over. Every time my arm faltered, the Light didn't.",
		"Done. I swung; the Light steered.",
	},
	["cls.paladin.victory.w07.003"] = {
		"kneels briefly by the fallen foe and closes a hand over {g:his|her} own heart, as one does at a graveside.",
		"makes a small sign over the fallen, the same short gesture whether it was a beast or a brigand.",
	},
	["cls.paladin.victory.w07.004"] = {
		"The Light did the heavy lifting. I'll take credit for the footwork.",
		"Fine teamwork. The Light handled the miracles; I handled the bruises.",
	},
	["cls.paladin.victory.w07.005"] = {
		"I asked for strength, and it came. I never asked whether the foe deserved what it brought.",
		"The Light answered. It always does. What I wonder is whether it ever winces.",
	},
	["cls.paladin.victory.w07.006"] = {
		"One less danger for the next traveler. That's all the reward I need.",
		"Someone will pass here safely tomorrow and never know why. Good.",
	},
	["cls.paladin.victory.w07.007"] = {
		"loosens the collar of {g:his|her} armor with one finger and lets the cooler air in, slowly.",
		"lifts {g:his|her} face for a moment, eyes closed, as the faint glow about {g:him|her} drains away.",
	},
	["cls.paladin.victory.w07.008"] = {
		"Light, take what was good in it, if there was any.",
		"Light, judge kindly what's left. I couldn't afford to.",
	},
	["cls.paladin.victory.w07.009"] = {
		"Judged too early again. Next time, let the seal bite first.",
		"Too much mana spent too soon. The Light is generous; my reserves aren't.",
	},
	["cls.paladin.victory.w07.010"] = {
		"Everyone still on their feet? Good. Show me who's bleeding.",
		"Sound off. Anyone hurt, come here before you sit down.",
		"Line up, wounded first. The Light's not done working yet.",
	},
	["cls.paladin.victory.w07.011"] = {
		"It fought like it had something to live for. Maybe it did.",
		"There's always a moment, after, when I wonder what it was defending.",
	},
	["cls.paladin.victory.w07.012"] = {
		"Case closed. The Light presided; I only read out the sentence.",
		"Sentence carried out. Court is adjourned.",
		"Sentence served. No appeals today.",
	},
	["cls.paladin.victory.w07.013"] = {
		"raises an open hand, and the last of the light drifts from the palm like warm dust in a sunbeam.",
		"presses the knuckles of one gauntlet to {g:his|her} lips, a brief and private thanks.",
	},
	["cls.paladin.victory.w07.014"] = {
		"Another one for the list of things that didn't listen to a paladin.",
		"That's what comes of ignoring a person in shining armor. Someone should put it on a sign.",
	},
	["cls.paladin.victory.w07.015"] = {
		"My hands are shaking. Let them. They've earned it.",
		"The tremor always comes after, never during. The Light is considerate that way.",
		"Steady, hands. You did your part.",
	},
	["cls.paladin.victory.w07.016"] = {
		"There. Now to find somewhere to sit that isn't covered in whatever that was.",
		"Done. Please let there be water nearby; I've sweated half a river in this armor.",
	},
	["cls.paladin.victory.w07.017"] = {
		"Rest now. Properly, this time.",
		"Sleep. Nobody has the right to wake you again.",
		"There. Whoever you were, you're at peace now.",
	},
	["cls.paladin.victory.w07.018"] = {
		"That one had a face once. Perhaps a name someone still says. I hope the Light finds them both.",
		"The dead don't choose to walk. That's what makes ending them so hard to feel good about.",
	},
	["cls.paladin.victory.w07.019"] = {
		"Go home to whatever pit made you, and tell it a paladin sent you.",
		"One fewer demon in the world. The world will hardly notice, and that's how it should be.",
	},
	["cls.paladin.victory.w07.020"] = {
		"looks slowly around, as a sentry does, before letting {g:his|her} weapon drop to {g:his|her} side.",
		"turns a full circle where {g:he|she} stands, watchful, and only then lets {g:his|her} shoulders fall.",
	},
	["cls.paladin.victory.w07.021"] = {
		"The warmth is leaving now. It always goes a little sooner than I'd like.",
		"That glow in my chest fades slowly after a fight, like a hearth after the guests have gone.",
	},
	["cls.paladin.victory.w07.022"] = {
		"The Light thanks you for your participation.",
		"On behalf of the Light, thank you for the visit. Please don't repeat it.",
		"The Light wishes you better luck in whatever comes next.",
	},
	["cls.paladin.victory.w07.023"] = {
		"Someone has to remember that this was a life. Might as well be the one who ended it.",
		"It's easy to forget the foe was alive a moment ago. I try not to make it easy.",
	},
	["cls.paladin.victory.w07.024"] = {
		"On my feet, oath intact. That's a good day's work.",
		"Oath kept, foe down, and nothing broken that won't mend.",
	},
	["cls.paladin.victory.w07.025"] = {
		"murmurs a short prayer over the fallen, the words too low for anyone else to catch.",
		"touches the grip of {g:his|her} weapon to {g:his|her} brow in a small, formal salute to the fallen.",
	},
	["cls.paladin.victory.w07.026"] = {
		"Bruised ribs, a sore wrist, a dent somewhere in the armor. Small change. I'll pay it.",
		"The body keeps a ledger: a bruise here, a wrench there. I'll settle up at the next fire.",
	},
	["cls.paladin.victory.w07.027"] = {
		"Well fought, all of you. I'd bless the lot of you if I had the mana left.",
		"Fine work. Remind me to light a candle for this group.",
	},
	["cls.paladin.victory.w07.028"] = {
		"That felt good. Too good. Careful; pride wears armor too.",
		"A little glow of satisfaction. I'll let it go before it turns into something worse.",
	},
	["cls.paladin.victory.w07.029"] = {
		"Not my victory. I only carried it here.",
		"The Light won this. I merely held the door.",
		"I take the bruises; the Light takes the credit. A fair trade.",
	},
	["cls.paladin.victory.w07.030"] = {
		"Plate saves lives, but it doesn't spare the shoulders. Mine will be complaining for hours.",
		"The plate took every blow it was meant to. My back took the plate.",
	},
	["cls.paladin.victory.w07.031"] = {
		"lets the weapon fall to {g:his|her} side, and for a moment the air around {g:him|her} hums with a fading brightness.",
		"straightens slowly, and the last thread of light slides off {g:his|her} armor like water off slate.",
	},
	["cls.paladin.victory.w07.032"] = {
		"That's earned me a hot meal. The Light and I are agreed on that much.",
		"Virtue is its own reward, I'm told. I'd still like some bread.",
	},
	["cls.paladin.victory.w07.033"] = {
		"I never feel holy after. Only tired, and grateful, and a little uneasy at how good the swing felt.",
		"Nobody warns you how alike righteousness and relief feel in the body.",
	},
	["cls.paladin.victory.w07.034"] = {
		"That one will make a story. I'll try to tell it humbly.",
		"A hard one, and it's down. Somebody remember this for me; I'll be too modest to tell it right.",
	},
	["cls.paladin.victory.w07.035"] = {
		"Over. The Light goes quiet, and I'm only myself again, which is plenty.",
		"The oath can stand at ease for a moment. So can I.",
		"Stand easy, heart. We're finished here.",
	},
	["cls.paladin.victory.w07.036"] = {
		"That's done. On to the next thing that needs standing against.",
		"One down. The oath doesn't say how many; it only says keep going.",
	},
	["cls.paladin.victory.w07.037"] = {
		"lowers {g:himself|herself} to one knee, armor clanking, and allows {g:himself|herself} exactly one groan.",
		"pulls off one gauntlet with {g:his|her} teeth and flexes the stiff fingers, wincing.",
	},
	["cls.paladin.victory.w07.038"] = {
		"Forgive me, beast. You only wanted to live, same as anyone.",
		"Rest, creature. You were only doing what your kind does.",
	},
	["cls.paladin.victory.w07.039"] = {
		"Someone like that had choices, once. I hope the Light weighs them more gently than I could.",
		"A thinking creature, and it chose this. I'll never understand it, and I'll never stop trying.",
	},
	["cls.paladin.victory.w07.040"] = {
		"First: who's breathing hard, who's bleeding, who's pretending not to be. Then the rest.",
		"I look for the wounded before I look at the foe. A habit worth keeping.",
	},
	["cls.paladin.victory.w07.041"] = {
		"Judgement doesn't always come quickly. Today it did.",
		"Some debts the Light collects slowly. That one, I collected on the spot.",
		"That's what comes due when the Light stops being patient.",
	},
	["cls.paladin.victory.w07.042"] = {
		"Alive, whole, and the Light still with me. Some days that's the entire blessing.",
		"Nothing broken but a sweat. Thank you, Light, for small favors and large ones.",
	},
	["cls.paladin.victory.w07.043"] = {
		"One fewer of the walking dead. Somewhere a grave has its tenant back.",
		"Down, and staying down this time. The Light keeps better watch than whoever raised you.",
	},
	["cls.paladin.victory.w07.044"] = {
		"breathes out slowly through clenched teeth and rolls the stiffness out of {g:his|her} weapon arm.",
		"shakes out {g:his|her} weapon arm, testing the shoulder with a careful circle.",
	},
	["cls.shaman.attack.w07.001"] = {
		"Sky to ground, and you in between.",
		"There's a straight line from the sky to the ground. You're standing on it.",
		"From up there to down here, by way of you.",
	},
	["cls.shaman.attack.w07.002"] = {
		"Short and sharp, like a slap from the elements.",
		"A jolt to rattle your teeth.",
		"Quick and nasty, the way the spirits like to begin.",
	},
	["cls.shaman.attack.w07.003"] = {
		"Wake the weapon. Let a spirit ride along on every swing.",
		"The weapon hums now. Every blow carries a little of the elements with it.",
		"Let the weapon carry a spirit for a while. It swings truer.",
	},
	["cls.shaman.attack.w07.004"] = {
		"jams a totem into the ground mid-fight without breaking stride.",
		"drops a totem at {g:his|her} feet, almost carelessly, and keeps moving.",
	},
	["cls.shaman.attack.w07.005"] = {
		"Here. Something to warm you.",
		"Feeling cold? Let me help with that.",
		"A little heat for you, no charge.",
	},
	["cls.shaman.attack.w07.006"] = {
		"And another. The spirits are feeling generous.",
		"Again. I've plenty of asking left in me.",
		"Still asking, still being answered. Lucky me.",
	},
	["cls.shaman.attack.w07.007"] = {
		"Each spell is a favor asked. Keep track of how many.",
		"Ask, spend, ask again. Count the favors.",
	},
	["cls.shaman.attack.w07.008"] = {
		"Leap, lightning. Find whoever else wants some.",
		"Let it jump. One is never enough for it.",
	},
	["cls.shaman.attack.w07.009"] = {
		"flings a hand forward, and the air splits with a white crack.",
		"snaps an arm out, and a jagged line of light leaps from {g:his|her} fingers.",
	},
	["cls.shaman.attack.w07.010"] = {
		"Another favor from the elements, delivered by hand.",
		"Compliments of the spirits.",
		"With the spirits' regards.",
	},
	["cls.shaman.battle.w07.001"] = {
		"The sky owes me a favor. I'm calling it in on you.",
		"There's a storm folded up in my hands. Let's see how far it opens.",
		"Stay where you are and you'll meet the sky. Run and you'll meet it anyway.",
	},
	["cls.shaman.battle.w07.002"] = {
		"Ask, don't command. Even now, with it coming straight at me. Ask.",
		"Steady. The spirits help the shaman who asks in a level voice, not the one who shrieks.",
		"Keep the voice low and even. Panic is a poor way to speak to the elements.",
	},
	["cls.shaman.battle.w07.003"] = {
		"tilts {g:his|her} head as if catching a far-off voice, then turns to face the foe.",
		"rolls {g:his|her} shoulders once and murmurs a few words to the ground, the way one greets an old ally before a day's work.",
	},
	["cls.shaman.battle.w07.004"] = {
		"Water says I should forgive you. Fire disagrees. Fire is louder today.",
		"The water spirits suggested we talk this through. The fire spirits did not.",
		"Four elements, four opinions on what to do with you. Only one of them is gentle.",
	},
	["cls.shaman.battle.w07.005"] = {
		"This totem stays planted. So do I.",
		"Where the totem stands, I stand. Come and move us both.",
		"One totem in the ground, one shaman beside it. Neither of us is going anywhere.",
	},
	["cls.shaman.battle.w07.006"] = {
		"Whatever this is, it has a spirit as well. I'll kill it if I must, and remember that I did.",
		"Every foe carries a spark the elements gave it. Taking it back is never a small thing.",
	},
	["cls.shaman.battle.w07.007"] = {
		"The fire's been pacing in me all day. You'll do nicely.",
		"I've had a spark itching under my skin since I woke. Thanks for the excuse.",
		"Fire's been asking for something to do. Here you are.",
	},
	["cls.shaman.battle.w07.008"] = {
		"touches the totems at {g:his|her} belt one after another, quick as counting coins, and steps forward.",
		"runs a thumb over the totems at {g:his|her} belt, then sets {g:his|her} feet.",
	},
	["cls.shaman.battle.w07.009"] = {
		"Spirit of the earth, if it suits you, make the ground uncertain under this one.",
		"Air, if you're listening, lend me a little of your quickness.",
		"Water, stay near. I may need you before this is done.",
	},
	["cls.shaman.battle.w07.010"] = {
		"Keep enough back for one good heal. Everything else goes into the fight.",
		"The rule of a shaman's purse: one heal always in reserve, the rest spent freely.",
	},
	["cls.shaman.battle.w07.011"] = {
		"If it's any comfort, the lightning stings me too. A little. Less than you.",
		"Hold still. Lightning likes a patient target, and so do I.",
	},
	["cls.shaman.battle.w07.012"] = {
		"The Warchief speaks to the same spirits I do. Let's not embarrass either of us.",
		"Thrall walks this path too. I'd rather not shame it here.",
	},
	["cls.shaman.battle.w07.013"] = {
		"My hands won't stay steady. Fine. The spirits listen to the words, not the hands.",
		"Heart going too fast. Slow the breath, and the elements will follow the breath.",
	},
	["cls.shaman.battle.w07.014"] = {
		"Good. I was hoping to plant something today.",
		"In a moment the totems will be up and I'll be in a cheerful mood. Worst possible combination for you.",
		"Give me one breath to set the totems. Then you'll wish you'd picked someone else.",
	},
	["cls.shaman.battle.w07.015"] = {
		"opens one hand, and a thread of blue light skitters between the fingers.",
		"flexes {g:his|her} fingers; a faint blue spark jumps from knuckle to knuckle.",
		"shakes out {g:his|her} wrists, and a thin, cold glow crawls up to the elbows.",
	},
	["cls.shaman.battle.w07.016"] = {
		"Your spirit should have gone to the ancestors long ago. I'll show it the way.",
		"Something keeps your spirit nailed to that body. I mean to pull the nail.",
		"The dead belong under the ground, not walking on it. Let me set that right.",
	},
	["cls.shaman.battle.w07.017"] = {
		"I'll ask you once, spirit: go home. Then I stop asking.",
		"You're far from your element, and someone bent you to this. Leave, or be sent.",
	},
	["cls.shaman.battle.w07.018"] = {
		"Nothing of the elements made you. The elements have no reason to spare you.",
		"You don't belong to this world, and the earth knows it.",
	},
	["cls.shaman.battle.w07.019"] = {
		"Feel for it through the ground. The feet understand before the eyes.",
		"Listen with the soles. The ground carries the weight of every step toward me.",
	},
	["cls.shaman.battle.w07.020"] = {
		"Mind the ground. It's on my side, and it holds grudges.",
		"Careful where you step. I've already had a word with the dirt around here.",
	},
	["cls.shaman.battle.w07.021"] = {
		"goes very still, eyes half closed, as though asking leave of something underfoot before the first blow.",
		"lowers {g:his|her} gaze for a breath, lips moving, before lifting it to the foe.",
	},
	["cls.shaman.battle.w07.022"] = {
		"Of everyone you could have bothered, you picked the one who talks to lightning.",
		"Bad choice. The thunder and I are on speaking terms.",
	},
	["cls.shaman.battle.w07.023"] = {
		"Fire is pushing to go first. Not yet. Let the others take their places.",
		"Fire wants the first word, as always. Hold it back one breath, and it bites harder.",
	},
	["cls.shaman.battle.w07.024"] = {
		"Spirits, wake! We have a guest, and it isn't polite.",
		"Up, spirits! Company, and the rude kind.",
		"On your feet, spirits! Someone's come knocking without manners.",
	},
	["cls.shaman.battle.w07.025"] = {
		"I'll fight, and later I'll ask the spirits whether I had to. They rarely answer that one.",
		"Fight first, question after. The spirits will have an opinion either way.",
	},
	["cls.shaman.battle.w07.026"] = {
		"Fire totem first. Let it have the first bite.",
		"The fire totem goes in close. Heat never bothered it.",
		"A little fire at my feet before we start. You'll walk right into it.",
	},
	["cls.shaman.battle.w07.027"] = {
		"drives a totem into the ground with the heel of {g:his|her} hand, and the earth seems to take hold of it.",
		"sets a totem down with one quick twist, the way one plants a tent stake.",
	},
	["cls.shaman.battle.w07.028"] = {
		"Let me wrap myself in a little lightning first. Then you're welcome to try.",
		"One moment while I put on something with sparks. There. Go ahead.",
	},
	["cls.shaman.battle.w07.029"] = {
		"Slow it with the earth, then decide. Thinking is easier when the other side is wading.",
		"Bind the ground around it and let it wade. Then the lightning and I can talk it over.",
	},
	["cls.shaman.battle.w07.030"] = {
		"Feel that? Every spirit within a stone's throw just turned to look at you.",
		"The air, the ground, every drop of water nearby: all of it is listening to me now.",
	},
	["cls.shaman.battle.w07.031"] = {
		"Balance doesn't mean never striking. Sometimes the scale needs a push.",
		"The elders speak of balance in calm voices. In the middle of a fight it never sounds calm.",
	},
	["cls.shaman.battle.w07.032"] = {
		"Let's be quick about it. Every bolt comes out of my own reserves.",
		"Make this brief, would you? Lightning costs me more than it costs you. Well. Almost.",
	},
	["cls.shaman.battle.w07.033"] = {
		"breathes in, and for a moment the air nearby smells of rain on hot stone.",
		"draws a breath, and the air close around takes on the sharp smell that comes before lightning.",
	},
	["cls.shaman.battle.w07.034"] = {
		"Your spirit will run free after this. I'm sorry it has to be me.",
		"I'll speak for you to the spirits afterward. Now, come.",
		"No quarrel with you, creature. Only with where you're standing.",
	},
	["cls.shaman.battle.w07.035"] = {
		"My old teachers would fault my footing. They aren't here, and this thing is.",
		"Every elder I ever learned from would frown at this stance. Luckily, none of them are watching.",
	},
	["cls.shaman.battle.w07.036"] = {
		"Fight close to the totems! They're for all of us.",
		"Everyone near the totems! I'm not planting them for my own sake.",
	},
	["cls.shaman.battle.w07.037"] = {
		"moves forward with {g:his|her} weight low, one hand already curling around a spell.",
		"advances without hurry, a word for the elements already on {g:his|her} lips.",
	},
	["cls.shaman.battle.w07.038"] = {
		"The spirits keep telling me to be patient with fools. I've been very patient.",
		"The elders say a shaman should be slow to anger. I'm being as slow as I can manage.",
	},
	["cls.shaman.battle.w07.039"] = {
		"Wolf's shape if it turns bad. Not before.",
		"There's always the wolf if this sours. Keep it in mind, keep it in reserve.",
	},
	["cls.shaman.battle.w07.040"] = {
		"Air totem in the ground. Let's see you keep up now.",
		"The air spirit's planted beside me. Keep pace, if you can.",
	},
	["cls.shaman.battle.w07.041"] = {
		"Mail on my back, the elements at my side. Come on, then.",
		"Mail and storm, I'm wearing both today. Pick where to start.",
	},
	["cls.shaman.battle.w07.042"] = {
		"glances down, as though the ground had said something worth hearing, and nods once.",
		"tips {g:his|her} head toward the earth, listens, and nods like someone agreeing to terms.",
	},
	["cls.shaman.battle.w07.043"] = {
		"The ancestors were living, breathing folk once, shamans and warriors and nobodies alike. I'm in no hurry to join their ranks.",
		"Every spirit I call on was someone once, the old shamans say. I'd like to stay on this side of the asking a while yet.",
	},
	["cls.shaman.battle.w07.044"] = {
		"Earth beneath, fire within reach, water close behind. I ask, and I'll owe you after.",
		"Spirits, I'm asking, not ordering. Lend what you will, and I'll pay it back in thanks.",
	},
	["cls.shaman.battle.w07.045"] = {
		"You've picked a fight with someone who has the sky on retainer.",
		"I should mention the sky and I have an arrangement. You're about to see the terms.",
	},
	["cls.shaman.battle.w07.046"] = {
		"One breath for the earth, one for the fire. Then no more breaths to spare.",
		"In through the nose, out slow. The spirits come faster to a calm voice.",
	},
	["cls.shaman.battle.w07.047"] = {
		"raises a hand, and a short gust that comes from nowhere tugs at the dust between {g:him|her} and the foe.",
		"lifts {g:his|her} chin, and a small whirl of grit spins up at {g:his|her} feet, then scatters.",
	},
	["cls.shaman.battle.w07.048"] = {
		"Big, are you? So is the sky, and it's on my side.",
		"You outweigh me. The earth outweighs you. Let's see who it backs.",
	},
	["cls.shaman.battle.w07.049"] = {
		"Really? I'll barely have to ask the spirits for this one.",
		"The spirits won't even get out of bed for you. I'll manage.",
	},
	["cls.shaman.battle.w07.050"] = {
		"Spirits of this place, I didn't start this. I'd still like your help finishing it.",
		"Whatever spirits live here: sorry for the noise. It won't last long.",
		"Spirits of this ground, forgive the trouble. I'll be as quick as I can.",
	},
	["cls.shaman.battle.w07.051"] = {
		"Lightning or the weapon? Both. The spirits like a shaman who doesn't dither.",
		"Strike close or strike far: the spirits don't mind which, so long as I ask properly.",
	},
	["cls.shaman.battle.w07.052"] = {
		"stamps once on the ground, hard, like someone knocking on a door far below.",
		"brings {g:his|her} heel down with a thud and waits, a heartbeat only, for something underneath to answer.",
	},
	["cls.shaman.battle.w07.053"] = {
		"I'd hoped for a quiet road. The spirits had other plans, and so, it seems, do you.",
		"So much for a peaceful walk. Fine. Spirits, we're working.",
	},
	["cls.shaman.battle.w07.054"] = {
		"There it is, that hum under the skin. The elements are awake, and so am I.",
		"The prickle in the fingertips again. Good. The spirits have turned up for work.",
	},
	["cls.shaman.buff.w07.001"] = {
		"A mouthful of the water spirits' patience. Down I go; they'll let me breathe as long as I don't overstay.",
		"Lungs that think they're gills for a while. The spirits have a sense of humor.",
	},
	["cls.shaman.buff.w07.002"] = {
		"Go on, dive. The water spirits have promised not to drown you, for a while at least.",
		"You can breathe below the surface now. Don't push your luck past the spirits' patience.",
	},
	["cls.shaman.farewell.w07.001"] = {
		"Go well. Watch where the ground is soft and where the fire is hungry.",
		"Farewell. May the spirits be in a good mood wherever you're headed.",
		"Safe roads. And if you hear thunder with no cloud above you, that'll be me, busy.",
	},
	["cls.shaman.greet.w07.001"] = {
		"Well met. The spirits seem easy around you. That's a good sign.",
		"Greetings. Forgive me if I glance at the ground; I like to know who else is listening.",
	},
	["cls.shaman.greet.w07.002"] = {
		"Hello, traveler. Steady ground to you, and a fair wind, as we say.",
		"Greetings. May your road be firm and your water clean.",
	},
	["cls.shaman.heal.w07.001"] = {
		"Water for my own cut this time. It feels colder when the wound is mine.",
		"Strange, asking the water for myself. It comes just the same, only it seems to sigh about it.",
		"When I heal myself the spring runs a little stiffer, as if it disapproves of the patient.",
	},
	["cls.shaman.heal.w07.002"] = {
		"Healed by my own hand again. The spirits must be tired of my face by now.",
		"Another patch on the same old skin. If the water kept accounts, I'd be deep in debt.",
		"I mend others all day and then walk into the one blow I should have seen. The spirits are too polite to laugh. Mostly.",
	},
	["cls.shaman.heal.w07.003"] = {
		"presses a wet palm to {g:his|her} own wound, and the water beads there a moment before it sinks in and the skin draws closed.",
		"runs two fingers along the cut as if smoothing the bank of a stream, and the flesh knits closed behind them.",
	},
	["cls.shaman.heal.w07.004"] = {
		"Closed. The skin forgets fast; the rest of me takes longer.",
		"The cut is gone. Where it went in, I can still feel it, like a word I can't quite recall.",
		"The hurt leaves, and leaves a little stiffness behind as a receipt.",
	},
	["cls.shaman.heal.w07.005"] = {
		"Water, this one's for me. I'll owe you.",
		"Spirits of the water, one more for the one who keeps asking.",
		"My turn for once, water. Be quick about it.",
	},
	["cls.shaman.heal.w07.006"] = {
		"Most of a body is water anyway, the old shamans say. Healing is only reminding it what shape to hold.",
		"The old shamans taught that flesh is water that has learned to stand. I ask it, gently, to remember the shape.",
	},
	["cls.shaman.heal.w07.007"] = {
		"drops to one knee and rests a hand flat on the ground; a coolness climbs from below into the wound, and the bleeding slows.",
		"steadies {g:himself|herself} with a palm on the ground while the healing rises through {g:him|her} like water through roots.",
	},
	["cls.shaman.heal.w07.008"] = {
		"A healer flat on the ground mends nobody. So: me first, and no guilt about it.",
		"First rule of mending, as far as I'm concerned: keep the mender standing.",
	},
	["cls.shaman.heal.w07.009"] = {
		"In with the breath, out with the hurt. The water does the rest, as long as I don't rush it.",
		"Breathe slow. The water moves at the pace of whoever calls it, and a panicked shaman gets a panicked spring.",
		"Slow breath, slow water. The two have always kept step.",
	},
	["cls.shaman.heal.w07.010"] = {
		"The fire spirit thinks wounds are a fine thing. The water spirit disagrees. Today, for once, I side with the water.",
		"Fire would have sealed it shut, and enjoyed doing it. I asked the water. Gentler, and nobody smells burnt.",
		"Ask fire to close a wound and it will, with a flourish and a scar. Water is the better guest at a sickbed.",
	},
	["cls.shaman.heal.w07.011"] = {
		"Nothing serious. Just asking the spirits to put me back the way they found me.",
		"One moment. The water's sewing me up, and it hates being rushed.",
	},
	["cls.shaman.heal.w07.012"] = {
		"All water finds the sea sooner or later. The water in me has been told to take the long way round.",
		"Rivers end, bodies end. Until then, the water keeps closing what the road cuts open.",
		"Every stream runs downhill in the end. Mine, today, has been asked to linger in the high pools.",
	},
	["cls.shaman.heal.w07.013"] = {
		"lets out a breath through the teeth as the pain drains away, and shakes out {g:his|her} hands.",
		"straightens slowly, one hand pressed where the hurt was, waiting to be sure it has really gone.",
		"blows out {g:his|her} cheeks as the sting fades, then flexes {g:his|her} fingers one by one.",
	},
	["cls.shaman.heal.w07.014"] = {
		"Even for my own cuts I ask properly. The spirits notice when a shaman starts taking them for granted, and they're slow to forget it.",
		"No shortcuts with the spirits, not even when the wound is mine. Ask, wait, thank. Then bleed less.",
	},
	["cls.shaman.heal.w07.015"] = {
		"Close, water! I'm not done here!",
		"Mend it fast. This one still owes me a fall.",
		"Water, seal it. I've got lightning left to spend.",
	},
	["cls.shaman.heal.w07.016"] = {
		"One wave on myself, then back to it. Don't let the healing turn into hiding.",
		"Patch, then strike. A shaman who only heals in a fight is just a slower way to lose.",
		"Water first, while there's still enough of me to hold it. Then the lightning again.",
	},
	["cls.shaman.heal.w07.017"] = {
		"steps back half a pace, mutters a quick word to the water between two breaths, and the worst of the wound closes even as the fight presses in.",
		"keeps one eye on the foe and spares the other for {g:his|her} own hurt, calling the water in a voice too low to carry.",
	},
	["cls.shaman.heal.w07.018"] = {
		"No hurry now. I can let the water work slowly, the way it likes to, instead of the way a fight demands.",
		"Nothing pressing. The water can take its time on me; unhurried, it always does better work.",
		"Away from any fight, I let the healing come at its own pace. Rushed water leaves marks; slow water leaves almost nothing.",
	},
	["cls.shaman.heal.w07.019"] = {
		"No one here to ask but the water. Luckily the water has never once said no to me.",
		"Alone on the road, a shaman is healer and patient both. The patient complains a great deal.",
	},
	["cls.shaman.heal.w07.020"] = {
		"touches two fingers to {g:his|her} brow, then to the wound, a small sign of asking, and the hurt begins to fade.",
		"speaks the same quiet words over {g:his|her} own wound that {g:he|she} would speak over anyone's, no fewer and no faster.",
	},
	["cls.shaman.heal.w07.021"] = {
		"Others carry bandages. I carry a promise from the water, renewed every time I ask nicely.",
		"A strip of linen would do the job, slower and uglier. The water owes me nothing, and still it comes.",
		"No needle, no thread, no stink of salve. Just water that agrees to remember where my skin used to meet.",
	},
	["cls.shaman.heal.w07.022"] = {
		"Mended enough to carry the totems another mile. That's the only measure I use.",
		"Good. The totems weren't going to carry themselves, and they were starting to feel heavy.",
	},
	["cls.shaman.heal.w07.023"] = {
		"The ancestors are watching me mend the same careless wound again, I suppose. I like to think they shake their heads and smile.",
		"If the ancestors keep a tally of how often I heal myself, I'd rather not see it.",
	},
	["cls.shaman.heal.w07.024"] = {
		"Pain is a small fire. Water answers it, and for a moment the two of them argue inside me. Water usually wins, if I let it.",
		"A wound runs hot; healing runs cool. Somewhere between the two is where I mean to stand.",
	},
	["cls.shaman.heal.w07.025"] = {
		"draws a glimmer of water out of the air and lets it run down over the hurt, cold and quick as a mountain spring.",
		"murmurs, and a thin thread of water seems to wind out of nowhere and wrap the wound like a bandage that sinks into the skin.",
	},
	["cls.shaman.heal.w07.026"] = {
		"Best way to heal a wound of your own: don't look at it until it's already gone.",
		"I never watch my own cuts close. It's like watching porridge thicken, and somehow more embarrassing.",
		"Watching yourself mend is like waiting for a pot to boil. I look at the horizon instead.",
	},
	["cls.shaman.heal.w07.027"] = {
		"Asking for help is hard even when the one I'm asking is a spring. Pride is the last thing the water washes out.",
		"The water closes the cut quickly. The pride takes longer. I walked into that one with my eyes open.",
	},
	["cls.shaman.heal.w07.028"] = {
		"Spring of the deep earth, rise for me.",
		"Water that runs beneath the stones, find me.",
		"Cool water, from below. Here.",
	},
	["cls.shaman.heal.w07.029"] = {
		"The heart stops racing a beat or two after the pain stops. I wait for it. No point standing up before it's ready.",
		"Pulse coming down, breath coming back. The body always arrives last at good news.",
		"The hurt is gone well before my hands stop shaking. I let them take their time.",
	},
	["cls.shaman.heal.w07.030"] = {
		"inspects the place where the wound was with a frown, as if it might reopen out of spite.",
		"prods the newly healed skin with a suspicious finger.",
	},
	["cls.shaman.heal.w07.031"] = {
		"There's the slow water, deep and thorough, and the quick water for when there's no time. Today I needed the quick one.",
		"Long wave or short, it's the same water. The short one just skips the courtesies.",
	},
	["cls.shaman.heal.w07.032"] = {
		"The water takes the blood with it when it goes. I'm grateful not to have to look at that part.",
		"Wound shut, and the water even rinsed the blood away. Thorough spirits.",
	},
	["cls.shaman.heal.w07.033"] = {
		"Wait. Let me get some water on this before it gets ideas.",
		"One breath. I need to talk the water into shutting this.",
	},
	["cls.shaman.heal.w07.034"] = {
		"The wound's gone. The tiredness under it isn't. No spell has ever reached that far down.",
		"Closed, and still weary. Water mends flesh; nobody ever asked it to mend a long day.",
	},
	["cls.shaman.heal.w07.035"] = {
		"This body is on loan from the ancestors, the elders say, and they expect it back in decent shape. I'm doing my best.",
		"The elders say we borrow our bodies from those who came before. I keep patching mine. One day I'll hand it back, dented.",
	},
	["cls.shaman.heal.w07.036"] = {
		"closes {g:his|her} eyes while the healing takes, lips moving silently, like someone counting under {g:his|her} breath.",
		"goes very still while the water works, as if listening for something underneath the noise.",
	},
	["cls.shaman.heal.w07.037"] = {
		"The water spirits are kind to me, but I suspect they talk about me behind my back.",
		"Healed again. I imagine the water spirits sighing the way one sighs at muddy boots left by the door.",
		"The spirits mend me without complaint. The complaints, I'm sure, come later, among themselves.",
	},
	["cls.shaman.heal.w07.038"] = {
		"Closed. Now whatever opened it gets to meet the lightning.",
		"Healed and angrier for it. The spirits gave me back the strength; the temper is my own.",
	},
	["cls.shaman.heal.w07.039"] = {
		"Healing water always leaves a taste behind, like a stone sucked clean. I've come to find it comforting.",
		"After the wave passes there's a cold spot in my chest for a moment, as if I'd swallowed a mountain stream.",
		"The mending always leaves a faint chill along the bone, the way a cellar holds the cold long after the day has warmed.",
	},
	["cls.shaman.heal.w07.040"] = {
		"mutters to the water in the tone one uses with a neighbor who has already lent too many favors.",
		"asks the spirits for healing with the slightly sheepish air of a regular customer.",
	},
	["cls.shaman.heal.w07.041"] = {
		"The armor took most of it. The water can have the rest.",
		"What gets through the armor is the water's job. Lately it's been working hard.",
	},
	["cls.shaman.heal.w07.042"] = {
		"I give the earth my weight every day, walking on it. Now and then it gives me something back.",
		"The ground under me hums when I heal. Not loud. Just enough to let me know I'm not the only one holding me up.",
		"Healing myself, I feel the earth lean in, the way a friend leans a shoulder against yours without a word.",
	},
	["cls.shaman.heal.w07.043"] = {
		"I'm fine. Mostly water now, and the water is in a good mood.",
		"Don't fuss. The spirits already did.",
		"Stop staring. I've had worse, and the water's had worse to work with.",
	},
	["cls.shaman.heal.w07.051"] = {
		"The totem hums at my feet and mends me in small sips. Small sips add up.",
		"Plant it, stay near, get on with things. The stream catches up with the hurt in its own time.",
	},
	["cls.shaman.heal.w07.052"] = {
		"sets the water totem into the ground and stays within its reach, letting its slow pulse wash over the hurt.",
		"plants a totem at {g:his|her} feet; a faint ripple spreads from it, and the worst of the bruises begin to fade.",
	},
	["cls.shaman.heal.w07.053"] = {
		"Don't trip on the totem. It's the only thing keeping me upright.",
		"That totem's for me, but I'll share if you stay close.",
	},
	["cls.shaman.heal.w07.054"] = {
		"A totem is a promise planted in the ground. This one promises water, a little and often, for as long as I stay near.",
		"Of all the totems, the water one is the most patient. It doesn't heal fast. It heals the whole time.",
	},
	["cls.shaman.heal.w07.061"] = {
		"Tastes like a swamp boiled in a copper pot. The water spirits would never serve me something this foul.",
		"An alchemist's red mess, and it works. I'll apologize to the water later for going behind its back.",
		"Saving the water for later. The bottle can have this one.",
	},
	["cls.shaman.heal.w07.062"] = {
		"Quicker than asking. Down it goes.",
		"Out of breath for the long words. Bottle it is.",
		"The water can rest this time. Cheers.",
	},
	["cls.shaman.heal.w07.063"] = {
		"uncorks a potion with {g:his|her} teeth, drinks, and mutters something that sounds like an apology to the water.",
		"drains a small red vial and then, out of habit, thanks the spirits for it anyway.",
	},
	["cls.shaman.heal.w07.064"] = {
		"A warlock's stone, warm in the hand. The spirits keep their distance from whatever made it, and so would I, if it didn't work.",
		"Healthstone. I try not to think about how it was made. It mends, and the spirits can frown at me later.",
	},
	["cls.shaman.heal.w07.065"] = {
		"Nothing the earth made, this stone. Still, it does the job.",
		"Strange stone. The earth wouldn't claim it, but my wounds aren't fussy.",
	},
	["cls.shaman.heal.w07.066"] = {
		"Every shaman I know swears by the water and carries three potions. I'm no different.",
		"The water is for when I have time to ask. This is for when I don't.",
	},
	["cls.shaman.heal.w07.201"] = {
		"Easy now. Cold first, then better.",
		"This'll feel like a mountain spring down your collar. Then it won't hurt.",
		"Brace for the chill. The good part comes right after.",
	},
	["cls.shaman.heal.w07.202"] = {
		"{target}, you're leaking. Allow me.",
		"Easy, {target}. The spirits have seen worse than this.",
		"Stay put, {target}. Half a breath and it's closed.",
	},
	["cls.shaman.heal.w07.203"] = {
		"Funny how the water feels warmer when it goes to someone else.",
		"I'd rather heal ten others than myself once. Asking for them is easy.",
		"The water leaves my hands more willingly when the wound isn't mine. So do I.",
	},
	["cls.shaman.heal.w07.204"] = {
		"turns a palm toward the wounded one and speaks a low word, and a ripple of clear water passes from {g:his|her} hand to the hurt.",
		"flicks {g:his|her} fingers as if shaking off droplets, and the water lands where it is needed, a few steps away.",
	},
	["cls.shaman.heal.w07.205"] = {
		"The water's starting to recognize you. That's not a compliment.",
		"Closed. The spirits ask that you stop collecting these.",
		"There. Try to get hit somewhere new next time; the water's bored of that spot.",
	},
	["cls.shaman.heal.w07.206"] = {
		"Keep at it. The water's on you.",
		"Don't stop! The water will follow you in.",
		"Fight on, I'm right behind you with the spring.",
	},
	["cls.shaman.heal.w07.207"] = {
		"Watch the one in front, not the foe. My fight is keeping them standing.",
		"Their blood, my water. The trade is always the same, and I make it gladly.",
		"Let the others count the enemy. I count the wounds on my side.",
	},
	["cls.shaman.heal.w07.208"] = {
		"Sit down a moment. Let me look at that properly.",
		"No rush now. Let the water work on you slowly; it does a better job.",
		"Nothing's chasing us. Hold still and let me close it right.",
	},
	["cls.shaman.heal.w07.209"] = {
		"Water of the deep places, this one is worth your trouble.",
		"Spirits, look kindly on this one. I'll vouch for them.",
		"Spring beneath us, rise for the one beside me.",
	},
	["cls.shaman.heal.w07.210"] = {
		"I can close the wound. I can't close the moment they understood they could die. That stays.",
		"The water mends the cut. The fright in their eyes I have to leave where it is.",
		"Flesh I can mend in a breath. The look of someone who just saw the end coming takes far longer.",
	},
	["cls.shaman.heal.w07.211"] = {
		"sends a thread of cool water curling toward {target}, quick and sure as a fish through a current.",
		"glances at {target}, judges the wound with a healer's eye, and calls the water across the gap.",
	},
	["cls.shaman.heal.w07.212"] = {
		"You're welcome. Now get back out there before I change my mind.",
		"There. Thank the water, not me; I only asked.",
		"Up. Mended, not excused.",
	},
	["cls.shaman.heal.w07.213"] = {
		"Some serve the Horde with an axe. I serve it by sending the axe-bearers back in whole.",
		"My share of the war is small and wet: closing what the fighting opens.",
		"The Horde wins its battles on its feet. Somebody has to keep putting it back on them.",
	},
	["cls.shaman.heal.w07.214"] = {
		"Hold still, unless you'd like an extra ear. The water isn't fussy about shapes.",
		"Don't wriggle. The water's good, but it's no tailor.",
	},
	["cls.shaman.heal.w07.215"] = {
		"Healing someone else, I feel the water leave me and go to them, like a river finding a lower field. Downhill is the only way it knows.",
		"The water always runs toward whoever needs it most. I only open the sluice.",
		"Water seeks the low place. A wound is a low place. I just stand at the top and let go.",
	},
	["cls.shaman.heal.w07.216"] = {
		"Tell me where it hurts. Actually, don't bother: it's written all over you.",
		"Show me. No, never mind, I can see it from here.",
	},
	["cls.shaman.heal.w07.217"] = {
		"In a group the water has to be shared out like rations. Whoever bleeds the most eats first.",
		"Keeping a whole party upright is like tending several small fires that all want feeding at once. This one, then the next.",
	},
	["cls.shaman.heal.w07.218"] = {
		"One wave, and it leaps from one wound to the next like a stone skipping across a pond.",
		"The chained water jumps from one of them to another. It always seems to know who is worst off.",
	},
	["cls.shaman.heal.w07.219"] = {
		"It's all right. The spirits have you; you can let go of that breath.",
		"Let your shoulders down. The water can't get in past all that tension.",
		"Unclench. The hurt leaves faster through an open hand.",
	},
	["cls.shaman.heal.w07.220"] = {
		"watches the wound close from a few paces off, with the critical squint of a potter judging a fired bowl.",
		"nods once, satisfied, as the other's wound seals over.",
	},
	["cls.shaman.heal.w07.221"] = {
		"On your feet. The Horde needs you more than the ground does.",
		"Up. The ground can wait for you; the Horde can't.",
	},
	["cls.shaman.heal.w07.222"] = {
		"They never thank the water. They thank me. I pass it along when no one's listening.",
		"People thank the shaman. The shaman thanks the water. The water, as far as I know, thanks nobody.",
		"Gratitude goes to the hands it can see. I make sure the spring gets its share in private.",
	},
	["cls.shaman.heal.w07.223"] = {
		"Don't thank me yet. Thank me when we're both walking out of here.",
		"Save the thanks. The day isn't over.",
	},
	["cls.shaman.heal.w07.224"] = {
		"The spirits lend me their water for others more readily than for myself. I've never asked them why. I think I know.",
		"When I ask for someone else, the spirits answer before I've finished the words.",
		"Ask for yourself and the spirits weigh you. Ask for another and they simply come.",
	},
	["cls.shaman.heal.w07.225"] = {
		"Next time, step out of the way. The water's free, but my patience isn't.",
		"Mended. And we won't speak of this one again.",
	},
	["cls.shaman.heal.w07.226"] = {
		"spares a glance from the fight and a quick murmur, and the water leaps to the one who needs it.",
		"keeps the lightning in one hand and the healing in the other, and right now the healing goes out first.",
	},
	["cls.shaman.heal.w07.227"] = {
		"Stay near me. The water reaches farther than you'd think, but not forever.",
		"Don't wander off while I'm mending you. The water doesn't chase.",
	},
	["cls.shaman.heal.w07.228"] = {
		"If they fall, it will be on me. So they don't fall.",
		"Everyone I mend is a promise I made without saying it out loud.",
		"I don't keep many vows. Keeping the people near me breathing is the one I keep without being asked.",
	},
	["cls.shaman.heal.w07.229"] = {
		"Not yet. The ancestors have a full table today.",
		"Your place among the ancestors will keep. Stay here a while.",
	},
	["cls.shaman.heal.w07.230"] = {
		"The cut I can mend. Whatever drives someone to throw themselves at danger like that, I can't.",
		"Healing is the easy half. The hard half is watching the one I just mended run straight back into it.",
		"I close the wound, and the wound's owner goes looking for the next one. That is the whole shape of my days.",
	},
	["cls.shaman.heal.w07.231"] = {
		"One more mended. The water never tires of this; I envy it.",
		"Done. If the spirits charged by the wound, I'd be broke.",
		"There. A neat darn, if I say so myself.",
	},
	["cls.shaman.jest.w07.001"] = {
		"How many shamans does it take to light a campfire? One, and four spirits who all want the credit.",
		"People ask why shamans are so calm. Try arguing with four elements every day; you stop wasting energy on people.",
	},
	["cls.shaman.levelup.w07.001"] = {
		"The spirits answer a breath sooner than they did. Either they trust me more, or I finally know where to stand.",
		"Something has settled between me and the elements. A little more ease, a little less asking twice.",
	},
	["cls.shaman.levelup.w07.002"] = {
		"flexes {g:his|her} fingers, and a faint crackle runs between them, gone before anyone could be sure of it.",
		"plants both feet and breathes in slowly; for an instant the ground seems to lean in to meet {g:him|her}.",
	},
	["cls.shaman.levelup.w07.003"] = {
		"A little more thunder in the hands. Try not to stand too close while I get used to it.",
		"The spirits have decided I'm worth a bit more effort. I won't argue with them.",
	},
	["cls.shaman.lowhp.w07.001"] = {
		"Spirits, I'm not finished! One more push!",
		"Not yet! Earth, fire, anyone: one more push!",
		"Spirits, lean in with me! This isn't over!",
	},
	["cls.shaman.lowhp.w07.002"] = {
		"Drop the attack. A healing wave, now, or the rest is pointless.",
		"Forget the bolt. Water first, or there won't be anyone left to throw it.",
		"Lightning later. Water now. Sequence counts when you're bleeding.",
	},
	["cls.shaman.lowhp.w07.003"] = {
		"reels back, and for a heartbeat the faint glow around {g:his|her} hands gutters like a candle in a draft.",
		"stumbles; the crackle around {g:him|her} sputters and nearly dies.",
	},
	["cls.shaman.lowhp.w07.004"] = {
		"If it ends here, I hope I remembered to pack an ankh.",
		"Reincarnation is a fine trick. I'd rather not need it today.",
	},
	["cls.shaman.lowhp.w07.005"] = {
		"That hurt. Now I'm cross, and the spirits are worse.",
		"Ow. You've managed to annoy me and the elements in one go. Impressive.",
		"Lovely. Now the fire's in a temper, and frankly, so am I.",
	},
	["cls.shaman.lowhp.w07.006"] = {
		"Spirits, keep me upright a little longer. I'll owe you.",
		"Water, earth, whoever is listening: I could use the help now, not later.",
		"Hear me, spirits. Not a grand request. Just the next few breaths.",
	},
	["cls.shaman.lowhp.w07.007"] = {
		"drags the back of a hand across {g:his|her} mouth, glances at the red left on it, and turns to the foe again.",
		"sways, catches {g:his|her} balance, and lets out a short, hard laugh with no humor in it.",
		"doubles over for a breath, then straightens with a growl that seems to come up through {g:his|her} boots.",
	},
	["cls.shaman.lowhp.w07.008"] = {
		"The elements sound muffled, as if heard through deep water. That's not a good sign.",
		"The spirits are getting quieter. Or my ears are. Either way, move.",
	},
	["cls.shaman.lowhp.w07.009"] = {
		"The elders taught me a great many things. 'Avoid this' must have been one of them.",
		"One of my old teachers, wherever they are, is sighing very loudly.",
	},
	["cls.shaman.lowhp.w07.010"] = {
		"One more hit and I take the wolf's shape and run. Pride mends faster than bone.",
		"Wolf's shape, ready. If this turns, four legs beat two.",
		"No shame in the wolf. A live shaman on four legs beats a dead one on two.",
	},
	["cls.shaman.lowhp.w07.011"] = {
		"Water totem, now. Let it keep up where my hands can't.",
		"Plant the healing stream and stand in it. No pride about it.",
	},
	["cls.shaman.lowhp.w07.012"] = {
		"The Horde doesn't break this easily, and neither do I.",
		"I've the Horde's stubbornness and the earth's patience. You'll tire first.",
		"Bleeding, yes. Broken, no. Ask any orc how much that matters.",
	},
	["cls.shaman.lowhp.w07.013"] = {
		"My own blood on the hands. That's the wrong way round. Fix it.",
		"Bleeding too fast to think. Don't think, then. Mend.",
		"This is more of my blood than I like to see outside me.",
	},
	["cls.shaman.lowhp.w07.014"] = {
		"whispers something sharp to the ground beneath, almost a reproach, and sets {g:his|her} feet again.",
		"mutters a curt word to the elements, in the tone of someone calling in an old debt.",
		"snarls a single word at the earth, and the earth, it seems, hears it.",
	},
	["cls.shaman.lowhp.w07.015"] = {
		"Get it off me! The water won't come fast enough on its own!",
		"My totems can't hold this alone! Someone pull it away from me!",
	},
	["cls.shaman.lowhp.w07.016"] = {
		"Lightning wrapped close first, then the mending. Don't scramble the order.",
		"Get the lightning shield up, then heal. Panic skips steps; I won't.",
	},
	["cls.shaman.lowhp.w07.017"] = {
		"Roots go deep for a reason. Dig in, and don't let go of the ground.",
		"Hold on to the ground like an old root holds a hillside. Let the rest of me shake.",
	},
	["cls.shaman.muse.w07.001"] = {
		"The earth is the slowest of the four to anger and the slowest to forgive. I try to stay on its good side; I sleep on it, after all.",
		"Fire forgets a slight as soon as it has burned something. Earth remembers it for a hundred years. I am careful where I dig.",
		"Earth is slow to wake and slower to calm. When I ask it for anything, I ask for exactly that and not a pebble more.",
	},
	["cls.shaman.muse.w07.002"] = {
		"Water heals because it remembers the shape a thing had before it broke. All I do is remind it.",
		"A wound is a river that has forgotten its banks. The water spirits know where the banks were.",
		"I don't make the water heal. I show it the place where it's needed and step aside.",
	},
	["cls.shaman.muse.w07.003"] = {
		"Everyone wants a shaman to tell them what the sky will do tomorrow. I'm a shaman, not a fortune-teller with a wet finger.",
		"People ask me what the sky has planned. I tell them the sky doesn't plan; it changes its mind, loudly.",
	},
	["cls.shaman.muse.w07.004"] = {
		"picks up a small stone from the path, weighs it in {g:his|her} palm, and sets it back exactly where it lay.",
		"stoops for a pebble, turns it over twice as if reading something on its underside, then returns it to its place.",
	},
	["cls.shaman.muse.w07.005"] = {
		"A demand wants an answer now. A request can wait. The spirits can always tell which one I brought.",
		"I have tried, once or twice, to hurry the elements. They heard the hurry and nothing else.",
		"Asking well means being ready to hear no. The spirits can smell it on me when I'm not.",
	},
	["cls.shaman.muse.w07.006"] = {
		"Our Warchief is a shaman. I think of that when the Horde asks hard things of me: he asks hard things of the spirits, and waits for the answer like the rest of us.",
		"Thrall listens to the elements before he speaks for the Horde. Not every leader would bother. It is one reason I follow him gladly.",
		"A shaman leads the Horde. Whenever I'm tempted to give the spirits orders, I remember that even he asks.",
	},
	["cls.shaman.muse.w07.007"] = {
		"The orc elders tell how their shamans once traded the spirits for a darker power, and woke to find the elements had stopped listening. I keep that story close.",
		"There was a time, the orcs say, when the elements turned their backs on a whole people. They came back slowly, and only because they were asked humbly. I never forget it.",
	},
	["cls.shaman.muse.w07.008"] = {
		"Four totems in the pack now: earth, fire, water, air. Each one was a trial to earn, and each one weighs about what the trial did.",
		"I carry all four elements on my back these days, carved and bound. My shoulders know it better than my pride does.",
	},
	["cls.shaman.muse.w07.009"] = {
		"The fire totem is the only one I plant with a little fear. Earth stays put. Fire wants to know how far it is allowed to go.",
		"Planting fire is not like planting earth. Earth settles in. Fire looks around for what it might reach.",
	},
	["cls.shaman.muse.w07.010"] = {
		"The water totem asks for nothing but a patch of ground and a little patience. Of the four, it's the one I'd keep if I could keep only one.",
		"Healing that goes on flowing after my hands are busy elsewhere: that is what the water totem gives. I still thank it as if it were a person.",
	},
	["cls.shaman.muse.w07.011"] = {
		"Air was the last to trust me. It took a long climb and a longer wait before the wind agreed to stand in a totem for me.",
		"The air totem hardly seems to be there at all, even planted. That's the wind for you: present, useful, and never quite caught.",
	},
	["cls.shaman.muse.w07.012"] = {
		"If you trip over the totem, apologize to it. I'm serious. It holds grudges.",
		"Mind the totem. Step around it, not over it. The spirits notice manners.",
	},
	["cls.shaman.muse.w07.013"] = {
		"The wolf I become is not mine. It is a spirit that lets me wear its running for a while. I try to leave it as I found it.",
		"Every time I let go of the wolf's shape, I give a small nod to whatever lent it. The road went faster on four legs that were never mine.",
	},
	["cls.shaman.muse.w07.014"] = {
		"turns {g:his|her} face slightly, as if to let one ear catch something the air is saying.",
		"stops walking all at once, head cocked, all ears for something that escapes everyone else.",
	},
	["cls.shaman.muse.w07.015"] = {
		"An ankh in the pack, just in case. It's a strange comfort, knowing the ancestors might send me back once more if I ask nicely at the worst possible moment.",
		"I buy ankhs the way others buy rope: never hoping to need one, never willing to go without.",
	},
	["cls.shaman.muse.w07.016"] = {
		"When the spirits lend me their eyes, I can see past the next hill. The trouble comes after: back in my own skull, everything feels close and small.",
		"I can send my sight ahead along the road and look at what waits there. Coming back to my own eyes is like stepping into cold boots.",
	},
	["cls.shaman.muse.w07.017"] = {
		"Walking on water still makes me laugh a little, every time. The water spirits must think I look ridiculous, and they hold me up anyway.",
		"A lake that carries my weight like a road: I will never get used to it. I hope I never do.",
	},
	["cls.shaman.muse.w07.018"] = {
		"Every bolt I call down was somewhere up there first, waiting. I only show it the way. It is humbling, how little of it is me.",
		"People see the lightning leave my hands and think it's mine. It isn't. I'm the gap it chooses to jump across.",
		"I don't make lightning. I make a path, and the sky decides whether it likes the look of it.",
	},
	["cls.shaman.muse.w07.019"] = {
		"My clothes smell of scorched air most days. Nobody sits next to me at the inn, and I've stopped wondering why.",
		"The hair on my arms stands up for an hour after a fight with lightning. It is hard to look dignified while slightly fizzing.",
		"Lightning leaves a smell on everything I own: burnt air and wet stone. I've grown fond of it. No one else has.",
	},
	["cls.shaman.muse.w07.020"] = {
		"Too much of any one spirit is a sickness. A shaman's work is to notice it early.",
		"Where one element grows too strong, the land falls ill. That is what we are for: to see it, and to ask the others to push back.",
		"Sickness in the land is nearly always one spirit taking more than its share. We are taught to look for that first.",
	},
	["cls.shaman.muse.w07.021"] = {
		"Travelers say the land up north is sick with plague, down to the roots. I dread the day I kneel there and listen.",
		"They talk of lands where the dead walk and the soil itself has gone rotten. A shaman hears that and feels it in the stomach. The earth can suffer like anyone.",
	},
	["cls.shaman.muse.w07.022"] = {
		"When I fight an elemental, I am fighting a piece of the world that has been bent wrong. I don't hate it. I would like to put it back.",
		"Rogue elementals are not monsters. They are spirits nobody asks anything of anymore. Some days I think that's what makes them rage.",
		"An angry elemental is a spirit somebody tore loose and abandoned. I end the fight because I must, and I'm never proud of it.",
	},
	["cls.shaman.muse.w07.023"] = {
		"When I need courage I imagine the ancestors standing behind me in rows, too many to count. Most of them look patient. One or two look impatient with me.",
		"Behind every shaman stands a long line of the dead who did this before. I can't see them. I try to walk as if they could see me.",
	},
	["cls.shaman.muse.w07.024"] = {
		"Leave the stream as clean as you found it. The water remembers who passed.",
		"Don't throw stones in the river for fun. Someone lives in there, in a manner of speaking.",
		"Ask before you drink from a spring. Out loud is fine. Nobody's laughing but you.",
	},
	["cls.shaman.muse.w07.025"] = {
		"When my strength runs dry I drink water and sit still. There is something right in that: the spirits refill me the plain way first.",
		"No spell for getting my reserves back. Water, a seat, and silence. The oldest remedy works for shamans too.",
		"Empty again. A shaman runs on what the spirits lend and on plain water, and today I'll need a lot of water.",
	},
	["cls.shaman.muse.w07.026"] = {
		"uncorks a waterskin and, before drinking, lets a few drops fall to the ground, as if paying a small toll.",
		"tips a splash of water onto the earth before taking a long drink, a habit done without a glance.",
	},
	["cls.shaman.muse.w07.027"] = {
		"People expect a shaman to kneel and chant. Some of us chant with a shield on one arm and a mace in the other hand.",
		"Staff, axe or mace, it hardly matters. The spirits ride along the weapon either way. The arm still has to do its share.",
	},
	["cls.shaman.muse.w07.028"] = {
		"When I wake the earth in my weapon, it grows heavy in a good way, like a handshake from someone strong.",
		"With the earth awake inside my weapon, every swing lands as if the ground itself had thrown it.",
	},
	["cls.shaman.muse.w07.029"] = {
		"Fire on the weapon one day, frost the next, wind when I need speed. The weapon must think it has four masters. In a way it does.",
		"I change what sleeps in my weapon the way others change their boots. Fire, frost, wind: each one asks to be used a different way.",
	},
	["cls.shaman.muse.w07.030"] = {
		"With lightning circling me like a ring of angry bees, I feel safer and look a good deal stranger.",
		"The little spheres of lightning around my shoulders hum when I walk. When they fade, I've started to miss the sound.",
	},
	["cls.shaman.muse.w07.031"] = {
		"To purge an enemy's magic is to ask the elements to sweep it clean. They're thorough about it. Some days I wish they'd sweep my head too.",
		"There's a satisfying honesty in tearing a borrowed shield off a foe. The elements dislike things that pretend to be what they aren't.",
	},
	["cls.shaman.muse.w07.032"] = {
		"The spirits can carry me home on the wind if I ask. Some days I ask. Some days I want to feel every mile of the way.",
		"Home is one request away, when I have the strength to make it. It's good to have a door like that, even one I leave shut.",
	},
	["cls.shaman.muse.w07.033"] = {
		"Of all my totems, the one that binds feet to the earth is the politest. It doesn't hurt anyone. It just asks the ground to hold their ankles a while.",
		"I love that binding totem for its manners. No fire, no thunder. Only the ground reaching up and saying: not so fast.",
	},
	["cls.shaman.muse.w07.034"] = {
		"The little fire totem spits at anything that comes close, like a kettle with a temper. I plant it and let it do its grumbling.",
		"A fire totem is the closest thing I have to a guard dog: small, hot-headed, loyal until it burns out.",
	},
	["cls.shaman.muse.w07.035"] = {
		"There is a totem that takes the spell meant for me and swallows it whole. I always feel I ought to thank it properly afterward, and there's never time.",
		"My air totem stands there and eats a curse aimed at my head, without a word of complaint. I've known people with less courage.",
	},
	["cls.shaman.muse.w07.036"] = {
		"The stone totem draws the blows onto itself and cracks so that I don't have to. In my mind I pick up the pieces, every time.",
		"I plant stone and let the beast chew on that instead of me. It isn't brave. It isn't cowardly either. It is simply the craft.",
	},
	["cls.shaman.muse.w07.037"] = {
		"If you hear me muttering, I'm not talking to you. Or to myself, for that matter.",
		"Don't mind me. I'm just keeping up a conversation you can't hear.",
		"When I go quiet and stare at a rock, I'm working. Truly.",
	},
	["cls.shaman.muse.w07.038"] = {
		"The elements care nothing for the Horde or the Alliance. Fire burns both alike. I serve the Horde, and I try not to pretend the spirits do.",
		"I fight for the Horde, but the earth under an Alliance soldier is the same earth. It took me a long time to sit easy with that.",
		"Fire swears no oath to any banner. I've sworn mine to the Horde, and I try not to mistake the one for the other.",
	},
	["cls.shaman.muse.w07.039"] = {
		"Orgrimmar rose out of rock and dust in a handful of years. Whoever thinks the earth can't be generous has never walked its streets.",
		"A city of the Horde built of red stone, with a shaman at its head. The elements must have watched that with some interest.",
	},
	["cls.shaman.muse.w07.040"] = {
		"sits with legs crossed and both palms open on {g:his|her} knees, breathing slowly, as if waiting for someone to fill them.",
		"settles down, closes {g:his|her} eyes and stays very still, the way one waits outside a door after knocking.",
	},
	["cls.shaman.muse.w07.041"] = {
		"One sharp word from the earth and a caster's spell dies in the throat. It's a rude thing to do. I do it often.",
		"I ask the ground to jolt once, hard, and someone's chant stops halfway. The spirits seem to enjoy interrupting.",
	},
	["cls.shaman.muse.w07.042"] = {
		"Water heals and water freezes. It is the same spirit in two moods, and I've learned to ask for the right one.",
		"The gentlest element has a cold edge. I used to forget that. Now I keep it close for anything that runs.",
	},
	["cls.shaman.muse.w07.043"] = {
		"Lightning that jumps from one foe to the next, choosing as it goes. I set it loose and then it makes its own decisions. That should worry me more than it does.",
		"Chain lightning never goes quite where I expect. It hops, it chooses, it finds the third one I hadn't seen. The air is cleverer than I am.",
	},
	["cls.shaman.muse.w07.044"] = {
		"Mail at last. It's heavy and it rings, and the spirits don't seem to mind the noise. My knees mind it a little.",
		"The trainers said I'd earn the right to wear mail. Now I wear rings of iron and still ask the earth to make me harder to break.",
	},
	["cls.shaman.muse.w07.045"] = {
		"Orcs, trolls and tauren each came to the spirits by their own road. In the Horde we compare notes. The elements seem to approve.",
		"Three peoples of the Horde speak with the elements, each in its own accent. When we meet there's always someone who does it differently, and it's always worth watching.",
	},
	["cls.shaman.muse.w07.046"] = {
		"People bring me their troubles as if I could ask the sky to fix them. Mostly I listen. That seems to help them more than the sky would.",
		"Folk imagine the elements on a leash at my side. What I really keep at my side is patience, and they borrow that as well.",
	},
	["cls.shaman.muse.w07.047"] = {
		"The elements keep their own calendar. Fire is never quite asleep and water is never quite awake. I just try to learn their hours.",
		"Each spirit has its own pace. Fire runs, earth crawls, water wanders, air never stops. I spend my days trying to walk beside all four.",
		"Earth thinks in centuries, fire in heartbeats. Somewhere between the two, I'm trying to think at all.",
	},
	["cls.shaman.muse.w07.048"] = {
		"On a long empty road the elements are the only company that never tires of me. I talk to them more than I'd admit.",
		"When I walk alone, I'm never quite alone. The stones underfoot, the air, the stream I cross: I greet them all, and it keeps me sane.",
	},
	["cls.shaman.muse.w07.049"] = {
		"The mountains were here before the first shaman and will be here after the last. It does me good to remember how small my part is.",
		"Whatever I ask of the earth, it was already old when my people learned to ask. I try to speak to it like the newcomer I am.",
		"The stone I'm sitting on has outlived kings and will outlive me. Around it, I keep my voice low.",
	},
	["cls.shaman.muse.w07.050"] = {
		"No, the totems don't have names. All right, they do. No, I'm not telling you.",
		"I don't name my totems. I just know which one sulks.",
	},
	["cls.shaman.muse.w07.051"] = {
		"Sometimes the ancestors pass through my sleep without a word, only looking. I wake feeling inspected, and resolved to do better.",
		"The old ones visit my dreams now and then. They never explain anything. They just stand there until I understand I've been careless.",
	},
	["cls.shaman.muse.w07.052"] = {
		"draws a slow circle in the dust with one finger, divides it into four, and studies it as though it were a map.",
		"scratches four short marks into the ground around {g:him|her}, one for each direction, and seems to relax once they are done.",
	},
	["cls.shaman.muse.w07.053"] = {
		"A totem never keeps its gift for me alone. Whoever walks with me gets the same share. I like that about them.",
		"The earth totem shares itself out among my companions, equal portions, no favorites. A fine lesson for most people I know.",
	},
	["cls.shaman.muse.w07.054"] = {
		"High places make the air talkative. I climb for the view and stay because something up there keeps asking me questions.",
		"Up on a ridge the air spirits crowd close, curious about whoever made the climb. I always feel a little interviewed.",
	},
	["cls.shaman.muse.w07.055"] = {
		"A campfire is the friendliest face fire ever shows. I sit by one and remember that the same spirit has burned a forest down somewhere today.",
		"Every cooking fire is a small spirit agreeing to be useful. I feed it, it feeds me. A fair arrangement, while it lasts.",
	},
	["cls.shaman.muse.w07.056"] = {
		"The trainers make it sound simple: ask, listen, give thanks. They leave out the part where the spirit says no in front of everyone.",
		"Every new lesson at the trainer's sounds easy and then takes a month of embarrassment to get right.",
	},
	["cls.shaman.muse.w07.057"] = {
		"Breath is air, blood is water, bone is earth, and the heat in the chest is fire. A shaman is only a small walking balance of the four.",
		"I carry the elements inside me: air in the lungs, water in the veins, earth in the bones, fire in the belly. Keeping those in balance is the first lesson, and the hardest.",
	},
	["cls.shaman.muse.w07.058"] = {
		"The veterans of the Third War tell how the Horde stood beside old enemies to hold back the demons. I think of that whenever someone says an enemy is forever.",
		"Even the Horde fought shoulder to shoulder with the Alliance once, the old soldiers say, when the demons came. Balance sometimes keeps strange company.",
	},
	["cls.shaman.muse.w07.059"] = {
		"Still water listens better than running water. When I have something hard to ask, I look for a lake.",
		"A fast river hears nothing over its own voice. A pond hears everything. I bring my questions to the quiet ones.",
	},
	["cls.shaman.muse.w07.060"] = {
		"Some days I call and nothing comes but the echo of my own voice. I don't take it personally anymore. The spirits have other business.",
		"The silence of the elements is the worst sound I know. It always passes. It never passes quickly.",
		"When the spirits won't come, I don't shout louder. I sit down and wait for them to remember me.",
	},
	["cls.shaman.muse.w07.061"] = {
		"Walk a little softer. The ground can hear you coming from a long way off.",
		"You stamp as if you were angry with the earth. It hasn't done anything to you.",
	},
	["cls.shaman.muse.w07.062"] = {
		"When I die, I'd like to go into the ground slowly and without fuss, the way leaves do. Until then I mean to give the earth as little reason to hurry as possible.",
		"Sooner or later I'll be soil. It's no threat; it's an old agreement between me and the ground. I'm simply in no hurry to honor it.",
		"One day I'll lie down in the earth for good. I've made my peace with that, provided the day is a long way off.",
	},
	["cls.shaman.muse.w07.063"] = {
		"runs a thumb along the carved grain of a totem, smoothing a nick in the wood with slow, patient strokes.",
		"takes out a totem and polishes it on a sleeve, the way a smith wipes down a favorite hammer.",
	},
	["cls.shaman.muse.w07.064"] = {
		"Warriors want a fight over quickly. Mages want it clever. A shaman wants it balanced, which means nobody ever thanks me for the part they didn't notice.",
		"In any fight I'm doing three things at once: hitting, mending, and keeping the totems where they belong. Nobody sees the third.",
	},
	["cls.shaman.muse.w07.065"] = {
		"The first thing a shaman learns is to keep quiet. Everything else comes after, and comes slowly.",
		"Before the lightning, before the healing, there was the listening. It's still the hardest part of the craft, and the one I fail most often.",
		"My teachers spoke very little and listened a great deal. I thought it was their age. It was the craft.",
	},
	["cls.shaman.muse.w07.066"] = {
		"For the Horde, and for the balance. The two don't always agree. I try to keep faith with both.",
		"My arm for the Horde, my patience for the spirits. Some days that's an easy split. Some days it isn't.",
	},
	["cls.shaman.muse.w07.067"] = {
		"A stone in my boot again. The earth has a sense of humor, and it is not a subtle one.",
		"Every pebble that finds its way into my boot feels like a small reminder from below: don't get above yourself.",
		"I shake out my boot and a little stone drops back to the ground, satisfied. Message delivered, I suppose.",
	},
	["cls.shaman.muse.w07.068"] = {
		"When I'm angry, fire comes far too easily. That's exactly when I should ask for it least.",
		"My temper and the fire spirits get along much too well. I've learned to cool the one before I call the other.",
		"Fire answers faster when I'm furious. A shaman who notices that should be worried, not pleased.",
	},
	["cls.shaman.muse.w07.069"] = {
		"I say thank you after every spell, under my breath. Nobody hears it. That isn't who it's for.",
		"A word of thanks for every bolt, every healing, every totem. It costs nothing, and it keeps the spirits willing.",
		"Some shamans think gratitude is a formality. I suspect the spirits grow slow for those who forget it.",
	},
	["cls.shaman.muse.w07.070"] = {
		"If the ground starts humming, take a step back. It's either me, or something you'd like even less.",
		"Odd crackle in the air? Probably me. If it isn't me, run.",
		"When my hair stands on end, yours ought to as well. Consider yourself warned.",
	},
	["cls.shaman.muse.w07.071"] = {
		"Every creature I kill has a spirit that goes somewhere. I don't know where. I hope it's a kinder place than the end of my weapon.",
		"I kill, because the road demands it. Then I spare a thought for whatever spirit just left. It's the least a shaman owes.",
		"Hunters thank the beast. Shamans thank the spirit that leaves it. I'm not sure which of us has it right, so I do both.",
	},
	["cls.shaman.muse.w07.072"] = {
		"counts quietly on {g:his|her} fingers, one, two, three, four, then starts again, as if checking that nothing has gone missing.",
		"touches each fingertip to the thumb in turn, lips moving, a small private reckoning that always stops at four.",
		"murmurs four short words under {g:his|her} breath, one for each element, and goes on as if nothing had happened.",
	},
	["cls.shaman.muse.w07.073"] = {
		"The day I start thinking of the elements as tools, I'll deserve to lose them. I say that to myself more often than I'd like.",
		"A sword is a tool. A spirit is not. The difference is that a sword never decides to stop working for you.",
		"Treat a spirit like a hammer and one day it will answer like one: hard, and at the wrong moment.",
	},
	["cls.shaman.muse.w07.074"] = {
		"Boots muffle the ground. If my feet were tougher I'd walk barefoot and hear all of it.",
		"Every pair of boots is a wall between me and the earth. A thin wall, but I can feel the difference.",
		"At the end of a long walk I pull my boots off and stand on the bare ground a moment. The earth has things to say that leather keeps out.",
	},
	["cls.shaman.muse.w07.075"] = {
		"Eat, sleep, fight, laugh. Skip one and the rest go crooked. Balance isn't only for the spirits.",
		"Fight all day and eat nothing, and even the elements will call you lopsided.",
		"Rest a little. A body pulled too hard one way snaps like anything else.",
	},
	["cls.shaman.muse.w07.076"] = {
		"There's always a moment, calling lightning, when I wonder whether it will remember which end of me to leave from.",
		"The power passes through me on its way out. One day I'll ask for too much and it will take a piece of me along. I try to ask sensibly.",
		"I respect lightning the way one respects a cliff edge: closely, and never with my back to it.",
	},
	["cls.shaman.muse.w07.077"] = {
		"The Horde was made of peoples the world had pushed to its edges. A shaman knows about edges: that's where the elements meet.",
		"Nobody built the Horde to be comfortable. It was built to survive, out of whoever was left. A shaman understands that kind of balance.",
		"The Horde holds together the way the elements do: by pulling against each other just enough, and no further.",
	},
	["cls.shaman.muse.w07.078"] = {
		"Water that can't move goes sour. People are the same. When I stay too long in one place, I can feel myself starting to smell of the swamp.",
		"Still water is wise, running water is healthy, and trapped water rots. I try to be the second kind, mostly.",
	},
	["cls.shaman.quest_complete.w07.001"] = {
		"Coin in the purse. Most of it will go on water and a better shield strap. The spirits don't take payment, but the vendors do.",
		"A fair reward. The elements work for thanks; my armor doesn't, and it needs mending again.",
		"Paid. I'll put some aside for the trainer. New lessons never come cheap, even when the spirits teach them for free.",
	},
	["cls.shaman.quest_complete.w07.002"] = {
		"That's settled. If anything else is troubling this place, I'd rather hear it now than later.",
		"Done. And while I'm here: has the ground felt strange to anyone lately? I'm asking for the spirits.",
		"Finished. Call on me again if things go crooked. Putting them straight is more or less my trade.",
	},
	["cls.shaman.quest_complete.w07.003"] = {
		"accepts the reward with a nod, then crouches briefly to touch the ground, as if letting someone else know the work is done.",
		"pockets the payment and spares a brief glance for the ground underfoot, like a worker checking in with the foreman.",
		"takes what is offered and, before turning away, murmurs a single word toward the earth.",
	},
	["cls.shaman.quest_complete.w07.004"] = {
		"Somebody's trouble is a little lighter now. The elements wouldn't notice. I do, and that will have to be enough.",
		"Small work, honestly done. The world is too big to mend all at once, but patch by patch it holds together.",
		"It doesn't change much. It changes something. That's the only kind of difference a single shaman can make.",
	},
	["cls.shaman.quest_complete.w07.005"] = {
		"They looked a little disappointed that I didn't chant over it. Next time I'll hum something, for their sake.",
		"Folk expect a shaman to finish a job with smoke and drums. I finished it with a sack and a long walk.",
		"No ritual, no lightning, just a task done. I think whoever asked was hoping for more of a show.",
	},
	["cls.shaman.quest_complete.w07.006"] = {
		"The task's done and I'm running on dregs. Water first, then a quiet hour, then I'll ask the spirits for anything else.",
		"My feet ache and my spirit's worn thin. The elements lent me a great deal today; time to give my body its turn.",
		"All that walking and calling, and only now the work's done do I notice how tired I am. The spirits rest when they please. I have to make the time.",
	},
	["cls.shaman.quest_complete.w07.007"] = {
		"The spirits did half of it, so by rights they get half the reward. I'll hold their share for them.",
		"I'd split this with the elements, but they never come round to collect.",
		"Thank you. The earth says you're welcome. Roughly.",
	},
	["cls.shaman.quest_complete.w07.008"] = {
		"Tasks like this are what hold the Horde together: done properly, by someone who could have walked past. Nobody sings about them.",
		"The Horde is built out of errands like this one, carried out by tired people who could have said no. I'm glad I didn't.",
		"The Warchief will never hear of a task like this. He'd approve anyway, I think: he's a shaman too, and knows how small things add up.",
	},
	["cls.shaman.quest_complete.w07.009"] = {
		"shoulders {g:his|her} pack again, the totems inside knocking together with a hollow, wooden sound.",
		"settles the pack more comfortably on {g:his|her} back and listens a moment to the totems shifting inside it.",
		"hitches up the heavy pack, and something carved and wooden inside it clacks in reply.",
	},
	["cls.shaman.quest_complete.w07.010"] = {
		"Half the troubles I'm paid to fix, the land tried to warn people about first. Nobody listens to the land. That's why there are shamans.",
		"If folk paid more heed to the ground and the water, I'd have far fewer errands. I'd also be poorer. The spirits find that funny, I think.",
		"Most people only call for help when the trouble is already loud. The earth had been whispering about it for weeks.",
	},
	["cls.shaman.quest_complete.w07.011"] = {
		"May the ground stay firm under your feet. That's the best thing I know how to wish anyone.",
		"Go well. Water when you're thirsty, fire when you're cold, and steady earth all the way.",
		"The task is done. May the elements be kind to this place for a good while.",
	},
	["cls.shaman.quest_complete.w07.012"] = {
		"When a task asks for killing, I do it, and I say a word for every spirit I send off. It doesn't balance the account, but it keeps it honest.",
		"Some rewards are paid for in blood, more or less. The spirits don't hold it against me. I'm less sure about the ancestors.",
		"Not every task leaves the world in better balance. This one might have. I'll ask the earth later, when things are quiet.",
	},
	["cls.shaman.quest_complete.w07.013"] = {
		"inclines {g:his|her} head to the one who asked, then, more briefly, to the ground at their feet.",
		"gives a short, respectful nod, the kind traded between people who both know what a hard road costs.",
		"touches two fingers to {g:his|her} brow in thanks, and lets the gesture finish pointing at the earth.",
	},
	["cls.shaman.quest_complete.w07.014"] = {
		"With each task I see through, the spirits seem to come a little quicker when I call. Maybe they keep count. Maybe I just walk taller.",
		"Work done well earns trust: from the people who asked and, I think, from the elements watching.",
		"Strange, how finishing an errand makes the earth under me feel steadier. Or perhaps it's my legs that have steadied.",
	},
	["cls.shaman.quest_complete.w07.015"] = {
		"Next time, send for a shaman while the trouble is still small. We come cheaper that way.",
		"If it starts to go wrong again, send word early. The spirits prefer prevention. So do my feet.",
		"Done. Do me a favor and don't let it get this crooked again.",
	},
	["cls.shaman.quest_complete.w07.016"] = {
		"Done here. The road is waiting, and the road has never once been patient with me.",
		"One task off my back. There'll be another before the next campfire, and I wouldn't really want it otherwise.",
		"Finished. Pack, boots, weapon, and on. A shaman who sits still too long starts to put down roots.",
	},
	["cls.shaman.quest_complete.w07.017"] = {
		"The elements have no use for coin. That's one of the reasons I trust them more than the people who pay me.",
		"Money is a thing of people. The spirits have never once asked me for any, and I find that restful.",
		"Gold changes hands, and the earth underneath doesn't notice. Some days I wish I were more like the earth.",
	},
	["cls.shaman.quest_complete.w07.018"] = {
		"Thank the spirits, not me. I only carried the message.",
		"Don't thank me too hard. The elements did the heavy lifting; I just pointed them the right way.",
		"Gratitude's welcome. Send some of it to the earth as well. It held the whole time.",
	},
	["cls.shaman.quest_complete.w07.019"] = {
		"I like to think the ancestors watched that one and nodded. They rarely say anything. A nod would do.",
		"Behind me somewhere, an old shaman long dead is either approving or sighing. I'll take either; both mean they're paying attention.",
		"The ancestors don't care about rewards. They care whether it was done well. This one, I think, was.",
	},
	["cls.shaman.quest_complete.w07.020"] = {
		"brushes the road's dust from {g:his|her} hands and lets it fall back to the ground where it belongs.",
		"claps the dirt from {g:his|her} palms, then pauses, as if apologizing to it for the rough treatment.",
	},
	["cls.shaman.quest_complete.w07.021"] = {
		"Done, and the spirits kept calm the whole way. A good day's work.",
		"That's finished. Nothing broke that shouldn't have. I'll call that a success.",
	},
	["cls.shaman.quest_progress.w07.001"] = {
		"Part of the way there. The earth is patient; I can manage to be, a little longer.",
		"Not finished, but closer. Rushing a task is like rushing a totem: it only works once it's settled.",
		"Some of it done. The rest is out there, and the spirits aren't going to fetch it for me.",
	},
	["cls.shaman.quest_progress.w07.002"] = {
		"pauses to take stock of the work so far, nods once, and looks toward what remains.",
		"checks the tally on {g:his|her} fingers, finds it short, and walks on without complaint.",
		"presses a foot to the ground for a moment, as if asking it which way the rest of the work lies.",
	},
	["cls.shaman.quest_progress.w07.003"] = {
		"That's all of it. Time to carry the news to whoever asked, and let the spirits know they can stop holding their breath.",
		"Everything that needed doing is done. Now the long walk to say so.",
		"The work is complete. Only the telling remains, and I'd like to manage it before my feet change their minds.",
	},
	["cls.shaman.reputation_change.w07.001"] = {
		"Trust from people, trust from the spirits: the same slow currency, earned the same way.",
		"They think a little better of me now. The spirits taught me that goodwill is built like a riverbank: stone by stone, and never in a hurry.",
		"A name spoken a little more kindly. I'll try to keep it that way; good standing, like balance, is easy to tip.",
	},
	["cls.shaman.rez.w07.001"] = {
		"The spirits let me go a little way down the far road, then called me back by the elbow. I'm not sure I was ready to turn round.",
		"Death was quiet and full of voices I almost knew. The earth under my feet again: louder, rougher, mine.",
	},
	["cls.shaman.rezother.w07.001"] = {
		"Come back. The road isn't finished with you.",
		"Your spirit is still close; I can feel it lingering. This way.",
		"Back you come. It's too early to go wandering with the dead.",
	},
	["cls.shaman.rezother.w07.002"] = {
		"Calling a spirit back is like calling to someone on the far side of a wide river. You call, you wait, you hope the voice that answers is the right one.",
		"There's always a moment, after I call, when nothing answers. It lasts a breath. It feels like a season.",
		"I call into the quiet and listen. The answer, when it comes, is never louder than a sigh.",
	},
	["cls.shaman.rezother.w07.003"] = {
		"lowers {g:his|her} voice and calls toward the still form, the way one coaxes a wary animal back to the hand.",
		"raises both hands over the still body and holds them there, palms down, until a breath answers from below.",
	},
	["cls.shaman.rezother.w07.004"] = {
		"Up you get. You'd have had a long walk otherwise.",
		"Saved you the long walk back. You can carry my pack for a while to say thanks.",
		"Welcome back. You missed nothing, except dying.",
	},
	["cls.shaman.rezother.w07.005"] = {
		"Every spirit I call back comes back a little colder. It takes a while to forget where it has been.",
		"The dead don't come back the same right away. Give them a moment; the warmth catches up.",
	},
	["cls.shaman.rezother.w07.006"] = {
		"Spirits of those who came before, send back the one who fell here.",
		"Ancestral spirits, open the way. There's a body here still waiting for its owner.",
	},
	["cls.shaman.rezother.w07.007"] = {
		"It's done. Weak legs for a while, and a foul temper, and a heartbeat. All three are fine by me.",
		"Back among the living. Sore, I expect, and in no mood for jokes. I'll save mine for later.",
	},
	["cls.shaman.rezother.w07.008"] = {
		"presses a palm to the earth and murmurs; close by, a breath catches and begins again.",
		"speaks to the empty air above the body as if someone were standing there, and waits.",
	},
	["cls.shaman.rezother.w07.009"] = {
		"Breathe. Good. Now never do that again.",
		"There you are. Don't make me come fetching you twice in one day.",
		"Easy, easy. Dying is tiring; coming back more so.",
	},
	["cls.shaman.rezother.w07.010"] = {
		"The spirit had already turned toward the ancestors. I asked it to turn around. It didn't have to listen to me. It did.",
		"I don't drag the dead back. I ask. If they come, it's their choice, and I'm grateful every time.",
	},
	["cls.shaman.thanks.w07.001"] = {
		"Thank you. I'll mention you to the spirits; they like to know who's been kind.",
		"My thanks. The ancestors keep a long memory for good turns, and so do I.",
	},
	["cls.shaman.thanks.w07.002"] = {
		"Thank you. If the earth ever shakes under you, it won't be on my account.",
		"Much obliged. I'd offer you a spark of lightning in return, but I'm told it's an awkward gift.",
	},
	["cls.shaman.threat.w07.001"] = {
		"Walk away, and the earth forgets your footprints. Stay, and it remembers you for a long time.",
		"Go now, and I'll ask the spirits to let it pass. I won't ask twice.",
		"Leave while the ground still likes you. That can change quickly.",
	},
	["cls.shaman.threat.w07.002"] = {
		"I speak to lightning most days. Don't give me something new to tell it.",
		"The thunder and I talk often. Shall I bring you up?",
		"The spirits ask me about the people I meet. So far I've been kind about you.",
	},
	["cls.shaman.threat.w07.003"] = {
		"lets a thin crackle of light run along {g:his|her} knuckles, saying nothing at all.",
		"glances at the ground under the other's feet, then back up, unhurried.",
	},
	["cls.shaman.threat.w07.004"] = {
		"The ancestors are patient with fools. I'm a little less patient than the ancestors.",
		"The spirits ask me for calm. I'm asking you to leave before I stop listening to them.",
		"I was taught to ask before I strike. Consider this the asking.",
	},
	["cls.shaman.threat.w07.005"] = {
		"There's a fire totem in my pack itching to come out. Don't give it a reason.",
		"I've a fire totem that hasn't touched the ground all day. Don't volunteer.",
	},
	["cls.shaman.victory.w07.001"] = {
		"The well's run dry for now. The spirits refill it at their own pace, never mine.",
		"Not a spark left in me. Sit, drink, wait for the elements to fill me up again.",
		"Bottom of the barrel. The spirits will fill me again, but slowly.",
	},
	["cls.shaman.victory.w07.002"] = {
		"Thank you, spirits. Same time tomorrow?",
		"Good work, everyone. And by everyone I mean the elements.",
		"Lovely work, earth. You too, fire. Water, you can put your feet up.",
	},
	["cls.shaman.victory.w07.003"] = {
		"watches the totems fade one by one, and dips {g:his|her} head to each as it goes.",
		"waits until the last totem has faded, and only then lets {g:his|her} shoulders drop.",
	},
	["cls.shaman.victory.w07.004"] = {
		"The spirits gave; I say thank you. A shaman who skips that step soon finds them deaf.",
		"Thanks first, quickly and plainly, before anything else. The elements keep a ledger, the old shamans say.",
	},
	["cls.shaman.victory.w07.005"] = {
		"That's what happens when the sky takes an interest in you.",
		"You stood against the elements. Most of them never even noticed.",
		"The sky doesn't often take sides. Today it took mine.",
	},
	["cls.shaman.victory.w07.006"] = {
		"Over. The elders say every spirit finds its element in the end. I hope this one finds a kind one.",
		"Whatever spark it had is loose now. I hope it settles somewhere gentler than this.",
		"The spirit has gone on. I'll say a word for it, though it would never have said one for me.",
	},
	["cls.shaman.victory.w07.007"] = {
		"I did warn you. Well, the lightning did. Loudly.",
		"In my defense, there was a great deal of crackling first. That counts as a warning.",
		"You can't say the sky didn't give you notice.",
	},
	["cls.shaman.victory.w07.008"] = {
		"Count what's left: mana, health, totems. Then move.",
		"Less mana, a few new bruises, every totem accounted for. A fair trade.",
	},
	["cls.shaman.victory.w07.009"] = {
		"crouches beside the fallen and lays two fingers on the ground next to it, a brief courtesy to the earth that will take it in.",
		"brushes the earth beside the fallen, only for a moment, as if introducing it to its new keeper.",
	},
	["cls.shaman.victory.w07.010"] = {
		"Next time, pick a quarrel with someone who doesn't have the sky on their side.",
		"Lesson for the next one: never argue with a shaman standing on good ground.",
		"Note for anyone watching: the shaman always gets the last word. Usually it's thunder.",
	},
	["cls.shaman.victory.w07.011"] = {
		"Four elements and I used two. The elders would call that lazy, and they'd be right.",
		"Remembered the water only at the end. A shaman with four spirits who calls on two is wasting the gift.",
	},
	["cls.shaman.victory.w07.012"] = {
		"There. The spirits can go about their business, and I about mine.",
		"Finished. Spirits, you're free to go. Thank you, truly.",
		"That's all, spirits. Off you go, with my thanks.",
	},
	["cls.shaman.victory.w07.013"] = {
		"Under my feet the ground has stopped trembling. It never enjoys these any more than I do.",
		"The ground settles. It feels the weight of every fight fought on it, and of every fall.",
		"The earth lies easy under me again, like a dog curling back up to sleep.",
	},
	["cls.shaman.victory.w07.014"] = {
		"flicks a few stray sparks from {g:his|her} fingertips, the way one shakes off water.",
		"shakes out {g:his|her} hands; a last few sparks drop to the ground and wink out.",
	},
	["cls.shaman.victory.w07.015"] = {
		"Earth on the holding, fire on the hitting, me on the shouting. Teamwork.",
		"A fine group effort. Mostly the elements' effort, but I was there.",
	},
	["cls.shaman.victory.w07.016"] = {
		"Fingers still tingling. The elements always leave a little of themselves behind.",
		"Pins and needles up to the elbow. Calling the spirits never comes free.",
	},
	["cls.shaman.victory.w07.017"] = {
		"Rest, spirits. You've earned it, and I'll need you again soon.",
		"Easy now, spirits. I'll be asking again before long.",
		"Go gently, spirits. That was good work, and I won't forget it.",
	},
	["cls.shaman.victory.w07.018"] = {
		"Someone, somewhere, will set out one bowl too many. The spirits don't explain that part.",
		"It had people, maybe. Most do. The elements take back the body and leave the rest to the living.",
	},
	["cls.shaman.victory.w07.019"] = {
		"There. Lie down in the earth and stay there. You were owed that long ago.",
		"Into the ground, and this time stay put. The ancestors will see to the rest.",
	},
	["cls.shaman.victory.w07.020"] = {
		"Go home, spirit. Whoever twisted you can't reach you there.",
		"Loose at last. Find your element and forget this place.",
	},
	["cls.shaman.victory.w07.021"] = {
		"The totems came through without a mark. I'm a little jealous.",
		"Every totem fine. Me, slightly less fine. They never take the hits; that's their secret.",
	},
	["cls.shaman.victory.w07.022"] = {
		"straightens slowly, working the stiffness out of {g:his|her} shoulders, and the faint charge in the air bleeds away.",
		"lowers {g:his|her} hands, and the sharp smell of lightning fades from around {g:him|her}.",
	},
	["cls.shaman.victory.w07.023"] = {
		"Anyone hurt? Speak up. I've water left for whoever needs it.",
		"Show me the cuts. The water spirits owe me a favor or two.",
	},
	["cls.shaman.victory.w07.024"] = {
		"Only the spirits saw. They don't applaud, but they don't forget either.",
		"No one watched but the spirits. As audiences go, that's enough.",
	},
	["cls.shaman.victory.w07.025"] = {
		"One more for the Horde. The spirits can have their share of the credit.",
		"The Horde stands a little stronger. I'll tell the spirits they helped.",
	},
	["cls.shaman.victory.w07.026"] = {
		"Like a storm that's had its say, it passes. What's left is clean air and a sore arm.",
		"It ends the way a squall ends: all at once, leaving everything rinsed.",
	},
	["cls.shaman.victory.w07.027"] = {
		"Stay down. The earth seems to like you better that way.",
		"Rest there. The ground's been wanting you since this started.",
		"Lie there. The earth has been patient; let it have you.",
	},
	["cls.shaman.victory.w07.028"] = {
		"picks up a pinch of dust, lets it run through {g:his|her} fingers and mutters a word of thanks.",
		"presses a palm briefly to the ground, the way one pats a horse that has carried well.",
	},
	["cls.shaman.victory.w07.029"] = {
		"Wolf's shape and off, before something else comes to see what the noise was.",
		"No lingering. Four legs, quick road, gone.",
	},
	["cls.shaman.victory.w07.030"] = {
		"Go on, then. Run with the spirits of your kind. No grudge from me.",
		"Your spirit's free to roam again. I hope the hunting's good where it goes.",
	},
	["cls.shaman.victory.w07.031"] = {
		"No ankh spent today. My purse thanks the spirits.",
		"The ankh stays in the pack another day. Thrifty and alive: a fine pairing.",
	},
	["cls.shaman.victory.w07.032"] = {
		"Balance holds, for the moment. Let's not waste it standing about.",
		"The scale sits level again. Where to next?",
		"Balance kept. Now, before anything else wanders by, onward.",
	},
	["cls.shaman.victory.w07.033"] = {
		"stands a moment over the fallen, lips moving, sending something after the departing spirit.",
		"lingers by the fallen, murmuring a few words meant for whatever spirit just left it.",
	},
	["cls.shaman.victory.w07.034"] = {
		"Hah! The spirits saw that. I'll be insufferable about it for days.",
		"That one I'll brag about to the spirits for a week. They'll pretend to listen.",
	},
	["cls.shaman.victory.w07.035"] = {
		"The ancestors approve, I think. With them it's hard to tell approval from sleep.",
		"If the old ones watched that, they're nodding. Or dozing. With the ancestors there's little difference.",
	},
	["cls.shaman.victory.w07.036"] = {
		"The mail took what the spirits didn't turn aside. Between them, not a scratch worth mentioning.",
		"Mail and spirits, both held. I'll take that.",
	},
	["cls.shaman.victory.w07.037"] = {
		"Answered again. I try never to take that for granted; the spirits notice when you do.",
		"They came when I asked. Every time they do, I make a point of being surprised.",
	},
	["cls.shaman.victory.w07.038"] = {
		"Done. Now, where did that spark go? I think I've singed my own sleeve.",
		"Finished, and I've scorched my sleeve again. The fire spirit thinks that's funny.",
		"Won, and only one hole burned in my cloak. A good day, by a shaman's reckoning.",
	},
	["cls.shaman.victory.w07.039"] = {
		"I listen for the spirits afterward. Not to be thanked; to hear whether they're content.",
		"A moment of listening, after. If the spirits are uneasy, the fight isn't really over.",
	},
	["cls.shaman.victory.w07.040"] = {
		"pushes a little earth with {g:his|her} boot over a scorched patch left by the fight.",
		"scuffs at a blackened mark on the ground until it's hardly there, tidying up after the elements.",
	},
	["cls.shaman.victory.w07.041"] = {
		"The old ways still work. Ask, listen, strike. Then give thanks.",
		"Asked, answered, and done. The oldest way there is, and it still holds.",
	},
	["cls.shaman.victory.w07.042"] = {
		"The quiet afterward is when the spirits come closest. I never know what to say to them.",
		"In the stillness after, I can almost hear them breathing. Then it passes.",
	},
	["cls.shaman.victory.w07.043"] = {
		"The lightning made its case. You held out to the very end. Admirable, in its way.",
		"The spirits made a strong argument. You lost it.",
	},
	["cls.mage.attack.w08.001"] = {
		"There. Much less dangerous, and frankly an improvement.",
		"Bleat all you like. It's still my turn.",
		"Wool suits you. Stay like that a while.",
	},
	["cls.mage.attack.w08.002"] = {
		"Stay right there. Your feet already agreed.",
		"Rooted in ice. Now we can keep a polite distance.",
	},
	["cls.mage.attack.w08.003"] = {
		"Catch. No, on second thought, don't.",
		"Here it comes, round and bright. Try to look surprised.",
	},
	["cls.mage.attack.w08.004"] = {
		"sends a stream of violet bolts across the gap, one after another, like beads slipping off a snapped string.",
		"holds out a steady hand, and pale missiles stitch the air between {g:him|her} and the foe.",
	},
	["cls.mage.attack.w08.005"] = {
		"Keep the range. A mage within arm's reach is a mage making mistakes.",
		"Distance is my armor. Mind the gap; spend it slowly.",
	},
	["cls.mage.attack.w08.006"] = {
		"You're not taking notes, are you? Pity. This bit's on the exam.",
		"Pay attention. I won't demonstrate this twice.",
	},
	["cls.mage.buff.w08.001"] = {
		"Arcane Intellect on myself. Vanity, perhaps, but a sharp mind is the only armor I really trust.",
		"A little more clarity for me. The books don't get shorter, so the reader has to get quicker.",
		"Clearer thoughts, self-administered. I'd prescribe it to half the world if they'd hold still.",
	},
	["cls.mage.buff.w08.002"] = {
		"Dampened. Their spells will land softer on me, and so would any healing, so I'd better not need any.",
		"A muffling ward on myself. Against casters it's worth the cost; against anything with a club, it's decoration.",
		"Other people's spells reach me muffled now. A fair trade, in a place crowded with casters.",
	},
	["cls.mage.buff.w08.003"] = {
		"Amplified, on myself. Every mending will count double now. Every curse too, but I'm an optimist today.",
		"Louder magic, aimed at me. If a healer is nearby, splendid. If not, I've made a small mistake.",
	},
	["cls.mage.farewell.w08.001"] = {
		"Farewell. Mind the road, and anything that glows when it shouldn't.",
		"I'm off. Try not to touch anything arcane while I'm gone.",
		"Go well. If something hums at you, don't hum back.",
	},
	["cls.mage.greet.w08.001"] = {
		"Greetings. Don't mind the smell of smoke; it's professional.",
		"Well met. Read anything good lately? No? Ah well.",
	},
	["cls.mage.greet.w08.002"] = {
		"Good day to you. May your thoughts stay clear and your road short.",
		"Greetings. Sharp wits and safe roads to you.",
	},
	["cls.mage.heal.w08.001"] = {
		"Alchemy: magic too shy to say its own name. It works, though, and I'm in no position to sneer.",
		"Somebody else's craft, corked in a bottle. I'll study the taste later, when I'm not bleeding.",
		"Herbs, heat and patience, and none of it mine. Humbling, how well it works.",
	},
	["cls.mage.heal.w08.002"] = {
		"Ugh. I can bend fire to my will, and nobody can make these taste decent.",
		"Down it goes. Note for the alchemists: flavor is also a discipline.",
	},
	["cls.mage.heal.w08.003"] = {
		"A warlock's stone. I won't ask what went into it, and it has the manners not to tell me.",
		"Warm stone, borrowed life. I've stopped asking where these come from; the answer never helped.",
	},
	["cls.mage.heal.w08.004"] = {
		"Linen and a good knot. Every mage should learn this before the first fireball.",
		"No formula, only cloth pulled tight. The oldest magic of all, and the least glamorous.",
		"Over, under, tie it off. The academy never taught me this; the road did.",
	},
	["cls.mage.heal.w08.005"] = {
		"winds the bandage with the same care {g:he|she} gives a spell diagram: neat, even, and checked twice.",
		"ties off the bandage with a precise little tug, as if closing a parenthesis.",
	},
	["cls.mage.heal.w08.006"] = {
		"So much power at my fingertips, and none of it points inward. Strange craft, that can unmake a wall and not mend a wrist.",
		"I can call fire out of nothing, and still I mend like anyone else. The arcane is a poor nurse.",
	},
	["cls.mage.heal.w08.007"] = {
		"Better. Now, where was I? Ah yes. Setting things alight.",
		"There. Back to the interesting part of the day.",
		"Mended enough. Let's resume the lecture.",
	},
	["cls.mage.heal.w08.008"] = {
		"The pain recedes on schedule. I'd keep a record, if anyone would ever want the figures.",
		"Hurt, then less hurt, then a dull ache. Predictable, like a good experiment. I'd rather have been the observer.",
	},
	["cls.mage.heal.w08.009"] = {
		"straightens {g:his|her} collar and resumes an air of complete composure, as if nothing had ever touched {g:him|her}.",
		"clears {g:his|her} throat, tidies a sleeve, and looks about with the dignity of someone who was never hurt at all.",
	},
	["cls.mage.heal.w08.010"] = {
		"Breath coming easy again. Good: no one ever cast a decent spell while gasping.",
		"My breathing settles. Without a steady breath, every incantation comes out crooked.",
	},
	["cls.mage.heal.w08.011"] = {
		"Patched for now. The rest of the argument I'll settle with fire.",
		"Enough to stay in it. Now back to the casting, and quickly.",
		"That buys a few more spells. Spend them well.",
	},
	["cls.mage.levelup.w08.001"] = {
		"Another page of the craft turns over. The trainers will have something new for me, and something new to warn me about.",
		"My grasp reaches a little further. The arcane is endless; that is the whole charm of it.",
		"A little more of the pattern makes sense. The more I see, the larger the part I don't.",
	},
	["cls.mage.levelup.w08.002"] = {
		"Stronger. Let's celebrate by not setting anything on fire. For an hour.",
		"Better at this. Someone stand well back; I'm feeling experimental.",
		"Improved. The next spell will be bigger, and the scorch marks proportionally so.",
	},
	["cls.mage.pray.w08.001"] = {
		"Whatever orders the patterns I study: keep my mind clear, my hands steady, and my hunger for knowing in its place.",
		"If anything stands behind the arcane and listens, let me learn without being devoured by the learning.",
	},
	["cls.mage.quest_progress.w08.001"] = {
		"Partway done. Like a long proof: the middle steps are dull, and that's where people slip.",
		"Progress. The variables are falling into place one by one.",
		"Some of it settled. I'd draw a diagram if anyone would look at it.",
	},
	["cls.mage.quest_progress.w08.002"] = {
		"That's everything. Let's go and report before I find something more interesting to do.",
		"All done. Time to collect, and perhaps borrow a book on the way.",
		"Finished. Back to whoever asked, and then to my reading.",
	},
	["cls.mage.quest_progress.w08.003"] = {
		"makes a quick tally in the air with one finger, frowns at the result, and carries on.",
		"mutters a count under {g:his|her} breath, the way one recites a formula, and moves on.",
		"pauses to reckon the remainder, lips moving silently, then sets off again.",
	},
	["cls.mage.reputation_change.w08.001"] = {
		"They think better of me now. Good: people lend you their books once they stop expecting you to set them alight.",
		"A little more trust from them. The arcane makes people nervous; patience and plain manners are the counterspell.",
		"My name sits easier with them now. Funny how a mage is only frightening until someone has shared a meal with one.",
	},
	["cls.mage.rez.w08.001"] = {
		"Back. Death is the one subject nobody lets you take notes on, and I tried.",
		"Alive again. A shame, in a way: I had questions, and the other side had no time for them.",
	},
	["cls.mage.thanks.w08.001"] = {
		"Thank you. If you ever need a fire lit, or a long word explained, I'm your mage.",
		"Much obliged. I'd repay you in gold, but scholars are paid in footnotes.",
	},
	["cls.mage.thanks.w08.002"] = {
		"Thank you. Kindness isn't in any of my books; I'm glad to see it in practice.",
		"My thanks. I'll remember it, and my memory is trained.",
	},
	["cls.mage.threat.w08.001"] = {
		"Most of you is water, you know. And water freezes. I've checked.",
		"One more step and we'll find out how much of you can turn to ice.",
		"Do you know what you're mostly made of? Something I can freeze.",
	},
	["cls.mage.threat.w08.002"] = {
		"Leave now and you get to keep your eyebrows.",
		"Walk away and you'll stay the same shape. That's my best offer.",
		"Go, and take your eyebrows with you while they're still attached.",
	},
	["cls.mage.threat.w08.003"] = {
		"I've read about things like you. The books all end the same way.",
		"I could explain what's about to happen to you, but you wouldn't follow the arithmetic.",
	},
	["cls.mage.threat.w08.004"] = {
		"Mind your tone. I'm the one with fire in my hands.",
		"Careful. I've been patient all day, and patience is the first thing to burn.",
		"Raise that weapon and I'll raise the temperature.",
	},
	["cls.mage.threat.w08.005"] = {
		"I know a word that turns a body into ash. I'm deciding whether you've earned it.",
		"There's a spell I keep for special occasions. Don't become one.",
	},
	["cls.priest.buff.w08.001"] = {
		"Fortitude on my own bones for once. The long day ahead won't care who usually does the mending.",
		"A little more endurance laid on myself. Healers have to outlast everyone, or nobody lasts.",
	},
	["cls.priest.buff.w08.002"] = {
		"touches {g:his|her} own breastbone and speaks a short word of warding; for a moment {g:his|her} outline holds a faint pale edge.",
		"turns the ward inward with a small gesture toward {g:his|her} own chest, the way one buttons a coat before going out.",
	},
	["cls.priest.buff.w08.003"] = {
		"Shield on myself. Not generous, but a healer who can't be interrupted is worth two who can.",
		"A ward for me this time. Let them hammer on it while I get on with the real work.",
	},
	["cls.priest.heal.w08.001"] = {
		"My own turn for once. I always leave myself for last, and today last came early.",
		"Look at me, needing my own services. I'd send myself the bill, but I couldn't pay it.",
		"I tell everyone the same thing: don't get hit. Perhaps I should listen to me.",
	},
	["cls.priest.heal.w08.002"] = {
		"Mending my own hurt feels stranger than mending anyone else's, like overhearing my own name in a crowd.",
		"My hands know other people's wounds by heart. My own they handle like a stranger's parcel.",
	},
	["cls.priest.heal.w08.003"] = {
		"Hold on. Seeing to myself. One moment.",
		"Excuse me. Patching my own leak.",
		"A moment. The healer needs healing; it happens.",
	},
	["cls.priest.heal.w08.004"] = {
		"lays a palm flat against {g:his|her} own ribs and murmurs the words, eyes on the fight rather than the wound.",
		"presses a hand over {g:his|her} own hurt and says the words briskly, as one scolds someone who should know better.",
		"touches the wound once, quick and businesslike, and turns away before the glow has even faded.",
	},
	["cls.priest.heal.w08.005"] = {
		"If I fall, nobody gets mended. So: me first, this once, and no guilt about it.",
		"A dead healer heals no one. Selfish, maybe. Necessary, certainly.",
		"The others need me standing. Mending myself is only mending them a little in advance.",
	},
	["cls.priest.heal.w08.006"] = {
		"Light, it's me again. Same request, smaller patient.",
		"I ask the Light for others all day. Asking for myself, I almost whisper, and it answers just the same.",
		"For once the hands I mend are my own. The Light doesn't seem to mind whose they are.",
	},
	["cls.priest.heal.w08.007"] = {
		"Mended. You'll need more than that to stop a priest.",
		"Closed up already. Go on, try again.",
		"All that effort, and I undid it with a sentence.",
	},
	["cls.priest.heal.w08.008"] = {
		"Breath back in my chest. Now I can say the words properly again.",
		"Air all the way down at last. A prayer gasped is a prayer half lost.",
	},
	["cls.priest.heal.w08.009"] = {
		"It's easier to mend a stranger. My own hurt argues with me the whole way.",
		"Other people's pain is a task. Mine is a conversation, and it never lets me finish a sentence.",
		"Strange: I'm gentler with anyone's wound than with my own.",
	},
	["cls.priest.heal.w08.010"] = {
		"speaks the familiar words under {g:his|her} breath, and a faint glow gathers at the wound and sinks in.",
		"bows {g:his|her} head for a heartbeat over {g:his|her} own hurt, and the mending takes without fuss.",
	},
	["cls.priest.heal.w08.011"] = {
		"Mana spent on myself is mana I can't give someone else. Next time I'll stand further back.",
		"I paid for that with my own reserves. Lesson: the healer's best place is out of reach.",
	},
	["cls.rogue.attack.w08.001"] = {
		"Behind you. Always behind you.",
		"You should have watched your back. Everyone should.",
		"From the back. Terribly rude, I know.",
	},
	["cls.rogue.attack.w08.002"] = {
		"That's one. They add up.",
		"Another nick. I'm a patient sort.",
		"Small cut. Then another. You'll see where this goes.",
	},
	["cls.rogue.attack.w08.003"] = {
		"All those little cuts were me saving up. Here's the bill.",
		"Saved up, now spent. All of it at once.",
		"Every opening I found, cashed in together.",
	},
	["cls.rogue.attack.w08.004"] = {
		"Can't see? That's the idea.",
		"Eyes watering? Take a moment. I'll use it.",
	},
	["cls.rogue.attack.w08.005"] = {
		"Hush. Nobody wanted to hear that one.",
		"No speeches. Not today.",
		"Whatever you were about to say, keep it.",
	},
	["cls.rogue.attack.w08.006"] = {
		"Just there, under the ribs. Your legs will be along shortly.",
		"Stay put a moment. I won't be long.",
	},
	["cls.rogue.attack.w08.007"] = {
		"Feet first. The blade only goes where the feet have already been.",
		"Small cuts, many of them. Patience is the sharpest thing I carry.",
		"Watch the shoulder, not the weapon. The shoulder always tells first.",
	},
	["cls.rogue.attack.w08.008"] = {
		"Stings, does it? That was rather the point.",
		"You felt that one, I see. Splendid.",
		"Sorry, was that a vital bit? Hard to tell with you.",
	},
	["cls.rogue.attack.w08.009"] = {
		"slips half a step to the side, and the steel goes in where the guard used to be.",
		"turns a stumble into a lunge, the blade flashing low and gone again.",
		"feints high with one hand and strikes low with the other, too quick to follow.",
	},
	["cls.rogue.attack.w08.010"] = {
		"Faster now. The rhythm belongs to me.",
		"Quicker hands. Now the dance is mine to lead.",
	},
	["cls.rogue.farewell.w08.001"] = {
		"I'm off. You won't see me leave, so let's say it now.",
		"Farewell. If anyone asks, you never saw me.",
		"Goodbye. Keep your purse close; not on my account, of course.",
	},
	["cls.rogue.greet.w08.001"] = {
		"Hello. Relax, your pockets are safe. With me, anyway.",
		"Well met. Don't mind me; I'm only passing through, the quiet way.",
	},
	["cls.rogue.levelup.w08.001"] = {
		"A little quicker than yesterday. Quick is the only kind of strong I care about.",
		"Steadier hands, a softer step. Somewhere a lock just got easier, and doesn't know it yet.",
		"Better. Not louder, not bigger. Better at not being where the blow lands.",
	},
	["cls.rogue.levelup.w08.002"] = {
		"Better at this every day. Lock your doors.",
		"Sharper, quieter, nimbler. Tell the guards. Actually, don't.",
		"Coming along nicely. Someone's strongbox should be getting nervous.",
	},
	["cls.rogue.lowhp.w08.001"] = {
		"Somebody here is cheating, and for once it isn't me.",
		"Unfair. That's supposed to be my side of the bargain.",
		"I hate a fair fight. This one's getting fair, and I hate it more.",
	},
	["cls.rogue.lowhp.w08.002"] = {
		"Exits: none. Blades: one. Breaths left: don't count those.",
		"Take stock. One knife, no door, and a body that's about done arguing.",
		"Inventory: a blade, a wall at my back, and very little else. Make it enough.",
	},
	["cls.rogue.lowhp.w08.003"] = {
		"drops low and circles just out of reach, buying heartbeats one at a time.",
		"goes quiet and small, the way a cornered animal does just before it bites.",
		"spits to one side and shifts {g:his|her} grip, eyes narrowed to two cold slits.",
	},
	["cls.rogue.lowhp.w08.004"] = {
		"You've cut me. Now you have my full attention.",
		"First blood was yours. The last of it will be mine.",
		"Good hit. Enjoy it; it was your only one.",
	},
	["cls.rogue.lowhp.w08.005"] = {
		"Run or finish it. Decide now, before my legs decide for me.",
		"One heartbeat to choose: cut or flee. Choose well, choose fast.",
		"Too slow to run, too hurt to dance. Then end it quickly.",
	},
	["cls.rogue.lowhp.w08.006"] = {
		"If I go down here, it'll be quietly. That's how I've done everything else.",
		"No one will hear me fall. I spent years learning that, and now it's the part I like least.",
		"A quiet end, if it comes. Fitting, I suppose. I never cared for an audience.",
	},
	["cls.rogue.lowhp.w08.007"] = {
		"Could we talk about this? Split the take, maybe? No? Worth asking.",
		"Is this a bad moment to offer you a share?",
		"I'm open to negotiation. Very open. Bleeding, in fact.",
	},
	["cls.rogue.lowhp.w08.008"] = {
		"Breathe through the teeth. Keep the steel low. Don't let them see it.",
		"Pain later. Right now, eyes on the hands, not the face.",
		"Bleeding is just a clock. Beat the clock.",
	},
	["cls.rogue.lowhp.w08.009"] = {
		"wobbles, catches {g:himself|herself} on nothing at all, and somehow turns the stumble into a feint.",
		"staggers sideways, and even {g:he|she} could not say how much of it is an act.",
	},
	["cls.rogue.lowhp.w08.010"] = {
		"Right. No more playing nice.",
		"Enough. Now I'm properly cross.",
		"That's my blood on my good boots. You'll pay for both.",
	},
	["cls.rogue.lowhp.w08.011"] = {
		"Grip's going slick. Wipe it, hold it, keep holding it.",
		"Fingers going numb. Of everything I could lose, not those.",
		"The hilt keeps sliding. Two hands if I have to. Don't drop it.",
	},
	["cls.rogue.lowhp.w08.012"] = {
		"I misjudged that one. If I live, I'll study it. If not, someone else can.",
		"Lesson noted: never take a fight just because the purse looked fat.",
		"Greed, this is what you cost. I'll want a word with you later.",
	},
	["cls.rogue.lowhp.w08.013"] = {
		"Come and finish it, then. Closer. A little closer.",
		"Want the last of me? Step in and take it. Mind the knife.",
		"You'll have to work for the rest. I don't come cheap.",
	},
	["cls.rogue.lowhp.w08.014"] = {
		"lets {g:his|her} guard sag a hair, as if spent, and waits for the foe to believe it.",
		"keeps the blade flat along the forearm, swaying, patient as a sprung trap waiting to close.",
	},
	["cls.rogue.lowhp.w08.015"] = {
		"Whoever loots my body gets my purse. Over my dead... ah. Right. Stay up, then.",
		"I am not letting some stranger go through my pockets. Get up. Stay up.",
		"Somebody would rifle my pockets afterward. The insult alone is keeping me on my feet.",
	},
	["cls.rogue.pray.w08.001"] = {
		"If anything up there listens to my sort: quiet floors, loose locks, and one more morning.",
		"Whatever keeps watch over those who work unseen: keep my step soft and my luck long, and I'll ask for nothing else. Today.",
	},
	["cls.rogue.quest_progress.w08.001"] = {
		"Partway there. A job's like a lock: the first pins are easy, the last one decides everything.",
		"Some of it done. Every job has an easy middle that lies to you about the end.",
		"Getting there. The careless ones get caught on the last stretch, never the first.",
	},
	["cls.rogue.quest_progress.w08.002"] = {
		"That's the lot. Now to get paid before anyone changes their mind.",
		"Done. Let's collect, and count it twice.",
		"All of it. Time to go and look trustworthy at someone.",
	},
	["cls.rogue.quest_progress.w08.003"] = {
		"ticks off a tally under {g:his|her} breath, lips barely moving, and slips onward.",
		"pauses in a patch of shade to reckon what's left, then moves off without a sound.",
		"counts something on {g:his|her} fingers, hides the hand again, and goes on.",
	},
	["cls.rogue.reputation_change.w08.001"] = {
		"They trust me a little more now. In my trade, that's either an honor or an opportunity. I'm choosing honor. Mostly.",
		"A warmer welcome than before. Funny how much easier honest work gets when people stop counting the spoons.",
		"More doors open to me now, and I didn't have to pick a single one.",
	},
	["cls.rogue.rez.w08.001"] = {
		"Back. Death was the one door I couldn't pick, and it opened anyway, from the other side.",
		"Alive again. Even death couldn't keep hold of me; I slip out of everything sooner or later.",
	},
	["cls.rogue.thanks.w08.001"] = {
		"Thanks. I owe you one, and I always pay. Eventually.",
		"Much obliged. Don't worry, I'm not keeping count. I am, actually.",
	},
	["cls.rogue.thanks.w08.002"] = {
		"Thank you. Help with no price on it; I'll need a while to work out what that's like.",
		"My thanks. I keep looking for the catch, and there isn't one. Strange.",
	},
	["cls.rogue.threat.w08.001"] = {
		"You won't hear me coming. You'll only feel it.",
		"Next time something creaks behind you, it won't be the floor.",
		"Get used to looking over your shoulder. It won't help, but it'll pass the time.",
	},
	["cls.rogue.threat.w08.002"] = {
		"Keep talking. I'm learning where you're soft.",
		"I've a knife for every bad idea you're about to have.",
		"Go on, make your move. I've already made three of mine.",
	},
	["cls.rogue.threat.w08.003"] = {
		"Nothing personal. It never is. That's what should worry you.",
		"I don't hate you. I don't need to. Think about that.",
	},
	["cls.rogue.threat.w08.004"] = {
		"Walk away while your legs still listen to you.",
		"Touch my things again and count your fingers after.",
		"Leave now. I won't say it a second time; I'll just do the other thing.",
	},
	["cls.rogue.threat.w08.005"] = {
		"I'd smile back, but you'd only worry what I was smiling at.",
		"Relax. If I wanted you dead, you'd be wondering why your back felt cold.",
	},
}, "base_classes")
