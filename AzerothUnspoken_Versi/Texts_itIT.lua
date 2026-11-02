-- Azeroth Unspoken: verses pack, the texts in Italian (step L0, #115). The rules are in Registry.lua; the English and
-- Italian texts are re-created, not translated: same intention and register, each with its own metre. A song of
-- stanzas (#127) has its frame first (the attribution and the refrain, {stanzas} where the stanzas go), then the
-- stanzas in their order. Written through the archive: tools/archive (CONTRIBUTING.md).
local AU = AzerothUnspoken

AU:AddTexts("itIT", {

	------------------------------------------------------------------------
	-- Inscriptions and solemn formulas: first visit to a ruin or a sacred place
	------------------------------------------------------------------------
	["versi.inscription.ruin.01"] = {
		"Lettere consunte su un architrave caduto:\nQuesta pietra noi posammo\ne la demmo in pegno al monte.\nIl monte ha tenuto il sasso,\nnon noi. Tu, china la fronte.",
	},
	["versi.inscription.ruin.02"] = {
		"Parole incise accanto a una soglia senza porta:\nIl tetto è già caduto,\nma il muro ferma il vento.\nChi l'alzò chiede un dono:\nlascialo in piedi. E torna.",
	},
	["versi.inscription.sacred.01"] = {
		"Parole scavate a fondo all'ingresso, ancora nitide:\nDeponi l'arma prima della soglia:\nla terra ascolta, e qui ogni cosa tace.\nL'ira che fino a qui ti è stata accanto\naspetti fuori: sa dove trovarti.",
	},
	["versi.inscription.names.01"] = {
		"Sotto una folla di nomi graffiati, una riga più antica:\nScrivi il nome, come gli altri;\nlegge la pioggia, poi scorda.\nLenta è la pietra, ed è cieca;\nlei, però, non scorda ancora.",
	},

	------------------------------------------------------------------------
	-- Verses remembered on return (memory_return: each one declares the memory it needs)
	------------------------------------------------------------------------
	["versi.return.verse.01"] = {
		"Torna, col cammino, un verso di chissà dove:\nNulla attese il mio ritorno;\nl'erba ha coperto i sentieri,\nma la terra sa i miei passi\ne i miei piedi sanno i suoi.",
	},
	["versi.return.verse.02"] = {
		"Un vecchio verso di marcia, di quelli che si cantano a mezza voce:\nDove cadi, il suolo è molle;\ndove fuggi, impari il passo.\nFallo due volte, ed è tuo;\nuna volta, è solo un sasso.",
	},
	["versi.return.verse.03"] = {
		"Torna, non chiamata, una filastrocca da bambini:\nUna volta, forestiero;\ndue volte, quasi vicino;\nalla terza, anche il boccale\nsa già come bevi il vino.",
	},

	------------------------------------------------------------------------
	-- Inn rhymes: the innkeeper's voice (ambient dialogue, or meeting an innkeeper)
	------------------------------------------------------------------------
	["versi.inn.rhyme.01"] = {
		"Questa la cantiamo quando la sera si fa lunga:\nPer la strada, per l'acqua che cade,\nper l'amico che più non ritorna,\ne l'ultimo a chi versa per tutti\ne raccoglie i cantori caduti.",
	},
	["versi.inn.rhyme.02"] = {
		"Notizie? C'è una filastrocca per questo, più vecchia del bancone:\nLa voce entra infangata,\nil vero arriva poi;\nuna beve, uno paga:\nora dimmi, chi vuoi?",
	},

	------------------------------------------------------------------------
	-- Road songs: a journey by spell (travel), with a short form for the natural depth
	------------------------------------------------------------------------
	["versi.road.song.01"] = {
		{ "Viene in mente la canzone della pietra in tasca, che ogni locanda sembra conoscere:\nVolta il sasso, chiudi gli occhi,\ne la via si accorcia in fretta;\nc'è una lampada che veglia,\nc'è una sedia che ti aspetta.", depth = { "literary", "elevated" } },
		{ "Giri la pietra, chiudi gli occhi, e la strada si accorcia. Così dice la canzone, almeno.", depth = "natural" },
	},
	["versi.road.song.02"] = {
		{ "Una canzone della partenza, di quelle cantate mezzo per scherzo sulla porta:\nLa polvere sul piano,\nla cenere al camino:\nla casa si governa,\ne chi ti vuole, aspetta.", depth = { "literary", "elevated" } },
		{ "Lascia la polvere e la cenere: la casa si arrangia. Così dice la canzone della partenza.", depth = "natural" },
	},

	------------------------------------------------------------------------
	-- A walking song of interchangeable stanzas (#127, ADR 0043): a long ride (journey); the frame holds the
	-- attribution and the refrain, two of the four stanzas are said, in their order
	------------------------------------------------------------------------
	["versi.road.stanzas.01"] = {
		"Torna in mente una canzone da cammino, di quelle che tengono il passo:\n{stanzas}\n\nPasso su passo, lunga è la via,\nma un canto le fa compagnia.",
		"Ripida è l'erta, vecchia la sacca,\nla cinghia morde la spalla;\nma il piede che sa la sua strada\nla trova, e mai non falla.",
		"La polvere s'alza e ricade,\nlo stivale la scuote presto;\nla strada ricorda ogni passo\ne poi dimentica il resto.",
		"Sopra il guado spuntan le stelle,\nil fuoco non ha fretta;\nl'acqua parla, canta il paiolo,\nnessuno la rima aspetta.",
		"E quando la strada è finita\ne ogni strofa è già cantata,\ni piedi la sanno da soli\ncome una cosa imparata.",
	},

	------------------------------------------------------------------------
	-- Sayings for an encounter: someone we know acts toward us (trust, wariness)
	------------------------------------------------------------------------
	["versi.meet.trust.01"] = {
		"Un detto sentito una volta attorno al fuoco di qualcuno:\nChi ti regge la corda\ne non chiede del fondo,\nchi ti divide l'acqua\ne torna non chiamato.",
	},
	["versi.meet.wary.01"] = {
		"Affiora un proverbio dei banchi del mercato:\nRiso a riso, soldo a soldo,\nconta il soldo, guarda il riso:\nuna mano tesa è mano,\ne si volta all'improvviso.",
	},

	------------------------------------------------------------------------
	-- Hymn (pray) and lament (a boss fight lost)
	------------------------------------------------------------------------
	["versi.hymn.pray.01"] = {
		"Le parole tornano semplici e lente, come si insegnano parole così:\nVeglia su chi cammina\nstanotte per vie ignote;\nserba un lume a chi giunge\ne a chi deve partire.",
	},
	["versi.lament.wipe.01"] = {
		"Il lamento che si mormora dopo uno scontro perduto:\nCaduti insieme, tutti,\nnessuno cadde solo;\nalzati e lega quanto\nsi lega: il resto è pietra.",
	},

	------------------------------------------------------------------------
	-- Canti della caduta di una nemesi (N7): nel canzoniere quando una nemesi cade
	------------------------------------------------------------------------
	["versi.nemesis.song.01"] = {
		"Un canto da cacciatori, di quelli gridati a pericolo passato:\nAlza il boccale, alza la voce,\nciò che temevamo è giù;\nci colpì una volta, feroce,\ne qui cadde, e non s'alza più.",
	},
	["versi.nemesis.song.02"] = {
		"Un canto di contesa, cantato basso al fuoco da chi ne porta una:\nMi gettò nella polvere,\nmi ci gettò ancora;\nma chi cade sa risorgere,\ne il debito si salda ora.",
	},
	["versi.nemesis.song.03"] = {
		"Un vecchio detto della gente dei colli, quasi un canto, per un nemico caduto:\nAnche il lupo ucciso dal pastore\nl'han pianto i colli che ha percorso;\ni colli non tengono parti né rancore:\nuna voce selvaggia in meno, e nessun rimorso.",
	},
}, "versi")
