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

	------------------------------------------------------------------------
	-- Laments for a loss (N8): put in the songbook with a grief
	------------------------------------------------------------------------
	["versi.lament.ally.01"] = {
		"Un lamento di chi viaggia in compagnia, per chi non si è rialzato:\nDividemmo il fuoco, dividemmo il pane,\ne la lunga strada, miglio dopo miglio;\nora un nome in più fra le ombre lontane,\ne una voce in meno, e in meno un consiglio.",
	},
	["versi.lament.npc.01"] = {
		"Un verso di lutto che si dice nei paesi quando un volto noto se ne va:\nLa porta cigola, il paiolo canta,\nal tramonto la lampada s'accende;\nma più nessuno risponde a chi bussa,\nné più il mio nome dalla soglia scende.",
	},
	["versi.lament.pet.01"] = {
		"Un lamento dei cacciatori, detto piano su un compagno caduto:\nCorresti innanzi a me per ogni bosco,\nsenza chiedere mai strada o ragione;\nriposa adesso, amico, nel sottobosco:\nil peso del cammino è mia porzione.",
	},
	-- N9 (#221): more songs of a fall and laments, a piece for each culture of origin (#124: the inner voice for its own
	-- people), a tale and a saying heard from an innkeeper, a common tale and an inn song of interchangeable stanzas
	["versi.culture.dwarf.01"] = {
		"Un canto da bevuta delle sale delle forge, urlato a boccali alzati:\nPietra fredda, ferro scuro,\nstona il maglio sul lavoro;\nmesci, e annega il giorno duro:\nla fucina avrà ristoro.",
	},
	["versi.culture.forsaken.01"] = {
		"Un detto dei risorti, che passa di cantina in cantina con una risata secca:\nFredda tomba, fredda via,\nlungo il sonno, e lunga l'ora;\ntieni il senno, e il resto via:\ntutto il resto è andato, allora.",
	},
	["versi.culture.gnome.01"] = {
		"Una filastrocca d'officina, di quelle scritte col gesso sopra ogni banco:\nSegna il fuoco, segna il fumo,\nsegna il botto e lo spavento;\nogni molla che consumo\ndà al banco un po' di talento.",
	},
	["versi.culture.human.01"] = {
		"Un canto d'aratura delle fattorie, di quelli che si cantano dietro il bue:\nSolco dritto, solco lungo,\ngira terra, gira canto;\nquel che il campo dà, lo dà,\ne chi l'ara vivrà tanto.",
	},
	["versi.culture.kaldorei.01"] = {
		"Un canto di guardia delle sentinelle, intonato piano quando la luna supera gli alberi:\nSali piano sul bosco che dorme,\ne ogni ramo d'argento riveste;\nnoi vegliammo, sorelle in attesa:\nora veglia tu, luna, al tuo posto.",
	},
	["versi.culture.orc.01"] = {
		"Un canto di marcia dei clan, battuto sul tamburo prima che la polvere si posi:\nBatti il cuoio, pesta il sasso,\nfianco a fianco, passo a passo;\nquel che è perso sta alle spalle,\nnostro è il resto, monti e valle.",
	},
	["versi.culture.queldorei.01"] = {
		"Un verso che gli esuli dei boschi d'oro dicono ancora, quando la luce cade di sbieco:\nLe foglie a casa eran d'oro,\nnon parevano un tesoro;\nora, lontano, a ogni autunno\nle rivedo in ogni ramo.",
	},
	["versi.culture.tauren.01"] = {
		"Una benedizione dell'alba della gente delle pianure, detta con una mano posata sul terreno:\nErba, alzati: è giunto il sole.\nTerra, porta i nostri piedi.\nVento, va' avanti, e alla mandria\ndi' che camminiamo lievi.",
	},
	["versi.culture.troll.01"] = {
		"Un detto della gente delle isole, che passa dai vecchi ai giovani accanto al fuoco:\nSale l'onda e poi ricade,\ne la riva scorda ogni orma;\nva' leggero per le strade,\ntieni i tuoi, e al mare il resto.",
	},
	["versi.inn.saying.orc.01"] = {
		"Una cosa che mi disse una volta un carovaniere dei clan, e non l'ho più scordata:\nNutri la pancia, e il rancore dimagrisce;\nlasciala vuota, e impara ogni nome.\nPerciò mangia, e lascia andare qualcosa:\nla strada te lo insegnerà comunque.",
	},
	["versi.inn.stanzas.01"] = {
		"Una canzone che gli avventori attaccano ogni volta che si siede qualcuno di nuovo:\n{stanzas}\n\nAvvicina lo sgabello e il boccale accanto:\nil fuoco è già basso, ma l'oste regge il canto.",
		"Entrò il contadino col fango al ginocchio,\ngiurò che la pioggia gli amava il finocchio;\npoi brindò alla pioggia, brindò alla radice,\ne uscì con un piede bagnato e felice.",
		"Entrò la soldata, lo scudo ammaccato,\ne narrò del drago che aveva sfidato;\nal terzo boccale era un branco di oche,\nal quarto era un'oca, e di pretese poche.",
		"Entrò il minatore, la polvere in barba,\ngiurando che il buio per nulla lo turba;\ntemeva soltanto di vedere il fondo,\ne lo nascondeva versando, giocondo.",
		"Entrò la straniera, senza nome o vanto,\nsedette in un angolo, la birra accanto;\nle abbiamo cantato le strofe, e alla fine\nsapeva ogni verso, e cantò il gran finale.",
	},
	["versi.inn.tale.tauren.01"] = {
		"Una storia che mi raccontò un viandante delle pianure, anni fa:\nUna ragazza, una volta, sfidò la pioggia in una corsa attraverso l'erba.\nCorse finché il cuore le diventò tuono, e la pioggia la prese lo stesso.\nUn anziano la trovò fradicia, che rideva in cima a un colle.\n«Hai perso», le disse. «E l'erba ha bevuto. Non tutte le corse sono tue da vincere.»",
	},
	["versi.lament.ally.02"] = {
		"Un canto funebre di cantina dei risorti, detto per chi non si rialza:\nMorimmo, e non restammo sotto;\ntrovammo i piedi, e via di lì.\nChe tu ti levi o che riposi,\ndeciderà il buio, per te.",
	},
	["versi.lament.ally.03"] = {
		"Un lamento di riva della gente delle isole, cantato al battere dell'acqua:\nTi ha preso l'acqua, come prende,\ne alla riva ha dato il tuo nome;\nti cantiamo oltre la scogliera,\ne il canto rimane lo stesso.",
	},
	["versi.lament.npc.02"] = {
		"Un canto di veglia delle campagne, cantato piano quando si porta fuori un vicino:\nLascia il cancello accostato,\nlascia il pane sulla tavola;\nchi ci aiutava col tetto\nva più avanti, per la strada.",
	},
	["versi.lament.pet.02"] = {
		"Un pianto delle sentinelle per un compagno di caccia caduto, intonato senza melodia:\nPiù lieve della foglia era il tuo passo,\npiù chiaro del torrente era il tuo sguardo;\nriposa fra radici che ti stringono,\ne corri ancora il bosco, dentro un sogno.",
	},
	["versi.nemesis.song.04"] = {
		"Il vecchio vanto dei cacciatori, detto una volta su un terrore caduto e mai più:\nQui finì la paura della strada,\nqui si voltò chi era braccato;\nsegna la terra, e lasciala stare:\nil racconto è cominciato.",
	},
	["versi.nemesis.song.05"] = {
		"Un canto di faida dei clan, ringhiato basso a faida chiusa:\nTre volte mi gettò nella polvere,\ntre volte la polvere disse no;\nora il tamburo dica ciò che sa:\nil debito è pagato. Lascia andare.",
	},
	["versi.nemesis.song.06"] = {
		"Un canto delle sale dei clan di montagna, intonato mentre s'incide una tacca nella pietra dello stipite:\nTaglia il segno, scrivi il giorno,\nserbi il sasso ogni parola;\nun terrore in meno intorno,\nnella roccia un'altra ancora.",
	},
	["versi.nemesis.song.07"] = {
		"Un verso delle pianure, detto su un grande nemico caduto prima di lasciarlo alla terra:\nQuesti colli eran già tuoi,\nl'erba ti seguiva al passo;\ngiaci, e rendi alla terra il suo:\nserban i colli il tuo posto.",
	},
	["versi.tale.road.01"] = {
		"Una storia che raccontano i carrettieri, per far passare un miglio lento:\nUn carrettiere, una volta, maledisse il suo mulo che si era piantato su una strada sgombra.\nTirò, supplicò, si sedette accanto a lui a tenere il muso.\nPiù tardi, quel giorno, una frana venne giù proprio alla curva davanti.\nIl mulo aveva sentito le pietre molto prima. Non lo maledisse mai più.",
	},
}, "versi")
