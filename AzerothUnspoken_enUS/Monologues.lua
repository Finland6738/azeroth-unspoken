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
	["muse.w12.coin.001"] = {
		"Every price is somebody's hours. The cheaper the boots, the longer someone sat stitching them for less.",
		"Behind any price there's a pair of hands and a day of work. Cheap only means those hands got less for it.",
	},
	["muse.w12.coin.002"] = {
		"I've been putting coin aside for something. I no longer remember what. The saving has outlived the reason and carries on regardless.",
		"There's a little hoard at the bottom of my pack meant for some purchase I've long since forgotten. I keep feeding it out of loyalty.",
	},
	["muse.w12.coin.003"] = {
		"One silver rides in my boot for the worst day. If I'm buried with it still there, the worst day never came. Best coin I'll never spend.",
		"A single silver kept hidden apart, for when everything goes wrong. Each time I check and find it still there is a small win of its own.",
	},
	["muse.w12.coin.004"] = {
		"With a full purse I'm generous. With an empty one I discover strong views on thrift. My principles keep remarkably close to my coin.",
		"Funny how my generosity rises and falls with the purse, while my little sermons on saving do just the opposite.",
	},
	["muse.w12.coin.005"] = {
		"A copper left for whoever clears the table. It's the cheapest way I know of staying a decent sort.",
		"I leave a coin by the plate for the one who'll wipe up after me. A small price for not turning into someone who forgets to.",
		"Whoever cleans up after me gets a coin. It's less about them than about the sort of person I'd turn into without the habit.",
	},
	["muse.w12.coin.006"] = {
		"Gold is heavier than the songs let on. Nobody who sings about treasure has ever had to carry it up a flight of stairs.",
		"Treasure in a ballad weighs nothing. Treasure in a sack weighs a great deal, and it clinks at every step like a confession.",
	},
	["muse.w12.coin.007"] = {
		"Some days I let the merchant win the haggle. A bargain only feels good when both sides can still afford supper.",
		"There's a point in any haggle where winning turns into taking. I try to stop just short of it.",
	},
	["muse.w12.coin.008"] = {
		"Everyone has a price, people like to say. I'd like to learn mine before somebody else does.",
		"If it's true that anyone can be bought, I want to know my own figure first, so the refusal is ready when the offer comes.",
	},
	["muse.w12.coin.009"] = {
		"Honest work pays badly and keeps on paying. Crooked work pays handsomely, about once.",
		"Crooked coin comes in one big handful and then never again. Honest coin trickles in for good. I know which I'd rather count.",
		"A crooked job pays for a season. An honest one pays for a life, a few coppers at a go.",
	},
	["muse.w12.coin.010"] = {
		"Gold put in a grave does one thing: it waits for a thief. In mine, if it comes to that, I'd rather leave nothing worth the digging.",
		"Bury me without a coin, when the time comes. Grave gold only teaches the next robber where to dig.",
	},
	["muse.w12.coin.011"] = {
		"I could never keep a lucky coin. Sooner or later it would turn into bread, and the luck would go down with it.",
		"A lucky coin is a lovely idea for people who are never hungry.",
	},
	["muse.w12.coin.012"] = {
		"I'm not poor. I'm between fortunes.",
		"Broke? Hardly. Resting between fortunes.",
		"Poor is such a final word. Let's say the fortune is running late.",
	},
	["muse.w12.coin.014"] = {
		"A coin I give away I never miss. A coin I lose through a torn pocket I mourn for a week. It's the same coin. The difference is me.",
		"Lose a copper and it nags at me for days. Give one away and I've forgotten it by supper. The coin can't tell the two apart; I can.",
	},
	["muse.w12.coin.015"] = {
		"A copper won't feed anyone by itself. It has to become bread first, and somewhere in that change a baker got up before everyone else.",
		"Coins are only promises of bread. The real wealth is the baker, already at work while the rest of the world is still asleep.",
	},
	["muse.w12.coin.016"] = {
		"Having the exact coins ready, no change to wait for: a tiny triumph that nobody else will ever notice.",
		"Paying with precisely the right sum pleases me more than it should. A small victory is still a victory.",
	},
	["muse.w12.coin.017"] = {
		"I never count my change in front of the merchant. It feels like calling them a liar to their face. I count it round the corner instead, like a coward.",
		"Counting change at the counter is a small insult. So I count it a few steps later, where only my conscience can see.",
	},
	["muse.w12.coin.018"] = {
		"Wars are paid for twice. Once in gold, by the people who start them. Once in everything else, by the people who don't.",
		"Whoever begins a war pays for it in coin. Whoever never asked for it pays with the rest of what they had.",
	},
	["muse.w12.coin.019"] = {
		"A few silver put by aren't really for buying things. They buy the right to say no to a job I don't like the smell of.",
		"Savings, to me, are mostly the freedom to refuse. An empty purse says yes to everything.",
		"Every coin I don't spend is a small no kept in my pocket, ready for when I'll need it.",
	},
	["muse.w12.coin.020"] = {
		"Owe enough to the wrong person and they start choosing where you sleep, what you do, whom you smile at. Debt is a leash with a polite voice.",
		"A large debt is a chain you put on yourself, one link for every signature.",
	},
	["muse.w12.coin.021"] = {
		"Nobody ever has change for a gold coin. Gold is the coin that makes everyone around it poor for a moment.",
		"Hand over gold and watch the whole shop turn out its pockets. Big coins are a nuisance dressed up as wealth.",
		"Gold is wonderful until you try to buy an apple with it.",
	},
	["muse.w12.coin.022"] = {
		"I've planned how to spend a fortune so many times that, if one ever turned up, the spending would feel like something I'd done before.",
		"In my head I've already spent a dozen fortunes, all very wisely. Shame none of them was real; the good sense would have been impressive.",
	},
	["muse.w12.coin.023"] = {
		"Paying for a stranger's meal feels better than eating my own. I don't do it often enough to understand why.",
		"There's an odd glow in covering somebody else's supper. Cheaper than most pleasures, and rarer than it ought to be.",
	},
	["muse.w12.coin.024"] = {
		"The one who lends remembers the sum to the copper. The one who borrows remembers the kindness and loses the figure. Both think they're being fair.",
		"Lenders keep numbers; borrowers keep feelings. That's why so many loans end in a quarrel nobody can settle.",
		"A loan is one event remembered as two different stories.",
	},
	["muse.w12.coin.025"] = {
		"Interest is the only thing I know that works while its owner sleeps. I've yet to find myself on the right side of it.",
		"Somewhere a debt of somebody's is quietly rising in the dark, like bread dough. I do hope it isn't mine.",
	},
	["muse.w12.coin.026"] = {
		"That's not a price. That's a threat with numbers in it.",
		"Did you mean to say that figure out loud?",
	},
	["muse.w12.coin.027"] = {
		"Iron remembers the forge, stone remembers the mountain. Gold remembers nothing except being wanted.",
		"Every metal keeps a little of where it came from. Gold keeps only the hands that reached for it.",
	},
	["muse.w12.coin.028"] = {
		"Taking charity is harder than giving it. The trick is to say thank you and not reckon up what it cost them.",
		"When someone helps me with coin, I try to take it cleanly: a thanks, a nod, and no sums done in my head about what they could spare.",
	},
	["muse.w12.coin.029"] = {
		"Most of what keeps me alive costs almost nothing: water, a strip of clean cloth, a moment's attention. The dear things mostly help me look the part.",
		"Go through my pack and the cheapest things are the ones that keep me going. The costly ones are there to impress people who never ask.",
	},
	["muse.w12.coin.030"] = {
		"Whatever I leave behind won't fill a purse. I'd settle for it filling a sentence or two in someone's mouth.",
		"My estate, such as it is, would fit in one hand. I hope the rest of me fits in a kind word.",
	},
	["muse.w12.coin.031"] = {
		"Dice are the most honest thieves there are. They take your coin and never once pretend they're doing you a favor.",
		"Gambling at least has the decency to rob you openly. Plenty of merchants could take lessons from the dice.",
		"Lose to dice and at least you know whom to blame. Lose to a smiling merchant and you'll thank him on the way out.",
	},
	["muse.w12.coin.033"] = {
		"Right now someone is selling a thing they swore they'd never sell. Hunger sets that price, and hunger doesn't haggle.",
		"The saddest bargains are struck by people with no choice left. Hunger names the figure, and the seller nods.",
	},
	["muse.w12.coin.034"] = {
		"Every merchant's scale leans a hair toward its owner. Not dishonesty, exactly. Just weight with an opinion.",
		"Shop scales are loyal creatures. They always seem to know whose counter they sit on.",
		"Nobody has ever seen a scale tip toward the customer. Some mysteries are simpler than they look.",
	},
	["muse.w12.coin.035"] = {
		"Somebody out there shaves a sliver off silver coins before passing them on. A patient sort of theft. I almost respect the patience.",
		"Run a thumb round the rim of a coin and now and then it's been nibbled. Some thief with a file and all the time in the world.",
	},
	["muse.w12.coin.036"] = {
		"A gift that costs me nothing isn't really one. That small pinch as I hand it over is how I know it counted.",
		"If giving doesn't sting a little, I've only tidied my pockets. The sting is the gift.",
	},
	["muse.w12.coin.037"] = {
		"Promised rewards are always chests. Delivered rewards are always pouches. Somewhere between the two, the reward goes on a diet.",
		"A reward sounds like gold when it's offered and jingles like copper when it's paid. The difference is called expenses.",
		"Rewards shrink on the way from the promise to the palm, like wool washed too hot.",
	},
	["muse.w12.coin.038"] = {
		"Some people pay in thanks, some in coin. The ones who pay in both are rare, and I remember every one.",
		"Coin or gratitude: most folk pick one. Those who give both stay in my head long after the money's gone.",
	},
	["muse.w12.coin.039"] = {
		"I never know what to ask when someone wants help. Too much and I'm a bandit, too little and I'm a fool. So I ask nothing and grumble later.",
		"Putting a price on my own work is the hardest sum there is. Usually I round it down to a shrug.",
	},
	["muse.w12.coin.040"] = {
		"Forgiving a debt is the one purchase I've never regretted. It costs exactly what I was owed and buys something I couldn't name.",
		"Let someone off what they owe you and watch their shoulders drop. No coin ever collected looked half that good.",
		"Cancelling what someone owes me is the only spending that leaves me lighter in the right way.",
	},
	["muse.w12.coin.041"] = {
		"Now and then an old coin turns up, struck for a kingdom that isn't there anymore. The merchant takes it by weight. The kingdom doesn't come into it.",
		"Coins of fallen realms still pass, if they're heavy enough. A merchant's scale goes into mourning for no one.",
	},
	["muse.w12.coin.042"] = {
		"Before any purchase I hold a small trial in my head. The purse prosecutes, my feet speak for the defense, and the verdict is always boots.",
		"Each time I want something, a court sits in my skull: need against wish, with the purse as judge. A hanging judge, that purse.",
	},
	["muse.w12.coin.043"] = {
		"Envy is the costliest thing I never buy. It still finds a way to send me the bill.",
		"I don't purchase envy, but it gets delivered anyway, and it charges by the hour.",
		"Envy is a purchase made on credit: no coin at the time, and a long bill after.",
	},
	["muse.w12.coin.044"] = {
		"Coin is easy to count and hard to keep. Friends are the other way round.",
		"I can tell what's in my purse to the copper. How many friends I have, I honestly couldn't say. Maybe that's the right way round.",
		"Money slips out between the fingers. Friends, the good ones, stick like burrs.",
	},
	["muse.w12.coin.045"] = {
		"Every notice with a price on someone's head makes me wonder who settles the figure, and what they'd write under my name.",
		"Somebody decides what a life is worth in silver and nails it to a post. I'd hate to know my own figure. I'd hate more to find it low.",
	},
	["muse.w12.coin.046"] = {
		"A fair price is one both sides grumble about. That's how you know.",
		"If nobody's sulking afterward, somebody got cheated.",
		"When buyer and seller both leave a little sore, the price was about right.",
	},
	["muse.w12.coin.047"] = {
		"Money talks, people say. Mine just whispers apologies.",
		"My coin doesn't talk. It clears its throat and leaves.",
	},
	["muse.w12.coin.048"] = {
		"Whatever it costs, it costs less than doing without.",
		"Buy the good one. Doing without is always the dearest choice.",
	},
	["muse.w12.coin.049"] = {
		"Keep the change. It's tiny, and so is my purse; they'd only quarrel.",
		"No, keep it. Small change and I have never got along.",
	},
	["muse.w12.coin.050"] = {
		"Coin's welcome. Bread's welcome. A thank-you is welcome most of all, and it's the one nobody haggles over.",
		"Pay what you can. A thank-you settles the rest.",
	},
	["muse.w12.coin.063"] = {
		"The people quickest to share a meal with me were mostly the ones who could least afford it. They knew the price of hunger better than the price of bread.",
		"Generosity runs strangest at the bottom: the fewer the coins, the more open the hands.",
		"Those with least to give are often the first to give it. I've stopped being surprised and started taking notes.",
	},
	["muse.w12.coin.064"] = {
		"I've met people with gold to spare who looked more anxious than I do with three coppers. Worry seems to grow with the pile.",
		"Big fortunes come with big locks, big guards and big frowns. I'll keep my small purse and my small worries.",
	},
	["muse.w12.coin.065"] = {
		"Waste is the one luxury I can't afford, and the only one I never miss.",
		"Throwing good things away is a habit of the rich. I've never had the means, and never felt the lack.",
	},
	["muse.w12.coin.066"] = {
		"A bribe is a price that's ashamed of itself.",
		"Bribes are prices that won't look anyone in the eye.",
		"Every bribe is a deal struck in a whisper, because it could never survive being said out loud.",
	},
	["muse.w12.coin.067"] = {
		"Wages and worth hardly ever meet. The best people I've known were nearly always the cheapest hired.",
		"Nobody I've worked beside was paid what they were worth. Most deserved more. A few deserved a sharp talking-to.",
	},
	["muse.w12.coin.068"] = {
		"A coin is a scrap of metal that everyone has agreed to take seriously. If the whole world forgot the agreement at once, I'd be holding a button.",
		"Copper buys a loaf only because the baker trusts the miller to trust it too. All of trade is a chain of people believing each other's guesses.",
	},
	["muse.w12.coin.069"] = {
		"Copper goes green if it's left alone. Gold never changes. Maybe that's why I trust copper more: it admits its age.",
		"Gold stays bright forever, which is a little suspicious. Copper tarnishes like an honest face.",
	},
	["muse.w12.coin.070"] = {
		"The first gold coin in any find gets a second look, as though it might turn back into copper if I blink.",
		"Gold among the coppers always earns a double take. Some part of me expects it to be a joke.",
	},
	["muse.w12.coin.071"] = {
		"If someone ever takes my purse, I hope they needed it more than I did. If they didn't, I hope it was light.",
		"To whoever lifts my purse one day: may it feed you, if you're hungry, and disappoint you, if you're not.",
	},
	["muse.w12.coin.072"] = {
		"Those who heal for nothing still get paid: bread left on a doorstep, a roof mended without asking. Coin goes round; it only changes shape.",
		"Not every debt is settled in silver. Some are paid in firewood, in a fence put right, in a pot of soup at the right moment.",
	},
	["muse.w12.coin.073"] = {
		"If someone ever saves my life, what will I owe them? Not coin, I think. A long, awkward kindness with no end date.",
		"No purse is big enough to pay for a rescue. It gets paid in loyalty instead, slowly, for as long as both of you are around.",
	},
	["muse.w12.coin.074"] = {
		"A deal sealed with a handshake is only as good as two memories. Mine's sound. It's the other one that worries me.",
		"Shake on it, by all means. Then write it down, in case the other hand forgets.",
	},
	["muse.w12.coin.075"] = {
		"I hate borrowing. It turns every meeting with the lender into a small apology.",
		"Owe someone a few coins and you can't cross paths with them without your eyes sliding off somewhere else.",
	},
	["muse.w12.coin.076"] = {
		"Some people spend their lives saving for a better one and are buried with the savings. I'd like at least to buy a decent hat first.",
		"A fortune kept for later has a habit of outliving the later.",
	},
	["muse.w12.coin.077"] = {
		"A coil of rope costs a few coppers at a stall and is worth a life at the edge of a drop. Price is what it costs; worth is when you need it.",
		"Nothing has a single price. A waterskin is cheap right up until it's the only thing standing between you and the end.",
		"Price gets set at the stall. Worth gets set later, out where things go wrong.",
	},
	["muse.w12.coin.078"] = {
		"Somewhere a guard is standing a long watch for a handful of silver a week. Half the safety in the world is bought that cheaply, and nobody says thank you.",
		"Every quiet road is paid for out of somebody's wages, and they're never high.",
	},
	["muse.w12.coin.079"] = {
		"Kings have been ransomed for chests of gold. Nobody ever paid a ransom for a farmer, yet the world would starve without farmers long before it missed a king.",
		"History weighs a king in gold and a farmer in nothing at all. Still, it's the farmer the world can't spare for a single season.",
	},
	["muse.w12.coin.080"] = {
		"In the stories, dragons heap up gold, and the stories never say what they do with it. Perhaps nothing. Perhaps that's the warning.",
		"Whatever a dragon wants with a mountain of gold, it isn't to spend it. Hoarding for its own sake may be the oldest sickness there is.",
	},
	["muse.w12.coin.081"] = {
		"Greed never says 'enough'. It says 'and then'.",
		"Greed doesn't want the thing. It wants the next thing, and the one after that, and it has never once been full.",
		"Ask greed how much would do, and it answers: a little more.",
	},
	["muse.w12.coin.082"] = {
		"The cheapest bed at any inn is never cheap. The difference gets paid in sleep, and in fleas.",
		"Save a few coppers on a room and you'll hand them back with interest, in the form of a stiff neck.",
	},
	["muse.w12.coin.083"] = {
		"Thrift and meanness look the same from outside. The difference is who goes without: you, or someone else.",
		"Being careful with coin is a virtue right up until someone else pays for it. Then it has an uglier name.",
	},
	["muse.w12.coin.084"] = {
		"Now and then I buy something useless on purpose: a ribbon, a sweet, a pretty button. Otherwise the coin starts to think it's in charge.",
		"One small extravagance every so often keeps the purse humble. Coins that are never wasted grow proud.",
	},
	["muse.w12.coin.085"] = {
		"There's a quiet pleasure in wanting something I can't afford. Buying it would only end the pleasure.",
		"Some things are best left on the merchant's shelf. Wanting them keeps me better company than owning them would.",
	},
	["muse.w12.coin.086"] = {
		"Give it all away and you're a hero for a day and a beggar for a year. Kindness needs a little arithmetic.",
		"Open hands are a fine thing, as long as there's still something left in them tomorrow.",
	},
	["muse.w12.coin.087"] = {
		"Somebody profits from every war. The quiet ones counting in the back room are never the ones who bleed.",
		"Every war has its winners, and they're rarely on the field. They're sitting at a table, adding up.",
		"Wars are good business for someone. Never for anyone you'd want to share a fire with.",
	},
	["muse.w12.coin.088"] = {
		"A favor is the strangest coin. It never loses value, nobody agrees what it's worth, and it's always called in at the worst moment.",
		"Favors are a currency with no mint. Everyone keeps their own count, and no two counts ever match.",
	},
	["muse.w12.coin.089"] = {
		"Pointing out a merchant's mistake in my favor costs me a few coppers each time. It's the cheapest honesty I'll ever buy, and I keep buying it.",
		"When a merchant short-changes the wrong side of the counter, I hand the extra back. A few coppers is a small price for meeting my own eye.",
	},
	["muse.w12.coin.090"] = {
		"Kingdoms rise on gold and fall on debt. The hard part is telling which of the two is happening around you.",
		"No empire ever ran short of courage first. The coin runs out, and the courage follows it out the door.",
	},
	["muse.w12.coin.091"] = {
		"Hope is the one coin that turns up in a purse I'd have sworn was empty.",
		"However empty the purse, there's always one coin of hope rattling at the bottom. I don't know who keeps putting it there.",
	},
	["muse.w12.coin.092"] = {
		"To the coin that comes, the coin that goes, and every hand it passes through on the way.",
		"Here's to every copper that ever bought a stranger a meal.",
	},
	["muse.w12.coin.093"] = {
		"Money makes cowards. The heavier my purse, the more carefully I watch where I put my feet.",
		"With a full purse every shadow looks like a pickpocket.",
		"Nothing makes me jumpier than carrying a fortune. Luckily, it hardly ever comes up.",
	},
	["muse.w12.coin.094"] = {
		"Nobody knows exactly how much I have, and nobody needs to. It's one of the few secrets I keep without any effort.",
		"My purse is the most private thing I own. Not because it's full. Because how empty it is is nobody's business.",
	},
	["muse.w12.coin.095"] = {
		"Tired enough, I'll pay the first price anyone names. Weariness is the merchant's best friend.",
		"Merchants ought to hire exhaustion as a shop boy. Once it gets hold of me, I'll agree to any figure just to sit down.",
	},
	["muse.w12.coin.096"] = {
		"Nothing owed, nothing envied. That's what I call rich.",
		"Owe nobody, envy nobody. Every other kind of wealth comes second.",
	},
	["muse.w12.coin.097"] = {
		"Some things aren't for sale. Most things are. The trick is knowing which before someone makes an offer.",
		"Know what you won't sell before anybody asks. Afterward it's too late to decide calmly.",
	},
	["muse.w12.coin.098"] = {
		"Gold can rent good manners. It can't buy them outright.",
		"Money hires politeness by the hour. Kindness never comes on those terms.",
	},
	["muse.w12.coin.099"] = {
		"Spend it or save it, coin always wants to leave. Best give it somewhere good to go.",
		"Coin never stays put. Might as well choose where it walks off to.",
	},
	["muse.w12.coin.100"] = {
		"I'd rather have an empty purse than a name nobody will lend to.",
		"Lose the coin, fine. Lose the credit of an honest name and no purse will fix it.",
	},
	["muse.w12.craft.001"] = {
		"A knot I can tie without looking is worth more than one I can only name.",
		"Knowing what a knot is called is nothing. Tying it blind, in a hurry, with the rope pulling back: that's knowing it.",
		"Any knot works on a calm day. The one worth learning is the one I can still tie with shaking hands.",
	},
	["muse.w12.craft.002"] = {
		"Mending is the nearest thing I have to a garden: small work, done slowly, and something better at the end of it.",
		"No garden for me. A needle and a heap of torn things instead, which turns out to be nearly the same pleasure.",
	},
	["muse.w12.craft.003"] = {
		"If this buckle gives way once more, it gets a name, and a grudge to go with it.",
		"One more trick from this buckle and it's personal.",
		"This buckle and I are one more failure away from a serious falling-out.",
	},
	["muse.w12.craft.005"] = {
		"Oil the leather before it cracks, not after. Most of looking after gear is doing things a little too early.",
		"Leather gets thirsty a day before it splits. Caring for it mostly means hearing that in time.",
		"Grease the buckle at the first squeak and it never reaches the second. Care is a matter of good timing.",
	},
	["muse.w12.craft.006"] = {
		"A thing that can't be mended teaches what no whole thing can: when to stop trying.",
		"Some rips aren't worth the thread. Telling which is a skill as well, the hardest one I know.",
	},
	["muse.w12.craft.007"] = {
		"Thread always runs out one stitch short of the end. I'm convinced it counts.",
		"The thread gave out with a single stitch to go. Naturally. Thread can count, and it's spiteful.",
		"Thread is long right up until the moment it is precisely one stitch too short.",
	},
	["muse.w12.craft.008"] = {
		"Practice is boring on purpose. The boredom is where the hands learn without the head getting in the way.",
		"Do the same small thing until it's dull. Once it bores the head, the hands have it for good.",
		"Nobody gets clever hands from one inspired hour. They come from a hundred dull ones.",
	},
	["muse.w12.craft.009"] = {
		"Hold on. Something's rattling, and rattles only ever get louder.",
		"One moment. A loose thing makes noise first and trouble after.",
	},
	["muse.w12.craft.011"] = {
		"Watch anyone good at a craft and the odd thing is how little they move. Beginners flap. Masters barely stir.",
		"From outside, skill looks like stillness. Whoever knows the work wastes nothing, not even a gesture.",
		"The clumsy make a great show of working. The skilled make it look as if nothing much is happening.",
	},
	["muse.w12.craft.012"] = {
		"My repairs have a style. Nobody would call it a good one, but you'd know it anywhere.",
		"You can spot my mending at twenty paces. Not because it's fine work. Because it's mine.",
		"Nobody else mends quite this badly, in quite this way. It's practically a signature.",
	},
	["muse.w12.craft.013"] = {
		"Clean what I carry before I clean myself. It's a silly rule, and it has never once let me down.",
		"Gear first, then me. A foolish order of things, and it keeps me standing.",
	},
	["muse.w12.craft.014"] = {
		"A good seam outlives the hands that sewed it. Not a bad thing to leave behind: a few small stitches doing their job for a stranger.",
		"Stitches outlast the one who sews them. I'd settle for that kind of legacy: small, plain, and still holding.",
	},
	["muse.w12.craft.016"] = {
		"There's a small, clean joy in a seam that lies flat. Nobody else will ever notice it. That's part of the joy.",
		"A stitch line that runs straight and even: nobody will look twice at it, and I'll be quietly pleased for an hour.",
		"A buckle that clicks home cleanly is a tiny reward, and I collect those wherever they turn up.",
	},
	["muse.w12.craft.017"] = {
		"Heavy things at the bottom, near the back. Things I'll want in a hurry on top. A pack has a grammar, and I'm learning it.",
		"A badly packed bag fights the one carrying it. A good one walks with you. Same things, different order.",
		"Packing is a small craft nobody teaches: weight low and close, the quick things high, nothing that rattles.",
	},
	["muse.w12.craft.018"] = {
		"The repair kit grows heavier every time I look at it. Soon I'll need a second kit to mend the first.",
		"I carry enough string, thread and patches to fix a small wagon. My boots remain unconvinced.",
	},
	["muse.w12.craft.019"] = {
		"Leather has a grain, like wood, like people. Work with it and it forgives a lot. Work against it and it remembers.",
		"Go along the grain and the leather does half the work. Go against it and it argues every inch.",
	},
	["muse.w12.craft.020"] = {
		"Fix it now or carry it broken. Those are the only two choices, and only one of them gets lighter.",
		"Mend it here, or haul it broken. I know which one my shoulders vote for.",
		"A broken thing doesn't get lighter by being ignored. It only gets more broken.",
	},
	["muse.w12.craft.021"] = {
		"Mending alone, I talk to the work. Hold still. Nearly. There. It's better company than it sounds.",
		"When I sew I mutter at the cloth as if it could hear me. It never answers, which makes it an easy listener.",
	},
	["muse.w12.craft.022"] = {
		"Apprentices start with a broom, by every account. Not cruelty, I think: they learn the shop before they're let near the work.",
		"First the broom, then the tools. Sweeping a workshop for a year must teach where everything lives, and why.",
	},
	["muse.w12.craft.023"] = {
		"Every repair I improve one last time is the one that breaks. Good enough was the finished state, and I walked right past it.",
		"There's a point where a mend is done, and a point just after where I ruin it by fussing. I keep finding the second.",
	},
	["muse.w12.craft.025"] = {
		"A fight unmakes things in a moment. Mending puts them back slowly. I try to keep the two in some kind of balance.",
		"Fights break, needles mend. The breaking is quick and the mending slow, and I owe the slow side more hours.",
	},
	["muse.w12.craft.026"] = {
		"Whoever stitched this bag knew the work. I'll never learn their name, but I think of them every time the seams hold.",
		"Some unknown hand put these stitches in, small and even, and they're still holding. I owe that stranger more than the price.",
	},
	["muse.w12.craft.027"] = {
		"There is no such thing as a quick repair. There are only repairs I lied to myself about.",
		"'It'll take a moment,' I tell myself, and an hour later I'm still bent over a strap.",
		"A small repair is just a large one that hasn't shown its full size yet.",
	},
	["muse.w12.craft.028"] = {
		"Tired hands sew crooked. No use pretending otherwise: a seam done half asleep is a seam done twice.",
		"Mending when worn out is a false saving. The stitches wander and I end up unpicking them later.",
	},
	["muse.w12.craft.029"] = {
		"Nobody touch this strap. It's held by a knot even I don't fully understand.",
		"This buckle works, but only out of loyalty. Best not to test it.",
	},
	["muse.w12.craft.030"] = {
		"Tug every strap before moving off. It costs a moment. A pack bursting open at the wrong time costs a good deal more.",
		"A quick pull on each buckle before going anywhere. Cheap insurance, the only kind I can afford.",
	},
	["muse.w12.craft.031"] = {
		"A patch never matches. That's the honest part of it: it says something went wrong here, and someone cared enough to fix it.",
		"I like a patch that doesn't pretend. Different cloth, different color, telling the plain truth about a bad day.",
	},
	["muse.w12.craft.033"] = {
		"Each trade wears out its own part of a body. Smiths get the shoulders, tailors the eyes, cobblers the back. I wonder which one would claim mine.",
		"You can tell a trade by how someone stands. Smiths lean into everything; tailors squint at the world as if it needed hemming.",
	},
	["muse.w12.craft.034"] = {
		"If the fighting ever stops, I'd like to learn to make something. Boots, maybe. Something people walk away in.",
		"One day I'll put all this down and learn a trade with my hands. Something that leaves the world one thing richer.",
	},
	["muse.w12.craft.035"] = {
		"Some of my knots would hold a boat to a jetty. Others come undone if spoken to sharply. From outside, there's no telling which.",
		"My knots come in two kinds: the ones that hold forever and the ones that hold until I'm counting on them. They look identical.",
		"A knot that holds and a knot that slips look like twins. The difference only shows when something heavy depends on it.",
	},
	["muse.w12.craft.036"] = {
		"Rust is just neglect you can see. A day of not bothering, written in orange.",
		"Leave anything metal wet and uncared for, and by the next stop it has written a complaint in rust.",
	},
	["muse.w12.craft.037"] = {
		"The quiet sound of a needle going through leather is the most peaceful noise I know. Push, pull, the small creak of the thread.",
		"Push, pull, the soft complaint of waxed thread. If peace had a sound it might be that.",
	},
	["muse.w12.craft.038"] = {
		"Give me a moment with this lace. It's been threatening to quit since the last stop.",
		"Hold that thought. This lace is plotting something.",
	},
	["muse.w12.craft.039"] = {
		"Two of everything that snaps: laces, thread, cord. One of everything that doesn't. That's my whole philosophy of packing.",
		"Spares for whatever breaks, none for whatever lasts. A simple rule, and it beats limping on with a flapping sole.",
	},
	["muse.w12.craft.041"] = {
		"Learning a skill has a dull middle nobody warns about: past the thrill of starting, short of the pleasure of being good.",
		"Starting is exciting and mastery is sweet. In between lies a long, flat stretch of doing it slightly less badly.",
		"The hard part of any skill isn't the beginning. It's the long plain middle, where nothing seems to improve and yet it does.",
	},
	["muse.w12.craft.042"] = {
		"There must be a workshop that makes buckles designed to fail at the worst moment. Business is good.",
		"Buckles don't wear out. They wait. Then they choose.",
		"Buckles are patient, the way only metal can be. They'll wait for exactly the wrong moment.",
	},
	["muse.w12.craft.043"] = {
		"Whatever of mine takes an edge, I keep honed. A dull thing fights its owner before it fights anything else.",
		"Keep keen whatever needs keeping keen. Dullness never helps anybody, least of all whoever is holding it.",
	},
	["muse.w12.craft.045"] = {
		"I can't say who taught me my first knot. It's simply there, like a word whose origin I've lost.",
		"The first knot anyone learns has no teacher they remember. It's just there, under all the others.",
	},
	["muse.w12.craft.046"] = {
		"The first try at anything new comes out ugly. The second is ugly in a more educated way.",
		"Beginners make ugly things. Then, with practice, they make ugly things more quickly. Somewhere after that it gets better.",
	},
	["muse.w12.craft.047"] = {
		"Not pretty. Holds, though. That's the only test that counts.",
		"Ugly mend. Strong mend. I'll take the second word over the first.",
	},
	["muse.w12.craft.048"] = {
		"Everything in the pack has its own place, and my hands know them blind. That's the only house I keep.",
		"The pack is a small house with no door. Each thing has a room, and my hands walk straight to it.",
	},
	["muse.w12.craft.049"] = {
		"Mending gear is the work after the work. Nobody pays for it and nothing goes on without it.",
		"The fight ends, and then the second shift begins: thread, grease, straps, and a sore back over all of it.",
		"After every scrap come the needle and the grease. The fighting is short; the tidying up goes on and on.",
	},
	["muse.w12.craft.050"] = {
		"When everything else is out of my hands, a strap to fix is a mercy. Something I can actually make right.",
		"Big troubles don't fit in the hands. A broken buckle does. Some days I fix one just so as to fix something.",
		"When nothing else will come right, I find a loose strap and make it right. A small victory, but it's mine.",
	},
	["muse.w12.craft.052"] = {
		"Gnomes would add three gears and a spring to this buckle. It would be magnificent, and it would explode.",
		"Hand this strap to a gnome and it comes back with a crank, a whistle and a faint smell of smoke.",
	},
	["muse.w12.craft.053"] = {
		"Put tools away wet and they punish you. Put them away dirty and they punish the next user. Either way, someone pays.",
		"A tool stored dirty is a debt left for later. Whoever opens the kit next inherits it, and that's usually me.",
	},
	["muse.w12.craft.054"] = {
		"Hands that only ever fight would be poor hands. Mine also mend, tie, fold, fasten. I like them better for it.",
		"I'm glad my hands know quieter work too: a stitch, a lace, a folded cloth. It keeps them from being only one thing.",
	},
	["muse.w12.craft.055"] = {
		"I'd mend my reputation too, if anyone sold thread for it.",
		"Patches for cloth, grease for buckles. Nothing yet for dignity.",
	},
	["muse.w12.craft.056"] = {
		"One boot always wears through before the other, one strap always frays first. My gear knows how I move better than I do.",
		"Read the wear on anyone's kit and you have their walk, their lean, their favorite shoulder. Mine gives me away completely.",
	},
	["muse.w12.craft.057"] = {
		"A craft is patience made visible. Every finished thing is a pile of small waits, stacked neatly.",
		"What looks like skill is mostly patience someone was willing to spend where it wouldn't show.",
		"Patience is the true material of any craft. Leather, wood and thread are only the shapes it gets bent into.",
	},
	["muse.w12.craft.059"] = {
		"There's always one last loop of cord left over after tying everything, and I never know what it was meant for.",
		"I tie everything down, step back, and there's a spare length of cord in my hand. Something is loose somewhere, and I'll find out what the hard way.",
	},
	["muse.w12.craft.060"] = {
		"Small repairs, done every day, are how big ones never happen.",
		"Five minutes on a fraying strap now saves a whole day of misery further on.",
	},
	["muse.w12.craft.061"] = {
		"The sound of something snapping is always louder than it should be. A lace, a strap, a cord: a small noise that ends a long story.",
		"A strap gives with a little crack, and that's the end of it. So much service, and such a small sound to close it.",
	},
	["muse.w12.craft.062"] = {
		"Trainers in every town will teach a craft to anyone with the coin and the patience. Only one of those is hard to find.",
		"Any trade can be learned from someone in a town, for a fee in coin. The fee is the cheap part; the hours are what cost.",
	},
	["muse.w12.craft.063"] = {
		"Practice makes better. Perfect never shows up.",
		"Better than yesterday's knot. That's the only goal I set.",
	},
	["muse.w12.craft.065"] = {
		"Waxing thread is the dullest step and the one that matters most. Unwaxed, every stitch frays a little on its way through.",
		"Draw the thread through the wax before sewing. Nobody sees it, the seam never thanks you, and it lasts twice as long.",
	},
	["muse.w12.craft.066"] = {
		"Needles have a gift for hiding. Put one down for a moment and it joins the floor, the grass, or the inside of my glove.",
		"Lose a needle and it turns up a week later, point first, in the one place I put my hand without looking.",
	},
	["muse.w12.craft.067"] = {
		"Loose enough to move, tight enough not to shift. Every strap lives on that line, and so does most of life.",
		"Too tight chafes, too loose slips. Getting a buckle right is a small lesson in getting most things right.",
		"A strap set just right disappears; a strap set wrong is all you think about. Most good work is like that.",
	},
	["muse.w12.craft.068"] = {
		"Some people are at home in a place. Craftsmen are at home in a task: put the work in front of them and they've arrived.",
		"A good worker carries home in the hands. Set them down anywhere with their tools and the spot becomes a workshop.",
		"Home doesn't have to be a place. For a craftsman it's the work itself, carried wherever they go.",
	},
	["muse.w12.craft.070"] = {
		"A craftsman doesn't wait to feel ready. The hands start, and the readiness comes trailing after.",
		"No one ever felt ready before their first real piece of work. They began anyway, and the readiness caught up.",
	},
	["muse.w12.craft.071"] = {
		"Ruin enough leather and you start to understand it. Nobody learns a craft without a pile of failures behind the bench.",
		"Spoiled pieces are the true teachers of any trade. Every master keeps a heap of them somewhere, quietly hidden.",
	},
	["muse.w12.craft.072"] = {
		"There. Fixed. Nobody look at it too hard.",
		"Done, and holding. Best not ask it anything difficult.",
	},
	["muse.w12.craft.073"] = {
		"Nobody watches anyone fix a bootlace. It's one of the few things I do that belongs entirely to me.",
		"Small repairs are private. No one ever stops to see a lace rethreaded, and I like that about them.",
	},
	["muse.w12.craft.074"] = {
		"Anyone can buy good gear. Keeping it good is the part that has to be done by hand, every day, by whoever wears it.",
		"Good gear can be bought. Well-kept gear can't: that's earned, stitch by stitch, by the one who carries it.",
	},
	["muse.w12.craft.076"] = {
		"Skill is mostly a list of mistakes I no longer make. That list is long, and I keep adding to the other one.",
		"Being good at something is a quiet heap of errors left behind. Mine grows slowly, and so does the heap still ahead.",
	},
	["muse.w12.craft.077"] = {
		"A thing breaks in one of two moments: when I'm in a hurry, or when I'm in a terrible hurry.",
		"Gear has a sense of timing any bard would envy. Nothing snaps on a quiet day.",
		"Gear breaks on its own schedule, and that schedule always reads: now, when it's least convenient.",
	},
	["muse.w12.craft.078"] = {
		"Do it slowly until it's right, then do it right until it's quick. Speed is just correctness that stopped hesitating.",
		"Slow and correct first. Quick comes later, on its own, once the hands stop asking permission.",
		"Rushed hands learn rushing. Slow hands learn the work, and the speed arrives as a gift.",
	},
	["muse.w12.craft.079"] = {
		"Lend a needle and it never comes back. I've decided that's how needles travel: from hand to hand, all around the world.",
		"Thread and needles are the one thing nobody returns. Mine are out there somewhere, mending other people's luck.",
	},
	["muse.w12.craft.081"] = {
		"Ten buckles, nine behave. The tenth waits until I'm tired and then refuses to meet its hole.",
		"The last strap of the day is always the stubborn one. It knows I'm worn out and takes full advantage.",
		"Whichever buckle I fasten last is the one that fights me. It can tell when I've nothing left.",
	},
	["muse.w12.craft.082"] = {
		"Every craft begins by copying someone. A touch of one's own comes much later, if it comes at all, and nobody can hurry it.",
		"Learning a trade is borrowing someone else's hands for a long while, until one day they feel like yours.",
	},
	["muse.w12.craft.083"] = {
		"The perfect knot does exist. I tied it once, by accident, and have never managed it since.",
		"One perfect knot, tied by pure accident, and I've been failing to repeat it ever since.",
	},
	["muse.w12.craft.084"] = {
		"Watch a smith at work and count the blows that miss. There aren't any. That's what years buy.",
		"A smith's hammer never seems to wonder where to land. Watching that is worth more than any lesson in words.",
	},
	["muse.w12.craft.085"] = {
		"Gear checked, straps tight, nothing rattling. Now I can think about the rest.",
		"Everything fastened that should be. Good. On to the bigger worries.",
	},
	["muse.w12.craft.086"] = {
		"Some days even a simple knot feels like too much. That's how I know it's time to stop, not the aches.",
		"When my hands fumble a lace I could tie in my sleep, it isn't the lace. It's me, asking for rest in the only voice I'll hear.",
	},
	["muse.w12.craft.088"] = {
		"Whatever the hands make well, they make slowly at first. There is no other road into mastery, and no one has found a shorter.",
		"Mastery has no gate to buy through. Only the long road of the hands, walked until the work stops being work.",
	},
	["muse.w12.craft.089"] = {
		"Grease gets everywhere except where I put it. The buckle stays dry; my sleeve shines like a lord's boot.",
		"One dab of grease, carefully placed on the hinge, and somehow it ends up on my face, my cuff and the bread.",
	},
	["muse.w12.craft.090"] = {
		"Every tool has one job it was made for and a dozen it gets used for. The dozen are where I learn the most.",
		"No tool is used only for what it was meant to do. The clever part is knowing how far to push it before it bends.",
	},
	["muse.w12.craft.091"] = {
		"Broken things don't ask to be mended. Someone simply decides they're worth it. I like being that someone, now and then.",
		"Nothing broken ever asked for help. Mending is a choice made on its behalf, and one of the kinder choices I know.",
		"A mended thing is a small argument against waste and despair alike. I make that argument whenever I can.",
	},
	["muse.w12.craft.092"] = {
		"I'm getting better at this. The knot only fell apart twice.",
		"Progress: this time the stitches nearly line up.",
	},
	["muse.w12.craft.093"] = {
		"Mend first, rest after. The other way round, I never get to the mending.",
		"Repairs before sitting down. Once I sit, nothing gets fixed.",
	},
	["muse.w12.craft.094"] = {
		"Snapped clean through. It served longer than it had any right to.",
		"Gone, finally. That lace did more than its share.",
	},
	["muse.w12.craft.095"] = {
		"Whoever tied this knot was in a hurry. Unfortunately, that was me.",
		"Bad knot. I'd complain to whoever tied it, but I'd only be talking to myself.",
	},
	["muse.w12.craft.096"] = {
		"On the old battlefields the gear lies where it fell, every buckle still fastened. Nobody came back to undo them.",
		"Fallen gear keeps its knots long after its owner is gone. Somebody tied each one carefully, meaning to untie it later.",
	},
	["muse.w12.craft.097"] = {
		"Long before any kingdom, someone sat down and twisted fiber into cord. Everything since has been built on that patient first knot.",
		"The first rope in the world was made by hands that left no name. Every kingdom since has hung on it, one way or another.",
	},
	["muse.w12.craft.098"] = {
		"Before anything that matters, I put my gear in order. It isn't superstition. It's the one part of what's coming that I can make sure of.",
		"Order the kit, then face the day. Whatever comes, it will find every strap where it belongs.",
		"Kit in order, mind in order. I don't know which follows which, only that they move together.",
	},
	["muse.w12.craft.099"] = {
		"Great deeds hang on small fastenings. A song about a hero never mentions the buckle that held, but the hero would.",
		"Every legend I've heard rests on a strap that didn't snap. The songs forget it. Those who lived through it don't.",
	},
	["muse.w12.craft.100"] = {
		"Some things I mend only so I don't have to replace them. A replacement would be a stranger, and I've lost enough familiar things.",
		"I keep repairing the old strap long past sense. A new one would work better and mean nothing.",
	},
	["muse.w12.doubt.001"] = {
		"There's a small voice that says turn back. It's wrong most of the time. The trouble is the times it isn't.",
		"The part of me that wants to turn around is a coward nine times in ten. The tenth time it's the only one with any sense.",
		"I've learned not to obey the voice that says go back, and not to silence it either. Once in a long while it earns its keep.",
	},
	["muse.w12.doubt.002"] = {
		"The lies I tell myself are small and well made: 'it isn't far', 'it'll hold', 'I'll remember'. I believe every one of them, every time.",
		"'Nearly there.' 'That'll hold.' 'I'll remember where I put it.' My favorite lies, and I'm the only one who keeps falling for them.",
	},
	["muse.w12.doubt.003"] = {
		"Sometimes I can feel the regret coming before I've done the thing. I do it anyway, and the regret arrives exactly on time.",
		"Some mistakes announce themselves in advance, like a guest who writes ahead. I open the door to them all the same.",
	},
	["muse.w12.doubt.004"] = {
		"I could be wrong. I'd like that on record now, while it still sounds wise.",
		"Let it be known I said 'I might be wrong' first. That has to count for something later.",
		"Possibly I'm mistaken. Saying so early makes it much more dignified.",
	},
	["muse.w12.doubt.005"] = {
		"The right thing is easy when someone's watching. It's the empty room that asks who I am.",
		"Nobody would ever know. That's exactly the moment that decides what sort of person I am.",
		"With no one looking, honesty costs full price. That's when I find out whether I meant it.",
	},
	["muse.w12.doubt.006"] = {
		"Everyone truly dangerous I've heard of was completely sure. I keep a little doubt about me, the way I'd keep a spare lace.",
		"Certainty is a fine thing in a bridge and a frightening one in a person.",
		"I trust a bridge that's sure of itself. A person, much less.",
	},
	["muse.w12.doubt.007"] = {
		"Going through the pockets of something that was alive a moment ago. I've never found a way to do it that feels decent. I do it anyway.",
		"Every bit of loot belonged to someone a minute before. I try to take it quietly, at least.",
		"There's no polite way to search the fallen. I've stopped looking for one, but I still go about it without a sound.",
	},
	["muse.w12.doubt.008"] = {
		"Asking the way costs one sentence. Not asking has cost me whole hours. Pride keeps the accounts and never shows them.",
		"I'd rather walk an extra mile than admit I'm lost. My feet have opinions about that pride of mine.",
		"Pride would sooner march me in circles than let me ask a stranger which way. Pride doesn't have to do the walking.",
	},
	["muse.w12.doubt.009"] = {
		"When something turns and runs, I let it go. Wise or not, it's the rule I'd want someone to keep with me.",
		"A thing that flees has already lost. Chasing it down is only tidying up, and I'm not that tidy.",
	},
	["muse.w12.doubt.010"] = {
		"Fine. I was wrong. Enjoy it; I won't be saying that again soon.",
		"Yes, all right, I was wrong. Write it down, it's a rare bird.",
		"I was wrong. There. Nobody faint.",
	},
	["muse.w12.doubt.011"] = {
		"My conscience is the one companion that never needs feeding and never once falls behind.",
		"Everything else I carry gets set down at the end of the day. The conscience comes along to bed.",
		"Gear comes off, boots come off. Conscience is the one thing I've never managed to unbuckle.",
	},
	["muse.w12.doubt.012"] = {
		"I'm an excellent advocate for myself. Give me any foolish thing I've done and I'll find it three good reasons by supper.",
		"Nobody argues my side as well as I do. That's exactly why I shouldn't be the judge.",
		"In the court inside my head I'm always acquitted. I'm starting to suspect the judge.",
	},
	["muse.w12.doubt.014"] = {
		"Changing my mind isn't losing. It's the mind earning its keep for once.",
		"A mind that never changes is only a stone with opinions.",
		"A day that ends with every belief I started it with is a day I wasn't paying attention.",
	},
	["muse.w12.doubt.015"] = {
		"The things I fight never get to give their side of it. I try to remember that there was one.",
		"Whatever I've put down had its own reasons for standing in my way. Mine aren't better just because I'm the one still standing.",
	},
	["muse.w12.doubt.016"] = {
		"Everyone who asks me for a favor is certain it's the right thing. I'd love to know who checked their work.",
		"Every request I'm handed comes with total confidence and no proof. I do most of them anyway, and wonder about each one.",
		"People give me tasks as if right and wrong were settled somewhere long ago. I've never once been shown the paperwork.",
	},
	["muse.w12.doubt.017"] = {
		"Most of the people I could forgive will never ask. I do it anyway, quietly, and they never find out they've been let off.",
		"Forgiving someone who doesn't know they need it is a strange, private kindness. Nobody thanks you. It's worth doing all the same.",
	},
	["muse.w12.doubt.018"] = {
		"'Just this once' is the most expensive phrase I know. It never travels alone.",
		"Every bad habit I have was born as a 'just this once'.",
		"Nothing happens only once. 'Just this once' is how the second time gets in the door.",
	},
	["muse.w12.doubt.020"] = {
		"Stubborn and steadfast look the same on the way in. Only the ending tells you which one you were.",
		"Nobody can tell persistence from pigheadedness until it's over. I'll learn which I am at the end, like everyone.",
	},
	["muse.w12.doubt.021"] = {
		"Let me think about it. Then let me think about it from the other side. Then I'll do what I was going to do.",
		"I'll sleep on it. Then I'll do the thing I'd already decided on, but rested.",
	},
	["muse.w12.doubt.022"] = {
		"Every ruin in this world was ordered by someone who felt completely sure. Doubt has never burned a city.",
		"Look at what the certain have done to Azeroth, and doubt starts to look like a virtue.",
		"No one ever opened a way for the Legion while asking 'am I sure?'. The sure ones did that.",
	},
	["muse.w12.doubt.023"] = {
		"I give excellent advice. I've just never been in a position to take it.",
		"If I followed half the advice I hand out, I'd be insufferable and live for a very long time.",
	},
	["muse.w12.doubt.024"] = {
		"A word said in temper can't be fetched back. I've learned to count to ten. Usually I reach four.",
		"Harsh words leave faster than any apology can follow them.",
		"Some words leave the mouth and are halfway across the world before I can call out 'wait'.",
	},
	["muse.w12.doubt.025"] = {
		"The right thing rarely comes cheap. When it does, I check it twice; it's probably something else wearing its coat.",
		"If doing right ever feels easy, I look again. Usually it's comfort borrowing the name.",
	},
	["muse.w12.doubt.026"] = {
		"'Nobody will miss it' is the thief's favorite lullaby. I hum it now and then, and stop before the chorus.",
		"A little voice keeps pointing out that nobody would notice. It's right, and that's the whole problem with it.",
	},
	["muse.w12.doubt.028"] = {
		"Doubt never shows up while I'm busy. It waits for the quiet, sits down beside me and asks its questions politely.",
		"In a fight I'm sure of everything. It's afterward, once I stop moving, that the questions file in one by one.",
	},
	["muse.w12.doubt.029"] = {
		"My conscience and I aren't speaking at the moment. It knows why.",
		"Not now, conscience. Make an appointment.",
		"Yes, conscience, I heard you. I'm choosing not to listen. There's a difference.",
	},
	["muse.w12.doubt.030"] = {
		"Admitting a mistake stings once. Hiding it stings every time somebody gets near the subject.",
		"Say 'my fault' quickly and it's a small thing. Wait, and it grows teeth.",
		"A mistake owned up to fits in a pocket. One hidden keeps growing until it needs a pack of its own.",
	},
	["muse.w12.doubt.031"] = {
		"Weigh two choices long enough and the choosing gets done for you. That's a decision too, and usually the worst one.",
		"Hesitate long enough and the world decides instead. It never asks what I'd have preferred.",
	},
	["muse.w12.doubt.032"] = {
		"'Somebody else will help' is what everyone thinks, all at once, while nobody does.",
		"When someone's in trouble and the crowd waits, each one is sure another will step up. I try to be the other.",
	},
	["muse.w12.doubt.033"] = {
		"Not every fight needed fighting. I just never know which ones until they're over and it's too late to ask.",
		"Some fights I could have walked around. The question comes after, when there's nobody left to answer it.",
	},
	["muse.w12.doubt.034"] = {
		"Pride is a lovely coat until I need to bend down for something.",
		"My pride fits beautifully, as long as I stand perfectly still.",
		"Pride holds my chin up wonderfully. It's no help at all when I need to look where I'm stepping.",
	},
	["muse.w12.doubt.035"] = {
		"Every choice shuts a door I'll never see behind. Most of them I don't miss. A few I hear creaking for a long time.",
		"Choosing one thing is quietly burying all the others. I'd like to think they rest easy.",
	},
	["muse.w12.doubt.036"] = {
		"Remind me why this seemed a good idea. No, don't. I'd rather keep the mystery.",
		"At some point this was a good idea. I was there. I agreed.",
	},
	["muse.w12.doubt.037"] = {
		"Doubt costs me a moment before I act. I've decided that's a fair price for not doing something unforgivable in a hurry.",
		"A little hesitation is a toll worth paying. The things I'd regret most are all quick.",
	},
	["muse.w12.doubt.038"] = {
		"Half the good I do is for bad reasons: pride, boredom, wanting to be thanked. The good gets done regardless. I've decided not to look too closely.",
		"I help for the wrong reasons, probably. The ones I help don't seem to mind.",
	},
	["muse.w12.doubt.040"] = {
		"If I can give a stranger a second chance, I can probably spare one for myself. Probably.",
		"I hand out second chances to everyone but the face I see in still water.",
	},
	["muse.w12.doubt.041"] = {
		"The things I'd have sworn to are the ones that give way. The things I double-checked never do.",
		"Whenever I catch myself saying 'I'd stake my life on it', I go and check. Twice.",
	},
	["muse.w12.doubt.042"] = {
		"Conscience is a slow messenger. It arrives with its letter long after the thing is done, and waits while I read it.",
		"In the moment, my conscience says nothing. It saves the whole speech for afterward, when I can't do a thing about it.",
	},
	["muse.w12.doubt.043"] = {
		"If it's wrong, I'll own it. If it's right, I won't ask for thanks. Either way, it's mine.",
		"My choice, my weight to carry. Nobody else needs to hold the strap.",
	},
	["muse.w12.doubt.044"] = {
		"My second thoughts are always better than my first. If only they'd arrive first.",
		"Second thoughts: wiser, kinder, and always a step behind, like a sensible friend who can't find their boots.",
		"First thoughts rush in and do the damage. Second thoughts turn up later with a broom.",
	},
	["muse.w12.doubt.045"] = {
		"'I'm afraid' is hard to say. 'You were right' is harder. I'm still practicing both.",
		"Of all the things to say aloud, 'you were right' sticks in the throat the longest.",
	},
	["muse.w12.doubt.047"] = {
		"Mercy to something that can never repay it is the only kind I'm sure is honest.",
		"If it can't thank me and can't pay me back, then whatever I give it is the real thing.",
	},
	["muse.w12.doubt.048"] = {
		"I've an excuse ready for almost anything. The only one who never accepts them is me.",
		"My excuses are well rehearsed and beautifully made. Sadly, I'm also the audience, and I've heard them all.",
	},
	["muse.w12.doubt.049"] = {
		"If nobody anywhere is keeping count of what I do, then I'm the only witness. That's more frightening, not less.",
		"Maybe no power above is watching. Then the only one who saw it was me, and I can't be bribed or fooled for long.",
	},
	["muse.w12.doubt.050"] = {
		"Of course I'm sure. I'm also frequently wrong. The two get along fine.",
		"Sure? Completely. Right? That's a separate question.",
	},
	["muse.w12.doubt.051"] = {
		"A promise is only tested when it becomes a nuisance. Before that, keeping it is just good manners.",
		"Anyone keeps their word when it's convenient. The day it chafes is the first day it counts.",
		"Keeping a promise that suits me proves nothing. Only the ones that pinch tell me anything.",
	},
	["muse.w12.doubt.052"] = {
		"Certainty is heavy armor: nothing gets through, and I can't turn my head.",
		"Being sure of everything is like wearing a helm with no eye slits. Very safe. Very stupid.",
	},
	["muse.w12.doubt.053"] = {
		"On a bad day I'm short with people who've done nothing. Somewhere a stranger is still carrying a sharp word of mine, and I'd like it back.",
		"Tired, I get curt with whoever is nearest. They walk off with it, and I never learn their names to make it right.",
	},
	["muse.w12.doubt.055"] = {
		"Not every hand I offer was wanted. Some help is only me wanting to feel useful, wearing a kinder face.",
		"Before I rush to lend a hand, one small question: is this for them, or for me? The answer isn't always flattering.",
	},
	["muse.w12.doubt.056"] = {
		"If I fall somewhere and never get up, I hope the last thing I did was something I'd sign my name to.",
		"I'd like whatever I do last to be something I wouldn't mind being remembered by. That's reason enough to choose carefully, hour by hour.",
	},
	["muse.w12.doubt.057"] = {
		"I'm completely sure of things right up until someone asks me why.",
		"Certainty holds up beautifully until the word 'why' walks in.",
	},
	["muse.w12.doubt.058"] = {
		"I don't need to be certain before I act. I only need to be ready to be wrong, and to mend it.",
		"Waiting to be sure is a fine way to never do anything. I'd rather move, err, and fix what I break.",
	},
	["muse.w12.doubt.059"] = {
		"No. Not like that. I'm better than that, or I mean to be.",
		"Easy. That's not who I want to be. Try it properly.",
	},
	["muse.w12.doubt.060"] = {
		"Lying to others takes effort and a good memory. Lying to myself takes neither, which is why I do so much more of it.",
		"I'm a hopeless liar with other people. With myself, I'm a natural.",
	},
	["muse.w12.doubt.061"] = {
		"Some days I honestly can't tell whether I'm doing good or only keeping busy. The days look the same from inside.",
		"Am I making anything better, or just moving? From the inside, the two feel identical.",
	},
	["muse.w12.doubt.062"] = {
		"Being right and being wrong feel exactly alike from the inside. That's what makes certainty so useless as a guide.",
		"Wrong feels just like right until the moment it doesn't. Certainty can't tell them apart either.",
		"Mistaken and correct wear the same face when I'm the one wearing them.",
	},
	["muse.w12.doubt.064"] = {
		"'I was told to' has never once made anything right. Whoever does the deed carries it, whoever gave the word.",
		"Orders can tell my hands what to do. They can't lift the weight off afterward.",
	},
	["muse.w12.doubt.065"] = {
		"I'm quite proud of my humility. I've a feeling that's not how it works.",
		"Nobody is more modest than I am, and I'll tell that to anyone. Something's off there.",
	},
	["muse.w12.doubt.066"] = {
		"Forgiving isn't done once. It has to be done over each time the memory knocks, and some days I manage it.",
		"I forgave it. Then it came to mind, and I had to forgive it a second time. That's how it goes, I think, until it stops.",
	},
	["muse.w12.doubt.067"] = {
		"I've been arguing with myself for some time now. I'm winning and losing in equal measure, and both sides are tired.",
		"Two of me are disagreeing about something. The third is just trying to get some peace.",
	},
	["muse.w12.doubt.068"] = {
		"Right or wrong, it's decided. I'll know which soon enough.",
		"Decided. If it's a mistake, at least it's a whole-hearted one.",
	},
	["muse.w12.doubt.069"] = {
		"Hard to find anyone surer of being right than the Scarlet Crusade. That alone should make a person nervous about being sure.",
		"The Scarlet Crusade has never had a doubt, by all accounts. Look what it's made of them.",
	},
	["muse.w12.doubt.070"] = {
		"The loud voices in my head are usually wrong. The right one tends to mumble.",
		"When my thoughts start shouting, I look for the quiet one underneath. It's usually the one worth hearing.",
		"My thoughts get loud when they're unsure of themselves. The sensible ones never raise their voice.",
	},
	["muse.w12.doubt.071"] = {
		"Whenever I try to balance a bad deed with a good one, the good one goes fine and the bad one stays exactly where it was.",
		"Good deeds don't cancel bad ones. They just stand next to them, looking awkward.",
	},
	["muse.w12.doubt.072"] = {
		"Revenge always looks like justice from a distance. Up close it has my face and nobody else's.",
		"Getting even sounds tidy. It never is. There's always a remainder, and it's always mine.",
	},
	["muse.w12.doubt.074"] = {
		"Those who serve the Light say it sees into every heart. If so, I hope it weighs what I meant as well as what I managed.",
		"If the Light truly reads intentions, as its priests claim, then I'm counting on the reading being generous.",
	},
	["muse.w12.doubt.075"] = {
		"The moment I feel better than someone, I brace myself. The world corrects that sort of thing fast, and without kindness.",
		"Feel above anyone and the ground arranges a lesson. It's never subtle about it.",
	},
	["muse.w12.doubt.076"] = {
		"There's a moment to say 'that isn't right', and it's always short and always awkward. Miss it and the silence agrees on your behalf.",
		"Silence takes a side. I wish it didn't, but it does, every time I let something pass.",
	},
	["muse.w12.doubt.077"] = {
		"Am I sure? Ask me in an hour. Or don't; I'll have changed my mind.",
		"I'm absolutely certain. Give or take.",
	},
	["muse.w12.doubt.078"] = {
		"Doubt before a choice is a lantern. Doubt after it is just a stone in the pack.",
		"Hesitating beforehand lights the way. Second-guessing afterward is another stone to carry.",
	},
	["muse.w12.doubt.079"] = {
		"I notice I argue loudest when I'm least sure. A useful thing to know about oneself, and an annoying one.",
		"The harder I dig my heels in, the likelier it is I've lost the argument and haven't noticed.",
	},
	["muse.w12.doubt.080"] = {
		"Hardness is the easy road. Any fool can manage it. Gentleness takes more nerve than I usually have to spare.",
		"It's easy to be harsh; the world practically hands it to you. Kindness takes real effort, the uphill kind.",
		"Anyone can be a wall. Being a door that opens takes far more out of a person.",
	},
	["muse.w12.doubt.082"] = {
		"'I don't know' is the most honest sentence I can say. It's also the one I avoid hardest.",
		"Nothing I say is as true, or as rare, as 'I don't know'.",
	},
	["muse.w12.doubt.083"] = {
		"My head says one thing, my gut says another, and my feet settle it by wandering off in a third direction.",
		"Head and gut are deadlocked. The feet, as usual, have stopped waiting for a verdict.",
	},
	["muse.w12.doubt.084"] = {
		"The choices that weigh most aren't the ones I'd pay for. They're the ones where someone else would.",
		"Risking my own neck is simple arithmetic. Risking anyone else's turns every choice to lead.",
	},
	["muse.w12.doubt.085"] = {
		"Sorry. That one wasn't fair, whoever it landed on.",
		"If that came out hard, I take it back. Even if it didn't.",
	},
	["muse.w12.doubt.086"] = {
		"I'd rather do the right thing clumsily than the wrong thing with style.",
		"Good done badly still counts. Harm done gracefully is still harm.",
		"Doing right without grace still beats doing wrong with all the polish in the world.",
	},
	["muse.w12.doubt.087"] = {
		"The things I'm surest of are mostly the things I've never once checked.",
		"Pick whatever I believe most firmly, and I'll bet it's the thing I've examined least.",
	},
	["muse.w12.doubt.088"] = {
		"I don't need to die certain I was right. It would be enough to know I kept asking.",
		"Whatever my last thought is, I hope it isn't 'I was sure'. I'd rather it were 'I tried to see'.",
	},
	["muse.w12.doubt.090"] = {
		"Whoever I was an hour ago made the best call they could with what they knew. It isn't fair to judge it with what I know now.",
		"In hindsight the choice looks foolish. At the time, with what I could see, it looked sound. Both are true.",
	},
	["muse.w12.doubt.091"] = {
		"I'd be wonderfully patient if nothing ever tested it.",
		"My virtues are in excellent condition. They've hardly been used.",
		"My patience is flawless, as long as nothing whatsoever goes wrong.",
	},
	["muse.w12.doubt.092"] = {
		"Some choices can't be handed to anyone else. They're heavier for it, and somehow they're also more mine.",
		"There's no one to ask, and maybe that's right. Some questions only fit one pair of hands.",
	},
	["muse.w12.doubt.093"] = {
		"Don't tell me I was right. It only encourages me.",
		"Should I turn out to be right, keep it quiet. I'm unbearable enough as it is.",
	},
	["muse.w12.doubt.098"] = {
		"One more look. Not that I doubt it. I doubt me.",
		"I'll check it once more. It's not the thing I don't trust.",
	},
	["muse.w12.doubt.099"] = {
		"All right, all right. I'll go back and do it properly.",
		"Fine. I'll do the decent thing. Grumbling, but I'll do it.",
	},
	["muse.w12.humor.001"] = {
		"There's a chicken wherever I go. Battlefields, crossroads, the steps of a temple. Nobody owns it and nobody questions it.",
		"Wars, plagues, burned villages, and somehow the chickens come through all of it without a scratch. I'd love to know their secret.",
		"Every great event I've heard of had a chicken somewhere at the edge of it, pecking away, entirely unimpressed.",
	},
	["muse.w12.humor.002"] = {
		"No chicken has ever looked at me with anything but contempt. I'd like to know what they've been told.",
		"Chickens study me sideways, one eye at a time, as if each eye wanted its own opinion. Neither opinion is flattering.",
	},
	["muse.w12.humor.003"] = {
		"Have I offended any chickens lately? No? Good. Then my luck should hold.",
		"Rule one: never anger a chicken. I don't know why. It just feels important.",
	},
	["muse.w12.humor.004"] = {
		"Whoever builds towers in this world has never climbed one with a full pack. Or they did, once, and built the next one taller out of spite.",
		"Wizards live at the top of towers so that visitors arrive too tired to argue. I'm nearly sure of it.",
		"Halfway up any spiral stair I lose count, then heart, then all sense of which way the door was.",
	},
	["muse.w12.humor.005"] = {
		"A ladder is a staircase that lost its nerve halfway through being built.",
		"I trust ladders the way I trust strangers' dogs: politely, from the bottom, and ready to let go.",
	},
	["muse.w12.humor.006"] = {
		"Anyone who wears long robes must have a private arrangement with stairs. I'd have gone down in a heap by the second landing.",
		"Long robes and steep steps: I've never seen anyone combine the two and stay dignified for the whole flight.",
	},
	["muse.w12.humor.007"] = {
		"The fashion for enormous shoulder pieces will end the day someone gets wedged in a doorway in front of witnesses.",
		"Some of the shoulder armor I see about could shelter a family of four. I wonder how the wearers get through doors, sideways or not at all.",
	},
	["muse.w12.humor.008"] = {
		"Some helmets look like a bucket that was promoted well above its talents.",
		"Half the helmets in this world were designed by someone who'd only ever heard a head described.",
	},
	["muse.w12.humor.009"] = {
		"Every strap and buckle I wear creaks in its own key. Sneaking up on anything is out of the question; I arrive like a peddler's cart full of pots.",
		"When I try to move quietly, the world produces a dry twig, a loose board or a bucket, always exactly under my foot.",
	},
	["muse.w12.humor.010"] = {
		"The key to a locked door is always on the far side of it. Whoever arranges these things has a very small, very mean sense of humor.",
		"Locked door, key behind it. I'd admire the neatness of the trick if I weren't the one left standing in the corridor.",
		"I've given up trying doors in the order that makes sense. The right key turns up in the last place, on the wrong side, without fail.",
	},
	["muse.w12.humor.011"] = {
		"There are keys rattling in my pack that open nothing I've ever found. I keep them anyway. The day I throw them out, the right door will turn up.",
		"Somewhere a lock is waiting for one of the odd keys I carry. It can go on waiting; I'm not throwing anything out.",
	},
	["muse.w12.humor.012"] = {
		"Rule of old places: never pull a lever just to see what it does. I always pull the lever just to see what it does.",
		"A lever on a wall asks one question, and I've never had the strength of character to leave it unanswered.",
	},
	["muse.w12.humor.013"] = {
		"Doors in this world never say whether they open in or out. I've lost a little dignity to every one of them.",
		"Push, pull, lift, shove: the door accepts one answer and gives no hints.",
	},
	["muse.w12.humor.014"] = {
		"A gate that squeaks only when I'm trying to be quiet is not a gate. It's an informer.",
		"Hinges keep silent all day and save their scream for the one moment I need them to hold their tongue.",
	},
	["muse.w12.humor.015"] = {
		"A sign that says 'keep out' is the most effective invitation anyone has ever painted.",
		"Nobody has ever stayed out of anywhere because a board told them to. The board is mostly a map of where the interesting things are.",
		"Write 'danger' on a door and you've as good as drawn the way to it.",
	},
	["muse.w12.humor.016"] = {
		"Whoever's in charge of a dangerous place always lives at the very back of it. Not once has the master of a lair kept rooms by the front door.",
		"The thing in charge is always at the far end, past every guard, trap and stair. Nobody wicked ever wants to sit near the entrance, where the drafts are.",
		"Never once have I heard of a dark lord who kept his throne room near the door. They all want the long walk, the stairs, the drama.",
	},
	["muse.w12.humor.017"] = {
		"Ancient tombs, sealed for ages, and the torches on the walls still lit. Somebody's been popping in to change them, and they've never once left a note.",
		"Nobody has set foot in that sort of crypt for a thousand years, yet the sconces are all burning. I'd love to meet the caretaker.",
	},
	["muse.w12.humor.018"] = {
		"Every ancient evil I've heard of was sealed away by someone who didn't check the lock twice.",
		"The heroes of old were very good at sealing horrors away and very poor at writing 'do not open' in any language that lasted.",
	},
	["muse.w12.humor.019"] = {
		"Why does every cult meet underground? Just once I'd like to find one plotting the end of the world in a bright, pleasant room upstairs.",
		"Dark cults have no imagination about lodgings. Cellars, caves, crypts. Never a pleasant loft with a view.",
	},
	["muse.w12.humor.020"] = {
		"Cultists all wear the same robes. Somewhere there's a tailor sewing for the end of the world who never asks what the order is for.",
		"Same cut, same color, same deep hood. Fashion is the one thing every doomsday sect agrees on.",
	},
	["muse.w12.humor.021"] = {
		"Villains love to explain the whole plan before anything happens. Rude to interrupt, I suppose, but it does go on.",
		"Give the wicked an audience that can't leave and they'll talk for an hour. Nobody ever teaches them to be brief.",
	},
	["muse.w12.humor.022"] = {
		"Behind every trap in an old ruin there was once a builder, very pleased with the idea, who never had to walk through it.",
		"Spikes in the floor, darts in the walls: someone took real pride in this. I'd pass on my compliments, if they weren't dust by now.",
	},
	["muse.w12.humor.023"] = {
		"Most of an ancient stronghold is corridors. Somebody long dead loved corridors more than anything, and built nothing else.",
		"Whoever designs dungeons has a passion for long corridors and a grudge against signposts.",
	},
	["muse.w12.humor.024"] = {
		"Caves all smell as if something lived there once and had strong opinions about tidiness, every one of them against.",
		"No cave smells of anything pleasant. The nose goes in first, and it always wants to turn back.",
	},
	["muse.w12.humor.025"] = {
		"I can't look down a well without expecting something to look back up. So far, only my own face, which is bad enough.",
		"Wells are deep, dark and quiet, which is how I'd describe trouble with a bucket on top.",
	},
	["muse.w12.humor.026"] = {
		"The only books worth reading are always written in a script I can't make out. The ones I can read are about the proper care of hinges.",
		"Ancient writings never say anything useful like 'the way out is on the left'. It's always prophecy, never directions.",
	},
	["muse.w12.humor.027"] = {
		"Nothing in this world stays cleared. Empty a camp, turn round twice, and they've all moved back in as if nothing happened.",
		"I'd swear the same creatures come back to the same spots, like regulars to a tavern. Someone keeps reopening the place.",
		"Whatever I chase off is back by the time I've laced a boot. The same ones, I'd swear, with a fresh attitude.",
	},
	["muse.w12.humor.028"] = {
		"Things chase me just so far and then turn back, as if they'd reached the edge of their property and the rest was somebody else's problem.",
		"Nothing chases me for long. Past a certain point they stop, look at me with disgust, and trot home. There must be boundary stones I can't see.",
		"A thing chases me, snarling, then stops dead as if it had just remembered leaving something on the fire.",
	},
	["muse.w12.humor.029"] = {
		"Only one in five of anything ever seems to be carrying the part I need. The rest must leave theirs at home.",
		"All those wolves, and hardly a pelt fit to use among them. The others must have been wearing borrowed ones.",
		"It's always the last one that carries what I came for. The first nine were only there to lower my opinion of the world.",
	},
	["muse.w12.humor.030"] = {
		"Anything with a name is trouble. A nameless wolf only wants to be left alone; a wolf with a name has a reputation to keep up.",
		"Beware of anything that's been given a name. Somebody gave it one for a reason, and the reason was rarely affection.",
	},
	["muse.w12.humor.031"] = {
		"Some of the things out there are far bigger than their kind has any right to be. Somebody has been letting them grow without supervision.",
		"Every so often there's a spider the size of a cart, or a boar the size of a hut. Nature has no sense of proportion and nobody to point it out.",
	},
	["muse.w12.humor.032"] = {
		"Kobolds dig everywhere and seem very sure of themselves. Nobody has ever found out where they think they're going.",
		"Give a kobold a tunnel and it'll dig another off the side of it. I admire the commitment more than the planning.",
	},
	["muse.w12.humor.033"] = {
		"An ooze has no face, no mind and no plans, and still manages to look smug.",
		"I've never understood what an ooze wants. I suspect the ooze hasn't either, and it's happier for it.",
	},
	["muse.w12.humor.034"] = {
		"To some things out there I'm a terror, and to others I'm a light meal. The trick is remembering which is which before I say hello.",
		"There are creatures that flee at the sight of me and creatures that cheer right up. I'd like a warning sign on each.",
	},
	["muse.w12.humor.035"] = {
		"Funny how the world always sends harder things just as I'm getting better. The timing is very suspicious.",
		"I get a little stronger and, somewhere, the trouble gets a little bigger to match. I'd like to meet whoever keeps the two in step.",
	},
	["muse.w12.humor.036"] = {
		"Frogs sit about with the look of something that worked life out long ago and isn't telling.",
		"A frog on a stone looks more at peace than any sage I've heard of. It also eats flies, so perhaps that's the price.",
	},
	["muse.w12.humor.037"] = {
		"Squirrels always seem to be scolding someone, and when I'm near, it's me. I'd like at least to hear the charge.",
		"Small creatures chatter at me from the branches as if I'd trodden on something of theirs. I probably have.",
	},
	["muse.w12.humor.038"] = {
		"Rabbits bolt the moment they see me, as though they'd heard something. I've done nothing to a rabbit. Not that they'd believe me.",
		"A reputation runs ahead of me, and only the rabbits seem to have read it.",
	},
	["muse.w12.humor.039"] = {
		"A cat will look at me as if I owe it an explanation, and somehow I always feel I do.",
		"Cats size me up, find me wanting, and go back to washing. It's a fair review.",
	},
	["muse.w12.humor.040"] = {
		"Every fly within a mile seems to know my name, and wants to discuss it right beside my ear.",
		"I can face whatever's out there, but one fly circling my head can bring me to the edge of surrender.",
	},
	["muse.w12.humor.041"] = {
		"Stray dogs follow me for miles and then leave without a word, like a disappointed escort.",
		"Strays are happy to walk with me until something more interesting smells. I know my place.",
	},
	["muse.w12.humor.042"] = {
		"Crows watch me the way old aunts watch a wedding: missing nothing, approving of less.",
		"There's always a crow on some fence post, keeping count of my mistakes. It must need a great many fence posts.",
	},
	["muse.w12.humor.043"] = {
		"I'll walk into a den of who-knows-what without blinking and then yelp at a moth. My courage keeps odd hours.",
		"Big terrors I meet with a straight face. It's the small ones, the thing that scuttles past a boot, that get a noise out of me.",
	},
	["muse.w12.humor.044"] = {
		"Half my errands are carrying a letter from one person to another who lives close enough to shout.",
		"Some folk would rather send a stranger down the lane with a note than lean out of the door and call.",
	},
	["muse.w12.humor.045"] = {
		"'Don't open it.' Every sealed parcel comes with those words, and every time the curiosity weighs more than the parcel.",
		"Hand me a box and tell me not to look inside, and you've given me two loads to carry.",
	},
	["muse.w12.humor.046"] = {
		"A letter can cross the whole world in an hour. It takes me a week and I arrive muddier. I'm being outrun by paper.",
		"The post moves faster than I do and never needs a rest. Perhaps I should fold myself up and send myself.",
		"My letters reach their reader before I've finished walking to the next town. Ink, it turns out, has better legs than mine.",
	},
	["muse.w12.humor.047"] = {
		"The little stone that carries me back to an inn never asks whether I'd like a different inn. It has its favorite and that's that.",
		"One touch of a smooth stone and I'm back at the same hearth, the same stool, the same nod from the innkeeper. Magic, and somehow still a habit.",
	},
	["muse.w12.humor.048"] = {
		"Ships pull away the moment I come in sight of the dock. It's a gift, of sorts. Not one I asked for.",
		"Right now a ship is drawing away from some pier, and on the pier someone is running and shouting, too late. For once it isn't me. Small mercies.",
	},
	["muse.w12.humor.049"] = {
		"Deep water has a way of telling me, exactly and to the ounce, what my gear weighs.",
		"Nobody admits to learning to swim in full kit. Everybody learns, and nobody tells.",
	},
	["muse.w12.humor.050"] = {
		"I catch myself hopping as I walk, for no reason at all, as though it got me there faster. It doesn't. I keep doing it.",
		"There's a small, foolish part of me that jumps over nothing while walking. The rest of me pretends not to know it.",
	},
	["muse.w12.humor.051"] = {
		"Nobody in this line of work ever walks. Everything is done at a run, as if every errand were on fire.",
		"I've forgotten how to stroll. I cross a whole town at full tilt just to drop off a letter.",
	},
	["muse.w12.humor.052"] = {
		"The faces on wanted posters could be anyone. Squint, and on a bad day, one of them is me.",
		"I always read the wanted notices, just to be sure. You never know what you've done until somebody draws it.",
	},
	["muse.w12.humor.053"] = {
		"The one creature I've been hunting for an hour always falls to some stranger a moment before I reach it.",
		"Somewhere right now a handful of strangers stand round an empty patch of ground, all waiting for the same rare beast, each pretending not to.",
		"Hunt something rare long enough and it falls to a passer-by who wasn't even looking for it. The passer-by never says thank you.",
	},
	["muse.w12.humor.054"] = {
		"I've seen two grown adventurers sprint across a field for the same flower. Neither looked at the other. Both lost their dignity.",
		"The fiercest race in the world is two strangers who've spotted the same patch of herbs. No rules, no words, no shame.",
	},
	["muse.w12.humor.055"] = {
		"Outside any town gate there are two people trying very hard to flatten each other, very politely, and a small crowd giving advice.",
		"A friendly duel: two strangers, a bow, then a sincere effort to knock each other flat. Then another bow. I'll never understand it.",
	},
	["muse.w12.humor.056"] = {
		"People in this world lose the strangest things in the most dangerous places, and then stand very still and wait for help.",
		"How does anyone drop a ring at the bottom of a lake full of teeth? And why is it always the ring their grandmother gave them?",
	},
	["muse.w12.humor.057"] = {
		"Help someone once and you'll hear 'thank you'. Help them twice and you'll hear 'while you're here...'",
		"Gratitude spoils quickly. By the second favor it has already turned into another errand.",
	},
	["muse.w12.humor.058"] = {
		"The finest things I find are always made for somebody else entirely. Wrong shape, wrong use, and beautiful in a way that feels personal.",
		"Treasure has a cruel streak: it turns up gleaming, perfect, and meant for hands of a completely different trade.",
	},
	["muse.w12.humor.059"] = {
		"There's a pebble in my boot that has traveled further than most heroes. It can stay until it learns humility.",
		"The pebble in my boot has seen more of the world than many kings. I'd shake it out, but it seems to have earned its place.",
	},
	["muse.w12.humor.060"] = {
		"Every crate in the world keeps one nail standing proud, waiting patiently for my hand.",
		"Somewhere a carpenter left a single nail sticking out of a crate, and it has been waiting for my sleeve ever since.",
	},
	["muse.w12.humor.061"] = {
		"A candle lights at once when I don't need it and sulks when I do. It's that sort of relationship.",
		"Tinder catches beautifully for anyone watching and never when nobody's about. I think it only performs for an audience.",
	},
	["muse.w12.humor.062"] = {
		"Rope comes in two lengths: too short, and tangled.",
		"However much rope I carry, the gap is always an arm's length wider. Rope and distance have come to an arrangement.",
		"No rope I cut is ever the length I needed. It senses the measuring and shrinks out of spite.",
	},
	["muse.w12.humor.063"] = {
		"Puddles all look shallow until I'm standing in one. They're the most convincing liars I know.",
		"The one puddle I step in is always the deep one. The world must keep it there for me.",
	},
	["muse.w12.humor.064"] = {
		"A branch pushed aside is a branch that will come back for my face. Not one has ever missed the appointment.",
		"Brush past a nettle once and it seems to tell the others. The whole hedge knows me now.",
	},
	["muse.w12.humor.065"] = {
		"Some people have a gift for finding the one dry spot to sit. I have the opposite gift, and I use it daily.",
		"Sit down anywhere and the ground turns out to be damp in exactly the shape of me.",
	},
	["muse.w12.humor.066"] = {
		"Gloves leave one at a time, never in pairs. Somewhere the lost ones have founded a village and all live there, left-handed.",
		"I've never lost a pair of anything. Only ever one of a pair, which is far more spiteful.",
	},
	["muse.w12.humor.067"] = {
		"Washing anything on the road only moves the dirt to a new address.",
		"I scrub, I rinse, I wring it out, and the stain looks back at me rested and refreshed.",
	},
	["muse.w12.humor.068"] = {
		"A good hat makes anyone look wise from far off. Up close, I'm afraid, it's still me underneath.",
		"I'm told a fine hat lends dignity. It lends it, certainly. Then the first low branch takes it back.",
	},
	["muse.w12.humor.069"] = {
		"Caught sight of my face in still water and nodded to the stranger before I knew who it was. Polite of me, at least.",
		"Any reflection I catch on the road looks like someone who's been through something. Which is fair. I'd still prefer a kinder pond.",
	},
	["muse.w12.humor.070"] = {
		"If luck came as dice, mine would have been weighted by somebody who dislikes me personally.",
		"Dice have never once been on my side. I think they talk to each other.",
	},
	["muse.w12.humor.071"] = {
		"I dance like someone arguing with a bee. Nobody has asked me twice.",
		"Whenever there's music, my feet volunteer before I can stop them, and then abandon me halfway.",
	},
	["muse.w12.humor.072"] = {
		"Wave at a stranger, get nothing back, and spend the next mile pretending it was a stretch.",
		"There's no small humiliation quite like a greeting nobody returns. I usually turn mine into scratching my head.",
	},
	["muse.w12.humor.073"] = {
		"I've sworn off ever touching strange mushrooms. I swear it about once a week.",
		"My solemn vows last until the next shiny thing. They're very solemn while they last.",
	},
	["muse.w12.humor.074"] = {
		"A heroic pose takes a lifted chin, a steady gaze and a cloak flapping behind. I manage the chin.",
		"In the paintings, heroes stand on rocks with their hair streaming. When I stand on a rock, the rock wobbles.",
	},
	["muse.w12.humor.075"] = {
		"The splinter is out. Let it be told in every hall how, after a long and bitter struggle, it yielded.",
		"Victory. The splinter has been driven from my thumb, and peace returns to the realm.",
	},
	["muse.w12.humor.076"] = {
		"Somewhere a straw dummy has taken more blows than any soldier alive and never once complained. If anyone deserves a medal, it's that sack.",
		"I have a deep respect for practice dummies. They stand, they take it, they ask for nothing. Better character than most people.",
		"The practice dummy never flinches, never hits back, never sulks. There are kings with less composure.",
	},
	["muse.w12.humor.077"] = {
		"Learn one new trick and for a while everything looks like a chance to use it. It must be very tiring to watch.",
		"There's no one more insufferable than me the week after I've learned something new. Luckily the world is big enough to keep out of my way.",
	},
	["muse.w12.humor.078"] = {
		"Anything built by a gnome has two settings, and one of them is smoke.",
		"Gnomish devices are marvels. They just don't always agree on what they're marvels of.",
	},
	["muse.w12.humor.079"] = {
		"The people who build those great rope lifts have more faith in rope than I have in anything.",
		"When the basket sways out over the drop on its one cable, I discover I hold opinions about knots I never knew I had.",
	},
	["muse.w12.humor.080"] = {
		"Champion, they call me. I still check over my shoulder for the real one.",
		"'Hero.' Kind of them. I'll pass it on if I ever meet one.",
	},
	["muse.w12.humor.081"] = {
		"By the authority vested in me by nobody at all, I declare this a rest.",
		"Hear me, world: I proclaim a short pause. Objections may be lodged later, in writing.",
	},
	["muse.w12.humor.082"] = {
		"Don't mind me. My left foot and I are settling a difference of opinion.",
		"Nothing's wrong. The left foot went its own way, and I'm having words with it.",
	},
	["muse.w12.humor.083"] = {
		"Let it be known: I was being careful. The world simply didn't cooperate.",
		"I did everything right. The world just had other plans, and louder ones.",
	},
	["muse.w12.humor.084"] = {
		"Every time I say 'how hard can it be', the world takes it as a real question.",
		"Notice to the world: 'how hard can it be' was not an invitation.",
	},
	["muse.w12.humor.085"] = {
		"Some days I'm the hero of the tale. Most days I'm the one the tale walks straight past.",
		"Every tale needs someone in the background holding a bucket. I'm good with the bucket.",
	},
	["muse.w12.humor.086"] = {
		"I am a very dignified person. It's just that the world keeps tripping me.",
		"Dignity? Plenty of it. It's just never where I left it.",
	},
	["muse.w12.humor.087"] = {
		"Brave? I'd call it poorly informed and quick on my feet.",
		"People say I've got nerve. Mostly people who weren't there.",
	},
	["muse.w12.humor.088"] = {
		"I have an excellent plan. Step one: don't fall in.",
		"The plan is simple. Stay out of the water, the fire and the trouble. One out of three so far.",
	},
	["muse.w12.humor.089"] = {
		"Mud. On everything. How does mud get inside a closed pocket?",
		"I have found mud in places mud has no business knowing about.",
	},
	["muse.w12.humor.090"] = {
		"I'll be brave in a moment. I'm just letting the moment arrive first.",
		"My courage is on its way. It's taking the scenic route.",
	},
	["muse.w12.humor.091"] = {
		"I've given up on looking impressive. These days I aim for upright.",
		"Impressive is for other people. I specialize in staying on my feet.",
	},
	["muse.w12.hunger.001"] = {
		"Grief takes the appetite first. A few days on it hands it back without a word, and eating feels like a small betrayal.",
		"When something is lost, food tastes of nothing for a while. I eat anyway. The body hasn't heard the news.",
		"Sorrow and hunger won't share a room. One of them has to leave, and it's never sorrow that goes first.",
	},
	["muse.w12.hunger.002"] = {
		"Good news is the finest seasoning there is. The same crust tastes different on a lucky day.",
		"Funny how gladness reaches the tongue. When things go right, even a dry biscuit seems to have been made with care.",
		"A good day seasons everything on the plate. No spice jar has ever managed that.",
	},
	["muse.w12.hunger.003"] = {
		"No smell is crueler than another person's onions frying when my own pot is empty.",
		"The worst torment I know isn't a wound. It's somebody else's supper drifting past an empty stomach.",
	},
	["muse.w12.hunger.005"] = {
		"Some people cut the rind off their cheese. I've never had that kind of money.",
		"Whether cheese rind is food depends on how far you are from a market. On the move, it's food.",
	},
	["muse.w12.hunger.006"] = {
		"The scrapings at the bottom of the pot, a little burnt, are the best part. Every cook knows it, and every cook keeps them.",
		"Where the stew catches the pot, a crust forms. Whoever gets to scrape it off has won something.",
		"Burnt at the bottom is the cook's mistake and the guest's treasure. I'd quarrel over that pot if anyone tried me.",
	},
	["muse.w12.hunger.007"] = {
		"Put a plate between strangers and the last piece will sit there forever. Politeness is a strong force, nearly as strong as hunger.",
		"Nobody ever takes the last bite from a shared dish. It just sits there, guarded by everyone's good manners.",
	},
	["muse.w12.hunger.008"] = {
		"Every apple I pack arrives bruised on the same side, the side pressed against everything else. I know how it feels.",
		"Fruit isn't built for travel. It reaches the bottom of the bag looking like it lost a fight. I sympathize.",
	},
	["muse.w12.hunger.009"] = {
		"A hungry cook and a slow fire are natural enemies. The fire always wins.",
		"Nothing cooks slower than supper when I'm starving. I'd swear the flames do it on purpose.",
		"Hunger stands over the pot and the fire takes its time. Those two have never agreed on a schedule.",
	},
	["muse.w12.hunger.010"] = {
		"Tea can't be hurried. Pour it too soon and it tastes of water; leave it too long and it tastes of regret. Somewhere between lies most of what I know about patience.",
		"Steeping tea is a small lesson in waiting. Too early, nothing. Too late, bitterness. The good cup lives in the narrow gap between.",
	},
	["muse.w12.hunger.011"] = {
		"I always save some for later. Later always arrives about ten minutes afterward.",
		"Leftovers are a lovely idea that has never once survived until the next meal.",
	},
	["muse.w12.hunger.012"] = {
		"Hunger nags. Thirst gives orders. I've learned which of the two to obey first.",
		"A body can bargain with hunger for days. Thirst doesn't bargain; it takes over the thinking.",
		"Go without food and the mind wanders. Go without water and the mind has only one subject left.",
	},
	["muse.w12.hunger.013"] = {
		"Salted meat keeps forever and makes me drink like a sponge. So I carry more water, which weighs more than the meat. Nobody wins.",
		"Dried, salted, built to last: road meat would be perfect if every bite didn't cost a mouthful of water.",
	},
	["muse.w12.hunger.014"] = {
		"Eat what's in front of you and thank whoever put it there. That's most of good manners, anywhere.",
		"Clean the bowl. Whatever else they say about you, they'll say you were a good guest.",
	},
	["muse.w12.hunger.015"] = {
		"Busy enough, I forget to eat entirely. Then my hands start to shake and the reminder arrives all at once.",
		"Hunger is patient for a while. Then it stops tapping my shoulder and starts kicking the door.",
		"I can go half a day without a thought of food, and then think of nothing else for the next hour.",
	},
	["muse.w12.hunger.016"] = {
		"Nothing makes me hungrier than a close call. The moment the danger's gone, my stomach comes back and wants an explanation.",
		"Fear shuts the kitchen. Relief throws the doors open and demands a feast.",
	},
	["muse.w12.hunger.017"] = {
		"Bread asks for time more than skill. Flour, water, a warm corner and patience, and it rises whether anyone is watching or not.",
		"There's something steadying about dough. It does its work slowly, without fuss, and nobody can hurry it into being bread.",
		"The best loaves are made mostly of waiting. Hands do a little; time does the rest, and takes no credit.",
	},
	["muse.w12.hunger.018"] = {
		"Stale bread isn't finished. Drop it in broth and it gets a second life, softer and better than the first.",
		"No bread is too hard for soup. The pot forgives what the shelf forgot.",
		"Old bread, hot broth, a little patience: the cheapest resurrection in the world.",
	},
	["muse.w12.hunger.019"] = {
		"Honey is a wonderful thing for about a minute. After that it's on my fingers, my sleeve, the strap and somehow inside a boot.",
		"Eat honey on the move and you'll carry it for days, on everything you touch.",
	},
	["muse.w12.hunger.020"] = {
		"Some spices aren't a flavor, they're a challenge. I accept every one, and I lose most of them.",
		"There's a kind of pepper that ought to be sold with a warning. I'd buy it anyway; that's the trouble.",
	},
	["muse.w12.hunger.021"] = {
		"Everyone has one food they'll never forgive. I won't even name mine; it might hear.",
		"I'll eat nearly anything. Nearly. There's one dish in this world I'd go hungry rather than touch, and it knows who it is.",
	},
	["muse.w12.hunger.022"] = {
		"Bitterness is an acquired taste, people say. I think the tongue simply gets tired of protesting.",
		"Some flavors you only come to love after enough hard days. Bitterness is one. Strong tea is another.",
	},
	["muse.w12.hunger.023"] = {
		"Picky eaters don't last long on the road. Hunger teaches tolerance faster than any tutor.",
		"The fussy and the hungry rarely stay two different people for long. One turns into the other.",
		"Hunger cures fussiness better than any scolding ever could.",
	},
	["muse.w12.hunger.024"] = {
		"When I snap at someone, the first question should be when I last ate. The second can wait.",
		"Half my bad moods are only hunger in a borrowed cloak. Feed it, and the mood takes the cloak off and leaves.",
	},
	["muse.w12.hunger.025"] = {
		"Eat the best thing first, in case things go wrong? Or save it, so there's something to look forward to? I've argued both sides with myself and lost twice.",
		"Best bite first or last: the oldest quarrel I have with myself. Usually I compromise and eat it somewhere in the middle.",
	},
	["muse.w12.hunger.027"] = {
		"Food is the only thing in the pack that gets lighter by being used. I think of every meal as a favor to my shoulders.",
		"Every meal I eat is weight I don't have to carry. I call it packing, and nobody can prove otherwise.",
	},
	["muse.w12.hunger.028"] = {
		"Never eat a mushroom you can't name. The ones that kill are often the prettiest, and they never apologize.",
		"A mushroom I don't recognize stays where it grew. Hunger can wait; regret can't be spat back out.",
		"Pretty caps, bright colors, a pleasant smell of earth: the deadliest mushrooms dress for the occasion.",
	},
	["muse.w12.hunger.029"] = {
		"Some cooks give a tired face a certain look, and then an extra ladle goes into the bowl without a word. Kindness at its most practical.",
		"A second ladle slipped in without asking: the quietest charity there is, and the most welcome.",
		"Whoever cooks for travelers reads hunger at a glance, and the good ones answer it with the ladle.",
	},
	["muse.w12.hunger.030"] = {
		"Inn tables are worn smooth by a thousand elbows. Sit at one and you're joining a very long conversation.",
		"Every old tavern table has been polished by the arms of people long gone. I rest mine there and feel, briefly, in good company.",
	},
	["muse.w12.hunger.031"] = {
		"Chewing hardtack, I plan feasts. A roast with crackling skin, new bread, a pie with a lid. The planning is free, and it nearly helps.",
		"I keep a whole banquet in my head for lean stretches: something roasted, something sweet, a loaf still steaming. Laying that table costs nothing.",
		"Imagined suppers are the only ones that never burn. I cook them in my head, course by course, while the real meal crunches.",
	},
	["muse.w12.hunger.032"] = {
		"I've heard of feasts where half the food goes back to the kitchen untouched. Somewhere, the same day, someone is boiling a boot.",
		"A king's table can throw away more in one sitting than a village eats in a week. Nobody at that table seems to find it strange.",
	},
	["muse.w12.hunger.033"] = {
		"A big meal and a long walk don't get on. I keep introducing them, and they never grow any friendlier.",
		"Eat like a king, walk like a mule. Every feast sends its bill to the legs.",
	},
	["muse.w12.hunger.034"] = {
		"A day without food is clear-headed for a few hours, light and sharp. Then it isn't, and every thought ends at the same place.",
		"Go hungry long enough and the mind gets very simple. Every thought, however it starts, ends up at bread.",
		"Fasting makes the head clear, then light, then stubborn about one subject only.",
	},
	["muse.w12.hunger.035"] = {
		"Hungry, I can smell bread through two walls and a closed door. It's the only time my nose is truly useful.",
		"An empty stomach turns the nose into a scout. It finds every kitchen for a mile around and reports back, uselessly.",
	},
	["muse.w12.hunger.036"] = {
		"The sound of something in a pan is one of the friendliest noises in the world. It means someone is about to be fed.",
		"Fat spitting in a hot pan: no music I know of promises more.",
	},
	["muse.w12.hunger.037"] = {
		"Cooking over open flame is a lesson in humility: black outside, raw in the middle, and nobody to blame but me.",
		"Too much fire and the meat looks done long before it is. A good many things work that way.",
		"Low flames, long wait, good supper. High flames, short wait, charcoal. I know this, and I'm still tempted every time.",
	},
	["muse.w12.hunger.038"] = {
		"Stirring a pot is the nearest I come to sitting still with my thoughts. Round and round, and they settle the way the stew does.",
		"There's peace in stirring. The spoon goes round, the mind goes quiet, and supper gets made either way.",
		"A spoon going round a pot is about as close to stillness as busy hands ever get.",
	},
	["muse.w12.hunger.039"] = {
		"Every cook's 'pinch' is a different size. I've watched one turn out to be half a handful.",
		"Recipes say 'some' and 'enough' and 'to taste'. Cooking is the only craft that trusts anyone that much.",
	},
	["muse.w12.hunger.041"] = {
		"Food wrapped well is food respected. A clean cloth, a tight fold, and the bread arrives as bread instead of as crumbs.",
		"There's an art to wrapping a meal for the road, and the reward comes later: whole, and still yours.",
	},
	["muse.w12.hunger.042"] = {
		"Hard cheese is a traveler's friend. Soft cheese is a guest who stays one day and then begins to smell.",
		"Choose the cheese for the journey, not for the table. The finest ones never survive the walk.",
	},
	["muse.w12.hunger.043"] = {
		"Dried meat is less a meal than a long negotiation with my jaw. By the end, the jaw and I are both worn out.",
		"Some strips of road jerky take longer to chew than it takes to walk from one inn to the next.",
	},
	["muse.w12.hunger.044"] = {
		"All the peoples I've heard of share one remedy for the sick: something hot in a bowl. That can't be an accident.",
		"Broth is the first medicine anyone learns. Healers have their arts; the rest of the world has soup.",
		"Before healers, before potions, someone sat by a sickbed with a bowl of broth. Someone still does.",
	},
	["muse.w12.hunger.045"] = {
		"Something sweet tucked away for after the hard part. A small bribe to myself, and it works without fail.",
		"I keep one sweet thing in the bag for the end of a bad stretch. Knowing it's there carries me further than it should.",
	},
	["muse.w12.hunger.046"] = {
		"There's always someone hungrier than me. When I can, I make sure that someone eats too. It costs a crust; it's worth a great deal more.",
		"A hungry face at a gate asks nothing aloud. I've learned to answer it anyway.",
		"Spare bread in my bag and an empty hand held out in front of me: that sum works out the same way every time.",
	},
	["muse.w12.hunger.047"] = {
		"Gold is the second wealth. The first is water you can trust, close enough to reach.",
		"Kingdoms are counted in coin, but every one of them began beside a spring.",
	},
	["muse.w12.hunger.048"] = {
		"The first mouthful of water after real thirst is worth any wine poured in any hall. I'd give up the hall for it.",
		"To a parched mouth, no drink is richer than plain water. Kings could learn something from the thirsty.",
		"Water after real thirst tastes of something no brewer has ever managed to put in a cask.",
	},
	["muse.w12.hunger.049"] = {
		"When water runs low I drink the way a miser counts: one small mouthful, then a long wait, then another argument with myself.",
		"Short of water, every swallow becomes a decision. It's exhausting, deciding that many times.",
	},
	["muse.w12.hunger.050"] = {
		"Muddy water through a clean cloth, then over the fire. It still tastes of the pond, but it won't make me sorry.",
		"Boil it first. Whatever lives in still water is better company once it's dead.",
	},
	["muse.w12.hunger.051"] = {
		"Promises made over ale are written in foam. By the next day there's only a ring on the table.",
		"Never agree to anything after the second tankard. You'll mean it completely, and for about an hour.",
		"Ale makes a fine counselor and a terrible witness. It urges you on and remembers nothing.",
	},
	["muse.w12.hunger.052"] = {
		"Half the comfort of tea is holding the cup. The other half is the excuse to sit for as long as it lasts.",
		"A hot cup in both hands asks nothing of me until it's empty. That's the real gift in it.",
	},
	["muse.w12.hunger.053"] = {
		"Every people in this world bakes some kind of bread: flat, round, dark, sweet. It's the closest thing to a tongue everybody speaks.",
		"Orcs, dwarves, humans, trolls: all of them knead something and set it near a fire. Bread was never one people's invention alone.",
	},
	["muse.w12.hunger.054"] = {
		"After a hard stretch, a bowl of plain porridge tastes like a reward someone thought about. Nothing in it but oats and relief.",
		"The plainest supper after a few bad days tastes like a kindness. The food hasn't changed. I have.",
		"Hardship doesn't improve the cooking. It improves the one eating, for a meal or two.",
	},
	["muse.w12.hunger.055"] = {
		"Nobody sings about the washing up. Sand, a scrap of cloth, and a pot that clings to yesterday's supper like a grudge.",
		"Cooking gets the praise. Scrubbing the pot afterward is done in silence, by whoever lost the argument.",
	},
	["muse.w12.hunger.056"] = {
		"Sooner or later every scrap of food in the pack faces the sniff. Most pass. The ones that don't, I mourn for a long, sad moment.",
		"Is it still good? The nose says maybe, the stomach says yes, and good sense says nothing, because nobody asked it.",
	},
	["muse.w12.hunger.057"] = {
		"A little green on the crust is a suggestion, not a verdict. Cut it off and carry on.",
		"Bread going blue at one corner still has a good heart. I cut away the corner and keep the heart.",
	},
	["muse.w12.hunger.058"] = {
		"Of all the things I could wish for, it's a fresh egg I keep coming back to. Fried, with crisp edges. Such a small, exact longing.",
		"Some cravings make no sense and need none. Mine, right now, is an egg cooked in butter.",
	},
	["muse.w12.hunger.059"] = {
		"Butter is a food for people who stay put. On the move it turns rancid or melts away, so mostly I remember it fondly.",
		"Fresh milk and real butter: two luxuries that never travel, which is why they taste of staying where you are.",
	},
	["muse.w12.hunger.060"] = {
		"A pinch of a spice grown half a world away, and plain stew tastes like a rumor of somewhere else.",
		"Spices are distance you can eat. Someone carried that flavor over seas and deserts just to reach a cooking pot.",
	},
	["muse.w12.hunger.061"] = {
		"Some days cooking feels like one task too many, and supper is a raw carrot. The carrot doesn't complain. Neither, much, do I.",
		"Too tired to light a fire, so supper is whatever needs none. Nobody will ever write a song about it.",
	},
	["muse.w12.hunger.063"] = {
		"Stew is better on the second day. Some things need to sit with themselves before they're any good. I'm told that's true of people too.",
		"Reheated stew beats fresh every time. Time does to a pot what hurry never could.",
	},
	["muse.w12.hunger.064"] = {
		"Cooking for one is harder than cooking for ten. The pot keeps forgetting there's only me.",
		"However little I put in, the pot makes enough for two. I suppose it's hoping.",
		"Cooking for myself, I always make a second portion by mistake. The pot has bigger plans than I do.",
	},
	["muse.w12.hunger.065"] = {
		"Nobody learns to cook without burning a few things. The ruined pots are the lessons; the good meals are only the proof.",
		"A burnt supper teaches more than a good one. Mostly about patience, a little about fire.",
	},
	["muse.w12.hunger.066"] = {
		"Wherever I sit by a cookfire, the smoke finds me. Move left, it moves left. There must be a fire somewhere that likes someone else.",
		"Smoke follows the cook the way gossip follows a wedding. There's no escaping it; there's only squinting.",
	},
	["muse.w12.hunger.067"] = {
		"Every house worth the name is built around its kitchen. The rest is just rooms to sleep in between meals.",
		"Walls and a roof are the excuse. A hearth with a pot on it is the real reason anyone ever builds a house.",
		"Halls have their thrones and towers their bells, but every home that ever mattered had a pot hanging over a fire.",
	},
	["muse.w12.hunger.068"] = {
		"A king and a beggar get hungry in exactly the same way. It's the one appointment neither of them can buy out of.",
		"Hunger doesn't check titles. It knocks on palace doors and hovel doors with the same knuckles.",
	},
	["muse.w12.hunger.069"] = {
		"A feast is only food until people sit around it laughing. Then it's something no cook could make alone.",
		"The best part of a feast isn't on the plates. It's the noise.",
	},
	["muse.w12.hunger.070"] = {
		"When someone is grieving, people bring food. They don't know what to say, so they say it with bread. It isn't a bad language.",
		"Nobody finds the right words beside a fresh loss. A pot of stew left at the door says them well enough.",
		"Mourners are always fed by somebody. A loaf on the doorstep is how neighbors say what they can't.",
	},
	["muse.w12.hunger.071"] = {
		"A pot can always take a little more water. That's how a soup for two feeds four, thinner and kinder.",
		"Thin soup isn't the cook failing. It's a cook choosing more bowls over a richer one.",
	},
	["muse.w12.hunger.072"] = {
		"Eat the same thing long enough and you start to hold opinions about each individual bite.",
		"Monotony at meals creeps in quietly. First you don't notice it, then you notice nothing else.",
	},
	["muse.w12.hunger.073"] = {
		"After days of the same food, a single new flavor lands like news from far away. A sour berry, a pinch of something green: a whole festival.",
		"Variety is wasted on people who eat well every day. You have to go without to taste a radish properly.",
		"One bite of something new after a week of the same: like a door opening onto a different room.",
	},
	["muse.w12.hunger.074"] = {
		"Whatever I order at an inn, the next table's plate looks better. When I order what they had, the table after that wins.",
		"Someone else's bowl always smells better than mine. It's a law of nature, like falling.",
	},
	["muse.w12.hunger.075"] = {
		"At any new inn, I order the plainest thing on offer. If they can't get bread and broth right, nothing fancier will save them.",
		"The simple dish tells you everything about a kitchen. Anyone can hide behind a sauce.",
	},
	["muse.w12.hunger.076"] = {
		"Steam rising off a bowl is a promise kept. I like to watch it a moment before I break it with a spoon.",
		"I keep a little pause before eating anything hot, just to watch it steam. A small ceremony nobody else needs to know about.",
	},
	["muse.w12.hunger.086"] = {
		"Somebody feed me before I start being philosophical.",
		"Hungry. Which means anything I say for the next hour should be taken lightly.",
	},
	["muse.w12.hunger.087"] = {
		"Water first. Then talk.",
		"Let me drink something. Then I'll have opinions.",
		"A mouthful of water, and I'm all yours. Before that, I'm nobody's.",
	},
	["muse.w12.hunger.088"] = {
		"Tea first. Strong enough to stand a spoon in. The world can wait its turn.",
		"Nothing gets decided before a cup of something hot.",
	},
	["muse.w12.hunger.089"] = {
		"Eat while it's hot. Trouble keeps; supper doesn't.",
		"A meal left to spoil is a small sin. Eat it while it's still worth something.",
	},
	["muse.w12.hunger.090"] = {
		"Share it. Half a loaf in company beats a whole one alone.",
		"Food tastes better split two ways. Nobody has ever explained why, and nobody needs to.",
	},
	["muse.w12.hunger.091"] = {
		"Eat something. Whatever it is, it'll look smaller afterward.",
		"Trouble looks a size smaller from behind a full plate.",
	},
	["muse.w12.hunger.092"] = {
		"Ale's for after. Water's for now.",
		"Save the ale for when the work's done. It tastes better earned.",
	},
	["muse.w12.hunger.093"] = {
		"If I go quiet, I'm not sulking. I'm thinking about pie.",
		"Don't mind me. Just imagining a pie. A big one, with gravy.",
	},
	["muse.w12.hunger.094"] = {
		"Sit down, eat. Whatever it is can wait until the bowl's empty.",
		"No quarrel is so urgent it can't wait until after supper.",
	},
	["muse.w12.hunger.095"] = {
		"Never argue with whoever holds the ladle. You'll win the point and lose the supper.",
		"The cook is always right. Not because the cook is right, but because the cook fills the bowls.",
	},
	["muse.w12.rest.001"] = {
		"Lie down after a long march and the legs keep walking for a while on their own, as if nobody had told them.",
		"My legs refuse to believe the march is over. Long after I've stretched out flat, they're still taking steps somewhere.",
		"The body stops; the legs don't, not at first. They go on pacing out the miles behind my closed eyes.",
	},
	["muse.w12.rest.002"] = {
		"Sleep ignores me when I call it, then barges in halfway through something important, with no more manners than a goat.",
		"Lie down and beg, and sleep stays away. Sit up to read one useful page, and it's on me before the second line.",
	},
	["muse.w12.rest.003"] = {
		"The last thought before sleep is never the important one. It's always a buckle, or some word I mispronounced three days back.",
		"Whatever I mean to think about before I drift off, the last thing in my head turns out to be a trifle: a loose thread, a price, a name I got wrong.",
	},
	["muse.w12.rest.004"] = {
		"I dreamed I was walking. Hours of it, nothing but walking. I woke up tired, which seems unfair on both counts.",
		"Some dreams are nothing but more road. I spend the whole sleep marching and wake owing my feet an apology.",
		"A dream about trudging has a special cruelty: all that effort, and not a single mile to show for it.",
	},
	["muse.w12.rest.005"] = {
		"In dreams I meet people I know perfectly well and couldn't name for any reward. They seem to know me better than I'd like.",
		"My dreams are crowded with familiar strangers: faces I'd swear I've always known, and not one name among them.",
	},
	["muse.w12.rest.006"] = {
		"Never decide anything worth keeping while tired. Sleep on it. The choice will still be there, only smaller.",
		"Tired, every choice looks either easy or impossible. Put a sleep in between and most of them shrink to their real size.",
		"A weary head makes poor judgments and proud ones. The verdict can wait for a good sleep; it loses nothing by waiting.",
	},
	["muse.w12.rest.007"] = {
		"I'm not idle. I'm waiting, with great skill and no visible effort.",
		"This isn't doing nothing. This is waiting, and I happen to be very good at it.",
		"Don't mistake this for laziness. It's patience, and it's working very hard.",
	},
	["muse.w12.rest.008"] = {
		"Doing nothing on purpose is harder than any chore. My hands keep reaching for a strap to fix, and I keep telling them no.",
		"Give me an empty moment and my hands go looking for work. Teaching them to stay empty is a craft of its own.",
		"Idle hands, they say, find mischief. Mine only find buckles. I'm trying to teach them to find nothing at all.",
	},
	["muse.w12.rest.009"] = {
		"Sit quiet long enough and the world's noise moves off a little, like a crowd turning a corner. It's still there. It just stops talking to me.",
		"Keep quiet for a while and everything busy seems to drift further off, as if the world had stepped into the next room to let me be.",
	},
	["muse.w12.rest.012"] = {
		"The pack makes a poor pillow and a jealous one. At least while my head's on it, nobody walks off with it.",
		"Lumpy, hard, smelling of old leather: the pack is a terrible pillow. It's also the only one I know will still be there when I wake.",
	},
	["muse.w12.rest.013"] = {
		"The moment I lie down, every thought I put off arrives at once, each one sure it's the most urgent.",
		"Lying down is a signal to my worries. They've been queuing politely for hours and now they all want to speak first.",
		"Stretch out, close the eyes, and the head throws open its doors to every errand and every regret, all talking over each other.",
	},
	["muse.w12.rest.014"] = {
		"Rest is the one thing in this world that keeps paying while I'm not looking. A good sleep under a roof, and the next stretch goes easier.",
		"Sleep somewhere safe and the world seems to owe you a little for it afterward. I've never understood the arithmetic, but I collect.",
		"A proper rest pays interest. Nobody hands over a receipt, but the next while always goes a shade lighter for it.",
	},
	["muse.w12.rest.015"] = {
		"Between finishing one thing and starting the next there's a small gap, hardly a moment wide. I've learned to stand in it on purpose.",
		"Every task leaves a little space behind it before the next one starts. Most people step straight over. I like to stop in it awhile.",
	},
	["muse.w12.rest.016"] = {
		"Sitting down. Objections can be made in writing, and I won't read them.",
		"I'm sitting. Anyone who needs me will find me lower than before.",
		"Down I go. Whatever it is, it can come to me.",
	},
	["muse.w12.rest.017"] = {
		"Bored. What a luxury. Boredom means nothing is chasing me, nothing is bleeding and nobody needs anything.",
		"There's no richer feeling than boredom. To manage it you have to be safe, fed and unwanted all at once.",
		"Nobody under siege was ever bored. If I'm yawning at nothing, things must be going remarkably well.",
	},
	["muse.w12.rest.018"] = {
		"Half the trouble in this world was started by someone with nothing to do and a door they hadn't opened yet.",
		"Boredom has opened more locked doors than any thief. A few of mine included, if I'm honest.",
	},
	["muse.w12.rest.019"] = {
		"Patience isn't the waiting. It's what I do with my hands and my head while the waiting goes on.",
		"Anyone can wait. Patience is waiting without chewing my own nails down to nothing.",
		"Waiting is what happens to me. Patience is what I bring to it, when I remember to bring any.",
	},
	["muse.w12.rest.020"] = {
		"Now and then I dream of a room I've never stood in, and wake up homesick for it.",
		"There's a door in my dreams whose creak I know by heart, and I've never once seen it with my eyes open.",
		"Some dreams lend me a house for a while: a step that dips, a shutter that sticks. Then they take it back without asking.",
	},
	["muse.w12.rest.022"] = {
		"I slept properly. No aches, no muddle in the head. Naturally, I spent the first few minutes wondering what had gone wrong.",
		"A good sleep, and I woke up feeling fine. I didn't trust it for a moment and checked my pockets.",
	},
	["muse.w12.rest.023"] = {
		"Every beast knows how to rest: curl up, tuck in, stop. Only people make a long ceremony out of lying down.",
		"Watch any animal settle: one turn, two, and it's done. People alone fuss over a bed as if it might refuse them.",
		"No creature in the wild needs a pillow, a blanket and a reason. It finds a hollow, folds itself up, and sleeps.",
	},
	["muse.w12.rest.024"] = {
		"Sit down before the legs insist. A rest I choose is worth twice one they take from me.",
		"Better to stop while it's still a choice. Once the body makes it for me, the rest comes with a fine attached.",
		"The legs will stop me sooner or later. I'd rather it were sooner, and my own idea.",
	},
	["muse.w12.rest.025"] = {
		"For a little while nobody wants anything from me. No errand, no question, no hand held out. I hardly know what to do with my face.",
		"Nobody asking, nobody waiting, nothing due. It's so rare I keep half expecting someone to come and take it back.",
		"A moment that belongs to nobody but me. I hold it carefully, like something borrowed that I'll have to return.",
	},
	["muse.w12.rest.026"] = {
		"Wake me if anything interesting happens. Actually, don't. Interesting usually ends in bandages.",
		"If something exciting turns up, it can wait its turn. I'm resting.",
	},
	["muse.w12.rest.027"] = {
		"Some days the tiredness isn't in the legs at all. Sleep won't fix it; it's sorrow, dressed up as fatigue so I'll let it in.",
		"Not every weariness wants a bed. Some of it is grief in a borrowed coat, and rest only offers it a chair.",
	},
	["muse.w12.rest.028"] = {
		"The first moment of sitting down is the best moment there is. Everything after it is just the price of getting up.",
		"Nothing beats the instant I sit. Every part of me sends thanks at once, before remembering it'll have to stand up later.",
		"Of all the small joys going, that first sinking into a seat is the one I'd defend in a duel.",
	},
	["muse.w12.rest.030"] = {
		"People sneer at slowness. But slow hands drop less, slow eyes miss less, and slow tempers are the only ones I trust.",
		"There's nothing shameful in slow. The careful pace drops fewer things, notices more, and starts fewer fights.",
		"Quick gets the praise and slow gets the work done. I've stopped minding which one I'm called.",
	},
	["muse.w12.rest.031"] = {
		"Bored enough, I start counting things: knots in a plank, links in a chain, cracks in a stone. I never do anything with the totals.",
		"When nothing happens long enough I count whatever is in front of me. Forty-one rivets, so far. I'm not sure who I'm keeping score for.",
	},
	["muse.w12.rest.032"] = {
		"Anyone asleep looks younger and more honest. I suppose I do too, which is the only time I'd vouch for myself.",
		"Sleep takes the guard off every face. Even the hardest folk look like somebody's child with their eyes shut.",
	},
	["muse.w12.rest.033"] = {
		"Rested, fed, and nothing on fire. I'll remember this one.",
		"Slept properly, for once. I hardly recognize myself.",
		"A real rest. Feels like borrowing someone else's legs.",
	},
	["muse.w12.rest.034"] = {
		"Every time I lie down I give up a little control and trust the world to hand it back. So far it always has.",
		"Sleep is a small surrender: I set everything down and hope it's all there when I pick it up. One day it won't be, and I won't know.",
	},
	["muse.w12.rest.035"] = {
		"If I talk in my sleep, I hope I say something wiser than I manage awake. It would be a shame to waste the effort.",
		"Whatever I mumble asleep, I'd like it to be useful advice. With my eyes open, the supply is running low.",
	},
	["muse.w12.rest.036"] = {
		"Stillness has a sound of its own. Not silence: a low, wide hum, the sound of everything getting on without me.",
		"Quiet isn't empty. Listen long enough and it fills with small things: a creak, a drip, something far off minding its own business.",
		"When nothing near me moves, I can hear the world working at a distance, the way a house hums with other people's chores.",
	},
	["muse.w12.rest.038"] = {
		"Boots on or boots off: that's the real question of any rest. Off is bliss. On is getting away in a hurry. I've never settled it.",
		"Every time I lie down I hold the same small trial. Comfort says unlace them, caution says leave them. Caution usually wins, and my feet never forgive it.",
		"Unlacing my boots to sleep is an act of faith in whatever's nearby. Some places earn it. Most don't.",
	},
	["muse.w12.rest.039"] = {
		"By the time my boots are laced, the dream is gone. I keep the shape of it, like a dent in a pillow, and nothing else.",
		"Dreams leave without saying goodbye. All that stays is a feeling, like a room where someone was sitting a moment ago.",
		"Dreams don't survive the first bootlace. By the second, I couldn't even say whether it was a happy one.",
	},
	["muse.w12.rest.040"] = {
		"Resting is not the same as giving up, though both begin by sitting down. The difference is in the getting up.",
		"A rest and a surrender look alike from outside: someone on the ground, not moving. Only the next moment tells them apart.",
	},
	["muse.w12.rest.041"] = {
		"A moment, please. Not for anything in particular. Just a moment.",
		"One moment to myself, that's all. I'll be right back with the rest of me.",
	},
	["muse.w12.rest.042"] = {
		"Half this life is running to get somewhere, and the other half is standing there once I've arrived, waiting for whatever I ran for.",
		"Rush, then wait. Rush, then wait. Somebody designed this trade with a cruel sense of rhythm.",
		"Nobody warned me how much of an adventure is spent leaning on things, waiting for the next part to start.",
	},
	["muse.w12.rest.043"] = {
		"Rushing in takes nerve. Waiting, when every part of me wants to move, takes more, and nobody ever praises it.",
		"Holding still while everything says go is a kind of courage too, the quiet sort that never makes it into a song.",
		"The hardest orders I give myself are the ones that say: not yet.",
	},
	["muse.w12.rest.044"] = {
		"Boredom is a kind of hunger, only it lives behind the eyes. Feed it nonsense and it just gets louder.",
		"An idle head gets hungry the way a belly does, and it isn't picky. It'll chew on any old worry rather than nothing.",
		"Nothing gnaws like an empty head. Give it no work and it starts working on me.",
	},
	["muse.w12.rest.046"] = {
		"Rest and sleep aren't the same. I can rest with my eyes open and sleep without resting at all. The second is far more common.",
		"A sleep that leaves me wrecked, a short sit that puts me right: the body keeps its own accounts, and they rarely match the hours.",
	},
	["muse.w12.rest.047"] = {
		"There's a dream that keeps coming back: I'm late for something, and nobody will tell me what. I wake up hurrying.",
		"In the same old dream I'm always running behind for an appointment I don't remember making. Waking doesn't quite cure the feeling.",
		"I've been late in my dreams more times than I can count, and I still don't know for what. Whoever's waiting there must be very patient.",
	},
	["muse.w12.rest.048"] = {
		"The world can smell a person sitting down. The moment I settle, something needs me, bites me, or wants a word.",
		"Stand around pretending to be busy and the quiet lasts forever. Sit, and it's the sitting that rings the bell.",
	},
	["muse.w12.rest.049"] = {
		"Watching a fire is the most honest idleness I know. The flames do all the work, and somehow I'm the one who comes away rested.",
		"Nobody calls it lazy to stare into a fire. It's the one kind of doing nothing that everyone forgives.",
	},
	["muse.w12.rest.050"] = {
		"I'm patient with strangers, with mules, with merchants. With myself, hardly at all. I should lend myself some of what I give away.",
		"Everyone gets my patience except me. I wait calmly behind a slow cart and then curse myself for a moment's delay.",
		"If I spoke to anyone else the way I speak to myself when I'm slow, I'd owe them an apology.",
	},
	["muse.w12.rest.051"] = {
		"If I lie down, I'm not getting up. So I'm leaning. Leaning is a promise.",
		"Not sitting. Sitting is dangerous. I'm leaning, which still counts as working.",
	},
	["muse.w12.rest.052"] = {
		"People wish the dead rest, as if it were the finest gift going. Most of the living would settle for a small helping of it, here and now.",
		"Rest is what the living promise the dead. A pity so little of it is left over for the ones still walking.",
		"Every grave I've passed wishes its tenant a long rest. Nobody carves that kind of wish for the ones on their feet.",
	},
	["muse.w12.rest.053"] = {
		"Waiting for news is the worst kind of sitting still. The body rests and the head runs laps around it.",
		"Nothing wears me out like waiting to hear how something turned out. I don't move a muscle and still end up worn through.",
		"Sitting by, waiting on word from elsewhere: the stillest work there is, and the most exhausting.",
	},
	["muse.w12.rest.054"] = {
		"The best sleeps are the ones I never meant to take. I sit for a moment, and the next thing I know the world has moved on a little without me.",
		"Planned rest is fine. Rest that happens by accident is better: a moment's sit that turns, without asking, into a proper sleep.",
		"I never sleep so well as when I only meant to close my eyes for a moment.",
	},
	["muse.w12.rest.056"] = {
		"Bored enough, I tidy. That's how I know it's serious. My pack is never so orderly as when nothing happens.",
		"Nothing to do means everything gets folded, sorted and folded once more. Boredom has a very neat streak.",
	},
	["muse.w12.rest.057"] = {
		"A seed can wait for years in dry ground, doing nothing at all, and lose none of what it is. I'd like to learn that trick.",
		"Seeds are the masters of waiting. They lie still for as long as it takes and never forget what they're meant to become.",
		"Somewhere under every road there are seeds asleep, holding their whole future folded small, in no hurry whatsoever.",
	},
	["muse.w12.rest.058"] = {
		"Rest always comes with a little guilt folded inside it, as if someone somewhere were working twice as hard to make up for me.",
		"I can't keep my hands idle for long without feeling I'm in someone's debt. Nobody has ever said so. I say it for them.",
	},
	["muse.w12.rest.059"] = {
		"Nothing to do and nowhere to be. Marvelous. Terrifying, but marvelous.",
		"Not one errand left. I'd celebrate, if I could think what people do at times like this.",
	},
	["muse.w12.rest.060"] = {
		"To fall asleep I count the things I still have to do. It works, but only because I pass out from despair before the end of the list.",
		"Some count sheep. I count unfinished errands, and sleep comes out of sheer embarrassment.",
	},
	["muse.w12.rest.061"] = {
		"Some things can only be waited out: a bad mood, a slow mend, a run of rotten luck. Push at them and they dig in.",
		"Not everything gives way to effort. A grudge, a fever, a streak of bad luck: those you sit beside until they get bored and leave.",
		"There are troubles that only time can lift, and all it asks of me is that I stop prodding them.",
	},
	["muse.w12.rest.062"] = {
		"When I read the same line three times and it still won't go in, that's the body's polite way of saying stop.",
		"Tired arrives in small signs: a sentence read twice, a strap buckled wrong, a word that won't come. By the third, I should sit.",
	},
	["muse.w12.rest.064"] = {
		"It's a comfort, sitting still and knowing the world turns perfectly well without my help. Not everything is mine to carry.",
		"For a moment I stop, and nothing collapses. Whatever holds this world up, it isn't me. That's restful to remember.",
		"I let go of everything for a while and the world doesn't even notice. There's a great kindness in being that unnecessary.",
	},
	["muse.w12.rest.065"] = {
		"Don't talk to me about hurry. Hurry and I aren't speaking.",
		"There'll be no hurrying. I've given it up, like a bad habit.",
		"Fast is for people with a string of regrets at their heels. I'm going slow.",
	},
	["muse.w12.rest.066"] = {
		"Sometimes I fall asleep with a problem knotted tight and wake up with it untied, as if someone worked on it while I was out. I've never met them.",
		"Somebody quiet works in my sleep, sorting out what I couldn't. No thanks expected, no name given.",
	},
	["muse.w12.rest.067"] = {
		"Bored in company, at least you can complain to each other. Bored alone, there's nobody to blame and nobody to tell.",
		"Shared, boredom turns into gossip. Kept to myself, it just sits there and stares back.",
	},
	["muse.w12.rest.068"] = {
		"Somewhere there's always a counter with someone ahead of me, explaining their whole life to the person behind it.",
		"The shortest line is always the one that stops moving the moment I join it.",
		"I've done a great deal of my waiting at counters, watching the back of a stranger's head decide what it wants.",
	},
	["muse.w12.rest.070"] = {
		"After a fight the quiet comes back in pieces: first the ringing fades, then the small sounds return one by one, like birds after a hawk has gone.",
		"There's a particular stillness that follows trouble. The world seems to peer out, check, and only then go back to its business.",
		"Trouble over, and for a while nothing dares make a sound. Then something small ventures a chirp, and the rest follow.",
	},
	["muse.w12.rest.071"] = {
		"Wait for the perfect moment and I'll wait forever. A good enough moment comes round often, and it's usually now.",
		"The right moment is a rumor. I've waited on it plenty and it never showed. The tolerable one turns up every day.",
	},
	["muse.w12.rest.072"] = {
		"Waiting is older than any craft. Before anyone hunted, or built, or fought, somebody sat and waited for something to happen.",
		"Long before the first tool or the first wall, someone sat beside a burrow and waited. Everything else came after.",
	},
	["muse.w12.rest.073"] = {
		"Listen to that. Nothing at all. Lovely.",
		"Hear that? Neither do I. Best sound there is.",
		"Not a peep anywhere. I could get used to this.",
	},
	["muse.w12.rest.074"] = {
		"A yawn always arrives at the worst moment: in the middle of someone's serious speech, or right as something is sizing me up.",
		"My yawns have no sense of occasion. They pick the solemn moments on purpose, I'm convinced of it.",
	},
	["muse.w12.rest.076"] = {
		"In dreams everyone understands me the first time. Waking is the slow return to explaining things twice.",
		"My dreams are full of people who understand me without a word. Then I wake and have to go back to words, and badly.",
	},
	["muse.w12.rest.077"] = {
		"Falling asleep is a skill in three steps: lie down, stop listening, let go. I've mastered the first.",
		"Lying down I can do. Switching off the ears is where I always come unstuck.",
		"Sleep is easy, I'm told. You simply stop. Nobody explains how to stop the part of you that's keeping watch.",
	},
	["muse.w12.rest.078"] = {
		"A heron can stand in the shallows so long that the fish forget it's there. That's the whole of patience, and it fits on one leg.",
		"Herons wait on one leg until the water forgets them. I've never been able to keep that still for anything.",
	},
	["muse.w12.rest.079"] = {
		"Wait long enough for anything and it's bound to disappoint. It's had all that time to grow in my head.",
		"The longer I wait for something, the bigger it gets in my imagination, and the smaller it looks when it finally comes.",
		"Anticipation is a sly cook. It seasons everything so heavily that the real dish always tastes plain.",
	},
	["muse.w12.rest.080"] = {
		"I wonder what other folk dream. Gnomes in diagrams, I'd guess. Ogres of lunch. Merchants of a scale that tips their way.",
		"Everyone dreams after their kind, I suspect: the gnome of gears, the farmer of a good harvest, the guard of a quiet shift. I'd love a look at a dragon's.",
	},
	["muse.w12.rest.081"] = {
		"I wasn't asleep. I was inspecting the insides of my eyelids. Thoroughly.",
		"Asleep? No. Eyes closed for quality control.",
	},
	["muse.w12.rest.082"] = {
		"Keep still long enough and I start to hear my own thoughts properly, without the work shouting over them. Some of them I'd rather not have met.",
		"Busy, I'm nothing but hands and errands. Still, I'm whoever is left underneath, and that one has a lot to say.",
	},
	["muse.w12.rest.083"] = {
		"Boredom never lasts long in this world. Something always comes along to cure it, usually with claws.",
		"No need to fear boredom for long. The world has a hundred cures for it and not one of them is gentle.",
	},
	["muse.w12.rest.085"] = {
		"Each time I close my eyes I'm practicing something I'll only need to do once for real. Strange, how calm it all feels.",
		"Sleep is a small rehearsal for the long one. I hope by the time it counts I've learned my part.",
	},
	["muse.w12.rest.086"] = {
		"Rest when you can. The world won't send word when it's going to need you.",
		"Take the rest while it's offered. Nobody hands it out twice.",
		"Sit while you can. Nobody ever regretted a rest they took.",
	},
	["muse.w12.rest.087"] = {
		"Whenever I open my eyes, something is already busy: a beetle, a bird, an ant hauling something twice its size. I've never once beaten the world to work.",
		"Wake when I like, and the world has always started without me. Some small thing, somewhere, has been hard at it the whole time.",
	},
	["muse.w12.rest.088"] = {
		"Through the worst stretches I keep one picture in my head: somewhere to sit, after. It's carried me further than any speech.",
		"When it's hard going, I don't think of glory. I think of the moment I'll get to sit down, and that's enough to keep my feet moving.",
	},
	["muse.w12.rest.090"] = {
		"Waiting for nobody in particular has its own odd comfort. Nobody's late, nobody lets me down, and I can leave whenever I like.",
		"When nobody's coming, waiting turns into simply being somewhere. I find I don't mind it.",
		"Nobody to meet, nowhere I'm expected. A wait with no end in it is hardly a wait at all.",
	},
	["muse.w12.rest.091"] = {
		"A wish for anyone out there who's dead on their feet: one sound sleep, and someone trustworthy keeping watch.",
		"May every weary soul find a corner where nobody wakes them before they're done.",
	},
	["muse.w12.rest.092"] = {
		"I've perfected looking thoughtful while doing nothing whatsoever. A slight frown does most of the work.",
		"Anyone passing sees someone deep in thought. What they're actually seeing is a person resting with a frown on.",
	},
	["muse.w12.sayings.001"] = {
		"Dwarves have a saying: a wall built in a hurry is tomorrow's gravel. A few of my plans could have used that warning.",
		"'A hasty wall ends up as gravel,' goes the dwarven saying. Looking back over some of my own bright ideas, I'd say the dwarves are right.",
	},
	["muse.w12.sayings.002"] = {
		"Ironforge has a saying that a dwarf will lend you a hammer sooner than a full mug. Anyone who has watched them drink would believe it.",
		"'Borrow a dwarf's tools, never a dwarf's tankard,' as the saying goes in Ironforge. It sounds like advice and reads like a warning.",
	},
	["muse.w12.sayings.003"] = {
		"Dwarves claim you can count a liar's fibs by how often he tugs at his beard. By that measure, no true word has ever been spoken in a dwarven tavern.",
		"An honest beard keeps still while its owner talks, by one dwarven notion. I have yet to see a dwarven beard keep still for anything.",
	},
	["muse.w12.sayings.004"] = {
		"Miners say the best seam always lies one more blow into the rock. A comforting saying, and a very convenient one for whoever sells the picks.",
		"'One more blow and you'll hit the good stuff,' the miners tell each other. I suspect the rock has been hearing that for a thousand years.",
	},
	["muse.w12.sayings.005"] = {
		"The Wildhammer say a gryphon has judged you before you've finished saying hello. I'd rather not know what one decided about me.",
		"Among the Wildhammer it's said that a gryphon weighs up its rider in one glance and never changes its mind. Harsher than any court.",
	},
	["muse.w12.sayings.006"] = {
		"The Dark Iron clan is said to have a saying: the deeper the forge, the shorter the temper. Considering where they live, they can't have much temper left.",
		"'Deep forge, short fuse,' runs a saying of the Dark Iron dwarves. Given how far down they've dug, I'd hate to meet one in a bad mood. Or any mood.",
	},
	["muse.w12.sayings.007"] = {
		"Mountain dwarves say the mountain never asks whose king sits inside it. Every crown could use that line carved over its door.",
		"'The mountain outlasts the throne it holds,' goes a dwarven saying. I'd like to hear a king say it aloud, just once.",
	},
	["muse.w12.sayings.008"] = {
		"Dwarves joke that an elf takes a hundred years to decide where a door should go, and then grows it. I can't tell if that's envy or exasperation.",
		"'An elf plans a doorway for a century,' goes the dwarven jibe. Which is either very slow or very sure of itself. Possibly both.",
	},
	["muse.w12.sayings.009"] = {
		"Explorers' League diggers have a saying: dig slowly, or you'll find what you were hoping for instead of what's actually there. That reaches far beyond ruins.",
		"'Hasty shovels find what they came for,' say the diggers of the Explorers' League, and they don't mean it kindly. Wanting a thing is a poor way to look for it.",
	},
	["muse.w12.sayings.010"] = {
		"Gnome engineers have a saying: if it worked on the first try, someone else built it. Strangely comforting, for a saying about failure.",
		"'Nothing honest works the first time,' a gnome tinker once told me, very cheerfully, while something behind her caught fire.",
	},
	["muse.w12.sayings.011"] = {
		"Gnomes call a city a machine for keeping friends within shouting distance. Theirs broke, and they're still hunting for the spare parts.",
		"A city is only an engine for keeping friends close, if the gnomish saying is right. Since Gnomeregan, it sounds less like a joke and more like a lament.",
	},
	["muse.w12.sayings.012"] = {
		"Gnome tinkers swear every machine has one part whose only job is to rattle and complain. I know exactly which part of me that is.",
		"According to the gnomes, every contraption carries one piece that does nothing but grumble. In my case it's the knees, and they're very dedicated.",
	},
	["muse.w12.sayings.013"] = {
		"Gnomes hold that a question is the only tool that gets sharper with use. Which explains rather a lot about gnomes.",
		"'Questions don't blunt; answers do,' runs a gnomish saying. I like it a little more every time the world surprises me.",
	},
	["muse.w12.sayings.014"] = {
		"A gnomish saying holds that no problem is too big, only the wrench too small. I admire the optimism. I have questions about the wrench.",
		"'There are no big problems, only short wrenches,' the gnomes like to say. Touching confidence. I'd want to see the wrench first.",
	},
	["muse.w12.sayings.015"] = {
		"Goblin engineers reckon anything that didn't explode wasn't trying hard enough. Gnomes say the exact opposite. Between the two, I stand well back.",
		"'No bang, no business,' so the goblin tinkers say. The gnomes insist on the reverse. I keep a safe distance from both philosophies.",
	},
	["muse.w12.sayings.016"] = {
		"Farmers say a field never forgets who walked away from it; it just grows thistles in their name. Half the north must be thistles by now.",
		"There's a farmers' saying that untended land keeps a grudge and writes it out in weeds. The empty fields of Lordaeron must be shouting.",
	},
	["muse.w12.sayings.017"] = {
		"Farm folk like to say the ox never learns it was the hero of the harvest. Most heroes would be better company if they never found out either.",
		"'The ox pulls the whole harvest and never hears a song about it,' they say in farm country. Fair enough. The ox would hate the song.",
	},
	["muse.w12.sayings.018"] = {
		"Old soldiers swear a fighter needs just two things: dry boots and a sergeant with no imagination. I'd add a third: nobody watching.",
		"The soldiers' saying runs: keep your boots dry and your captain bored, and you'll live to complain about both. Sound, though it leaves out luck.",
	},
	["muse.w12.sayings.019"] = {
		"Stormwind's masons have a saying that every city gets built twice, once in stone and once in wages. They know better than anyone which half went unpaid.",
		"'Stone holds a city up; pay holds the masons,' runs a saying among the builders of Stormwind. After what came of the unpaid wages, nobody there laughs at it.",
	},
	["muse.w12.sayings.020"] = {
		"The refugees from the north are said to have a saying: leave the silver, take the spoon. I can't think of truer advice for leaving in a hurry.",
		"'Take the spoon and leave the silver,' the folk who fled Lordaeron tell each other. Whatever you can eat with is worth more than whatever you can sell.",
	},
	["muse.w12.sayings.021"] = {
		"Old folk of Lordaeron used to say a good king is only a farmer whose field happens to be people. The kingdom's last harvest went very badly.",
		"'A king tends people the way a farmer tends rows,' the elders of the northern kingdoms once said. They never foresaw what would come to reap those rows.",
	},
	["muse.w12.sayings.022"] = {
		"Village folk in Elwynn say a borrowed ladder always comes back one rung short. Nobody knows where the rungs go. I have theories about neighbors.",
		"'Lend a ladder, get back a stool,' as the farmers of Elwynn put it. Lending is a lovely habit with a small, steady cost.",
	},
	["muse.w12.sayings.023"] = {
		"In Darkshire, people say you never answer a knock you weren't expecting. After everything told about that wood, I can't blame them.",
		"'Unexpected knock, unopened door,' as Darkshire folk have it. A sad rule to need, and a sensible one to keep.",
	},
	["muse.w12.sayings.024"] = {
		"Westfall farmers have a saying that a lean harvest shows you who your neighbors really are. By all accounts they've had plenty of lean ones lately.",
		"'Bad harvests count your friends for you,' as the farm folk of Westfall put it. A hard way to take a census.",
	},
	["muse.w12.sayings.025"] = {
		"Redridge folk say a good bridge is worth three walls. Walls keep trouble out, but a bridge lets help in. I'd never looked at it that way.",
		"'One bridge beats three walls,' goes a saying around Lakeshire. Defense is good; a way for friends to reach you is better.",
	},
	["muse.w12.sayings.026"] = {
		"Kaldorei are said to teach their young to swear only small oaths, since an oath can outlive its maker by a few thousand years. Good advice for anyone, long-lived or not.",
		"'Promise little; promises live longer than people,' goes a kaldorei saying. With their lifespans, they'd know.",
	},
	["muse.w12.sayings.027"] = {
		"The kaldorei say a forest only goes quiet when it's listening. I've caught myself lowering my voice whenever anything goes quiet, forest or not.",
		"An elven saying holds that silence among the trees is attention, not absence. Ever since I heard it, every quiet place feels slightly watched.",
	},
	["muse.w12.sayings.028"] = {
		"The kaldorei claim humans build in stone because they haven't the patience to grow a house. Unkind, maybe. Also a little true.",
		"'The short-lived quarry; the patient grow,' as one kaldorei saying has it. I'd still like a roof before the year is out.",
	},
	["muse.w12.sayings.029"] = {
		"The Sentinels have a saying: no watch is long, only the watcher grows tired. I suspect it's meant to be comforting. It isn't, quite.",
		"'The watch doesn't lengthen; the watcher shortens,' Sentinels supposedly tell their recruits. A strange thing to remember when sleep won't come.",
	},
	["muse.w12.sayings.030"] = {
		"Druids of the Cenarion Circle say a seed never argues with the soil it lands in. I argue with everything, which may be why so little of me has sprouted.",
		"'The seed takes the ground it's given,' the Circle's druids teach. Admirable. I'd still have a few complaints for the ground.",
	},
	["muse.w12.sayings.031"] = {
		"Kaldorei supposedly hold that a proper apology needs a century to ripen. For anyone shorter-lived, that's a terrible way to settle a quarrel.",
		"'An apology picked too early tastes of nothing,' the kaldorei are said to believe, and they wait accordingly. Some of their quarrels must be older than kingdoms.",
	},
	["muse.w12.sayings.032"] = {
		"The high elves once had a saying that beauty is a wall which needs guarding like any other. After Quel'Thalas, it reads like a warning nobody heeded.",
		"'A lovely thing still needs a sentry,' the elves of Quel'Thalas used to say, I'm told. Their kingdom proved it the hard way.",
	},
	["muse.w12.sayings.033"] = {
		"The orcs have a saying that a scar is the one lesson nobody can steal from you. Then again, nobody has ever tried very hard to steal a lesson.",
		"'A scar is a teacher that never leaves,' goes an old orcish saying. I'd prefer a teacher who knocked first.",
	},
	["muse.w12.sayings.034"] = {
		"Orc elders teach that strength which shouts is strength that doubts itself. I think of it whenever someone in a tavern gets loud about how tough they are.",
		"There's an orcish saying: the strong arm has no need of the loud mouth. Wise words, from a people famous for both.",
	},
	["muse.w12.sayings.035"] = {
		"The Frostwolf clan is said to teach: feed the wolf before yourself, and you'll never hunt alone. It's about wolves. It's also very clearly not about wolves.",
		"'Who feeds the wolf first never walks alone,' runs a Frostwolf saying. The more I turn it over, the more people I find inside it.",
	},
	["muse.w12.sayings.036"] = {
		"Orcs who came out of the internment camps have a saying: a fence can hold the body, never the rest. They earned the right to say it. I can only listen.",
		"'Walls take the legs, not the will,' say the orcs who remember the camps. I have no claim on words like those, only the duty of hearing them.",
	},
	["muse.w12.sayings.037"] = {
		"An orcish saying goes: speak your anger to the face, or swallow it whole, but never chew it. I chew. I know perfectly well that I chew.",
		"'Spit anger out or swallow it, but don't chew on it,' the orcs say. Good advice, and I break it constantly.",
	},
	["muse.w12.sayings.038"] = {
		"Orcs hold that a lie told to an enemy wounds the one who tells it. Strange honor, keeping faith even with the other side. I find I admire it.",
		"'Lie to your foe and you've cut your own hand,' goes an orcish saying about honor. A demanding rule. Plenty of people don't keep it even with their friends.",
	},
	["muse.w12.sayings.039"] = {
		"Orcs warn that whatever the clan forgets, the enemy will remember for it. A strong argument for keeping honest records, among other things.",
		"'Forget your own wrongs and your foes will keep them for you,' goes an orcish saying. History seems to agree, loudly.",
	},
	["muse.w12.sayings.040"] = {
		"The Darkspear say the loa answer slowly so you have time to regret the question. The wisest thing I've heard about asking for anything.",
		"'Loa take their time, so you can take back your asking,' goes a troll saying. Patience as a kind of mercy. I like that.",
	},
	["muse.w12.sayings.041"] = {
		"Jungle trolls say the panther never chases; it waits where the path meets the water. Every hunter alive is still learning that one.",
		"'Don't run after the panther's supper. Wait where it drinks.' A troll saying, I'm told, and it applies to far more than hunting.",
	},
	["muse.w12.sayings.042"] = {
		"A wound that closes too fast teaches nothing, according to the trolls. Easy for them to say. Their wounds close while they're still talking.",
		"'Quick healing, slow learning,' say the trolls, who heal faster than anyone. I'd gladly trade a little wisdom for that.",
	},
	["muse.w12.sayings.043"] = {
		"Troll elders are said to teach the young to listen hardest just after the drums stop. Whatever is left in that quiet is what's real.",
		"Trolls have a saying: the drum is for the dancing, and the silence after it is for the truth. I come back to it in quiet moments.",
	},
	["muse.w12.sayings.044"] = {
		"Troll witch doctors are said to teach that every curse is a promise somebody broke. I find that more frightening than any talk of dark powers.",
		"'A curse is an oath gone bad,' goes a saying of the troll witch doctors. If it's true, the world is far more cursed than it looks.",
	},
	["muse.w12.sayings.045"] = {
		"The Darkspear have a saying that a tribe is a canoe: pull out of rhythm and everyone gets wet. I'd never thought of company as a matter of rowing.",
		"'Paddle with the others or swim alone,' runs a Darkspear saying. Not a threat, exactly. More a plain description of how canoes work.",
	},
	["muse.w12.sayings.046"] = {
		"Trolls say good mojo can't be bought, only borrowed, and it always comes back to collect. I'd like to know what my account looks like.",
		"'Mojo is a loan, and it remembers who borrowed,' as the trolls tell it. I suspect I'm overdrawn.",
	},
	["muse.w12.sayings.047"] = {
		"Tauren elders teach that you should walk as if every step is felt below. I've begun placing my feet a little more politely.",
		"'Tread as a guest treads,' the tauren say of the ground. It had never crossed my mind that the earth might mind being stamped on.",
	},
	["muse.w12.sayings.048"] = {
		"Tauren herders say the herd moves at the pace of its slowest calf, and that's what makes it a herd. Most crowds would sooner leave the calf behind.",
		"'A herd walks as fast as its weakest,' goes a tauren saying. Not a complaint, the way they say it. A definition.",
	},
	["muse.w12.sayings.049"] = {
		"Kodo drivers say never to argue with a kodo over the way; it remembers water you've never seen. A few guides could stand to be kodos.",
		"'The kodo knows the path to water before you know you're thirsty,' herders in the Barrens like to say. Trust the one with the longer memory, in other words.",
	},
	["muse.w12.sayings.050"] = {
		"The tauren say their dead have simply gone ahead on the trail, and will grumble if you arrive too soon. I find that oddly easy to believe.",
		"'The dead walk ahead; don't hurry to catch them,' runs a tauren saying. Gentle and practical, two things that rarely sit together.",
	},
	["muse.w12.sayings.051"] = {
		"Tauren hunters say you either thank what you take from the land or you leave it be. I've slipped into the habit of a small thanks, said quietly.",
		"'Take with thanks or don't take,' runs the tauren hunters' saying. It costs nothing to follow, and I've noticed it changes how the taking feels.",
	},
	["muse.w12.sayings.052"] = {
		"Tauren elders like to remind the young that every pebble was part of a mountain once. Respect the small, they mean. Gravel has looked different to me ever since.",
		"'Every pebble remembers being a mountain,' goes a tauren saying. Be gentle with small things; they've already lost a great deal.",
	},
	["muse.w12.sayings.053"] = {
		"If the tauren can be trusted on it, the quilboar have a saying: the thorn remembers every hand. Charming people. Prickly philosophy.",
		"The quilboar supposedly say that a thorn never forgets the hand that grabbed it. Less a piece of wisdom than a threat with good posture.",
	},
	["muse.w12.sayings.054"] = {
		"In the Undercity it's said that whatever endures past death was the part worth keeping. A hard comfort, made by people who had a great deal taken first.",
		"The Forsaken have it that death strips away everything except what mattered. Grim, and probably earned. Few sayings cost that much to coin.",
	},
	["muse.w12.sayings.055"] = {
		"'Hurry is a habit of the living,' the Forsaken are fond of saying. They say it slowly, too, which rather proves the point.",
		"Among the Forsaken, rushing is called a habit of the living, and gently mocked. Watching anyone stuck waiting in a line, I see what they mean.",
	},
	["muse.w12.sayings.056"] = {
		"Some of the Forsaken say a name is the first thing death takes and a grudge the very last. That would account for the mood in the Undercity.",
		"The Forsaken saying runs: the name goes first, the grudge goes last. I wonder which of mine would hold on longer.",
	},
	["muse.w12.sayings.057"] = {
		"There's a grim Forsaken saying: what the grave couldn't hold, no wall will. As threats go, it's hard to argue with.",
		"'If the grave let go of it, nothing else will keep it,' the Forsaken say of themselves. A boast and a warning in a single sentence.",
	},
	["muse.w12.sayings.058"] = {
		"Undercity apothecaries are said to joke that a cure and a plague differ mainly in who's paying. I hope it's a joke. I really do.",
		"'Remedy or poison: ask who signed the order,' goes a grim saying among the Royal Apothecaries. Not reassuring, from people who make both.",
	},
	["muse.w12.sayings.059"] = {
		"The Undercity's deathguards are said to hold that a gate is kept by whoever refuses to fall over longest. Not glamorous. Very effective.",
		"'Gates are kept by the stubborn, not the strong,' runs a saying among the Forsaken guards. I'd add: and by the bored.",
	},
	["muse.w12.sayings.060"] = {
		"Goblin traders have a rule: never sell the last one, raise its price. It works on me every single time, and I know the rule.",
		"'The last one isn't for sale. It's for a higher price,' goes the goblin saying. Knowing it has never once stopped me paying.",
	},
	["muse.w12.sayings.061"] = {
		"A Steamwheedle saying: every contract is a cage, so find the door before you sign. I have never read anything that carefully in my life.",
		"'Read a contract the way you'd walk into a cage: looking for the door,' goblins say. Sensible. I sign things the way I swat flies.",
	},
	["muse.w12.sayings.062"] = {
		"Goblins like to say loyalty is a coin you can spend exactly once. I'd argue it's the only coin that comes back if it's spent well.",
		"'Loyalty spends once, so spend it high,' the goblin saying goes. I disagree with the arithmetic. Spent right, it tends to return.",
	},
	["muse.w12.sayings.063"] = {
		"In Booty Bay they say everyone's honest until the tide goes out. What the tide has to do with it, I can't say, and I'm not asking.",
		"'Honest at high water' is what Booty Bay calls someone you can trust only while it suits them. It covers a surprising number of people.",
	},
	["muse.w12.sayings.064"] = {
		"Goblins warn never to haggle with anyone who has nowhere else to be. They'll outwait you every time. I'm always the one in a hurry.",
		"'Never bargain with someone who has all the time in the world,' the goblin merchants say. That has never once been me.",
	},
	["muse.w12.sayings.065"] = {
		"Water sellers in Gadgetzan say thirst is the one customer who never haggles. A grim little saying. Very good business.",
		"'Thirst doesn't bargain,' runs the saying among Gadgetzan's water merchants. The most honest description of a monopoly I've ever heard.",
	},
	["muse.w12.sayings.066"] = {
		"The Timbermaw furbolgs are said to welcome a guest with empty hands, as long as the hands are willing. A better rule than most inns keep.",
		"'Empty hands are a gift if they'll carry wood,' runs a furbolg saying, or so I'm told. Hospitality with a job attached. Fair.",
	},
	["muse.w12.sayings.067"] = {
		"Furbolgs have a saying that rot starts in the den, never in the woods. Given what demon taint did to so many of their tribes, it's a dearly bought saying.",
		"'Sickness comes home before it comes from outside,' the Timbermaw say. With so many furbolg tribes gone mad from within, I believe them.",
	},
	["muse.w12.sayings.068"] = {
		"Furbolgs reckon a bear's whole wisdom is to eat when it can, sleep when it can, and never worry in between. I've managed the first two.",
		"'Eat, sleep, and leave the worrying to the squirrels,' goes a furbolg saying. I'd love to. It seems I'm the squirrel.",
	},
	["muse.w12.sayings.069"] = {
		"Ogres have a saying, as far as anyone can translate it: two heads, two opinions, one belly, so the belly decides. Some councils work the same way.",
		"'Two heads argue, one stomach wins,' is roughly how the ogre saying goes. More than one kingdom is governed on that principle.",
	},
	["muse.w12.sayings.070"] = {
		"Ogre magi supposedly have a saying: clever ogre, still ogre. Coming from them, I find it more honest than half the lectures scholars give.",
		"'Smart ogre, still ogre,' the ogre magi are said to grumble. More humility in four words than in most libraries.",
	},
	["muse.w12.sayings.071"] = {
		"An ogre saying, loosely translated: the bigger the club, the shorter the argument. Diplomacy, ogre style. Plenty of people with smaller clubs live by it too.",
		"'Big club, short talk,' the ogres say. Crude, but more than a few lords settle things the same way, only with better manners.",
	},
	["muse.w12.sayings.072"] = {
		"Sailors say a ship is never lost, only early to a harbor nobody planned on. I'm adopting that, starting with my next wrong turn.",
		"'Not lost: arriving somewhere unexpected,' as the sailors put it. A generous way of seeing things, and I'll be borrowing it.",
	},
	["muse.w12.sayings.073"] = {
		"Sailors say the rope that saves your life is always one you coiled while bored. Dull work is mostly a gift to some later, worse moment.",
		"'Coil the line well when nothing's happening; something will,' runs a sailors' saying. I think of it whenever I'm tempted to skip a dull chore.",
	},
	["muse.w12.sayings.074"] = {
		"Sailors claim trouble only learns your name once you step ashore; afloat, you're just another hull. I can see why some never come in.",
		"'On deck you're a hull; ashore you're a name, with debts attached,' as sailors have it. No wonder they look uneasy on dry land.",
	},
	["muse.w12.sayings.075"] = {
		"Sailors swear every port has exactly one honest tavern, and it's always shut. I've given up looking for it. I just check the cups.",
		"'One honest tavern per harbor, and its door is locked,' as sailors tell it. Sound advice dressed up as a joke, the way their best advice usually is.",
	},
	["muse.w12.sayings.076"] = {
		"Fishermen have a saying: a net with no holes catches nothing but water. I've begun to forgive a few holes in myself.",
		"'A net is mostly holes, and it still feeds the village,' the fishing folk like to say. Encouraging, for anyone full of gaps.",
	},
	["muse.w12.sayings.077"] = {
		"Fishing folk say that where murlocs start gurgling, the fish have already packed up and left. I'd follow the fish's lead.",
		"'When the murlocs sing, the fishing's over,' is what fishermen along the coasts say. Wise. I'd leave too, and for more reasons than fish.",
	},
	["muse.w12.sayings.078"] = {
		"Caravan masters advise traveling half full: a loaded wagon draws bandits and an empty one draws pity. Moderation, as practiced by people who've been robbed.",
		"'Half a load: too little to rob, too much to beg,' so the caravan folk say. The middle of the road, quite literally.",
	},
	["muse.w12.sayings.079"] = {
		"Auctioneers have a saying: a thing is worth exactly what the second most stubborn buyer will pay. Honest, in its way, and a little cruel.",
		"'Value is set by whoever gives up second,' goes the auctioneers' saying. That isn't trade. That's a contest of mules.",
	},
	["muse.w12.sayings.080"] = {
		"Peddlers claim the customer who argues longest is the one who buys in the end. The silent ones were never going to. I've played both parts.",
		"'Haggling is the sound of a sale coming,' the traveling merchants say. Which makes me a very predictable customer.",
	},
	["muse.w12.sayings.081"] = {
		"Argent Dawn soldiers supposedly say: the dead never rest, so the living had better take turns. Practical faith. I respect it more than the grand kind.",
		"'The dead keep no hours; keep yours in shifts,' as the Argent Dawn reportedly puts it. Plain, tired, and right.",
	},
	["muse.w12.sayings.082"] = {
		"Sergeants like to say one hard march teaches more than ten fine speeches. I believe it, though I'd still like to hear one of the speeches.",
		"'A blistered foot learns faster than a full ear,' as drill sergeants put it. True, sadly. I'd have liked the speech as well.",
	},
	["muse.w12.sayings.083"] = {
		"There's a soldiers' saying that fear is the one comrade who never misses a muster. Might as well learn to march beside it.",
		"'Fear always answers the roll call,' veterans say. I've stopped hoping it will oversleep and given it a place in the line instead.",
	},
	["muse.w12.sayings.084"] = {
		"Soldiers like to say the wound that kills you is the one you were too proud to show the medic. Pride, it seems, keeps a tally of its own.",
		"'Pride hides the cut until the cut wins,' as old campaigners put it. I keep it in mind whenever I'm tempted to say I'm fine.",
	},
	["muse.w12.sayings.085"] = {
		"Field healers have a grim saying: the ones shouting are doing fine; worry about the quiet ones. I think of it whenever someone says nothing for too long.",
		"'Loud wounded live,' as battlefield menders put it. It's the silent ones they run to. I've never heard a saying so practical and so sad.",
	},
	["muse.w12.sayings.086"] = {
		"Trackers have a saying that the freshest trail in any wood is usually your own. It's a warning against walking in circles. It works for thinking, too.",
		"'The newest tracks are mostly yours,' scouts like to say. Often enough I've followed my own thoughts round in a ring to believe it.",
	},
	["muse.w12.sayings.087"] = {
		"Flight masters say you thank a mount that knows the way rather than try to steer it. Plenty of people could stand to hear that about plenty of things.",
		"'Don't steer what already knows the road; thank it,' goes a saying among the beast handlers at the roosts. Good counsel for anyone who loves to be in charge.",
	},
	["muse.w12.sayings.088"] = {
		"Herb gatherers warn that the prettiest bloom in any bog is the one that'll make you sick. Pretty things have a lot to answer for.",
		"'Pick the plain leaf, leave the showy one,' the herbalists say. Advice I'd extend well beyond plants.",
	},
	["muse.w12.sayings.089"] = {
		"Innkeepers say the guest who pays ahead sleeps worst, lying awake doing sums. I can't decide if that's wisdom or a way to sell one more drink.",
		"'Paid up front, up all hours,' is an innkeepers' saying about nervous guests. Wisdom, possibly. Or a way of selling the drink that helps with the sums.",
	},
	["muse.w12.sayings.090"] = {
		"An innkeeper's saying: every table is a border and every shared bench is a treaty. Some of the most peaceful places I know of are long benches.",
		"Innkeepers like to say a crowded bench has ended more feuds than any envoy. I don't doubt it. It's hard to hate someone whose elbow you're sharing.",
	},
	["muse.w12.sayings.091"] = {
		"Innkeepers claim they can read a traveler's whole story off their boots before a word is said. I've taken to hiding mine under the table.",
		"'Listen to the boots, not the mouth,' goes an innkeepers' saying about guests. Mine would tell some embarrassing tales.",
	},
	["muse.w12.sayings.092"] = {
		"Dwarves say never trust a floor you didn't dig yourself. I'm keeping that one.",
		"'Don't trust ground you didn't dig,' as the dwarves say. Sensible folk, dwarves.",
	},
	["muse.w12.sayings.093"] = {
		"Goblins call a bargain a loss that smiled at you first. Worth remembering at the next stall.",
		"'A bargain is a loss with good manners.' Goblin wisdom. I hear it every time I open my purse.",
	},
	["muse.w12.sayings.094"] = {
		"The tauren say a long road makes for a short tongue. Enough talking, then.",
		"Long trail, short talk, as the tauren put it. So: I'll hush.",
	},
	["muse.w12.sayings.095"] = {
		"An old orc saying: whoever boasts first limps home last. Noted.",
		"'Loud on the way out, limping on the way back.' Orcish proverb. A good one.",
	},
	["muse.w12.sayings.096"] = {
		"Sailors say never trust anyone who claims they've never been seasick. Fair. I don't trust anyone who's never been lost, either.",
		"'Never been sick on a ship? Then you've never sailed, or never been honest.' Sailors' wisdom. Hard to argue.",
	},
	["muse.w12.sayings.097"] = {
		"Innkeepers say the last round is always the one people remember wrong. Just so it's said.",
		"'Nobody remembers the last round right,' as innkeepers put it. I'll skip it, then.",
	},
	["muse.w12.sayings.098"] = {
		"Gnomes say there are no accidents, only experiments nobody scheduled. Then I've been very scientific lately.",
		"'No accidents, just unplanned tests,' as the gnomes put it. By that measure, I'm a fine researcher.",
	},
	["muse.w12.sayings.099"] = {
		"Troll wisdom: don't run from what you can wait out. Waiting it is.",
		"'Whatever can be outwaited needn't be outrun,' the trolls say. Patience, then.",
	},
	["muse.w12.sayings.100"] = {
		"Soldiers say you can tell a veteran by how fast they sit down. Like so.",
		"'The veteran sits first,' as soldiers say. Sitting.",
	},
	["muse.w12.sayings.101"] = {
		"Dwarves have it that an empty mug is a question waiting for an answer. Rude to leave it hanging.",
		"'A dry mug asks a question,' the dwarves say. Somebody ought to answer it.",
	},
	["muse.w12.sayings.102"] = {
		"The Forsaken say a grudge keeps better than meat. Cheerful lot.",
		"'Meat rots, grudges keep.' A Forsaken saying. Charming.",
	},
	["muse.w12.sayings.103"] = {
		"Orcs say a silent wolf is a hungry wolf. Don't mind my silence, then.",
		"'The quiet wolf is the hungry one,' as the orcs put it. That explains my mood.",
	},
	["muse.w12.sayings.104"] = {
		"Ogres have a saying: count your heads before you pick a fight. Easier for some than others.",
		"'First count your own heads,' goes the ogre saying. One, in my case. I'm keeping it.",
	},
	["muse.w12.sayings.105"] = {
		"Kodo herders say a kodo forgets neither a kind hand nor a kick. Same here, honestly.",
		"'Kodos remember kicks and kindness alike,' the herders say. So do I.",
	},
}, "base_monologues")
