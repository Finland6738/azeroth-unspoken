-- Azeroth Unspoken: verses pack, the texts in English (step L0, #115). The rules are in Registry.lua; the English and
-- Italian texts are re-created, not translated: same intention and register, each with its own metre. A song of
-- stanzas (#127) has its frame first (the attribution and the refrain, {stanzas} where the stanzas go), then the
-- stanzas in their order. Written through the archive: tools/archive (CONTRIBUTING.md).
local AU = AzerothUnspoken

AU:AddTexts("enUS", {

	------------------------------------------------------------------------
	-- Inscriptions and solemn formulas: first visit to a ruin or a sacred place
	------------------------------------------------------------------------
	["versi.inscription.ruin.01"] = {
		"Worn letters on a fallen lintel:\nWe set this stone where none had stood\nand asked the hill to keep it true.\nThe hill has kept the stone, not us.\nRemember that, who reads this through.",
	},
	["versi.inscription.ruin.02"] = {
		"Cut beside a doorway with no door:\nTraveler, the roof has fallen;\nstill the wall will turn the rain.\nWe who raised it ask one thing:\nleave it standing. Come again.",
	},
	["versi.inscription.sacred.01"] = {
		"Words cut deep beside the threshold, still sharp:\nSet down the blade before you cross this sill;\nthe ground is listening, and it is still.\nWhatever anger walked with you this far\nmay wait outside; it knows just where you are.",
	},
	["versi.inscription.names.01"] = {
		"Under a crowd of scratched names, an older line:\nWrite your name, as others did;\nrain will read it, then forget.\nStone is slow, and stone is blind;\nstone has not forgotten yet.",
	},

	------------------------------------------------------------------------
	-- Verses remembered on return (memory_return: each one declares the memory it needs)
	------------------------------------------------------------------------
	["versi.return.verse.01"] = {
		"A verse I cannot place comes back with the path:\nNothing waited while I traveled;\ngrass grew over what I knew.\nStill the hill remembered walking,\nand my feet remembered too.",
	},
	["versi.return.verse.02"] = {
		"An old marching verse, the kind sung under the breath:\nWhere you fell, the ground is softer;\nwhere you ran, the path is known.\nWalk it twice and it is yours;\nwalk it once and it's its own.",
	},
	["versi.return.verse.03"] = {
		"A doorstep rhyme, the kind told to children, comes back unasked:\nOnce is a stranger,\ntwice is a guest,\nthree times the kettle\nknows where you rest.",
	},

	------------------------------------------------------------------------
	-- Inn rhymes: the innkeeper's voice (ambient dialogue, or meeting an innkeeper)
	------------------------------------------------------------------------
	["versi.inn.rhyme.01"] = {
		"We sing this one when the night runs late:\nOne for the road and one for the rain,\none for the friend who won't come again;\nthe last for the keeper, who pours them all\nand sweeps up the songs when the singers fall.",
	},
	["versi.inn.rhyme.02"] = {
		"News? There's a rhyme for that, older than this counter:\nRumor walks in muddy boots,\ntruth arrives a day behind;\none will drink and one will pay.\nGuess which one I'd rather find.",
	},

	------------------------------------------------------------------------
	-- Road songs: a journey by spell (travel), with a short form for the natural depth
	------------------------------------------------------------------------
	["versi.road.song.01"] = {
		{ "The pocket-stone song comes to mind, the one every inn seems to know:\nTurn the stone and close your eyes,\nlet the long road fold away;\nsomeone's lamp is in the window,\nsomeone's chair is where it lay.", depth = { "literary", "elevated" } },
		{ "Turn the stone, shut your eyes, and the road folds away. That's how the song goes, anyway.", depth = "natural" },
	},
	["versi.road.song.02"] = {
		{ "A leaving song, the kind sung half in jest at the door:\nLeave the dust upon the shelf,\nleave the ashes in the grate;\nlet the house keep house itself;\nthose who love you know to wait.", depth = { "literary", "elevated" } },
		{ "Leave the dust, leave the ashes; the house keeps itself. So says the leaving song.", depth = "natural" },
	},

	------------------------------------------------------------------------
	-- A walking song of interchangeable stanzas (#127, ADR 0043): a long ride (journey); the frame holds the
	-- attribution and the refrain, two of the four stanzas are said, in their order
	------------------------------------------------------------------------
	["versi.road.stanzas.01"] = {
		"A walking song comes back, the kind that keeps the feet in time:\n{stanzas}\n\nSo step and step, the road is long,\nand shorter for a song.",
		"The hill is steep, the pack is old,\nthe strap has worn a groove;\nbut feet that know the way they go\nwill find the way to move.",
		"The dust will rise, the dust will fall,\nthe boots will shake it free;\nthe road remembers every step,\nthen lets the walker be.",
		"The stars come out above the ford,\nthe fire takes its time;\nthe water talks, the kettle sings,\nand neither keeps the rhyme.",
		"And when at last the road is done\nand every verse is sung,\nthe feet will hum it on their own\nthe way they did when young.",
	},

	------------------------------------------------------------------------
	-- Sayings for an encounter: someone we know acts toward us (trust, wariness)
	------------------------------------------------------------------------
	["versi.meet.trust.01"] = {
		"A saying heard once around someone's fire:\nA friend is one who holds the rope\nand does not ask how deep the fall;\nwho shares your water, not your hope,\nand comes when no one thought to call.",
	},
	["versi.meet.wary.01"] = {
		"A market-stall proverb, unbidden:\nSmile for smile and coin for coin,\nbut count the coin and watch the smile;\na hand held out is still a hand,\nand hands can change in half a mile.",
	},

	------------------------------------------------------------------------
	-- Hymn (pray) and lament (a boss fight lost)
	------------------------------------------------------------------------
	["versi.hymn.pray.01"] = {
		"The words come back plain and slow, the way such words are taught:\nKeep watch on all who walk tonight\non roads they do not know,\nand keep a door for those who come\nand those who have to go.",
	},
	["versi.lament.wipe.01"] = {
		"The lament fighters mutter after a lost field:\nWe fell together, every one,\nand none of us alone.\nSo rise, and bind what can be bound,\nand leave the rest to stone.",
	},

	------------------------------------------------------------------------
	-- Songs of a nemesis's fall (N7): put in the songbook when a nemesis falls
	------------------------------------------------------------------------
	["versi.nemesis.song.01"] = {
		"A hunters' song, the kind roared once the danger is past:\nRaise the cup and raise the cheer,\nthe thing we feared has had its day;\nit struck us once, it struck us here,\nand here it fell, and here it lay.",
	},
	["versi.nemesis.song.02"] = {
		"A feud song, sung low at the fire by those who carry one:\nOnce it laid me in the dust,\ntwice it bade me stay and rot;\nrise I did, as rise I must,\nand the debt was not forgot.",
	},
	["versi.nemesis.song.03"] = {
		"An old saying of the hill folk, half a song, for a foe that fell:\nEven the wolf the shepherd slew\nwas mourned by the hills it wandered through;\nthe hills take no side and they keep no score:\none wild voice the less, and nothing more.",
	},

	------------------------------------------------------------------------
	-- Laments for a loss (N8): put in the songbook with a grief
	------------------------------------------------------------------------
	["versi.lament.ally.01"] = {
		"A lament of those who travel in company, for one who did not rise:\nWe shared the fire, we shared the bread,\nwe shared the long road, mile on mile;\nnow one more name among the dead,\nand one less voice, and one less smile.",
	},
	["versi.lament.npc.01"] = {
		"A mourning verse they say in small towns when a familiar face is gone:\nThe door still swings, the kettle sings,\nthe lamp is lit at dusk the same;\nbut no one answers when it rings,\nand no one calls me by my name.",
	},
	["versi.lament.pet.01"] = {
		"A hunters' lament, said low over a fallen companion:\nYou ran ahead of me through every wood,\nyou never asked the reason or the road;\nlie easy now, old friend, where you have stood:\nthe weight of what comes after is my load.",
	},
	-- N9 (#221): more songs of a fall and laments, a piece for each culture of origin (#124: the inner voice for its own
	-- people), a tale and a saying heard from an innkeeper, a common tale and an inn song of interchangeable stanzas
	["versi.culture.dwarf.01"] = {
		"A drinking song of the forge-halls, roared with the tankards held high:\nStone is cold and iron gray,\nand the anvil sings off-key;\nfill the cup and drown the day,\nfor the forge will wait for me.",
	},
	["versi.culture.forsaken.01"] = {
		"A saying of the risen, passed from cellar to cellar with a dry laugh:\nCold the grave and cold the road,\nlong the sleep and long the day;\nkeep your wits, and drop the load:\nall the rest has gone its way.",
	},
	["versi.culture.gnome.01"] = {
		"A workshop rhyme, the kind chalked over every workbench:\nNote the spark and note the smoke,\nnote the bang that shook the floor;\nevery bolt that ever broke\ntaught the bench a little more.",
	},
	["versi.culture.human.01"] = {
		"A plowing song from the farms, the kind sung behind the ox:\nFurrow straight and furrow long,\nturn the earth and turn the song;\nwhat the field will give, it gives,\nand the one who plows it lives.",
	},
	["versi.culture.kaldorei.01"] = {
		"A watch-song of the sentinels, sung low when the moon clears the trees:\nRise slow above the sleeping wood\nand silver every bough;\nwe kept the watch as sisters should,\nand you may keep it now.",
	},
	["versi.culture.orc.01"] = {
		"A marching chant of the clans, beaten out on the drum before the dust settles:\nBeat the hide and stamp the stone,\nevery foot beside my own;\nwhat was lost lies far behind,\nall the rest is ours to find.",
	},
	["versi.culture.queldorei.01"] = {
		"A verse the exiles of the golden woods still say, when the light slants just so:\nThe leaves at home were gold all year;\nwe did not think them rare.\nNow every autumn, far from there,\nI see them everywhere.",
	},
	["versi.culture.tauren.01"] = {
		"A dawn blessing of the plains folk, said with a hand pressed flat to the ground:\nGrass, stand up; the sun has come.\nEarth, be patient with our feet.\nWind, go first and tell the herd\nwe walk softly where we meet.",
	},
	["versi.culture.troll.01"] = {
		"A saying of the island folk, passed from the old to the young beside the fire:\nThe tide goes out, the tide comes in;\nthe shore forgets each mark you make.\nSo walk it light, and keep your kin,\nand give the sea what it will take.",
	},
	["versi.inn.saying.orc.01"] = {
		"Something a caravan hand from the clans once told me, and I never forgot it:\nFeed the belly, and the grudge grows thin;\nstarve it, and it learns each name.\nSo eat, and let a little go:\nthe road will teach it all the same.",
	},
	["versi.inn.stanzas.01"] = {
		"A song the regulars strike up whenever someone new sits down:\n{stanzas}\n\nSo pull up a stool and pull up a cup:\nthe fire is low, but the keeper is up.",
		"The farmer came in with the mud to his knee,\nand swore that the rain was in love with his tree;\nhe drank to the rain, and he drank to the root,\nand went off at last in a single wet boot.",
		"The soldier came in with a dent in her shield,\nand told of the dragon she fought in the field;\nby three cups the dragon had dwindled to geese,\nby four it was one, and it wanted some peace.",
		"The miner came in with the dust in his beard,\nand swore that the deep was not all that he feared;\nthe thing that he feared was the foot of his cup,\nso he kept it from showing by filling it up.",
		"The stranger came in with no name and no tale,\nand sat in the corner and nursed her one ale;\nwe sang her these verses, and when they were done,\nshe knew every word, and she sang the last one.",
	},
	["versi.inn.tale.tauren.01"] = {
		"A tale I had from a traveler of the plains, years ago:\nA young runner once raced the rain across the grass.\nShe ran until her heart was thunder, and still the rain caught her.\nAn elder found her soaked and laughing on a hill.\n\"You lost,\" he said. \"And the grass drank. Not every race is yours to win.\"",
	},
	["versi.lament.ally.02"] = {
		"A cellar dirge of the risen, said for one who does not stand up:\nWe died once, and we did not stay;\nwe found our feet, and walked away.\nSo may you rise, or may you rest:\nwhichever one the dark thinks best.",
	},
	["versi.lament.ally.03"] = {
		"A shore lament of the island folk, sung to the slap of the water:\nThe water took you, as it takes,\nand gave the shore your name;\nwe sing you out beyond the reef,\nand keep the song the same.",
	},
	["versi.lament.npc.02"] = {
		"A wake song of the farmlands, sung slow when a neighbor is carried out:\nLeave the gate upon the latch,\nleave a loaf upon the board;\nhands that helped us mend the thatch\nwalk ahead now, down the road.",
	},
	["versi.lament.pet.02"] = {
		"A keening of the sentinels for a fallen companion of the hunt, sung with no tune at all:\nYour step was softer than the leaf,\nyour eye was brighter than the stream;\nnow lie where roots will hold you close\nand run the woods inside a dream.",
	},
	["versi.nemesis.song.04"] = {
		"The old boast of hunters, said once over a fallen terror and never again:\nHere ends the fear that walked this road,\nhere stood the hunted one;\nmark well the ground, and let it lie:\nthe telling is begun.",
	},
	["versi.nemesis.song.05"] = {
		"A blood-feud chant of the clans, growled low once the feud is closed:\nThree times it threw me to the dirt,\nthree times the dirt said no;\nnow let the drum speak what it knows:\nthe debt is paid. Let go.",
	},
	["versi.nemesis.song.06"] = {
		"A hall song of the mountain clans, sung as a new notch is cut in the stone of the doorpost:\nCut the notch and name the day,\nlet the stone keep what we say;\none less terror, one less fear,\none more notch to tally here.",
	},
	["versi.nemesis.song.07"] = {
		"A plains verse said over a great foe fallen, before the hunters leave it to the earth:\nYou walked these hills before my kin;\nthe grass rose up where you had been.\nLie down, and give the earth its due;\nthe hills will keep a place for you.",
	},
	["versi.tale.road.01"] = {
		"A story caravan drivers tell, to pass a slow mile:\nA driver once cursed his mule for stopping dead on a clear road.\nHe pulled, he pleaded, he sat down and sulked beside it.\nLater that day a rockslide came down the very bend ahead.\nThe mule had heard the stones long before. He never cursed it again.",
	},
}, "versi")
