-- Azeroth Unspoken: verses pack (step L0, issue #115). A prototype of literary forms with no engine change:
-- inscriptions and solemn formulas, verses remembered on return, inn rhymes, road songs, sayings for an encounter,
-- a hymn and a lament, each in English and Italian.
--
-- Rules for these texts (CONTRIBUTING.md, "Literary forms"; owner decisions in issue #130):
--   - never in public chat (D16): every piece is spoken by a private voice, `inner` or `npc`;
--   - invented songs and legends are always attributed to a voice (an inscription, a singer, a saying) and never
--     stated as fact (D7); no invented proper names, no canonical character as the author;
--   - culture is never deduced from race (D17): no piece has a race or faction condition;
--   - rare: never in combat, a cooldown of three to seven days per piece;
--   - one line per text, verses separated by " / ", at most 255 bytes: real line breaks come later (#117).
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
		rule = { event = "zone", speaker = "inner", styles = { "ancient", "ceremonial" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_inscription", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		enUS = "Worn letters on a fallen lintel: We set this stone where none had stood / and asked the hill to keep it true. / The hill has kept the stone, not us. / Remember that, who reads this through.",
		itIT = "Lettere consunte su un architrave caduto: Questa pietra noi posammo / e la demmo in pegno al monte. / Il monte ha tenuto il sasso, / non noi. Tu, china la fronte.",
	},
	{
		key = "inscription.ruin.02",
		rule = { event = "zone", speaker = "inner", styles = { "ancient", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_formula", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		enUS = "Cut beside a doorway with no door: Traveler, the roof has fallen; / still the wall will turn the rain. / We who raised it ask one thing: / leave it standing. Come again.",
		itIT = "Parole incise accanto a una soglia senza porta: Il tetto è già caduto, / ma il muro ferma il vento. / Chi l'alzò chiede un dono: / lascialo in piedi. E torna.",
	},
	{
		key = "inscription.sacred.01",
		rule = { event = "zone", speaker = "inner", styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_formula", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true,
				place = { tags = "sacred", ["not"] = { tags = { "dark", "cursed" } } } } },
		enUS = "Words cut deep beside the threshold, still sharp: Set down the blade before you cross this sill; / the ground is listening, and it is still. / Whatever anger walked with you this far / may wait outside; it knows just where you are.",
		itIT = "Parole scavate a fondo all'ingresso, ancora nitide: Deponi l'arma prima della soglia: / la terra ascolta, e qui ogni cosa tace. / L'ira che fino a qui ti è stata accanto / aspetti fuori: sa dove trovarti.",
	},
	{
		key = "inscription.names.01",
		rule = { event = "zone", speaker = "inner", styles = { "ancient", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_inscription", "origin_carved" }, cooldown = 7 * DAY,
			conditions = { combat = false, firstVisit = true, place = { tags = { "ruin", "sacred" } } } },
		enUS = "Under a crowd of scratched names, an older line: Write your name, as others did; / rain will read it, then forget. / Stone is slow, and stone is blind; / stone has not forgotten yet.",
		itIT = "Sotto una folla di nomi graffiati, una riga più antica: Scrivi il nome, come gli altri; / legge la pioggia, poi scorda. / Lenta è la pietra, ed è cieca; / lei, però, non scorda ancora.",
	},

	-----------------------------------------------------------------------
	-- Verses remembered on return (memory_return: each one declares the memory it needs)
	-----------------------------------------------------------------------
	{
		key = "return.verse.01",
		rule = { event = "memory_return", speaker = "inner", styles = { "intimate", "ancient" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_verse", "origin_remembered" }, cooldown = 5 * DAY,
			conditions = { combat = false, repeatVisit = true, daysSinceLastVisit = 7 } },
		enUS = "A verse I cannot place comes back with the path: Nothing waited while I traveled; / grass grew over what I knew. / Still the hill remembered walking, / and my feet remembered too.",
		itIT = "Torna, col cammino, un verso di chissà dove: Nulla attese il mio ritorno; / l'erba ha coperto i sentieri, / ma la terra sa i miei passi / e i miei piedi sanno i suoi.",
	},
	{
		key = "return.verse.02",
		rule = { event = "memory_return", speaker = "inner", styles = { "intimate", "epic" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_verse", "origin_sung", "topic:death" },
			cooldown = 5 * DAY, conditions = { combat = false, lastVisitBad = true } },
		enUS = "An old marching verse, the kind sung under the breath: Where you fell, the ground is softer; / where you ran, the path is known. / Walk it twice and it is yours; / walk it once and it's its own.",
		itIT = "Un vecchio verso di marcia, di quelli che si cantano a mezza voce: Dove cadi, il suolo è molle; / dove fuggi, impari il passo. / Fallo due volte, ed è tuo; / una volta, è solo un sasso.",
	},
	{
		key = "return.verse.03",
		rule = { event = "memory_return", speaker = "inner", styles = { "intimate", "everyday" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_nursery_rhyme", "origin_remembered" },
			cooldown = 5 * DAY, conditions = { combat = false, visitsMin = 3 } },
		enUS = "A doorstep rhyme, the kind told to children, comes back unasked: Once is a stranger, / twice is a guest, / three times the kettle / knows where you rest.",
		itIT = "Torna, non chiamata, una filastrocca da bambini: Una volta, forestiero; / due volte, quasi vicino; / alla terza, anche il boccale / sa già come bevi il vino.",
	},

	-----------------------------------------------------------------------
	-- Inn rhymes: the innkeeper's voice (ambient dialogue, or meeting an innkeeper)
	-----------------------------------------------------------------------
	{
		key = "inn.rhyme.01",
		rule = { event = { "npcd_innkeeper_sit", "npc_meet" }, speaker = "npc", styles = { "everyday", "intimate" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_inn_rhyme", "origin_sung", "other.role:innkeeper" },
			cooldown = 3 * DAY, conditions = { combat = false, other = { role = "innkeeper" } } },
		enUS = "We sing this one when the night runs late: One for the road and one for the rain, / one for the friend who won't come again; / the last for the keeper, who pours them all / and sweeps up the songs when the singers fall.",
		itIT = "Questa la cantiamo quando la sera si fa lunga: Per la strada, per l'acqua che cade, / per l'amico che più non ritorna, / e l'ultimo a chi versa per tutti / e raccoglie i cantori caduti.",
	},
	{
		key = "inn.rhyme.02",
		rule = { event = "npcd_innkeeper_news", speaker = "npc", styles = { "everyday", "ironic" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_inn_rhyme", "origin_spoken", "other.role:innkeeper" },
			cooldown = 3 * DAY, conditions = { combat = false, other = { role = "innkeeper" } } },
		enUS = "News? There's a rhyme for that, older than this counter: Rumor walks in muddy boots, / truth arrives a day behind; / one will drink and one will pay. / Guess which one I'd rather find.",
		itIT = "Notizie? C'è una filastrocca per questo, più vecchia del bancone: La voce entra infangata, / il vero arriva poi; / una beve, uno paga: / ora dimmi, chi vuoi?",
	},

	-----------------------------------------------------------------------
	-- Road songs: a journey by spell (travel), with a short form for the natural depth
	-----------------------------------------------------------------------
	{
		key = "road.song.01",
		rule = { event = "travel", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 4 * DAY,
			conditions = { combat = false, spell = { "hearthstone", "pietra del ritorno" } } },
		enUS = {
			{ "The pocket-stone song comes to mind, the one every inn seems to know: Turn the stone and close your eyes, / let the long road fold away; / someone's lamp is in the window, / someone's chair is where it lay.", depth = { "literary", "elevated" } },
			{ "Turn the stone, shut your eyes, and the road folds away. That's how the song goes, anyway.", depth = "natural" },
		},
		itIT = {
			{ "Viene in mente la canzone della pietra in tasca, che ogni locanda sembra conoscere: Volta il sasso, chiudi gli occhi, / e la via si accorcia in fretta; / c'è una lampada che veglia, / c'è una sedia che ti aspetta.", depth = { "literary", "elevated" } },
			{ "Giri la pietra, chiudi gli occhi, e la strada si accorcia. Così dice la canzone, almeno.", depth = "natural" },
		},
	},
	{
		key = "road.song.02",
		rule = { event = "travel", speaker = "inner", styles = { "intimate", "ironic" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 4 * DAY, conditions = { combat = false } },
		enUS = {
			{ "A leaving song, the kind sung half in jest at the door: Leave the dust upon the shelf, / leave the ashes in the grate; / let the house keep house itself; / those who love you know to wait.", depth = { "literary", "elevated" } },
			{ "Leave the dust, leave the ashes; the house keeps itself. So says the leaving song.", depth = "natural" },
		},
		itIT = {
			{ "Una canzone della partenza, di quelle cantate mezzo per scherzo sulla porta: La polvere sul piano, / la cenere al camino: / la casa si governa, / e chi ti vuole, aspetta.", depth = { "literary", "elevated" } },
			{ "Lascia la polvere e la cenere: la casa si arrangia. Così dice la canzone della partenza.", depth = "natural" },
		},
	},

	-----------------------------------------------------------------------
	-- Sayings for an encounter: someone we know acts toward us (trust, wariness)
	-----------------------------------------------------------------------
	{
		key = "meet.trust.01",
		rule = { event = "other_action", speaker = "inner", styles = { "intimate", "ancient" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_saying", "origin_spoken", "rel.relation:friend" },
			cooldown = 5 * DAY, conditions = { combat = false,
				other = { relation = { "friend", "comrade" }, actions = { "group", "invite", "trade", "emote", "ally", within = 60 } } } },
		enUS = "A saying heard once around someone's fire: A friend is one who holds the rope / and does not ask how deep the fall; / who shares your water, not your hope, / and comes when no one thought to call.",
		itIT = "Un detto sentito una volta attorno al fuoco di qualcuno: Chi ti regge la corda / senza chiedere il fondo, / chi ti divide l'acqua / e torna senza invito: / quello, tienilo stretto.",
	},
	{
		key = "meet.wary.01",
		rule = { event = "other_action", speaker = "inner", styles = { "ironic", "intimate" },
			depth = { "natural", "literary" }, tags = { "lore", "genre_proverb", "origin_spoken", "rel.relation:wary" },
			cooldown = 5 * DAY, conditions = { combat = false,
				other = { relation = { "wary", "rival", "disliked", "feared", "enemy" },
					actions = { "trade", "invite", "emote", "group", within = 60 } } } },
		enUS = "A market-stall proverb, unbidden: Smile for smile and coin for coin, / but count the coin and watch the smile; / a hand held out is still a hand, / and hands can change in half a mile.",
		itIT = "Affiora un proverbio dei banchi del mercato: Riso a riso, soldo a soldo, / conta il soldo, guarda il riso: / una mano tesa è mano, / e si volta all'improvviso.",
	},

	-----------------------------------------------------------------------
	-- Hymn (pray) and lament (a boss fight lost)
	-----------------------------------------------------------------------
	{
		key = "hymn.pray.01",
		rule = { event = "pray", speaker = "inner", styles = { "ceremonial", "intimate" }, depth = { "literary", "elevated" },
			tags = { "lore", "genre_hymn", "origin_sung", "topic:religion", "faith:devout" }, cooldown = 3 * DAY,
			conditions = { combat = false } },
		enUS = "The words come back plain and slow, the way such words are taught: Keep watch on all who walk tonight / on roads they do not know, / and keep a door for those who come / and those who have to go.",
		itIT = "Le parole tornano semplici e lente, come si insegnano parole così: Veglia su chi cammina / stanotte per vie ignote; / serba un lume a chi giunge / e a chi deve partire.",
	},
	{
		key = "lament.wipe.01",
		rule = { event = "encounter_end", speaker = "inner", styles = { "tragic", "ceremonial" },
			depth = { "literary", "elevated" }, tags = { "lore", "genre_lament", "origin_spoken", "topic:death" },
			cooldown = 7 * DAY, conditions = { combat = false, place = { encounterResult = "wipe" } } },
		enUS = "The lament fighters mutter after a lost field: We fell together, every one, / and none of us alone. / So rise, and bind what can be bound, / and leave the rest to stone.",
		itIT = "Il lamento che si mormora dopo uno scontro perduto: Caduti insieme, tutti, / nessuno cadde solo; / alzati e lega quanto / si lega: il resto è pietra.",
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
	registry[test] = { event = "lore_test", speaker = r.speaker, styles = r.styles, depth = r.depth, tags = r.tags,
		conditions = { combat = false } }
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
	events = { lore_test = { category = "reflection", chance = 0, cooldown = 0 } },
	registry = registry,
	texts = texts,
})
