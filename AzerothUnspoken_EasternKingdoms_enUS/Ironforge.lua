-- English texts of the regional pack eastern_ironforge (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/Ironforge.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("dunmorogh", "enUS", "eastern_ironforge", [==[
	["ifo.journey.arrival.01"] = {
		"slides down from the gryphon into the heat of the Great Forge, cheeks still stinging from the cold of the sky.",
		"lands with a thump on warm stone as the clang of the anvils rushes in from every side.",
		"dismounts and lingers a moment by the forge, letting the warmth chase the height out of {g:his|her} bones.",
	},
	["ifo.journey.arrival.02"] = {
		"Warm air, the smell of coal, the ring of hammers. However the road went, Ironforge takes me in.",
		"Down from the cold sky and straight into the mountain's warmth. A friendly hall, and safe walls all around.",
	},
	["ifo.journey.arrival.03"] = {
		"Solid stone under my feet. I could kiss it, but it's probably hot.",
		"Made it. Can someone point me to the ale before my knees stop shaking?",
	},
	["ifo.journey.start.01"] = {
		"Out of the forge heat and into open sky in a single wingbeat. The cold hits like a slap, and it's glorious.",
		"The gryphon bursts out past the gates and the mountain drops away behind. After all that stone, so much sky.",
		"From the furnace glow to the white roof of the world. The gryphon doesn't seem to notice the difference; I do.",
	},
	["ifo.journey.start.02"] = {
		"Mind the ceiling! Mind the ceiling! ...Right. We're out.",
		"Through the gate at full speed. Let it be noted that I did not scream. Much.",
		"Farewell, Ironforge. Keep the forge lit and the tankards full.",
	},
	["ifo.journey.start.03"] = {
		"settles onto the gryphon's back as it lifts away from the Great Forge, the glow of molten iron shrinking below.",
		"grips the harness as the gryphon beats its wings once, twice, and carries {g:him|her} out of the mountain's red light.",
	},
	["ifo.memory_return.01"] = {
		"The same red glow, the same ringing anvils. Ironforge hasn't changed, and right now I'm grateful for it.",
		"I'd forgotten how the heat meets you at the gate. Some things the body remembers before the mind does.",
	},
	["ifo.muse.ale"] = {
		"In Ironforge the ale flows as freely as the molten iron. I know which of the two I'd rather drink.",
		"I've never seen a city with so many forges and so many tankards. I suspect the two are related.",
	},
	["ifo.muse.anvils"] = {
		"pauses to listen to a hundred hammers striking a hundred anvils, never quite in time with one another.",
		"steps aside as a smith hauls a glowing ingot past, the heat of it washing over {g:him|her} like a wave.",
		"watches sparks leap from an anvil and die on the stone floor, one bright spray after another.",
	},
	["ifo.muse.dwarf"] = {
		"Every hall here was cut by the hands of my forebears, blow after stubborn blow. I walk through their patience.",
		"Home. The ring of the anvils, the smell of coal and ale, and the mountain closed overhead like a sheltering hand.",
	},
	["ifo.muse.explorers"] = {
		"The Explorers' League digs through half the world looking for where the dwarves came from. Brave work, asking the earth who you are.",
		"Maps, bones, broken tablets. The dwarves seem as hungry for their own past as they are for gold.",
	},
	["ifo.muse.forge"] = {
		"The whole city hums with the Great Forge, like a heart beating deep in the stone.",
		"Heat on my face, cold rock at my back. Ironforge never lets you forget there's a mountain all around you.",
		"Molten metal pours down from the heights, bright as a sunrise nobody here ever needs to see.",
	},
	["ifo.muse.gnome"] = {
		"The dwarves gave us Tinker Town and never once made us feel like beggars. Still, a guest room is not a home.",
		"Mekkatorque holds court in a borrowed corner of a borrowed city. One day we'll take Gnomeregan back. One day.",
	},
	["ifo.muse.king"] = {
		"King Magni keeps his high seat in the heart of the mountain. Say what you like about kings; this one keeps a warm hall.",
		"Deep in these halls Magni Bronzebeard sits with his counsel and his crown. The city works as if he were watching. Perhaps he is.",
	},
	["ifo.muse.nosky"] = {
		"Lovely city. Shame about the sky. Somebody seems to have built a mountain over it.",
		"Day or night? No idea. Down here the forge decides, and the forge never sleeps.",
		"I asked a dwarf what it was like outside today. He said 'cold', as if that settled it, and went back to his anvil.",
	},
	["ifo.muse.tram"] = {
		"Somewhere under my feet a gnomish car is rattling through a tunnel beneath the sea, all the way to Stormwind. Madness. Wonderful madness.",
		"The Deeprun Tram: a road under the sea, built by gnomes. I'm told you can watch the fish go by through the glass.",
	},
	["ifo.npc_meet.banker"] = {
		"The Vault of Ironforge. If anywhere in the world can keep my few coins safe, it's a bank dug into a mountain.",
		"The banker looks at my deposit the way a smith looks at poor ore. Polite, but unconvinced.",
	},
	["ifo.npc_meet.flightmaster"] = {
		"A gryphon, please. One that's eaten recently, and not a traveler.",
		"Where can your gryphons take me from here? Somewhere with a sky over it would be nice.",
	},
	["ifo.npc_meet.guard"] = {
		"An Ironforge guard, broad as a doorway and just as easy to move. I feel better already.",
		"The guard's eyes flick over me, weigh me, and let me pass. A dwarf on watch misses nothing.",
	},
	["ifo.quest_complete.01"] = {
		"Paid and done. In this city that means one thing: a round at the tavern.",
		"Another job finished. The dwarves pay fair, and in coin that rings true.",
		"That's settled. Somebody in this city owes me a drink, and I mean to find out who.",
	},
	["ifo.quest_complete.02"] = {
		"accepts the thanks with a nod and steps back into the noise of the city, one task lighter.",
		"tucks the reward away and lets the clamor of the forges swallow the moment.",
		"clasps a calloused hand in thanks, then turns back toward the glow of the Great Forge.",
	},
	["ifo.quest_complete.03"] = {
		"The dwarves remember who helps them. In a city carved to last, that's no small thing.",
		"Word travels slowly through stone, but it travels. Someone in these halls will remember my name.",
	},
	["ifo.rest_enter.inn"] = {
		"A bench, a fire, a mug of something brewed by people who take brewing as seriously as war. I can rest here.",
		"The tavern is loud and warm and smells of roast and stout. Exactly what my bones were asking for.",
		"Boots off, back to the stone, forge-heat in the walls. Rest comes easy under a mountain.",
	},
	["ifo.rest_enter.safe"] = {
		"Walls of solid mountain and a dwarf with an axe at every door. I think I'll finally get some sleep.",
		"Safe inside Ironforge. Nothing gets through that much stone, except the noise of the forges.",
	},
	["ifo.subzone_enter.explorers"] = {
		"The Hall of Explorers. Old bones, older maps, and the hush of people reading about places they mean to dig up.",
		"Shelves of books, the skeleton of some great beast, and dwarves arguing softly over a map. My kind of hall.",
	},
	["ifo.subzone_enter.forlorn"] = {
		"lowers {g:his|her} voice without meaning to on entering the Forlorn Cavern, where the light is thin and the talk is thinner.",
		"passes into the dim hollow of the Forlorn Cavern, where watchful eyes follow from corners the forge-glow never reaches.",
	},
	["ifo.subzone_enter.greatforge"] = {
		"steps into the red glow of the Great Forge, where rivers of molten metal pour from the heights into the heart of the city.",
		"stops at the edge of the Great Forge, the heat beating against {g:his|her} face and the great anvil ringing at its center.",
	},
	["ifo.subzone_enter.tinker"] = {
		"Tinker Town. Everything here either whirs, clanks or smokes. Some things manage all three.",
		"Gnomes, gears and a faint smell of something singed. I'll keep my eyebrows well clear of the workbenches.",
	},
	["ifo.weather_change.snow"] = {
		"Somebody just came in from the gate shaking snow off a cloak. Out there it's blowing; in here it's forge-warm all year round.",
		"Snow on the boots of everyone coming in from outside. I'll stay by the forge and take their word for it.",
		"Folk are stamping snow off at the gates. Ironforge doesn't bother with weather; it only does heat.",
	},
	["ifo.greet.w02.01"] = {
		"Hail! Warm enough in here for you, after that mountain road?",
		"Well met. Mind the sparks, and mind the dwarves in a hurry.",
	},
	["ifo.muse.w02.01"] = {
		"Runes cut into every arch, worn soft at just the height where hands have touched them for generations.",
		"The stone of the halls is polished smooth where boots and shoulders have rubbed it. A city wears in, like a good glove.",
	},
	["ifo.muse.w02.02"] = {
		"Somebody in the Military Ward is testing a rifle again. Either that, or the mountain has hiccups.",
		"Bang. Then cheering. Then another bang. Dwarven target practice, or a very lively wedding.",
		"A boom from the far end of the city, and nobody so much as looks up. Ironforge has heard worse.",
	},
	["ifo.muse.w02.03"] = {
		"leans on a stone rail above the Great Forge, the heat rising past {g:his|her} face in slow, shimmering waves.",
		"watches the red light of the molten channels move across the carved walls, until the stone faces seem to change expression.",
	},
	["ifo.muse.w02.04"] = {
		"The Mystic Ward is the quietest corner of the city. Even the dwarves who study there seem to have learned to put their hammers down.",
		"Priests and mages in the Mystic Ward, murmuring over their books. After the din of the forges it's like stepping into a pocket of the mountain's own thoughts.",
	},
	["ifo.quest_complete.w02.01"] = {
		"Done. The one who set the task looked over the result the way a smith looks at a weld: hard, from every side, then one short nod.",
		"Finished, inspected and approved. In Ironforge even thanks go through the forge first.",
	},
	["ifo.quest_complete.w02.02"] = {
		"takes the reward in a hand still warm from the forge-heat of the halls, and nods once.",
		"steps aside for a cart of ore, the reward already in a belt pouch and the task sinking into the noise of the city.",
	},
	["ifo.weather_change.w02.01"] = {
		"Someone at the gate says the sky outside has cleared. I'll keep the forge-glow, but it's good news for the gryphons.",
		"Word comes in from the gates: blue sky over Dun Morogh. Nobody in here changes pace on account of it.",
	},
	["ifo.dawn.w05.001"] = {
		"Outside, the sun must be coming up. In here the only sign is the tired crew handing their hammers to the fresh one, yawning.",
		"No sunrise under the mountain, only the changing of the forge crews: fresh arms in, tired ones out to breakfast.",
		"Dawn, apparently. The ovens have started up somewhere, and the first travelers come in from the gate with frost on their cloaks.",
	},
	["ifo.dusk.w05.001"] = {
		"watches the day crews leave the forges black to the elbows, heading for the taverns, while fresh arms take up the hammers; outside, the dusk must be falling.",
		"notices the lamps along the halls being trimmed and topped up, the city's only nod to the dusk coming down beyond the gate.",
		"sees a gate guard come in stamping, done with the watch, and hears the guard tell someone the light is going over Dun Morogh.",
	},
	["ifo.farewell.w05.001"] = {
		"I'm away. Keep a warm bench for me, Ironforge.",
		"Farewell. If you need me, I'll be the one shivering on the road outside.",
		"Off into the cold. Wish me thick socks.",
	},
	["ifo.farewell.w05.002"] = {
		"Stone keep you and fire warm you, wherever the road goes.",
		"May the mountain stand behind you, and the road be kind ahead.",
	},
	["ifo.farewell.w05.003"] = {
		"Go well. The gate's always open on the way back in.",
		"Safe road out there. The city will still be warm when you come back.",
	},
	["ifo.greet.w05.001"] = {
		"Well met under the mountain.",
		"Greetings, and welcome to the warm side of the gate.",
	},
	["ifo.greet.w05.002"] = {
		"Hello there. No soot on your face, so you're not a smith. Traveler?",
		"Hail! You don't smell of coal yet. Just arrived?",
	},
	["ifo.greet.w05.003"] = {
		"Good to see you. Come stand by the heat a moment.",
		"Ah, a friendly face. Ironforge has plenty, but they're usually busy hammering.",
	},
	["ifo.jest.w05.001"] = {
		"The dwarves built a city inside a mountain to keep out the cold, then filled it with molten iron just to be sure.",
		"In Ironforge, a whisper is anything you can't hear past the next anvil.",
		"How can you tell when an Ironforge guard is asleep? You can't. They stand exactly the same.",
	},
	["ifo.journey.w05.001"] = {
		"ducks low over the gryphon's neck as it races along the stone passage toward the gate, carved walls flashing past close enough to touch.",
		"flattens against the saddle while the gryphon threads the tunnel to the gate, wingtips all but brushing the old carvings.",
		"holds on as the gryphon beats down the long hall to the gate, the echo of its wings rolling ahead like a drum in a cellar.",
	},
	["ifo.journey.w05.002"] = {
		"The gryphon takes the tunnels as if it's done this a thousand times. It probably has. I still duck at every arch.",
		"Arch, arch, pillar, arch. The gryphon doesn't even slow down. I've stopped breathing until we're through.",
	},
	["ifo.journey.w05.003"] = {
		"Out of the gate, and the daylight on the slopes is so bright after the forge-glow that I fly the first stretch with my eyes half shut.",
		"From red gloom to white glare in one wingbeat. My eyes need a moment; the mountains don't wait for them.",
	},
	["ifo.journey.w05.004"] = {
		"flies out of the gate into the dark, the red mouth of Ironforge shrinking behind until it is only an ember on the mountainside.",
		"leaves the forge-glow for the night air, and the great gate dwindles to a single coal glowing in the black slope.",
	},
	["ifo.journey.w05.005"] = {
		"Low through the gate, beast, and mind the guards' heads!",
		"Keep under the arches till we're out, then climb as high as you like.",
		"Easy past the door. The guards don't laugh when we clip their helmets.",
	},
	["ifo.journey.w05.006"] = {
		"The hammering follows me out of the gate and fades over the first ridge. After Ironforge, the quiet up here is enormous.",
		"Behind me, the last ring of the forges; ahead, nothing but wind. My ears hardly know what to do with the silence.",
		"Ironforge's din clings for a few wingbeats, then the mountain swallows it whole. Only the wind talks now.",
	},
	["ifo.journey.w05.007"] = {
		"Over my shoulder the great gate and the stone giants carved beside it grow small. From up here the whole city is just a door in a mountain.",
		"The carved figures flanking the gate look tiny now, and the gate itself like a mousehole in the rock. Hard to believe a city lives behind it.",
		"From the air, Ironforge is only a door in the mountainside. Everything I know of it is hidden behind that one door.",
	},
	["ifo.journey.w05.008"] = {
		"sweeps over the guards at the gate, who do not so much as tilt their helmets to watch.",
		"passes above the gate guards; one of them raises a hand without looking up, the way one waves to a neighbor.",
	},
	["ifo.journey.w05.009"] = {
		"Out of the warm and straight into a snow squall. The gryphon shakes its head once and climbs into it anyway.",
		"Snow coming sideways past the gate. Three heartbeats ago I was warm. I'd like those heartbeats back.",
	},
	["ifo.journey.w05.010"] = {
		"West of here, under those white hills, lies Gnomeregan. I tell myself not to look that way. I always look.",
		"West, past the ridges, is the home we lost. The gryphon doesn't turn its head. I do.",
	},
	["ifo.journey.w05.011"] = {
		"is carried clear of the mountainside in one long glide, the wind off the peaks catching under the gryphon's wings like a lifting hand.",
		"feels the gryphon drop for a heartbeat past the gate, then catch the mountain wind and climb in long, steady strokes.",
	},
	["ifo.journey.w05.012"] = {
		"I'm taking the warmth of the forges with me under my cloak. It'll last until the first ridge, if I'm lucky.",
		"Forge-heat still in my bones as we climb. I'll ration it like trail bread.",
	},
	["ifo.journey.w05.013"] = {
		"comes in through the great gate on folded wings, down the long hall and into the red heat, and the gryphon lands as neatly as a dropped glove.",
		"is carried in under the arch of the gate and down into the glow of the city, the cold of the flight left behind on the threshold.",
	},
	["ifo.journey.w05.014"] = {
		"One moment wind and white slopes, the next a hall full of voices and lamplight. Ironforge doesn't do things by halves.",
		"No slow approach, no long descent: the gate swallows us, and suddenly there's a crowd and a hundred lamps.",
	},
	["ifo.journey.w05.015"] = {
		"Who decided to put a landing inside a mountain? Never mind. I know who. Dwarves.",
		"Landing a gryphon indoors. Only in Ironforge would anyone call that normal.",
		"The gryphon just flew in through a door. A door! I'll be telling that one for a while.",
	},
	["ifo.journey.w05.016"] = {
		"All that freezing air, and then the heat of the city lands on me like a blanket thrown over the head. I could weep with gratitude.",
		"A long flight in the cold, and every joint I own is thawing at once. It's loud, in there.",
	},
	["ifo.journey.w05.017"] = {
		"comes in out of the night toward a square of red light in the mountainside, and in three wingbeats the dark is behind the gate and forgotten.",
		"flies down through the night toward the glowing gate, the only warm color in all that black and white.",
	},
	["ifo.journey.w05.018"] = {
		"Home. The gryphon knows it as well as I do; it folds its wings before the gate like a dwarf wiping boots on the step.",
		"Under my own mountain at last. The air smells of coal and stone and everything that means home to me.",
	},
	["ifo.journey.w05.019"] = {
		"Thank you, beast. Go and get warm; I certainly mean to.",
		"Good flying. Off to your roost, and I'm off to the nearest fire.",
	},
	["ifo.journey.w05.020"] = {
		"hands the reins to the gryphon master and stands still a moment, letting the clang and the heat sort themselves out into a city again.",
		"gives the gryphon's neck a last pat and steps off the landing, while the din of Ironforge settles back into its usual shape.",
		"slides down, pulls off a pair of stiff gloves, and holds both hands toward the nearest glow of molten metal.",
	},
	["ifo.journey.w05.021"] = {
		"My ears trade the roar of the wind for the ring of the hammers. They get no holiday either way.",
		"Wind in my ears all the way here, and now the forges. I'll hear silence again when I'm old.",
	},
	["ifo.journey.w05.022"] = {
		"lands with snow still caked on both shoulders, and watches it slide off and hiss away to nothing on the warm stone.",
		"climbs down from a gryphon furred white with snow, which steams gently as it shakes itself dry in the heat.",
	},
	["ifo.journey.w05.023"] = {
		"Up there everything was far away and very large. In here everything is close: the walls, the people, the warmth. I like it close, for a while.",
		"The sky is wide and cares for no one. The mountain is narrow and keeps you. Right now I prefer the mountain.",
	},
	["ifo.journey.w05.024"] = {
		"Left the dawn outside at the gate. In here it's the same red hour it always is, and the forges never noticed the dark lift outside.",
		"Outside, the first gray light on the peaks. Inside, nothing has changed; Ironforge doesn't keep the sun's hours.",
	},
	["ifo.journey.w05.025"] = {
		"lands beside a gnome hurrying past with a crate of springs, and the gryphon eyes the crate as though it might be lunch.",
		"touches down a stride from a startled gnome, who drops a handful of bolts and scolds the gryphon in a long string of technical words.",
	},
	["ifo.memory_return.w05.001"] = {
		"The long entry hall, the carved walls, the first breath of forge-heat. It all comes back at once, like a half-forgotten song.",
		"Ironforge. I know which way the ring turns and where the warmest corners are. A city you know is a different place from one you visit.",
		"Here I know where the bank is and which stairs are steep. Small knowledge, but it makes a stone city feel like mine.",
	},
	["ifo.memory_return.w05.002"] = {
		"Weeks away, and Ironforge hasn't missed a beat. The same hammers, I'd swear, on the same anvils, frozen mid-stroke since I left.",
		"A long time gone. The city didn't notice; places like this measure time in kings, not in travelers.",
	},
	["ifo.muse.w05.001"] = {
		"A whole mountain over my head, and I sleep better here than in any meadow. There's a lesson in that I'd rather not learn.",
		"All that stone overhead ought to feel heavy. It feels like a roof somebody finally built properly.",
		"I keep thinking about the weight of the mountain above us. Then I think of the dwarves who measured it and decided it would do.",
	},
	["ifo.muse.w05.002"] = {
		"brushes a fine gray film of soot from one sleeve, and finds just as much of it on the other.",
		"rubs at a smear of coal dust on the back of one hand, which only spreads it further.",
	},
	["ifo.muse.w05.003"] = {
		"Another hour in this city and I'll start growing a beard out of sheer good manners.",
		"Eleven braided beards between the gate and the bank. Eleven. And one dwarf who braids his eyebrows.",
		"Every beard in this hall has beads in it. I feel underdressed with a plain chin.",
	},
	["ifo.muse.w05.004"] = {
		"The dwarves were three hammers once: Bronzebeard, Wildhammer, Dark Iron. Only one of them still rings in these halls, and it rings loud enough to cover the silence of the other two.",
		"Three clans under one mountain, long ago. Then a war over a throne, and now the Wildhammer keep their gryphons in the Hinterlands and the Dark Iron keep their grudge in Blackrock.",
	},
	["ifo.muse.w05.005"] = {
		"The sorcerer-king of the Dark Iron once marched on this mountain, lost, and in his rage called up a lord of fire under Blackrock. Every forge here burns a little defiantly because of it.",
		"Thaurissan's dwarves lost their war against this city and reached into the deep fire for a way to win it back. They found Ragnaros instead, and have never been free of him since.",
	},
	["ifo.muse.w05.006"] = {
		"The king's daughter is in Blackrock Mountain, at the side of the Dark Iron emperor. In the taverns they argue over whether she was taken or went. Never loudly.",
		"Magni's only child sits beside the emperor of the Dark Iron, deep in Blackrock. The whole city knows it, and nobody says it anywhere near the throne.",
	},
	["ifo.muse.w05.007"] = {
		"The Explorers' League will put a label on anything. I lingered too long in that hall and nearly got catalogued.",
		"Careful in the Hall of Explorers. Stand still beside a display case and somebody will try to work out which century you're from.",
	},
	["ifo.muse.w05.008"] = {
		"The League's diggers come back from Uldaman with dust in their beards and stories of stone keepers older than any king. They tell them quietly, as if the walls might overhear.",
		"Out in the Badlands the Explorers' League digs at Uldaman, where the old makers left halls no dwarf remembers carving. The diggers come home thinner, and stranger.",
		"Somebody back from Uldaman is describing a door taller than the gate of this city, sealed with no lock anyone can find. Nobody laughs at him. They've seen his hands shake.",
	},
	["ifo.muse.w05.009"] = {
		"steps smartly aside as a gnome on a mechanostrider clatters past, waving an apology with one hand and a wrench with the other.",
		"watches a mechanostrider pick its way down a ramp in tiny, fussy steps, its gnome rider leaning forward like a jockey at the finish.",
		"flattens against the wall as a pair of mechanostriders race each other around the ring, trailing smoke and gnomish shouting.",
	},
	["ifo.muse.w05.010"] = {
		"The gnomes here work as if Gnomeregan were only waiting for the next blueprint. Maybe it is. Or maybe working is the only way to bear having lost it.",
		"A city lost to troggs and poisoned air, and its people set up shop two doors from the dwarves and kept on inventing. I'd have sat in a corner for a year.",
	},
	["ifo.muse.w05.011"] = {
		"The troggs climbed up from somewhere under these mountains. Nobody likes to say how deep the floor of Ironforge goes, or what lies under that.",
		"Every dwarf in this city knows the deep paths can open from below. They dig anyway. Courage or habit, and with dwarves the two are hard to tell apart.",
	},
	["ifo.muse.w05.012"] = {
		"Does anyone in this city ever whisper? Or is that against some law of the mountain?",
		"Two dwarves just had a friendly chat. I took it for a brawl until they hugged.",
		"I asked a dwarf to keep his voice down. He did. The echo didn't.",
	},
	["ifo.muse.w05.013"] = {
		"The Horde once swept over all of Khaz Modan and never got through that gate. The dwarves hardly boast of it. They don't need to: the gate is still there.",
		"In the Second War the orcs held the passes and the mines, and still the mountain kept its door shut. That stubbornness is in every wall of the place.",
	},
	["ifo.muse.w05.014"] = {
		"A Wildhammer crosses the Commons with tattoos up both arms and a gryphon feather tied in his hair. The Bronzebeards give him room and a nod, and not much more.",
		"You know the Wildhammer by the ink and the feathers, and by how they glance up at the ceiling as if they'd mislaid the sky. Old quarrels walk in with them.",
	},
	["ifo.muse.w05.015"] = {
		"Gryphons screaming somewhere in the stone halls. They sound offended by the roof, and I can't say I blame them.",
		"A loose feather drifts down past me, tawny and long as my forearm. Somewhere above, a gryphon is shaking out its wings in a room too small for them.",
		"A gryphon handler walks by with scratches up both forearms and the calm face of someone who stopped counting them long ago.",
	},
	["ifo.muse.w05.016"] = {
		"watches a night elf fold onto a dwarf-sized bench, knees nearly to the chin, with all the dignity the bench allows.",
		"hides a smile as a very tall visitor ducks under a lintel that any dwarf would clear with a hand to spare.",
	},
	["ifo.muse.w05.017"] = {
		"Everyone in here looks sunburned. It's the forge-light: it paints every face the same copper, dwarf, gnome and stranger alike.",
		"After a while the red light stops feeling like light at all. It's simply the color the world is, down here.",
	},
	["ifo.muse.w05.018"] = {
		"Black powder and gun oil from the gunsmith's door. The dwarves treat a rifle the way other folk treat an heirloom: oiled after every use, and never lent.",
		"Rifles racked like tools in a workshop. In Ironforge a gun is less a weapon than an argument with a very long reach.",
		"A dwarf is sighting down a new barrel at the far wall, muttering about a hair's breadth of drift. The wall, wisely, says nothing.",
	},
	["ifo.muse.w05.019"] = {
		"Stormpike dwarves in the Military Ward, gathering hands for Alterac Valley. They talk about the Frostwolves the way miners talk about a bad seam: something to be dug out.",
		"Every few days another company marches off to Alterac to hold the Stormpike claim against the orcs up there. Some come back and talk about it. Some come back and don't talk at all.",
	},
	["ifo.muse.w05.020"] = {
		"A traveler just came in from Kharanos with a sack that clinks. Nobody needed to ask what was in it; three dwarves fell into step behind.",
		"Thunderbrew carried up from Kharanos by the crate and sold here at twice the price. The dwarves grumble, and pay, and go on grumbling with full mouths.",
		"Half the dwarves in this hall can tell you which barrel in Kharanos a stout came from. Not one of them can tell you what day it is.",
	},
	["ifo.muse.w05.021"] = {
		"The king had two brothers. One went north with a prince of Lordaeron and never came home; the other is off somewhere with a shovel, as usual. Magni keeps the hall warm for a family that is always away.",
		"Muradin lost in the frozen north, Brann digging in some far ruin. A king's hall can grow quiet, even in a city as loud as this.",
	},
	["ifo.muse.w05.022"] = {
		"That merchant bit my coin before he'd take it. I've never been judged so thoroughly by a set of teeth.",
		"Dwarven merchants weigh every coin twice: once on the scales, and once with a look.",
		"He rang my silver on the counter and listened to it like a bard tuning a lute. Apparently it sings true. Good to know.",
	},
	["ifo.muse.w05.023"] = {
		"steps carefully around a dwarf asleep on a bench in full mail, snoring in a rhythm that almost keeps time with the hammers.",
		"pauses beside a smith dozing against a pillar, apron still on and hammer still in hand, and decides not to be the one who wakes the sleeper.",
	},
	["ifo.muse.w05.024"] = {
		"Half the Alliance seems to keep its savings under this mountain. If the vaults of Ironforge ever fell, kingdoms would go hungry before the week was out.",
		"The bankers of the Commons stand behind their counters like mountains in front of a mountain. Nobody has ever tried to rob this place twice.",
	},
	["ifo.muse.w05.025"] = {
		"The auctioneers here talk so fast I may have bid on a crate of copper ore. I'm choosing not to check.",
		"Ironforge auction house: where a dwarf will outbid you on a pickaxe just to see the face you make.",
	},
	["ifo.muse.w05.026"] = {
		"Every time the great gate lets someone in, a breath of mountain cold rolls across the floor and dies in the warmth before it reaches the forge.",
		"Near the entrance the floor stays cold, worn by a thousand wet boots, and the warmth only begins a dozen steps in, like a host who waits to see who you are.",
	},
	["ifo.muse.w05.027"] = {
		"Dwarven paladins pray the way they forge: short words, heavy blows, and no doubt at all that the work will hold.",
		"The priests of the Mystic Ward speak of the Light as if it were one more ore in the mountain, waiting for whoever digs honestly.",
		"A dwarf kneels a moment by a pillar, hammer across his knees, lips moving. Then he gets up, nods once to nobody, and goes back to work. That was the whole prayer, and it looked like enough.",
	},
	["ifo.muse.w05.028"] = {
		"A gnome just measured me with a brass rule, wrote down a number and walked off. I'd very much like to know what for.",
		"A gnome asked whether I'd volunteer for a small test. I asked how small. The answer was 'mostly'.",
	},
	["ifo.muse.w05.029"] = {
		"edges around a hunter's bear sprawled in the middle of the Commons, which opens one eye, considers, and closes it again.",
		"waits while a hunter coaxes a stubborn boar out of the bank doorway with one patient tug after another.",
	},
	["ifo.muse.w05.030"] = {
		"The old smiths here say iron forgets the fire but never the hammer. I think they mean people, and I think they're right.",
		"Iron forgets the fire, the smiths say, but it remembers every blow. They say it about blades. They don't look at the blade when they say it.",
	},
	["ifo.muse.w05.031"] = {
		"Folk come up out of the Deeprun Tram looking faintly seasick and very proud of themselves. Stormwind is a whole sea away, and they rode underneath it.",
		"Every so often the tram delivers a fresh batch of humans, blinking at the forge-light and smelling faintly of oil.",
	},
	["ifo.muse.w05.032"] = {
		"The humans' king is missing and a regent sits in his place. Ask a dwarf about it and you get a grunt that could mean anything, and probably means everything.",
		"News from Stormwind rides up the tram: still no king, still the regent. The dwarves shake their heads and go back to work. Kings, they seem to say, ought to stay where you put them.",
	},
	["ifo.muse.w05.033"] = {
		"The dwarves say their dead are laid in the stone itself, near enough to hear the hammers. I never asked which wall. I walk a little more softly now.",
		"The dwarves say their dead go back to the stone they came from. Looking at these walls, I can almost see faces in the grain.",
	},
	["ifo.muse.w05.034"] = {
		"Nobody in Ironforge seems to be idle. Even the dwarves resting at the rails are arguing about how they'd have done the job better.",
		"Everybody here has a trade, and an opinion on everyone else's. It makes for loud halls and very good boots.",
		"An apprentice drops a tongs, and six voices from six different forges tell her what she did wrong. She picks it up grinning. That's how you know she'll stay.",
	},
	["ifo.muse.w05.035"] = {
		"listens as a knot of miners strikes up a song somewhere in the Commons, deep voices rolling around the hall like barrels down a ramp.",
		"stops to catch the tune of a drinking song drifting out of a doorway, all bass and no restraint.",
		"finds {g:his|her} boot tapping to a work song from the forges before {g:he|she} quite notices hearing it.",
	},
	["ifo.muse.w05.036"] = {
		"Some Dark Iron broke from their own and call themselves the Thorium Brotherhood, out in the Searing Gorge. The Bronzebeards here can't decide whether to trust them or just buy their ore.",
		"The Thorium Brotherhood teach their forge-secrets to whoever earns them. In this city that's a strange thought: a Dark Iron with something worth learning.",
	},
	["ifo.muse.w05.037"] = {
		"If I buy one more pick in this city, I'll have to take up mining just to justify it.",
		"Every smith in this hall has offered to mend my gear. Not one has offered to do it cheaply.",
		"I came in for a whetstone. I'm leaving with a whetstone, a lecture and somebody's cousin's address.",
	},
	["ifo.muse.w05.038"] = {
		"Everyone here belongs to something: a clan, a guild, a forge. I'm only passing through, and the city is far too busy to hold that against me.",
		"A city this busy has no time to notice one face in the crowd. Some days that stings. Today it's a rest.",
	},
	["ifo.muse.w05.039"] = {
		"Strangers come in and gape at the halls. I gape a little too, if I'm honest. Knowing your own people built a thing doesn't make it any smaller.",
		"Every visitor asks how long it took to carve all this. I tell them 'a while', the way we all do, and keep the pride behind my teeth.",
	},
	["ifo.muse.w05.040"] = {
		"Some of us are still down in Gnomeregan, sick from the air we let loose. We shut a door to save the city and shut it on our own. I think about that more than I tell anyone.",
		"Tinker Town is loud and bright and full of good ideas. It's also full of gnomes who flinch when a trogg is mentioned. We brought our tools along, and our ghosts.",
	},
	["ifo.muse.w05.041"] = {
		"turns a coin over and over between {g:his|her} fingers, watching the forge-light run around its rim.",
		"sits for a moment on the lip of a stone step, out of the stream of traffic, and lets the noise of the city wash past.",
		"leans against a cool pillar with eyes half closed, letting the hammering settle into something like a heartbeat.",
	},
	["ifo.muse.w05.042"] = {
		"Adventurers come back through here smelling of brimstone, talking about Molten Core like a bad neighbor's cellar. The Firelord down there, they say, is a light sleeper.",
		"A dwarf in fire-scorched mail is telling the bank queue about Blackrock Depths. The queue listens, and nobody says the word 'emperor' louder than a mutter.",
	},
	["ifo.muse.w05.043"] = {
		"Warm air climbs the shafts and cold air sinks down the stairs. Stand still long enough and you'd swear the mountain is breathing slowly in its sleep.",
		"The air in here moves in long, slow currents, out of the forge and up into the dark. A city that breathes through stone.",
	},
	["ifo.muse.w05.044"] = {
		"A dwarf just ordered porridge with a stout on the side, and then the stout with another stout on the side.",
		"I asked for water at the tavern. The dwarf behind the counter made the face of someone asked for a smaller mountain.",
	},
	["ifo.muse.w05.045"] = {
		"Even the hinges in this city are decorated. Somebody spent a week on a door handle nobody will ever study but me.",
		"Knotwork on the lamp brackets, runes on the drain grates. Dwarves can't make a plain thing, and wouldn't trust one if they did.",
	},
	["ifo.muse.w05.046"] = {
		"These halls were old before anyone I know was born, and they'll stand when we're all forgotten. It's oddly restful, being so small.",
		"Deep in this mountain a hall is being cut that won't be finished in my lifetime. The dwarves begin such things anyway. I envy them that.",
	},
	["ifo.muse.w05.047"] = {
		"Ore cart coming through! ...is what that dwarf should have shouted. My shin will remind him for me.",
		"Somebody in this city should hang bells on the ore carts. Preferably before I lose a toe.",
		"Mind the rails, the carts, the sparks and the dwarves. In that order, apparently.",
	},
	["ifo.muse.w05.048"] = {
		"A gnome's contraption just coughed smoke across a dwarf's beard. The dwarf counted to five, very slowly, and got on with his day. That's what an alliance looks like up close.",
		"The dwarves took in the gnomes, explosions and all. I've seen less patience between brothers.",
	},
	["ifo.muse.w05.049"] = {
		"notices that the crowds in the Commons have thinned while the hammers have not; somewhere the night shift is only just finding its stride.",
		"walks the quieter halls of the late hours, where the forge-glow carries farther with fewer bodies in its way.",
	},
	["ifo.muse.w05.050"] = {
		"The first travelers of the morning stamp in at the gate, faces raw from the dawn wind. In here, the forge has no idea a new day has begun.",
		"Somewhere outside the sun is coming up over Dun Morogh. In here the only sign is a fresh shift of smiths, yawning into their beards.",
	},
	["ifo.muse.w05.051"] = {
		"A dwarf here has been bent over the same cracked tablet since I came in, lips moving. Whatever it says, it matters to him more than lunch.",
		"The library smells of dust and lamp oil and very old leather. Of all Ironforge, it's the one place where dwarves shush each other.",
	},
	["ifo.muse.w05.052"] = {
		"Half the blades in the Alliance were hammered out within earshot of where I stand. Somewhere a soldier in Ashenvale holds an Ironforge edge and never thinks to thank anyone.",
		"Dwarven steel leaves this mountain by cart and by tram for every front the Alliance holds. The mountain fights its wars far away, and never leaves home to do it.",
	},
	["ifo.muse.w05.053"] = {
		"I could live here. Warm, loud, and nobody can sneak up on you through a mountain.",
		"Ironforge: the only city where even a nap comes with drums.",
		"Good walls, hot food, and a guard on every stair. I've had worse ideas than staying put.",
	},
	["ifo.muse.w05.054"] = {
		"An old dwarf at the rail, one leg ending in a peg of bright steel. He taps it on the stone in time with the hammers, as if it were the most natural thing in the world.",
		"Scars everywhere in this city, and nobody hides them. A dwarf with half his beard burned away just laughed louder than anyone at the counter.",
	},
	["ifo.muse.w05.055"] = {
		"draws a deep breath of coal smoke, roasting meat and hot metal, coughs once, and grins anyway.",
		"wrinkles {g:his|her} nose at a smell of singed wool drifting from somewhere near the forges.",
	},
	["ifo.muse.w05.056"] = {
		"The Explorers' League claims the dwarves were shaped from living stone by the makers of the world. Watching one shoulder a full keg as if it were empty, I'm inclined to believe it.",
		"Children of the stone, the League's scholars call the dwarves, after what they've read at Uldaman. The dwarves themselves seem neither surprised nor flattered.",
		"The Hall of Explorers keeps tablets, I'm told, that say who made the dwarves. Most dwarves I've met are more interested in who made the ale.",
	},
	["ifo.muse.w05.057"] = {
		"After the road, this city's warmth goes straight into the joints, like a hot stone tucked into a bedroll.",
		"Ten minutes near the forges and anyone starts to feel like a person again. Even me.",
	},
	["ifo.muse.w05.058"] = {
		"The smiths swear the Great Forge has never once gone cold since the first hall was cut. I've no way to check, and no wish to be the one who lets it.",
		"Ask a smith when the forge was last cold and he'll look at you as if you'd asked when the mountain last moved.",
	},
	["ifo.muse.w05.059"] = {
		"The gnomes say the tram is perfectly safe. They said it smiling, which is what worries me.",
		"Somebody in Tinker Town is shouting 'it works!' That's either very good news or the last thing anyone shouts.",
	},
	["ifo.muse.w05.060"] = {
		"Out past the gate the roads go everywhere: east to Loch Modan and its great dam, then north through Dun Algaz to the Wetlands and the harbor at Menethil. Ironforge is the knot all those roads were tied to.",
		"Every road in Khaz Modan ends at this gate sooner or later. All I have to do is choose which one to walk back out on.",
	},
	["ifo.muse.w05.061"] = {
		"Dwarven bread is dense enough to mortar a wall with. I bought two loaves. I'll be eating them until I'm old.",
		"Boar ribs, black bread and a cheese that has clearly been to war. Dwarven cooking doesn't ask how your day went; it fixes it.",
	},
	["ifo.muse.w05.062"] = {
		"For a city of fire and stone, there's a great deal of laughter in Ironforge. Loud, sudden and from the belly, like everything else here.",
		"A roar of laughter goes up somewhere in the Commons and rolls around the ring before it fades. I catch myself smiling at a joke I never heard.",
	},
	["ifo.muse.w05.063"] = {
		"stands aside as a file of guards marches past, boots striking the stone in perfect time.",
		"watches two guards trade a nod at the change of watch, a ritual brief as a heartbeat and just as regular.",
		"catches the gleam of polished mail as a guard turns at the top of a stair, slow and square, like a door on a good hinge.",
	},
	["ifo.muse.w05.064"] = {
		"A ram just ate the corner of my map while its rider was haggling. The rider says it means the ram likes me.",
		"Ram riders trot through the Commons as if they own it. Maybe they do. Mind your toes.",
	},
	["ifo.muse.w05.065"] = {
		"Dwarves don't talk much about courage. They talk about the job, and then they do it, and somehow that comes to the same thing.",
		"Whatever comes out of Blackrock or the deep, this city will meet it the way it meets everything: with its sleeves rolled up.",
		"I've never heard a dwarf here say the word 'brave'. I've watched plenty of them be it, on the way to something else.",
	},
	["ifo.muse.w05.066"] = {
		"Lamps of brass and thick glass hang along every hall, and not one of them flickers. The gnomes swear they had a hand in that. The dwarves swear otherwise.",
		"No two lamps in this city match. Each one was made by somebody who thought theirs was the right way to hold a flame.",
	},
	["ifo.muse.w05.067"] = {
		"In all this noise, there's a strange privacy. Nobody can hear me think over the hammers, not even me.",
		"Strange, how alone you can be in a crowd of dwarves. They're all so certain of what they're doing, and I'm only standing here.",
	},
	["ifo.muse.w05.068"] = {
		"Let the Dark Iron try that gate again. I'd pay good silver for a seat.",
		"This mountain has said no to every army that ever knocked. I like a city that knows one word and means it.",
	},
	["ifo.muse.w05.069"] = {
		"The apprentices here start by sweeping, then carrying, then watching. Years before they're let near an anvil. Nobody seems to think that's slow.",
		"A young smith is holding a bar of iron in the coals while the master counts under his breath. Too soon and it cracks, too late and it's ruined. Half of learning is that count.",
	},
	["ifo.npc_meet.w05.001"] = {
		"passes a guard of Ironforge standing so still in heavy plate that only the slow turn of the eyes gives the game away.",
		"nods to a guard whose armor looks forged in a single piece, and gets the barest dip of a helmet in return.",
		"walks past a pair of guards discussing, in low and serious voices, the merits of two different ales.",
	},
	["ifo.npc_meet.w05.002"] = {
		"Anything worth knowing at the gate? I'll settle for gossip, if there's no news.",
		"Still holding the mountain up? Good work. It looks very solid.",
		"Don't mind me. Just admiring the axe. From a respectful distance.",
	},
	["ifo.npc_meet.w05.003"] = {
		"The innkeeper sizes me up the way a brewer tests a barrel: a knock, a listen, and a verdict.",
		"Behind the bar, a face that has poured for miners, the king's guards and gnome inventors. I'm not going to surprise it.",
	},
	["ifo.npc_meet.w05.004"] = {
		"A room, a hot meal, and whatever you'd pour for someone who's just come in from the cold.",
		"Something that sticks to the ribs, please. And a seat with stone at my back.",
		"Is the stew as strong as the ale? Then just the stew, I think.",
	},
	["ifo.npc_meet.w05.005"] = {
		"watches a merchant count out change with fingers black from the forges, rapping every coin once on the counter as if to test it.",
		"is shown a pair of boots by a merchant who turns them over, knocks the soles together, and names a price as if reading it off a stone tablet.",
	},
	["ifo.npc_meet.w05.006"] = {
		"In Ironforge even the shopkeepers talk like smiths: weight, temper, how long it will last. The price comes last, and it's never small.",
		"This one wants me to feel the stitching before I hear the price. A good sign for the stitching; a bad one for my purse.",
	},
	["ifo.npc_meet.w05.007"] = {
		"The trainer's eyes go to my stance before my face. Fair. My stance has more to say.",
		"A trainer who looks as if each lesson was paid for with a bruise. I'll listen carefully.",
		"Teachers in this city don't flatter. They point at what's wrong and wait. I can work with that.",
	},
	["ifo.npc_meet.w05.008"] = {
		"bows slightly to the trainer, who answers with a grunt and points at a clear patch of floor.",
		"is greeted by the trainer with a single raised eyebrow, which in this city passes for a warm welcome.",
	},
	["ifo.npc_meet.w05.009"] = {
		"waits by the gryphon master while a gryphon is led up, its talons clicking on the stone and its feathers ruffled by the forge-heat.",
		"watches the gryphon master check a harness strap by strap, while the beast behind shifts and blinks in the red light.",
	},
	["ifo.npc_meet.w05.010"] = {
		"Everything I own, please, in the safest hole in the mountain.",
		"Put it somewhere deep. Deeper than that, if you've got it.",
		"If the Vault of Ironforge can't keep it, nothing can. In it goes.",
	},
	["ifo.npc_meet.w05.011"] = {
		"Here comes the look: someone in Ironforge has a problem too heavy, too far or too dangerous, and I've just been chosen to carry it.",
		"A polite cough, a long breath, a 'well, now'. I know that preamble; there's work at the end of it.",
	},
	["ifo.npc_meet.w05.012"] = {
		"You've the look of someone with a problem. Is it heavy, far away, or angry?",
		"Go on, then. Tell me what needs doing, and how cold it is where it needs doing.",
	},
	["ifo.npcd_flightmaster_open.w05.001"] = {
		"The gryphons are fed and the gate's clear. Where are we flying you?",
		"Step up to the roost. Mind the beaks; they're curious about anyone new.",
	},
	["ifo.npcd_guard_bye.w05.001"] = {
		"Go on. And keep your cloak tight past the gate; it bites out there.",
		"On your way. The mountain will still be here.",
	},
	["ifo.npcd_guard_directions.w05.001"] = {
		"Bank, auction house and inn are all in the Commons. Follow the ring and the sound of coin.",
		"Warriors and hunters train in the Military Ward; priests and paladins in the Mystic Ward. The gnomes and their tram are in Tinker Town.",
		"The gryphon master is by the Great Forge, and the gate's back down the long hall. You can't get lost; it's a circle.",
	},
	["ifo.npcd_guard_open.w05.001"] = {
		"Welcome to Ironforge. Keep your weapons sheathed and your voice under the hammers, and we'll get on fine.",
		"Inside the gate, the king's law holds. Mind it, and enjoy the warmth.",
	},
	["ifo.npcd_guard_open.w05.002"] = {
		"State your business. Quickly, if you can; the cold's still coming off you.",
		"Hm. Another one in from outside. Stamp your boots and speak up.",
	},
	["ifo.npcd_innkeeper_bye.w05.001"] = {
		"Off with you, then. Your mug will be clean and waiting.",
		"Safe road. If the cold gets too much, you know which mountain has a fire in it.",
	},
	["ifo.npcd_innkeeper_news.w05.001"] = {
		"The Explorers' League sent another crew off toward Uldaman. Came in here to drink to it first, the lot of them.",
		"A miner from Loch Modan swears the troggs are thicker than ever in the old tunnels. He drank like someone who'd seen them, too.",
	},
	["ifo.npcd_innkeeper_open.w05.001"] = {
		"Come in, sit down, get warm. The mountain keeps the cold out; I keep the mugs full.",
		"A seat by the fire? Pick one. In Ironforge they're all by the fire, one way or another.",
	},
	["ifo.npcd_innkeeper_open.w05.002"] = {
		"You've the look of someone who's come a long way on short rations. Stew first, questions after.",
		"Sit before you fall. I've seen that face on miners after a double shift.",
	},
	["ifo.npcd_merchant_bye.w05.001"] = {
		"Come back when those boots wear through. They won't for a while, mind.",
		"Good trading. Tell them in Stormwind where the honest prices are.",
	},
	["ifo.npcd_merchant_news.w05.001"] = {
		"Ore's been slow coming in from the Loch. Troggs in the mines, they say, so iron costs more.",
		"The tram brought a crate of Stormwind cloth this week, a bit damp. The gnomes blame the sea; the sea isn't talking.",
	},
	["ifo.npcd_merchant_open.w05.001"] = {
		"Have a look. Everything on this counter was made under this mountain, and it'll likely outlast us both.",
		"Browse all you like. Dwarven goods: heavy, honest, and not cheap.",
	},
	["ifo.npcd_merchant_open.w05.002"] = {
		"Hello, hello! Mind the shelf on the left, it's spring-loaded. The prices aren't; they're quite reasonable.",
		"Come in, come in! Touch anything you like except the thing that's ticking.",
	},
	["ifo.npcd_merchant_wares.w05.001"] = {
		"Rope, flint, a good knife, and a flask of something to keep the cold out. Everything for the road down the mountain.",
		"Boots with iron in the soles, gloves lined with fleece. Dun Morogh doesn't forgive thin leather.",
	},
	["ifo.npcd_trainer_open.w05.001"] = {
		"Here to learn? Then plant your feet. In Ironforge, everything starts with how you stand.",
		"Let's see your hands. Calluses in the right places? Good. We can work with that.",
	},
	["ifo.pray.w05.001"] = {
		"Whatever watches over this mountain: keep the forges lit, the gate held, and the halls full of voices.",
		"To whoever hears prayers this deep in the stone: keep the people of this city warm, fed and safe.",
		"Hold, old mountain. Hold over all of us, as you always have.",
	},
	["ifo.quest_complete.w05.001"] = {
		"Done. Somewhere in this mountain a clerk is already writing it down. Dwarves keep a record of everything, probably including this thought.",
		"Finished, and I'd wager it's in a ledger already. Ironforge forgets nothing it can write down.",
		"Job done. In a city that carves its history into the walls, I suspect even small errands earn a line somewhere.",
	},
	["ifo.quest_complete.w05.002"] = {
		"That's done. Now, which way round the ring was the bank? Never mind; in Ironforge every road gets you there eventually.",
		"Finished. I'll find my way back to the bank by walking in a circle, which in this city is the whole plan.",
		"Done and paid. If I keep walking I'll pass the forge, the bank and this very spot all over. That's Ironforge for you.",
	},
	["ifo.quest_complete.w05.003"] = {
		"wipes a smear of soot off the reward before putting it away; nothing changes hands in Ironforge without picking some up.",
		"pockets the reward and finds a thumbprint of coal dust on it, the city's own seal on the bargain.",
		"brushes the soot from {g:his|her} fingers after the handshake, the work done and the city's grime fairly shared.",
	},
	["ifo.quest_complete.w05.004"] = {
		"Everyone in this city makes something that will outlast them. Today, in a small way, so did I.",
		"Smiths, masons, brewers, tinkers: Ironforge is full of people who finish things. It's good to be one of them for an hour.",
		"A city of makers, and for once I have something finished to show as well. It sits well.",
	},
	["ifo.quest_complete.w05.005"] = {
		"A pleasure doing business under the mountain. Call on me any time.",
		"Good, working for this city. If there's more, you know where I'll be: somewhere warm.",
		"That's my part done. Ironforge knows where to find me if there's more.",
	},
	["ifo.quest_complete.w05.006"] = {
		"Done. My feet ache in the way only stone floors manage. A seat, soon, and nothing to carry.",
		"Finished, and every step it cost me was on solid rock. My heels have opinions about this city.",
		"That's it handed in. Ironforge's floors are beautiful and utterly unforgiving; I need to sit.",
	},
	["ifo.quest_complete.w05.007"] = {
		"In this city praise comes in two words, and the second one is usually 'next'.",
		"Thanked, paid and pointed at the door in a single breath. Ironforge doesn't waste words, or anyone's time.",
		"No fuss, no ceremony: the job checked, the pay counted, the matter closed. I could get used to Ironforge manners.",
	},
	["ifo.quest_complete.w05.008"] = {
		"is congratulated by a passing gnome who clearly has no idea what for, and seems delighted all the same.",
		"gets a cheerful pat on the elbow from a gnome bustling by, who cannot possibly know about the task and does not care.",
		"is cheered by a gnome hurrying past with an armful of gears, who has no notion what the cheering is for.",
	},
	["ifo.quest_complete.w05.009"] = {
		"One thing off the list. The list is still longer than the Deeprun Tram.",
		"That's done. Only about a tunnel's length of errands to go.",
		"Crossed off. If my list were a road, it would reach Stormwind under the sea.",
	},
	["ifo.quest_complete.w05.010"] = {
		"Thanks, coin, and then the city closes over the moment like water over a stone. Nobody here dwells on things. I rather like that.",
		"The hammers didn't pause for it. Nothing in Ironforge does. The job is done, and the mountain goes on working.",
		"A small triumph, and Ironforge doesn't lift its head from the anvil. Somehow that keeps it in proportion.",
	},
	["ifo.quest_complete.w05.011"] = {
		"Every errand done here goes into the Alliance like a rivet into a plate. Small, and holding.",
		"One more rivet in the armor of the Alliance. Nobody admires a rivet, but pull one out and see what happens.",
		"Work like this is how a kingdom stays bolted together: one small piece, set firm, and then the next.",
	},
	["ifo.quest_complete.w05.012"] = {
		"May the work hold as well as this city's stone.",
		"Done. Let it last like the walls around us.",
		"It's finished. May it stand as long as Ironforge does.",
	},
	["ifo.quest_complete.w05.013"] = {
		"Even the coin they paid me smells of coal smoke. Everything in Ironforge does, sooner or later, me included.",
		"The reward is warm from the purse and smells faintly of the forges. So, I suspect, do I by now.",
	},
	["ifo.quest_complete.w05.014"] = {
		"stands a moment under one of the great hanging lamps, turning the reward over in {g:his|her} hand before putting it away.",
		"pauses beneath a lamp in the stone hall to look at the reward properly, then tucks it away with a small nod.",
	},
	["ifo.quest_complete.w05.015"] = {
		"Someone in this mountain will sleep a little easier for what I did. That's worth the walk.",
		"It was a small thing, but somebody under this mountain will breathe easier for it. Good enough for me.",
		"I don't need the whole city to know. One person resting easier behind these walls is plenty.",
	},
	["ifo.quest_complete.w05.016"] = {
		"Signed, sealed, and nobody blew anything up. A good day in Ironforge.",
		"Finished, and not one explosion. By the standards of this city, that's practically a holiday.",
		"Job's done and the mountain is still standing. With the gnomes about, I count that a success.",
	},
	["ifo.quest_complete.w05.017"] = {
		"walks away from the task with the forge-light at {g:his|her} back, a long shadow running ahead across the stone.",
		"leaves the matter behind and heads back into the red-lit halls, shoulders a little lighter than before.",
		"lets the reward settle into the pack and walks on, the glow of the molten channels catching on every buckle.",
	},
	["ifo.quest_complete.w05.018"] = {
		"Work for my own city, done with my own hands. There's no better pay, though I'll take the coin as well.",
		"Helping Ironforge is like mending your own roof. You don't do it for the thanks.",
	},
	["ifo.quest_complete.w05.019"] = {
		"Every job I finish for this city is a small payment on the debt. The dwarves never ask for it. We pay anyway.",
		"Ironforge opened its doors to us when Gnomeregan fell. Doing its errands well is the least a guest can do.",
	},
	["ifo.quest_complete.w05.020"] = {
		"Done. While I'm warmed up, does anyone else in this hall need something carried, found or hit?",
		"That's one. I'm warmed up now; if anyone has another job, speak before I sit down.",
		"Finished. Next job? Ask quickly, before the nearest bench gets its claws in me.",
	},
	["ifo.quest_complete.w05.021"] = {
		"is thanked with a slap on the shoulder that nearly sends {g:him|her} into the nearest pillar.",
		"receives a thump on the back by way of thanks, hearty enough to rattle every buckle.",
	},
	["ifo.quest_complete.w05.022"] = {
		"These halls were old long before I came, and they'll be old long after. Today I added one honest scratch to all that age.",
		"A small job in a place that has seen centuries. The stone won't remember it, but I will.",
		"Ironforge has outlasted kings and wars. My errand won't trouble its memory, and somehow that is a comfort.",
	},
	["ifo.reputation_change.w05.001"] = {
		"Somebody thinks better of me than they did. Had I known, I'd have had it carved; in this city that's how good news is kept.",
		"A little more trust, earned the dwarven way: slowly, and by doing the work. It sits on me like a well-fitted pack.",
	},
	["ifo.rest_enter.w05.001"] = {
		"Inside the mountain the wind can't reach me and the cold can't find me. I can put the pack down and think about nothing.",
		"Stone above, stone around, and a fire never far. My shoulders come down from around my ears.",
	},
	["ifo.rest_enter.w05.002"] = {
		"sits down on a stone step out of the stream of traffic and lets the warmth of the city soak in, one layer at a time.",
		"eases the pack off and leans back against a carved pillar, letting the heat of the halls undo the knots of the road.",
		"finds a corner out of everyone's way, stretches both legs out on the warm floor, and lets the city carry on around.",
	},
	["ifo.rest_enter.w05.003"] = {
		"If anyone needs me, I'll be the one asleep against the warmest wall in Ironforge.",
		"I've found the warm wall. Nobody take it from me.",
	},
	["ifo.rest_enter.w05.004"] = {
		"My hearth is here, under the mountain, and after the long road it feels every bit as solid as I remembered.",
		"Back where my hearthstone points. The whole long road shrinks to nothing the moment I'm through the gate.",
	},
	["ifo.rest_enter.w05.005"] = {
		"No sky to watch, no road to choose, no clouds to read. In here the mountain makes those decisions for me. Restful.",
		"Nothing to keep an eye on. The mountain has the sky, the guards have the gate, and I have this patch of warm floor.",
	},
	["ifo.rest_enter.w05.006"] = {
		"Home ground, home air. Even the noise of the forges sounds like a lullaby to a dwarf, if the dwarf is tired enough.",
		"Under my own mountain the hammering is just the house breathing. I could sleep through a siege in here.",
	},
	["ifo.rest_enter.w05.007"] = {
		"Ironforge, you're a fine host. Warm floors, thick walls, and a bench for every tired backside.",
		"Thank the mountain. I'm stopping here until my legs forgive me.",
		"That's it, I'm done walking for a while. The city can come to me.",
	},
	["ifo.subzone_enter.w05.001"] = {
		"The Commons. Bank, auctioneers, inn, and half the Alliance haggling in between.",
		"Here's the Commons: if it can be bought, stored or argued over, it's somewhere in this ring.",
	},
	["ifo.subzone_enter.w05.002"] = {
		"steps into the Commons and is carried along for a few paces by the crowd drifting between the bank and the auction house.",
		"slows down at the edge of the Commons, where the noise of bargaining rises off the stone like heat off a forge.",
	},
	["ifo.subzone_enter.w05.003"] = {
		"The Military Ward. Practice blows thudding into straw, boots in step, and a voice somewhere finding fault with all of it.",
		"Into the Military Ward, where even the walls stand at attention. I find I'm walking straighter.",
	},
	["ifo.subzone_enter.w05.004"] = {
		"enters the Military Ward and steps aside for a file of armored dwarves marching past, every boot landing on the same beat.",
		"passes the training floors of the Military Ward, where a row of recruits is being shouted at in perfect unison.",
	},
	["ifo.subzone_enter.w05.005"] = {
		"enters the Mystic Ward, where the forge-din thins to a murmur of study and the air smells of candle wax and old paper.",
		"walks into the Mystic Ward and leaves the clamor of the city behind, traded for turning pages and the hum of some patient spell.",
	},
	["ifo.subzone_enter.w05.006"] = {
		"The High Seat. Here, under the carved stone, King Magni keeps his throne and his counsel. I find I've straightened my collar.",
		"The king's own hall. Even the guards seem to breathe more quietly here.",
		"Before the High Seat of Ironforge, every traveler suddenly remembers their manners. I'm no exception.",
	},
	["ifo.subzone_enter.w05.007"] = {
		"Tinker Town: every bench crowded, every gnome mid-sentence, as if the next invention might be the one that wins Gnomeregan back.",
		"Gears and springs everywhere, sparks and arguments. Beneath the cheer, a people living out of crates in someone else's mountain.",
	},
	["ifo.subzone_enter.w05.008"] = {
		"ducks under a dangling contraption on the way into Tinker Town; it whirs, considers {g:him|her}, and does nothing at all.",
		"passes beneath a hissing gadget hung from the ceiling of Tinker Town, which twitches as if to ask a question and then thinks better of it.",
	},
	["ifo.subzone_enter.w05.009"] = {
		"comes into Tinker Town just as the tram tunnel breathes out a gust of warm, oily air and a handful of travelers from Stormwind.",
		"reaches Tinker Town as a knot of new arrivals climbs up from the Deeprun Tram, blinking and smelling faintly of the sea.",
	},
	["ifo.subzone_enter.w05.010"] = {
		"The Great Forge. Every road in Ironforge bends toward it, the way every bench in a tavern faces the hearth.",
		"Here's the center of it all: the great fire the city is built around. The rest of Ironforge is only rooms opening off this one.",
	},
	["ifo.subzone_enter.w05.011"] = {
		"The Hall of Explorers! Don't touch the bones, don't move the maps, don't sneeze on the books. Right.",
		"Hall of Explorers. I'll try not to knock over anything older than the Alliance.",
	},
	["ifo.subzone_enter.w05.012"] = {
		"The Forlorn Cavern. Rougher stone, dimmer corners, and the forges sounding far away, as if I'd stepped out of the city without leaving it.",
		"Here the mountain stops pretending to be a city. Raw rock, cooler air, and the hammers only a rumor.",
	},
	["ifo.subzone_enter.w05.013"] = {
		"turns a corner into another of Ironforge's great halls, where the ceiling climbs out of sight and the carved faces in the walls look down without much interest.",
		"comes through a broad archway into another hall of the city, and the sound changes at once: different hammers, different voices, the same red light.",
	},
	["ifo.thanks.w05.001"] = {
		"Thank you. In this city a favor is weighed like ore; I'll see it repaid in full.",
		"My thanks. That was well done, and in Ironforge there's no higher praise.",
		"Thanks. I owe you, and in Ironforge debts are carved, not chalked.",
	},
	["ifo.thanks.w05.002"] = {
		"You have my thanks, as warm as the forge and as plain as stone.",
		"Thank you. Kindness under a mountain counts twice: there's no wind to blow it away.",
	},
	["ifo.toast.w05.001"] = {
		"To Ironforge's brewers, the true lords under the mountain!",
		"To the forge that never cools, and the mugs that never stay full!",
		"Raise them high: to stone walls, hot fires, and whoever's paying!",
	},
	["ifo.travel.w05.001"] = {
		"turns the hearthstone over under the red light of the forges, and the clamor of Ironforge thins to a whisper and is gone.",
		"closes a hand on the warming stone between two hammer-blows, and is gone before the third.",
	},
	["ifo.travel.w05.002"] = {
		"The stone warms like a coal in my palm. Fitting, in this city. Then the mountain melts away around me.",
		"Leaving the mountain without the long walk to the gate. The dwarves would call it cheating; I call it my feet's day off.",
	},
	["ifo.weather_change.w05.001"] = {
		"feels a cold draft find its way in from the gate, and sees the nearest guards pull their cloaks closer; out in Dun Morogh, it seems, the snow has started up.",
		"notices a cart rolling in from the gate with snow heaped on its load, the driver blowing on red fingers.",
	},
	["ifo.weather_change.w05.002"] = {
		"Snowing outside? Then I've urgent business in here. Very urgent. All of it sitting down.",
		"If it's snowing at the gate, I'm suddenly in no hurry at all to leave Ironforge.",
	},
	["ifo.weather_change.w05.003"] = {
		"The gryphons are restless on their perches. A dwarf by the roost says it's snowing hard out there, and they hate flying into it.",
		"Word from the gryphon roost: snow's falling thick over the passes, and the beasts are sulking about it.",
	},
	["ifo.weather_change.w05.004"] = {
		"sees a long blade of white daylight lie across the floor of the entry hall from the gate, sharp enough to tell that the sky out there has cleared.",
		"notices travelers coming in from the gate squinting and pink-cheeked, the way people look after walking under a clear sky.",
	},
	["ifo.weather_change.w05.005"] = {
		"A clear night outside, says a guard coming off the gate, cold enough to split rock. The stars over Dun Morogh must be something to see.",
		"The sky has cleared, I'm told, and the frost is biting hard under the stars. I'll picture them from in here, by the warm stone.",
	},
	["ifo.weather_change.w05.006"] = {
		"A storm on the mountain. Even in here I can hear it now and then, a long howl down the entry hall whenever the wind finds the gate.",
		"The wind is screaming across the gate. Out there a blizzard is burying the road, and in here a dwarf is calmly ordering another round.",
		"Storm outside. The guards at the gate have taken a step back from the threshold, which for a dwarf on duty is practically a retreat.",
	},
	["ifo.weather_change.w05.007"] = {
		"A dwarf just came in from the gate swearing he couldn't see his own beard out there. Fog, then. Thick.",
		"Fog over Dun Morogh, according to the latest arrival, who walked straight into the gatepost on the way in.",
	},
	["ifo.journey.w20.arch.001"] = {
		"Up at the crown of the arches the carvers kept working: knotwork and runes no one on foot will ever make out. They put it there anyway. Now I've seen it, for one wingbeat.",
		"The tops of the arches are carved as finely as the bases, though only riders ever pass close enough to look. The masons didn't care who'd see it.",
		"Somebody chiseled patterns into the highest stone of every arch, where nobody walking could read them. Up here they flash past at arm's length.",
	},
	["ifo.journey.w20.arch.002"] = {
		"passes a lamp on the wall so close that its flame leans after the wing and takes a moment to stand up straight.",
		"sweeps by a bracket lamp at speed, and the little flame inside flattens, gutters and recovers behind {g:him|her}.",
	},
	["ifo.journey.w20.arch.003"] = {
		"watches a dwarf in the hall below step aside for the shadow of the wings without ever looking up, the way one steps around a puddle.",
		"sees the folk of the halls make room for the beast's passing without raising their eyes, as if ducking gryphons had long since settled into their knees.",
	},
	["ifo.journey.w20.arch.004"] = {
		"Every hall sounds different under the wings: a boom in the high ones, a flat slap in the low ones, a long hiss where the passage narrows.",
		"The wingbeats keep changing their voice. Deep in the big halls, sharp in the tight ones. The beast flies through a whole row of drums.",
	},
	["ifo.journey.w20.arch.005"] = {
		"Above you! Coming through! Mind your hats!",
		"Pardon! Excuse me! Terribly sorry, flying!",
		"Heads low, friends, wings coming!",
	},
	["ifo.journey.w20.arch.006"] = {
		"stirs up the dust of ledges no broom has ever reached, and leaves a gray wake hanging in the lamplight behind the wings.",
		"sends the old dust of the high cornices swirling as the beast goes by, a pale trail that settles slowly on whoever is underneath.",
	},
	["ifo.journey.w20.arch.007"] = {
		"The wall is close enough to touch. I don't. At this speed the wall would win the argument.",
		"I could brush the pillars with my knuckles as they go by. I'd like to keep the knuckles, so I don't.",
		"A pillar goes by close enough to count the chisel marks. I count none. I'm busy holding on.",
	},
	["ifo.journey.w20.arch.008"] = {
		"flies the length of the long hall with its lamps sliding underneath one after another, like stepping stones laid across the dimness.",
		"counts the lamps of the hall as they slip by below, and loses count somewhere past twenty.",
	},
	["ifo.journey.w20.arch.009"] = {
		"From above, a city is mostly the tops of heads: helmets, hoods, a gnome's wild hair, one shining bald patch I'll remember for no reason at all.",
		"The halls from the air, close up: hats, hoods, polished helmets, and one dwarf's bald crown gleaming like a dropped coin.",
	},
	["ifo.journey.w20.arch.010"] = {
		"The pillars are as thick as towers. Whoever carved them never pictured anything flying between them, and was generous anyway.",
		"These pillars were cut to carry a mountain, not to make room for wings. The beast slips between them all the same, with a hand's width to spare on either side.",
	},
	["ifo.journey.w20.arch.011"] = {
		"passes through a run of smells in a few wingbeats: hot iron, then fresh bread from some oven, then lamp oil, then the clean cold of the gate.",
		"is carried through the city's smells one after another like rooms: coal, roasting meat, damp wool, and at last only stone and cold.",
	},
	["ifo.journey.w20.arch.012"] = {
		"The air cools hall by hall toward the gate, like going down a cellar stair with every step a little colder.",
		"Every arch the beast passes takes back a little of the forge's warmth. By the last one, there's nothing left to take.",
	},
	["ifo.journey.w20.arch.013"] = {
		"overtakes a guard patrol marching toward the gate, and hears a dry 'nice for some' float up from somewhere among the helmets.",
		"passes above a guard patrol; the last dwarf in the file glances up, and his face says he walks this hall every day and does not approve of those who don't.",
	},
	["ifo.journey.w20.arch.014"] = {
		"Lamp, shadow, lamp, shadow. The hall flickers past in bands, and my eyes stop trying to keep up and simply let it happen.",
		"The light comes in stripes between the lamps, warm and then dim and then warm. It would be restful, if the walls weren't so close.",
	},
	["ifo.journey.w20.arch.015"] = {
		"rushes past banners hanging high on the walls, their heavy cloth stirring in the wake of the wings as though in salute.",
		"makes the old banners along the hall sway as the beast goes by, the stitched emblems on them nodding one after another.",
	},
	["ifo.journey.w20.arch.016"] = {
		"A voice below is shouting a price, very loudly, for something I'll never find out about. The beast doesn't slow down for bargains.",
		"Halfway through a merchant's cry I'm already past him. Whatever it was, it was apparently a very good price.",
	},
	["ifo.journey.w20.arch.017"] = {
		"At the end of the last hall the gate appears, a square where the stone simply stops. The beast aims for it like a thrown stone.",
		"Then the long hall ends in an opening the color of the outside, whatever color that happens to be, and the beast lines up on it.",
	},
	["ifo.journey.w20.arch.018"] = {
		"That pillar moved. I'd swear that pillar moved.",
		"Closer to the wall, why don't you. I've always wondered what the stone tastes like.",
	},
	["ifo.journey.w20.arch.019"] = {
		"Dwarven arches: no gears, no springs, not a single moving part, and they'll still be holding up the mountain when every gadget I own has rusted. I'll admit it up here, where no dwarf can hear.",
		"From up here the arches are a lesson in engineering: no gears, no springs, nothing that can break. Dull. Annoyingly perfect.",
	},
	["ifo.journey.w20.arch.020"] = {
		"Left at the pillar. No, the other left.",
		"Was that arch always this low, or is it just me?",
	},
	["ifo.journey.w20.arch.021"] = {
		"passes low over a dwarf carrying a tray of mugs, who freezes mid-step as the wings go by and then walks on without spilling a drop.",
		"skims above a tray of tankards on the move; its bearer stops, lets the beast pass, and carries on with the gravity of someone who has never once spilled.",
	},
	["ifo.journey.w20.arch.022"] = {
		"passes beneath a lintel cut with old runes, close enough to see that some have been worn shallow by nothing but the air of the city moving past for ages.",
		"reads, without meaning to, half a line of dwarven runes over an arch as the beast shoots under it, and never gets to see the other half.",
	},
	["ifo.journey.w20.din.001"] = {
		"lands into the city's noise the way a stone lands in a pond, and for a moment hears every sound at once: hammers, bellows, a shout, a cart, a laugh.",
		"comes down into a wall of sound: bellows, rails, voices, the wet hiss of quenching, and somewhere under it all a song.",
	},
	["ifo.journey.w20.din.002"] = {
		"The wind kept me company the whole way, and I thought it loud. I take it back. I apologize to the wind.",
		"I grumbled about the wind up there. That was before Ironforge started talking to me all at once.",
	},
	["ifo.journey.w20.din.003"] = {
		"picks out one voice in the din near the roost, a dwarf calling the same name over and over, and lingers as if waiting for the answer.",
		"hears someone across the hall shouting the same name above the hammers, and stands a moment longer, listening for a reply.",
		"catches a single shouted name across the din, called over and over, and turns {g:his|her} head the way everyone at the roost does, looking for whoever answers.",
	},
	["ifo.journey.w20.din.004"] = {
		"The flight leaves my ears stuffed with wind. Ironforge comes through it in pieces: a clang, a laugh, a cart, then all of it, like a door thrown open.",
		"For the first few moments the city sounds far off, as if through a wall. Then the hum fades and the whole hall arrives at once.",
	},
	["ifo.journey.w20.din.005"] = {
		"What? No, I said... never mind. I'll say it once my ears have landed too.",
		"Sorry, could you say that louder? Or wait until my hearing catches up?",
	},
	["ifo.journey.w20.din.006"] = {
		"is met at the roost by the smells of the city before its sights: coal smoke, hot metal, wet stone and, faintly, someone's supper.",
		"takes in Ironforge by the nose first: hot iron, coal, lamp oil, and from somewhere close by, bread left a little too long in the oven.",
	},
	["ifo.journey.w20.din.007"] = {
		"The stone of the roost shivers faintly under my boots each time a hammer falls nearby. Up there nothing shivered but me.",
		"The landing stone trembles with the work of the forge. After the long, smooth glide, even the floor feels busy.",
		"Under my boots the floor of the roost hums like a struck bell. The whole mountain is at work, and the stone wants me to know it.",
	},
	["ifo.journey.w20.din.008"] = {
		"lands just as a bellows somewhere gives a great wheezing roar, and the beast answers it with an indignant shriek of its own.",
		"touches down to a crash of dropped ingots nearby; the flier flinches, then glares at the culprit with enormous dignity.",
	},
	["ifo.journey.w20.din.009"] = {
		"The hammering here doesn't start and doesn't stop. I fly in on the middle of a sentence the city began long before me.",
		"Whatever hour I land, the city is mid-sentence. It began talking before the first king and has never once paused.",
	},
	["ifo.journey.w20.din.010"] = {
		"steps clear of the roost and straight into the rattle of a cart on its rails, which passes close enough to swing the hem of {g:his|her} cloak.",
		"has hardly dismounted before a cart grinds past on its rails, heaped with coal and pushed by a dwarf who doesn't look up.",
	},
	["ifo.journey.w20.din.011"] = {
		"I'll be shouting for the next while, I know it. Everyone who comes off a flight does. The dwarves are too polite to mention it, or too loud to notice.",
		"Fresh off the wings, I talk too loudly. Luckily that's the only volume Ironforge understands.",
	},
	["ifo.journey.w20.din.012"] = {
		"Under the dwarves' hammers I can just pick out a gnomish whistle from the direction of Tinker Town. Somebody's kettle, or somebody's experiment. Either way, it's one of ours.",
		"Through all that dwarven clangor, one small, sharp sound: a gear-whistle somewhere off toward Tinker Town. It's absurd how much better it makes me feel.",
	},
	["ifo.journey.w20.din.013"] = {
		"hears the city rise to meet the descent, the din growing with every turn of the spiral until it closes over {g:his|her} head like water.",
		"spirals down into the noise of the Great Forge, each turn a little louder, until the last one sets {g:him|her} down inside it.",
	},
	["ifo.journey.w20.din.014"] = {
		"All that gray outside, and then the gate, and then red everywhere. My eyes can't decide whether to thank the city or complain about it.",
		"Fog the whole last stretch, nothing to see but the beast's own head. Then the gate, and the city hits my eyes all at once, red and gold and busy.",
	},
	["ifo.journey.w20.din.015"] = {
		"Out there the dark was silent and huge. In here the smiths are still at it as if nobody told them the hour, and I'm grateful to every one of them.",
		"Black and quiet the whole way in, and then the gate, and the forge going full tilt as though the night were somebody else's business.",
	},
	["ifo.journey.w20.din.016"] = {
		"Pitch dark outside and every forge going. Does this city sleep in shifts, or not at all?",
		"Late as it is out there, you'd never guess it in here. Does anyone in Ironforge ever go to bed?",
	},
	["ifo.journey.w20.din.017"] = {
		"is offered a hot pasty before {g:his|her} boots are steady, by a dwarf who plainly waits at the roost for exactly this.",
		"lands within earshot of a dwarf calling out hot food to anyone stepping off the wings, a dwarf who has clearly understood the trade.",
	},
	["ifo.journey.w20.din.018"] = {
		"Somewhere a knot of miners is singing, and a smith is hammering slightly out of time with them on purpose. That's this city's idea of a greeting.",
		"A tavern song from somewhere, a forge from everywhere, and a gnome swearing at a valve. I'd know the place blindfolded.",
	},
	["ifo.journey.w20.din.019"] = {
		"Is it always this loud, or did someone tell the forge I was coming?",
		"Lovely to see you too, Ironforge. No need to shout.",
		"Hello, hammers. Yes, I hear you. Everyone hears you.",
	},
	["ifo.journey.w20.din.020"] = {
		"steps off into a hall where three conversations, two forges and a gnome's test engine are all going at once, and somehow each can be heard.",
		"stands a moment at the edge of the roost sorting the noise into its parts: anvils, bellows, a cart, a bargain being struck, a child laughing.",
	},
	["ifo.journey.w20.din.021"] = {
		"Some find this din tiring. After the hiss of the wind, I find it company: every clang is someone at work, and not one of them wants anything from me.",
		"All this noise, and none of it is for me. After the wind's company, that's a peculiar kind of rest.",
	},
	["ifo.journey.w20.gate.001"] = {
		"There's a line in the gate, invisible, where the warm air of the city ends and the mountain's begins. The beast goes through it like a curtain, and so do I.",
		"Somewhere under the gate's arch the warmth just stops, as cleanly as a door shutting. One wingbeat inside, one wingbeat out, two different worlds.",
		"I could point to the exact spot under the arch where the city lets go of its heat. My face found it before I did.",
	},
	["ifo.journey.w20.gate.002"] = {
		"shoots between the great doors of the gate, each one tall enough to swallow a house, both standing open as if they had forgotten how to close.",
		"passes the vast open leaves of the gate, set back against the walls of the passage like the hands of a giant laid flat.",
	},
	["ifo.journey.w20.gate.003"] = {
		"Inside the gate, everything was sound. Outside it, everything is size. The beast crosses from one to the other in a single stroke.",
		"Past the gate the walls stop being an arm's length away and start being a day's walk away. My eyes need a moment to stretch.",
		"In the city everything was within reach. Now the nearest thing is the beast, and the next nearest is a mountain.",
	},
	["ifo.journey.w20.gate.004"] = {
		"Open the gate! ...Ah. It's open. Carry on, then.",
		"Don't shut it behind me, I might want back in.",
		"Thank you, gate. Lovely gate. Very big.",
	},
	["ifo.journey.w20.gate.005"] = {
		"The old mountaineers say the orcs of the Second War took all of Khaz Modan and never once got through this gate. Flying out of it, I can see how: there's nowhere outside to stand and push.",
		"Word in the Military Ward is that the whole orcish host of the Second War sat below this gate and went away without it.",
	},
	["ifo.journey.w20.gate.006"] = {
		"shoots out over the long road climbing to the gate, where a trader leading a laden ram flattens himself against the snowbank and then laughs at himself.",
		"bursts out above the approach road, and a line of travelers trudging up toward the gate all stop and look up at once, like a row of startled hens.",
	},
	["ifo.journey.w20.gate.007"] = {
		"The guards at the gate are there to watch who comes in. Someone flying out is, officially, none of their concern, and they make that very clear.",
		"A gate guard's whole trade is suspicion of arrivals. Departures get nothing, not even a glance. Leaving Ironforge is the easiest thing in it.",
	},
	["ifo.journey.w20.gate.008"] = {
		"For one wingbeat the gate frames the outside like a picture hung at the end of a hall. On the next, I'm inside the picture.",
		"The opening of the gate holds the whole white country in a neat stone frame, and then the frame falls away behind and nothing has an edge anymore.",
	},
	["ifo.journey.w20.gate.009"] = {
		"meets the cold air pouring in through the gate as the beast drives out against it, the whole flight shuddering for a stroke or two like a boat crossing a bar.",
		"pushes out against the draft that forever pours into the gate, the beast leaning into it head down, wings short and hard until the threshold is behind.",
	},
	["ifo.journey.w20.gate.010"] = {
		"The snow on the threshold comes right up to the line where the warmth begins, and not an inch further. The city and the mountain have a clear agreement.",
		"Right at the gate the snow gives up, in a neat edge, as if somebody had swept it to a ruler. Inside belongs to the forge; outside belongs to the mountain.",
	},
	["ifo.journey.w20.gate.011"] = {
		"skims over a mountaineer posted on the slope outside the gate, who raises his rifle in a lazy half-salute and goes back to watching the road.",
		"passes a lone mountaineer on a rock above the road, wrapped to the eyes, who follows the beast with his gun barrel out of pure habit and then lowers it, embarrassed.",
	},
	["ifo.journey.w20.gate.012"] = {
		"The gate was built to stop armies. It lets one rider out without so much as a creak. Very civil, for a fortification.",
		"All that iron and stone, made to hold off a siege, and it waves me through like a doorman.",
	},
	["ifo.journey.w20.gate.013"] = {
		"climbs along the face of the mountain above the gate, a wall of rock so high that a long stretch of flying makes no visible difference to how much of it is left.",
		"rises past the sheer stone over the gate, and for a long while the mountain fills one whole side of the world.",
	},
	["ifo.journey.w20.gate.014"] = {
		"Out, out, out! Go on, beast, the world's that way.",
		"There's the gate. Through it, and don't stop for anything.",
	},
	["ifo.journey.w20.gate.015"] = {
		"Every time I try to catch the exact moment of leaving, and every time I miss it. Walls, and then no walls. Nothing in between.",
		"There must be an instant when I'm neither in the city nor out of it. I have never once managed to notice it.",
	},
	["ifo.journey.w20.gate.016"] = {
		"leaves the gate and flies straight into fog, the mountain gone in a stroke, nothing ahead but white and the beast's steady certainty.",
		"comes out of the lamplit gate into a fog so thick that the city behind vanishes before the next wingbeat, as if it had never been there.",
	},
	["ifo.journey.w20.gate.017"] = {
		"Out of the gate and straight into the teeth of the storm. The beast drops its head and drives on as if it were paid by the gust.",
		"The storm hits the moment the gate is behind. Inside, nobody would ever guess it was blowing like this.",
	},
	["ifo.journey.w20.gate.018"] = {
		"The elders say a dwarf leaving owes the gate a nod, so it remembers your face. I give it one. An old habit, and a good one.",
		"A nod to the gate as I pass. The elders always said it keeps count of who's out, and lets them in first when they come home.",
	},
	["ifo.journey.w20.gate.019"] = {
		"tugs the collar up one-handed just as the gate goes by, a habit timed to the very stroke the cold arrives.",
		"has a hand at the throat of the cloak before the threshold, pulling it shut a moment ahead of the cold.",
	},
	["ifo.journey.w20.gate.020"] = {
		"The gate that never fell, and the Alliance's riders going out through it as if it were nothing. That is what it was held for.",
		"Out of the Alliance's strongest door on one of its gryphons. Whatever waits, it starts from a door that has never given way.",
	},
	["ifo.journey.w20.gate.021"] = {
		"There it is, the outside! All of it!",
		"And out! Ha! Look at all that room!",
	},
	["ifo.journey.w20.gate.022"] = {
		"crosses the threshold where the city's red light ends as cleanly as cloth cut with shears, and the colors of the outside rush in all at once.",
		"flies through the last of the lamplight at the gate, and the red that has tinted everything since the roost drops away in a single stroke.",
	},
	["ifo.journey.w20.glow.001"] = {
		"Looking back, the gate is lit from within like a lantern held up in a doorway, the way you hold one up for someone who is leaving.",
		"Behind me the gate glows faintly red from inside, a lamp left in a window. It isn't for me. It feels a little as if it were.",
	},
	["ifo.journey.w20.glow.002"] = {
		"The forge's heat leaves my face last. My back has been cold since the gate; my cheeks are still standing at the anvil.",
		"Odd how the warmth goes: back first, then hands, and the face holding on longest, as if it had been turned toward the fire the whole time. It had.",
	},
	["ifo.journey.w20.glow.003"] = {
		"The smell of coal smoke has gone deep into my cloak. It'll be the last of the city I carry until the next wash.",
		"My sleeves smell of the forge. For a while yet, every time I lift a hand to my face, Ironforge is right there.",
		"Coal and hot metal in the wool, in the hair, in the gloves. I've left the city; it hasn't entirely left me.",
	},
	["ifo.journey.w20.glow.004"] = {
		"From out here nobody would guess at the rivers of molten metal inside. The mountain keeps a perfectly straight face.",
		"All that fire, all that noise, and outside the mountain just sits in the snow looking like any other mountain. The dwarves must have taught it.",
	},
	["ifo.journey.w20.glow.005"] = {
		"finds a fleck of soot from the Great Forge on one sleeve and, after a moment's thought, leaves it where it is.",
		"notices a smudge of forge-soot on the back of one glove and rubs at it, then gives up and lets the city keep its mark.",
	},
	["ifo.journey.w20.glow.006"] = {
		"The elders call the mountain the hearth of the dwarves. From out here it's a hearth with the door pulled to, and I'm the one who pulled it.",
		"My hearth is the whole mountain behind me. I don't need to look back to know the fire is still in it.",
	},
	["ifo.journey.w20.glow.007"] = {
		"watches the last red of the forge-light slide off the beast's feathers as the gate falls behind, leaving them their own plain color.",
		"sees the warm tint the city lent the gryphon's wings fade outside, until it is simply a beast again, in honest outdoor colors.",
	},
	["ifo.journey.w20.glow.008"] = {
		"A city under a mountain can't watch anyone leave. There's no window to stand at. You simply go, and it carries on.",
		"In other cities somebody might climb a wall to watch a rider shrink. Ironforge has no walls to climb, only stone over its head.",
	},
	["ifo.journey.w20.glow.009"] = {
		"Save me a seat by the anvil, somebody.",
		"Goodbye, warm. Hello, everything else.",
		"If anyone asks, I'll settle my tab on the way back.",
	},
	["ifo.journey.w20.glow.010"] = {
		"I hold my thumb up at arm's length and the whole gate of Ironforge vanishes behind it. Best not mention that to the guards.",
		"From this far, a thumb is enough to hide the greatest gate in Khaz Modan. I try it twice to be sure. The guards would not be amused.",
	},
	["ifo.journey.w20.glow.011"] = {
		"looks back over the beast's tail and finds the gate already gone behind a fold of the slope, as though the mountain had drawn its sleeve across it.",
		"turns for a last look and sees only rock and snow: the gate has slipped behind a shoulder of the mountain, and the city with it.",
	},
	["ifo.journey.w20.glow.012"] = {
		"Every time I leave a warm place for a cold sky I wonder what's wrong with me. And every time I go anyway.",
		"There's something a little foolish about trading a forge for a mountain wind on purpose. I keep doing it. I suspect I always will.",
	},
	["ifo.journey.w20.glow.013"] = {
		"My ears are still ringing with the Great Forge. Out here there's nothing to drown it, so it rings on a while, like a bell after the hand has let go.",
		"The ringing in my ears is the last of the city. It fades more slowly than the city does.",
	},
	["ifo.journey.w20.glow.014"] = {
		"leaves the gate for the night, and behind the beast the few lights of the gate road dwindle to a short, crooked stitch of gold on black.",
		"looks back into the night as the beast climbs and finds the mountain gone entirely; only the lit mouth of the gate and a scatter of lamps below it remain.",
	},
	["ifo.journey.w20.glow.015"] = {
		"Tinker Town is a borrowed home, and it still tugs at me when I fly away from it. I suppose that's what makes it a home, borrowed or not.",
		"The dwarves gave my people a corner of their mountain when ours was lost. Every time I leave it I feel the debt, and the warmth inside it.",
		"Funny: I never miss the noise of Ironforge until I'm out of it. Then what I miss most are the little explosions of Tinker Town.",
	},
	["ifo.journey.w20.glow.016"] = {
		"A gryphon: no fuel, no gears, mends itself, and complains less than any engine I know. I'll never say so in Tinker Town.",
		"Somebody in Tinker Town is surely drawing up a machine to replace these beasts. Until it stops catching fire, I'll take the feathers.",
	},
	["ifo.journey.w20.glow.017"] = {
		"senses the metal buckles of the harness cooling one by one under the gloves, the warmest of them holding the city's heat a few strokes longer than the rest.",
		"touches a harness ring that was warm in the halls and finds it already as cold as the slope below.",
	},
	["ifo.journey.w20.glow.018"] = {
		"The smiths swear the Great Forge has not gone cold in all the ages of the city. Leaving it behind, I find that oddly comforting.",
		"Whatever happens out there, the forge behind me goes on burning. The dwarves say it has never stopped. Good to have one thing in the world that doesn't.",
	},
	["ifo.journey.w20.glow.019"] = {
		"carries the heat of the Alliance's great forge out into the cold on gryphon wings, like a coal passed from one hearth to the next.",
		"leaves behind the forge that arms the Alliance, one more rider carried out of the mountain on the business of the kingdoms.",
	},
	["ifo.journey.w20.glow.020"] = {
		"One last look back, then I make myself face forward. The mountain has had its turn; it's the sky's now.",
		"I stop turning round in the saddle. Ironforge will keep. Whatever's ahead is the part that won't.",
	},
	["ifo.journey.w20.glow.021"] = {
		"Ha! Sneezed out the last of the Great Forge. Good riddance, soot.",
		"There. Cold enough to freeze the soot right out of my nose.",
	},
	["ifo.journey.w20.glow.022"] = {
		"There goes the warmest place I know. Shrinking fast.",
		"Bye, old mountain. Keep warm in there.",
	},
	["ifo.journey.w20.land.001"] = {
		"feels the beast tuck its wings at the gate and drop into the entrance hall like a stone into a well, then spread them again just short of the floor.",
		"rides the last glide in under the great arch, where the beast pulls its wings half shut and the carved walls rush by on either side.",
	},
	["ifo.journey.w20.land.002"] = {
		"There's one moment, just past the gate, when the flier tilts and the floor of the hall fills my whole view. I've learned not to watch that moment.",
		"Every time, I'm sure the wings won't fit under the last arch. Every time they fold a hand's width short of the stone, and I feel foolish.",
		"The beast judges that final arch better than any mason. I still flinch at it; it never does.",
	},
	["ifo.journey.w20.land.003"] = {
		"touches down on the roost with a scrape of claws on stone, the beast's hind legs taking the weight a beat after the front.",
		"is set down at the roost in two clumsy hops, the flier skidding on the worn stone before it finds its footing.",
		"lands to the dry rasp of talons on rock, and the beast takes three short running steps to shed the last of its speed.",
	},
	["ifo.journey.w20.land.004"] = {
		"Nine arches between the gate and here. Every one of them aimed at my head.",
		"That last turn over the forge was showing off, beast. Everyone saw.",
		"Not a single carving chipped on the way in. I'll call that a fine landing.",
	},
	["ifo.journey.w20.land.005"] = {
		"Coming into Ironforge is a funnel: the slope, then the gate, then the hall, then the roost, each smaller and warmer and louder than the last.",
		"Slope, gate, hall, perch. The world narrows down to a single roost, and every step of the narrowing is warmer.",
		"Mountain, door, hall, perch: the beast threads each one smaller than the last, and the cold drops away at every stage like a coat shed in pieces.",
	},
	["ifo.journey.w20.land.006"] = {
		"glides the length of the entrance hall beneath carvings worn by centuries, and the stone faces seem to turn as the wings go by.",
		"is borne along the great hall past rows of carved figures so old their features have gone soft, like faces seen through water.",
		"flies the long hall past carved figures taller than any gate guard, their stone eyes level with {g:his|her} own for a single wingbeat each.",
	},
	["ifo.journey.w20.land.007"] = {
		"The flier always spots the roost before I do. One moment it's gliding, the next its whole body has decided, and the stone is already under its claws.",
		"I never feel the beast decide to land. It simply stops being a bird and starts being something with legs.",
		"The beast has opinions about landing that it doesn't share with passengers. I find out what they are when the stone arrives.",
	},
	["ifo.journey.w20.land.008"] = {
		"comes down over the Great Forge in a slow spiral, the glow of the molten channels sweeping across {g:his|her} face with every turn.",
		"circles once above the great anvil before the beast drops to the roost, red light sliding over feathers and harness and skin.",
		"drops through the last of the spiral with the molten channels turning beneath like the spokes of a red wheel.",
	},
	["ifo.journey.w20.land.009"] = {
		"The mountain lets me in by its front door without asking my name. There are kings who don't get that courtesy.",
		"No word at the gate, no question. The mountain opens, and the flier goes straight in as if it were expected.",
	},
	["ifo.journey.w20.land.010"] = {
		"touches down in the middle of an argument beside the roost; both sides fall quiet, wait for the wings to fold, and resume exactly where they left off.",
		"comes down beside two smiths in a heated debate, who pause courteously for the landing and pick the quarrel up at the very same word.",
		"lands beside a dwarf deep in a long story, whose listeners turn to watch the wings fold and then turn back, demanding the ending.",
	},
	["ifo.journey.w20.land.011"] = {
		"Somewhere just inside the gate there's a line in the air where the cold stops. The beast crosses it in a single stroke, and my face notices before the rest of me.",
		"One wingbeat past the threshold, the air changes its mind entirely. Cold behind, warm ahead, and nothing in between but the gate.",
	},
	["ifo.journey.w20.land.012"] = {
		"unhooks the harness strap by feel, fingers too cold to be trusted with anything finer, and slides off the beast's flank.",
		"swings a leg over and drops the last short distance to the stone, boots ringing on it louder than expected.",
		"lets go of the harness, slides down the warm side of the flier and lands with both boots together, like a child jumping off a wall.",
	},
	["ifo.journey.w20.land.013"] = {
		"In through the gate on Alliance wings, past Alliance guards, down to the greatest forge the Alliance has. Whatever else changes out there, this holds.",
		"A gryphon of Ironforge sets me down beside the forge that arms half the Alliance. I could hardly be more firmly among friends.",
		"Alliance steel on the guards, Alliance beasts on the perches, an Alliance forge roaring below. Barely down, and already among my own.",
	},
	["ifo.journey.w20.land.014"] = {
		"The crowd at the roost parts for every landing. It's the claws they make room for, not me, but I'll take it.",
		"People step back when the beast comes down. I'd like to think it's respect. It's the talons.",
	},
	["ifo.journey.w20.land.015"] = {
		"comes in through the gate with the storm still roaring at the beast's tail, and the moment the wings clear the arch the thunder drops to a muffled grumble.",
		"is carried in out of the storm with water streaming from the harness, and its noise falls away behind the gate like an argument behind a shut door.",
	},
	["ifo.journey.w20.land.016"] = {
		"arrives out of the daylight half-blind, and stands at the roost blinking while the red gloom of the hall slowly fills with shapes.",
		"lands with eyes still full of the bright slopes outside, and for a few moments the city is only glow and shadow and sound.",
	},
	["ifo.journey.w20.land.017"] = {
		"Outside, the peaks were going red and then gray behind me. In here the color never changes, and nobody else at the roost has just watched a day go out.",
		"Dusk was settling over the slopes when the gate took me in. Nobody at the roost knows it yet, and I don't feel like telling them.",
	},
	["ifo.journey.w20.land.018"] = {
		"Hold its head a moment, would you? I'd like to get off with all my fingers.",
		"Steady there. Let me get my boot out of this stirrup before you go anywhere.",
		"Whoa, whoa. The flying's done, beast; you can stop leaning.",
	},
	["ifo.journey.w20.land.019"] = {
		"drops past the high ledges of the entrance hall where lamps burn in iron cages, each one flaring a little in the wind of the wings.",
		"sweeps past a row of lamps along the hall, and each flame bows in turn to the wind of the wings, as if the city were greeting the arrival.",
	},
	["ifo.journey.w20.land.020"] = {
		"In the last stride of air the beast throws its legs forward like someone reaching for a railing in the dark. Then stone, and stillness.",
		"Wings back, legs out, a jolt through the saddle, and the long hum of the flight stops dead. The silence it leaves is full of hammers.",
	},
	["ifo.journey.w20.land.021"] = {
		"is set down so gently that for a moment the flight does not seem to be over, and stays in the saddle until the handler coughs.",
		"stays seated a moment after the beast has stopped, hands still on the harness, as if waiting to be told.",
	},
	["ifo.journey.w20.land.022"] = {
		"From the air the Great Forge is a ring of fire with a city built around its rim. On foot it's a forge. I prefer it from the beast's back.",
		"Coming down over the great anvil you see the whole design of the place: the rings of halls, the channels, the order of it. Then you land, and it's just busy.",
	},
	["ifo.journey.w20.land.023"] = {
		"slips out of the fog and through the gate so suddenly that the guards' lamps seem to spring from nowhere, and then the whole red city after them.",
		"comes in with fog still beaded on the harness and on {g:his|her} sleeves, a gray dampness the forge-heat dries in moments.",
	},
	["ifo.journey.w20.lift.001"] = {
		"feels the gryphon master give the harness one last tug, and then the stone of the roost simply isn't there anymore.",
		"is checked over by the gryphon master strap by strap, with the face of someone counting change, and then the beast pushes off.",
	},
	["ifo.journey.w20.lift.002"] = {
		"The heat off the molten channels does the first three wingbeats for free. Ironforge may be stingy with a few things, but never with its fire.",
		"A gust of forge-heat shoves up under the wings and the beast rides it like a hoist. Nobody ever bought so much height so cheaply.",
	},
	["ifo.journey.w20.lift.003"] = {
		"rises over the great anvil just as the smith there lifts his hammer, and is gone before it comes down.",
		"passes above the great anvil between two blows; the smith working it never learns that anyone went by.",
		"lifts over the anvil on the upswing of a hammer, and the ring of the blow arrives from below a moment later, as if thrown after the beast.",
	},
	["ifo.journey.w20.lift.004"] = {
		"Claws off the stone, wings not yet holding: the smallest moment of the flight, and the one my stomach keeps longest.",
		"The jolt of leaving the roost goes up through the saddle and into my teeth. After that, everything is smooth. Only the first inch argues.",
	},
	["ifo.journey.w20.lift.005"] = {
		"Up, beast, and not too close to the hot stuff. I'd hate to arrive as an ingot.",
		"Higher, please. That metal down there is very orange, and I am very flammable.",
		"Keep clear of the molten bits. Everything else is negotiable.",
	},
	["ifo.journey.w20.lift.006"] = {
		"lifts off in a small cloud of soot shaken from the roost ledge, and a smith below sneezes without missing a stroke.",
		"sets a puff of old soot drifting down from the roost as the wings open, and somewhere underneath a dwarf swears at the ceiling.",
	},
	["ifo.journey.w20.lift.007"] = {
		"The heat comes off in layers as the beast climbs: scorching at the anvil, warm along the walkways, merely pleasant up by the lamps. I'm being peeled.",
		"Three heights, three climates: the forge floor, the galleries, the lamps. By the time the beast levels out I've crossed them all and lost a season.",
		"The forge's heat slides off me on the way up like a coat shrugged off, one sleeve and then the other.",
	},
	["ifo.journey.w20.lift.008"] = {
		"climbs through the shimmer above the molten falls, and for a moment the whole Great Forge wavers below like a city seen through water.",
		"rises into the haze over the falls of fire, where the halls ripple and bend as though the stone itself had begun to melt.",
	},
	["ifo.journey.w20.lift.009"] = {
		"A gnome on the gallery points up at me and says something to a friend. For about four seconds, I am the sight of Ironforge.",
		"Somebody down there just tugged a companion's sleeve and pointed my way. Fame: it lasts exactly as long as a takeoff.",
		"Two dwarf children on a ramp wave both arms at the beast. I wave back. The beast, being a professional, does not.",
	},
	["ifo.journey.w20.lift.010"] = {
		"rises past a walkway so close that a dwarf leaning on the rail could have handed up a mug, and looks as though he considered it.",
		"skims the edge of a high walkway; a dwarf at the rail lifts his tankard in salute, or possibly in self-defense.",
	},
	["ifo.journey.w20.lift.011"] = {
		"Not one smith looks up as the beast rises. A departure is the least interesting thing that can happen at the Great Forge.",
		"Below, the work goes on without a glance upward. Somebody leaving is nothing to a forge; it has metal to think about.",
		"Not a head turns. A forge that has watched riders leave for longer than anyone can remember has better things to watch.",
	},
	["ifo.journey.w20.lift.012"] = {
		"The roost smells of feathers, coal smoke and whatever the beasts were fed. Being lifted out of that smell is the first gift of the flight.",
		"Old straw, hot feathers and yesterday's meat: the perfume of a gryphon roost. Every wingbeat up is a wingbeat of cleaner air.",
	},
	["ifo.journey.w20.lift.013"] = {
		"wheels once over the Great Forge while the beast finds its line, the molten channels turning beneath like the spokes of a red wheel.",
		"circles the forge a single time as the beast picks its hall, the rivers of metal sliding round below in a slow red ring.",
	},
	["ifo.journey.w20.lift.014"] = {
		"The gryphon master's last word isn't for me, it's for the beast: low, gruff, something private. Then a slap on the flank, and the roost drops away.",
		"Whatever the gryphon master murmurs into the beast's ear at takeoff, it isn't meant for riders. It works, though. Up it goes.",
	},
	["ifo.journey.w20.lift.015"] = {
		"Straps good, beast fed, sky waiting. Thank you kindly!",
		"Much obliged! If I don't arrive, the beast knows where I let go.",
		"No waving, please. I'll only try to wave back.",
	},
	["ifo.journey.w20.lift.016"] = {
		"rises until the lamps high on the walls are level with the saddle, each one passing close enough to warm a cheek.",
		"climbs among the upper lamps of the Great Forge, near enough to see the soot filmed on their glass.",
	},
	["ifo.journey.w20.lift.017"] = {
		"Being lifted over the Great Forge is like being the lid on a kettle. Somebody ought to warn the lid.",
		"Hot air rising, and me riding on top of it. For this short stretch I am a pot lid, and not a calm one.",
	},
	["ifo.journey.w20.lift.018"] = {
		"Every dwarf leaves the Great Forge the same way, flying or walking: with a look back at the fire, to see that it's still lit. It always is.",
		"Walking past it, I forget. Flying out over it, I remember: this is the fire every dwarf in the world is measured against.",
	},
	["ifo.journey.w20.lift.019"] = {
		"Strap's tight? Good. No need to discuss it further.",
		"Yes, yes, I'm holding on. Go.",
	},
	["ifo.journey.w20.lift.020"] = {
		"Ow, hot, hot! Up, up, up!",
		"If my eyebrows come out of this singed, I'm writing a complaint.",
	},
	["ifo.journey.w20.lift.021"] = {
		"thumps the beast's neck twice before it rises, the way a carter knocks on a cart before setting off.",
		"gives the gryphon a firm pat on the shoulder, receives an indifferent glance in return, and is lifted from the roost anyway.",
	},
	["ifo.journey.w20.peak.001"] = {
		"Dun Morogh from above: white folds and creases everywhere, like a bed someone has only just climbed out of.",
		"Below, the hills of Dun Morogh lie rumpled and white, a sheet nobody has bothered to smooth.",
		"The whole country below looks cut from one great sheet of paper and then crumpled by a giant who changed his mind.",
	},
	["ifo.journey.w20.peak.002"] = {
		"The cold goes straight for the gap between glove and sleeve, as if it had studied the outfit beforehand.",
		"Two wingbeats outside and the cold has already found every gap: wrist, collar, the seam I meant to mend.",
		"The mountain air checks my clothing the way a guard checks papers, and finds everything I forgot.",
	},
	["ifo.journey.w20.peak.003"] = {
		"Cold! Cold, cold, cold. Very well, I'm awake.",
		"Ooh. That's the mountain saying hello.",
		"Whoever ordered this weather, I'd like a word.",
	},
	["ifo.journey.w20.peak.004"] = {
		"The peaks around Ironforge stand shoulder to shoulder like a council of elders that has never once adjourned, and never once agreed to move.",
		"Ring after ring of summits, all facing the same mountain, as if the whole range had gathered to keep an eye on the dwarves.",
	},
	["ifo.journey.w20.peak.005"] = {
		"picks out a single line of footprints crossing a snowfield far below, one traveler's long walk written across the white.",
		"follows a lone trail of prints across the snow below, straight as a rule, ending at a figure too small to make out.",
	},
	["ifo.journey.w20.peak.006"] = {
		"The dwarves found a mountain buried in snow and lit the biggest fire in the world inside it. From up here, in this cold, it looks like the wisest thing anyone ever did.",
		"All this snow outside, all that fire inside. Seen from the saddle, the whole of Ironforge is one long, stubborn argument with the weather.",
	},
	["ifo.journey.w20.peak.007"] = {
		"My ears go numb first, then they ache, then they stop sending news altogether. I'll hear from them again at the other end.",
		"The cold works on the ears in stages: sting, ache, silence. I've reached silence. They'll complain plenty when they thaw.",
	},
	["ifo.journey.w20.peak.008"] = {
		"passes a frozen waterfall hanging down a cliff below the flight, caught mid-fall like a curtain somebody forgot to draw.",
		"glides over a cliff where a waterfall has frozen solid, every ripple of it kept exactly as it was the moment the cold took it.",
	},
	["ifo.journey.w20.peak.009"] = {
		"From up here the mountains look soft, like heaps of flour. Anyone who has walked them knows exactly how soft they are not.",
		"The slopes below look smooth enough to slide down for fun. The slopes below are lying.",
	},
	["ifo.journey.w20.peak.010"] = {
		"watches a few wild rams on a ledge below scatter at the beast's cry, then stop, look up, and decide it isn't worth the trouble.",
		"sends a handful of rams bounding off along a ledge, and sees them pause a little further on to stare up in deep offense.",
	},
	["ifo.journey.w20.peak.011"] = {
		"spots a single thread of smoke rising from some far valley, where someone has a fire going and never thinks to look up.",
		"picks out one chimney in all that white, a pale scribble of smoke above it, and looks at it a little longer than at the view.",
	},
	["ifo.journey.w20.peak.012"] = {
		"notices a thin rime forming along the edges of the beast's wings, the forge's warmth already frozen out of its feathers.",
		"sees frost creep over the leading feathers of the wings as the climb goes on, fine as salt on the rim of a tankard.",
	},
	["ifo.journey.w20.peak.013"] = {
		"Up here the cold has a taste: clean, metallic, like melted snow from a tin cup. The halls tasted of coal. This tastes of nothing at all, and loudly.",
		"The air outside the mountain has no smell, only a taste, thin and iron. After the city it's like drinking water after ale.",
	},
	["ifo.journey.w20.peak.014"] = {
		"The League's scholars hold that these mountains were shaped by the Titans' own hands. From the saddle, with the ridges laid out in such neat order, it's easy to believe them for a stroke or two.",
		"A scholar of the Explorers' League would say the hand of the Titans is in these peaks. Up here, I'm not inclined to argue.",
	},
	["ifo.journey.w20.peak.015"] = {
		"clears the first ridge beyond the gate, and the white country opens on every side at once, fold behind fold to the edge of sight.",
		"tops the shoulder of the mountain, and the land beyond spreads out white and endless, ridges stacked behind ridges like waves that froze in a gale.",
	},
	["ifo.journey.w20.peak.016"] = {
		"Look at all that snow. Somebody really ought to shovel it.",
		"Lovely view. Could it be lovely a little lower down?",
		"All right, mountains, you're very tall. Point taken.",
	},
	["ifo.journey.w20.peak.017"] = {
		"The mountaineers say troggs still crawl up out of the old quarries down there. From this height the snow hides every hole, and the land looks as innocent as a fresh page.",
		"Somewhere in that clean white, the guards say, the troggs are digging. The snow keeps the secret beautifully.",
	},
	["ifo.journey.w20.peak.018"] = {
		"climbs out of the gate as the peaks of Dun Morogh catch the last of the light, pink at their tops while the valleys have already gone blue.",
		"rises into the dusk with every summit around burning faintly at its tip, and every hollow below gone the color of slate.",
	},
	["ifo.journey.w20.peak.019"] = {
		"Out of the gate into the dawn: the highest peaks lit first, one after another, like lamps being lit down a long hall.",
		"The first light is on the tops of the mountains and nowhere else yet. The beast climbs to meet it as if it wanted some too.",
	},
	["ifo.journey.w20.peak.020"] = {
		"feels the sun on {g:his|her} shoulders past the gate, thin and pale after the forge's heat, but honest.",
		"turns a face to the sun the moment the mountain is behind, and gets little warmth from it, but a great deal of light.",
	},
	["ifo.journey.w20.peak.021"] = {
		"The air is so clear past the gate that the far ridges look close enough to hit with a snowball. Some of them are a day's flight away.",
		"Not a cloud anywhere. Every peak in Dun Morogh stands out sharp as a cut gem, and I can count them until I give up.",
	},
	["ifo.journey.w20.peak.022"] = {
		"Snowflakes catch on my eyelashes past the gate and won't melt. I fly half the first stretch blinking like an owl.",
		"The snow finds my collar, my lashes, the inside of my ears. The beast just shakes it from its feathers every few strokes, like a dog.",
	},
	["ifo.journey.w20.peak.023"] = {
		"Should have brought the thicker gloves.",
		"My fingers have stopped speaking to me.",
		"Remind me to thaw out when this is over.",
	},
	["ifo.journey.w20.peak.024"] = {
		"spots a line of small shapes trotting along a ridge far below, wolves by the gait, unhurried and not the least bit interested in what flies.",
		"watches a pack of wolves cross an open slope beneath the flight in single file, each one stepping in the prints of the one ahead.",
	},
	["ifo.journey.w20.return.001"] = {
		"passes the reins to a handler, who takes them without a word and runs a practiced palm down the beast's foreleg, feeling for heat.",
		"hands the beast over to the keeper of the roost, who looks it over claw by claw before offering anything so warm as a nod.",
	},
	["ifo.journey.w20.return.002"] = {
		"It carried me all that way and leaves without looking back. That's how the good ones are, I suppose: no fuss at either end.",
		"I'd like to say the beast and I parted fondly. It didn't even turn its head. Fair enough; it has a lot of passengers.",
	},
	["ifo.journey.w20.return.003"] = {
		"There you go. Straight to your supper, and don't let the others eat it first.",
		"Off you go, then. Well flown, and mind the young one at the end; it bites.",
		"Thank you. I'd tip you, but I doubt you'd know what to do with a coin.",
	},
	["ifo.journey.w20.return.004"] = {
		"watches the beast led off to the perches, where it settles, ruffles once from head to tail, and is at once impossible to tell from the rest.",
		"sees the flier walked to its place in the row, where it shakes itself out and becomes, in a moment, one beast among many.",
		"looks on as the beast takes its place on the perch, tucks its head and becomes, in one movement, a creature that has never carried anyone anywhere.",
	},
	["ifo.journey.w20.return.005"] = {
		"I tried to fix in my head which one carried me, so I could look for it later. They've already mixed it in with the others. I'll never know.",
		"I could swear it was the one with the notch in its ear. Or the other one. They all have the look of having done me a favor.",
	},
	["ifo.journey.w20.return.006"] = {
		"tries to give the beast a farewell pat and is ignored entirely; it already has its head in a bucket.",
		"reaches up to scratch the flier's neck in thanks, but the beast has spotted the feed trough and is gone before the hand lands.",
	},
	["ifo.journey.w20.return.007"] = {
		"To the flier I was weight, and a bit fidgety, and now I'm handed back like any other bundle. There's an honesty in that.",
		"Carried, set down, signed off. The beast won't remember me, and I'll remember it a long while. That seems about right.",
	},
	["ifo.journey.w20.return.008"] = {
		"stands a moment with one hand flat on the beast's shoulder, feeling the big muscles twitch and settle, before the handler leads it away.",
		"rests a palm against the flier's neck until the handler clears a throat, and then lets go.",
		"lays a hand on the beast's warm flank a moment longer than the handler would like, then steps back and lets it go.",
	},
	["ifo.journey.w20.return.009"] = {
		"It flew well. Kept clear of every arch. Have a look at the left wing, though; it was favoring it at the gate.",
		"Here, all yours. Not a scratch on it, and only one or two on me.",
		"There. It did the hard part; I only held on.",
	},
	["ifo.journey.w20.return.010"] = {
		"I'll smell of feathers and beast for the rest of the walk. Nobody in Ironforge will notice; this whole end of the city smells of it.",
		"Gone, the beast, but its smell stays, all down my front. In this city, at least, I'm not the strangest thing in the air.",
	},
	["ifo.journey.w20.return.011"] = {
		"waits while the handler unbuckles the harness strap by strap and hangs it on its peg, a small rite performed for every landing.",
		"watches the harness come off the beast in the same order as always, buckle, strap, girth, until the flier stands unburdened and bored.",
	},
	["ifo.journey.w20.return.012"] = {
		"The gryphon goes back to its perch, ready for the next of the Alliance who needs carrying. I like being one link in that chain.",
		"Handed back, fed, rested, and flying for the Alliance before I've crossed the hall. These beasts do more for the cause than most generals.",
	},
	["ifo.journey.w20.return.013"] = {
		"Up there it was the beast and me. Now the reins are in someone else's hands and I'm one face in a crowd. It takes a moment to fit back in.",
		"The flier goes one way and I go the other, and for a step or two I feel oddly unaccompanied in a hall full of dwarves.",
	},
	["ifo.journey.w20.return.014"] = {
		"presses a copper into the handler's palm out of habit; the handler pockets it with the same habit, and neither of them mentions it.",
		"leaves a coin on the rim of the feed bucket for the roost-hands, and it is gone, quietly, before {g:he|she} has taken three steps.",
	},
	["ifo.journey.w20.return.015"] = {
		"Before they led it away, the beast gave me a long, level look. I'm fairly sure I've been judged, and fairly sure I lost.",
		"One last glance from the flier as it goes, the kind a landlord gives a tenant. I may owe it something. I'd rather not know what.",
	},
	["ifo.journey.w20.return.016"] = {
		"helps the handler rub down a beast still dripping from the storm outside, the two of them working in silence while thunder grumbles faintly beyond the gate.",
		"stays to rub the storm-wet beast down with a sack beside the handler, the dull roll of thunder just audible from outside.",
	},
	["ifo.journey.w20.return.017"] = {
		"The Wildhammer ride their beasts like kin, they say. A Bronzebeard hands the reins back at the roost with a nod. Different clans, different kinds of fondness.",
		"In Aerie Peak, the tale goes, a Wildhammer never lets another hand hold his beast's reins. Here I pass them to a stranger and walk off. The Bronzebeard way, and none the worse for it.",
	},
	["ifo.journey.w20.return.018"] = {
		"Save it the best scraps, would you? It worked hard against the wind.",
		"It's tired. Go gently with the buckles.",
		"Mind its right foot; it stamps when it's hungry. Which, I gather, is always.",
	},
	["ifo.journey.w20.return.019"] = {
		"watches the beast, freed of its harness, scratch behind one ear with a hind foot exactly like a dog, all its grandeur gone in a moment.",
		"sees the flier, harness off, stretch one wing, then the other, then yawn enormously, showing a beak that could open a strongbox.",
	},
	["ifo.journey.w20.return.020"] = {
		"steps back as the beast, barely fed, is saddled for someone else, and lets the next traveler climb up.",
		"has not gone ten paces before the flier has a fresh rider and is heading for the gate, as if the last trip never happened.",
	},
	["ifo.journey.w20.return.021"] = {
		"The handler takes the reins, looks me over as carefully as the beast, and seems satisfied with neither of us. Fair.",
		"I'm checked over at the roost as thoroughly as the beast: a glance at the hands, a glance at the face. I pass, just about.",
	},
	["ifo.journey.w20.roost.001"] = {
		"glances along the row of beasts waiting at the roost, each with its head tucked and one eye open, as if the open one were on duty.",
		"notices the other fliers on the perches dozing in a row, every head tucked down and every one of them somehow still watching.",
		"sees the beasts on the perches shift and resettle as the flier lands, like a row of old soldiers making room on a bench.",
	},
	["ifo.journey.w20.roost.002"] = {
		"Straw, raw meat and a great deal of feather. The roost has a smell all its own, and the forge-heat does it no favors.",
		"Whoever keeps the roost sweeps it often. You can tell, because it could be so much worse.",
	},
	["ifo.journey.w20.roost.003"] = {
		"watches a handler work a stiff brush along a beast's neck, and the beast lean into it with half-closed eyes, like a cat by a hearth.",
		"stops to watch a handler comb the knots out of a flier's ruff, the great head sinking lower with every stroke.",
		"follows a handler's hand along a beast's wing to its very tip, the feathers parting and closing behind the fingers like the pages of a riffled book.",
	},
	["ifo.journey.w20.roost.004"] = {
		"Who's the noisy one at the end? It started complaining the moment I came in.",
		"That one on the last perch hasn't stopped scolding since I landed. Is it me?",
		"Easy, big one. I'm only passing your perch, not after your supper.",
	},
	["ifo.journey.w20.roost.005"] = {
		"is just in time to see a freshly landed beast plunge its whole beak into the water trough and come up shaking drops over the nearest dwarf.",
		"edges past the water trough just as a beast lifts its dripping beak and shakes, spraying everyone within a wing's reach.",
	},
	["ifo.journey.w20.roost.006"] = {
		"Any other bird would scatter from a river of molten iron. These perch beside it and preen. Somebody, long ago, had a great deal of patience.",
		"They were made for cliffs and cold, and they doze a few strides from liquid fire. Whoever first taught them that was braver than I am.",
	},
	["ifo.journey.w20.roost.007"] = {
		"watches a young beast at the end of the row tug a handler's sleeve with its beak until it is given a scrap, then tug it once more straight away.",
		"sees a handler pass along the perches with a bucket of scraps, and every head in the row swing round to follow it.",
		"keeps an eye on a bucket of meat scraps crossing the roost, followed by a long row of turning heads, like guards watching a pretty face go by.",
	},
	["ifo.journey.w20.roost.008"] = {
		"The keeper of the roost counts every beast back in, one finger at a time, lips moving. A banker would envy that care.",
		"Somebody here keeps a tally of the fliers, and I just watched the one I rode get its mark beside its name.",
	},
	["ifo.journey.w20.roost.009"] = {
		"notices a beast with a bandaged wing kept a little apart from the others, its handler sitting beside it on an upturned bucket.",
		"sees one flier perched away from the rest, a wing strapped close to its side, and a handler on an upturned crate keeping it company.",
	},
	["ifo.journey.w20.roost.010"] = {
		"The whole roost greets each landing with a round of shrieks. Hello, or keep off: with these creatures it may be the same word.",
		"One landing, a dozen screeches from the perches. They must mean something. I'd give a good deal to know what.",
	},
	["ifo.journey.w20.roost.011"] = {
		"barely has both boots down before a handler is flapping both arms to shoo {g:him|her} clear for the next beast coming in.",
		"gets hustled off the landing stone by a handler with a whistle, because another set of wings is already in the hall.",
		"is waved off the landing spot with broad sweeps of a handler's arms, like a carter clearing a road, before the next wings arrive.",
	},
	["ifo.journey.w20.roost.012"] = {
		"There's an old one at the roost with a gray muzzle and frayed wingtips. Nobody puts a harness on it any more, and nobody sends it away either.",
		"At the far end sits a beast too old for the routes, white around the beak. They feed it with the others. I like this city for that.",
	},
	["ifo.journey.w20.roost.013"] = {
		"A handler at the roost mutters that the Wildhammer of Aerie Peak still think no Bronzebeard knows which end of a flier to feed. He says it while feeding the correct end, very carefully.",
		"To hear the roost-hands tell it, every Wildhammer swears the beasts here pine for the Hinterlands. The beasts, eating, make no comment.",
	},
	["ifo.journey.w20.roost.014"] = {
		"notices that the beasts at the roost all carry a faint dusting of soot on their pale feathers, as if the forge had signed each one.",
		"sees soot settled in the feathers of every beast on the perches, a gray bloom along the backs where the forge-smoke drifts across.",
	},
	["ifo.journey.w20.roost.015"] = {
		"Busy roost. Do they ever get a quiet hour, or is it wings all the time?",
		"Is it always this crowded at the perches? I've seen calmer markets.",
	},
	["ifo.journey.w20.roost.016"] = {
		"A whole flock of wild things, kept under a mountain beside a river of fire. They seem content. I'd never have guessed they could be.",
		"Creatures of cliffs and open air, perched on carved stone in the warm heart of the city. They've made it their eyrie, and the city has made room.",
	},
	["ifo.journey.w20.roost.017"] = {
		"watches a handler check a beast's talons one by one with a small file, the beast lifting each foot like a patient horse at the smithy.",
		"pauses as a handler files a chipped talon smooth, the beast standing on three legs with the bored dignity of an old soldier at the barber's.",
	},
	["ifo.journey.w20.roost.018"] = {
		"I'd offer to help muck out the roost, but I'd hate to rob anyone of the pleasure.",
		"Charming place. Does anyone ever sweep under the third perch, or is that a tradition?",
	},
	["ifo.journey.w20.roost.019"] = {
		"Behind me another beast lands with an empty saddle, having carried someone somewhere and flown the whole way back alone. Nobody so much as looks up.",
		"A riderless beast drops onto the next perch, harness still buckled, in on its own from some far landing. They know the way better than any of their passengers.",
	},
	["ifo.journey.w20.roost.020"] = {
		"notices a handler at the edge of the roost stitching a torn harness strap by the glow of the forge, tongue between teeth, never once looking up at the arrivals.",
		"passes a bench where a roost-hand oils a pile of harness leather, working the grease in with a thumb, slow and steady as a mason pointing a wall.",
	},
	["ifo.journey.w20.roost.021"] = {
		"stops beside a gnome adjusting some brass contraption on a spare harness while the roost-hands look on with the deep suspicion of people who prefer leather.",
		"notices one harness among the plain leather ones fitted with a brass buckle of plainly gnomish make, and a handler eyeing it as if it might go off.",
	},
	["ifo.journey.w20.roost.022"] = {
		"One perch at the end stays empty, and the handler keeps glancing at it between tasks. Not every beast comes in from every route.",
		"A handler stands at the edge of the roost looking toward the gate long after the last arrival, and then, quietly, hangs one harness away at the back of the rack.",
	},
	["ifo.journey.w20.stiff.001"] = {
		"walks off the roost bow-legged for a dozen strides, until {g:his|her} knees recall that they were never shaped around a saddle.",
		"leaves the perch with knees still convinced they are gripping a saddle, and a gait to match.",
	},
	["ifo.journey.w20.stiff.002"] = {
		"My hands still hold the shape of the harness. I'll be clutching invisible straps until supper.",
		"Fingers locked in a curl that fits the harness grip exactly and nothing else in the world. Give them a minute.",
	},
	["ifo.journey.w20.stiff.003"] = {
		"Give me a moment. My legs are still somewhere over the mountains.",
		"Don't mind me, I'm reminding my knees which way they bend.",
		"One moment. Everything below the belt is still flying.",
	},
	["ifo.journey.w20.stiff.004"] = {
		"leans on a stone rail near the roost and pretends to admire the view, while the feeling comes slowly back into both feet.",
		"finds a pillar to rest a shoulder against, with the air of someone deeply interested in its carvings, until standing comes easily.",
		"props one foot on the low wall of the roost and leans into the stretch, studying the forge with great attention so that nobody notices the wince.",
	},
	["ifo.journey.w20.stiff.005"] = {
		"Off the beast, on the stone, and still my body rises and falls with wingstrokes that have stopped. It'll pass. It always passes.",
		"The floor is perfectly still. I'm the one still flying, a little, with every step.",
	},
	["ifo.journey.w20.stiff.006"] = {
		"arches {g:his|her} back against both fists until something in it gives with a dull click, and then looks a great deal happier.",
		"rolls each shoulder in turn, slowly, working out the hunch the wind folds into anyone who rides it.",
		"twists slowly at the waist, left and right, until the long fold of the flight comes out of {g:his|her} back.",
	},
	["ifo.journey.w20.stiff.007"] = {
		"I sat for the whole flight, and all I want to do now is sit down. I've stopped asking my body to make sense.",
		"All that time in a saddle, and the first thing my legs ask for is a bench. There's no reasoning with legs.",
	},
	["ifo.journey.w20.stiff.008"] = {
		"works {g:his|her} fingers open and closed, open and closed, while a dwarf nearby watches with the kindly look of someone who has done the same a thousand times.",
		"sits on the low edge of the roost for a moment, flexing stiff hands, as handlers step around {g:him|her} without comment.",
	},
	["ifo.journey.w20.stiff.009"] = {
		"I think my face set in the expression it had over the last ridge. Somebody is going to believe I'm cross with them.",
		"My face is stuck in its flying squint. The dwarf at the rail thinks I'm glaring at him. I'm not. I just can't stop.",
	},
	["ifo.journey.w20.stiff.010"] = {
		"steps down onto legs that fold at the first try, and a passing dwarf catches an elbow without breaking stride or conversation.",
		"wobbles on landing and is steadied by a dwarf passing with a crate, who props {g:him|her} upright with one shoulder and keeps going.",
	},
	["ifo.journey.w20.stiff.011"] = {
		"Knees, back, the backs of my hands where the cold sat longest. Every part of me reports in, and none of the reports are good. Still, it's nice to hear from them all.",
		"The aches arrive one by one, polite as callers, each waiting until the last has finished.",
	},
	["ifo.journey.w20.stiff.012"] = {
		"A dwarf's legs were made for stone, not stirrups. Mine are telling me so in detail.",
		"Short legs and a wide saddle. Some clever Bronzebeard ought to fix that before I walk like this for good.",
	},
	["ifo.journey.w20.stiff.013"] = {
		"Someone should design a proper saddle for gnomes on these beasts. I have notes. I have so many notes.",
		"Note to self: a saddle sized for gnomes. Second note: legs sized for saddles.",
	},
	["ifo.journey.w20.stiff.014"] = {
		"kneels briefly to retie a boot the cold made impossible to handle up there, and stays down a moment longer than the knot requires.",
		"bends to tighten a strap at the ankle and takes rather a long time over it, letting {g:his|her} legs settle.",
	},
	["ifo.journey.w20.stiff.015"] = {
		"takes a turn around the roost at a slow walk, the way a horse is walked after a hard ride, until the stiffness gives.",
		"paces a small circle near the perches, hands on hips, until the floor stops feeling like something to hold on to.",
	},
	["ifo.journey.w20.stiff.016"] = {
		"Every flight I promise myself I'll stretch before landing. Every flight I land first and remember second.",
		"My neck spent the whole flight turned against the wind. Now it would like to know why it can't turn back.",
	},
	["ifo.journey.w20.stiff.017"] = {
		"Nobody watch me walk for the next minute, please. It isn't dignified.",
		"If I lurch into anyone, blame the beast. I certainly will.",
	},
	["ifo.journey.w20.stiff.018"] = {
		"Up there I weighed next to nothing. Down here every part of me has its weight back, and all of it wants to sit.",
		"The body is heavier after a flight. The scholars could explain it, I'm sure. My knees explain it better.",
	},
	["ifo.journey.w20.stiff.019"] = {
		"tries to walk off with dignity and manages it for very nearly four steps.",
		"sets off from the roost with great purpose and a very slight limp, as if one leg is still deciding whether to come along.",
	},
	["ifo.journey.w20.warmth.001"] = {
		"stands where the heat of the forge reaches the roost and turns slowly, like meat on a spit, until both sides have thawed.",
		"turns a slow half-circle in front of the forge, warming one side and then the other with the patience of a loaf in an oven.",
	},
	["ifo.journey.w20.warmth.002"] = {
		"My fingers come back to me one at a time, each with its own complaint about where it's been.",
		"The thaw starts at the fingertips and works inward, and every inch of it stings. Worth it.",
		"Hands first, then ears, then the end of my nose. Thawing out in Ironforge goes in a set order, and nobody jumps the queue.",
	},
	["ifo.journey.w20.warmth.003"] = {
		"stands close enough to the forge for the cloth of {g:his|her} cloak to warm right through, and only then unclenches {g:his|her} jaw.",
		"feels the chill of the flight leave {g:his|her} cloak slowly, the way it leaves a stone set beside the hearth.",
	},
	["ifo.journey.w20.warmth.004"] = {
		"Up there the cold went right through me. Down here the heat goes right through me too, but it's the kind that stays.",
		"The cold of the flight was a thief. This heat is a host, and it insists.",
	},
	["ifo.journey.w20.warmth.005"] = {
		"Five strides from the forge and my ears have already forgiven me.",
		"My eyebrows have thawed. Everything else is in a queue.",
		"Stand aside, I'm warming up. This may take a while.",
	},
	["ifo.journey.w20.warmth.006"] = {
		"loosens {g:his|her} collar a notch, then another, as the cold of the flight gives way to the forge-heat far quicker than seemed possible.",
		"undoes the top clasp of {g:his|her} cloak within a dozen steps of the roost; the cold is gone and the heat has already moved in.",
		"pushes back {g:his|her} hood before the beast has quite stopped, and lets the heat find {g:his|her} ears.",
	},
	["ifo.journey.w20.warmth.007"] = {
		"Chilled to the bone up there, and now I'm hunting for a cooler spot to stand. Ironforge has no middle ground.",
		"Too cold for the whole flight, and too warm twenty steps after landing. There must be a comfortable stretch of hall somewhere. I'll find it.",
	},
	["ifo.journey.w20.warmth.008"] = {
		"feels the heat of the forge settle on {g:his|her} face like a hand laid flat against it, and does not step back.",
		"turns a wind-burned face toward the forge and lets the heat press against it, eyes closed.",
		"lifts {g:his|her} chin toward the forge and lets the heat work into cheeks gone stiff with cold.",
	},
	["ifo.journey.w20.warmth.009"] = {
		"Wind for the whole flight, and now a heat that has burned longer than any kingdom I could name. It doesn't notice me. It warms me anyway.",
		"This fire was lit before the oldest dwarf in these halls was born. It warms a tired traveler the same as it warms a king.",
	},
	["ifo.journey.w20.warmth.010"] = {
		"begins peeling off layers before both boots are steady, and ends up carrying a bundle of cloak and gloves across the hall like washing.",
		"sheds the gloves, then the cloak, then very nearly the coat, and walks off the roost with an armful of wool and leather.",
	},
	["ifo.journey.w20.warmth.011"] = {
		"The heat of the Great Forge comes up to meet me. Anywhere else, warmth is a comfort. Here it's kin.",
		"Other fires warm a dwarf. This one knows me.",
	},
	["ifo.journey.w20.warmth.012"] = {
		"Gnomeregan was warm too, once, with a cleaner heat than this. I thaw at the dwarves' forge and try not to compare.",
		"A borrowed fire in a borrowed city. It still warms my hands, and I'm still grateful, and I still miss the one left behind.",
	},
	["ifo.journey.w20.warmth.013"] = {
		"My eyes ran the whole flight. Now the forge dries them in one go, and I stand here blinking like an owl at a lantern.",
		"Wind-wet eyes, forge-dry face. I must look like someone who's just been told something astonishing.",
	},
	["ifo.journey.w20.warmth.014"] = {
		"Mind if I stand by your fire a moment? I've brought the cold in with me.",
		"Excuse me, I'll just borrow some of this heat. I'll give it back.",
	},
	["ifo.journey.w20.warmth.015"] = {
		"leaves a trail of small white boot prints from the roost that shrink to wet dots and vanish before anyone can step on them.",
		"shakes snow out of {g:his|her} hood onto the roost stones, where a handler sweeps it over the edge without a word, as if snow arrived every day with the post.",
	},
	["ifo.journey.w20.warmth.016"] = {
		"Anyone want some snow? I've brought plenty. It's in my collar.",
		"Snow in my boots, snow down my neck. The rest of Dun Morogh is still out there, I'm told.",
	},
	["ifo.journey.w20.warmth.017"] = {
		"rubs {g:his|her} hands together hard, then cups them over both ears, which have gone from numb to burning in the length of a single hall.",
		"pulls off a glove with {g:his|her} teeth and presses the bare hand to the back of {g:his|her} neck, where the cold seems to have settled for good.",
	},
	["ifo.journey.w20.warmth.018"] = {
		"Ten steps into the warmth and my eyelids are already heavy. The flight kept me awake by sheer cold; the forge has other plans.",
		"The heat goes straight to my eyelids. I could sleep standing, right here by the roost, the way the beasts do.",
	},
	["ifo.journey.w20.warmth.019"] = {
		"Warm air. Real, honest, mountain-made warm air. I'd forgotten it existed.",
		"Somebody keep that forge going. I've decided to live next to it.",
	},
	["ifo.journey.w20.warmth.020"] = {
		"Not a cloud anywhere out there, and a cold with teeth to match. The forge pulls them out one by one.",
		"Clear and bitter the whole way in, the kind of cold that sharpens every edge. In here, all the edges go soft at once.",
	},
	["ifo.journey.w20.warmth.021"] = {
		"The cold followed me all the way to the gate and stopped there, like a dog that isn't allowed in.",
		"The cold gave up at the gate. It never comes further than that; the dwarves must have had a word with it.",
	},
	["ifo.journey.w20.wing.001"] = {
		"The harness smells of every rider before me: oil, old leather, somebody's pipe, somebody's fear. I add my own and hold on.",
		"Worn leather under the hands, polished by a thousand grips. Whoever flew last held on exactly where I'm holding now.",
		"There's a hollow in the saddle horn where countless thumbs have pressed. Mine fits it too.",
	},
	["ifo.journey.w20.wing.002"] = {
		"feels the beast's shoulders bunch and roll under the saddle with every stroke, steady as a rower who has made this crossing all his life.",
		"sits through the long, rolling heave of the wings, the gryphon's back rising and settling beneath like a boat on a slow swell.",
	},
	["ifo.journey.w20.wing.003"] = {
		"The beast's neck feathers are still warm from the roost. By the gate they'll have cooled. I keep my hands buried in them while it lasts.",
		"Warm feathers under my fingers, a warmth borrowed from the forge. The cold outside will collect it soon enough.",
	},
	["ifo.journey.w20.wing.004"] = {
		"You know the way better than I do. I'll hold on and admire the view.",
		"Lead on, beast. I'm only the cargo.",
		"No need to show off. I'm impressed already.",
	},
	["ifo.journey.w20.wing.005"] = {
		"Halfway down the hall the beast turns its head and looks back at me with one round eye, the way a coachman checks on a passenger. Satisfied, it faces forward.",
		"One eye, round and unblinking, swivels back to check on me. Whatever it sees, it decides I'll do.",
	},
	["ifo.journey.w20.wing.006"] = {
		"In the halls the beast keeps its wings half-folded and flies on short, quick strokes, like someone hurrying down a crowded corridor who refuses to run.",
		"Inside, the wings never open fully. Short, tidy strokes, elbows in. The beast crosses the halls the way a dwarf crosses a tavern full of elbows.",
	},
	["ifo.journey.w20.wing.007"] = {
		"A moment ago those claws were gripping stone. Now they're tucked up neatly, trusting the air completely. I'd like a share of that trust.",
		"The beast has folded its feet away like someone who knows they won't be needed. I'm keeping mine exactly where they are.",
	},
	["ifo.journey.w20.wing.008"] = {
		"hears the saddle girth creak in time with the wings, a small leather complaint under the great beat of the flight.",
		"listens to the harness talk as the beast climbs: a creak with each downstroke, a buckle ticking against a ring.",
	},
	["ifo.journey.w20.wing.009"] = {
		"Every gryphon here knows the route by heart. The rider is luggage that happens to complain.",
		"The beast doesn't need directions, encouragement or me. I'm a parcel, and not one of the calmer ones.",
	},
	["ifo.journey.w20.wing.010"] = {
		"Steady wings, please. I ate very well at the Stonefire Tavern and I'd like to keep it that way.",
		"Smooth, now. Whatever I drank at the Stonefire is still deciding where to settle.",
	},
	["ifo.journey.w20.wing.011"] = {
		"leans with the beast into its first turn beyond the gate, the whole white world tipping onto its edge and then, slowly, righting itself.",
		"tilts with the gryphon as it banks over the slope below the gate, and the mountains swing round like a door on its hinges.",
	},
	["ifo.journey.w20.wing.012"] = {
		"hears the beast give one shrill cry as it clears the gate, and the mountain hands the cry back twice from the slopes below.",
		"is carried out through the gate on a single piercing call from the beast, answered a moment later by the cliffs.",
	},
	["ifo.journey.w20.wing.013"] = {
		"watches the long feathers at the wingtips spread like fingers at the bottom of each stroke, feeling for the air, then close again as the beast climbs.",
		"follows the outermost feathers with {g:his|her} eyes: they splay apart on every downstroke, each one finding its own small grip on the air.",
	},
	["ifo.journey.w20.wing.014"] = {
		"Up close, the beast smells of warm stone and a very large cat. Not unpleasant. Just a great deal of it.",
		"Lion at the back, eagle at the front, and the whole of it smelling of the roost's warm stone. There are worse ways to travel.",
	},
	["ifo.journey.w20.wing.015"] = {
		"takes a fresh grip on the saddle as the beast settles into its traveling stroke, fingers finding the same worn places as before.",
		"shifts in the saddle to find the seat that will have to last the whole flight, and finds it on the third try.",
	},
	["ifo.journey.w20.wing.016"] = {
		"In the halls the beast was all caution. Out here it stretches every feather at once, and I'd swear it's enjoying itself.",
		"Outside the mountain the gryphon becomes a different animal: long strokes, head up, nothing careful left in it. It was waiting for this.",
		"Whatever it felt in the halls, the beast feels better now. The wings open to their full width at last, and the whole body loosens.",
	},
	["ifo.journey.w20.wing.017"] = {
		"Easy, easy. Plenty of room now. Stretch out.",
		"There, out. Open them up, beast; you've earned it.",
	},
	["ifo.journey.w20.wing.018"] = {
		"The mountaineers grumble that the Wildhammer of Aerie Peak think every gryphon in the Alliance is on loan from them. This one doesn't seem to care whose it is.",
		"A Wildhammer, the old soldiers say, would turn up his nose at a gryphon that knows only the routes of the gryphon masters. This one knows them very well indeed.",
	},
	["ifo.journey.w20.wing.019"] = {
		"The gryphon gives its head a shake as the halls end, like a dwarf stepping out of a tavern into the cold. Same expression, too.",
		"Past the gate the beast fluffs every feather it owns and doubles in size. Innkeepers do much the same at closing time.",
	},
	["ifo.journey.w20.wing.020"] = {
		"Good beast. Steady, now. You and me, all the way.",
		"Easy there. No hurry, nobody chasing.",
		"You fly, I'll worry. That seems fair, doesn't it?",
	},
	["ifo.muse.w20.ale.001"] = {
		"pauses outside the Stonefire Tavern, where the noise comes out in waves each time the door opens, and the smell of malt and roast comes out with it.",
		"slows near the Stonefire Tavern long enough for the door to open twice, and gets two different songs, one for each time.",
	},
	["ifo.muse.w20.ale.002"] = {
		"Miners flick the first of the foam onto the floor before they drink. For the stone, one told me. For the mop, said the barkeep, who does the mopping.",
		"At the bar, a dwarf tipped a thumb of foam onto the flagstones before his first sip. An offering to the mountain, he said. The barkeep's sigh suggested a different word for it.",
		"Every regular at the Stonefire spills a little foam before the first sip. The floor by the bar must be the best-fed stone in the city.",
	},
	["ifo.muse.w20.ale.003"] = {
		"Dwarves hold a mug by its belly, not its handle. A handle, a brewer explained, is for people who plan to put it down.",
		"I picked up my mug by the handle and three dwarves looked away politely. Apparently you hold it round the middle, like something you mean to keep.",
	},
	["ifo.muse.w20.ale.004"] = {
		"steps aside for a tavern hand crossing the hall with six full mugs in two fists, carrying the order out to a forge too busy to come for it.",
		"follows with some admiration a tavern runner weaving through the crowd, a tray of tankards held high, calling out names and never once looking at the tray.",
	},
	["ifo.muse.w20.ale.005"] = {
		"A song from a doorway somewhere: twenty voices, then nineteen, then a single stubborn baritone holding the last note long after everyone else has given up. Applause, then laughter.",
		"The singing behind the tavern door falls apart in the middle, there's a crash and a roar of laughter, and then, astonishingly, it picks up exactly where it stopped.",
	},
	["ifo.muse.w20.ale.006"] = {
		"When a fresh cask is tapped at the Stonefire, a brewer told me, the room goes as quiet as the Hall of Mysteries for the mallet. Then one blow, and the noise comes back twice as loud.",
		"Dwarves fall silent for very few things. The tapping of a new barrel is one of them: one clean blow of the mallet, a hiss, and a cheer that rattles the shelves.",
	},
	["ifo.muse.w20.ale.007"] = {
		"Dwarven toasts are short. Mostly 'Ha!' and then drinking. I respect a ceremony that knows its priorities.",
		"I've heard a dozen toasts in this city and none lasted longer than it takes to lift a mug. Long speeches go flat, apparently.",
		"Dwarves clink mugs so hard I've seen one crack. Nobody stopped. They poured another and clinked that too, harder.",
	},
	["ifo.muse.w20.ale.008"] = {
		"There's a bench at the Stonefire, a tavern hand told me, with names cut into its underside: miners from a seam that came down on them. Nobody sits on it. Nobody would dream of moving it either.",
		"Under one of the tavern benches, they say, are carved the names of a mining crew the deep took all at once. At closing it gets wiped down like the others, only more gently.",
	},
	["ifo.muse.w20.ale.009"] = {
		"There's no such thing as too early for ale under a mountain, a dwarf told me, since nobody can prove what hour it is. I couldn't fault the logic.",
		"Ask a dwarf whether it's too soon for a mug and he'll ask you how you'd know. Under all this rock, he has a point.",
	},
	["ifo.muse.w20.ale.010"] = {
		"looks on as a dwarf lowers an empty tankard, wipes the foam from his mustache with the back of one glove and lets out a sigh so content it is almost a speech.",
		"hears, from a bench nearby, the particular grunt a dwarf makes at the bottom of a good mug: short, deep, and final as a door closing.",
		"watches a dwarf set down an empty mug, gaze into it for a long moment as though expecting it to explain itself, and then raise one finger toward the bar.",
	},
	["ifo.muse.w20.ale.011"] = {
		"Late as it is, the Stonefire is still roaring. In a city that can't see the hour, the taverns decide when it's night, and they've decided against it.",
		"It must be well into the night outside. The forges have thinned, the tavern hasn't, and the songs coming through its door have reached the stage where everyone knows a different verse.",
	},
	["ifo.muse.w20.ale.012"] = {
		"A mug of dark from the Stonefire cellar, and the whole mountain settles into place around me. Every dwarf has a taste that means home. Mine is cold, bitter and smells faintly of the cask.",
		"I could tell this ale was brewed under this mountain with my eyes shut. Something in the water, the brewers say. Something in the stone, say the miners.",
	},
	["ifo.muse.w20.ale.013"] = {
		"Dwarven stout is thick enough to stand a spoon in. I know because somebody did, and the spoon is still standing.",
		"This ale has more body than some of the guards. I'm not complaining. I'm chewing.",
		"I've eaten bread thinner than this stout. I've leaned on walls thinner than this stout.",
	},
	["ifo.muse.w20.ale.014"] = {
		"Here in the Commons the Stonefire's door is never quite shut. Somebody has wedged it a hand open, so the tavern can hear the city and the city can hear the tavern.",
		"The Stonefire's door is propped on a wedge worn smooth by boots. Shut it, a regular warned me, and the whole Commons will think somebody died.",
	},
	["ifo.muse.w20.ale.015"] = {
		"notices a tavern hand go by with a broom on his shoulder and the look of someone who has just steered the last drinkers out; behind him a gate guard is telling someone the dawn is up outside.",
		"sees a tavern keeper turn the last chairs up onto the tables and pause in the doorway to ask a passing guard how it looks outside; 'dawn', says the guard, and the keeper nods as though that were the answer he expected.",
	},
	["ifo.muse.w20.anvil.001"] = {
		"The great anvil has a shallow dip worn into its face, the size of a cupped palm. No smith would dream of grinding it flat. That dip is the city's signature.",
		"Look closely at the great anvil and its face isn't flat at all: it sags in the middle, worn down by more hammers than anyone has bothered to count.",
	},
	["ifo.muse.w20.anvil.002"] = {
		"counts the strokes of a smith and his striker working one bar between them, the big sledge and the little hammer trading blows like two old friends finishing each other's sentences.",
		"follows the little hammer of a master smith tapping the anvil between blows, telling the striker where the sledge should fall next without a single word.",
	},
	["ifo.muse.w20.anvil.003"] = {
		"That smith taps the anvil twice before every real blow. I asked why. He says the anvil likes to know it's coming.",
		"Two light taps on the anvil, then the real blow. Every time. The smith calls it manners. Anvil manners.",
	},
	["ifo.muse.w20.anvil.004"] = {
		"Elsewhere in the world an anvil sits on an oak stump. In Ironforge it sits on a block of the mountain, and the ring of every blow goes down into the rock and stays there.",
		"No wooden stumps under these anvils: each one rests on squared stone, bedded deep. A smith told me the mountain takes the shock so the arm doesn't have to.",
	},
	["ifo.muse.w20.anvil.005"] = {
		"Around the great anvil, rank is measured in steps. Apprentices work at the edge, journeymen nearer, and the master stands where the heat is worst, as if that were the privilege.",
		"From the rail you can read the order of the forge like a map: the youngest at the rim, fetching; the seasoned ones closer in; and at the center, in the worst of the heat, whoever has earned it.",
	},
	["ifo.muse.w20.anvil.006"] = {
		"watches a smith sweep the face of her anvil clean with a quick stroke of a leather pad between every heat, so that no flake of scale gets hammered into the next piece.",
		"notices that between heats every smith flicks the anvil face clean with a rag or a bare palm, the way a cook wipes a board before the next cut.",
	},
	["ifo.muse.w20.anvil.007"] = {
		"Moving an anvil, it turns out, takes six dwarves, two iron bars, a gnome with a diagram nobody reads, and a great deal of advice from everyone else.",
		"Somebody is shifting an anvil across the forge floor. Progress so far: one hand's breadth, three arguments, and a ruling that the gnome's diagram was upside down.",
		"Never offer to help move an anvil. I did. I've been holding a lever for some time now, and nobody has told me which direction is the plan.",
	},
	["ifo.muse.w20.anvil.008"] = {
		"Here at the Great Forge everyone leans on everything: rails, pillars, each other. Nobody leans on the great anvil. Not the guards, not the drunks, not even the gnomes.",
		"People sit on the steps here, prop their packs on the rails, rest their elbows wherever there's stone. The great anvil alone has a ring of empty floor around it, and everyone keeps to the ring.",
	},
	["ifo.muse.w20.anvil.009"] = {
		"Sorry, what? My ears are still full of the forge. Everything sounds like it's being said from the next hall.",
		"Too long by the anvils. I can see your mouth moving. I'm nodding and hoping for the best.",
		"Give me a moment. The forge is still ringing in my head, and you sound like you're talking through a door.",
	},
	["ifo.muse.w20.anvil.010"] = {
		"One anvil near the edge of the forge stands idle, a leather cover tied over its face and a hammer laid on top. Its smith went south to Blackrock, an apprentice told me, and the cover stays until somebody says otherwise.",
		"There's an anvil nobody works, covered in oiled leather, a hammer resting across it like a hand on a shoulder. Nobody explained. The smiths on that side just work a little quieter.",
	},
	["ifo.muse.w20.anvil.011"] = {
		"A master at the forge tests an apprentice's work with a file, drawing it once along the edge. If it bites, the piece goes back in the fire. If it skates, the apprentice is allowed a small, careful smile.",
		"The file is the judge at the anvil. One stroke across the hardened edge: a grating bite means start over, a dry skid means it's done. No speech either way.",
	},
	["ifo.muse.w20.anvil.012"] = {
		"spots a gnome working a jeweler's anvil no bigger than a loaf, wedged between two dwarven anvils the size of ore carts, tapping away without the least embarrassment.",
		"lingers near a gnome at a tiny anvil among the great ones, her little hammer ticking away like a clock amid the din on either side.",
	},
	["ifo.muse.w20.anvil.013"] = {
		"Shut my eyes in this city and the anvils would still walk me home: the deep one, the sharp one, the one with a crack in its voice. Every dwarf learns them without trying.",
		"A dwarf hears the anvils apart the way others hear voices apart: the low one, the bright one, the one with the crack. It's the first map any of us learns.",
	},
	["ifo.muse.w20.anvil.014"] = {
		"Look at that anvil. You could hammer out a drawbridge on it and still have room for lunch.",
		"That anvil's bigger than some rooms I've slept in. Smaller than the smith's opinion of it, mind.",
		"I've seen altars treated with less respect than that anvil. And with less reason, maybe.",
	},
	["ifo.muse.w20.bellows.001"] = {
		"notices the bellows of the nearest forge are worked by a foot treadle, the smith pumping it in steady strokes without looking down while both hands stay busy with the tongs.",
		"follows the rise and fall of a smith's boot on a bellows treadle, slow and even, the coals flaring in answer each time it comes down.",
	},
	["ifo.muse.w20.bellows.002"] = {
		"The bellows at that forge are more patch than leather. Somebody has stitched a gnomish label into one seam, and nobody has the heart to take it out.",
		"Patches on patches on the big bellows, each a different shade of hide. You could read the forge's history in them, if you knew which leak came first.",
	},
	["ifo.muse.w20.bellows.003"] = {
		"The smiths never face the fire square. They stand half turned, shoulder first, the way you'd stand to a stranger you didn't trust yet.",
		"Watch a smith long enough and you notice: always side-on to the coals, never face first. Years of heat teach the body its own good sense.",
		"No smith here meets the fire with an open face. A half turn, a lowered chin, the shoulder taking it first. It looks like shyness until you stand where they stand.",
	},
	["ifo.muse.w20.bellows.004"] = {
		"Not a single eyebrow among the smiths over there. I'm starting to think it's a mark of rank.",
		"Count the eyebrows at the forge. Go on. I got to three, and two of them were on the same gnome.",
	},
	["ifo.muse.w20.bellows.005"] = {
		"The heat of the forge has an edge you can find with your face. One step forward and it bites; one step back and it's merely a warm room.",
		"There's a line on the floor near the forge that nobody painted. Cross it and the heat bites; step back over it and the city goes gentle.",
		"I've found the exact spot where the forge's heat stops being pleasant. It's about one boot length closer than where I'm standing now.",
	},
	["ifo.muse.w20.bellows.006"] = {
		"notices a smith hold the back of one hand near the coals for a moment, judging the fire by the bite on the knuckles rather than by looking at it.",
		"sees an old smelter pass a palm across the mouth of a furnace, quick as a greeting, and nod: the heat is right, by whatever measure lives in that hand.",
	},
	["ifo.muse.w20.bellows.007"] = {
		"Under all the hammering there's a slower sound, the great bellows drawing and pushing, steady as a tide. You stop hearing it. Then it misses a stroke, and half the forge looks up.",
		"The big bellows keep a pace older than anyone at the forge. Nobody listens to it, the way nobody listens to their own feet, until it falters and every head turns.",
	},
	["ifo.muse.w20.bellows.008"] = {
		"A little while at the forge rail and my eyes have dried out like old leather. The smiths blink about once an hour. I don't know how they manage.",
		"My face feels tight from the heat, as if it had been left too near a stove. The smiths work an arm's length closer than this for hours and call it a quiet shift.",
	},
	["ifo.muse.w20.bellows.009"] = {
		"Hot in here? A smith over there just called it 'pleasant' and rolled his sleeves down.",
		"I grumbled about the heat. The smith by the coals asked which heat. Apparently there are several.",
	},
	["ifo.muse.w20.bellows.010"] = {
		"studies a smith's leather apron as she passes: scorched, pocked with tiny burn holes, and rubbed to a shine where the edge of the anvil meets it.",
		"glances at the apron of a passing journeyman, a map of little black burns with one clean patch in the middle where the work is held against the hip.",
	},
	["ifo.muse.w20.bellows.011"] = {
		"Back in Gnomeregan nobody worked a bellows by hand; a machine did that while you did something clever. The dwarves here pump theirs on purpose. I've offered pistons twice. I've stopped offering. Mostly.",
		"Every gnome at the Great Forge has the same itch: to fit a little engine to those bellows. The dwarves can see it in our eyes, and they step in front of them.",
	},
	["ifo.muse.w20.bellows.012"] = {
		"A miner in from the gate stands as near the coals as the smiths will let him, snow sliding off his shoulders in wet clumps and hissing where it lands.",
		"Somebody's just come in with snow still caked on his boots and walked straight to the forge. In the time it takes to grumble a greeting, it's a puddle, then steam.",
	},
	["ifo.muse.w20.bellows.013"] = {
		"Every time that big bellows sighs I turn around, sure somebody behind me is disappointed.",
		"That bellows sighs exactly like an innkeeper at closing time.",
		"The bellows over there has been sighing at me for an hour. I've done nothing. I think.",
	},
	["ifo.muse.w20.bidder.001"] = {
		"At the auction house of Ironforge, copper ore goes for next to nothing and a decent bolt of wool costs a fortune. A city full of miners, short of tailors.",
		"Ore is cheap in Ironforge; half the mountain is digging it up. It's wool and silk that make the bidders wince.",
		"Sell iron in Ironforge and you'll get a pat on the back. Sell a good spool of silk and you'll draw a crowd.",
	},
	["ifo.muse.w20.bidder.002"] = {
		"I've listed my old gloves at a fair price. Three dwarves have stopped to tell me so. Not one has bought them.",
		"Everyone agrees my price is fair. Nobody's purse seems to be listening.",
	},
	["ifo.muse.w20.bidder.003"] = {
		"The auction house smells of everything it sells at once: cured leather, lamp oil, sulfur off somebody's ore and, very faintly, a cheese that should have been sold sooner.",
		"Near the auctioneers the goods announce themselves by nose: tanned hide, damp wool, a sack of dried herbs, and something gnomish that smells of hot copper.",
	},
	["ifo.muse.w20.bidder.004"] = {
		"watches an auctioneer unpick the corner of a parcel, sniff the cloth inside, frown, and write a smaller number in the margin of the list.",
		"notices an auctioneer weigh a sack of ore in one palm, then in the other, as if the second hand might give a better price.",
	},
	["ifo.muse.w20.bidder.005"] = {
		"A miner keeps bidding on his cousin's ore so the price won't sag, and the cousin bids on his. The whole Commons knows. The two of them still think it's a secret.",
		"Two dwarven brothers prop up each other's prices at auction, bid for bid, and pretend not to know each other at the counter. Everyone else pretends along with them. It's a very polite fraud.",
	},
	["ifo.muse.w20.bidder.006"] = {
		"The buyout on that hammer is more than everything I'm wearing. I'll just stand here and admire it. Admiring is free.",
		"I can't afford a single thing on this list, and I've read it twice. Finest book in Ironforge.",
	},
	["ifo.muse.w20.bidder.007"] = {
		"My old belt sold within the hour. Now I can't stop wondering what the buyer knew that I didn't.",
		"Sold fast means priced low. Never sold means priced high. I've yet to find the third kind of price.",
	},
	["ifo.muse.w20.bidder.008"] = {
		"steps out of the way of a gnome hauling a clinking sack toward the auction house and announcing, to nobody in particular, that it's worth a fortune.",
		"makes room for a gnome dragging a sack twice her size in the direction of the auctioneers, the contents rattling like a drawer of spoons.",
	},
	["ifo.muse.w20.bidder.009"] = {
		"Fish from Loch Modan costs twice as much by the time it reaches the auction house. The fish hasn't improved on the way; the road has simply charged it rent.",
		"Everything costs more in Ironforge once it has come up from the loch or off the tram. Nobody minds much. Paying for distance is the price of living inside a mountain.",
	},
	["ifo.muse.w20.bidder.010"] = {
		"The auctioneers here grade the goods in three words, a clerk told me: 'sound', 'fair' and 'pity'. I asked about my best boots. She said 'fair' very kindly, which was worse.",
		"Ask an auctioneer of Ironforge what a thing is worth and you'll get one word before any number. 'Sound' is high praise. 'Honest' means old. 'Interesting' means gnomish.",
	},
	["ifo.muse.w20.bidder.011"] = {
		"catches sight of a gnome hurrying away from the auctioneers with a prize hat, putting it on, vanishing under it to the chin, and walking on as if she had meant to.",
		"sees a gnome proudly try on a helm she has just won at auction; it settles on her shoulders, and she adjusts it there without a word.",
	},
	["ifo.muse.w20.bidder.012"] = {
		"Someone is selling a whole kit at once: boots, belt, pack, a dented helm. Either they've struck it rich or they've had enough of the road. The auctioneer doesn't ask, so I don't either.",
		"A complete set of traveling gear on the auction list, every piece from the same owner. It reads like a farewell. The clerks list it one item after another, as if to soften it.",
	},
	["ifo.muse.w20.bidder.013"] = {
		"At this late hour the auction house is down to one yawning clerk and a single dwarf who has been bidding on the same lantern since the forge shift changed. Neither will give in first.",
		"Late as it is, a clerk still sits at the auction counter here, chin in hand, writing up a sale between yawns. In Ironforge the night closes nothing; it only thins it out.",
	},
	["ifo.muse.w20.braid.001"] = {
		"catches a human boy staring in open awe at a dwarf's beard, and the dwarf, gravely, bending down to let him touch the end of one braid.",
		"smiles as a small human visitor asks a dwarf, very politely, whether his beard is heavy; the dwarf weighs the question with great seriousness and says, 'Only when wet.'",
	},
	["ifo.muse.w20.braid.002"] = {
		"Every smith near the forge has the beard tucked into the apron or knotted up under the chin. The ones who don't, I'm told, only forget once.",
		"A smith's beard is braided tight and pinned back before the hammer comes out. Loose hair and hot iron, a dwarf told me, have met before, and the hair always loses.",
		"One smith wears her braids wound into a tight crown and pinned with what look suspiciously like horseshoe nails. Practical, a passing dwarf said, and also very handsome.",
	},
	["ifo.muse.w20.braid.003"] = {
		"spends a while watching a dwarf on a bench undo and redo the same braid in his beard four times, glaring at a polished plate he's using as a mirror.",
		"notices a dwarf woman combing crumbs out of her braids with a little bone comb, then checking each one with her fingertips like a smith checking rivets.",
		"pauses beside a dwarf oiling his beard from a small tin with the care another might give a rifle, working it down strand by strand.",
	},
	["ifo.muse.w20.braid.004"] = {
		"That gnome's mustache is waxed into two perfect spirals. I'd ask how, but I suspect the answer involves a tool I can't pronounce.",
		"I've seen dwarven beards in braids, knots and loops, but the prize goes to a gnome whose mustache turns up at both ends like a pair of springs.",
	},
	["ifo.muse.w20.braid.005"] = {
		"Each clasp in a dwarf's braids means something, a jeweler told me, and what it means is nobody's business but the dwarf's. I've stopped asking and started guessing.",
		"Some dwarves wear one clasp in their beard, some a dozen. Ask what they mean and you get a look that closes the subject like a lid.",
	},
	["ifo.muse.w20.braid.006"] = {
		"hides a smile at a young dwarf with a single thin braid in a beard barely there, who keeps touching it to make sure it's still on.",
		"sees a youngster's first proper braid admired by three grown dwarves at once, all gruff approval and claps on the shoulder, while the youngster tries very hard to look as if it's nothing.",
	},
	["ifo.muse.w20.braid.007"] = {
		"A night elf with hair to her waist walks past a table of dwarves, and they look at it the way they'd look at a rival's beard: respectful, envious, quietly measuring.",
		"The dwarves don't stare at the night elves' ears. They stare at their hair, and nod, as if length were an achievement. In this city, perhaps it is.",
	},
	["ifo.muse.w20.braid.008"] = {
		"I can tell a miner's braid from a smith's at twenty paces, and a city braid from a valley one at forty. Strangers think it's all just hair. Let them.",
		"Braids say more than names among dwarves. That one's from a mining family, that one's been to war, that one is only vain. We read each other in passing and never say a word.",
	},
	["ifo.muse.w20.braid.009"] = {
		"A dwarf just caught his beard in a shop door and gave the door a dressing-down the whole hall could hear. I think the door's learned its lesson.",
		"Somebody's beard got trapped in a closing door, and the owner swore at the hinge for a full minute. Not at whoever shut it. At the hinge.",
		"Beard, meet door. Door, meet the worst language I've heard all week.",
	},
	["ifo.muse.w20.braid.010"] = {
		"On a step, a dwarf woman is braiding her daughter's hair, a pin between her teeth, while the girl squirms and watches the carts. Some things are the same under any roof.",
		"On a step by the rail a mother works three strands over and under, quick as knitting, and ties them off without looking. The child is gone before the last knot settles.",
	},
	["ifo.muse.w20.braid.011"] = {
		"At the end of the bar sits a dwarf with his beard cut short, almost to the chin. A guard told me quietly what that means here: someone lost. Nobody asks who. They just keep his mug full.",
		"Among all the long beards, one cropped close. Mourning, a smith murmured when he saw where I was looking, and turned me gently by the elbow so I'd stop.",
	},
	["ifo.muse.w20.braid.012"] = {
		"I complimented one dwarf's braids and got a free mug. I complimented the next one's and got a very long silence. There's a rule here I haven't worked out.",
		"Praise a dwarf's beard and you have a friend for life. Praise it too much and you've implied it needed praising.",
		"Note to self: in this city 'fine beard' is a compliment, 'big beard' is a challenge, and 'interesting beard' ends the conversation.",
	},
	["ifo.muse.w20.brew.001"] = {
		"The tavern hands swear the Stonefire's cellar goes deeper than the Vault of Ironforge. The bankers have never denied it, which in this city counts as a confession.",
		"According to a brewer, the coldest room in Ironforge is nowhere near the gate. It's a cellar full of casks, and nobody gets the key.",
		"Nobody but the brewers goes down into the Stonefire's cellar. A tavern hand told me he's worked there for years and has only ever seen the top step.",
	},
	["ifo.muse.w20.brew.002"] = {
		"picks out, among all the anvils, a different note: a cooper driving an iron hoop down over a cask, the blows dull and round as a drum.",
		"stops beside a cooper fitting staves into a ring, tapping each one home with the mallet until the barrel stands, sudden and whole, out of a pile of planks.",
	},
	["ifo.muse.w20.brew.003"] = {
		"Spent grain from the brewers goes out in sacks to feed the rams, a stable hand told me. The rams, I'm told, have opinions about which brewer.",
		"Somebody is carrying a sack of warm wet barley out of a brewer's back door. It smells like bread that's thinking about becoming something better.",
	},
	["ifo.muse.w20.brew.004"] = {
		"Two brewers have been arguing about yeast since I got here. One of them has just called the other's mother a sourdough.",
		"I asked a brewer what makes a good stout. Forty minutes later he reached the water.",
		"Every brewer in Ironforge has a secret. Every other brewer in Ironforge knows it and thinks it's wrong.",
	},
	["ifo.muse.w20.brew.005"] = {
		"A gnome has built a machine that brews ale in a quarter of the time. The dwarves tasted it, said it was fine, and never touched it again. 'Fine' is the cruelest word a dwarf knows.",
		"In some corner of the city a gnomish brewing engine sits under a sheet. It works, they say. That's exactly what the dwarves can't forgive it.",
	},
	["ifo.muse.w20.brew.006"] = {
		"lingers to watch a brewer sip from a long wooden ladle, eyes shut, while three apprentices wait without a sound for whatever the face will decide.",
		"observes a brewer roll a mouthful around for a long, serious moment, then nod once; behind him an apprentice lets loose a grin held in since the ladle went into the cask.",
	},
	["ifo.muse.w20.brew.007"] = {
		"A brewer told me that when the dwarves cut a new hall, the cellar is dug before the forge. He said it like a law. He may even be right.",
		"Ask the brewers and they'll tell you the oldest room in any dwarven hold is its cellar. Ask the smiths and you'll get a different answer and a longer argument.",
		"The brewers keep a saying, one of them told me: a hall without a cellar is only a tunnel with ambitions. The masons, I suspect, have a saying about brewers.",
	},
	["ifo.muse.w20.brew.008"] = {
		"That dwarf isn't covered in soot. It's malt dust. He's walking slowly so everyone can smell where he's been.",
		"You can tell the brewers from the smiths at a glance. Same arms, same scowl, but the brewers are dusted pale instead of black.",
	},
	["ifo.muse.w20.brew.009"] = {
		"A brewer is going through a cartload of barley sack by sack, sticking his nose in each one. Two go back on the cart. The carter doesn't argue; he's clearly been through this before.",
		"Barley comes in by cart, and the brewers meet it like customs officers, a hand in every sack and a sniff before anything is paid.",
	},
	["ifo.muse.w20.brew.010"] = {
		"One brewer keeps a small cask on a high shelf, marked with a clan sign nobody uses anymore. From Grim Batol, he says, before it was lost. It will never be tapped. It isn't for drinking.",
		"There's a sealed keg in a brewer's back room that he swears came out of Grim Batol before the dark took it. He dusts it and never opens it. Some things are kept, not drunk.",
	},
	["ifo.muse.w20.brew.011"] = {
		"overhears a gate guard tell a brewer that a storm has closed the road outside; the brewer only nods and sends an apprentice down for two more casks.",
		"notices the tavern filling faster than usual and catches the reason in passing: word from the gate is that a storm is howling down the valley, and nobody is leaving soon.",
	},
	["ifo.muse.w20.candle.001"] = {
		"A city lit by rivers of molten iron, and the priests still insist on candles. I asked one why. The forge lights the room, he said, and a candle lights the page, as if any fool knew the difference.",
		"All the fire in this mountain, and the Mystic Ward buys candles by the crate. There's a chandler somewhere in Ironforge who has never once had a slow week.",
	},
	["ifo.muse.w20.candle.002"] = {
		"straightens a candle leaning on its ledge, and only afterward looks round to see whose it was.",
		"nudges a tilted candle upright with one fingertip, careful of the wax, and moves on as if nothing happened.",
		"rescues a candle about to topple from a niche, and is left with a thumb full of soft wax for the trouble.",
	},
	["ifo.muse.w20.candle.003"] = {
		"Along one wall of the Mystic Ward someone keeps a row of stubby candles burning, one for each name. A priest told me they're for miners the deep has taken. He didn't say how many rows there used to be.",
		"The miners light short candles in the Mystic Ward for the crews that never came up, an acolyte says, and let each one burn all the way down. Nobody trims them. Nobody would dare.",
		"One candle in the Mystic Ward burns for every miner the deep has kept, or so the acolytes say. I started counting a row once and stopped halfway.",
	},
	["ifo.muse.w20.candle.004"] = {
		"notices that here in the Mystic Ward the candle flames all lean the same way, toward the door, as if listening for the forge.",
		"watches every candle in the hall bow at once when a door opens somewhere, then straighten, one by one, as the air settles.",
		"sees the candles here dip and recover whenever a heavy door closes somewhere in the hall, like a row of listeners nodding along.",
	},
	["ifo.muse.w20.candle.005"] = {
		"The acolytes of the Mystic Ward can be told by their sleeves: wax drips on every cuff, layered like the rings of a tree stump.",
		"Every apprentice priest I pass has wax on the knuckles and ink on the thumb. It seems to be the uniform.",
		"You can guess how long an acolyte has studied by the wax on the boots. The old hands have it up to the ankle.",
	},
	["ifo.muse.w20.candle.006"] = {
		"Candles, in a city made of fire. Dwarves don't trust any light they didn't make themselves.",
		"Who brings candles to Ironforge? Priests, apparently. Every last one of them.",
	},
	["ifo.muse.w20.candle.007"] = {
		"Crates of bandages and salves leave the Mystic Ward for every front the Alliance holds. Somewhere a soldier I'll never meet will be patched up with dwarven linen, and grumble that it itches.",
		"The healers of Ironforge send their salves wherever the Alliance is bleeding. It's the quietest kind of war work, and none of it goes to waste.",
	},
	["ifo.muse.w20.candle.008"] = {
		"finds the Mystic Ward at this late hour down to a few candles and one tired priest, who nods without looking up.",
		"passes the healers' benches in the small hours, where a single candle burns beside a sleeper and a robed figure keeps watch.",
	},
	["ifo.muse.w20.candle.009"] = {
		"I watched a priest set a miner's crushed fingers by candlelight, talking about the price of ale the whole time. The miner never once looked at his hand. That was the whole trick.",
		"The best healer I've seen in Ironforge didn't glow and didn't chant. She asked a smith about his daughter, and while he answered she put his shoulder back in.",
		"Healing in Ironforge looks a lot like smithing: a firm grip, a sharp tug, a gruff 'there', and the job is done before the patient has finished wincing.",
	},
	["ifo.muse.w20.candle.010"] = {
		"Pilgrims come in from the gate with snow crusted on their hoods and go straight to the candles of the Mystic Ward, to stand there until it has dripped away to nothing.",
		"Word from the gate is that it's snowing hard on the slopes. You can tell in the Mystic Ward: the healers have set out extra blankets, and the first frostbitten fingers are already waiting.",
	},
	["ifo.muse.w20.candle.011"] = {
		"An acolyte crossed the whole city with a hooded lantern, I'm told, to light the candles of the Mystic Ward from the Great Forge itself. Fire from the forge, light for the page: the dwarves like their things to have a lineage.",
		"The first candle of each new row is lit from the Great Forge, the acolytes say, and carried across the city in a lantern. Nobody can tell me when that began, which is how dwarven customs prefer it.",
	},
	["ifo.muse.w20.candle.012"] = {
		"Wax on my boot, wax on my sleeve. I only walked past the Mystic Ward.",
		"How does anyone leave the Mystic Ward without wax on them? I touched nothing.",
		"Every visit to the Mystic Ward costs me one clean sleeve. Somebody should charge for it.",
	},
	["ifo.muse.w20.cavern.001"] = {
		"The Ironforge Guard walks the Forlorn Cavern like everywhere else, only slower, and never seems to see quite as much there. Some arrangement, I suspect, older than any of them.",
		"There's an understanding between the guards and the Forlorn Cavern. Nobody wrote it down, nobody will admit to it, and everybody keeps it.",
		"The guards look into the Forlorn Cavern the way one looks into a neighbor's window: briefly, and then pointedly at something else.",
	},
	["ifo.muse.w20.cavern.002"] = {
		"notices that here in the Forlorn Cavern the lamps hang low and far apart, and the warmth of the forge gives out a few steps past the entrance.",
		"runs a hand along a wall of the cavern and finds it cool and faintly damp, the one stone in the city the forge has never warmed.",
	},
	["ifo.muse.w20.cavern.003"] = {
		"In the Forlorn Cavern everybody's name is 'friend', and nobody is.",
		"Ask for a name in the Forlorn Cavern and you'll be given one. Never the same one twice, and never, I suspect, the real one.",
		"The Forlorn Cavern has more first names than faces. I've met one fellow there three times, and he has been three different people.",
	},
	["ifo.muse.w20.cavern.004"] = {
		"Lovely spot, the Forlorn Cavern. Nobody stares, nobody asks, and nobody was ever there.",
		"The Forlorn Cavern: where Ironforge keeps what it doesn't talk about. Mind your purse.",
	},
	["ifo.muse.w20.cavern.005"] = {
		"An old miner swears the Forlorn Cavern was a dig that went wrong: a seam that promised silver and gave nothing but echoes, abandoned by everyone except the folk who like a place nobody wants.",
		"A miner at the Stonefire told me where the name comes from: a cut that found no ore, left half-finished, and taken over by people who prefer a room nobody else covets.",
	},
	["ifo.muse.w20.cavern.006"] = {
		"Strange to say, I rest easier here in the Forlorn Cavern than out by the forge. Nobody here wants anything from me that they'd ask for aloud.",
		"The quiet of this cavern isn't the quiet of the Mystic Ward. Nobody here is studying. They're simply choosing, moment by moment, what not to say.",
		"Nobody in this cavern looks at me twice, and I find I'm glad of it. A dim room where everyone minds their own business is a kind of rest.",
	},
	["ifo.muse.w20.cavern.007"] = {
		"comes upon a dice game in a corner of the cavern, played on a spread cloak, so that the dice land without a sound and only the players' faces say who's winning.",
		"notices two figures playing at dice on a folded cloak, the throws soundless, the losses paid without a word.",
	},
	["ifo.muse.w20.cavern.008"] = {
		"Of all the corners of the dwarves' city, the Forlorn Cavern is the one where a hood draws no stares. That's the only reason I can stand still long enough to think.",
		"Deep in the enemy's mountain, the dim corner where the rogues gather is the only place my shoulders come down an inch. Nobody there asks whose side a stranger is on. It would be rude.",
	},
	["ifo.muse.w20.cavern.009"] = {
		"Somewhere in the Forlorn Cavern water drips, slow and steady. A dwarf leaning on the wall there told me he's been counting it for years and has never lost his place.",
		"That slow drip in the cavern has its regulars. One old dwarf claims he can tell the hour by it, which is more than anyone can do by the forge.",
	},
	["ifo.muse.w20.cavern.010"] = {
		"turns toward a sound in the cavern and finds only an empty recess, and a faint smell of lamp oil where somebody stood a moment ago.",
		"glances at a dim alcove of the Forlorn Cavern that held someone a moment ago and holds nobody now, though nobody walked out of it.",
	},
	["ifo.muse.w20.cavern.011"] = {
		"The guards at the gate say it's long dark outside. The Forlorn Cavern never noticed. It keeps the same dim hour all the time, and its trade doesn't care what the clock says.",
		"Out past the gate it's the middle of the night, a traveler says. In the Forlorn Cavern, I'd wager, the same three figures are leaning on the same wall as hours ago.",
	},
	["ifo.muse.w20.cavern.012"] = {
		"Nobody in the Forlorn Cavern ever seems to be coming or going. They're just there, and then they're not.",
		"I've never once seen anyone walk into the Forlorn Cavern. Plenty of people inside, though.",
		"How does the Forlorn Cavern fill up without anyone going in? Don't answer that.",
	},
	["ifo.muse.w20.chore.001"] = {
		"passes a line of washing strung between two pillars near the forges, shirts and smallclothes drying stiff in the heat, swaying a little whenever a cart goes by.",
		"ducks under a string of laundry hung across a side passage, every shirt on it faintly gray and already dry, warmed through by the stone.",
	},
	["ifo.muse.w20.chore.002"] = {
		"The rats of Ironforge live better than I do: warm stone, spilled ale, good crumbs. Even the cats have given up on them.",
		"A rat just trotted across the hall, fat as a loaf, in no hurry at all. Warm city, plenty of crumbs.",
		"Fattest rat I've ever seen just strolled past the bank. It didn't even look both ways.",
	},
	["ifo.muse.w20.chore.003"] = {
		"steps over a ginger cat stretched full length on a warm stair, which does not move, does not open its eyes, and plainly considers the stair its own.",
		"finds a cat curled on the warmest stone of a landing, the one spot everyone steps around without being told, as if the city had agreed to it.",
	},
	["ifo.muse.w20.chore.004"] = {
		"Behind every tavern counter there's a back room where somebody scrubs tankards. I glimpsed one through a door: a hill of pewter, a tub of gray water and one dwarf with her sleeves rolled up, perfectly content.",
		"For every dwarf drinking in this city there's another one washing up after him. You never see them; you only hear the endless clatter of pewter from somewhere behind a door.",
	},
	["ifo.muse.w20.chore.005"] = {
		"Stand still long enough in Ironforge and somebody hands you the other end of something heavy.",
		"I paused to look at a carving and a dwarf handed me a sack to hold. I'm still holding it. He hasn't come back.",
		"Rule of this city: idle hands get given a broom.",
	},
	["ifo.muse.w20.chore.006"] = {
		"smells the bread before seeing the baker: a dwarf sliding a tray of loaves into a niche cut in the wall behind a forge, where the heat of the metal does the work for free.",
		"catches the smell of baking from a little oven built against the back of a smithy, where some thrifty soul has learned to borrow the forge's heat for bread.",
	},
	["ifo.muse.w20.chore.007"] = {
		"There's a particular pleasure in small chores in a big city: mending a strap, sorting a pack, while a thousand people go about their own. Nobody watches. Everybody's busy. It's the best company there is.",
		"On a step, with the city roaring past, I restitched a loose seam. A small job in the middle of all that work, and for the length of a thread it felt like belonging to something.",
	},
	["ifo.muse.w20.chore.008"] = {
		"waits while a dwarf with a pot of grease works along a cart rail on her knees, dabbing every joint, and a queue of carters behind her pretends not to be in a hurry.",
		"hears a whole hall sigh with relief as a carter finally oils a wheel that has been squealing its way round the ring for some time.",
	},
	["ifo.muse.w20.chore.009"] = {
		"Here in the Hall of Explorers someone dusts the display cases with a feather duster and the expression of a person disarming a trap. One sneeze and a thousand years of bone would go everywhere.",
		"A League clerk works along the shelves with a soft brush, so slowly the dust seems to leave out of courtesy. She pauses at every bone as if to apologize.",
	},
	["ifo.muse.w20.chore.010"] = {
		"Even a city cut from a mountain needs mending. I watched two masons lever up a cracked flagstone, chalk the new one to size and tap it home, and an hour later you'd never have known.",
		"Masons kneel by a cracked step, chipping, measuring, chipping some more. The mountain is forever, they'll tell you. The stairs are another matter.",
	},
	["ifo.muse.w20.chore.011"] = {
		"Porters hauling Stormwind grain off the tram crates, a gnome counting, a dwarf swearing at a stuck lid. Up close, the Alliance looks less like a pact than a household sharing out the chores.",
		"Treaties get signed in throne rooms. Here, the Alliance is a human and a dwarf carrying one heavy crate between them and arguing about which end is lighter.",
	},
	["ifo.muse.w20.chore.012"] = {
		"A gnome sweeps the same small patch of floor outside a workshop, over and over, very neatly. Someone told me she ran a whole workshop in Gnomeregan. Now she keeps one clean square of somebody else's city.",
		"There's a gnome who polishes the brass of a single doorframe until it shines, every time I pass. In Gnomeregan, a neighbor whispered, she had a hall of her own. Small work fills big silences.",
	},
	["ifo.muse.w20.chore.013"] = {
		"watches a servant sweep the steps below the throne in slow, even strokes, working backward down them so as never to turn her back on the seat.",
		"notices that even the dust here is swept with ceremony: a long soft broom, measured strokes, a small bow at the top step before starting down.",
	},
	["ifo.muse.w20.clan.001"] = {
		"The dwarves I've met give two names, their own and then their clan's, and the second always comes out a little louder.",
		"Introduce yourself to a dwarf and a family name comes back at you like a handshake: firm, and expecting one in return. I never know what to offer.",
		"Under this mountain a name isn't finished until you've said whose you are. Dwarves listen for that second half the way a smith listens for a crack.",
	},
	["ifo.muse.w20.clan.002"] = {
		"watches two dwarves trace their lineages back on their fingers, run out of fingers, and borrow a third dwarf's.",
		"waits politely while two dwarves work out exactly how they are related, a reckoning that has already used both their hands and a stretch of wall.",
		"steps around a pair of dwarves who have discovered, loudly and with much backslapping, that they share a great-great-grandmother.",
	},
	["ifo.muse.w20.clan.003"] = {
		"Ironforge is only the heart of it. Khaz Modan runs from the passes of Dun Morogh to the shores of Loch Modan, and every mine and watchtower in between answers to the High Seat.",
		"Khaz Modan, not Ironforge, is what the dwarves say when they mean the whole realm: highlands, lochs, mines and outposts. The city is simply where the king keeps his chair.",
	},
	["ifo.muse.w20.clan.004"] = {
		"The Dark Iron cut their halls with the same tools my forebears used, and swore by the same mountain once. That's what makes the grudge so heavy: it's kin.",
		"Strangers think the Dark Iron are some other people. They aren't. They're kin who took the wrong stair down, and that's harder to forgive than any stranger.",
	},
	["ifo.muse.w20.clan.005"] = {
		"Some mining crews here are a single family, I'm told, working the seam their great-grandparents opened. They speak of the rock the way other folk speak of an old uncle.",
		"A miner told me his crew had worked one seam for five generations, mother to son to daughter. He said it as if it were nothing. For a dwarf, maybe it is.",
		"In this city a seam of ore can stay in one family longer than most kingdoms keep one dynasty. The dwarves call that ordinary.",
	},
	["ifo.muse.w20.clan.006"] = {
		"Six introductions in this hall, and somehow I've been invited to a wedding, a wake and a feud.",
		"Ask one dwarf for directions and you leave knowing his whole clan by name, with a cousin walking you there.",
	},
	["ifo.muse.w20.clan.007"] = {
		"watches an elder walk a young dwarf from rail to rail, introducing him at each stop with a string of names that grows a little longer every time.",
		"follows with an idle eye a dwarven matron presenting her grandson to every acquaintance in the hall; the boy's ears go redder with each new lineage.",
	},
	["ifo.muse.w20.clan.008"] = {
		"The dwarves have more or less adopted us. Loudly, with a great deal of unasked advice about chimneys, and a standing invitation to every quarrel they're having.",
		"To a dwarf, a people without a clan is a people without a roof. So they've given us both, and now they expect us at every family argument.",
	},
	["ifo.muse.w20.clan.009"] = {
		"Bronzebeard is the king's name, but it was the clan's first. The miner hauling ore past me carries it too, and on a good day probably counts the king a cousin.",
		"Half this city could call itself Bronzebeard. The king just wears the name with a crown on top.",
	},
	["ifo.muse.w20.clan.010"] = {
		"A Wildhammer and a Bronzebeard, one doorway, neither giving way. I'll wait. A century or so, by the look of it.",
		"Two dwarves of two clans in one door, and neither moving. Somebody fetch me a stool.",
	},
	["ifo.muse.w20.cog.001"] = {
		"A gnome is sorting cogs into tins by the number of their teeth, and labels each tin with the number. The dwarf beside her labels his by which cousin gave them to him.",
		"On one bench, cogs sorted into tins by tooth count, the labels written in figures the size of fleas. On the dwarven bench beside it, one bucket marked 'gears'.",
	},
	["ifo.muse.w20.cog.002"] = {
		"pauses by a workbench where a gnome is seating a cog no bigger than a fingernail with tweezers, so absorbed that the din of the city seems to stop at the edge of her bench.",
		"follows the tweezers of a gnome fitting a tiny gear into a watch, the tip of her tongue showing, while a dwarf behind her hammers on regardless.",
	},
	["ifo.muse.w20.cog.003"] = {
		"Every gnome workshop has one jar of screws that fit nothing. Nobody empties it. A tinker told me it isn't junk, it's 'parts for machines that haven't been invented yet'.",
		"On every bench in Tinker Town sits a jar of bolts that match no nut in the world. Throwing it out would be giving up on the future, apparently.",
		"A ruined clock becomes a box of springs, the springs become a toy, and whatever is left of it ends up propping open a workshop door.",
	},
	["ifo.muse.w20.cog.004"] = {
		"Some of the older tinkers still cut gears to Gnomeregan's old pattern, sizes that fit no machine left above ground. Habit, they say. It looks more like keeping a place set at the table.",
		"One tinker makes every part to the measures of the old city, though nothing outside Gnomeregan will take them. A box of them waits under the bench, oiled, ready for a machine that's still down there.",
	},
	["ifo.muse.w20.cog.005"] = {
		"A door near Tinker Town used to squeak. Now it doesn't, and nobody admits to oiling it. The gnomes look very innocent.",
		"Every hinge within fifty paces of Tinker Town has been oiled by somebody. Nobody asked. Nobody ever does.",
	},
	["ifo.muse.w20.cog.006"] = {
		"A dwarven smith and a gnome are building something together. He measures with his thumb, she measures with calipers, they disagree on every number, and the piece fits as if it grew there.",
		"Watching a dwarf and a gnome share a job is a lesson: one trusts his hands, the other trusts her figures, and somewhere between the two the thing gets made properly.",
	},
	["ifo.muse.w20.cog.007"] = {
		"eyes a brass gear as tall as a dwarf propped against a wall of Tinker Town, with a paper tag tied to it that says only 'later'.",
		"edges past a cartwheel-sized gear leaning on a pillar, plainly waiting for a machine that nobody has drawn up yet.",
	},
	["ifo.muse.w20.cog.008"] = {
		"Stopping to look at the lock on a dwarven strongbox, the size of a fist and twice as heavy, a gnome called it 'charming'. The dwarf has not decided how to take that.",
		"Dwarven locks are built to be beaten on. Gnomish locks are built to be argued with. I watched a gnome study one of the former and smile like someone admiring a puppy.",
	},
	["ifo.muse.w20.cog.009"] = {
		"I asked a gnome the time. I got the hour, the minute, and a list of improvements for my pocket watch, which I don't own.",
		"Asked a tinker for the hour. Got it to the second, plus a sketch for a better clock, plus the bill for the sketch.",
	},
	["ifo.muse.w20.cog.010"] = {
		"When an old tinker lends out a wrench made in Gnomeregan, she hands it over with both hands and watches it the whole time. Tools like that aren't made anymore. The workshop that made them is full of troggs.",
		"A spanner stamped with Gnomeregan's mark passes from hand to hand along a Tinker Town bench, and every gnome holds it a moment longer than the job needs.",
	},
	["ifo.muse.w20.cog.011"] = {
		"The dwarves cut their stairs for dwarven legs and their doors for dwarven shoulders. Nothing in this city fits a gnome, and all of it was offered to us without a second thought.",
		"Two hops for every dwarven stair. I've stopped counting them. Somewhere around the thousandth, they started to feel like gratitude.",
	},
	["ifo.muse.w20.cog.012"] = {
		"lingers by a bench where a gnome is opening up a broken clockwork toy for a dwarf child, naming every part aloud as it comes out, so the child can say it back.",
		"waits beside a Tinker Town bench while a small dwarf hands over a dented clockwork bird, both fists clenched, and the gnome behind it peers inside and says 'ah'.",
	},
	["ifo.muse.w20.cog.013"] = {
		"Lost something small in Ironforge? Check Tinker Town. It'll be there, and it'll have been improved.",
		"My bootlace went missing near the gnomes' workshops. It came back an hour later with a brass tip and a spring in it.",
	},
	["ifo.muse.w20.counter.001"] = {
		"The shop signs around the Commons are iron, not painted wood: a hammered needle for the tailor, a boot for the cobbler, a fish for whoever sells fish. They'll outlast every shop that hangs them.",
		"No painted signs over the shops of the Commons, only iron ones, beaten into the shape of the trade: a spool, a ladle, a key. A dwarf won't hang up a promise that can peel.",
	},
	["ifo.muse.w20.counter.002"] = {
		"This shop sells nothing but thread. Forty kinds of thread. I've never been so tempted by thread in my life.",
		"A whole shop of buckles. Brass, iron, bone, one shaped like a boar. I came in for one buckle and I'm leaving with an opinion.",
		"A shop that sells only spoons. Iron spoons, horn spoons, a spoon for stirring mortar. I need a moment.",
	},
	["ifo.muse.w20.counter.003"] = {
		"A night elf bowl of pale carved wood sits on a dwarven shelf between two iron pots, light as a leaf beside them. It looks a long way from where it was made, and it's priced accordingly.",
		"Goods from Darnassus look startled on a dwarven shelf: a carved wooden cup, a twist of silvery cloth, all lightness among the iron. The shopkeeper dusts them more gently than the rest.",
	},
	["ifo.muse.w20.counter.004"] = {
		"I asked for a small pot. The dwarf handed me something I could bathe in and called it 'the little one'.",
		"Dwarven shops come in two sizes: sturdy and sturdier. I asked for 'light'. He laughed for quite a while.",
		"In this city 'a little hammer' means one you can lift with one hand. Usually.",
	},
	["ifo.muse.w20.counter.005"] = {
		"The shopkeepers here name where a thing came from before they name the price: tin from Loch Modan, wool off a Stormwind cart, fish smoked by the loch. The farther it traveled, the longer the speech.",
		"Every shelf in the Commons comes with a map attached. 'That cloth came off the tram, that fish from the loch, this iron from right under your feet.' The iron is always cheapest. Nobody had to carry it.",
	},
	["ifo.muse.w20.counter.006"] = {
		"passes a shop front where a dwarf is polishing a row of copper kettles one by one, holding each up to the lamplight before setting it down.",
		"slows by an open shop where the keeper is oiling the hinges of a strongbox on the counter, listening to each one squeak a little less.",
	},
	["ifo.muse.w20.counter.007"] = {
		"Dwarven shops keep a single sample of each thing on the counter and the rest locked up behind. You point at the sample, and the shopkeeper brings yours out like a jailer releasing a prisoner.",
		"There's one of everything on a dwarven counter and a hundred of everything in the chests behind it. You never touch the hundred. You barely touch the one.",
	},
	["ifo.muse.w20.counter.008"] = {
		"A cobbler of the Commons never once looked at my face. He looked at my boots, said the left heel was going, and went back to his last. He was right.",
		"Dwarven cobblers read boots the way scholars read old tablets. One glance at mine, and this one knew how far I'd walked and how badly.",
	},
	["ifo.muse.w20.counter.009"] = {
		"follows the whole rite as a dwarven shopkeeper wraps a sale in oilcloth, ties it with twine, then tugs the knot hard enough to lift the parcel off the counter, just to be sure.",
		"lingers at a counter long enough to see a purchase wrapped, tied, knocked twice on the wood for luck and handed over with both hands.",
	},
	["ifo.muse.w20.counter.010"] = {
		"Half the shops round here sell locks, chains and strongboxes. The other half sell things worth locking up. Very tidy.",
		"Safest bank in the world, and this city still sells more locks than bread. Nobody trusts one door when two will do.",
	},
	["ifo.muse.w20.counter.011"] = {
		"lifts a miner's pick from a rack outside a shop, feels the balance settle into the hand, and sets it back a little reluctantly.",
		"tests the heft of a pick hanging by a shop door, rocks it once in the hand, and hangs it up again before the shopkeeper can start talking.",
	},
	["ifo.muse.w20.counter.012"] = {
		"A traveler at the counter asked whether the iron was truly mined under this mountain. 'Every ounce,' I said before the shopkeeper could, as proud as if I'd dug it out myself.",
		"Visitors turn our ironwork over in their hands and whistle. I keep my face plain, the way a dwarf should, and let the iron do the boasting.",
	},
	["ifo.muse.w20.counter.013"] = {
		"Word from the gate says a storm is blowing over Dun Morogh. Before the rumor has gone round the Commons, every shop has sold out of wool caps.",
		"A storm outside, say the guards at the gate. In here the only sign of it is a run on fur-lined gloves and a cobbler with a queue.",
	},
	["ifo.muse.w20.counter.014"] = {
		"When the news from the front is bad, the price of iron in the Commons climbs before any herald arrives. The merchants of the Alliance hear a war in their ledgers first.",
		"Watch the shops of the Commons and you'll know how the Alliance's wars are going: plate and bandages climb, wool and wine drop. The heralds only confirm it later.",
	},
	["ifo.muse.w20.counter.015"] = {
		"Word from the gate says the passes are thick with fog. The fish sellers of the Commons have raised their prices on the news alone: the carts from Loch Modan will be late, and what's on the counter is suddenly rare.",
		"Fog in the passes, says a carter stamping in from outside. Before he has finished the sentence, the fishmonger has quietly swapped the tag on the smoked trout.",
	},
	["ifo.muse.w20.crowd.001"] = {
		"Some people come to the Commons only to stand by the bank in their finest armor and be looked at. They don't speak, don't buy, don't move. It's a parade where nobody walks.",
		"There's always somebody in splendid plate standing very still near the bank, chin up, being admired. I've seen statues with more conversation and less polish.",
	},
	["ifo.muse.w20.crowd.002"] = {
		"notices a figure in gleaming armor who has stood perfectly still in the middle of the passage for a long while; a gnome waves a hand before the visor, gets nothing, and shrugs.",
		"steps around a traveler standing stock-still in the flow of foot traffic, gaze fixed on nothing at all, while passers-by stream past without a second glance, long used to such things.",
	},
	["ifo.muse.w20.crowd.003"] = {
		"A crier near the bank calls for the owner of a lost ram. Then a lost glove. Then, with rising doubt, a lost gnome. The gnome, it turns out, was not lost at all; he was under the ram.",
		"The criers of the Commons don't sell much. Mostly they announce what's been found: a mitten, a pick, a sleeping apprentice. Claim it at the bank, they say, as if the Vault had nothing better to do.",
		"A crier by the bank is calling, for the third time, for whoever left a lit lantern on the steps. The lantern now hangs from the crier's belt. In the Commons, keeping is most of owning.",
	},
	["ifo.muse.w20.crowd.004"] = {
		"spots someone jogging a full lap of the Commons, stopping short at the bank, thinking hard, then jogging the whole lap the other way.",
		"follows with {g:his|her} eyes a gnome trotting round the ring of shops, past the bank, past the auctioneers, past the bank once more, still reading the same scrap of paper.",
	},
	["ifo.muse.w20.crowd.005"] = {
		"Walk twenty paces across the Commons and you'll hear Dwarven, Gnomish, Darnassian, and a human cursing his boots in plain Common. The city speaks them all, mostly at once.",
		"The Commons talks in four languages and haggles in one. Copper needs no translating.",
	},
	["ifo.muse.w20.crowd.006"] = {
		"That dwarf by the bank has been calling for a healer for an hour. Healers keep walking past him, very fast, eyes front.",
		"Somebody here has been shouting for companions for a trip into Blackrock for ages. Funny how everyone's boots have become so interesting.",
		"Still asking for a healer, that one. The healers have started taking the long way round the ring.",
	},
	["ifo.muse.w20.crowd.007"] = {
		"Tabards in a dozen colors drift through the crowd, each company certain its own is the handsomest. From above they'd look like a spilled box of paints, slowly being stirred.",
		"Count the tabards going past and you count the companies: a red one, three blues, a green that clashes with everything. Each of them walks as if the crowd belonged to it.",
	},
	["ifo.muse.w20.crowd.008"] = {
		"turns at the boom of a crier announcing a delivery of smoked fish from Loch Modan with all the gravity of a royal decree.",
		"stops short as a crier, chest out and beard bristling, proclaims the arrival of fresh fish from the loch as though it were news of a war won.",
	},
	["ifo.muse.w20.crowd.009"] = {
		"Nothing here in the Commons goes straight. You walk the ring like everyone else, and end up behind the same slow dwarf you were stuck behind at the start.",
		"The Commons is a circle, so the crowd never ends; it just comes round. I've passed the same gnome three times, and she has started nodding to me.",
	},
	["ifo.muse.w20.crowd.010"] = {
		"Whatever the hour is outside, the Commons is full. The clerks change, the criers change, and the crowd only swaps its faces, never its size.",
		"Nobody has ever seen the Commons empty, a guard told me, and he has stood more shifts than he'll admit to. The crowd changes hands like a coin and never stops moving.",
	},
	["ifo.muse.w20.crowd.011"] = {
		"pats the purse at {g:his|her} belt once in the thick of the crowd, then once more, out of no particular suspicion.",
		"keeps one hand loosely over {g:his|her} coin pouch while the crowd presses close, the way everyone in the ring seems to.",
	},
	["ifo.muse.w20.crowd.012"] = {
		"Someone in a brand-new cloak is walking the ring slowly, pausing under every lamp. Everybody notices. Nobody says a word. It's the unspoken bargain of the Commons.",
		"There's a particular walk for new boots in the Commons: slower than it needs to be, with little stops where the lamplight is best. Half the crowd has done it. The other half is lying.",
		"A gnome with a new feather in her hat passes the bank three times, each time a little slower. Nobody comments. Everybody has seen the feather.",
	},
	["ifo.muse.w20.crowd.013"] = {
		"is jostled from three sides at once in the press of the crowd, and apologized to from four.",
		"takes an elbow, a satchel and a gnome's helmet in quick succession, each followed by a hasty 'sorry' in a different accent.",
	},
	["ifo.muse.w20.crown.001"] = {
		"Brann off digging somewhere, the king's daughter in Blackrock beside the enemy. Nobody in Ironforge asks aloud who would wear the crown after Magni, and the silence is kept very carefully.",
		"The Bronzebeard line has worn thin: a brother forever wandering, a daughter at a Dark Iron emperor's side. Dwarves who'll argue about anything will not argue about who comes next.",
	},
	["ifo.muse.w20.crown.002"] = {
		"In any other city folk would admire the king's crown. Here they'd want to know who forged it, and whether the rivets sit flush.",
		"A dwarf looking at a crown sees the work first and the king second. I suspect Magni prefers it that way.",
		"I'd wager every smith in Ironforge has an opinion on the king's crown, and not one of them would voice it within a mile of the High Seat.",
	},
	["ifo.muse.w20.crown.003"] = {
		"Kings of men live in palaces above their cities. The dwarf king lives in the middle of his, a short walk from the forge. You could bring him a complaint on your way to buy nails.",
		"No tower, no distant palace: the High Seat sits among the same halls as the bank and the forge. Dwarves like their king within shouting distance.",
		"A king who can hear his city's hammers from his throne can't easily forget who keeps the lamps lit.",
	},
	["ifo.muse.w20.crown.004"] = {
		"I've no business with the king, and still my step slows whenever I pass the way to his hall. Some habits a dwarf is born with.",
		"Magni Bronzebeard is my king the way the mountain is my roof: I don't think of it every hour, but I'd notice if it went.",
	},
	["ifo.muse.w20.crown.005"] = {
		"Ruling dwarves must be like conducting a choir of anvils. Every one of them is sure the others are off the beat.",
		"I don't envy Magni. Every subject he has could run the mountain better, and half of them have drawn up the plans.",
		"King of the dwarves. Picture a throne where every single subject stands ready to explain how you're holding it wrong.",
	},
	["ifo.muse.w20.crown.006"] = {
		"studies the great carved seat at the head of the hall, its stone arms worn smooth where generations of royal hands have rested.",
		"lets {g:his|her} gaze climb the throne from foot to crest, carved deep and plain, a seat made to outlast whoever happens to rule from it.",
	},
	["ifo.muse.w20.crown.007"] = {
		"A courier comes in from the gate with snow melting on his shoulders and a sealed letter for the king. He doesn't stop to warm his hands, which says something about the letter.",
		"Word for the High Seat arrives on wet boots: a messenger with snow still caked in his beard, striding past the forge without a single glance at its warmth.",
	},
	["ifo.muse.w20.crown.008"] = {
		"Two rulers under one mountain: a king born to his seat, and a High Tinker the gnomes chose for themselves. They get on surprisingly well. Perhaps each finds the other's way quaint.",
		"Magni inherited his crown; Mekkatorque, as the gnomes tell it, was voted into his post. In the same city. The dwarves find this hilarious, and the gnomes find it obvious.",
	},
	["ifo.muse.w20.crown.009"] = {
		"A miner I passed reckoned the king's crown weighs less than his own helmet. 'Mine comes off at the end of the shift,' he added, and walked on.",
		"A crown is a light thing to look at. The dwarves seem to understand it's the one piece of gear you can't hang on a peg when the shift ends.",
		"Ask a miner whether he'd trade places with the king and he'll laugh at you. Better a pick you can set down than a crown you can't.",
	},
	["ifo.muse.w20.crown.010"] = {
		"The Alliance argues its wars in Stormwind and arms them here. Magni signs fewer treaties than any human lord, and as far as anyone can tell he has kept every one.",
		"Of all the rulers our side answers to, the dwarf king makes the fewest speeches. When Ironforge does set its seal on something, nobody in the Alliance bothers to read the terms twice.",
	},
	["ifo.muse.w20.crown.011"] = {
		"Magni was already king when the orcs overran Khaz Modan. The veterans say he lost every valley of his realm but one mountain, and made the one mountain enough.",
		"A king who watched his whole realm fall to the orcs, mine by mine and pass by pass, and kept the mountain anyway. The dwarves don't call him great for it. They call him stubborn, which here means more.",
	},
	["ifo.muse.w20.crown.012"] = {
		"Long live King Magni! ...Not one head turned. In Ironforge, I suppose, that goes without saying.",
		"To the king's health, then. Every dwarf in earshot nodded as if I'd remarked that stone is hard.",
	},
	["ifo.muse.w20.crucible.001"] = {
		"steps back as two smelters lift a crucible between them on a long iron shank, walk it to the mold in perfect step, and tip it, the bright metal sliding out thick as honey.",
		"tracks the slow, careful walk of a crucible slung between two dwarves on a carrying fork, neither of them speaking, both of them counting steps.",
	},
	["ifo.muse.w20.crucible.002"] = {
		"At the Great Forge nobody looks at the falls of molten metal anymore. Visitors stare; the smiths turn their backs on them to work, the way a miller turns his back on his own wheel.",
		"Here the fire falls from the heights without pause and nobody watches it but the visitors. The dwarves treat it like a fountain in a marketplace: lovely, and always in the way.",
	},
	["ifo.muse.w20.crucible.003"] = {
		"Somebody at the forge does nothing but make crucibles: thick clay pots, shaped, dried, fired, and then filled with metal hot enough to ruin them in a few pours. Nobody thanks the pot-maker. Everyone would notice her absence.",
		"The crucibles crack after a handful of pours, so a quiet dwarf in the corner makes new ones all the time, clay to the elbows. The smiths get the glory. She gets a nod, sometimes.",
	},
	["ifo.muse.w20.crucible.004"] = {
		"He's carrying a pot of liquid iron like it's soup. Whistling. I'm going to stand over here.",
		"Two dwarves just walked a crucible of molten metal past me, chatting about cheese. I'll be over by the wall, holding very still.",
		"Nobody else is worried about the bucket of melted iron going by. I'm worried enough for everyone.",
	},
	["ifo.muse.w20.crucible.005"] = {
		"Molten, every metal is honest, a smelter told me. No shape, no shine, nothing to hide behind, only what it's made of floating up or sinking down. I keep turning that over.",
		"In the crucible the dross floats and the good metal sinks, says a dwarf at the melt, and every smelter's work is knowing which is which. He said it to the pot, but loud enough for the apprentices.",
	},
	["ifo.muse.w20.crucible.006"] = {
		"turns as a crucible tips nearby and, for a moment, every face around the mold is lit from below, white and gold, like faces bent over a lantern.",
		"catches the instant a pour begins: the whole corner flares bright from underneath, shadows jump up the walls, and then the light settles back to its usual red.",
	},
	["ifo.muse.w20.crucible.007"] = {
		"Close to the smelting pits the smell changes: less coal, more hot clay, and something sharp underneath, like a struck match held too long.",
		"The air near the crucibles has a sharp, scorched-egg edge to it, under the clay and the coal. The smelters stopped noticing it long since, they say. I hope to leave first.",
	},
	["ifo.muse.w20.crucible.008"] = {
		"studies a rack of tongs by one of the forges, dozens of them, each jaw bent to grip one particular shape and no other, hung in an order only their owner understands.",
		"runs an eye along a wall of hanging tongs, long and short, curved and flat-nosed, a whole family of iron hands waiting for the one piece each was made for.",
	},
	["ifo.muse.w20.crucible.009"] = {
		"'Meet me at the forge,' half the city says, and the other half knows exactly which rail is meant. The Great Forge is where Ironforge goes to find itself.",
		"There's always somebody at the edge of the forge waiting for somebody else: a guard off duty, a gnome with a parcel, a dwarf scanning the crowd. Everyone's meeting place, and nobody's in particular.",
		"The forge is the city's clock and its kitchen fire at once. People come to its edge to get warm, to be found, to wait for somebody who said 'by the forge' and meant it.",
	},
	["ifo.muse.w20.crucible.010"] = {
		"At this late hour the pours are done, and the empty crucibles stand upside down on their rack to cool, a row of clay bells nobody will ring before the next shift.",
		"Late as it is, the smelting corner has gone still: crucibles turned mouth-down on a rack, tongs hung up, the pits under heavy lids. Only the anvils carry on.",
	},
	["ifo.muse.w20.crucible.011"] = {
		"I asked how hot the crucible gets. The smelter thought about it and said, 'Yes.'",
		"Asked a smelter how hot that pot runs. She looked at me, then at it, and said, 'Hot enough,' as if I'd asked something rude.",
		"'How hot?' I asked. The smelter raised a hand to explain, thought better of it, and just pointed at my eyebrows.",
	},
	["ifo.muse.w20.crucible.012"] = {
		"Before every pour there's an hour of patient sand: a pattern pressed in, lifted out, the hollow brushed clean. The bright moment everyone stops to see is the shortest part of the job.",
		"Most of a smelter's work is spent on her knees by a box of damp sand, shaping the hollow. The pour itself is over before you can count to ten.",
	},
	["ifo.muse.w20.crucible.013"] = {
		"Wherever I go, I measure warmth against this forge. Every campfire falls short. Every inn hearth is a candle. It isn't fair to them, but a dwarf can't help it.",
		"Other folk say home has a smell or a sound. For a dwarf it has a temperature, and it's this one, here, an arm's length from molten iron.",
	},
	["ifo.muse.w20.crucible.014"] = {
		"Stand by the smelting pits long enough and your boot soles start to smell like toast. Mine are well done.",
		"Is it me, or do my boots smell of something cooking? Ah. The pits. Of course.",
		"Advice for visitors: don't stand on the grate by the melt. Your soles will thank you, eventually.",
	},
	["ifo.muse.w20.dig.001"] = {
		"notices two League diggers greeting each other in the crowd, one with red Badlands grit in every seam, the other caked to the knees in the gray mud of Loch Modan.",
		"can tell where the dwarf brushing past has been digging: the dirt in the creases of his coat is the rust red of the Badlands.",
	},
	["ifo.muse.w20.dig.002"] = {
		"A miner clears a tunnel in a day with a pick. A League digger clears a cup in a week with a brush. Both call it digging, and both are offended if you don't.",
		"The miners laugh at the League's little brushes. The League laughs back, quietly, holding the pieces of what the miners broke.",
		"Pick, shovel, brush, spoon. The deeper the League digs, the smaller its tools get.",
	},
	["ifo.muse.w20.dig.003"] = {
		"The diggers back from the Badlands complain about the heat while standing ten paces from the Great Forge. Forge heat, apparently, is honest. Badlands heat is personal.",
		"Every crew back from the Badlands swears it was hotter out there than in any smithy in the city. The smiths hear this and say nothing, loudly.",
		"'Pleasant,' a League digger just called a smith's forge. I've never seen a dwarf so insulted by a compliment.",
	},
	["ifo.muse.w20.dig.004"] = {
		"'Dig deep enough anywhere in Khaz Modan,' the League's diggers say, 'and you'll hit somebody else's floor.' They say it cheerfully. I'd lie awake over it.",
		"To hear the diggers tell it, every peak in Khaz Modan is a stack of old halls with a newer one on top. This city could be standing on the roof of a stranger's house.",
	},
	["ifo.muse.w20.dig.005"] = {
		"keeps out of the way of a League quartermaster ticking off coils of rope, lamp oil and sacks of lime against a list as long as his arm, every item bound for the Badlands.",
		"passes a handcart piled with shovels, rope and stoppered jugs of lamp oil, a tag on the lot reading only 'Uldaman' in a hurried hand.",
		"lingers to see a dwarf lash a long bundle of surveying poles onto a ram's packsaddle, each pole notched along its length in careful marks.",
	},
	["ifo.muse.w20.dig.006"] = {
		"The diggers speak of a cave-in the way smiths speak of a burn: briefly, with the name of whoever it took, and then they change the subject on purpose.",
		"Somewhere there's a dig the League won't talk about, where a ceiling came down; that much a digger let slip. Ask for more and the scholars find something urgent to read.",
	},
	["ifo.muse.w20.dig.007"] = {
		"Every League digger owns a favorite trowel, and every trowel has a name. I've stopped asking the names. The stories behind them run long.",
		"A digger just introduced me to her trowel. By name. I shook its handle; it seemed the polite thing to do.",
	},
	["ifo.muse.w20.dig.008"] = {
		"Plain hatred and one grudging compliment: that is how the League's diggers talk about the Dark Iron at Uldaman. Their shoring holds.",
		"Dark Iron crews dig at Uldaman too, the diggers say, after the same old halls. The two sides hate each other cordially and steal each other's tunnels.",
	},
	["ifo.muse.w20.dig.009"] = {
		"watches a League crew come in from the gate stamping snow off their boots, their crates frosted white and their maps tucked inside their coats.",
		"steps around a puddle spreading from a stack of League crates that still carry the snow of the pass on their lids.",
	},
	["ifo.muse.w20.dig.010"] = {
		"A digger's journal comes back warped and gritty, pages stuck together with something best not asked about. The League copies every one out fair, and keeps the gritty one too.",
		"Two copies of every dig journal go on the League's shelves: a clean one for reading, and the original, stained and swollen, because somebody's hand shook on that page and that matters as well.",
	},
	["ifo.muse.w20.dig.011"] = {
		"A grizzled digger leaning on a pillar is boasting that he can tell a rock layer by licking it. His friends confirm it. They add that it explains a great deal about him.",
		"One League veteran swears he dates stone by its taste. Nobody has ever proven him wrong, and nobody has ever wanted to check.",
	},
	["ifo.muse.w20.dig.012"] = {
		"The excavation in Loch Modan keeps turning up more troggs than tablets, by the diggers' account. They keep digging. A people that wants its first page this badly will fight for every line of it.",
		"Troggs crawl up out of the dig in Loch Modan faster than the League can shore it, the diggers say. Nobody suggests giving it up. Not in this city.",
	},
	["ifo.muse.w20.dig.013"] = {
		"Word from the gate is that the storm has shut the pass. A League crew bound for the Badlands sits on its packed crates, rereading maps it already knows by heart.",
		"With the storm closing the roads, the diggers are stuck in the city, and the League's tables have never been so crowded or so short-tempered.",
	},
	["ifo.muse.w20.dig.014"] = {
		"A gnome pitched the League a digging machine. They asked what it would do to an ancient floor. 'Improve it,' said the gnome. Meeting over.",
		"Gnomish diggers and League diggers: one lot wants to get there faster, the other wants to know what they'd break on the way.",
	},
	["ifo.muse.w20.draft.001"] = {
		"Near the entry hall every lamp flame leans the same way, inward, like a crowd turning to see who just came in.",
		"The flames along the long entrance hall all bow one way, away from the gate. If I ever lost my bearings, they'd point me out.",
	},
	["ifo.muse.w20.draft.002"] = {
		"notices how everyone coming in from the gate pauses at the same spot a few strides inside, where the cold finally lets go of them; there's even a worn patch in the floor there.",
		"watches arrivals from the gate all stop at the same place a little way in, shrug once as the chill slides off, and go on.",
	},
	["ifo.muse.w20.draft.003"] = {
		"Every traveler through the gate brings a little of Dun Morogh in with them. Stand beside a fresh arrival and the cold comes off their cloak like heat off a forge, only backwards.",
		"A human just came in from outside and stood next to me. I've been warmer beside a wall of ice. He carried the whole valley in his cloak.",
		"You can pick out who just came in by the little cloud of cold that walks in with them and takes its time wandering off.",
	},
	["ifo.muse.w20.draft.004"] = {
		"Feel that? Someone's just come in from outside. The draft announces them before the guards do.",
		"Cold round my ankles. Either somebody's just come in, or the mountain has changed its opinion of me.",
	},
	["ifo.muse.w20.draft.005"] = {
		"pauses where a thin cold current crosses the hall, and watches the dust in the lamplight swerve and follow it like fish in a stream.",
		"stands for a moment in a cold seam of air running across the hall, invisible except for the lamp-smoke that bends politely out of its way.",
	},
	["ifo.muse.w20.draft.006"] = {
		"Sometimes a thread of outside air makes it all the way in before it dies: pine and cold stone, for one moment, in the middle of the coal smoke. Nobody else seems to notice.",
		"A cool ribbon of air from the gate, smelling of pine resin, slips past me through the smoke and the heat and is gone. It came a long way to get lost in here.",
	},
	["ifo.muse.w20.draft.007"] = {
		"The guards on the gate take turns coming in to thaw. You can tell the ones just off by how close they stand to the nearest lamp, pretending to inspect it.",
		"A gate guard comes in off duty and spends a long, dignified minute warming his gauntlets beside a lamp, as if checking it for faults.",
	},
	["ifo.muse.w20.draft.008"] = {
		"Gnomeregan never had a draft we hadn't designed on purpose. Here the cold from the gate wanders in wherever it likes, and we say nothing. Guests don't redesign the house.",
		"Back home every current of air had a pipe and a reason. In Ironforge the cold just strolls in from the gate. I've drawn three ways to fix it. I'll never show the dwarves.",
	},
	["ifo.muse.w20.draft.009"] = {
		"passes a gnome wrapped to the nose in a scarf in the middle of the warm halls, who explains, unasked, that drafts find gnomes first because they live nearer the floor.",
		"watches a gnome tuck a rolled blanket along the bottom of a workshop door, muttering that cold air sinks and gnomes live exactly where it lands.",
	},
	["ifo.muse.w20.draft.010"] = {
		"Some days I stand a while where the draft comes in, just to remember the world has weather. The heat in here is kind, but it's always the same heat.",
		"I like to linger in the cold current near the gate for a moment. After hours of forge-heat, a little honest cold reminds me there's an outside, and that it's waiting.",
	},
	["ifo.muse.w20.draft.011"] = {
		"In this city you can tell how far you are from the gate by your toes alone. Mine say 'not far enough'.",
		"My feet know exactly where the gate is. They keep steering me the other way.",
	},
	["ifo.muse.w20.draft.012"] = {
		"As far as I can tell, the gate is never shut. A city this sure of itself lets the cold walk in and doesn't even bother to complain about it.",
		"For all the talk of sieges, the gate stands wide and the cold comes in whenever it likes. A fortress that leaves its door open isn't careless. It's certain.",
	},
	["ifo.muse.w20.drill.001"] = {
		"stops to watch a warrior trainer correct a student's grip with two fingers and no words, then walk off before the student can thank him.",
		"lingers by the Hall of Arms as a trainer nudges a student's elbow down an inch with one finger, waits, and nudges it down once more.",
	},
	["ifo.muse.w20.drill.002"] = {
		"The practice dummies in the Military Ward are stuffed with straw and stitched with the patience of people who know they'll be restuffing them by the end of the week.",
		"Somebody in this city mends the training dummies for a living. Every one I've seen has more patches than straw, and a face drawn on in charcoal that looks faintly hurt.",
	},
	["ifo.muse.w20.drill.003"] = {
		"The drill sergeants count in Dwarven, and the count has a sound to it like rocks going down a chute. I don't know the numbers. My feet, apparently, do.",
		"Somewhere a sergeant is calling cadence in Dwarven. I couldn't tell you what the words mean, but by the fourth one I've caught myself stepping on the beat.",
	},
	["ifo.muse.w20.drill.004"] = {
		"Those dwarves have been drilling the same block since I walked in. Either it's a very hard block, or the trainer has forgotten what comes next.",
		"Same guard, same shout, fortieth time. I'd say they've got it, but nobody's asked me.",
		"I've counted forty identical strokes from that dwarf. If the forty-first is any different, I'm staying to see it.",
	},
	["ifo.muse.w20.drill.005"] = {
		"slows beside two dwarves sparring with blunted axes, who stop mid-bout so one can fix the other's loose strap, then go straight back to trying to knock each other flat.",
		"notices a sparring pair pause, lower their practice axes and settle a buckle together with great seriousness, before resuming the beating.",
	},
	["ifo.muse.w20.drill.006"] = {
		"In the Hall of Arms praise comes as a grunt, and a long grunt is a medal. I heard one go on for three full seconds and the student nearly wept.",
		"The warrior trainers have a dozen ways to say 'wrong' and one way to say 'right': they stop talking. That silence is the best thing a student hears all week.",
		"A trainer just called a student's stance 'acceptable'. Judging by the student's face, it's the finest word in Dwarven.",
	},
	["ifo.muse.w20.drill.007"] = {
		"Here in the Military Ward the stone is scuffed in neat arcs where the same pivot has been drilled a few thousand times. You could learn the footwork by reading the floor.",
		"The floor of the Military Ward is a map of every drill ever run on it: grooves where boots turn, a paler ring where a trainer has stood for years.",
	},
	["ifo.muse.w20.drill.008"] = {
		"Left foot, shoulder, strike, recover. I'm tired just from watching them.",
		"All that drilling. My arms ache in sympathy.",
	},
	["ifo.muse.w20.drill.009"] = {
		"One of the practice targets in the Military Ward has been carved into the rough shape of a trogg, lumpy shoulders and all. It's been hit so often it's starting to look like a better-made trogg.",
		"Somebody painted a trogg's face on a training post, and the dwarves queue for it like a treat. It's the most popular post in the hall by a long way.",
		"The trogg-shaped target wears a crown of dents. The dwarves treat it with a sort of fond contempt, like a neighbor's goat.",
	},
	["ifo.muse.w20.drill.010"] = {
		"hears a drill instructor's voice carry clear across the ring of the city, so that two gnomes in the far hall straighten up without knowing why.",
		"turns at a bellowed order from somewhere toward the Military Ward, and sees half a dozen passers-by stand a little straighter, none of them soldiers.",
	},
	["ifo.muse.w20.drill.011"] = {
		"A stocky young dwarf in the Hall of Arms keeps landing on her back, getting up, and setting her feet. Nobody helps her up. That, I gather, is the help.",
		"I watched a student get knocked down six times and the trainer never once offered a hand. On the seventh she stayed standing, and he only nodded. The hand would have cost her the seventh.",
	},
	["ifo.muse.w20.drill.012"] = {
		"They drill as though the Horde might come up the road from Dun Morogh before supper. The last time anyone thought that unlikely, it happened.",
		"Every block in the Hall of Arms is practiced for a day nobody wants. The dwarves remember the last such day well enough to keep practicing.",
	},
	["ifo.muse.w20.drill.013"] = {
		"Here in the Military Ward even the dust seems to settle in rows.",
		"A gnome just marched past me in perfect step with a file of guards, purely out of politeness. Nobody here finds it odd.",
	},
	["ifo.muse.w20.drill.014"] = {
		"turns at the clatter of the dawn muster in the Military Ward, rows of boots finding their marks while the guards coming off the long watch trudge the other way.",
		"steps aside for the guards coming off duty as the dawn shift files in to take their posts, two lines passing each other in silence like carts on two rails.",
	},
	["ifo.muse.w20.echo.001"] = {
		"Somebody dropped a pot lid a hall away and it reached me in pieces: the clang, the clang again off the far wall, then a curse arriving a little late.",
		"Sounds take the long way round in here. A dropped ladle rings, rings back off the arches, and comes to me twice before the cook's language does.",
		"A spoon hit the floor somewhere behind me and came back to me off three walls, each time sounding a little more sorry.",
	},
	["ifo.muse.w20.echo.002"] = {
		"Never tell a secret in Ironforge. The walls carry it round the ring and hand it back to you with a stranger attached.",
		"I wouldn't whisper anything in these halls that I didn't want the bank to hear.",
	},
	["ifo.muse.w20.echo.003"] = {
		"turns into a side passage and is followed for a few strides by {g:his|her} own footsteps, coming back off the stone half a beat behind.",
		"stops in an empty stretch of hall, and the last footstep goes on alone for a moment before the stone lets it go.",
	},
	["ifo.muse.w20.echo.004"] = {
		"A mason with a white beard told me the halls keep a little of every voice ever raised in them, and that's why they never sound empty. I think he was joking. I'm not sure he knew.",
		"The masons say these halls hold on to every voice raised in them, a little of each, and that's why they never quite fall silent. Listening now, I wouldn't care to argue.",
	},
	["ifo.muse.w20.echo.005"] = {
		"Under this mountain you hear a quarrel a full minute before you see it.",
		"The halls give fair warning: a quarrel arrives as a rumble, then as words, then as two dwarves who've forgotten how it started.",
	},
	["ifo.muse.w20.echo.006"] = {
		"hears a whistled tune come round the ring from somewhere unseen, loses it under a hammer-blow, and picks it up two halls later, a few notes further on.",
		"follows a whistled tune from hall to hall without ever finding the whistler, only the tune, always one arch ahead.",
	},
	["ifo.muse.w20.echo.007"] = {
		"Every so often, by pure accident, every hammer in the city lands between beats at once, and there's a hush so sudden that people look up. Then it's gone, and nobody mentions it.",
		"Once in a long while the din drops out all together, a gap no wider than a blink. Every head lifts. Then the noise rushes back in as if embarrassed.",
	},
	["ifo.muse.w20.echo.008"] = {
		"Drop a copper by the bank and heads turn two halls away. Never count your money out loud in this city.",
		"I dropped one copper near the bank. A dwarf on the far stair told me which way it rolled.",
	},
	["ifo.muse.w20.echo.009"] = {
		"Now and then a sound comes up through the floor that nobody in the city made: a knock, far down, slow and patient. The miners call it the mountain settling. They say it quickly.",
		"On the lower floors you sometimes feel it more than hear it: a deep, slow knocking under the stone. 'Settling,' a miner told me, and changed the subject.",
	},
	["ifo.muse.w20.echo.010"] = {
		"hears the quick tick of a small dog's claws on the stone long before the dog itself comes round the corner, very busy, going nowhere in particular.",
		"follows the click-click of claws along the hall to its source: a scruffy terrier trotting with great purpose behind a dwarf who hasn't noticed it.",
	},
	["ifo.muse.w20.echo.011"] = {
		"Every echo in this place sounds like a footstep behind me. In the enemy's own mountain, even the stone seems to be keeping watch.",
		"The halls throw every sound back twice. Here, of all places, I'd rather the stone didn't repeat what my boots are saying.",
	},
	["ifo.muse.w20.echo.012"] = {
		"Dwarf children are playing a game somewhere that is mostly shouting, and the halls hand it round until the whole city seems to be playing along.",
		"Children's voices bounce down from an upper gallery, shrieking at some game, and for a moment the great stone hall sounds like a schoolyard.",
	},
	["ifo.muse.w20.echo.013"] = {
		"The sounds of the city reach the Forlorn Cavern late and thin, as if they'd had to ask permission. A drip somewhere keeps better time than the hammers.",
		"Voices don't carry in this corner the way they do in the great halls. The rough stone swallows them. People here seem to like it that way.",
	},
	["ifo.muse.w20.elder.001"] = {
		"nods back at an elderly dwarf on a stone bench, beard tucked into his belt, who has plainly sat in that exact spot so long the stone has learned his shape.",
		"passes a white-bearded dwarf on a bench worn into a hollow that fits him perfectly; he raises two fingers in greeting, the way one acknowledges a passing cart.",
	},
	["ifo.muse.w20.elder.002"] = {
		"An elder told me something happened 'not long ago'. Further questions put it a few centuries back. He still considered it fresh news.",
		"The elders here keep time in kings and cave-ins, not in years. 'Two collapses after the war' is a date, and anyone with enough beard knows it.",
	},
	["ifo.muse.w20.elder.003"] = {
		"A retired engraver sits by a workbench he no longer uses, hands shaking in his lap, and watches a younger dwarf cut the runes. He says nothing. Once he leans forward, and the young one stops, and fixes it.",
		"The elder at the end of the bench can't hold a chisel steady anymore. He holds the lamp instead, at exactly the right angle, and the apprentice's work is better for it.",
	},
	["ifo.muse.w20.elder.004"] = {
		"An elder just told me to stand up straight, eat more and stop squinting. I didn't ask. I'm doing all three.",
		"Every dwarf past two hundred has a piece of advice ready, and none of them wait to be asked. I now know more about boots than anyone should.",
	},
	["ifo.muse.w20.elder.005"] = {
		"slows past a ring of dwarf children sitting on the floor around an elder, whose big scarred hands are shaping something in the air: a hall, perhaps, or a wall coming down.",
		"hears only the end of an elder's story to a crowd of children, a single word and a slap of the hand on the knee, and the children all jump and then laugh at themselves.",
		"pauses at the edge of an elder's tale long enough to see every child lean in at once, as if the old voice were a rope and someone had tugged it.",
	},
	["ifo.muse.w20.elder.006"] = {
		"The most feared palate in the city, a brewer confessed, belongs to a small old dwarf woman who takes one sip of every new cask and says a single word. They wait for that word like a verdict.",
		"There's an elder, the brewers say, whose 'hm' can sink a whole season's batch. They bring her the first mug anyway. A brewer who won't face her isn't worth drinking.",
		"No critic frightens the brewers like the elder who drinks one mouthful, sets the mug down and pushes it a finger's width away. That finger's width is the end of a recipe.",
	},
	["ifo.muse.w20.elder.007"] = {
		"Where a dwarf stands tells you the age: the young ones near the gate, where the news comes in, the elders as near the forge's heat as it will let them.",
		"The oldest dwarves drift toward the heat the way old dogs drift toward a hearth. Nobody hurries them. Nobody takes their spot either.",
	},
	["ifo.muse.w20.elder.008"] = {
		"A whole stair of busy dwarves just stepped aside for one slow elder coming down, and not one looked impatient. In this city age has the right of way.",
		"When the old woman with the cane started across the hall, the carts stopped. Nobody gave an order. They simply stopped, and waited, and then went on.",
	},
	["ifo.muse.w20.elder.009"] = {
		"Our eldest sit in the dwarves' taverns now, feet dangling from the benches, telling Gnomeregan stories to dwarves who have heard them all and listen anyway. That's a kindness I mean to repay.",
		"Gnomish grandfathers in a dwarven tavern, mugs held in both hands, arguing gear ratios with smiths who nod politely. Some of us will grow old here. I try not to think it, and think it every time.",
	},
	["ifo.muse.w20.elder.010"] = {
		"follows a slow ring of pipe smoke from an elder's lips as it wobbles upward, meets the heat rising from the forge and is torn apart; the elder looks satisfied, as if that were the point.",
		"stops near an elder puffing on a long clay pipe, who points the stem at passersby in turn, muttering a verdict on each that only the pipe hears.",
	},
	["ifo.muse.w20.elder.011"] = {
		"An elder at the next table insists Ironforge was a quiet city before the gnomes arrived. The whole table laughed until he joined in. It was never quiet. He just misses being the loudest.",
		"Gray-bearded dwarves complain that the city got noisy when Tinker Town filled up. Then they go back to shouting at each other across the hall.",
	},
	["ifo.muse.w20.elder.012"] = {
		"I asked an elder her age. She told me which king she was born under, then three stories about him, and I'm still none the wiser.",
		"Never ask a dwarf elder's age unless you've nowhere to be. I've heard shorter histories at the Explorers' League.",
	},
	["ifo.muse.w20.exile.001"] = {
		"Every week a gnome in Tinker Town writes a letter to someone who stayed behind in Gnomeregan. She doesn't send them. The drawer won't shut anymore.",
		"There's a drawer in one workshop full of letters addressed to Gnomeregan, sealed and never sent. The tinker who writes them says it keeps her handwriting honest. Nobody believes that's the reason.",
	},
	["ifo.muse.w20.exile.002"] = {
		"Gnomes tell jokes about Gnomeregan, fast ones, the way you'd touch a hot pan. Now and then one stops halfway, and the whole bench goes on working as if it had been finished.",
		"In Tinker Town the jokes about the old city come quick and sharp. Every so often a teller loses the punchline somewhere, and somebody hands over a wrench instead.",
		"'Well, the troggs got a lovely city,' a gnome says, and the bench laughs, and then nobody says anything for as long as it takes to drive a long screw.",
	},
	["ifo.muse.w20.exile.003"] = {
		"Gnomes in Tinker Town rarely say Thermaplugg's name. They say 'the Mekgineer', with a small flat pause after it, the way you'd step over a gap in a floor.",
		"Thermaplugg's name comes up in Tinker Town only sideways: 'him down there', 'the adviser', 'the one with the throne'. Gnomes will call a broken gear every word they know, but for him the words stay short.",
	},
	["ifo.muse.w20.exile.004"] = {
		"Gnomes stand up straighter near High Tinker Mekkatorque. For a gnome that's perhaps a finger's width of extra height, and every one of them gives it everything.",
		"When High Tinker Mekkatorque passes, the gnomes of Tinker Town straighten their goggles and stand as tall as they can manage. It isn't much height. It is a great deal of meaning.",
	},
	["ifo.muse.w20.exile.005"] = {
		"stops at the edge of a small crowd of gnomes listening to High Tinker Mekkatorque, who speaks without notes and without once raising his voice, and is heard anyway.",
		"pauses as quiet spreads through a knot of gnomes: Mekkatorque is speaking, quick and plain, about plans, and every listener nods along at the numbers.",
	},
	["ifo.muse.w20.exile.006"] = {
		"Gnomes in this city ask travelers, very politely, whether they've passed near the gates of Gnomeregan, and what they saw there. They listen to the answer with their whole faces, hoping for a name and dreading one.",
		"Every so often a gnome asks a stranger about the road west of Kharanos and the poor souls who wander by the old gates. The question is always casual. The hands never are.",
	},
	["ifo.muse.w20.exile.007"] = {
		"Nearly everything in Tinker Town hangs on hooks or sits on wheels. The gnomes call it efficient. It's also exactly how you'd furnish a place you mean to leave one day.",
		"No gnome I can see has drilled a single hole in dwarven stone. Shelves on legs, lamps on chains, benches on casters: the whole quarter could be packed up between one shift and the next.",
	},
	["ifo.muse.w20.exile.008"] = {
		"Gratitude is a fine thing, and we owe the dwarves a mountain of it. But it's tiring to be thankful every single day. I'd like, once, to be the one holding the door.",
		"We say thank you so often in Ironforge that the dwarves have started waving it off. I keep saying it. The day I stop, it'll mean we're home.",
	},
	["ifo.muse.w20.exile.009"] = {
		"Dwarves who saw Gnomeregan before the fall describe it with their hands more than with words: lifts that rose like bubbles in a tankard, lamps of every color, doors that opened before you touched them. Then the hands come down.",
		"Ask a dwarf who traded in Gnomeregan what it was like, and he'll talk about the noise first, the good kind, a whole city humming like a well-kept forge. Then he'll study his ale for a while.",
		"The few dwarves who ever went inside Gnomeregan still lower their voices for it, the way they do for Grim Batol. Two lost cities, and Ironforge standing between them.",
	},
	["ifo.muse.w20.exile.010"] = {
		"If I'm ever going to lose a city, I hope it's next door to dwarves.",
		"Lose everything, and have the dwarves for neighbors. The gnomes were robbed of a great deal, but not of that.",
	},
	["ifo.muse.w20.exile.011"] = {
		"The gnomes don't study strangers the way the dwarves do. Too busy, or past caring about one more face after all they've lost. A disguise lasts longer in Tinker Town.",
		"A whole people driven out of its home, living as lodgers. I expected enemies in this city. I keep finding refugees, and I don't know where to put that.",
	},
	["ifo.muse.w20.exile.012"] = {
		"notices a gnome freeze at a bench when a low rumble passes through the floor, wrench lifted, until a dwarf nearby mutters 'only the tram' and the wrench goes back to work.",
		"sees every gnome at a long workbench go still at a deep knock somewhere under the stone, and then, one by one, pretend they hadn't.",
	},
	["ifo.muse.w20.exile.013"] = {
		"Gnomes who got out are pooling what they remember of Gnomeregan onto one great sheet: a corridor here, a valve there, each mark initialed by the gnome who swears to it. Taking a city back starts with knowing its floors.",
		"In Tinker Town hangs a map of Gnomeregan pieced together from a hundred memories, every room signed by the gnome who vouched for it. When they go back, they'll go back with that.",
	},
	["ifo.muse.w20.exile.014"] = {
		"spots a gnome child riding through the crowd on a dwarf's shoulders, hands clamped on the dwarf's helmet, giving directions.",
		"smiles at a dwarf carrying a small gnome on his shoulders through the press of the city, the gnome pointing the way and the dwarf obeying without a word.",
	},
	["ifo.muse.w20.exile.015"] = {
		"Everybody's things get mended by the gnomes in this city. One day somebody ought to mend something of theirs.",
		"Half of Ironforge has been fixed by a gnome at some point. I'd like to see the favor returned, preferably with an army.",
	},
	["ifo.muse.w20.folk.001"] = {
		"stops to watch a mason run a bare palm along the seam of a pillar, slowly, the way a healer feels for a break.",
		"comes upon a mason with an ear pressed to a column, tapping it with one knuckle and nodding at whatever the stone answers.",
	},
	["ifo.muse.w20.folk.002"] = {
		"A miner just off his shift goes by with the lamp on his helmet still lit. Nobody tells him. I suspect nobody ever does.",
		"The miners come up from the deep with their lamps still burning, as if they don't quite trust the city to stay lit without them.",
		"You can tell a miner off shift by the dust: in the creases of the knuckles, the corners of the eyes, the stitching of the boots. A bath only moves it around.",
	},
	["ifo.muse.w20.folk.003"] = {
		"smiles at a dwarf child marching along the hall with a wooden hammer, tapping every pillar she passes and frowning at the sound, exactly like the masons do.",
		"steps around a small dwarf testing the floor stones one by one with a toy mallet, very serious, while a parent waits with the patience of someone who did the same.",
	},
	["ifo.muse.w20.folk.004"] = {
		"Stopping to talk with a gnome, a dwarf didn't bend down; he sat on the nearest step so they were eye to eye. Small courtesy. I've seen kings manage less.",
		"Dwarves don't stoop to talk to gnomes, I notice. They sit. A step, a crate, an upturned bucket, anything to bring their eyes down level.",
		"I watched a dwarf lower himself onto an overturned pail to finish an argument with a gnome. He was losing, but at least he was losing at the right height.",
	},
	["ifo.muse.w20.folk.005"] = {
		"A dwarf asked me what I make. Not what I do. What I make. I'm still thinking about it.",
		"In this city the first question isn't your name, it's your trade. I said 'a bit of everything' and got a pitying look.",
	},
	["ifo.muse.w20.folk.006"] = {
		"makes way for a dwarf carrying a coil of chain over one shoulder like a shawl, chatting to a friend as if it weighed nothing at all.",
		"admires a broad dwarf woman hauling a sack of coal up a stair two steps to a stride, pausing at the top only to finish her sentence.",
	},
	["ifo.muse.w20.folk.007"] = {
		"At one bench a dwarf holds the part steady and a gnome fits the tiny screws, neither looking at the other. They work like two hands of one person.",
		"Big hands to hold, small hands to fit. I watched a dwarf and a gnome mend a lock together without a word, and it went faster than either would have managed alone.",
		"One workbench, a dwarf and a gnome, two opinions, and the opinions take turns. Somehow the lock still gets mended.",
	},
	["ifo.muse.w20.folk.008"] = {
		"Dwarves don't knock, I've noticed. They stand at the door and say their name, loudly, and wait. A guard told me knocking is for people with something to hide.",
		"No knocking in Ironforge. A dwarf calls out his name at the threshold and waits to be told to come in. I tried it at a shop and got a cheer.",
		"I heard a gnome announce herself at a dwarf's door with her full name, which took a while. The door opened halfway through.",
	},
	["ifo.muse.w20.folk.009"] = {
		"Three dwarves have looked at my boots before my face. I'm starting to think the boots are the ones being introduced.",
		"Every dwarf I pass glances at my boots first. I've had them cleaned. It didn't help.",
	},
	["ifo.muse.w20.folk.010"] = {
		"pauses by two players hunched over a board on an upturned crate, a dwarf and a gnome, both pretending not to notice the small crowd betting on them.",
		"drifts toward a game of pegs and pebbles played on a barrel head, where a gnome is winning and the dwarf across from her is taking it with heroic calm.",
		"stops to follow a game of stones on the lid of a cask, the dwarf slapping each piece down like a hammer blow, the gnome placing hers as if they might go off.",
	},
	["ifo.muse.w20.folk.011"] = {
		"A leatherworker was humming over his stitching until he caught me listening. He stopped, glared, and started again the moment I turned away.",
		"Somebody behind a curtain has hummed the same four notes for as long as I've stood here. It isn't a song. It's the sound of someone thinking with their hands.",
	},
	["ifo.muse.w20.folk.012"] = {
		"flattens against a pillar as two cooks carry a whole roast boar past on a pole, with a small procession of hopeful dwarves following at a polite distance.",
		"makes room for a pair of kitchen hands bearing a spitted boar between them, and a gnome trotting behind with the gravy like a squire with the banner.",
	},
	["ifo.muse.w20.folk.013"] = {
		"In most cities the dwarves are the short ones. Here, beside the gnomes, they get to look down on someone, and a few of them are clearly enjoying it a little too much.",
		"The only time I've seen a dwarf look tall was while he patted a gnome on the head. The gnome's expression suggests it won't happen twice.",
	},
	["ifo.muse.w20.folk.014"] = {
		"A dwarf's trade is written on the hands. Split knuckles: a miner. Palms shiny with old burns: a smith. Black under every nail: the gunsmiths, who scrub and scrub and lose.",
		"I've started guessing trades by hands. The jeweler gave herself away by holding her mug with two fingers, as if it might scratch.",
		"Ink to the second knuckle and a callus on the middle finger: a scribe of the Explorers' League, or someone who argues with them in writing.",
	},
	["ifo.muse.w20.folk.015"] = {
		"That gnome ordered a half-pint and a stepladder. The barkeep brought both without blinking. I'd like to know how often that happens.",
		"A gnome just climbed onto a stool, then onto the bar, and ordered standing up. Nobody objected. I suspect it's tradition.",
	},
	["ifo.muse.w20.gadget.001"] = {
		"You can tell an engineer in Tinker Town by the two clean circles around the eyes where the goggles sat while everything else got blackened. The bigger the contrast, the better the stories.",
		"Gnomes judge each other's experience by the goggle marks: two pale rings in a sooty face. A tinker with no marks at all is either very lucky or very, very careful.",
	},
	["ifo.muse.w20.gadget.002"] = {
		"A gnome is building a device to make things smaller. The dwarves keep asking why a gnome would need one. She says it isn't for gnomes.",
		"Somebody in Tinker Town is working on a shrinking device. Every dwarf who hears of it takes one step back from the workbench.",
	},
	["ifo.muse.w20.gadget.003"] = {
		"Before a test, the gnome at the far bench calls out a number. The neighbors step back that many paces. Nobody has explained the system, and nobody stands closer than the number says.",
		"When a test in Tinker Town ends with a bang, nobody looks up. When it ends with no bang at all, every head turns. Silence is the alarming result.",
		"The neighbors of Tinker Town know the rhythm of its tests by heart: a whine, a pause, a thump, and somebody saying 'interesting'. It's the 'interesting' that empties a room.",
	},
	["ifo.muse.w20.gadget.004"] = {
		"steps aside for a clockwork sheep clanking across the floor with great purpose, trailed at a very respectful distance by the gnome who set it going.",
		"can only stare as a mechanical sheep bleats a tinny note and marches straight into a pillar, while three gnomes nearby take notes instead of catching it.",
	},
	["ifo.muse.w20.gadget.005"] = {
		"The dwarves keep buckets of sand along the edge of Tinker Town, refilled without a word. It's the most tactful thing I've seen in this city.",
		"Sand buckets stand at every corner where Tinker Town meets the rest of the city. Nobody mentions them. Somebody always keeps them full.",
	},
	["ifo.muse.w20.gadget.006"] = {
		"'Goblins build things to explode,' a tinker told me. 'Gnomes build things to work.' A pause. 'Then they explode. It's different.'",
		"In Tinker Town, 'goblin work' is the worst thing you can say about a machine. It means it ran once, loudly, and somebody got paid.",
	},
	["ifo.muse.w20.gadget.007"] = {
		"hides a grin as a gnome demonstrates a tankard that stirs itself to a dwarf, who regards it the way he might regard a new tax.",
		"catches a dwarf listening politely to a gnome's pitch for a self-cooling mug, then pouring his ale into an ordinary one and walking away.",
	},
	["ifo.muse.w20.gadget.008"] = {
		"Behind one workshop is a shelf of failures, each with a tag saying what went wrong. The gnomes call it the library. It's the only library in Ironforge where the books are charred.",
		"A tinker keeps every machine that ever failed her, ticketed and dated, on shelves up to the ceiling. Failures, she says, are the expensive part of an education, and she wants her money's worth.",
	},
	["ifo.muse.w20.gadget.009"] = {
		"Just now a gnome tried to sell me a fireproof apron and, right after, a pipe that lights itself. I respect the business model.",
		"Fireproof gloves on one table, self-lighting candles on the next. Somebody in Tinker Town understands the market.",
	},
	["ifo.muse.w20.gadget.010"] = {
		"A mechanostrider stands parked by a wall with its legs folded under it, ticking softly as it cools. A dwarf child pats its neck the way you'd pat a pony, and it tilts its head, which may or may not be a feature.",
		"Parked mechanostriders crouch in a row like roosting birds, each one ticking at its own pace as the metal settles. Their riders left them the way you'd leave a horse, with a pat.",
	},
	["ifo.muse.w20.gadget.011"] = {
		"watches a gnome walk past with a contraption strapped to her back, a brass arm that reaches over her shoulder and hands her tools before she asks for them, mostly the right ones.",
		"nearly takes a spanner to the ear from a mechanical arm mounted on a gnome's pack, which passes it forward to its owner with a little flourish.",
	},
	["ifo.muse.w20.gadget.012"] = {
		"One gnomish device in Tinker Town exists, as far as I can tell, only to report whether the device beside it is working. A third device keeps an eye on that one.",
		"Machines watching machines: a little bell that rings if the boiler stops, and a little lever that trips if the bell stops ringing. At the end of that chain, I suppose, sits one very calm gnome.",
		"A gnome's alarm went off because her other alarm had stopped. She seemed delighted. Proof, she said, that the system works.",
	},
	["ifo.muse.w20.gadget.013"] = {
		"Half the bellows in the city pump easier since the gnomes came, and no smith of ours will say so aloud. We'll thank them properly once they stop being right about everything.",
		"The gnomes fixed a pump in the lower halls that our engineers had cursed for a generation. We bought them a round and changed the subject. Pride is a heavy thing to set down.",
	},
	["ifo.muse.w20.gadget.014"] = {
		"pauses by a rig here in Tinker Town that opens and shuts a small brass hatch, open, shut, open, shut, while a gnome checks its tally now and then and writes down a number with enormous satisfaction.",
		"lingers beside a little machine bending the same hinge back and forth without rest, a tally next to it in the tens of thousands. The gnome tending it looks as though it were the most exciting thing in the quarter.",
	},
	["ifo.muse.w20.gauge.001"] = {
		"In a corner of Tinker Town a needle rests against a drum set on the bare rock, listening for digging below. Nobody admits to watching it. Everybody glances at it on the way past.",
		"Some gnome has fixed a little listening drum to the living stone, its needle twitching at every cart and hammer in the city. It's there for the one sound nobody wants to hear twice: something coming up from underneath.",
		"The listening drum in Tinker Town has a gnome sitting by it at all hours. Not because anyone ordered it. Because nobody could bear to leave it alone.",
	},
	["ifo.muse.w20.gauge.002"] = {
		"Every boiler in Tinker Town has a gauge with a red line on it. One of them has a second red line painted a little above the first, and beside it, in tiny letters, the word 'really'.",
		"The gauges on the gnomish boilers have red marks, and some of the red marks have red marks. I've decided not to ask about the third kind.",
		"Gnomish boilers have gauges, the gauges have little glass windows, and behind one of them somebody has tucked a note: 'if you can read this, step back'.",
	},
	["ifo.muse.w20.gauge.003"] = {
		"watches a gnome tap the glass of a gauge with one fingernail, wait, tap again, and walk off satisfied, though as far as anyone can see the needle never moved.",
		"sees a gnome stop beside a hissing boiler, rap the face of its dial twice with a knuckle, nod at whatever it said, and go on her way.",
	},
	["ifo.muse.w20.gauge.004"] = {
		"Ask a dwarf how far it is to the bank and he'll say 'a fair walk'. Ask a gnome and she'll give it in paces, then correct it for your legs.",
		"Dwarves measure in hand-spans, mugs and 'about that much'. Gnomes measure in fractions too fine for the eye. Between the two of them, somehow, the tram got built.",
	},
	["ifo.muse.w20.gauge.005"] = {
		"I'm told Tinker Town calibrates its finest scales against a single dwarven gold coin, on the grounds that nothing in Ironforge is weighed more carefully than dwarven gold.",
		"One gnome checks her balance at the start of every shift against a dwarven coin. Not a gnomish one. The dwarves, she says, have already done the hard work of making sure it's exact.",
	},
	["ifo.muse.w20.gauge.006"] = {
		"Dwarves trust the color of the metal. Gnomes trust the needle on the dial. I trust whoever's standing farther back.",
		"A smith reads the heat by eye, a tinker reads it off a dial. When both of them step back at once, so do I.",
	},
	["ifo.muse.w20.gauge.007"] = {
		"Some survivors in Tinker Town swear the deep instruments of Gnomeregan had been twitching for weeks before the troggs broke through. Whether that's true or only grief looking for a reason, nobody here ignores a twitching needle now.",
		"There's a story told quietly at the benches: that Gnomeregan's lowest gauges warned of something long before the troggs came, and nobody read them in time. True or not, every gnome in the quarter reads every gauge twice.",
	},
	["ifo.muse.w20.gauge.008"] = {
		"keeps an eye on a gnome standing at the top of the tram passage with a brass counter in her palm, clicking it once for every traveler who comes up, though nobody seems to have asked her to.",
		"notices a gnome by the tram passage holding two clicking counters, one for every arrival and one for every gnome among them. The second one clicks far less often.",
	},
	["ifo.muse.w20.gauge.009"] = {
		"In the crowd, a gnome is timing a dwarf's toast with a little brass watch. Four minutes so far. She looks less bored than scientifically delighted.",
		"Somebody brought a stopwatch to a dwarven farewell speech. The gnome holding it whispers the running total to her neighbors, who have started placing bets.",
	},
	["ifo.muse.w20.gauge.010"] = {
		"Without meaning to, I measure every hall in Ironforge against the ones at home. Too tall, too wide, too red. Fine halls. Wrong numbers.",
		"I catch myself pacing out dwarven rooms and comparing them to Gnomeregan's. The dwarves build bigger. It has never once felt like more.",
	},
	["ifo.muse.w20.gauge.011"] = {
		"With a thermometer on a long pole, a gnome has been trying to measure the heat of the Great Forge. The smiths watch her with great kindness and go on testing their iron the old way, by spitting on it.",
		"The gnomes want to put numbers on the Great Forge: how hot, how fast, how much. The smiths let them, the way you'd let a child measure the sea with a cup.",
	},
	["ifo.muse.w20.gauge.012"] = {
		"Four degrees off true: that's how I stand, a gnome just told me. I didn't know I had degrees.",
		"According to a tinker with a spirit level, I lean slightly to the left. I've walked like this for years and nobody had the instruments to say so.",
	},
	["ifo.muse.w20.gauge.013"] = {
		"Late as it is, Tinker Town hasn't noticed. Gnomes keep the hours of whatever they're building, and right now, by the sound of it, something is nearly finished.",
		"At this hour the forges have settled into their night shift, but Tinker Town keeps no shifts at all. A gnome works until the thing works, and then sleeps wherever she sits.",
	},
	["ifo.muse.w20.gauge.014"] = {
		"Never say 'about' in Tinker Town. I said a crate weighed about a stone and a gnome looked at me as if I'd spat on her blueprints.",
		"Learned a lesson among the gnomes: 'roughly' is not a number. Three of them explained it to me at once.",
	},
	["ifo.muse.w20.gauge.015"] = {
		"Here in Tinker Town pipes run along every wall and over every doorway, and the gnomes can name each one by its sound: the gurgle, the tick, the slow knock of a valve that wants looking at.",
		"Pipes everywhere in this quarter, bolted to dwarven stone in neat gnomish rows. Lay a hand on one and it's warm, or cool, or faintly trembling, like something with an opinion.",
	},
	["ifo.muse.w20.grudge.001"] = {
		"Dwarves speak of their grudges in the present tense. 'The Dark Iron cheat,' an old miner told me, of a war fought long before his grandfather was born.",
		"Listen to a dwarf on the clan war and mind the tenses: nothing was done, everything is being done, still, by folk dead for centuries.",
	},
	["ifo.muse.w20.grudge.002"] = {
		"notices the dwarf beside {g:him|her} spit neatly to one side at the words 'Dark Iron', without breaking off his sentence.",
		"hears 'Dark Iron' spoken at the next rail and watches three dwarves set down their mugs at once, as though a door had banged open somewhere.",
	},
	["ifo.muse.w20.grudge.003"] = {
		"Not all clan grudges weigh the same. Against the Dark Iron it's iron; against the Wildhammer it's more like an old boot, worn soft and mostly about manners.",
		"The Bronzebeards still hold a grudge against the Wildhammer, but a comfortable one, the kind you take out for a grumble and put back. The other grudge they never put away.",
	},
	["ifo.muse.w20.grudge.004"] = {
		"Say 'Dark Iron' in this city and watch the room go cold. Impressive, with the forge going full blast.",
		"Quickest way to end a cheerful chat in Ironforge: mention Blackrock.",
	},
	["ifo.muse.w20.grudge.005"] = {
		"Not every grudge here is a clan war. Two smiths I pass have not spoken in years over a borrowed chisel, and both still keep a space on the bench for it.",
		"Some grudges in Ironforge are smaller than a thimble and older than the bank. I heard of one over a lent chisel; the lender's grandson is still owed it.",
		"The great feud of the clans gets the songs, but the city runs on little ones: a chisel, a stool, a stall moved a hand's width to the left two generations back.",
	},
	["ifo.muse.w20.grudge.006"] = {
		"Grim Batol was cursed and left empty, and then, in the Second War, orcs moved into its halls like cattle into a barn. The dwarves still speak of that through their teeth.",
		"First a curse, then the orcs, bedding down in halls dwarves had carved. Of everything lost in the Second War, Grim Batol seems to sit worst with the old soldiers of this city.",
	},
	["ifo.muse.w20.grudge.007"] = {
		"A city that keeps grudges for centuries, and here I am walking through it. I'd like to think they've forgotten the Second War. I know they haven't.",
		"Every dwarf here has a grandfather's story about the orcs in Khaz Modan. I keep my hood up and my voice down, and I don't linger anywhere for long.",
	},
	["ifo.muse.w20.grudge.008"] = {
		"catches an elderly dwarf glaring at a merchant's back with the patience of someone who has been glaring at that family for a very long time.",
		"sees two dwarves pass on a stair with a nod so stiff it nearly creaks; whatever lies between their families was settled long ago and never forgiven.",
	},
	["ifo.muse.w20.grudge.009"] = {
		"Dwarves remember a kindness exactly as long as an insult. It makes them dreadful enemies, and the best friends you could ever owe.",
		"The memory that keeps a grudge for centuries keeps a favor just as well. I know which list I'd rather be on.",
	},
	["ifo.muse.w20.grudge.010"] = {
		"Some dwarves seem to hate the Dark Iron more steadily than they love anything else. I wonder what this city would sound like if it ever set that weight down.",
		"A grudge centuries long has to be fed. Sometimes I wonder what the dwarves would do with all that iron in them if the Dark Iron ever said sorry.",
	},
	["ifo.muse.w20.grudge.011"] = {
		"Note to self: never owe a dwarf money. Never owe one an apology, either. The interest on that is worse.",
		"Owe a dwarf a coin and he'll remind you. Owe him an apology and his grandchildren will.",
	},
	["ifo.muse.w20.grudge.012"] = {
		"hears a dwarf stub his toe on a step and swear by the name 'Thaurissan', as if the emperor had put the step there personally.",
		"hides a grin as a smith drops a pair of tongs on his own foot and curses the Dark Iron, all of them, by clan and by name, for a good long while.",
		"watches a dwarf fumble a crate, catch it, and mutter darkly about Blackrock anyway, out of what seems to be pure habit.",
	},
	["ifo.muse.w20.grudge.013"] = {
		"The dwarves fought the orcs and speak of them with a soldier's dislike. The Dark Iron they speak of differently, the way you'd speak of a brother who sold the house.",
		"An orc is an enemy; a Dark Iron is a betrayal. I didn't understand the difference until I heard a dwarf say both words in one sentence.",
	},
	["ifo.muse.w20.grudge.014"] = {
		"I asked a dwarf whether he held any grudges. He asked how long I had.",
		"Asked a dwarf about his grudges. He pulled up a second stool for me, which I took as a bad sign.",
	},
	["ifo.muse.w20.haggle.001"] = {
		"Haggling with a dwarf, praise gets you nowhere. You have to find a fault in the goods, a small honest one, and name it with respect. He'll argue, and then knock off a copper for having been listened to.",
		"The trick with dwarven merchants, a gnome told me, is to criticize the work exactly as a fellow smith would. Too harsh and he throws you out. Just right, and he lowers the price to make you take it back.",
	},
	["ifo.muse.w20.haggle.002"] = {
		"A dwarven merchant will not take less. Ask, and he'll add something instead: a strap, a spare buckle, a tin of grease, until the counter is covered and the price hasn't moved a hair.",
		"I asked for a better price and got a better bundle. Same coin, plus an oil rag, plus a pouch, plus advice on the oil rag. Somehow I feel I won.",
	},
	["ifo.muse.w20.haggle.003"] = {
		"lingers to listen as a dwarf and a gnome haggle over a coil of copper wire, each swearing the other is a thief, both plainly having the time of their lives.",
		"pauses beside a dwarf and a gnome bargaining over a coil of wire, voices rising and falling like a well-rehearsed duet, neither in the least hurry to agree.",
	},
	["ifo.muse.w20.haggle.004"] = {
		"Your price is fair. My purse disagrees, and the purse has the final say.",
		"I'd love to pay that. Unfortunately, I've met my purse.",
		"A fine price. I'll tell my purse; it may want to sit down first.",
	},
	["ifo.muse.w20.haggle.005"] = {
		"A dwarven shopkeeper gives you the price, then how many years the thing will last, and waits. You're meant to divide one by the other and feel ashamed of haggling.",
		"'Thirty silver,' says the dwarf, 'and it'll outlast you.' He leaves the arithmetic to me. The arithmetic is on his side.",
	},
	["ifo.muse.w20.haggle.006"] = {
		"A refused offer is no insult in the Commons. A refused offer with no counteroffer is. It took me a while to learn which silence means 'try again' and which means 'go'.",
		"A dwarf who says no and names a price is still talking to you. A dwarf who says no and goes back to polishing the counter has finished with you entirely.",
	},
	["ifo.muse.w20.haggle.007"] = {
		"witnesses a long haggle end without a word: buyer and seller simply stop, look at each other, and nod once at exactly the same moment.",
		"sees a bargain struck in silence, the dwarf behind the counter and the gnome in front of it each giving one short nod, as if a bell only they could hear had rung.",
	},
	["ifo.muse.w20.haggle.008"] = {
		"He out-sighed me. I didn't know that was a way to win, and now I've paid for the lesson.",
		"Lost that haggle on sighs alone. His were deeper. Years of practice, clearly.",
		"Never haggle with a dwarf who sighs from the belly. Nobody wins against a sigh that deep.",
	},
	["ifo.muse.w20.haggle.009"] = {
		"The trick with a gnome merchant is to let her explain the thing. By the time she's done you understand it completely, and the price looks small beside all that explanation.",
		"Never haggle with a gnome before she has finished describing the goods. Afterward you won't want to. The price will seem a modest fee for the lecture.",
	},
	["ifo.muse.w20.haggle.010"] = {
		"Every dwarf in the Commons is counting something: coins, crates, strangers. I keep my hood low, my voice lower, and try very hard to look like a crate.",
		"In the enemy's own market, hood up. I haggle over every copper on purpose. Nobody suspects the one making a fuss over buckles.",
	},
	["ifo.muse.w20.haggle.011"] = {
		"The longest haggle I've seen in Ironforge was over a single iron nail. It went on until both sides ran out of arguments, and ended in a draw and a round of drinks that cost more than the nail.",
		"Two dwarves bargained over one nail for a quarter of an hour. Neither gave an inch. In the end they split the nail's price, then argued over who would pay for the ale.",
	},
	["ifo.muse.w20.haggle.012"] = {
		"Ten minutes of haggling to save two coppers. Worth every one of the ten minutes, I'd say.",
		"Saved a silver by haggling. Spent it celebrating. Ironforge always gets its coin back somehow.",
	},
	["ifo.muse.w20.haggle.013"] = {
		"Dwarven merchants still haggle with us gnomes as if we might not be able to pay. We can. We just like watching them be gentle about it, before we take them apart on the price.",
		"The dwarves soften their voices when a gnome comes to the counter, out of kindness, ever since Gnomeregan. It lasts until the haggling starts. After that we're just customers, and very good ones.",
	},
	["ifo.muse.w20.hammer.001"] = {
		"The War of the Three Hammers. Only dwarves would name a civil war after their tools. Then again, it was fought over who got to keep the workshop.",
		"Three clans, three hammers, one mountain. The histories call it a war of succession. It sounds more like a quarrel over who kept the keys to the house.",
	},
	["ifo.muse.w20.hammer.002"] = {
		"As the chroniclers tell it, the war began the way such wars do: an old high king died, and three clans each remembered his wishes differently.",
		"A high king laid to rest, and three clans standing at the tomb, each sure the throne was theirs. That is how the histories of this city always begin.",
	},
	["ifo.muse.w20.hammer.003"] = {
		"Ask a mason in Ironforge about Grim Batol and he answers in fewer words than usual. Stone from there, the masons hold, is stone nobody should build with.",
		"No dwarf in this city would set a block quarried at Grim Batol into a wall, I'm told, not for any price. A people who'd mine a dragon's tooth if it held ore won't touch that rock.",
	},
	["ifo.muse.w20.hammer.004"] = {
		"overhears two old miners arguing over which clan struck first in the War of the Three Hammers, both as heated as if they had been there.",
		"catches the tail of an argument at a rail: who started the clan war, centuries back, and whose great-grandsire ran. Neither dwarf is giving an inch.",
		"listens, amused, as a dwarf jabs a finger at his friend's chest over a battle older than the bank, and the friend jabs back over the very same battle.",
	},
	["ifo.muse.w20.hammer.005"] = {
		"Every hall of this city was won in a war between cousins. The dwarves keep them beautifully. Perhaps that's a kind of apology.",
		"The Bronzebeards won these halls from their own kin. They polish every inch of them, the way you tend something that cost too much.",
		"Beautiful halls, and every one of them a prize taken from family. I wonder whether the dwarves ever feel it, scrubbing the steps.",
	},
	["ifo.muse.w20.hammer.006"] = {
		"Three clans, one throne. Somebody should have done the sums before the hammers came out.",
		"One mountain, one crown, three clans. Even a gnome could have told them that wouldn't add up.",
	},
	["ifo.muse.w20.hammer.007"] = {
		"In that war the Dark Iron sent a sorceress against Grim Batol. She died before its gates, and the elders say whatever she was went into the stone and stayed.",
		"The elders tell of a Dark Iron sorceress who fell at Grim Batol and fouled it with her dying. The Wildhammer won that battle and lost the fortress anyway.",
	},
	["ifo.muse.w20.hammer.008"] = {
		"In Ironforge the clan war has one villain. At Aerie Peak, I'd wager, it has two. And somewhere under Blackrock they tell it with no villain at all, only the wronged.",
		"Every clan keeps its own version of the Three Hammers. In this city the Dark Iron struck first. I'd love to hear the Wildhammer tell it, from a safe distance.",
		"One war, three tellings, and each ends with the teller's clan in the right. History under this mountain depends on which door you knock at.",
	},
	["ifo.muse.w20.hammer.009"] = {
		"counts four hammers between one doorway and the next: two carved in the lintel, one cast into a lamp bracket, one in a passing guard's fist.",
		"starts seeing hammers everywhere once {g:he|she} looks: on brackets, on door studs, on the buckles of passing guards, as though the city signed its name on everything.",
		"pauses under an arch where a pair of crossed hammers has been cut so deep that the lamplight pools in the grooves.",
	},
	["ifo.muse.w20.hammer.010"] = {
		"watches an old dwarf explain the War of the Three Hammers to a ring of children with three mugs on a bench; one mug gets knocked over at the end, to cheers.",
		"lingers while a graybeard acts out the clan war for a pack of youngsters: his fists are the Bronzebeards, a boot is the Wildhammer, and a pot of soot, ominously, the Dark Iron.",
	},
	["ifo.muse.w20.hammer.011"] = {
		"Before the war, by the old accounts, all three clans lived under this mountain. I try to picture Wildhammer, Dark Iron and Bronzebeard elbow to elbow at the same rail. I can't quite.",
		"Once these very halls were shared by three clans. Walking them, I catch myself looking for the doors the other two used, and wondering who walled them up.",
	},
	["ifo.muse.w20.hammer.012"] = {
		"When the Dark Iron struck at both of them, the Bronzebeards and the Wildhammer stood together and won. Then, as the historians tell it, they shook hands and went straight back to living far apart.",
		"The clans that fought over this mountain ended that war side by side against the third. It's the nearest thing to a peace the old quarrel ever produced, and it still holds, more or less.",
	},
	["ifo.muse.w20.hound.001"] = {
		"steps carefully around a hunter's wolf lying across the door of the hunters' trainers, its tail thumping the stone once in greeting and no more.",
		"pauses as a great pale cat from the high slopes pads out of the hunters' hall behind its dwarf, silent among the clanking crowd.",
	},
	["ifo.muse.w20.hound.002"] = {
		"The hunters' trainers talk to their students and to their students' beasts in exactly the same voice. The beasts listen better.",
		"In the hunters' hall the trainers address the hunter and then, quite seriously, the beast. Only one of the two ever argues.",
		"A hunters' trainer just told a student's cat it was doing very well. The student is still waiting to hear the same.",
	},
	["ifo.muse.w20.hound.003"] = {
		"Somewhere near the hunters' trainers the city smells of wet fur and raw meat under the coal smoke. It's the only corner of Ironforge that smells like outside.",
		"Coal, oil, hot iron, and then, turning one corner, a whiff of straw and animal. The hunters keep a little of the wild under the mountain, whether the mountain likes it or not.",
	},
	["ifo.muse.w20.hound.004"] = {
		"That hunter's cat has been watching me since I came through the hall. I'd like to think it's admiration.",
		"Somebody's wolf just sniffed my boots very thoroughly and walked off unimpressed. Rude, but fair.",
		"A hunter's bear has decided I smell interesting. I've decided to stand very still until it changes its mind.",
	},
	["ifo.muse.w20.hound.005"] = {
		"A dwarven hunter is sharing a meat pie with his bear, bite for bite, doing the sums out loud so that nobody gets cheated.",
		"A hunter crouches to pick a stone from her cat's paw, murmuring to it low and steady the whole while. The cat lets her. Around them the city goes past without slowing.",
	},
	["ifo.muse.w20.hound.006"] = {
		"Now and then a hunter crosses the Military Ward alone, with the look of someone who keeps glancing down at a space beside the knee where something used to walk.",
		"The hunters' trainers can tell, the moment a hunter walks in, whether the beast at the heel is the same one as last time. They never ask about the other. They just nod a little longer.",
	},
	["ifo.muse.w20.hound.007"] = {
		"lingers to watch a dwarf brushing out the coat of a huge gray wolf, the loose fur drifting across the floor in tufts the sweepers will be chasing for days.",
		"stops beside a hunter combing burrs from a bear's flank, the bear leaning into every stroke with the blissful heaviness of a sack of grain.",
	},
	["ifo.muse.w20.hound.008"] = {
		"I watched a hunter in the Military Ward try to teach a boar to sit. The boar has excellent manners, as boars go, and none of them involve sitting.",
		"A hunter's boar is being taught to wait at a doorway. It waits beautifully, right up until someone near the tavern drops a sausage.",
		"One hunter's cat has learned to work the latch on the stable door. The stable keeper has learned some new words.",
	},
	["ifo.muse.w20.hound.009"] = {
		"Dwarven hunters go out with a rifle on one shoulder and a beast at their heel, and between the two of them they keep the troggs honest in the hills.",
		"The hunters who train in this city head out past the gate with a gun and a beast and come back with the troggs' plans spoiled. Nobody writes songs about it. It goes in the guards' reports, which for a dwarf is better.",
	},
	["ifo.muse.w20.hound.010"] = {
		"I've walked past three hunters' beasts and now I'm wearing a little of each.",
		"Fur on my sleeves, fur on my boots. The hunters' beasts of Ironforge shed generously.",
		"Ironforge: where the hunters' beasts outnumber the chairs, and win every argument about them.",
	},
	["ifo.muse.w20.hound.011"] = {
		"Every hunter's beast in this city lifts its head when I pass. The dwarves don't notice. The beasts do.",
		"A dwarf's wolf watched me cross the whole hall with its ears up. Its master never looked round. If I'm ever found out in this city, it will be by something with a nose.",
	},
	["ifo.muse.w20.hound.012"] = {
		"The dwarven hunters say a beast tamed on the slopes of Dun Morogh never quite gets used to the forge-heat; on the coldest days, they swear, it goes and lies by the gate with its nose to the draft.",
		"The hunters' trainers say you never pick a beast; it decides whether to put up with you. Watching the tangle of fur and tempers around their door, I believe them.",
	},
	["ifo.muse.w20.hound.013"] = {
		"watches a hunter's great cat stretch out flat on a warm patch of floor near the molten channels, belly to the heat, deaf to its master's calls.",
		"steps over the tail of a hunter's bear that has claimed the warmest stone near a channel of molten metal and plainly intends to keep it.",
	},
	["ifo.muse.w20.hours.001"] = {
		"steps around a sweeper spreading sawdust over the meltwater inside the entrance, where every pair of boots from the gate is leaving its share of snow.",
		"keeps clear of a dwarf mopping the puddles inside the entrance as fast as the snow on arriving boots can make them, and losing, cheerfully.",
	},
	["ifo.muse.w20.hours.002"] = {
		"A small dwarf just ran in from the gate cupping a snowball like treasure, to show someone. By the time he found them it was a wet hand and a puzzled face.",
		"Some child smuggled a snowball in past the guards. It made it nearly to the bank before the warmth of the halls took it, and the child mourned it loudly.",
	},
	["ifo.muse.w20.hours.003"] = {
		"makes room by the nearest lamp for a guard just in off the gate, snow packed in the folds of his cloak, who stands there dripping quietly for a while like a thaw wearing a helmet.",
		"sees a mountaineer stamp in with snow crusted on brows and beard, which melts as he walks until he reaches the bank merely damp.",
	},
	["ifo.muse.w20.hours.004"] = {
		"Snow outside, so the whole city smells of wet wool. Every bench near a forge has a steaming cloak spread on it and its owner beside it, saying nothing, thawing.",
		"Word is it's snowing hard. You can tell without asking: every warm corner has been claimed by someone in a damp cloak, steaming quietly like a pudding.",
	},
	["ifo.muse.w20.hours.005"] = {
		"Word from the gate is that a storm is howling over Dun Morogh. In here, the only sign is that the tavern is full and nobody is leaving.",
		"A storm outside, they say. I'll take their word. In the heart of the mountain, thunder would sound exactly like one more dwarf dropping one more anvil.",
	},
	["ifo.muse.w20.hours.006"] = {
		"hears a long, low moan come down the entry hall from the gate, the storm outside finding its way in as far as the first lamps and no farther.",
		"notices the lamps nearest the gate guttering and the guards there standing with their backs to the storm, while a dozen strides further in the flames stand perfectly still.",
	},
	["ifo.muse.w20.hours.007"] = {
		"Above all this rock a storm is tearing at the peaks, and not a whisper of it reaches me. A storm you have to be told about is a strange kind of luxury.",
		"They say it's wild out there. In here the forge burns at the same pace it always does, and the storm is only a rumor passing from table to table.",
	},
	["ifo.muse.w20.hours.008"] = {
		"Fog on the mountain road, word is. The ore carts are crawling and the smiths are in a temper.",
		"The fog's slowed every cart coming in. You can count it in idle smiths leaning on the rails, complaining.",
	},
	["ifo.muse.w20.hours.009"] = {
		"glimpses a party of travelers come in from the gate with fine beads of fog clinging to every hair and rivet, glittering in the forge-light for a moment before the heat takes them.",
		"notices a dull bloom of fog-wet on a traveler's mail, which the heat of the halls dries off in streaks as {g:he|she} watches.",
	},
	["ifo.muse.w20.hours.010"] = {
		"Clear outside, says a carter stamping in, and colder for it: the hard, dry cold that bites the ears. He says it like a complaint and looks rather pleased.",
		"Word from the gate: clear and bitter out, not a cloud anywhere. The travelers who bring the news hold their hands to the nearest lamp while they tell it.",
	},
	["ifo.muse.w20.hours.011"] = {
		"walks a hall emptied by the late hour, where a single sweeper is working down the middle with a wide broom and the hiss of the bristles carries all the way to the far wall.",
		"passes through the city at its quietest hour, when the loudest thing in a whole hall is one dwarf's broom, and a cat watching it from a step.",
	},
	["ifo.muse.w20.hours.012"] = {
		"The night-shift smiths are a breed apart: quieter, a little proud of being awake while the rest of the city isn't, and very particular about their stew.",
		"At this hour the hammers belong to the late crews, who work with less shouting and more humming. Someone near the forge has been humming the same four notes for a long while, and nobody minds.",
	},
	["ifo.muse.w20.hours.013"] = {
		"Dawn, by the look of it: a long file of miners heading out toward the gate with picks on their shoulders and the hills of Dun Morogh ahead of them, quiet as a procession.",
		"The first carts of the day roll out toward the gate empty and will come back heavy. A carter told me that's how you know the hour in this city: by which way the carts are full.",
	},
	["ifo.muse.w20.hours.014"] = {
		"watches the traffic at the gate turn around as dusk falls outside: fewer people leaving, more coming in, all of them in a hurry to be on the warm side of the mountain before dark.",
		"notices the flow at the gate change direction with the end of the day out there, travelers coming in faster than they go, the inn's door hardly ever still.",
	},
	["ifo.muse.w20.hours.015"] = {
		"Dusk outside, I'd guess, from the queue at the bank: everyone who worked the hills all day, putting away their pay before the taverns can get at it.",
		"You can tell the day is ending out there by the bank: a sudden line of dusty miners, each in a hurry to put the day's coin somewhere ale can't reach.",
	},
	["ifo.muse.w20.hours.016"] = {
		"It must be daytime: the children are out, and the noise in the halls has doubled.",
		"Daytime, I'd say. There are small dwarves underfoot, and every one of them is running.",
		"Day out there, I'd wager. The halls are twice as loud and half as polite.",
	},
	["ifo.muse.w20.hours.017"] = {
		"Late as it is, with the halls half empty, I can hear the molten channels themselves: a low, thick murmur, like a pot that never quite boils. The crowds cover it the rest of the time.",
		"With most of the city asleep, the stone gives up its small sounds: a drip somewhere, a hinge, the slow seething of metal in its channels. They were there all along, under everything.",
	},
	["ifo.muse.w20.hours.018"] = {
		"Snow outside, and suddenly every cobbler in the city has a queue of travelers in their socks, each holding a leaking boot and a hopeful expression.",
		"When it snows, the bootmakers do a roaring trade. I counted four people in one doorway, each holding out a boot that had let the weather in.",
	},
	["ifo.muse.w20.hours.019"] = {
		"notices the sweepers putting their brooms away and the bakers' carts coming out, the small changing of the guard between those who clean the city and those who feed it, which is all the dawn there is in here.",
		"watches the last of the late sweepers lean their brooms against a wall just as the first bread carts come trundling out, the city's cleaners and feeders trading places without a word.",
	},
	["ifo.muse.w20.hours.020"] = {
		"Most of the city is abed by now. The rest is hitting metal, and from here the two halves sound exactly alike.",
		"This late, the only ones awake are the smiths, the guards and the cats. I seem to have joined the cats.",
	},
	["ifo.muse.w20.hours.021"] = {
		"In fog, the guards say, the gate seems to open onto nothing at all, a gray wall, and travelers step out of it like ghosts. They come in damp and faintly surprised to be anywhere.",
		"A guard told me the fog's so thick beyond the gate that people appear out of it all at once, a step away, as if the world were being made up as they walked.",
	},
	["ifo.muse.w20.hours.022"] = {
		"A storm out there? Then I'm staying under the mountain and calling it caution.",
		"Storm at the gate, they say. I'll be by the forge, being sensible, for as long as it takes.",
	},
	["ifo.muse.w20.hush.001"] = {
		"Somebody in the Mystic Ward has hung a felt curtain across a doorway, purely to keep the forge out. The forge comes through anyway, but politely, like a guest wiping its boots.",
		"The din of the city reaches the halls of study the way surf reaches a cellar: you know it's there, and it can't touch you.",
	},
	["ifo.muse.w20.hush.002"] = {
		"catches {g:himself|herself} walking on the balls of {g:his|her} feet past a row of bent heads in the Mystic Ward, as if the floor had asked politely.",
		"sets a pack down on the stone of a study hall so slowly that the buckles make no sound at all.",
		"goes quiet halfway through a sentence on reaching a hall of bowed heads, and finishes the thought with a shrug.",
	},
	["ifo.muse.w20.hush.003"] = {
		"Here in the Mystic Ward even the guards change their step. Mail still clinks, but it clinks the way a spoon does in a sickroom.",
		"The guards who walk the Mystic Ward have learned a gentler tread than their fellows at the gate. Same boots. Different city.",
		"Even the Ironforge Guard softens in this hall. The same square shoulders, the same heavy boots, set down here with a little more care.",
	},
	["ifo.muse.w20.hush.004"] = {
		"I sneezed in the Mystic Ward. A priest looked up, a mage looked up, and a paladin reached for a bandage.",
		"Cough once in the Mystic Ward and three healers turn round at once. Best place in the city to catch a cold.",
		"Dropped my pack in the Mystic Ward. Nobody said a word. Nobody needed to.",
	},
	["ifo.muse.w20.hush.005"] = {
		"Someone shaped the ceilings of the study halls to swallow sound. A dwarf mason told me so and wouldn't say how, which is how you know a dwarf mason means it.",
		"A mason swears the vaults over the Hall of Mysteries were cut to drink up noise. I stood under one and clapped, softly. The clap went nowhere.",
		"The study halls were cut for quiet the way the Great Forge was cut for heat, a mason told me: on purpose, and to last.",
	},
	["ifo.muse.w20.hush.006"] = {
		"spots a paladin in full plate sitting so still over an open page that a moth settles on one pauldron and stays there.",
		"notices a paladin reading in full plate, motionless as a statue in a niche, until a page turns and the whole suit creaks with it.",
	},
	["ifo.muse.w20.hush.007"] = {
		"Two priests are disagreeing in whispers by a pillar. It has all the heat of a tavern brawl and none of the volume, and somehow that's worse to watch.",
		"Whispered quarrels are an art in the Mystic Ward. Faces red, hands flying, and not a sound you could catch at three paces.",
		"A dwarf priest just won an argument without raising his voice above a murmur. In this city that counts as a small miracle.",
	},
	["ifo.muse.w20.hush.008"] = {
		"If you're hurt, the Mystic Ward. If you're loud, anywhere else first.",
		"Wounds go to the Mystic Ward. Loud opinions stay outside it.",
		"Good advice for Ironforge: bring your bruises to the priests and leave your voice at the door.",
	},
	["ifo.muse.w20.hush.009"] = {
		"Outside a healing room three miners sit shoulder to shoulder on a bench, helmets in their laps. Nobody talks. In Ironforge that silence says more than any wailing.",
		"There's a bench by the healers' doors that's never empty. Miners, mostly, waiting on news of one of their crew, rolling a candle stub between thick fingers.",
		"Miners wait outside the healers' rooms the way they wait out a cave-in: shoulders together, no talk, eyes on the door.",
	},
	["ifo.muse.w20.hush.010"] = {
		"keeps an eye on a gnome tiptoeing across a hall of study with enormous care, while every tool on the gnome's belt jingles at each step.",
		"follows the slow, jingling progress of a gnome trying very hard to be silent among the readers, and failing in a dozen small metal ways.",
	},
	["ifo.muse.w20.hush.011"] = {
		"Every so often the whole Mystic Ward goes still at once: pens stop, voices stop, even the robes stop rustling. A moment later it all resumes. Nobody has ever told me why, and I've stopped asking.",
		"Now and then a silence falls over the Hall of Mysteries that nobody seems to start. It lasts the space of a long look, and ends just as mysteriously.",
	},
	["ifo.muse.w20.hush.012"] = {
		"Asked a priest for directions. He answered with one finger and a look. Clearest directions I've had in this city.",
		"In the Mystic Ward nobody tells you the way. They point, kindly, in silence.",
		"Nobody in the Mystic Ward says 'over there'. They just point, and smile, and go back to the page.",
	},
	["ifo.muse.w20.ingot.001"] = {
		"Each ingot stacked by the forge carries a little stamped mark on its end: a hammer, a rune, a crooked wheel. Every smelter signs the work, even work nobody will see again.",
		"Turn an ingot over and there's a mark punched into it, a smelter's sign. The dwarves would sooner leave a door unlocked than an ingot unsigned.",
	},
	["ifo.muse.w20.ingot.002"] = {
		"passes a stack of ingots laid crosswise in neat layers, taller than a dwarf and as square as a wall, each layer turned the other way like courses of brick.",
		"pauses by a waist-high stack of bars set in alternate rows, so tidy it looks less like stock than masonry.",
	},
	["ifo.muse.w20.ingot.003"] = {
		"Two dwarves are arguing over the weight of an ingot. The scale says one thing; the smelter says the scale is a liar. The scale has been there longer.",
		"At the weighing bench a smelter and a buyer have been squinting at the same needle for some time. Neither will blink first. The ingot doesn't care.",
		"A buyer has accused an ingot of being light. The smelter has taken this personally, and so, by the look of it, has every dwarf within earshot.",
	},
	["ifo.muse.w20.ingot.004"] = {
		"I tried to lift one of those ingots. It tried to stay where it was. It won.",
		"Those bars look small until you pick one up. Then they look smug.",
		"Small, square and heavier than a bad decision. I put the ingot back exactly where I found it.",
	},
	["ifo.muse.w20.ingot.005"] = {
		"Ore comes in at the gate on carts and on backs, rough and dull, from the mines of Dun Morogh and Loch Modan. It leaves the forge as bright bars in neat crates. The city is a mouth that eats rock and speaks iron.",
		"Rough ore in, bright bars out. Somewhere between lies all the work of the Great Forge, and none of the miners who dug the stuff ever see the bars it becomes.",
	},
	["ifo.muse.w20.ingot.006"] = {
		"The mining trainer judges ore by ear: a knock on the bench, a tilt of the head, and the lump goes to the left pile or the right. I've listened hard. To me they all say 'rock'.",
		"Watching the mining trainer sort ore is like watching someone read in a language I don't have. Knock, listen, toss. Never a look, never a mistake.",
	},
	["ifo.muse.w20.ingot.007"] = {
		"lingers at the edge of the smiths' bench while the blacksmithing trainer turns a pupil's hinge over in thick fingers, tests it, and hands it back with a single grunt that could mean anything.",
		"pauses to watch the blacksmithing trainer bend a pupil's freshly made hook against the edge of the bench until it gives, then nod, satisfied that it gave in the right place.",
	},
	["ifo.muse.w20.ingot.008"] = {
		"Crates of bars by the tram entrance, chalked for Stormwind. Whatever our side wears into the next fight, a good part of it starts in this hall as rock.",
		"Every few hours another crate of ingots goes down to the Deeprun Tram for the human smiths in Stormwind. The Alliance is held together by treaties, they say, but the iron does its share of the holding.",
	},
	["ifo.muse.w20.ingot.009"] = {
		"Every ingot here has a little sunken hollow along its top, where the metal shrank as it cooled. The smelters run a thumb along it the way you'd test a seam. A flat top, one told me, means it was poured too slow.",
		"Look along the top of a cooled ingot and there's a shallow groove where the metal pulled in on itself. The smelters read that groove the way a baker reads a crust.",
	},
	["ifo.muse.w20.ingot.010"] = {
		"stops to watch a line of dwarves pass ingots hand to hand from a cart to the stacks, each bar swung on with the same grunt, so even it could keep a marching beat.",
		"lingers by a chain of porters handing bars down from a cart, the rhythm so steady that the ingots seem to be walking themselves to the stack.",
	},
	["ifo.muse.w20.ingot.011"] = {
		"Dwarven ingots are beautiful, plain and square and honest. In Gnomeregan we'd have had them threaded, numbered and halfway into a machine before they'd cooled. I miss the hurry more than I can say.",
		"Every bar at the Great Forge goes into an anvil's work, slow and patient. Ours used to go into engines, fast and noisy and glorious. Then the troggs came up and the engines went quiet, and here we are, borrowing the dwarves' patience.",
	},
	["ifo.muse.w20.ingot.012"] = {
		"That stack of bars is worth more than everything I'm carrying. I'm standing farther from it than I need to, on principle.",
		"Somebody left a fortune in iron bars against the wall, unguarded. In any other city that's a crime. Here it's just storage.",
	},
	["ifo.muse.w20.ingot.013"] = {
		"A few ingots sit apart from the rest, on their own shelf, darker than any iron I know. Dark Iron ore from the south, a smelter said, and nobody here likes it touching the honest metal.",
		"The dark bars are kept on a shelf of their own, away from the stacks. Dark Iron, a dwarf mutters when I look too long, as if the name itself left soot on the tongue.",
	},
	["ifo.muse.w20.map.001"] = {
		"steps aside for a dwarf with three leather map tubes slung across his back, who turns to apologize and sweeps a stall clean with all three.",
		"makes room on a crowded stair for a League courier hugging a bundle of rolled maps, each one tied with a different color of string.",
	},
	["ifo.muse.w20.map.002"] = {
		"The League's old maps of Khaz Modan still show the roads as they ran before the Second War. A few of the towns along them are only ink now.",
		"Some of the villages on the older League charts burned when the Horde came through Khaz Modan. Nobody has scratched them out. Nobody has the heart.",
	},
	["ifo.muse.w20.map.003"] = {
		"Ask a dwarf the way and you get directions. Ask a League dwarf and you get the directions, the map, and who drew it wrong first.",
		"I asked a League cartographer how far it was to Loch Modan. Forty minutes later I knew the history of every milestone.",
		"Directions from a League dwarf come with the history attached. 'Left at the old seam. Well, where it used to be.'",
	},
	["ifo.muse.w20.map.004"] = {
		"A League map of Loch Modan marks every dig, every cairn and every buried wall, and forgets the farms entirely. A map tells you what its maker cared about.",
		"Every map is a confession. The League's mark the ruins in red ink and leave the farms out altogether, as if nobody had ever plowed anything worth finding.",
	},
	["ifo.muse.w20.map.005"] = {
		"studies a coastline on a wall map that has been corrected so many times the paper slips pinned along it stick out like the scales of a fish.",
		"notices that one stretch of coast on a great wall map is buried under a dozen pinned corrections, each in a different hand, none agreeing with the rest.",
	},
	["ifo.muse.w20.map.006"] = {
		"I'm told the League still has a map of Gnomeregan, every workshop labeled in a tiny gnomish hand. A perfect picture of a city nobody can walk into.",
		"A gnome of the League, the story goes, drew Gnomeregan from memory down to the last pipe. The scholars filed the drawing with the ruins, and she has never forgiven them.",
	},
	["ifo.muse.w20.map.007"] = {
		"League mapmakers draw the deep tunnels on thin oiled sheets, one per level, and lay them on top of each other to see what lies under what. Held to a lamp, the stack looks like the inside of an onion.",
		"The tunnel maps of Khaz Modan are drawn in layers, I've heard, sheet over sheet, because a map of a mountain has to be read downward as well as across.",
	},
	["ifo.muse.w20.map.008"] = {
		"A League mapmaker swears they never leave a blank: where nobody knows, they draw a little shovel. That's not a map, that's a list of chores.",
		"Blank spaces on a League map aren't blank, I'm told. They're 'pending.'",
	},
	["ifo.muse.w20.map.009"] = {
		"notices a dwarf at a stall whose fingertips are black like any smith's, until the light catches them and they turn out to be the deep blue of mapmaker's ink.",
		"glances twice at a pair of stained hands counting coins on a counter: not soot, but ink, worked into every crease by a working life of drawing coastlines.",
	},
	["ifo.muse.w20.map.010"] = {
		"I overheard a League digger measure distance the way diggers do: not how far, but how deep. Loch Modan is near. Uldaman is a long way down.",
		"To the League, a place isn't far or near. It's shallow or deep. Loch Modan, by their reckoning, is barely a scratch.",
	},
	["ifo.muse.w20.map.011"] = {
		"Never lend a League scholar your map. You'll get it back with notes in the margins, and the notes will be right.",
		"I showed a League dwarf my map and he had a pencil out before I could stop him. It's a better map now. It just isn't mine anymore.",
	},
	["ifo.muse.w20.map.012"] = {
		"The oldest map the League owns, the scholars say, is not on paper at all: a slab of stone with grooves cut in it, which they still cannot match to any place on the surface.",
		"Among the League's maps there is said to be a carved stone nobody can read as a map of anywhere known. They keep it anyway. A map that fits no land is still telling someone something.",
	},
	["ifo.muse.w20.map.013"] = {
		"Asked a League clerk for a map of the city itself. He laughed for a full minute and handed me a map of the Commons, with an apology.",
		"There's no single map of Ironforge, a League clerk tells me. There are forty, and they disagree about the cellars.",
	},
	["ifo.muse.w20.muster.001"] = {
		"pauses as a sergeant walks a line of the Ironforge Guard, tugging each strap and tapping each helm, and says nothing at all to the one who passes.",
		"watches an officer move down a row of guards, rapping knuckles on a breastplate here and there and listening to it like a cooper sounding a barrel.",
	},
	["ifo.muse.w20.muster.002"] = {
		"At some posts the stone under a guard's boots has worn into two shallow dips. Generations of the Ironforge Guard, standing exactly where the last one stood.",
		"There are two hollows in the floor beside one of the arches, a stride apart. It took me a while to see they're footprints: a post kept by one guard after another for longer than anyone has counted.",
	},
	["ifo.muse.w20.muster.003"] = {
		"The guards here give directions like orders. I've never been sent anywhere so efficiently.",
		"I asked a guard the way to the Military Ward. He pointed, then looked me over and pointed at a bench first.",
		"I notice the guards point the way with the weapon hand. Pointing with an axe settles any argument about the route.",
	},
	["ifo.muse.w20.muster.004"] = {
		"steps aside for a pair of mountaineers coming in from the gate, snow still caked on their boots and their rifles wrapped in oilcloth against the wet.",
		"notices two mountaineers stamping in from outside and shaking the snow from their cloaks all over the guards, who take it without a flicker.",
	},
	["ifo.muse.w20.muster.005"] = {
		"The mountaineers come back through the gate in twos and make their report before they eat. A dwarf putting off a meal: that's how you know the report matters.",
		"A mountaineer's report, from what I overhear, runs: troggs here, Dark Iron there, road's bad, ale's worse. Then a long drink to fix the last item.",
	},
	["ifo.muse.w20.muster.006"] = {
		"Somewhere a guard is standing a post nobody passes, at the end of a hall nobody uses, and standing it exactly as well as the one before the throne.",
		"The Ironforge Guard keep posts where nothing happens for years. I suppose that's the point. Nothing happening is the job, done.",
	},
	["ifo.muse.w20.muster.007"] = {
		"glimpses a guard at the end of a watch put away an entire loaf in four bites without once taking off the helm.",
		"catches a guard, newly relieved, sitting down on an upturned bucket with a groan that seems to start somewhere in the boots.",
		"grins as a guard just off duty unbuckles a gauntlet with his teeth, the other hand already around a tankard someone has thoughtfully brought.",
	},
	["ifo.muse.w20.muster.008"] = {
		"Here in the Military Ward a slate by the door says who stands where, chalked fresh each shift. Names rubbed out and written back in the same hand, year on year.",
		"Every shift somebody in the Military Ward wipes a slate and chalks up the watch again: the gate, the throne, the bank, the stairs. Half the names are the same as yesterday's. That's the comfort of it.",
	},
	["ifo.muse.w20.muster.009"] = {
		"If the horns ever sounded at the gate, every guard in this city would be there before the echo died. I'd like to think I would be too. That's the Alliance, without the speeches.",
		"The Ironforge Guard hold this mountain for the whole Alliance, not only for the dwarves. Standing among them, I feel the debt like a hand on my shoulder.",
	},
	["ifo.muse.w20.muster.010"] = {
		"Those guards haven't moved since I arrived. I've moved four times, and I'm the one who's tired.",
		"I'd salute the guards if I knew which salute. They'd notice I got it wrong; they notice everything.",
	},
	["ifo.muse.w20.muster.011"] = {
		"Night outside, by the account of those coming in from the gate. You'd never know it from the guards: same posts, same faces, a little more yawning behind the visors.",
		"The night watch in Ironforge is the same watch, only quieter about it. Word from the gate is that it's dark out there. In here the guards stand as if nobody had thought to tell them.",
	},
	["ifo.muse.w20.muster.012"] = {
		"The guards here don't greet you, they file you. One look at the boots, the belt, the hands, and you're entered in some ledger behind their eyes.",
		"Each guard I pass gives me the same look: boots, belt, hands, face, in that order. Somewhere behind those eyes my name has gone into a book.",
	},
	["ifo.muse.w20.muster.013"] = {
		"Good watch to you. May it be a boring one.",
		"A dull watch, I hope. In that job, dull is a compliment.",
	},
	["ifo.muse.w20.muster.014"] = {
		"Fog on the passes, the mountaineers say, thick enough to lose a ram in. They come in through the gate with their cloaks beaded gray and their tempers worse.",
		"Word at the gate is that fog has closed the roads of Dun Morogh. The mountaineers who just came in look as though they walked through it by feel, and possibly did.",
	},
	["ifo.muse.w20.oath.001"] = {
		"Dwarven oaths are short. I heard one sworn at a counter: four words and a palm slapped flat on the stone. Both of them looked as if they'd carved it in the wall.",
		"A dwarf's promise takes about as long to say as a sneeze, and outlasts the one who made it.",
	},
	["ifo.muse.w20.oath.002"] = {
		"watches two miners end a quarrel with a few low words and a hand laid on the same stone pillar, one after the other, as if the pillar stood witness.",
		"sees a bargain struck between two dwarves without a scrap of paper: each touches the wall, then nods, and the matter is plainly closed for good.",
		"notices a dwarf rest his palm on a column for a moment before giving his word to a customer, the way some folk touch wood.",
	},
	["ifo.muse.w20.oath.003"] = {
		"Soldiers of the human kingdoms bled in the passes of Khaz Modan beside the dwarves, back when the orcs held it. Ironforge counts that as an oath sworn, and it keeps its oaths.",
		"Ink had little to do with how the dwarves joined our Alliance; the Second War did that. Every human who fought to free these mountains is still, to them, a promise kept.",
	},
	["ifo.muse.w20.oath.004"] = {
		"Every guard on every stair swore something to the king once. You can see it in how they stand: not stiff, just long done arguing with themselves about it.",
		"Whatever words the guards swear to the High Seat, they've worn them in like boots. Nobody in this city stands watch as if it were only a job.",
	},
	["ifo.muse.w20.oath.005"] = {
		"Careful what you promise in Ironforge. Somebody always remembers, and usually somebody writes it down.",
		"Never tell a dwarven shopkeeper 'I'll be by for it later'. He'll keep it for you, and he'll keep count.",
	},
	["ifo.muse.w20.oath.006"] = {
		"An old smith told me the kings of Ironforge take their oath with a hand on an anvil, not a book. I can't vouch for it. I like it too much to check.",
		"The story in the forges is that a new king swears with one hand on the anvil while the hall strikes it once to seal the words. True or not, the smiths tell it as if they'd held the hammer.",
	},
	["ifo.muse.w20.oath.007"] = {
		"Even Mekkatorque, they say in Tinker Town, lowers his voice when he speaks of the king. Some debts quiet even a gnome.",
		"The High Tinker owes Magni shelter for a whole people, and both of them know it. I hear they never mention it, which is how you can tell how large it is.",
	},
	["ifo.muse.w20.oath.008"] = {
		"Dwarves rarely say 'I will'. They say 'I'll see', or 'aye, probably'. In a city where a promise is iron, nobody spends one carelessly.",
		"I've noticed the dwarves almost never promise anything outright. 'Maybe' is as far as most will go. A plain 'yes' is worth gold in this city, and they hoard it accordingly.",
		"Ask a dwarf for a favor and you'll get 'might do'. Ask again later and you'll find it done. The promise was never the part they cared about.",
	},
	["ifo.muse.w20.oath.009"] = {
		"watches a dwarf in freshly polished mail kneel at the foot of the throne, say a few words too low to carry, and rise looking a hand's width taller.",
		"stays respectfully back while someone at the dais swears an oath to the king; the guards don't stir, but every one of them seems to be listening.",
	},
	["ifo.muse.w20.oath.010"] = {
		"In Ironforge I keep my word polished. These people have long memories and short tempers.",
		"I'd sooner break a leg here than a promise. The leg would mend faster, and the dwarves would forgive it sooner.",
	},
	["ifo.muse.w20.plate.001"] = {
		"In the Military Ward every bench seems to hold a guard working oil into a joint of plate with a rag gone black. They talk while they do it, but the hands never stop.",
		"Soot is the true enemy of the Ironforge Guard. Troggs come now and then; the forge's grime settles into every joint of their plate without fail, and they fight it with a rag and a tin of oil.",
	},
	["ifo.muse.w20.plate.002"] = {
		"glimpses a guard in a side passage with the helm off for once, scratching furiously at a beard flattened by hours under the cheek-guards.",
		"spots a guard lifting a visor to rub at the red line the padding has pressed across the brow, then lowering it with a grunt, like someone shutting up shop.",
	},
	["ifo.muse.w20.plate.003"] = {
		"A human at the armorer's is trying on a dwarven breastplate. It fits beautifully, from his collarbone to roughly his navel.",
		"A night elf asked the armorer for a helm in her size. He measured her twice, wrote down a figure and quoted a price that included, by the sound of it, a new anvil.",
		"A gnome and a human stood side by side at the armorer's counter, and he sent them both off with the same advice: grow toward the middle.",
	},
	["ifo.muse.w20.plate.004"] = {
		"Some of the guards keep a dent in their plate and won't have it beaten out. The armorers grumble, and hammer around it.",
		"There's a guard whose breastplate carries one ugly dent nobody is allowed to fix. The armorers work around it the way a mason works around an old tree root.",
	},
	["ifo.muse.w20.plate.005"] = {
		"stops to watch a dwarf roll a shirt of mail around inside a barrel of sand, the hiss and rattle of it scouring the rust away the old way.",
		"lingers beside an armorer's boy turning the crank of a sand barrel, from which comes a steady chatter of mail being scoured bright.",
	},
	["ifo.muse.w20.plate.006"] = {
		"How do the guards climb these stairs in all that plate? My knees hurt just thinking about it.",
		"Full plate, all those stairs, every single watch. No wonder the dwarves have such legs.",
	},
	["ifo.muse.w20.plate.007"] = {
		"Inside every helm in the Military Ward is a lining stitched by hand, and from what I hear most guards stitch their own. Nobody else is trusted with what sits against their skull for a whole watch.",
		"A guard sat beside me re-stitching the padding of his helm with thick thread and great care. 'You can borrow a lot of things,' he said, without looking up. 'Not this.'",
	},
	["ifo.muse.w20.plate.008"] = {
		"A suit of plate stands empty against one wall of the Military Ward, polished like the rest. The guards say it belonged to someone who held the gate in the siege, and that it's cleaned every day because he'd have wanted it so.",
		"The guards keep an empty set of armor oiled and upright in the Military Ward, they tell me, for one of their own who never came back from the gate. Nobody stops in front of it. Everybody walks past it a little slower.",
	},
	["ifo.muse.w20.plate.009"] = {
		"bites back a grin as a gnome comes out of the armorer's in a dwarven helm that rests comfortably on both shoulders, peering out of it like a sentry from a very small tower.",
		"steps around a gnome being fitted for plate on top of a crate, while two dwarves argue over whether to cut the greaves down or simply hand over a smaller dwarf's.",
	},
	["ifo.muse.w20.plate.010"] = {
		"Old plate takes the shape of its owner, the armorers say: a scuff at the hip where the elbow rests, a sheen at the knee from kneeling. Hand them a breastplate and they'll tell you how its wearer stood.",
		"An armorer here can read a set of plate like a letter. Wear on the left knee, a scrape low on the right side: this one knelt often, and kept a wall at his right.",
	},
	["ifo.muse.w20.plate.011"] = {
		"walks past the racks here in the Military Ward, where rows of helms sit on wooden pegs like a silent audience waiting for the show to start.",
		"passes a long rack of polished helms, each on its own peg with a name scratched beneath it, and notices one peg standing empty.",
	},
	["ifo.muse.w20.plate.012"] = {
		"Smells like oil and leather over there. Somebody's spending a long, careful hour with their armor.",
		"If I stand still near the Military Ward long enough, someone will try to polish me.",
		"Every guard I pass smells faintly of oil and polish. It's practically the city's perfume.",
	},
	["ifo.muse.w20.plate.013"] = {
		"Every guard in this city clanks on a slightly different note. Give me a week and I could name them blindfolded.",
		"Listen: that clank's a guard with a loose greave. His sergeant will mention it before I can.",
	},
	["ifo.muse.w20.post.001"] = {
		"The mailboxes of Ironforge wear little hammered hoods over their slots, to keep the soot out. Even the post here is dressed for the forge.",
		"Every mailbox in the city has a lip of iron over the slot like the brim of a helmet. The soot gets in regardless. A letter from Ironforge arrives with a gray fingerprint on it, whoever sent it.",
	},
	["ifo.muse.w20.post.002"] = {
		"A letter opened in Ironforge still smells for a moment of where it was written: green leaves from Darnassus, wet stone from Stormwind. Give it an hour and it smells of coal like everything else.",
		"The post carries a little of every city in its folds, and Ironforge takes it away within the hour. Whatever a letter smelled of when it arrived, it ends up smelling of forge.",
	},
	["ifo.muse.w20.post.003"] = {
		"watches a dwarf push a parcel into a mailbox, then stand waiting with his hand out, as if the box might yet give him a receipt.",
		"sees a dwarf post a letter, rap the mailbox twice with his knuckles and lean in close to listen, apparently to make sure it went down properly.",
		"catches a gnome posting a letter and then peering into the slot after it with one eye, as if hoping to learn how the trick is done.",
	},
	["ifo.muse.w20.post.004"] = {
		"Who carries the post out of a mountain? Nobody I've asked knows. The dwarves say 'the post' the way they say 'the mountain': a thing that is simply there and needs no explaining.",
		"A letter dropped in a box here reaches Darnassus before I could walk to the gate. I asked a clerk how. He said 'it's the post', in the tone of someone explaining that water is wet.",
	},
	["ifo.muse.w20.post.005"] = {
		"A young dwarf has waited by the mailbox long enough to have counted all its rivets, a small parcel held behind his back. Whoever is late, I hope they come.",
		"Someone is plainly waiting for someone near the mailbox: smoothing his beard, checking a parcel, smoothing the beard once more. I've no idea who he's waiting for. I find I'm on his side.",
	},
	["ifo.muse.w20.post.006"] = {
		"Cash on delivery: a letter that bills you for opening it. Whoever came up with that had a banker's soul and a gnome's nerve.",
		"A parcel you have to pay for before you can see inside it. That's not post. That's a dare.",
		"Cash on delivery. The only letter polite enough to bring you the bill in person.",
	},
	["ifo.muse.w20.post.007"] = {
		"notices an elderly dwarf reading a letter at arm's length, then farther, then handing it to a passing gnome, who reads it out to him in a voice that carries halfway round the hall.",
		"watches a gray-bearded dwarf squint at a letter held as far off as his arms allow, give up, and ask a stranger to read it, scowling at every word as though the stranger had written it.",
	},
	["ifo.muse.w20.post.008"] = {
		"A dwarven letter is mostly signature: the name, the father's name, the clan, the hold, a flourish. The message itself would fit between two thumbs.",
		"I glimpsed a dwarf's letter over his shoulder. Four lines of greeting, six of signature and lineage, and in the middle, the actual news: 'Roof holding.'",
	},
	["ifo.muse.w20.post.009"] = {
		"Out of sheer habit I still head my letters with the old workshop's address in Gnomeregan, then strike it through and write 'Tinker Town' underneath. Every letter I send carries one small scar at the top.",
		"Every letter of mine begins with a crossed-out line: the old address, the one under the troggs now. I could start on a fresh sheet. I never quite do.",
	},
	["ifo.muse.w20.post.010"] = {
		"Write to me in Ironforge. Sooner or later everyone passes through, and the post seems to know it.",
		"Of all the mailboxes in the world, this city's get the most use. Everyone comes through eventually, if only for the bank.",
	},
	["ifo.muse.w20.post.011"] = {
		"pauses while a dwarf seals a letter with a fat blob of wax and presses a ring into it so hard that the letter will likely arrive with a dent.",
		"looks on as a dwarf warms a stick of sealing wax at a lamp flame, drips a generous seal onto a letter, and stamps it with a ring the size of a walnut.",
	},
	["ifo.muse.w20.post.012"] = {
		"A miner beside me posted half his wages to someone in Kharanos the moment he was paid, before he could get anywhere near the tavern. The only way, he said, for any coin to leave Ironforge alive.",
		"The mailboxes nearest the tavern do brisk business on payday: miners sending coin to Kharanos before the ale can get to it. Prudence, posted in a hurry.",
	},
	["ifo.muse.w20.post.013"] = {
		"Posted. Too late to make it kinder now, or sharper. The box has it.",
		"There it goes. Whatever I wrote, the mountain has it now.",
	},
	["ifo.muse.w20.post.014"] = {
		"waits a turn at the mailbox outside the bank behind a gnome who draws out letter after letter, each one making her a little more severe.",
		"stands in line for the mailbox near the Vault while a dwarf ahead collects parcel after parcel, stacking them on the floor in a wall that soon passes his own height.",
	},
	["ifo.muse.w20.powder.001"] = {
		"The gunsmiths weigh their powder on little brass scales, a pinch at a time, tongues between their teeth. For people who love a loud noise, they're very quiet about making one.",
		"Measuring black powder is the only time I've seen a dwarf work slowly. The scale, the pinch, the frown, one pinch more. Then a nod, and the paper twisted shut.",
	},
	["ifo.muse.w20.powder.002"] = {
		"Rule of this city: if a dwarf says 'stand back', you're already standing too close.",
		"When a gunsmith says 'nearly ready', find something solid to stand behind.",
		"If a gunsmith's apprentice starts walking briskly away from something, I follow. Briskly.",
	},
	["ifo.muse.w20.powder.003"] = {
		"catches a drift of white smoke rolling lazily out of the Military Ward, sharp with sulfur, and the distant sound of somebody pleased with a result.",
		"picks up the rotten-egg bite of spent powder drifting along the hall, a smell that follows the gunsmiths' customers out the door like a faithful dog.",
	},
	["ifo.muse.w20.powder.004"] = {
		"The wall behind the gunsmiths' targets is pitted with a thousand small craters. Somewhere among them, I suspect, is the one shot each dwarf in this city pretends never happened.",
		"Every pit in that target wall is somebody's miss. The dwarves walk past it without looking, the way you'd walk past a list of your own debts.",
	},
	["ifo.muse.w20.powder.005"] = {
		"A rifle on the gunsmith's rack has a stock worn pale where a cheek rested on it for years. Whoever it belonged to took aim a great many times, and isn't taking it anymore.",
		"Secondhand rifles hang at the back of the gun shop, their stocks rubbed smooth by other people's cheeks. The gunsmith doesn't say whose. I don't ask.",
	},
	["ifo.muse.w20.powder.006"] = {
		"Is it me, or does everyone near the gun shop talk a little louder?",
		"Half the gunsmiths in this city answer 'what?' before you've finished the question.",
		"The gunsmith's apprentice just made me repeat myself three times. Hazard of the trade, I think.",
	},
	["ifo.muse.w20.powder.007"] = {
		"stands well aside as two dwarves carry a small powder keg down the hall between them, as gently as a basket of eggs, glaring at anyone who comes within an arm's length.",
		"notices how the crowd parts without a word for a dwarf carrying a keg daubed with a red mark, and closes again only once he's well past.",
	},
	["ifo.muse.w20.powder.008"] = {
		"The gunsmiths will tell you a dwarf invented the rifle. The gnomes of Tinker Town will tell you who made it work. Both stories end in an argument.",
		"Ask who first packed powder into a barrel and a dwarf will name a clan, a gnome will name a cousin, and they'll raise their voices about it until a smith sends them off to settle it elsewhere.",
	},
	["ifo.muse.w20.powder.009"] = {
		"A gunsmith holds a barrel up to the nearest lamp and squints down it like a sailor at a far coast. Whatever he sees in there makes him grunt and reach for the brush.",
		"I watched a dwarf peer down a rifle barrel at a lamp for a full minute, then hand it back to its owner with one word: 'Shameful.' The owner took it like a sentence from a judge.",
		"Gunsmiths here inspect a barrel by lamplight, one eye shut and the other unblinking. I've had my conscience looked at less carefully.",
	},
	["ifo.muse.w20.powder.010"] = {
		"I'd wager the powder is kept as far from the Great Forge as this city allows. Nobody told me so; you can work it out from where the gunsmiths refuse to light their pipes.",
		"A city built around a river of fire, and somewhere in it, behind thick doors, the powder. Even dwarves know some neighbors shouldn't share a wall.",
	},
	["ifo.muse.w20.powder.011"] = {
		"A dwarf just offered to let me fire his rifle 'for the experience'. I'm told the experience includes a bruise the shape of the stock.",
		"I've been invited to try a dwarven rifle. The last one who accepted is rubbing a shoulder over there and smiling far too bravely.",
	},
	["ifo.muse.w20.powder.012"] = {
		"The dwarves build a rifle to last a lifetime; we build one to be improved by lunch. Between the two of us, half the Alliance is armed and the other half is waiting for the next model.",
		"A dwarven gunsmith asked a gnome at his counter why one rifle needed three sights. 'For when one breaks,' said the gnome. I've never been prouder of my people.",
	},
	["ifo.muse.w20.powder.013"] = {
		"pauses beside a gunsmith's apprentice pouring lead into a mold, each little ball dropped hissing into a bucket of water and counted aloud in a mutter.",
		"stops near a workbench where a dwarf sorts rifle balls by eye, flicking the slightly lopsided ones into a dish set aside for melting down.",
	},
	["ifo.muse.w20.quench.001"] = {
		"flinches at the shriek of hot steel plunged into a quench trough, then watches the cloud of steam roll up the wall and thin out against the stone.",
		"turns at a sharp hiss from the nearest forge, where a smith holds a red bar under the water until the boiling stops and the steam drifts off in rags.",
	},
	["ifo.muse.w20.quench.002"] = {
		"Every smith has an opinion about the quench. Water, oil, brine; one old dwarf swears by water drawn from a particular spring in Dun Morogh and will not say which.",
		"Brine, says one smith. Oil, says the next. The third won't tell me what's in her trough at all, only that her grandmother's grandmother used the same.",
		"Ask about quenching at the forge and you start a quarrel older than the city. Water is honest, oil is gentle, and the dwarf who uses neither just smiles.",
	},
	["ifo.muse.w20.quench.003"] = {
		"A small sound in the steam, like a bell struck with a fingernail. The smith pulls the piece out, looks at the crack, and drops it into the scrap bin without a word.",
		"The bar went into the trough whole and came out with a hairline crack you could barely see. The smith saw it at once. Hours of work, set aside with one shrug.",
	},
	["ifo.muse.w20.quench.004"] = {
		"Note to self: the barrel by the anvil is not drinking water. The smith's face told me before he did.",
		"I nearly dipped a cup into a quench trough. A smith caught my wrist. Apparently that water has seen things.",
		"Rule of the forge, learned the hard way: the water in the barrels is for the iron. Ask before you wash your face in it.",
	},
	["ifo.muse.w20.quench.005"] = {
		"leans over a quench trough as the steam clears and finds the water skinned with black flakes of scale and a faint oily sheen, turning slowly in the forge-light.",
		"peers into a trough that has just swallowed a piece of hot iron: a scatter of black scale drifting on top, and underneath, the dark shapes of older work lost on the bottom.",
	},
	["ifo.muse.w20.quench.006"] = {
		"Here at the Great Forge the fire comes down from the heights in falling sheets, and the water waits in troughs at the foot of every anvil. The whole craft, a smith told me, is the moment between them.",
		"Fire pours from above, water stands below, and a smith's hand carries the iron from one to the other. Seen from this spot in the Great Forge, it looks less like a trade than a rite.",
	},
	["ifo.muse.w20.quench.007"] = {
		"A gnome walked through a cloud of quench steam and came out the other side with goggles fogged solid. He kept walking, with great confidence, straight into a pillar.",
		"Quenching steam and gnomish goggles do not get along. One went in clear and came out blind, and greeted a pillar on the way out.",
	},
	["ifo.muse.w20.quench.008"] = {
		"watches an apprentice trudge from trough to trough with two dripping buckets, topping each one up and dodging the elbows of the smiths.",
		"steps around a young apprentice hauling buckets to the quench troughs, arms trembling and face set, the water slopping a dark trail behind.",
	},
	["ifo.muse.w20.quench.009"] = {
		"One of the older smiths has a shiny pink patch from wrist to elbow. Steam, says the dwarf beside him: a trough that boiled over long ago. He still quenches with that arm, every time, as if to make a point.",
		"Burns at the forge come from the steam more often than the fire, a journeyman told me, and showed me the smooth scar along his forearm as if it were a medal.",
	},
	["ifo.muse.w20.quench.010"] = {
		"When an apprentice quenches a piece the masters mean to keep, the whole bench goes still for the hiss. No speech, no cheering. Then the hammers start up, a little louder than before.",
		"I saw the forge fall quiet for a single hiss of steam: an apprentice's first piece worth keeping, going into the water. Afterward somebody pressed a cup into her hands, and that seemed to say everything.",
	},
	["ifo.muse.w20.quench.011"] = {
		"Wet iron and steam. This corner of the forge smells like a kettle somebody forgot on the coals.",
		"The air by the troughs tastes of rust and hot water. Like licking a key, but warm.",
	},
	["ifo.muse.w20.quench.012"] = {
		"spots a ram tethered near the forge, watching its own new shoes hiss in the trough with an expression of deep suspicion.",
		"glances at a patient ram waiting by the troughs while its shoes are quenched, its ears flicking back at every hiss.",
	},
	["ifo.muse.w20.quench.013"] = {
		"The stone above the quench troughs is streaked pale where the steam has climbed for longer than anyone remembers, ring over ring, like the marks a cup leaves on a table.",
		"Look up from any trough and the rock overhead is bleached in soft patches, the stain of steam rising from the same spot since before the oldest smith was born.",
		"Above the troughs the rock is stained in pale rings, the slow work of steam. The dwarves carved nothing there. Their water did.",
	},
	["ifo.muse.w20.relic.001"] = {
		"looks at a squat stone figure in a case, its nose rubbed bright by generations of curious thumbs before anyone thought to put glass around it.",
		"notices that the one relic left outside the glass, a worn stone head, has a shine on its nose where visitors could not resist touching it.",
	},
	["ifo.muse.w20.relic.002"] = {
		"Of all the crates the League brings back, the diggers say, the hardest to unpack hold the small things: a clay whistle, a bead, a cup too little for a grown hand.",
		"Scholars who handle crowns and tablets without a tremor go quiet over a clay toy from some dig. Big things are history. Small things were somebody's.",
	},
	["ifo.muse.w20.relic.003"] = {
		"Bring the League a relic and they'll pay you in gratitude and a mention in their next report. Some adventurers frame the mention.",
		"Relics, to the League, are bought in the strangest currency: thanks, a mug of something, and a line in a ledger. Somehow people keep accepting.",
	},
	["ifo.muse.w20.relic.004"] = {
		"One of the League's scholars swears a certain tablet in their keeping is always faintly warm, even unwrapped, even far from any fire. The others blame the forge. He keeps it in felt anyway.",
		"There's a tablet in the League's keeping, its curator insists, that is never quite cool to the touch. His colleagues blame the forge. He has stopped arguing and started wrapping it in wool.",
	},
	["ifo.muse.w20.relic.005"] = {
		"'A relic without its place is just a stone with an opinion,' the League's diggers like to say. They write down where a thing lay before they so much as brush it.",
		"Note the spot, the depth and the facing before you lift a thing: a rule the League's diggers keep, older than most of them. Lift first, and all you've got is a souvenir.",
	},
	["ifo.muse.w20.relic.006"] = {
		"stands aside as two dwarves carry a long crate stamped with the League's mark through the crowd, slow as a procession, hushing anyone who jostles it.",
		"sees a League crate go by on a barrow, packed with straw so deep that of whatever is inside only a corner of carved stone shows.",
		"pauses as a crate bound for the League is set down with enormous care, and a scholar kneels to listen at its side a moment before letting anyone near the nails.",
	},
	["ifo.muse.w20.relic.007"] = {
		"The League keeps Dark Iron pieces too, labeled in the same patient hand as everything else. No adjectives. In this city, that kind of restraint costs something.",
		"Even Dark Iron work gets a case and a tidy card from the League. Not one word of blame on it. The scholars save that for the tavern.",
	},
	["ifo.muse.w20.relic.008"] = {
		"watches a tall visitor stop before a case of carved fragments brought from across the sea, and stay there a long while without reading the card beneath them.",
		"sees a visitor from Kalimdor bend toward a case of worn carvings, lips moving over a word on one of them that no dwarf in the hall could have read aloud.",
	},
	["ifo.muse.w20.relic.009"] = {
		"Recent things go into the League's cases too, as carefully as the deep past: a notched orcish axe-head from the Second War, labeled like a tablet from Uldaman. Give it time, the scholars say.",
		"Among the League's tablets and bones lies a Horde war banner, scorched at one corner and catalogued with perfect calm. To the scholars, yesterday is simply tomorrow's antiquity.",
	},
	["ifo.muse.w20.relic.010"] = {
		"Asked a curator how old a relic was. 'Older,' he said, and went back to his notes. Down here that counts as an answer.",
		"In the League's ledgers there are only three ages: old, older, and 'don't touch that.'",
		"'How old?' I asked. The curator looked at me as if I'd asked how wet the sea is.",
	},
	["ifo.muse.w20.relic.011"] = {
		"Not everything the League finds can travel. From Uldaman they bring back rubbings: paper pressed to the walls and blackened with charcoal until the carvings show through, pale, like the ghost of the wall.",
		"The walls of Uldaman stay where they are, so the League carries home their shadows: sheets rubbed with charcoal over the carvings, then rolled and labeled like fine cloth.",
	},
	["ifo.muse.w20.relic.012"] = {
		"Somewhere in the League's cases sits a stone chisel dug out of Uldaman, and the scholars say it lies in a dwarf's grip as if it were made for it. I'd like to hold it once. I'm not sure I'd want to put it down.",
		"Every dwarf who picks up that old chisel from the dig goes quiet, they say, because it fits. Our hands have been this shape for longer than our names have been the same.",
	},
	["ifo.muse.w20.relic.013"] = {
		"Don't lean on the glass, they said. I wasn't leaning. I was being supportive.",
		"A curator just asked me to step back from a case. One step. He measured it.",
	},
	["ifo.muse.w20.rune.001"] = {
		"A mage walks the edge of the Mystic Ward now and then, tracing old marks in the floor with one fingertip, renewing something nobody else can see. The dwarves step over the lines without looking down.",
		"There are lines worked into the floor at the thresholds of the Mystic Ward, faint as old scratches. A gnome mage checks them with a brass lens and a frown, and whatever she sees satisfies her.",
		"Old marks run along the thresholds of the Mystic Ward, nearly worn away. A mage renews them with chalk and patience, and the passing dwarves lift their boots over the fresh lines as neatly as over a cart rail.",
	},
	["ifo.muse.w20.rune.002"] = {
		"The sounds of the mages' corner of the Mystic Ward, as far as I can tell: a soft thump, a puff of something violet, and a voice saying 'that's fine, that's fine'. Nobody else ever turns round.",
		"From among the mages, now and then, a small bang, a smell of hot pennies and a long sigh. The priests next door never so much as lift a quill.",
	},
	["ifo.muse.w20.rune.003"] = {
		"watches a mage light a dwarf's pipe with a snap of two fingers, and the dwarf grunt a thanks as if it were the most ordinary favor in the world.",
		"sees a robed gnome warm a dwarf's mug of cold tea between two palms until it steams, and the dwarf accept it with a gruff nod.",
	},
	["ifo.muse.w20.rune.004"] = {
		"The Light doesn't care how well you pray, a dwarf priest told me, only whether you get up afterward and mend what you broke. Then he went back to mending a chair.",
		"Ask a dwarven priest what the Light wants and you'll get a short answer: honest work and a straight back. Then he hands you a broom, in case you meant to help.",
		"'The Light likes a tidy shop,' a dwarven priest told me, sweeping. I think it was half a joke. I don't know which half.",
	},
	["ifo.muse.w20.rune.005"] = {
		"lingers near a dwarf paladin polishing a breastplate on a bench here in the Mystic Ward with slow, even strokes, murmuring something that sounds less like a prayer than a conversation.",
		"pauses beside a paladin working a dent out of a gauntlet, who keeps up a low murmur to the steel as if it might answer.",
	},
	["ifo.muse.w20.rune.006"] = {
		"I don't pray much. But I stop in the Mystic Ward when I pass, and stand a moment where the light falls, and come out with my shoulders squarer. The Light and I keep it plain.",
		"The Light, to my mind, is like the mountain: you needn't see all of it to lean on it. I lean, now and then, in the Mystic Ward, and nobody asks me why.",
	},
	["ifo.muse.w20.rune.007"] = {
		"The Light sounds different in a dwarven voice: rougher, shorter, more like a promise between workmen. It's the same Light. I find I like hearing it this way.",
		"In Stormwind the Light is sung under high windows. Under this mountain it's spoken over a mug, plainly, between two people. I think the Light minds neither.",
	},
	["ifo.muse.w20.rune.008"] = {
		"Dwarven paladins carry hammers. Of course they do. I'd worry if they didn't.",
		"A paladin of Ironforge without a hammer would look like a smith without a beard. It isn't done.",
	},
	["ifo.muse.w20.rune.009"] = {
		"The oldest priests in the Mystic Ward were young when the orcs held Khaz Modan, an acolyte told me. They kept the healing halls open the whole while, and still won't say more about it than 'it was busy'.",
		"Ask an old priest of Ironforge about the Second War and you get two words: 'long' and 'busy'. Then a look at the floor, where the cots must have stood in rows.",
		"The oldest healers in the city keep their cots in rows narrower than they need to be. Habit, an acolyte told me, from the years when the orcs held Khaz Modan and every hand of floor was a bed.",
	},
	["ifo.muse.w20.rune.010"] = {
		"The dwarves let the mages have their corner of the Mystic Ward and watch it the way they'd watch a forge with a crack in the hearth: respectfully, from a step further back than usual.",
		"A dwarf will stand beside molten iron without blinking and still edge away from a mage at work. Iron, at least, does what it's told.",
		"Dwarves trust what they can hammer. The mages of the Mystic Ward work in something you can't hammer, and the dwarves have never quite forgiven them for it.",
	},
	["ifo.muse.w20.rune.011"] = {
		"sees a priest lay a hand on a wailing dwarf child's scraped knee: a brief gold glow, a sniff, and the child is off and running before the priest has stood up.",
		"catches a flicker of gold where a priest kneels beside a gnome with a burned hand, then the gnome's relieved, rapid thanks, three sentences at once.",
	},
	["ifo.muse.w20.rune.012"] = {
		"A mage told me magic is a trade like smithing. Smiths, I notice, keep their eyebrows.",
		"Magic is a trade like any other, says the mage with half a sleeve missing.",
	},
	["ifo.muse.w20.scholar.001"] = {
		"watches a League scholar pat every pocket for his spectacles while two pairs sit pushed up into his hair and a third hangs from a cord at his neck.",
		"notices a gray-bearded scholar peering at a merchant's price card through a lens on a stick, then through a second lens, then giving up and asking.",
		"hides a smile as a League scholar walks into a pillar while reading, apologizes to it, and walks on.",
	},
	["ifo.muse.w20.scholar.002"] = {
		"League scholars never shout at each other. They do something worse: they publish. A feud in the League can run for decades entirely in footnotes.",
		"Two League scholars just passed each other on a stair with the politest nod in Ironforge. I'm told they've been savaging each other's books for twenty years.",
	},
	["ifo.muse.w20.scholar.003"] = {
		"Brann Bronzebeard is the League's most famous explorer and its least-seen member. The scholars talk about him the way miners talk about a rich seam: always somewhere else.",
		"Ask the League where Brann Bronzebeard is and you'll get five answers, all confident, all on different continents.",
	},
	["ifo.muse.w20.scholar.004"] = {
		"notices the leather pads strapped to a passing dwarf's knees, scuffed through to the wool beneath: a League digger, or someone who drops a great many coins.",
		"spots a League scholar by the giveaways: patched knees, a pencil behind each ear, and a little brush tucked in the boot where anyone else would keep a knife.",
		"notices the telltale callus of a League clerk, a hard ridge on the middle finger where a pen has rested for half a century.",
	},
	["ifo.muse.w20.scholar.005"] = {
		"Rule of this city: never ask a League scholar a yes-or-no question. You'll get the whole lecture, and the answer will be 'it depends.'",
		"I asked a scholar whether a thing was old. The answer has reached its third chapter and I'm still not sure.",
		"League scholars answer 'how old' in centuries, 'how far' in strata, and 'how are you' with a written report.",
	},
	["ifo.muse.w20.scholar.006"] = {
		"A smith asked a League scholar what use the past was. The scholar asked what the smith's hammer was made of, and where the first one came from. They're still at it, and both have ordered another round.",
		"Scholars and smiths share the same tables in this city and look at the same stone differently: one sees what it could become, the other what it has been.",
	},
	["ifo.muse.w20.scholar.007"] = {
		"In the corner a League scholar is murmuring to a cracked stone head on her desk, asking it questions and pausing for answers. Nobody here finds that odd, and after a while neither do I.",
		"One scholar reads aloud to a tablet as if it might correct her pronunciation. The others work around her murmur the way the city works around the forge.",
	},
	["ifo.muse.w20.scholar.008"] = {
		"Would I care, a League dwarf just asked, to carry a shovel to the Badlands for the glory of history? I asked about pay. He looked wounded.",
		"Strong arms and a weak will: the League's recruiters can spot both at fifty paces. I'm walking faster.",
	},
	["ifo.muse.w20.scholar.009"] = {
		"A digger told me the League keeps a list of its own who went out to dig and stayed in the ground. A name goes on it with the same care as a catalogue entry, and that care is the whole of the eulogy.",
		"When a digger doesn't come home, the League files the last letter with the finds. It's the only way they know to say the work was worth it.",
	},
	["ifo.muse.w20.scholar.010"] = {
		"pauses near a League scholar explaining something to a ring of dwarf children with a chunk of rock and enormous gestures; the children are watching the gestures.",
		"smiles as a scholar holds out a fossil to a small gnome, who turns it over, sniffs it, and asks whether it is edible.",
		"sees a dwarf child press her nose to the side of a League crate as it rolls past, as if the past might show between the planks.",
	},
	["ifo.muse.w20.scholar.011"] = {
		"The Explorers' League has the king's favor, and the scholars wear it lightly, the way a miner wears a good lamp: they'd be lost without it, and they'd never say so.",
		"Magni's own brother is a League man, and the scholars never once mention it, unless someone tries to cut their funding.",
	},
	["ifo.muse.w20.scholar.012"] = {
		"Every one of us in the Alliance owes the League something: a map, a warning, a road made safe. They'd never send a bill. A margin note, at most.",
		"Half the Alliance's armies got where they needed to be on League maps. Not a single banner thanks them. That suits scholars, and sits a little wrong with the rest of us.",
	},
	["ifo.muse.w20.scholar.013"] = {
		"Human scholars ride up on the tram from Stormwind to read in the League's collections, and go back blinking, ink to the elbows, with more questions than they brought.",
		"A thin human in a scholar's coat is arguing over a date with a dwarf twice his width, and winning, to the dwarf's visible delight.",
	},
	["ifo.muse.w20.scholar.014"] = {
		"League scholars call it 'the field.' The field is anywhere with no chairs and something trying to eat you.",
		"'Fieldwork,' the scholars call it, fondly. The diggers have a shorter word.",
	},
	["ifo.muse.w20.scholar.015"] = {
		"At this hour the crowds thin and the scholars surface: reading lamps lit over open books in the Hall of Explorers, long after the merchants have shuttered their stalls.",
		"Deep into the night the League's reading lamps are still burning. Dwarves who would never stay up for a feast will stay up for one smudged line of runes.",
	},
	["ifo.muse.w20.shade.001"] = {
		"The poison-seller of the Forlorn Cavern keeps no labels on the jars. 'You'll know by the smell,' I was told. I'd hoped never to know by the smell.",
		"Unlabeled jars, a seller who says 'smell it' and a smile I didn't care for. The poison trade in Ironforge is a very personal business.",
		"'Smell it,' said the poison-seller, holding out a jar. I said I'd take his word for it. He seemed disappointed in me.",
	},
	["ifo.muse.w20.shade.002"] = {
		"watches a hooded instructor lift a purse from a student's belt, show it, and hang it back on before the student has finished turning round.",
		"catches the tail end of a lesson in some dim corner of the city: a key taken from a student's pocket and set on the student's own palm, with a dry 'once more'.",
	},
	["ifo.muse.w20.shade.003"] = {
		"Now and then a warlock's imp sits sulking near the Forlorn Cavern, kicking at the stone, while dwarf children work up the nerve to poke it. My coin is always on the imp.",
		"Imps in Ironforge. The warlocks keep them close in the Forlorn Cavern, and the dwarves give them the look they'd give a rat in the larder that talks back.",
	},
	["ifo.muse.w20.shade.004"] = {
		"Here in the Forlorn Cavern the warlocks are tolerated, not welcomed. You can tell by how the guards stand: not closer, not farther, just exactly within reach.",
		"The warlocks in this cavern are suffered rather than welcomed. Nobody says so. The guard who stands at its mouth, arms folded, says it for everybody.",
		"The city leaves its warlocks to this cavern the way a smith leaves a cracked crucible at the edge of the bench: useful, watched, and never near the good iron.",
	},
	["ifo.muse.w20.shade.005"] = {
		"A dwarf muttered a single word as a warlock went by: 'Thaurissan'. In Ironforge that is the whole argument against meddling with what burns below.",
		"Every dwarf in this city learns young what happened when a Dark Iron king called on powers he couldn't hold. So the warlocks of the Forlorn Cavern get a long look and a wide berth, and nobody calls that unfair.",
	},
	["ifo.muse.w20.shade.006"] = {
		"Pockets on the inside, eyes on the outside. That's the rule in the Forlorn Cavern.",
		"Keep your coin close in the Forlorn Cavern, and your questions closer.",
		"Rule one of the Forlorn Cavern: whoever's smiling at you has already counted your pockets.",
	},
	["ifo.muse.w20.shade.007"] = {
		"steps around a thin green smoke curling from a workbench in the cavern, where someone in heavy gloves stirs a very small pot very carefully.",
		"keeps a respectful distance from a bench where gloved hands decant something oily from one vial to another, without spilling a drop and without looking up.",
	},
	["ifo.muse.w20.shade.008"] = {
		"Some of us came out of Gnomeregan wanting to build. Some came out wanting never to be caught unawares again. You'll find the second sort in the Forlorn Cavern, and I don't blame them.",
		"After Gnomeregan, not every gnome went back to the workbench. Some went to the Forlorn Cavern to learn quieter trades. A city of ours fell because nobody was watching below; I understand the impulse.",
	},
	["ifo.muse.w20.shade.009"] = {
		"sees a cloaked figure here in the Forlorn Cavern read a folded note twice, hold one corner to a lamp, and watch it burn down to the fingertips.",
		"follows a note from hand to hand in the cavern until it is read once and fed to a lamp flame without a word, the ash brushed off onto the stone.",
	},
	["ifo.muse.w20.shade.010"] = {
		"Every city has a dim corner where certain trades are learned. Most cities pretend not to. Ironforge, being dwarven, carved one on purpose and gave it a name.",
		"The dwarves don't pretend their city has no need of quiet knives and careful hands. They gave those trades a cavern of their own, and a name nobody pretends is pretty.",
		"Ironforge keeps a place for the quiet trades the way a careful household keeps a key nobody talks about. Everybody knows which drawer.",
	},
	["ifo.muse.w20.shade.011"] = {
		"A priest of the Mystic Ward told me that every light throws a shadow, the Light included, and a priest had better know both. He said it lightly. I haven't stopped thinking about it.",
		"Some of the priests in the Mystic Ward study the dark as carefully as the bright. 'You can't mend what you won't look at,' one told me, and went back to a book with no title on its spine.",
	},
	["ifo.muse.w20.shade.012"] = {
		"notices a guard and a warlock's hulking blue servant standing a few paces apart by a pillar, both perfectly still, neither looking at the other, like two posts holding up the same quarrel.",
		"watches a guard and a warlock's summoned brute wait out each other's company against a wall, the guard's thumb tapping the haft of a hammer, the brute not blinking at all.",
		"sees an imp at a warlock's heel pull a rude face at a passing guard, and the guard answer, without slowing, with a much older and much ruder one.",
	},
	["ifo.muse.w20.shelf.001"] = {
		"notices that the shelves here end where a dwarf's arm does, so every tall visitor ends up reading bent double, like a heron fishing.",
		"cranes up at a gnome climbing a library ladder three times her height with a book under one arm, who comes down with two more.",
	},
	["ifo.muse.w20.shelf.002"] = {
		"Dwarven books come with iron corners and brass clasps. Even their libraries wear armor. I'd hate to meet whatever the pages are being protected from.",
		"Only dwarves would put rivets on a book. Drop one of these on a foot and you'll learn something, though not from the text.",
		"A dwarven book shuts with a clank, and the clasp locks itself. In this city, knowledge is kept the way coin is.",
	},
	["ifo.muse.w20.shelf.003"] = {
		"Some of the League's books are chained to their shelves. A scholar swears one walked off to Stormwind inside a visiting professor's coat and came back three seasons later, wrapped in an apology.",
		"Chains hold the League's rarest volumes to the shelf. Nobody minds them. Everyone remembers why they went on, though the stories differ on who was to blame.",
	},
	["ifo.muse.w20.shelf.004"] = {
		"runs an eye along a rack of clay and stone tablets stored on their edges like plates in a kitchen, each with a paper tag tied to it by a thread.",
		"pauses beside a shelf where the books give way to tablets, stood on edge in a long wooden rack, their tags stirring faintly in the warm air.",
	},
	["ifo.muse.w20.shelf.005"] = {
		"To borrow a League book, I hear, you sign a ledger, show both hands clean and swear an oath about soup. Nobody will explain the soup.",
		"Books leave the League the way gold leaves a bank: ledger, witness, a long hard look. Then the book is handed over like a sleeping infant.",
	},
	["ifo.muse.w20.shelf.006"] = {
		"There's a gap on one of the League's shelves that nobody fills, I'm told. The slip in it names a borrower who took the book out before the Second War and never brought it back. The librarians dust around it.",
		"One slot in the League's library is left empty on purpose, the scholars say: the book went out with a digger who never came home. The slip is still there, in his writing.",
	},
	["ifo.muse.w20.shelf.007"] = {
		"turns to follow a gnome hurrying by with an armful of League books and a brass lens strapped over one eye, reading the top one as she walks.",
		"makes way for a gnome with her nose in a League book, who steers by some instinct around every pillar and every dwarf.",
		"steps around a dwarf reading on a bench with a League book held at arm's length, the way some folk hold a letter from a creditor.",
	},
	["ifo.muse.w20.shelf.008"] = {
		"The League allows no candles near its shelves. In a city built around a river of molten iron, the one fire anybody fears is a dropped wick.",
		"Lamps behind thick glass, and not a candle in sight: that is the League's rule for its books. A city of fire, and its scholars are the only folk in it afraid of a flame.",
	},
	["ifo.muse.w20.shelf.009"] = {
		"Half the League's library is about rocks. The other half is about where the rocks came from. There's a slim shelf of poetry in a corner, mostly about rocks.",
		"I asked what a League scholar reads for pleasure. Geology, it turns out, but with the good parts underlined.",
	},
	["ifo.muse.w20.shelf.010"] = {
		"leans over a reading desk where a page of angular runes copied from Uldaman lies under three rows of dwarven guesses, each in a different ink, all crossed out but the last.",
		"glances at a copy of some ancient carving pinned to a desk, ringed with notes in a dozen hands, every one of them beginning with 'perhaps.'",
	},
	["ifo.muse.w20.shelf.011"] = {
		"The League's catalogue is a book so large it has a table of its own, and a dwarf whose only work is to turn its pages without tearing them.",
		"Somebody in the League keeps the catalogue: one enormous book listing all the others. I'd love to know under which heading it lists itself.",
	},
	["ifo.muse.w20.shelf.012"] = {
		"Gnomeregan's surviving books have a shelf of their own in the League's library. It's a short shelf. Most of what we wrote down is still below, in the bad air, read by no one.",
		"When the city fell, our engineers saved schematics, not stories. The League keeps the few gnomish histories that made it out, and I can't pass that shelf without counting them.",
	},
	["ifo.muse.w20.shelf.013"] = {
		"The librarian didn't say a word. Her eyebrows said 'clean hands', 'no ale' and 'I know where you sleep', all at once.",
		"Reading in the League's library costs nothing. Damaging a page costs everything. The librarian explained this with one eyebrow.",
	},
	["ifo.muse.w20.shift.001"] = {
		"Nobody here asks how you slept. They ask which shift you're on, and work the rest out for themselves.",
		"In this city 'which shift?' means hello, how are you and where are you off to, all at once.",
	},
	["ifo.muse.w20.shift.002"] = {
		"watches two carters change over at a loaded cart in the middle of the hall: one lets go of the shafts, the other takes them up, and the cart never stops rolling.",
		"sees a carter hand a heavy cart on to the next without either of them letting it slow, a swap done so often it no longer needs a word.",
	},
	["ifo.muse.w20.shift.003"] = {
		"A dwarf told me the bunks in the miners' lodgings never get the chance to cool: one shift climbs out, the next climbs in. He seemed to think that was a selling point.",
		"In the crowded lodgings, I'm told, a bed is let by the shift, three sleepers to a day, and the blanket never has time to go cold. Thrifty. Also faintly alarming.",
	},
	["ifo.muse.w20.shift.004"] = {
		"No lamp here is ever let go out, and the forge never dims. So the city makes its days out of shifts, laid end to end with no dark in between.",
		"With only rock overhead to tell them apart, the hours here would run together like poured metal. The shift changes are the seams that keep them separate.",
	},
	["ifo.muse.w20.shift.005"] = {
		"I asked a dwarf the hour. 'Late second shift,' he said, as if anyone could know what that means.",
		"Ask the time under this mountain and you get a shift and a fraction. 'Two-thirds through the first.' Very precise, and no help at all.",
		"I've been told it's 'tail of the third'. I nodded as if I understood. I'll be late for something.",
	},
	["ifo.muse.w20.shift.006"] = {
		"makes way for a file of miners coming off shift, black to the eyes, each one swinging an empty dinner pail that clanks against the next man's knee.",
		"passes a bench where three dwarves fresh off shift sit unlacing their boots in silence, too tired even to argue.",
	},
	["ifo.muse.w20.shift.007"] = {
		"It's always supper for someone in this city. The cookshops never close; they only change which shift they're feeding.",
		"Breakfast, supper, call it what you like: the pots under this mountain never come off the fire. Somewhere, someone is always about to begin a day.",
	},
	["ifo.muse.w20.shift.008"] = {
		"I've heard the end of a shift called out near the Great Forge and passed along by anyone in earshot, hall to hall, fainter each time, until it's only a word somebody mutters by the bank.",
		"The shift call travels the ring by mouth: a smith bellows it, a guard repeats it, a cook half sings it. By the far side it's barely a murmur, and still people put down their tools.",
	},
	["ifo.muse.w20.shift.009"] = {
		"By a doorway there's a slate where a shift chalks its names going out and wipes them coming in. One name has stayed unwiped for a long while now. Nobody touches it.",
		"A slate beside an entrance lists a shift's names in chalk. All wiped off but one, and around that one the slate is kept very carefully clean.",
	},
	["ifo.muse.w20.shift.010"] = {
		"No clock needed under this mountain. Early in a shift the hammers fall even and heavy; near its end they go ragged and start to argue. Any dwarf can hear it.",
		"Strangers ask how we tell the hours in here. By the hammers, of course: steady when a shift is fresh, uneven and cross at its tail. No dwarf ever has to be taught.",
	},
	["ifo.muse.w20.shift.011"] = {
		"catches a yawn from a smith trudging off shift, passes it to a guard without meaning to, and watches the guard pass it on down the stair.",
		"yawns after a passing miner yawns, and sets off a small chain of them along the rail: a cook, a gnome, a guard who pretends it was a cough.",
	},
	["ifo.muse.w20.shift.012"] = {
		"Gnomes keep time by clockwork, dwarves by the shift call. Arrange to meet one of each and you'll wait twice.",
		"Tinker Town's clocks say quarter past. The forges say late second shift. All I know is that I'm late.",
	},
	["ifo.muse.w20.slag.001"] = {
		"steps back to let a slag cart rumble past, its load still ticking and creaking as it cools, a faint red showing in the cracks.",
		"makes way for a dwarf leaning his whole weight into a cart of fresh slag, the lumps in it ticking like a stove after the fire's gone out.",
	},
	["ifo.muse.w20.slag.002"] = {
		"I asked where all the slag goes. Three dwarves gave me three answers, and the fourth said, 'Away,' which I suspect is the true one.",
		"Carts of slag leave the forge all day long, and I have never once seen one come back full or found where it's emptied. Ironforge must have a very deep cupboard.",
		"The slag goes somewhere. Down, a carter said, waving at the floor, as if the mountain had a cellar and was glad to keep it full.",
	},
	["ifo.muse.w20.slag.003"] = {
		"Broken open, a lump of slag isn't dull at all inside. It's glassy, green and black and a sullen blue, like a bottle that's been through a war.",
		"A cracked piece of slag by the cart track catches the forge-light: dark glass inside, shot with green. Rubbish, to every dwarf here. I almost pocketed it.",
		"Every smith kicks the slag aside without a glance, but under the crust it's all dark glass and veins of color. The forge throws away prettier things than most shops sell.",
	},
	["ifo.muse.w20.slag.004"] = {
		"watches a smelter skim the crust from a pool of molten metal with a long iron rake, folding it aside like the skin off hot milk.",
		"follows the slow pull of a skimming rake across the bright surface of a melt, the dull scum gathering at its edge and slopping into a waiting bin.",
	},
	["ifo.muse.w20.slag.005"] = {
		"A smith just called his apprentice's work 'slag with ambitions'. The apprentice took it as a compliment. In this forge it may be one.",
		"'Slag,' says the master, tapping the piece. One word, and the apprentice is back at the coals before the next blow falls.",
	},
	["ifo.muse.w20.slag.006"] = {
		"The floor near the smelters crunches underfoot. Crushed slag, a carter told me, scattered so nobody slips when the metal's moving. Nothing at this forge goes to waste, not even the waste.",
		"Grit on the stone by the melting pits, black and sharp. Ground slag, spread for footing, said the dwarf with the broom. Even the leftovers here have a job.",
	},
	["ifo.muse.w20.slag.007"] = {
		"hears the slag cart long before seeing it: one wheel squeals on every turn, and the whole forge has clearly decided that it is somebody else's problem.",
		"winces at the shriek of a slag cart's dry axle coming around the ring, while the smiths nearby go on working as if it were birdsong.",
	},
	["ifo.muse.w20.slag.008"] = {
		"Every good bar leaves a cart of slag behind it, the smiths say. An old miner at the rail said a war is the same, and then didn't say anything else for a while.",
		"Slag is what the iron gives up to become iron. A gray-bearded dwarf watching the carts told me that's how his clan talks of the Second War: what was given up so the rest would hold.",
	},
	["ifo.muse.w20.slag.009"] = {
		"The slag carts here at the Great Forge run on their own narrow rails, worn bright, curving off into a tunnel that smells of hot stone. Everyone steps over them without looking down.",
		"Thin rails cross the floor of the Great Forge for the slag carts, polished by use. Visitors trip on them. Dwarves step over them the way you step over a cat on the stairs.",
	},
	["ifo.muse.w20.slag.010"] = {
		"'Mind the slag,' says every dwarf I pass. Not 'hello'. Not 'good to see you'. Mind the slag.",
		"Third smith to tell me to watch my boots near the slag bin. They're nice boots. I take the point.",
	},
	["ifo.muse.w20.slag.011"] = {
		"sits for a while on the rim of an empty slag cart, the one seat near the forge that nobody seems to want.",
		"perches on the edge of an emptied slag cart, the iron still faintly warm through the cloth, and watches the work go on without {g:him|her}.",
	},
	["ifo.muse.w20.slag.012"] = {
		"Every cart of slag rolling past means a bar of good steel somewhere behind it, and every bar of good steel here ends up facing the Horde. I keep my hood up and watch the carts.",
		"Standing in the enemy's forge, counting slag carts like a clumsy spy. Each one is the leftover of armor somebody will wear against my side. It's hard to look away.",
	},
	["ifo.muse.w20.slag.013"] = {
		"The slag carters here at the Great Forge are the lowest rung of the trade, and they know it better than anyone: every smith's mistakes come to them in the end, by the cartload.",
		"Nobody envies the slag carters. Still, they pass every bench of the Great Forge each shift, and what a smith throws out says more about him than what he sells.",
	},
	["ifo.muse.w20.soot.001"] = {
		"steps around a sweeper working a long broom along the foot of a wall, raising a small black cloud that settles, with great patience, on everything already swept.",
		"lingers to see a dwarf sweep a stretch of floor clean, turn round, and find a fresh gray film already settling where she started.",
	},
	["ifo.muse.w20.soot.002"] = {
		"Nobody here wears white, and now I see why. A pale scarf goes the color of dishwater in the time it takes to buy bread.",
		"There's no white in this city. Only gray that remembers being white.",
	},
	["ifo.muse.w20.soot.003"] = {
		"Soot gets into the creases of a smith's knuckles and never quite washes out. I've seen dwarves scrub their hands pink and the lines stay drawn in black, like a map of the work.",
		"Every working hand under this mountain is outlined in black: soot in each crease, under each nail. Nobody tries very hard to scrub it off. It's a sort of signature.",
	},
	["ifo.muse.w20.soot.004"] = {
		"The carved faces on the walls nearest the forge are black to the eyebrows. Somebody goes up a ladder with a brush once in a while, a guard told me, and the soot wins every time.",
		"High on the walls the carved dwarves wear soot like a second beard. Now and then a sweeper on a long ladder scrubs one, and it comes up pale and astonished.",
	},
	["ifo.muse.w20.soot.005"] = {
		"Is there soot on my face? Don't answer. Everyone in this city has soot on their face.",
		"I wiped my nose and drew a black mustache across my lip. Lovely. Now I fit in.",
	},
	["ifo.muse.w20.soot.006"] = {
		"Scrape the soot off a ledge in the older halls and you'd find it laid down in layers, thin and thick, like the rings of a tree. A dwarf told me you can read the busy years in it, if you know how.",
		"The masons say soot settles in bands, a dark one for a hard year at the forges, a pale one for a slack year. Somewhere up near the ceiling the whole history of the city is written in black.",
	},
	["ifo.muse.w20.soot.007"] = {
		"watches a dwarf grandmother lick a thumb and scrub a streak of soot from a squirming child's cheek, while the child protests to the whole hall.",
		"sees a stout dwarf matron catch a passing youngster by the collar, spit on a corner of her apron and scour the soot off his face in three hard strokes.",
	},
	["ifo.muse.w20.soot.008"] = {
		"The cooks here swear a little soot is good for the bread. I think they swear it because there's no stopping it.",
		"Every loaf in Ironforge has a gray dusting on top. The baker called it flavor. I've decided to agree.",
	},
	["ifo.muse.w20.soot.009"] = {
		"Here in Tinker Town a gnome has built a contraption to suck the soot out of the air. It hums, it rattles, and the soot coming out of the back is somehow blacker than what went in.",
		"A soot-catching machine sits whirring by a workbench, growing a fine black fur on every surface of itself. Its inventor calls this proof that it works.",
	},
	["ifo.muse.w20.soot.010"] = {
		"The sweepers move through the city all day and nobody sees them. Without them Ironforge would be buried in its own soot inside a year. Most of the important work in the world is like that, I think: unseen, and daily.",
		"There's a dwarf with a broom who works the same stretch of hall every time I pass. Nobody thanks him. The floor does, in its way: it's the cleanest stone in the city.",
	},
	["ifo.muse.w20.soot.011"] = {
		"pauses while a lamp-keeper unhooks a glass chimney gone brown with soot, polishes it on a sleeve until it shines, and hangs it back up to begin getting dirty.",
		"follows a lamp-tender along the hall as she wipes one smoky lamp-glass after another, leaving a line of bright lamps behind her like a wake.",
	},
	["ifo.muse.w20.soot.012"] = {
		"Our elders say a clean dwarf is either rich or idle, and neither is a compliment. I look at the soot on my cuffs and feel properly dressed.",
		"Soot on the cuffs, soot in the seams. A stranger sees dirt. Any dwarf sees a day's honest work, and I'd not trade it for a clean shirt.",
	},
	["ifo.muse.w20.soot.013"] = {
		"Here in the Mystic Ward the soot is another color: candle-black, finer than the forge's, gathering in soft shadows above every reading desk. Someone climbs up and wipes it away, I suppose, before it can settle on the words.",
		"The ceilings over the reading desks are dark with candle smoke, a softer black than the forge leaves. Years of study, rising and settling, page by page.",
	},
	["ifo.muse.w20.spark.001"] = {
		"A tinker told me Tinker Town keeps time by eyebrows: 'that was two eyebrows ago' means a good few months. I thought she was joking until I saw her eyebrows.",
		"Half the gnomes in Tinker Town have eyebrows at different stages of growing back. You could read the order of the last few experiments off their faces.",
	},
	["ifo.muse.w20.spark.002"] = {
		"flinches as a small rocket shrieks up from a workbench, bursts green against the stone ceiling, and sprinkles everyone below with a fine, faintly fizzing ash.",
		"brushes a pinch of pink ash off one shoulder, left over from a firework somebody tested under the mountain, and finds the gnome responsible already apologizing to three dwarves at once.",
	},
	["ifo.muse.w20.spark.003"] = {
		"Talking with a gnome can stop dead in the middle of a sentence while she scribbles something on her cuff. Three days later she'll find you and finish the sentence, word for word, as if no time had passed.",
		"Gnomes keep ideas the way squirrels keep nuts: on cuffs, on palms, on the backs of other people's receipts. I've lost a shopping list to a design for a better pump.",
	},
	["ifo.muse.w20.spark.004"] = {
		"In a city of iron, copper and soot, the gnomes walk around with hair the color of sweets: pink, green, a blue no forge could make. Tinker Town looks like someone spilled a paintbox in a coal cellar.",
		"Gnomish hair is the brightest thing under the mountain: lime, rose, violet, bobbing along at elbow height through all the black and bronze of the city.",
	},
	["ifo.muse.w20.spark.005"] = {
		"A gnome just told me there's no such thing as a failed test, only data. Then the bench caught fire. Lots of data.",
		"'It's not an explosion, it's information,' says the gnome with the smoking hat. Very informative.",
	},
	["ifo.muse.w20.spark.006"] = {
		"Gnomes laugh off bangs, burns and boilers. But when a pipe in Tinker Town lets out an unexpected hiss, every head comes up at once, and the laughing waits until someone finds the leak.",
		"A loud bang among the workbenches gets a cheer. A soft hiss from a valve gets silence, and three gnomes running. It took me a while to understand which one frightens them.",
		"There's a sound gnomes flinch at that the rest of Ironforge never notices: the soft, steady hiss of gas finding its way out of a pipe.",
	},
	["ifo.muse.w20.spark.007"] = {
		"watches a dwarf stroll too close to a gnome's humming copper coil and walk on with his beard standing out like a startled cat, quite unaware, while the gnome writes something down.",
		"hears a sharp crack from a coil on a gnome's bench and sees a passing dwarf's beard bristle outward like a broom. Neither the dwarf nor the gnome remarks on it.",
	},
	["ifo.muse.w20.spark.008"] = {
		"Gnome names run long and clatter like a box of bolts. Most gnomes here keep a shorter one for the dwarves, the way you'd keep a spare key by the door.",
		"Every gnome in Tinker Town has two names: the real one, with all its syllables, and the one the dwarves can manage after a pint. They answer to both, with slightly different faces.",
	},
	["ifo.muse.w20.spark.009"] = {
		"Every time a gnome in Tinker Town gets something to work, a little more of Gnomeregan comes back within reach. We're rebuilding it one bolt after another, out of borrowed scrap.",
		"A good idea at a Tinker Town bench feels like a lamp lit in the old city. Somewhere down there, I tell myself, the dark just got a little smaller.",
	},
	["ifo.muse.w20.spark.010"] = {
		"Tinker Town smells different from the rest of Ironforge: less coal, more solder, and a sharp tang like a copper on the tongue that hangs about wherever a coil has been humming.",
		"Walk from the forges to the gnomes' quarter and the smell changes under your nose: smoke gives way to hot solder, machine oil and that bright metallic bite of something that crackled recently.",
	},
	["ifo.muse.w20.spark.011"] = {
		"Rule for Tinker Town: if something starts whistling, don't ask what it is. Just keep walking, briskly.",
		"Near the gnome workshops a rising whistle means one of two things: a kettle, or a reason to be elsewhere. Nobody waits to find out which.",
		"When a gnome near you suddenly crouches, crouch. Ask questions afterward.",
	},
	["ifo.muse.w20.spark.012"] = {
		"steps aside for a gnome hurrying past with one sleeve smoldering, who pats it out without slowing down or losing the thread of what she's saying.",
		"glances up as a gnome walks by trailing a thin ribbon of smoke from one elbow, deep in conversation, and puts it out with two absent-minded slaps.",
	},
	["ifo.muse.w20.stranger.001"] = {
		"Somebody near the gate shouted 'orc!' It turned out to be a very large dwarf in a green hood. The apologies took longer than the panic.",
		"Half the hall reached for something heavy when a green cloak came through the gate. It was a night elf, and very offended.",
	},
	["ifo.muse.w20.stranger.002"] = {
		"A human merchant comes in wrapped like a bundle of laundry and sheds a layer every twenty steps. By the forge she's down to her shirt and still fanning herself.",
		"You can tell how far a visitor has walked into the city by how many cloaks are still on. The humans start with four.",
		"Humans come through the gate bundled to the ears and leave the same way, and in between they spend the whole visit carrying their coats.",
	},
	["ifo.muse.w20.stranger.003"] = {
		"notices a night elf crossing the hall without a sound, and a pair of dwarves staring at her feet as if her boots must be faulty.",
		"catches the moment a night elf passes a knot of dwarves: their talk stops, their eyes drop to her silent boots, and the talk resumes a little louder, as if to make up the difference.",
		"hears every footfall in the hall but one; the night elf among the crowd moves without a sound, and a passing dwarf keeps glancing back at her as though sure he missed something.",
	},
	["ifo.muse.w20.stranger.004"] = {
		"Every dwarf in this hall would know what I am if I stood still too long. So I keep moving, and admire the carvings, and don't hum.",
		"Their city, their forge, their guards on every stair. I wanted to see the enemy's anvil up close. It's bigger than I was told.",
	},
	["ifo.muse.w20.stranger.005"] = {
		"A stranger in this city gets a long, flat stare, and then, without anyone seeming to decide it, a seat. I've had warmer welcomes. I've never had a surer one.",
		"The dwarves look a stranger over the way they'd look over a new tool: weight, grip, flaws. Then they give a nod, and the nod is the verdict. It's worth earning.",
		"Dwarves don't smile at strangers. They size you up, decide, and then they're done deciding, which is restful. You never have to win them twice.",
	},
	["ifo.muse.w20.stranger.006"] = {
		"The city is a ring, which is lovely until you watch a human pass the same armorer three times, each time a little more certain he's nearly there.",
		"Visitors here walk in circles and call it exploring. The dwarves let them. Sooner or later everyone fetches up at the forge.",
		"A human just asked me the way to the tram. I pointed. He thanked me. He'd asked me the same a quarter of the ring ago, and I'd pointed the same way.",
	},
	["ifo.muse.w20.stranger.007"] = {
		"Stamp them at the door, friend. You're bringing half of Dun Morogh in on those boots.",
		"Somebody's just come in with snow to the knees, and every dwarf in reach is suddenly very busy not laughing.",
	},
	["ifo.muse.w20.stranger.008"] = {
		"A night elf is sounding out the runes over an arch, lips moving. A dwarf corrects her pronunciation in passing, without breaking stride, and she thanks his back.",
		"A tall visitor tried to read the carving over a door aloud. Three dwarves corrected him at once, each differently. The carving is still waiting for a verdict.",
	},
	["ifo.muse.w20.stranger.009"] = {
		"Humans, gnomes, night elves, all under one dwarven roof and mostly getting along. The Alliance looks better from inside a tavern than from inside a war council.",
		"A human soldier and a night elf scout arguing over the last chair, and a dwarf settling it by sitting in it. That's the Alliance as I like it: crowded, rude and on the same side.",
	},
	["ifo.muse.w20.stranger.010"] = {
		"notices the guards paying hoods more attention than usual; word in the hall is that an orc was seen near the gate, and every cowl now gets a second look.",
		"sees a hooded figure pass and the whole crowd's eyes follow it a moment too long, the way a city looks at anything that might be an orc in disguise.",
	},
	["ifo.muse.w20.stranger.011"] = {
		"A dwarf looked at my gloves, tutted, and told me where to get proper ones. Then he walked me there. I didn't ask.",
		"Before I'd crossed one hall, a stranger had corrected my posture, my grip and my choice of cheese. Kindly, mind you.",
		"Somebody just reached up, fixed my collar, grunted and walked on. In this city I think that counts as a compliment.",
	},
	["ifo.muse.w20.throne.001"] = {
		"The king hardly uses his throne. He stands in front of it, thumbs in his belt, like a smith in front of a forge he trusts to behave.",
		"A whole carved seat at his back, and Magni stays on his feet. Perhaps a king who sits too long forgets how much he weighs.",
	},
	["ifo.muse.w20.throne.002"] = {
		"slows on the last stretch toward the throne, {g:his|her} boots suddenly far too loud on the polished floor.",
		"finds {g:his|her} pace dropping the nearer the throne comes, as though the floor had begun, very gently, to slope uphill.",
		"straightens a little as the throne comes into full view, and goes on straightening for the rest of the walk.",
	},
	["ifo.muse.w20.throne.003"] = {
		"Plenty of travelers pass through Ironforge and never find the High Seat. Nobody hides it. The dwarves just don't believe a king needs signposts.",
		"The king's hall sits a little off the busy ring, down a passage of its own. You have to mean to go there, which seems to be the whole idea.",
	},
	["ifo.muse.w20.throne.004"] = {
		"studies the guards at the foot of the dais, so still that the lamplight sliding on their mail is the only thing about them that moves.",
		"notices that the king's guards never once look at the king. They look at everyone else, steadily, all the time.",
		"counts the guards around the throne, loses count, and only then makes out that some of the stillest shapes along the walls are guards, not carvings.",
	},
	["ifo.muse.w20.throne.005"] = {
		"Does one bow to a dwarven king, or just nod very firmly? Nobody ever explains these things.",
		"Bow, kneel or shake his hand? With Magni, I'm told, a straight back and an honest grip count for more than any of them.",
	},
	["ifo.muse.w20.throne.006"] = {
		"An old historian keeps his post beside the throne and will recite the War of the Three Hammers to anyone who asks. He has clearly been asked many times, and has never once shortened it.",
		"The king's historian stands within earshot of the throne with the whole story of the clans ready on his tongue. Ask him something small and he answers in centuries.",
		"Even history has a sentry in this hall: a white-haired scholar by the throne, waiting for someone to ask about the clans so he can start at the very beginning.",
	},
	["ifo.muse.w20.throne.007"] = {
		"Has anyone ever put a cushion on the throne of Ironforge? And what became of them afterward?",
		"A throne of solid stone. Very grand. I'd still want a cushion, and I suspect asking for one is a hanging matter here.",
	},
	["ifo.muse.w20.throne.008"] = {
		"steps aside for two of the king's guards walking a road-stained traveler toward the High Seat, one at each elbow, politely and without hurry.",
		"makes room in the passage as a pair of guards escort a visitor toward the king's hall, the visitor talking fast and the guards not at all.",
	},
	["ifo.muse.w20.throne.009"] = {
		"When the king is in good humor, the guards say, the whole city hears about it. A laugh like Magni's doesn't stay shut in one hall.",
		"Magni's laugh is said to carry from the High Seat halfway to the Great Forge. The smiths claim they can keep time by it.",
		"A gruff city takes its mood from a gruff king. When word goes round that Magni laughed at something, the Commons seems to stand up straighter.",
	},
	["ifo.muse.w20.throne.010"] = {
		"The High Seat is the one place in Ironforge where the forge sounds far away. Even here, though, it never quite stops.",
		"In the king's hall the hammering shrinks to a low murmur through the stone, like a whole city talking about its ruler behind his back.",
		"Here the din of the city arrives filtered, softened, almost respectful. The stone seems to know whose room this is.",
	},
	["ifo.muse.w20.throne.011"] = {
		"A dwarf swore to me the king never forgets a face that has knelt to him. Good to know. I'll wash mine first.",
		"Magni remembers everyone who ever stood before him, so the guards say. If I go, I'm going tidy.",
	},
	["ifo.muse.w20.throne.012"] = {
		"Somebody told me half the petitions brought before the throne are about mining claims, and the other half about who dug into whose. Dwarven justice is mostly surveying.",
		"Boundary stones, seams that wander under a neighbor's floor, a tunnel dug a yard too far: such are the cases of the king's court, I hear. Every one is a small war fought with a measuring rod.",
		"Kings elsewhere judge murders and treasons. The High Seat, the talk goes, spends whole audiences on who owns the ore under a disputed wall.",
	},
	["ifo.muse.w20.throne.013"] = {
		"tips {g:his|her} head back to follow the carving up the walls of the High Seat, until the lamplight gives out before the stonework does.",
		"looks up into the vault above the throne, where the carved work climbs on into a dark the lamps never quite reach.",
		"traces with {g:his|her} eyes a band of knotwork running the length of the hall, unbroken, until it vanishes behind the throne.",
	},
	["ifo.muse.w20.throne.014"] = {
		"Up close, the king's hands are what I notice first: broad, nicked across the knuckles, the hands of someone who has held a great deal more than a scepter.",
		"Nearer the throne the king stops looking like a carving and starts looking like a dwarf: heavy shoulders, a gruff mouth, eyes that have done a lot of counting.",
	},
	["ifo.muse.w20.throne.015"] = {
		"dips {g:his|her} head as the king's gaze sweeps across the hall, and the gaze moves on without stopping.",
		"finds the king's eyes resting on {g:him|her} for a moment, weighing, before they pass on to the next face in the hall.",
	},
	["ifo.muse.w20.throne.016"] = {
		"watches a gnome waiting for an audience rise on tiptoe behind a guard, then give up and simply walk around him.",
		"sees a gnome with an armful of scrolls try three times to get past the guards' elbows, every attempt courteous and every one politely turned aside.",
	},
	["ifo.muse.w20.throne.017"] = {
		"Nobody in Ironforge says 'King Magni'. They say 'the king', as if there were only one in the world worth the word.",
		"A dwarf of this city never bothers to say which king. 'The king' covers it, the same way 'the forge' covers the Great Forge.",
	},
	["ifo.muse.w20.throne.018"] = {
		"Word from the gate: a storm has shut the passes. On the king's standing order, they say, the watch is doubled whenever weather blinds the roads. Ironforge has learned what can walk in under cover of a storm.",
		"A storm outside, the guards are saying, and the watch on the gate has been doubled. In this city bad weather is never only weather; to the king's guard it's cover for somebody.",
	},
	["ifo.muse.w20.throne.019"] = {
		"At this hour the lamps of the High Seat will be trimmed low, and the king, I'm told, still up over his letters. Dwarven kings sleep like forges: seldom, and never all the way.",
		"The city has slowed for the night, but the guards say a light still burns in the king's hall. Kings under this mountain keep the same hours as smiths, it seems.",
	},
	["ifo.muse.w20.titan.001"] = {
		"A stonecutter in the Commons is furious about the League's theory. If the Titans made the dwarves out of stone, he says, then his skill came in the box, and he'd like sixty years of blisters back.",
		"Not every dwarf likes the League's notion of being shaped by the Titans. The masons least of all: they spent their lives learning a craft, and now some scholar says it came built in.",
	},
	["ifo.muse.w20.titan.002"] = {
		"Watched a League scholar pat a wall and call it 'cousin.' The wall didn't answer. The scholar seemed to take that as a family trait.",
		"If the League's right and dwarves came out of the rock, every wall in this city is a relative. That explains the silent treatment.",
		"A League scholar knocks on walls the way other folk knock on doors. Visiting relatives, he says.",
	},
	["ifo.muse.w20.titan.003"] = {
		"If the League's right about the Titans, I come from a long line of statues. It would explain the knees.",
		"Shaped from stone, the League says. Fine. I'd still like a word with whoever did the knees.",
	},
	["ifo.muse.w20.titan.004"] = {
		"The League's theory sits oddly with some dwarves. If the Titans shaped them, they shaped them for a purpose. Nobody has found the page that says what it was.",
		"Being made is one thing. Being made for something, and having lost the instructions, is the part the scholars never linger on.",
	},
	["ifo.muse.w20.titan.005"] = {
		"Two dwarves on a stair are settling the Titan question the dwarven way: one says stone, one says nonsense, and they've agreed to buy each other rounds until somebody's convinced.",
		"The Titan debate never ends in this city. It just moves from table to table, getting louder, until someone points out that nobody has asked a Titan.",
		"Ask three dwarves about the Titans and you'll get four opinions and a quarrel over who's buying.",
	},
	["ifo.muse.w20.titan.006"] = {
		"I overheard a gnome ask a League scholar whether anybody had shaped the gnomes. The scholar promised to look into it, in the tone of a dwarf who has never once wondered.",
		"The League has a great deal to say about who made the dwarves and almost nothing about anyone else. The gnomes of Tinker Town have noticed, and are drawing up a list of questions.",
	},
	["ifo.muse.w20.titan.007"] = {
		"A people that split into three clans and lost Grim Batol to a curse could use a beginning bigger than its quarrels. Maybe that's half of why the League digs so hard for the Titans.",
		"The dwarves have lost Grim Batol, and lost each other. A beginning where they were one people, shaped together, must be a comfort. The League keeps digging for it.",
		"A time before the three hammers, when there was only one: that is what the League digs for. Every clan in Khaz Modan might like that page, if they could agree on reading it.",
	},
	["ifo.muse.w20.titan.008"] = {
		"'Earthen,' the League's scholars call the first dwarves, the ones they believe were still stone. They say the word carefully, the way you'd say the name of an elder who might be listening.",
		"The scholars have a name for what they think the dwarves were before they were dwarves: the earthen. They use it rarely, and never as a joke, which for the League is saying something.",
	},
	["ifo.muse.w20.titan.009"] = {
		"Every dwarf carries the question a little: where did we come from? The League just carries it further than the rest of us, and with better shovels.",
		"Strange, to walk past a case of old bones and wonder whether they're a cousin. The League has made every dwarf in this city a little bit of an orphan and a little bit of an heir.",
	},
	["ifo.muse.w20.titan.010"] = {
		"studies a slate on the wall where someone has chalked out the League's current thinking on the Titans, rubbed half of it away, and started again in smaller letters.",
		"notices a chalkboard crowded with theories about the makers, each line smudged by the next, and beneath it a fresh crate from the Badlands, still nailed shut.",
	},
	["ifo.muse.w20.titan.011"] = {
		"The diggers say the stone at Uldaman is cut so clean that a dwarven mason who sees it goes very quiet, then comes home and practices for a month.",
		"The best stonecutters in the city go out to look at the walls of Uldaman, the diggers say, and come back silent, and work twice as hard for weeks.",
	},
	["ifo.muse.w20.titan.012"] = {
		"Here in the enemy's city, their scholars claim a race of makers shaped them out of stone. It would explain why they never yield. It doesn't make these walls any friendlier.",
		"The Alliance's dwarves believe they were carved by makers older than the world. Standing in their forge-city, among all that stubbornness, I'm in no mood to argue.",
	},
	["ifo.muse.w20.titan.013"] = {
		"Shaped by Titans, the League says. I've just watched two dwarves argue an hour over the price of nails. Whatever made them, it wasn't in a hurry.",
		"If the dwarves were carved from stone, somebody forgot to sand down the opinions.",
	},
	["ifo.muse.w20.tome.001"] = {
		"Dwarven prayer books have brass corners and iron clasps. Whatever is inside, they mean to keep it in.",
		"I picked up an acolyte's book for him when he dropped it. Picked up is the wrong word. It weighed as much as a small anvil, and he carried it like a loaf.",
		"Only dwarves would bind a book so that it could stop a door, a drunk and a crossbow bolt. Possibly all at once.",
	},
	["ifo.muse.w20.tome.002"] = {
		"passes an acolyte pacing a corridor with a book held open at arm's length, lips moving, and steps aside so as not to break the count.",
		"gives way to a young priest walking slow circles round a pillar, reading aloud to the stone, which seems a patient enough listener.",
	},
	["ifo.muse.w20.tome.003"] = {
		"An old priest told me that when the orcs overran Khaz Modan, the books of the outlying holds came into the mountain on miners' backs, before the food did. He thought that was the right order.",
		"In the Second War, a priest of the Mystic Ward says, the books of the outer holds were carried in ahead of the grain. Some of the spines still have scorch marks, and nobody has rebound them.",
		"A priest showed me a book with a burn the size of a hand through its cover. 'Second War,' he said, and nothing else, and put it back in its place of honor.",
	},
	["ifo.muse.w20.tome.004"] = {
		"A mage just told me the hard part of magic is the reading. I'd hoped it was the fireballs.",
		"Ask a mage the secret of the arcane and you get a reading list. A long one.",
	},
	["ifo.muse.w20.tome.005"] = {
		"Every gnome mage studying in the Mystic Ward reads from a borrowed book. Ours are still in Gnomeregan, on shelves the troggs can't read, under air we can't stand.",
		"The dwarves lend their books freely in the Mystic Ward, and I give them back with every corner flat. Somewhere under Dun Morogh whole gnomish libraries are going green in poisoned rooms.",
	},
	["ifo.muse.w20.tome.006"] = {
		"Here in the Mystic Ward the trainers test their students out loud, and the whole hall learns along. I now know three things about wards I never wanted to know.",
		"Stand anywhere in this hall long enough and you'll pass somebody's examination by accident. The trainers ask, the students stumble, and the answers drift over to whoever is listening.",
		"In this hall I've learned the right order of a healer's kit, three uses of frost and how a censer ought to be held, all without asking a single question.",
	},
	["ifo.muse.w20.tome.007"] = {
		"eyes a mage apprentice hurrying past with a book whose top edge is singed black, and asks nothing about which page did it.",
		"notices the scorch marks on the corners of a student's book, neat and regular, as if the same mistake had been made on every page.",
	},
	["ifo.muse.w20.tome.008"] = {
		"I leafed through a dwarven book of the Light left open on a lectern. Half of it was prayers. The other half was how to set a bone and how much salt to put in a wound wash. The dwarves see no difference.",
		"The holy books of the Mystic Ward have recipes in the margins: poultices, splints, a good broth for the sick. Dwarven priests read the Light the way a smith reads a plan.",
		"Dwarven scripture, from what I've glimpsed, is short on visions and long on instructions. Wash the wound. Feed the sick. Mend the roof. Then give thanks.",
	},
	["ifo.muse.w20.tome.009"] = {
		"Leave a book open on a bench in the Mystic Ward and nobody touches it. Nobody ever will. That's Ironforge.",
		"A book left on a bench in the Mystic Ward is safer than coin in most banks.",
	},
	["ifo.muse.w20.tome.010"] = {
		"In a city where everyone's hands are busy, the readers of the Mystic Ward look almost idle. Look closer: their fingers travel down the page the way a mason's travel along a joint, testing every line.",
		"Reading looks like resting until you watch a dwarf do it. Finger on the line, jaw set, lips pressed: the same face he'd make at a stubborn rivet.",
		"Dwarves read with the whole body: shoulders hunched, beard tucked, a thumb pinning the page as if it might bolt.",
	},
	["ifo.muse.w20.tome.011"] = {
		"Some of the books in the Mystic Ward are chained to their lecterns. A priest says it's against thieves. A gnome apprentice says it's against the books. I didn't stay to find out who was right.",
		"Chains on the lecterns of the Mystic Ward, heavy dwarven links. Against thieves, says the priest. Against the books wandering off, says a gnome, very seriously.",
	},
	["ifo.muse.w20.tome.012"] = {
		"I opened a book in the Mystic Ward and three people looked up as if I'd opened their mail.",
		"Picked up the wrong book in the Mystic Ward. The look I got could have tempered steel.",
		"Note to self: in the Mystic Ward every book belongs to somebody, and that somebody is watching.",
	},
	["ifo.muse.w20.tram.001"] = {
		"A dwarf just came up from the tram with a pink, peeling nose, back from a few days in Stormwind. His friends are being merciless about it, and he is bearing it like a hero.",
		"You can spot the dwarves back from Stormwind: red noses, squinting, complaints about the glare. In here they blink happily at the lamps, at ease in their own dimness.",
	},
	["ifo.muse.w20.tram.002"] = {
		"spots a human clerk climbing out of the tram passage hugging a satchel of ledgers and asking a gnome the way to the bank; the gnome draws him a diagram.",
		"sees a traveler fresh off the tram ask a gnome for directions and receive, after a moment's thought, a small sketch with distances marked and a note about which stairs to avoid.",
	},
	["ifo.muse.w20.tram.003"] = {
		"Before a tram car comes in there's a thin whine in the rails, rising like a kettle. The gnomes by the passage can tell from the pitch how heavily it's loaded. I can tell it's coming, and that's as far as I've got.",
		"The rails sing a high, thin note a moment before each car arrives. The gnomes cock their heads at it like musicians listening for a flat string.",
	},
	["ifo.muse.w20.tram.004"] = {
		"Dwarves heading down to the tram carry their own bread. Human bread, they say, is mostly air with a crust for a lid.",
		"A dwarf at the tram passage is packing three loaves of black bread for a short trip to Stormwind, muttering that the humans down there bake clouds.",
		"Every dwarf bound for Stormwind gets the same advice at the tram: take a cheese, take a flask, and don't let them tell you that stuff is beer.",
	},
	["ifo.muse.w20.tram.005"] = {
		"As the gnomes tell it, the tram was one of the last great works they finished while they still had a city of their own. They talk about it the way you'd talk about a letter sent just before the house burned.",
		"Gnomes don't boast much about the tram. When they do, there's always a small catch in it: it was finished, they'll say, back when they still had somewhere to come home to.",
	},
	["ifo.muse.w20.tram.006"] = {
		"Humans ride up with full purses and ride back down in dwarven boots, with a dwarven opinion of their own smiths.",
		"Every human off the tram heads straight for the smiths and leaves with something heavy. The cars must ride lower going south.",
	},
	["ifo.muse.w20.tram.007"] = {
		"watches two gnomes meet at the mouth of the tram passage, one just up from Stormwind, and trade a parcel of parts and a long list of news in the time it takes to shake hands.",
		"sees a gnome hurry up from the tram with a crate of copper tubing sent by the gnomes of Stormwind, and a dozen hands reach for it before it touches the floor.",
	},
	["ifo.muse.w20.tram.008"] = {
		"Each car brings up a different handful: a Stormwind merchant clutching a manifest, two soldiers on leave already arguing about which tavern, a scholar with a crate of bones for the League. The tunnel sorts nobody.",
		"Watch the tram passage long enough and half the kingdom of Stormwind walks out of it in ones and twos: clerks, soldiers, pilgrims, peddlers, every one of them looking for a coat.",
		"A human soldier comes up from the tram, sees the size of the halls, and takes off his helmet as though he had walked into a temple.",
	},
	["ifo.muse.w20.tram.009"] = {
		"At the top of the tram passage a gnome has set up a little stall selling woolen scarves to arriving humans. Business looks very good. Her prices go up with every shiver.",
		"Whoever sells mittens near the tram must be the richest gnome in the city. Nobody from Stormwind ever packs for Dun Morogh.",
	},
	["ifo.muse.w20.tram.010"] = {
		"With snow coming down on Dun Morogh, the tram is the clever way in. The cars come up crowded, and their passengers stroll past the snow-caked arrivals from the gate looking very pleased with themselves.",
		"Travelers stamping snow off their boots at the great gate glare at the ones strolling dry out of Tinker Town. Some lessons are learned once, at the gate, in weather like this.",
	},
	["ifo.muse.w20.tram.011"] = {
		"The tram is the only road in Khaz Modan with a roof over it and no troggs on it. Mostly.",
		"Best road out of Ironforge: no drifts, no troggs, no hills. Just a great deal of water overhead and a gnome promising it's fine.",
	},
	["ifo.muse.w20.tram.012"] = {
		"The floor here, by the tram passage, is scored with a thousand pale lines where crates and trunks have been dragged out of the tunnel. A map of every load that ever came up from Stormwind.",
		"Grooves worn into the stone at the tram's mouth, shallow and parallel, from years of trunks hauled up by travelers too proud to ask for a porter.",
	},
	["ifo.muse.w20.tram.013"] = {
		"makes way for a gnome pushing a trolley of crates up from the tram, the stack three times her height, steering by leaning out to peek around its side.",
		"presses aside in the tram passage as a tower of crates rolls by on squeaking wheels, a small pair of gnomish boots visible underneath.",
	},
	["ifo.muse.w20.tram.014"] = {
		"Somebody put the tram passage right next to the busiest workshops in the city. Explosions on one side, the sea on the other. Gnomes call that convenient.",
		"Tram on one side, test benches on the other. Tinker Town's idea of a quiet neighborhood.",
	},
	["ifo.muse.w20.vault.001"] = {
		"The clerks of the Vault will never say what's in anyone's box. Ask them what has sat there longest without being touched, though, and you'll get a very long sigh.",
		"Half of what's stored in the Vault, a clerk once admitted, is things too good to throw away and too useless to carry. He said it looking straight at me.",
	},
	["ifo.muse.w20.vault.002"] = {
		"watches a banker lower an iron lid on someone's savings without a glance, the clang as final as a judge's word.",
		"hears the heavy lids of the strongboxes close one after another behind the bank counters, each one a flat iron full stop.",
	},
	["ifo.muse.w20.vault.003"] = {
		"Nobody in Ironforge knows more about everybody than the bankers, and nobody cares less. All those secrets, filed by weight.",
		"A banker of the Vault could tell you who's rich, who's broke and who's hiding something. Not one of them ever has. It's the most restful thing about them.",
	},
	["ifo.muse.w20.vault.004"] = {
		"Every time I open my bank box there's something in it I don't remember putting there. Either my memory's going or the box is breeding.",
		"My bank box is full of things I swore I'd need. I've needed none of them. I'm keeping all of them.",
		"If my bank box gets any fuller, I'll have to open a second account for the overflow.",
	},
	["ifo.muse.w20.vault.005"] = {
		"The queue at the Vault is the only quiet line in Ironforge. Dwarves who'd come to blows over the price of a hinge wait their turn there like stones in a wall.",
		"Something about the bank queue calms even dwarves. They stand in it with their hands folded, solemn as an honor guard, all to deposit eleven copper.",
		"In the bank queue even the loudest dwarf in the city lowers his voice, as if the coins in the back might wake.",
	},
	["ifo.muse.w20.vault.006"] = {
		"Everything I own fits in a box in the Vault. Everything I owned is still in Gnomeregan, under the troggs. The banker never asks which list is longer.",
		"The dwarves keep my few things safe behind iron. What I had before is behind a different door, one the troggs hold now. I try to be grateful for the box.",
	},
	["ifo.muse.w20.vault.007"] = {
		"waits behind a dwarf stacking coins on the bank counter in towers of ten, who starts the count over every time someone so much as brushes his elbow.",
		"stands patiently behind a dwarf building neat little towers of copper on the counter of the Vault, and soon finds {g:himself|herself} counting along with him in silence.",
	},
	["ifo.muse.w20.vault.008"] = {
		"An old clerk swears the Vault still holds ledgers from before the War of the Three Hammers, accounts nobody alive could settle. He says they balance. He sounds almost offended that anyone would ask.",
		"The oldest ledgers of the Vault, a clerk told me, are in a hand nobody writes anymore, and some debts in them are still marked open. The Vault doesn't forget a figure just because the debtor has turned to dust.",
	},
	["ifo.muse.w20.vault.009"] = {
		"Deposit, withdraw, deposit. The banker and I see a great deal of each other, and he still doesn't know my name.",
		"Six times I've stood at that counter. Six. He greets me every time like a stranger he doesn't quite trust.",
	},
	["ifo.muse.w20.vault.010"] = {
		"Snow melts off the boots of the bank queue into small gray puddles, and the clerks of the Vault look at them the way they'd look at a bad coin.",
		"Everyone in the bank queue has carried a little of Dun Morogh in on their boots. The floor of the Vault goes dark with snowmelt, and a clerk mops around it with visible suffering.",
	},
	["ifo.muse.w20.vault.011"] = {
		"Not everything in the Vault is gold. I saw a dwarf deposit a child's wooden toy, wrapped in a clean cloth, and sign for it as carefully as for a bar of mithril.",
		"A gnome ahead of me put a single bent gear into her bank box, closed it, and stood a moment with her hand on the lid. The clerk waited, and didn't hurry her.",
		"People bank strange things. A cracked pipe. A letter never opened. A ring on a string. The clerks log each one as if it were worth a fortune, and to someone it is.",
	},
	["ifo.muse.w20.vault.012"] = {
		"steps aside for a bank clerk carrying a ledger thick as a paving stone in both arms, with all the care of someone carrying a sleeping child.",
		"makes way for a clerk of the Vault who hurries past hugging an enormous ledger, ink-stained to the elbows and muttering a running total.",
	},
	["ifo.muse.w20.vault.013"] = {
		"The Vault writes a dwarf's name with the clan beside it, the old way. Seeing mine there in the clerk's square hand, I stand a little straighter.",
		"My name in the ledgers of the Vault, clan and all, in letters as square as cut stone. Somewhere in this mountain I am written down properly.",
	},
	["ifo.muse.w20.vault.014"] = {
		"The clerks of the Vault keep a drawer of sealed letters, a dwarf told me, each one to be sent on if its owner stops calling for it. The drawer is never empty. Nobody likes to ask how often it's opened.",
		"Some folk leave a letter at the bank before a hard road, to be posted if they're never seen again. The clerks file them with the same care as gold. They don't read them. They don't have to.",
	},
	["ifo.muse.w20.veteran.001"] = {
		"The veterans say that in the Second War the Horde's fires covered the valley below the gate so thickly it looked like a second city. The dwarves inside watched them burn for months, and kept the doors shut.",
		"An old guard told me that during the siege you could stand inside the gate and hear the orcs singing out on the slopes. He said it like someone describing a fever he'd rather not catch twice.",
	},
	["ifo.muse.w20.veteran.002"] = {
		"Not every dwarf got inside before the gate shut in the Second War. The veterans don't name the villages that were left outside. They only go quiet at the same places in the story.",
		"Ask a veteran about the siege and you'll hear how the gate held. Ask what was outside it and you'll hear nothing at all, which is its own answer.",
	},
	["ifo.muse.w20.veteran.003"] = {
		"slows on a stair behind an old dwarf who takes every step with the same leg first, a clean, practiced limp that has plainly kept him company for decades.",
		"waits at the foot of a stair while a white-bearded veteran comes down it with the bad knee leading on every step, no hand on the rail and no hurry at all.",
	},
	["ifo.muse.w20.veteran.004"] = {
		"Two veterans at a rail are comparing scars, not by size but by date. Anything from the Second War wins outright. The younger one keeps rolling his sleeve back down.",
		"Among the old soldiers a scar is a sort of receipt. They don't show it off; they produce it, quietly, when somebody questions the price that was paid.",
		"One old guard rolls up a sleeve to show a pale seam from wrist to elbow and says only the name of a pass. The others nod as if that were the whole story, and maybe it is.",
	},
	["ifo.muse.w20.veteran.005"] = {
		"Khaz Modan fell and this gate didn't. Some doors are simply better made.",
		"The Horde held every pass in Khaz Modan and still had to stop at that gate. My compliments to the masons.",
	},
	["ifo.muse.w20.veteran.006"] = {
		"The veterans fought orcs at the gate. The younger guards fight troggs in the tunnels. You can hear the difference in how each of them says 'enemy'.",
		"An old soldier says the orcs at least came at you from the front. Troggs come up out of the floor, and no gate was ever cut to stop that.",
	},
	["ifo.muse.w20.veteran.007"] = {
		"pauses near a veteran whose hands shake as he fills his pipe, until the bowl is packed and lit, after which they are steady as stone.",
		"notices an old soldier whose hands tremble on the rail, and how they go perfectly still the moment a horn sounds somewhere in the city.",
	},
	["ifo.muse.w20.veteran.008"] = {
		"Some of the veterans still speak warmly of the humans who marched in to help free Khaz Modan. Warmly for a dwarf, that is: they call them 'not bad', and stand a round for any who are left.",
		"The old soldiers remember Alliance banners coming up the passes in the Second War. That's why a human gets served a little faster at certain tables in this city, and never knows why.",
	},
	["ifo.muse.w20.veteran.009"] = {
		"The veterans of the siege drink at a table of their own, and the rest of us wait to be asked over. Nobody has ever said it's a rule. Nobody has ever broken it.",
		"When one of the old siege guards goes by, the younger dwarves at the rail all find a reason to stand up straight. I do it too. Nobody teaches us that; it's simply in the stone.",
	},
	["ifo.muse.w20.veteran.010"] = {
		"The siege grows a little every time the old soldier at the rail tells it. By now the Horde has sat at the gate for nine years, brought dragons, which is true, and ogres the size of the mountain, which is generous.",
		"One veteran's story of the siege gains a new detail each time he tells it. His friends don't correct him. They just add the new detail when they tell it themselves.",
		"Listen long enough and every veteran in Ironforge held the gate personally. It must have been a very crowded gate.",
	},
	["ifo.muse.w20.veteran.011"] = {
		"Old soldiers on the road through the Wetlands give Grim Batol a wide berth, and not for whatever lives there now. Some ground stays cursed in a dwarf's mind, whatever the scholars find.",
		"Grim Batol was a dwarven fortress once. The veterans don't say its name aloud in the Military Ward; they tip their chins north and let the silence say it.",
	},
	["ifo.muse.w20.veteran.012"] = {
		"Dark Iron in the tunnels, the guards say. I hope they packed a lunch; it's a long walk back to Blackrock.",
		"Every few weeks it's Dark Iron spies in the deeps or troggs in the mines. This must be the most visited fortress in the world.",
		"Troggs in the old mines, word has it. You'd think they'd learn. You'd think the dwarves would stop opening the door so cheerfully.",
	},
	["ifo.muse.w20.veteran.013"] = {
		"lingers at the edge of the training floor beside an old dwarf on a stool, who watches the young ones spar with his lips moving, correcting every one of them without a sound.",
		"notices a gray-bearded veteran following the sparring from a bench, wincing at every blow taken a little too square, as if he still felt them on the student's behalf.",
	},
	["ifo.npc_meet.w20.bank.001"] = {
		"waits while the banker enters every item in a ledger the size of a paving stone, blots the line, and reads it back aloud to be sure.",
		"hands over a bundle and watches the banker list it, piece by piece, in a fat ledger, then underline the list twice.",
		"sets things on the counter one by one so the banker can write each down, and is gently asked to go slower still.",
	},
	["ifo.npc_meet.w20.bank.002"] = {
		"The banker asks me to sign. I sign. The banker compares the signature against nothing at all, frowns, and accepts it. I suspect the frown is part of the service.",
		"A signature, a stamp, a second stamp for the first stamp. Nobody gets into my box without filling in a form, least of all me.",
	},
	["ifo.npc_meet.w20.bank.003"] = {
		"Look after it. Some of it is even worth something.",
		"Don't look too closely. Most of it's sentimental, and the rest is junk I can't bring myself to sell.",
		"Keep it dry and keep it quiet. That's all I ask of it, or of you.",
	},
	["ifo.npc_meet.w20.bank.004"] = {
		"Behind the banker a heavy door swings shut, and the thud goes down through my boots. Whatever is back there won't be leaving by accident.",
		"A deep thud from the back of the Vault of Ironforge: a door the weight of a cart, closing. The most reassuring noise in the city.",
	},
	["ifo.npc_meet.w20.bank.005"] = {
		"watches the banker run a small brass counting frame at speed, beads clicking, and reach the total before {g:he|she} has finished it in {g:his|her} head.",
		"listens to the click of beads on the banker's counting frame, quick and even as a clock that never runs slow.",
		"follows the banker's fingers as they fly over a counting frame, then stop dead on one bead, which goes back with a small disapproving click.",
	},
	["ifo.npc_meet.w20.bank.006"] = {
		"The banker can tell me what's in my box without opening it. I can't decide whether that's fine service or something to worry about.",
		"Not a glance at the ledger. {other} simply knows. Somewhere in that head is a list of everything anyone ever left here for safekeeping.",
	},
	["ifo.npc_meet.w20.bank.007"] = {
		"Just a small thing to leave with you. I'd rather not carry it into trouble.",
		"Hold this for me? It's the kind of thing I'd lose in a scuffle.",
		"Could I see what's in there? I've forgotten half of it, and I'm hoping for a pleasant surprise.",
	},
	["ifo.npc_meet.w20.bank.008"] = {
		"is regarded by the banker over a pair of small round spectacles for exactly as long as it takes to decide that no robbery is planned.",
		"is treated to the sight of the banker pushing a pair of spectacles up a broad nose and peering at the deposit as though it might be counterfeit.",
		"has the deposit inspected by {other} through a magnifying lens, slowly, as though the coins were suspects.",
	},
	["ifo.npc_meet.w20.bank.009"] = {
		"Old coin in the banker's tray, stamped with the faces of kings nobody here names any more. A vault keeps everything, even what a city would rather forget.",
		"A few coins in the banker's tray are worn almost smooth, the crowns on them barely there. Money outlives the kingdoms that struck it.",
		"Among the coins in the banker's tray is one so old that the king on it has a name nobody here would know. It's counted all the same, and still worth its weight.",
	},
	["ifo.npc_meet.w20.bank.010"] = {
		"In all the time it takes to store my things, the banker's face moves twice: once to frown at a scuff, once to frown at me.",
		"Bankers here don't smile. A smile might suggest they could be persuaded of something.",
		"The banker's face has all the warmth of the strongroom door, and I find I trust it more for that.",
	},
	["ifo.npc_meet.w20.bank.011"] = {
		"is handed a small stamped token by the banker and told, with great seriousness, not to lose it, as if the whole mountain hung on it.",
		"takes the receipt from the banker's hand and finds it still warm from the stamp, the ink not yet dry.",
	},
	["ifo.npc_meet.w20.bank.012"] = {
		"Is there a fee for looking? There's a fee for looking, isn't there.",
		"Everything in, nothing out. I'm told that's how fortunes start.",
		"One more thing to deposit: my good opinion of your vault. No charge.",
	},
	["ifo.npc_meet.w20.giver.001"] = {
		"The trouble comes with a map drawn on the back of a bill, and the asker keeps smoothing it flat as if that would make the distance shorter.",
		"A scrap of paper pushed across to me, covered in marks and a cramped hand. The problem has been worked on. Just not solved.",
	},
	["ifo.npc_meet.w20.giver.002"] = {
		"is beckoned over by someone with a task, and sits through a long, careful account of who is to blame before reaching the part about what needs doing.",
		"listens as the one with the task starts at the very beginning, as this city seems to prefer, and reaches the request a good while later.",
		"is drawn aside by someone with a problem, who checks over one shoulder before beginning, though nobody nearby could care less.",
	},
	["ifo.npc_meet.w20.giver.003"] = {
		"Start with the part where something goes wrong. I'll ask about the rest if I need it.",
		"Who's it for, and how soon? The why can wait.",
		"You've been waiting for someone to ask. Consider yourself asked.",
	},
	["ifo.npc_meet.w20.giver.004"] = {
		"Before I've even agreed, the reward has been named, down to the copper. This city does business before it does favors.",
		"In this city a request comes with terms. The work, the pay and the time it ought to take, all laid out first, as if I'd signed something just by listening.",
		"Terms first, then the trouble. Somebody here has asked strangers for help before and learned to put it in writing.",
	},
	["ifo.npc_meet.w20.giver.005"] = {
		"notices the one asking for help turning a ring round and round one finger, and wonders who the ring was meant for.",
		"watches the asker's hands knot and unknot a length of cord all through the telling, and go still only when the answer is yes.",
		"sees the asker smooth a crease in one sleeve over and over, until the whole story is out.",
	},
	["ifo.npc_meet.w20.giver.006"] = {
		"The asker waves vaguely toward the gate, as if everything outside the mountain were one place, and all of it slightly cursed.",
		"'Out there,' says {other}, with a jab of the thumb at the walls. Out there covers a great deal of ground.",
	},
	["ifo.npc_meet.w20.giver.007"] = {
		"Is this a job for a strong back or a strong stomach? Just so I know which to bring.",
		"Before you say it: is anyone going to be angry to see me turn up?",
		"Does this come with a map, or just a lot of pointing?",
	},
	["ifo.npc_meet.w20.giver.008"] = {
		"is handed a list by an earnest asker, then a second list correcting the first, then an apology for the length of both.",
		"accepts a folded note from {other}, unfolds it, and finds it rewritten at least three times, each draft crossed through.",
	},
	["ifo.npc_meet.w20.giver.009"] = {
		"There's a way people stand when they've already asked others and been turned down. This one has it. I won't add to the list.",
		"I'm not the first one asked. The shoulders say so, braced for one more no.",
		"Hope is hard to hide on a face this tired. Somebody has been waiting a while for anyone at all to stop.",
	},
	["ifo.npc_meet.w20.giver.010"] = {
		"When someone in Ironforge asks for a hand, in a way it's the Alliance asking. This mountain held the line for everyone once. A favor is the least it's owed.",
		"Pride bends a long way before anyone in this city asks outside their own door. When it finally does, the Alliance answers.",
	},
	["ifo.npc_meet.w20.giver.011"] = {
		"is told three separate times that the job is simple, which is usually how a job announces that it isn't.",
		"hears the word 'easy' twice in the first sentence, and starts quietly adding a day to whatever comes next.",
		"catches the asker saying 'nothing to it' and then glancing away, which says the rest.",
	},
	["ifo.npc_meet.w20.giver.012"] = {
		"Hospitality first, apparently: a mug is pressed into my hand before a single word about the job. It's a bribe, and I'm taking it.",
		"The asking comes after the drink. In this city nobody wants to be seen begging dry.",
		"A stool, a mug, and only then the trouble. Asking is done properly here, or not at all.",
	},
	["ifo.npc_meet.w20.gryph.001"] = {
		"watches the gryphon master scratch a dozing gryphon under the beak; the beast leans into it with half-shut eyes, like an enormous cat.",
		"pauses while the gryphon master works a burr out of a gryphon's ruff, the beast holding perfectly, grudgingly still.",
		"sees {other} check each gryphon's eyes in turn, close enough to risk a peck, and each gryphon put up with it.",
	},
	["ifo.npc_meet.w20.gryph.002"] = {
		"There's a bucket of something beside the roost that I'm choosing not to look into. The gryphons are very interested in it.",
		"The smell around the roost is half forge, half feathers and half whatever's in the feed bucket. That's three halves, and it smells like more.",
		"Feathers in the cracks of the floor around the roost, swept into tidy piles that a single wingbeat undoes.",
	},
	["ifo.npc_meet.w20.gryph.003"] = {
		"Whichever one's least likely to bite. Otherwise I'm not particular.",
		"Is that one sulking, or is that just its face?",
		"I'll take the one with the patient look. If any of them has one.",
	},
	["ifo.npc_meet.w20.gryph.004"] = {
		"The gryphon master talks to the beasts in a low, running murmur, and to me in grunts. The beasts are plainly the better company.",
		"Long, gentle sentences for the gryphons; three short words for me. I'm not offended. I've seen the gryphons.",
		"I'm fairly sure {other} knows every gryphon's name and none of the travelers'. That seems the right way round.",
	},
	["ifo.npc_meet.w20.gryph.005"] = {
		"notices the gryphon master's leather apron, studded with spare buckles and stuck all over with down, like a coat that has half decided to fly.",
		"eyes the gryphon master's belt, hung with hooks, straps and a pouch that rustles and smells strongly of fish.",
		"takes in the gryphon master's gloves, thick as boot leather and scored white across the knuckles by beaks that meant no harm, or not much.",
	},
	["ifo.npc_meet.w20.gryph.006"] = {
		"The gryphons at the roost keep their heads turned from the forge-glow, like folk sitting with their backs to a too-bright window.",
		"Each time the Great Forge flares, the whole row of gryphons blinks at once. The gryphon master doesn't even look up any more.",
		"The gryphons ruffle and settle in waves along the perches, each one shrugging off the heat that rolls over from the forge.",
	},
	["ifo.npc_meet.w20.gryph.007"] = {
		"Anything I should know about this one before I climb on? Besides the beak.",
		"Does it have a name? I'd like to know whom to apologize to if I lean the wrong way.",
		"Which way does it like to lean? Tell me now, not halfway up.",
	},
	["ifo.npc_meet.w20.gryph.008"] = {
		"is boosted into the saddle by the gryphon master with one practiced shove, and given a slap on the boot that means: hold on.",
		"takes the reins from the gryphon master, who keeps a hand on the beast's neck a moment longer than needed, as if the goodbye were for the gryphon.",
	},
	["ifo.npc_meet.w20.gryph.009"] = {
		"The gryphon master keeps glancing toward the halls that lead out, counting beasts in. One is late. Nobody says so.",
		"An empty place in the row of perches, and the gryphon master's eyes go back to it between every other task.",
		"The gryphon master's gaze keeps drifting to the arch the fliers come in by. Waiting on one, by the look of it, and saying nothing.",
	},
	["ifo.npc_meet.w20.gryph.010"] = {
		"flinches as a gryphon leans down from its perch to inspect {g:his|her} pack with its beak, until a click of the gryphon master's tongue sends it back.",
		"stands very still while a curious gryphon sniffs at {g:his|her} collar, and the gryphon master watches with open amusement and no intention of helping.",
	},
	["ifo.npc_meet.w20.gryph.011"] = {
		"The Wildhammer, it's said, hold that a gryphon should never be saddled by a stranger's hands. The gryphon master just tightens the girth and doesn't argue the point.",
		"At Aerie Peak, the Wildhammer would scoff at these tidy saddles and numbered perches, or so the stories go. In this city a gryphon is a service, and it runs on time.",
	},
	["ifo.npc_meet.w20.gryph.012"] = {
		"Thanks. Look after the rest of them; this one's my problem now.",
		"Sit tight the whole way? Understood. I'll sit tighter than that.",
	},
	["ifo.npc_meet.w20.guard.001"] = {
		"asks a guard for the way and gets it in four words and a jerk of the chin, which turn out to be all the directions needed.",
		"waits while a guard finishes a muttered count of passers-by before being granted a look.",
		"asks a guard where something is and receives a direction, a distance in paces, and a look that says not to need asking twice.",
	},
	["ifo.npc_meet.w20.guard.002"] = {
		"This guard's mail has been mended so many times that very little of the first shirt can be left. Same guard, though. Probably.",
		"Patch on patch on that mail, each ring a slightly different color. Piece by piece, the armor has grown younger than the dwarf inside it.",
		"Every buckle on the guard's belt is polished except one, black with old soot. Missed, or kept that way for luck. I'd never ask.",
	},
	["ifo.npc_meet.w20.guard.003"] = {
		"Long shift? Don't answer that. I can tell from the way you're leaning on the haft.",
		"Quiet on your stretch? Good. I'll try not to be the thing that changes it.",
		"Need anything fetched? A stool, a pie? No? I thought not.",
	},
	["ifo.npc_meet.w20.guard.004"] = {
		"The guard watches feet, not faces. Feet tell you who's in a hurry, and in a city this crowded hurry is the one thing worth stopping.",
		"My face doesn't interest the guard in the least; my boots do. Mud from outside, forge dust, or neither. They say where I've been better than I would.",
		"This guard watches the space around me more than me: who's near, who's following, whose hand is somewhere it shouldn't be. Good at the job.",
	},
	["ifo.npc_meet.w20.guard.005"] = {
		"nods to a guard, who returns the nod exactly as deep, not a hair more, as though courtesy were sold by weight.",
		"gets a stiff salute from a guard and returns it badly, which the guard notes without comment and, quite plainly, without forgiveness.",
		"trades a polite word with a guard and gets back one syllable, which in the Ironforge Guard counts as a conversation.",
	},
	["ifo.npc_meet.w20.guard.006"] = {
		"A guard eating bread one-handed, never lowering the other from the haft. A meal at attention. Impressive, and a little worrying for the digestion.",
		"Even the guard's meal is on duty: a heel of bread in one fist, the other hand never leaving the weapon.",
		"Somebody has left the guard a mug of something hot. It sits on the ledge untouched and steaming, waiting for the watch to end.",
	},
	["ifo.npc_meet.w20.guard.007"] = {
		"steps aside as a guard halts the crowd with one flat palm to let a heavy cart through, and nobody, not even the gnomes, argues with the palm.",
		"is stopped by a single raised hand from a guard while a loaded cart rumbles by, then waved on by the same hand as if it had never moved.",
	},
	["ifo.npc_meet.w20.guard.008"] = {
		"Is there a password, or do I just look honest?",
		"I'm not here to cause trouble. I only mention it because you're looking at me as if I might be.",
		"Any rules I ought to know? Besides staying off your bad side, I mean.",
	},
	["ifo.npc_meet.w20.guard.009"] = {
		"The guard's helmet carries dents nobody has hammered out. In a city full of smiths, that has to be a choice.",
		"A city of smiths, and this guard's helm is still dented in three places. Kept that way on purpose, I'd wager. Some dents are worth more than a smooth brow.",
	},
	["ifo.npc_meet.w20.guard.010"] = {
		"A guard gives me the short nod dwarves keep for their own: no smile, no word, the chin down and up. It says more than a speech.",
		"That nod from the guard is the one kept for kin. Short and sure, and never wasted on strangers.",
	},
	["ifo.npc_meet.w20.guard.011"] = {
		"watches a guard bend stiffly in full plate to tie a small gnome's bootlace, then straighten up as if the thing had never happened.",
		"sees a guard in heavy plate crouch, with a great deal of creaking, to help a small gnome catch a runaway cog, then rise again, stone-faced.",
	},
	["ifo.npc_meet.w20.guard.012"] = {
		"The guard has learned to stand in the one spot where the forge's heat and the draft from the gate cancel out. Years of shifts went into finding it.",
		"Of all the places to stand, the guard has picked the one that neither the forge-heat nor the gate's draft quite reaches. Nobody picks a post like that by chance.",
		"Watch long enough and the guard shifts weight from one foot to the other at fixed intervals, regular as a pendulum. It's the only clock on that stretch of hall.",
	},
	["ifo.npc_meet.w20.inn.001"] = {
		"The innkeeper sets a mug in front of me before I've asked and waits to see whether I'll argue. Nobody argues. It's an excellent system.",
		"A mug arrives ahead of my order. To want something else I'd have to be braver than I am.",
		"I didn't order. I didn't need to. {other} has apparently decided what I look like I drink.",
	},
	["ifo.npc_meet.w20.inn.002"] = {
		"leans on the bar while the innkeeper wipes the same patch of it in slow circles, following three conversations at once and answering none.",
		"waits at the bar as the innkeeper polishes a tankard far past clean, eyes going round the room the whole time.",
		"props an elbow on the bar and waits: the innkeeper finishes pouring first, then looks up, and from that moment there is no other customer.",
	},
	["ifo.npc_meet.w20.inn.003"] = {
		"Whatever bed is furthest from the singing, please.",
		"A bed, and the key to a door that shuts properly. I'll manage the rest.",
		"What's good that I won't regret? I'll take your word over the board.",
	},
	["ifo.npc_meet.w20.inn.004"] = {
		"The innkeeper's glance stops at my shoulders, where the tiredness sits, and the next thing out of the kitchen is bigger than what I ordered.",
		"Behind that bar is someone who knows a body that's been on its feet too long. The bowl I'm given is deep enough to lose a spoon in.",
		"Something about the way I'm standing makes the innkeeper pull out a chair before taking my order.",
	},
	["ifo.npc_meet.w20.inn.005"] = {
		"catches the innkeeper ending an argument between two miners by setting a full mug squarely between them and walking off.",
		"sees the innkeeper settle a quarrel at the next table without a word: two mugs, one each, and the matter closed.",
		"watches {other} end a shouting match with one look over the taps. Both shouters suddenly find their mugs fascinating.",
	},
	["ifo.npc_meet.w20.inn.006"] = {
		"The innkeeper asks where I've come in from, then doesn't wait for an answer. The question was a greeting, nothing more. I like that.",
		"'Far to come?' is how this innkeeper says hello, with the back already half turned. Nobody is expected to reply.",
		"The first thing {other} asks is never my name. It's whether I've eaten. Good priorities.",
	},
	["ifo.npc_meet.w20.inn.007"] = {
		"is handed a heel of dark bread with the soup, along with the innkeeper's advice to dunk it before trying a bite.",
		"gets a bowl, a spoon and a slab of black bread from the innkeeper, and a nod at the bread that plainly means: soak it first.",
	},
	["ifo.npc_meet.w20.inn.008"] = {
		"There's a slate behind the bar with names and marks on it. Mine isn't there. I'd like to keep it that way, and I suspect the innkeeper would too.",
		"Chalk marks on a board behind the innkeeper: who owes, and how much. The column is long and the chalk is short.",
	},
	["ifo.npc_meet.w20.inn.009"] = {
		"Do you ever sit down, or is that against the rules of the house?",
		"I'll pay now, before I lose count of what I've had.",
		"Is it always this loud, or did I walk in on a special occasion?",
	},
	["ifo.npc_meet.w20.inn.010"] = {
		"is shown to a corner by the innkeeper, who lights the stub of a candle on the table and leaves without asking anything at all.",
		"takes the corner seat the innkeeper points to, where a candle stub is already burning, as if someone had been expected.",
	},
	["ifo.npc_meet.w20.inn.011"] = {
		"The innkeeper keeps a stack of low stools by the bar and slides one over without a word. A small thing. Exile is made of small things, and so is being welcome.",
		"A stool at the right height, pushed over before I have to climb. Since Gnomeregan I've learned to notice who keeps those.",
	},
	["ifo.npc_meet.w20.inn.012"] = {
		"Three words of mine, and the innkeeper knows roughly where I'm from. Not much crosses this bar without being placed.",
		"One sentence from me and the innkeeper has my accent pinned, if not my business. The business, I suspect, comes with the second mug.",
		"Any innkeeper can read a face. This one reads accents, and nods at mine as if ticking it off a list.",
	},
	["ifo.npc_meet.w20.merch.001"] = {
		"watches a merchant lay out goods in rows so straight they might have been ruled with a plumb line, then frown and nudge one a finger's width.",
		"waits while a merchant squares every item on the counter to the edge before naming a single price.",
		"notices that every price card on the merchant's counter faces the customer at exactly the same angle.",
	},
	["ifo.npc_meet.w20.merch.002"] = {
		"The merchant doesn't haggle. The merchant explains, slowly and kindly, why the price is already a gift. Somehow that's worse.",
		"I named a lower figure. {other} looked at me with such patient disappointment that I nearly raised it myself.",
		"Haggling with this one is like pushing on a wall. A very politely painted wall.",
	},
	["ifo.npc_meet.w20.merch.003"] = {
		"What's the best thing here that nobody buys? I'd like to see that.",
		"Show me what you'd buy yourself. Not what sells. What you'd buy.",
		"I'm only looking. Yes, everyone says that. I mean it a little more than most.",
	},
	["ifo.npc_meet.w20.merch.004"] = {
		"Every item on this counter has a tag in two different hands, one blocky and one tiny and slanted. Two partners sharing the books, I'd guess, and arguing in the margins.",
		"Two kinds of handwriting on the price tags, one heavy and one cramped. Somebody keeps the stock and somebody keeps the sums, and they don't agree on the sums.",
	},
	["ifo.npc_meet.w20.merch.005"] = {
		"reaches for a jar on the shelf and stops at the merchant's throat-clearing, the courteous kind that means 'you break it, you've bought it'.",
		"picks up a small brass contraption and puts it down again very gently when the merchant stops talking in the middle of a word.",
		"lifts the lid of a crate and lowers it again at the merchant's small, meaningful 'ahem'.",
	},
	["ifo.npc_meet.w20.merch.006"] = {
		"Everything the merchant hands me is faintly warm, as if the shop sat too near a forge. Plain things feel newly made.",
		"The goods are warm to the touch. Nothing magical: the whole city is warm. Still, it's like buying bread fresh from the oven, even when it's a belt.",
	},
	["ifo.npc_meet.w20.merch.007"] = {
		"If I buy two, does the second one come with fewer opinions?",
		"You've told me what it's made of, how it's made and who made it. Could I hear the price before I grow old?",
		"Is there a version of this that doesn't come with a lecture? I'll pay extra.",
	},
	["ifo.npc_meet.w20.merch.008"] = {
		"has the purchase wrapped by the merchant in oiled cloth and tied with a knot so tight it will need a knife, which seems to be the point.",
		"watches {other} fold paper round the purchase with neat, square corners, as if a crooked fold would be a mark against the shop.",
	},
	["ifo.npc_meet.w20.merch.009"] = {
		"'Not that one.' The merchant's hand covers a dented tankard on the shelf. No price, no reason. Just: not that one.",
		"Some things on the shelf aren't for sale. The merchant says so flatly, then tells me the whole history of one of them anyway.",
		"One shelf behind the merchant is dusted but never touched. Whatever stands on it was somebody's, once, and nothing near it carries a price.",
	},
	["ifo.npc_meet.w20.merch.010"] = {
		"watches a merchant weigh a handful of nails on a brass scale, add one, take it off, put it back, and only then look up, satisfied.",
		"is kept waiting while a merchant fusses over a set of scales until the needle sits dead center.",
		"sees the needle of the merchant's scale tremble and settle, and the merchant nod at it as if it had passed an exam.",
	},
	["ifo.npc_meet.w20.merch.011"] = {
		"The merchant wants to know what I need it for before selling it to me. Not suspicion: craft. The wrong tool for the job would be an insult to the shop.",
		"'And what's it for?' A fair question, asked in earnest. If the answer's wrong, {other} will sell me something else, and be right to.",
	},
	["ifo.npc_meet.w20.merch.012"] = {
		"Good stock. Honestly. I'd say so even if I weren't angling for a better price.",
		"I'll take it. Quickly, before you tell me more and I like it too much to bargain.",
		"Fine work. I can see why you charge for it. I can see it very clearly, in my purse.",
	},
	["ifo.npc_meet.w20.train.001"] = {
		"The trainer asks me to show what I already know and watches all of it without a flicker. Then says 'again', and I understand the first time didn't count.",
		"'Show me.' So I show. The trainer's face gives away nothing until the end, when it gives away just enough to sting.",
		"The trainer's 'good' is so quiet I almost miss it. I'm not sure I was meant to hear it at all.",
	},
	["ifo.npc_meet.w20.train.002"] = {
		"is tested by the trainer with a light push at the shoulder, and earns a short nod when the push gets nowhere.",
		"stands while the trainer circles once, slowly, saying nothing, then stops and corrects a single detail of the kind nobody ever notices alone.",
		"is made to hold a pose while the trainer walks off, has a word with someone else, and wanders back to check that nothing has moved.",
	},
	["ifo.npc_meet.w20.train.003"] = {
		"I've practiced. Not as much as you'd like, I expect, but I've practiced.",
		"Tell me straight. Flattery I can get at the tavern.",
		"Teach me something I'll curse you for in a week and thank you for in a month.",
	},
	["ifo.npc_meet.w20.train.004"] = {
		"Trainers in this city hand out praise the way miners find gold: rarely, and with suspicion. I got a 'not bad'. I'll be living on it for weeks.",
		"'Hm. Could be worse.' From {other}, I'm told, that's practically a medal.",
		"This trainer gives out compliments the way the Vault of Ironforge gives out gold: only after a long look and a signature.",
	},
	["ifo.npc_meet.w20.train.005"] = {
		"notices chalk tallies on the pillar behind the trainer, rows upon rows of them, and wonders whether they count pupils or mistakes.",
		"eyes a column of scratched marks on the wall beside the trainer's elbow. Nobody explains them, and nobody looks pleased to have them there.",
	},
	["ifo.npc_meet.w20.train.006"] = {
		"The trainer explains it once, slowly, then a second time in other words, then a third time with the hands. Patience with the shape of a method.",
		"Three ways to say the same thing, all ready to hand. {other} has taught a great many slow learners, and I'm in no position to take offense.",
	},
	["ifo.npc_meet.w20.train.007"] = {
		"Before you start: yes, I know I'm doing it wrong. That's why I came.",
		"Go easy. Or don't. I suspect that's your decision either way.",
		"I know, I know. The elbow. You don't have to point.",
	},
	["ifo.npc_meet.w20.train.008"] = {
		"waits for the trainer to finish with another pupil, who leaves rubbing an elbow and looking oddly pleased.",
		"stands back as the trainer sends off the pupil before with three words of advice and one of warning.",
	},
	["ifo.npc_meet.w20.train.009"] = {
		"The trainer asks what I've done with the last lesson, and listens to the answer as closely as to a confession.",
		"The first question isn't what I want to learn. It's what I did with what I was taught before. A fair question. An uncomfortable one.",
		"Before offering anything new, the trainer wants to see what became of the old. Like a smith testing the last weld before adding iron.",
	},
	["ifo.npc_meet.w20.train.010"] = {
		"No allowances, no gentle start. Born under this mountain, I'm expected to have stone in me already, and the trainer means to find it.",
		"Strangers get patience here. The mountain's own get a harder look and a shorter answer. I'd be insulted by anything else.",
	},
	["ifo.npc_meet.w20.train.011"] = {
		"notices that the trainer's hands are never still: tapping, adjusting, measuring something invisible in the air while the lesson goes on.",
		"follows the trainer's hands more than the words; they draw the lesson in the air a moment before it is spoken.",
		"counts along silently as the trainer's blunt fingers tap a rhythm on a belt buckle, keeping time with something only the trainer can hear.",
	},
	["ifo.npc_meet.w20.train.012"] = {
		"Thank you. I think. I'll know for certain once it stops aching.",
		"That's more than I came for. I'll try to be worth it.",
		"I'll wear this one in first. After that I'll want the next, so don't give it away.",
	},
	["ifo.quest_complete.w20.after.001"] = {
		"steps back out into the ring and waits at its edge for a gap between a cart and a hurrying gnome, then slips into the flow.",
		"pauses on the threshold until a lull opens in the traffic of the ring, and joins it at an easy pace.",
	},
	["ifo.quest_complete.w20.after.002"] = {
		"For a while I heard nothing but the matter in hand. Now a smith two halls off misses a stroke, and I notice. Ironforge is back.",
		"The moment the thanks are over, the hammers come back into my ears one by one, as if they'd been waiting politely outside.",
	},
	["ifo.quest_complete.w20.after.003"] = {
		"Now, which arch did I come in by? They all look alike, only some are more carved.",
		"Good. Whoever points me back the way I came gets my thanks twice over. These arches are all twins.",
	},
	["ifo.quest_complete.w20.after.004"] = {
		"turns away from the thanks and finds the city has not waited: a pair of dwarves are already arguing over the spot just vacated.",
		"steps aside, and the place {g:he|she} stood in is filled at once by a dwarf with a question and a sack of ore.",
		"moves off, and before {g:he|she} has gone three steps the spot is claimed by a gnome unrolling a very long sheet of plans.",
	},
	["ifo.quest_complete.w20.after.005"] = {
		"My hands keep reaching for a task that isn't there anymore. I give them a strap to fiddle with.",
		"Strange how the hands go on working after the job ends. Mine are tightening a buckle that was tight already.",
	},
	["ifo.quest_complete.w20.after.006"] = {
		"That's that. Anyone looking for me, follow your nose to whatever's roasting.",
		"Finished. I'll be wherever the cooking smells best; it shouldn't take a tracker.",
		"Done. I'll be easy to find: look for the happiest face near a cookfire.",
	},
	["ifo.quest_complete.w20.after.007"] = {
		"tucks a stray strap back where it belongs and walks off without looking back, the matter already folded away.",
		"settles the pack higher on {g:his|her} back, gives the strap a tug, and walks into the press of the halls.",
	},
	["ifo.quest_complete.w20.after.008"] = {
		"A finished thing goes light so fast. A moment back it was the whole world; now it's a story I may never bother to tell.",
		"It weighed so much while it was mine. Handed back, it weighs nothing at all, and I'm not sure where the weight went.",
	},
	["ifo.quest_complete.w20.after.009"] = {
		"I'll not keep you from your work. This city has plenty more of it, by the sound.",
		"Back to work with you, then, and off with me. Listen to those hammers: nobody here sits idle.",
	},
	["ifo.quest_complete.w20.after.010"] = {
		"Nobody needs anything from me for the moment. In a city this busy, that's a rare and slightly suspicious feeling.",
		"For the next little while, not one soul in Ironforge is waiting on me. I'd forgotten how roomy that feels.",
		"Unclaimed. Not for long in this city, I'd guess, but unclaimed for now.",
	},
	["ifo.quest_complete.w20.after.011"] = {
		"glances back once over {g:his|her} shoulder, as if checking the matter is truly settled, then lets the traffic of the halls carry {g:him|her} along.",
		"looks back a single time before the bend of the hall hides the spot, then faces forward and keeps going.",
	},
	["ifo.quest_complete.w20.after.012"] = {
		"Even the thanks came quietly. Under the mountain there's no dark to speak of, yet folk lower their voices at this hour all the same.",
		"The late crews are at the anvils and the Commons has thinned. Outside it must be full dark; in here the only sign is how softly people talk.",
	},
	["ifo.quest_complete.w20.after.013"] = {
		"Back into the noise of my own city. Strangers hear a racket; I hear which forge has taken on a new apprentice.",
		"To a visitor it's all one roar. I can pick out the forge with the cracked bellows and the smith who always hums. It's good to walk back into it.",
	},
	["ifo.quest_complete.w20.after.014"] = {
		"Thank you, Ironforge. You can go back to shouting now.",
		"There. Carry on, city; don't let me interrupt.",
		"My compliments to the mountain. As you were, everyone.",
	},
	["ifo.quest_complete.w20.after.015"] = {
		"I'd half expected to feel more. Instead there's the hall, the hammers, and a level sort of quiet, like a table with all four legs on the floor.",
		"No great surge of anything. Only a settled feeling, like a cart set down on even ground, and the hammers going on as before.",
	},
	["ifo.quest_complete.w20.after.016"] = {
		"emerges onto the ring where the forge-glow fills the great chamber wall to wall, and stands a moment beneath it, small and content.",
		"walks out into the red glow of the great chamber, one figure among hundreds, one small thing finished in a city of thousands.",
	},
	["ifo.quest_complete.w20.coin.001"] = {
		"watches the pay counted out onto a stone ledge in stacks of five, each stack squared off with a fingertip before the next one is begun.",
		"is paid in short, tidy columns of coin, each nudged straight by a careful finger before the count goes on.",
	},
	["ifo.quest_complete.w20.coin.002"] = {
		"Counted out twice: once in silence, and once aloud for my benefit, as if I might dispute a copper. Under this mountain, I suppose someone would.",
		"The sum was counted, then counted again out loud, slowly, so I could follow. Nobody here trusts a number until it has been heard.",
		"It was counted, then counted aloud, then the payer's lips moved through it a third time. I'm almost flattered by the care.",
	},
	["ifo.quest_complete.w20.coin.003"] = {
		"is paid with a smack of coins on the stone counter, set down hard, as though they had to be told to stay where they were put.",
		"hears the pay come down on the stone under a flat slap of the palm, the coins pinned there until {g:he|she} reaches for them.",
		"is paid with a sharp rap of the coins against the stone, the sound that in this city means a matter is closed.",
	},
	["ifo.quest_complete.w20.coin.004"] = {
		"Old coin, some of it, worn so flat the faces are only a suggestion. It has passed through more dwarven hands than I could count, and now through mine.",
		"A few of these coins are older than anyone I know, rubbed smooth by generations of thumbs. They still spend. That's the thing about this city's money.",
		"There's a coin in the pay so worn I can barely tell which side is up. Somebody's grandfather earned it, likely at a forge. Now I have.",
	},
	["ifo.quest_complete.w20.coin.005"] = {
		"Exact to the copper. I'd have worried if it weren't.",
		"No need to count it in front of me. Though I see you're going to anyway.",
		"Every copper accounted for. The Vault should hire you, if it hasn't already.",
	},
	["ifo.quest_complete.w20.coin.006"] = {
		"I weigh the pouch in my palm and let the coins settle before tying it on. A habit this city teaches: never pocket what you haven't felt.",
		"A moment with the pay resting on my open hand, just to know its weight. Here even coin seems to want a proper look before it's put away.",
	},
	["ifo.quest_complete.w20.coin.007"] = {
		"is handed the pay in a little cloth bag with a label stitched on it, which reads, in tiny careful letters, PAYMENT (ONE).",
		"receives the pay in a drawstring bag tagged with a gnomish label: the sum, the date, and a small drawing of a happy coin.",
		"is given the pay in a paper twist marked with a number, a date and, beside them, a cheerful little cog.",
	},
	["ifo.quest_complete.w20.coin.008"] = {
		"The pay went from the purse to the stone and from the stone to my hand. In between it was looked at hard by two people and one suspicious apprentice.",
		"Three people watched the coins change hands: the payer, me, and an apprentice who seemed to take the whole thing personally.",
		"The coins passed from purse to stone to palm under three pairs of eyes: the payer's, mine, and those of an apprentice keeping count on his fingers.",
	},
	["ifo.quest_complete.w20.coin.009"] = {
		"Straight to the Vault with this. Every coin in Ironforge ends up there sooner or later; mine may as well go early.",
		"I'll take this to the Vault before it decides to take itself to the auction house.",
		"The Vault, then, before the auction house hears my purse is full.",
	},
	["ifo.quest_complete.w20.coin.010"] = {
		"One coin in the pay is slightly bent, as if somebody had tested it in a vise. In this city I'd guess that's exactly what happened.",
		"A little scorch mark on one of the coins. I choose to believe it was a forge and not a gnomish experiment, and I'm not going to ask which.",
		"One coin has a tiny cog punched clean through the middle. A gnome's joke, I hope, and not a gnome's idea of money.",
	},
	["ifo.quest_complete.w20.coin.011"] = {
		"has the coins set into {g:his|her} palm and the fingers folded shut over them by the one paying, firmly, like a lid pressed onto a crock.",
		"holds out a hand for the pay and has it closed for {g:him|her} around the coins, a squeeze that says the matter is sealed.",
	},
	["ifo.quest_complete.w20.coin.012"] = {
		"Nobody here makes a ceremony of paying. The coin is offered the way you'd pass someone the salt: of course, and without looking.",
		"The money changed hands as plainly as a tool across a bench. No flourish. I find I prefer it to speeches.",
		"Pay is given in this city the way bread is passed at a table: without show, because naturally it's yours.",
	},
	["ifo.quest_complete.w20.coin.013"] = {
		"Keep the pouch too? That's a better pouch than mine. I accept.",
		"You're giving me the bag as well? Then the bag's the better half of the bargain.",
	},
	["ifo.quest_complete.w20.coin.014"] = {
		"I count it again with my back to the hall. Not from doubt. Everyone in this city recounts, and it would look odd not to.",
		"Second count, quietly, facing the wall. No one here would take it amiss; they'd take it amiss if I didn't.",
	},
	["ifo.quest_complete.w20.coin.015"] = {
		"The one paying me still has snow melting on the shoulders, fresh from the gate, and a drop falls on the coins as they're counted. Cold pay, honestly earned.",
		"Snow thawing on the payer's cuffs, dripping onto the stone counter while the coins go down. Word from the gate is that it hasn't let up.",
	},
	["ifo.quest_complete.w20.coin.016"] = {
		"Silver weighs more down here, I'd swear it. All that stone around it, pressing.",
		"Funny. This pouch looked lighter in the hand that gave it.",
		"Heavier than it looks. Everything in Ironforge is.",
	},
	["ifo.quest_complete.w20.debt.001"] = {
		"Dwarves keep two columns for everyone they meet: what you did for them, and what you did to them. I'd like to think a line of mine just went into the first.",
		"Grudges get all the talk, but a dwarf's memory has a second column, for favors. It's shorter, and much harder to get into. I may just have got in.",
	},
	["ifo.quest_complete.w20.debt.002"] = {
		"tries to wave off the last few coins and finds them pressed back into {g:his|her} palm, firmly, by someone who plainly would rather pay than owe.",
		"offers to let the pay go short and is refused with real alarm, the coins folded back into {g:his|her} hand as if a debt were a burn.",
	},
	["ifo.quest_complete.w20.debt.003"] = {
		"So you owe me one. Fine. I'll collect it in the Stonefire, a pint at a time, with interest.",
		"Owe me? Splendid. In this city that's practically a contract. I'll take my installments by the mug.",
		"A favor owed, under this mountain? I'll have it written down, just to be safe.",
	},
	["ifo.quest_complete.w20.debt.004"] = {
		"An old dwarf told me once that a debt in Ironforge outlives the one who made it: grandchildren pay what grandfathers promised, and think it no hardship. I'm glad the one owed here is me.",
		"In this city, they say, a debt is passed down like a good hammer: the heir takes it up without complaint. Nobody should ever have to inherit one from me.",
	},
	["ifo.quest_complete.w20.debt.005"] = {
		"Truth is, the city was square with me long before this. A bed, a fire, a bench at the forge-side when I needed one. I've just paid a little rent.",
		"They'll call it a favor. I'd call it settling up: this city has kept me warm and fed more times than I've counted.",
	},
	["ifo.quest_complete.w20.debt.006"] = {
		"Some debts in this city are too old to pay: between the clans, between the Bronzebeard and the Dark Iron, debts older than any throne. Next to those, a clean little favor like mine is almost a relief.",
		"The oldest accounts under this mountain will never balance; three clans broke apart over them. It's good to be part of one that closes the same hour it opens.",
	},
	["ifo.quest_complete.w20.debt.007"] = {
		"Even, then. No, truly, even. You can stop looking at me like that.",
		"Square. Nothing owed either way. Put the frown away.",
		"Quits, then. Don't go carving it into a wall.",
	},
	["ifo.quest_complete.w20.debt.008"] = {
		"When Gnomeregan is ours again, I'm going to make sure the first thing that works in it works for Ironforge. A lift, a lamp, a pump; something. Every job I finish here goes on that list.",
		"I keep a private tally of what the gnomes will owe this city when the gates of Gnomeregan open for us again. It's long. I add to it, and I don't mind adding.",
	},
	["ifo.quest_complete.w20.debt.009"] = {
		"is told, gruffly, to come back if ever {g:he|she} needs anything, in the tone of someone who means it to the letter and will hold {g:him|her} to it.",
		"receives a short, gruff 'if you're ever in need' that sounds less like politeness than like a line being signed.",
	},
	["ifo.quest_complete.w20.debt.010"] = {
		"A dwarf who owes you won't rest until the debt's gone; a dwarf you owe will never mention it, which is worse. I much prefer this side of the ledger.",
		"Being owed by a dwarf is easy: they'll chase you to pay it back. Owing one is the hard part. They never ask, and you never forget.",
	},
	["ifo.quest_complete.w20.debt.011"] = {
		"The orcs came through Khaz Modan once and broke on this gate. Everything the city does since is, in a sense, paying back the ones who held it. Small work like mine pays the smallest coin of that debt.",
		"There was a siege here once, in the Second War, and the gate held. Ironforge has lived on that holding ever since. I like to think an errand done right pays a copper's worth of it back.",
	},
	["ifo.quest_complete.w20.debt.012"] = {
		"No, put that away. Buy the next one who helps you a drink instead, and tell them it came from me.",
		"Keep the extra. Pass it on to whoever helps you next. That's how a debt ought to travel.",
		"Owe me nothing. Owe the next stranger something, and call it fair.",
	},
	["ifo.quest_complete.w20.debt.013"] = {
		"watches a stub of chalk mark a short line on a slate kept for the purpose, under several other short lines, and decides not to ask what it adds up to.",
		"sees a notch scratched into the edge of a well-worn board, beside a column of older notches, and does not quite manage to count them.",
	},
	["ifo.quest_complete.w20.debt.014"] = {
		"Favors are the real currency under this mountain. Gold buys you goods; a favor gets you a seat at the right table, a word in the right ear. I'd rather have the second kind.",
		"Coin opens shops in Ironforge. Favors open doors. I've a feeling I just gained a door.",
	},
	["ifo.quest_complete.w20.debt.015"] = {
		"is pressed to accept a meal at somebody's table on top of the pay, and discovers that refusing is not one of the choices on offer.",
		"tries politely to decline a supper offered over and above the reward, and is overruled before the sentence is finished.",
	},
	["ifo.quest_complete.w20.debt.016"] = {
		"watches two dwarves across the hall settle some old account with a handshake that goes on far too long, neither willing to be the first to let go.",
		"sees a pair of old dwarves close a debt between them with a grip so long and so stubborn that it turns into a contest.",
	},
	["ifo.quest_complete.w20.debt.017"] = {
		"Don't owe me. Owe the city; it's the one keeping the door shut.",
		"Save your debt for the mountain. It's done more for you than I have.",
		"Whatever you think you owe, pay it to Ironforge. I'm only passing through it.",
	},
	["ifo.quest_complete.w20.doubt.001"] = {
		"The thanks came very quickly. Either it was exactly what they hoped, or they expected so little that anything would have done. I'll never know which, and I'll keep wondering.",
		"A short thanks can mean 'perfect' or 'about what I expected from you'. In this city, both sound the same.",
	},
	["ifo.quest_complete.w20.doubt.002"] = {
		"Smiths say you can't see inside a weld; you only learn it was bad when it breaks. I hope what I did is sound all the way through.",
		"A joint can look perfect and be hollow inside, the smiths say. My work looks fine from the outside. That's all anyone can say about it, for now.",
	},
	["ifo.quest_complete.w20.doubt.003"] = {
		"That's all? Truly? No further inspection? ...Fine. I'll stop asking before you change your mind.",
		"You're satisfied? Completely? Then I'm leaving now, quickly, while that's still true.",
		"No objections? None at all? I'll take that and go.",
	},
	["ifo.quest_complete.w20.doubt.004"] = {
		"Paid in the enemy's forge, for work that keeps the enemy's halls in order. Every hammer here makes plate that will one day face my own side. I took the coin anyway, and I'll think about that later.",
		"The dwarves thanked me as though I were one of theirs. If they knew which banner I really stand under, this city would turn very loud. I helped their mountain stand a little firmer; I'm still deciding what that makes me.",
	},
	["ifo.quest_complete.w20.doubt.005"] = {
		"searches the face of the one who gave the work a moment longer than courtesy needs, looking for a disappointment that does not appear.",
		"holds the giver's gaze a beat too long after the thanks, as if waiting for a 'but' that never comes.",
	},
	["ifo.quest_complete.w20.doubt.006"] = {
		"Ask any miner here about troggs and you'll get the same sour look: thin them out and they come back thicker. Some work in this city is never finished, only paused. I hope mine is the other kind.",
		"The mountain's troubles grow back like moss on a damp wall, the guards complain. I'd like to believe what I did will stay done. Ironforge has taught me not to count on it.",
	},
	["ifo.quest_complete.w20.doubt.007"] = {
		"In a city of old accounts it's worth asking whose account a job belongs to. Was that work, or a move in some grudge older than me? Dwarves rarely explain, and I didn't ask.",
		"Every task in Ironforge might be a line in somebody's long feud. I hope what I just did was simply work. I suspect I'll never be told.",
	},
	["ifo.quest_complete.w20.doubt.008"] = {
		"Mekkatorque says we'll take Gnomeregan back. Every job I finish feels like a step toward it, and every step shows me how far there still is to go. I keep walking anyway.",
		"Often, in Tinker Town, I wonder whether any of this brings Gnomeregan closer. Then someone thanks me for honest work, and the doubt goes quiet for a while.",
	},
	["ifo.quest_complete.w20.doubt.009"] = {
		"If anything comes loose, come and find me. I'd rather hear it from you than from the city.",
		"Should it fail, tell me first. I'll set it right without being asked twice.",
		"If it doesn't hold, I want to know. Don't spare me.",
	},
	["ifo.quest_complete.w20.doubt.010"] = {
		"It paid better than it should have. In a city that weighs every copper twice, that makes me more nervous than a short purse would.",
		"Generous pay, in Ironforge. Either I did something more important than I thought, or something worse is coming next.",
	},
	["ifo.quest_complete.w20.doubt.011"] = {
		"A city that never forgets a grudge doesn't forget a mistake either. If I've got something wrong, someone's grandchild will still be muttering about it in these halls. That keeps the pride in check.",
		"Ironforge keeps its failures as carefully as its triumphs. If this goes wrong one day, it won't be forgotten. I'll check it in my head once more on the way out.",
	},
	["ifo.quest_complete.w20.doubt.012"] = {
		"runs a hand over every strap and pocket of {g:his|her} gear after the turn-in, as though some part of the job might still be clinging somewhere, unfinished.",
		"checks the pack once, closes it, and then opens it again to check once more, before finally walking on.",
	},
	["ifo.quest_complete.w20.doubt.013"] = {
		"Was that a compliment? With dwarves it's hard to tell praise from a report on the state of the ore.",
		"'Not bad.' From a dwarf, that might be a medal, or it might be a polite warning. I'll assume the medal.",
		"I've been called 'adequate' in a tone I can't place. Somewhere between a pat on the back and a sigh, I think.",
	},
	["ifo.quest_complete.w20.doubt.014"] = {
		"Was it right? No, don't answer. Your face already did.",
		"Did I get it right? ...You needn't say. I saw.",
		"Tell me straight: did that help? Good. That's all I wanted.",
	},
	["ifo.quest_complete.w20.doubt.015"] = {
		"Blackrock still burns to the south, full of Dark Iron and things worse than the Dark Iron. Next to that, an errand looks very small. But the gate didn't hold in the Second War because of one great deed; it held on a thousand ordinary ones.",
		"The mountain's real enemies won't be stopped by anything I just did. I know that. They also won't be stopped by anyone who stays home thinking it's too small to matter.",
	},
	["ifo.quest_complete.w20.doubt.016"] = {
		"stops at the edge of the hall, turns half back as if to add something, then lets it go and carries on.",
		"opens {g:his|her} mouth to say one more thing about the business, thinks better of it, and walks on into the noise.",
		"hesitates a pace from the turn-in, a question plainly forming, and leaves it unasked.",
	},
	["ifo.quest_complete.w20.doubt.017"] = {
		"That went smoothly. Too smoothly. In Ironforge nothing's that easy unless there's a second part.",
		"Easy, wasn't it? I distrust easy. This city only hands out easy as a warm-up.",
		"No trouble at all. Remind me why that worries me.",
	},
	["ifo.quest_complete.w20.grip.001"] = {
		"has {g:his|her} forearm taken in a grip from elbow to wrist, and grips back, and for a moment neither of them will let go first.",
		"is thanked with a clasp of the forearm, hard and square, and answers it in kind until the other hand loosens.",
		"takes the offered forearm, elbow to wrist, and for a moment the two arms lock together like links of a chain.",
	},
	["ifo.quest_complete.w20.grip.002"] = {
		"That grip will leave marks. I gather that's the point: thanks you can still feel an hour later.",
		"My forearm has been thanked thoroughly. I'll find the fingerprints on it later, pressed in like seals.",
		"Thanked by the forearm, firmly enough that I'll be reminded every time I lift a mug for a while.",
	},
	["ifo.quest_complete.w20.grip.003"] = {
		"is caught in a gnome's two-handed handshake and shaken like a flask of something that needs mixing.",
		"has one hand seized in both of a gnome's and pumped up and down with an energy the rest of the gnome can barely keep up with.",
		"is thanked by a gnome who takes {g:his|her} hand in both of theirs and shakes it with such goodwill that {g:his|her} shoulder starts to complain.",
	},
	["ifo.quest_complete.w20.grip.004"] = {
		"A firm grip, then a little firmer, then let go. Whoever that was meant every word they didn't say.",
		"The handshake said it all in three squeezes: done, good, go on. More words would have spoiled it.",
		"Not much was said. The hand held mine a beat longer than it had to, and that was the speech.",
	},
	["ifo.quest_complete.w20.grip.005"] = {
		"That's a grip. Remind me never to owe you money.",
		"Easy, easy, I need that arm for the next job.",
		"You could crack walnuts with that handshake. Or fingers, in my case.",
	},
	["ifo.quest_complete.w20.grip.006"] = {
		"flexes {g:his|her} fingers after the handshake, one by one, checking that each of them still answers.",
		"shakes the feeling back into {g:his|her} hand once the thanks is over, discreetly, below the edge of the counter.",
		"works {g:his|her} knuckles quietly after the thanks, the way one tests a hinge after a door has been slammed.",
	},
	["ifo.quest_complete.w20.grip.007"] = {
		"The hand that shook mine was sticky with malt. I'll smell of the brewing vats till I wash, and I'm in no hurry to.",
		"A brewer's handshake: warm, damp and faintly sweet. My palm now smells like the back room of the Stonefire.",
	},
	["ifo.quest_complete.w20.grip.008"] = {
		"is pulled into a short, bruising embrace that smells of coal and leather, and let go before {g:he|she} can decide how to feel about it.",
		"is hugged, briefly and hard, then released with a gruff cough and a sudden interest in the far wall.",
	},
	["ifo.quest_complete.w20.grip.009"] = {
		"Shook a hand still in its gauntlet. Cold plates outside, a warm grip inside. A guard's way of thanking without unbuckling anything.",
		"The gauntlet stayed on for the handshake. Steel against my palm, and a squeeze through it that was more careful than it needed to be.",
	},
	["ifo.quest_complete.w20.grip.010"] = {
		"Hands like anvils in this city. I'll be shaking out my fingers all the way to the bank.",
		"Everyone here shakes hands like they're testing a vise. Mine's holding. Barely.",
		"Does Ironforge teach everyone to shake hands with a hammer? I ask on behalf of my fingers.",
	},
	["ifo.quest_complete.w20.grip.011"] = {
		"feels a hand settle on {g:his|her} shoulder and squeeze once, the weight of it saying what its owner doesn't trouble to.",
		"has {g:his|her} shoulder gripped once in passing, a squeeze like a clamp tightened a quarter turn and then let off.",
		"is clasped briefly by the shoulder, the hand heavy and sure, and then it is gone and so is its owner, into the crowd.",
	},
	["ifo.quest_complete.w20.grip.012"] = {
		"You learn a lot from the hand that pays you. This one had a burn scar across the knuckles and a smith's flattened thumb, and it held mine like something it had made.",
		"Calluses in all the places a hammer leaves them, and a little ridge of old burn on the wrist. A hand with the right to judge work, and it judged mine fair.",
	},
	["ifo.quest_complete.w20.grip.013"] = {
		"Thanked by my own folk in my own folk's way: a grip on the arm and not one word too many. Anything warmer and I'd check my purse.",
		"A forearm grip from a fellow dwarf, a grunt, done. Outsiders find it cold. It's the warmest thing this city does.",
	},
	["ifo.quest_complete.w20.grip.014"] = {
		"is offered the thanks and a hand together, the hand wiped first on an apron and then, after a second look, on the other side of the apron.",
		"waits while the one thanking {g:him|her} hunts for a clean corner of a leather apron to wipe a palm on, finds none, and offers it anyway.",
		"is offered a palm wiped hurriedly on a sleeve, then on a trouser leg, then given up on, and shakes it as it is.",
	},
	["ifo.quest_complete.w20.grip.015"] = {
		"Good grip. Honest hands. A pleasure.",
		"That'll do for thanks. A handshake like that, I'll remember.",
		"That's thanks enough. More than enough, in fact. My hand says so.",
	},
	["ifo.quest_complete.w20.grip.016"] = {
		"Elbow to wrist? I know this one. There. Firm as you like.",
		"Ah, the arm grip. Hold still, I mean to do it properly.",
		"Forearm it is, then. You squeeze back hard; that's the rule, isn't it?",
	},
	["ifo.quest_complete.w20.gruff.001"] = {
		"A drink at the Stonefire, you said? I heard it. Dwarves keep their promises; I keep reminders.",
		"That round you just promised me, I'll be collecting it. Don't think the noise in here drowned it out.",
		"I'll remember that round you promised, even if you don't. I have an excellent memory for free ale.",
	},
	["ifo.quest_complete.w20.gruff.002"] = {
		"Promised a drink 'next time I'm passing the Stonefire'. Everybody passes the Stonefire. Either the promise is very safe or I'm about to drink a great deal.",
		"'One on me, at the Stonefire, whenever.' Whenever is a long word in a city that never stops working. I'll make it short.",
	},
	["ifo.quest_complete.w20.gruff.003"] = {
		"'Didn't botch it, then.' From someone at a workbench in this city, I'm told that is the second-highest praise there is. The highest is silence.",
		"'Near enough right,' I was told. A miner nearby raised both eyebrows. Apparently that is something of an honor.",
		"'Could be worse.' Someone who overheard assures me that in this city those words have been cut above doorways.",
	},
	["ifo.quest_complete.w20.gruff.004"] = {
		"has the thanks barked at {g:him|her} like an order, and very nearly salutes before {g:he|she} can stop {g:himself|herself}.",
		"hears the thanks barked across the counter like a drill command, and has to stop {g:his|her} heels from clicking together.",
		"receives the thanks at parade volume and in a parade tone, and stands a little straighter in spite of {g:himself|herself}.",
	},
	["ifo.quest_complete.w20.gruff.005"] = {
		"Thanked and told off in a single sentence: well done, and mind your boots on the clean stone. I'll take both to heart.",
		"Gratitude, and then a pointed look at the grit on my boots. In Ironforge the two come as a pair.",
		"Praised for the work, scolded for the dust on my soles. I suspect the second will be remembered longer.",
	},
	["ifo.quest_complete.w20.gruff.006"] = {
		"Aye, aye, you're welcome. You can stop scowling at me now.",
		"That's the angriest thank-you I've ever had. I'll treasure it.",
		"You're welcome. No, really. You can put the frown away.",
	},
	["ifo.quest_complete.w20.gruff.007"] = {
		"listens to a list of everything that could have been done better, delivered without heat, and then to the words 'good work', delivered without heat either.",
		"hears three small faults in the work named one by one, then the thanks in exactly the same flat voice, as if all four belonged on one bill.",
	},
	["ifo.quest_complete.w20.gruff.008"] = {
		"The grumbling was all for show. The pay was a little over, and the grumbler pretended not to notice when I noticed.",
		"Gruff as a rusty hinge, and slipped me an extra coin while studying the ceiling. I'll keep the secret.",
		"All bark and an extra silver. I won't tell a soul.",
	},
	["ifo.quest_complete.w20.gruff.009"] = {
		"No speeches, then? Good. I wasn't going to give one either.",
		"Fine by me. I don't do speeches, and you clearly don't either.",
		"Good. Short. I like it that way too.",
	},
	["ifo.quest_complete.w20.gruff.010"] = {
		"I was thanked by way of a long complaint about the price of coal. Nodding along seemed to be part of the transaction, so I nodded.",
		"The thanks came buried in a grumble about prices in the Commons. I agreed in the right places. It seemed to please.",
		"The thanks arrived in the middle of a grievance about the Deeprun Tram. I sympathized loudly; it seemed to be the price.",
	},
	["ifo.quest_complete.w20.gruff.011"] = {
		"Four words of thanks from a dwarf, then a long look down at me, as if checking I'd counted them. Among dwarves, I'm told, that's practically a hug.",
		"The dwarf thanked me looking down from a good height and with no smile at all. Tinker Town has taught me that this is fondness.",
	},
	["ifo.quest_complete.w20.gruff.012"] = {
		"is told, without a smile, that {g:his|her} name is good at the Stonefire for one round, and that the barkeep will be informed.",
		"learns, in a tone better suited to a fine, that one mug at the Stonefire has been set aside in {g:his|her} name.",
		"is informed, sternly, that the Stonefire owes {g:him|her} a round, and that refusing it would insult the house.",
	},
	["ifo.quest_complete.w20.gruff.013"] = {
		"Keep the thanks. The pay will do; you know the custom as well as I do.",
		"Save the speech. Pay's fair, work's done, and I've no more patience for speeches than you have.",
	},
	["ifo.quest_complete.w20.gruff.014"] = {
		"Gruff words, gentle hands. The pay was counted roughly and passed over as if it might break.",
		"Everything said was short and sour, and everything done was careful. In Ironforge, watch the hands, not the mouth.",
		"Rough voice, careful fingers. The coins were set down as if they might bruise.",
	},
	["ifo.quest_complete.w20.gruff.015"] = {
		"Short and sour. Just how I like my thanks.",
		"Grumble all you like. I know a thank-you when I hear one.",
	},
	["ifo.quest_complete.w20.hall.001"] = {
		"The lamp chains in this hall have been mended so often that no two links match. I count four kinds of iron before I reach the end.",
		"Walking back I look up for once: every lamp chain here is a patchwork of repairs, old iron and new, and not one of them sags.",
	},
	["ifo.quest_complete.w20.hall.002"] = {
		"passes a mason on a short ladder, patching a crack in an arch with the care of someone stitching a wound, and slows to watch the trowel work.",
		"slows beside a mason up a ladder, filling a hairline crack in an arch with mortar and the patience of a surgeon.",
	},
	["ifo.quest_complete.w20.hall.003"] = {
		"A shallow groove runs down the middle of this hall, cut by cartwheels over who knows how long. My feet find it and follow it without asking me.",
		"The carts have worn a pair of ruts into the floor here. I walk in one of them like a wheel myself, all the way to the turning.",
	},
	["ifo.quest_complete.w20.hall.004"] = {
		"pauses beneath one of the giant carved dwarves of the hall and finds, at knee height, the initials of some long-ago apprentice, scratched small and hopeful.",
		"stops at the foot of a carved giant and notices, low on its plinth, a tiny hammer someone once scratched into the stone, worn nearly smooth.",
	},
	["ifo.quest_complete.w20.hall.005"] = {
		"Stairs everywhere, every one cut to a dwarf's stride. Long legs or short, Ironforge teaches you its pace by the third flight.",
		"The stairs of this city have a rhythm of their own, set by dwarven knees. Mine have picked it up, grudgingly.",
	},
	["ifo.quest_complete.w20.hall.006"] = {
		"lowers {g:his|her} voice without meaning to while passing the arch that leads toward the High Seat, then raises it again two steps on, faintly embarrassed.",
		"talks more softly near the way to the High Seat, as everyone seems to, and only notices on the far side.",
	},
	["ifo.quest_complete.w20.hall.007"] = {
		"Walking the ring is a lesson in smells: hot iron, then bread, then wet wool, then gunpowder, then iron again. I could find my way blind.",
		"Coal, bread, oil, powder, wet leather, coal. Shut my eyes on the walk back and my nose would still know every turning.",
		"Hot iron, burnt sugar from somewhere, damp dog, lamp oil. The way back is a map I could follow by smell alone.",
	},
	["ifo.quest_complete.w20.hall.008"] = {
		"detours around a knot of apprentices sitting on the floor of the hall with a broken lock between them, all six offering advice and none of them a key.",
		"steps around three young dwarves on their knees in the hall, taking a lock apart with great seriousness and too many opinions.",
	},
	["ifo.quest_complete.w20.hall.009"] = {
		"A board by the arch is crowded with notices: lost picks, a ram for sale, a cousin wanted urgently in Kharanos. I read every one, for no reason.",
		"Someone has pinned a note to a pillar promising that whoever borrowed a pair of good tongs has been recognized. I read it twice on the way past and wish them both luck.",
	},
	["ifo.quest_complete.w20.hall.010"] = {
		"passes beneath an arch carved with a row of stern dwarven faces and, without quite deciding to, nods to them.",
		"walks under a lintel of carved, bearded faces, every one of them frowning, and feels oddly judged on the way through.",
		"nods, without quite meaning to, at a row of stone faces above an arch, and receives the same severe look as everyone else.",
	},
	["ifo.quest_complete.w20.hall.011"] = {
		"Stepping back out, I glance up to judge the weather. Rock. Nothing but carved rock, as far up as the lamplight reaches. Habit dies hard.",
		"Some part of me still checks the ceiling for clouds whenever I leave a doorway. In Ironforge it finds a chain, a lamp and a mountain.",
	},
	["ifo.quest_complete.w20.hall.012"] = {
		"follows a line of small footprints in spilled flour across the hall, some gnome's, for no reason except that they go the right way.",
		"trails a set of small sooty footprints across the hall and finds they lead exactly where {g:he|she} meant to go anyway.",
	},
	["ifo.quest_complete.w20.hall.013"] = {
		"Walk slowly enough past the molten channels and you hear them: a faint tick and crackle where the edges crust over. It takes a free hour to notice.",
		"The fiery channels tick as they cool at the edges. I'd never heard it before; you only do walking slowly, with nothing left to hurry for.",
	},
	["ifo.quest_complete.w20.hall.014"] = {
		"falls in behind a pair of travelers fresh from the gate, snow melting off their shoulders onto the stone, and follows the wet trail inward.",
		"steps around a puddle spreading under a visitor's cloak, snow from the gate turning to water on the warm floor.",
	},
	["ifo.quest_complete.w20.hall.015"] = {
		"Outside Tinker Town a gnome is polishing a small brass plate with the name of a Gnomeregan street on it, slowly, the way one tends a grave. I walk on without asking.",
		"Near the ramp to Tinker Town an old gnome sits shining a street sign from Gnomeregan, carried all this way. Nobody bothers him. I don't either.",
	},
	["ifo.quest_complete.w20.hall.016"] = {
		"slows by the Hall of Mysteries while a priest's voice inside rises and falls, and waits until it stops before walking on, without knowing quite why.",
		"passes the Hall of Mysteries on soft feet while voices inside murmur together, and carries the hush a few steps further than it needs to go.",
	},
	["ifo.quest_complete.w20.hall.017"] = {
		"Beside one of the busy forges stands an anvil nobody touches. A passing miner tells me its smith never came back from the war, and that no one has struck a blow on it since. I lower my eyes as I go by.",
		"An idle anvil among the working ones, kept bright. Its smith died holding the passes in the Second War, a dwarf says, and nobody has had the heart to take it. I walk round it, not past it.",
	},
	["ifo.quest_complete.w20.hall.018"] = {
		"takes a turn of the ring that isn't needed, simply to walk a little longer in a city that, for the moment, asks nothing.",
		"goes the long way round on purpose, past doorways not needed and stairs not taken, enjoying a walk with no errand at the end of it.",
	},
	["ifo.quest_complete.w20.hall.019"] = {
		"There's a dwarf at a corner of the ring who sells nothing, makes nothing, and simply watches. I lift a hand to him in passing. He lifts one back. That's all, and it pleases me.",
		"An old dwarf sits by the ramp watching the traffic the way a fisherman watches water. I nod as I pass. He nods back without taking his eyes off the current.",
	},
	["ifo.quest_complete.w20.hall.020"] = {
		"The carvings I pass on the way back show dwarves at work: mining, forging, hauling. Not one shows a battle. Somebody, long ago, chose what to remember.",
		"Every frieze on this stretch of wall shows labor: picks raised, bellows pumped, carts hauled. Not a single war in the lot. A city choosing, in stone, what it wants to be.",
	},
	["ifo.quest_complete.w20.next.001"] = {
		"First the Vault, to hand over everything I'm tired of carrying. The clerks take it with the solemn faces of people accepting a great trust, even if it's old boots.",
		"Bank, I think. Lighten the pack, keep a few coins loose, and let the Vault do the worrying about the rest. It was built for worrying.",
		"To the Vault, to make the pack lighter. Whatever I leave there will be exactly where I left it, which is more than I can say for anywhere else in the world.",
	},
	["ifo.quest_complete.w20.next.002"] = {
		"sets off toward the Stonefire Tavern at the unhurried, certain pace of someone with exactly one plan left.",
		"turns toward the Commons and the Stonefire Tavern with the air of a person whose next decision was made long ago.",
	},
	["ifo.quest_complete.w20.next.003"] = {
		"Now, a trainer. There's something I've been itching to learn properly, and at last a free hour to be bad at it.",
		"Off to the trainer before I lose my nerve. Nothing humbles you like being shown how it should have been done.",
		"Time to visit my trainer and be told everything I did wrong, at length, by an expert.",
	},
	["ifo.quest_complete.w20.next.004"] = {
		"The gryphon master's roost is a short walk off, at the Great Forge. Half of me wants to be in the air before I've thought it through.",
		"The roost by the Great Forge is close enough to hear the gryphons complaining. Every grumble sounds like an invitation.",
	},
	["ifo.quest_complete.w20.next.005"] = {
		"turns down toward Tinker Town and the tram, already reaching for the patience a gnomish timetable requires.",
		"heads for Tinker Town and the Deeprun Tram, where the gnomes promise departures with total confidence and no fixed hour.",
	},
	["ifo.quest_complete.w20.next.006"] = {
		"I'll look in at the auction house on the way. Not to buy anything. I say that every time, and every time the auctioneers know better.",
		"The auction house is right on the way. I will walk past it. I will walk past it. I am, it seems, walking into it.",
	},
	["ifo.quest_complete.w20.next.007"] = {
		"I'd best write a letter while it's fresh. Somebody, somewhere, deserves to hear I did something useful.",
		"I should put it in writing and post it to someone before it shrinks to nothing. Who, I'll decide at the mailbox.",
	},
	["ifo.quest_complete.w20.next.008"] = {
		"I've a question for the Hall of Explorers that nobody needs answered but me. Now I've the time to go and ask it, clumsily.",
		"With nothing pressing, I could finally visit the Hall of Explorers and stare at old bones without anyone tapping a foot.",
	},
	["ifo.quest_complete.w20.next.009"] = {
		"stops where the ring meets the long hall to the gate and looks one way, then the other, weighing the road beyond against the warmth behind.",
		"lingers at the turning for the gate, one foot pointed outward, the other still very much in the city.",
	},
	["ifo.quest_complete.w20.next.010"] = {
		"I'll stand by the Great Forge a while and let the heat do whatever heat does. It has no opinion of me, which is restful.",
		"A few minutes at the Great Forge, I think. Nobody there wants anything from a bystander except that they keep out of the way.",
	},
	["ifo.quest_complete.w20.next.011"] = {
		"Is there anywhere in this city that sells something hot on a stick? I'm asking for my stomach, which is louder than the forges.",
		"Food. Anything hot, anything at all. My stomach has been out-shouting the hammers for a while now.",
	},
	["ifo.quest_complete.w20.next.012"] = {
		"My boots want a cobbler and my gear wants a smith, and this city has more of both than any place I know. I need only choose the nearest anvil.",
		"Everything I own is due a mending. In Ironforge you could throw a pebble in any direction and hit somebody who mends things for a living.",
	},
	["ifo.quest_complete.w20.next.013"] = {
		"takes the long way round toward the Mystic Ward, where the hammering fades by a few degrees with every step.",
		"lets {g:his|her} feet choose the Mystic Ward, for no better reason than that the noise drops there like a held note ending.",
		"follows the falling noise toward the Mystic Ward, as if quiet were a scent worth tracking.",
	},
	["ifo.quest_complete.w20.next.014"] = {
		"Bank, tavern, trainer, tram. I stand here listing them so long that a guard starts to look interested in me.",
		"Four places to go and I'm standing in the middle of the hall weighing them like ore. A guard has noticed. I pick one, quickly.",
	},
	["ifo.quest_complete.w20.next.015"] = {
		"Back to Tinker Town, to the borrowed bench I call a workshop. It isn't Gnomeregan. It's warm, and it's mine for now.",
		"Tinker Town next, and the corner of it I've made my own. Borrowed walls, my own mess. It will do until there's a Gnomeregan to go back to.",
	},
	["ifo.quest_complete.w20.next.016"] = {
		"sets off for the gate at a brisk clip, then slows at the last brazier to warm both hands, as if storing the heat for later.",
		"walks the long hall toward the gate and, near the end, stops to soak up a brazier's heat like someone filling a waterskin before a long road.",
	},
	["ifo.quest_complete.w20.next.017"] = {
		"A sensible person would sit down. Ironforge doesn't seem to employ sensible people; everyone in sight is already on the next job, and I feel the pull.",
		"The sensible thing is to rest. The Ironforge thing is to find more work. Behind me I can already hear a dwarf asking whether anyone's free.",
	},
	["ifo.quest_complete.w20.next.018"] = {
		"Gryphon master next. If I'm going to be cold, I'd rather be cold quickly.",
		"To the roost, then. Better a fast chill than a slow one.",
		"Off to the gryphons. There's a whole map out there and I've barely scratched it.",
	},
	["ifo.quest_complete.w20.next.019"] = {
		"Maybe I'll stop by the Hall of Arms and watch the drills from a bench, with the deep contentment of someone who isn't being drilled.",
		"The Military Ward is on the way. I'll stand by the wall and enjoy watching other people be shouted at.",
	},
	["ifo.quest_complete.w20.next.020"] = {
		"doesn't pick a direction at all, and simply follows the flow of the ring wherever it happens to be going, happy to be carried.",
		"lets the crowd decide, drifting with the current of the ring past one doorway after another.",
	},
	["ifo.quest_complete.w20.next.021"] = {
		"Word at the gate is that a storm is tearing across Dun Morogh. In here the only sign is the wet cloaks. I'm in no hurry to go and check.",
		"Travelers keep stamping in with soaked cloaks and wild hair, talking of a storm. I have nothing that needs doing outside, and I mean to keep it that way.",
	},
	["ifo.quest_complete.w20.next.022"] = {
		"Out past the gate there are more matters like this one waiting, more people who need a hand. I find, a little to my surprise, that I want to go and find them.",
		"The gate is open, and the world beyond it is full of small troubles waiting for whoever turns up. I'd like to be whoever turns up.",
	},
	["ifo.quest_complete.w20.next.023"] = {
		"Sell, store, mend, eat. In that order I'd be a sensible person. I'll do them in reverse, starting with eat.",
		"Store, sell, mend, eat: the wise order. My stomach has proposed an amendment, and it carries.",
	},
	["ifo.quest_complete.w20.next.024"] = {
		"stops at a mailbox, opens it, finds nothing, and closes it with the dignity of someone who expected exactly that.",
		"checks a mailbox in passing, finds it empty, and pats it twice anyway, as one might a dog that has done its best.",
		"peers into a mailbox on the way, discovers it holds nothing at all, and thanks it gravely for its trouble.",
	},
	["ifo.quest_complete.w20.next.025"] = {
		"Where do the smiths eat? Not the tavern; the real place. I want whatever they're having.",
		"Tell me where the forge crews get their food. Wherever it is, it's bound to be hot, cheap and enormous.",
	},
	["ifo.quest_complete.w20.nod.001"] = {
		"A grunt. One grunt, low, from somewhere deep in the chest. I've sat through speeches that said less.",
		"The thanks came as a single sound, half grunt and half growl. I've had longer praise that meant considerably less.",
		"One low sound from the throat, like a cart settling on its rails. That was the thanks, and it was plenty.",
	},
	["ifo.quest_complete.w20.nod.002"] = {
		"receives one slow nod that starts at the brow and goes all the way down, and understands the thanks is complete.",
		"is given a nod, a single deliberate dip of the head held at the bottom a moment, and knows no more is coming.",
	},
	["ifo.quest_complete.w20.nod.003"] = {
		"Nobody said thank you. The pay was right and the eyes held mine while it was handed over. I'm learning that this is thank you.",
		"No word of thanks, just correct coin and a steady look. In Ironforge, I gather, the look is the word.",
		"Thanks, in the end, was exact change and a long look straight in the eye. I've had warmer words worth less.",
	},
	["ifo.quest_complete.w20.nod.004"] = {
		"Was that a good grunt or a bad grunt? I'm deciding it was a good one.",
		"I'll take that grunt as a compliment. Correct me if it was an insult.",
		"That noise you made. I'm going to call it pleased.",
	},
	["ifo.quest_complete.w20.nod.005"] = {
		"gets a nod and two fingers tapped against the rim of a helm, and the thanks is over before {g:he|she} has quite nodded back.",
		"is thanked with a knock of knuckles on a helmet's brow, brisk as a salute, and the one who gave it is already turning away.",
		"receives a tap of a gauntleted hand to a helm's rim, a guard's whole vocabulary of thanks spent in one gesture.",
	},
	["ifo.quest_complete.w20.nod.006"] = {
		"The hammer was set down to thank me. Set down, on the bench, and the hand left empty. Here that's the nearest thing to taking off a hat.",
		"Whoever thanked me put the tool down first, and only then looked up. I know enough of this city to know how much that is.",
		"The tongs went down on the bench, and only then the thanks. That order means something in this city.",
	},
	["ifo.quest_complete.w20.nod.007"] = {
		"'Good.' That was all. Said the way a judge says it, and I'll carry it like a verdict that went my way.",
		"One word, 'good', and the matter closed like a ledger. Some lords give longer speeches and mean less by them.",
		"Just 'good', said the way a mason says it of a wall that will stand. I'll take it.",
	},
	["ifo.quest_complete.w20.nod.008"] = {
		"answers a gruff 'aye' with a gruff 'aye' of {g:his|her} own, and that is the whole ceremony.",
		"trades one 'aye' for another across the counter, and both parties consider the matter handsomely concluded.",
		"gets an 'aye', gives an 'aye', and walks off with the distinct feeling that something important has been signed.",
	},
	["ifo.quest_complete.w20.nod.009"] = {
		"sees a stranger across the hall, who watched the hand-over, raise a mug an inch in {g:his|her} direction and then go back to drinking.",
		"notices someone at a bench nearby lift a tankard a little toward {g:him|her}, a witness's toast, then bend back to it without a word.",
	},
	["ifo.quest_complete.w20.nod.010"] = {
		"Aye. Likewise.",
		"No need for more. I heard you.",
		"Understood. And thank you as well.",
	},
	["ifo.quest_complete.w20.nod.011"] = {
		"The quieter the thanks in this city, the more of it there is. That one was nearly silent.",
		"Hardly a sound out of the one who thanked me. I know this city well enough to hear how loud that was.",
		"Barely a word, and the eyes doing the rest. In Ironforge the quiet thanks are the ones that go deep.",
	},
	["ifo.quest_complete.w20.nod.012"] = {
		"receives a nod so small it might have been a twitch, until the eyes that go with it stay on {g:him|her} a moment longer than a twitch would.",
		"can't at first tell whether {g:he|she} was nodded at, then sees the look that stays put afterward and decides {g:he|she} was.",
	},
	["ifo.quest_complete.w20.nod.013"] = {
		"A dwarf's nod of approval travels further than it looks. Down the tram, into Stormwind, across the Alliance. I'll wear it quietly.",
		"Thanks from Ironforge is good currency anywhere the Alliance flies its banners. I'll not spend it loudly.",
	},
	["ifo.quest_complete.w20.nod.014"] = {
		"The corners of the eyes creased, the mouth stayed exactly where it was. I've been smiled at, in the Ironforge manner.",
		"Not a smile, not quite: just a crinkle beside each eye, there and gone. I'll count it.",
	},
	["ifo.quest_complete.w20.nod.015"] = {
		"Was that a nod? I'll nod back, then. There. Even.",
		"A nod for a nod. Fair trade.",
	},
	["ifo.quest_complete.w20.pride.001"] = {
		"Look it over. Twice, if you like. I'll wait while you hunt for the flaw.",
		"Go on, inspect it. Take your time. You won't find anything to send back.",
		"Check every corner. I'd be disappointed if you didn't.",
	},
	["ifo.quest_complete.w20.pride.002"] = {
		"They looked it over from every side and said nothing at all. I'm told that in Ironforge silence after an inspection is the finest praise there is. I'll take it as meant.",
		"Not a word from the one who checked it. A dwarven smith once told me that's how they praise their best apprentices: by finding nothing to say.",
	},
	["ifo.quest_complete.w20.pride.003"] = {
		"straightens a crooked strap and brushes down a sleeve before walking on, as though the city's craftsmen might be judging the finish of {g:him|her} as well.",
		"tugs a buckle level and squares {g:his|her} shoulders on the way out, like a piece of work presented for a final look.",
	},
	["ifo.quest_complete.w20.pride.004"] = {
		"A Bronzebeard doesn't do a job by halves inside these walls. My forebears cut the halls; the least I can do is keep them in good order.",
		"In my own city, with my own clan's banners over the halls, there's no such thing as small work. Only work done badly, and I don't do that here.",
	},
	["ifo.quest_complete.w20.pride.005"] = {
		"The dwarves took us in when there was nowhere else. Every job I finish well is a gnome saying: not a refugee, a neighbor. Useful. Here to stay until we go home.",
		"Some in this city still see a gnome and think of a lost city. Good work is the best answer I have: we lost Gnomeregan, not our hands.",
	},
	["ifo.quest_complete.w20.pride.006"] = {
		"Nobody in Ironforge thinks less of you for being pleased with your work. They think less of you for pretending not to be. So: I'm pleased. There.",
		"False modesty doesn't sell under this mountain. A dwarf who's done well says so, loudly. I'll say it quietly, to myself, which is a start.",
	},
	["ifo.quest_complete.w20.pride.007"] = {
		"Pride carved these halls, and pride split the three clans in the War of the Three Hammers. A little of it after good work is fine. A dwarf would tell you to keep it on a short chain.",
		"This city knows what pride is worth and what it costs: it built Ironforge and broke the clans apart. I'll allow myself a measure of it, and keep the measure small.",
	},
	["ifo.quest_complete.w20.pride.008"] = {
		"Tell the smiths about it. No, don't. They'd only find three things I should have done differently.",
		"I'd brag, but there's a master craftsman within earshot at all times in this city.",
		"Quite proud of that. I'll keep it down, though; the walls here have heard better.",
	},
	["ifo.quest_complete.w20.pride.009"] = {
		"is watched from across the hall by a young dwarf in an apprentice's apron, who looks away at once when caught and then, a moment later, looks back.",
		"notices a small gnome peering out from behind a crate of parts, studying {g:him|her} with the frank attention given to a working machine.",
	},
	["ifo.quest_complete.w20.pride.010"] = {
		"Done as this city would do it: properly, and once.",
		"Finished the Ironforge way. Built once, built right.",
	},
	["ifo.quest_complete.w20.pride.011"] = {
		"Pride is heavy in a city where everyone has earned theirs. I'll carry a pocket-sized piece, enough to warm my hands on as far as the next corner.",
		"Around here pride comes in ingots; mine is more of a nail clipping. Still mine, still honest.",
	},
	["ifo.quest_complete.w20.pride.012"] = {
		"lingers long enough to hear the business described to a passerby, and mildly corrects one small detail of it before moving on.",
		"overhears the matter being retold a few paces off, slightly improved, and lets the improvement stand.",
	},
	["ifo.quest_complete.w20.pride.013"] = {
		"Carve it on a wall with the rest. No? A footnote, then. A small one.",
		"I won't ask for a statue. A plaque would do. A pebble with my initials, even.",
		"Put it in the city's records. In pencil, if ink's too dear.",
	},
	["ifo.quest_complete.w20.pride.014"] = {
		"Dwarves are proudest of work nobody sees: the bolt inside the hinge, the beam behind the wall. I've started to understand it. The best part of this job is the part nobody will ever look at.",
		"The craftsmen here take most pride in what's hidden: the joint under the plating, the footing under the floor. I find I'm proudest of the dull part too.",
	},
	["ifo.quest_complete.w20.pride.015"] = {
		"walks away from the turn-in a fraction slower than usual, the way people walk when they would not at all mind being noticed.",
		"takes the long way round the ring after the business is done, at an easy pace that happens to pass a great many people.",
	},
	["ifo.quest_complete.w20.pride.016"] = {
		"Good work, that. I'll say it myself, so nobody else has to strain.",
		"Fine job, if I say so. And I do, since nobody else seems to.",
		"Well done, me. There. Someone had to.",
	},
	["ifo.quest_complete.w20.pride.017"] = {
		"In a city of faces carved in stone, I don't need mine on a wall. I'd settle for my work being the thing nobody ever has to fix.",
		"No statue, no carving, no song. The best praise this city knows is that nobody touches the work again, and I'd like that kind.",
	},
	["ifo.quest_complete.w20.quip.001"] = {
		"If anyone asks, it was very dangerous, and I was very modest about it.",
		"Should anyone inquire, it was perilous, and I bore it with great humility.",
		"Tell them it was terrifying. Then tell them I never mentioned it.",
	},
	["ifo.quest_complete.w20.quip.002"] = {
		"If I'm not at the tavern within the hour, look in the auction house. If I'm not there either, I've bought something stupid.",
		"If you don't see me by the next shift change, check the auction house. I'll be the face regretting a bid.",
	},
	["ifo.quest_complete.w20.quip.003"] = {
		"Does anyone in this city have a job that pays in sleep? I'd take it at half rate.",
		"Is there any work going that pays in hours of sleep? I'll accept a reduced wage.",
		"Any chance this city hires people to sit very still for an hour? I can start right now.",
	},
	["ifo.quest_complete.w20.quip.004"] = {
		"Before I reach the next hall, someone will have told it wrong. By the time it reaches the Stonefire I'll be twelve feet tall and on fire.",
		"Stories travel round this ring faster than I do. I expect to arrive at the tavern and hear a version where I wrestled a forge.",
	},
	["ifo.quest_complete.w20.quip.005"] = {
		"I'd make a speech, but in these halls I'd have to shout it, and I'm saving my voice to order food.",
		"A proper speech would need shouting over the forges. Consider it shouted. I'm off to eat.",
	},
	["ifo.quest_complete.w20.quip.006"] = {
		"Which way to the tram? And please, the dwarf version of the directions, not the gnome version with diagrams.",
		"Tram's that way? Thank you. The last gnome I asked drew me a map with three appendices.",
		"Just point. A dwarf points; a gnome draws you a chart and asks for comments.",
	},
	["ifo.quest_complete.w20.quip.007"] = {
		"I'm going to celebrate the Ironforge way: standing near something hot and complaining about the price of ore.",
		"Time to celebrate like a local: stand by a fire, grumble about the price of iron, and refuse to sit down.",
	},
	["ifo.quest_complete.w20.quip.008"] = {
		"I took a dignified pace out of the hall. A dwarf child carrying a hammer twice her size overtook me at a run. I've adjusted the pace and abandoned the dignity.",
		"I meant to leave with some dignity. Then a very small dwarf with a very large hammer passed me at a trot, and I've lowered my expectations.",
	},
	["ifo.quest_complete.w20.quip.009"] = {
		"Does this city have a quiet corner, or is that just something the gnomes made up?",
		"Is there a quiet corner anywhere in Ironforge? A small one. I'll bring the silence myself.",
		"Excuse me, which way to somewhere quiet? ...No, I didn't think so either.",
	},
	["ifo.quest_complete.w20.quip.010"] = {
		"steps back from the matter and directly into a length of gnomish string strung across the hall, which, judging by the shrieks, was important.",
		"turns away briskly and gets tangled in a measuring line two gnomes have stretched across the hall, to their high-pitched dismay.",
	},
	["ifo.quest_complete.w20.quip.011"] = {
		"Drinks for the whole hall! ...I've just counted the hall. Drinks for that dwarf there.",
		"I'd stand a round for everyone in this hall, but I've counted them, and my joy has limits.",
	},
	["ifo.quest_complete.w20.quip.012"] = {
		"I could ride the tram and reach Stormwind ahead of the gossip. It's never been done, but I'm in the mood.",
		"If I catch the tram now, I'll reach Stormwind before the news does. Beating gossip to a city: now that would be a feat.",
	},
	["ifo.quest_complete.w20.quip.013"] = {
		"I nod at a guard on my way past. The guard nods back, exactly one inch. In Ironforge that's practically a parade.",
		"A guard on the stair gives me a nod a single finger deep. From an Ironforge guard, I'll take that as a medal.",
	},
	["ifo.quest_complete.w20.quip.014"] = {
		"What? Sorry, what? I'll answer you properly once I'm out of range of the anvils.",
		"Sorry? Say again? I'll hear you better three halls from here.",
		"What was that? You'll have to walk with me somewhere with fewer anvils.",
	},
	["ifo.quest_complete.w20.quip.015"] = {
		"attempts a jaunty little skip on the way out of the hall, catches the eye of a stern dwarf, and converts it smoothly into a stumble.",
		"allows {g:himself|herself} one small skip of a step, sees a guard watching, and turns it into the adjustment of a boot.",
	},
	["ifo.quest_complete.w20.quip.016"] = {
		"That's my share done for the Alliance. Now the Alliance can buy me a pie.",
		"Whatever the Alliance owes me, it can pay in pastry. I'll be at a stall.",
	},
	["ifo.quest_complete.w20.saying.001"] = {
		"The smiths have a saying: a piece isn't finished until it's cool enough to hold in a bare hand. By that measure, mine is still ringing a little.",
		"'Done is when you can pick it up,' an old smith told me, meaning a piece must cool before it counts. I'll let this one cool on the way to the next.",
	},
	["ifo.quest_complete.w20.saying.002"] = {
		"As the miners say: the rock doesn't care who swung the pick, only that somebody did.",
		"Miners' wisdom: the stone never asks whose arm it was. It just moves, or it doesn't.",
		"The miners have it right. Rock doesn't thank you; it gives way. That's thanks enough.",
	},
	["ifo.quest_complete.w20.saying.003"] = {
		"There's a saying at the Stonefire: a favor and a mug of stout both go flat if they're left standing. I'd best collect on both while they still have a head on them.",
		"Somebody at the Stonefire once swore that thanks and stout share a rule: drink them fresh. I intend to take the advice literally.",
	},
	["ifo.quest_complete.w20.saying.004"] = {
		"The masons of Ironforge are said to lay every stone as though the king himself might lean on it. I'd like to think I did the same, in my small way.",
		"'Set it as if Magni will put his weight on it,' the stonecutters tell their apprentices. I didn't set any stone. I tried to work the same way.",
	},
	["ifo.quest_complete.w20.saying.005"] = {
		"Tinker Town has a saying: if it worked the first time, you misunderstood the problem. I'm choosing to ignore it.",
		"The gnomes swear that nothing which works at the first attempt can be trusted. Nobody tell them.",
		"A gnome once warned me: first-try success means you've missed something. Hush. Don't spoil it.",
	},
	["ifo.quest_complete.w20.saying.006"] = {
		"The Ironforge Guard have a saying, they tell me: the gate is only as strong as the chores nobody wanted. I've just done one of those chores.",
		"A guard at the gate once put it plainly: walls don't hold the mountain; the dull jobs behind the walls do. I like being one of the dull jobs.",
	},
	["ifo.quest_complete.w20.saying.007"] = {
		"Work, then ale, then talk: the order every dwarven child hears from the elders before learning to hold a hammer. The first part's done. I know where I'm going next.",
		"The elders of this city still drill it into the young ones: work first, the mug second, the talking last. That rule is older than the halls, and I've just kept it.",
	},
	["ifo.quest_complete.w20.saying.008"] = {
		"An old dwarf told me once: thanks are cheap, but a second job is the real compliment. So, is there a second job?",
		"Somebody here taught me that words of thanks cost nothing; asking again is what counts. I'm listening.",
		"Dwarven wisdom says the true thanks is being asked back. Ask away.",
	},
	["ifo.quest_complete.w20.saying.009"] = {
		"overhears a gray-bearded miner telling a younger one that a job left half done is a grudge you hold against yourself, and lingers until the young one nods.",
		"catches, in passing, an elderly dwarf lecturing an apprentice that unfinished work is the one debt no one else can pay, and slows to hear the end of it.",
	},
	["ifo.quest_complete.w20.saying.010"] = {
		"'What you leave in the dark, the dark keeps,' the miners say, about tools and about tasks alike. Nothing of mine is left down there this time.",
		"The deep miners hold that whatever is left unfinished in the dark belongs to the dark. I've finished this one. It's mine, and now it's theirs.",
	},
	["ifo.quest_complete.w20.saying.011"] = {
		"A dwarf told me once that a hammer never asks to be thanked. Lucky I'm not a hammer.",
		"'The anvil doesn't want gratitude,' they say here. I'm not an anvil. Go on.",
		"Tools don't need thanks, the smiths say. I'm more than a tool, though only just.",
	},
	["ifo.quest_complete.w20.saying.012"] = {
		"is thanked with a short proverb, muttered rather than said, something about iron and patience, and is left to puzzle out the meaning alone.",
		"receives, by way of thanks, a gruff saying about cold iron and slow hands, and is still turning it over a dozen steps later.",
	},
	["ifo.quest_complete.w20.saying.013"] = {
		"The gnomes of Tinker Town claim the fourth attempt is the one that counts; the first three are for finding out where the smoke comes from. Mine counted on the first. They'd be suspicious.",
		"According to the gnomes, every invention needs three failures to be trusted. This job had none. A gnome would send it back for testing.",
	},
	["ifo.quest_complete.w20.saying.014"] = {
		"The scholars of the Explorers' League like to say that a find belongs to whoever writes it down. I suppose a job belongs to whoever finishes it, then. This one is mine.",
		"'Dig it up and it's anyone's; write it down and it's yours,' runs a League saying. Work's the same: start it and it's a promise, finish it and it's a fact.",
	},
	["ifo.quest_complete.w20.saying.015"] = {
		"hears a passing smith call out to no one in particular that cold iron tells no lies, and nods along, without being entirely sure why.",
		"catches a smith's shouted saying above the din, something about hot metal and honest work, and finds {g:himself|herself} nodding at it.",
	},
	["ifo.quest_complete.w20.saying.016"] = {
		"The brewers here say good work is like good stout: it won't be hurried and it won't be faked.",
		"As the brewers put it: you can't rush a cask, and you can't rush a job done right.",
		"A brewer's saying for you: let it settle before you judge it.",
	},
	["ifo.quest_complete.w20.stretch.001"] = {
		"flexes {g:his|her} fingers one by one, as if checking that each of them has come through the matter in working order.",
		"opens and closes both hands a few times, counting fingers with the look of someone pleasantly surprised by the total.",
		"inspects both palms, turns them over, and finds them in better shape than expected, which makes a pleasant change.",
	},
	["ifo.quest_complete.w20.stretch.002"] = {
		"My ears ring in time with the nearest anvil. I can't tell anymore whether the sound is out there or simply living in me now.",
		"A faint ringing follows me from hall to hall. It may be the hammers. It may be me, asking for a quiet room.",
	},
	["ifo.quest_complete.w20.stretch.003"] = {
		"I take off the gloves and let my hands meet the warm air. It's a small thing. It's the best thing that's happened to my hands in some time.",
		"Gloves off. The heat of the halls goes straight to my knuckles, and for a moment nothing else in the world needs doing.",
	},
	["ifo.quest_complete.w20.stretch.004"] = {
		"eases onto the end of a bench beside an old miner, and the two sit there without a word, which seems to suit them both.",
		"takes the free end of a bench by the wall; the dwarf at the other end shifts a single inch to make room, which here counts as a warm welcome.",
	},
	["ifo.quest_complete.w20.stretch.005"] = {
		"Something in my left knee clicks on every third stair. I've decided it's keeping time with the hammers, which makes it a feature.",
		"A twinge in one knee every few steps. I let it set the pace and pretend I'm strolling on purpose.",
		"My shoulders have stiffened into the shape of the pack. With every strap I loosen, they unbend a little and complain a lot.",
	},
	["ifo.quest_complete.w20.stretch.006"] = {
		"Every bench in Ironforge is solid stone. Lovely work. My backside has filed a complaint with the carver.",
		"Every seat here is carved out of the mountain. My back would like a word with whoever decided cushions were for elves.",
	},
	["ifo.quest_complete.w20.stretch.007"] = {
		"turns {g:his|her} face toward the heat of an open forge-mouth and lets it soak in, eyes half closed, like a cat by a hearth.",
		"stops by an open forge just long enough to warm both cheeks, then moves on before the smith can find a use for an idle pair of hands.",
	},
	["ifo.quest_complete.w20.stretch.008"] = {
		"My mouth is as dry as forge-dust. Water first, before anything with froth on it.",
		"I'm parched in that particular Ironforge way, where the heat dries you out without your noticing. Water. Then I'll see.",
	},
	["ifo.quest_complete.w20.stretch.009"] = {
		"works a knot out of the back of {g:his|her} neck with two fingers, glaring at the carved ceiling as if it were responsible.",
		"rubs a stiff neck and squints up at the vaulted rock, which has been there far longer than the stiffness and looks less sorry about it.",
	},
	["ifo.quest_complete.w20.stretch.010"] = {
		"Nothing in my hands, nothing owed. My arms swing as I walk, and that alone feels like a small holiday.",
		"Empty hands. They swing at my sides as I walk, foolishly, like a child's. I let them.",
	},
	["ifo.quest_complete.w20.stretch.011"] = {
		"Pardon the yawn. It isn't you, it's the warmth. This city tucks you in whether you asked or not.",
		"Excuse me. Yawning. It's the heat in these halls; it gets into you like a second blanket.",
	},
	["ifo.quest_complete.w20.stretch.012"] = {
		"stamps each boot once on the stone, to settle the feet back into them, and sets off with a sound like a small drum.",
		"knocks one boot heel against the other, shaking loose whatever was in there, and walks on with a lighter step.",
	},
	["ifo.quest_complete.w20.stretch.013"] = {
		"I buy something hot wrapped in paper and eat it standing in a doorway, out of everybody's way. No reward comes close.",
		"A pastry from a stall, too hot to hold, eaten anyway. The best pay of the hour, and I paid for it myself.",
	},
	["ifo.quest_complete.w20.stretch.014"] = {
		"One moment. I'm going to stretch, and it may be loud.",
		"Give me a moment to stretch. From my neck to my heels, every part of me has something to say.",
	},
	["ifo.quest_complete.w20.stretch.015"] = {
		"There's a particular tiredness that comes after, not during. It arrives now, sits down on my shoulders, and asks only to be carried as far as a bench.",
		"The tiredness waited politely until the matter was settled. Now it climbs onto my shoulders like a child who has been very good and would like to be carried.",
	},
	["ifo.quest_complete.w20.stretch.016"] = {
		"Ah. Shoulders down, chin up. I'd forgotten I could stand like this.",
		"There. My back is straight for the first time in a good while. Somebody note the occasion.",
	},
	["ifo.quest_complete.w20.stretch.017"] = {
		"My hands smell of other people's leather and somebody's pipe. I'll wash them at the first basin I find, and then they'll smell of Ironforge water, which is to say faintly of iron.",
		"First basin I find, I'm washing my hands. The water here tastes of iron and smells of it too, which seems only fair.",
	},
	["ifo.quest_complete.w20.tally.001"] = {
		"is handed three forms, a chewed pencil and a torrent of thanks, and signs where a small finger points, then there, then there.",
		"signs a form, then its twin, then a third copy for a cabinet in Tinker Town, while the gnome alongside pours out thanks at a gallop.",
		"watches a gnome clerk shuffle a sheaf of papers, give thanks four times without a pause, and slide across a pen chewed flat at the end.",
	},
	["ifo.quest_complete.w20.tally.002"] = {
		"A notch on a tally stick, and the stick hung back on its nail among forty others. Somewhere in that row is a mark that means me.",
		"One knife cut in a length of wood, and the wood back on its peg. I've been recorded the way a quarry counts its carts.",
		"Scored on a tally stick with a little knife, and the stick hung back on the wall. The oldest sticks in that row are black with handling.",
	},
	["ifo.quest_complete.w20.tally.003"] = {
		"The gnome logged the hour, my name, the state of my boots and, I suspect, my mood. Somewhere in Tinker Town there's a file on me thicker than the job.",
		"Name, date, boot size. The gnome wanted boot size. I didn't ask why, and I'm already regretting it.",
		"Some drawer in Tinker Town now holds my name, the date, and a note that I fidgeted. The gnome took that down too.",
	},
	["ifo.quest_complete.w20.tally.004"] = {
		"waits while the matter is written up in a small slanting hand, the pen stopping only to scratch the writer's ear.",
		"stands by as the job is entered in a book with brass corners, the line ruled off underneath with a straightedge and a grunt.",
	},
	["ifo.quest_complete.w20.tally.005"] = {
		"A receipt for the pay, and now a receipt for the receipt. Of course. Where do I sign?",
		"Two copies? Naturally two copies. One for you, and one for whoever checks you.",
		"Of course there's a form. Is there a form for the form? I'd hate to miss it.",
	},
	["ifo.quest_complete.w20.tally.006"] = {
		"No paper, no ink: a chalk line through a name on a slate. One stroke, a little smear on the side of a hand, and the matter is closed.",
		"Struck off with chalk on a slate by the door. Simple. That slate has been wiped and written so often the stone underneath has gone pale.",
		"A chalk stroke through my name on the board, then a thumb rubbed across it for good measure. Closed, in the plainest way there is.",
	},
	["ifo.quest_complete.w20.tally.007"] = {
		"Here? Ah, the line below. And there as well. Anywhere else while I've the pen?",
		"Wrong box? So it is. I'll sign the right one. And this one too, apparently.",
	},
	["ifo.quest_complete.w20.tally.008"] = {
		"The scholar who took my account stopped twice to sketch something in the margin and would not say what. I'd give a fair part of the pay to see that page.",
		"Halfway through my telling, the pen wandered off into a little drawing in the margin. I wasn't allowed to see it. The League keeps its doodles close.",
		"The scholar wrote faster than I could talk, and twice drew something in the margin, turning the page away when I leaned in to look.",
	},
	["ifo.quest_complete.w20.tally.009"] = {
		"Slower? Of course. And would the League like it in the margin as well?",
		"Say it again for the record? I've said it three times. The record must be very hard of hearing.",
		"Every detail, yes. Even the dull ones. Especially those, I gather.",
	},
	["ifo.quest_complete.w20.tally.010"] = {
		"watches a gnome stamp the paper with a brass device that goes ka-chunk and then, after a pause, ding. The ding, it seems, is the important part.",
		"jumps a little as a brass stamping contraption seals the paperwork with a thump, a whir and a tiny bell, to the gnome's open delight.",
		"hears the paperwork finished off with a stamp, a clank and a small brass bell, and the gnome looks up as if expecting applause.",
	},
	["ifo.quest_complete.w20.tally.011"] = {
		"I watched the matter go into the book, the book onto a shelf, and the shelf, I'm nearly sure, into a list of shelves.",
		"Into the ledger, ledger onto the rack, rack into the index of racks. My errand now has more paperwork than some kingdoms.",
		"Book, shelf, list of shelves. If anyone ever wants to know what I did, it's all there. They'll only need a gnome and a long while.",
	},
	["ifo.quest_complete.w20.tally.012"] = {
		"Triplicate forms, a stamp and a counter-stamp. Gnomeregan ran on paperwork. It's a small, ridiculous comfort that the paperwork got out when so much else didn't.",
		"Gnomeregan filed everything, and a clerk from home is still filing everything in Tinker Town. The forms made it out. I'll take that as a sign.",
	},
	["ifo.quest_complete.w20.tally.013"] = {
		"My name, in heavy dwarven capitals, pressed so hard into the page it shows through on the back. Ironforge writes as if ink could be chiseled.",
		"The pen went into the paper like a chisel into slate. Whatever I did is down there now, in letters meant to survive a cave-in.",
		"My name went down in letters a stonecutter would approve of. Nobody here writes lightly; you can feel the words through the sheet.",
	},
	["ifo.quest_complete.w20.tally.014"] = {
		"watches the ink dried with a pinch of fine sand from a tin, the grains shaken back into the tin afterward so that not one is wasted.",
		"sees the fresh entry blotted with sand, and the sand carefully tipped back into its box, grain by grain if it could be managed.",
	},
	["ifo.quest_complete.w20.tally.015"] = {
		"Put me down however you like. Just put the pay down beside it.",
		"Write my name crooked if you must. The sum, though, I'd like straight.",
	},
	["ifo.quest_complete.w20.tally.016"] = {
		"Slow down, slow down, I can see you're very grateful. Where do I sign so you can stop?",
		"Thank you too. And thank you again. Three times is plenty, honestly, and so are three forms.",
	},
	["ifo.quest_complete.w20.worth.001"] = {
		"Coin is the smallest part of what changed hands just now. What I really earned is a thought in somebody's head: that one finishes things.",
		"The purse is only the receipt. The real pay is quieter: next time my name comes up in this city, nobody will frown first.",
	},
	["ifo.quest_complete.w20.worth.002"] = {
		"pauses by a stretch of wall where a mason's mark is cut low and half hidden, a sign meant for no one, and studies it longer than the carving above.",
		"notices a small mason's mark chiseled where no visitor would ever look, touches it lightly with two fingers, and walks on.",
	},
	["ifo.quest_complete.w20.worth.003"] = {
		"Before anyone could live in these halls, somebody had to haul the mountain out of them by the barrowload. Most of this city's work was taking things away. Some of mine was too.",
		"Every hall here began as rock somebody carted off. Ironforge was made by removing what was in the way, and I understand the trade a little better now.",
	},
	["ifo.quest_complete.w20.worth.004"] = {
		"In a city of master smiths, 'it'll do' is an insult. So: it's done properly.",
		"Don't say 'that'll do'. Not under this mountain. Say 'that'll hold'.",
		"Around here 'good enough' earns a look. I was after the nod.",
	},
	["ifo.quest_complete.w20.worth.005"] = {
		"Troggs in the deep tunnels, the Dark Iron to the south, worse things below both. A mountain full of iron and gold draws enemies like a lamp draws moths, and every errand that keeps the city running keeps them a little further off. Mine included.",
		"Everything worth having in Ironforge is worth stealing to someone outside it. That's why there's always work. I don't mind being part of the reason it all stays put.",
	},
	["ifo.quest_complete.w20.worth.006"] = {
		"watches a master nearby take a finished piece from an apprentice, turn it over once, set it on the scrap heap without a word, and hold out a hand for the next.",
		"sees a master smith drop an apprentice's work into the scrap bin after a single glance, and glances, briefly, at {g:his|her} own pack.",
	},
	["ifo.quest_complete.w20.worth.007"] = {
		"Because my part is done, somebody in this city can get on with theirs. That's how a place like this runs: one pair of hands freeing the next.",
		"Handed off. Now someone else can start. Ironforge is a long chain of people waiting on one another, and I've just stopped being the link everybody was waiting for.",
	},
	["ifo.quest_complete.w20.worth.008"] = {
		"Will it stand a thousand years, like everything else in this city? No. Will it stand until supper? Very likely.",
		"Not built to outlast the mountain, I admit. Built to outlast the week, which is ambitious enough for me.",
	},
	["ifo.quest_complete.w20.worth.009"] = {
		"A city this old has a thousand small things going wrong at once, and always will. I put one right. The other nine hundred and ninety-nine don't make it count for less.",
		"No city carved this deep ever runs out of things to mend. I've mended one. The mountain won't notice, and the person who asked already has.",
	},
	["ifo.quest_complete.w20.worth.010"] = {
		"notices the one who gave the work leaning toward a neighbor, a thumb jerked in {g:his|her} direction and a few words too low to catch.",
		"is pointed out across the hall, briefly, by a raised finger and a remark the din carries off before it arrives.",
		"catches {g:his|her} own description being passed along to someone else: a nod toward {g:him|her}, a short sentence, a second nod.",
	},
	["ifo.quest_complete.w20.worth.011"] = {
		"Small work. But this city was cut out of a mountain with small work.",
		"Little jobs, one after another. That's how anyone ever got a hall out of solid rock.",
		"Don't sneer at small tasks in a place carved by chisels.",
	},
	["ifo.quest_complete.w20.worth.012"] = {
		"The king on his high seat will never hear a word about this. Good. Magni has enough to carry, and a city's quiet work is meant to stay under the floor.",
		"Not a whisper of this will reach the throne. It isn't supposed to. Kings stand on a great deal of work they never see, and that's the floor doing its job.",
	},
	["ifo.quest_complete.w20.worth.013"] = {
		"stands aside for a gnome hurrying by with a half-built contraption, and watches it carried off as though measuring it against {g:his|her} own day's work.",
		"makes room for a dwarf shouldering a newly forged grate, and follows the thing with {g:his|her} eyes until it disappears around the ring.",
	},
	["ifo.quest_complete.w20.worth.014"] = {
		"Half the steel the Alliance carries into the field was poured under this mountain. Doing my share for the city that arms everyone else feels like oiling the main gear of the whole machine.",
		"When the Alliance goes to war, it goes in Ironforge plate with Ironforge rifles. Doing this city's work is tending the forge of every army on the side I chose.",
	},
	["ifo.quest_complete.w20.worth.015"] = {
		"Keep the thanks for the next one. You'll need it more than I do.",
		"No speeches, please. Just ask me first, next time.",
		"If you want to thank me, call on me before anyone else.",
	},
	["ifo.quest_complete.w20.worth.016"] = {
		"The stone of this city was worked by hands that are long gone, and it still keeps them out of the cold. That's the measure here: not how loud the work was, but how long it goes on helping.",
		"Ironforge judges work the way it judges stone: by what it still holds up after its makers are forgotten. Mine won't last that long. It doesn't have to, to be honest work.",
	},
	["ifo.quest_complete.w20.worth.017"] = {
		"watches a file of mountaineers clatter past toward the gate, rifles on their shoulders, and follows them with {g:his|her} eyes until the hall bends them out of sight.",
		"stands aside for a patrol of the Ironforge Guard heading out, the stamp of their boots dwindling down the hall, and watches the last of them go.",
		"makes room for armored dwarves bound for the gate, and listens to their plate jingle away into the distance.",
	},
	["ifo.quest_complete.w20.worth.018"] = {
		"is asked by a passing gnome whether the job had anything to do with Gnomeregan, and watches the bright face fall, then brighten again, all in a moment.",
		"answers a gnome's eager question with a shake of the head: no, nothing to do with Gnomeregan. The gnome nods, unsurprised, and hurries on, still hoping.",
	},
	["ifo.quest_complete.w20.worth.019"] = {
		"Somebody tell the Dark Iron this mountain just got a little harder to crack.",
		"Pass word down to Blackrock: Ironforge holds. A bit better than it did.",
		"If the Dark Iron are listening at the cracks: you'll want a bigger chisel.",
	},
	["ifo.quest_complete.w20.worth.020"] = {
		"One day the gnomes will have their city back. Count this toward it, however small.",
		"Put it on the gnomes' account, if there is one. Every bit should count toward Gnomeregan.",
		"There must be a reckoning somewhere of what it'll take to win Gnomeregan back. Add this to it.",
	},
	["ifo.quest_complete.w20.worth.021"] = {
		"There. One more reason for the troggs to stay downstairs.",
		"Done. Let the troggs take note and keep to the cellar.",
		"That should give the troggs something to sulk about.",
	},
	["ifo.quest_complete.w20.worth.022"] = {
		"This city measures everything: ore by the weight, ale by the mug, grudges by the generation. I've no idea what scale to put this on. Maybe that's what makes it mine.",
		"Ironforge has a measure for everything but this. The ore has its scales, the stout its mugs, the feuds their centuries. My small job doesn't fit any of them, and I don't mind.",
	},
]==])
