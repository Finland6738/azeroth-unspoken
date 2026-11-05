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
}, "base_monologues")
