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
]==])
