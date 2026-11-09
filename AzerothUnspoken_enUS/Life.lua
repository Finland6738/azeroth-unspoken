-- Testi di base in inglese: morte, ritorno in vita e livelli. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryLife.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("enUS", {
	["death.01"] = {
		"So... the dark. It is not as cold as they said.",
		{ "Huh. Dizzy. Then nothing.", depth = "natural" },
		{ "The world ebbs from me, slow as a tide, and leaves me standing on the sand to watch it go.", depth = "elevated" },
	},
	["death.02"] = {
		"Go on... without me...",
		"Don't stop for me... keep moving...",
	},
	["death.03"] = {
		"This... was not in the plan.",
		"Ah. So that's what 'be careful' meant.",
	},
	["death.04"] = {
		"Tell them at home... that I did not run.",
		{ "Tell my folks... I held on.", depth = "natural" },
		{ "Carry my name to those who wait by the door at home. Tell them I fell facing forward.", depth = "elevated" },
	},
	["death.05"] = {
		"I will return. I swear it on my bones.",
		"This isn't over. Remember my face.",
	},
	["death.06"] = {
		"I see the stars... they are so far away...",
		{ "Funny... the sky's gone crooked.", depth = "natural" },
		{ "The stars look down, unhurried, as they looked on everyone who fell before me.", depth = "elevated" },
	},
	["death.orc.01"] = {
		"Ancestors... make room by the fire...",
		"Ancestors... I do not come empty-handed...",
	},
	["death.scourge.01"] = {
		"Again? How tedious.",
		"Dying while dead. Twice the bother.",
	},
	["death.tauren.01"] = {
		"Earth Mother... I come back to you...",
		"The grass is soft beneath me. Is that your hand, Earth Mother?",
	},
	["death.troll.01"] = {
		"Hey... the loa owe me one...",
		"Nobody touch my stuff... be right back, mon...",
	},
	["death.dwarf.01"] = {
		"Someone... finish my ale...",
		"Take me... under the mountain... to my fathers...",
	},
	["death.nelf.01"] = {
		"Elune... now I see your light...",
		"The moon is close tonight. Closer than it has ever been.",
	},
	["death.human.01"] = {
		"I wanted to see Elwynn again... in summer...",
		"The mill by the river... I wonder if it still turns...",
	},
	["death.gnome.01"] = {
		"Note to self... recheck the math...",
		"Design flaw... in the designer...",
	},
	["death.boss.01"] = {
		"It is not... over... while one of you stands...",
		"Hold on... it's faltering too...",
	},
	["death.e.01"] = {
		"collapses; the weapon slips from {g:his|her} hand, and the world falls silent.",
		{ "drops to the ground and lies still.", depth = "natural" },
		{ "sinks slowly down, and the earth takes {g:him|her} without a sound, the way it takes the rain.", depth = "elevated" },
	},
	["death.e.02"] = {
		"falls to one knee, then the other, and closes {g:his|her} eyes like one who has walked too long.",
		{ "sags to {g:his|her} knees, leans on {g:his|her} weapon, then slides down.", depth = "natural" },
		{ "kneels in the dust as if before an altar; the breath grows short, and then is still.", depth = "elevated" },
	},
	["death.e.03"] = {
		"breathes {g:his|her} last; for a moment, the shadows around {g:him|her} seem deeper.",
		"lies with {g:his|her} eyes open; a crow lands nearby, in no hurry at all.",
	},
	["death.e.04"] = {
		"falls with {g:his|her} gaze still fixed upon the foe, and does not lower it.",
		"goes down with {g:his|her} weapon still clenched and {g:his|her} chin held high.",
	},
	["death.e.05"] = {
		"gasps; a hand gropes at the grass, then falls open.",
		"slumps sideways; a waterskin rolls away and comes to rest against a stone.",
	},
	["death.e.06"] = {
		"lies still while the wind goes on combing the grass, as if nothing had changed.",
		"stays down, and the evening falls all the same, asking no one's leave.",
		{ "lies where {g:he|she} fell; leaves settle on {g:him|her} one by one, slow as a rite.", depth = "elevated" },
	},
	["death.e.07"] = {
		"slumps; for a moment the light turns gray, and every sound seems to come from very far away.",
		"fades, and the color drains out of the world like water from a cracked pail.",
	},
	["death.e.08"] = {
		"pitches face-first into the dirt with a remarkable lack of grace.",
		"trips on the last step and drops like a sack of flour.",
	},
	["rez.01"] = {
		"The dark did not want me. I don't know whether to be grateful.",
		{ "Still here. That's... fine, I think.", depth = "natural" },
		{ "I stood on the threshold, and the door swung shut without a word. Refusal or mercy, I cannot tell.", depth = "elevated" },
	},
	["rez.02"] = {
		"I'm back. And I am in a foul mood.",
		"Up again. Who did that? I only want a word.",
	},
	["rez.03"] = {
		"I saw a place where there is no wind. It is not mine yet.",
		{ "It was quiet over there. Too quiet for me.", depth = "natural" },
		{ "Beyond, the sky has no color and the grass never bends. I was allowed to look, not to stay.", depth = "elevated" },
	},
	["rez.04"] = {
		"Did anyone take notes? I'd rather not do that again.",
		"Right. Once more, with slightly less dying.",
	},
	["rez.05"] = {
		"I breathe. Every breath, from now on, is a gift.",
		{ "Air. Good, plain air.", depth = "natural" },
		{ "The first breath burns like spring water in winter. I mean to remember it with every breath that follows.", depth = "elevated" },
	},
	["rez.06"] = {
		"I left something down there. I hope it doesn't follow me.",
		"Did all of me come back? Something's missing, and I can't name it.",
	},
	["rez.07"] = {
		"Hands work. Legs too. Good.",
		"Cold and hungry again. Marvelous.",
	},
	["rez.08"] = {
		"Every time I come back, the road is a little longer.",
		"More tired than before I fell. Much more.",
	},
	["rez.09"] = {
		"Someone, or something, held the door for me. Thank you, whoever you are.",
		"No idea whom to thank. The ground under my feet will do, for now.",
	},
	["rez.scourge.01"] = {
		"Dead, alive, undead... I've lost count.",
		"Another round, same old bones.",
	},
	["rez.orc.01"] = {
		"The Ancestors sent me back. They say I am not finished.",
		"The Ancestors don't want me yet. Bad news for my enemies.",
	},
	["rez.tauren.01"] = {
		"The Earth Mother has returned me to the path. I will walk it with more respect.",
		"The land has set me back on my hooves. I owe it a lighter step.",
	},
	["rez.nelf.01"] = {
		"I walked in the Dream, and the Dream let me go.",
		"The roots held me for a while, then loosened their grip.",
	},
	["rez.dwarf.01"] = {
		"The ancestors sent me back. They say the forge isn't cold yet.",
		"Feels like the morning after an Ironforge brawl. Did I at least win?",
	},
	["rez.e.01"] = {
		"opens {g:his|her} eyes and draws a deep breath, like one returning from a long winter.",
		{ "opens {g:his|her} eyes, coughs, and sits up.", depth = "natural" },
		{ "draws breath like one surfacing from deep water, and the daylight settles back on {g:him|her} one color at a time.", depth = "elevated" },
	},
	["rez.e.02"] = {
		"rises slowly, looking at {g:his|her} hands as if they were a stranger's.",
		{ "hauls {g:himself|herself} up and slaps the dust off.", depth = "natural" },
		{ "rises from the ground by slow degrees and studies {g:his|her} palms, as if searching them for a road already walked.", depth = "elevated" },
	},
	["rez.e.03"] = {
		"draws breath like someone surfacing from water that was far too deep; a heartbeat later, {g:his|her} chest rises again.",
		"feels weight and warmth return all at once, like a cloak thrown back over {g:his|her} shoulders, still cold with dew.",
	},
	["rez.e.04"] = {
		"gets back up, prods at {g:his|her} ribs, and counts {g:his|her} teeth with {g:his|her} tongue.",
		"staggers upright and looks around for {g:his|her} weapon, then {g:his|her} pack, then the road.",
	},
	["rez.e.05"] = {
		"slowly regains {g:his|her} color, like a fogged pane of glass clearing.",
		"shivers, as though a wind from somewhere very far off had passed straight through {g:him|her}.",
	},
	["rez.e.06"] = {
		"gets up, and one by one the birds start singing again, as though nobody had told them.",
		"breathes again, and the world takes up its noises: a creaking branch, an insect, a footstep far away.",
	},
	["lvl.01"] = {
		"I feel something waking in my blood. The world is not so large anymore.",
		{ "I feel sharper. Readier.", depth = "natural" },
		{ "Something has caught behind my breastbone, an ember that asks for no kindling. The world is still vast, but now I can meet its eye.", depth = "elevated" },
	},
	["lvl.02"] = {
		"Every scar teaches. Today I learned.",
		{ "Another lesson. Paid for, but learned.", depth = "natural" },
		{ "Scars are letters written in skin. Today, for the first time, I can read a whole line.", depth = "elevated" },
	},
	["lvl.03"] = {
		"Stronger, wiser, and the same bad back.",
		"One level up. My knee disagrees.",
	},
	["lvl.04"] = {
		"The road grows steeper. Good: so do my legs.",
		{ "Harder climb? Stronger legs. Let's go.", depth = "natural" },
		{ "The path climbs into clouds I have never seen. Let it climb. I will follow it to the top.", depth = "elevated" },
	},
	["lvl.05"] = {
		"I grow, and those I lost stay where I left them.",
		"Stronger now. I wish I could tell the ones who are gone.",
	},
	["lvl.06"] = {
		"Here is the summit. From up here you can see every war that is still to come.",
		"Nothing left to climb. Only something left to defend.",
	},
	["lvl.07"] = {
		"Hah! Now the boars will fear me. Some of them. Maybe.",
		"New level! The local wolves have been warned. More or less.",
	},
	["lvl.08"] = {
		"The Light asks more of me. I will give it more.",
		"More strength in my hands, more weight on my shoulders. That is the Light's bargain.",
	},
	["lvl.09"] = {
		"The voices grow clearer. Perhaps I should worry.",
		"The pact grows wider. I really should read the fine print.",
	},
	["lvl.10"] = {
		"The elements speak louder now. Or I am finally listening.",
		"The wind has changed its voice. Now it calls me by name.",
	},
	["lvl.11"] = {
		"A new formula! And hardly any eyebrows burned.",
		"New spell learned. The book survived. The table did not.",
	},
	["lvl.12"] = {
		"Stronger! My enemies will learn my name the hard way.",
		"Stronger! Bring me something worth fighting!",
	},
	["lvl.13"] = {
		"Stronger, yes. The tiredness doesn't level up, though. It just stays.",
		"One step further. And now, if at all possible, a bed.",
	},
	["lvl.14"] = {
		"I didn't get here alone. Remember that.",
		"I owe this to every hand that ever pulled me up.",
	},
	["lvl.15"] = {
		"Splendid. Now I'm strong enough for bigger trouble.",
		"One more level, and the world rushes to send bigger enemies. How thoughtful.",
	},
	["lvl.e.01"] = {
		"closes {g:his|her} eyes; something ancient wakes within {g:him|her}, and does not go back to sleep.",
		{ "takes a deep breath and very nearly smiles.", depth = "natural" },
		{ "stands motionless a long while, as a quiet strength climbs from the soles of {g:his|her} feet to the nape of {g:his|her} neck, like sap in spring.", depth = "elevated" },
	},
	["lvl.e.02"] = {
		"squares {g:his|her} shoulders, and for a moment seems taller than {g:he|she} is.",
		{ "clenches a fist, opens it again, and nods once.", depth = "natural" },
		{ "lifts {g:his|her} head, and for a moment the light seems to rest on {g:him|her} more gladly than on anything else.", depth = "elevated" },
	},
	["lvl.e.03"] = {
		"weighs {g:his|her} weapon in {g:his|her} hands, as though it had suddenly grown lighter.",
		"rolls {g:his|her} shoulders; something in the joints creaks, then settles.",
	},
	["lvl.e.04"] = {
		"looks up; for an instant the air hums like a lute string just plucked.",
		"stands in the middle of the path as a golden glow washes over {g:him|her} and fades.",
		{ "for the space of a blink is wrapped in golden light, and the dust about {g:his|her} feet lifts and settles.", depth = "elevated" },
	},
	["lvl.e.05"] = {
		"glances around; the only witness is a thoroughly unimpressed squirrel.",
		"grins at nothing in the middle of the road, and a passer-by walks a little faster.",
	},
	["band.b20_30.levelup.01"] = {
		"Stronger again. The roads that scared me a while ago look like ordinary roads now.",
		"Something settles into my arms, a little more weight behind every move. I'll take it.",
		"Another step up. The world doesn't get smaller, but I take up a little more room in it.",
	},
	["band.b30_40.levelup.01"] = {
		"Stronger. The scars don't hurt any less, but they carry more.",
		"Another notch on the long climb. My legs remember every one of them.",
		"There it is. Not a leap anymore, just one more sure step.",
	},
	["band.b40_50.levelup.01"] = {
		"Stronger again, and less inclined to be impressed by it.",
		"Another rung. For once, the ladder is shorter above me than below.",
		"Growing used to feel like a jump. Now it feels like a door opening onto a harder room.",
	},
	["band.b50_60.levelup.01"] = {
		"The top is nearer. The air up here is thinner, and clearer.",
		"Stronger again. There aren't many steps left, and every one of them is steep.",
		"Another step. I can almost see where this ends, and what comes after doesn't scare me.",
	},
	["race.dwarf.levelup.w08.001"] = {
		"Harder, like iron after another quench. The forge isn't finished with me yet.",
		"Another layer of stone settled. A mountain grows like that too: slowly, and for good.",
	},
	["race.dwarf.levelup.w08.002"] = {
		"Stronger! Somebody tell the brewers; I'll be needing bigger mugs.",
		"A notch tougher. Ironforge had better start building its doorways wider.",
	},
	["race.human.levelup.w08.001"] = {
		"Stronger. Humans don't get centuries to grow into themselves; we have to do it at a run.",
		"A step further. Elves grow over ages; a human has to grow up between one fight and the next.",
	},
	["race.human.levelup.w08.002"] = {
		"Another notch! A human life is short; might as well make it a full one.",
		"Better than I was! Not bad for a creature with seventy years, give or take.",
	},
	["race.nightelf.levelup.w08.001"] = {
		"Stronger. My people once had forever to grow; now every step forward counts.",
		"A little more than I was. Since Hyjal, my people can't take growing for granted.",
	},
	["race.nightelf.levelup.w08.002"] = {
		"stands very still as something new takes root within {g:him|her}, slow and certain as a seedling of Teldrassil.",
		"lifts {g:his|her} chin, and for a moment the glow in {g:his|her} eyes burns a shade brighter.",
	},
	["race.tauren.levelup.w08.001"] = {
		"Stronger. Like a calf growing into the herd: you never see it happen, and then one day you're keeping pace with the leaders.",
		"A little more to me than yesterday. The elders say a tauren never stops growing, only slows down. Today I believe them.",
	},
	["race.tauren.levelup.w08.002"] = {
		"Even bigger, somehow. Doorways of the world, I apologize in advance.",
		"Stronger again. Somebody warn the low ceilings.",
	},
	["race.gnome.levelup.w09.001"] = {
		"Upgrade complete! Still the same height, regrettably.",
		"Improved in every way but one. Some specifications are fixed at the factory.",
	},
	["race.gnome.levelup.w09.002"] = {
		"A little stronger. Gnomeregan will need every gnome at their best when the time comes to take it back.",
		"Better than before. When my people go home to Gnomeregan, I mean to be worth bringing.",
	},
	["race.orc.levelup.w09.001"] = {
		"Stronger than yesterday. Orcs don't count years; we count what our arms can lift.",
		"More in me than there was. The elders measure an orc by the weight carried, and mine just grew.",
	},
	["race.scourge.levelup.w09.001"] = {
		"Stronger. The body doesn't grow anymore, so the will has to do the growing for both of us.",
		"More than I was. Not the flesh, which is past improving. Something underneath it, sharper now.",
		"A step up. The dead aren't supposed to grow. I've never been one for supposed to.",
	},
	["race.scourge.levelup.w09.002"] = {
		"Look at that: improving, at my age, in my condition.",
		"Getting better! Not bad for a corpse. The apothecaries will want notes.",
	},
	["race.troll.levelup.w09.001"] = {
		"Stronger. Like a reef growing: you never see it happen, and then it's there.",
		"A little more troll than yesterday. The witch doctors say we keep growing as long as we keep learning.",
	},
	["race.troll.levelup.w09.002"] = {
		"Ha! Feel that? The loa just beat the drums a little harder.",
		"More strength, more speed, and the tusks are looking good too.",
		"Look out, world. This troll just grew taller on the inside.",
	},
	["band.b60.levelup.w10.001"] = {
		"This is as high as the road goes. Strange: I expected a view, and what I see is work.",
		"The top, then. No bells, no crowd. Just a long breath, and the worst of the world still waiting.",
	},
	["band.b60.levelup.w10.002"] = {
		"That's it? No higher? Then I'd better find better boots.",
		"As strong as I'm going to get. From here on it's all about the gear, apparently.",
	},
	["levelup.w15.grow.001"] = {
		"As if I'd been wearing a coat a size too big, and just grew into a little more of it.",
		"The shape I'm meant to fill is still larger than me. The gap just narrowed.",
	},
	["levelup.w15.grow.002"] = {
		"The dangers are the same size they were a moment ago. I'm the one who got bigger.",
		"Nothing out there shrank. I simply measure a little more against it.",
		"The world hasn't gone easy on me. I've gone a little harder on it.",
	},
	["levelup.w15.grow.003"] = {
		"shifts {g:his|her} feet, and something in the way {g:he|she} stands has quietly become harder to move.",
		"stands a fraction steadier, the way a post stands once it has been driven all the way in.",
	},
	["levelup.w15.grow.004"] = {
		"Whatever comes now finds a little more of me waiting.",
		"Felt that. Bring on the next thing.",
		"Something just got stronger in here. Good. I'll need it.",
	},
	["levelup.w15.grow.005"] = {
		"No moment I could point to. Just a quiet difference, and no undoing it.",
		"It didn't arrive. It was simply there when I looked, the way a knack is there once you stop forcing it.",
	},
	["levelup.w15.grow.006"] = {
		"goes very still, like a bell just struck and listening to itself.",
		"stands quiet while something settles deep inside {g:him|her}, slow as silt in still water.",
		"holds motionless a moment, like a bell after the stroke, while the change hums its way out to the edges.",
	},
	["levelup.w15.grow.007"] = {
		"I was someone a moment ago. Now I'm one pace further on.",
		"A moment ago my limits were right here. They've moved. Not far. Far enough.",
		"The line where I give out has shifted outward. Only a little. It counts.",
	},
	["levelup.w15.grow.008"] = {
		"Steadier. That's new.",
		"Huh. Everything just got a little lighter to carry.",
		"Feels like someone took a pebble out of my boot. Everywhere.",
	},
	["levelup.w15.grow.009"] = {
		"Growth is a quiet animal. It doesn't announce itself; it just takes up more room.",
		"Nothing grows by shouting. It grows by not stopping.",
	},
	["levelup.w15.grow.010"] = {
		"looks down at {g:his|her} own hands as though they had just learned a new trick.",
		"turns one palm up and studies it, as if the change might be written there.",
	},
	["levelup.w15.grow.011"] = {
		"Whatever just grew in me, I want it put to work.",
		"A measure more than before. I want to see what it can move.",
		"Fresh strength sitting idle is a waste. Point me at something heavy.",
	},
	["levelup.w15.grow.012"] = {
		"Let it be marked: I am more than I was.",
		"Mark it, whoever keeps such tallies. I have grown.",
	},
	["levelup.w15.grow.013"] = {
		"It isn't strength, exactly. It's one less reason to be afraid.",
		"Not power, quite. More like a fear I can finally set down.",
		"What I feel isn't mightier. It's less frightened, and that may be better.",
	},
	["levelup.w15.grow.014"] = {
		"stands motionless a beat; afterward, {g:his|her} movements waste nothing.",
		"moves on with a step that wastes nothing, as if someone had trimmed the clumsy parts away.",
	},
	["levelup.w15.grow.015"] = {
		"From here on, every struggle starts a little more in my favor.",
		"The odds just tipped, ever so slightly, toward me. I'll take every grain of that.",
		"Every fight ahead just shifted a hair my way. Hairs add up.",
	},
	["levelup.w15.grow.016"] = {
		"More than I was a moment ago. Let's find out what for.",
		"That's more than I had a blink ago. I intend to use it.",
	},
	["levelup.w15.weigh.001"] = {
		"Strength isn't a reward. It's a larger bill, paid in advance.",
		"Whatever I can carry now, someone will ask me to carry.",
		"This isn't a prize. It's a receipt for something I haven't been asked for yet.",
	},
	["levelup.w15.weigh.002"] = {
		"Every bit I grow takes me a bit further from whoever I was before all this.",
		"I'm becoming someone. I hope I'll recognize them when they arrive.",
	},
	["levelup.w15.weigh.003"] = {
		"pauses in silence, as one does before a task too large to take in at a single look.",
		"goes quiet, with the face of someone weighing a gift that came with conditions.",
	},
	["levelup.w15.weigh.004"] = {
		"Then let me be worth it.",
		"If I'm given more, I'll answer for more.",
		"More is mine now. So is the reckoning for it.",
	},
	["levelup.w15.weigh.005"] = {
		"The more I'm able for, the more I can see that needs doing. The list never shrinks.",
		"Each bit of strength shows me a little more of the world's trouble. Clearer sight, longer list.",
	},
	["levelup.w15.weigh.006"] = {
		"Stronger, yes. Not one bit less mortal. Mustn't mix the two up.",
		"Growing tougher isn't growing out of reach. Death keeps pace with anyone.",
		"However much I grow, my end grows right alongside. It's the one companion that never falls behind.",
	},
	["levelup.w15.weigh.007"] = {
		"is quiet for a moment, like someone tallying what this cost and choosing not to finish the sum.",
		"looks back the way {g:he|she} came, briefly, then ahead, and keeps looking ahead.",
	},
	["levelup.w15.weigh.008"] = {
		"Others will start expecting more of me. I'd rather expect it first.",
		"More will be asked now. I'd rather be the one asking.",
	},
	["levelup.w15.weigh.009"] = {
		"Stronger. So the next burden will be heavier. Fair.",
		"A little more to give, then. Let's see who needs it.",
		"More strength means more to lift. There's always someone waiting to be lifted.",
	},
	["levelup.w15.weigh.010"] = {
		"A whetstone gives an edge by taking metal off. Growing is never only gain.",
		"Every gain is weighed against something. I just don't always see the other pan of the scale.",
	},
	["levelup.w15.weigh.011"] = {
		"lowers {g:his|her} gaze for a moment, as though the new strength were also a new weight.",
		"draws {g:himself|herself} up, and the set of {g:his|her} shoulders is at once prouder and more tired.",
		"seems for an instant both larger and heavier, like a pack that has just been loaded.",
	},
	["levelup.w15.weigh.012"] = {
		"Somewhere ahead is a moment all this was for. I hope I know it when I see it.",
		"This strength is for something. I don't know what yet. It'll find me.",
	},
	["levelup.w15.weigh.013"] = {
		"I can do more. I'm not sure I know more. Those were never the same thing.",
		"Power came quick. Sense comes slower, and I'll need it more.",
	},
	["levelup.w15.weigh.014"] = {
		"Whatever's out there waiting, it'll find me a little harder to stop.",
		"Let what's ahead know: it gets a tougher fight now.",
	},
	["levelup.w15.weigh.015"] = {
		"I'll need every scrap of this, and more. I know that much already.",
		"This won't be enough. It never is. But it's more than it was.",
		"Not enough for what's coming. Nothing ever is. Still, closer.",
	},
	["levelup.w15.weigh.016"] = {
		"stands very straight for a moment, like someone taking an oath that nobody administers.",
		"gives a single short nod to whatever lies ahead, as one acknowledges a summons.",
	},
	["levelup.w15.wry.001"] = {
		"Somewhere there ought to be a doorframe with a fresh notch in it for this.",
		"Someone should be marking this on a doorpost. I'll have to make do with feeling smug.",
	},
	["levelup.w15.wry.002"] = {
		"Did anyone see that? No? Then I'll tell it bigger later.",
		"Nobody saw? Excellent. The story improves already.",
		"No witnesses. A shame. I'd have described it modestly, too.",
	},
	["levelup.w15.wry.003"] = {
		"Tougher, apparently. Wiser hasn't arrived yet. Perhaps it's in the next parcel.",
		"The strength came. The wisdom must have taken the long road.",
	},
	["levelup.w15.wry.004"] = {
		"pats {g:himself|herself} down, as if checking whether anything fell off.",
		"checks {g:his|her} hands, then {g:his|her} feet, as if the change ought to have left a mark somewhere obvious.",
		"glances down at {g:himself|herself} with suspicion, as if expecting a label to have appeared.",
	},
	["levelup.w15.wry.005"] = {
		"Wonderful. From now on my mistakes will be slightly more impressive.",
		"Now I can make the very same mistakes with more conviction.",
		"Excellent: I can now get into trouble I couldn't even have reached before.",
	},
	["levelup.w15.wry.006"] = {
		"I'd like to thank my feet, my stubbornness, and everything that missed.",
		"My thanks to everything that tried and missed. Couldn't have done it without you.",
	},
	["levelup.w15.wry.007"] = {
		"No ribbon, no speech, no certificate. Getting stronger in this world is a quiet business.",
		"Nobody hands out a certificate for this. A pity: I'd hang it somewhere.",
	},
	["levelup.w15.wry.008"] = {
		"mutters something smug to {g:himself|herself}, then glances around to see if anyone heard.",
		"allows {g:himself|herself} one small, private nod of approval.",
	},
	["levelup.w15.wry.009"] = {
		"My pack weighs exactly what it did. So much for being stronger.",
		"Stronger, and yet the pack still pulls at exactly the same spot.",
		"All that growth, and the strap still digs in where it always has. Some things are beyond improvement.",
	},
	["levelup.w15.wry.010"] = {
		"Ah. Didn't see that coming. I never do.",
		"Oh, that's nice. Does it come with a chair?",
		"Huh. Nobody warned me. Nobody ever does.",
	},
	["levelup.w15.wry.011"] = {
		"To celebrate, I'll go on doing exactly what I was doing, a shade better.",
		"A celebration is in order. I'll hold it later, if I remember.",
	},
	["levelup.w15.wry.012"] = {
		"pauses mid-step, frowns like someone hunting for a word, then shrugs and carries on.",
		"blinks, rubs {g:his|her} eyes, and looks twice at nothing at all.",
		"tilts {g:his|her} head as though listening for something just said, and hears nothing more.",
	},
	["levelup.w15.wry.013"] = {
		"Somewhere, something I haven't met yet just became a little less lucky.",
		"Far off, some trouble of mine still to come has just had its odds trimmed.",
	},
	["levelup.w15.wry.014"] = {
		"Same me, only more of it. The world will have to cope.",
		"More of me than before. Plan accordingly, world.",
	},
	["levelup.w15.wry.015"] = {
		"If only my purse grew as willingly as I do.",
		"More muscle, and my purse still hasn't caught the habit.",
		"Everything about me grows except the coin I carry. There's a lesson in that, and I resent it.",
	},
}, "base_life")
