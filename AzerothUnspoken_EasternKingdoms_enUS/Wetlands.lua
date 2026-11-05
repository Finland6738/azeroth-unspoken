-- English texts of the regional pack eastern_wetlands (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Wetlands.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("wetlands", "enUS", "eastern_wetlands", [==[
	["wet.attack.01"] = {
		"Hold still, it's slippery enough already!",
		"From Menethil, with regards!",
		"Take that, and take it back to the swamp!",
	},
	["wet.battle.01"] = {
		"Come on, then, and mind the mud. It's not on your side either.",
		"Fine. Whoever wins, the mud wins more.",
		"You picked a soggy place for a fight. I'll make it short.",
	},
	["wet.battle.croc"] = {
		"All teeth and no manners. Come here.",
		"I'm not dinner, crocolisk. I'm indigestion.",
	},
	["wet.battle.dragonmaw"] = {
		"Dragonmaw! Your dragons are gone. You should have gone with them.",
		"No more chains, no more captives. Your clan's day is over.",
		"Back to Grim Batol, Dragonmaw, and take your war drums with you!",
	},
	["wet.battle.narr"] = {
		"braces in the soft ground to meet the attack, mud sucking at {g:his|her} boots.",
		"shifts to firmer footing among the reeds and turns to face what comes.",
	},
	["wet.battle.raptor"] = {
		"Raptor. Fast, clever, and it's already decided where to bite. Don't give it the leg.",
		"Watch the claws, watch the tail, and for pity's sake watch for the second one.",
	},
	["wet.journey.arrival"] = {
		"climbs down from the gryphon at Menethil Harbor and breathes in salt, tar and the green smell of the marsh beyond the walls.",
		"lands by the harbor, where gulls wheel over the masts and the damp gets into everything at once.",
		"steps off the gryphon onto wet stone, and the sea wind tugs at {g:his|her} cloak.",
	},
	["wet.landmark.dunmodr"] = {
		"stops beneath the broken walls of Dun Modr, where Dark Iron dwarves now prowl among stones that other dwarves once cut with care.",
		"picks through the rubble of Dun Modr, a dwarven hold gone to ruin, with the great bridge rising beyond it to the north.",
	},
	["wet.landmark.menethil"] = {
		"Menethil Harbor. Ships, gulls, sailors arguing on the docks. After the marsh, it sounds like music.",
		"Here's the harbor: stone walls, salt air, and a keep that has watched this bay for a very long time.",
	},
	["wet.lowhp.01"] = {
		"Not in this mud. Nobody's fishing me out of a swamp.",
		"The water's cold and the ground won't hold. Neither will I, much longer. Move.",
		"Blood in the water. Mine. Everything in this marsh will smell it.",
	},
	["wet.lowhp.02"] = {
		"Bitten, soaked, knocked flat, and still on my feet!",
		"Is that it? The mosquitoes bite harder.",
	},
	["wet.muse.01"] = {
		"Water everywhere, but none of it going anywhere in a hurry. This land doesn't drain; it just sits and thinks.",
		"Reeds, black pools, mud that pulls at the boots. Every step here is a negotiation.",
		"Flat, wet and gray-green to the edge of sight. The land can't quite decide whether it wants to be a lake.",
	},
	["wet.muse.02"] = {
		"Dry socks are a rumor in this place. I've stopped believing in them.",
		"The mud here has opinions. Mostly about keeping my boots.",
	},
	["wet.muse.03"] = {
		"Far off to the east, Grim Batol rises dark against the sky. Even from here the mountain looks like it remembers something bad.",
		"Grim Batol. The dwarves who built it left long ago, and the ones who came after them are worse company.",
		"The dragons once chained in that mountain have been free for years, the tale goes. The mountain doesn't look as if it believes it.",
	},
	["wet.muse.04"] = {
		"Menethil Harbor is the only dry place for miles, and they still built half of it out over the water. Sailors.",
		"Behind me, Menethil's lamps and its tavern. Good to know there's a hearth at the edge of all this mud.",
	},
	["wet.muse.05"] = {
		"Dragonmaw orcs still lurking in these hills. Didn't anyone tell them the war ended?",
		"The Dragonmaw lost their dragons and kept their temper. Not a good trade.",
	},
	["wet.muse.06"] = {
		"stops at the edge of a pool where a wading bird stands on one leg, unbothered, as if the whole marsh belonged to it.",
		"picks a careful path between the reeds, testing each tussock before trusting it with {g:his|her} weight.",
	},
	["wet.muse.07"] = {
		"That log has teeth. That log is watching me. Lovely place.",
		"Crocolisks in the water, raptors in the hills. This marsh has something hungry for every kind of ground.",
		"Something slid off the bank just as I came near. I didn't see what. I'm choosing not to find out.",
	},
	["wet.muse.08"] = {
		"North, past the old dwarven ruins, the Thandol Span crosses the gorge toward the Arathi Highlands. A bridge that big was built by people who meant to come and go for a thousand years.",
		"The road runs north through the marsh toward the great bridge. Somebody once kept it paved. Now the mud keeps it.",
	},
	["wet.muse.09"] = {
		"Ships to Theramore and Auberdine from the harbor. Half the Alliance passes through this mud on its way somewhere better.",
		"Every sailor in Menethil smells of tar and salt and complains about the marsh. I see why.",
	},
	["wet.muse.10"] = {
		"Night in the marsh is loud: frogs, insects, the slap of something in the water. Silence would be more frightening, I think.",
		"In the dark the pools hold the stars, and the reeds whisper over them. Pretty, if I don't think about the crocolisks.",
	},
	["wet.muse.11"] = {
		"Wet to the knees, wet to the waist on a bad crossing. The cold goes in through the leather and stays there.",
		"Every pool looks shallow until it isn't. My knees keep learning the difference.",
	},
	["wet.muse.12"] = {
		"Gnolls in the fens, murlocs on the shore. This marsh seems to collect every creature nobody else wanted.",
		"Murlocs gurgling along the shoreline. There is no sound in the world that carries quite so far.",
	},
	["wet.muse.13"] = {
		"The dwarves built all over this marsh once. Here and there their stones still poke up through the mud, carvings worn soft by water and moss.",
		"Old dwarven stonework, half swallowed by the marsh. Whoever lived here gave up on staying dry long before I came.",
	},
	["wet.npc_meet.flightmaster"] = {
		"One gryphon, high and dry, as far from this mud as it'll fly.",
		"Thelsamar, please. Anywhere with hills that stay put under your feet.",
	},
	["wet.npc_meet.innkeeper"] = {
		"A room with a dry floor, if you have one. I'll pay extra for dry.",
		"Something hot, please, and a spot near the fire where my boots can steam in peace.",
		"What's the strongest thing you pour for folk who've just come in from the marsh?",
	},
	["wet.quest_complete.01"] = {
		"Done. Somebody in Menethil owes me a dry towel.",
		"That's settled. Now for a fire and a long talk with my boots.",
		"Finished, and only a little damp. For the Wetlands, that's a personal best.",
	},
	["wet.quest_complete.02"] = {
		"The harbor holds this whole coast together, and the harbor needs help to hold. Good to give it some.",
		"Menethil keeps the sea road open for the Alliance. Every job done here makes that road a little safer.",
	},
	["wet.quest_complete.03"] = {
		"wrings out the hem of {g:his|her} cloak and lets the satisfaction of a finished task outweigh the damp.",
		"shakes the water from {g:his|her} sleeves and looks out over the marsh with the job finally behind {g:him|her}.",
	},
	["wet.quest_complete.04"] = {
		"A small job in a big marsh. Still, the people of the harbor will sleep a little easier.",
		"Not glorious work. Wet work. But it needed doing, and now it's done.",
	},
	["wet.quest_progress.ready"] = {
		"That's all of it. Back to whoever asked, before the marsh swallows the proof.",
		"Done. Now the long squelch back.",
		"Finished. I hope whoever's waiting for news has a fire going.",
	},
	["wet.subzone_enter.bluegill"] = {
		"wades into the marsh where the reeds grow thick and the water carries the gurgle of murlocs from close by.",
		"steps onto the soggy flats, where fishing nets hang from poles and the shore is churned with webbed prints.",
	},
	["wet.subzone_enter.whelgar"] = {
		"A dig site, and the diggers nowhere to be seen. Only claw marks. I don't like that arithmetic.",
		"Picks dropped, tents torn, raptor tracks everywhere. Somebody left here in a great hurry.",
	},
	["wet.victory.01"] = {
		"Into the mud with you. You'll fit right in.",
		"Done. Now, which of these puddles did I drop my dignity in?",
	},
	["wet.victory.02"] = {
		"Over. Water in my boots, an ache in my arms, and the marsh already closing over the tracks.",
		"That one's done. The frogs have started up, as if nothing happened.",
		"Breathe. Wipe the face. Find a dry rock, if this place has one.",
	},
	["wet.victory.dragonmaw"] = {
		"One less raider on the Menethil road.",
		"The Dragonmaw keep coming down from the hills. They keep staying down, too.",
	},
	["wet.victory.narr"] = {
		"lowers {g:his|her} weapon and listens as the marsh noises creep back, one croak after another.",
		"steps back onto firmer ground and scrapes the worst of the mud from {g:his|her} boots.",
		"stands among the trampled reeds, breathing hard, while the dark water settles.",
	},
	["wet.weather_change.rain"] = {
		"lifts {g:his|her} face to the rain, which makes little difference to someone already this wet.",
		"watches the rain stipple the black pools and bow the reeds, one more layer of water on a land made of little else.",
	},
]==])
