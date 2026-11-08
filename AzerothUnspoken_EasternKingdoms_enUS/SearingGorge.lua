-- English texts of the regional pack eastern_searinggorge (content wave W03). The rules are in AzerothUnspoken_EasternKingdoms/SearingGorge.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("searinggorge", "enUS", "eastern_searinggorge", [==[
	["sgg.a.attack.01"] = {
		"Take that, and mind the slag!",
		"Here's some steel to go with all that fire!",
	},
	["sgg.a.battle.01"] = {
		"Fire behind me, fire ahead. Fine. I'll go through you.",
		"Come on, then. I didn't climb all the way into this furnace to back down.",
	},
	["sgg.a.battle.02"] = {
		"plants {g:his|her} feet on the cinders and meets the charge.",
		"steps clear of a glowing crack in the ground and turns to fight.",
	},
	["sgg.a.battle.03"] = {
		"Dark Iron! How many slaves dug the tunnel you came out of?",
		"Dark Iron. Let's see if you fight as hard as you make your slaves work.",
	},
	["sgg.a.battle.04"] = {
		"Of course it wants a fight. Nothing in this place is ever just warm.",
		"I'm half cooked already. Whatever you are, get in line.",
	},
	["sgg.a.journey.01"] = {
		"Up from Thorium Point, and the smoke falls away under the gryphon. I can finally breathe.",
		"The gryphon climbs out of the heat, and for the first time in hours the air is cool.",
	},
	["sgg.a.landmark.01"] = {
		"comes up into Thorium Point, all scaffolds and walkways clinging to the rock above the Gorge.",
		"reaches Thorium Point, the Brotherhood's camp on the heights, where Alliance and Horde alike come to do business.",
	},
	["sgg.a.lowhp.01"] = {
		"Not here! I won't end up as slag!",
		"Get up. The ground is hot enough without lying on it.",
		"Hold on. This gorge has taken enough already.",
	},
	["sgg.a.muse.01"] = {
		"Slag heaps, cinder fields and rivers of molten rock. The Searing Gorge looks like a forge somebody forgot to put out.",
		"Everything here is black, gray or glowing. Nothing in between, and nothing green at all.",
		"The ground crunches underfoot like burnt bread, and here and there it glows.",
	},
	["sgg.a.muse.02"] = {
		"Down in the Cauldron the Dark Irons work their slaves until they drop. You can hear the picks from up here, and nobody singing.",
		"Chains and picks and the whip. The Cauldron eats people the way the forges eat ore.",
	},
	["sgg.a.muse.03"] = {
		"Lovely place. Warm, too. A bit too warm.",
		"If anyone needs me, I'll be the one sweating through my armor.",
		"Somebody ought to open a bathhouse here. They wouldn't even need to heat the water.",
	},
	["sgg.a.muse.04"] = {
		"The Thorium Brotherhood are Dark Iron too, and still they trade with anyone who pays. Strange, to find a friendly forge in this place.",
		"The dwarves of the Thorium Brotherhood walked away from their own kin. Whatever made them leave, they're the closest thing to a welcome in the Gorge.",
	},
	["sgg.a.muse.05"] = {
		"turns toward the south, where Blackrock Mountain rises over the Gorge under a crown of smoke.",
		"stops to watch the lava creep along a channel in the rock, slow and bright and patient.",
	},
	["sgg.a.muse.06"] = {
		"Every breath here tastes of sulfur and hot metal. My lungs will be filing a complaint.",
		"Ash in my hair, ash in my teeth. The Gorge doesn't let anyone leave clean.",
	},
	["sgg.a.muse.07"] = {
		"Keep moving. Stand still too long here and the ground starts cooking your boots.",
		"Nobody stays in this gorge longer than they must. I won't be the first.",
	},
	["sgg.a.muse.08"] = {
		"When Thaurissan called up Ragnaros, the land here split and burned. The Gorge is what was left, and it is burning still.",
		"Centuries since the Firelord was woken, and the ground still hasn't cooled. Some wounds don't close.",
	},
	["sgg.a.npc_meet.01"] = {
		"Out of the Gorge, please, and quickly. The gryphon's feathers won't last in this heat.",
		"Somewhere cool, if you'd be so kind. Anywhere cool.",
		"Does the gryphon mind the smoke? Because I've started to.",
	},
	["sgg.a.quest_complete.01"] = {
		"Done. In a place like this, a finished job feels like a small rebellion.",
		"One more thing set right in the Searing Gorge. There's plenty left, but it's a start.",
	},
	["sgg.a.quest_complete.02"] = {
		"Paid. The coin's warm. Everything in this gorge is warm.",
		"Done, and only slightly singed. I'll call that a bargain.",
	},
	["sgg.a.quest_complete.03"] = {
		"Finished. Somewhere in this gorge, a hard life just got a little less hard.",
		"Done. The Gorge won't thank me, but somebody in it might.",
	},
	["sgg.a.quest_progress.01"] = {
		"That's everything. Now out of the heat before my boots melt.",
		"Done here. Back over the cinders, and more carefully this time.",
	},
	["sgg.a.subzone_enter.01"] = {
		"Deeper into the Gorge. The rock changes color, but it never cools.",
		"Another stretch of cinder and slag. Even the paths here look burnt.",
		"Past the last ridge, and the heat comes up to meet me like an open oven.",
	},
	["sgg.a.victory.01"] = {
		"Down. The lava keeps bubbling as if nothing happened. Nothing here notices a death.",
		"Over. The Gorge hisses and pops all around me, entirely uninterested.",
	},
	["sgg.a.victory.02"] = {
		"That's one less thing in here that's hotter than me.",
		"Good. Now, does anyone have water? Anyone at all?",
	},
	["sgg.a.victory.03"] = {
		"wipes soot and sweat from {g:his|her} brow, leaving a gray streak behind.",
		"shakes the ash off the weapon and steps back from the heat of the rocks.",
		"drops to one knee on the warm stone for a breath, then gets up before it gets any warmer.",
	},
	["sgg.a.weather_change.01"] = {
		"The wind shifts, and the smoke over the Gorge leans a different way. A small change, the same heat.",
		"Something in the sky has changed. Down here, the lava hasn't noticed.",
	},
	["sgg.h.attack.01"] = {
		"Here, have some more heat!",
		"Taste Horde steel!",
	},
	["sgg.h.battle.01"] = {
		"Into the fire with you, then! For the Horde!",
		"Burn if you like. I'm still coming.",
	},
	["sgg.h.battle.02"] = {
		"shifts {g:his|her} weight on the loose cinders and squares up to the foe.",
		"lifts a weapon already hot to the touch and steps in.",
	},
	["sgg.h.battle.03"] = {
		"Spiders. Big ones, and they like the heat. Wonderful.",
		"Eight legs, too many eyes and a home in a furnace. No wonder it's angry.",
	},
	["sgg.h.battle.04"] = {
		"Sweating before the first swing. This will be a very long fight or a very short one.",
		"Something else wants to share the heat with me. How generous.",
	},
	["sgg.h.journey.01"] = {
		"climbs onto the wind rider at Thorium Point and rises out of the smoke, the glow of the Gorge fading below.",
		"takes to the air from Thorium Point, and the lava shrinks to thin red threads far beneath.",
	},
	["sgg.h.landmark.01"] = {
		"The Cauldron. A great pit full of smoke, hammering and Dark Iron overseers. I'd sooner walk into the lava.",
		"Looking down into the Cauldron is like looking into the Dark Irons' own heart: hot, deep and full of chains.",
	},
	["sgg.h.lowhp.01"] = {
		"Too hot to think, too hurt to stop. Keep going.",
		"If I go down here, there won't even be bones left. Get up.",
		"The world's swimming in the heat. Or that's me. Stay standing.",
	},
	["sgg.h.muse.01"] = {
		"Black rock, red cracks, and a sky the color of old smoke. This whole gorge is one long burn that never healed.",
		"The ground ticks and hisses, cooling in one spot and heating in another. It never seems to settle on either.",
		"Not a tree, not a bush, not a blade of grass. Only cinders, and the glow beneath them.",
	},
	["sgg.h.muse.02"] = {
		"Blackrock Mountain stands over the Gorge. Somewhere inside it the Blackrock clan still fights for masters Thrall would never kneel to.",
		"The Dark Irons below, the Blackrock orcs above, and a dragon's brood over the lot. A crowded mountain.",
	},
	["sgg.h.muse.03"] = {
		"Even the spiders here look cooked.",
		"Nice view. I'll be leaving because of it.",
		"Water? Here? I'd settle for shade that isn't on fire too.",
	},
	["sgg.h.muse.04"] = {
		"Picks ringing in the Cauldron, and under them the shuffle of slaves in chains. Thrall's Horde was born breaking chains like those.",
		"Somebody is digging in the Cauldron who never chose to. You can tell from how slowly the picks swing.",
	},
	["sgg.h.muse.05"] = {
		"watches a river of lava slide past far below, its glow painting the cliffs orange.",
		"steps around a vent in the rock just as it coughs up a puff of hot gray smoke.",
	},
	["sgg.h.muse.06"] = {
		"Dwarves at Thorium Point who will trade with the Horde without spitting first. In this gorge, that's the strangest sight of all.",
		"The Thorium Brotherhood keep their own counsel and their own forges. They need allies against their kin, and they don't much care what banner those allies carry.",
	},
	["sgg.h.muse.07"] = {
		"Good spot for cooking. Just set the pot down anywhere.",
		"In Durotar they grumble about the heat. They've never stood here.",
	},
	["sgg.h.muse.08"] = {
		"The fire under this gorge was called up on purpose, long ago, by a Dark Iron who wanted to win a war. He won nothing, and the land is still paying.",
		"Ragnaros is down there somewhere, under that mountain, and his heat seeps up through every crack.",
	},
	["sgg.h.npc_meet.01"] = {
		"Anyone handing out work in the Searing Gorge either knows the place well or is about to. Listen carefully.",
		"A job offered with soot-black hands. In this gorge, that's how you know it's honest work.",
		"Whoever lives out here long enough to need help has earned a hearing.",
	},
	["sgg.h.quest_complete.01"] = {
		"Done. Out here the Horde has no walls, only the people willing to do the work.",
		"A job finished in the worst place I know. It ought to count for more.",
	},
	["sgg.h.quest_complete.02"] = {
		"Coin for my trouble. I'd sooner have a bucket of cold water.",
		"Paid in full. Now, which way is anywhere that isn't on fire?",
	},
	["sgg.h.quest_complete.03"] = {
		"settles the matter and pockets the reward, a film of soot on every coin.",
		"finishes the work and takes a moment, letting the hot wind dry the sweat.",
	},
	["sgg.h.quest_progress.01"] = {
		"Finished, every last piece. Now out of this furnace, and quick.",
		"Everything I came for. The Gorge can keep the rest, ash and all.",
	},
	["sgg.h.subzone_enter.01"] = {
		"climbs over a ridge of black slag into a new part of the Gorge, the heat rising with every step down.",
		"passes from one scorched hollow into the next, the light of the lava flickering on the rocks.",
		"picks a way down a crumbling trail toward another stretch of cinders.",
	},
	["sgg.h.victory.01"] = {
		"Done. The fire goes on roaring somewhere below, and the Gorge forgets the whole thing.",
		"Over. Ash settles on the body, and in a while nobody will be able to tell what it was.",
	},
	["sgg.h.victory.02"] = {
		"Victory for the Horde, even in this furnace!",
		"Another one for the Horde. Let Blackrock hear it.",
	},
	["sgg.h.victory.03"] = {
		"steps back from the fallen foe and spits out a mouthful of ash.",
		"rubs the soot from {g:his|her} eyes and tests the ground before taking another step.",
		"fans a hand in front of {g:his|her} face, coughing, as the dust and smoke of the fight drift away.",
	},
	["sgg.h.weather_change.01"] = {
		"The wind turns, and the haze off the lava rolls toward me instead of away. Lovely.",
		"The sky shifts overhead, a shade darker or a shade lighter. Under all this smoke it's hard to tell.",
	},
	["sgg.a.attack.w10.001"] = {
		"Here, cool off with this!",
		"Here, something hotter than the Gorge!",
	},
	["sgg.a.battle.w10.001"] = {
		"Come on. The ground's hot, but I'm worse.",
		"Out of the smoke, then. Let's see you.",
	},
	["sgg.a.battle.w10.002"] = {
		"Don't step on the glowing bits. Don't step on the glowing bits.",
		"Footing first. One wrong step here and the ground does the fighting for them.",
	},
	["sgg.a.battle.w10.003"] = {
		"Back into the rock, flame!",
		"A fire with legs and a temper. Fine. Come here.",
	},
	["sgg.a.journey.w10.001"] = {
		"Down on the scaffolds. The gryphon wants to leave already, and frankly so do I.",
		"Landed. The gryphon tucks its head under a wing against the soot, which seems wise.",
	},
	["sgg.a.landmark.w10.001"] = {
		"{landmark}. The ground drops away into a bowl of smoke and molten rock, and on the ledges, tiny figures pushing carts. This is where the Dark Irons dig.",
		"The Cauldron. A crater full of fire and machinery, with lava for a floor. From the rim it looks like the world's own forge.",
	},
	["sgg.a.lowhp.w10.001"] = {
		"Blood hisses where it hits the rock. That's mine. Move.",
		"My blood is sizzling on the stones. Time to stop bleeding.",
	},
	["sgg.a.muse.w10.001"] = {
		"Ironforge and the Dark Irons have been at war since the three clans split. Here you see the other side of that quarrel, and it is burning.",
		"Magni's people and Thaurissan's have hated each other for centuries. This gorge is what the losing side of that old war made of its anger.",
		"The War of the Three Hammers never quite ended. It just moved down here, into the slag and the smoke.",
	},
	["sgg.a.muse.w10.002"] = {
		"That fire just moved. Fires shouldn't have opinions.",
		"Some of the flames here walk about. I'd rather they sat still, like decent flames.",
	},
	["sgg.a.muse.w10.003"] = {
		"The road south ends at Blackrock Mountain's mouth. Everyone at Thorium Point can name someone who walked in there.",
		"South, the mountain opens its gate. Dark Irons below, the Dark Horde above, dragons over all. And the path there is well worn.",
		"Everyone who works this gorge ends up looking toward Blackrock's gate sooner or later. I'm looking now.",
	},
	["sgg.a.muse.w10.004"] = {
		"At Thorium Point you can stand in line behind an orc to buy the same ore. The Brotherhood takes everyone's coin with the same face.",
		"The Brotherhood sells to Alliance and Horde alike, and doesn't smile at either.",
	},
	["sgg.a.muse.w10.005"] = {
		"crosses a crust of cooled rock, testing each step, while orange light shows in the cracks.",
		"picks a slow way over black stone still warm from below, careful of the seams that glow.",
	},
	["sgg.a.muse.w10.006"] = {
		"Dark Iron golems clank along the ridges. Even the things they build here are made for one purpose.",
		"Iron giants on patrol, made by hands that never seem to make anything gentle.",
	},
	["sgg.a.npc_meet.w10.001"] = {
		"Anything for burns? And something to drink that isn't warm, if the Brotherhood has heard of such a thing.",
		"Salve for scorched hands, please, and water. Lots of water.",
	},
	["sgg.a.quest_complete.w10.001"] = {
		"hands over the work with soot-blackened fingers and leaves prints on everything.",
		"takes the reward and juggles the coins a moment, too hot to hold.",
		"blows a film of ash off the reward before tucking it away.",
	},
	["sgg.a.quest_complete.w10.002"] = {
		"Done. Every task finished in the Gorge is one more thing the Dark Irons have to explain to their emperor.",
		"Finished. Down in the mountain, Thaurissan's people will have one more report they don't like.",
	},
	["sgg.a.quest_progress.w10.001"] = {
		"Not finished. The rest is out among the cinders, getting warmer.",
		"Partway done. What's left is somewhere under all this ash.",
	},
	["sgg.a.subzone_enter.w10.001"] = {
		"{subzone}. Hotter than the last bit, or I've started imagining it. Probably both.",
		"{subzone}. Somebody gave it a name. The cinders never noticed.",
	},
	["sgg.a.victory.w10.001"] = {
		"Thorium Point owes me a drink. A cold one, if such a thing exists.",
		"That's one for the Brotherhood's tally.",
		"Done. Thorium Point will want to hear this one.",
	},
	["sgg.a.victory.w10.002"] = {
		"If that one was guarding the pits, a few slaves just got a little more room to breathe.",
		"One fewer whip over the Cauldron. Not enough, but it counts.",
	},
]==])
