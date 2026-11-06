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
}, "base_classes")
