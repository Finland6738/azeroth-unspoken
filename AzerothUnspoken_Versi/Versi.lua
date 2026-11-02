-- Azeroth Unspoken: verses pack (step L0, issue #115). A prototype of literary forms with no engine change:
-- inscriptions and solemn formulas, verses remembered on return, inn rhymes, road songs, sayings for an encounter,
-- a hymn and a lament, each in English and Italian.
--
-- Rules for these texts (CONTRIBUTING.md, "Literary forms"; owner decisions in issue #130):
--   - never in public chat (D16): every piece is spoken by a private voice, `inner` or `npc`;
--   - invented songs and legends are always attributed to a voice (an inscription, a singer, a saying) and never
--     stated as fact (D7); no invented proper names, no canonical character as the author;
--   - culture is never deduced from race (D17): no piece has a race or faction condition;
--   - rare: never in combat, a cooldown of three to seven days per piece, and the literary category `lore` (#118): at
--     most about one piece every 20-30 minutes at intensity 50, following the setting "literary forms";
--   - the attribution on the first line, then one verse per line (#117: real line breaks, read one at a time in the
--     private narrator, #126); at most 255 bytes, well under the reading limit of 600.
--
-- `/au event lore_test` shows one piece at a time, with no condition and no cooldown, to try them all in game.
local AU = AzerothUnspoken

local DAY = 86400

-- One entry per piece: `key` (the id is "versi." .. key), the rule and the texts. The English and Italian texts
-- are re-created, not translated: same intention and register, each with its own metre.
local PIECES = {
	-----------------------------------------------------------------------
	-- Inscriptions and solemn formulas: first visit to a ruin or a sacred place
	-----------------------------------------------------------------------
	{
		key = "inscription.ruin.01",
		rule = { event = "zone", speaker = "inner", category = "lore",
			styles = { "ancient", "ceremonial" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_inscription", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		enUS = "Worn letters on a fallen lintel:\nWe set this stone where none had stood\nand asked the hill to keep it true.\nThe hill has kept the stone, not us.\nRemember that, who reads this through.",
		itIT = "Lettere consunte su un architrave caduto:\nQuesta pietra noi posammo\ne la demmo in pegno al monte.\nIl monte ha tenuto il sasso,\nnon noi. Tu, china la fronte.",
	},
	{
		key = "inscription.ruin.02",
		rule = { event = "zone", speaker = "inner", category = "lore",
			styles = { "ancient", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_formula", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		enUS = "Cut beside a doorway with no door:\nTraveler, the roof has fallen;\nstill the wall will turn the rain.\nWe who raised it ask one thing:\nleave it standing. Come again.",
		itIT = "Parole incise accanto a una soglia senza porta:\nIl tetto è già caduto,\nma il muro ferma il vento.\nChi l'alzò chiede un dono:\nlascialo in piedi. E torna.",
	},
	{
		key = "inscription.sacred.01",
		rule = { event = "zone", speaker = "inner", category = "lore",
			styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_formula", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true,
				place = { tags = "sacred", ["not"] = { tags = { "dark", "cursed" } } } } },
		enUS = "Words cut deep beside the threshold, still sharp:\nSet down the blade before you cross this sill;\nthe ground is listening, and it is still.\nWhatever anger walked with you this far\nmay wait outside; it knows just where you are.",
		itIT = "Parole scavate a fondo all'ingresso, ancora nitide:\nDeponi l'arma prima della soglia:\nla terra ascolta, e qui ogni cosa tace.\nL'ira che fino a qui ti è stata accanto\naspetti fuori: sa dove trovarti.",
	},
	{
		key = "inscription.names.01",
		rule = { event = "zone", speaker = "inner", category = "lore",
			styles = { "ancient", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_inscription", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = { "ruin", "sacred" } } } },
		enUS = "Under a crowd of scratched names, an older line:\nWrite your name, as others did;\nrain will read it, then forget.\nStone is slow, and stone is blind;\nstone has not forgotten yet.",
		itIT = "Sotto una folla di nomi graffiati, una riga più antica:\nScrivi il nome, come gli altri;\nlegge la pioggia, poi scorda.\nLenta è la pietra, ed è cieca;\nlei, però, non scorda ancora.",
	},

	-----------------------------------------------------------------------
	-- Verses remembered on return (memory_return: each one declares the memory it needs)
	-----------------------------------------------------------------------
	{
		key = "return.verse.01",
		rule = { event = "memory_return", speaker = "inner", category = "lore", styles = { "intimate", "ancient" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_verse", "origin_remembered" }, cooldown = 5 * DAY,
			conditions = { combat = false, repeatVisit = true, daysSinceLastVisit = 7 } },
		enUS = "A verse I cannot place comes back with the path:\nNothing waited while I traveled;\ngrass grew over what I knew.\nStill the hill remembered walking,\nand my feet remembered too.",
		itIT = "Torna, col cammino, un verso di chissà dove:\nNulla attese il mio ritorno;\nl'erba ha coperto i sentieri,\nma la terra sa i miei passi\ne i miei piedi sanno i suoi.",
	},
	{
		key = "return.verse.02",
		rule = { event = "memory_return", speaker = "inner", category = "lore", styles = { "intimate", "epic" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_verse", "origin_sung", "topic:death" },
			cooldown = 5 * DAY, conditions = { combat = false, lastVisitBad = true } },
		enUS = "An old marching verse, the kind sung under the breath:\nWhere you fell, the ground is softer;\nwhere you ran, the path is known.\nWalk it twice and it is yours;\nwalk it once and it's its own.",
		itIT = "Un vecchio verso di marcia, di quelli che si cantano a mezza voce:\nDove cadi, il suolo è molle;\ndove fuggi, impari il passo.\nFallo due volte, ed è tuo;\nuna volta, è solo un sasso.",
	},
	{
		key = "return.verse.03",
		rule = { event = "memory_return", speaker = "inner", category = "lore", styles = { "intimate", "everyday" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_nursery_rhyme", "origin_remembered" },
			cooldown = 5 * DAY, conditions = { combat = false, visitsMin = 3 } },
		enUS = "A doorstep rhyme, the kind told to children, comes back unasked:\nOnce is a stranger,\ntwice is a guest,\nthree times the kettle\nknows where you rest.",
		itIT = "Torna, non chiamata, una filastrocca da bambini:\nUna volta, forestiero;\ndue volte, quasi vicino;\nalla terza, anche il boccale\nsa già come bevi il vino.",
	},

	-----------------------------------------------------------------------
	-- Inn rhymes: the innkeeper's voice (ambient dialogue, or meeting an innkeeper)
	-----------------------------------------------------------------------
	{
		key = "inn.rhyme.01",
		rule = { event = { "npcd_innkeeper_sit", "npc_meet" }, speaker = "npc", category = "lore",
			styles = { "everyday", "intimate" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_inn_rhyme", "origin_sung", "other.role:innkeeper" },
			cooldown = 3 * DAY, conditions = { combat = false, other = { role = "innkeeper" } } },
		enUS = "We sing this one when the night runs late:\nOne for the road and one for the rain,\none for the friend who won't come again;\nthe last for the keeper, who pours them all\nand sweeps up the songs when the singers fall.",
		itIT = "Questa la cantiamo quando la sera si fa lunga:\nPer la strada, per l'acqua che cade,\nper l'amico che più non ritorna,\ne l'ultimo a chi versa per tutti\ne raccoglie i cantori caduti.",
	},
	{
		key = "inn.rhyme.02",
		rule = { event = "npcd_innkeeper_news", speaker = "npc", category = "lore", styles = { "everyday", "ironic" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_inn_rhyme", "origin_spoken", "other.role:innkeeper" },
			cooldown = 3 * DAY, conditions = { combat = false, other = { role = "innkeeper" } } },
		enUS = "News? There's a rhyme for that, older than this counter:\nRumor walks in muddy boots,\ntruth arrives a day behind;\none will drink and one will pay.\nGuess which one I'd rather find.",
		itIT = "Notizie? C'è una filastrocca per questo, più vecchia del bancone:\nLa voce entra infangata,\nil vero arriva poi;\nuna beve, uno paga:\nora dimmi, chi vuoi?",
	},

	-----------------------------------------------------------------------
	-- Road songs: a journey by spell (travel), with a short form for the natural depth
	-----------------------------------------------------------------------
	{
		key = "road.song.01",
		rule = { event = "travel", speaker = "inner", category = "lore", styles = { "intimate", "everyday" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 4 * DAY,
			conditions = { combat = false, spell = { "hearthstone", "pietra del ritorno" } } },
		enUS = {
			{ "The pocket-stone song comes to mind, the one every inn seems to know:\nTurn the stone and close your eyes,\nlet the long road fold away;\nsomeone's lamp is in the window,\nsomeone's chair is where it lay.", depth = { "literary", "elevated" } },
			{ "Turn the stone, shut your eyes, and the road folds away. That's how the song goes, anyway.", depth = "natural" },
		},
		itIT = {
			{ "Viene in mente la canzone della pietra in tasca, che ogni locanda sembra conoscere:\nVolta il sasso, chiudi gli occhi,\ne la via si accorcia in fretta;\nc'è una lampada che veglia,\nc'è una sedia che ti aspetta.", depth = { "literary", "elevated" } },
			{ "Giri la pietra, chiudi gli occhi, e la strada si accorcia. Così dice la canzone, almeno.", depth = "natural" },
		},
	},
	{
		key = "road.song.02",
		rule = { event = "travel", speaker = "inner", category = "lore", styles = { "intimate", "ironic" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 4 * DAY, conditions = { combat = false } },
		enUS = {
			{ "A leaving song, the kind sung half in jest at the door:\nLeave the dust upon the shelf,\nleave the ashes in the grate;\nlet the house keep house itself;\nthose who love you know to wait.", depth = { "literary", "elevated" } },
			{ "Leave the dust, leave the ashes; the house keeps itself. So says the leaving song.", depth = "natural" },
		},
		itIT = {
			{ "Una canzone della partenza, di quelle cantate mezzo per scherzo sulla porta:\nLa polvere sul piano,\nla cenere al camino:\nla casa si governa,\ne chi ti vuole, aspetta.", depth = { "literary", "elevated" } },
			{ "Lascia la polvere e la cenere: la casa si arrangia. Così dice la canzone della partenza.", depth = "natural" },
		},
	},

	-----------------------------------------------------------------------
	-- Sayings for an encounter: someone we know acts toward us (trust, wariness)
	-----------------------------------------------------------------------
	{
		key = "meet.trust.01",
		rule = { event = "other_action", speaker = "inner", category = "lore", styles = { "intimate", "ancient" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_saying", "origin_spoken", "rel.relation:friend" },
			cooldown = 5 * DAY, conditions = { combat = false,
				other = { relation = { "friend", "comrade" }, actions = { "group", "invite", "trade", "emote", "ally", within = 60 } } } },
		enUS = "A saying heard once around someone's fire:\nA friend is one who holds the rope\nand does not ask how deep the fall;\nwho shares your water, not your hope,\nand comes when no one thought to call.",
		itIT = "Un detto sentito una volta attorno al fuoco di qualcuno:\nChi ti regge la corda\nsenza chiedere il fondo,\nchi ti divide l'acqua\ne torna senza invito:\nquello, tienilo stretto.",
	},
	{
		key = "meet.wary.01",
		rule = { event = "other_action", speaker = "inner", category = "lore", styles = { "ironic", "intimate" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_proverb", "origin_spoken", "rel.relation:wary" },
			cooldown = 5 * DAY, conditions = { combat = false,
				other = { relation = { "wary", "rival", "disliked", "feared", "enemy" },
					actions = { "trade", "invite", "emote", "group", within = 60 } } } },
		enUS = "A market-stall proverb, unbidden:\nSmile for smile and coin for coin,\nbut count the coin and watch the smile;\na hand held out is still a hand,\nand hands can change in half a mile.",
		itIT = "Affiora un proverbio dei banchi del mercato:\nRiso a riso, soldo a soldo,\nconta il soldo, guarda il riso:\nuna mano tesa è mano,\ne si volta all'improvviso.",
	},

	-----------------------------------------------------------------------
	-- Hymn (pray) and lament (a boss fight lost)
	-----------------------------------------------------------------------
	{
		key = "hymn.pray.01",
		rule = { event = "pray", speaker = "inner", category = "lore",
			styles = { "ceremonial", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_hymn", "origin_sung", "topic:religion", "faith:devout" }, cooldown = 3 * DAY,
			conditions = { combat = false } },
		enUS = "The words come back plain and slow, the way such words are taught:\nKeep watch on all who walk tonight\non roads they do not know,\nand keep a door for those who come\nand those who have to go.",
		itIT = "Le parole tornano semplici e lente, come si insegnano parole così:\nVeglia su chi cammina\nstanotte per vie ignote;\nserba un lume a chi giunge\ne a chi deve partire.",
	},
	{
		key = "lament.wipe.01",
		rule = { event = "encounter_end", speaker = "inner", category = "lore", styles = { "tragic", "ceremonial" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_lament", "origin_spoken", "topic:death" },
			cooldown = 7 * DAY, conditions = { combat = false, place = { encounterResult = "wipe" } } },
		enUS = "The lament fighters mutter after a lost field:\nWe fell together, every one,\nand none of us alone.\nSo rise, and bind what can be bound,\nand leave the rest to stone.",
		itIT = "Il lamento che si mormora dopo uno scontro perduto:\nCaduti insieme, tutti,\nnessuno cadde solo;\nalzati e lega quanto\nsi lega: il resto è pietra.",
	},
}

-- The rules and the texts, plus a twin of each piece for `lore_test`: same voice, registers and tags (so a topic
-- the player avoids stays avoided), no other condition and no cooldown. The twins have their own ids, so trying
-- a piece by hand does not spend the real one's cooldown.
local registry, texts = {}, { enUS = {}, itIT = {} }
for _, piece in ipairs(PIECES) do
	local id, test = "versi." .. piece.key, "versi.test." .. piece.key
	local r = piece.rule
	registry[id] = r
	registry[test] = { event = "lore_test", speaker = r.speaker, category = r.category, styles = r.styles,
		depth = r.depth, tags = r.tags, conditions = { combat = false } }
	for _, lang in ipairs({ "enUS", "itIT" }) do
		texts[lang][id] = piece[lang]
		texts[lang][test] = piece[lang]
	end
end

AU:RegisterPack({
	id = "versi",
	name = "Verses: literary forms (prototype)",
	languages = { "enUS", "itIT" },
	-- manual only: nothing in the game fires it, and chance 0 keeps the Director away from it
	events = { lore_test = { category = "lore", chance = 0, cooldown = 0 } },
	registry = registry,
	texts = texts,
})
