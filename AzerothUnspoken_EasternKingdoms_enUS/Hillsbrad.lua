-- English texts of the regional pack eastern_hillsbrad (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Hillsbrad.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("hillsbradfoothills", "enUS", "eastern_hillsbrad", [==[
	["hil.a.attack.01"] = {
		"This one's from the farmers of Hillsbrad.",
		"Southshore sends its regards!",
	},
	["hil.a.battle.01"] = {
		"For Southshore! Stand and fight!",
		"These hills have seen enough trouble. Come on, then, let's end yours.",
		"Hillsbrad's had a hard stretch. You're about to make it a little easier.",
	},
	["hil.a.battle.bear.01"] = {
		"braces as the bear rears onto its hind legs, a wall of gray fur and bad temper.",
		"stands {g:his|her} ground while the bear comes crashing through the brush.",
	},
	["hil.a.battle.syndicate.01"] = {
		"Syndicate! Your lords lost Alterac, and you're about to lose this fight.",
		"Hand back what you stole, or I take it back the hard way.",
	},
	["hil.a.journey.arrival.01"] = {
		"Down at Southshore. Gulls, nets, the smell of the sea, and an inn a short walk away.",
		"Off the gryphon and onto the dock road. Southshore smells of salt and woodsmoke, which beats the wind up there.",
	},
	["hil.a.landmark.southshore.01"] = {
		"walks into Southshore, where the boats knock against the pier and the guards keep their faces turned toward the hills.",
		"comes down among the houses of Southshore, salt in the air and the gray sea stretching away past the docks.",
	},
	["hil.a.lowhp.01"] = {
		"Not in these hills. Not on our own side of the line.",
		"I've taken worse than this. Pull yourself together.",
		"Hold. Southshore needs every one of us on our feet.",
	},
	["hil.a.meet.guard.01"] = {
		"A Southshore guard with one eye always half turned to the hills. Tarren Mill is never far from anyone's thoughts here.",
		"The guard nods me through, then goes straight back to watching the road toward Tarren Mill.",
		"Tabard clean, boots muddy, jaw set. This one has stood a good many watches against the Forsaken.",
	},
	["hil.a.muse.01"] = {
		"Tarren Mill sits up there behind the hills, close enough to see its smoke. Close enough for them to see ours.",
		"Southshore on the water, Tarren Mill up in the hills, and nothing between them but farms and grudges.",
		"It's a short ride from Southshore to Tarren Mill. Nobody here makes it unarmed.",
	},
	["hil.a.muse.02"] = {
		"Salt air, fish on the dock, and a proper roof at the end of the road. Southshore does right by us.",
		"Southshore smells of the sea and fried fish. After those hills, that's a welcome.",
		"Give me the Southshore docks and a fair breeze off the sea. The rest of this land can keep its feuds.",
	},
	["hil.a.muse.03"] = {
		"Orchards in neat rows, fences mended and mended again. The farmers here keep planting, whoever marches past.",
		"Green hills, apple trees and sheep. You'd almost forget there's a war a mile up the road.",
	},
	["hil.a.muse.04"] = {
		"Keep a hand on your purse. The Syndicate works these hills like a field, and they aren't here to plant.",
		"Thieves with noble airs. The Syndicate wants Alterac's old glory back, starting with my coin.",
	},
	["hil.a.muse.05"] = {
		"Durnholde Keep, gone to ruin on its hill. The orc camps were run from those walls once, and look at them now.",
		"Broken towers on the hill. Durnholde kept orcs in chains, back then. Now the Syndicate skulks among its stones.",
	},
	["hil.a.muse.06"] = {
		"Bears in the woods, yetis in the caves up the slopes. The Horde isn't the only thing in Hillsbrad with claws.",
		"Gray bears by the stream, yetis somewhere higher up. Even the beasts here have picked a side: their own.",
	},
	["hil.a.muse.07"] = {
		"walks past a fence post scarred by old arrowheads, one more mark of a land fought over field by field.",
		"looks east along the hills, where every farm seems to have been burned once and rebuilt once more.",
	},
	["hil.a.qp.01"] = {
		"That's the last of it. Back down the road, and keep an eye on the ridgeline.",
		"Finished here. The way back is pleasant enough, if you don't count the Forsaken patrols.",
	},
	["hil.a.quest.01"] = {
		"Another job for the folk of Hillsbrad. Paid in coin and a tired smile, which seems fair.",
		"Done. Somewhere a farmer sleeps easier, and I eat well in Southshore.",
		"Small work, honest coin. The foothills run on favors like this one.",
	},
	["hil.a.quest.02"] = {
		"That should help hold the line here. Southshore isn't going anywhere.",
		"There. One more reason for Tarren Mill to leave us be.",
	},
	["hil.a.sub.01"] = {
		"Another fold of the hills. More fences, more fields, and farms that have changed hands more often than anyone likes to admit.",
		"Over the rise the land opens up again: pasture, a stream, and somebody's barn with new boards nailed over old scorch marks.",
	},
	["hil.a.victory.01"] = {
		"Done. The grass is trampled, the fence is whole, and Southshore never has to hear about it.",
		"Calm again in the foothills. The sheep didn't even look up.",
	},
	["hil.a.victory.02"] = {
		"That's one less thing for the farmers to complain about. They'll find another.",
		"Down. Hillsbrad can add that to its long list of things that didn't work out.",
	},
	["hil.a.victory.syndicate.01"] = {
		"Your masters in Alterac can come and collect you themselves.",
		"One less cutpurse on the roads of Hillsbrad.",
	},
	["hil.h.attack.01"] = {
		"For the Horde, and for the Mill!",
		"Take this back over the hills with you!",
	},
	["hil.h.attack.02"] = {
		"A little something from the foothills.",
		"Fresh from the hills. No charge.",
	},
	["hil.h.battle.01"] = {
		"Another one off the hills. Come on, then.",
		"These hills are ours to walk. Move or fall.",
		"You picked a fine green hill to die on.",
	},
	["hil.h.battle.02"] = {
		"Syndicate. Put the knife away and I might let you keep your purse.",
		"Alterac's heirs, robbing farmers from a ditch. What a legacy.",
		"Thief! Your masters in the keep can come and collect you.",
	},
	["hil.h.battle.03"] = {
		"sets {g:his|her} feet on the slope as the gray bear rises out of the brush, all shoulders and teeth.",
		"gives one step down the hillside, then holds, as the bear comes on through the long grass.",
		"meets the bear's charge among the hedgerows, the grass flattening under its weight.",
	},
	["hil.h.battle.04"] = {
		"A pitchfork against a trained hand. They know how this ends, and they come anyway.",
		"Farmers fighting for their fields. Whatever I think of their kingdom, that much I understand.",
	},
	["hil.h.battle.05"] = {
		"Pretty country. Pity everything in it wants a fight.",
		"Can't a body walk these hills for five minutes without somebody swinging at them?",
		"Lovely day for it, I suppose. Everything in Hillsbrad seems to think so.",
	},
	["hil.h.battle.06"] = {
		"vaults a broken fence and turns to meet the attack on the open hillside.",
		"kicks free of the long grass and squares up, the green slope falling away behind.",
		"backs against a dry-stone wall and lets the fight come.",
	},
	["hil.h.journey.arrival.01"] = {
		"Down at Tarren Mill. The bat didn't drop me on Southshore. I'll call that a good flight.",
		"Solid ground, green hills, a Deathguard nodding at me. Hillsbrad, still standing.",
	},
	["hil.h.journey.start.01"] = {
		"rises from Tarren Mill on bat wings, and the foothills unroll below in folds of green, cut through with fences and roads.",
		"lifts off above the rooftops of the town, the orchards shrinking to green dots and Southshore a smudge of smoke by the water.",
		"is carried up over the hills on a cold wind off Alterac, the whole quarreled-over country spread out below like a map on a table.",
	},
	["hil.h.lm.tarrenmill.01"] = {
		"walks into {landmark}, where Deathguards pace the street between gabled houses and a bat stirs on its perch beside the road.",
		"passes the chapel and the tidy houses of the town, the living and the dead going about the same errands under the same gray roofs.",
	},
	["hil.h.lm.tarrenmill.02"] = {
		"Tarren Mill. Not warm, not cheerful, but ours, and this close to Southshore that counts for plenty.",
		"Guards, a bat master, an inn and a chapel. Out on the front, the Mill feels almost like home.",
	},
	["hil.h.lowhp.01"] = {
		"Not in this grass. Not where the farmers would find me with their rakes.",
		"The hills are tilting. That's my legs, not the hills. Stay up.",
		"Too green a place to die in. Get up.",
	},
	["hil.h.lowhp.02"] = {
		"Is that all? Southshore's cooking hits harder.",
		"Still standing. Somebody tell Tarren Mill to keep my supper warm.",
	},
	["hil.h.lowhp.03"] = {
		"staggers on the slope, one hand pressed to the wound, and refuses the ground.",
		"goes down on one knee in the grass and comes up again, slower, but up.",
	},
	["hil.h.muse.01"] = {
		"Green hills, stone fences, apple trees. It looks like a place where nothing bad ever happens. It's lying.",
		"Soft country, all hedges and orchards. The sort of land people fight over precisely because it's so gentle.",
		"Every hill here rolls down into another one, greener than the last. Hard to remember there's a war on.",
	},
	["hil.h.muse.02"] = {
		"Southshore's just over those hills. Close enough to smell their fish, far enough to pretend we can't.",
		"Past that ridge, a guard in Southshore is complaining about us. Good. Keeps him warm.",
		"Tarren Mill on one hill, Southshore by the water, and a lot of very nervous farmers in between.",
	},
	["hil.h.muse.03"] = {
		"Durnholde's walls are broken now. The Warchief grew up behind them in chains. The stones don't look sorry.",
		"In that ruined keep a young orc once learned to fight for the amusement of men. Now he leads the Horde. The keep never saw that coming.",
		"Broken towers on the eastern hills. The camps and the chains were run from places like this. They ended with Thrall.",
	},
	["hil.h.muse.04"] = {
		"The Syndicate hide in Durnholde's ruins and call themselves the heirs of Alterac. Thieves with a family tree.",
		"Alterac's nobles sold out their own people once. Now their heirs rob travelers on these hills. Some trades stay in the family.",
		"Hooded figures in the hedgerows. Wherever there's coin on the road, the Syndicate isn't far.",
	},
	["hil.h.muse.05"] = {
		"Tarren Mill is a thorn in Southshore's side, and they know it. Every day it stands is a small victory.",
		"A mill town turned Forsaken stronghold. The Horde's hold on these hills runs through that one crossroads.",
		"We hold the high ground at Tarren Mill. They hold the shore. The hills between belong to whoever walks them boldest.",
	},
	["hil.h.muse.06"] = {
		"North, the peaks of Alterac stand white against the sky. Cold air comes down off them even on a mild day.",
		"Alterac looms over the foothills like an old debt nobody means to pay. Ogres, thieves and ruins up there, so the scouts say.",
		"The mountains to the north never quite let the sun warm these hills. You feel their breath on the back of your neck.",
	},
	["hil.h.muse.07"] = {
		"walks past rows of apple trees gone half wild, fruit rotting in the long grass beneath them.",
		"pauses by an orchard wall, where windfall apples lie in the grass and wasps drone over them.",
		"follows an old fence along the hillside, its rails gray and split, still keeping out nothing in particular.",
	},
	["hil.h.muse.08"] = {
		"The farmers in the fields below are just farmers. They didn't choose which side of the hills to be born on.",
		"Somebody down there is mending a fence and worrying about the harvest. The war walks right past and treads on the wheat.",
		"War comes to Hillsbrad the way frost does: it doesn't ask the farmers, it just ruins the apples.",
	},
	["hil.h.muse.09"] = {
		"The bears here are fat on apples and in no mood to share. I respect that, from a distance.",
		"Even the bears in Hillsbrad look well fed. The war hasn't reached their larder.",
	},
	["hil.h.muse.10"] = {
		"Good roads, soft grass, and an enemy town at the end of them. Hillsbrad has everything.",
		"Pleasant country. I'd almost settle here, if half of it weren't trying to kill me.",
		"Fresh air, green hills, apples on the trees. Shame about the arrows.",
	},
	["hil.h.muse.11"] = {
		"Tarren Mill was a human village once. Some of the Forsaken there may have walked its streets alive. I don't ask.",
		"Tarren Mill's houses still have their painted shutters, faded to the color of old bone. Somebody chose those colors once.",
		"A mill, a chapel, a few tidy streets. The people who built Tarren Mill wouldn't recognize who holds it now. Or perhaps they would.",
	},
	["hil.h.muse.12"] = {
		"Every raid on the road, every courier lost: Southshore keeps a ledger, and so do we.",
		"Southshore's lookouts are always somewhere on the horizon. I've stopped pretending I don't look for them.",
		"Across these hills the grudge is older than the grass. I didn't start it. I won't be the one who loses it.",
	},
	["hil.h.muse.13"] = {
		"looks west from a hilltop to where the land drops to the gray water of the lake, and the far shore of Silverpine shows dark with pines.",
		"watches the gulls wheel over the shoreline far below, white specks against the gray of the water.",
	},
	["hil.h.muse.14"] = {
		"The apothecaries in Tarren Mill keep their doors shut and their windows lit green. Better not to ask what's brewing.",
		"Something in Tarren Mill always smells of vinegar and old flowers. The apothecaries call it work. I call it worrying.",
		"Vials, bellows, a cart of something under a tarp. Whatever the apothecaries are making, I hope it stays pointed south.",
	},
	["hil.h.npc.flight.01"] = {
		"A bat out of here, please. Preferably one that knows where Southshore isn't.",
		"Fly me somewhere the hills don't shoot back.",
	},
	["hil.h.npc.guard.01"] = {
		"A Deathguard on the road, watching the south as if Southshore might come over the hill any minute. It might.",
		"The guard barely glances at me; those eyes stay fixed on the hills toward the coast.",
		"Rusty armor, patient stance. Tarren Mill's guards have waited for an attack so long they've made a craft of it.",
	},
	["hil.h.npc.inn.01"] = {
		"An innkeeper in a town of the dead. The bread's stale, the welcome's dry, and a chair has never looked so good.",
		"Somewhere to sit, a bowl of something hot. In the middle of a war, an inn is a small truce.",
	},
	["hil.h.qp.01"] = {
		"That's the lot. Off to Tarren Mill, and keep off the skyline.",
		"All done. Now over the hills again without meeting a Southshore patrol.",
	},
	["hil.h.qp.02"] = {
		"Got everything. The hills will just have to manage without it.",
		"Done gathering. If anyone in Hillsbrad was attached to those, they should have said.",
	},
	["hil.h.quest.01"] = {
		"Done. Tarren Mill owes me one, and I'll be collecting in stew.",
		"That's finished. Southshore will hear about it soon enough.",
		"Job done. The hills look exactly the same. I know better.",
	},
	["hil.h.quest.02"] = {
		"Another piece of these foothills made a little safer for the Horde. It adds up, slowly.",
		"The war over Hillsbrad isn't won in one battle. It's won in errands like this, one after another.",
		"Done. A Deathguard will move a marker on a map, a finger's width closer to the shore.",
	},
	["hil.h.quest.03"] = {
		"takes the payment, weighs it once in the palm and looks out over the green hills toward the coast.",
		"accepts the reward with a curt nod; somewhere below, a farm dog barks at nothing.",
		"tucks the coin away and checks the road south, out of a habit these hills teach quickly.",
	},
	["hil.h.quest.04"] = {
		"Finished. Someone at Tarren Mill almost smiled. Around here, that's a parade.",
		"Done, and nobody from Southshore shot at me on the way. A day to mark on the calendar.",
	},
	["hil.h.quest.05"] = {
		"It's done, and I'm paid. I try not to think too hard about the farm at the bottom of the hill.",
		"Another task for the war. I'll rest later. I'm just not sure how well.",
	},
	["hil.h.sub.azurelode.01"] = {
		"A mine. Dark, damp and full of somebody else's ore. My favorite kind of hole.",
		"Azurelode. Pretty name for a hole in the ground with things living in it.",
	},
	["hil.h.sub.durnholde.01"] = {
		"climbs toward the broken walls of Durnholde, where weeds grow in the courtyard and hooded figures watch from the gate.",
		"passes under the ruined towers of the keep, their stones blackened and split, the old banners long gone from the walls.",
	},
	["hil.h.sub.fields.01"] = {
		"Hillsbrad Fields. Barns, haystacks, a scarecrow with its arms out. The Alliance's breadbasket in these parts, and everyone knows it.",
		"Wheat, cattle and farmhands with pitchforks. Here the war is about who eats when the cold comes.",
	},
	["hil.h.victory.01"] = {
		"And that's one less reason to watch the hedgerows. Ha. As if.",
		"Done. These hills can go on looking peaceful.",
		"Down. The apples didn't even stop growing.",
	},
	["hil.h.victory.02"] = {
		"The grass is green, the sky is soft, and I'm standing over a body. Hillsbrad is good at contrasts.",
		"Breathe. Look at the hills. They don't care who won, and somehow that helps.",
		"Over. A lark starts up somewhere close by, wholly unimpressed.",
	},
	["hil.h.victory.03"] = {
		"Another Syndicate cutthroat. Alterac's grand heritage, face down in the dirt.",
		"Keep your stolen coin. Where you're going, you won't need it.",
		"So much for the Syndicate's famous cunning.",
	},
	["hil.h.victory.04"] = {
		"straightens on the hillside, the wind combing the long grass flat around the fallen foe.",
		"looks up from the fight across the rolling hills, measuring the distance to the next fence and the next trouble.",
		"stands for a moment in the trampled grass, breathing hard, while the clouds drift on over the foothills.",
	},
	["hil.h.victory.05"] = {
		"For Tarren Mill. Next.",
		"One more off the road. Tarren Mill's couriers can ride a little easier.",
		"That one's for every runner who never made it to the Mill.",
	},
	["hil.h.wc.rain.01"] = {
		"Rain over the foothills. The fences darken, the grass bows, and every road turns to mud at once.",
		"Here comes the rain off the lake. Good for the orchards, bad for my boots.",
		"The rain draws a gray veil between Tarren Mill and the coast. For an hour, nobody can see anybody.",
	},
]==])
