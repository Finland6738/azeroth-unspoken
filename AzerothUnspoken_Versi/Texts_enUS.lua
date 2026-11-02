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
}, "versi")
