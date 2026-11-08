-- Texts in English for the parts of the monologues (#99). The rules are in Data/RegistryMonologues.lua.
-- Every variant of a part goes with every variant of the next part: read them in all their combinations.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	-- mono.muse.road
	["mono.muse.road.1"] = {
		"Another mile behind me. I stopped counting them a while ago.",
		"The road has a way of emptying the head. I let it.",
	},
	["mono.muse.road.2"] = {
		"Odd, what the feet remember: a loose stone, a bend, a gate left open.",
		"My boots know this world better than any map I have bought.",
	},
	["mono.muse.road.3"] = {
		"Somewhere ahead there is a fire I have not sat at yet.",
		"Whatever waits at the end of the road, I would rather walk to it than wait for it.",
	},

	-- mono.muse.scar
	["mono.muse.scar.1"] = {
		"I caught myself tracing the old scar again.",
		"My hand went to the scar without asking me first.",
	},
	["mono.muse.scar.2"] = {
		"It stopped hurting long ago. It has not stopped talking.",
		"It is thinner now, and paler. Time is a patient healer and a poor liar.",
	},
	["mono.muse.scar.3"] = {
		"Every one of us is a map of the places we nearly stayed.",
		"One day I will tell someone how I got it. Not today.",
	},

	-- mono.muse.stars (order free: the second and third may change places)
	["mono.muse.stars.1"] = {
		"The stars are out, and nobody is asking anything of me.",
		"Night at last. The world is quieter when it cannot see me.",
	},
	["mono.muse.stars.2"] = {
		"I could name a few stars, if I tried. I would rather not.",
		"The old tales say each star is a watcher. Tonight I hope they are bored.",
	},
	["mono.muse.stars.3"] = {
		"Only breath, and the cold, and this small patch of dark that is mine.",
		"For an hour I belong to no one. It is a strange kind of wealth.",
	},

	-- mono.zone.crest (the first part is an emote: it follows the character's name)
	["mono.zone.crest.1"] = {
		"pauses where the road crests, and {zone} opens below.",
		"slows at the border stones and takes in {zone}.",
	},
	["mono.zone.crest.2"] = {
		"The land runs on further than the eye wants to follow.",
		"Every hill hides another, and every path forks before it ends.",
	},
	["mono.zone.crest.3"] = {
		"A bird crosses the sky without hurry, as if it owned the place.",
		"High up, a hawk turns once over the road and lets it be.",
	},

	-- mono.zone.dusk
	["mono.zone.dusk.1"] = {
		"stops to watch the light go amber over {zone}.",
		"turns west as the day burns low over {zone}.",
	},
	["mono.zone.dusk.2"] = {
		"Shadows stretch long across the ground, and the air cools by a breath.",
		"The colors leave the land one by one, the reds going last.",
	},
	["mono.zone.dusk.3"] = {
		"Soon the lamps will be lit, and the road will belong to the night.",
		"What is left of the day will not be spent in a hurry.",
	},

	-- mono.rest.hearth
	["mono.rest.hearth.1"] = {
		"Warm air, loud voices, the smell of bread. I stand in the doorway a moment longer than I need to.",
		"A fire, a bench, a roof that keeps the sky out. Small things, until you have gone without them.",
	},
	["mono.rest.hearth.2"] = {
		"Nobody here knows what I did today, and nobody asks.",
		"The keeper nods at me as if I were anyone. In here, I am.",
	},
	["mono.rest.hearth.3"] = {
		"I will sleep like a stone and leave the road outside until I wake.",
		"Tomorrow can knock. For now the door stays shut.",
	},

	-- mono.lvl.lock
	["mono.lvl.lock.1"] = {
		"Something has shifted. My arms know it before I do.",
		"There it is again, that small click, like a lock turning somewhere inside me.",
	},
	["mono.lvl.lock.2"] = {
		"The road does not get shorter. I just get better at walking it.",
		"I should feel prouder. Mostly I wonder what will come for me next.",
	},

	-- mono.rez.breath
	["mono.rez.breath.1"] = {
		"Breath again. It tastes of dust, and it is the sweetest thing I know.",
		"Back. The ground is cold under my hands, and that is how I know.",
	},
	["mono.rez.breath.2"] = {
		"For a moment there was nothing at all, not even fear.",
		"I keep looking for the wound. There is only the memory of it.",
	},
	["mono.rez.breath.3"] = {
		"Up, then. The world did not stop to wait for me.",
		"I will be more careful. I say that every time.",
	},
	["muse.w04.013"] = {
		"Nothing I carry is heavy by itself. The trouble is they all travel together.",
		"Each thing in this pack weighed nothing on its own. Together they've ganged up on me.",
		"One flask, one blanket, one spare this and that. Somehow the sum is a small mule.",
	},
	["muse.w04.014"] = {
		"Now and then I empty the pack and ask each thing why it's still with me. Few of them have a good answer.",
		"Sooner or later every pack needs a trial: everything out, and only the useful get back in.",
	},
	["muse.w04.015"] = {
		"Every piece of this kit was sold to me as light. Every merchant lied.",
		"'Hardly weighs a thing,' the merchant said. Merchants don't walk.",
	},
	["muse.w04.016"] = {
		"A rag, a little oil, a little patience. Caring for the gear is the only care I give myself without arguing.",
		"I'll mend a strap before I'll mend myself. Maybe the strap is easier to understand.",
		"Funny how gently I treat a frayed buckle, and how roughly I treat the hands that fix it.",
	},
	["muse.w04.018"] = {
		"There's a thing at the bottom of my pack I never use and never throw away. I've stopped asking why.",
		"One thing in this pack has no use at all. It's also the last thing I'd leave behind.",
	},
	["muse.w04.019"] = {
		"If I fall over, it's the pack's fault. I want that on record.",
		"Whatever gets me in the end, the pack will claim it helped.",
	},
	["muse.w04.020"] = {
		"Bread, cheese, and nothing chasing me: I've known feasts that were worth less.",
		"Give me stale bread and a quiet hour, and you can keep the banquets.",
		"A heel of bread eaten in peace beats a roast eaten looking over my shoulder.",
	},
	["muse.w04.021"] = {
		"My stomach has opinions, and it shares them at the worst possible moments.",
		"The belly keeps a calendar of its own. It never agrees with mine.",
	},
	["muse.w04.023"] = {
		"Travel rations. Proof that someone, somewhere, hates travelers.",
		"Whoever invented trail bread was settling a grudge.",
		"Hard tack: the only food that fights back harder than the things I hunt.",
	},
	["muse.w04.024"] = {
		"Sharing bread with a stranger is the oldest treaty I know. It's held up better than most written ones.",
		"Break bread with someone and you've signed something, even if neither of you can read.",
	},
	["muse.w04.027"] = {
		"Coin comes in by the copper and leaves by the handful. I'd like a word with whoever set that rate.",
		"I earn it one copper after another and spend it in fistfuls. Something doesn't add up.",
	},
	["muse.w04.028"] = {
		"Gold buys almost everything I need. It's the rest that keeps me awake.",
		"Coin settles most debts. Not the ones I actually lose sleep over.",
	},
	["muse.w04.029"] = {
		"Purse is lighter than it ought to be. I'll blame the repairs. I always blame the repairs.",
		"Where does it all go? This purse has a hole only coins can find.",
		"Counted twice and it came out worse the second time. That's not how counting works.",
	},
	["muse.w04.031"] = {
		"Every coin in my purse has passed through a hundred hands. Not one of them could keep it.",
		"Coins outlive their owners out of sheer habit. I try not to take it personally.",
		"This copper will be spent by people not born yet. It doesn't care whose hand it's in.",
	},
	["muse.w04.032"] = {
		"Merchants smile at me like an old friend. An old friend who's seen my purse.",
		"Every merchant alive knows exactly what I can afford, and prices it one copper higher.",
	},
	["muse.w04.033"] = {
		"Road sleep is never deep. Some part of me always stays by the door.",
		"On the road, sleep comes in thin slices, and one ear never quite goes under.",
		"I sleep the way a cat does now: whole body down, one ear still working.",
	},
	["muse.w04.034"] = {
		"Give me a wall to lean on and I could sleep through a war.",
		"I could sleep standing, like a horse. A tired, badly paid horse.",
	},
	["muse.w04.035"] = {
		"The dreams I have on the road never feel like mine. I wake up holding somebody else's fear.",
		"Away from a proper bed I dream strange things. By the time I wake, only the taste is left.",
	},
	["muse.w04.036"] = {
		"I'm owed about a month of sleep. I'll take it in installments.",
		"Somebody owes me a great deal of sleep. I'm keeping a ledger.",
	},
	["muse.w04.037"] = {
		"The moment before sleep is the only time the day stops arguing with me.",
		"When I finally lie down, the world runs out of things to say.",
		"Eyes shut, boots off, and for a little while nobody's case to argue, not even mine.",
	},
	["muse.w04.038"] = {
		"I keep writing letters in my head. Nobody ever reads them, and they're the best I've written.",
		"There's a letter I've started a dozen times in my head. It always begins well and ends nowhere.",
		"My best letters never touch paper. They're finished, signed, and folded somewhere behind my eyes.",
	},
	["muse.w04.039"] = {
		"If I wrote, what would I say? 'Alive, still walking, nothing worth the ink.'",
		"Dear whoever: alive, more or less. Fed, mostly. Nothing else I'd put in writing.",
	},
	["muse.w04.040"] = {
		"Somebody ought to hear that I'm all right. I keep failing to decide who.",
		"I should send word that I'm fine. To whom, exactly, is the hard part.",
	},
	["muse.w04.041"] = {
		"Some letters are written only to be burned. The writing was the point.",
		"A letter doesn't have to be sent to do its work. Some do it best as ash.",
	},
	["muse.w04.042"] = {
		"I count the ways out of a place before I count anything else. Habit. A good one.",
		"Exits first, then faces, then whatever's to eat. In that order, every time.",
		"Wherever I stop, my eyes find the doors before my feet find a seat.",
	},
	["muse.w04.043"] = {
		"My eyes check the edges of things even when I tell them to rest. They don't trust me to do it.",
		"Part of me is always on watch. I'd like to meet the rest of me someday.",
	},
	["muse.w04.045"] = {
		"No, I'm not jumpy. I'm well informed about what jumps.",
		"Nervous? No. I've just met a lot of things that come out of nowhere.",
	},
	["muse.w04.046"] = {
		"Boots, then belt, then the pack, then one long breath. Change the order and the day goes crooked.",
		"I don't believe in luck. I just never put the left boot on first.",
		"Same small ritual before setting off, every time. I'm not superstitious; I'm thorough.",
	},
	["muse.w04.048"] = {
		"I talk to my gear. It doesn't answer, which already puts it ahead of most company.",
		"Yes, I thanked the strap for holding. Somebody has to keep morale up.",
	},
	["muse.w04.049"] = {
		"Before I move on, I say the names of the last places behind me, quietly, so they know I noticed.",
		"I name the last few places I passed, under my breath, so none of them feels skipped.",
	},
	["muse.w04.050"] = {
		"Every muscle has filed its complaint. I've read them all. Denied.",
		"The shoulder hurts, the knee hurts, and something in my back has opened a grievance of its own.",
		"My joints have formed a council and are refusing to cooperate. I've overruled them.",
	},
	["muse.w04.051"] = {
		"After a fight my hands always shake a little. I let them; they've earned it.",
		"Hands that held steady through a fight are allowed to tremble once it's over.",
	},
	["muse.w04.052"] = {
		"I've got bruises in places I don't remember being hit. Very thorough, whoever it was.",
		"New bruise. No memory of earning it. The world has started billing me in advance.",
	},
	["muse.w04.053"] = {
		"The body keeps a ledger of every fight. It reads it back to me whenever I stand up too fast.",
		"Every fight leaves a line in the body's book. Some pages I'd rather not turn.",
	},
	["muse.w04.055"] = {
		"Tired is not the same as finished. The body likes to blur the two.",
		"The body announces the end long before it arrives. I let it talk and keep going.",
		"Every ache is an opinion. I listen to all of them and vote with my feet.",
	},
	["muse.w04.056"] = {
		"Some days this body feels like a loan, and the lender wants it back with interest.",
		"This body is on loan, I'm sure of it. And the interest is paid in aches.",
	},
	["muse.w04.059"] = {
		"Friendly strangers worry me more than rude ones. Rudeness is honest about its price.",
		"I trust a scowl more than a smile on the road. The scowl isn't selling anything.",
		"The ones who smile too fast always want something. The grumblers just want you gone.",
	},
	["muse.w04.060"] = {
		"Most help on the road comes from people you'll never see again. You pay it on to the next stranger, or not at all.",
		"The kindness of strangers can't be repaid to them. Only passed along to someone else.",
	},
	["muse.w04.061"] = {
		"Everyone I meet has advice. Nobody has a spare bootlace.",
		"Free advice all along the road. Free boots, oddly, nowhere.",
	},
	["muse.w04.062"] = {
		"The trick to a long life on the road is boring: look twice, eat often, and never be first to say 'I'm sure.'",
		"No secret to staying alive, only a long list of small dull habits, kept every single day.",
		"Staying alive isn't a talent. It's a hundred little chores nobody claps for.",
	},
	["muse.w04.063"] = {
		"Brave people make the best stories. Careful people get to tell them.",
		"The bold get the songs. The cautious get supper afterward.",
	},
	["muse.w04.064"] = {
		"Death doesn't need a grand reason. A loose strap, a missed step. So I check the strap.",
		"Most of the dead I've heard about weren't beaten. They were just a little careless, once.",
	},
	["muse.w04.065"] = {
		"Never fight anything you haven't watched for a while first. Free lesson.",
		"Watch before you strike. Whatever it is, it's already shown you how it fights.",
		"Eyes first, weapons second. Everything gives itself away if you look long enough.",
	},
	["muse.w04.066"] = {
		"Every mistake I survive is one I'll recognize next time. That's the whole school.",
		"Survive a mistake and it becomes a teacher. Don't, and it becomes someone else's lesson.",
		"A mistake I live through is tuition. The price is steep, but the lessons stick.",
	},
	["muse.w04.067"] = {
		"I've made my peace with dying. It's dying badly I'm still negotiating.",
		"Death I can accept. A stupid death, tripping over my own pack, I'd resent forever.",
	},
	["muse.w04.068"] = {
		"I wonder who'll find my things, if it comes to that. I should keep them tidier.",
		"If I fall somewhere out of the way, some stranger will go through my pack. I hope they find it useful, at least.",
	},
	["muse.w04.069"] = {
		"Some days I'm not sure I'm the right one for any of this. I go anyway; the right one never seems to turn up.",
		"Doubt walks beside me like an old dog. I've stopped trying to send it home.",
		"I'm never quite certain I'm equal to it. Funny how often that turns out not to matter.",
	},
	["muse.w04.070"] = {
		"Fear's allowed to come along. It just doesn't get to hold the map.",
		"I let fear travel with me. I never hand it the reins.",
	},
	["muse.w04.071"] = {
		"If it were easy, someone would have done it already. So, my turn.",
		"Hard things don't wait for the brave to show up. They take whoever's standing there.",
		"Somebody braver would be nice. Somebody braver isn't here.",
	},
	["muse.w04.072"] = {
		"Courage is mostly a matter of not thinking about it until afterward.",
		"Courage doesn't announce itself in the moment. You find out later, from how hard you're shaking.",
		"Bravery mostly happens before the thinking catches up.",
	},
	["muse.w04.073"] = {
		"What scares me isn't dying. It's the thought of something important left half done.",
		"The end I could face, I think. Leaving things unfinished behind me is what I can't stomach.",
	},
	["muse.w04.074"] = {
		"Get up. Do the next thing. Big decisions can wait; the next thing can't.",
		"There's always a next thing. Do that, and the big questions shrink to fit.",
		"When it all feels too large, pick the smallest useful task and start there.",
	},
	["muse.w04.075"] = {
		"Am I scared? Terribly. Am I going anyway? Apparently.",
		"Frightened, yes. Turning back, no. Those were always two different questions.",
	},
	["muse.w04.076"] = {
		"It isn't the fights that keep me awake. It's the moment just before, when I could still have chosen otherwise.",
		"Every fight starts with a choice. Most days I can live with mine.",
	},
	["muse.w04.077"] = {
		"It's easier to be brave with someone watching. Alone, courage has to come up from somewhere deeper.",
		"With nobody to be brave for, I have to dig further down and find a reason of my own.",
	},
	["muse.w04.078"] = {
		"There'll be a day I can't go on. This isn't it.",
		"I'll know when I'm done. I'm not.",
	},
	["muse.w04.079"] = {
		"Adventure, they said. Nobody mentioned the errands.",
		"Glory, they promised. Mostly I deliver things and get bitten.",
		"Somewhere between the legends and the truth is a lot of fetching.",
	},
	["muse.w04.080"] = {
		"If heroism had a smell, it would be sweat, old leather and yesterday's soup.",
		"Nobody paints heroes the way they really smell. Kinder that way.",
	},
	["muse.w04.082"] = {
		"I'm sure some bard is improving my life considerably. Good. Somebody ought to.",
		"If a bard ever sings about me, I hope the song leaves out the part with the boots.",
	},
	["muse.w04.083"] = {
		"One day I'll settle somewhere quiet and boring. I'll hate it within a week.",
		"Someday: a chair, a fire, nothing happening. I give it three days before I'm climbing the walls.",
	},
	["muse.w04.084"] = {
		"The world has many wonders. Clean socks are not reliably among them.",
		"I've seen marvels on the road. A pair of dry socks is rarer than any of them.",
	},
	["muse.w04.085"] = {
		"Every creature in this world seems to think I'm either food or trouble. I'd like to be neither, just once.",
		"To most of what's out there I'm either supper or a nuisance. Never a guest.",
	},
	["muse.w04.086"] = {
		"If anyone's keeping score, I'd like to dispute several of the early rounds.",
		"I'd like a word with whoever drafted the rules of this world. Several words, actually.",
	},
	["muse.w04.087"] = {
		"Yes, I talk to myself. Now and then I need an expert opinion.",
		"I'm my own best listener and my own worst critic. Busy job.",
	},
	["muse.w04.088"] = {
		"In the old tales nobody ever waits in line to have their gear mended. That's how you know they're tales.",
		"No ballad has a verse about the repair bill. I'd write one, but it would be too sad.",
	},
	["muse.w04.089"] = {
		"If I don't, who will? I keep hoping the answer is someone better rested.",
		"Somebody has to. I've checked, and it keeps being me.",
	},
	["muse.w04.090"] = {
		"The world's troubles are too big for one pair of hands. Good thing there are a lot of hands.",
		"I can't mend the world. I can mend the bit in front of me and trust the rest to others.",
		"No one fixes the world. Enough people fixing their corner of it comes close.",
	},
	["muse.w04.091"] = {
		"Every age thinks it's the last one. So far, every age has been wrong.",
		"People have always believed the end was near. The world keeps politely declining.",
		"The world has ended a dozen times in the stories. It keeps turning up the next day regardless.",
	},
	["muse.w04.092"] = {
		"So many have died for this world. Some days I wonder if it knows.",
		"The world is full of graves nobody visits. I suppose mine will be one of them.",
	},
	["muse.w04.093"] = {
		"Every village that rebuilds after a raid is an argument I'd like to win.",
		"Right now somebody is fixing a roof a war knocked in. I'd like to be on their side.",
		"Somewhere a wall that fell is going back up, stone by stone. That's the side I'm on.",
	},
	["muse.w04.094"] = {
		"Somebody has to stand between the dark and the farmers. Today it might as well be me.",
		"The world needs fewer heroes and more people who show up. That much I can do.",
	},
	["muse.w04.095"] = {
		"Empires rise, fall, and leave their rubble for the rest of us to walk around.",
		"Every war leaves ruins, and the generation after builds its houses out of them.",
	},
	["muse.w04.096"] = {
		"There's a lot of anger in this world, and most of it is old enough to have forgotten why.",
		"Most hatreds I've met are older than the people carrying them. Inherited, like ugly furniture.",
	},
	["muse.w04.097"] = {
		"If I leave the world a little less broken than I found it, that'll do.",
		"Leave things a touch better than you found them. Low ambition, honest work.",
	},
	["muse.w04.098"] = {
		"Everything good ends. I've decided to treat that as a reason to notice things, not to mourn them early.",
		"Nothing lasts, which is exactly why I look at things properly while they're here.",
	},
	["muse.w04.099"] = {
		"Everyone walks toward the same last door. I'd just like to arrive with my boots on and my debts paid.",
		"The end comes for all of us. I only ask that it find me busy.",
	},
	["muse.w04.100"] = {
		"Magic hums under everything in this world. Most people never hear it. Perhaps they're the lucky ones.",
		"The world is soaked in old power, seeping up through the cracks. Someone always ends up drinking it.",
		"There's more power lying loose in this world than anyone has the sense to leave alone.",
	},
	["muse.w04.101"] = {
		"All the spells in the world, and still nobody's found one that keeps boots dry.",
		"Fire from the fingertips, lightning on command, and not one spell to mend a torn strap.",
		"People bend the laws of the world with a word, and nobody has managed a spell for blisters.",
	},
	["muse.w04.102"] = {
		"Power always costs something. The trouble is it rarely sends the bill to whoever used it.",
		"Every great spell in history was paid for by somebody. Seldom the one who cast it.",
	},
	["muse.w04.103"] = {
		"Some days the world feels like a book with half the pages glued shut. I keep picking at the corners.",
		"There's more under this world than on it. I'm not sure I want to read that far.",
		"Every answer the world gives me has a page torn out of the middle.",
	},
	["muse.w04.104"] = {
		"Everything has a story older than the one it tells. Even a doorstep. Even me.",
		"Nothing is only what it looks like. The world is far too old for that.",
	},
	["muse.w04.105"] = {
		"Whatever watches over this world, I hope it isn't keeping score. Or if it is, that it grades kindly.",
		"If anyone up there is listening, I've got a few complaints and one thank-you. In that order.",
		"I don't ask the powers above for much. A little luck, a little mercy, and that they look the other way when I swear.",
	},
	["muse.w04.106"] = {
		"Some pray before a fight, some swear. I'm not sure the difference reaches as far as they think.",
		"Prayers and curses go to the same place, I suspect. Whoever opens the mail must have a sense of humor.",
	},
	["muse.w04.107"] = {
		"One day they'll tell it right. Until then I'll keep giving them material.",
		"Let the songs come later. For now I'm still writing the verses.",
		"If anyone ever sings this, I want them to have plenty to work with.",
	},
	["muse.w04.108"] = {
		"Glory's loud and it fades fast. The quiet work is what holds the roof up.",
		"Nobody sings about the people who kept things running. They're the reason anyone's left to sing.",
		"Statues go to the ones who charged. The world is held together by the ones who mended the fences.",
	},
	["muse.w04.109"] = {
		"Anger is a good fire to cook on and a bad one to sleep beside.",
		"I keep my anger like a coal: useful, banked, and never in my pocket.",
		"Anger warms you for an hour and keeps you awake for three.",
	},
	["muse.w04.110"] = {
		"Whoever's next to cross me had better have eaten. It'll be a long day for them.",
		"I'm in no mood to be pushed. The world's been warned.",
		"Keep your distance. I'm out of patience and short on reasons to find more.",
	},
	["muse.w04.111"] = {
		"Most beasts only want to eat and not be eaten. It would be rich of me to blame them.",
		"The wild doesn't hate anyone. It's hungry, and it's honest about it.",
		"Nothing in the wild is cruel on purpose. That talent belongs to people.",
	},
	["muse.w04.112"] = {
		"The wild takes everything back eventually: walls, roads, kingdoms. It's in no hurry, which is worse.",
		"Leave anything alone long enough and something green will claim it. The world was here first.",
		"Roots are patient in a way no army ever was. Give them a century and they'll split any wall.",
	},
	["muse.w04.113"] = {
		"Being alone is easy. Getting used to it is what worries me.",
		"Solitude is good company until it starts finishing my sentences.",
		"I'm good at my own company. Maybe too good; that wants watching.",
	},
	["muse.w04.114"] = {
		"My own voice sounds strange when I haven't used it for a while. Rusty, like a gate.",
		"Hours without a word, and then I say something and startle myself.",
	},
	["muse.w04.115"] = {
		"The world is never entirely dark. Somewhere there's always a window lit, a fire, a lantern swinging on a cart.",
		"However bad it gets, somebody somewhere is lighting a lamp. That counts for something.",
	},
	["muse.w04.116"] = {
		"Tomorrow might be easier. It usually isn't, but it might be, and that's enough to get up for.",
		"Things could improve. Unlikely, but I've been wrong about bad news before.",
	},
	["muse.w04.117"] = {
		"Home is a strange word on the road. It shrinks to whatever fire I happen to be sitting at.",
		"Wherever I put the pack down becomes home for a while. Then I pick it up again, and it isn't.",
		"I carry home the way a snail does, except mine has no roof and complains more.",
	},
	["muse.w04.118"] = {
		"Now and then I miss things I never had: a garden, a door that's always mine to open.",
		"Odd, to be homesick for a place that doesn't exist. A quiet one, with a door, a bench and no errands.",
	},
	["muse.w04.120"] = {
		"Courage is catching. Stand next to someone brave long enough and some of it rubs off.",
		"Nerve spreads like a fever. One steady person in a bad spot steadies everyone else.",
	},
	["muse.w04.121"] = {
		"A promise is a heavy thing to pack. I try to carry only the ones I mean.",
		"Every promise I make goes in the pack with the rest. I've learned to make fewer, and keep them.",
		"My word weighs more than my armor. I'm careful where I give it.",
	},
	["muse.w04.122"] = {
		"I know more than I did, and understand less. Probably that's what learning feels like.",
		"Every answer I find comes with two new questions folded inside it.",
	},
	["muse.w04.123"] = {
		"Hands learn faster than heads. Mine know things I couldn't explain if asked.",
		"There are things my hands do now without asking me. That's practice: the body taking notes.",
		"My fingers remember the order of things better than I do.",
	},
	["muse.w04.124"] = {
		"The world's taught me plenty, mostly by throwing it at me.",
		"Lessons on the road all arrive the same way: fast, hard, and only once if you're lucky.",
	},
	["muse.w04.125"] = {
		"Names slip away. Faces stay a while. The way someone treated me stays longest of all.",
		"I forget a name in a day and a face in a season, but a kindness I keep for good.",
	},
	["muse.w04.140"] = {
		"Something's off and I can't say what. I'll keep my eyes open until I can.",
		"That itch between the shoulders again. I've learned not to argue with it.",
		"Nothing's wrong that I can point to. That's usually the worst kind.",
	},
	["muse.w04.141"] = {
		"A good day. I'm not going to question it; it might hear me.",
		"Things are going well. Nobody say a word.",
		"This is going suspiciously nicely. I'll enjoy it before it notices.",
	},
	["muse.w04.142"] = {
		"Whatever's in the way had better be patient. I'm coming through, one way or another.",
		"No more weighing it up. The decision's made; the rest is just distance.",
	},
	["muse.w04.143"] = {
		"There's something I haven't figured out yet, and it'll nag at me until I do.",
		"A question's got its teeth in me. Fine. Let's see who lets go first.",
		"I'm going to keep turning this over until it gives up its secret or I give up sleeping.",
	},
	["muse.w04.145"] = {
		"Everything feels a little farther away than it should. Even my own hands.",
		"It's one of those days when the world sounds as if it's coming through a wall.",
		"The colors have gone thin today, like a cloak washed too many times.",
	},
	["muse.w04.146"] = {
		"Jaw clenched. Didn't notice. Let go, breathe, keep watching.",
		"Shoulders up around my ears again. Down. Breathe. Eyes open.",
	},
	["muse.w04.147"] = {
		"Whoever made the world took their time over some of it. Credit where it's due.",
		"Some things in this world deserve a moment of plain respect. Consider it given.",
	},
	["muse.w04.149"] = {
		"Work's work. Nobody's coming to do it for me.",
		"Complaining never finished a job yet. Back to it, then.",
		"It won't get done by wishing. Sleeves up.",
	},
	["muse.w04.152"] = {
		"Whoever is having a worse day than me right now: I hope it turns.",
		"A kind word for anyone out there still on their feet when they'd rather not be.",
	},
	["muse.w04.153"] = {
		"Nobody ever asks how the hero's knees are doing. Badly. They're doing badly.",
		"Every legend leaves out the knees. I'm starting to see why.",
	},
	["muse.w04.154"] = {
		"This world has buried more than it can remember. Someone should keep count, and it seems to be me.",
		"There are more names under the ground than walking on it. I try to keep a few of them company.",
	},
	["muse.w04.155"] = {
		"Wars burn out. Plagues pass. The plow goes back into the ground. The world is stubborn that way.",
		"Whatever wrecks the world, someone plants something in the wreck the next spring.",
		"Every ruin I've seen had someone sweeping its doorstep, sooner or later.",
	},
	["muse.w04.156"] = {
		"Heroes are just people who didn't leave when it was reasonable to.",
		"Most of what gets called heroism is staying put a little longer than sense allows.",
	},
	["muse.w04.157"] = {
		"Quiet moments are rare enough that I've learned to keep very still inside them.",
		"When the world goes quiet for a moment, I try not to make a sound. It might notice and start up again.",
	},
	["muse.w04.158"] = {
		"Hope isn't a feeling, it's a chore. You do it every day whether you feel like it or not.",
		"Some days hope is just getting the boots on. That still counts.",
		"Hope is a small, dull habit: getting up, looking ahead, doing it again.",
	},
	["muse.w11.body.001"] = {
		"Getting up off the ground is a three-part job: knees, hands, and then a word I won't repeat.",
		"I don't stand up so much as reassemble myself, piece by grumbling piece.",
		"First the knees agree, then the hands, then the back, grudgingly. Standing is a negotiation.",
	},
	["muse.w11.body.002"] = {
		"This bruise has gone from purple to green to a sort of mustard. It's the most colorful thing I own.",
		"Bruises keep better time than any clock: purple, then green, then yellow, then gone.",
	},
	["muse.w11.body.003"] = {
		"The blow lands today. The ache arrives tomorrow, punctual as a tax collector.",
		"Pain travels like slow mail: the hit comes today, the letter about it the day after.",
	},
	["muse.w11.body.004"] = {
		"The ground always wins the argument about how far down it is.",
		"Never trust a ledge that says it's not that far. The ground has its own opinion.",
	},
	["muse.w11.body.005"] = {
		"Half of fighting is knowing how to fall so you can get up again. Nobody teaches the falling.",
		"Learn to land before you learn to leap. The landing is where the price gets paid.",
		"Anyone can swing. Going down without breaking anything is the skill nobody shows off.",
	},
	["muse.w11.body.007"] = {
		"My eyes have that sandy feeling, as if they'd been kept open for a week on someone else's orders.",
		"Tired eyes make every shape a little softer and every distance a little longer.",
	},
	["muse.w11.body.008"] = {
		"A cut across the palm is the cruelest kind. Every single thing I pick up reminds it to open.",
		"Of all the places to get cut, the hand is the worst. It has to go on working while it complains.",
	},
	["muse.w11.body.009"] = {
		"When a wound starts to itch, it's mending. The body's only way of saying thank you is to be annoying about it.",
		"An itching cut is a good sign. Healing has never once been polite.",
	},
	["muse.w11.body.010"] = {
		"That noise? My stomach. It's been very patient and would like some recognition.",
		"Pardon the growling. It's my stomach, and it isn't talking to you.",
		"Ignore that rumble. My belly is drafting a formal complaint.",
	},
	["muse.w11.body.011"] = {
		"Water tastes of whatever carried it: the skin, the barrel, the bucket. I've stopped minding, as long as it's wet.",
		"Every waterskin gives its water a flavor of old leather. A small price for not going thirsty.",
	},
	["muse.w11.body.012"] = {
		"One rule with stew bought on the road: eat it fast and never ask what the meat used to be.",
		"Any stew from a stranger's pot had legs once. How many is a question I leave alone.",
	},
	["muse.w11.body.013"] = {
		"The first bite after a long empty stretch is the closest thing to a miracle I can count on.",
		"Food eaten too hungry to taste it is a little wasted. I try to slow down for the second mouthful.",
	},
	["muse.w11.body.015"] = {
		"There's a kind of tired that keeps you awake. The body lies down and the mind goes on patrol.",
		"Too tired to sleep: the most stupid trick the body knows, and it knows a few.",
	},
	["muse.w11.body.016"] = {
		"A short sleep sitting up is worth more than its length. I'd trade a lot for ten minutes with my eyes closed.",
		"Ten stolen minutes with my eyes shut and I'd come back a better person. Slightly.",
	},
	["muse.w11.body.017"] = {
		"Every bedroll comes with a stone under it. I never put it there, and somehow it's always the same stone.",
		"Wherever I lie down, a root finds my back. There must be roots in this world that do nothing else.",
	},
	["muse.w11.body.018"] = {
		"There's a moment on waking when I don't know where I am, or who. Then the aches arrive and introduce themselves.",
		"Waking somewhere strange, there's a blank instant before the body reports in. It's almost restful.",
	},
	["muse.w11.body.020"] = {
		"One mug is medicine. Two is a decision. Three is a story somebody else will tell about me.",
		"A drink to ease the aches, fine. By the third, the aches are fine and I'm the problem.",
	},
	["muse.w11.body.021"] = {
		"Half of this trade is sitting down to eat and drink between fights. The songs skip that half.",
		"Fight, sit, eat, drink, get up, fight. Most of the job happens in that sitting part.",
	},
	["muse.w11.body.022"] = {
		"I could name my aches like neighbors: the shoulder, the knee, the one low in the back that only visits.",
		"Every ache has its own temper. The shoulder sulks, the knee shouts, the back just waits.",
	},
	["muse.w11.body.023"] = {
		"Sore isn't broken. Up.",
		"Bruised, not beaten. The difference is where I live.",
		"Hurts. Works. Good enough.",
	},
	["muse.w11.body.024"] = {
		"Gear gets lost, coin gets spent, roads end. This body is the one thing I can't leave at an inn. I should be kinder to it.",
		"A merchant could replace everything else I own. This body he couldn't, and I treat it worse than my boots.",
	},
	["muse.w11.body.025"] = {
		"My gear comes from five different owners, none of whom agreed on a color. I look like a jumble sale that learned to walk.",
		"Not one thing I'm wearing was made to go with another. I'm a patchwork of other people's luck.",
	},
	["muse.w11.body.026"] = {
		"New gear never fits. It has to learn the shape of me, and I have to learn where it pinches.",
		"Anything I wear takes a while to stop being a stranger. Then one day it moves when I move.",
	},
	["muse.w11.body.027"] = {
		"Trading old gear for better is good sense and poor loyalty. The old piece always deserved a kinder buyer.",
		"Each time something better turns up, the old piece goes to a merchant who won't even look at it. It deserved a glance.",
	},
	["muse.w11.body.029"] = {
		"A cloak is mostly a device for catching on things. Branches, doors, nails, other people's elbows.",
		"Every thorn in the world wants a piece of whatever I'm wearing. Very popular, my clothes.",
	},
	["muse.w11.body.030"] = {
		"There are patches on my patches. Sooner or later these stop being the same trousers and become a history of them.",
		"Mend a thing enough times and you're wearing the mending, not the thing.",
	},
	["muse.w11.body.031"] = {
		"Every stitch I sew is a little worse than a tailor's and a lot better than a hole.",
		"Needle, thread, and the patience I never have for anything else. Sewing makes me calmer for exactly as long as it lasts.",
	},
	["muse.w11.body.032"] = {
		"Smiths look at my gear the way healers look at a bad wound: a long silence, then a number.",
		"Hand a smith something dented and watch the face. It's a diagnosis, and the cure always costs.",
	},
	["muse.w11.body.033"] = {
		"Gear never breaks when it's convenient. It wears down for weeks and gives out at the worst moment, out of spite.",
		"Everything I own is wearing out at its own pace. I only hope they don't all agree on the same day.",
	},
	["muse.w11.body.034"] = {
		"Repairs or supper. Same choice every time, and my stomach always loses.",
		"Fix the gear or feed the belly. The gear wins, and the belly keeps a note of it.",
	},
	["muse.w11.body.035"] = {
		"Copper in one pile, silver in another, and a very small space kept clear for gold, in case it ever visits.",
		"I sort my coins by color like a child sorting pebbles. It doesn't make them more, but it makes them tidier.",
	},
	["muse.w11.body.036"] = {
		"An empty purse has one virtue: nobody bothers robbing it. I sleep very soundly when I'm broke.",
		"Being poor is restful in its way. Nothing to count, nothing to guard, nothing to lose but the purse.",
	},
	["muse.w11.body.037"] = {
		"Selling off a full bag makes me rich for about an hour. Then the purse remembers what it's for.",
		"Right after a merchant pays me there's a short, glorious stretch when I feel like a lord. It lasts until the next counter.",
	},
	["muse.w11.body.038"] = {
		"Merchants will pay a copper for a broken fang. I've stopped asking what they do with them all.",
		"There must be a warehouse somewhere full of cracked claws and torn hides, and a merchant counting them happily.",
	},
	["muse.w11.body.039"] = {
		"Bags full. Which means the finest thing in the world is about to fall at my feet.",
		"The moment there's no room left, something wonderful turns up. Without fail.",
	},
	["muse.w11.body.040"] = {
		"Full bags are a lesson in values. What stays, what goes, and why I was carrying half of it at all.",
		"Clearing out full bags is the only time I'm honest about what I need. It lasts until the next pile of junk.",
	},
	["muse.w11.body.042"] = {
		"There's no joy quite like a new bag, empty and roomy, full of nothing but possibility.",
		"An empty bag is the most hopeful object I know. Nothing has disappointed it yet.",
	},
	["muse.w11.body.043"] = {
		"I keep this body the way a carter keeps a wheel: a little grease, regular looks, and an ear for the first squeak.",
		"A body on the move is a tool like any other. Clean it, feed it, rest it, and listen when it starts to rattle.",
		"Look after the body like a good tool and it forgives a lot. Neglect it and it picks the worst day to say so.",
	},
	["muse.w11.body.044"] = {
		"Courage comes easier on a full stomach. Nobody ever made a brave speech hungry, or if they did, it was short.",
		"Fear talks louder to an empty belly. Feed the one and the other quiets down a little.",
		"Half of what passes for nerve is a decent meal an hour before. I'm not ashamed of that.",
	},
	["muse.w11.body.046"] = {
		"Notices always ask for ten. Never nine, never eleven. Somebody out there has a very tidy mind and no idea how hard ten is.",
		"Bring back ten of something: the oldest job in the trade. Nobody ever asks why ten.",
		"Ten pelts, ten claws, ten of whatever's handy. I'd love to meet whoever decided the world runs in tens.",
	},
	["muse.w11.body.047"] = {
		"Cold water on the face does more for me than most remedies. It's cheaper, too.",
		"Wash the hands and face and half the day comes off with the dirt.",
		"A basin of clean water is a luxury people only notice once they've gone without.",
	},
	["muse.w11.body.048"] = {
		"Dry clothes, a full belly, nothing on fire. Give me those and you can keep the rest.",
		"A clean shirt and something hot to eat. That's my whole list of demands.",
		"What do I want? A seat, a spoon, and ten minutes when nothing needs hitting. Modest, I know.",
	},
	["muse.w11.body.049"] = {
		"Of everything I carry, the thing I'd truly mourn is the spoon. It has never once let me down.",
		"Weapons get replaced, bags get traded. The spoon stays. Every sensible traveler has a favorite spoon.",
		"A good spoon is a quiet friend. It asks for nothing and turns up at every meal.",
	},
	["muse.w11.body.050"] = {
		"Half of what I find is rubbish with a grand name. A 'fine' this, an 'ornate' that, worth a copper and a shrug.",
		"Loot is mostly disappointment wrapped in hope. Then a merchant unwraps it for three coppers.",
		"Every locked box promises treasure. Most keep the promise with a moth and two coppers.",
	},
	["muse.w11.body.052"] = {
		"Searching the fallen never gets comfortable. It only gets quicker, which may be worse.",
		"Every purse I take off the fallen was somebody's careful saving. I try not to think about it, and fail.",
		"There's no polite way to rob the dead. I just try to do it without hurry and without jokes.",
	},
	["muse.w11.body.053"] = {
		"My legs have better judgment than my head. They know when to leave long before I admit it.",
		"There's no shame in running. Legs were built for it, and they've saved more lives than speeches.",
		"Every brave plan I make, my feet quietly veto at least once. They're usually right.",
	},
	["muse.w11.body.054"] = {
		"A load that bends you the first day is ordinary by the tenth. The load never changed. You did.",
		"Carry something heavy long enough and it stops being heavy. Not because it got any lighter.",
		"Strength is mostly getting used to things. The pack stays the same; the back learns.",
	},
	["muse.w11.body.055"] = {
		"Hear that click? That's my shoulder announcing it's still attached. Thank you, shoulder.",
		"Something in me just popped. I'll choose to believe it was helpful.",
		"Every joint I own makes a noise. Move in the right order and I could play a tune.",
	},
	["muse.w11.body.056"] = {
		"A real bed is so soft it feels like a trap. Half the time I lie awake waiting for the stone that isn't there.",
		"Sheets, a pillow, a mattress with no lumps. My back doesn't trust it. Neither do I, entirely.",
		"Feather mattresses are wasted on travelers. They sleep on the edge of them, half ready to leave.",
	},
	["muse.w11.body.057"] = {
		"Sometimes I sleep with my boots on. Taking them off would be a promise I can't keep.",
		"Lying down fully dressed is a way of telling the world: wake me if you must.",
		"Sleep in your gear often enough and it stops feeling like armor and starts feeling like skin.",
	},
	["muse.w11.body.059"] = {
		"Home, I suspect, is mostly a place where the body is allowed to be tired without anyone watching.",
		"What I miss isn't a place. It's being able to drop where I stand and know nothing will come for me.",
		"The idea of home I keep is very plain: a bed I don't have to guard.",
	},
	["muse.w11.body.060"] = {
		"Sell the wrong thing to a merchant and you'll buy it back dearer. Merchants call that a lesson; I call it theft with manners.",
		"Never sell in a hurry. Merchants keep what you regret, and the price goes up the moment you want it back.",
	},
	["muse.w11.body.061"] = {
		"Lessons cost coin. Skipping them costs more, and that bill is paid in bruises.",
		"Every new skill has a price at the trainer's, and a bigger one if I go without.",
		"Coin spent on learning is the only coin that keeps coming back.",
	},
	["muse.w11.body.062"] = {
		"Bandage it, tie it off, test the grip. From close up, courage looks a lot like first aid.",
		"Most bravery is unglamorous: binding a cut with your teeth and going back to work.",
		"The bravest moment of most days is a tightened bandage and a decision to carry on. Quiet, and it counts.",
	},
	["muse.w11.body.063"] = {
		"Aches, bruises, an empty belly. Fine. None of them get a vote.",
		"Everything hurts and nothing's broken. Let's go.",
		"My body's complaining. It can complain on the way.",
	},
	["muse.w11.body.064"] = {
		"Hunger walks a pace behind me most days. I've stopped arguing with it; I feed it when I can.",
		"A little hungry is my ordinary state. Full is a holiday.",
		"I carry hunger the way I carry the pack: noticed, accepted, not discussed.",
	},
	["muse.w11.body.065"] = {
		"When I'm hungry enough I dream of food, and in the dream I never get to eat it. Even my sleep has a sense of humor.",
		"Hungry sleep is the cruelest kind: feasts all through it, and not a crumb on waking.",
	},
	["muse.w11.body.066"] = {
		"This trade teaches you to eat standing, walking, and now and then with one eye on the bushes.",
		"Eat when it's quiet, and eat quickly, because quiet never stays long.",
		"Table manners are for people with tables. On the move it's chew, swallow, look around.",
	},
	["muse.w11.body.068"] = {
		"I never let the waterskin run all the way dry. The last swallow is the one I keep for a worse hour.",
		"Something to eat always stays at the bottom of the bag, untouched. It's not for now. It's for the day it has to be.",
	},
	["muse.w11.body.069"] = {
		"Lightest thing in my bags, this hearthstone, and I'd fight a bear to keep it.",
		"Whatever else I lose, the hearthstone stays. It's the only thing in here that knows the way to a bed.",
		"A stone that takes me to an inn. Of all the marvels I've heard of, that's the one I'd keep.",
	},
	["muse.w11.body.070"] = {
		"Not sleepy. Bone-tired, which is different: no amount of lying down quite reaches it.",
		"There's a tiredness sleep doesn't touch. It wants a week of nothing, and I can't afford a week of nothing.",
		"Some fatigue lives deeper than any rest can dig.",
	},
	["muse.w11.body.072"] = {
		"A purse that jingles is an invitation. Mine is very discreet; it has almost nothing to say.",
		"I keep my coins wrapped so they don't clink. Not that there are enough of them to make a tune.",
	},
	["muse.w11.body.073"] = {
		"I'm a terrible haggler. I can read the merchant's price in that smile before I open my mouth.",
		"Haggling is a duel where only one side came armed, and it isn't me.",
		"Every bargain I strike, I walk away sure I've won. Then I see the merchant whistling.",
	},
	["muse.w11.body.074"] = {
		"Bandaging your own back is a lesson in humility. Some places only another pair of hands can reach.",
		"There's always one spot I can't reach to dress. The body was clearly designed with company in mind.",
	},
	["muse.w11.body.075"] = {
		"An itch right in the middle of my back, exactly where nothing I own can reach. The world has a sense of humor.",
		"An itch under a buckled strap is a small, private war, and I'm losing it.",
		"Of all the enemies out there, the itch I can't reach is the one that breaks my spirit.",
	},
	["muse.w11.body.076"] = {
		"Split knuckles, a torn nail, a splinter I can't find. Small damage, and it's the small damage that nags all day.",
		"Big wounds get attention. It's the splinter under the skin that ruins a whole afternoon.",
	},
	["muse.w11.body.077"] = {
		"Note to self: when something big charges, the front is the wrong side to be on.",
		"Lesson for the day: whatever has the bigger teeth gets the bigger respect.",
		"Reminder, for the bruises' sake: duck sooner.",
	},
	["muse.w11.body.078"] = {
		"A body can take a great deal, and then one day it can't. I'd like to know which day before it arrives.",
		"Every body has a limit written somewhere inside it. I'd rather not find mine by reading it the hard way.",
		"Mending is slower than breaking. That's the whole arithmetic of this trade.",
	},
	["muse.w11.body.079"] = {
		"Every inn I know serves the same soup. There must be one great pot under the world, and they all dip from it.",
		"Inn soup is a single recipe the whole world agreed on: hot, brown, and faintly of onion.",
	},
	["muse.w11.body.080"] = {
		"A chair with a back to it. I didn't know I could want something so small so badly.",
		"Nobody mentions that one of the great pleasures of life is a seat with a backrest. Somebody should.",
		"Stools are for people who aren't tired. Give me a chair with a back and arms and I'll sign anything.",
	},
	["muse.w11.body.081"] = {
		"Half my bandages started life as somebody's shirt. Some days the shirt was mine.",
		"Cloth comes in two kinds on the road: clothes, and bandages that haven't happened yet.",
	},
	["muse.w11.body.083"] = {
		"Glory is what others see. What I get is a stiff back and a story I'm too tired to tell.",
		"The tale gets the triumph. The body gets the invoice. I know which one lasts longer.",
	},
	["muse.w11.body.084"] = {
		"To hot food, dry boots, and gear that holds. The rest is luck.",
		"Here's to the small mercies: a mended strap, a full flask, a seat against a wall.",
		"A toast, to no one in particular: may the next meal be warm and the next bruise small.",
	},
	["muse.w11.body.085"] = {
		"Everything in my bags is a small wager against dying: a bandage here, a spare strap there, a little food at the bottom.",
		"Packing is a kind of prayer without words. Each thing I bring is a bad day I hope I've thought of.",
		"What I carry is a list of the ways I expect things to go wrong. It's a long list, and it's heavy.",
	},
	["muse.w11.body.086"] = {
		"Pain is information, not an order. I read it, I note it, and I decide.",
		"The body says stop. Heard, and thanked. Not obeyed, not yet.",
		"I listen to the hurt the way I'd listen to a nervous scout: carefully, and then I choose.",
	},
	["muse.w11.body.087"] = {
		"Fear never lives in my head. It sits in the stomach like a bad meal and waits to be dealt with.",
		"Before a hard fight my stomach goes tight as a knotted rope. I've learned to fight with the knot in.",
		"My belly always knows first when something's wrong. It goes cold and small, and I listen to it.",
	},
	["muse.w11.body.089"] = {
		"I pay what I owe the moment I can. Coin left in my purse has a way of making other plans.",
		"Owing anyone anything sits on the shoulders like a wet cloak. I'd rather be poor and square.",
		"A debt is extra weight, and I carry enough already. Settle up, then travel light.",
	},
	["muse.w11.body.090"] = {
		"My body remembers things I've let go of. A turn of the shoulder, and some old hurt answers that I'd forgotten I had.",
		"The mind forgets a bad fall. The knee keeps the record.",
		"Some days an ache comes back without warning, like a name from long ago, and I can't recall where I earned it.",
	},
	["muse.w11.body.091"] = {
		"A full waterskin sloshing at my hip is the most reassuring sound I know.",
		"There's real comfort in weight sometimes: a full flask, a sack of food, a purse that sags.",
		"Topping up the waterskin is a small ceremony. Afterward the world feels a little less dangerous.",
	},
	["muse.w11.body.092"] = {
		"Right. Eat, mend, move. In that order.",
		"Food, then repairs, then the rest of the world.",
		"First a bite, then the straps, then whatever's next.",
	},
	["muse.w11.body.093"] = {
		"Meals alone are quick and quiet. Nobody to pass the salt to, nobody to tell me to slow down.",
		"Eating alone, I notice the food more. That's the one thing to be said for it.",
	},
	["muse.w11.body.094"] = {
		"Leather cracks, steel rusts, cloth wears through. I'm made of the same sort of stuff, only slower.",
		"Everything I own wears out. I'm only the last item on the list, and the hardest to replace.",
	},
	["muse.w11.body.095"] = {
		"Each knot I tie holds a little better than the one before. Nobody will notice, and one day it may keep me alive.",
		"Small skills pile up quietly: a quicker bandage, a tighter strap, a better place to sit. That's what getting good looks like.",
	},
	["muse.w11.body.097"] = {
		"Lose one good glove and the other becomes a small, useless grief you carry anyway.",
		"Nothing reminds you of a loss like the half that's left: the single glove, the spare lace with no boot.",
	},
	["muse.w11.body.098"] = {
		"The first hour after getting up goes on persuading every part of me to rejoin the rest.",
		"Waking stiff is the price of sleeping anywhere. I pay it daily and grumble right on schedule.",
		"Today my limbs are made of wet sand. I'll get where I'm going; it'll just take some arguing.",
	},
	["muse.w11.body.099"] = {
		"Before anything hard, I look at my hands. If they're steady, the rest of me can borrow from them.",
		"Steady hands first. Courage can catch up on the way.",
	},
	["muse.w11.body.100"] = {
		"Big blows don't frighten me as much as small cuts left dirty. The quiet wounds are the ones that kill.",
		"Clean every cut, however small. The world is patient, and a dirty scratch gives it time.",
	},
	["muse.w11.body.101"] = {
		"Who packed this bag? Oh. Me. I'd like a word with myself.",
		"Everything I need is in here somewhere, under everything I don't.",
		"If I put it somewhere safe, it's gone forever. That's the rule.",
	},
	["muse.w11.body.102"] = {
		"After a close call, sleep comes hard, and when it comes it's like falling down a well.",
		"Nearly dying does odd things to sleep. Either none at all, or a whole day gone in a blink.",
	},
	["muse.w11.body.103"] = {
		"Cheap gear gets paid for twice: once at the counter, once when it gives out.",
		"Buy the better strap. The cheap one saves a copper and costs a fall.",
	},
	["muse.w11.body.104"] = {
		"Sitting still long enough, I can feel every place that's been working: the shoulders, the calves, the hands. A quiet roll call.",
		"In a quiet moment the body reports in, one part after another, like sentries calling the hour.",
	},
	["muse.w11.body.106"] = {
		"Resting isn't time stolen from the work. It's the part of the work nobody sees.",
		"Sitting down is a skill. Knowing when to do it is half the craft.",
		"The body mends only when I let it. Every rest I refuse, I pay for later, with a little extra.",
	},
	["muse.w11.body.107"] = {
		"The only heavy thing I'd never complain about is a full purse. Nobody has ever given me the chance.",
		"Coins are the one load my back would gladly take on. My back is still waiting.",
	},
	["muse.w11.body.108"] = {
		"This world has too many hungry people in it to waste a crust. I eat the heel and the burnt edge both.",
		"I never throw food away. Somewhere a farm was burned, and someone is counting crumbs.",
	},
	["muse.w11.body.109"] = {
		"Straps tight, belly full, waterskin topped up. Whatever's next, let it come.",
		"Fed, mended, rested enough. That's as ready as anyone ever gets.",
		"Boots laced. Gear checked. Nothing left to fiddle with but courage.",
	},
	["muse.w11.body.110"] = {
		"Twine, a bent nail and stubbornness: the three great tools of field repair.",
		"Half my gear is held together with string and hope, and the string is doing most of it.",
	},
	["muse.w11.body.111"] = {
		"Some days the body simply doesn't show up for work. The rest of me has to go without it.",
		"On the slow days every movement has to be asked for twice. I ask, politely, and wait.",
	},
	["muse.w11.body.113"] = {
		"After every bad stretch there's a day when the body suddenly feels like mine again. I always forget it's coming.",
		"Healing takes its time, and then in one ordinary moment it's simply done. I never catch it happening.",
	},
	["muse.w11.body.114"] = {
		"Whatever I fight with gets wiped clean before I eat. It did the hard part; it eats first.",
		"A weapon put away dirty is a weapon that sulks. I wipe it down, whatever the hour.",
	},
	["muse.w11.body.115"] = {
		"A pinch of salt turns road food into a meal. I'd trade a fair bit of silver for a bigger pinch.",
		"Salt, a little pepper, maybe an onion. With those three I could make a boot edible.",
	},
	["muse.w11.body.116"] = {
		"Know how far you can run, how long you can go without food, how many hits you can take. Then never test the last one on purpose.",
		"Every body has its numbers: miles, meals, blows. I learn mine by counting, not by guessing.",
	},
	["muse.w11.body.117"] = {
		"Feed me and the whole world looks friendlier. I'm a very simple contraption.",
		"Funny how much kinder everything seems after a hot meal. Kingdoms should be run on full stomachs.",
	},
	["muse.w11.body.118"] = {
		"Every bigger bag I buy fills up exactly as fast as the last. Junk grows to fit the space.",
		"Give me more room and I'll find more rubbish. It's a law of nature, like falling.",
	},
	["muse.w11.body.120"] = {
		"Tiredness makes cowards of everyone. When small things start to frighten me, I check when I last slept.",
		"Half my fears shrink after a decent sleep. The other half at least get easier to look at.",
	},
	["muse.w11.body.121"] = {
		"Every new kind of work finds a muscle I didn't know I had, and introduces it to pain.",
		"Try anything new and the body produces a fresh ache, like a merchant with a surprise fee.",
	},
	["muse.w11.body.122"] = {
		"Nobody can count on someone who won't eat or sleep. I look after myself so I'm worth relying on.",
		"A starving guard guards nothing. Rest and food are part of any promise worth keeping.",
	},
	["muse.w11.body.123"] = {
		"Now and then a bite of something tastes like where I come from, and for a moment the road goes very quiet.",
		"Food is the sneakiest kind of homesickness. One spoonful, and I'm somewhere else entirely.",
	},
	["muse.w11.body.125"] = {
		"Folding the blanket the same way each time is a small order I can carry anywhere.",
		"However strange the place, the bedroll unrolls the same. That sameness is worth more than it weighs.",
	},
	["muse.w11.body.126"] = {
		"Heroes are supposed to hunger for glory. I mostly hunger for supper.",
		"Ambition is a fine thing, but it doesn't fill the belly, and the belly asks first.",
	},
	["muse.w11.body.127"] = {
		"Bruised from top to bottom and still in one piece. Next.",
		"Patched, stitched, and ready for more. Come on.",
		"Every ache I've got is a fight I walked away from. Room for one more.",
	},
	["muse.w11.body.128"] = {
		"This trade wears a body down the way a whetstone wears a blade: a little sharper each time, and a little less of it.",
		"Every fight hones me and takes a sliver off. One day there'll be more edge than blade.",
	},
	["muse.w11.body.129"] = {
		"Nobody sees the small private labor of a body: the sore wrist favored, the stiff step hidden. I keep it to myself.",
		"Every traveler hides a limp of some kind. Mine just happens to change legs.",
		"I let nobody see me wince. Not pride; it just saves a lot of questions.",
	},
	["muse.w11.body.130"] = {
		"Glory takes up no room in the bags. Trophies do, and they smell.",
		"I'd collect trophies if they folded. As it is, a story weighs less than a skull.",
	},
	["muse.w11.body.132"] = {
		"Wearing what came off someone who tried to kill me is only practical. I try not to think about how it fit them.",
		"Some of my gear came off the fallen. It fits well enough, and I don't ask whose shape it remembers.",
	},
	["muse.w11.body.133"] = {
		"Need to sit. A moment. Then the world can have me back.",
		"Give me a minute. The legs are reconsidering their commitment.",
		"One short rest, and I'm everyone's again.",
	},
	["muse.w11.body.134"] = {
		"The wild feeds anyone patient enough: a handful of berries, a root, a fish that finally bites. It never feeds the hurried.",
		"Food grows, runs and swims all around, if you know how to ask. The world is a larder with no doors.",
	},
	["muse.w11.body.135"] = {
		"Going down costs nothing. Getting back up costs everything I have, and I pay it every time.",
		"The ground is comfortable, I'll give it that. It just isn't where the work is.",
		"Down is easy. Up is the whole job.",
	},
	["muse.w11.body.136"] = {
		"One day tiredness will win for good. Until then it's a rival I know well, and I beat it most days.",
		"Fatigue is the only enemy that never retreats. I just keep it waiting.",
	},
	["muse.w11.body.138"] = {
		"I swear I learn quicker after a proper sleep in a real bed. Rested heads keep more.",
		"A well-slept day teaches twice what a tired one does. I've no idea why; I'm just grateful.",
	},
	["muse.w11.body.139"] = {
		"Running low on food is a quiet fear. It doesn't shout; it just counts with you, every meal.",
		"The last ration in the bag changes how every mile looks.",
		"Count the food before the road, not on it. Hunger halfway is a bad adviser.",
	},
	["muse.w11.body.140"] = {
		"A seat, a bite, and five quiet minutes. Look at that. Rich.",
		"Somewhere to sit and something to chew. I'll take it, and gladly.",
	},
	["muse.w11.history.001"] = {
		"Every ruin was somebody's kitchen once. The histories only ever mention the walls.",
		"The chronicles count towers and gates. Nobody wrote down where the bread was baked.",
		"A fallen city is mostly fallen kitchens, when you think about it. The books prefer the battlements.",
	},
	["muse.w11.history.002"] = {
		"Lordaeron's capital is a broken shell now, with a whole city living in its crypts. Kingdoms don't end so much as change floors.",
		"Up top, the old throne of Lordaeron gathers dust. Down below, a city goes about its business. History moved downstairs.",
	},
	["muse.w11.history.003"] = {
		"The plague came in grain sacks. Not with a horn or a banner: in flour, sold at a fair price.",
		"What ended Lordaeron arrived on carts, in sacks of grain, and people paid for it.",
		"No army opened the Third War in the north. A shipment of grain did.",
	},
	["muse.w11.history.004"] = {
		"The titans shaped the world and went away. Nobody left a note saying when they'd be back.",
		"The titans raised the mountains and never stayed to see what grew on them. I wonder if they ever think of us.",
		"Builders who carve out a world and walk away from it: either very sure of their work, or in a terrible hurry.",
	},
	["muse.w11.history.005"] = {
		"Some day this age will have a name in the histories. I hope it's a kind one, and I hope it's earned.",
		"Whoever writes about these years will give them a tidy name. Living them is not tidy at all.",
		"Every age gets its title afterward. Nobody alive in it ever knows what it will be.",
	},
	["muse.w11.history.006"] = {
		"Somebody ought to write all this down. Not me. My handwriting would start a war.",
		"If anyone's keeping a chronicle of these times, put me in a footnote. A small, flattering one.",
	},
	["muse.w11.history.007"] = {
		"The orcs remember the camps. The humans remember Stormwind burning. Ask either about the other's grief and listen to the silence.",
		"Every side in the old wars keeps its own list of wrongs, and every list is true. That's exactly the trouble.",
		"Stormwind burned, and later the orcs sat behind fences for years. Both stories are true, and neither one listens to the other.",
	},
	["muse.w11.history.008"] = {
		"At Hyjal, orcs, humans and night elves held the same line against the Legion. It happened. It's written down. People forget it on purpose.",
		"Once, at the foot of the World Tree, sworn enemies fought shoulder to shoulder because the alternative was the end of everything. Worth remembering that it can be done.",
	},
	["muse.w11.history.009"] = {
		"Ten thousand years ago there was a well of pure power at the heart of the world, and the world broke apart around it. People still go digging for its drops.",
		"A whole continent tore itself in pieces over one well of magic. Somehow nobody learned to be careful around wells.",
	},
	["muse.w11.history.010"] = {
		"The night elves gave up forever to stop the Legion at the World Tree. Imagine trading eternity away and calling it a fair price.",
		"After Hyjal the night elves began to age like the rest of us. I don't know what to say about a sacrifice that size, so I say nothing.",
	},
	["muse.w11.history.012"] = {
		"Mapmakers must hate this age. Every few years a kingdom stops existing and they have to scrape off the ink.",
		"I pity anyone who draws maps for a living. Borders in this world don't hold still long enough to dry.",
		"Somewhere a cartographer is scratching out Lordaeron and writing something worse in its place.",
	},
	["muse.w11.history.013"] = {
		"Every famous battle had a thousand people in it whose names went nowhere. They held the line just the same.",
		"The histories keep the generals. The ones who actually stood in the mud are a number, if that.",
	},
	["muse.w11.history.014"] = {
		"Learn the old wars. Not for the glory, for the mistakes. There are plenty.",
		"Know your history. Mostly so you can spot the stupid parts when they come round again.",
	},
	["muse.w11.history.015"] = {
		"Scholars talk of old gods the titans chained under the ground. I don't need proof. I need them to stay chained.",
		"Some of the learned say the titans didn't destroy what they found here, only buried it. Burying is not the same as finishing.",
	},
	["muse.w11.history.016"] = {
		"Quel'Thalas stood for thousands of years behind its runestones, and fell in a season. Old walls make people careless about new enemies.",
		"The elves of Quel'Thalas kept their forests safe since before human kingdoms had names. One campaign of the dead ended it. Nothing is old enough to be safe.",
	},
	["muse.w11.history.017"] = {
		"Each time the old heroes are retold they grow a little. Give it a century and they'll have to duck under doorways.",
		"Legends put on weight with every telling. The real ones were probably about my height, and just as tired.",
	},
	["muse.w11.history.018"] = {
		"The Scourge doesn't care what banner anyone died under. The dead it raises come from every army that ever lost a fight.",
		"Every war leaves corpses, and now there's a power in the north that collects them. That changes what losing means.",
	},
	["muse.w11.history.020"] = {
		"The trolls ruled empires when the elves were still a few tribes camped by a lake. Next to them, the rest of us are newcomers.",
		"Before there was a single human crown, the trolls had been ruling for ages. Worth remembering, next time someone boasts of an ancient kingdom.",
	},
	["muse.w11.history.021"] = {
		"Dalaran was a city of mages, and a demon lord brought it down with one wave of the hand. Knowledge makes a poor wall.",
		"All the wisdom of Dalaran didn't keep it standing when the Legion came. Learning protects you from a great many things, but not everything.",
	},
	["muse.w11.history.022"] = {
		"A whole people once drank demon blood and spent a generation burning it out. History doesn't offer many climbs that steep.",
		"The Legion's first gift to the orcs was rage in a cup. It took a war and a chieftain's death to pour it out.",
	},
	["muse.w11.history.023"] = {
		"Every old soldier in every tavern fought at the battle that decided it all. They just never agree which battle.",
		"Ask three veterans where the old wars were won and you'll get four battlefields and a fistfight.",
	},
	["muse.w11.history.024"] = {
		"There are grown folk now who never knew a world without the Horde in it, or without the Alliance. To them it's furniture.",
		"Children born after the Third War think the Plaguelands were always plagued. That's how a wound becomes a place name.",
	},
	["muse.w11.history.025"] = {
		"There's a rumor that dragons can wear people's faces and sit at a king's table. I'd laugh, if fewer sensible folk repeated it.",
		"Travelers whisper that the black dragons walk among us in borrowed shapes. I've started looking twice at anyone too charming.",
	},
	["muse.w11.history.026"] = {
		"Deathwing was set to guard the earth itself, and became the worst thing ever to crawl out of it. Nobody is too trusted to fall.",
		"The black Aspect was given the stone of the world to protect, and tore it open instead. Every oath has its weak day.",
	},
	["muse.w11.history.027"] = {
		"A prince of Lordaeron put Stratholme to the torch to save it from the plague. People still argue whether he was right. The city doesn't argue anymore.",
		"Stratholme was burned by its own prince before the dead could take it. Whatever the reason, the ash looks the same.",
	},
	["muse.w11.history.028"] = {
		"Somebody should remember these times the way they really went. I'll volunteer. I've been paying attention.",
		"When they tell the story of this age, they'll want one witness who isn't lying. Put my name down.",
	},
	["muse.w11.history.029"] = {
		"The dwarves dug into a titan vault to learn where they came from, and found out their ancestors were made of stone. I'd need a long sit-down after that.",
		"Imagine searching for your people's beginnings and finding a workshop. The dwarves did, under the Badlands, and they're taking it rather well.",
	},
	["muse.w11.history.030"] = {
		"The first kingdom of men was born in the Arathi Highlands, around one fortress, to fight off trolls. Every human crown since is a branch of that trunk.",
		"Strom was the first human city worth the name, built to hold off the Amani. Now ogres and bandits pick through what's left. Even beginnings get looted.",
	},
	["muse.w11.history.031"] = {
		"The Legion has come for this world twice that anyone remembers, and twice it went home without it. I find that steadying.",
		"Twice the Burning Legion reached for Azeroth and twice it closed its hand on nothing. Not a bad record for a world full of quarrelers.",
	},
	["muse.w11.history.032"] = {
		"Gilneas built a wall and shut the world out before the worst came. Nobody knows what goes on behind it now. Safety has a lonely look.",
		"The great wall of Gilneas kept the plague out, people say, and kept everything else out too. I wonder which they think about more.",
	},
	["muse.w11.history.034"] = {
		"A thousand years from now some traveler will walk through what's left of our cities and guess at us. I hope they guess generously.",
		"Our towers will be somebody's ruins one day. Strange to picture a stranger picking through them, wondering who we were.",
	},
	["muse.w11.history.035"] = {
		"History isn't over. We're all standing in the middle of it, tracking mud everywhere.",
		"Nobody told me history was still being written. I'd have brought a better pen.",
	},
	["muse.w11.history.036"] = {
		"The Scarlet Crusade began with people who had watched the plague take everything. Grief handed a sword and a banner can turn into almost anything.",
		"Fear of the dead made the Scarlet zealots. Now they put the living to the question too. A wound that festers starts to look like what made it.",
	},
	["muse.w11.history.037"] = {
		"The red Dragonqueen spent years chained under Grim Batol while her children were bred for war. Whatever she thinks of the younger races, she's earned the right to think it.",
		"The queen of the red dragons will watch every kingdom of ours fall and rise again, and remember her chains through all of it. I hope she's the forgiving sort.",
	},
	["muse.w11.history.038"] = {
		"The Scourge should have been enough to make the whole world friends. It wasn't. That tells you something about the world.",
		"If walking corpses at the gates can't unite people, I don't know what would. A falling sky, maybe. Maybe not even that.",
	},
	["muse.w11.history.039"] = {
		"Every few centuries the world forgets something it shouldn't: a warning carved over a door, the reason a gate was sealed.",
		"Most disasters I've heard of began with someone who couldn't read an old warning, or didn't bother to.",
	},
	["muse.w11.history.040"] = {
		"The lich who serves the north was a respected scholar once, with students and a seat on a council. Monsters rarely start out as monsters.",
		"Kel'Thuzad was a mage of Dalaran before he was anything else. Ambition in a good robe is still ambition.",
	},
	["muse.w11.history.041"] = {
		"Half the towns of Kalimdor were founded by people running from the Third War. A continent of newcomers, eyeing the ones who were there first.",
		"When Lordaeron fell, whole peoples took ship to the west. Orgrimmar and Theramore were both built by people who had left everything behind.",
		"Every new town in Kalimdor is younger than some of the people living in it. The war across the sea built them all.",
	},
	["muse.w11.history.042"] = {
		"The same battle has two songs, one on each side. Same hill, same day. You'd never guess it from the tunes.",
		"Both sides of the old wars made songs about the same fights. In one the hill was taken; in the other it was given up with honor.",
		"One battle, sung as a triumph in one tavern and a lament in the next. Both singers swear they were there.",
	},
	["muse.w11.history.043"] = {
		"Old war, new war. Someone still ends up holding the shovel.",
		"Every war needs heroes for a season and gravediggers for years.",
	},
	["muse.w11.history.045"] = {
		"Every ghoul in the Plaguelands was a farmer, a baker, somebody's neighbor. The songs about fighting them skip that verse.",
		"The Scourge's army is made of ordinary people who were unlucky first. That's what makes it so hard to look at.",
		"Before it was the Scourge, it was villages. Every shambling thing had a name once, and a door it came home through.",
	},
	["muse.w11.history.046"] = {
		"The Argent Dawn will take help from anyone who stands against the Scourge, whatever they look like. In this world that counts as a small miracle.",
		"There's an order fighting the dead that doesn't ask which side anyone is on. History will want to know how they managed it.",
		"Somewhere, people who'd have killed each other ten years ago share a watch against the dead. I'd like that remembered.",
	},
	["muse.w11.history.047"] = {
		"People say the bronze dragons watch over time itself. I'd love to ask one how this age ends. I expect I'd get a smile and nothing else.",
		"If the bronze dragonflight really keeps the paths of time, they already know how all of this will be remembered. Lucky them. Or not.",
	},
	["muse.w11.history.048"] = {
		"There's an empire of elves at the bottom of the sea, palaces and all. It makes my own ambitions feel pleasantly small.",
		"The proudest court this world ever saw went under the waves all at once. Pride floats, people say. Apparently not.",
		"Queen Azshara's court believed it was the center of everything. Now the fish believe the same of it.",
	},
	["muse.w11.history.049"] = {
		"Every empire thought it would last forever. I'm not sure about next week.",
		"Kingdoms that swore they'd stand a thousand years fell in ten. I'll keep my plans modest.",
	},
	["muse.w11.history.050"] = {
		"Alterac betrayed its allies in the Second War and the kingdom never recovered. Treachery pays well for a season and badly forever after.",
		"There's a kingdom in the mountains that sold its friends for a promise, and now it's a ruin full of brigands. That's the whole lesson, really.",
	},
	["muse.w11.history.051"] = {
		"Tauren elders are said to teach that the land keeps every footprint ever made, and forgets none of them, not even the wars.",
		"There's a tauren saying, I'm told: the earth carries every army that crossed it, and grows grass over all of them alike.",
	},
	["muse.w11.history.052"] = {
		"Every war I know of was revenge for the one before it. History is a debt passed down with the interest still running.",
		"One war pays for the last and sends the bill to the next. Nobody in this world has ever settled the account.",
		"Follow any war back far enough and you find another war, sitting there looking like a reason.",
	},
	["muse.w11.history.054"] = {
		"The greatest paladin of the Silver Hand died defending an urn of ashes from his own student. Some stories don't get kinder in the retelling.",
		"The Silver Hand was meant to stand between the people and the dark. The dark came from inside its own ranks, and the order has never quite stood straight since.",
	},
	["muse.w11.history.055"] = {
		"Ruins all over this world. Whoever came before us never tidied up once.",
		"So many fallen stones in this world. The people of old built well and swept up badly.",
	},
	["muse.w11.history.056"] = {
		"Far to the south there's a wall sealed by dragons a thousand years ago, with an empire of insects behind it. Seals are promises, and promises wear thin.",
		"Ahn'Qiraj has been shut for a thousand years. Hardly anyone alive remembers the war that closed it, which is exactly what worries me.",
		"Every sealed door in history is a problem left to the grandchildren. Out in the southern desert, the grandchildren are us.",
	},
	["muse.w11.history.057"] = {
		"Some of the dead broke the Lich King's hold and took their own minds back. Whatever anyone thinks of what they did next, that first part is remarkable.",
		"A will strong enough to shake off the Lich King. Say what you like about the Forsaken: nobody else in history has managed it.",
	},
	["muse.w11.history.058"] = {
		"Kings of this age don't die old in their beds. One fell to an assassin, one to his own son, and one has simply vanished.",
		"Wearing a crown in these times is a dangerous trade. Ask the last few who tried. You can't, of course; that's the point.",
	},
	["muse.w11.history.060"] = {
		"The first time the Legion came, it was invited, by people who loved magic a little too much. Every mage since has had that to live down.",
		"Demons don't find this world by chance. Somebody always lights the lamp for them, and it's usually somebody clever.",
		"Twice now the Legion has been let in by people who thought they could handle it. Cleverness is a door with a weak lock.",
	},
	["muse.w11.history.061"] = {
		"Let the historians decide what this age meant. I've got today to deal with.",
		"Someone will explain these times properly in a hundred years. Until then, I'll muddle through like everyone else.",
		"Big history, small person. I'll do my part and let the scholars find the meaning.",
	},
	["muse.w11.history.062"] = {
		"The gnomes poisoned their own city to drive out the invaders, and lost it anyway. History is full of cures that finished off the patient.",
		"Gnomeregan was the cleverest city in the world, and cleverness is exactly what emptied it. There's a lesson in there somewhere, wearing goggles.",
	},
	["muse.w11.history.063"] = {
		"The dragons call us the younger races. It stings a little, but young things can still change. Old things mostly can't.",
		"To a dragon, every kingdom of ours is a brief fuss. I'd rather be a brief fuss that left something decent behind.",
		"Next to the titans' work, all our history is a few scribbles in the margin. Might as well make them good scribbles.",
	},
	["muse.w11.history.064"] = {
		"Names cut into memorial stones wear away faster than anyone expects. A century of wind and the honored dead are a row of smudges.",
		"They carve the fallen into stone so they'll last. The stone lasts. The letters don't.",
		"Every monument is a race between the chisel and the wind. The wind has never lost.",
	},
	["muse.w11.history.065"] = {
		"Old grudges are heavy luggage. I travel light where I can.",
		"History hands out grudges for free. I keep turning them down.",
	},
	["muse.w11.history.066"] = {
		"If this age is remembered for anything it'll be the Scourge. I'd rather it were remembered for the ones who kept planting fields anyway.",
		"Histories always name an age after its worst enemy. Unfair to everyone who spent it baking bread and patching roofs.",
	},
	["muse.w11.history.068"] = {
		"Druids speak of a dreaming world that shows Azeroth as it was meant to be. I'd like one look, just to see how far the real thing has wandered.",
		"A green dragon is said to dream the world the titans intended. Next to that, our whole history must look like a long run of mistakes.",
	},
	["muse.w11.history.069"] = {
		"There's a dwarven saying that a forge remembers every blow ever struck on it. I wish kingdoms kept their records half as well.",
		"Dwarves like to say that stone forgets nothing it was made to carry. I suspect that's why they build their histories into walls.",
	},
	["muse.w11.history.070"] = {
		"Far in the north something sits on a frozen throne, and the plague was only its first letter to the rest of us.",
		"The Lich King hasn't come south himself. He hasn't needed to. That's the part that keeps me thinking.",
		"Everyone talks about the Scourge in the Plaguelands. Fewer talk about whoever sent it, waiting patiently up north.",
	},
	["muse.w11.history.071"] = {
		"Every stone in this world has a war story. Most of them tell it better than I would.",
		"Kick any stone in this world and there's a battle under it. Not that I recommend kicking.",
	},
	["muse.w11.history.072"] = {
		"In the worst years of every war, every people turned to something: the Light, the spirits, the loa, Elune. The histories never record which ones answered.",
		"If the Light and the spirits and the loa were all listening during the Third War, they must have heard a great deal of shouting.",
	},
	["muse.w11.history.073"] = {
		"A good recipe outlives three dynasties. Kings are forgotten in a few generations; nobody forgets how to make a decent stew.",
		"History keeps the battles and loses the lullabies. The people who sang them would have chosen the other way round.",
		"What survives is odd: a tune, a way of knotting rope, a word for bread. Whole empires didn't make the cut.",
	},
	["muse.w11.history.074"] = {
		"Farmers, smiths and fishermen stood against demons and the walking dead in the Third War, and some of them won. I keep that in mind on bad days.",
		"History is mostly ordinary people refusing to be swept away. That's the only lineage I care to claim.",
	},
	["muse.w11.history.076"] = {
		"Rumors say the insects of the southern desert are stirring behind their wall. Every age gets the trouble it deserves; I wonder what we did.",
		"Dragons in the mountains, the dead in the north, something waking in the southern sands. Future scholars will have a lot of chapters to write.",
	},
	["muse.w11.history.077"] = {
		"Nobody has ever counted everyone the plague took. Whole villages went with no one left to make the list.",
		"There are towns in the north where no one survived to write down the names. Those are lost twice.",
		"The worst of the plague isn't the numbers. It's the villages with nobody left to remember they existed.",
	},
	["muse.w11.history.078"] = {
		"Every ruin comes with a prophecy attached. I'd settle for one that came with a roof.",
		"Show me an ancient ruin and I'll show you someone selling a map to its treasure.",
	},
	["muse.w11.history.079"] = {
		"Elves first taught magic to humans to win a war against the trolls. Every human spell since began as a favor owed in battle.",
		"Magic came to mankind as a weapon handed over in a hurry, during the Troll Wars. It's never quite shaken off that beginning.",
	},
	["muse.w11.history.080"] = {
		"The soldiers of the first wars are going gray. When the last one goes, those wars turn into stories, and stories are much easier to start again.",
		"As long as there are veterans alive, war has a face. After them it's only a song, and songs make it sound worth doing.",
	},
	["muse.w11.history.081"] = {
		"Most peace in history was made by enemies too tired to go on. I find that oddly hopeful; everyone gets tired eventually.",
		"Treaties aren't signed by the brave. They're signed by the exhausted. Long live exhaustion, then.",
	},
	["muse.w11.history.082"] = {
		"Speak softly around old ruins. Whatever built them may not be entirely gone.",
		"My rule for ancient places: touch nothing that hums.",
		"Never read an old inscription out loud. Nobody ever regretted keeping quiet.",
	},
	["muse.w11.history.083"] = {
		"Someday somebody may ask what I was doing while the world was at stake. I'd like an answer that doesn't need padding.",
		"When this age is over, everyone will claim they were on the walls. I'd like to have actually been there.",
	},
	["muse.w11.history.085"] = {
		"The orcs didn't find this world on their own. Someone on this side held the door, and something older was holding him.",
		"Before the orcs, before the Dark Portal, there was a demon whispering to a human mage. Every war since began with that whisper.",
		"Blame for the First War gets passed around like a hot pan. Follow it far enough and it lands on a demon, which suits everyone.",
	},
	["muse.w11.history.086"] = {
		"The orcs crossed into this world and the road behind them closed for good. A whole people with no way home is a weight heavier than any war.",
		"Beyond the dead Portal lies the world the orcs came from, and none of them will see it again. Every people in Azeroth has lost something; they lost a world.",
		"The Dark Portal stands cold in the Blasted Lands. On its far side is a home the orcs remember and will never walk again.",
	},
	["muse.w11.history.087"] = {
		"A dwarf king once called up a lord of fire to win a war, and the fire never left. Whole regions still burn for one bad afternoon's decision.",
		"The Searing Gorge and the Burning Steppes are what happens when someone summons help they can't send back. Worth remembering before anyone calls anything up.",
		"The War of the Three Hammers ended with a mountain on fire and a firelord beneath it. Nobody truly won that one.",
	},
	["muse.w11.history.088"] = {
		"Never call up anything you can't send back. History's very firm on that point.",
		"The whole of history in one line: somebody summoned something, and regretted it.",
		"Summoned things have a way of staying. Half the scorched land in the east is proof.",
	},
	["muse.w11.history.089"] = {
		"The dwarves were one kingdom once, until three clans quarreled over a single throne. Now there are three peoples and three ways of brewing ale.",
		"Most great splits in history started as a family quarrel at a table. The dwarves just had a bigger table.",
		"Three clans, one throne, and a quarrel that has outlived everyone who started it. Most feuds in this world have that shape.",
	},
	["muse.w11.history.090"] = {
		"The elves of Quel'Thalas descend from exiles, sent across the sea for loving magic too much. Every people in this world started as somebody's problem.",
		"Long ago the night elves banished their own cousins for refusing to give up magic. The exiles sailed east and founded a kingdom. Exile is a seed, sometimes.",
		"The high elves and the night elves are one people who stopped speaking ten thousand years ago. Some family silences last a long time.",
	},
	["muse.w11.history.092"] = {
		"In every old story the dead stayed put. Now there's a fortress of them hanging over the Plaguelands, and the old stories feel very naive.",
		"A whole citadel of the dead floats above the east. Whoever writes this age down will have to invent new words for it.",
		"When later ages read that a city of the dead floated over the land, they'll assume the chroniclers were drunk.",
	},
	["muse.w11.history.093"] = {
		"The trolls of Zul'Gurub once fought their own god to save themselves from him. Faith takes more forms than people admit, and some of them carry an axe.",
		"There was a god of blood once that the trolls themselves had to drive out. Imagine praying for help and needing protection from the answer.",
		"Not every people loves its gods. The trolls once had to hunt one of theirs down.",
	},
	["muse.w11.history.094"] = {
		"Goblin traders like to say history is a ledger of old prices: who paid, who sold, who skipped town. It's not the worst definition.",
		"There's a goblin saying that every war is a market with louder customers. It's ugly, and I can't quite argue with it.",
		"'Wars end, debts don't,' goes a goblin proverb. Grim, but every treaty I've heard of seems to agree.",
	},
	["muse.w11.history.095"] = {
		"The Sentinels have kept watch over their forests for ten thousand years. I lose patience waiting for soup.",
		"Imagine a watch that began before every kingdom alive and still hasn't been relieved. The night elves don't have to imagine it.",
		"Ten thousand years of standing guard. I wonder if the first Sentinel would recognize the forest she was watching.",
	},
	["muse.w11.history.096"] = {
		"Ten thousand years of history out there, and I'm fretting over a loose strap. Perspective.",
		"Empires rose and fell to bring us to this moment, apparently. And here I am, hungry.",
		"All of history led up to now, and now is me trying to remember where I put things.",
	},
	["muse.w11.history.097"] = {
		"The dwarves of the Explorers' League dig up the past with actual shovels. Most peoples only argue about theirs.",
		"Somewhere a dwarf is brushing sand off a titan carving with a horsehair brush, very slowly. That's what respect for history looks like.",
		"The past is buried everywhere. The dwarves are simply the only ones who took that as an invitation.",
	},
	["muse.w11.history.098"] = {
		"The sea still spins where the Well of Eternity was. Ten thousand years, and that wound hasn't closed. The world simply learned to sail around it.",
		"There's a whirlpool in the middle of the world that has been turning since the Sundering. Some scars never close; people draw them on the maps and carry on.",
		"The world tore in half once, and the sea is still spinning from the blow. Nothing heals on our schedule.",
	},
	["muse.w11.history.100"] = {
		"Most of us will be one line in someone else's chronicle, if that. Fine. A page is nothing but lines.",
		"History is written in big names but read in small ones: the soldier, the cook, the one who carried the message. I'd settle for being one of those.",
		"Nobody remembers who carried water to the defenders at Hyjal. Somebody did, though, or there'd be no song at all.",
	},
	["muse.w11.history.101"] = {
		"The Legion waited ten thousand years between one invasion and the next. Something that patient doesn't give up over a single defeat.",
		"Demons measure time differently. What looks like victory to us may look like a short delay to them.",
		"Twice beaten, and still out there somewhere. The Legion doesn't nurse grudges; it nurses plans.",
	},
	["muse.w11.history.102"] = {
		"Whole kingdoms fell and people still got up the next day and fed the chickens. I can manage today.",
		"Lordaeron fell and somebody still opened a shop the week after. That's the kind of stubborn I'm aiming for.",
	},
	["muse.w11.history.103"] = {
		"Dalaran is rebuilding under a dome of violet light. Mages have never lacked confidence.",
		"The mages raised a shining shield over the ruins of their city. Nobody outside quite knows what goes on in there, which is how mages like it.",
		"A city of mages, flattened and rebuilt behind glowing walls. Some lessons just don't take.",
	},
	["muse.w11.history.104"] = {
		"After Quel'Thalas fell, its people scattered into a handful of lonely outposts. One bad year can turn a kingdom into a rumor.",
		"Some elves of the east still keep small camps in other people's lands, watching over what's left. It's hard to say what a people is once its home is gone.",
		"One day the elves of the east were a kingdom; the next, a scattering of camps. That's how fast a people's story can change.",
	},
	["muse.w11.history.105"] = {
		"Every bard sings a different version of the old wars. The only thing they agree on is the price.",
		"Three bards, three histories, one fee each. Cheapest education there is, and the least reliable.",
		"Ask a bard for the truth about the old wars and you'll get a better song, not a truer one.",
	},
	["muse.w11.history.106"] = {
		"Deathwing's children are scattered through the world, each in a lair with schemes of its own. A family business of the worst kind.",
		"The black Aspect vanished, people say, but left a brood behind to carry on the work. Some inheritances should be refused.",
		"Every black dragon I've heard of was busy ruining something. Their father raised them well, by his standards.",
	},
	["muse.w11.history.108"] = {
		"Somewhere children are playing at the Third War with sticks, arguing over who has to be the Scourge. Nobody ever wants to be the Scourge.",
		"The great battles always end up as children's games. Maybe that's the kindest thing that can happen to a war.",
		"Children will play at this age too, someday. I hope the part they all fight over is a good one.",
	},
	["muse.w11.history.109"] = {
		"There are night elves alive who fought in the War of the Ancients. Now that they can age, each one who dies takes a piece of the first history along.",
		"Some witnesses to the world's oldest war still walk around answering questions. That won't last forever anymore. Someone ought to write down every word.",
		"Ask an old night elf about the oldest war and an eyewitness answers. That won't be true much longer.",
	},
	["muse.w11.history.110"] = {
		"Demons, dragons and the walking dead all want this world. It's almost flattering, in a terrible sort of way.",
		"So many old powers have tried to take Azeroth that I've started to wonder what they see in it. Then I look around, and understand.",
		"Everyone with a throne and a grudge wants this world. Whatever it is, it must be worth having.",
	},
	["muse.w11.history.116"] = {
		"Thousands upon thousands lived and died before me, and right now I may be the only one thinking of any of them. Odd company.",
		"History is crowded and the present is lonely. All those lives behind me, and nobody here to talk about them with.",
		"It's a strange solitude, carrying the whole past around in my head with nobody to share it.",
	},
	["muse.w11.history.117"] = {
		"Look at the old alliances: elves with humans, orcs with trolls, dwarves with gnomes. None of them was born friendly. Every friendship between peoples began as a necessity.",
		"Peoples make friends the way travelers do: because the road got dangerous and nobody wanted to walk it alone.",
		"Most of the great friendships between races were sealed in a crisis and kept out of stubbornness. That's not a criticism.",
	},
	["muse.w11.history.118"] = {
		"None of the beasts know there were ever wars. A boar doesn't care whose kingdom it roots in.",
		"The animals have no history but hunger and seasons. Some days I envy them the short memory.",
		"Kingdoms come and go over the heads of the deer, who never noticed a single one of them.",
	},
	["muse.w11.history.119"] = {
		"Every people tells history as if it were the hero of the story. Try telling it from the other side once; it's a humbling hour.",
		"Hear the same war from both sides and it stops being a story and turns into a tragedy. That's probably nearer the truth.",
		"I try to imagine the old wars told by the people who lost them. The whole shape changes.",
	},
	["muse.w11.history.120"] = {
		"Age of legends? Still going. Just badly understaffed.",
		"All the great heroes are in the past, apparently. Then who's minding the present?",
		"The histories are full of heroes. The present could use a few. Applications open.",
	},
	["muse.w11.history.121"] = {
		"The titans left guardians of stone to watch over their vaults, and the guardians are still at it, with nobody left to report to. Duty outlasts the ones who gave the orders.",
		"Stone keepers still guard what the titans left them, long after the titans stopped checking. There's something admirable in that, and something sad.",
		"An order given before history began, still being obeyed in the dark. I can't decide whether that's loyalty or a very long misunderstanding.",
	},
	["muse.w11.history.122"] = {
		"Old soldiers have a saying: a war is over when the last one who fought it can laugh about it. By that measure, very few are over.",
		"Veterans say peace starts in the taverns, the first time two old enemies share a table. I hope I'm there to see it.",
	},
	["muse.w11.history.123"] = {
		"In the far corners of the world, titan machines still hum away at tasks nobody remembers. They might be keeping everything running. They might be counting.",
		"There's titan machinery out there older than every people alive. I hope whatever it's maintaining is still worth maintaining.",
	},
	["muse.w11.history.124"] = {
		"The night elves grew a new World Tree without the dragons' blessing. Losing eternity seems to make anyone a little impatient.",
		"A tree the size of a mountain, planted out of grief and hurry. History has seen worse decisions, and a few better ones.",
	},
	["muse.w11.history.125"] = {
		"One day some scholar will dig up my spoon and write a whole chapter about it.",
		"A thousand years from now, someone will find my old boots and call them ceremonial.",
		"Future scholars will argue about my belongings. Let them. I argue with them myself.",
	},
	["muse.w11.history.126"] = {
		"Long after the demons are driven off, the land they touched stays sick. The Legion's cruelest weapon is what it leaves behind.",
		"A battle lasts a day; a forest poisoned by demons stays poisoned for lifetimes. History counts the first and forgets the second.",
		"Demons don't just burn things. They spoil them, slowly, so the damage keeps working after they're gone.",
	},
	["muse.w11.history.127"] = {
		"Every faith in this world has its own account of how things began. They can't all be right, and they all seem to help people get up in the morning.",
		"The Light's priests, the shamans and the druids each tell the beginning of the world differently. I suspect the world doesn't mind being told several ways.",
	},
	["muse.w11.history.128"] = {
		"Every age has its last stand. The ones remembered fondly are the ones where enough people showed up.",
		"In the old chronicles, the battles that turned the world were held by people who arrived late, tired and underfed. Comforting, that.",
	},
	["muse.w11.history.131"] = {
		"Every line of glory in the old chronicles cost somebody more than ink. I try to remember that when I read them.",
		"Victories read beautifully a hundred years later. At the time they mostly smelled of smoke and sounded like weeping.",
		"Glory is what a battle looks like from far enough away. Up close it goes by another name.",
	},
	["muse.w11.history.132"] = {
		"Not everything ancient is wise. Some of it is merely old and in the way.",
		"Respect the past, sure. Just don't let it give the orders.",
		"Old doesn't mean right. Plenty of ancient ideas got whole kingdoms ruined.",
	},
	["muse.w11.history.133"] = {
		"Some places feel heavy for no reason, and later it turns out a battle was fought there. The land keeps records of its own.",
		"I've stood in places that went cold and quiet for no reason I could see. Only afterward did I learn what happened there.",
		"Every old battlefield has a quiet unlike any other quiet. I couldn't explain it to a scholar.",
	},
	["muse.w11.history.134"] = {
		"If the chronicles of this age say only that people kept going, I'd call that a fine epitaph for all of us.",
		"Of all the things this age might be remembered for, I'd choose this: that it didn't give up.",
		"Someday these times will be ancient history too. I hope the ruins we leave are honest ones.",
	},
	["muse.w11.history.135"] = {
		"The fields of Lordaeron used to feed half the north. Now nothing grows there that anyone would put on a plate.",
		"The richest farmland of the old kingdoms is plague soil now. Hunger will remember the Scourge long after the songs forget.",
		"A kingdom's granary, turned to rot in a few seasons. Wars usually burn the harvest; this one poisoned the ground.",
	},
	["muse.w11.history.136"] = {
		"Say the old names now and then. It costs nothing, and it's all the dead ever ask.",
		"Someone has to say the names of the fallen out loud once in a while. Today it's me.",
	},
	["muse.w11.memory.001"] = {
		"Memory never asks what I'd like to keep. It holds onto a stranger's cough and drops whole conversations.",
		"If I could choose what stays, I'd choose differently. My head keeps the oddest scraps and loses the parts that mattered.",
		"Memory is a bad clerk: it files the creak of a door forever and misplaces the words someone said beside it.",
	},
	["muse.w11.memory.002"] = {
		"There's a name on the tip of my tongue. Nobody in particular, just a name, waiting for a face to come and fetch it.",
		"A name keeps surfacing and I can't fasten it to anyone. It knocks, and when I open there's nobody there.",
		"Some name has been circling my head without ever landing. I'd pay a silver to know whose it is.",
	},
	["muse.w11.memory.003"] = {
		"I had a thought. A good one. It's gone. If anyone finds it, it can't have got far.",
		"There was something important I meant to remember. If you see it, tell it I'm waiting.",
		"Wait, wait. It was right there. Gone. Lovely.",
	},
	["muse.w11.memory.004"] = {
		"The mind keeps what it needs to stay alive: which plants sting, which ground gives way. The pretty things it lets go first.",
		"Memory sorts like a quartermaster: dangers at the front, kindnesses at the back where they're hard to reach.",
		"Fear writes in deep ink and joy in chalk. That's how the mind keeps us going.",
	},
	["muse.w11.memory.005"] = {
		"Home isn't a place I can point to. It's the direction my thoughts turn when nobody's asking them anything.",
		"Ask me where home is and my hand doesn't know which way to point. My thoughts do. They always lean the same way.",
		"Home isn't marked on any map I own. It's more like a slope inside me that everything rolls toward.",
	},
	["muse.w11.memory.006"] = {
		"Whoever is waiting for me, if anyone is: I'm slower than I meant to be.",
		"If someone is keeping a chair for me, they've been patient. I'd like to deserve it.",
		"A person might still be expecting me, out past all these miles. I hope they've found something better to do with the waiting.",
	},
	["muse.w11.memory.007"] = {
		"Whoever I left behind has gone on changing without me. In my head they stand exactly where I last saw them.",
		"The people I left don't stop where I left them. Only my memory of them does.",
		"I keep the ones I left exactly as they were. It's the only way I know to keep them, and it isn't quite fair to them.",
	},
	["muse.w11.memory.009"] = {
		"I regret a few things. Mostly small ones. The big mistakes at least had the decency to be interesting.",
		"My regrets are a petty lot: a rude word, a coin not given, a door slammed. The grand ones never bothered me half as much.",
		"Funny which regrets last. Not the disasters. The time I didn't laugh at someone's joke.",
	},
	["muse.w11.memory.010"] = {
		"Some choices I'd make again without blinking, even knowing how they end. Those are the ones I trust.",
		"If I had it all to do over, a few things I'd do exactly the same. I hold onto those like a rail on a stair.",
		"Not every mistake was a mistake. A few I'd walk straight back into, eyes open.",
	},
	["muse.w11.memory.011"] = {
		"Time doesn't pass evenly. Some days are a year wide, and some whole seasons fit in a pocket.",
		"Time is a poor measure of a life. A single hour can outweigh a season, and nobody can say in advance which hour.",
	},
	["muse.w11.memory.012"] = {
		"Note to self: remember to remember the good bits. They're always first out the door.",
		"Remind me to keep the good moments. I always hang onto the wrong ones.",
	},
	["muse.w11.memory.013"] = {
		"Ink costs a copper, paper two. The first word of a letter I've never managed to afford.",
		"A letter needs a quill, a page and a first word. The quill and the page I've owned for ages.",
	},
	["muse.w11.memory.014"] = {
		"Everyone carries something that doesn't show. Mine isn't heavy, exactly. It just never comes off.",
		"There's a weight I carry that no strap holds. Not large, only constant, like a hand resting on the shoulder.",
	},
	["muse.w11.memory.015"] = {
		"A smell can open a door in my head I didn't know was there. Then it shuts before I can see the room.",
		"Smells are the worst thieves: they show me something I'd lost and snatch it back before I can look.",
	},
	["muse.w11.memory.016"] = {
		"I remember every insult word for word. Compliments I have to paraphrase.",
		"Funny how a slight stays sharp for a lifetime and praise wears smooth in a week.",
		"Praise goes in one ear and out the other. Criticism builds a house in there and invites friends.",
	},
	["muse.w11.memory.018"] = {
		"I'll go back one day. Not to a place, maybe. To being someone who doesn't have to keep moving.",
		"Return is a word I keep in my pocket. I don't know to where. I just like the weight of it.",
	},
	["muse.w11.memory.019"] = {
		"Forgetting doesn't hurt. Noticing the gap where something used to be, that hurts.",
		"The forgetting itself is painless. It's finding the empty shelf afterward that stings.",
		"Nothing aches when a memory goes. The ache comes later, reaching for it and closing on air.",
	},
	["muse.w11.memory.020"] = {
		"Memory is the only map of my own life, and it redraws itself every time I unfold it.",
		"I keep a map of my own life in my head. Every time I look, the coastline has moved.",
	},
	["muse.w11.memory.021"] = {
		"If I ever stop somewhere for good, I want a chair that wobbles. A wobble I know by heart.",
		"Home, for me, would be any place where I know which floorboard creaks.",
	},
	["muse.w11.memory.022"] = {
		"Longing for home never knocks. It comes in sideways, like a draft, and I only notice when it's already in the room.",
		"Missing home arrives at the worst moments: mid-bargain, mid-meal, halfway up a ladder.",
	},
	["muse.w11.memory.023"] = {
		"I hope the ones I left are angry with me. Anger means they still think of me.",
		"Better that whoever I left behind grumbles about me than forgets me. Grumbling is a kind of keeping.",
	},
	["muse.w11.memory.024"] = {
		"My memory has two settings: every detail of something embarrassing, and nothing at all about where I put things.",
		"I can recall the exact words of something foolish I said who knows when. Where I put my gloves, though: a mystery.",
	},
	["muse.w11.memory.026"] = {
		"I don't trust my happy memories. I've polished them too often.",
		"The good memories wear smooth from handling. The bad ones I never touch, so they keep their edges.",
	},
	["muse.w11.memory.027"] = {
		"One day someone will ask where I've been. I want an answer worth the wait.",
		"If I ever stand in front of the ones I left, I'd like to bring more than apologies.",
	},
	["muse.w11.memory.028"] = {
		"A life gets told backward. Only near the end does anyone know which parts were the beginning.",
		"Nobody knows which day was the turning point until long after. I may have walked past mine already.",
	},
	["muse.w11.memory.029"] = {
		"Never trust a memory that makes you the hero. Mine all do. Suspicious.",
		"In every story I remember, I come off rather well. That alone tells me something's been edited.",
	},
	["muse.w11.memory.030"] = {
		"Every life is a book with the first pages missing. Nobody remembers how they began.",
		"No one remembers their own first page. We all start reading partway in and guess the rest.",
	},
	["muse.w11.memory.031"] = {
		"I owe someone a thank-you I never said. I don't even know where to deliver it now.",
		"There's a thanks I never got round to saying. It's been riding in my pocket ever since.",
	},
	["muse.w11.memory.032"] = {
		"Regret is useful for about a day. After that it's just extra weight.",
		"Feel a regret properly once, take its lesson, set it down. Carrying it further teaches nothing new.",
	},
	["muse.w11.memory.033"] = {
		"If anyone I left is thinking of me right now, I hope they're remembering one of my better days.",
		"Whoever remembers me, I hope they kept the good version. I'd hate to be remembered on a sour day.",
	},
	["muse.w11.memory.035"] = {
		"I promised myself I'd keep a journal. I remember the promise. That's as far as the journal got.",
		"Everyone says keep a journal. Mine would read: walked, fought, ate, no time to write.",
	},
	["muse.w11.memory.036"] = {
		"I don't keep keepsakes. I keep moments, and they fold smaller.",
		"Things get lost, stolen, sold. The few moments I really keep take up no room at all.",
	},
	["muse.w11.memory.037"] = {
		"Some of me is missing. I can tell by the shape of the hole, not by what was in it.",
		"There are gaps in me I can walk around but never fill. I know their outline better than whatever lived there.",
	},
	["muse.w11.memory.038"] = {
		"One day all of this will be a story I tell badly. Can't wait.",
		"Someday I'll be telling this wrong at some table, and loving every minute.",
	},
	["muse.w11.memory.039"] = {
		"I'm not sure I'd recognize home if I walked into it now. I'm not sure it would recognize me either.",
		"If I went back, the door might be the same. The one knocking wouldn't be.",
	},
	["muse.w11.memory.040"] = {
		"The longer a life runs, the more of it goes to remembering. I'd like to stay busy enough to keep it the other way round.",
		"Some people live forward, some live backward. I'd like to keep my face pointed the right way a while longer.",
	},
	["muse.w11.memory.041"] = {
		"Some say home is a place and some say it's people. I think it's a feeling that only introduces itself from far off.",
		"Home, they say, is easiest to see from a distance. Up close, I suspect, it's mostly doors and chores.",
		"Nobody feels at home while they're at home. It takes leaving to learn the word.",
	},
	["muse.w11.memory.042"] = {
		"Memories need walking, like a wall on watch. Miss a round or two and something slips over.",
		"If I don't visit a memory now and then, it moves out without leaving word.",
		"Unvisited memories pack up quietly. One day I go looking and the room's been let to someone else.",
	},
	["muse.w11.memory.043"] = {
		"What was I doing? No, don't tell me. It'll come back. It always comes back at the worst moment.",
		"Hold on, I came over here for a reason. It'll come to me. Probably mid-fight.",
		"I knew exactly what I was about to do. Knew.",
	},
	["muse.w11.memory.044"] = {
		"Every unsent letter I've thought up was kinder than I am in person. Maybe that's why they stay unsent.",
		"In my head I write generous letters: warm, patient, forgiving. On paper I'd be found out.",
		"The letters I never wrote make me sound like a better person. That's the trouble with sending them.",
	},
	["muse.w11.memory.046"] = {
		"Even what I've forgotten holds me up. It doesn't stop working just because I can't see it.",
		"Forgotten things still bear weight, like the bottom stones of a wall nobody looks at.",
		"Half of what made me I couldn't name anymore. It's in there anyway, under the floor, holding.",
	},
	["muse.w11.memory.047"] = {
		"A note to whoever I'll be later: I did my best with what I knew. Be kind about it.",
		"Someday I'll look back on today. I'd like to be able to nod at it.",
		"Future me, if you're remembering this moment: I hope it turned out worth it.",
	},
	["muse.w11.memory.048"] = {
		"Memory is a generous liar. Every meal I remember was better than anything I'll eat this week.",
		"Remembered meals are always hotter, remembered beds softer. Memory has never once undersold anything.",
		"The past gets better cooking every time I think of it.",
	},
	["muse.w11.memory.049"] = {
		"One day I'll be someone's half-remembered name. I hope they at least get the first syllable.",
		"I'll be forgotten eventually, slowly, the way everyone is: first the voice, then the face, then the name.",
	},
	["muse.w11.memory.050"] = {
		"To whoever's thinking of me just now, wherever you are: thanks. I'll return the favor.",
		"If anyone's saying my name somewhere, I hope it's in a good story.",
		"Somebody, somewhere, is probably telling a story about me wrong. Good. Keeps it alive.",
	},
	["muse.w11.memory.051"] = {
		"I think home is wherever my habits stop seeming strange to the people around me.",
		"Home might simply be the place where nobody asks why I do things that way.",
		"There must be a room where my small habits would make sense to everyone in it. I suppose that's what home means.",
	},
	["muse.w11.memory.052"] = {
		"The days are slow and the seasons are quick. I've never understood how both can be true.",
		"Each day drags its feet, and still the seasons run. Somebody's cheating with the count.",
		"A single hour can last forever, and a whole season can slip out while I'm tying a boot.",
	},
	["muse.w11.memory.053"] = {
		"Sorrow never comes when you set aside a time for it. It waits until your hands are full and your guard is down.",
		"Grief is a poor guest: it never turns up when invited, and it never knocks.",
		"Grief keeps its own calendar, and it never asks whether the date suits.",
	},
	["muse.w11.memory.055"] = {
		"I'd apologize to a few people, if the roads ever cross again. I've got the words ready. I've been rehearsing them.",
		"There are two or three apologies I keep ready, like coins for a toll I may never reach.",
	},
	["muse.w11.memory.056"] = {
		"Don't ask me where I'm from. Long answer, short patience.",
		"Where am I from? Behind me. That's as precise as I get.",
		"Where I'm from is a long story, and I'm saving my voice.",
	},
	["muse.w11.memory.057"] = {
		"Most of a life is forgotten by the one who lived it. What's left over, we call a self.",
		"I've lived far more days than I remember. The few I kept do all the work of being me.",
		"Strip away everything I've forgotten and what's left is a thin book. Still, it's the one with my name on it.",
	},
	["muse.w11.memory.058"] = {
		"Every roof I rest under is borrowed. I thank them all the same, quietly, on the way out.",
		"No roof is mine, so every roof is a favor. I try to leave each one owed a little gratitude.",
		"Borrowed beds, borrowed fires, borrowed walls. Home, for now, is a long list of loans.",
	},
	["muse.w11.memory.059"] = {
		"Some goodbyes I said badly. Some I didn't say at all. I don't know which I mind more.",
		"There's a goodbye I rushed. If I could redo one thing, I'd stand in that doorway a moment longer.",
		"I left without looking back. I've been looking back ever since.",
	},
	["muse.w11.memory.060"] = {
		"I keep meaning to forget certain things on purpose. I always forget to.",
		"Try forgetting something on purpose and it becomes the one thing you'll never lose.",
	},
	["muse.w11.memory.061"] = {
		"Maybe home is something I'll build rather than something I left. That's a better thought to walk on.",
		"Home might be ahead, not behind. I like that version; it gives the feet a reason.",
		"Perhaps the home I'm after hasn't been built yet. Then at least I'm not late for it.",
	},
	["muse.w11.memory.063"] = {
		"Within a season I'll have forgotten nearly everything about today. Odd, to live a day knowing that.",
		"Today is already on its way to being forgotten. That's no reason to waste it, only a reason to choose.",
	},
	["muse.w11.memory.064"] = {
		"The faces I've lost track of don't vanish. They blur together into one patient face, and it seems to forgive me.",
		"All the faces I've forgotten have merged into one: kind, tired, slightly disappointed. It never complains.",
	},
	["muse.w11.memory.065"] = {
		"No looking back today. The past will keep; it's very good at that.",
		"Eyes front. Whatever's behind me isn't going anywhere.",
		"The past can wait. It's the one thing that always does.",
	},
	["muse.w11.memory.066"] = {
		"What makes a place home isn't the place. It's the hundredth time you walk in the door.",
		"A place turns into home by repetition: the same door, the same step, until the feet stop asking.",
		"Nowhere is home the first time. It takes a hundred ordinary returns to wear the groove.",
	},
	["muse.w11.memory.067"] = {
		"Things I'd do differently: plenty. Things I'd skip entirely: one or two. Things I'd do again: the reckless ones, mostly.",
		"Odd. The careful choices are the ones I regret. The reckless ones I'd make again tomorrow.",
	},
	["muse.w11.memory.068"] = {
		"Everyone I pass carries a whole past around unseen. Nobody can see anyone else's. That's probably a mercy.",
		"Every face in a crowd hides a lifetime of remembering. Good thing we can't hear each other's.",
	},
	["muse.w11.memory.070"] = {
		"I'd like to be remembered for one small thing done well, rather than a big thing done loudly.",
		"If anything of me lasts, let it be a small kindness someone can't quite place.",
		"I don't need a song. A stranger who remembers I once held a door would do.",
	},
	["muse.w11.memory.071"] = {
		"A person can be homesick and have nowhere to go back to. The feeling doesn't check.",
		"Homesickness doesn't need a home. It aches for an address that's gone, just the same.",
	},
	["muse.w11.memory.072"] = {
		"Memories. Can't eat them, can't sell them, can't put them down. Useless things. I keep them anyway.",
		"Memories don't fetch a copper at any market, and they're still the heaviest thing I own.",
		"No merchant takes a memory in trade. Lucky for them; they'd never get a fair price out of me.",
	},
	["muse.w11.memory.073"] = {
		"I'd like to notice the day it changes, the day I stop being new to all this. I suspect nobody ever does.",
		"There must be a day when a beginner turns into something else. Nobody ever seems to see it go by.",
	},
	["muse.w11.memory.074"] = {
		"I've taken to saying new names twice. The second time is for the part of me that forgets.",
		"Say a new name aloud once for the person and once for later. Later is terrible with names.",
	},
	["muse.w11.memory.075"] = {
		"The word home sounds different depending on how tired I am. Some days it's a sigh, some days a dare.",
		"Some days home is a comfort and some days an accusation. Same word, same four letters.",
	},
	["muse.w11.memory.077"] = {
		"Somewhere a version of me stayed put. I hope they're bored. I hope they're happy. Mostly bored.",
		"I sometimes picture the me who never left: comfortable, well fed, and wondering what became of me.",
		"There's a me who stayed. We'd have nothing to say to each other, and we'd both be a little jealous.",
	},
	["muse.w11.memory.078"] = {
		"Not everything lost is gone. Some of it just lives where the feet can't follow.",
		"There are places a person can reach only by remembering. The way there is shorter, and much harder.",
	},
	["muse.w11.memory.079"] = {
		"I should write things down. I'll remember to do that. Probably.",
		"My memory and I have an arrangement: I trust it, and it does whatever it likes.",
	},
	["muse.w11.memory.080"] = {
		"Wherever home is, I hope someone opens the windows now and then. I'll need room for all these stories.",
		"If there's a door out there waiting for me, I hope its hinges are oiled. I'll be coming in tired.",
	},
	["muse.w11.memory.081"] = {
		"Remembering is a road of its own. Some hours I cover more ground behind my eyes than under my boots.",
		"I can cross whole seasons in my head between one step and the next. The legs never get credit for it.",
	},
	["muse.w11.memory.082"] = {
		"Whatever I've done, I can't undo. Whatever I do next is still open. I'll keep my eyes on the open part.",
		"The past is shut and locked. The next hour isn't. Only one of those is worth my attention.",
	},
	["muse.w11.memory.083"] = {
		"No bell rings when a part of a life ends. You only hear it afterward, faintly, looking back.",
		"The chapters of a life don't announce themselves. One just notices, much later, that the page has turned.",
		"A life turns its corners quietly. The turn I'll remember most is probably one I didn't notice taking.",
	},
	["muse.w11.memory.084"] = {
		"I'll remember this. Not the details, mind. The feeling. That's the part that keeps.",
		"Whatever this turns out to be, I'll keep the feeling of it. Details are for scholars.",
		"Won't remember the particulars of today, I expect. I'll remember whether I was brave.",
	},
	["muse.w11.memory.085"] = {
		"Home is the one place I can furnish however I like, as long as it stays in my head.",
		"In my head, home has exactly the furniture I want and nobody ever drops by unannounced.",
		"The home I carry in my head never needs repairs. That's how I know it isn't real.",
	},
	["muse.w11.memory.086"] = {
		"Every forgotten thing is still somewhere. Not in me, perhaps. But it happened, and that doesn't come undone.",
		"What I forget still happened. The world keeps the record even when I drop my copy.",
		"Forgetting something doesn't unmake it. The day stays done, whether or not I keep the receipt.",
	},
	["muse.w11.memory.088"] = {
		"Some losses I can name. Others I only know by the habit that outlived them.",
		"I catch myself setting aside a share for nobody. The habit stayed after whatever it was for.",
		"There are habits in me that outlived their reason. I keep them out of courtesy to whatever they were for.",
	},
	["muse.w11.memory.089"] = {
		"Things get easier to remember kindly as time goes. Even the hard ones soften at the edges, if I let them.",
		"Time sands down the worst of it. Not all the way. Enough to pick it up without cutting myself.",
	},
	["muse.w11.memory.090"] = {
		"Regrets? A few. I keep them in a sack and don't open it in company.",
		"Regrets are like old boots: I've got a pair, they pinch, and I'm not throwing them out.",
		"I don't talk about regrets. They hear their name and start getting ideas.",
	},
	["muse.w11.memory.091"] = {
		"Time is the only thief I can't catch and can't blame. It takes everything politely, one hour after another.",
		"Time robs everyone and nobody calls the guard. It's far too polite about it.",
		"The years take things so gently that you end up thanking them on the way out.",
	},
	["muse.w11.memory.092"] = {
		"If I ever find a home, I want to arrive slowly, so as not to miss the moment it starts to look familiar.",
		"When I finally reach somewhere that feels like home, I hope I recognize it before I've walked straight past.",
		"Home might be a place I pass through without noticing. I pay attention, just in case.",
	},
	["muse.w11.memory.094"] = {
		"Give memories a quiet hour and they start talking among themselves. I just listen.",
		"Silence fills up with remembering if I let it. Not always the remembering I'd choose.",
		"Leave a quiet mind alone for an hour and the past moves right in, boots and all.",
	},
	["muse.w11.memory.095"] = {
		"Nobody warns you how ordinary a last time looks. A nod, a door closing, see you soon.",
		"The last time I saw certain people, I didn't know it was the last. I'd have looked longer.",
		"If I'd known it was the last time, I'd have said something. I'd have said anything.",
	},
	["muse.w11.memory.096"] = {
		"Someone back there is owed a visit. I'll pay it. Eventually. Probably with interest.",
		"I owe a few people a visit. They'll get one. Whether they'll want it is another matter.",
		"There's a doorstep that holds a debt of mine. One day I'll go and settle up.",
	},
	["muse.w11.memory.097"] = {
		"Memory is how the dead keep a foothold among the living. I try to give mine somewhere decent to stand.",
		"As long as someone remembers, the gone aren't quite gone. I'm a small room, but they're welcome to it.",
		"The ones who are gone live on in whoever bothers to remember. I try to be bothered.",
	},
	["muse.w11.memory.098"] = {
		"Everyone asks where you're from and nobody asks where you're going. The second is a much better question.",
		"People want to know where I come from. I'd rather they asked where I'm headed; I've had more say in that.",
		"Where are you from? A question for the ones who stayed. The rest of us answer with a direction.",
	},
	["muse.w11.memory.099"] = {
		"Who I was yesterday would barely recognize me. Who I'll be tomorrow, I hope, will at least nod hello.",
		"I change a little every day and never catch it happening. Like a debt, or moss.",
		"Every day I'm someone very slightly new. The trick is to like the direction.",
	},
	["muse.w11.memory.101"] = {
		"Every people in this world has a word for home, and none of them translate well. Maybe that's the point.",
		"Orcs, dwarves, elves, trolls: all of them have a word for the place you go back to. None sound alike, and all of them mean the same ache.",
	},
	["muse.w11.memory.102"] = {
		"I'm building something with the days, I think. I just can't see the shape of it from inside.",
		"A life can only be read from far off, like a carving on a cliff. Up close it's all chips and dust.",
	},
	["muse.w11.memory.103"] = {
		"There's a kind of tiredness that has nothing to do with the legs. It comes from carrying things that happened.",
		"Some weariness isn't in the muscles. It's in remembering, and no bed reaches it.",
		"Boots come off and the feet forgive me. The other weight doesn't come off with anything.",
	},
	["muse.w11.memory.104"] = {
		"Good memory, me. Terrible with names, faces, places and dates, but otherwise excellent.",
		"I never forget a face. I just forget which name goes on it, where we met, and why it's glaring at me.",
	},
	["muse.w11.memory.105"] = {
		"If my life were a ledger, I hope the last page has more thank-yous than apologies. Still time to adjust the figures.",
		"There's a tally running somewhere: kind things on one side, harsh ones on the other. I'd like to finish in credit.",
	},
	["muse.w11.memory.107"] = {
		"I keep a little of every place I've rested: a sound, a smell, the way a door stuck. Home might be the sum of them.",
		"Each place I stop leaves a crumb of itself in me. Maybe enough crumbs make a home.",
	},
	["muse.w11.memory.108"] = {
		"The words I didn't say are louder than the ones I did. Silence has a long echo.",
		"I've regretted plenty of things I said. The things I didn't say I regret longer.",
		"Unsaid things keep. That's their whole trouble: they never spoil, and they never leave.",
	},
	["muse.w11.memory.109"] = {
		"Whoever's waiting: hold on a bit longer. I haven't forgotten.",
		"Not forgotten. Just delayed. Pass that on, if anyone asks.",
		"Anyone waiting on me: I'm coming. Slowly, crookedly, but coming.",
	},
	["muse.w11.memory.110"] = {
		"Sometimes I remember something that can't have happened. Memory, or a dream that stayed too long? I never can tell.",
		"There's a memory in me I can't place: a room, a voice, a warmth. It might be mine. It might be borrowed from a story.",
		"Some of what I remember I may only have heard told. It's moved in and taken the good chairs.",
	},
	["muse.w11.memory.111"] = {
		"Leaving gets lighter with practice. Whether that's a good thing, I still haven't decided.",
		"Every departure is a little easier than the last. I'm not sure I want to be good at leaving.",
		"People say you get used to goodbyes. I'd rather not, honestly; it seems a skill with a price.",
	},
	["muse.w11.memory.113"] = {
		"Nostalgia is memory with the bad smells taken out.",
		"Looking back, everything had a warm glow. At the time it mostly had flies.",
		"Nostalgia: the past, tidied up for visitors.",
	},
	["muse.w11.memory.114"] = {
		"I hope whoever I left behind has stopped worrying. I hope not entirely.",
		"Let them worry a little, the ones back there. Just enough to keep my name warm.",
	},
	["muse.w11.memory.115"] = {
		"No one gets the days back. I count that as a reason to spend them, not to hoard them.",
		"Days are the one coin nobody can save. Spend them, then, and spend them on something.",
		"I can't put days in a purse for later. Every one gets spent whether I choose or not, so I might as well choose.",
	},
	["muse.w11.memory.116"] = {
		"Right. Enough remembering. There's work in front of me.",
		"That's enough of the past for one sitting. Up.",
		"Memories later. Hands busy now.",
	},
	["muse.w11.memory.117"] = {
		"Elune, the Light, the Earth Mother, the loa: every faith I've heard of promises some kind of homecoming. I'd settle for a chair by a door.",
		"Every creed in this world seems to end with going home. Whatever else they quarrel over, they agree on that.",
	},
	["muse.w11.memory.118"] = {
		"A memory told aloud changes a little every time. I wonder how many of mine are still the original.",
		"Each retelling wears a memory down, like a stair. Some of mine are worn right through to the story underneath.",
	},
	["muse.w11.memory.120"] = {
		"A life is too long to remember and too short to finish. I'll take the middle and do what I can with it.",
		"Too long to keep all of it in my head, too short to get everything done. Life is badly measured either way.",
	},
	["muse.w11.memory.121"] = {
		"My memory runs errands without me and comes back with the wrong things.",
		"I sent my memory for a name. It came back with an argument from who knows when, and nothing else.",
		"Ask my memory for one simple thing and it hands me three useless ones and a grudge.",
	},
	["muse.w11.memory.122"] = {
		"Wherever I go, I'm from somewhere else. It's a strange thing to be, permanently.",
		"Being from elsewhere is a coat that never comes off. Some days it's warm. Some days it itches.",
		"In every place but one, I'm the one who isn't from here. Maybe in that one too, by now.",
	},
	["muse.w11.memory.123"] = {
		"To the ones I've forgotten. Not your fault. Mine.",
		"Here's to everyone whose name I've lost. You were worth keeping.",
		"A nod to the forgotten, mine included. Somebody ought to.",
	},
	["muse.w11.memory.124"] = {
		"I don't need to know whether anyone's waiting. Believing someone might be is enough to keep my pace honest.",
		"Whether or not anyone's waiting, I walk as if someone were. It keeps me from dawdling.",
	},
	["muse.w11.memory.125"] = {
		"I've forgiven myself for most things. The rest are on a list, and the list is shorter than it was.",
		"Forgiving myself is slow work. I do a little of it whenever things go quiet.",
	},
	["muse.w11.memory.127"] = {
		"If everything I remember were taken, would I still be me? I'd like to think something stubborn would stay.",
		"Take every memory away and I suspect a habit or two would still be standing. Maybe that's the real me.",
		"Strip out the memories and see what's left. I'm fairly sure it would still complain about the food.",
	},
	["muse.w11.memory.128"] = {
		"Not everything I left behind was lost. Some of it I set down on purpose, and I'm lighter for it.",
		"Some things I didn't lose. I put them down, deliberately, and walked away. That was a good day.",
	},
	["muse.w11.memory.131"] = {
		"Fear of regret has pushed me through more doors than courage ever did.",
		"Half my bravery is just not wanting to remember myself turning back.",
		"I'd rather carry a bruise than a what-if. Bruises fade.",
	},
	["muse.w11.memory.132"] = {
		"The past grows every day and the future shrinks to match. I try not to do the sums.",
		"Every day goes onto the back of the pile. The pile doesn't care how much I can carry.",
		"At some point the scale tips from what's ahead to what's behind. I'll only know long after it happens.",
	},
	["muse.w11.memory.133"] = {
		"Someday I'll be the one telling the young ones how it was. I'd better make it good.",
		"I'm collecting stories to bore people with later. Decent haul so far.",
		"Note for later: exaggerate this part.",
	},
	["muse.w11.memory.134"] = {
		"Memories are the only luggage no one can steal. Also the only kind I can't leave at an inn.",
		"Thieves can take my purse and my pack. What I remember they'd have to take the hard way.",
		"Everything I own could be lost on one bad day. What I remember goes where I go, wanted or not.",
	},
	["muse.w11.people.001"] = {
		"A crowded square can be lonelier than an empty road. The road, at least, doesn't pretend.",
		"Hundreds of people within shouting distance in any city, and not one would notice if I slipped away. Crowds are good at that.",
		"Loneliness gets louder the more people there are around it. Odd arithmetic.",
	},
	["muse.w11.people.002"] = {
		"The smallest kindnesses are the ones that keep. A hand on the arm, a door held, a seat shifted to make room.",
		"Nobody writes songs about someone sliding over on a bench to make room. They should. It's half of decency.",
	},
	["muse.w11.people.003"] = {
		"Trust everyone, they say. Then count your coins, I say.",
		"I trust people completely. I just keep my purse on the side they can't reach.",
		"Good people, mostly. Still, a hand on the purse never offended anyone.",
	},
	["muse.w11.people.004"] = {
		"Innkeepers know everything worth knowing in a place. They just wait for you to order a second drink before they share it.",
		"If I want the truth about a town, I don't ask the guards. I ask whoever pours the drinks and wipes the tables.",
	},
	["muse.w11.people.005"] = {
		"Some people walk beside you for one afternoon and leave a deeper mark than a year of polite acquaintance.",
		"Road friendships are short by nature. That's no reason to hold back while they last.",
		"The best company often comes with a fork in the road attached. You know it from the start and enjoy it anyway.",
	},
	["muse.w11.people.006"] = {
		"Whoever I fight next got out of bed for a reason too, same as me.",
		"The ones on the other side eat, sleep, grumble about their boots. It's easier not to think about it, so I make myself think about it.",
	},
	["muse.w11.people.008"] = {
		"A merchant's 'final offer' has more lives than a cat. It can die three times in one conversation.",
		"There's no such thing as a merchant's last price. There's only the price before you start walking away.",
	},
	["muse.w11.people.009"] = {
		"Guards spend their lives watching a gate nothing comes through. That's what success looks like for them, and nobody thanks them for it.",
		"A good guard's best day is one where nothing happens. Hard trade, to be proud of nothing.",
	},
	["muse.w11.people.010"] = {
		"Always learn the name of whoever feeds you. It's cheap, and it's never wasted.",
		"Know the cook's name, the smith's name and the stable hand's name. Kings can wait.",
	},
	["muse.w11.people.011"] = {
		"A blow from an enemy only hurts. It takes a friend to do real damage: they know where you keep your guard down.",
		"Betrayal needs closeness. Nobody's ever been stabbed in the back by someone they kept at arm's length.",
	},
	["muse.w11.people.012"] = {
		"Children ask the questions grown folk stopped asking. Where does the road go? Why is that man sad? Fair questions, all of them.",
		"Give a child a moment with a stranger and they'll ask the one thing everybody else was too polite to.",
	},
	["muse.w11.people.013"] = {
		"Old folk sitting by a doorway have watched more of the world go by than most travelers ever walk through.",
		"Sit beside someone old for an hour and keep quiet. You'll come away knowing something nobody wrote down.",
	},
	["muse.w11.people.014"] = {
		"A friend is someone I can be quiet with without either of us reaching for something to say.",
		"The test of a friend isn't the talk. It's whether the silence afterward is comfortable.",
	},
	["muse.w11.people.015"] = {
		"Everyone's in a hurry until there's a brawl to watch. Then they've got all the time in the world.",
		"A crowd that won't stop for a beggar will stand an hour to watch two drunks argue.",
	},
	["muse.w11.people.016"] = {
		"The decent things people do when no one's looking outnumber the cruel ones. They're just quieter.",
		"For every cruelty that gets told in a tavern, there are a dozen small decencies nobody bothers to mention.",
	},
	["muse.w11.people.017"] = {
		"Trust is lent, not given. You hand over a little, see what comes back, and decide whether to lend more.",
		"I give trust the way I'd lend coin to a stranger: a little at first, then more if it's repaid.",
	},
	["muse.w11.people.019"] = {
		"People drift out of a life the way they drift in: no farewell, just one day a gap where they used to be.",
		"Not everyone who leaves dies. Most just turn down another road and never think to send word. That's its own small grief.",
	},
	["muse.w11.people.020"] = {
		"News travels faster than any courier, and arrives in far worse shape.",
		"A rumor changes hands a dozen times and gains a dragon at every one.",
	},
	["muse.w11.people.021"] = {
		"Charging a monster takes nerve. Saying 'I was wrong' to someone's face takes more, and you see it far less often.",
		"People will face fangs and fire before they'll admit a mistake out loud. Strange where courage runs thin.",
	},
	["muse.w11.people.022"] = {
		"If someone asks for help and I can give it, the asking is reason enough.",
		"Somebody needs a hand, I've got two. Not much to decide.",
	},
	["muse.w11.people.023"] = {
		"Every house I pass has its own arguments, its own jokes, its own way of setting the table. I'll never know a single one of them.",
		"Behind every door there's a life with its own rules about who sits where. Strange to walk past so many and be inside none.",
	},
	["muse.w11.people.024"] = {
		"Forgiving someone doesn't mean they get to do it again. It means I stop carrying it for them.",
		"I forgive mostly for my own sake. Grudges are heavy, and I'm the one who'd have to haul them.",
	},
	["muse.w11.people.025"] = {
		"A handshake tells you more than a name. Too soft, too long, too eager to let go: all of it is news.",
		"I learn more from how someone shakes hands than from anything they say while doing it.",
	},
	["muse.w11.people.027"] = {
		"For every foe that falls, someone will grieve. I don't have to like knowing that. I only have to know it.",
		"Every enemy was somebody's reason to come home. Knowing it doesn't stay the hand. It only keeps it honest.",
	},
	["muse.w11.people.028"] = {
		"Whoever cooks for strangers for a living is doing a quiet kind of magic. Nobody ever thanks them properly.",
		"A hot bowl from a stranger's kitchen is worth more than most gifts I could name.",
	},
	["muse.w11.people.029"] = {
		"I like people. In small numbers. At a little distance. With a door between us.",
		"People are wonderful. Especially the ones walking the other way.",
	},
	["muse.w11.people.030"] = {
		"I can go a long while without company. What I miss isn't talk. It's someone saying my name like it means something to them.",
		"It isn't conversation I miss. It's hearing my own name in someone else's mouth, said kindly.",
	},
	["muse.w11.people.031"] = {
		"Liars give too many details. Honest people forget half of them and don't care.",
		"A true story has holes in it. A lie has been patched until it shines.",
	},
	["muse.w11.people.032"] = {
		"Nobody who bakes bread or mends nets asked for any of the wars. If I fight at all, it should be so they can keep not asking.",
		"Most folk only want to work, eat and be left alone. That's not a small thing to stand up for.",
	},
	["muse.w11.people.034"] = {
		"Saying no to someone who asks nicely is harder than fighting someone who doesn't ask at all.",
		"I'd rather face a snarling thing than a kind face asking for what I can't give.",
	},
	["muse.w11.people.035"] = {
		"Listen to people long enough and you can hear where they're from in how they say the simplest words. Water. Bread. Home.",
		"Everyone carries their homeland in their vowels. You can hide your colors, never your way of saying 'bread'.",
	},
	["muse.w11.people.036"] = {
		"Be good to the people who carry the post and tend the beasts. The whole world leans on them.",
		"Thank the stable hands. Thank the couriers. Nobody else will.",
	},
	["muse.w11.people.037"] = {
		"It's hard to go on hating a people once you've watched one of them laugh at a bad joke. I suspect that's why hate keeps its distance.",
		"Hatred works best from far away. Up close the enemy starts having habits, and a laugh, and a limp.",
	},
	["muse.w11.people.038"] = {
		"Put a dozen strangers in a line for the same counter and you learn everything about them. Who sighs, who pushes, who lets the old ones go first.",
		"The fastest way to know people is to make them wait. Patience shows the grain of a person the way a plane shows the grain of wood.",
	},
	["muse.w11.people.039"] = {
		"There's a comfort in being nobody in a crowd. Nobody expects anything of a face they'll never see again.",
		"In the bustle of a busy street I can be no one in particular for an hour. It's restful, being unremarkable.",
	},
	["muse.w11.people.041"] = {
		"First impressions are a guess dressed up as a judgment. I try to keep mine on a long leash.",
		"I decide what I think of someone in a moment, then spend a week finding out I was wrong. Might as well wait the week.",
	},
	["muse.w11.people.042"] = {
		"Whoever's watching my back right now: I notice. I don't say it enough.",
		"Good to have people around who'd come back for me. I hope they know it goes both ways.",
	},
	["muse.w11.people.043"] = {
		"The friendliest smile in any market belongs to whoever just overcharged you.",
		"When a merchant starts treating me like an old friend, I check what I've just agreed to.",
		"A shopkeeper who laughs at all my jokes is adding them to the bill somewhere.",
	},
	["muse.w11.people.044"] = {
		"Healers see everyone at their worst and treat them gently anyway. I don't know a harder kindness.",
		"Whoever patches up strangers for a living sees people at their ugliest and keeps being gentle. That's a courage of its own, and a quiet one.",
		"Anyone who binds wounds for strangers has heard every kind of cursing, and still says 'hold still' kindly.",
	},
	["muse.w11.people.045"] = {
		"Never laugh at someone asking the way. Your turn comes soon enough.",
		"Whoever's lost and asking, answer them kindly. Everyone takes a turn at it.",
	},
	["muse.w11.people.047"] = {
		"Stepping in for a stranger is the purest kind of brave. No glory, no thanks, and you never learn how it ended for them.",
		"Nobody remembers who stopped the bully in the street. The one being bullied does, though. That's plenty.",
		"Standing between a stranger and trouble costs a moment of nerve. Walking past costs something that lasts longer.",
	},
	["muse.w11.people.048"] = {
		"A good tavern sounds like twenty arguments nobody intends to win.",
		"Listen to a common room long enough and it's the same three stories, told louder each round.",
		"Every tavern has the same cast: the loud one, the sad one, the one who owes everybody. Only the ale changes.",
	},
	["muse.w11.people.049"] = {
		"Most betrayals aren't planned. Somebody gets frightened, or hungry, and the choice makes itself. That doesn't make it smaller.",
		"Traitors are rarely villains in their own telling. Mostly they're frightened people who found a good enough reason.",
	},
	["muse.w11.people.051"] = {
		"In every town I'm the stranger someone else is wary of. I try to be a good one.",
		"Wherever I stop, I'm the unknown face at the edge of someone's day. Worth remembering how that looks from their side.",
		"Every place I arrive, I'm the stranger the locals discuss after I've gone. I'd like to be a short, pleasant topic.",
	},
	["muse.w11.people.052"] = {
		"Anyone will help when it's easy. A friend is whoever turns up when it's inconvenient and there's nothing in it for them.",
		"You don't find out who your friends are on good days. Good days are crowded.",
		"Friendship is measured in favors asked at a bad hour and granted without a sigh.",
	},
	["muse.w11.people.053"] = {
		"Guards always look at me like I'm about to steal something. I'm flattered they think I'd manage.",
		"A guard's stare could curdle milk. I suppose that's in the terms of service.",
	},
	["muse.w11.people.054"] = {
		"Elders speak of the wars they lived through more quietly than the young speak of the wars they've only heard about.",
		"Those who were there never tell it loudly. The loud ones are always the ones who weren't.",
	},
	["muse.w11.people.055"] = {
		"Children playing at war with sticks always fight fair and always come home for supper. They should be put in charge.",
		"Watch children play at battles: someone always gets to be the hero, and nobody stays dead. Grown folk could learn from the rules.",
	},
	["muse.w11.people.057"] = {
		"The world divides neatly into people who need something fetched and people who fetch. I know which side I'm on.",
		"Wherever I go, somebody's waiting for a stranger to solve their problem. It's flattering, until I see the size of the problem.",
		"Funny how many people are just standing about, hoping someone like me will wander by. I wonder what they did before.",
	},
	["muse.w11.people.058"] = {
		"The ones who are gone don't leave all at once. First the voice goes, then the face, and last of all the way they laughed.",
		"The people we lose leave habits behind in those who knew them: a favorite word, a way of tying a knot. They go on in small gestures.",
	},
	["muse.w11.people.059"] = {
		"Say what you'll do, then do it. Most people manage half.",
		"Show up when you said you would. It's a rarer gift than gold.",
	},
	["muse.w11.people.060"] = {
		"Laughter from the next table over is a strange sound to be near. Warm, and not mine.",
		"There's a particular loneliness in hearing a whole room laugh at a joke I came in too late for.",
	},
	["muse.w11.people.061"] = {
		"A foe who fights well deserves to be beaten well. Sloppy wins insult both sides.",
		"I'd rather face an honest enemy than share a road with a dishonest friend.",
		"Respect for an enemy isn't softness. It's just seeing straight.",
	},
	["muse.w11.people.063"] = {
		"Mercy is a choice made at the worst possible moment, when every reason says otherwise. That's why it counts.",
		"Sparing someone costs more than striking. You have to live with not knowing what they'll do with the gift.",
	},
	["muse.w11.people.064"] = {
		"Farmers talk about the weather the way soldiers talk about the enemy: with respect, and no illusions.",
		"Ask a fisher about the world and you'll hear about water, patience and nets. Ask a soldier and it's walls. Everyone sees it through their trade.",
	},
	["muse.w11.people.065"] = {
		"Every town has one person who knows everything and one who believes them. Usually they're married.",
		"Every village has its know-it-all. I try to find out who before I start asking questions.",
	},
	["muse.w11.people.066"] = {
		"The pockets of the fallen hold the same things as mine: a few coins, something to eat, some small token that mattered to nobody else.",
		"Go through a foe's belongings and you'll find a lucky stone, a mended glove, a half-eaten crust. Enemies are mostly people with errands.",
	},
	["muse.w11.people.068"] = {
		"A loan between friends is a small knife left on the table. Usually nobody touches it. Usually.",
		"When a friend asks for coin, I decide whether I can afford never to see it again. If I can, I stop calling it a loan.",
	},
	["muse.w11.people.069"] = {
		"Some days I need people the way I need water. Other days I'd walk an hour out of my way to avoid a single greeting.",
		"I'm not unfriendly. My stock of conversation just runs low, and it refills slowly.",
	},
	["muse.w11.people.070"] = {
		"I'm braver on someone else's behalf than on my own. Maybe that's what courage is for.",
		"For myself alone, I might run. For a stranger who can't, I find I stay. I don't fully understand it.",
	},
	["muse.w11.people.071"] = {
		"A good word costs nothing and travels further than a horse.",
		"Say something kind to someone today. Cheapest thing in the world that still works.",
	},
	["muse.w11.people.072"] = {
		"Every innkeeper swears the beds are clean. Every bed has its own opinion on that.",
		"An innkeeper's smile measures your purse the moment you're through the door. Fair enough: mine measures the stew.",
	},
	["muse.w11.people.074"] = {
		"Trust mends like a bone: it holds again, but it aches when the weather turns.",
		"You can forgive a betrayal and still never turn your back again. Both can be true at once.",
	},
	["muse.w11.people.075"] = {
		"I've half a mind to ask every stranger one question: what are you hoping for? I'd learn more than any map could teach.",
		"If I asked every person I passed what they wanted most, I'd get a thousand answers and maybe four different ones.",
	},
	["muse.w11.people.076"] = {
		"Wars don't start between strangers. They start between neighbors who stopped talking.",
		"Peel back the oldest feud and you'll find two people who once drew water from the same well.",
	},
	["muse.w11.people.077"] = {
		"Anyone hurt, say so. Pride heals slower than a cut.",
		"If you need a rest, ask. I'd rather wait than carry you.",
	},
	["muse.w11.people.079"] = {
		"I keep a short list in my head of people who were kind to me for no reason. It's the only list I reread when I'm low.",
		"When the world feels mean, I think of the last stranger who did me a good turn. It usually holds.",
	},
	["muse.w11.people.080"] = {
		"Loyalty that can be bought is only waiting for a better offer.",
		"Pay someone to stand beside you and they'll stand there exactly as long as the coin does.",
	},
	["muse.w11.people.081"] = {
		"Every people in this world has some rule about the guest at the fire. Strange how enemies all agree on that one.",
		"Feed the traveler, ask no questions till the bowl is empty. Half the world keeps that law, and nobody ever wrote it down.",
	},
	["muse.w11.people.082"] = {
		"Everyone in a crowd seems to know where to stand. I'm always the one shuffling about to find a spot by the wall.",
		"I always end up at the edge of a gathering, close enough to hear and far enough to leave. It suits me more than I like to admit.",
	},
	["muse.w11.people.083"] = {
		"Everyone wants a hero until the hero needs a bed and a meal on credit.",
		"They cheer you in the street and charge you full price at the inn. Fame's a thin cloak.",
	},
	["muse.w11.people.084"] = {
		"The young think the old have forgotten how it feels. The old remember exactly. That's why they look away.",
		"Elders watch the young rush into things with a look that's half envy and half worry.",
	},
	["muse.w11.people.085"] = {
		"I've never learned to say goodbye properly. I either say too much or I'm already halfway down the road.",
		"Farewells are the one thing practice doesn't make easier. Only quicker.",
		"The worst goodbyes are the careless ones. 'See you soon,' and then never.",
	},
	["muse.w11.people.086"] = {
		"Watch what people do with their hands while they talk. The mouth is rehearsed. The hands rarely are.",
		"Faces lie well. Feet don't: they point where a person really wants to go.",
		"If you want to know what someone's afraid of, watch where their eyes go when a door bangs.",
	},
	["muse.w11.people.087"] = {
		"Everybody's honest until the price of honesty goes up.",
		"Show me someone who's never lied, and I'll show you someone lying about it.",
		"Honest folk exist. They're just bad at haggling, so they go broke early.",
	},
	["muse.w11.people.088"] = {
		"Every name carved on a memorial was somebody's difficult friend, somebody's terrible cook. The stone smooths all of that away, and that's a second loss.",
		"Monuments remember the brave. They forget the snoring, the bad jokes, the borrowed coin never paid back. Those were the person.",
	},
	["muse.w11.people.090"] = {
		"Being needed is a heavy coat. Warm, though. I'd miss it if it were gone.",
		"When people start depending on you, the road narrows. It also stops being only yours, and that isn't all loss.",
		"Every person who counts on me is a small weight and a small anchor. I'm learning to tell the two apart.",
	},
	["muse.w11.people.091"] = {
		"Children stare at anyone with a weapon and a dusty pack as if we'd walked out of a story. I hope nobody tells them how much of it is standing in line.",
		"There's always a child somewhere convinced that people like me are heroes. That's a lot to live up to before breakfast.",
		"To a child, every stranger with a pack is a hero or a villain. Their stories have no room for 'tired'.",
	},
	["muse.w11.people.092"] = {
		"Haggling is a kind of courtesy. A merchant nobody haggles with feels slightly insulted, and charges more next time.",
		"Paying the first price asked is rude in half the markets of the world. The bargaining is the conversation.",
	},
	["muse.w11.people.093"] = {
		"Stand up for whoever's being pushed around. Even if your knees shake. Especially then.",
		"If nobody else will speak up, that's usually the sign it ought to be me.",
		"Bullies count on everyone looking away. I'm terrible at looking away.",
	},
	["muse.w11.people.094"] = {
		"Strangers who'll never meet again tell each other the truest things. There's nothing left to protect.",
		"It's easier to be honest with someone you'll never see again. A shame, really, that it works that way round.",
	},
	["muse.w11.people.095"] = {
		"Nobody marches out thinking they're the villain. Every side has its banners, its songs and its dead. That's what makes it so hard to stop.",
		"The enemy believes in something too. I find that more frightening than if they believed in nothing.",
		"Whoever stands on the other side of a war is just as sure as I am. One of us is wrong, and both of us are certain.",
	},
	["muse.w11.people.097"] = {
		"A smith will tell you more about a town's troubles than whoever governs it. Every broken thing passes across that anvil.",
		"Talk to whoever mends things in a village. They know who fights, who's careless, and who's too proud to ask.",
	},
	["muse.w11.people.098"] = {
		"A city is ten thousand people agreeing not to look at each other. It's a kind of peace, and a kind of exile.",
		"In a big city everyone has learned not to meet anyone's eye. Sensible. Also a little sad.",
		"Walk through a capital and count how many people actually look at you. One hand is usually enough.",
	},
	["muse.w11.people.099"] = {
		"Watch how someone treats the people who serve them. That's who they really are.",
		"Rude to the stable hand, polite to the captain? I know all I need to.",
		"Kind to the cook, kind to the beggar, kind to the lost? That's someone I'd walk beside.",
	},
	["muse.w11.people.100"] = {
		"A traitor's worst crime isn't the harm done. It's teaching everyone who watched to trust a little less.",
		"Betrayal spreads like rot through a granary. One bad sack, and for years everyone checks every sack.",
	},
	["muse.w11.people.101"] = {
		"Everyone complains about the same three things: prices, the young, and whoever's in charge. Every people in this world. It's almost comforting.",
		"Listen to any marketplace and the grumbling's the same: too dear, too slow, too many fools. We have more in common than the banners admit.",
	},
	["muse.w11.people.103"] = {
		"The best friendships seem to start with nothing in common but one bad situation.",
		"Shared trouble makes friends faster than shared taste. Nobody ever bonded over agreeing about soup.",
		"Give two strangers a broken cartwheel and an hour, and you'll often get friends. Give them a feast and you'll get small talk.",
	},
	["muse.w11.people.104"] = {
		"Behind every wall that holds there are a thousand sleepers who'll never know who stood on it. That's how it should be.",
		"The best kind of protecting goes unnoticed. If the people behind me never learn my name, the job was done well.",
	},
	["muse.w11.people.105"] = {
		"I'm very good with people. They just don't always agree.",
		"I'd make a fine diplomat. Nobody's ever stayed angry with me for more than a week or two.",
		"People skills? Plenty. I keep them somewhere safe and use them sparingly.",
	},
	["muse.w11.people.106"] = {
		"Every companion is a future goodbye. I make friends anyway. The alternative is worse.",
		"Caring about people on the road is a debt that always comes due. I keep signing for it.",
	},
	["muse.w11.people.107"] = {
		"A good name takes months to build and a single evening to lose. Usually in a tavern.",
		"Reputation walks ahead of you into every town. Best make sure it's decently dressed.",
		"People will hear about me before they meet me. I'd like the story to be roughly true.",
	},
	["muse.w11.people.109"] = {
		"The beggar at the gate sees every face that goes through it. I wonder what he'd say about all of us, if anyone asked.",
		"I can't feed every beggar in the world. I can look the next one in the eye. That costs nothing and still seems rare.",
	},
	["muse.w11.people.110"] = {
		"I don't despise cowards. Everyone runs from something. It's the ones who push others in front of them I can't forgive.",
		"Fleeing is only natural. Leaving someone behind to cover your flight is something else entirely.",
	},
	["muse.w11.people.111"] = {
		"I forget names the moment they're spoken. Faces stay. So I'm forever greeting people warmly while panicking inside.",
		"Somewhere a perfectly nice person thinks I'm rude, all because their name fell straight out of my head.",
	},
	["muse.w11.people.112"] = {
		"When an enemy lowers their weapon and looks up, they stop being an enemy and turn into a problem. A much harder one.",
		"A foe who yields hands you their whole life in a single look. Nobody trains you for holding that.",
		"Fighting is simple compared to the moment after, when the other one stops fighting and waits to see what you are.",
	},
	["muse.w11.people.113"] = {
		"Some people fill every silence as if it were a leak in the boat. I'd rather let it sink quietly.",
		"There's always one traveler who narrates the whole road. Every rock. Every cloud. Every opinion about both.",
		"Some folk talk as if silence owed them money.",
	},
	["muse.w11.people.114"] = {
		"Sometimes I pass a band of friends arguing cheerfully over nothing, and I envy them so much it surprises me.",
		"Watching old friends bicker the way only old friends can makes me feel like a cloak left on the wrong hook.",
	},
	["muse.w11.people.115"] = {
		"Greet the guard at every gate. One day it'll matter which face they remember.",
		"Gatekeepers remember faces for a living. Better to be one they remember fondly.",
		"Learn the guards' names. They'll learn yours either way; best it's for something good.",
	},
	["muse.w11.people.116"] = {
		"Old soldiers laugh at the strangest moments. I suspect the laugh is where they keep everything else.",
		"Whoever has buried friends in a war carries a quiet that sits differently from ordinary quiet. You can hear it in a crowded room.",
		"Ask a veteran about a battle and they'll tell you about the food, the mud, a friend's bad singing. Never the battle.",
	},
	["muse.w11.people.118"] = {
		"Tell one person a secret and it's a secret. Tell two and it's news with a delay.",
		"The only secret that keeps is one nobody else knows. Every other kind is just slow gossip.",
		"Secrets are like coins: the more hands they pass through, the less they're worth and the dirtier they get.",
	},
	["muse.w11.people.119"] = {
		"There are things I've never told anyone. Not because they're terrible. Because nobody's asked in the right voice yet.",
		"Everyone carries one story they've never told. Mostly it's waiting for someone who won't interrupt.",
	},
	["muse.w11.people.120"] = {
		"Give someone a little power and watch their nose climb an inch.",
		"Nothing makes a person taller than a title and a desk.",
		"Hand anyone a ledger and a stamp and they'll start acting like a king.",
	},
	["muse.w11.people.121"] = {
		"Trusting someone new after being let down is the bravest ordinary thing people do. And they do it every day.",
		"Every time someone opens a door to a stranger, they're betting the world is better than it's been to them. I like that bet.",
	},
	["muse.w11.people.122"] = {
		"A banker's face never moves. I suspect they're carved in the cellar and wheeled up each day.",
		"Bankers look at everyone the same way: as a small, temporary pile of coin with legs.",
		"I hand my valuables to a banker I've never met and walk off without a backward glance. Trust is a strange thing once it's a habit.",
	},
	["muse.w11.people.124"] = {
		"Loyalty isn't standing beside someone when they're right. Anyone can do that. It's telling them when they're wrong, and staying.",
		"The loyal friend isn't the one who always agrees. It's the one who argues and then still shows up.",
		"Anyone can be loyal to a winner. The rare ones stay loyal through the losing.",
	},
	["muse.w11.people.125"] = {
		"Boat captains and flight masters see everyone in a hurry and nobody arriving. Strange job, to be the middle of every journey.",
		"Whoever tends the beasts and boats at a crossing hears every reason people travel. I'd give a lot for an hour of their gossip.",
	},
	["muse.w11.people.126"] = {
		"Listen twice as long as you talk. People tell you everything if you let them.",
		"Ask, then shut up. Most folk are dying to explain themselves.",
		"Let people talk. Silence is a bucket, and they'll fill it.",
	},
	["muse.w11.people.127"] = {
		"The saddest enemies are the ones who used to share your table. They know your jokes, and exactly where you flinch.",
		"When a friend becomes a foe, both of them lose the same thing. Usually only one of them admits it.",
	},
	["muse.w11.people.128"] = {
		"Being welcomed where you had no right to expect it is one of the best feelings there is. A stranger saying 'sit, eat' undoes a week of hard road.",
		"One honest welcome repairs a lot. It doesn't need to be grand. It only needs to be meant.",
	},
	["muse.w11.people.130"] = {
		"Dwarf, troll, elf or orc, each of the world's peoples sings when the work is hard and goes quiet at a grave. That's more than the treaties ever found in common.",
		"Every people I've heard of mourns, feasts and haggles. The words differ. The faces don't.",
	},
	["muse.w11.people.131"] = {
		"Being known is a luxury: someone who knows which jokes you hate and how you like your bread. Out on the road, nobody does.",
		"Strangers meet the version of me I show them. Sometimes I wonder who'd recognize the rest.",
	},
	["muse.w11.people.132"] = {
		"Rule for inns: ask what the stew costs, never what's in it.",
		"Never ask an innkeeper what's in the pie. Ask how much, then eat fast.",
	},
	["muse.w11.people.133"] = {
		"Asking for help is a skill. I'm still bad at it, and that costs me more than my pride ever saves.",
		"Half my troubles would be smaller if I just asked someone. The other half would at least have company.",
		"Pride is a fine companion right up until there's something heavy to lift.",
	},
	["muse.w11.people.135"] = {
		"Every revenge becomes somebody else's reason. That's how feuds outlive everyone who started them.",
		"Pay back a killing and you've only signed for the next one. Somebody has to stop paying, and it's never the proud.",
	},
	["muse.w11.people.136"] = {
		"A few words with a stranger at a market stall, about nothing at all, can carry me through the rest of the day.",
		"The smallest conversations are often the ones I remember. Two lines about the price of salt, and somehow a friend for a minute.",
		"Strangers who chat while waiting for the same boat become, for a quarter of an hour, the best of friends.",
	},
	["muse.w11.people.137"] = {
		"If you owe someone, pay before they ask. Debts sour when they're left standing.",
		"Settle up quickly. Favors left unpaid turn into grudges, with interest.",
	},
	["muse.w11.people.138"] = {
		"Whoever teaches a trade has watched a hundred clumsy beginners and still explains it kindly to the hundred-and-first. That's a patience I'd like.",
		"The best teachers never say 'obviously'. They remember not knowing.",
		"Somebody once took the time to show every expert the basics. I hope they got thanked.",
	},
	["muse.w11.people.139"] = {
		"Everyone who shares a stretch of road with me gets the same wish when we part: a dry bed, a fair price, and a friend waiting at the end.",
		"I part from people with a wish I keep to myself: that the next stranger they meet is kinder than I managed to be.",
	},
	["muse.w11.people.141"] = {
		"Every old-timer has the same advice: slow down, eat something, and don't trust anyone too cheerful. Annoyingly, they're right.",
		"Elders are always telling the young to be careful. The young always nod. Somebody in that exchange is wasting their words.",
		"Old folk hand out advice like bread: freely, firmly, and expecting you to finish it.",
	},
	["muse.w11.people.142"] = {
		"Alone, anyone is just one stubborn creature. Put a few of them shoulder to shoulder and you have a wall.",
		"There's a strength that only shows up when people stand together. Nobody owns it. It belongs to the line.",
		"One stubborn creature is easy to push aside. Five standing together are a problem for anything.",
	},
	["muse.w11.people.143"] = {
		"Nobody gets left behind. Not while I can still walk.",
		"We go in together, we come out together. That's the only plan I care about.",
	},
	["muse.w11.people.144"] = {
		"I've heard of soldiers sharing water with a wounded enemy between battles. I'd like to believe I'd do the same. I hope I never have to find out.",
		"The stories that move me most aren't of great victories. They're of someone giving a drink to the person they'd been fighting a moment before.",
		"A cup of water passed across a battle line says more about people than any banner flying over it.",
	},
	["muse.w11.people.146"] = {
		"I'd rather walk alone than with someone I have to keep an eye on. Solitude, at least, never steals from my pack.",
		"Bad company is lonelier than no company. Alone, at least, I'm not pretending.",
		"The wrong companion doubles the road. The right one halves it. No companion at all leaves it as it is, honest.",
	},
	["muse.w11.people.147"] = {
		"Strangers always tell me their troubles. I must have one of those faces. Tired, mostly.",
		"Why does everyone tell me their life story? I only asked the way to the inn.",
		"People confide in me constantly. I think I look too worn out to gossip.",
	},
	["muse.w11.road.001"] = {
		"Distance lies in both directions. Near things take all day to reach, and far ones jump out from behind a bend.",
		"Nothing is ever as far as it looks, or as close. Distance tells fibs both ways.",
		"I've stopped trusting how far anything looks. The near ones drag on forever and the far ones ambush me.",
	},
	["muse.w11.road.002"] = {
		"Ask three people the way and you'll get four answers and a story about somebody's cousin.",
		"Directions from a stranger always include a landmark that hasn't existed for years.",
		"'Turn where the old cart used to be.' Thank you. Very helpful.",
	},
	["muse.w11.road.003"] = {
		"Leaving is always quicker than I expect. One moment I belong somewhere; the next I'm just a back walking away.",
		"There's no ceremony to setting off. A strap pulled tight, a last look, and the place is already behind me.",
		"Departures take ages to decide and a moment to do. The moment always catches me off guard.",
	},
	["muse.w11.road.004"] = {
		"At a crossroads I always look a while down the road I won't take, just to have seen a little of it.",
		"Whichever way I choose at a fork, I give the other one a long look. It deserves that much.",
		"I never take both branches of a fork, but I always say goodbye to the one I leave.",
	},
	["muse.w11.road.005"] = {
		"Signposts point with great confidence and say very little. I know people like that.",
		"A signpost has one arm, one opinion, and no idea what's actually at the end of the road.",
	},
	["muse.w11.road.007"] = {
		"Arriving anywhere is a small victory nobody else notices. I notice.",
		"Every time I reach the place I meant to reach, I give myself a quiet nod. Someone should.",
		"Getting where I was going deserves marking, even if I'm the only witness.",
	},
	["muse.w11.road.008"] = {
		"Half of travel is waiting: for a boat, for a guide, for my legs to agree to the next part.",
		"Nobody talks about how much of a journey is spent waiting on something: a ferry, a crossing, the will to start again.",
	},
	["muse.w11.road.009"] = {
		"Every road is longer on the way back. No proof, only feet.",
		"The way back always measures longer than the way out. Nobody has ever explained it to me.",
	},
	["muse.w11.road.010"] = {
		"Being properly lost has its own quiet. Nobody knows where I am, and neither do I.",
		"When I'm truly lost the world goes very still, as if waiting to see what I'll do about it.",
		"There's a hush to being lost. No one could find me now, and I least of all.",
	},
	["muse.w11.road.011"] = {
		"Whoever set the first milestone was making a promise to strangers: this far, and you're still on the right way.",
		"A milestone is a small kindness in stone. Someone I'll never meet wanted me to know how far I'd come.",
	},
	["muse.w11.road.012"] = {
		"A map is good for where things were when it was drawn. After that it's history with arrows.",
		"Maps age faster than the land does. Every one of them is a little out of date and very sure of itself.",
		"Trust a map the way you'd trust an old letter: true once, maybe still.",
	},
	["muse.w11.road.014"] = {
		"Pick a direction. Even a wrong one teaches more than standing here.",
		"Any way at all, as long as it's a way. Standing still decides nothing.",
		"Choose. If it's wrong, the road will say so soon enough.",
	},
	["muse.w11.road.015"] = {
		"The worst part of leaving is the doorway. Once I'm past it, the road takes over and I stop thinking.",
		"It's the threshold that's hard. Two strides past it and my feet have already forgiven me.",
	},
	["muse.w11.road.016"] = {
		"'Just over the rise,' they always say. The world has more rises in it than honesty.",
		"'Not far now.' The most worn-out words in any language.",
		"Nobody who says 'nearly there' has ever actually been nearly there.",
	},
	["muse.w11.road.017"] = {
		"There's a plain joy in going somewhere with nothing to do on arrival but look around.",
		"Best kind of journey: no errand waiting at the end, just the end.",
	},
	["muse.w11.road.018"] = {
		"Some miles are only there to be endured. No view, no talk, just the next and the next.",
		"Not every mile is a story. Plenty of them are just the dull price of the ones that are.",
		"Some stretches give nothing back. I walk them the way you'd pay a toll.",
	},
	["muse.w11.road.019"] = {
		"If walking builds character, I'm on course to have far too much of it.",
		"Travel broadens the mind, they say. It has certainly flattened my feet.",
	},
	["muse.w11.road.020"] = {
		"Now and then a trail just stops, as if whoever wore it changed their mind halfway.",
		"Some paths end in nothing at all: no house, no well, just the way giving out. Someone had a reason, once.",
	},
	["muse.w11.road.021"] = {
		"Whatever I'll need first goes on top. Simple rule. Broken every single time I pack.",
		"Whatever I need in a hurry is always at the very bottom. I'm starting to think the pack does it on purpose.",
	},
	["muse.w11.road.023"] = {
		"Every journey begins as a decision, and the decision is always the steepest stretch.",
		"Setting out is the hardest part of any road, and it isn't measured in miles.",
		"The first stride over the threshold weighs more than the next thousand put together.",
	},
	["muse.w11.road.024"] = {
		"Arrivals are always smaller than I picture them. The place never knows it was waited for.",
		"I build every destination up in my head, and each one turns out to be just a place, with people going about their business.",
	},
	["muse.w11.road.025"] = {
		"Right. Which way is forward? Ah. That one.",
		"Forward is that way. Probably. Let's find out.",
	},
	["muse.w11.road.026"] = {
		"Nobody builds the first path. It's just where enough feet agreed to go.",
		"A path is a vote taken by feet over a very long time.",
		"Every trail began as somebody's guess, repeated until it became the way.",
	},
	["muse.w11.road.027"] = {
		"My own footfalls turn into company if I walk long enough. Not good company. Steady, though.",
		"After enough walking my steps make a sound I stop hearing, the way you stop hearing your own name.",
	},
	["muse.w11.road.028"] = {
		"I never get lost while I'm unsure. It's the confident turns that do it.",
		"Doubt keeps me on the path. Certainty walks me straight into the wrong place entirely.",
		"I have a gift for getting lost the very moment I stop checking.",
	},
	["muse.w11.road.029"] = {
		"Whatever's ahead, at least it isn't what I've already seen. That's worth something.",
		"Even a bad road changes the view. Some days that's reason enough to keep moving.",
	},
	["muse.w11.road.030"] = {
		"When my head gets too full I count my steps. A hundred, then another hundred, and the noise thins out.",
		"Numbers don't argue. When thoughts crowd in, I count paces until they give up.",
		"Counting strides is a poor kind of prayer, but it quiets the mind just the same.",
	},
	["muse.w11.road.031"] = {
		"Follow your nose, they told me. My nose has no sense of direction.",
		"Trust your instincts, people say. Mine would cheerfully walk me in circles.",
	},
	["muse.w11.road.033"] = {
		"Every departure is a small rehearsal for the last one. I'd rather not get too good at it.",
		"Each time I leave somewhere, I practice a little for the final leaving. I try not to notice.",
	},
	["muse.w11.road.034"] = {
		"Rest before the climb, not halfway up. Halfway up, sitting down is just giving up slowly.",
		"Never stop in the middle of a hard stretch. Stop before it, after it, or not at all.",
	},
	["muse.w11.road.035"] = {
		"From the road I see a hundred places I'll never stop at. They stay perfect that way.",
		"So much of the world I only ever see in passing: a gate, a window, a turning. Each keeps its secret.",
	},
	["muse.w11.road.036"] = {
		"Feet, do your job. I'll do mine.",
		"Come on, legs. Nobody's carrying us.",
	},
	["muse.w11.road.037"] = {
		"My sense of direction is excellent. It's simply loyal to places I'm not trying to reach.",
		"I have a gift for finding things. Just never the thing I set out for.",
	},
	["muse.w11.road.038"] = {
		"Every road runs both ways. I only ever seem to use one of them.",
		"Roads are built to go in two directions. Mine keep going forward.",
	},
	["muse.w11.road.039"] = {
		"Ask the way from someone carrying something heavy. They know exactly how far it is.",
		"For honest distances, ask a porter. Nobody measures a mile like someone hauling a crate.",
	},
	["muse.w11.road.041"] = {
		"A crossroads is the oldest place in any land. Everything else was built around it later.",
		"Crossroads came first. Inns, markets, shrines, gallows: all of it gathered later where two paths met.",
	},
	["muse.w11.road.042"] = {
		"The next stride is never the hard one. It's picturing all of them together that makes the legs heavy.",
		"One pace is nothing. It's the thought of every pace still to come that weighs.",
		"Don't count the miles ahead. Count the one underfoot; it's the only one that's real.",
	},
	["muse.w11.road.043"] = {
		"A good road hides a surprise somewhere. I keep walking to find out which kind.",
		"Every journey keeps one good thing back, usually just where I'd stopped looking. So I keep looking.",
	},
	["muse.w11.road.044"] = {
		"Nothing moves slower than a ride you're waiting for.",
		"Waiting on transport has its own kind of boredom. The whole world is going somewhere except me.",
		"A boat, a cart, a beast to ride: whatever I'm waiting for is always just late enough to be insulting.",
	},
	["muse.w11.road.045"] = {
		"If I ever drew a map, every edge would say 'probably wet' or 'probably bites'.",
		"I could draw a more honest map than most. Fewer pretty borders, many more warnings.",
	},
	["muse.w11.road.046"] = {
		"To everyone setting off somewhere right now: may there be somewhere good to arrive.",
		"Here's to every departure happening at this moment. Leaving is harder than arriving.",
		"A thought for all the doorways being stepped out of right now. Go well.",
	},
	["muse.w11.road.047"] = {
		"Know where the water is and where help is. Everything else on a map is decoration.",
		"Two things worth learning about any road: where to drink and where to run. The rest can wait.",
		"Maps love borders and names. I'd trade them all for one honest mark that says 'good well here'.",
	},
	["muse.w11.road.048"] = {
		"I like the last bend before arriving. For a few more strides, the place ahead can still be anything.",
		"The best view of any destination is the one in my head, just before I get there.",
		"Right before the end of a journey there's a moment when the arrival is still perfect. I try to walk slowly through it.",
	},
	["muse.w11.road.050"] = {
		"Every traveler I meet is going the other way. I'm starting to take it personally.",
		"Strange how everybody else on the road is heading exactly where I've just come from.",
	},
	["muse.w11.road.051"] = {
		"Some departures nobody sees. You simply aren't there anymore, and the place closes over the gap like water.",
		"Leave quietly enough and no one marks it. The room goes on, the gap fills, and the road has you.",
	},
	["muse.w11.road.052"] = {
		"Look back now and then. Not out of longing: so the way home looks familiar when you need it.",
		"Turn around every so often and learn the path backward. It's a different path coming the other way.",
		"A road walked in one direction is only half known. I glance behind me to learn the other half.",
	},
	["muse.w11.road.053"] = {
		"You don't know a place until you've been lost in it once.",
		"Getting lost is how the feet learn a place properly. The head only learns it from maps.",
		"A place only becomes mine after it has fooled me once.",
	},
	["muse.w11.road.054"] = {
		"Somewhere a door is going to open when I knock. I don't know where yet. That's what the walking is for.",
		"Out there is a door with a welcome behind it. I just have to knock on enough of the others first.",
	},
	["muse.w11.road.055"] = {
		"Every land is somebody's far away.",
		"Wherever I stand, it's the end of the world to someone.",
		"No place is remote to the people who live there. Distance is only ever measured from somewhere else.",
	},
	["muse.w11.road.057"] = {
		"A good walking stick is the cheapest companion there is, and it never asks where we're going.",
		"Nobody ever regretted a stout stick. It holds you up and it doesn't talk.",
	},
	["muse.w11.road.058"] = {
		"Between one place and the next, nobody expects anything of me. The middle of a journey is the freest part.",
		"Halfway between here and there, I'm owed to no one. That's the part of travel I'd keep.",
		"Neither leaving nor arriving: the long middle is where I finally get to be nobody in particular.",
	},
	["muse.w11.road.059"] = {
		"The last mile is always the longest. It has all the others stacked on top of it.",
		"The final stretch weighs most because it carries everything walked before it.",
		"Every journey saves its longest mile for last, out of spite.",
	},
	["muse.w11.road.060"] = {
		"There's a meal at the end of all this. Probably. Let's go and check.",
		"Somewhere ahead is a bench with my name on it. Not literally. That would be worrying.",
		"At the end of every road there's a chair. I intend to find this one's.",
	},
	["muse.w11.road.061"] = {
		"I wonder who passed this way last, and what they were hoping for.",
		"Someone was always on a path just before me. I like to guess what they carried, and why.",
	},
	["muse.w11.road.062"] = {
		"Travel advice comes in two kinds: obvious and wrong. The trick is telling them apart before you need them.",
		"Everyone has a tip for the road. Half are things you knew; the other half will get you killed.",
	},
	["muse.w11.road.063"] = {
		"Footprints last longer than the people who make them. Not by much.",
		"The marks I leave on a path will be gone before I've gone far. That seems about right.",
		"Every trail is full of steps nobody remembers. Mine will join them, and that's no hardship.",
	},
	["muse.w11.road.065"] = {
		"No road was ever finished by someone waiting for a better one.",
		"The perfect road never turns up. The one under my feet will have to do.",
		"Waiting for the right road is how people grow old at crossroads.",
	},
	["muse.w11.road.066"] = {
		"Silence on the road isn't empty. It's full of my own thoughts, walking a couple of paces behind.",
		"Travel alone long enough and your thoughts start to fall in step with you, like a second traveler.",
	},
	["muse.w11.road.067"] = {
		"Distance changes what matters. A mile out I'm still thinking of the place I left; ten miles out, only of my feet.",
		"The farther I go, the smaller my worries get, until they're all about boots and water.",
	},
	["muse.w11.road.068"] = {
		"If anyone asks, I'm not wandering. I'm traveling without a fixed opinion.",
		"Aimless? No. I'm keeping my options very, very open.",
	},
	["muse.w11.road.069"] = {
		"It's a good sign when I wonder what's around the corner instead of dreading it.",
		"The day I stop being curious about the next turning, I'll know something's gone wrong.",
	},
	["muse.w11.road.070"] = {
		"Some roads I'll walk only once. I never know which ones until much later.",
		"Plenty of paths I'll never tread twice, and nothing warns me at the start which.",
		"Any road might be a once. I try to look at it as if it were.",
	},
	["muse.w11.road.071"] = {
		"Start before everything's in order. It never is, and the road doesn't wait for it.",
		"Ready is a place nobody reaches. Better to leave from wherever you happen to be.",
	},
	["muse.w11.road.073"] = {
		"Distances on a map are a polite fiction. On foot they're an insult.",
		"A finger crosses a map in a blink. Feet tell a very different story.",
		"One inch to the mapmaker; half a day to me.",
	},
	["muse.w11.road.074"] = {
		"Long walks wear the edges off a thought. Whatever I set out angry about, I usually arrive merely tired of.",
		"Anger doesn't travel well. A few miles and it's just another thing in the pack.",
	},
	["muse.w11.road.075"] = {
		"A signpost in a language I can't read is still company. Somebody thought the spot worth explaining.",
		"Even a sign I can't read says one thing plainly: someone came this way and cared who followed.",
	},
	["muse.w11.road.076"] = {
		"A full waterskin, laced boots and nowhere to be by any particular hour. That's riches enough.",
		"Water, sound boots, and no one waiting on me. Some kings have less, I suspect.",
	},
	["muse.w11.road.077"] = {
		"Right. Pack up, feet moving, complaints later.",
		"Pack on, eyes forward. Off I go.",
		"Up. Straps. Walk. In that order.",
	},
	["muse.w11.road.078"] = {
		"I keep promising myself a slower journey someday. Then I look at everything still to be done.",
		"One day I'll travel for no reason at all and dawdle at every bend. Not today.",
	},
	["muse.w11.road.079"] = {
		"Every place looks smaller from the road out of it.",
		"Leaving shrinks a place. By the first turning it already fits inside a single memory.",
	},
	["muse.w11.road.081"] = {
		"Never trust a path that's too easy. Someone made it easy, and that someone is usually waiting at the end.",
		"An easy road is a question worth asking: who smoothed it, and why do they want me on it?",
		"The smoothest stretch of road is where I keep my hand nearest my weapon.",
	},
	["muse.w11.road.082"] = {
		"Every journey has a moment where I'm certain I've gone wrong. Usually it's just before I arrive.",
		"Doubt always peaks a hundred paces short of the destination. I walk through it anyway.",
	},
	["muse.w11.road.083"] = {
		"A road walked twice stops being a stranger. Three times and it starts telling you things.",
		"The second time along a road, it nods to me. By the third, we're on speaking terms.",
	},
	["muse.w11.road.084"] = {
		"A world this big doesn't ask to be crossed. People cross it anyway. I like that about people.",
		"Nobody has to go anywhere. Every road in the world is proof that someone wanted to.",
	},
	["muse.w11.road.085"] = {
		"There's a right way. I'll find it by trying every other one first.",
		"I intend to find the correct route by elimination.",
	},
	["muse.w11.road.086"] = {
		"Some people set out and come home again. Some set out and the road simply keeps them. I don't know yet which I am.",
		"Not everyone who leaves is meant to return. The road decides that late, and tells no one in advance.",
	},
	["muse.w11.road.087"] = {
		"Uphill, my thoughts get short. Downhill, they get careless. Level ground is where I do my real thinking.",
		"Climbing leaves room for nothing but the climb. It's on the flat that the head starts to wander.",
		"Hard going makes for short thoughts. Give me an easy stretch and I'll solve half the world's troubles before the next bend.",
	},
	["muse.w11.road.088"] = {
		"Fords, gates, passes, bridges: every road has places where it narrows to one way through. That's where trouble likes to wait.",
		"Trouble on the road isn't spread evenly. It gathers wherever there's only one way across.",
		"I relax on open ground. It's the narrows I watch: wherever a road has no choice, someone else has made one.",
	},
	["muse.w11.road.090"] = {
		"Every departure feels a little like betraying somebody, even when nobody minds.",
		"Setting off always carries a faint guilt, as though I owed the place one more day.",
		"Leaving never quite settles its account. Some small debt to the place always rides along with me.",
	},
	["muse.w11.road.091"] = {
		"The quickest way to make a road longer is to be in a hurry on it.",
		"Hurry stretches a road. Patience folds it up small.",
		"A road measured in impatience is twice as long as the same road measured in steps.",
	},
	["muse.w11.road.092"] = {
		"Roads outlast their reasons. The mine closes, the shrine falls, and still the path goes there, faithful as a dog.",
		"A path keeps leading to a place long after the place stops mattering. Roads are loyal like that.",
		"Follow an old path far enough and you'll find what it was for, or whatever's left of it.",
	},
	["muse.w11.road.093"] = {
		"Good road, working legs, nobody chasing me. I'll take it.",
		"No ambush, sound boots and only a vague idea of where I am. Two out of three.",
		"Feet fine, pack fine, way ahead clear. Suspiciously fine.",
	},
	["muse.w11.road.094"] = {
		"Every journey shrinks the world a little. Places that were only names become places I've stood.",
		"The world gets smaller every time I cross a piece of it, and somehow more crowded with things worth seeing.",
	},
	["muse.w11.road.095"] = {
		"The most dangerous directions in the world: 'You can't miss it.'",
		"'You can't miss it.' Those words have cost travelers more hours than every bandit put together.",
		"Whenever someone tells me I can't miss it, I pack an extra meal.",
	},
	["muse.w11.road.096"] = {
		"Every crossroads has a tale about somebody who chose wrong there. I've never heard one about somebody who chose right.",
		"Nobody tells stories about the traveler who took the correct fork and got home in time for supper.",
		"Every fork has its cautionary tale. The happy endings never get told at crossroads.",
	},
	["muse.w11.road.098"] = {
		"My stomach measures distance in meals. Two meals to there, half a meal to the next bend.",
		"Miles mean nothing to my belly. It reckons every journey in suppers.",
	},
	["muse.w11.road.099"] = {
		"I don't have to like a road to finish it.",
		"Wanting to be elsewhere has never once stopped my feet.",
		"Liking the way is optional. Walking it isn't.",
	},
	["muse.w11.road.100"] = {
		"Somebody ought to build a road that runs downhill both ways.",
		"Why is it always uphill toward wherever I'm going? Who arranges this?",
		"I'd swear the ground tilts against whichever way I happen to be headed.",
	},
	["muse.w11.road.101"] = {
		"Wherever this goes, I'll be the one arriving. That much is settled.",
		"However long it is, it ends with me at the far end of it.",
		"The distance can do as it likes. I'll still be standing at the end of it.",
	},
	["muse.w11.road.102"] = {
		"There's a loneliness particular to the first hour of a journey, before the road has started talking.",
		"The start of any trip is the quietest part. The place behind has gone silent and the way ahead hasn't spoken yet.",
		"Setting out, the quiet comes first. Company, even the road's, takes a few miles to arrive.",
	},
	["muse.w11.road.103"] = {
		"Learn landmarks, not distances. A crooked tree stays put; a mile depends on how tired you are.",
		"Steer by things, not numbers: the split rock, the broken fence, the odd tree. Numbers change with the legs.",
	},
	["muse.w11.road.104"] = {
		"Feet, roads and distance: the same three things every traveler has had to reckon with, prince or peddler.",
		"A king on foot covers the same mile as a beggar on foot. The road has never once bowed.",
		"Titles don't shorten a road. Every traveler who ever lived paid for the miles in the same coin.",
	},
	["muse.w11.road.106"] = {
		"My pack and I have an understanding: it rides, I walk, and we both complain.",
		"The pack travels in great comfort. I'd like to know how it arranged that.",
		"Somewhere along the way the pack stopped being luggage and became a passenger with opinions.",
	},
	["muse.w11.road.107"] = {
		"Every road I haven't walked yet is a promise nobody has broken.",
		"Untried roads are the only ones that have never let me down.",
		"The roads ahead are still all good ones. None of them has had the chance to disappoint me.",
	},
	["muse.w11.road.108"] = {
		"A path that bends out of sight is asking a question. Leaving questions alone has never been my strength.",
		"Any trail that curves away is half an invitation. The other half is my own fault.",
	},
	["muse.w11.road.109"] = {
		"Walking alone, I hold whole conversations with people who aren't there. I win most of them.",
		"On my own I rehearse arguments I'll never have. I'm very persuasive on the road.",
		"The best things I ever say are said to nobody, halfway between two places.",
	},
	["muse.w11.road.110"] = {
		"Ah, a fork. My favorite. Two chances to be wrong.",
		"Left or right. One of these is a mistake, and I'm about to find out which.",
		"A choice of ways. Everyone loves choosing until it's their turn.",
	},
	["muse.w11.road.111"] = {
		"Some people never stop anywhere long enough to be missed. I'd rather not become one of them.",
		"Keep moving forever and nowhere ever learns your name. I want at least one place that would notice I'm gone.",
	},
	["muse.w11.road.112"] = {
		"The road doesn't make anyone better. It just takes away whatever they can't carry.",
		"Travel improves nobody on its own. It only strips off what you weren't strong enough to haul.",
	},
	["muse.w11.road.113"] = {
		"Traveling light is a skill. Traveling light in the head is a harder one.",
		"Packing small is easy enough. My thoughts I still haul about by the sackful.",
		"An empty pack is simple. A clear mind on the road takes real practice.",
	},
	["muse.w11.road.115"] = {
		"A familiar road walks itself. An unfamiliar one wants my attention at every turn.",
		"On a road I know, my mind can wander off. On one I don't, it has to walk beside me.",
	},
	["muse.w11.road.116"] = {
		"Somewhere, someone is setting out on their very first journey, scared and eager in equal parts. Good luck to them.",
		"Right now someone is taking their first steps away from home. I hope the road is kind.",
		"Every road has a beginner on it somewhere. I wish them sound boots and patient strangers.",
	},
	["muse.w11.road.117"] = {
		"Every road leads somewhere someone once thought worth going. That's a kind of trust.",
		"No one wears a path to nowhere. Each is a wager, made long ago, that the end was worth it.",
	},
	["muse.w11.road.118"] = {
		"Distance. The only enemy you beat by ignoring it.",
		"Miles don't fight back. They just wait to see if you'll quit.",
		"A mile is only long if you keep staring at it.",
	},
	["muse.w11.road.119"] = {
		"The world feels huge on foot and tiny on a map. The truth lives somewhere in my knees.",
		"Maps make the world look small and my knees make it look endless. I trust the knees.",
	},
	["muse.w11.road.120"] = {
		"One day I'll set off on a road and not reach the end of it. Until then, I mean to reach the end of this one.",
		"There's a journey somewhere that I won't finish. It isn't this one.",
	},
	["muse.w11.road.121"] = {
		"The next stop might have good bread, a dry bed and a kind face. 'Might' is a fine word to walk on.",
		"Whatever waits at the next stop could be better than the last. That 'could' is enough to get the boots moving.",
		"Past the next bend there may be something good. 'May' weighs nothing, and it's enough to carry.",
	},
	["muse.w11.road.123"] = {
		"Every road out of somewhere is also a road into somewhere else. I try to keep both in mind.",
		"Leaving and arriving are the same step, seen from two sides.",
	},
	["muse.w11.road.124"] = {
		"Few things beat the first stretch after a long rest: fresh legs, light head, and the whole way still ahead.",
		"There's nothing like setting off rested. For a mile or two I feel I could walk to the edge of the world.",
	},
	["muse.w11.road.125"] = {
		"The destination is a reason to start. It's rarely the reason I keep going.",
		"I set out for the place. I keep walking for other reasons, most of them stubborn.",
	},
	["muse.w11.road.126"] = {
		"There are more roads than any one life can walk. I find that more cheering than sad.",
		"If I could, I'd follow every path to its end. Since I can't, I pick the ones that look a little odd.",
	},
	["muse.w11.road.127"] = {
		"Halfway. Or a third. Somewhere in the middle, anyway.",
		"Not there yet. Not where I started, either. Call it progress.",
		"Somewhere between here and there. Exactly where I meant to be.",
	},
	["muse.w11.road.128"] = {
		"The worst stretch of any journey is the one where nothing happens. The mind starts inventing trouble to keep busy.",
		"Dull roads are dangerous in their own way. With nothing to watch, I start watching my own worries.",
		"Give me an eventful road over a boring one. Boredom walks beside me and talks the whole way.",
	},
	["muse.w11.road.129"] = {
		"Nobody on the road knows who I was yesterday. Every mile is a clean page.",
		"Strangers on the road take me as I am in that moment. It's restful, being nobody's history.",
	},
	["muse.w11.road.130"] = {
		"Ask the way twice, from two different people. Where they agree, believe them.",
		"One set of directions is a rumor. Two that match are a map.",
	},
	["muse.w11.road.131"] = {
		"Every road I take closes a hundred others. I try not to count them.",
		"Choosing a way means losing all the others, quietly, without ever seeing what they held.",
	},
	["muse.w11.road.132"] = {
		"The road ahead owes me nothing, and still it keeps offering. I call that generous.",
		"Nothing promised me a way forward. There's always been one anyway.",
	},
	["muse.w11.road.133"] = {
		"Riding is only walking on borrowed legs. Somehow mine still feel every mile.",
		"The mount does the walking and I do the aching. A fair trade, I suppose.",
		"Sitting the whole way and still worn out. Travel is a mystery.",
	},
	["muse.w11.road.134"] = {
		"From up here the road runs by faster, and I notice less of it. Feet are slower, but they read the way.",
		"In the saddle the miles slip past like pages turned too quickly. I miss some of the words.",
		"Speed is a fine thing, but it squeezes the world into a blur between two stops.",
	},
	["muse.w11.road.135"] = {
		"When lost, stop. Eat something. Most wrong turns are taken by hungry people in a hurry.",
		"Being lost is made worse by speed. Slow down until the panic walks behind you instead of ahead.",
		"Lost is a feeling before it's a place. Settle the feeling and the place usually follows.",
	},
	["muse.w11.road.137"] = {
		"Next stop, whatever's next. Moving.",
		"Onward, to wherever this lets out.",
		"Let's see where this goes, then.",
	},
	["muse.w11.voices.001"] = {
		"Well. That could have gone worse. I'm not sure how, but I'm sure it could.",
		"Could've been worse. Give me a moment and I'll work out in what way.",
	},
	["muse.w11.voices.002"] = {
		"Nothing for it but to carry on. So: carrying on.",
		"No way round it, only through. Fine. Through it is.",
		"There's no clever answer here, just the stubborn one. I'll take the stubborn one.",
	},
	["muse.w11.voices.003"] = {
		"Tired? I passed tired a while back. This is somewhere further on.",
		"There's tired, there's past tired, and then there's me, further on still, waving.",
	},
	["muse.w11.voices.004"] = {
		"Small victories: found what I wanted in the very first pocket.",
		"First pocket, first try. Somebody mark the day.",
	},
	["muse.w11.voices.005"] = {
		"Talking to nobody again. Fine listener, nobody.",
		"Nobody makes a fine audience. Never interrupts, never leaves early.",
	},
	["muse.w11.voices.006"] = {
		"Let it come. Whatever it is, it'll find me with my eyes open.",
		"Bring on whatever's next. I'm in no mood to be surprised.",
	},
	["muse.w11.voices.007"] = {
		"Note to self: next time, do the sensible thing. Note to self: you won't.",
		"I'll be wiser tomorrow. I said that yesterday, too, and look at me.",
		"Next time I'll think first. That's a promise I've made to myself more often than I can count.",
	},
	["muse.w11.voices.008"] = {
		"Everything's fine. Everything is perfectly, entirely fine. Mostly.",
		"All under control. Some of it, anyway, and the rest knows its place.",
	},
	["muse.w11.voices.009"] = {
		"Five minutes. That's all I ask of the world. Five minutes with nothing in them.",
		"If the world would just hold still a moment, I'd be ever so grateful.",
	},
	["muse.w11.voices.010"] = {
		"Chin up. Sillier people than me have come through worse.",
		"Head up. Worse things have been survived by folk with far less sense.",
		"Come on. People with half my wits have managed this, surely.",
	},
	["muse.w11.voices.011"] = {
		"I'm keeping a list of today's troubles. It needs a second page.",
		"One more thing goes wrong today and it goes on the list. Then I glare at the list.",
	},
	["muse.w11.voices.012"] = {
		"I'm decent company, on the whole. A bit chatty.",
		"As company goes, I could do worse than me. I've checked.",
	},
	["muse.w11.voices.013"] = {
		"Whatever's next is next. I'll meet it when it gets here.",
		"No use dreading the next bit. It turns up whether I fret or not.",
		"Worry won't make it smaller. Let it come, and I'll deal with its actual size.",
	},
	["muse.w11.voices.014"] = {
		"I had a plan. It was a beautiful plan. I miss it.",
		"There was a plan, once. Lovely thing. It didn't last the morning.",
	},
	["muse.w11.voices.015"] = {
		"There's a bed with my name on it somewhere. I just wish it would write.",
		"Every bed I hear about belongs to someone else. I'm starting to take it personally.",
	},
	["muse.w11.voices.016"] = {
		"Counted my fingers. All present. Good start.",
		"Nothing missing, nothing broken. I'll call that a win and move on.",
	},
	["muse.w11.voices.017"] = {
		"Fine. Fine! I'll do it myself. As usual.",
		"Any volunteers? No? Lovely. Me again, then.",
	},
	["muse.w11.voices.018"] = {
		"Should have been a baker. Bakers don't get bitten.",
		"There are quiet trades in this world. I managed to pick none of them.",
		"Somewhere a cobbler is having a very calm day. Good for the cobbler.",
	},
	["muse.w11.voices.019"] = {
		"Huh. Didn't expect that thought. Not sure I want it back.",
		"Funny, the things a mind turns up when it's left to wander.",
	},
	["muse.w11.voices.020"] = {
		"Not yet. Too much left undone to stop now.",
		"Fall over? Me? With all this unfinished business? Not likely.",
	},
	["muse.w11.voices.021"] = {
		"Everyone has a talent. Mine is stepping on exactly the wrong thing.",
		"Give me any patch of ground and I'll find the one thing in it that bites.",
		"If there's a loose board anywhere, my foot already knows about it.",
	},
	["muse.w11.voices.022"] = {
		"Could be a good day yet. Stranger things have happened, mostly to me.",
		"Who knows, something nice might happen. I'll keep an eye out for it.",
	},
	["muse.w11.voices.023"] = {
		"Ow. No, it's nothing. Ow.",
		"Ah. Yes. That's going to ache tomorrow.",
		"That'll bruise. Lovely color, too, I expect.",
	},
	["muse.w11.voices.024"] = {
		"I keep my patience somewhere safe. So safe I can't find it.",
		"Patience is a virtue. I'm working on the other ones first.",
	},
	["muse.w11.voices.041"] = {
		"Easy. Easy. Nothing's happened yet.",
		"Steady now. Whatever it is hasn't arrived.",
		"Calm down. Being nervous early only means being nervous twice.",
	},
	["muse.w11.voices.042"] = {
		"Learned something today. Mostly what not to do, but it counts.",
		"Every bruise a lesson. I'm getting a very thorough education.",
		"Today's lesson came dear. I'd better remember it, then.",
	},
	["muse.w11.voices.043"] = {
		"If this is how it ends, let it be known I complained.",
		"When I go, let it be loudly, and for a decent reason.",
	},
	["muse.w11.voices.044"] = {
		"Something good is overdue. The world owes me at least one.",
		"By my count, luck owes me a favor or two. I'd like to collect.",
	},
	["muse.w11.voices.045"] = {
		"I could do with a bit less of everything for a while.",
		"Less noise, fewer teeth, smaller troubles. Is that so much to ask?",
	},
	["muse.w11.voices.046"] = {
		"Whatever stands in my way: move, or be moved.",
		"Out of the way, whatever you are. I've somewhere to be.",
		"Anything in my path had best find another path.",
	},
	["muse.w11.voices.047"] = {
		"My luck and I aren't speaking at the moment.",
		"Luck and I had words. It's gone off to sulk somewhere.",
		"Luck's avoiding me again. In its place, I'd avoid me too.",
	},
	["muse.w11.voices.048"] = {
		"One of these days I'll sit down and simply refuse to get up. Not today, though.",
		"Someday I'm going to sit down and stay down. A whole day. Maybe two.",
	},
	["muse.w11.voices.049"] = {
		"Right. Job first, grumbling after.",
		"Do it now, moan about it later. That's the deal.",
		"First the doing. The sulking can wait its turn.",
	},
	["muse.w11.voices.050"] = {
		"I am being very patient. Someone should notice before it runs out.",
		"That's twice now. I don't do a third time.",
	},
	["muse.w11.voices.051"] = {
		"If this buckle breaks one more time, the two of us are going to have words.",
		"Hold together a little longer, you miserable strap. That's all I ask.",
	},
	["muse.w11.voices.052"] = {
		"Scared is fine. Scared and moving is better.",
		"Shaking a little. Doesn't matter. The feet still work.",
		"Knees knocking. Fine. They can knock on the way.",
	},
	["muse.w11.voices.053"] = {
		"Light, spirits, loa, whoever's on duty: a small favor, if it's no trouble.",
		"I'll take a blessing from anyone handing them out. I'm not fussy.",
	},
	["muse.w11.voices.054"] = {
		"Home's a word I keep in a pocket. I take it out when nobody's looking.",
		"Couldn't tell you where home is just now. Somewhere ahead, I'd like to think.",
	},
	["muse.w11.voices.055"] = {
		"Nobody will write this down. Good. I'd hate to be quoted.",
		"No witnesses, no songs, no statues. Just the job, done properly.",
	},
	["muse.w11.voices.056"] = {
		"Stay close, all of you. I'm not coming back for anyone. I am, but don't test it.",
		"Everybody still here? Good. Let's keep it that way.",
		"Keep together. If somebody wanders off, I'm not drawing them a map.",
	},
	["muse.w11.voices.057"] = {
		"Adventure. Grand word. Mostly it means wet feet.",
		"Glamorous life, this. My boots could tell you, if you could stand the smell.",
	},
	["muse.w11.voices.058"] = {
		"One more. I've got one more in me. Probably two.",
		"There's more left in me than I thought. Funny how that keeps happening.",
	},
	["muse.w11.voices.059"] = {
		"Did that just move? No. Probably not. I'll keep watching it anyway.",
		"Second time I've thought I heard something. The third time, I'll believe it.",
	},
	["muse.w11.voices.060"] = {
		"This bruise deserves a name. It's been with me long enough.",
		"New ache. I'll call it Stranger. We've only just met.",
	},
	["muse.w11.voices.061"] = {
		"It'll be all right. Not now, maybe, but it will.",
		"Things mend. Slower than I'd like, but they mend.",
		"Give it time. Most things come right if you leave them be and keep walking.",
	},
	["muse.w11.voices.062"] = {
		"I'd fight a bear for a hot meal right now. A small bear.",
		"Food. Any food. I'm not proud.",
	},
	["muse.w11.voices.063"] = {
		"It is what it is. And what it is, is mine to deal with.",
		"No point wishing it different. It's this, so this is what I'll handle.",
	},
	["muse.w11.voices.064"] = {
		"The world has more graves than songs. Someone ought to even that out.",
		"Too many have gone quiet in this world. I'll speak up for a few of them.",
	},
	["muse.w11.voices.065"] = {
		"To whatever comes next. May it be smaller than me.",
		"Here's to the next thing: may it be slow, stupid, and angry at someone else.",
	},
	["muse.w11.voices.066"] = {
		"What's this, then? No. Leave it. Oh, all right, one look.",
		"I shouldn't touch it. I'm going to touch it.",
		"Probably best left alone. Probably. Just a little poke.",
	},
	["muse.w11.voices.085"] = {
		"Every wizard I've met had singed eyebrows and an excuse. I keep clear of both.",
		"Magic's like a borrowed dog: friendly until it isn't.",
		"Never stand close to anyone muttering in an old tongue. Free advice.",
	},
	["muse.w11.voices.086"] = {
		"If I could ask the birds one thing, it'd be how they never get lost.",
		"Every animal in this world seems to know where it's going. Must be nice.",
	},
	["muse.w11.voices.087"] = {
		"Just a moment. Let the world stop spinning a bit.",
		"Hold on. I need a moment for everything to stop swaying.",
		"Give me a moment. I'm having a word with my knees.",
	},
	["muse.w11.voices.088"] = {
		"It's all right to be quiet for a while. Nobody's keeping score.",
		"No need to fill every silence. Some are good as they are.",
		"Talk less, see more. I should try it some time.",
	},
	["muse.w11.voices.089"] = {
		"If I fall, I'll fall forward. That's ground gained.",
		"Backward is the one direction I refuse.",
		"Forward, then. Even badly, forward.",
	},
	["muse.w11.voices.090"] = {
		"Can't remember what I had for breakfast. Every insult, though, I could recite.",
		"Odd how the mind keeps the wrong things. Every slight, and not one useful recipe.",
	},
	["muse.w11.voices.091"] = {
		"Bad day. Not a bad life. Worth keeping those two apart.",
		"One rotten apple doesn't spoil the whole barrel. I hope.",
		"A bad hour is only an hour. It leaves when it's done.",
	},
	["muse.w11.voices.092"] = {
		"Some days I'd like to punch the world square on the nose.",
		"Not angry. Just collecting reasons for later.",
		"I'm keeping my temper. In a very small box. With a weak lid.",
	},
	["muse.w11.voices.093"] = {
		"Practice. Boring word. The only one that ever worked.",
		"Get it wrong, get it less wrong, get it right. That's the whole trick.",
		"Nobody's good at anything the first time. Or the fifth.",
	},
	["muse.w11.voices.094"] = {
		"If anyone needs a hand, I've two. Mostly working.",
		"Anybody in need of help, shout. I'm not much, but I'm here.",
	},
	["muse.w11.voices.095"] = {
		"I'd like a quiet end, a long way off, with a chair.",
		"When it comes for me, I hope it at least knocks.",
		"Not dying today. Too much to do, and nothing clean to wear.",
	},
	["muse.w11.voices.096"] = {
		"Right. Who moved the floor?",
		"Intended, all of it. Even the stumble. Especially the stumble.",
	},
	["muse.w11.voices.097"] = {
		"Worse odds have been beaten. Not by me, but still.",
		"The odds are bad. Good. Fewer people will have tried.",
		"Long chances are still chances. I'll take one.",
	},
	["muse.w11.voices.098"] = {
		"Sometimes I wonder if anyone would notice if I just kept walking.",
		"Keep walking long enough and the world forgets your name. Not the worst thing.",
	},
	["muse.w11.voices.099"] = {
		"Which way? Doesn't matter. Pick one and look like you meant it.",
		"Lost the thread of where I was going. I'll pick it up again further on.",
	},
	["muse.w11.voices.100"] = {
		"In excellent shape. For something dragged backward through a hedge.",
		"Looking my best. Which is a low bar, granted.",
		"Presentable? From a distance. A good distance.",
	},
	["muse.w11.voices.101"] = {
		"I don't like this. Can't say why. I just don't.",
		"Something about all this sits wrong with me.",
		"Call it a hunch. A sour one.",
	},
	["muse.w11.voices.102"] = {
		"Small deeds, done well. Let the big ones look after themselves.",
		"I'd rather do a small thing right than a great thing badly.",
	},
	["muse.w11.voices.103"] = {
		"Somebody prop me up. Joking. Mostly.",
		"I'm fine. Upright and everything.",
		"Sleep is a rumor I keep hearing about.",
	},
	["muse.w11.voices.104"] = {
		"Somebody, somewhere, has a pot on the hearth. Lucky them.",
		"There are kitchens out there with bread in the oven and nobody fighting. Nice to think about.",
	},
	["muse.w11.voices.105"] = {
		"Let them come. I've been looking for someone to be cross with.",
		"A fight just now would almost be a relief. It would simplify things.",
	},
	["muse.w11.voices.106"] = {
		"What's on the other side of that? Never mind. I'll find out.",
		"I wonder what's past the next turn. Something with teeth, probably. Still.",
		"Don't know what's ahead. That's half the reason to go.",
	},
	["muse.w11.voices.107"] = {
		"Things I know for certain: very few. Things I'll claim to know: plenty.",
		"I'm sure of three things, and two of them are wrong.",
	},
	["muse.w11.voices.108"] = {
		"You're doing fine. Keep at it.",
		"Look at that. Not half bad. Keep going.",
		"Good. That's the way. Again.",
	},
	["muse.w11.voices.109"] = {
		"Everything aches, which means everything's still attached.",
		"Sore all over. At least I'm consistent.",
	},
	["muse.w11.voices.110"] = {
		"Some people should have had more road. I'll walk a bit of theirs.",
		"For everyone who never got to see this far: I'm looking for you.",
	},
	["muse.w11.voices.111"] = {
		"My thoughts are terrible company. They never let me finish.",
		"Too much thinking. Somebody give my head something to do.",
		"Head's too full. I'd empty it, but I can't find the lid.",
	},
	["muse.w11.voices.112"] = {
		"May the next door open easy and the next stranger be kind.",
		"A good word for whatever's ahead: be gentle, or at least be quick.",
	},
	["muse.w11.voices.113"] = {
		"Finish what you start. Annoying rule. Good rule.",
		"Half done is undone. So, on with it.",
	},
	["muse.w11.voices.114"] = {
		"Steady hands. Clear head. Go.",
		"Mind clear, hands steady, feet ready. Right.",
		"Settle. Focus. Then do it properly.",
	},
	["muse.w11.voices.135"] = {
		"If anyone ever asks, I was magnificent.",
		"Someday someone will ask how it went. I'll say splendidly, whatever happened.",
		"When I tell this later, I'm leaving out the bits where I squeaked.",
	},
	["muse.w11.voices.136"] = {
		"Everything that grows does it without being told. I could learn from that.",
		"Moss on a stone, weeds in a wall. The world fills every gap it's given.",
		"Small creatures live everywhere, minding their own business. Admirable.",
	},
	["muse.w11.voices.137"] = {
		"Right now, someone somewhere is opening a book they shouldn't. I can feel it in my teeth.",
		"Magic. Wonderful, terrible, and always somebody else's mess to clean up.",
		"Every ruin I hear about has a spellbook at the bottom of it.",
	},
	["muse.w11.voices.138"] = {
		"To whoever's near: you're doing better than you think.",
		"Anyone listening: chin up. It's not just you.",
		"If you're having a hard time of it, you're in good company.",
	},
	["muse.w11.voices.139"] = {
		"Some questions don't want answering. I ask them anyway, quietly.",
		"There's always one thing that doesn't add up. I collect them.",
		"The world keeps its secrets the way a miser keeps coin. I'm not giving up on the purse.",
	},
	["muse.w11.voices.140"] = {
		"Nobody's born knowing. Everybody's born stubborn. Use that.",
		"I'm not good at this yet. Yet is the important word.",
		"Slower than I'd like, better than I was. I'll take it.",
	},
	["muse.w11.wonder.001"] = {
		"Somewhere a mage is boiling water by looking at it, and somewhere else a farmer is still waiting on a kettle. Same world.",
		"One person can call fire out of empty air; the next one over is blowing on damp kindling. And nobody finds that strange.",
		"Half the world lights its fire with a word and the other half with flint and swearing. Both get supper eventually.",
	},
	["muse.w11.wonder.002"] = {
		"A mage can fold the distance between two cities like a letter. I find that harder to believe than dragons.",
		"Somewhere a door opens in thin air and someone steps through from the far side of the world. I hope I never get used to it.",
		"Stepping through a portal, people say, feels like missing a stair in the dark. A whole sea crossed in one stumble.",
	},
	["muse.w11.wonder.003"] = {
		"Nobody truly knows where magic comes from. The mages argue about it louder than anyone, which tells you something.",
		"Ask ten mages where the arcane comes from and you'll get eleven answers and a headache.",
		"The wisest scholars alive still can't agree on what magic is made of. They just agree it works, and keep shouting.",
	},
	["muse.w11.wonder.004"] = {
		"Magic. Wonderful stuff. Right up until it goes off in someone's face.",
		"Everybody loves magic until the smell of singed eyebrows reaches them.",
		"Magic's grand from a safe distance. The trouble is nobody agrees on the distance.",
	},
	["muse.w11.wonder.005"] = {
		"The shamans say fire is hungry, water patient, and earth slow to anger. Anyone who has listened to a campfire long enough would believe them.",
		"Fire has a temper and water has a memory, or so the shamans tell it. It would explain a great deal.",
		"If the elements truly have moods, as the shamans claim, then every stubborn knot of firewood was simply sulking.",
	},
	["muse.w11.wonder.006"] = {
		"Mages talk of lines of power running under the world, the way miners talk of seams. Nobody has ever told me who laid them.",
		"Power is said to run under the ground in lines, like veins under skin. I'd love to know what stands where two of them cross.",
		"If the world has veins of power, then every tower and ruin built on one was someone listening for a pulse.",
	},
	["muse.w11.wonder.008"] = {
		"A conjured loaf tastes of almost nothing. Bread made out of the idea of bread.",
		"Conjured water is wet, cool and perfectly honest, and somehow it still tastes of no place at all.",
		"Food made from thin air fills the belly and leaves the tongue wondering what it missed.",
	},
	["muse.w11.wonder.009"] = {
		"Right now some perfectly dangerous person is being a sheep for a few seconds, and very confused about it.",
		"Of all the things magic can do, turning a foe into a sheep is the one I'd most like explained. Why a sheep?",
		"Somebody, long ago, had the power to reshape a living thing and chose sheep. I think about that more than I should.",
	},
	["muse.w11.wonder.010"] = {
		"A stone in the pack that knows the way to the inn better than I do. I try not to think too hard about how.",
		"Turn the hearthstone over in the hand and somewhere a common room is already expecting me. A small, plain miracle.",
		"Of all the magic in the world, the kind I trust most is a smooth stone that only wants to take me back to a fire.",
	},
	["muse.w11.wonder.011"] = {
		"An ant will carry a crumb ten times its size and never once ask whether it's worth it. I envy it, a little.",
		"Ants don't seem to know the word impossible. They just pick the thing up and start walking.",
		"Watch an ant long enough and you stop feeling sorry for yourself. It never sets anything down to complain.",
	},
	["muse.w11.wonder.012"] = {
		"Crows remember faces, I've heard. Somewhere out there is a crow with strong opinions about me.",
		"They say a crow never forgets someone who wronged it. I try to be very courteous to crows.",
		"A crow watches people the way a merchant watches coin: closely, and doing sums.",
	},
	["muse.w11.wonder.013"] = {
		"A spider loses its web to a careless boot and starts another before the boot is out of sight. That's a courage nobody sings about.",
		"Break a web and the spider is already measuring for the next one. No grudge, no speech, just thread.",
		"The spider never mourns the web. It only finds a new corner and begins again, the same patient way.",
	},
	["muse.w11.wonder.014"] = {
		"Every tree in the world started as something a bird could swallow. Hard to stay proud after thinking about that.",
		"The biggest tree anyone ever stood under was once small enough to lose in a pocket.",
		"Every forest began as a handful of things nobody bothered to pick up.",
	},
	["muse.w11.wonder.015"] = {
		"Mushrooms come up where there was nothing an hour ago, and nobody ever catches them at it.",
		"Nobody has ever watched a mushroom rise. They wait until everyone is looking the other way.",
		"The world keeps a few secrets in plain sight. Toadstools are one of them: always there, never seen arriving.",
	},
	["muse.w11.wonder.016"] = {
		"Cats stare at empty corners as if someone were standing there. I've never been brave enough to ask who.",
		"When a cat fixes its eyes on nothing, I check the nothing. Twice.",
		"A cat staring at an empty doorway is the one warning I never laugh off.",
	},
	["muse.w11.wonder.017"] = {
		"Somebody should learn to speak murloc. Just once, I'd like to know what all that gargling means.",
		"One day a scholar will work out what murlocs are actually shouting, and I suspect it'll be a great disappointment.",
		"All that gurgling has to mean something. I'd bet good silver it's mostly complaints.",
	},
	["muse.w11.wonder.018"] = {
		"Fear is a liar with a good memory. It keeps every bad thing and forgets every time I came out the other side.",
		"Fear keeps a careful list of all that could go wrong and never once writes down what went right.",
		"Fear always tells the story from the worst seat in the house. I've learned to ask for a second opinion.",
	},
	["muse.w11.wonder.019"] = {
		"Nobody has courage without fear first. It's like asking for a bridge with no river under it.",
		"You can't be brave about something that doesn't scare you. That's just being bored.",
		"Fearless people aren't brave. They're just missing a piece.",
	},
	["muse.w11.wonder.020"] = {
		"Dying used to be the one sure thing. Now some of the dead get up and walk off on their own business. The world has made even that uncertain.",
		"There was a time when the grave closed the matter. These days even the grave has exceptions.",
		"What a strange age, when death is no longer a door but a room some people walk back out of.",
	},
	["muse.w11.wonder.021"] = {
		"There are spirits, people say, who stand at the edge of death and send some back. I'd love to know what they see in the ones they return.",
		"Some come back from the far side, pale and quiet, and nobody can say who decided it. I wonder who keeps that list.",
		"Whoever turns the dead back at the threshold must have reasons. I'd love to see the ledger, and I dread my own line in it.",
	},
	["muse.w11.wonder.022"] = {
		"The Light, the spirits, the Earth Mother, the loa: so many answers to the same question. Maybe the question is the part they share.",
		"Every people in this world has its own name for what watches over it. They all bow their heads the same way.",
		"Elune, the Light, the ancestors, the spirits of the land. Different words, and the same hush falls when they're spoken.",
	},
	["muse.w11.wonder.023"] = {
		"A priest can close a wound with a few words. Whatever the Light is, it isn't just talk.",
		"Faith in this world gets results you can touch: wounds closing, fevers breaking. It makes doubting harder work.",
		"Hard to call the Light a fairy tale when it has just stitched someone's arm shut in front of a crowd.",
	},
	["muse.w11.wonder.024"] = {
		"The spirits answer the shamans, the Light answers the priests. Who answers the ones who never learned how to ask?",
		"Some pray and hear something back. Plenty of others talk into the quiet and hope it's listening.",
		"Every faith in this world claims an answer. The quiet after a prayer sounds the same in all of them.",
	},
	["muse.w11.wonder.025"] = {
		"Where does a flame go when it goes out? I've asked people cleverer than me, and they all changed the subject.",
		"Nobody can tell me where a flame goes when you blow it out. It was right there, and then it wasn't anywhere.",
		"A candle goes out and the flame is simply elsewhere, or nowhere. I've never decided which bothers me more.",
	},
	["muse.w11.wonder.026"] = {
		"Why do people whisper in old places, even with no one to hear? Something in us knows to be polite.",
		"Everyone lowers their voice in a ruin or a crypt. Nobody teaches it. Everyone simply knows.",
		"Old stones make everyone a little quieter, as if something there were still asleep.",
	},
	["muse.w11.wonder.027"] = {
		"Some questions don't have answers. Those are my favorite kind. Nobody can tell me I'm wrong.",
		"I like a question with no answer. You can carry it for years and it never goes stale.",
		"An unanswerable question is good company. It never runs out of things to say.",
	},
	["muse.w11.wonder.028"] = {
		"Luck doesn't care who deserves it. That's the only thing about it I find comforting.",
		"Luck has no favorites, whatever the gamblers claim. It simply hasn't met everyone yet.",
		"Good fortune lands on the kind and the cruel alike, like birds on a fence. I try not to read anything into it.",
	},
	["muse.w11.wonder.029"] = {
		"Lucky charm? No. Just something I'd rather not test by leaving it behind.",
		"It's not a lucky charm. It's a thing I happened to have with me every time it went well. Different.",
		"Superstitious? No. I just don't see the point in testing it.",
	},
	["muse.w11.wonder.030"] = {
		"If everything is already written, someone has awful handwriting. Half of it I can't make out at all.",
		"Fate, if there is such a thing, writes in a hand nobody can read until afterward.",
		"Maybe it's all set down somewhere. If so, the page keeps turning before I've read the line I'm on.",
	},
	["muse.w11.wonder.031"] = {
		"I don't know if fate exists. I do know it makes a fine excuse, and I try not to use it.",
		"Calling it fate is easier than calling it a choice. People only seem to say fate when the choice went badly.",
		"Fate gets blamed for a great many things that were only somebody not paying attention.",
	},
	["muse.w11.wonder.033"] = {
		"A bird will start singing on a battlefield the moment the noise stops. It doesn't care whose battlefield it was.",
		"Birdsong comes back to a ruined place before people do. It's always the first thing to forgive.",
		"Wherever the fighting stops, the small birds are first to move back in, without asking who won.",
	},
	["muse.w11.wonder.034"] = {
		"Shells, ram's horns, ferns before they open: the world keeps drawing the same spiral. Someone must have liked it.",
		"There's a curl that shows up in snail shells, young ferns and the horns of old goats. The world repeats itself where it's proud of something.",
		"Look closely and the same few shapes turn up everywhere, in a shell, a horn, a flame. As if the world had a favorite drawing.",
	},
	["muse.w11.wonder.035"] = {
		"No two leaves are alike, people say. I've never checked. I'd hate to be the one who finds the pair.",
		"Every leaf is a little different, they claim. Somebody would have to look at all of them to be sure, and I'm not volunteering.",
		"If two identical leaves ever turn up, I hope someone has the sense to keep quiet about it.",
	},
	["muse.w11.wonder.036"] = {
		"Some people get one taste of the arcane and never feel full again. Ordinary hunger is easier; bread fixes it.",
		"There's a hunger that comes with magic, by every account, and no meal ever touches it. I'll keep the kind a stew can mend.",
	},
	["muse.w11.wonder.037"] = {
		"An empty dark holds nothing at all. It's what my head furnishes it with that does the frightening.",
		"The dark is just a room with the furniture missing. My imagination keeps moving things in.",
		"Nothing waiting in the dark has ever been half as bad as what I pictured there first.",
	},
	["muse.w11.wonder.038"] = {
		"Scared is fine. Scared and stupid is the combination I try to avoid.",
		"A little fear keeps the eyes open. Too much shuts them. I'm aiming for the middle.",
	},
	["muse.w11.wonder.039"] = {
		"The druids speak of a dream beneath the waking world, green and endless. Some mornings I wonder if I've been wandering in it.",
		"There's said to be a great green dream under everything, where the world is as it was meant to be. I like to think I pass through it now and then, asleep.",
	},
	["muse.w11.wonder.040"] = {
		"The brave aren't built from different stuff. They've just gone first more often, and it got a little easier each time.",
		"Nobody is born brave. People keep stepping forward until their knees stop arguing about it.",
		"Courage looks like a gift from outside. Up close it's a habit, practiced badly at first and then a little better.",
	},
	["muse.w11.wonder.042"] = {
		"Lichen takes a lifetime to cover a stone the size of a fist. Nothing in this world is less impressed by hurry.",
		"A patch of lichen no bigger than a coin may be older than any king now living. It never boasts about it.",
		"Moss and lichen work slower than any mason and outlast every wall. Patience wins, if you give it long enough.",
	},
	["muse.w11.wonder.043"] = {
		"An owl turns its whole head to look at you, as if you were worth the trouble. It's oddly flattering.",
		"Owls stare as though they've just remembered something about you. I've never wanted to know what.",
		"An owl looks wise mostly because it never says anything. There's a lesson in that I keep failing to learn.",
	},
	["muse.w11.wonder.044"] = {
		"Frogs sing as if nobody had ever told them how they sound. Good for them.",
		"No frog has ever worried whether its song was any good. There's a lesson there, a damp one.",
		"Whatever a frog is croaking about, it says it with total conviction. I could stand to learn that.",
	},
	["muse.w11.wonder.045"] = {
		"A good animal knows something is wrong before any rider or herder does. I've learned to watch the ears, not the eyes.",
		"Beasts feel trouble coming long before people do. When the animals go quiet, I go quiet with them.",
	},
	["muse.w11.wonder.046"] = {
		"Shout into a deep enough hole and something answers in your own voice. I've never liked how pleased it sounds.",
		"An echo is the strangest company: it agrees with everything and adds nothing. Somehow that's unsettling.",
	},
	["muse.w11.wonder.047"] = {
		"Now and then a moment arrives that I'm sure I've lived before, down to the smallest sound. Then it passes, and I never learn what it meant.",
		"Sometimes the world repeats a moment, word for word, and I'm the only one who seems to notice the seam.",
		"That feeling again, of having stood exactly here and thought exactly this. The world must fold over on itself now and then.",
	},
	["muse.w11.wonder.048"] = {
		"Nothing that lives owns what it's made of. Dust, water, a little warmth, all of it on loan and on its way somewhere else.",
		"Everything I'm made of was something else first, and will be something else after. I'm only holding it for a while.",
		"The stuff of a body is borrowed from the earth and goes back without a fuss. It's only the borrower who makes a scene.",
	},
	["muse.w11.wonder.049"] = {
		"Even those who came back from death don't describe it. Either there's nothing to tell, or something they'd rather not.",
		"Not one traveler back from the far side has brought a decent account of it. That silence says more than any sermon.",
	},
	["muse.w11.wonder.050"] = {
		"The worst fears are the small ones that never leave. The big ones at least have the decency to end.",
		"A great terror passes like a storm. It's the little worry that moves in and starts rearranging the furniture.",
	},
	["muse.w11.wonder.051"] = {
		"Right. Knees, stop that. We're going.",
		"Thank you, legs, for the opinion. Noted. Moving on.",
		"All right, nerves, you've had your say. Now hush.",
	},
	["muse.w11.wonder.053"] = {
		"Someone scratched a few lines into a piece of iron and now it burns when it strikes. All that power, and the doorway is a scratch.",
		"An enchanter's marks look like a child's doodles until the blade starts to glow. Never judge a rune by its handwriting.",
	},
	["muse.w11.wonder.054"] = {
		"I'd wager every mage alive once set something on fire by accident. The robes hide it well.",
		"Behind every robed scholar of the arcane there's a scorched curtain somewhere that nobody talks about.",
	},
	["muse.w11.wonder.055"] = {
		"Right now someone is calling a demon by its name and expecting it to behave. I admire the confidence, if nothing else.",
		"Some people bind demons to their will the way others keep a guard dog. I'd want to be very sure of the chain.",
	},
	["muse.w11.wonder.056"] = {
		"I've heard the Light described as warm, as bright, as stern, as kind. Everyone who has felt it seems to have felt something different.",
		"Ask five people what the Light feels like and you get five answers, all said with the same certainty.",
	},
	["muse.w11.wonder.057"] = {
		"The tauren say the Earth Mother holds everything that walks. If so, she has a great deal of patience with boots.",
		"If the ground truly belongs to a mother, as the tauren tell it, she's owed a good many apologies for all the digging.",
	},
	["muse.w11.wonder.058"] = {
		"The loa, I'm told, expect an offering for every favor. There's an honesty in that I can almost admire.",
		"A gift for a favor, a favor for a gift: that's how the trolls speak of their loa. Plain dealing, at least.",
	},
	["muse.w11.wonder.059"] = {
		"Far under the world, people say, there are halls built by makers so vast our kings would look like mice beside them. I'd like to see one, from a safe distance.",
		"Whoever shaped this world worked on a scale I can't picture. Somewhere their tools may still be lying where they left them.",
	},
	["muse.w11.wonder.060"] = {
		"I'd trade a fair bit of cleverness for the calm of a cow chewing. Ever seen a worried cow? Me neither.",
		"Somewhere a goat is standing on a ledge it has no business on, completely untroubled. Teach me, goat.",
	},
	["muse.w11.wonder.061"] = {
		"A bee doesn't know it's making honey for anyone else. It just does good work and flies home.",
		"Bees work as if the whole world depended on it, and for all I know it does.",
	},
	["muse.w11.wonder.062"] = {
		"Nobody plants thistles, and there are thistles everywhere. The things nobody wants are the hardest to kill.",
		"Weeds have never been asked to grow, and they grow anyway. I find that more inspiring than any hymn.",
		"Cut a nettle down and it comes back out of spite. I could do worse than take after a nettle.",
	},
	["muse.w11.wonder.063"] = {
		"Why three? Every tale, every charm, every warning comes in threes. Somebody long ago decided two wasn't enough and four was showing off.",
		"Three wishes, three tries, three knocks. The world has a soft spot for the number three, and nobody can tell me why.",
	},
	["muse.w11.wonder.064"] = {
		"Find a coin on the ground and I spend the rest of the day waiting for the bill.",
		"Good luck makes me more nervous than bad. Bad luck, at least, I know how to carry.",
	},
	["muse.w11.wonder.065"] = {
		"Luck is mostly the name people give to the chances they didn't notice they were taking.",
		"Half of what people call luck is a risk they forgot to be afraid of. The other half I can't explain.",
	},
	["muse.w11.wonder.066"] = {
		"If someone did plan all of this, I'd like to see the plan. Not to complain. Just to check I'm in it.",
		"If there's a grand design, I hope I'm at least in the margins. A small note in pencil would do.",
	},
	["muse.w11.wonder.071"] = {
		"Fear is always loudest just before the start. Once things begin, it has to find a seat like everyone else.",
		"The worst of being afraid is the waiting. When the moment comes, fear gets shoved aside by the work.",
	},
	["muse.w11.wonder.072"] = {
		"Fear of the dark is older than people, I'd guess. Whatever first learned it was right to.",
		"Every creature that ever survived long enough to have children was a little afraid of the dark. I come from good stock.",
	},
	["muse.w11.wonder.073"] = {
		"I'm not afraid of spiders. I simply respect how many legs they've decided to have.",
		"Fear of spiders? No. A healthy concern about the number of eyes involved.",
		"Spiders: eight legs, eight eyes, no explanations. I keep my distance on principle.",
	},
	["muse.w11.wonder.074"] = {
		"Every living thing seems to know it ends, a little. The deer startles, the bird keeps one eye open. Only people pretend otherwise.",
		"Beasts live as though death were always nearby and never mention it. People do the reverse.",
		"A hare never forgets it can die, and still finds time to sit in the grass. That seems about right.",
	},
	["muse.w11.wonder.075"] = {
		"Somewhere there's a beetle or a flower nobody has named yet. I like that the list isn't finished.",
		"The world hasn't been fully counted. There are still small things in it that nobody has ever drawn. Good.",
	},
	["muse.w11.wonder.076"] = {
		"The world is full of objects that remember spells: rings, blades, old stones. I wonder if they're ever glad to be put down.",
		"A ring can hold a charm for centuries, long after the hand that set it is dust. What a patient thing to be.",
	},
	["muse.w11.wonder.077"] = {
		"If I could pick any spell in the world, I'd take the one that finds lost spoons.",
		"Forget fireballs. The spell I want would tell me which pocket I put it in.",
	},
	["muse.w11.wonder.078"] = {
		"Animals don't fear the dead the way people do. A crow will perch on any bone. Maybe they know something.",
		"Beasts walk past a grave without a second look. Perhaps fear of the dead is something only people invented.",
	},
	["muse.w11.wonder.079"] = {
		"Still water, polished steel, a clean blade: the world keeps showing me my own face, and I keep being surprised by it.",
		"Every reflection looks a little like a stranger who's heard about me.",
	},
	["muse.w11.wonder.080"] = {
		"A seed knows which way is up even buried in the dark. I can't always say the same.",
		"Bury a seed upside down and it sorts itself out. I wish I had half that sense of direction.",
		"Nothing tells a sprout where the open air is. It just knows, and pushes. Not a bad way to live.",
	},
	["muse.w11.wonder.081"] = {
		"Fear and caution look alike from a distance. Up close, caution is the one still thinking.",
		"Caution asks what could go wrong. Fear answers before it has finished asking.",
	},
	["muse.w11.wonder.093"] = {
		"Fate, if you're listening: less of the same, please.",
		"Whoever is arranging all this, a little variety wouldn't hurt.",
	},
	["muse.w11.wonder.094"] = {
		"Lucky? I'll take it. I'm not proud.",
		"That went better than it had any right to. I won't ask questions.",
		"A bit of luck. Nobody look at it directly.",
	},
	["muse.w11.wonder.095"] = {
		"There's more in this world than anybody can explain, and I find that a relief.",
		"Not everything has an explanation. Thank goodness. Imagine how dull that would be.",
	},
	["muse.w11.wonder.096"] = {
		"Whatever's watching, I hope it's enjoying the show.",
		"If anyone up there is keeping an eye on me, I apologize for the last bit.",
	},
	["muse.w11.wonder.097"] = {
		"Death can wait. I've got things on.",
		"Not today, death. My schedule's full.",
		"Death will have to make an appointment like everyone else.",
	},
	["muse.w11.wonder.098"] = {
		"Nobody knows what comes next. That's rather the point of it.",
		"Could be anything waiting further on. I like those odds better than knowing.",
	},
	["muse.w11.wonder.099"] = {
		"Be brave, they say. Nobody ever says how. I'm improvising.",
		"Courage, apparently. Fine. I'll make it up as I go.",
	},
	["muse.w11.wonder.100"] = {
		"Mages, priests, shamans, and not one of them can tell me why a cat knocks things off a table.",
		"All the wisdom in the world, and nobody knows what a cat is thinking. Possibly not even the cat.",
	},
	["muse.w11.wonder.101"] = {
		"Strange world. Wouldn't trade it.",
		"Odd, unfair, astonishing world. I'll keep it.",
		"Mad place, this world. I'm fond of it anyway.",
	},
	["muse.w11.wonder.102"] = {
		"If that was an omen, it was very badly worded.",
		"Omens would be far more useful if they came with a note.",
	},
	["muse.w11.wonder.103"] = {
		"Some things in this world have no use I can see: a bird's crest, a flower in a crack, a beetle painted like a jewel. Maybe beauty is its own trade.",
		"Nobody needs a beetle to shine like that. It shines anyway. The world wastes beauty with both hands, and I'm grateful.",
		"Half the color in the world serves no purpose I understand. It seems the world simply likes to show off.",
	},
	["muse.w11.wonder.104"] = {
		"Moths fly at a flame as if someone had promised them something there. People do the same, only more slowly.",
		"A moth will circle a candle until it's singed, and come back for more. I don't laugh at moths.",
	},
	["muse.w11.wonder.105"] = {
		"A tree never moves a step in its whole life and still sees more than most travelers. It lets the world come to it.",
		"Trees don't go anywhere, and the world keeps visiting them: birds, beasts, wanderers, woodcutters. Patience has its own company.",
		"Rooted in one spot for centuries, a tree outlives every traveler who rests in its shade. Maybe staying put is its own kind of journey.",
	},
	["muse.w11.wonder.106"] = {
		"A wolf pack keeps better order than most councils, and nobody writes anything down.",
		"Wolves settle their quarrels quickly and hunt together afterward. I've heard of kingdoms that manage worse.",
	},
	["muse.w11.wonder.107"] = {
		"Some fish fight the whole current to reach the waters they started from. Nobody has ever managed to ask them why.",
		"There are fish that swim against an entire river to get home. Whatever calls them, it calls loudly.",
	},
	["muse.w11.wonder.108"] = {
		"A plant left by a window leans toward the light, slowly, without ever being told. Some days I need that much sense.",
		"Nothing teaches a sprout to turn toward the light. It simply does, by a hair each day. I'd like to be that stubborn about better things.",
	},
	["muse.w11.wonder.109"] = {
		"Spent magic smells of hot metal and struck flint, they say, with something sweet underneath. I wonder who first went sniffing.",
		"People who live near the arcane say it leaves a scent, like a forge with honey spilled in it. What a strange thing to know.",
	},
	["muse.w11.wonder.110"] = {
		"Dragons, it's said, can wear a mortal face. I sometimes look twice at very calm strangers.",
		"If dragons truly walk among people in borrowed shapes, then any quiet stranger at a table might be older than the city around them.",
		"A dragon in a mortal guise could be anyone at all. It makes overly composed people very interesting.",
	},
	["muse.w11.wonder.111"] = {
		"A gnome's machine and a mage's spell both do impossible things. The difference is the gnome will show you the screws.",
		"Gnomes build with gears what mages do with words, and both look offended if you ask how it works.",
		"Magic and gnomish engineering have one thing in common: they work right up until the moment they very much don't.",
	},
	["muse.w11.wonder.112"] = {
		"There are children growing up who think it's normal for someone to vanish in a flash and reappear across the room. I suppose it is, now.",
		"At this very moment a child is watching a spell for the first time and deciding the world is a marvel. I hope nobody talks them out of it.",
	},
	["muse.w11.wonder.113"] = {
		"Whether anyone is listening or not, saying the words out loud steadies the hands. Maybe that's half the point of prayer.",
		"A prayer said in a hard moment does something even if nobody hears it. It gives the mouth a job while the courage catches up.",
	},
	["muse.w11.wonder.114"] = {
		"The Light is said to burn the undead, and yet there are Forsaken who call on it. The world is more tangled than any sermon.",
		"Undead hands raised in prayer to the Light: whatever the scholars say, the world refuses to be simple.",
	},
	["muse.w11.wonder.115"] = {
		"Spirits in the stones, in the water, in the very air, if the shamans are right. Then I've been rude to a great many things.",
		"If every rock and stream has a spirit, as the shamans tell it, I owe apologies to half the things I've kicked.",
	},
	["muse.w11.wonder.116"] = {
		"Where do dreams come from? Nobody has an answer that satisfies me, least of all the people who claim to read them.",
		"Dream-readers, druids, old wives: all of them have a theory about dreams, and none of them agree on where the door is.",
	},
	["muse.w11.wonder.117"] = {
		"Someone made the first map, spoke the first word, sang the first tune. I'd give a great deal to know who went first at anything.",
		"Every skill in the world was once done for the very first time, by someone with no one to copy. I'd like to have met them.",
		"Somebody, long before any kingdom, was the first to wonder why. I think about that person more than about any king.",
	},
	["muse.w11.wonder.118"] = {
		"Strange, that every living thing fears the one thing every living thing manages perfectly.",
		"Everyone dreads dying, and yet nobody has ever failed at it. It's the one task with no wrong answer.",
	},
	["muse.w11.wonder.119"] = {
		"The dead outnumber the living by a wide margin, if anyone counts properly. The living just make more noise.",
		"Count everyone who ever lived and the living are a small, loud crowd standing on a very quiet majority.",
	},
	["muse.w11.wonder.120"] = {
		"Bravery spends itself. Every day I have to earn a fresh supply.",
		"Courage doesn't keep. Yesterday's is already used up, and today's has to be found all over again.",
		"Nobody gets to be brave once and for all. It runs out like lamp oil and wants refilling.",
	},
	["muse.w11.wonder.121"] = {
		"The bravest thing isn't always the loudest. Sometimes it's saying 'I don't know' out loud.",
		"Admitting fright takes more nerve than any war cry. War cries are easy; everybody shouts.",
	},
	["muse.w11.wonder.122"] = {
		"Fear shrinks once it has a name. 'That's a wolf' is a much smaller thing than 'what was that?'",
		"The unnamed noise is always the worst beast. Once I can see what it is, it's only a problem.",
	},
	["muse.w11.wonder.123"] = {
		"Some people are followed by luck like a stray dog. I'd settle for a stray cat that turns up now and then.",
		"Luck trails certain people around like a hound. Mine is more of a cat: shows up when it likes and pretends not to know me.",
	},
	["muse.w11.wonder.124"] = {
		"The old tales give every life a thread. Mine has a few knots in it, I'd guess, and at least one bit tied on by a stranger.",
		"If lives are threads, as the old wives say, then mine was spun in a hurry by somebody humming. It holds, though.",
	},
	["muse.w11.wonder.125"] = {
		"If I'm only doing what was always going to happen, I'd still like to do it well.",
		"Fate or no fate, the work in front of me is the same size. I may as well do it properly.",
	},
	["muse.w11.wonder.126"] = {
		"A feather weighs nothing and holds a bird up. I've never fully forgiven the world for making that look easy.",
		"Birds hang on nothing at all and seem bored by it. If I could do that, I'd never stop grinning.",
	},
	["muse.w11.wonder.127"] = {
		"A needle that always points the same way, whatever you do to it. That's magic too, just the kind nobody bothers to call magic.",
		"A lodestone pulls iron toward it with no word and no gesture. The world was strange before anyone learned a single spell.",
	},
	["muse.w11.wonder.128"] = {
		"Why do people lift their eyes to ask for help and lower them to mourn? Nobody teaches that either.",
		"Hope looks up and grief looks down, in every people I've heard of. The body seems to know where things are kept.",
	},
	["muse.w11.wonder.129"] = {
		"What did the first person who tamed a wolf think they were doing? Very brave, or very lonely?",
		"Long ago somebody tossed a scrap to a wolf instead of a stone. Every dog by every hearth owes that one moment of nerve.",
	},
	["muse.w11.wonder.130"] = {
		"Every animal is perfectly good at being itself. People are the only ones still practicing.",
		"A fox never wonders how to be a fox. I spend half my days working out how to be me.",
	},
	["muse.w11.wonder.131"] = {
		"Some things are better left unknown. I'm just never sure which ones until I already know them.",
		"Every closed door might be one I'd be happier never opening. Somehow that has never stopped my hand.",
	},
	["muse.w11.wonder.132"] = {
		"I wonder whether the dead mind being remembered wrongly. Probably they're past minding. The living mind for them.",
		"The dead can't correct the stories told about them. That alone ought to make the living more careful.",
	},
	["muse.w11.wonder.133"] = {
		"Many hold that the spirits of the ancestors linger close to the living. If so, they must be very patient with what the living do with their names.",
		"If the ancestors truly watch, as so many peoples believe, they've seen every foolish thing done in their honor and stayed polite about it.",
	},
	["muse.w11.wonder.134"] = {
		"Bats find their way in pitch dark by listening to their own voices come back. I find mine by walking into things.",
		"A bat hears its way through the dark. I mostly feel mine, shins first.",
		"Bats call out and listen for the echo to learn where the walls are. I'd settle for knowing where the walls are.",
	},
	["muse.w11.wonder.135"] = {
		"A spell, as the mages put it, is a command the world can't refuse. I sometimes wonder whether the world resents it.",
		"Every spell tells the world to be otherwise for a moment. And the world, astonishingly, listens.",
		"The world obeys a well-said word. That's either the most wonderful or the most frightening thing I know.",
	},
	["muse.w11.wonder.136"] = {
		"Fear is honest about the danger and a liar about the odds.",
		"Fear always knows exactly how big the threat is. It's just terrible at measuring me.",
		"My fear sees every danger clearly and me not at all.",
	},
}, "base_monologues")
